
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 16 # setting num_runs to 16
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
	csrr t0, mip
	csrr t0, scounteren
	csrr t0, mvendorid
	csrr t0, mie
	csrr t0, sip
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
	.dword 16

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_EXCEP_17
	.dword SID_EXCEP_07
	.dword SID_EXCEP_12
	.dword SID_EXCEP_35
	.dword SID_EXCEP_32_S
	.dword SID_EXCEP_15_S
	.dword SID_EXCEP_16
	.dword SID_EXCEP_08
	.dword SID_EXCEP_06
	.dword SID_EXCEP_10
	.dword SID_EXCEP_33_S
	.dword SID_EXCEP_05
	.dword SID_EXCEP_04_SU
	.dword SID_EXCEP_38
	.dword SID_EXCEP_37

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

# Test name strings
	dtest_name_0: .asciz "SID_EXCEP_04_SU"
	dtest_name_1: .asciz "SID_EXCEP_05"
	dtest_name_2: .asciz "SID_EXCEP_06"
	dtest_name_3: .asciz "SID_EXCEP_07"
	dtest_name_4: .asciz "SID_EXCEP_08"
	dtest_name_5: .asciz "SID_EXCEP_10"
	dtest_name_6: .asciz "SID_EXCEP_12"
	dtest_name_7: .asciz "SID_EXCEP_15_S"
	dtest_name_8: .asciz "SID_EXCEP_16"
	dtest_name_9: .asciz "SID_EXCEP_17"
	dtest_name_10: .asciz "SID_EXCEP_32_S"
	dtest_name_11: .asciz "SID_EXCEP_33_S"
	dtest_name_12: .asciz "SID_EXCEP_35"
	dtest_name_13: .asciz "SID_EXCEP_37"
	dtest_name_14: .asciz "SID_EXCEP_38"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 9  # SID_EXCEP_17
	.word 3  # SID_EXCEP_07
	.word 6  # SID_EXCEP_12
	.word 12  # SID_EXCEP_35
	.word 10  # SID_EXCEP_32_S
	.word 7  # SID_EXCEP_15_S
	.word 8  # SID_EXCEP_16
	.word 4  # SID_EXCEP_08
	.word 2  # SID_EXCEP_06
	.word 5  # SID_EXCEP_10
	.word 11  # SID_EXCEP_33_S
	.word 1  # SID_EXCEP_05
	.word 0  # SID_EXCEP_04_SU
	.word 14  # SID_EXCEP_38
	.word 13  # SID_EXCEP_37


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


