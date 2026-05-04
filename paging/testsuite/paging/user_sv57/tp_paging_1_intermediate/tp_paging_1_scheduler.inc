
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 20 # setting num_runs to 20
	sd t0, 400(tp)                     # num_runs
	li t0, 0xFFFFFFFE  # test_setup special index
	sd t0, 392(tp)           # current_test_index

	la t1, scheduler__test_setup_ptr
	ld t1, (t1)
	j scheduler__execute_test


# Entry point for scheduling next test
scheduler__dispatch:

# Setup scheduler panic handler before dispatching

	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec


scheduler__csr_read_randomization:
	csrr t0, stvec
	csrr t0, stvec
	csrr t0, sip


# (num_runs == 0) goto scheduler__finished
scheduler__load_num_runs:
	ld t1, 400(tp)                     # num_runs
	beqz t1, scheduler__finished

scheduler__decrement_num_runs:
	addi t2, t1, -1
	sd t2, 400(tp)                     # num_runs

# Store current test index for RVCP messages
# Look up discrete test index from dtest_index_map[t2]
	la t3, dtest_index_map
	slli t4, t2, 2  # t4 = t2 * 4 (word size)
	add t3, t3, t4
	lw t3, 0(t3)   # t3 = dtest_index_map[t2]
	sd t3, 392(tp)           # current_test_index

scheduler__calc_test_pointer:
	slli t0, t2, 3

# t1 = os_test_sequence[(--num_runs) * 8]
scheduler__load_test_addr:
	la t1, os_test_sequence
	add t0, t0, t1
	ld t1, 0(t0)


# Jump to test. Test address should be loaded into t1 before running
scheduler__execute_test:

	ld t0, 384(tp)       # scheduler__saved_stvec
	csrw mtvec, t0

# Exit hart context
	csrrw tp, mscratch, tp
	li tp, 0

# Switch from super to user mode
	csrw sepc, t1
# clear xPP
	li t0, 0x100
	csrrc x0, sstatus, t0
	sret


# Exit point for scheduler; only ran when all tests are finished
scheduler__finished:

	li gp, 1
	j eot__end_test


# Panic point for scheduler; If an exception occurs during scheduling, it causes the test to end immediately. Only internal errors should happen here.
# Interrupts are disabled during scheduling and resumed when the scheduler is fininished.

scheduler__panic:
	li gp, 0
	j eot__end_test


# Additional scheduler routines


# scheduler-local variables

	.balign 8, 0
num_runs:
	.dword 20

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_PBVMS_018_rsw_fields_writable
	.dword SID_PBVMS_011_ptw_fault_boundary_crossing
	.dword SID_PBVMS_042_canonical_boundary_crossing_fault
	.dword SID_PBVMS_043_fetch_window_spill_page_cross
	.dword SID_PBVMS_015_global_bit_honoured
	.dword SID_PBVMS_001_ptw_no_faults_all_access_types
	.dword SID_PBVMS_040_context_table_overflow
	.dword SID_PBVMS_003_ptw_all_privilege_modes
	.dword SID_PBVMS_027_satp_user_mode_fault
	.dword SID_PBVMS_012_ptw_fault_prioritization
	.dword SID_PBVMS_017_global_at_non_leaf
	.dword SID_PBVMS_022_satp_csr_accessibility
	.dword SID_PBVMS_023_satp_asidlen_discovery
	.dword SID_PBVMS_021_satp_valid_to_reserved
	.dword SID_PBVMS_013_ptw_permission_encodings
	.dword SID_PBVMS_008_va_sign_extension_fault
	.dword SID_PBVMS_014_mstatus_sum_mxr
	.dword SID_PBVMS_006_ptw_page_boundary_crossing
	.dword SID_PBVMS_009_superpage_alignment_fault

	.balign 8, 0
dtest_descriptor_table:
	.dword dtest_name_0
	.dword dtest_name_1
	.dword dtest_name_2
	.dword dtest_name_3
	.dword dtest_name_4
	.dword dtest_name_5
	.dword dtest_name_6
	.dword dtest_name_7
	.dword dtest_name_8
	.dword dtest_name_9
	.dword dtest_name_10
	.dword dtest_name_11
	.dword dtest_name_12
	.dword dtest_name_13
	.dword dtest_name_14
	.dword dtest_name_15
	.dword dtest_name_16
	.dword dtest_name_17
	.dword dtest_name_18

# Test name strings
	dtest_name_0: .asciz "SID_PBVMS_001_ptw_no_faults_all_access_types"
	dtest_name_1: .asciz "SID_PBVMS_003_ptw_all_privilege_modes"
	dtest_name_2: .asciz "SID_PBVMS_006_ptw_page_boundary_crossing"
	dtest_name_3: .asciz "SID_PBVMS_008_va_sign_extension_fault"
	dtest_name_4: .asciz "SID_PBVMS_009_superpage_alignment_fault"
	dtest_name_5: .asciz "SID_PBVMS_011_ptw_fault_boundary_crossing"
	dtest_name_6: .asciz "SID_PBVMS_012_ptw_fault_prioritization"
	dtest_name_7: .asciz "SID_PBVMS_013_ptw_permission_encodings"
	dtest_name_8: .asciz "SID_PBVMS_014_mstatus_sum_mxr"
	dtest_name_9: .asciz "SID_PBVMS_015_global_bit_honoured"
	dtest_name_10: .asciz "SID_PBVMS_017_global_at_non_leaf"
	dtest_name_11: .asciz "SID_PBVMS_018_rsw_fields_writable"
	dtest_name_12: .asciz "SID_PBVMS_021_satp_valid_to_reserved"
	dtest_name_13: .asciz "SID_PBVMS_022_satp_csr_accessibility"
	dtest_name_14: .asciz "SID_PBVMS_023_satp_asidlen_discovery"
	dtest_name_15: .asciz "SID_PBVMS_027_satp_user_mode_fault"
	dtest_name_16: .asciz "SID_PBVMS_040_context_table_overflow"
	dtest_name_17: .asciz "SID_PBVMS_042_canonical_boundary_crossing_fault"
	dtest_name_18: .asciz "SID_PBVMS_043_fetch_window_spill_page_cross"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 11  # SID_PBVMS_018_rsw_fields_writable
	.word 5  # SID_PBVMS_011_ptw_fault_boundary_crossing
	.word 17  # SID_PBVMS_042_canonical_boundary_crossing_fault
	.word 18  # SID_PBVMS_043_fetch_window_spill_page_cross
	.word 9  # SID_PBVMS_015_global_bit_honoured
	.word 0  # SID_PBVMS_001_ptw_no_faults_all_access_types
	.word 16  # SID_PBVMS_040_context_table_overflow
	.word 1  # SID_PBVMS_003_ptw_all_privilege_modes
	.word 15  # SID_PBVMS_027_satp_user_mode_fault
	.word 6  # SID_PBVMS_012_ptw_fault_prioritization
	.word 10  # SID_PBVMS_017_global_at_non_leaf
	.word 13  # SID_PBVMS_022_satp_csr_accessibility
	.word 14  # SID_PBVMS_023_satp_asidlen_discovery
	.word 12  # SID_PBVMS_021_satp_valid_to_reserved
	.word 7  # SID_PBVMS_013_ptw_permission_encodings
	.word 3  # SID_PBVMS_008_va_sign_extension_fault
	.word 8  # SID_PBVMS_014_mstatus_sum_mxr
	.word 2  # SID_PBVMS_006_ptw_page_boundary_crossing
	.word 4  # SID_PBVMS_009_superpage_alignment_fault


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


