
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 18 # setting num_runs to 18
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
	csrr t0, mconfigptr
	csrr t0, scause
	csrr t0, minstret
	csrr t0, sip
	csrr t0, scounteren
	csrr t0, menvcfg
	csrr t0, mcause
	csrr t0, scause
	csrr t0, mhartid
	csrr t0, sip
	csrr t0, sepc


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
	.dword 18

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP
	.dword SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED
	.dword SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS
	.dword SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP
	.dword SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES
	.dword SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL
	.dword SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES
	.dword SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE
	.dword SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW
	.dword SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET
	.dword SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW
	.dword SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW
	.dword SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED
	.dword SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS
	.dword SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED
	.dword SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS
	.dword SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS

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
	dtest_name_0: .asciz "SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL"
	dtest_name_1: .asciz "SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS"
	dtest_name_2: .asciz "SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS"
	dtest_name_3: .asciz "SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE"
	dtest_name_4: .asciz "SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET"
	dtest_name_5: .asciz "SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS"
	dtest_name_6: .asciz "SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES"
	dtest_name_7: .asciz "SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS"
	dtest_name_8: .asciz "SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES"
	dtest_name_9: .asciz "SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW"
	dtest_name_10: .asciz "SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW"
	dtest_name_11: .asciz "SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW"
	dtest_name_12: .asciz "SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED"
	dtest_name_13: .asciz "SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP"
	dtest_name_14: .asciz "SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP"
	dtest_name_15: .asciz "SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED"
	dtest_name_16: .asciz "SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 13  # SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP
	.word 12  # SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED
	.word 7  # SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS
	.word 14  # SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP
	.word 6  # SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES
	.word 0  # SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL
	.word 8  # SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES
	.word 3  # SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE
	.word 9  # SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW
	.word 4  # SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET
	.word 10  # SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW
	.word 11  # SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW
	.word 15  # SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED
	.word 5  # SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS
	.word 16  # SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED
	.word 2  # SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS
	.word 1  # SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


