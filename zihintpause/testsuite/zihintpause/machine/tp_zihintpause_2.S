;#test.name       zihintpause
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zihintpause
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zihintpause

#include "rvmodel_macros.h"
.include "tp_zihintpause_2_equates.inc"
#include "tp_zihintpause_2_macros.inc"
#include "tp_zihintpause_2_loader.inc"
#include "tp_zihintpause_2_syscalls.inc"
#include "tp_zihintpause_2_trap_handler_m.inc"
#include "tp_zihintpause_2_trap_handler_s.inc"
#include "tp_zihintpause_2_os.inc"
#include "tp_zihintpause_2_eot.inc"
#include "tp_zihintpause_2_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZHP_01)
SID_ZHP_01:
	li sp, SID_ZHP_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Setup exception before pause
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	unimp
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_0:
	pause
SID_ZHP_01_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZHP_03)
SID_ZHP_03:
	li sp, SID_ZHP_03_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR/SC loop with pause - voids forward progress guarantee
	li a7, mem0
	li a1, 0
	add t6, a7, a1
	lr.d t6, (t6)
	pause
	li t4, mem0
	li a6, 0
	add a5, t4, a6
	li t5, 0x15ba2be0
	sc.d a3, t5, (a5)
	# SC may fail due to pause voiding forward progress
SID_ZHP_03_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZHP_04a_M)
SID_ZHP_04a_M:
	li sp, SID_ZHP_04a_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Pause after CSR serialization
	pause
	csrr s9, time
	pause
	csrrwi t2, frm, 0
	pause
	# Pause executed after CSR serialization
SID_ZHP_04a_M_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZHP_04b)
SID_ZHP_04b:
	li sp, SID_ZHP_04b_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Pause after fence
	fence
	pause
	# Pause executed after fence
SID_ZHP_04b_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZHP_04c)
SID_ZHP_04c:
	li sp, SID_ZHP_04c_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Pause after random instruction
	pause
	li s6, 0xcdbd47d6
	li a7, 0xb91751dd
	divuw s9, s6, a7
	pause
	li s5, mem1
	li s10, 0xdc38f51c
	sw s10, 0(s5)
	pause
	li a4, mem1
	lwu t2, 0(a4)
	pause
	# Pause executed after random instruction
SID_ZHP_04c_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZHP_05a)
SID_ZHP_05a:
	li sp, SID_ZHP_05a_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# WFI followed by pause - timeout case
	nop
	wfi
	pause
	# Pause executed after WFI timeout
SID_ZHP_05a_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZHP_05c)
SID_ZHP_05c:
	li sp, SID_ZHP_05c_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Pause followed by WFI
	nop
	pause
	wfi
	# WFI executed after Pause
SID_ZHP_05c_passed:
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
;#random_addr(name=mem0,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem0
.section .mem0, "aw"

.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem1
.section .mem1, "aw"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZHP_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_01_stack, phys_name=SID_ZHP_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_01_stack
.section .SID_ZHP_01_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZHP_03_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_03_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_03_stack, phys_name=SID_ZHP_03_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_03_stack
.section .SID_ZHP_03_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZHP_04a_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_04a_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_04a_M_stack, phys_name=SID_ZHP_04a_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_04a_M_stack
.section .SID_ZHP_04a_M_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZHP_04b_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_04b_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_04b_stack, phys_name=SID_ZHP_04b_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_04b_stack
.section .SID_ZHP_04b_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZHP_04c_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_04c_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_04c_stack, phys_name=SID_ZHP_04c_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_04c_stack
.section .SID_ZHP_04c_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZHP_05a_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_05a_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_05a_stack, phys_name=SID_ZHP_05a_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_05a_stack
.section .SID_ZHP_05a_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZHP_05c_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_05c_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_05c_stack, phys_name=SID_ZHP_05c_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_05c_stack
.section .SID_ZHP_05c_stack, "aw"

.dword 0xc001c0de
