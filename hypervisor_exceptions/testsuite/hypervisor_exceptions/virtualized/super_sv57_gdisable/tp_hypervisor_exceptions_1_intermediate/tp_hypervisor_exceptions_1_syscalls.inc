
.section .runtime, "ax"
trap_handler_m__syscal_table:
# The function number is in x31

syscalls__syscall_check_schedule_next_test:
	li t0, 0xf0000001  # schedule next test
# special case since this isn't going to do an mret/sret. Need to restore context here.
	bne t0, x31, syscalls__syscall_check_fail_test


	la t1, trap_handler_m__trap_entry
	csrw mtvec, t1

	j enter_scheduler

syscalls__syscall_check_fail_test:
	li t0, 0xf0000002  # fail test
	bne t0, x31, syscalls__syscall_check_end_test_without_failure

	la t1, trap_handler_m__trap_entry
	csrw mtvec, t1

	j test_failed

syscalls__syscall_check_end_test_without_failure:
	li t0, 0xf0000003  # end test without failure
	bne t0, x31, syscalls__syscall_check_switch_machine_mode

	la t1, trap_handler_m__trap_entry
	csrw mtvec, t1

	j os_end_test


syscalls__syscall_check_switch_machine_mode:
	li t0, 0xf0001001    # Switch to machine mode
	beq x31, t0, syscalls__os_fn_f0001001

syscalls__syscall_check_switch_super_mode:
	li t0, 0xf0001002    # Switch to super mode
	beq x31, t0, syscalls__os_fn_f0001002

syscalls__syscall_check_switch_user_mode:
	li t0, 0xf0001003    # Switch to user mode
	beq x31, t0, syscalls__os_fn_f0001003

syscalls__syscall_check_switch_test_mode:
	li t0, 0xf0001004    # Switch to test mode
	beq x31, t0, syscalls__os_fn_f0001004

syscalls__syscall_machine_csr_rw:
	li t0, 0xf0001005    # Machine mode jump table for CSR R/W
	beq x31, t0, syscalls__os_fn_f0001005

syscalls__syscall_supervisor_csr_rw:
	li t0, 0xf0001006    # Supervisor mode jump table for CSR R/W
	beq x31, t0, syscalls__os_fn_f0001006

syscalls__syscall_machine_pte_read:
	li t0, 0xf0001007    # Machine mode jump table for PTE read
	beq x31, t0, syscalls__os_fn_f0001007

syscalls__syscall_machine_pte_write:
	li t0, 0xf0001008    # Machine mode jump table for PTE write
	beq x31, t0, syscalls__os_fn_f0001008

syscalls__syscall_check_get_hart_context:
	li t0, 0xf0002001    # Get hart context
	beq x31, t0, syscalls__os_get_hart_context

	j trap_handler_m__check_exception_label
syscalls__os_fn_f0001001:
# f0001001 : Switch to machine mode

# Update mstatus csr to switch to machine mode
	li t0, 0x00001800
	csrrc x0, mstatus, t0
	li t0, 0x00001800
	csrrs x0, mstatus, t0
	li t0, 1<<39
	csrrc x0, mstatus, t0

	li t0, code_machine_0
	j syscalls__ret_from_os_fn

syscalls__os_fn_f0001002:
# f0001002 : Switch to super mode


# Update mstatus csr to switch to super mode
	li t0, 0x00001800
	csrrc x0, mstatus, t0
	li t0, 0x00000800
	csrrs x0, mstatus, t0
	li t0, 1<<39
	csrrc x0, mstatus, t0

	sfence.vma
# When switching to supervisor mode, we will need to switch a new page
# that has u=0
	li t0, code_super_0
	j syscalls__ret_from_os_fn

syscalls__os_fn_f0001003:
# f0001003 : Switch to user mode

# Update mstatus csr to switch to user mode
	li t0, 0x00001800
	csrrc x0, mstatus, t0
	li t0, 0x00000000
	csrrs x0, mstatus, t0
	li t0, 1<<39
	csrrc x0, mstatus, t0

# Load return pc from os_save_ecall_fn_epc and move it to t0
# which will be used to update epc
	li t0, code_user_0
	j syscalls__ret_from_os_fn

syscalls__os_fn_f0001004:
# f0001004 : Switch to test mode

# Update mstatus csr to switch to super mode
	li t0, 0x00001800
	csrrc x0, mstatus, t0
	li t0, 0x00000800
	csrrs x0, mstatus, t0
	li t0, 1<<39
	csrrs x0, mstatus, t0

# Here, we want to go back to the test code. The PC is saved in os_save_ecall_epc
# Load it into t0 and ret_from_os_fn will move t0 to epc
	ld t0, 376(tp)         # os_save_ecall_fn_epc

	j syscalls__ret_from_os_fn

syscalls__os_fn_f0001005:
# f0001005 : Machine mode jump table for CSR R/W

# Update mstatus csr to switch to machine mode
	li t0, 0x00001800
	csrrc x0, mstatus, t0
	li t0, 0x00001800
	csrrs x0, mstatus, t0
	li t0, 1<<39
	csrrc x0, mstatus, t0

	li t0, csr_machine_0
	j syscalls__ret_from_os_fn

syscalls__os_fn_f0001006:
# f0001006 : Supervisor mode jump table for CSR R/W


# Update mstatus csr to switch to super mode
	li t0, 0x00001800
	csrrc x0, mstatus, t0
	li t0, 0x00000800
	csrrs x0, mstatus, t0
	li t0, 1<<39
	csrrc x0, mstatus, t0

	sfence.vma
# When switching to supervisor mode, we will need to switch a new page
# that has u=0
	li t0, csr_super_0
	j syscalls__ret_from_os_fn

syscalls__os_fn_f0001007:
# f0001007 : Read PTE via page table walk

# Load parameters from shared memory
	li x31, pte_access_flags_pa
	ld x31, (x31)          # pte_access_flags[0]
	li t0, pte_access_flags_pa + 8
	ld t0, (t0)          # pte_access_flags[1]
	li t3, pte_access_flags_pa + 16
	ld t3, (t3)          # pte_access_flags[2]

syscalls__pte_walk_check_glevel_without_gstage_read:
	li t6, -1
	bne t3, t6, syscalls__pte_walk_fail_read   # g_level specified but g-stage walk not available

# V-stage setup: read satp, extract root PT and compute initial shift
	csrr t1, satp
	srli t4, t1, 60            # t4 = MODE (8=sv39, 9=sv48, 10=sv57)
	slli t1, t1, 20
	srli t1, t1, 20
	slli t1, t1, 12            # t1 = root PT physical address

# Compute initial VPN shift: 9*(MODE-8) + 30
	addi t4, t4, -8            # MODE offset (0=sv39, 1=sv48, 2=sv57)
	slli t5, t4, 3             # t5 = offset * 8
	add t4, t5, t4             # t4 = offset * 9
	addi t4, t4, 30            # t4 = initial shift (30, 39, or 48)

	li t5, 0                   # t5 = current level counter

syscalls__pte_walk_loop_read:
# Extract VPN index for current level
# NOTE: t6 IS x31 in RISC-V, so we must reload the address each
# iteration from memory rather than keeping it in x31.
	li t6, pte_access_flags_pa
	ld t6, (t6)          # pte_access_flags[0]
	srl t6, t6, t4             # shift right by current shift amount
	andi t6, t6, 0x1ff         # mask 9 VPN bits
	slli t6, t6, 3             # * 8 (PTE entry size in bytes)
	add t1, t1, t6             # t1 = address of PTE entry

	beq t5, t0, syscalls__pte_walk_done_read  # reached target level?

# Intermediate level: load PTE, verify not a leaf, follow pointer
	ld t6, 0(t1)               # load PTE

	srli t6, t6, 10            # extract PPN from PTE
	slli t1, t6, 12            # convert PPN to physical address

	addi t5, t5, 1             # level++
	addi t4, t4, -9            # shift -= 9
	j syscalls__pte_walk_loop_read

syscalls__pte_walk_done_read:
# Check if g-stage walk is needed
	li t6, -1
	beq t3, t6, syscalls__pte_walk_final_read  # g_level == -1 -> skip to final op

syscalls__pte_walk_gstage_read:
# G-stage setup: use v-stage PTE address as GPA for hgatp walk
# Store GPA to pte_access_flags[0] so loop reloads it each iteration
	li t6, pte_access_flags_pa
	sd t1, (t6)          # pte_access_flags[0]
	mv t0, t3                  # target level = g_level
	li t3, -1                  # clear g_level so we don't loop again

	csrr t1, hgatp             # read g-stage root PT
	srli t4, t1, 60            # t4 = MODE (8=sv39, 9=sv48, 10=sv57)
	slli t1, t1, 20
	srli t1, t1, 20
	slli t1, t1, 12            # t1 = root PT physical address

# Compute initial VPN shift for g-stage
	addi t4, t4, -8            # MODE offset (0=sv39, 1=sv48, 2=sv57)
	slli t5, t4, 3             # t5 = offset * 8
	add t4, t5, t4             # t4 = offset * 9
	addi t4, t4, 30            # t4 = initial shift (30, 39, or 48)

	li t5, 0                   # t5 = current level counter
	j syscalls__pte_walk_loop_read             # reuse the same walk loop

syscalls__pte_walk_final_read:
	ld t2, 0(t1)                 # read PTE into t2 / write t2 to PTE

# Save ecall return address (epc+4) and return to test mode
	csrr t0, mepc
	addi t0, t0, 4
	sd t0, 376(tp)         # os_save_ecall_fn_epc
	j syscalls__os_fn_f0001004

syscalls__pte_walk_fail_read:
	j test_failed

syscalls__os_fn_f0001008:
# f0001008 : Write PTE via page table walk

# Load parameters from shared memory
	li x31, pte_access_flags_pa
	ld x31, (x31)          # pte_access_flags[0]
	li t0, pte_access_flags_pa + 8
	ld t0, (t0)          # pte_access_flags[1]
	li t3, pte_access_flags_pa + 16
	ld t3, (t3)          # pte_access_flags[2]

syscalls__pte_walk_check_glevel_without_gstage_write:
	li t6, -1
	bne t3, t6, syscalls__pte_walk_fail_write   # g_level specified but g-stage walk not available

# V-stage setup: read satp, extract root PT and compute initial shift
	csrr t1, satp
	srli t4, t1, 60            # t4 = MODE (8=sv39, 9=sv48, 10=sv57)
	slli t1, t1, 20
	srli t1, t1, 20
	slli t1, t1, 12            # t1 = root PT physical address

# Compute initial VPN shift: 9*(MODE-8) + 30
	addi t4, t4, -8            # MODE offset (0=sv39, 1=sv48, 2=sv57)
	slli t5, t4, 3             # t5 = offset * 8
	add t4, t5, t4             # t4 = offset * 9
	addi t4, t4, 30            # t4 = initial shift (30, 39, or 48)

	li t5, 0                   # t5 = current level counter

syscalls__pte_walk_loop_write:
# Extract VPN index for current level
# NOTE: t6 IS x31 in RISC-V, so we must reload the address each
# iteration from memory rather than keeping it in x31.
	li t6, pte_access_flags_pa
	ld t6, (t6)          # pte_access_flags[0]
	srl t6, t6, t4             # shift right by current shift amount
	andi t6, t6, 0x1ff         # mask 9 VPN bits
	slli t6, t6, 3             # * 8 (PTE entry size in bytes)
	add t1, t1, t6             # t1 = address of PTE entry

	beq t5, t0, syscalls__pte_walk_done_write  # reached target level?

# Intermediate level: load PTE, verify not a leaf, follow pointer
	ld t6, 0(t1)               # load PTE

	srli t6, t6, 10            # extract PPN from PTE
	slli t1, t6, 12            # convert PPN to physical address

	addi t5, t5, 1             # level++
	addi t4, t4, -9            # shift -= 9
	j syscalls__pte_walk_loop_write

syscalls__pte_walk_done_write:
# Check if g-stage walk is needed
	li t6, -1
	beq t3, t6, syscalls__pte_walk_final_write  # g_level == -1 -> skip to final op

syscalls__pte_walk_gstage_write:
# G-stage setup: use v-stage PTE address as GPA for hgatp walk
# Store GPA to pte_access_flags[0] so loop reloads it each iteration
	li t6, pte_access_flags_pa
	sd t1, (t6)          # pte_access_flags[0]
	mv t0, t3                  # target level = g_level
	li t3, -1                  # clear g_level so we don't loop again

	csrr t1, hgatp             # read g-stage root PT
	srli t4, t1, 60            # t4 = MODE (8=sv39, 9=sv48, 10=sv57)
	slli t1, t1, 20
	srli t1, t1, 20
	slli t1, t1, 12            # t1 = root PT physical address

# Compute initial VPN shift for g-stage
	addi t4, t4, -8            # MODE offset (0=sv39, 1=sv48, 2=sv57)
	slli t5, t4, 3             # t5 = offset * 8
	add t4, t5, t4             # t4 = offset * 9
	addi t4, t4, 30            # t4 = initial shift (30, 39, or 48)

	li t5, 0                   # t5 = current level counter
	j syscalls__pte_walk_loop_write             # reuse the same walk loop

syscalls__pte_walk_final_write:
	sd t2, 0(t1)                 # read PTE into t2 / write t2 to PTE

# Save ecall return address (epc+4) and return to test mode
	csrr t0, mepc
	addi t0, t0, 4
	sd t0, 376(tp)         # os_save_ecall_fn_epc
	j syscalls__os_fn_f0001004

syscalls__pte_walk_fail_write:
	j test_failed

syscalls__os_get_hart_context:

	csrr a0, sscratch

# skip to next pc
	csrr t0, mepc
	addi t0, t0, 4
	j syscalls__ret_from_os_fn

syscalls__ret_from_os_fn:
	csrr t1, mepc # save current epc to os_save_ecall_fn_epc
	addi t1, t1, 4
	sd t1, 376(tp)         # os_save_ecall_fn_epc
	csrw mepc, t0

	li x31, -1 # Clear x31, so we don't accidentally jump to an OS function next time
# Return from exception
	j trap_handler_m__trap_exit

