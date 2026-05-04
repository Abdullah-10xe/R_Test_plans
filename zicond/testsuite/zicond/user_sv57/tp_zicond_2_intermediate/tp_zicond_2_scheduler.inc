
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 79 # setting num_runs to 79
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
	csrr t0, mhartid
	csrr t0, mvendorid
	csrr t0, medeleg
	csrr t0, mscratch
	csrr t0, stvec
	csrr t0, scounteren
	csrr t0, minstret
	csrr t0, sie
	csrr t0, sscratch
	csrr t0, mconfigptr
	csrr t0, minstret


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
	.dword 79

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_EXCEP_01_EQZ_RS1_NZ
	.dword SID_EXCEP_01_EQZ_RS1_Z
	.dword SID_EXCEP_04_NEZ_FAILING_XOR
	.dword SID_EXCEP_01_NEZ_RS1_NZ
	.dword SID_EXCEP_04_EQZ_FAILING_XOR
	.dword SID_EXCEP_04_NEZ_FAILING_ADD
	.dword SID_EXCEP_04_2_1_MUX_SELECT_0
	.dword SID_EXCEP_04_EQZ_FAILING_AND
	.dword SID_EXCEP_04_EQZ_PASSING_ADD
	.dword SID_EXCEP_04_NEZ_PASSING_AND
	.dword SID_EXCEP_01_NEZ_RS1_Z
	.dword SID_EXCEP_04_EQZ_FAILING_XOR
	.dword SID_EXCEP_02_EQZ_RS1_NZ
	.dword SID_EXCEP_02_NEZ_RS1_Z
	.dword SID_EXCEP_04_NEZ_PASSING_XOR
	.dword SID_EXCEP_04_NEZ_PASSING_SUB
	.dword SID_EXCEP_02_NEZ_RS1_Z
	.dword SID_EXCEP_04_EQZ_FAILING_SUB
	.dword SID_EXCEP_04_NEZ_FAILING_AND
	.dword SID_EXCEP_04_2_1_MUX_SELECT_1
	.dword SID_EXCEP_02_EQZ_RS1_Z
	.dword SID_EXCEP_04_NEZ_PASSING_ADD
	.dword SID_EXCEP_04_NEZ_FAILING_SUB
	.dword SID_EXCEP_04_EQZ_PASSING_SUB
	.dword SID_EXCEP_04_NEZ_PASSING_SUB
	.dword SID_EXCEP_02_EQZ_RS1_NZ
	.dword SID_EXCEP_04_EQZ_FAILING_AND
	.dword SID_EXCEP_01_EQZ_RS1_Z
	.dword SID_EXCEP_04_2_1_MUX_SELECT_0
	.dword SID_EXCEP_04_EQZ_FAILING_AND
	.dword SID_EXCEP_04_EQZ_PASSING_SUB
	.dword SID_EXCEP_02_NEZ_RS1_NZ
	.dword SID_EXCEP_04_EQZ_PASSING_SUB
	.dword SID_EXCEP_04_EQZ_PASSING_ADD
	.dword SID_EXCEP_04_EQZ_FAILING_ADD
	.dword SID_EXCEP_04_NEZ_PASSING_ADD
	.dword SID_EXCEP_04_EQZ_PASSING_AND
	.dword SID_EXCEP_04_2_1_MUX_SELECT_0
	.dword SID_EXCEP_04_NEZ_FAILING_AND
	.dword SID_EXCEP_04_EQZ_FAILING_SUB
	.dword SID_EXCEP_04_NEZ_PASSING_AND
	.dword SID_EXCEP_01_NEZ_RS1_NZ
	.dword SID_EXCEP_04_NEZ_PASSING_ADD
	.dword SID_EXCEP_04_EQZ_PASSING_XOR
	.dword SID_EXCEP_04_EQZ_PASSING_AND
	.dword SID_EXCEP_04_NEZ_PASSING_AND
	.dword SID_EXCEP_02_EQZ_RS1_NZ
	.dword SID_EXCEP_02_EQZ_RS1_Z
	.dword SID_EXCEP_04_2_1_MUX_SELECT_1
	.dword SID_EXCEP_04_NEZ_FAILING_SUB
	.dword SID_EXCEP_04_2_1_MUX_SELECT_1
	.dword SID_EXCEP_04_NEZ_FAILING_SUB
	.dword SID_EXCEP_04_NEZ_FAILING_XOR
	.dword SID_EXCEP_04_EQZ_PASSING_ADD
	.dword SID_EXCEP_04_NEZ_PASSING_XOR
	.dword SID_EXCEP_04_EQZ_FAILING_ADD
	.dword SID_EXCEP_02_NEZ_RS1_NZ
	.dword SID_EXCEP_01_EQZ_RS1_NZ
	.dword SID_EXCEP_04_NEZ_PASSING_XOR
	.dword SID_EXCEP_01_EQZ_RS1_NZ
	.dword SID_EXCEP_04_EQZ_FAILING_XOR
	.dword SID_EXCEP_02_EQZ_RS1_Z
	.dword SID_EXCEP_04_NEZ_FAILING_XOR
	.dword SID_EXCEP_04_EQZ_PASSING_XOR
	.dword SID_EXCEP_04_NEZ_FAILING_ADD
	.dword SID_EXCEP_04_NEZ_FAILING_AND
	.dword SID_EXCEP_04_EQZ_PASSING_AND
	.dword SID_EXCEP_04_EQZ_PASSING_XOR
	.dword SID_EXCEP_02_NEZ_RS1_Z
	.dword SID_EXCEP_01_EQZ_RS1_Z
	.dword SID_EXCEP_04_EQZ_FAILING_ADD
	.dword SID_EXCEP_04_NEZ_PASSING_SUB
	.dword SID_EXCEP_04_EQZ_FAILING_SUB
	.dword SID_EXCEP_02_NEZ_RS1_NZ
	.dword SID_EXCEP_04_NEZ_FAILING_ADD
	.dword SID_EXCEP_01_NEZ_RS1_Z
	.dword SID_EXCEP_01_NEZ_RS1_Z
	.dword SID_EXCEP_01_NEZ_RS1_NZ

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
	dtest_name_0: .asciz "SID_EXCEP_01_EQZ_RS1_NZ"
	dtest_name_1: .asciz "SID_EXCEP_01_EQZ_RS1_Z"
	dtest_name_2: .asciz "SID_EXCEP_01_NEZ_RS1_NZ"
	dtest_name_3: .asciz "SID_EXCEP_01_NEZ_RS1_Z"
	dtest_name_4: .asciz "SID_EXCEP_02_EQZ_RS1_NZ"
	dtest_name_5: .asciz "SID_EXCEP_02_EQZ_RS1_Z"
	dtest_name_6: .asciz "SID_EXCEP_02_NEZ_RS1_Z"
	dtest_name_7: .asciz "SID_EXCEP_02_NEZ_RS1_NZ"
	dtest_name_8: .asciz "SID_EXCEP_04_EQZ_PASSING_ADD"
	dtest_name_9: .asciz "SID_EXCEP_04_EQZ_FAILING_ADD"
	dtest_name_10: .asciz "SID_EXCEP_04_NEZ_PASSING_SUB"
	dtest_name_11: .asciz "SID_EXCEP_04_NEZ_FAILING_SUB"
	dtest_name_12: .asciz "SID_EXCEP_04_EQZ_PASSING_SUB"
	dtest_name_13: .asciz "SID_EXCEP_04_EQZ_FAILING_SUB"
	dtest_name_14: .asciz "SID_EXCEP_04_NEZ_PASSING_ADD"
	dtest_name_15: .asciz "SID_EXCEP_04_NEZ_FAILING_ADD"
	dtest_name_16: .asciz "SID_EXCEP_04_EQZ_PASSING_AND"
	dtest_name_17: .asciz "SID_EXCEP_04_EQZ_FAILING_AND"
	dtest_name_18: .asciz "SID_EXCEP_04_EQZ_PASSING_XOR"
	dtest_name_19: .asciz "SID_EXCEP_04_EQZ_FAILING_XOR"
	dtest_name_20: .asciz "SID_EXCEP_04_NEZ_PASSING_AND"
	dtest_name_21: .asciz "SID_EXCEP_04_NEZ_FAILING_AND"
	dtest_name_22: .asciz "SID_EXCEP_04_NEZ_PASSING_XOR"
	dtest_name_23: .asciz "SID_EXCEP_04_NEZ_FAILING_XOR"
	dtest_name_24: .asciz "SID_EXCEP_04_2_1_MUX_SELECT_0"
	dtest_name_25: .asciz "SID_EXCEP_04_2_1_MUX_SELECT_1"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 0  # SID_EXCEP_01_EQZ_RS1_NZ
	.word 1  # SID_EXCEP_01_EQZ_RS1_Z
	.word 23  # SID_EXCEP_04_NEZ_FAILING_XOR
	.word 2  # SID_EXCEP_01_NEZ_RS1_NZ
	.word 19  # SID_EXCEP_04_EQZ_FAILING_XOR
	.word 15  # SID_EXCEP_04_NEZ_FAILING_ADD
	.word 24  # SID_EXCEP_04_2_1_MUX_SELECT_0
	.word 17  # SID_EXCEP_04_EQZ_FAILING_AND
	.word 8  # SID_EXCEP_04_EQZ_PASSING_ADD
	.word 20  # SID_EXCEP_04_NEZ_PASSING_AND
	.word 3  # SID_EXCEP_01_NEZ_RS1_Z
	.word 19  # SID_EXCEP_04_EQZ_FAILING_XOR
	.word 4  # SID_EXCEP_02_EQZ_RS1_NZ
	.word 6  # SID_EXCEP_02_NEZ_RS1_Z
	.word 22  # SID_EXCEP_04_NEZ_PASSING_XOR
	.word 10  # SID_EXCEP_04_NEZ_PASSING_SUB
	.word 6  # SID_EXCEP_02_NEZ_RS1_Z
	.word 13  # SID_EXCEP_04_EQZ_FAILING_SUB
	.word 21  # SID_EXCEP_04_NEZ_FAILING_AND
	.word 25  # SID_EXCEP_04_2_1_MUX_SELECT_1
	.word 5  # SID_EXCEP_02_EQZ_RS1_Z
	.word 14  # SID_EXCEP_04_NEZ_PASSING_ADD
	.word 11  # SID_EXCEP_04_NEZ_FAILING_SUB
	.word 12  # SID_EXCEP_04_EQZ_PASSING_SUB
	.word 10  # SID_EXCEP_04_NEZ_PASSING_SUB
	.word 4  # SID_EXCEP_02_EQZ_RS1_NZ
	.word 17  # SID_EXCEP_04_EQZ_FAILING_AND
	.word 1  # SID_EXCEP_01_EQZ_RS1_Z
	.word 24  # SID_EXCEP_04_2_1_MUX_SELECT_0
	.word 17  # SID_EXCEP_04_EQZ_FAILING_AND
	.word 12  # SID_EXCEP_04_EQZ_PASSING_SUB
	.word 7  # SID_EXCEP_02_NEZ_RS1_NZ
	.word 12  # SID_EXCEP_04_EQZ_PASSING_SUB
	.word 8  # SID_EXCEP_04_EQZ_PASSING_ADD
	.word 9  # SID_EXCEP_04_EQZ_FAILING_ADD
	.word 14  # SID_EXCEP_04_NEZ_PASSING_ADD
	.word 16  # SID_EXCEP_04_EQZ_PASSING_AND
	.word 24  # SID_EXCEP_04_2_1_MUX_SELECT_0
	.word 21  # SID_EXCEP_04_NEZ_FAILING_AND
	.word 13  # SID_EXCEP_04_EQZ_FAILING_SUB
	.word 20  # SID_EXCEP_04_NEZ_PASSING_AND
	.word 2  # SID_EXCEP_01_NEZ_RS1_NZ
	.word 14  # SID_EXCEP_04_NEZ_PASSING_ADD
	.word 18  # SID_EXCEP_04_EQZ_PASSING_XOR
	.word 16  # SID_EXCEP_04_EQZ_PASSING_AND
	.word 20  # SID_EXCEP_04_NEZ_PASSING_AND
	.word 4  # SID_EXCEP_02_EQZ_RS1_NZ
	.word 5  # SID_EXCEP_02_EQZ_RS1_Z
	.word 25  # SID_EXCEP_04_2_1_MUX_SELECT_1
	.word 11  # SID_EXCEP_04_NEZ_FAILING_SUB
	.word 25  # SID_EXCEP_04_2_1_MUX_SELECT_1
	.word 11  # SID_EXCEP_04_NEZ_FAILING_SUB
	.word 23  # SID_EXCEP_04_NEZ_FAILING_XOR
	.word 8  # SID_EXCEP_04_EQZ_PASSING_ADD
	.word 22  # SID_EXCEP_04_NEZ_PASSING_XOR
	.word 9  # SID_EXCEP_04_EQZ_FAILING_ADD
	.word 7  # SID_EXCEP_02_NEZ_RS1_NZ
	.word 0  # SID_EXCEP_01_EQZ_RS1_NZ
	.word 22  # SID_EXCEP_04_NEZ_PASSING_XOR
	.word 0  # SID_EXCEP_01_EQZ_RS1_NZ
	.word 19  # SID_EXCEP_04_EQZ_FAILING_XOR
	.word 5  # SID_EXCEP_02_EQZ_RS1_Z
	.word 23  # SID_EXCEP_04_NEZ_FAILING_XOR
	.word 18  # SID_EXCEP_04_EQZ_PASSING_XOR
	.word 15  # SID_EXCEP_04_NEZ_FAILING_ADD
	.word 21  # SID_EXCEP_04_NEZ_FAILING_AND
	.word 16  # SID_EXCEP_04_EQZ_PASSING_AND
	.word 18  # SID_EXCEP_04_EQZ_PASSING_XOR
	.word 6  # SID_EXCEP_02_NEZ_RS1_Z
	.word 1  # SID_EXCEP_01_EQZ_RS1_Z
	.word 9  # SID_EXCEP_04_EQZ_FAILING_ADD
	.word 10  # SID_EXCEP_04_NEZ_PASSING_SUB
	.word 13  # SID_EXCEP_04_EQZ_FAILING_SUB
	.word 7  # SID_EXCEP_02_NEZ_RS1_NZ
	.word 15  # SID_EXCEP_04_NEZ_FAILING_ADD
	.word 3  # SID_EXCEP_01_NEZ_RS1_Z
	.word 3  # SID_EXCEP_01_NEZ_RS1_Z
	.word 2  # SID_EXCEP_01_NEZ_RS1_NZ


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


