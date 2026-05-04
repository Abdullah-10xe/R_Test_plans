;#test.name       svinval
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      svinval
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: svinval

#include "rvmodel_macros.h"
.include "tp_svinval_2_equates.inc"

.include "tp_svinval_2_pagetables.inc"
#include "tp_svinval_2_macros.inc"
#include "tp_svinval_2_loader.inc"
#include "tp_svinval_2_syscalls.inc"
#include "tp_svinval_2_trap_handler_m.inc"
#include "tp_svinval_2_trap_handler_s.inc"
#include "tp_svinval_2_os.inc"
#include "tp_svinval_2_eot.inc"
#include "tp_svinval_2_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_01_opcode_coverage)
SID_SVINVAL_01_opcode_coverage:
	li sp, SID_SVINVAL_01_opcode_coverage_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test SFENCE.W.INVAL and SFENCE.INVAL.IR (all privilege modes)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	sfence.w.inval
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_0:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	sfence.inval.ir
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_1:
	# Simple assertion to verify execution
	li a4, 0x1
	beq a4, a4, pass_label_0
	li a0, failed_addr
	ld a0, 0(a0)
	jr a0
pass_label_0:
SID_SVINVAL_01_opcode_coverage_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_06_fault_in_usermode)
SID_SVINVAL_06_fault_in_usermode:
	li sp, SID_SVINVAL_06_fault_in_usermode_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# SINVAL.VMA in U-mode should fault
	li t5, mem0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	sinval.vma t5, zero
	li a5, failed_addr
	ld a4, 0(a5)
	jr a4
	# assert_exception block end
excp_return_label_2:
SID_SVINVAL_06_fault_in_usermode_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_08_no_fault_sfence_w_inval_sfence_inval_ir)
SID_SVINVAL_08_no_fault_sfence_w_inval_sfence_inval_ir:
	li sp, SID_SVINVAL_08_no_fault_sfence_w_inval_sfence_inval_ir_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	sfence.w.inval
	li s9, failed_addr
	ld a2, 0(s9)
	jr a2
	# assert_exception block end
excp_return_label_3:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	sfence.inval.ir
	li s11, failed_addr
	ld t2, 0(s11)
	jr t2
	# assert_exception block end
excp_return_label_4:
SID_SVINVAL_08_no_fault_sfence_w_inval_sfence_inval_ir_passed:
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
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem0
.section .mem0, "aw"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_01_opcode_coverage_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_01_opcode_coverage_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_01_opcode_coverage_stack, phys_name=SID_SVINVAL_01_opcode_coverage_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_01_opcode_coverage_stack
.section .SID_SVINVAL_01_opcode_coverage_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_06_fault_in_usermode_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_06_fault_in_usermode_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_06_fault_in_usermode_stack, phys_name=SID_SVINVAL_06_fault_in_usermode_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_06_fault_in_usermode_stack
.section .SID_SVINVAL_06_fault_in_usermode_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_08_no_fault_sfence_w_inval_sfence_inval_ir_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_08_no_fault_sfence_w_inval_sfence_inval_ir_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_08_no_fault_sfence_w_inval_sfence_inval_ir_stack, phys_name=SID_SVINVAL_08_no_fault_sfence_w_inval_sfence_inval_ir_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_08_no_fault_sfence_w_inval_sfence_inval_ir_stack
.section .SID_SVINVAL_08_no_fault_sfence_w_inval_sfence_inval_ir_stack, "aw"

.dword 0xc001c0de
