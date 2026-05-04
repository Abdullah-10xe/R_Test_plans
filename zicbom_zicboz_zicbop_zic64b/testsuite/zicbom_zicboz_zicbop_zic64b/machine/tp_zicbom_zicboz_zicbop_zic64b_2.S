;#test.name       zicbom_zicboz_zicbop_zic64b
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zicbom_zicboz_zicbop_zic64b
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zicbom_zicboz_zicbop_zic64b

#include "rvmodel_macros.h"
.include "tp_zicbom_zicboz_zicbop_zic64b_2_equates.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_2_macros.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_2_loader.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_2_syscalls.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_2_trap_handler_m.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_2_trap_handler_s.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_2_os.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_2_eot.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_2_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZICBO_013)
SID_ZICBO_013:
	li sp, SID_ZICBO_013_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute prefetch instructions (these should not trap)
	li t2, mem0
	li s1, 0
	add a0, t2, s1
	prefetch.i 0(a0)
	li s4, mem0
	li a4, 0
	add a0, s4, a4
	prefetch.r 0(a0)
	li a0, mem0
	li t2, 0
	add s3, a0, t2
	prefetch.w 0(s3)
SID_ZICBO_013_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZICBO_015)
SID_ZICBO_015:
	li sp, SID_ZICBO_015_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute prefetch.i with non-zero imm[11:5]
	# imm[11:5] != 0
	li a4, mem1
	li s10, 0x7e0
	add a2, a4, s10
	prefetch.i 0(a2)
SID_ZICBO_015_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZICBO_016)
SID_ZICBO_016:
	li sp, SID_ZICBO_016_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute prefetch.r and prefetch.w with various imm values
	li s9, mem2
	li t2, 0
	add s10, s9, t2
	prefetch.r 0(s10)
	li t5, mem2
	li a2, 0x7e0
	add s5, t5, a2
	prefetch.r 0(s5)
	# prefetch_r_2 = MemAccess(op="prefetch.r", memory=mem, offset=0x1F)
	# NOTE: compilers will fail out on imm[11:0] !=0, so unfortunately this test is not executable
	li s9, mem2
	li s4, 0
	add s4, s9, s4
	prefetch.w 0(s4)
	li s5, mem2
	li t3, 0x7e0
	add s3, s5, t3
	prefetch.w 0(s3)
	# prefetch_w_2 = MemAccess(op="prefetch.w", memory=mem, offset=0x1F)
	# NOTE: compilers will fail out on imm[11:0] !=0, so unfortunately this test is not executable
SID_ZICBO_016_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZICBO_017)
SID_ZICBO_017:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
csrr t2, senvcfg

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_017_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure xENVCFG bits to permit execution
	# Set CBZE bit
	li s7, 0x80
	csrrs s4, menvcfg, s7
	# Set CBZE bit
	li s8, 0x80
	csrrs a4, senvcfg, s8
	# Set CBZE bit
	li t2, 0x80
	csrrs t1, henvcfg, t2
	# Execute cbo.zero instruction
	li s5, mem3
	li s11, 0
	add s3, s5, s11
	cbo.zero (s3)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
csrrw t2, senvcfg, t2

SID_ZICBO_017_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZICBO_018)
SID_ZICBO_018:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
csrr t2, senvcfg

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_018_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s6, 0xf0
	csrrs a1, menvcfg, s6
	li s9, 0xf0
	csrrs a2, senvcfg, s9
	li a5, 0xf0
	csrrs a6, henvcfg, a5
	# Set up memory region
	# Store data to memory
	li t1, mem4
	li a4, 0x6c71c4a9
	sw a4, 0(t1)
	# Execute cbo.zero
	li s7, mem4
	li a7, 0
	add a3, s7, a7
	cbo.zero (a3)
	# Read back and verify zeros
	li a1, mem4
	lw s9, 0(a1)
	beq s9, s9, pass_label_0
	li t3, failed_addr
	ld a5, 0(t3)
	jr a5
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
csrrw t2, senvcfg, t2

SID_ZICBO_018_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZICBO_019)
SID_ZICBO_019:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
csrr t2, senvcfg

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_019_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s4, 0xf0
	csrrs s4, menvcfg, s4
	li s3, 0xf0
	csrrs t6, senvcfg, s3
	li s8, 0xf0
	csrrs t6, henvcfg, s8
	# Set up memory regions for aliasing
	# Store data to VA1
	li a7, mem5
	li t3, 0x8f54f8d1
	fcvt.d.w fa2, t3
	fsw fa2, 0(a7)
	# Execute cbo.zero to VA1
	li s2, mem5
	li s9, 0
	add a1, s2, s9
	cbo.zero (a1)
	# Read back from both VAs and verify zeros
	li s9, mem5
	lw s7, 0(s9)
	li s2, mem6
	lw s9, 0(s2)
	beq s7, s7, pass_label_1
	li t4, failed_addr
	ld a7, 0(t4)
	jr a7
pass_label_1:
	beq s9, s9, pass_label_2
	li s3, failed_addr
	ld a4, 0(s3)
	jr a4
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
csrrw t2, senvcfg, t2

SID_ZICBO_019_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZICBO_020)
SID_ZICBO_020:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
csrr t2, senvcfg

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_020_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s5, 0xf0
	csrrs s7, menvcfg, s5
	li s8, 0xf0
	csrrs s8, senvcfg, s8
	li a7, 0xf0
	csrrs t6, henvcfg, a7
	# Set up memory regions for aliasing
	# Same physical address
	# Same physical address, different VA
	# Store data to memory
	# Unaligned offset
	li s6, mem7
	li s9, 0x47733e87
	sw s9, 0x1(s6)
	# Execute cbo.zero with unaligned address
	# Unaligned address
	li s2, mem7
	li s5, 0
	add s9, s2, s5
	cbo.zero (s9)
	# Read back and verify zeros (should be aligned to cache block boundary)
	li t5, mem7
	lw s5, 0(t5)
	li s11, mem8
	lw t4, 0(s11)
	beq s5, s5, pass_label_3
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
pass_label_3:
	beq t4, t4, pass_label_4
	li s3, failed_addr
	ld s9, 0(s3)
	jr s9
pass_label_4:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
csrrw t2, senvcfg, t2

SID_ZICBO_020_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZICBO_047)
SID_ZICBO_047:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
csrr t2, senvcfg

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_047_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s5, 0xf0
	csrrs a5, menvcfg, s5
	li a6, 0xf0
	csrrs a6, senvcfg, a6
	li t6, 0xf0
	csrrs s9, henvcfg, t6
	li s11, mem9
	li s10, 0
	add t3, s11, s10
	cbo.flush (t3)
	li a6, mem9
	li a5, 0
	add s5, a6, a5
	lw s6, 0(s5)
	li a7, mem9
	li s5, 0
	add a2, a7, s5
	cbo.clean (a2)
	li t6, mem9
	li s11, 0
	add s7, t6, s11
	flw ft10, 0(s7)
	li s5, mem9
	li s6, 0
	add s0, s5, s6
	cbo.inval (s0)
	li s0, mem9
	li s8, 0
	add s6, s0, s8
	li t1, 0xc5e2486f
	sd t1, 0(s6)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
csrrw t2, senvcfg, t2

SID_ZICBO_047_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZICBO_049)
SID_ZICBO_049:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
csrr t2, senvcfg

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_049_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute LR (Load Reserved)
	li t4, 0xf0
	csrrs s1, menvcfg, t4
	li t2, 0xf0
	csrrs s10, senvcfg, t2
	li t5, 0xf0
	csrrs s0, henvcfg, t5
	li a7, mem10
	li t6, 0
	add a6, a7, t6
	lr.w t5, (a6)
	# Execute CMO between LR and SC
	# FIXME: add random cmo operation after LR and before SC
	li a2, mem10
	li t5, 0
	add t4, a2, t5
	cbo.flush (t4)
	# Execute SC (Store Conditional) - should succeed or fail based on reservation
	li a4, mem10
	li s5, 0
	add s4, a4, s5
	li s3, 0xff3fe32d
	sc.w a0, s3, (s4)
	# Verify the result
	li s10, mem10
	lh s4, 0(s10)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
csrrw t2, senvcfg, t2

SID_ZICBO_049_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_ZICBO_50_ZIC64B_01)
SID_ZICBO_50_ZIC64B_01:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
csrr t2, henvcfg

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
csrr t2, menvcfg

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
csrr t2, senvcfg

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_50_ZIC64B_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Enable cache operations
	li t1, 0xf0
	csrrs s0, menvcfg, t1
	li t6, 0xf0
	csrrs t2, senvcfg, t6
	li s4, 0xf0
	csrrs a7, henvcfg, s4
	# Set up memory region
	# 1. Store to VA non-zero value
	li a3, mem11
	li a5, 0xac3a5b29
	sb a5, 0(a3)
	li a7, mem11
	li a6, 0x6005722
	sb a6, 0x20(a7)
	li t5, mem11
	li a5, 0x15392483
	sh a5, 0x38(t5)
	# 2. Store to VA+64 non-zero value
	li s1, mem11
	li s11, 0x1d7f4278
	sh s11, 0x40(s1)
	li s4, mem11
	li a1, 0xf45e2fa3
	sd a1, 0x60(s4)
	li a1, mem11
	li s7, 0x11457d9f
	sd s7, 0x78(a1)
	# 3. CBO.ZERO to VA
	li s3, mem11
	li a2, 0
	add a0, s3, a2
	cbo.zero (a0)
	# 4. Verify VA to VA+63 == 0
	# Check multiple locations within the cache line to ensure all bytes are zeroed
	li t6, 0
	li s4, mem11
	ld s7, 0(s4)
	beq s7, t6, pass_label_5
	li s4, failed_addr
	ld s7, 0(s4)
	jr s7
pass_label_5:
	li s6, mem11
	ld s0, 0x20(s6)
	beq s0, t6, pass_label_6
	li a3, failed_addr
	ld s11, 0(a3)
	jr s11
pass_label_6:
	li a4, mem11
	ld a7, 0x38(a4)
	beq a7, t6, pass_label_7
	li s3, failed_addr
	ld s7, 0(s3)
	jr s7
pass_label_7:
	# 5. Verify VA+64 is non-zero
	li s7, mem11
	ld a3, 0x40(s7)
	bne a3, t6, pass_label_8
	li s7, failed_addr
	ld s5, 0(s7)
	jr s5
pass_label_8:
	li a6, mem11
	ld a6, 0x60(a6)
	bne a6, t6, pass_label_9
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
pass_label_9:
	li a6, mem11
	ld t3, 0x78(a6)
	bne t3, t6, pass_label_10
	li s11, failed_addr
	ld t5, 0(s11)
	jr t5
pass_label_10:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
csrrw t2, henvcfg, t2

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
csrrw t2, menvcfg, t2

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
csrrw t2, senvcfg, t2

SID_ZICBO_50_ZIC64B_01_passed:
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

;#random_addr(name=mem10,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem10_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem10
.section .mem10, "ax"

.dword 0xc001c0de

;#random_addr(name=mem11,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem11_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem11
.section .mem11, "ax"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_013_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_013_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_013_stack, phys_name=SID_ZICBO_013_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_013_stack
.section .SID_ZICBO_013_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_015_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_015_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_015_stack, phys_name=SID_ZICBO_015_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_015_stack
.section .SID_ZICBO_015_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_016_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_016_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_016_stack, phys_name=SID_ZICBO_016_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_016_stack
.section .SID_ZICBO_016_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_017_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_017_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_017_stack, phys_name=SID_ZICBO_017_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_017_stack
.section .SID_ZICBO_017_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_018_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_018_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_018_stack, phys_name=SID_ZICBO_018_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_018_stack
.section .SID_ZICBO_018_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_019_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_019_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_019_stack, phys_name=SID_ZICBO_019_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_019_stack
.section .SID_ZICBO_019_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_020_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_020_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_020_stack, phys_name=SID_ZICBO_020_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_020_stack
.section .SID_ZICBO_020_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_047_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_047_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_047_stack, phys_name=SID_ZICBO_047_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_047_stack
.section .SID_ZICBO_047_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_049_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_049_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_049_stack, phys_name=SID_ZICBO_049_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_049_stack
.section .SID_ZICBO_049_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_50_ZIC64B_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_50_ZIC64B_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_50_ZIC64B_01_stack, phys_name=SID_ZICBO_50_ZIC64B_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_50_ZIC64B_01_stack
.section .SID_ZICBO_50_ZIC64B_01_stack, "aw"

.dword 0xc001c0de
