
.section .runtime, "ax"

	.equ SSI, 1
	.equ MSI, 3
	.equ STI, 5
	.equ MTI, 7
	.equ SEI, 9
	.equ MEI, 11
	.equ COI, 13
	.equ _all_interrupts, ((1 << SSI) | (1 << MSI) | (1 << STI) | (1 << MTI) | (1 << SEI) | (1 << MEI) | (1 << COI))


.macro trap_handler_m__check_expected_interrupt __expected
	li t0, \__expected
	bne t0, a0, test_failed
	li t0, (1<<\__expected)
	csrc mip, t0  # Clear expected interrupt bit
	li a0, 0x0
	mret
.endm

.macro trap_handler_m__clear_interrupt_bit __bit
	li t0, (1<<\__bit)
	csrc mip, t0
	mret
.endm

trap_handler_m__invalid_interrupt:
	j test_failed


trap_handler_m__clear_all_interrupts:
	csrw mip, x0
	mret
trap_handler_m___CLEAR_SSI:
	trap_handler_m__clear_interrupt_bit SSI
trap_handler_m___CLEAR_MSI:
	trap_handler_m__clear_interrupt_bit MSI
trap_handler_m___CLEAR_STI:
	trap_handler_m__clear_interrupt_bit STI
trap_handler_m___CLEAR_MTI:
	trap_handler_m__clear_interrupt_bit MTI
trap_handler_m___CLEAR_SEI:
	trap_handler_m__clear_interrupt_bit SEI
trap_handler_m___CLEAR_MEI:
	trap_handler_m__clear_interrupt_bit MEI
trap_handler_m___CLEAR_COI:
	trap_handler_m__clear_interrupt_bit COI

trap_handler_m__clear_highest_priority_interrupt:
	csrr t0, mip
	neg t1, t0
	and t0, t0, t1              # isolate lowest set bit: xip & (-xip)
	csrrc x0, mip, t0
	mret

trap_handler_m__trap_entry:
	j trap_handler_m__trap_handler
trap_handler_m__interrupt_vector_table:
	j trap_handler_m___CLEAR_SSI
	j trap_handler_m__invalid_interrupt
	j trap_handler_m___CLEAR_MSI
	j trap_handler_m__invalid_interrupt
	j trap_handler_m___CLEAR_STI
	j trap_handler_m__invalid_interrupt
	j trap_handler_m___CLEAR_MTI
	j trap_handler_m__invalid_interrupt
	j trap_handler_m___CLEAR_SEI
	j trap_handler_m__invalid_interrupt
	j trap_handler_m___CLEAR_MEI
	j trap_handler_m__invalid_interrupt
	j trap_handler_m___CLEAR_COI
	j trap_handler_m__invalid_interrupt
	j trap_handler_m__invalid_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt
	j trap_handler_m__clear_highest_priority_interrupt


trap_handler_m__trap_handler:
	csrr t0, mcause
	li t1, (0x1<<(XLEN-1))              # Isolate interrupt bit
	and t1, t1, t0
	beq t1, x0, trap_handler_m__exception_path  # If the interrupt bit is 0, exception

trap_handler_m__interrupt_handler:
# Dispatch to the interrupt vector table based on xcause.
# Strip the interrupt bit (MSB) to get the cause number,
# then jump into the vector table at trap_entry + 4*cause.
# Each vector table entry is a 4-byte 'j <handler>' instruction.
# Handlers execute xret directly (no context save/restore needed).
	li t1, (0x1<<(XLEN-1))
	xor t0, t0, t1                  # Strip interrupt bit to get cause number
	la t1, trap_handler_m__trap_entry
	slli t0, t0, 2                  # cause * 4 (each entry is 4 bytes)
	add t0, t1, t0                  # trap_entry + 4*cause
	jr t0                           # Jump to vector table entry

trap_handler_m__exception_path:

# Enter hart context
	csrrw tp, mscratch, tp
	la t0, trap_handler_m__trap_panic
	csrw mtvec, t0

	j trap_handler_m__excp_entry

	.balign 4, 0
trap_handler_m__excp_entry:
	csrr t1, mcause
	li t0, 8 # Checking for ecall
	blt t1, t0, trap_handler_m__check_exception_label
	li t0, 11
	bgt t1, t0, trap_handler_m__check_exception_label
	j trap_handler_m__syscal_table

trap_handler_m__check_exception_label:
	sd t1, 88(tp)      # check_excp_actual_cause  # Save check_excp_actual_cause
	csrr t0, mepc
	sd t0, 40(tp)         # check_excp_actual_pc  # Save check_excp_actual_pc


# Check if check_exception is enabled
	lb t0, 24(tp)                   # check_excp
	bne t0, x0, trap_handler_m__check_excp

# restore check_excp, return to return_label
	addi t0, t0, 1
	sb t0, 24(tp)                   # check_excp
	j trap_handler_m__return_to_host

trap_handler_m__check_excp:
# Check expected handler mode (0 = any)
	ld t0, 104(tp)     # check_excp_expected_mode
	sd x0, 104(tp)     # check_excp_expected_mode  # check_excp_expected_mode
	beqz t0, trap_handler_m__skip_mode_check
	li t2, 1
	bne t0, t2, test_failed
trap_handler_m__skip_mode_check:

# Check for correct exception code
	ld t0, 80(tp)    # check_excp_expected_cause
	sd x0, 80(tp)    # check_excp_expected_cause  # check_excp_expected_cause
	bne t1, t0, test_failed

# when skip_pc_check is set, skip the pc check
	ld t0, 56(tp)     # check_excp_skip_pc_check
	sd x0, 56(tp)     # check_excp_skip_pc_check  # check_excp_skip_pc_check
	bne t0, x0, trap_handler_m__skip_pc_check

# compare expected and actual PC values
	ld t1, 32(tp)       # check_excp_expected_pc
	sd x0, 32(tp)       # check_excp_expected_pc  # check_excp_expected_pc
	ld t0, 40(tp)         # check_excp_actual_pc
	sd x0, 40(tp)         # check_excp_actual_pc  # check_excp_actual_pc
	bne t1, t0, test_failed

# compare expected and actual tval values
	ld t0, 64(tp)     # check_excp_expected_tval
	sd x0, 64(tp)     # check_excp_expected_tval  # check_excp_expected_tval
	beqz t0, trap_handler_m__skip_nonzero_tval_check

trap_handler_m__nonzero_tval_check:
	csrr t1, mtval
	bne t1, t0, test_failed

trap_handler_m__skip_nonzero_tval_check:

	ld t0, 72(tp)    # check_excp_expected_htval
	sd x0, 72(tp)    # check_excp_expected_htval  # check_excp_expected_htval
	beqz t0, trap_handler_m__skip_nonzero_htval_check

trap_handler_m__nonzero_htval_check:
	csrr t1, mtval2
	bne t1, t0, test_failed

trap_handler_m__skip_nonzero_htval_check:

	ld t0, 96(tp)         # check_excp_gva_check
	sd x0, 96(tp)         # check_excp_gva_check  # check_excp_gva_check
	beqz t0, trap_handler_m__skip_gva_check

trap_handler_m__gva_check:
	csrr t1, mstatus
	srli t1, t1, 38
	andi t1, t1, 1
	beqz t1, test_failed
	li t1, (1 << 38)
	csrc mstatus, t1

trap_handler_m__skip_gva_check:


trap_handler_m__skip_pc_check:
	j trap_handler_m__return_to_host


trap_handler_m__ecall_from_machine:
trap_handler_m__ecall_from_supervisor:
trap_handler_m__return_to_host:

# Always consume the stashed return_pc so every OS_SETUP_CHECK_EXCP is single-use.
	ld t0, 48(tp)         # check_excp_return_pc
	sd x0, 48(tp)         # check_excp_return_pc  # check_excp_return_pc
# When re-execute is set, leave xepc pointing at the faulting PC so xret
# resumes at the same instruction (sdtrig icount/mcontrol6 use cases).
	ld t1, 112(tp)        # check_excp_re_execute
	sd x0, 112(tp)        # check_excp_re_execute  # check_excp_re_execute
	bnez t1, trap_handler_m__skip_xepc_write
	csrw mepc, t0
trap_handler_m__skip_xepc_write:


	.balign 4, 0
trap_handler_m__trap_exit:


	la t1, trap_handler_m__trap_entry
	csrw mtvec, t1


# Exit hart context
	csrrw tp, mscratch, tp
	mret


trap_handler_m__trap_panic:
	li gp, 0
	j eot__end_test

