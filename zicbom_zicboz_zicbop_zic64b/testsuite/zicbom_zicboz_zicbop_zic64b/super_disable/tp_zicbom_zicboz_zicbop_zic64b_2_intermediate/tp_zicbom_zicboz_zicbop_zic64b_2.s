;#test.name       zicbom_zicboz_zicbop_zic64b
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zicbom_zicboz_zicbop_zic64b
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zicbom_zicboz_zicbop_zic64b

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_001)
SID_ZICBO_001:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICBO_001_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure menvcfg.CBIE = 00
	# Clear CBIE bits
	li t2, 48
	;#csr_rw(menvcfg, clear, false, false)
	# Execute cbo.inval instruction
	# Check for illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s0, mem0
	li a0, 0
	add a1, s0, a0
fault_label_0:
	cbo.inval (a1)
	li s5, failed_addr
	ld a5, 0(s5)
	jr a5
	# assert_exception block end
excp_return_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_ZICBO_001_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_003)
SID_ZICBO_003:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICBO_003_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure menvcfg.CBCFE = 00
	# Clear CBCFE bits
	li t2, 64
	;#csr_rw(menvcfg, clear, false, false)
	# Execute cbo.clean instruction
	# Execute cbo.flush instruction
	# Check for illegal instruction exception for both
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, mem1
	li t3, 0
	add a6, t5, t3
fault_label_1:
	cbo.clean (a6)
	li a5, failed_addr
	ld t4, 0(a5)
	jr t4
	# assert_exception block end
excp_return_label_1:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a3, mem1
	li t2, 0
	add s0, a3, t2
fault_label_2:
	cbo.flush (s0)
	li t5, failed_addr
	ld t4, 0(t5)
	jr t4
	# assert_exception block end
excp_return_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_ZICBO_003_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_005)
SID_ZICBO_005:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICBO_005_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure menvcfg.CBZE = 00
	# Clear CBZE bit
	li t2, 128
	;#csr_rw(menvcfg, clear, false, false)
	# Execute cbo.zero instruction
	# Check for illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a2, mem2
	li s5, 0
	add t4, a2, s5
fault_label_3:
	cbo.zero (t4)
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_3:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_ZICBO_005_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_013)
SID_ZICBO_013:
	li sp, SID_ZICBO_013_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute prefetch instructions (these should not trap)
	li t4, mem3
	li s6, 0
	add a7, t4, s6
	prefetch.i 0(a7)
	li s9, mem3
	li s5, 0
	add s10, s9, s5
	prefetch.r 0(s10)
	li a4, mem3
	li t2, 0
	add t1, a4, t2
	prefetch.w 0(t1)
SID_ZICBO_013_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_015)
SID_ZICBO_015:
	li sp, SID_ZICBO_015_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute prefetch.i with non-zero imm[11:5]
	# imm[11:5] != 0
	li a7, mem4
	li s5, 0x7e0
	add a6, a7, s5
	prefetch.i 0(a6)
SID_ZICBO_015_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_016)
SID_ZICBO_016:
	li sp, SID_ZICBO_016_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute prefetch.r and prefetch.w with various imm values
	li s2, mem5
	li s4, 0
	add s8, s2, s4
	prefetch.r 0(s8)
	li a1, mem5
	li s11, 0x7e0
	add a2, a1, s11
	prefetch.r 0(a2)
	# prefetch_r_2 = MemAccess(op="prefetch.r", memory=mem, offset=0x1F)
	# NOTE: compilers will fail out on imm[11:0] !=0, so unfortunately this test is not executable
	li a5, mem5
	li a6, 0
	add t1, a5, a6
	prefetch.w 0(t1)
	li a4, mem5
	li s9, 0x7e0
	add a7, a4, s9
	prefetch.w 0(a7)
	# prefetch_w_2 = MemAccess(op="prefetch.w", memory=mem, offset=0x1F)
	# NOTE: compilers will fail out on imm[11:0] !=0, so unfortunately this test is not executable
SID_ZICBO_016_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_017)
SID_ZICBO_017:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_ZICBO_017_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure xENVCFG bits to permit execution
	# Set CBZE bit
	li t2, 128
	;#csr_rw(menvcfg, set, false, false)
	# Set CBZE bit
	li a1, 0x80
	csrrs s8, senvcfg, a1
	# Set CBZE bit
	li s9, 0x80
	csrrs s3, henvcfg, s9
	# Execute cbo.zero instruction
	li s11, mem6
	li a1, 0
	add t4, s11, a1
	cbo.zero (t4)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_017_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_018)
SID_ZICBO_018:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_ZICBO_018_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
	li s5, 0xf0
	csrrs s5, senvcfg, s5
	li s4, 0xf0
	csrrs t2, henvcfg, s4
	# Set up memory region
	# Store data to memory
	li s9, mem7
	li t2, 0xfec3f6b6
	sd t2, 0(s9)
	# Execute cbo.zero
	li s2, mem7
	li t4, 0
	add s3, s2, t4
	cbo.zero (s3)
	# Read back and verify zeros
	li s6, mem7
	lw s11, 0(s6)
	beq s11, s11, pass_label_0
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_018_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_019)
SID_ZICBO_019:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_ZICBO_019_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
	li t5, 0xf0
	csrrs s5, senvcfg, t5
	li t3, 0xf0
	csrrs s8, henvcfg, t3
	# Set up memory regions for aliasing
	# Store data to VA1
	li a4, mem8
	li s9, 0xb714210f
	sw s9, 0(a4)
	# Execute cbo.zero to VA1
	li a6, mem8
	li s11, 0
	add t6, a6, s11
	cbo.zero (t6)
	# Read back from both VAs and verify zeros
	li t2, mem8
	lw t2, 0(t2)
	li s4, mem9
	lw a6, 0(s4)
	beq t2, t2, pass_label_1
	li t4, failed_addr
	ld t5, 0(t4)
	jr t5
pass_label_1:
	beq a6, a6, pass_label_2
	li s6, failed_addr
	ld s11, 0(s6)
	jr s11
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_019_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_020)
SID_ZICBO_020:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_ZICBO_020_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
	li s6, 0xf0
	csrrs t4, senvcfg, s6
	li a4, 0xf0
	csrrs s2, henvcfg, a4
	# Set up memory regions for aliasing
	# Same physical address
	# Same physical address, different VA
	# Store data to memory
	# Unaligned offset
	li s6, mem10
	li a2, 0xeb9ac68b
	fcvt.s.wu ft9, a2
	fsw ft9, 0x1(s6)
	# Execute cbo.zero with unaligned address
	# Unaligned address
	li t6, mem10
	li a7, 0
	add t6, t6, a7
	cbo.zero (t6)
	# Read back and verify zeros (should be aligned to cache block boundary)
	li s11, mem10
	lw s4, 0(s11)
	li s5, mem11
	lw t6, 0(s5)
	beq s4, s4, pass_label_3
	li t4, failed_addr
	ld s2, 0(t4)
	jr s2
pass_label_3:
	beq t6, t6, pass_label_4
	li a4, failed_addr
	ld a2, 0(a4)
	jr a2
pass_label_4:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_020_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_047)
SID_ZICBO_047:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_ZICBO_047_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
	li s7, 0xf0
	csrrs s2, senvcfg, s7
	li t5, 0xf0
	csrrs t3, henvcfg, t5
	li s1, mem12
	li s3, 0
	add t3, s1, s3
	cbo.flush (t3)
	li t1, mem12
	li a5, 0
	add t3, t1, a5
	li a2, 0x681b8f5b
	fcvt.d.wu ft2, a2
	fsw ft2, 0(t3)
	li s2, mem12
	li s3, 0
	add a0, s2, s3
	cbo.clean (a0)
	li s6, mem12
	li t1, 0
	add s5, s6, t1
	flw fs7, 0(s5)
	li a4, mem12
	li s5, 0
	add a5, a4, s5
	cbo.inval (a5)
	li a7, mem12
	li s11, 0
	add s10, a7, s11
	li s9, 0x4fd507a1
	fcvt.s.wu fs7, s9
	fsd fs7, 0(s10)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_047_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_049)
SID_ZICBO_049:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_ZICBO_049_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute LR (Load Reserved)
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
	li t4, 0xf0
	csrrs t2, senvcfg, t4
	li s0, 0xf0
	csrrs s1, henvcfg, s0
	li s4, mem13
	li s5, 0
	add a4, s4, s5
	lr.w a7, (a4)
	# Execute CMO between LR and SC
	# FIXME: add random cmo operation after LR and before SC
	li s1, mem13
	li t1, 0
	add a2, s1, t1
	cbo.flush (a2)
	# Execute SC (Store Conditional) - should succeed or fail based on reservation
	li a5, mem13
	li a3, 0
	add a0, a5, a3
	li a6, 0x6c4454bc
	sc.w a3, a6, (a0)
	# Verify the result
	li a1, mem13
	lb t4, 0(a1)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_049_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_50_ZIC64B_01)
SID_ZICBO_50_ZIC64B_01:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_ZICBO_50_ZIC64B_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Enable cache operations
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
	li s0, 0xf0
	csrrs t1, senvcfg, s0
	li s4, 0xf0
	csrrs t4, henvcfg, s4
	# Set up memory region
	# 1. Store to VA non-zero value
	li t6, mem14
	li s4, 0xb105d841
	sh s4, 0(t6)
	li t4, mem14
	li a2, 0x7ee4fd
	sd a2, 0x20(t4)
	li s3, mem14
	li s6, 0x62b47207
	sd s6, 0x38(s3)
	# 2. Store to VA+64 non-zero value
	li t3, mem14
	li s1, 0x96e6bc50
	fcvt.d.wu fa0, s1
	fsw fa0, 0x40(t3)
	li t5, mem14
	li t6, 0xb0c9961
	sd t6, 0x60(t5)
	li t5, mem14
	li a2, 0xcb4deeef
	fcvt.d.w fs9, a2
	fsd fs9, 0x78(t5)
	# 3. CBO.ZERO to VA
	li a1, mem14
	li s7, 0
	add a1, a1, s7
	cbo.zero (a1)
	# 4. Verify VA to VA+63 == 0
	# Check multiple locations within the cache line to ensure all bytes are zeroed
	li t2, 0
	li t3, mem14
	ld s7, 0(t3)
	beq s7, t2, pass_label_5
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
pass_label_5:
	li s8, mem14
	ld a4, 0x20(s8)
	beq a4, t2, pass_label_6
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
pass_label_6:
	li t1, mem14
	ld a7, 0x38(t1)
	beq a7, t2, pass_label_7
	li a0, failed_addr
	ld t5, 0(a0)
	jr t5
pass_label_7:
	# 5. Verify VA+64 is non-zero
	li s9, mem14
	ld s8, 0x40(s9)
	bne s8, t2, pass_label_8
	li s3, failed_addr
	ld s3, 0(s3)
	jr s3
pass_label_8:
	li a2, mem14
	ld a4, 0x60(a2)
	bne a4, t2, pass_label_9
	li t1, failed_addr
	ld s1, 0(t1)
	jr s1
pass_label_9:
	li s10, mem14
	ld a1, 0x78(s10)
	bne a1, t2, pass_label_10
	li s6, failed_addr
	ld t6, 0(s6)
	jr t6
pass_label_10:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_50_ZIC64B_01_passed:
	;#test_passed()

test_cleanup:
	;#test_passed()
local_test_failed:
	;#test_failed()

.section .data
;#random_addr(name=mem0,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem0
.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem1
.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem2
.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem3
.dword 0xc001c0de

;#random_addr(name=mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem4
.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem5
.dword 0xc001c0de

;#random_addr(name=mem6,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem6_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem6
.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem7_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem7
.dword 0xc001c0de

;#random_addr(name=mem8,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem8_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem8
.dword 0xc001c0de

;#random_addr(name=mem9,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem9_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem9
.dword 0xc001c0de

;#random_addr(name=mem10,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem10_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem10
.dword 0xc001c0de

;#random_addr(name=mem11,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem11_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem11
.dword 0xc001c0de

;#random_addr(name=mem12,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem12_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem12, phys_name=mem12_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem12
.dword 0xc001c0de

;#random_addr(name=mem13,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem13_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem13, phys_name=mem13_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem13
.dword 0xc001c0de

;#random_addr(name=mem14,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem14_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem14, phys_name=mem14_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem14
.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_001_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_001_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_001_stack, phys_name=SID_ZICBO_001_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_001_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_003_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_003_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_003_stack, phys_name=SID_ZICBO_003_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_003_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_005_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_005_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_005_stack, phys_name=SID_ZICBO_005_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_005_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_013_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_013_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_013_stack, phys_name=SID_ZICBO_013_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_013_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_015_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_015_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_015_stack, phys_name=SID_ZICBO_015_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_015_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_016_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_016_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_016_stack, phys_name=SID_ZICBO_016_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_016_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_017_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_017_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_017_stack, phys_name=SID_ZICBO_017_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_017_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_018_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_018_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_018_stack, phys_name=SID_ZICBO_018_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_018_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_019_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_019_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_019_stack, phys_name=SID_ZICBO_019_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_019_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_020_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_020_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_020_stack, phys_name=SID_ZICBO_020_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_020_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_047_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_047_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_047_stack, phys_name=SID_ZICBO_047_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_047_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_049_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_049_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_049_stack, phys_name=SID_ZICBO_049_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_049_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_50_ZIC64B_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_50_ZIC64B_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_50_ZIC64B_01_stack, phys_name=SID_ZICBO_50_ZIC64B_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_50_ZIC64B_01_stack
.dword 0xc001c0de
