;#test.name       zihintntl
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zihintntl
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zihintntl

#include "rvmodel_macros.h"
.include "tp_zihintntl_2_equates.inc"
#include "tp_zihintntl_2_macros.inc"
#include "tp_zihintntl_2_loader.inc"
#include "tp_zihintntl_2_syscalls.inc"
#include "tp_zihintntl_2_trap_handler_m.inc"
#include "tp_zihintntl_2_trap_handler_s.inc"
#include "tp_zihintntl_2_os.inc"
#include "tp_zihintntl_2_eot.inc"
#include "tp_zihintntl_2_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZIHINTNTL_01_NTL_P1)
SID_ZIHINTNTL_01_NTL_P1:
	li sp, SID_ZIHINTNTL_01_NTL_P1_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load initial value into register
	li t2, 0xdeadbeef
	# Execute NTL.P1 hint (ADD x0, x0, x2) - should behave as NOP
	add x0, x0, x2
	# Verify initial value is preserved
	li s1, 0xdeadbeef
	beq t2, s1, pass_label_0
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
pass_label_0:
SID_ZIHINTNTL_01_NTL_P1_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZIHINTNTL_02_NTL_PALL)
SID_ZIHINTNTL_02_NTL_PALL:
	li sp, SID_ZIHINTNTL_02_NTL_PALL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load test value
	li a1, 0xc0ffee
	# Execute NTL.PALL hint (ADD x0, x0, x3) - should behave as NOP
	add x0, x0, x3
	# Verify test value is unchanged
	li t5, 0xc0ffee
	beq a1, t5, pass_label_1
	li t5, failed_addr
	ld t3, 0(t5)
	jr t3
pass_label_1:
SID_ZIHINTNTL_02_NTL_PALL_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZIHINTNTL_03_NTL_S1)
SID_ZIHINTNTL_03_NTL_S1:
	li sp, SID_ZIHINTNTL_03_NTL_S1_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load value to test NOP behavior
	li a5, 0xfeedface
	# Execute NTL.S1 hint (ADD x0, x0, x4) - should behave as NOP
	add x0, x0, x4
	# Check value remains unchanged
	li a4, 0xfeedface
	beq a5, a4, pass_label_2
	li s11, failed_addr
	ld a2, 0(s11)
	jr a2
pass_label_2:
SID_ZIHINTNTL_03_NTL_S1_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZIHINTNTL_04_NTL_ALL)
SID_ZIHINTNTL_04_NTL_ALL:
	li sp, SID_ZIHINTNTL_04_NTL_ALL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Initialize test value
	li s9, 0xabcdef01
	# Execute NTL.ALL hint (ADD x0, x0, x5) - should behave as NOP
	add x0, x0, x5
	# Verify value is preserved
	li t2, 0xabcdef01
	beq s9, t2, pass_label_3
	li s10, failed_addr
	ld t5, 0(s10)
	jr t5
pass_label_3:
SID_ZIHINTNTL_04_NTL_ALL_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC)
SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC:
	li sp, SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Initialize operands for arithmetic
	li a1, 0x64
	li s4, 0x32
	# Execute NTL.P1 hint before operation
	add x0, x0, x2
	# Perform arithmetic operation
	add t3, a1, s4
	# Execute NTL.ALL hint after operation
	add x0, x0, x5
	# Verify arithmetic result is correct (100 + 50 = 150)
	li s3, 0x96
	beq t3, s3, pass_label_4
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
pass_label_4:
SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZIHINTNTL_06_NTL_SEQUENCE)
SID_ZIHINTNTL_06_NTL_SEQUENCE:
	li sp, SID_ZIHINTNTL_06_NTL_SEQUENCE_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Initialize value to track through sequence
	li s6, 0xabcd1234
	# Execute NTL.P1 hint
	add x0, x0, x2
	# Execute NTL.PALL hint
	add x0, x0, x3
	# Execute NTL.S1 hint
	add x0, x0, x4
	# Execute NTL.ALL hint
	add x0, x0, x5
	# Verify value unchanged after all hints
	li a7, 0xabcd1234
	beq s6, a7, pass_label_5
	li s9, failed_addr
	ld s5, 0(s9)
	jr s5
pass_label_5:
SID_ZIHINTNTL_06_NTL_SEQUENCE_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

test_cleanup:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1
local_test_failed:
	;#test_failed()
	li t0, os_failed_addr
	ld t1, 0(t0)
	jr t1

.section .data
;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZIHINTNTL_01_NTL_P1_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZIHINTNTL_01_NTL_P1_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZIHINTNTL_01_NTL_P1_stack, phys_name=SID_ZIHINTNTL_01_NTL_P1_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZIHINTNTL_01_NTL_P1_stack
.section .SID_ZIHINTNTL_01_NTL_P1_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZIHINTNTL_02_NTL_PALL_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZIHINTNTL_02_NTL_PALL_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZIHINTNTL_02_NTL_PALL_stack, phys_name=SID_ZIHINTNTL_02_NTL_PALL_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZIHINTNTL_02_NTL_PALL_stack
.section .SID_ZIHINTNTL_02_NTL_PALL_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZIHINTNTL_03_NTL_S1_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZIHINTNTL_03_NTL_S1_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZIHINTNTL_03_NTL_S1_stack, phys_name=SID_ZIHINTNTL_03_NTL_S1_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZIHINTNTL_03_NTL_S1_stack
.section .SID_ZIHINTNTL_03_NTL_S1_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZIHINTNTL_04_NTL_ALL_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZIHINTNTL_04_NTL_ALL_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZIHINTNTL_04_NTL_ALL_stack, phys_name=SID_ZIHINTNTL_04_NTL_ALL_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZIHINTNTL_04_NTL_ALL_stack
.section .SID_ZIHINTNTL_04_NTL_ALL_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC_stack, phys_name=SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC_stack
.section .SID_ZIHINTNTL_05_NTL_WITH_ARITHMETIC_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZIHINTNTL_06_NTL_SEQUENCE_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZIHINTNTL_06_NTL_SEQUENCE_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZIHINTNTL_06_NTL_SEQUENCE_stack, phys_name=SID_ZIHINTNTL_06_NTL_SEQUENCE_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZIHINTNTL_06_NTL_SEQUENCE_stack
.section .SID_ZIHINTNTL_06_NTL_SEQUENCE_stack, "aw"

.dword 0xc001c0de
