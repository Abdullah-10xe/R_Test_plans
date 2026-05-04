.macro OS_SETUP_CHECK_EXCP __expected_cause, __expected_pc, __return_pc, __expected_tval=0, __expected_htval=0, __skip_pc_check=0, __far_expected_pc=0, __far_return_pc=0, __gva_check=0, __expected_mode=0, __re_execute=0
	li tp, hart_context
	li t3, \__expected_cause
	sd t3, 80(tp)    # check_excp_expected_cause

# Expected PC (use la for labels; when __far_expected_pc=1 use li for equates like random_addr)
	.if \__far_expected_pc
	li t3, \__expected_pc
	.else
	la t3, \__expected_pc
	.endif
	sd t3, 32(tp)       # check_excp_expected_pc

# Expected TVAL
	li t3, \__expected_tval
	sd t3, 64(tp)     # check_excp_expected_tval

# Expected HTVAL
	li t3, \__expected_htval
	sd t3, 72(tp)    # check_excp_expected_htval

# Return pc (use la for labels; __far_return_pc=1 for equates)
	.if \__far_return_pc
	li t3, \__return_pc
	.else
	la t3, \__return_pc
	.endif
	sd t3, 48(tp)         # check_excp_return_pc

# Skip PC check
	li t3, \__skip_pc_check
	sd t3, 56(tp)     # check_excp_skip_pc_check

# GVA check flag
	li t3, \__gva_check
	sd t3, 96(tp)         # check_excp_gva_check

# Expected handler mode (0 = any)
	li t3, \__expected_mode
	sd t3, 104(tp)     # check_excp_expected_mode

# Re-execute flag: when set, the OS trap handler returns to the faulting PC
# instead of overwriting xepc with __return_pc (sdtrig icount/mcontrol6 use cases).
	li t3, \__re_execute
	sd t3, 112(tp)        # check_excp_re_execute


.endm
.macro OS_SKIP_CHECK_EXCP __return_pc, __far_addr=0
	li tp, hart_context
	.if \__far_addr
	li t3, \__return_pc
	.else
	la t3, \__return_pc
	.endif
	sd t3, 48(tp)         # check_excp_return_pc

	li t3, 0
	sb t3, 24(tp)                   # check_excp


.endm
.macro GET_MHART_ID __dest_reg=s1
	li tp, hart_context
	ld \__dest_reg, 16(tp)
.endm
.macro MUTEX_ACQUIRE_AMO __test_label:req, __lock_addr_reg=a0, __swap_val_reg=t0, __work_reg=t1, __end_test_label=end_test_addr
	li \__lock_addr_reg, barrier_lock
	li \__swap_val_reg, 500        # Initialize swap value.

\__test_label\()_retry_acquire_lock:
\__test_label\()_check_any_hart_ended:
# Always check if any other hart has bailed for an acceptable reason.
	li \__work_reg, num_harts_ended
	lw \__work_reg, 0(\__work_reg)
	bnez \__work_reg, \__test_label\()_other_hart_ended
\__test_label\()_check_timeout:
# decrement swap value
	addi \__swap_val_reg, \__swap_val_reg, -1
# jump to fail if \__swap_val_reg is zero or less
	blez \__swap_val_reg, \__test_label\()_self_bail
\__test_label\()_try_lock:
	lw \__work_reg, (\__lock_addr_reg)     # Check if lock is held
	bnez         \__work_reg, \__test_label\()_wait    # Retry if held.
	amoswap.w.aq \__work_reg, \__swap_val_reg, (\__lock_addr_reg)
	bnez         \__work_reg, \__test_label\()_wait     # Retry if held.
	j \__test_label\()_acquired_lock
\__test_label\()_wait:

	j \__test_label\()_retry_acquire_lock
\__test_label\()_other_hart_ended:
# Another hart may have bailed for an acceptable reason, so end nominally.
# report pass and stop trying to lock
	li a0, \__end_test_label
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_self_bail:
# Looks like we are stuck and no other hart has apparently bailed, so end in a fail.
	li a0, os_failed_addr
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_acquired_lock:
	fence

.endm
.macro MUTEX_RELEASE_AMO __test_label:req, __lock_addr_reg=a0
	amoswap.d.rl x0, x0, (\__lock_addr_reg) # Release lock by storing 0.
\__test_label\()_released_lock:


.endm
.macro MUTEX_ACQUIRE_LR_SC __test_label:req, __lock_addr_reg=a0, __expected_val_reg=a1, __desired_val_reg=a2, __return_val_reg=a3, __work_reg=t0
\__test_label\()_cas_acquire:
	lr.d \__work_reg, (\__lock_addr_reg) # Load original value.
	bne \__work_reg, \__expected_val_reg, \__test_label\()_cas_acquire# Doesn't match, retry
	sc.d \__work_reg, \__desired_val_reg, (\__lock_addr_reg) # Try to update.
	bnez \__work_reg, \__test_label\()_cas_acquire # Retry if store-conditional failed.
	li \__return_val_reg, 0 # Set return to success.
	j \__test_label\()_cas_acquired_lock

\__test_label\()_cas_acquire_fail:
	li \__return_val_reg, 1 # Set return to failure.
\__test_label\()_cas_acquired_lock:
	fence

.endm
.macro MUTEX_RELEASE_LR_SC __test_label:req, __lock_addr_reg=a0, __expected_val_reg=a1, __desired_val_reg=a2, __return_val_reg=a3, __work_reg=t0
	fence
\__test_label\()_cas_release:
	lr.d \__work_reg, (\__lock_addr_reg) # Load original value.
	bne \__work_reg, \__expected_val_reg, \__test_label\()_cas_release# Doesn't match, retry
	sc.d \__work_reg, \__desired_val_reg, (\__lock_addr_reg) # Try to update.
	bnez \__work_reg, \__test_label\()_cas_release # Retry if store-conditional failed.
	li \__return_val_reg, 0 # Set return to success.
	j \__test_label\()_cas_released_lock

\__test_label\()_cas_release_fail:
	li \__return_val_reg, 1
	j failed
\__test_label\()_cas_released_lock:

.endm
.macro SEMAPHORE_ACQUIRE_TICKET __test_label:req, __semaphore_addr_reg=a0, __lock_addr_reg=a1, __swap_val_reg=t0, __return_val_reg=a2, __work_reg=t2, __end_test_label=end_test_addr
\__test_label\()_acquire_ticket:

	li \__lock_addr_reg, barrier_lock
	li \__swap_val_reg, 500        # Initialize swap value.

\__test_label\()_acquire_semaphore_retry_acquire_lock:
\__test_label\()_acquire_semaphore_check_any_hart_ended:
# Always check if any other hart has bailed for an acceptable reason.
	li \__work_reg, num_harts_ended
	lw \__work_reg, 0(\__work_reg)
	bnez \__work_reg, \__test_label\()_acquire_semaphore_other_hart_ended
\__test_label\()_acquire_semaphore_check_timeout:
# decrement swap value
	addi \__swap_val_reg, \__swap_val_reg, -1
# jump to fail if \__swap_val_reg is zero or less
	blez \__swap_val_reg, \__test_label\()_acquire_semaphore_self_bail
\__test_label\()_acquire_semaphore_try_lock:
	lw \__work_reg, (\__lock_addr_reg)     # Check if lock is held
	bnez         \__work_reg, \__test_label\()_acquire_semaphore_wait    # Retry if held.
	amoswap.w.aq \__work_reg, \__swap_val_reg, (\__lock_addr_reg)
	bnez         \__work_reg, \__test_label\()_acquire_semaphore_wait     # Retry if held.
	j \__test_label\()_acquire_semaphore_acquired_lock
\__test_label\()_acquire_semaphore_wait:

	j \__test_label\()_acquire_semaphore_retry_acquire_lock
\__test_label\()_acquire_semaphore_other_hart_ended:
# Another hart may have bailed for an acceptable reason, so end nominally.
# report pass and stop trying to lock
	li a0, \__end_test_label
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_acquire_semaphore_self_bail:
# Looks like we are stuck and no other hart has apparently bailed, so end in a fail.
	li a0, os_failed_addr
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_acquire_semaphore_acquired_lock:
	fence

	ld \__work_reg, (\__semaphore_addr_reg)
	bge x0, \__work_reg, \__test_label\()_acquire_ticket_fail

# Decrement semaphore
	addi \__work_reg, \__work_reg, -1
	sd \__work_reg, (\__semaphore_addr_reg)
	j \__test_label\()_acquired_ticket

\__test_label\()_acquire_ticket_fail:
	li \__return_val_reg, 1
	j \__test_label\()_semaphore_release_lock

\__test_label\()_acquired_ticket:
	li \__return_val_reg, 0

\__test_label\()_semaphore_release_lock:

	amoswap.d.rl x0, x0, (\__lock_addr_reg) # Release lock by storing 0.
\__test_label\()_acquire_semaphore_released_lock:


	fence

.endm
.macro SEMAPHORE_RELEASE_TICKET __test_label:req, __semaphore_addr_reg=a0, __lock_addr_reg=a1, __swap_val_reg=t0, __return_val_reg=a2, __work_reg=t2
	fence
\__test_label\()_release_ticket:

	li \__lock_addr_reg, barrier_lock
	li \__swap_val_reg, 500        # Initialize swap value.

\__test_label\()_release_semaphore_retry_acquire_lock:
\__test_label\()_release_semaphore_check_any_hart_ended:
# Always check if any other hart has bailed for an acceptable reason.
	li \__work_reg, num_harts_ended
	lw \__work_reg, 0(\__work_reg)
	bnez \__work_reg, \__test_label\()_release_semaphore_other_hart_ended
\__test_label\()_release_semaphore_check_timeout:
# decrement swap value
	addi \__swap_val_reg, \__swap_val_reg, -1
# jump to fail if \__swap_val_reg is zero or less
	blez \__swap_val_reg, \__test_label\()_release_semaphore_self_bail
\__test_label\()_release_semaphore_try_lock:
	lw \__work_reg, (\__lock_addr_reg)     # Check if lock is held
	bnez         \__work_reg, \__test_label\()_release_semaphore_wait    # Retry if held.
	amoswap.w.aq \__work_reg, \__swap_val_reg, (\__lock_addr_reg)
	bnez         \__work_reg, \__test_label\()_release_semaphore_wait     # Retry if held.
	j \__test_label\()_release_semaphore_acquired_lock
\__test_label\()_release_semaphore_wait:

	j \__test_label\()_release_semaphore_retry_acquire_lock
\__test_label\()_release_semaphore_other_hart_ended:
# Another hart may have bailed for an acceptable reason, so end nominally.
# report pass and stop trying to lock
	li a0, end_test_addr
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_release_semaphore_self_bail:
# Looks like we are stuck and no other hart has apparently bailed, so end in a fail.
	li a0, os_failed_addr
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_release_semaphore_acquired_lock:
	fence

	ld \__work_reg, (\__semaphore_addr_reg)
	addi \__work_reg, \__work_reg, 1
	sd \__work_reg, (\__semaphore_addr_reg)

\__test_label\()_released_ticket:
	li \__return_val_reg, 0


	amoswap.d.rl x0, x0, (\__lock_addr_reg) # Release lock by storing 0.
\__test_label\()_release_semaphore_released_lock:


.endm
.macro CRITICAL_SECTION_AMO __test_label:req, __lock_addr_reg=a0, __swap_val_reg=t0, __work_reg=t1, __critical_section_addr_reg=a1, __end_test_label=end_test_addr
	li \__lock_addr_reg, barrier_lock
	li \__swap_val_reg, 500        # Initialize swap value.

\__test_label\()_retry_acquire_lock:
\__test_label\()_check_any_hart_ended:
# Always check if any other hart has bailed for an acceptable reason.
	li \__work_reg, num_harts_ended
	lw \__work_reg, 0(\__work_reg)
	bnez \__work_reg, \__test_label\()_other_hart_ended
\__test_label\()_check_timeout:
# decrement swap value
	addi \__swap_val_reg, \__swap_val_reg, -1
# jump to fail if \__swap_val_reg is zero or less
	blez \__swap_val_reg, \__test_label\()_self_bail
\__test_label\()_try_lock:
	lw \__work_reg, (\__lock_addr_reg)     # Check if lock is held
	bnez         \__work_reg, \__test_label\()_wait    # Retry if held.
	amoswap.w.aq \__work_reg, \__swap_val_reg, (\__lock_addr_reg)
	bnez         \__work_reg, \__test_label\()_wait     # Retry if held.
	j \__test_label\()_acquired_lock
\__test_label\()_wait:

	j \__test_label\()_retry_acquire_lock
\__test_label\()_other_hart_ended:
# Another hart may have bailed for an acceptable reason, so end nominally.
# report pass and stop trying to lock
	li a0, \__end_test_label
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_self_bail:
# Looks like we are stuck and no other hart has apparently bailed, so end in a fail.
	li a0, os_failed_addr
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_acquired_lock:
	fence
	jalr ra, \__critical_section_addr_reg
	amoswap.d.rl x0, x0, (\__lock_addr_reg) # Release lock by storing 0.
\__test_label\()_released_lock:


.endm
.macro CRITICAL_SECTION_LR_SC __test_label:req, __lock_addr_reg=a0, __expected_val_reg=a1, __desired_val_reg=a2, __return_val_reg=a3, __work_reg=t0, __critical_section_addr_reg=a4
\__test_label\()_cas_acquire:
	lr.d \__work_reg, (\__lock_addr_reg) # Load original value.
	bne \__work_reg, \__expected_val_reg, \__test_label\()_cas_acquire# Doesn't match, retry
	sc.d \__work_reg, \__desired_val_reg, (\__lock_addr_reg) # Try to update.
	bnez \__work_reg, \__test_label\()_cas_acquire # Retry if store-conditional failed.
	li \__return_val_reg, 0 # Set return to success.
	j \__test_label\()_cas_acquired_lock

\__test_label\()_cas_acquire_fail:
	li \__return_val_reg, 1 # Set return to failure.
\__test_label\()_cas_acquired_lock:
	fence
	bnez \__return_val_reg, \__test_label\()_exit
	jalr ra, \__critical_section_addr_reg

	fence
\__test_label\()_cas_release:
	lr.d \__work_reg, (\__lock_addr_reg) # Load original value.
	bne \__work_reg, \__desired_val_reg, \__test_label\()_cas_release# Doesn't match, retry
	sc.d \__work_reg, \__expected_val_reg, (\__lock_addr_reg) # Try to update.
	bnez \__work_reg, \__test_label\()_cas_release # Retry if store-conditional failed.
	li \__return_val_reg, 0 # Set return to success.
	j \__test_label\()_cas_released_lock

\__test_label\()_cas_release_fail:
	li \__return_val_reg, 1
	j failed
\__test_label\()_cas_released_lock:
\__test_label\()_exit:
.endm
.macro OS_SYNC_HARTS __test_label:req, __lock_addr_reg=a0, __arrive_counter_addr_reg=a1, __depart_counter_addr_reg=a2, __flag_addr_reg=a3, __swap_val_reg=t0, __work_reg_1=t1, __work_reg_2=t2, __end_test_label=end_test_addr
	li \__lock_addr_reg, barrier_lock
	li \__arrive_counter_addr_reg, barrier_arrive_counter
	li \__depart_counter_addr_reg, barrier_depart_counter
	li \__flag_addr_reg, barrier_flag


	li \__lock_addr_reg, barrier_lock
	li \__swap_val_reg, 50000        # Initialize swap value.

\__test_label\()_0_retry_acquire_lock:
\__test_label\()_0_check_any_hart_ended:
# Always check if any other hart has bailed for an acceptable reason.
	li \__work_reg_1, num_harts_ended
	lw \__work_reg_1, 0(\__work_reg_1)
	bnez \__work_reg_1, \__test_label\()_0_other_hart_ended
\__test_label\()_0_check_timeout:
# decrement swap value
	addi \__swap_val_reg, \__swap_val_reg, -1
# jump to fail if \__swap_val_reg is zero or less
	blez \__swap_val_reg, \__test_label\()_0_self_bail
\__test_label\()_0_try_lock:
	lw \__work_reg_1, (\__lock_addr_reg)     # Check if lock is held
	bnez         \__work_reg_1, \__test_label\()_0_wait    # Retry if held.
	amoswap.w.aq \__work_reg_1, \__swap_val_reg, (\__lock_addr_reg)
	bnez         \__work_reg_1, \__test_label\()_0_wait     # Retry if held.
	j \__test_label\()_0_acquired_lock
\__test_label\()_0_wait:

	j \__test_label\()_0_retry_acquire_lock
\__test_label\()_0_other_hart_ended:
# Another hart may have bailed for an acceptable reason, so end nominally.
# report pass and stop trying to lock
	li a0, \__end_test_label
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_0_self_bail:
# Looks like we are stuck and no other hart has apparently bailed, so end in a fail.
	li a0, os_failed_addr
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_0_acquired_lock:
	fence

# Branch if arrive_counter not equal to zero
	lw \__work_reg_1, 0(\__arrive_counter_addr_reg)
	bnez \__work_reg_1, \__test_label\()_arrive_count_not_zero
# Branch if depart_counter not equal to num_harts
	lw \__work_reg_1, 0(\__depart_counter_addr_reg)
	li \__work_reg_2, 1
	bne \__work_reg_1, \__work_reg_2, \__test_label\()_depart_count_not_num_harts
# Set flag to zero
	amoswap.w x0, x0, (\__flag_addr_reg)
	j \__test_label\()_arrive_count_not_zero
\__test_label\()_depart_count_not_num_harts:

	amoswap.d.rl x0, x0, (\__lock_addr_reg) # Release lock by storing 0.
\__test_label\()_0_released_lock:


\__test_label\()_wait_while_depart_count_not_num_harts:
	lw \__work_reg_1, (\__depart_counter_addr_reg)
	beq \__work_reg_1, \__work_reg_2, \__test_label\()_depart_count_reached

	j \__test_label\()_wait_while_depart_count_not_num_harts
\__test_label\()_depart_count_reached:

	li \__lock_addr_reg, barrier_lock
	li \__swap_val_reg, 50000        # Initialize swap value.

\__test_label\()_1_retry_acquire_lock:
\__test_label\()_1_check_any_hart_ended:
# Always check if any other hart has bailed for an acceptable reason.
	li \__work_reg_1, num_harts_ended
	lw \__work_reg_1, 0(\__work_reg_1)
	bnez \__work_reg_1, \__test_label\()_1_other_hart_ended
\__test_label\()_1_check_timeout:
# decrement swap value
	addi \__swap_val_reg, \__swap_val_reg, -1
# jump to fail if \__swap_val_reg is zero or less
	blez \__swap_val_reg, \__test_label\()_1_self_bail
\__test_label\()_1_try_lock:
	lw \__work_reg_1, (\__lock_addr_reg)     # Check if lock is held
	bnez         \__work_reg_1, \__test_label\()_1_wait    # Retry if held.
	amoswap.w.aq \__work_reg_1, \__swap_val_reg, (\__lock_addr_reg)
	bnez         \__work_reg_1, \__test_label\()_1_wait     # Retry if held.
	j \__test_label\()_1_acquired_lock
\__test_label\()_1_wait:

	j \__test_label\()_1_retry_acquire_lock
\__test_label\()_1_other_hart_ended:
# Another hart may have bailed for an acceptable reason, so end nominally.
# report pass and stop trying to lock
	li a0, \__end_test_label
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_1_self_bail:
# Looks like we are stuck and no other hart has apparently bailed, so end in a fail.
	li a0, os_failed_addr
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_1_acquired_lock:
	fence

# Set flag to zero
	amoswap.w x0, x0, (\__flag_addr_reg)

\__test_label\()_arrive_count_not_zero:
	li \__work_reg_2, 1
	amoadd.w \__work_reg_1, \__work_reg_2, (\__arrive_counter_addr_reg)
	addi \__work_reg_1, \__work_reg_1, 1

	amoswap.d.rl x0, x0, (\__lock_addr_reg) # Release lock by storing 0.
\__test_label\()_1_released_lock:


	li \__arrive_counter_addr_reg, barrier_arrive_counter

# Branch if arrive_count not equal to num_harts
	li \__work_reg_2, 1
	bne \__work_reg_1, \__work_reg_2, \__test_label\()_arrive_count_not_num_harts # Last to arrive must reset variables
# Set arrive_count to zero
	amoswap.w x0, x0, (\__arrive_counter_addr_reg)
# Set depart_counter to 1
	li \__work_reg_1, 1
	amoswap.w x0, \__work_reg_1, (\__depart_counter_addr_reg)
# Set flag to one
	amoswap.w x0, \__work_reg_1, (\__flag_addr_reg)
	j \__test_label\()_barrier_complete
\__test_label\()_arrive_count_not_num_harts:
\__test_label\()_wait_while_flag_zero:
# Check again if num_harts_ended is non-zero
	li \__arrive_counter_addr_reg, num_harts_ended
	lw \__work_reg_2, 0(\__arrive_counter_addr_reg)
	beqz \__work_reg_2, \__test_label\()_no_early_bail
\__test_label\()_yes_other_bailed:
	li gp, 0x80000000
	li a0, \__end_test_label # End test
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_no_early_bail:
	lw \__work_reg_1, (\__flag_addr_reg)
	bnez \__work_reg_1, \__test_label\()_flag_set

	j \__test_label\()_wait_while_flag_zero
\__test_label\()_flag_set:

	li \__lock_addr_reg, barrier_lock
	li \__swap_val_reg, 50000        # Initialize swap value.

\__test_label\()_2_retry_acquire_lock:
\__test_label\()_2_check_any_hart_ended:
# Always check if any other hart has bailed for an acceptable reason.
	li \__work_reg_1, num_harts_ended
	lw \__work_reg_1, 0(\__work_reg_1)
	bnez \__work_reg_1, \__test_label\()_2_other_hart_ended
\__test_label\()_2_check_timeout:
# decrement swap value
	addi \__swap_val_reg, \__swap_val_reg, -1
# jump to fail if \__swap_val_reg is zero or less
	blez \__swap_val_reg, \__test_label\()_2_self_bail
\__test_label\()_2_try_lock:
	lw \__work_reg_1, (\__lock_addr_reg)     # Check if lock is held
	bnez         \__work_reg_1, \__test_label\()_2_wait    # Retry if held.
	amoswap.w.aq \__work_reg_1, \__swap_val_reg, (\__lock_addr_reg)
	bnez         \__work_reg_1, \__test_label\()_2_wait     # Retry if held.
	j \__test_label\()_2_acquired_lock
\__test_label\()_2_wait:

	j \__test_label\()_2_retry_acquire_lock
\__test_label\()_2_other_hart_ended:
# Another hart may have bailed for an acceptable reason, so end nominally.
# report pass and stop trying to lock
	li a0, \__end_test_label
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_2_self_bail:
# Looks like we are stuck and no other hart has apparently bailed, so end in a fail.
	li a0, os_failed_addr
	ld a1, 0(a0)
	jalr ra, 0(a1)
\__test_label\()_2_acquired_lock:
	fence

	li \__work_reg_1, 1
	amoadd.w \__work_reg_2, \__work_reg_1, (\__depart_counter_addr_reg)

	amoswap.d.rl x0, x0, (\__lock_addr_reg) # Release lock by storing 0.
\__test_label\()_2_released_lock:


\__test_label\()_barrier_complete:
	fence


.endm
.macro DISABLE_MIE
	li t2, (1<<3)
	li x31, machine_csr_jump_table_flags
	li t0, 3
	sd t0, 0(x31)
	li x31, 0xf0001005
	ecall
.endm
.macro DISABLE_SIE
	li t2, (1<<1)
	li x31, super_csr_jump_table_flags
	li t0, 4
	sd t0, 0(x31)
	li x31, 0xf0001006
	ecall
.endm
.macro ENABLE_MIE
	li t2, (1<<3)
	li x31, machine_csr_jump_table_flags
	li t0, 5
	sd t0, 0(x31)
	li x31, 0xf0001005
	ecall
.endm
.macro ENABLE_SIE
	li t2, (1<<1)
	li x31, super_csr_jump_table_flags
	li t0, 6
	sd t0, 0(x31)
	li x31, 0xf0001006
	ecall
.endm
.macro SET_DIRECT_INTERRUPTS
	li t2, 0x1
	li x31, machine_csr_jump_table_flags
	li t0, 7
	sd t0, 0(x31)
	li x31, 0xf0001005
	ecall
.endm
.macro SET_VECTORED_INTERRUPTS
	li t2, 0x1
	li x31, machine_csr_jump_table_flags
	li t0, 8
	sd t0, 0(x31)
	li x31, 0xf0001005
	ecall
.endm
.macro SET_DIRECT_INTERRUPTS_S
	li t2, 0x1
	li x31, super_csr_jump_table_flags
	li t0, 9
	sd t0, 0(x31)
	li x31, 0xf0001006
	ecall
.endm
.macro SET_VECTORED_INTERRUPTS_S
	li t2, 0x1
	li x31, super_csr_jump_table_flags
	li t0, 10
	sd t0, 0(x31)
	li x31, 0xf0001006
	ecall
.endm

