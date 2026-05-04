;#test.name       zjpm
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zjpm
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zjpm

#include "rvmodel_macros.h"
.include "tp_zjpm_1_equates.inc"
#include "tp_zjpm_1_macros.inc"
#include "tp_zjpm_1_loader.inc"
#include "tp_zjpm_1_syscalls.inc"
#include "tp_zjpm_1_trap_handler_m.inc"
#include "tp_zjpm_1_trap_handler_s.inc"
#include "tp_zjpm_1_os.inc"
#include "tp_zjpm_1_eot.inc"
#include "tp_zjpm_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_03_menvcfg_pmm_warl)
SID_03_menvcfg_pmm_warl:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0(sp)
	li sp, SID_03_menvcfg_pmm_warl_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test WARL behavior for menvcfg.PMM field
	# Read current menvcfg value
	csrr t6, menvcfg
	# Attempt to write reserved value 01 to menvcfg.PMM[33:32]
	li t5, 0x100000000
	csrrw s0, menvcfg, t5
	# Read back menvcfg to verify WARL behavior
	csrr a5, menvcfg
	srli a0, a5, 0x20
	andi s8, a0, 0x3
	# Verify menvcfg.PMM is not reserved value 01
	li a0, 0x1
	bne s8, a0, pass_label_0
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

SID_03_menvcfg_pmm_warl_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_04_mseccfg_pmm_warl)
SID_04_mseccfg_pmm_warl:
	li sp, tp_csr_storage
	;#csr_rw(mseccfg, read, false, true)
csrr t2, mseccfg

	sd t2, 0(sp)
	li sp, SID_04_mseccfg_pmm_warl_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test WARL behavior for mseccfg.PMM field
	# Read current mseccfg value
	csrr s10, mseccfg
	# Attempt to write reserved value 01 to mseccfg.PMM[33:32]
	li s2, 0x100000000
	csrrw s2, mseccfg, s2
	# Read back mseccfg to verify WARL behavior
	csrr a2, mseccfg
	srli s1, a2, 0x20
	andi s8, s1, 0x3
	# Verify mseccfg.PMM is not reserved value 01
	li t1, 0x1
	bne s8, t1, pass_label_1
	li s6, failed_addr
	ld s9, 0(s6)
	jr s9
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mseccfg, write, false, true)
csrrw t2, mseccfg, t2

SID_04_mseccfg_pmm_warl_passed:
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

;#random_addr(name=SID_03_menvcfg_pmm_warl_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_03_menvcfg_pmm_warl_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_03_menvcfg_pmm_warl_stack, phys_name=SID_03_menvcfg_pmm_warl_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_03_menvcfg_pmm_warl_stack
.section .SID_03_menvcfg_pmm_warl_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_04_mseccfg_pmm_warl_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_04_mseccfg_pmm_warl_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_04_mseccfg_pmm_warl_stack, phys_name=SID_04_mseccfg_pmm_warl_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_04_mseccfg_pmm_warl_stack
.section .SID_04_mseccfg_pmm_warl_stack, "aw"

.dword 0xc001c0de
