
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
	rvcp_testname_str_data: .asciz "tp_hypervisor_exceptions_2"
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

	li t0, 4
	beq x31, t0, csr_access_mstatus_machine_key_4_write
	li t0, 1
	beq x31, t0, csr_access_mstatus_machine_key_1_read
	li t0, 175
	beq x31, t0, csr_access_mstatus_machine_key_175_set
	li t0, 2
	beq x31, t0, csr_access_mstatus_machine_key_2_clear
	li t0, 44
	beq x31, t0, csr_access_mcounteren_machine_key_44_write
	li t0, 6
	beq x31, t0, csr_access_mcounteren_machine_key_6_read
	li t0, 8
	beq x31, t0, csr_access_mcounteren_machine_key_8_set
	li t0, 134
	beq x31, t0, csr_access_sstatus_supervisor_key_134_write
	li t0, 131
	beq x31, t0, csr_access_sstatus_supervisor_key_131_read
	li t0, 173
	beq x31, t0, csr_access_medeleg_machine_key_173_write
	li t0, 168
	beq x31, t0, csr_access_medeleg_machine_key_168_read
	li t0, 170
	beq x31, t0, csr_access_medeleg_machine_key_170_set
	li t0, 178
	beq x31, t0, csr_access_mtvec_machine_key_178_set
	li t0, 177
	beq x31, t0, csr_access_mtvec_machine_key_177_clear
	j end_machine_label

# Machine Write: mstatus, label: csr_access_mstatus_machine_key_4_write
csr_access_mstatus_machine_key_4_write:
	csrw mstatus, t2
	j end_machine_label

# Machine Read: mstatus, label: csr_access_mstatus_machine_key_1_read
csr_access_mstatus_machine_key_1_read:
	csrr t2, mstatus
	j end_machine_label

# Machine Set: mstatus, label: csr_access_mstatus_machine_key_175_set
csr_access_mstatus_machine_key_175_set:
	csrs mstatus, t2
	j end_machine_label

# Machine Clear: mstatus, label: csr_access_mstatus_machine_key_2_clear
csr_access_mstatus_machine_key_2_clear:
	csrc mstatus, t2
	j end_machine_label

# Machine Write: mcounteren, label: csr_access_mcounteren_machine_key_44_write
csr_access_mcounteren_machine_key_44_write:
	csrw mcounteren, t2
	j end_machine_label

# Machine Read: mcounteren, label: csr_access_mcounteren_machine_key_6_read
csr_access_mcounteren_machine_key_6_read:
	csrr t2, mcounteren
	j end_machine_label

# Machine Set: mcounteren, label: csr_access_mcounteren_machine_key_8_set
csr_access_mcounteren_machine_key_8_set:
	csrs mcounteren, t2
	j end_machine_label

# Machine Write: sstatus, label: csr_access_sstatus_supervisor_key_134_write
csr_access_sstatus_supervisor_key_134_write:
	csrw sstatus, t2
	j end_machine_label

# Machine Read: sstatus, label: csr_access_sstatus_supervisor_key_131_read
csr_access_sstatus_supervisor_key_131_read:
	csrr t2, sstatus
	j end_machine_label

# Machine Write: medeleg, label: csr_access_medeleg_machine_key_173_write
csr_access_medeleg_machine_key_173_write:
	csrw medeleg, t2
	j end_machine_label

# Machine Read: medeleg, label: csr_access_medeleg_machine_key_168_read
csr_access_medeleg_machine_key_168_read:
	csrr t2, medeleg
	j end_machine_label

# Machine Set: medeleg, label: csr_access_medeleg_machine_key_170_set
csr_access_medeleg_machine_key_170_set:
	csrs medeleg, t2
	j end_machine_label

# Machine Set: mtvec, label: csr_access_mtvec_machine_key_178_set
csr_access_mtvec_machine_key_178_set:
	csrs mtvec, t2
	j end_machine_label

# Machine Clear: mtvec, label: csr_access_mtvec_machine_key_177_clear
csr_access_mtvec_machine_key_177_clear:
	csrc mtvec, t2
	j end_machine_label

end_machine_label:
	li x31, 0xf0001004
	ecall

.section .csr_super_0, "ax"
	li x31, super_csr_jump_table_flags
	ld x31, (x31)   # super_csr_jump_table_flags

	li t0, 3
	beq x31, t0, csr_access_hgeip_supervisor_key_3_read
	li t0, 5
	beq x31, t0, csr_access_hcounteren_supervisor_key_5_read
	li t0, 43
	beq x31, t0, csr_access_hcounteren_supervisor_key_43_write
	li t0, 91
	beq x31, t0, csr_access_hcounteren_supervisor_key_91_set
	li t0, 9
	beq x31, t0, csr_access_hcounteren_supervisor_key_9_clear
	li t0, 7
	beq x31, t0, csr_access_scounteren_supervisor_key_7_read
	li t0, 45
	beq x31, t0, csr_access_scounteren_supervisor_key_45_write
	li t0, 51
	beq x31, t0, csr_access_scounteren_supervisor_key_51_set
	li t0, 10
	beq x31, t0, csr_access_scounteren_supervisor_key_10_clear
	li t0, 14
	beq x31, t0, csr_access_hpmcounter3_supervisor_key_14_read
	li t0, 15
	beq x31, t0, csr_access_hpmcounter4_supervisor_key_15_read
	li t0, 16
	beq x31, t0, csr_access_hpmcounter5_supervisor_key_16_read
	li t0, 17
	beq x31, t0, csr_access_hpmcounter6_supervisor_key_17_read
	li t0, 18
	beq x31, t0, csr_access_hpmcounter7_supervisor_key_18_read
	li t0, 19
	beq x31, t0, csr_access_hpmcounter8_supervisor_key_19_read
	li t0, 20
	beq x31, t0, csr_access_hpmcounter9_supervisor_key_20_read
	li t0, 21
	beq x31, t0, csr_access_hpmcounter10_supervisor_key_21_read
	li t0, 22
	beq x31, t0, csr_access_hpmcounter11_supervisor_key_22_read
	li t0, 23
	beq x31, t0, csr_access_hpmcounter12_supervisor_key_23_read
	li t0, 24
	beq x31, t0, csr_access_hpmcounter13_supervisor_key_24_read
	li t0, 25
	beq x31, t0, csr_access_hpmcounter14_supervisor_key_25_read
	li t0, 26
	beq x31, t0, csr_access_hpmcounter15_supervisor_key_26_read
	li t0, 27
	beq x31, t0, csr_access_hpmcounter16_supervisor_key_27_read
	li t0, 28
	beq x31, t0, csr_access_hpmcounter17_supervisor_key_28_read
	li t0, 29
	beq x31, t0, csr_access_hpmcounter18_supervisor_key_29_read
	li t0, 30
	beq x31, t0, csr_access_hpmcounter19_supervisor_key_30_read
	li t0, 31
	beq x31, t0, csr_access_hpmcounter20_supervisor_key_31_read
	li t0, 32
	beq x31, t0, csr_access_hpmcounter21_supervisor_key_32_read
	li t0, 33
	beq x31, t0, csr_access_hpmcounter22_supervisor_key_33_read
	li t0, 34
	beq x31, t0, csr_access_hpmcounter23_supervisor_key_34_read
	li t0, 35
	beq x31, t0, csr_access_hpmcounter24_supervisor_key_35_read
	li t0, 36
	beq x31, t0, csr_access_hpmcounter25_supervisor_key_36_read
	li t0, 37
	beq x31, t0, csr_access_hpmcounter26_supervisor_key_37_read
	li t0, 38
	beq x31, t0, csr_access_hpmcounter27_supervisor_key_38_read
	li t0, 39
	beq x31, t0, csr_access_hpmcounter28_supervisor_key_39_read
	li t0, 40
	beq x31, t0, csr_access_hpmcounter29_supervisor_key_40_read
	li t0, 41
	beq x31, t0, csr_access_hpmcounter30_supervisor_key_41_read
	li t0, 42
	beq x31, t0, csr_access_hpmcounter31_supervisor_key_42_read
	li t0, 176
	beq x31, t0, csr_access_sstatus_supervisor_key_176_set
	li t0, 174
	beq x31, t0, csr_access_sstatus_supervisor_key_174_clear
	li t0, 132
	beq x31, t0, csr_access_vsstatus_supervisor_key_132_read
	li t0, 135
	beq x31, t0, csr_access_vsstatus_supervisor_key_135_write
	li t0, 143
	beq x31, t0, csr_access_vsstatus_supervisor_key_143_set
	li t0, 133
	beq x31, t0, csr_access_vsstatus_supervisor_key_133_clear
	li t0, 167
	beq x31, t0, csr_access_hedeleg_supervisor_key_167_read
	li t0, 172
	beq x31, t0, csr_access_hedeleg_supervisor_key_172_write
	li t0, 171
	beq x31, t0, csr_access_hedeleg_supervisor_key_171_set
	li t0, 180
	beq x31, t0, csr_access_stvec_supervisor_key_180_set
	li t0, 179
	beq x31, t0, csr_access_stvec_supervisor_key_179_clear
	j end_super_label

# Supervisor Read: hgeip, label: csr_access_hgeip_supervisor_key_3_read
csr_access_hgeip_supervisor_key_3_read:
	csrr t2, hgeip
	j end_super_label

# Supervisor Write: hcounteren, label: csr_access_hcounteren_supervisor_key_43_write
csr_access_hcounteren_supervisor_key_43_write:
	csrw hcounteren, t2
	j end_super_label

# Supervisor Read: hcounteren, label: csr_access_hcounteren_supervisor_key_5_read
csr_access_hcounteren_supervisor_key_5_read:
	csrr t2, hcounteren
	j end_super_label

# Supervisor Set: hcounteren, label: csr_access_hcounteren_supervisor_key_91_set
csr_access_hcounteren_supervisor_key_91_set:
	csrs hcounteren, t2
	j end_super_label

# Supervisor Clear: hcounteren, label: csr_access_hcounteren_supervisor_key_9_clear
csr_access_hcounteren_supervisor_key_9_clear:
	csrc hcounteren, t2
	j end_super_label

# Supervisor Write: scounteren, label: csr_access_scounteren_supervisor_key_45_write
csr_access_scounteren_supervisor_key_45_write:
	csrw scounteren, t2
	j end_super_label

# Supervisor Read: scounteren, label: csr_access_scounteren_supervisor_key_7_read
csr_access_scounteren_supervisor_key_7_read:
	csrr t2, scounteren
	j end_super_label

# Supervisor Set: scounteren, label: csr_access_scounteren_supervisor_key_51_set
csr_access_scounteren_supervisor_key_51_set:
	csrs scounteren, t2
	j end_super_label

# Supervisor Clear: scounteren, label: csr_access_scounteren_supervisor_key_10_clear
csr_access_scounteren_supervisor_key_10_clear:
	csrc scounteren, t2
	j end_super_label

# Supervisor Read: hpmcounter3, label: csr_access_hpmcounter3_supervisor_key_14_read
csr_access_hpmcounter3_supervisor_key_14_read:
	csrr t2, hpmcounter3
	j end_super_label

# Supervisor Read: hpmcounter4, label: csr_access_hpmcounter4_supervisor_key_15_read
csr_access_hpmcounter4_supervisor_key_15_read:
	csrr t2, hpmcounter4
	j end_super_label

# Supervisor Read: hpmcounter5, label: csr_access_hpmcounter5_supervisor_key_16_read
csr_access_hpmcounter5_supervisor_key_16_read:
	csrr t2, hpmcounter5
	j end_super_label

# Supervisor Read: hpmcounter6, label: csr_access_hpmcounter6_supervisor_key_17_read
csr_access_hpmcounter6_supervisor_key_17_read:
	csrr t2, hpmcounter6
	j end_super_label

# Supervisor Read: hpmcounter7, label: csr_access_hpmcounter7_supervisor_key_18_read
csr_access_hpmcounter7_supervisor_key_18_read:
	csrr t2, hpmcounter7
	j end_super_label

# Supervisor Read: hpmcounter8, label: csr_access_hpmcounter8_supervisor_key_19_read
csr_access_hpmcounter8_supervisor_key_19_read:
	csrr t2, hpmcounter8
	j end_super_label

# Supervisor Read: hpmcounter9, label: csr_access_hpmcounter9_supervisor_key_20_read
csr_access_hpmcounter9_supervisor_key_20_read:
	csrr t2, hpmcounter9
	j end_super_label

# Supervisor Read: hpmcounter10, label: csr_access_hpmcounter10_supervisor_key_21_read
csr_access_hpmcounter10_supervisor_key_21_read:
	csrr t2, hpmcounter10
	j end_super_label

# Supervisor Read: hpmcounter11, label: csr_access_hpmcounter11_supervisor_key_22_read
csr_access_hpmcounter11_supervisor_key_22_read:
	csrr t2, hpmcounter11
	j end_super_label

# Supervisor Read: hpmcounter12, label: csr_access_hpmcounter12_supervisor_key_23_read
csr_access_hpmcounter12_supervisor_key_23_read:
	csrr t2, hpmcounter12
	j end_super_label

# Supervisor Read: hpmcounter13, label: csr_access_hpmcounter13_supervisor_key_24_read
csr_access_hpmcounter13_supervisor_key_24_read:
	csrr t2, hpmcounter13
	j end_super_label

# Supervisor Read: hpmcounter14, label: csr_access_hpmcounter14_supervisor_key_25_read
csr_access_hpmcounter14_supervisor_key_25_read:
	csrr t2, hpmcounter14
	j end_super_label

# Supervisor Read: hpmcounter15, label: csr_access_hpmcounter15_supervisor_key_26_read
csr_access_hpmcounter15_supervisor_key_26_read:
	csrr t2, hpmcounter15
	j end_super_label

# Supervisor Read: hpmcounter16, label: csr_access_hpmcounter16_supervisor_key_27_read
csr_access_hpmcounter16_supervisor_key_27_read:
	csrr t2, hpmcounter16
	j end_super_label

# Supervisor Read: hpmcounter17, label: csr_access_hpmcounter17_supervisor_key_28_read
csr_access_hpmcounter17_supervisor_key_28_read:
	csrr t2, hpmcounter17
	j end_super_label

# Supervisor Read: hpmcounter18, label: csr_access_hpmcounter18_supervisor_key_29_read
csr_access_hpmcounter18_supervisor_key_29_read:
	csrr t2, hpmcounter18
	j end_super_label

# Supervisor Read: hpmcounter19, label: csr_access_hpmcounter19_supervisor_key_30_read
csr_access_hpmcounter19_supervisor_key_30_read:
	csrr t2, hpmcounter19
	j end_super_label

# Supervisor Read: hpmcounter20, label: csr_access_hpmcounter20_supervisor_key_31_read
csr_access_hpmcounter20_supervisor_key_31_read:
	csrr t2, hpmcounter20
	j end_super_label

# Supervisor Read: hpmcounter21, label: csr_access_hpmcounter21_supervisor_key_32_read
csr_access_hpmcounter21_supervisor_key_32_read:
	csrr t2, hpmcounter21
	j end_super_label

# Supervisor Read: hpmcounter22, label: csr_access_hpmcounter22_supervisor_key_33_read
csr_access_hpmcounter22_supervisor_key_33_read:
	csrr t2, hpmcounter22
	j end_super_label

# Supervisor Read: hpmcounter23, label: csr_access_hpmcounter23_supervisor_key_34_read
csr_access_hpmcounter23_supervisor_key_34_read:
	csrr t2, hpmcounter23
	j end_super_label

# Supervisor Read: hpmcounter24, label: csr_access_hpmcounter24_supervisor_key_35_read
csr_access_hpmcounter24_supervisor_key_35_read:
	csrr t2, hpmcounter24
	j end_super_label

# Supervisor Read: hpmcounter25, label: csr_access_hpmcounter25_supervisor_key_36_read
csr_access_hpmcounter25_supervisor_key_36_read:
	csrr t2, hpmcounter25
	j end_super_label

# Supervisor Read: hpmcounter26, label: csr_access_hpmcounter26_supervisor_key_37_read
csr_access_hpmcounter26_supervisor_key_37_read:
	csrr t2, hpmcounter26
	j end_super_label

# Supervisor Read: hpmcounter27, label: csr_access_hpmcounter27_supervisor_key_38_read
csr_access_hpmcounter27_supervisor_key_38_read:
	csrr t2, hpmcounter27
	j end_super_label

# Supervisor Read: hpmcounter28, label: csr_access_hpmcounter28_supervisor_key_39_read
csr_access_hpmcounter28_supervisor_key_39_read:
	csrr t2, hpmcounter28
	j end_super_label

# Supervisor Read: hpmcounter29, label: csr_access_hpmcounter29_supervisor_key_40_read
csr_access_hpmcounter29_supervisor_key_40_read:
	csrr t2, hpmcounter29
	j end_super_label

# Supervisor Read: hpmcounter30, label: csr_access_hpmcounter30_supervisor_key_41_read
csr_access_hpmcounter30_supervisor_key_41_read:
	csrr t2, hpmcounter30
	j end_super_label

# Supervisor Read: hpmcounter31, label: csr_access_hpmcounter31_supervisor_key_42_read
csr_access_hpmcounter31_supervisor_key_42_read:
	csrr t2, hpmcounter31
	j end_super_label

# Supervisor Set: sstatus, label: csr_access_sstatus_supervisor_key_176_set
csr_access_sstatus_supervisor_key_176_set:
	csrs sstatus, t2
	j end_super_label

# Supervisor Clear: sstatus, label: csr_access_sstatus_supervisor_key_174_clear
csr_access_sstatus_supervisor_key_174_clear:
	csrc sstatus, t2
	j end_super_label

# Supervisor Write: vsstatus, label: csr_access_vsstatus_supervisor_key_135_write
csr_access_vsstatus_supervisor_key_135_write:
	csrw vsstatus, t2
	j end_super_label

# Supervisor Read: vsstatus, label: csr_access_vsstatus_supervisor_key_132_read
csr_access_vsstatus_supervisor_key_132_read:
	csrr t2, vsstatus
	j end_super_label

# Supervisor Set: vsstatus, label: csr_access_vsstatus_supervisor_key_143_set
csr_access_vsstatus_supervisor_key_143_set:
	csrs vsstatus, t2
	j end_super_label

# Supervisor Clear: vsstatus, label: csr_access_vsstatus_supervisor_key_133_clear
csr_access_vsstatus_supervisor_key_133_clear:
	csrc vsstatus, t2
	j end_super_label

# Supervisor Write: hedeleg, label: csr_access_hedeleg_supervisor_key_172_write
csr_access_hedeleg_supervisor_key_172_write:
	csrw hedeleg, t2
	j end_super_label

# Supervisor Read: hedeleg, label: csr_access_hedeleg_supervisor_key_167_read
csr_access_hedeleg_supervisor_key_167_read:
	csrr t2, hedeleg
	j end_super_label

# Supervisor Set: hedeleg, label: csr_access_hedeleg_supervisor_key_171_set
csr_access_hedeleg_supervisor_key_171_set:
	csrs hedeleg, t2
	j end_super_label

# Supervisor Set: stvec, label: csr_access_stvec_supervisor_key_180_set
csr_access_stvec_supervisor_key_180_set:
	csrs stvec, t2
	j end_super_label

# Supervisor Clear: stvec, label: csr_access_stvec_supervisor_key_179_clear
csr_access_stvec_supervisor_key_179_clear:
	csrc stvec, t2
	j end_super_label

end_super_label:
# return to testmode
	li x31, 0xf0001004
	ecall

