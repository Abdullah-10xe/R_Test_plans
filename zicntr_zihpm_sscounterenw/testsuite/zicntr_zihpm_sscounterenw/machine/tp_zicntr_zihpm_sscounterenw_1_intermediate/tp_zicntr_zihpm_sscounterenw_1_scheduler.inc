
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 19 # setting num_runs to 19
	sd t0, 400(tp)                     # num_runs
	li t0, 0xFFFFFFFE  # test_setup special index
	sd t0, 392(tp)           # current_test_index

	la t1, scheduler__test_setup_ptr
	ld t1, (t1)
	j scheduler__execute_test


# Entry point for scheduling next test
scheduler__dispatch:

# Setup scheduler panic handler before dispatching

# Save MIE to MPIE, then clear MIE to prevent interrupts
# while mtvec points at scheduler__panic.
	csrrci t0, mstatus, (1 << 3)  # Read old mstatus, clear MIE
	andi t0, t0, (1 << 3)         # Extract old MIE
	slli t0, t0, 4                # Shift to MPIE position (bit 7)
	csrs mstatus, t0              # Set MPIE = old MIE

	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec


scheduler__csr_read_randomization:
	csrr t0, mepc
	csrr t0, senvcfg
	csrr t0, senvcfg
	csrr t0, medeleg
	csrr t0, stval
	csrr t0, sie
	csrr t0, mie
	csrr t0, mhartid
	csrr t0, mtval
	csrr t0, stvec


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


# Restore MIE from MPIE
	csrr t0, mstatus              # Read mstatus
	andi t0, t0, (1 << 7)         # Extract MPIE
	srli t0, t0, 4                # Shift to MIE position (bit 3)
	csrs mstatus, t0              # Set MIE = old MPIE
	jr t1


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
	.dword 19

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_XCOUNTEREN_04_M
	.dword SID_XCOUNTEREN_02_M
	.dword SID_XCOUNTEREN_06_M
	.dword SID_XCOUNTEREN_06_M
	.dword SID_XCOUNTEREN_04_M
	.dword SID_XCOUNTEREN_01_M
	.dword SID_XCOUNTEREN_06_M
	.dword SID_XCOUNTEREN_05_M
	.dword SID_XCOUNTEREN_02_M
	.dword SID_XCOUNTEREN_03_M
	.dword SID_XCOUNTEREN_04_M
	.dword SID_XCOUNTEREN_05_M
	.dword SID_XCOUNTEREN_05_M
	.dword SID_XCOUNTEREN_03_M
	.dword SID_XCOUNTEREN_01_M
	.dword SID_XCOUNTEREN_03_M
	.dword SID_XCOUNTEREN_01_M
	.dword SID_XCOUNTEREN_02_M

	.balign 8, 0
dtest_descriptor_table:
	.dword dtest_name_0
	.dword dtest_name_1
	.dword dtest_name_2
	.dword dtest_name_3
	.dword dtest_name_4
	.dword dtest_name_5

# Test name strings
	dtest_name_0: .asciz "SID_XCOUNTEREN_01_M"
	dtest_name_1: .asciz "SID_XCOUNTEREN_02_M"
	dtest_name_2: .asciz "SID_XCOUNTEREN_03_M"
	dtest_name_3: .asciz "SID_XCOUNTEREN_04_M"
	dtest_name_4: .asciz "SID_XCOUNTEREN_05_M"
	dtest_name_5: .asciz "SID_XCOUNTEREN_06_M"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 3  # SID_XCOUNTEREN_04_M
	.word 1  # SID_XCOUNTEREN_02_M
	.word 5  # SID_XCOUNTEREN_06_M
	.word 5  # SID_XCOUNTEREN_06_M
	.word 3  # SID_XCOUNTEREN_04_M
	.word 0  # SID_XCOUNTEREN_01_M
	.word 5  # SID_XCOUNTEREN_06_M
	.word 4  # SID_XCOUNTEREN_05_M
	.word 1  # SID_XCOUNTEREN_02_M
	.word 2  # SID_XCOUNTEREN_03_M
	.word 3  # SID_XCOUNTEREN_04_M
	.word 4  # SID_XCOUNTEREN_05_M
	.word 4  # SID_XCOUNTEREN_05_M
	.word 2  # SID_XCOUNTEREN_03_M
	.word 0  # SID_XCOUNTEREN_01_M
	.word 2  # SID_XCOUNTEREN_03_M
	.word 0  # SID_XCOUNTEREN_01_M
	.word 1  # SID_XCOUNTEREN_02_M


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


