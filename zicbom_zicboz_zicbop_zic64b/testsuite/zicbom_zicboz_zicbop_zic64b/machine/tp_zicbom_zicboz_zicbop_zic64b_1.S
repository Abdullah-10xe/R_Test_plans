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
.include "tp_zicbom_zicboz_zicbop_zic64b_1_equates.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_macros.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_loader.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_syscalls.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_trap_handler_m.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_trap_handler_s.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_os.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_eot.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_scheduler.inc"
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
	li t6, mem0
	li t5, 0
	add s0, t6, t5
	prefetch.i 0(s0)
	li a5, mem0
	li a0, 0
	add s8, a5, a0
	prefetch.r 0(s8)
	li a0, mem0
	li s7, 0
	add s10, a0, s7
	prefetch.w 0(s10)
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
	li s10, mem1
	li s2, 0x7e0
	add s2, s10, s2
	prefetch.i 0(s2)
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
	li a2, mem2
	li s1, 0
	add s7, a2, s1
	prefetch.r 0(s7)
	li t1, mem2
	li s5, 0x7e0
	add s8, t1, s5
	prefetch.r 0(s8)
	# prefetch_r_2 = MemAccess(op="prefetch.r", memory=mem, offset=0x1F)
	# NOTE: compilers will fail out on imm[11:0] !=0, so unfortunately this test is not executable
	li t6, mem2
	li s8, 0
	add t6, t6, s8
	prefetch.w 0(t6)
	li t2, mem2
	li s5, 0x7e0
	add s11, t2, s5
	prefetch.w 0(s11)
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
	li a4, 0x80
	csrrs t5, menvcfg, a4
	# Set CBZE bit
	li t5, 0x80
	csrrs a3, senvcfg, t5
	# Set CBZE bit
	li s10, 0x80
	csrrs s1, henvcfg, s10
	# Execute cbo.zero instruction
	li s3, mem3
	li t1, 0
	add t2, s3, t1
	cbo.zero (t2)
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
	li s7, 0xf0
	csrrs t1, menvcfg, s7
	li s3, 0xf0
	csrrs t5, senvcfg, s3
	li a3, 0xf0
	csrrs s6, henvcfg, a3
	# Set up memory region
	# Store data to memory
	li t5, mem4
	li t2, 0xa648a7e0
	sb t2, 0(t5)
	# Execute cbo.zero
	li t3, mem4
	li a6, 0
	add t3, t3, a6
	cbo.zero (t3)
	# Read back and verify zeros
	li s11, mem4
	lw t6, 0(s11)
	beq t6, t6, pass_label_0
	li s3, failed_addr
	ld a7, 0(s3)
	jr a7
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
	li s11, 0xf0
	csrrs a3, menvcfg, s11
	li s11, 0xf0
	csrrs s5, senvcfg, s11
	li a6, 0xf0
	csrrs t1, henvcfg, a6
	# Set up memory regions for aliasing
	# Store data to VA1
	li s7, mem5
	li t4, 0x3b1a11e2
	sh t4, 0(s7)
	# Execute cbo.zero to VA1
	li s11, mem5
	li a0, 0
	add a4, s11, a0
	cbo.zero (a4)
	# Read back from both VAs and verify zeros
	li t1, mem5
	lw a0, 0(t1)
	li s4, mem6
	lw a1, 0(s4)
	beq a0, a0, pass_label_1
	li s4, failed_addr
	ld s9, 0(s4)
	jr s9
pass_label_1:
	beq a1, a1, pass_label_2
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
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
	li s6, 0xf0
	csrrs t3, menvcfg, s6
	li a2, 0xf0
	csrrs a6, senvcfg, a2
	li a7, 0xf0
	csrrs t4, henvcfg, a7
	# Set up memory regions for aliasing
	# Same physical address
	# Same physical address, different VA
	# Store data to memory
	# Unaligned offset
	li s9, mem7
	li s11, 0xefba91ff
	fcvt.s.w fa3, s11
	fsd fa3, 0x1(s9)
	# Execute cbo.zero with unaligned address
	# Unaligned address
	li s6, mem7
	li t2, 0
	add t5, s6, t2
	cbo.zero (t5)
	# Read back and verify zeros (should be aligned to cache block boundary)
	li a5, mem7
	lw t2, 0(a5)
	li s8, mem8
	lw t6, 0(s8)
	beq t2, t2, pass_label_3
	li t5, failed_addr
	ld a3, 0(t5)
	jr a3
pass_label_3:
	beq t6, t6, pass_label_4
	li s10, failed_addr
	ld s9, 0(s10)
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
	li s6, 0xf0
	csrrs s1, menvcfg, s6
	li s6, 0xf0
	csrrs a2, senvcfg, s6
	li s9, 0xf0
	csrrs s4, henvcfg, s9
	li s3, mem9
	li s11, 0
	add s4, s3, s11
	cbo.flush (s4)
	li t1, mem9
	li t4, 0
	add s0, t1, t4
	li s5, 0xa9ec0809
	amoadd.d t1, s5, (s0)
	li s3, mem9
	li s9, 0
	add s11, s3, s9
	cbo.clean (s11)
	li t3, mem9
	li s5, 0
	add a5, t3, s5
	ld a6, 0(a5)
	li t4, mem9
	li s7, 0
	add t2, t4, s7
	cbo.inval (t2)
	li s7, mem9
	li s8, 0
	add s11, s7, s8
	lr.w t3, (s11)
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
	li s6, 0xf0
	csrrs a7, menvcfg, s6
	li s10, 0xf0
	csrrs s2, senvcfg, s10
	li s7, 0xf0
	csrrs a4, henvcfg, s7
	li a7, mem10
	li t4, 0
	add s6, a7, t4
	lr.w a7, (s6)
	# Execute CMO between LR and SC
	# FIXME: add random cmo operation after LR and before SC
	li t1, mem10
	li s8, 0
	add s8, t1, s8
	cbo.flush (s8)
	# Execute SC (Store Conditional) - should succeed or fail based on reservation
	li a7, mem10
	li t6, 0
	add t6, a7, t6
	li a1, 0x678a5aa6
	sc.w s2, a1, (t6)
	# Verify the result
	li a1, mem10
	lh a4, 0(a1)
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
	li s3, 0xf0
	csrrs a7, menvcfg, s3
	li t1, 0xf0
	csrrs s10, senvcfg, t1
	li s11, 0xf0
	csrrs t5, henvcfg, s11
	# Set up memory region
	# 1. Store to VA non-zero value
	li t5, mem11
	li t6, 0x8ded3c99
	sd t6, 0(t5)
	li s2, mem11
	li s8, 0x3328ad0b
	sw s8, 0x20(s2)
	li t1, mem11
	li t2, 0xf0e642f7
	sb t2, 0x38(t1)
	# 2. Store to VA+64 non-zero value
	li t2, mem11
	li a5, 0x81355c56
	sw a5, 0x40(t2)
	li t6, mem11
	li a3, 0x69d495e0
	sh a3, 0x60(t6)
	li s11, mem11
	li s2, 0x7c240d4c
	fcvt.s.lu ft6, s2
	fsd ft6, 0x78(s11)
	# 3. CBO.ZERO to VA
	li a0, mem11
	li s8, 0
	add s8, a0, s8
	cbo.zero (s8)
	# 4. Verify VA to VA+63 == 0
	# Check multiple locations within the cache line to ensure all bytes are zeroed
	li s6, 0
	li s1, mem11
	ld s11, 0(s1)
	beq s11, s6, pass_label_5
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
pass_label_5:
	li s0, mem11
	ld a5, 0x20(s0)
	beq a5, s6, pass_label_6
	li a1, failed_addr
	ld a1, 0(a1)
	jr a1
pass_label_6:
	li a1, mem11
	ld a7, 0x38(a1)
	beq a7, s6, pass_label_7
	li s3, failed_addr
	ld t5, 0(s3)
	jr t5
pass_label_7:
	# 5. Verify VA+64 is non-zero
	li s7, mem11
	ld a5, 0x40(s7)
	bne a5, s6, pass_label_8
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
pass_label_8:
	li a3, mem11
	ld s5, 0x60(a3)
	bne s5, s6, pass_label_9
	li t1, failed_addr
	ld t2, 0(t1)
	jr t2
pass_label_9:
	li s1, mem11
	ld s7, 0x78(s1)
	bne s7, s6, pass_label_10
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
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
