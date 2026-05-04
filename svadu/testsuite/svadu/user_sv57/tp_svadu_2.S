;#test.name       svadu
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv57
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      svadu
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: svadu

#include "rvmodel_macros.h"
.include "tp_svadu_2_equates.inc"

.include "tp_svadu_2_pagetables.inc"
#include "tp_svadu_2_macros.inc"
#include "tp_svadu_2_loader.inc"
#include "tp_svadu_2_syscalls.inc"
#include "tp_svadu_2_trap_handler_m.inc"
#include "tp_svadu_2_trap_handler_s.inc"
#include "tp_svadu_2_os.inc"
#include "tp_svadu_2_eot.inc"
#include "tp_svadu_2_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVADU_01_fault_on_a_bit_cleared)
SID_SVADU_01_fault_on_a_bit_cleared:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_SVADU_01_fault_on_a_bit_cleared_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable SVADU
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

SID_SVADU_01_fault_on_a_bit_cleared_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVADU_01_fault_on_d_bit_cleared)
SID_SVADU_01_fault_on_d_bit_cleared:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_SVADU_01_fault_on_d_bit_cleared_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable SVADU
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

SID_SVADU_01_fault_on_d_bit_cleared_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVADU_02_hardware_update_a_bit)
SID_SVADU_02_hardware_update_a_bit:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_SVADU_02_hardware_update_a_bit_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Enable SVADU
	li t2, 2305843009213693952
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# check pte.a is 0
	;#read_pte(mem2, leaf)
li x31, pte_access_flags
li t0, mem2
sd t0, 0(x31)
li t0, 4
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s4, 0x40
	and t3, t2, s4
	li s3, 0
	beq t3, s3, pass_label_0
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
pass_label_0:
	# Perform load - should update A bit
	li s9, mem2
	ld s2, 0(s9)
	;#read_pte(mem2, leaf)
li x31, pte_access_flags
li t0, mem2
sd t0, 0(x31)
li t0, 4
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	# A bit is bit 6 in the PTE entry
	li t4, 0x40
	and s8, t2, t4
	beq s8, t4, pass_label_1
	li t5, failed_addr
	ld a5, 0(t5)
	jr a5
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SVADU_02_hardware_update_a_bit_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVADU_02_hardware_update_d_bit)
SID_SVADU_02_hardware_update_d_bit:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_SVADU_02_hardware_update_d_bit_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Enable SVADU
	li t2, 2305843009213693952
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# check pte.d is 0
	;#read_pte(mem3, leaf)
li x31, pte_access_flags
li t0, mem3
sd t0, 0(x31)
li t0, 4
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li t1, 0x80
	and s3, t2, t1
	li s7, 0
	beq s3, s7, pass_label_2
	li s2, failed_addr
	ld s6, 0(s2)
	jr s6
pass_label_2:
	# Perform store - should update D bit
	li s9, 0xbeef
	li t4, mem3
	sb s9, 0(t4)
	;#read_pte(mem3, leaf)
li x31, pte_access_flags
li t0, mem3
sd t0, 0(x31)
li t0, 4
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	# D bit is bit 7 in the PTE entry
	li a3, 0x80
	and t1, t2, a3
	beq t1, a3, pass_label_3
	li a4, failed_addr
	ld a7, 0(a4)
	jr a7
pass_label_3:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SVADU_02_hardware_update_d_bit_passed:
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

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=0, d=0, modify_pt=1)
;#init_memory @mem2
.section .mem2, "aw"

.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=0, d=0, modify_pt=1)
;#init_memory @mem3
.section .mem3, "aw"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVADU_01_fault_on_a_bit_cleared_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADU_01_fault_on_a_bit_cleared_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADU_01_fault_on_a_bit_cleared_stack, phys_name=SID_SVADU_01_fault_on_a_bit_cleared_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADU_01_fault_on_a_bit_cleared_stack
.section .SID_SVADU_01_fault_on_a_bit_cleared_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVADU_01_fault_on_d_bit_cleared_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADU_01_fault_on_d_bit_cleared_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADU_01_fault_on_d_bit_cleared_stack, phys_name=SID_SVADU_01_fault_on_d_bit_cleared_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADU_01_fault_on_d_bit_cleared_stack
.section .SID_SVADU_01_fault_on_d_bit_cleared_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVADU_02_hardware_update_a_bit_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADU_02_hardware_update_a_bit_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADU_02_hardware_update_a_bit_stack, phys_name=SID_SVADU_02_hardware_update_a_bit_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADU_02_hardware_update_a_bit_stack
.section .SID_SVADU_02_hardware_update_a_bit_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVADU_02_hardware_update_d_bit_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADU_02_hardware_update_d_bit_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADU_02_hardware_update_d_bit_stack, phys_name=SID_SVADU_02_hardware_update_d_bit_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADU_02_hardware_update_d_bit_stack
.section .SID_SVADU_02_hardware_update_d_bit_stack, "aw"

.dword 0xc001c0de
