
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 27 # setting num_runs to 27
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
	csrr t0, marchid
	csrr t0, sie
	csrr t0, mie
	csrr t0, stval
	csrr t0, mconfigptr
	csrr t0, sscratch


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

	li x1, 0x00000080 # HSTATUS.SVP=1
	csrrs x0, hstatus, x1
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
	.dword 27

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_HEXCEP_07_vu_mode_case2
	.dword SID_HEXCEP_19_misaligned_amo
	.dword SID_HEXCEP_17_vs0_both
	.dword SID_HEXCEP_16_vsstatus_fs0
	.dword SID_HEXCEP_05
	.dword SID_HEXCEP_19_misaligned_amo_delegated
	.dword SID_HEXCEP_07_vu_mode_case3
	.dword SID_HEXCEP_09_wfi_vu
	.dword SID_HEXCEP_16_fs0_both
	.dword SID_HEXCEP_16_sstatus_fs0
	.dword SID_HEXCEP_17_sstatus_vs0
	.dword SID_HEXCEP_19_misaligned_sc
	.dword SID_HEXCEP_09_sinval_vma_vu
	.dword SID_HEXCEP_17_vsstatus_vs0
	.dword SID_HEXCEP_09_hinval_vvma_vu
	.dword SID_HEXCEP_11
	.dword SID_HEXCEP_19_misaligned_lr
	.dword SID_HEXCEP_19_misaligned_sc_delegated
	.dword SID_HEXCEP_09_mret_in_vs_vu
	.dword SID_HEXCEP_09_sret_vu
	.dword SID_HEXCEP_09_sfence_vma_vu
	.dword SID_HEXCEP_08
	.dword SID_HEXCEP_09_hinval_gvma_vu
	.dword SID_HEXCEP_19_misaligned_lr_delegated
	.dword SID_HEXCEP_07_vu_mode_case1
	.dword SID_HEXCEP_06

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

# Test name strings
	dtest_name_0: .asciz "SID_HEXCEP_05"
	dtest_name_1: .asciz "SID_HEXCEP_06"
	dtest_name_2: .asciz "SID_HEXCEP_07_vu_mode_case1"
	dtest_name_3: .asciz "SID_HEXCEP_07_vu_mode_case2"
	dtest_name_4: .asciz "SID_HEXCEP_07_vu_mode_case3"
	dtest_name_5: .asciz "SID_HEXCEP_08"
	dtest_name_6: .asciz "SID_HEXCEP_09_mret_in_vs_vu"
	dtest_name_7: .asciz "SID_HEXCEP_09_wfi_vu"
	dtest_name_8: .asciz "SID_HEXCEP_09_sret_vu"
	dtest_name_9: .asciz "SID_HEXCEP_09_sfence_vma_vu"
	dtest_name_10: .asciz "SID_HEXCEP_09_hinval_vvma_vu"
	dtest_name_11: .asciz "SID_HEXCEP_09_hinval_gvma_vu"
	dtest_name_12: .asciz "SID_HEXCEP_09_sinval_vma_vu"
	dtest_name_13: .asciz "SID_HEXCEP_11"
	dtest_name_14: .asciz "SID_HEXCEP_16_fs0_both"
	dtest_name_15: .asciz "SID_HEXCEP_16_vsstatus_fs0"
	dtest_name_16: .asciz "SID_HEXCEP_16_sstatus_fs0"
	dtest_name_17: .asciz "SID_HEXCEP_17_vs0_both"
	dtest_name_18: .asciz "SID_HEXCEP_17_vsstatus_vs0"
	dtest_name_19: .asciz "SID_HEXCEP_17_sstatus_vs0"
	dtest_name_20: .asciz "SID_HEXCEP_19_misaligned_amo"
	dtest_name_21: .asciz "SID_HEXCEP_19_misaligned_lr"
	dtest_name_22: .asciz "SID_HEXCEP_19_misaligned_sc"
	dtest_name_23: .asciz "SID_HEXCEP_19_misaligned_amo_delegated"
	dtest_name_24: .asciz "SID_HEXCEP_19_misaligned_lr_delegated"
	dtest_name_25: .asciz "SID_HEXCEP_19_misaligned_sc_delegated"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 3  # SID_HEXCEP_07_vu_mode_case2
	.word 20  # SID_HEXCEP_19_misaligned_amo
	.word 17  # SID_HEXCEP_17_vs0_both
	.word 15  # SID_HEXCEP_16_vsstatus_fs0
	.word 0  # SID_HEXCEP_05
	.word 23  # SID_HEXCEP_19_misaligned_amo_delegated
	.word 4  # SID_HEXCEP_07_vu_mode_case3
	.word 7  # SID_HEXCEP_09_wfi_vu
	.word 14  # SID_HEXCEP_16_fs0_both
	.word 16  # SID_HEXCEP_16_sstatus_fs0
	.word 19  # SID_HEXCEP_17_sstatus_vs0
	.word 22  # SID_HEXCEP_19_misaligned_sc
	.word 12  # SID_HEXCEP_09_sinval_vma_vu
	.word 18  # SID_HEXCEP_17_vsstatus_vs0
	.word 10  # SID_HEXCEP_09_hinval_vvma_vu
	.word 13  # SID_HEXCEP_11
	.word 21  # SID_HEXCEP_19_misaligned_lr
	.word 25  # SID_HEXCEP_19_misaligned_sc_delegated
	.word 6  # SID_HEXCEP_09_mret_in_vs_vu
	.word 8  # SID_HEXCEP_09_sret_vu
	.word 9  # SID_HEXCEP_09_sfence_vma_vu
	.word 5  # SID_HEXCEP_08
	.word 11  # SID_HEXCEP_09_hinval_gvma_vu
	.word 24  # SID_HEXCEP_19_misaligned_lr_delegated
	.word 2  # SID_HEXCEP_07_vu_mode_case1
	.word 1  # SID_HEXCEP_06


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


