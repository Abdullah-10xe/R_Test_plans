
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 34 # setting num_runs to 34
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
	csrr t0, mcause
	csrr t0, sie
	csrr t0, stvec
	csrr t0, menvcfg
	csrr t0, scause
	csrr t0, scounteren
	csrr t0, mtvec
	csrr t0, senvcfg
	csrr t0, mimpid
	csrr t0, mtval
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

# Switch from super to super mode
	csrw sepc, t1
# set xPP
	li t0, 0x100
	csrrs x0, sstatus, t0
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
	.dword 34

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_PBVMS_025_mstatus_tvm_satp_access
	.dword SID_PBVMS_040_context_table_overflow
	.dword SID_PBVMS_028_sfence_vma_opcode_coverage
	.dword SID_PBVMS_044_fe_idle_serialization_page_cross
	.dword SID_PBVMS_042_canonical_boundary_crossing_fault
	.dword SID_PBVMS_030_sfence_vma_ordering_sync
	.dword SID_PBVMS_001_ptw_no_faults_all_access_types
	.dword SID_PBVMS_009_superpage_alignment_fault
	.dword SID_PBVMS_016_non_global_bit_honoured
	.dword SID_PBVMS_013_ptw_permission_encodings
	.dword SID_PBVMS_022_satp_csr_accessibility
	.dword SID_PBVMS_026_tlb_asid_match
	.dword SID_PBVMS_032_sfence_vma_invalidate_asid
	.dword SID_PBVMS_041_partial_page_invalidation
	.dword SID_PBVMS_023_satp_asidlen_discovery
	.dword SID_PBVMS_018_rsw_fields_writable
	.dword SID_PBVMS_021_satp_valid_to_reserved
	.dword SID_PBVMS_039_non_leaf_not_invalidated_va_based
	.dword SID_PBVMS_003_ptw_all_privilege_modes
	.dword SID_PBVMS_034_sfence_vma_invalidate_va_asid
	.dword SID_PBVMS_012_ptw_fault_prioritization
	.dword SID_PBVMS_029_ordering_satp_mstatus_without_sfence
	.dword SID_PBVMS_014_mstatus_sum_mxr
	.dword SID_PBVMS_015_global_bit_honoured
	.dword SID_PBVMS_031_sfence_vma_invalidate_all
	.dword SID_PBVMS_035_sfence_vma_various_page_sizes
	.dword SID_PBVMS_033_sfence_vma_invalidate_va
	.dword SID_PBVMS_043_fetch_window_spill_page_cross
	.dword SID_PBVMS_037_sfence_vma_tvm_illegal
	.dword SID_PBVMS_017_global_at_non_leaf
	.dword SID_PBVMS_006_ptw_page_boundary_crossing
	.dword SID_PBVMS_011_ptw_fault_boundary_crossing
	.dword SID_PBVMS_008_va_sign_extension_fault

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
	.dword dtest_name_19
	.dword dtest_name_20
	.dword dtest_name_21
	.dword dtest_name_22
	.dword dtest_name_23
	.dword dtest_name_24
	.dword dtest_name_25
	.dword dtest_name_26
	.dword dtest_name_27
	.dword dtest_name_28
	.dword dtest_name_29
	.dword dtest_name_30
	.dword dtest_name_31
	.dword dtest_name_32

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
	dtest_name_10: .asciz "SID_PBVMS_016_non_global_bit_honoured"
	dtest_name_11: .asciz "SID_PBVMS_017_global_at_non_leaf"
	dtest_name_12: .asciz "SID_PBVMS_018_rsw_fields_writable"
	dtest_name_13: .asciz "SID_PBVMS_021_satp_valid_to_reserved"
	dtest_name_14: .asciz "SID_PBVMS_022_satp_csr_accessibility"
	dtest_name_15: .asciz "SID_PBVMS_023_satp_asidlen_discovery"
	dtest_name_16: .asciz "SID_PBVMS_025_mstatus_tvm_satp_access"
	dtest_name_17: .asciz "SID_PBVMS_026_tlb_asid_match"
	dtest_name_18: .asciz "SID_PBVMS_028_sfence_vma_opcode_coverage"
	dtest_name_19: .asciz "SID_PBVMS_029_ordering_satp_mstatus_without_sfence"
	dtest_name_20: .asciz "SID_PBVMS_030_sfence_vma_ordering_sync"
	dtest_name_21: .asciz "SID_PBVMS_031_sfence_vma_invalidate_all"
	dtest_name_22: .asciz "SID_PBVMS_032_sfence_vma_invalidate_asid"
	dtest_name_23: .asciz "SID_PBVMS_033_sfence_vma_invalidate_va"
	dtest_name_24: .asciz "SID_PBVMS_034_sfence_vma_invalidate_va_asid"
	dtest_name_25: .asciz "SID_PBVMS_035_sfence_vma_various_page_sizes"
	dtest_name_26: .asciz "SID_PBVMS_037_sfence_vma_tvm_illegal"
	dtest_name_27: .asciz "SID_PBVMS_039_non_leaf_not_invalidated_va_based"
	dtest_name_28: .asciz "SID_PBVMS_040_context_table_overflow"
	dtest_name_29: .asciz "SID_PBVMS_041_partial_page_invalidation"
	dtest_name_30: .asciz "SID_PBVMS_042_canonical_boundary_crossing_fault"
	dtest_name_31: .asciz "SID_PBVMS_043_fetch_window_spill_page_cross"
	dtest_name_32: .asciz "SID_PBVMS_044_fe_idle_serialization_page_cross"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 16  # SID_PBVMS_025_mstatus_tvm_satp_access
	.word 28  # SID_PBVMS_040_context_table_overflow
	.word 18  # SID_PBVMS_028_sfence_vma_opcode_coverage
	.word 32  # SID_PBVMS_044_fe_idle_serialization_page_cross
	.word 30  # SID_PBVMS_042_canonical_boundary_crossing_fault
	.word 20  # SID_PBVMS_030_sfence_vma_ordering_sync
	.word 0  # SID_PBVMS_001_ptw_no_faults_all_access_types
	.word 4  # SID_PBVMS_009_superpage_alignment_fault
	.word 10  # SID_PBVMS_016_non_global_bit_honoured
	.word 7  # SID_PBVMS_013_ptw_permission_encodings
	.word 14  # SID_PBVMS_022_satp_csr_accessibility
	.word 17  # SID_PBVMS_026_tlb_asid_match
	.word 22  # SID_PBVMS_032_sfence_vma_invalidate_asid
	.word 29  # SID_PBVMS_041_partial_page_invalidation
	.word 15  # SID_PBVMS_023_satp_asidlen_discovery
	.word 12  # SID_PBVMS_018_rsw_fields_writable
	.word 13  # SID_PBVMS_021_satp_valid_to_reserved
	.word 27  # SID_PBVMS_039_non_leaf_not_invalidated_va_based
	.word 1  # SID_PBVMS_003_ptw_all_privilege_modes
	.word 24  # SID_PBVMS_034_sfence_vma_invalidate_va_asid
	.word 6  # SID_PBVMS_012_ptw_fault_prioritization
	.word 19  # SID_PBVMS_029_ordering_satp_mstatus_without_sfence
	.word 8  # SID_PBVMS_014_mstatus_sum_mxr
	.word 9  # SID_PBVMS_015_global_bit_honoured
	.word 21  # SID_PBVMS_031_sfence_vma_invalidate_all
	.word 25  # SID_PBVMS_035_sfence_vma_various_page_sizes
	.word 23  # SID_PBVMS_033_sfence_vma_invalidate_va
	.word 31  # SID_PBVMS_043_fetch_window_spill_page_cross
	.word 26  # SID_PBVMS_037_sfence_vma_tvm_illegal
	.word 11  # SID_PBVMS_017_global_at_non_leaf
	.word 2  # SID_PBVMS_006_ptw_page_boundary_crossing
	.word 5  # SID_PBVMS_011_ptw_fault_boundary_crossing
	.word 3  # SID_PBVMS_008_va_sign_extension_fault


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


