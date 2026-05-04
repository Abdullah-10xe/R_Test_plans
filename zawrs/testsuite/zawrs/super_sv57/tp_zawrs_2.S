;#test.name       zawrs
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv57
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zawrs
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zawrs

#include "rvmodel_macros.h"
.include "tp_zawrs_2_equates.inc"

.include "tp_zawrs_2_pagetables.inc"
#include "tp_zawrs_2_macros.inc"
#include "tp_zawrs_2_loader.inc"
#include "tp_zawrs_2_syscalls.inc"
#include "tp_zawrs_2_trap_handler_m.inc"
#include "tp_zawrs_2_trap_handler_s.inc"
#include "tp_zawrs_2_os.inc"
#include "tp_zawrs_2_eot.inc"
#include "tp_zawrs_2_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZAWRS_01_WRS_NTO_NO_RESERVATION)
SID_ZAWRS_01_WRS_NTO_NO_RESERVATION:
	li sp, SID_ZAWRS_01_WRS_NTO_NO_RESERVATION_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# WRS.NTO without reservation - should not stall the hart
	wrs.nto
	# Hart did not stall - test passed
SID_ZAWRS_01_WRS_NTO_NO_RESERVATION_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZAWRS_03_WRS_NTO_RESERVATION_LOST)
SID_ZAWRS_03_WRS_NTO_RESERVATION_LOST:
	li sp, SID_ZAWRS_03_WRS_NTO_RESERVATION_LOST_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# WRS.NTO when reservation is lost - should not stall
	li t2, mem0
	li s1, 0
	add a0, t2, s1
	lr.d s4, (a0)
	li a4, mem0
	li a0, 0
	add a0, a4, a0
	li t2, 0xf2a4d27e
	sc.d s3, t2, (a0)
	wrs.nto
	# WRS.NTO did not stall - reservation was already lost
SID_ZAWRS_03_WRS_NTO_RESERVATION_LOST_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZAWRS_04_WRS_STO_NO_RESERVATION)
SID_ZAWRS_04_WRS_STO_NO_RESERVATION:
	li sp, SID_ZAWRS_04_WRS_STO_NO_RESERVATION_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# WRS.STO without reservation - should not stall
	wrs.sto
	# WRS.STO did not stall - test passed
SID_ZAWRS_04_WRS_STO_NO_RESERVATION_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZAWRS_06_WRS_STO_RESERVATION_LOST)
SID_ZAWRS_06_WRS_STO_RESERVATION_LOST:
	li sp, SID_ZAWRS_06_WRS_STO_RESERVATION_LOST_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# WRS.STO when reservation is lost - should not stall
	li s9, mem1
	li a2, 0
	add s11, s9, a2
	lr.d t2, (s11)
	li t3, mem1
	li s9, 0
	add a3, t3, s9
	li s6, 0x4067c35b
	sc.d s11, s6, (a3)
	wrs.sto
	# WRS.STO did not stall - reservation was already lost
SID_ZAWRS_06_WRS_STO_RESERVATION_LOST_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZAWRS_07_WRS_STO_TIMEOUT)
SID_ZAWRS_07_WRS_STO_TIMEOUT:
	li sp, SID_ZAWRS_07_WRS_STO_TIMEOUT_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# WRS.STO without store - should exit after T1 timeout
	nop
	li s2, mem2
	li t5, 0
	add s7, s2, t5
	lr.d a7, (s7)
	wrs.sto
	# WRS.STO exited due to timeout (T1)
SID_ZAWRS_07_WRS_STO_TIMEOUT_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZAWRS_20_INTERRUPT_TAKEN_AT_WRS_NTO)
SID_ZAWRS_20_INTERRUPT_TAKEN_AT_WRS_NTO:
	li sp, SID_ZAWRS_20_INTERRUPT_TAKEN_AT_WRS_NTO_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Interrupt taken at WRS.NTO - re-dispatched after servicing
	wrs.nto
	wrs.nto
	# WRS.NTO re-dispatched after interrupt, exits due to timeout
SID_ZAWRS_20_INTERRUPT_TAKEN_AT_WRS_NTO_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZAWRS_21_WRS_TW_EXCEPTION)
SID_ZAWRS_21_WRS_TW_EXCEPTION:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZAWRS_21_WRS_TW_EXCEPTION_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# WRS in S/U mode with TW=1 - illegal instruction exception
	li t2, 2097152
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li s8, mem3
	li s5, 0
	add s9, s8, s5
	lr.d a5, (s9)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	wrs.nto
	li s0, failed_addr
	ld t1, 0(s0)
	jr t1
	# assert_exception block end
excp_return_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZAWRS_21_WRS_TW_EXCEPTION_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZAWRS_26_WRS_X_WFI)
SID_ZAWRS_26_WRS_X_WFI:
	li sp, SID_ZAWRS_26_WRS_X_WFI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# WRS and WFI interaction test
	nop
	li a7, mem4
	li s5, 0
	add a6, a7, s5
	lr.d s4, (a6)
	wrs.sto
	nop
	wfi
	# WRS.STO followed by WFI completed
	nop
	wfi
	nop
	li s7, mem4
	li s11, 0
	add a1, s7, s11
	lr.d t5, (a1)
	wrs.sto
	# WFI followed by WRS.STO completed
SID_ZAWRS_26_WRS_X_WFI_passed:
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

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZAWRS_01_WRS_NTO_NO_RESERVATION_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZAWRS_01_WRS_NTO_NO_RESERVATION_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZAWRS_01_WRS_NTO_NO_RESERVATION_stack, phys_name=SID_ZAWRS_01_WRS_NTO_NO_RESERVATION_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZAWRS_01_WRS_NTO_NO_RESERVATION_stack
.section .SID_ZAWRS_01_WRS_NTO_NO_RESERVATION_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZAWRS_03_WRS_NTO_RESERVATION_LOST_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZAWRS_03_WRS_NTO_RESERVATION_LOST_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZAWRS_03_WRS_NTO_RESERVATION_LOST_stack, phys_name=SID_ZAWRS_03_WRS_NTO_RESERVATION_LOST_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZAWRS_03_WRS_NTO_RESERVATION_LOST_stack
.section .SID_ZAWRS_03_WRS_NTO_RESERVATION_LOST_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZAWRS_04_WRS_STO_NO_RESERVATION_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZAWRS_04_WRS_STO_NO_RESERVATION_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZAWRS_04_WRS_STO_NO_RESERVATION_stack, phys_name=SID_ZAWRS_04_WRS_STO_NO_RESERVATION_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZAWRS_04_WRS_STO_NO_RESERVATION_stack
.section .SID_ZAWRS_04_WRS_STO_NO_RESERVATION_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZAWRS_06_WRS_STO_RESERVATION_LOST_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZAWRS_06_WRS_STO_RESERVATION_LOST_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZAWRS_06_WRS_STO_RESERVATION_LOST_stack, phys_name=SID_ZAWRS_06_WRS_STO_RESERVATION_LOST_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZAWRS_06_WRS_STO_RESERVATION_LOST_stack
.section .SID_ZAWRS_06_WRS_STO_RESERVATION_LOST_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZAWRS_07_WRS_STO_TIMEOUT_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZAWRS_07_WRS_STO_TIMEOUT_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZAWRS_07_WRS_STO_TIMEOUT_stack, phys_name=SID_ZAWRS_07_WRS_STO_TIMEOUT_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZAWRS_07_WRS_STO_TIMEOUT_stack
.section .SID_ZAWRS_07_WRS_STO_TIMEOUT_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZAWRS_20_INTERRUPT_TAKEN_AT_WRS_NTO_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZAWRS_20_INTERRUPT_TAKEN_AT_WRS_NTO_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZAWRS_20_INTERRUPT_TAKEN_AT_WRS_NTO_stack, phys_name=SID_ZAWRS_20_INTERRUPT_TAKEN_AT_WRS_NTO_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZAWRS_20_INTERRUPT_TAKEN_AT_WRS_NTO_stack
.section .SID_ZAWRS_20_INTERRUPT_TAKEN_AT_WRS_NTO_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZAWRS_21_WRS_TW_EXCEPTION_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZAWRS_21_WRS_TW_EXCEPTION_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZAWRS_21_WRS_TW_EXCEPTION_stack, phys_name=SID_ZAWRS_21_WRS_TW_EXCEPTION_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZAWRS_21_WRS_TW_EXCEPTION_stack
.section .SID_ZAWRS_21_WRS_TW_EXCEPTION_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZAWRS_26_WRS_X_WFI_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZAWRS_26_WRS_X_WFI_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZAWRS_26_WRS_X_WFI_stack, phys_name=SID_ZAWRS_26_WRS_X_WFI_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZAWRS_26_WRS_X_WFI_stack
.section .SID_ZAWRS_26_WRS_X_WFI_stack, "aw"

.dword 0xc001c0de
