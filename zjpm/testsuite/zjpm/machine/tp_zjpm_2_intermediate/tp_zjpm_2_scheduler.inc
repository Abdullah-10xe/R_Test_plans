
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 7 # setting num_runs to 7
	sd t0, 416(tp)                     # num_runs
	li t0, 0xFFFFFFFE  # test_setup special index
	sd t0, 408(tp)           # current_test_index

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
# FS round-robin (--fs_randomization)
	la t3, fs_rr_table
	ld t4, 392(tp)                  # fs_rr_index
	slli t5, t4, 2
	add t5, t3, t5
	lw t5, 0(t5)
	slli t5, t5, 13
	li t3, 0x6000
	csrrc x0, mstatus, t3
	csrrs x0, mstatus, t5
	addi t4, t4, 1
	li t3, 3
	blt t4, t3, 1f
	mv t4, zero
	1:      sd t4, 392(tp)                  # fs_rr_index
# VS round-robin (--vs_randomization)
	la t3, vs_rr_table
	ld t4, 400(tp)                  # vs_rr_index
	slli t5, t4, 2
	add t5, t3, t5
	lw t5, 0(t5)
	slli t5, t5, 9
	li t3, 0x600
	csrrc x0, mstatus, t3
	csrrs x0, mstatus, t5
	addi t4, t4, 1
	li t3, 3
	blt t4, t3, 2f
	mv t4, zero
	2:      sd t4, 400(tp)                  # vs_rr_index
	csrr t0, sie
	csrr t0, mie
	csrr t0, marchid
	csrr t0, mimpid
	csrr t0, sscratch
	csrr t0, mconfigptr
	csrr t0, sscratch
	csrr t0, mimpid
	csrr t0, mconfigptr
	csrr t0, sepc
	csrr t0, mconfigptr
	csrr t0, mconfigptr
	csrr t0, mvendorid
	csrr t0, mtvec
	csrr t0, scause


# (num_runs == 0) goto scheduler__finished
scheduler__load_num_runs:
	ld t1, 416(tp)                     # num_runs
	beqz t1, scheduler__finished

scheduler__decrement_num_runs:
	addi t2, t1, -1
	sd t2, 416(tp)                     # num_runs

# Store current test index for RVCP messages
# Look up discrete test index from dtest_index_map[t2]
	la t3, dtest_index_map
	slli t4, t2, 2  # t4 = t2 * 4 (word size)
	add t3, t3, t4
	lw t3, 0(t3)   # t3 = dtest_index_map[t2]
	sd t3, 408(tp)           # current_test_index

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
	.dword 7

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_03_menvcfg_pmm_warl
	.dword SID_04_mseccfg_pmm_warl
	.dword SID_03_menvcfg_pmm_warl
	.dword SID_04_mseccfg_pmm_warl
	.dword SID_04_mseccfg_pmm_warl
	.dword SID_03_menvcfg_pmm_warl

	.balign 4, 0
fs_rr_table:
	.word 1
	.word 2
	.word 3
	.equ fs_rr_table_size, 3

	.balign 4, 0
vs_rr_table:
	.word 1
	.word 2
	.word 3
	.equ vs_rr_table_size, 3

	.balign 8, 0
dtest_descriptor_table:
	.dword dtest_name_0
	.dword dtest_name_1

# Test name strings
	dtest_name_0: .asciz "SID_03_menvcfg_pmm_warl"
	dtest_name_1: .asciz "SID_04_mseccfg_pmm_warl"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 0  # SID_03_menvcfg_pmm_warl
	.word 1  # SID_04_mseccfg_pmm_warl
	.word 0  # SID_03_menvcfg_pmm_warl
	.word 1  # SID_04_mseccfg_pmm_warl
	.word 1  # SID_04_mseccfg_pmm_warl
	.word 0  # SID_03_menvcfg_pmm_warl


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


