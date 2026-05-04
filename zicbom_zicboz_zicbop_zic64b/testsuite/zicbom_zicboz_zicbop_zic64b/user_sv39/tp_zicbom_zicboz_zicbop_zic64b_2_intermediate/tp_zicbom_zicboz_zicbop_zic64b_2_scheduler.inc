
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 52 # setting num_runs to 52
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
	csrr t0, sepc
	csrr t0, sepc
	csrr t0, medeleg
	csrr t0, senvcfg
	csrr t0, scounteren
	csrr t0, stval
	csrr t0, mepc
	csrr t0, scause
	csrr t0, mhartid
	csrr t0, mtvec
	csrr t0, scause
	csrr t0, menvcfg
	csrr t0, scause


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
	.dword 52

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_ZICBO_006
	.dword SID_ZICBO_017
	.dword SID_ZICBO_004
	.dword SID_ZICBO_015
	.dword SID_ZICBO_002
	.dword SID_ZICBO_003
	.dword SID_ZICBO_50_ZIC64B_01
	.dword SID_ZICBO_016
	.dword SID_ZICBO_015
	.dword SID_ZICBO_016
	.dword SID_ZICBO_003
	.dword SID_ZICBO_019
	.dword SID_ZICBO_019
	.dword SID_ZICBO_013
	.dword SID_ZICBO_022
	.dword SID_ZICBO_018
	.dword SID_ZICBO_047
	.dword SID_ZICBO_003
	.dword SID_ZICBO_013
	.dword SID_ZICBO_018
	.dword SID_ZICBO_50_ZIC64B_01
	.dword SID_ZICBO_047
	.dword SID_ZICBO_022
	.dword SID_ZICBO_005
	.dword SID_ZICBO_022
	.dword SID_ZICBO_005
	.dword SID_ZICBO_004
	.dword SID_ZICBO_001
	.dword SID_ZICBO_020
	.dword SID_ZICBO_001
	.dword SID_ZICBO_019
	.dword SID_ZICBO_006
	.dword SID_ZICBO_017
	.dword SID_ZICBO_049
	.dword SID_ZICBO_018
	.dword SID_ZICBO_016
	.dword SID_ZICBO_017
	.dword SID_ZICBO_049
	.dword SID_ZICBO_020
	.dword SID_ZICBO_001
	.dword SID_ZICBO_049
	.dword SID_ZICBO_005
	.dword SID_ZICBO_020
	.dword SID_ZICBO_006
	.dword SID_ZICBO_013
	.dword SID_ZICBO_047
	.dword SID_ZICBO_004
	.dword SID_ZICBO_015
	.dword SID_ZICBO_50_ZIC64B_01
	.dword SID_ZICBO_002
	.dword SID_ZICBO_002

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

# Test name strings
	dtest_name_0: .asciz "SID_ZICBO_001"
	dtest_name_1: .asciz "SID_ZICBO_002"
	dtest_name_2: .asciz "SID_ZICBO_003"
	dtest_name_3: .asciz "SID_ZICBO_004"
	dtest_name_4: .asciz "SID_ZICBO_005"
	dtest_name_5: .asciz "SID_ZICBO_006"
	dtest_name_6: .asciz "SID_ZICBO_013"
	dtest_name_7: .asciz "SID_ZICBO_015"
	dtest_name_8: .asciz "SID_ZICBO_016"
	dtest_name_9: .asciz "SID_ZICBO_017"
	dtest_name_10: .asciz "SID_ZICBO_018"
	dtest_name_11: .asciz "SID_ZICBO_019"
	dtest_name_12: .asciz "SID_ZICBO_020"
	dtest_name_13: .asciz "SID_ZICBO_022"
	dtest_name_14: .asciz "SID_ZICBO_047"
	dtest_name_15: .asciz "SID_ZICBO_049"
	dtest_name_16: .asciz "SID_ZICBO_50_ZIC64B_01"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 5  # SID_ZICBO_006
	.word 9  # SID_ZICBO_017
	.word 3  # SID_ZICBO_004
	.word 7  # SID_ZICBO_015
	.word 1  # SID_ZICBO_002
	.word 2  # SID_ZICBO_003
	.word 16  # SID_ZICBO_50_ZIC64B_01
	.word 8  # SID_ZICBO_016
	.word 7  # SID_ZICBO_015
	.word 8  # SID_ZICBO_016
	.word 2  # SID_ZICBO_003
	.word 11  # SID_ZICBO_019
	.word 11  # SID_ZICBO_019
	.word 6  # SID_ZICBO_013
	.word 13  # SID_ZICBO_022
	.word 10  # SID_ZICBO_018
	.word 14  # SID_ZICBO_047
	.word 2  # SID_ZICBO_003
	.word 6  # SID_ZICBO_013
	.word 10  # SID_ZICBO_018
	.word 16  # SID_ZICBO_50_ZIC64B_01
	.word 14  # SID_ZICBO_047
	.word 13  # SID_ZICBO_022
	.word 4  # SID_ZICBO_005
	.word 13  # SID_ZICBO_022
	.word 4  # SID_ZICBO_005
	.word 3  # SID_ZICBO_004
	.word 0  # SID_ZICBO_001
	.word 12  # SID_ZICBO_020
	.word 0  # SID_ZICBO_001
	.word 11  # SID_ZICBO_019
	.word 5  # SID_ZICBO_006
	.word 9  # SID_ZICBO_017
	.word 15  # SID_ZICBO_049
	.word 10  # SID_ZICBO_018
	.word 8  # SID_ZICBO_016
	.word 9  # SID_ZICBO_017
	.word 15  # SID_ZICBO_049
	.word 12  # SID_ZICBO_020
	.word 0  # SID_ZICBO_001
	.word 15  # SID_ZICBO_049
	.word 4  # SID_ZICBO_005
	.word 12  # SID_ZICBO_020
	.word 5  # SID_ZICBO_006
	.word 6  # SID_ZICBO_013
	.word 14  # SID_ZICBO_047
	.word 3  # SID_ZICBO_004
	.word 7  # SID_ZICBO_015
	.word 16  # SID_ZICBO_50_ZIC64B_01
	.word 1  # SID_ZICBO_002
	.word 1  # SID_ZICBO_002


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


