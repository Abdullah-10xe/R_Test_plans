;#test.name       sstc
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      sstc
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: sstc

#include "rvmodel_macros.h"
.include "tp_sstc_1_equates.inc"
#include "tp_sstc_1_macros.inc"
#include "tp_sstc_1_loader.inc"
#include "tp_sstc_1_syscalls.inc"
#include "tp_sstc_1_trap_handler_m.inc"
#include "tp_sstc_1_trap_handler_s.inc"
#include "tp_sstc_1_os.inc"
#include "tp_sstc_1_eot.inc"
#include "tp_sstc_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSTC_02_M_HS)
SID_SSTC_02_M_HS:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
csrr t2, hcounteren

	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
csrr t2, mcounteren

	sd t2, 0x8(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x10(sp)
	;#csr_rw(scounteren, read, false, true)
csrr t2, scounteren

	sd t2, 0x18(sp)
	li sp, SID_SSTC_02_M_HS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=1
	li t6, 0x8000000000000000
	csrrs t5, menvcfg, t6
	# Set mcounteren.tm=1
	csrrsi s0, mcounteren, 0x2
	# Set hcounteren.tm=0
	csrrci a5, hcounteren, 0x2
	# Try accessing stimecmp - should be ok
	csrr a0, stimecmp
	# Try accessing time - should be ok
	csrr s8, time
	# set scounteren.tm = 1
	csrrsi a0, scounteren, 0x2
	# Try accessing stimecmp - should be ok
	csrr s7, stimecmp
	# Try accessing time - should be ok
	csrr s10, time
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
csrrw t2, hcounteren, t2

	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
csrrw t2, mcounteren, t2

	ld t2, 0x10(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

	ld t2, 0x18(sp)
	;#csr_rw(scounteren, write, false, true)
csrrw t2, scounteren, t2

SID_SSTC_02_M_HS_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSTC_03_NON_U)
SID_SSTC_03_NON_U:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
csrr t2, hcounteren

	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
csrr t2, mcounteren

	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
csrr t2, scounteren

	sd t2, 0x10(sp)
	li sp, SID_SSTC_03_NON_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mcounteren.tm=1
	csrrsi s10, mcounteren, 0x2
	# Set hcounteren.tm=1
	csrrsi s2, hcounteren, 0x2
	# Set scounteren.tm=0
	csrrci s2, scounteren, 0x2
	# Try accessing time in VU mode - should cause virtual instruction exception
	csrr a2, time
	# Set scounteren.tm=0
	csrrsi s1, scounteren, 0x2
	# Try accessing time in U mode - should cause illegal instruction exception
	csrr s8, time
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
csrrw t2, hcounteren, t2

	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
csrrw t2, mcounteren, t2

	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
csrrw t2, scounteren, t2

SID_SSTC_03_NON_U_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSTC_04_M)
SID_SSTC_04_M:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	li sp, SID_SSTC_04_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=0
	li t1, 0x8000000000000000
	csrrc s3, menvcfg, t1
	# Try accessing stimecmp - should be okay as we are in M mode
	csrr s5, stimecmp
	li t3, 0x8000000000000000
	csrrs s5, henvcfg, t3
	csrr t3, stimecmp
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

SID_SSTC_04_M_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSTC_05_M_HS)
SID_SSTC_05_M_HS:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	li sp, SID_SSTC_05_M_HS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=1
	li t1, 0x8000000000000000
	csrrs t4, menvcfg, t1
	# Set henvcfg.STCE=0
	li s5, 0x8000000000000000
	csrrc a5, henvcfg, s5
	# Try accessing vstimecmp - should be okay
	csrr t4, stimecmp
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

SID_SSTC_05_M_HS_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSTC_06)
SID_SSTC_06:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	li sp, SID_SSTC_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=0
	li t6, 0x8000000000000000
	csrrc a3, menvcfg, t6
	# Try to set henvcfg.STCE=1
	li s9, 0x8000000000000000
	csrrs s1, henvcfg, s9
	# Read henvcfg and verify STCE bit is 0
	csrr s2, henvcfg
	li t1, 0x8000000000000000
	and t2, s2, t1
	li s0, 0
	beq t2, s0, pass_label_0
	li s9, failed_addr
	ld t5, 0(s9)
	jr t5
pass_label_0:
	li a0, 0x8000000000000000
	csrrc s10, henvcfg, a0
	csrr s9, henvcfg
	and s3, s9, t1
	li t4, 0
	beq s3, t4, pass_label_1
	li s9, failed_addr
	ld a1, 0(s9)
	jr a1
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

SID_SSTC_06_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSTC_08)
SID_SSTC_08:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	;#csr_rw(mip, read, false, true)
csrr t2, mip

	sd t2, 0x10(sp)
	li sp, SID_SSTC_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=1
	li s6, 0x8000000000000000
	csrrs a3, menvcfg, s6
	# unset hevncfg.STCE
	li s6, 0x8000000000000000
	csrrc s5, henvcfg, s6
	# read mip and verify stip is not set
	csrr s8, mip
	andi s11, s8, 0x20
	# Try to write to mip.stip
	li a4, 0x20
	csrrs s3, mip, a4
	# read mip and verify stip is not set
	csrr a5, mip
	andi s8, a5, 0x20
	# Try to write to mip.stip
	li a6, 0x20
	csrrc t4, mip, a6
	# read mip and verify stip is not set
	csrr s4, mip
	andi t1, s4, 0x20
	beq t1, s11, pass_label_2
	li t6, failed_addr
	ld s3, 0(t6)
	jr s3
pass_label_2:
	beq t1, s8, pass_label_3
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
pass_label_3:
	beq s8, s11, pass_label_4
	li a7, failed_addr
	ld t1, 0(a7)
	jr t1
pass_label_4:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

	ld t2, 0x10(sp)
	;#csr_rw(mip, write, false, true)
csrrw t2, mip, t2

SID_SSTC_08_passed:
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

;#random_addr(name=SID_SSTC_02_M_HS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_02_M_HS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_02_M_HS_stack, phys_name=SID_SSTC_02_M_HS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_02_M_HS_stack
.section .SID_SSTC_02_M_HS_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_03_NON_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_03_NON_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_03_NON_U_stack, phys_name=SID_SSTC_03_NON_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_03_NON_U_stack
.section .SID_SSTC_03_NON_U_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_04_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_04_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_04_M_stack, phys_name=SID_SSTC_04_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_04_M_stack
.section .SID_SSTC_04_M_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_05_M_HS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_05_M_HS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_05_M_HS_stack, phys_name=SID_SSTC_05_M_HS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_05_M_HS_stack
.section .SID_SSTC_05_M_HS_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_06_stack, phys_name=SID_SSTC_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_06_stack
.section .SID_SSTC_06_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_08_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_08_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_08_stack, phys_name=SID_SSTC_08_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_08_stack
.section .SID_SSTC_08_stack, "aw"

.dword 0xc001c0de
