
.section .code, "ax"
passed:
	li x31, 0xf0000001  # Schedule test
	ecall

failed:
	li x31, 0xf0000002  # End test with fail
	ecall

end_test:
	li x31, 0xf0000003 # End test with a pass, in case test is overlong but this was somewhat expected
	ecall

.section .runtime, "ax"

enter_scheduler:

# Check if t0 has a pass or fail condition
	li t1, 0xbaadc0de
	beq t0, t1, test_failed

	li a0, 0  # 0 = PASS
	call rvcp_print_test_result

	j scheduler__dispatch


test_passed:


# Enter hart context
	csrrw tp, mscratch, tp

	li a0, 0  # 0 = PASS
	call rvcp_print_test_result


	j scheduler__dispatch

test_failed:


# Enter hart context
	csrrw tp, mscratch, tp
	li gp, 0x3
	j eot__end_test

os_end_test:


# Enter hart context
	csrrw tp, mscratch, tp
	li gp, 0x1
	j eot__end_test

.section .runtime, "ax"
	.balign 4, 0
rvcp_print_test_result:
# Entry: a0 = 0 for PASS, 1 for FAIL
# Format: "RVCP: Test File {testname} {discrete_test} PASSED/FAILED\n"
# Uses t-registers: t0-t5, a0 preserved as pass/fail flag via t3
	mv t3, a0  # t3 = pass/fail flag (0=PASS, 1=FAIL)

# Load current test index from hart-local variable
	ld t0, 392(tp)           # current_test_index

# Check for special indices - should not be called for setup/cleanup
	li t1, 0xFFFFFFFE
	beq t0, t1, .Lrvcp_skip_print  # test_setup - skip
	li t1, 0xFFFFFFFF
	beq t0, t1, .Lrvcp_skip_print  # test_cleanup - skip
	bltz t0, .Lrvcp_skip_print     # negative = invalid - skip

# Get test name from descriptor table
# t0 = index, descriptor table has pointers to name strings
	la t1, dtest_descriptor_table
	slli t2, t0, 3  # index * 8
	add t1, t1, t2
	ld t4, 0(t1)    # t4 = pointer to discrete test name string

# Print "RVCP: Test File " prefix
	li t5, rvcp_prefix_str_pa
	RVMODEL_IO_WRITE_STR(t0, t1, t2, t5)

# Print testname (test file name)
	li t5, rvcp_testname_str_pa
	RVMODEL_IO_WRITE_STR(t0, t1, t2, t5)

# Print " " separator between testname and discrete test name
	li t5, rvcp_space_str_pa
	RVMODEL_IO_WRITE_STR(t0, t1, t2, t5)

# Print discrete test name (dynamic pointer from t4)
	mv t5, t4
	RVMODEL_IO_WRITE_STR(t0, t1, t2, t5)

# Print " " separator
	li t5, rvcp_space_str_pa
	RVMODEL_IO_WRITE_STR(t0, t1, t2, t5)

# Print PASSED or FAILED
	bnez t3, .Lrvcp_print_fail_str
	li t5, rvcp_passed_str_pa
	j .Lrvcp_print_status_done
.Lrvcp_print_fail_str:
	li t5, rvcp_failed_str_pa
.Lrvcp_print_status_done:
	RVMODEL_IO_WRITE_STR(t0, t1, t2, t5)

# Print newline
	li t5, rvcp_newline_str_pa
	RVMODEL_IO_WRITE_STR(t0, t1, t2, t5)

.Lrvcp_skip_print:
	ret
os_rng_orig:

# simple XORshift random number generator
# https://www.javamex.com/tutorials/random_numbers/xorshift.shtml#.VlcaYzKwEV8

	csrr t2, mhartid


# Calculate seed addr offset
	mv t1, a3
	mul t2, t2, t1

# Load seed element for this hart
	mv t1, a1
	add t1, t1, t2
	ld t0, (t1)

# Generate new seed
	slli t1, t0, 21
	xor t0, t0, t1
	srli t1, t0, 35
	xor t0, t0, t1
	slli t1, t0, 4
	xor t0, t0, t1

# Store updated seed element for this hart
	mv t1, a1
	add t1, t1, t2
	sd t0, (t1)

# Obtain random number
	mv t1, a2
	remu t0, t0, t1
# Ignore * elements at the beginning of the array
#mv t1, a5
#add t0, t0, t1
# Offset scale is the number of bytes per element for indexing into an array
#mv t1, a4
#mul t0, t0, t1

# Store in return register
	mv a0, t0
	ret

# Pseudorandom number generator between 0 and 10 using LCG algorithm
# Seed value
	li a0, 42       # Set initial seed value (can be any value)

# LCG parameters
	li a1, 1664525  # Multiplier
	li a2, 1013904223  # Increment
	li a3, 2^32     # Modulus (2^32 for a 32-bit pseudorandom number)

# Generate pseudorandom number
	mul a0, a0, a1   # a0 = a0 * multiplier
	add a0, a0, a2  # a0 = a0 + increment
	rem a0, a0, a3   # a0 = a0 % modulus (remainder)

# Calculate pseudorandom number between 0 and 10
	li a1, 11        # Maximum value (10 + 1)
	rem a0, a0, a1   # a0 = a0 % maximum value

	ret

# The pseudorandom number between 0 and 10 will be stored in a0


.section .os_data, "aw"

# OS Pointers
passed_addr_ptr:
	.dword passed
failed_addr_ptr:
	.dword failed
end_test_addr_ptr:
	.dword end_test
os_passed_addr_ptr:
	.dword test_passed
os_failed_addr_ptr:
	.dword test_failed
os_end_test_addr_ptr:
	.dword os_end_test

# RVCP message strings
# Format: "RVCP: Test File {testname} {discrete_test} PASSED/FAILED\n"
	rvcp_prefix_str_data: .asciz "RVCP: Test File "
	rvcp_testname_str_data: .asciz "tp_zicsr_2"
	rvcp_passed_str_data: .asciz "PASSED"
	rvcp_failed_str_data: .asciz "FAILED"
	rvcp_space_str_data: .asciz " "
	rvcp_newline_str_data: .asciz "\n"
	.balign 8, 0


.section .os_data, "aw"

excp_ignored_count_mem:
	.dword    0
machine_flags_mem:
	.dword    0
user_flags_mem:
	.dword    0
super_flags_mem:
	.dword    0
machine_area_mem:
	.dword    0
user_area_mem:
	.dword    0
super_area_mem:
	.dword    0
zero_data_mem:
	.dword    0
machine_csr_jump_table_flags_mem:
	.dword    0
super_csr_jump_table_flags_mem:
	.dword    0
pte_access_flags_mem:
	.dword    0
	.dword    0
	.dword    0
num_harts_ended_mem:
	.dword    0
num_hard_fails_mem:
	.dword    0


# Hart-local storage
.section .hart_context, "aw"

	.balign 64, 0
hart_context_0:
	.dword hart_stack_0_end               # hart's sp
	.dword 0                              # test's sp
	.dword 0                              # mhartid
	.dword 1                              # check_excp
	.dword -1                             # check_excp_expected_pc
	.dword -1                             # check_excp_actual_pc
	.dword -1                             # check_excp_return_pc
	.dword 0                              # check_excp_skip_pc_check
	.dword 0                              # check_excp_expected_tval
	.dword 0                              # check_excp_expected_htval
	.dword 255                            # check_excp_expected_cause
	.dword 255                            # check_excp_actual_cause
	.dword 0                              # check_excp_gva_check
	.dword 0                              # check_excp_expected_mode
	.dword 0                              # check_excp_re_execute
	.dword 0                              # gpr_save_area[0]
	.dword 0                              # gpr_save_area[1]
	.dword 0                              # gpr_save_area[2]
	.dword 0                              # gpr_save_area[3]
	.dword 0                              # gpr_save_area[4]
	.dword 0                              # gpr_save_area[5]
	.dword 0                              # gpr_save_area[6]
	.dword 0                              # gpr_save_area[7]
	.dword 0                              # gpr_save_area[8]
	.dword 0                              # gpr_save_area[9]
	.dword 0                              # gpr_save_area[10]
	.dword 0                              # gpr_save_area[11]
	.dword 0                              # gpr_save_area[12]
	.dword 0                              # gpr_save_area[13]
	.dword 0                              # gpr_save_area[14]
	.dword 0                              # gpr_save_area[15]
	.dword 0                              # gpr_save_area[16]
	.dword 0                              # gpr_save_area[17]
	.dword 0                              # gpr_save_area[18]
	.dword 0                              # gpr_save_area[19]
	.dword 0                              # gpr_save_area[20]
	.dword 0                              # gpr_save_area[21]
	.dword 0                              # gpr_save_area[22]
	.dword 0                              # gpr_save_area[23]
	.dword 0                              # gpr_save_area[24]
	.dword 0                              # gpr_save_area[25]
	.dword 0                              # gpr_save_area[26]
	.dword 0                              # gpr_save_area[27]
	.dword 0                              # gpr_save_area[28]
	.dword 0                              # gpr_save_area[29]
	.dword 0                              # gpr_save_area[30]
	.dword 0                              # gpr_save_area[31]
	.dword -1                             # os_save_ecall_fn_epc
	.dword 0                              # scheduler__saved_stvec
	.dword 4294967295                     # current_test_index
	.dword 0                              # num_runs
	.space 40                             # padding to 64-byte boundary

.section .hart_stack_0, "aw"
hart_stack_0:
	.balign 16, 0
	.space 4096
hart_stack_0_end:

.section .csr_machine_0, "ax"
	li x31, machine_csr_jump_table_flags_pa
	ld x31, (x31) # machine_csr_jump_table_flags

	li t0, 2
	beq x31, t0, csr_access_senvcfg_supervisor_key_2_write
	li t0, 1
	beq x31, t0, csr_access_senvcfg_supervisor_key_1_read
	li t0, 4
	beq x31, t0, csr_access_mstatus_machine_key_4_set
	li t0, 3
	beq x31, t0, csr_access_mstatus_machine_key_3_clear
	li t0, 6
	beq x31, t0, csr_access_mtvec_machine_key_6_set
	li t0, 5
	beq x31, t0, csr_access_mtvec_machine_key_5_clear
	j end_machine_label

# Machine Write: senvcfg, label: csr_access_senvcfg_supervisor_key_2_write
csr_access_senvcfg_supervisor_key_2_write:
	csrw senvcfg, t2
	j end_machine_label

# Machine Read: senvcfg, label: csr_access_senvcfg_supervisor_key_1_read
csr_access_senvcfg_supervisor_key_1_read:
	csrr t2, senvcfg
	j end_machine_label

# Machine Set: mstatus, label: csr_access_mstatus_machine_key_4_set
csr_access_mstatus_machine_key_4_set:
	csrs mstatus, t2
	j end_machine_label

# Machine Clear: mstatus, label: csr_access_mstatus_machine_key_3_clear
csr_access_mstatus_machine_key_3_clear:
	csrc mstatus, t2
	j end_machine_label

# Machine Set: mtvec, label: csr_access_mtvec_machine_key_6_set
csr_access_mtvec_machine_key_6_set:
	csrs mtvec, t2
	j end_machine_label

# Machine Clear: mtvec, label: csr_access_mtvec_machine_key_5_clear
csr_access_mtvec_machine_key_5_clear:
	csrc mtvec, t2
	j end_machine_label

end_machine_label:
	li x31, 0xf0001004
	ecall

.section .csr_super_0, "ax"
	li x31, super_csr_jump_table_flags
	ld x31, (x31)   # super_csr_jump_table_flags

	j end_super_label

end_super_label:
# return to testmode
	li x31, 0xf0001004
	ecall

