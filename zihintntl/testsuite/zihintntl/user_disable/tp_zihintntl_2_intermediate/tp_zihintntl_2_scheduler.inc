
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 7 # setting num_runs to 7
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
	csrr t0, mideleg
	csrr t0, sepc
	csrr t0, sie
	csrr t0, scause
	csrr t0, mideleg
	csrr t0, mhartid
	csrr t0, marchid
	csrr t0, sie
	csrr t0, scause
	csrr t0, mcause
	csrr t0, stval
	csrr t0, scounteren
	csrr t0, mip
	csrr t0, mscratch


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
	.dword 7

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_ZIHINTNTL_03_NTL_S1
	.dword SID_ZIHINTNTL_04_NTL_ALL
	.dword SID_ZIHINTNTL_02_NTL_PALL
	.dword SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC
	.dword SID_ZIHINTNTL_06_NTL_SEQUENCE
	.dword SID_ZIHINTNTL_01_NTL_P1

	.balign 8, 0
dtest_descriptor_table:
	.dword dtest_name_0
	.dword dtest_name_1
	.dword dtest_name_2
	.dword dtest_name_3
	.dword dtest_name_4
	.dword dtest_name_5

# Test name strings
	dtest_name_0: .asciz "SID_ZIHINTNTL_01_NTL_P1"
	dtest_name_1: .asciz "SID_ZIHINTNTL_02_NTL_PALL"
	dtest_name_2: .asciz "SID_ZIHINTNTL_03_NTL_S1"
	dtest_name_3: .asciz "SID_ZIHINTNTL_04_NTL_ALL"
	dtest_name_4: .asciz "SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC"
	dtest_name_5: .asciz "SID_ZIHINTNTL_06_NTL_SEQUENCE"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 2  # SID_ZIHINTNTL_03_NTL_S1
	.word 3  # SID_ZIHINTNTL_04_NTL_ALL
	.word 1  # SID_ZIHINTNTL_02_NTL_PALL
	.word 4  # SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC
	.word 5  # SID_ZIHINTNTL_06_NTL_SEQUENCE
	.word 0  # SID_ZIHINTNTL_01_NTL_P1


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


