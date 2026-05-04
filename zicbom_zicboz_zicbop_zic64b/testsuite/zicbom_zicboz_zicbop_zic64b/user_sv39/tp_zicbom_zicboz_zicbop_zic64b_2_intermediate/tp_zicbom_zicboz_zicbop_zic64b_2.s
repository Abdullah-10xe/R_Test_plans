;#test.name       zicbom_zicboz_zicbop_zic64b
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
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

;#discrete_test(test=SID_ZICBO_002)
SID_ZICBO_002:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICBO_002_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure senvcfg.CBIE = 00
	# Clear CBIE bits
	li t2, 48
	;#csr_rw(senvcfg, clear, false, false)
	# Execute cbo.inval instruction
	# Check for illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, mem1
	li t3, 0
	add a6, t5, t3
fault_label_1:
	cbo.inval (a6)
	li a5, failed_addr
	ld t4, 0(a5)
	jr t4
	# assert_exception block end
excp_return_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_002_passed:
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
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a3, mem2
	li s11, 0
	add s0, a3, s11
fault_label_2:
	cbo.clean (s0)
	li t3, failed_addr
	ld t2, 0(t3)
	jr t2
	# assert_exception block end
excp_return_label_2:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a4, mem2
	li s7, 0
	add s11, a4, s7
fault_label_3:
	cbo.flush (s11)
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
	# assert_exception block end
excp_return_label_3:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_ZICBO_003_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_004)
SID_ZICBO_004:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICBO_004_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure senvcfg.CBCFE = 00
	# Clear CBCFE bits
	li t2, 64
	;#csr_rw(senvcfg, clear, false, false)
	# Execute cbo.clean and cbo.flush instructions
	# Check for illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, mem3
	li s7, 0
	add s2, t5, s7
fault_label_4:
	cbo.clean (s2)
	li s10, failed_addr
	ld s6, 0(s10)
	jr s6
	# assert_exception block end
excp_return_label_4:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s11, mem3
	li a5, 0
	add s0, s11, a5
fault_label_5:
	cbo.flush (s0)
	li t1, failed_addr
	ld s8, 0(t1)
	jr s8
	# assert_exception block end
excp_return_label_5:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_004_passed:
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
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s5, mem4
	li a7, 0
	add s4, s5, a7
fault_label_6:
	cbo.zero (s4)
	li s7, failed_addr
	ld s11, 0(s7)
	jr s11
	# assert_exception block end
excp_return_label_6:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_ZICBO_005_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_006)
SID_ZICBO_006:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICBO_006_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure senvcfg.CBZE = 00
	# Clear CBZE bit
	li t2, 128
	;#csr_rw(senvcfg, clear, false, false)
	# Execute cbo.zero instruction
	# Check for illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a2, mem5
	li s9, 0
	add a3, a2, s9
fault_label_7:
	cbo.zero (a3)
	li a6, failed_addr
	ld a7, 0(a6)
	jr a7
	# assert_exception block end
excp_return_label_7:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_006_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICBO_013)
SID_ZICBO_013:
	li sp, SID_ZICBO_013_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute prefetch instructions (these should not trap)
	li t1, mem6
	li a2, 0
	add s2, t1, a2
	prefetch.i 0(s2)
	li a3, mem6
	li a1, 0
	add s11, a3, a1
	prefetch.r 0(s11)
	li t3, mem6
	li s6, 0
	add t5, t3, s6
	prefetch.w 0(t5)
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
	li s11, mem7
	li s7, 0x7e0
	add a1, s11, s7
	prefetch.i 0(a1)
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
	li s4, mem8
	li s3, 0
	add t6, s4, s3
	prefetch.r 0(t6)
	li s8, mem8
	li t6, 0x7e0
	add a7, s8, t6
	prefetch.r 0(a7)
	# prefetch_r_2 = MemAccess(op="prefetch.r", memory=mem, offset=0x1F)
	# NOTE: compilers will fail out on imm[11:0] !=0, so unfortunately this test is not executable
	li a7, mem8
	li t3, 0
	add s2, a7, t3
	prefetch.w 0(s2)
	li s5, mem8
	li s10, 0x7e0
	add a1, s5, s10
	prefetch.w 0(a1)
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
	li t2, 128
	;#csr_rw(senvcfg, set, false, false)
	# Set CBZE bit
	li t2, 128
	;#csr_rw(henvcfg, set, false, false)
	# Execute cbo.zero instruction
	li t6, mem9
	li s3, 0
	add t5, t6, s3
	cbo.zero (t5)
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
	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
	# Set up memory region
	# Store data to memory
	li s6, mem10
	li a5, 0x761ebfd5
	fcvt.d.wu ft10, a5
	fsw ft10, 0(s6)
	# Execute cbo.zero
	li s8, mem10
	li s10, 0
	add s11, s8, s10
	cbo.zero (s11)
	# Read back and verify zeros
	li s11, mem10
	lw s3, 0(s11)
	beq s3, s3, pass_label_0
	li s6, failed_addr
	ld s9, 0(s6)
	jr s9
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
	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
	# Set up memory regions for aliasing
	# Store data to VA1
	li s9, mem11
	li t6, 0x59cc60b4
	sw t6, 0(s9)
	# Execute cbo.zero to VA1
	li s8, mem11
	li s9, 0
	add s5, s8, s9
	cbo.zero (s5)
	# Read back from both VAs and verify zeros
	li s7, mem11
	lw t6, 0(s7)
	li a4, mem12
	lw s2, 0(a4)
	beq t6, t6, pass_label_1
	li s7, failed_addr
	ld a2, 0(s7)
	jr a2
pass_label_1:
	beq s2, s2, pass_label_2
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
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
	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
	# Set up memory regions for aliasing
	# Same physical address
	# Same physical address, different VA
	# Store data to memory
	# Unaligned offset
	li a6, mem13
	li t5, 0x4f3f877a
	sw t5, 0x1(a6)
	# Execute cbo.zero with unaligned address
	# Unaligned address
	li s8, mem13
	li s10, 0
	add s9, s8, s10
	cbo.zero (s9)
	# Read back and verify zeros (should be aligned to cache block boundary)
	li s11, mem13
	lw a6, 0(s11)
	li t2, mem14
	lw t6, 0(t2)
	beq a6, a6, pass_label_3
	li s5, failed_addr
	ld a7, 0(s5)
	jr a7
pass_label_3:
	beq t6, t6, pass_label_4
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
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

;#discrete_test(test=SID_ZICBO_022)
SID_ZICBO_022:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_ZICBO_022_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
	# Set up memory region with restricted access
	# No write permission
	# FIXME: add pmp configuratoin to create access fault
	# # Execute cbo.zero instruction
	# cbo_zero = MemAccess(op="cbo.zero", memory=mem)
	# # Check for store page fault exception
	# assert_exception = AssertException(cause=ExceptionCause.STORE_AMO_ACCESS_FAULT, code=[cbo_zero])
	# Execute reverse cbo.zero instruction
	# Check for store page fault exception
	OS_SETUP_CHECK_EXCP 0xf, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s6, mem15
	li s8, 0
	add s2, s6, s8
fault_label_8:
	cbo.zero (s2)
	li t6, failed_addr
	ld t4, 0(t6)
	jr t4
	# assert_exception block end
excp_return_label_8:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICBO_022_passed:
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
	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
	li a3, mem16
	li t6, 0
	add a0, a3, t6
	cbo.flush (a0)
	li s0, mem16
	li t3, 0
	add t2, s0, t3
	ld s1, 0(t2)
	li s3, mem16
	li a3, 0
	add s2, s3, a3
	cbo.clean (s2)
	li t2, mem16
	li a4, 0
	add t2, t2, a4
	li t6, 0xe85bfce0
	sw t6, 0(t2)
	li a6, mem16
	li s7, 0
	add s6, a6, s7
	cbo.inval (s6)
	li s5, mem16
	li a1, 0
	add t3, s5, a1
	lb s6, 0(t3)
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
	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
	li s2, mem17
	li s3, 0
	add a2, s2, s3
	lr.w a5, (a2)
	# Execute CMO between LR and SC
	# FIXME: add random cmo operation after LR and before SC
	li t2, mem17
	li t1, 0
	add a0, t2, t1
	cbo.flush (a0)
	# Execute SC (Store Conditional) - should succeed or fail based on reservation
	li a3, mem17
	li a1, 0
	add s0, a3, a1
	li a4, 0xe8a35b4
	sc.w a1, a4, (s0)
	# Verify the result
	li s1, mem17
	lb t4, 0(s1)
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
	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
	# Set up memory region
	# 1. Store to VA non-zero value
	li s0, mem18
	li t1, 0xb105d841
	sh t1, 0(s0)
	li s4, mem18
	li t4, 0x7ee4fd
	sd t4, 0x20(s4)
	li t6, mem18
	li s4, 0x62b47207
	sd s4, 0x38(t6)
	# 2. Store to VA+64 non-zero value
	li t4, mem18
	li a2, 0x96e6bc50
	fcvt.d.wu fa0, a2
	fsw fa0, 0x40(t4)
	li s5, mem18
	li s11, 0xb0c9961
	sd s11, 0x60(s5)
	li s1, mem18
	li s6, 0xcb4deeef
	fcvt.d.w fa6, s6
	fsd fa6, 0x78(s1)
	# 3. CBO.ZERO to VA
	li t1, mem18
	li s1, 0
	add a2, t1, s1
	cbo.zero (a2)
	# 4. Verify VA to VA+63 == 0
	# Check multiple locations within the cache line to ensure all bytes are zeroed
	li t1, 0
	li a1, mem18
	ld s7, 0(a1)
	beq s7, t1, pass_label_5
	li s7, failed_addr
	ld t5, 0(s7)
	jr t5
pass_label_5:
	li s6, mem18
	ld s7, 0x20(s6)
	beq s7, t1, pass_label_6
	li a6, failed_addr
	ld t4, 0(a6)
	jr t4
pass_label_6:
	li s8, mem18
	ld a4, 0x38(s8)
	beq a4, t1, pass_label_7
	li a6, failed_addr
	ld t4, 0(a6)
	jr t4
pass_label_7:
	# 5. Verify VA+64 is non-zero
	li s0, mem18
	ld a7, 0x40(s0)
	bne a7, t1, pass_label_8
	li a0, failed_addr
	ld a1, 0(a0)
	jr a1
pass_label_8:
	li s9, mem18
	ld s8, 0x60(s9)
	bne s8, t1, pass_label_9
	li t4, failed_addr
	ld t4, 0(t4)
	jr t4
pass_label_9:
	li a2, mem18
	ld a4, 0x78(a2)
	bne a4, t1, pass_label_10
	li s0, failed_addr
	ld s11, 0(s0)
	jr s11
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

;#random_addr(name=mem15,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem15_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem15, phys_name=mem15_phys, pagesize=['4kb'], v=0, r=1, w=0, x=0)
;#init_memory @mem15
.dword 0xc001c0de

;#random_addr(name=mem16,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem16_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem16, phys_name=mem16_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem16
.dword 0xc001c0de

;#random_addr(name=mem17,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem17_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem17, phys_name=mem17_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem17
.dword 0xc001c0de

;#random_addr(name=mem18,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem18_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem18, phys_name=mem18_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem18
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

;#random_addr(name=SID_ZICBO_002_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_002_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_002_stack, phys_name=SID_ZICBO_002_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_002_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_003_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_003_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_003_stack, phys_name=SID_ZICBO_003_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_003_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_004_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_004_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_004_stack, phys_name=SID_ZICBO_004_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_004_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_005_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_005_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_005_stack, phys_name=SID_ZICBO_005_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_005_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_006_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_006_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_006_stack, phys_name=SID_ZICBO_006_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_006_stack
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

;#random_addr(name=SID_ZICBO_022_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_022_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_022_stack, phys_name=SID_ZICBO_022_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_022_stack
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
