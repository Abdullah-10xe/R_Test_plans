;#test.name       zicond
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zicond
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zicond

#include "rvmodel_macros.h"
.include "tp_zicond_1_equates.inc"

.include "tp_zicond_1_pagetables.inc"
#include "tp_zicond_1_macros.inc"
#include "tp_zicond_1_loader.inc"
#include "tp_zicond_1_syscalls.inc"
#include "tp_zicond_1_trap_handler_m.inc"
#include "tp_zicond_1_trap_handler_s.inc"
#include "tp_zicond_1_os.inc"
#include "tp_zicond_1_eot.inc"
#include "tp_zicond_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_01_EQZ_RS1_NZ)
SID_EXCEP_01_EQZ_RS1_NZ:
	li sp, SID_EXCEP_01_EQZ_RS1_NZ_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load immediate value 0 into li (rs2)
	li t6, 0
	# Load immediate check value 0xc0ffee (rs1)
	li t5, 0xc0ffee
	# Execute czero.eqz operation: if src2 (li) == 0, return 0, else return src1 (check_val)
	czero.eqz s0, t5, t6
	# Expected result: since rs2=0, should get 0
	li a5, 0
	beq s0, a5, pass_label_0
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
pass_label_0:
SID_EXCEP_01_EQZ_RS1_NZ_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_01_EQZ_RS1_Z)
SID_EXCEP_01_EQZ_RS1_Z:
	li sp, SID_EXCEP_01_EQZ_RS1_Z_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load immediate value 0 into li (rs2)
	li t5, 0
	# Load immediate check value 0 (rs1)
	li s4, 0
	# Execute czero.eqz operation: if src2 (li) == 0, return 0, else return src1 (check_val)
	czero.eqz s6, s4, t5
	# Expected result: since rs2=0, should get 0
	li t3, 0
	beq s6, t3, pass_label_1
	li s2, failed_addr
	ld s2, 0(s2)
	jr s2
pass_label_1:
SID_EXCEP_01_EQZ_RS1_Z_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_01_NEZ_RS1_NZ)
SID_EXCEP_01_NEZ_RS1_NZ:
	li sp, SID_EXCEP_01_NEZ_RS1_NZ_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load immediate value 0xdeadbeef into li (rs2)
	li a2, 0xdeadbeef
	# Load immediate check value 0xc0ffee (rs1)
	li s1, 0xc0ffee
	# Execute czero.nez operation: if src2 (li) != 0, return 0, else return src1 (check_val)
	czero.nez s7, s1, a2
	# Expected result: since rs2!=0, should get 0
	li t1, 0
	beq s7, t1, pass_label_2
	li s5, failed_addr
	ld s8, 0(s5)
	jr s8
pass_label_2:
SID_EXCEP_01_NEZ_RS1_NZ_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_01_NEZ_RS1_Z)
SID_EXCEP_01_NEZ_RS1_Z:
	li sp, SID_EXCEP_01_NEZ_RS1_Z_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load immediate value 0xdeadbeef into li (rs2)
	li s9, 0xdeadbeef
	# Load immediate check value 0 (rs1)
	li t6, 0
	# Execute czero.nez operation: if src2 (li) != 0, return 0, else return src1 (check_val)
	czero.nez s9, t6, s9
	# Expected result: since rs2!=0, should get 0
	li t1, 0
	beq s9, t1, pass_label_3
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
pass_label_3:
SID_EXCEP_01_NEZ_RS1_Z_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_02_EQZ_RS1_NZ)
SID_EXCEP_02_EQZ_RS1_NZ:
	li sp, SID_EXCEP_02_EQZ_RS1_NZ_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load immediate value 0xdeadbeef into li (rs2)
	li a4, 0xdeadbeef
	# Load immediate check value 0xc0ffee (rs1)
	li t5, 0xc0ffee
	# Execute czero.eqz operation: if src2 (li) == 0, return 0, else return src1 (check_val)
	czero.eqz t5, t5, a4
	# Expected result: since rs2!=0, should get rs1=0xC0FFEE
	li a3, 0xc0ffee
	beq t5, a3, pass_label_4
	li s10, failed_addr
	ld s1, 0(s10)
	jr s1
pass_label_4:
SID_EXCEP_02_EQZ_RS1_NZ_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_02_EQZ_RS1_Z)
SID_EXCEP_02_EQZ_RS1_Z:
	li sp, SID_EXCEP_02_EQZ_RS1_Z_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load immediate value 0xdeadbeef into li (rs2)
	li a6, 0xdeadbeef
	# Load immediate check value 0 (rs1)
	li t1, 0
	# Execute czero.eqz operation: if src2 (li) == 0, return 0, else return src1 (check_val)
	czero.eqz t2, t1, a6
	# Expected result: since rs2!=0, should get rs1=0
	li s0, 0
	beq t2, s0, pass_label_5
	li t5, failed_addr
	ld s11, 0(t5)
	jr s11
pass_label_5:
SID_EXCEP_02_EQZ_RS1_Z_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_02_NEZ_RS1_Z)
SID_EXCEP_02_NEZ_RS1_Z:
	li sp, SID_EXCEP_02_NEZ_RS1_Z_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load immediate value 0 into li (rs2)
	li t1, 0
	# Load immediate check value 0xc0ffee (rs1)
	li s3, 0xc0ffee
	# Execute czero.nez operation: if src2 (li) != 0, return 0, else return src1 (check_val)
	czero.nez t4, s3, t1
	# Expected result: since rs2=0, should get rs1=0xC0FFEE
	li a3, 0xc0ffee
	beq t4, a3, pass_label_6
	li s6, failed_addr
	ld t4, 0(s6)
	jr t4
pass_label_6:
SID_EXCEP_02_NEZ_RS1_Z_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_02_NEZ_RS1_NZ)
SID_EXCEP_02_NEZ_RS1_NZ:
	li sp, SID_EXCEP_02_NEZ_RS1_NZ_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load immediate value 0 into li (rs2)
	li t1, 0
	# Load immediate check value 0 (rs1)
	li s7, 0
	# Execute czero.nez operation: if src2 (li) != 0, return 0, else return src1 (check_val)
	czero.nez a4, s7, t1
	# Expected result: since rs2=0, should get rs1=0
	li s7, 0
	beq a4, s7, pass_label_7
	li s6, failed_addr
	ld s9, 0(s6)
	jr s9
pass_label_7:
SID_EXCEP_02_NEZ_RS1_NZ_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_EQZ_PASSING_ADD)
SID_EXCEP_04_EQZ_PASSING_ADD:
	li sp, SID_EXCEP_04_EQZ_PASSING_ADD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	li s7, 0xa
	li a3, 0x3
	# condition == 0, so czero.eqz should return 0
	li s2, 0
	# Compute add operation
	# 10 + 3 = 13
	add a4, s7, a3
	# Use czero.eqz: if condition == 0, return 0, else return add_result
	czero.eqz t6, a4, s2
	# Expected result: since condition=0, should get 0
	li a5, 0
	beq t6, a5, pass_label_8
	li t6, failed_addr
	ld s9, 0(t6)
	jr s9
pass_label_8:
SID_EXCEP_04_EQZ_PASSING_ADD_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_EQZ_FAILING_ADD)
SID_EXCEP_04_EQZ_FAILING_ADD:
	li sp, SID_EXCEP_04_EQZ_FAILING_ADD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	li a5, 0xa
	li t1, 0x3
	# condition != 0, so czero.eqz should return rs1
	li s5, 0x1
	# Compute add operation
	# 10 + 3 = 13
	add s10, a5, t1
	# Use czero.eqz: if condition == 0, return 0, else return add_result
	czero.eqz t5, s10, s5
	# Expected result: since condition≠0, should get add_result=13
	li a0, 0xd
	beq t5, a0, pass_label_9
	li a3, failed_addr
	ld t1, 0(a3)
	jr t1
pass_label_9:
SID_EXCEP_04_EQZ_FAILING_ADD_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_NEZ_PASSING_SUB)
SID_EXCEP_04_NEZ_PASSING_SUB:
	li sp, SID_EXCEP_04_NEZ_PASSING_SUB_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	li t4, 0xa
	li a5, 0x3
	# condition != 0, so czero.nez should return 0
	li s1, 0x1
	# Compute sub operation
	# 10 - 3 = 7
	sub t4, t4, a5
	# Use czero.nez: if condition != 0, return 0, else return sub_result
	czero.nez s2, t4, s1
	# Expected result: since condition≠0, should get 0
	li s1, 0
	beq s2, s1, pass_label_10
	li a5, failed_addr
	ld s9, 0(a5)
	jr s9
pass_label_10:
SID_EXCEP_04_NEZ_PASSING_SUB_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_NEZ_FAILING_SUB)
SID_EXCEP_04_NEZ_FAILING_SUB:
	li sp, SID_EXCEP_04_NEZ_FAILING_SUB_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	li s3, 0xa
	li s7, 0x3
	# condition == 0, so czero.nez should return rs1
	li t4, 0
	# Compute sub operation
	# 10 - 3 = 7
	sub a2, s3, s7
	# Use czero.nez: if condition != 0, return 0, else return sub_result
	czero.nez a6, a2, t4
	# Expected result: since condition=0, should get sub_result=7
	li a7, 0x7
	beq a6, a7, pass_label_11
	li t5, failed_addr
	ld s10, 0(t5)
	jr s10
pass_label_11:
SID_EXCEP_04_NEZ_FAILING_SUB_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_EQZ_PASSING_SUB)
SID_EXCEP_04_EQZ_PASSING_SUB:
	li sp, SID_EXCEP_04_EQZ_PASSING_SUB_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	li s6, 0xa
	li s2, 0x3
	# condition == 0, so czero.eqz should return 0
	li s10, 0
	# Compute sub operation
	# 10 - 3 = 7
	sub t2, s6, s2
	# Use czero.eqz: if condition == 0, return 0, else return sub_result
	czero.eqz s8, t2, s10
	# Expected result: since condition=0, should get 0
	li a4, 0
	beq s8, a4, pass_label_12
	li t2, failed_addr
	ld t2, 0(t2)
	jr t2
pass_label_12:
SID_EXCEP_04_EQZ_PASSING_SUB_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_EQZ_FAILING_SUB)
SID_EXCEP_04_EQZ_FAILING_SUB:
	li sp, SID_EXCEP_04_EQZ_FAILING_SUB_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	li s2, 0xa
	li s4, 0x3
	# condition != 0, so czero.eqz should return rs1
	li t4, 0x1
	# Compute sub operation
	# 10 - 3 = 7
	sub a1, s2, s4
	# Use czero.eqz: if condition == 0, return 0, else return sub_result
	czero.eqz s3, a1, t4
	# Expected result: since condition≠0, should get sub_result=7
	li s11, 0x7
	beq s3, s11, pass_label_13
	li t4, failed_addr
	ld s11, 0(t4)
	jr s11
pass_label_13:
SID_EXCEP_04_EQZ_FAILING_SUB_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_NEZ_PASSING_ADD)
SID_EXCEP_04_NEZ_PASSING_ADD:
	li sp, SID_EXCEP_04_NEZ_PASSING_ADD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	li s11, 0xa
	li t5, 0x3
	# condition != 0, so czero.nez should return 0
	li a7, 0x1
	# Compute add operation
	# 10 + 3 = 13
	add s0, s11, t5
	# Use czero.nez: if condition != 0, return 0, else return add_result
	czero.nez s6, s0, a7
	# Expected result: since condition≠0, should get 0
	li s11, 0
	beq s6, s11, pass_label_14
	li s9, failed_addr
	ld a0, 0(s9)
	jr a0
pass_label_14:
SID_EXCEP_04_NEZ_PASSING_ADD_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_NEZ_FAILING_ADD)
SID_EXCEP_04_NEZ_FAILING_ADD:
	li sp, SID_EXCEP_04_NEZ_FAILING_ADD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	li t5, 0xa
	li a1, 0x3
	# condition == 0, so czero.nez should return rs1
	li s7, 0
	# Compute add operation
	# 10 + 3 = 13
	add s3, t5, a1
	# Use czero.nez: if condition != 0, return 0, else return add_result
	czero.nez s2, s3, s7
	# Expected result: since condition=0, should get add_result=13
	li s9, 0xd
	beq s2, s9, pass_label_15
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
pass_label_15:
SID_EXCEP_04_NEZ_FAILING_ADD_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_EQZ_PASSING_AND)
SID_EXCEP_04_EQZ_PASSING_AND:
	li sp, SID_EXCEP_04_EQZ_PASSING_AND_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	# 0xF0
	li s5, 0xf0
	# 0xAA
	li t2, 0xaa
	# condition == 0, so czero.eqz should return 0
	li a6, 0
	# Compute and operation
	# 0xF0 & 0xAA = 0xA0
	and t6, s5, t2
	# Use czero.eqz: if condition == 0, return 0, else return and_result
	czero.eqz t3, t6, a6
	# Expected result: since condition=0, should get 0
	li s11, 0
	beq t3, s11, pass_label_16
	li t4, failed_addr
	ld s4, 0(t4)
	jr s4
pass_label_16:
SID_EXCEP_04_EQZ_PASSING_AND_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_EQZ_FAILING_AND)
SID_EXCEP_04_EQZ_FAILING_AND:
	li sp, SID_EXCEP_04_EQZ_FAILING_AND_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	# 0xF0
	li s10, 0xf0
	# 0xAA
	li a1, 0xaa
	# condition != 0, so czero.eqz should return rs1
	li a2, 0x1
	# Compute and operation
	# 0xF0 & 0xAA = 0xA0
	and s8, s10, a1
	# Use czero.eqz: if condition == 0, return 0, else return and_result
	czero.eqz a5, s8, a2
	# Expected result: since condition≠0, should get and_result=0xA0
	li t1, 0xa0
	beq a5, t1, pass_label_17
	li a5, failed_addr
	ld a6, 0(a5)
	jr a6
pass_label_17:
SID_EXCEP_04_EQZ_FAILING_AND_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_EQZ_PASSING_XOR)
SID_EXCEP_04_EQZ_PASSING_XOR:
	li sp, SID_EXCEP_04_EQZ_PASSING_XOR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	# 0xF0
	li s7, 0xf0
	# 0xAA
	li s8, 0xaa
	# condition == 0, so czero.eqz should return 0
	li a3, 0
	# Compute xor operation
	# 0xF0 ^ 0xAA = 0x5A
	xor s3, s7, s8
	# Use czero.eqz: if condition == 0, return 0, else return xor_result
	czero.eqz s10, s3, a3
	# Expected result: since condition=0, should get 0
	li s2, 0
	beq s10, s2, pass_label_18
	li t5, failed_addr
	ld s4, 0(t5)
	jr s4
pass_label_18:
SID_EXCEP_04_EQZ_PASSING_XOR_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_EQZ_FAILING_XOR)
SID_EXCEP_04_EQZ_FAILING_XOR:
	li sp, SID_EXCEP_04_EQZ_FAILING_XOR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	# 0xF0
	li s4, 0xf0
	# 0xAA
	li a4, 0xaa
	# condition != 0, so czero.eqz should return rs1
	li t4, 0x1
	# Compute xor operation
	# 0xF0 ^ 0xAA = 0x5A
	xor s9, s4, a4
	# Use czero.eqz: if condition == 0, return 0, else return xor_result
	czero.eqz t3, s9, t4
	# Expected result: since condition≠0, should get xor_result=0x5A
	li t4, 0x5a
	beq t3, t4, pass_label_19
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
pass_label_19:
SID_EXCEP_04_EQZ_FAILING_XOR_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_NEZ_PASSING_AND)
SID_EXCEP_04_NEZ_PASSING_AND:
	li sp, SID_EXCEP_04_NEZ_PASSING_AND_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	# 0xF0
	li t6, 0xf0
	# 0xAA
	li t4, 0xaa
	# condition != 0, so czero.nez should return 0
	li s6, 0x1
	# Compute and operation
	# 0xF0 & 0xAA = 0xA0
	and a0, t6, t4
	# Use czero.nez: if condition != 0, return 0, else return and_result
	czero.nez s8, a0, s6
	# Expected result: since condition≠0, should get 0
	li a0, 0
	beq s8, a0, pass_label_20
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
pass_label_20:
SID_EXCEP_04_NEZ_PASSING_AND_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_NEZ_FAILING_AND)
SID_EXCEP_04_NEZ_FAILING_AND:
	li sp, SID_EXCEP_04_NEZ_FAILING_AND_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	# 0xF0
	li s3, 0xf0
	# 0xAA
	li t2, 0xaa
	# condition == 0, so czero.nez should return rs1
	li s7, 0
	# Compute and operation
	# 0xF0 & 0xAA = 0xA0
	and s2, s3, t2
	# Use czero.nez: if condition != 0, return 0, else return and_result
	czero.nez t3, s2, s7
	# Expected result: since condition=0, should get and_result=0xA0
	li s11, 0xa0
	beq t3, s11, pass_label_21
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
pass_label_21:
SID_EXCEP_04_NEZ_FAILING_AND_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_NEZ_PASSING_XOR)
SID_EXCEP_04_NEZ_PASSING_XOR:
	li sp, SID_EXCEP_04_NEZ_PASSING_XOR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	# 0xF0
	li s3, 0xf0
	# 0xAA
	li s6, 0xaa
	# condition != 0, so czero.nez should return 0
	li a7, 0x1
	# Compute xor operation
	# 0xF0 ^ 0xAA = 0x5A
	xor s5, s3, s6
	# Use czero.nez: if condition != 0, return 0, else return xor_result
	czero.nez s2, s5, a7
	# Expected result: since condition≠0, should get 0
	li t1, 0
	beq s2, t1, pass_label_22
	li t4, failed_addr
	ld t5, 0(t4)
	jr t5
pass_label_22:
SID_EXCEP_04_NEZ_PASSING_XOR_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_NEZ_FAILING_XOR)
SID_EXCEP_04_NEZ_FAILING_XOR:
	li sp, SID_EXCEP_04_NEZ_FAILING_XOR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values
	# 0xF0
	li s9, 0xf0
	# 0xAA
	li s10, 0xaa
	# condition == 0, so czero.nez should return rs1
	li a6, 0
	# Compute xor operation
	# 0xF0 ^ 0xAA = 0x5A
	xor s5, s9, s10
	# Use czero.nez: if condition != 0, return 0, else return xor_result
	czero.nez t4, s5, a6
	# Expected result: since condition=0, should get xor_result=0x5A
	li t1, 0x5a
	beq t4, t1, pass_label_23
	li t1, failed_addr
	ld a4, 0(t1)
	jr a4
pass_label_23:
SID_EXCEP_04_NEZ_FAILING_XOR_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_2_1_MUX_SELECT_0)
SID_EXCEP_04_2_1_MUX_SELECT_0:
	li sp, SID_EXCEP_04_2_1_MUX_SELECT_0_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values for 2-to-1 MUX
	li s10, 0xdead
	li a1, 0xbeef
	# 0 = select input0, non-zero = select input1
	li s8, 0
	# If selector == 0: use input0, else use 0
	czero.nez s11, s10, s8
	# If selector != 0: use input1, else use 0
	czero.eqz a2, a1, s8
	# Combine the selections (only one will be non-zero)
	or s0, s11, a2
	# Expected result: since selector=0, should get input0=0xDEAD
	li t4, 0xdead
	beq s0, t4, pass_label_24
	li t4, failed_addr
	ld a7, 0(t4)
	jr a7
pass_label_24:
SID_EXCEP_04_2_1_MUX_SELECT_0_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_2_1_MUX_SELECT_1)
SID_EXCEP_04_2_1_MUX_SELECT_1:
	li sp, SID_EXCEP_04_2_1_MUX_SELECT_1_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Input values for 2-to-1 MUX
	li t2, 0xdead
	li t3, 0xbeef
	# non-zero = select input1, 0 = select input0
	li s1, 0x1
	# If selector != 0: use input1, else use 0
	czero.nez a0, t2, s1
	# If selector == 0: use input0, else use 0
	czero.eqz t1, t3, s1
	# Combine the selections (only one will be non-zero)
	or s8, a0, t1
	# Expected result: since selector=1 (non-zero), should get input1=0xBEEF
	li s0, 0xbeef
	beq s8, s0, pass_label_25
	li s8, failed_addr
	ld s0, 0(s8)
	jr s0
pass_label_25:
SID_EXCEP_04_2_1_MUX_SELECT_1_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

test_cleanup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall
local_test_failed:
	;#test_failed()
	li x31, 0xf0000002  # Test Failed; End test with fail
	ecall

.section .data
;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_01_EQZ_RS1_NZ_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_01_EQZ_RS1_NZ_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_01_EQZ_RS1_NZ_stack, phys_name=SID_EXCEP_01_EQZ_RS1_NZ_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_01_EQZ_RS1_NZ_stack
.section .SID_EXCEP_01_EQZ_RS1_NZ_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_01_EQZ_RS1_Z_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_01_EQZ_RS1_Z_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_01_EQZ_RS1_Z_stack, phys_name=SID_EXCEP_01_EQZ_RS1_Z_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_01_EQZ_RS1_Z_stack
.section .SID_EXCEP_01_EQZ_RS1_Z_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_01_NEZ_RS1_NZ_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_01_NEZ_RS1_NZ_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_01_NEZ_RS1_NZ_stack, phys_name=SID_EXCEP_01_NEZ_RS1_NZ_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_01_NEZ_RS1_NZ_stack
.section .SID_EXCEP_01_NEZ_RS1_NZ_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_01_NEZ_RS1_Z_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_01_NEZ_RS1_Z_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_01_NEZ_RS1_Z_stack, phys_name=SID_EXCEP_01_NEZ_RS1_Z_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_01_NEZ_RS1_Z_stack
.section .SID_EXCEP_01_NEZ_RS1_Z_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_02_EQZ_RS1_NZ_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_02_EQZ_RS1_NZ_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_02_EQZ_RS1_NZ_stack, phys_name=SID_EXCEP_02_EQZ_RS1_NZ_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_02_EQZ_RS1_NZ_stack
.section .SID_EXCEP_02_EQZ_RS1_NZ_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_02_EQZ_RS1_Z_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_02_EQZ_RS1_Z_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_02_EQZ_RS1_Z_stack, phys_name=SID_EXCEP_02_EQZ_RS1_Z_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_02_EQZ_RS1_Z_stack
.section .SID_EXCEP_02_EQZ_RS1_Z_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_02_NEZ_RS1_Z_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_02_NEZ_RS1_Z_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_02_NEZ_RS1_Z_stack, phys_name=SID_EXCEP_02_NEZ_RS1_Z_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_02_NEZ_RS1_Z_stack
.section .SID_EXCEP_02_NEZ_RS1_Z_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_02_NEZ_RS1_NZ_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_02_NEZ_RS1_NZ_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_02_NEZ_RS1_NZ_stack, phys_name=SID_EXCEP_02_NEZ_RS1_NZ_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_02_NEZ_RS1_NZ_stack
.section .SID_EXCEP_02_NEZ_RS1_NZ_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_EQZ_PASSING_ADD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_EQZ_PASSING_ADD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_ADD_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_ADD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_EQZ_PASSING_ADD_stack
.section .SID_EXCEP_04_EQZ_PASSING_ADD_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_EQZ_FAILING_ADD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_EQZ_FAILING_ADD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_ADD_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_ADD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_EQZ_FAILING_ADD_stack
.section .SID_EXCEP_04_EQZ_FAILING_ADD_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_NEZ_PASSING_SUB_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_NEZ_PASSING_SUB_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_SUB_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_SUB_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_NEZ_PASSING_SUB_stack
.section .SID_EXCEP_04_NEZ_PASSING_SUB_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_NEZ_FAILING_SUB_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_NEZ_FAILING_SUB_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_SUB_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_SUB_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_NEZ_FAILING_SUB_stack
.section .SID_EXCEP_04_NEZ_FAILING_SUB_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_EQZ_PASSING_SUB_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_EQZ_PASSING_SUB_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_SUB_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_SUB_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_EQZ_PASSING_SUB_stack
.section .SID_EXCEP_04_EQZ_PASSING_SUB_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_EQZ_FAILING_SUB_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_EQZ_FAILING_SUB_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_SUB_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_SUB_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_EQZ_FAILING_SUB_stack
.section .SID_EXCEP_04_EQZ_FAILING_SUB_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_NEZ_PASSING_ADD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_NEZ_PASSING_ADD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_ADD_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_ADD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_NEZ_PASSING_ADD_stack
.section .SID_EXCEP_04_NEZ_PASSING_ADD_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_NEZ_FAILING_ADD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_NEZ_FAILING_ADD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_ADD_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_ADD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_NEZ_FAILING_ADD_stack
.section .SID_EXCEP_04_NEZ_FAILING_ADD_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_EQZ_PASSING_AND_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_EQZ_PASSING_AND_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_AND_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_AND_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_EQZ_PASSING_AND_stack
.section .SID_EXCEP_04_EQZ_PASSING_AND_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_EQZ_FAILING_AND_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_EQZ_FAILING_AND_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_AND_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_AND_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_EQZ_FAILING_AND_stack
.section .SID_EXCEP_04_EQZ_FAILING_AND_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_EQZ_PASSING_XOR_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_EQZ_PASSING_XOR_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_EQZ_PASSING_XOR_stack, phys_name=SID_EXCEP_04_EQZ_PASSING_XOR_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_EQZ_PASSING_XOR_stack
.section .SID_EXCEP_04_EQZ_PASSING_XOR_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_EQZ_FAILING_XOR_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_EQZ_FAILING_XOR_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_EQZ_FAILING_XOR_stack, phys_name=SID_EXCEP_04_EQZ_FAILING_XOR_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_EQZ_FAILING_XOR_stack
.section .SID_EXCEP_04_EQZ_FAILING_XOR_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_NEZ_PASSING_AND_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_NEZ_PASSING_AND_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_AND_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_AND_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_NEZ_PASSING_AND_stack
.section .SID_EXCEP_04_NEZ_PASSING_AND_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_NEZ_FAILING_AND_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_NEZ_FAILING_AND_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_AND_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_AND_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_NEZ_FAILING_AND_stack
.section .SID_EXCEP_04_NEZ_FAILING_AND_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_NEZ_PASSING_XOR_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_NEZ_PASSING_XOR_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_NEZ_PASSING_XOR_stack, phys_name=SID_EXCEP_04_NEZ_PASSING_XOR_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_NEZ_PASSING_XOR_stack
.section .SID_EXCEP_04_NEZ_PASSING_XOR_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_NEZ_FAILING_XOR_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_NEZ_FAILING_XOR_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_NEZ_FAILING_XOR_stack, phys_name=SID_EXCEP_04_NEZ_FAILING_XOR_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_NEZ_FAILING_XOR_stack
.section .SID_EXCEP_04_NEZ_FAILING_XOR_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_2_1_MUX_SELECT_0_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_2_1_MUX_SELECT_0_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_2_1_MUX_SELECT_0_stack, phys_name=SID_EXCEP_04_2_1_MUX_SELECT_0_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_2_1_MUX_SELECT_0_stack
.section .SID_EXCEP_04_2_1_MUX_SELECT_0_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_2_1_MUX_SELECT_1_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_2_1_MUX_SELECT_1_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_2_1_MUX_SELECT_1_stack, phys_name=SID_EXCEP_04_2_1_MUX_SELECT_1_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_2_1_MUX_SELECT_1_stack
.section .SID_EXCEP_04_2_1_MUX_SELECT_1_stack, "aw"

.dword 0xc001c0de
