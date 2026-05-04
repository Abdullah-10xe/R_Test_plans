;#test.name       za64rs
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      za64rs
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: za64rs

#include "rvmodel_macros.h"
.include "tp_za64rs_1_equates.inc"
#include "tp_za64rs_1_macros.inc"
#include "tp_za64rs_1_loader.inc"
#include "tp_za64rs_1_syscalls.inc"
#include "tp_za64rs_1_trap_handler_m.inc"
#include "tp_za64rs_1_trap_handler_s.inc"
#include "tp_za64rs_1_os.inc"
#include "tp_za64rs_1_eot.inc"
#include "tp_za64rs_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZA64RS_01)
SID_ZA64RS_01:
	li sp, SID_ZA64RS_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test unaligned LR with misaligned address
	OS_SETUP_CHECK_EXCP 0x5, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t6, mem0
	li t5, 0x1
	add s0, t6, t5
fault_label_0:
	lr.w a5, (s0)
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_0:
	OS_SETUP_CHECK_EXCP 0x5, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a0, mem0
	li s7, 0x1
	add s10, a0, s7
fault_label_1:
	lr.d s0, (s10)
	li s5, failed_addr
	ld s5, 0(s5)
	jr s5
	# assert_exception block end
excp_return_label_1:
SID_ZA64RS_01_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZA64RS_02)
SID_ZA64RS_02:
	li sp, SID_ZA64RS_02_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test unaligned SC with misaligned address
	OS_SETUP_CHECK_EXCP 0x7, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s5, mem1
	li t1, 0x1
	add s3, s5, t1
	li s6, 0x35bf9930
fault_label_2:
	sc.w t4, s6, (s3)
	li s6, failed_addr
	ld t4, 0(s6)
	jr t4
	# assert_exception block end
excp_return_label_2:
	OS_SETUP_CHECK_EXCP 0x7, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, mem1
	li s3, 0x1
	add s9, t2, s3
	li a6, 0x18072e8f
fault_label_3:
	sc.d s3, a6, (s9)
	li s3, failed_addr
	ld a5, 0(s3)
	jr a5
	# assert_exception block end
excp_return_label_3:
SID_ZA64RS_02_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZA64RS_03_w)
SID_ZA64RS_03_w:
	li sp, SID_ZA64RS_03_w_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.W anywhere 0..63, SC.W 64+ fail
	li s1, 0
	li a7, mem2
	li t1, 0x20
	add t2, a7, t1
	lr.w s0, (t2)
	li t6, mem2
	li t3, 0x60
	add a0, t6, t3
	li s8, 0x9755d4c4
	sc.w t6, s8, (a0)
	bne t6, s1, pass_label_0
	li s2, failed_addr
	ld s11, 0(s2)
	jr s11
pass_label_0:
	li s2, mem2
	li a1, 0x20
	add t2, s2, a1
	lr.w s5, (t2)
	li s5, mem2
	li t1, 0x20
	add t3, s5, t1
	li t6, 0xf1fd42a5
	sc.w s6, t6, (t3)
	beq s6, s1, pass_label_1
	li t5, failed_addr
	ld s7, 0(t5)
	jr s7
pass_label_1:
SID_ZA64RS_03_w_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZA64RS_03_d)
SID_ZA64RS_03_d:
	li sp, SID_ZA64RS_03_d_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.D anywhere 0..63, SC.D 64+ fail
	li t5, 0
	li s4, mem3
	li a5, 0x20
	add t1, s4, a5
	lr.d s6, (t1)
	li s11, mem3
	li s4, 0x60
	add a0, s11, s4
	li a3, 0xad45f240
	sc.d s6, a3, (a0)
	bne s6, t5, pass_label_2
	li a3, failed_addr
	ld s3, 0(a3)
	jr s3
pass_label_2:
	li a1, mem3
	li s3, 0x20
	add s8, a1, s3
	lr.d s3, (s8)
	li a1, mem3
	li t1, 0x20
	add t4, a1, t1
	li s4, 0x380208ac
	sc.d a1, s4, (t4)
	beq a1, t5, pass_label_3
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
pass_label_3:
SID_ZA64RS_03_d_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZA64RS_03_lrw_scd)
SID_ZA64RS_03_lrw_scd:
	li sp, SID_ZA64RS_03_lrw_scd_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.W anywhere 0..63, SC.W 64+ fail
	li s5, 0
	li s7, mem4
	li s2, 0x20
	add s11, s7, s2
	lr.w t2, (s11)
	li s9, mem4
	li a4, 0x60
	add s9, s9, a4
	li s6, 0x48beab16
	sc.d s10, s6, (s9)
	bne s10, s5, pass_label_4
	li a4, failed_addr
	ld a2, 0(a4)
	jr a2
pass_label_4:
	li s8, mem4
	li s11, 0x20
	add a2, s8, s11
	lr.w a2, (a2)
	li a4, mem4
	li a2, 0x20
	add t3, a4, a2
	li s1, 0x966baea4
	sc.d s2, s1, (t3)
	beq s2, s5, pass_label_5
	li a2, failed_addr
	ld s6, 0(a2)
	jr s6
pass_label_5:
SID_ZA64RS_03_lrw_scd_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZA64RS_03_lrd_scw)
SID_ZA64RS_03_lrd_scw:
	li sp, SID_ZA64RS_03_lrd_scw_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.D anywhere 0..63, SC.D 64+ fail
	li a1, 0
	li s7, mem5
	li s3, 0x20
	add s2, s7, s3
	lr.d s9, (s2)
	li s2, mem5
	li t1, 0x60
	add s11, s2, t1
	li s0, 0x1ba16218
	sc.w s4, s0, (s11)
	bne s4, a1, pass_label_6
	li s11, failed_addr
	ld s9, 0(s11)
	jr s9
pass_label_6:
	li s3, mem5
	li s2, 0x20
	add s10, s3, s2
	lr.d s11, (s10)
	li a4, mem5
	li a5, 0x20
	add s0, a4, a5
	li s5, 0xc74803e6
	sc.w t2, s5, (s0)
	beq t2, a1, pass_label_7
	li a1, failed_addr
	ld s6, 0(a1)
	jr s6
pass_label_7:
SID_ZA64RS_03_lrd_scw_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZA64RS_05_w)
SID_ZA64RS_05_w:
	li sp, SID_ZA64RS_05_w_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.W anywhere 64..127. SC.W 0...63 fail
	li s7, 0
	li a3, mem6
	li s3, 0x60
	add s9, a3, s3
	lr.w s2, (s9)
	li t4, mem6
	li s4, 0x20
	add s10, t4, s4
	li a5, 0x8a245e6e
	sc.w t4, a5, (s10)
	bne t4, s7, pass_label_8
	li a3, failed_addr
	ld s2, 0(a3)
	jr s2
pass_label_8:
	li a3, mem6
	li t1, 0x60
	add s11, a3, t1
	lr.w t1, (s11)
	li s9, mem6
	li a1, 0x60
	add s10, s9, a1
	li t4, 0xeb8ac8d1
	sc.w a6, t4, (s10)
	beq a6, s7, pass_label_9
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
pass_label_9:
SID_ZA64RS_05_w_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZA64RS_05_d)
SID_ZA64RS_05_d:
	li sp, SID_ZA64RS_05_d_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.D anywhere 64..127. SC.D 0...63 fail
	li a7, 0
	li s9, mem7
	li s8, 0x60
	add a2, s9, s8
	lr.d s10, (a2)
	li s5, mem7
	li s11, 0x20
	add s3, s5, s11
	li s7, 0x7b297d0e
	sc.d s4, s7, (s3)
	bne s4, a7, pass_label_10
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
pass_label_10:
	li s10, mem7
	li s3, 0x60
	add s7, s10, s3
	lr.d s6, (s7)
	li s9, mem7
	li a2, 0x60
	add t2, s9, a2
	li a6, 0xdeb8fc4f
	sc.d s6, a6, (t2)
	beq s6, a7, pass_label_11
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
pass_label_11:
SID_ZA64RS_05_d_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZA64RS_04_lrw_scd)
SID_ZA64RS_04_lrw_scd:
	li sp, SID_ZA64RS_04_lrw_scd_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.W anywhere 64..127. SC.W 0...63 fail
	li s0, 0
	li s8, mem8
	li a5, 0x60
	add t2, s8, a5
	lr.w t6, (t2)
	li a0, mem8
	li a1, 0x20
	add t1, a0, a1
	li s11, 0x959f3a54
	sc.d s1, s11, (t1)
	bne s1, s0, pass_label_12
	li s1, failed_addr
	ld s1, 0(s1)
	jr s1
pass_label_12:
	li s5, mem8
	li s4, 0x60
	add s7, s5, s4
	lr.w a6, (s7)
	li s11, mem8
	li s3, 0x60
	add s8, s11, s3
	li t4, 0x2e47dc11
	sc.d a4, t4, (s8)
	beq a4, s0, pass_label_13
	li s9, failed_addr
	ld s10, 0(s9)
	jr s10
pass_label_13:
SID_ZA64RS_04_lrw_scd_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZA64RS_04_lrd_scw)
SID_ZA64RS_04_lrd_scw:
	li sp, SID_ZA64RS_04_lrd_scw_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.D anywhere 64..127. SC.D 0...63 fail
	li a1, 0
	li t3, mem9
	li a5, 0x60
	add t4, t3, a5
	lr.d t3, (t4)
	li a7, mem9
	li s7, 0x20
	add t3, a7, s7
	li s3, 0x4155d7f2
	sc.w s10, s3, (t3)
	bne s10, a1, pass_label_14
	li s11, failed_addr
	ld s1, 0(s11)
	jr s1
pass_label_14:
	li t1, mem9
	li s5, 0x60
	add t5, t1, s5
	lr.d s8, (t5)
	li t4, mem9
	li a6, 0x60
	add s6, t4, a6
	li a2, 0x870266c7
	sc.w t6, a2, (s6)
	beq t6, a1, pass_label_15
	li a2, failed_addr
	ld t1, 0(a2)
	jr t1
pass_label_15:
SID_ZA64RS_04_lrd_scw_passed:
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
;#random_addr(name=mem0,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem0
.section .mem0, "ax"

.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem1
.section .mem1, "ax"

.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem2
.section .mem2, "ax"

.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem3
.section .mem3, "ax"

.dword 0xc001c0de

;#random_addr(name=mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem4
.section .mem4, "ax"

.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem5
.section .mem5, "ax"

.dword 0xc001c0de

;#random_addr(name=mem6,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem6_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem6
.section .mem6, "ax"

.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem7_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem7
.section .mem7, "ax"

.dword 0xc001c0de

;#random_addr(name=mem8,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem8_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem8
.section .mem8, "ax"

.dword 0xc001c0de

;#random_addr(name=mem9,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem9_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem9
.section .mem9, "ax"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_01_stack, phys_name=SID_ZA64RS_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_01_stack
.section .SID_ZA64RS_01_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_02_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_02_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_02_stack, phys_name=SID_ZA64RS_02_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_02_stack
.section .SID_ZA64RS_02_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_03_w_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_03_w_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_03_w_stack, phys_name=SID_ZA64RS_03_w_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_03_w_stack
.section .SID_ZA64RS_03_w_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_03_d_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_03_d_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_03_d_stack, phys_name=SID_ZA64RS_03_d_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_03_d_stack
.section .SID_ZA64RS_03_d_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_03_lrw_scd_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_03_lrw_scd_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_03_lrw_scd_stack, phys_name=SID_ZA64RS_03_lrw_scd_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_03_lrw_scd_stack
.section .SID_ZA64RS_03_lrw_scd_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_03_lrd_scw_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_03_lrd_scw_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_03_lrd_scw_stack, phys_name=SID_ZA64RS_03_lrd_scw_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_03_lrd_scw_stack
.section .SID_ZA64RS_03_lrd_scw_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_05_w_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_05_w_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_05_w_stack, phys_name=SID_ZA64RS_05_w_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_05_w_stack
.section .SID_ZA64RS_05_w_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_05_d_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_05_d_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_05_d_stack, phys_name=SID_ZA64RS_05_d_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_05_d_stack
.section .SID_ZA64RS_05_d_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_04_lrw_scd_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_04_lrw_scd_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_04_lrw_scd_stack, phys_name=SID_ZA64RS_04_lrw_scd_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_04_lrw_scd_stack
.section .SID_ZA64RS_04_lrw_scd_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_04_lrd_scw_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_04_lrd_scw_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_04_lrd_scw_stack, phys_name=SID_ZA64RS_04_lrd_scw_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_04_lrd_scw_stack
.section .SID_ZA64RS_04_lrd_scw_stack, "aw"

.dword 0xc001c0de
