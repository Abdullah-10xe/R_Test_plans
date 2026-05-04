;#test.name       zawrs
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zawrs
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zawrs

#include "rvmodel_macros.h"
.include "tp_zawrs_1_equates.inc"

.include "tp_zawrs_1_pagetables.inc"
#include "tp_zawrs_1_macros.inc"
#include "tp_zawrs_1_loader.inc"
#include "tp_zawrs_1_syscalls.inc"
#include "tp_zawrs_1_trap_handler_m.inc"
#include "tp_zawrs_1_trap_handler_s.inc"
#include "tp_zawrs_1_os.inc"
#include "tp_zawrs_1_eot.inc"
#include "tp_zawrs_1_scheduler.inc"
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
	li t6, mem0
	li t5, 0
	add s0, t6, t5
	lr.d a5, (s0)
	li a0, mem0
	li s8, 0
	add a0, a0, s8
	li s7, 0xd8f16ae2
	sc.d s10, s7, (a0)
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
	li s2, mem1
	li a2, 0
	add s1, s2, a2
	lr.d s8, (s1)
	li t1, mem1
	li s6, 0
	add s9, t1, s6
	li s2, 0xa6cecc1e
	sc.d s9, s2, (s9)
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
	li t5, mem2
	li t1, 0
	add t4, t5, t1
	lr.d s5, (t4)
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

	li a5, mem3
	li t6, 0
	add t6, a5, t6
	lr.d a4, (t6)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	wrs.nto
	li s11, failed_addr
	ld a0, 0(s11)
	jr a0
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
