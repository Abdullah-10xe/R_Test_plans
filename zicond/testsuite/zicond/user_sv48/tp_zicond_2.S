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
.include "tp_zicond_2_equates.inc"

.include "tp_zicond_2_pagetables.inc"
#include "tp_zicond_2_macros.inc"
#include "tp_zicond_2_loader.inc"
#include "tp_zicond_2_syscalls.inc"
#include "tp_zicond_2_trap_handler_m.inc"
#include "tp_zicond_2_trap_handler_s.inc"
#include "tp_zicond_2_os.inc"
#include "tp_zicond_2_eot.inc"
#include "tp_zicond_2_scheduler.inc"
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
	li t2, 0
	# Load immediate check value 0xc0ffee (rs1)
	li s1, 0xc0ffee
	# Execute czero.eqz operation: if src2 (li) == 0, return 0, else return src1 (check_val)
	czero.eqz a0, s1, t2
	# Expected result: since rs2=0, should get 0
	li s4, 0
	beq a0, s4, pass_label_0
	li a4, failed_addr
	ld a0, 0(a4)
	jr a0
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
	li t6, 0
	# Load immediate check value 0 (rs1)
	li s11, 0
	# Execute czero.eqz operation: if src2 (li) == 0, return 0, else return src1 (check_val)
	czero.eqz a5, s11, t6
	# Expected result: since rs2=0, should get 0
	li a4, 0
	beq a5, a4, pass_label_1
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
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
	li s9, 0xdeadbeef
	# Load immediate check value 0xc0ffee (rs1)
	li t2, 0xc0ffee
	# Execute czero.nez operation: if src2 (li) != 0, return 0, else return src1 (check_val)
	czero.nez s10, t2, s9
	# Expected result: since rs2!=0, should get 0
	li t5, 0
	beq s10, t5, pass_label_2
	li a2, failed_addr
	ld s5, 0(a2)
	jr s5
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
	li s10, 0xdeadbeef
	# Load immediate check value 0 (rs1)
	li s2, 0
	# Execute czero.nez operation: if src2 (li) != 0, return 0, else return src1 (check_val)
	czero.nez s2, s2, s10
	# Expected result: since rs2!=0, should get 0
	li t6, 0
	beq s2, t6, pass_label_3
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
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
	li s7, 0xdeadbeef
	# Load immediate check value 0xc0ffee (rs1)
	li s4, 0xc0ffee
	# Execute czero.eqz operation: if src2 (li) == 0, return 0, else return src1 (check_val)
	czero.eqz s8, s4, s7
	# Expected result: since rs2!=0, should get rs1=0xC0FFEE
	li a4, 0xc0ffee
	beq s8, a4, pass_label_4
	li t2, failed_addr
	ld t1, 0(t2)
	jr t1
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
	li a7, 0xdeadbeef
	# Load immediate check value 0 (rs1)
	li s5, 0
	# Execute czero.eqz operation: if src2 (li) == 0, return 0, else return src1 (check_val)
	czero.eqz a6, s5, a7
	# Expected result: since rs2!=0, should get rs1=0
	li s4, 0
	beq a6, s4, pass_label_5
	li s7, failed_addr
	ld s11, 0(s7)
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
	li a1, 0
	# Load immediate check value 0xc0ffee (rs1)
	li s8, 0xc0ffee
	# Execute czero.nez operation: if src2 (li) != 0, return 0, else return src1 (check_val)
	czero.nez a2, s8, a1
	# Expected result: since rs2=0, should get rs1=0xC0FFEE
	li a5, 0xc0ffee
	beq a2, a5, pass_label_6
	li a6, failed_addr
	ld t1, 0(a6)
	jr t1
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
	li a1, 0
	# Load immediate check value 0 (rs1)
	li a7, 0
	# Execute czero.nez operation: if src2 (li) != 0, return 0, else return src1 (check_val)
	czero.nez a2, a7, a1
	# Expected result: since rs2=0, should get rs1=0
	li a0, 0
	beq a2, a0, pass_label_7
	li s10, failed_addr
	ld s11, 0(s10)
	jr s11
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
	li a7, 0xa
	li s7, 0x3
	# condition == 0, so czero.eqz should return 0
	li t4, 0
	# Compute add operation
	# 10 + 3 = 13
	add s9, a7, s7
	# Use czero.eqz: if condition == 0, return 0, else return add_result
	czero.eqz a1, s9, t4
	# Expected result: since condition=0, should get 0
	li s6, 0
	beq a1, s6, pass_label_8
	li s6, failed_addr
	ld s5, 0(s6)
	jr s5
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
	li t4, 0xa
	li s6, 0x3
	# condition != 0, so czero.eqz should return rs1
	li a7, 0x1
	# Compute add operation
	# 10 + 3 = 13
	add s10, t4, s6
	# Use czero.eqz: if condition == 0, return 0, else return add_result
	czero.eqz s2, s10, a7
	# Expected result: since condition≠0, should get add_result=13
	li s3, 0xd
	beq s2, s3, pass_label_9
	li s8, failed_addr
	ld a1, 0(s8)
	jr a1
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
	li t5, 0xa
	li s2, 0x3
	# condition != 0, so czero.nez should return 0
	li t4, 0x1
	# Compute sub operation
	# 10 - 3 = 7
	sub t5, t5, s2
	# Use czero.nez: if condition != 0, return 0, else return sub_result
	czero.nez s5, t5, t4
	# Expected result: since condition≠0, should get 0
	li t3, 0
	beq s5, t3, pass_label_10
	li s8, failed_addr
	ld a3, 0(s8)
	jr a3
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
	li s5, 0xa
	li a4, 0x3
	# condition == 0, so czero.nez should return rs1
	li s7, 0
	# Compute sub operation
	# 10 - 3 = 7
	sub s9, s5, a4
	# Use czero.nez: if condition != 0, return 0, else return sub_result
	czero.nez s10, s9, s7
	# Expected result: since condition=0, should get sub_result=7
	li s2, 0x7
	beq s10, s2, pass_label_11
	li a4, failed_addr
	ld s8, 0(a4)
	jr s8
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
	li s4, 0xa
	li a7, 0x3
	# condition == 0, so czero.eqz should return 0
	li s10, 0
	# Compute sub operation
	# 10 - 3 = 7
	sub s4, s4, a7
	# Use czero.eqz: if condition == 0, return 0, else return sub_result
	czero.eqz s9, s4, s10
	# Expected result: since condition=0, should get 0
	li s10, 0
	beq s9, s10, pass_label_12
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
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
	li s11, 0xa
	li a3, 0x3
	# condition != 0, so czero.eqz should return rs1
	li a7, 0x1
	# Compute sub operation
	# 10 - 3 = 7
	sub t6, s11, a3
	# Use czero.eqz: if condition == 0, return 0, else return sub_result
	czero.eqz a1, t6, a7
	# Expected result: since condition≠0, should get sub_result=7
	li t4, 0x7
	beq a1, t4, pass_label_13
	li a6, failed_addr
	ld t4, 0(a6)
	jr t4
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
	li s5, 0xa
	li a5, 0x3
	# condition != 0, so czero.nez should return 0
	li a6, 0x1
	# Compute add operation
	# 10 + 3 = 13
	add t6, s5, a5
	# Use czero.nez: if condition != 0, return 0, else return add_result
	czero.nez s9, t6, a6
	# Expected result: since condition≠0, should get 0
	li s11, 0
	beq s9, s11, pass_label_14
	li s10, failed_addr
	ld t3, 0(s10)
	jr t3
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
	li s10, 0xa
	li s9, 0x3
	# condition == 0, so czero.nez should return rs1
	li s8, 0
	# Compute add operation
	# 10 + 3 = 13
	add s3, s10, s9
	# Use czero.nez: if condition != 0, return 0, else return add_result
	czero.nez a5, s3, s8
	# Expected result: since condition=0, should get add_result=13
	li s8, 0xd
	beq a5, s8, pass_label_15
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
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
	li s6, 0xf0
	# 0xAA
	li a7, 0xaa
	# condition == 0, so czero.eqz should return 0
	li t4, 0
	# Compute and operation
	# 0xF0 & 0xAA = 0xA0
	and s11, s6, a7
	# Use czero.eqz: if condition == 0, return 0, else return and_result
	czero.eqz s0, s11, t4
	# Expected result: since condition=0, should get 0
	li s2, 0
	beq s0, s2, pass_label_16
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
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
	li a2, 0xf0
	# 0xAA
	li t5, 0xaa
	# condition != 0, so czero.eqz should return rs1
	li s1, 0x1
	# Compute and operation
	# 0xF0 & 0xAA = 0xA0
	and t2, a2, t5
	# Use czero.eqz: if condition == 0, return 0, else return and_result
	czero.eqz s11, t2, s1
	# Expected result: since condition≠0, should get and_result=0xA0
	li t6, 0xa0
	beq s11, t6, pass_label_17
	li s0, failed_addr
	ld s2, 0(s0)
	jr s2
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
	li s8, 0xf0
	# 0xAA
	li a3, 0xaa
	# condition == 0, so czero.eqz should return 0
	li t4, 0
	# Compute xor operation
	# 0xF0 ^ 0xAA = 0x5A
	xor s1, s8, a3
	# Use czero.eqz: if condition == 0, return 0, else return xor_result
	czero.eqz t4, s1, t4
	# Expected result: since condition=0, should get 0
	li s9, 0
	beq t4, s9, pass_label_18
	li a1, failed_addr
	ld a7, 0(a1)
	jr a7
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
	li a3, 0xf0
	# 0xAA
	li a2, 0xaa
	# condition != 0, so czero.eqz should return rs1
	li t2, 0x1
	# Compute xor operation
	# 0xF0 ^ 0xAA = 0x5A
	xor s6, a3, a2
	# Use czero.eqz: if condition == 0, return 0, else return xor_result
	czero.eqz a3, s6, t2
	# Expected result: since condition≠0, should get xor_result=0x5A
	li s6, 0x5a
	beq a3, s6, pass_label_19
	li s0, failed_addr
	ld s1, 0(s0)
	jr s1
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
	li a7, 0xf0
	# 0xAA
	li s2, 0xaa
	# condition != 0, so czero.nez should return 0
	li a1, 0x1
	# Compute and operation
	# 0xF0 & 0xAA = 0xA0
	and a4, a7, s2
	# Use czero.nez: if condition != 0, return 0, else return and_result
	czero.nez t6, a4, a1
	# Expected result: since condition≠0, should get 0
	li t1, 0
	beq t6, t1, pass_label_20
	li s1, failed_addr
	ld a2, 0(s1)
	jr a2
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
	li s0, 0xf0
	# 0xAA
	li t1, 0xaa
	# condition == 0, so czero.nez should return rs1
	li s1, 0
	# Compute and operation
	# 0xF0 & 0xAA = 0xA0
	and s0, s0, t1
	# Use czero.nez: if condition != 0, return 0, else return and_result
	czero.nez t2, s0, s1
	# Expected result: since condition=0, should get and_result=0xA0
	li s5, 0xa0
	beq t2, s5, pass_label_21
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
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
	li a1, 0xf0
	# 0xAA
	li t5, 0xaa
	# condition != 0, so czero.nez should return 0
	li a2, 0x1
	# Compute xor operation
	# 0xF0 ^ 0xAA = 0x5A
	xor s8, a1, t5
	# Use czero.nez: if condition != 0, return 0, else return xor_result
	czero.nez a1, s8, a2
	# Expected result: since condition≠0, should get 0
	li t1, 0
	beq a1, t1, pass_label_22
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
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
	li t2, 0xf0
	# 0xAA
	li a4, 0xaa
	# condition == 0, so czero.nez should return rs1
	li a1, 0
	# Compute xor operation
	# 0xF0 ^ 0xAA = 0x5A
	xor s0, t2, a4
	# Use czero.nez: if condition != 0, return 0, else return xor_result
	czero.nez t1, s0, a1
	# Expected result: since condition=0, should get xor_result=0x5A
	li s6, 0x5a
	beq t1, s6, pass_label_23
	li t6, failed_addr
	ld a4, 0(t6)
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
	li t4, 0xdead
	li t5, 0xbeef
	# 0 = select input0, non-zero = select input1
	li s1, 0
	# If selector == 0: use input0, else use 0
	czero.nez a6, t4, s1
	# If selector != 0: use input1, else use 0
	czero.eqz s2, t5, s1
	# Combine the selections (only one will be non-zero)
	or s8, a6, s2
	# Expected result: since selector=0, should get input0=0xDEAD
	li t1, 0xdead
	beq s8, t1, pass_label_24
	li s3, failed_addr
	ld s10, 0(s3)
	jr s10
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
	li s7, 0xdead
	li t6, 0xbeef
	# non-zero = select input1, 0 = select input0
	li s10, 0x1
	# If selector != 0: use input1, else use 0
	czero.nez s7, s7, s10
	# If selector == 0: use input0, else use 0
	czero.eqz t2, t6, s10
	# Combine the selections (only one will be non-zero)
	or a5, s7, t2
	# Expected result: since selector=1 (non-zero), should get input1=0xBEEF
	li t2, 0xbeef
	beq a5, t2, pass_label_25
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
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
