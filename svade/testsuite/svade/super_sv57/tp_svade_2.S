;#test.name       svade
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv57
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      svade
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: svade

#include "rvmodel_macros.h"
.include "tp_svade_2_equates.inc"

.include "tp_svade_2_pagetables.inc"
#include "tp_svade_2_macros.inc"
#include "tp_svade_2_loader.inc"
#include "tp_svade_2_syscalls.inc"
#include "tp_svade_2_trap_handler_m.inc"
#include "tp_svade_2_trap_handler_s.inc"
#include "tp_svade_2_os.inc"
#include "tp_svade_2_eot.inc"
#include "tp_svade_2_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVADE_01_fault_on_a_bit_cleared)
SID_SVADE_01_fault_on_a_bit_cleared:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_SVADE_01_fault_on_a_bit_cleared_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable SVADE
	li t2, 2305843009213693952
	;#csr_rw(menvcfg, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Access memory with pte.a=0 should fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s1, mem0
fault_label_0:
	lb a0, 0(s1)
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SVADE_01_fault_on_a_bit_cleared_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVADE_01_fault_on_d_bit_cleared)
SID_SVADE_01_fault_on_d_bit_cleared:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_SVADE_01_fault_on_d_bit_cleared_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable SVADE
	li t2, 2305843009213693952
	;#csr_rw(menvcfg, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Store to memory with pte.d=0 should fault
	li a6, 0xdead
	OS_SETUP_CHECK_EXCP 0xf, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s11, mem1
	fcvt.s.l ft7, a6
fault_label_1:
	fsw ft7, 0(s11)
	li t3, failed_addr
	ld s0, 0(t3)
	jr s0
	# assert_exception block end
excp_return_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SVADE_01_fault_on_d_bit_cleared_passed:
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
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=0, d=0, modify_pt=1)
;#init_memory @mem0
.section .mem0, "aw"

.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=0, modify_pt=1)
;#init_memory @mem1
.section .mem1, "aw"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVADE_01_fault_on_a_bit_cleared_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADE_01_fault_on_a_bit_cleared_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADE_01_fault_on_a_bit_cleared_stack, phys_name=SID_SVADE_01_fault_on_a_bit_cleared_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADE_01_fault_on_a_bit_cleared_stack
.section .SID_SVADE_01_fault_on_a_bit_cleared_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVADE_01_fault_on_d_bit_cleared_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADE_01_fault_on_d_bit_cleared_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADE_01_fault_on_d_bit_cleared_stack, phys_name=SID_SVADE_01_fault_on_d_bit_cleared_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADE_01_fault_on_d_bit_cleared_stack
.section .SID_SVADE_01_fault_on_d_bit_cleared_stack, "aw"

.dword 0xc001c0de
