;#test.name       sstc
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      sstc
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: sstc

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_SSTC_01)
SID_SSTC_01:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_SSTC_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mcounteren.tm=0
	li t2, 2
	;#csr_rw(mcounteren, clear, false, false)
	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	;#csr_rw(time, read, true, false)
	mv t2, t2
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_0:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	;#csr_rw(stimecmp, read, true, false)
	mv a6, t2
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_1:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	;#csr_rw(vstimecmp, read, true, false)
	mv s9, t2
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_2:
	# set scounteren.tm = 1
	li t2, 2
	;#csr_rw(scounteren, set, false, false)
	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	;#csr_rw(time, read, true, false)
	mv a6, t2
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
	# assert_exception block end
excp_return_label_3:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	;#csr_rw(stimecmp, read, true, false)
	mv a5, t2
	li a2, failed_addr
	ld t6, 0(a2)
	jr t6
	# assert_exception block end
excp_return_label_4:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	;#csr_rw(vstimecmp, read, true, false)
	mv t1, t2
	li t4, failed_addr
	ld s1, 0(t4)
	jr s1
	# assert_exception block end
excp_return_label_5:
	# set hcounteren.tm = 1
	li t2, 2
	;#csr_rw(hcounteren, set, false, false)
	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	;#csr_rw(time, read, true, false)
	mv a5, t2
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_6:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	;#csr_rw(stimecmp, read, true, false)
	mv s0, t2
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_7:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_8:
	;#csr_rw(vstimecmp, read, true, false)
	mv s7, t2
	li s8, failed_addr
	ld s8, 0(s8)
	jr s8
	# assert_exception block end
excp_return_label_8:
	# unset scounteren.tm = 0
	li t2, 2
	;#csr_rw(scounteren, clear, false, false)
	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	;#csr_rw(time, read, true, false)
	mv s5, t2
	li t4, failed_addr
	ld a7, 0(t4)
	jr a7
	# assert_exception block end
excp_return_label_9:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_10:
	;#csr_rw(stimecmp, read, true, false)
	mv s9, t2
	li a0, failed_addr
	ld a3, 0(a0)
	jr a3
	# assert_exception block end
excp_return_label_10:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	;#csr_rw(vstimecmp, read, true, false)
	mv a4, t2
	li a7, failed_addr
	ld s8, 0(a7)
	jr s8
	# assert_exception block end
excp_return_label_11:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
SID_SSTC_01_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_02_HU)
SID_SSTC_02_HU:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_SSTC_02_HU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mcounteren.tm=1
	li t2, 2
	;#csr_rw(mcounteren, set, false, false)
	# Set hcounteren.tm=0
	li t2, 2
	;#csr_rw(hcounteren, clear, false, false)
	# Try accessing stimecmp - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	;#csr_rw(stimecmp, read, true, false)
	mv t1, t2
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_12:
	# Try accessing time - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	;#csr_rw(time, read, true, false)
	mv a4, t2
	li s7, failed_addr
	ld t2, 0(s7)
	jr t2
	# assert_exception block end
excp_return_label_13:
	# set scounteren.tm = 1
	li t2, 2
	;#csr_rw(scounteren, set, false, false)
	# Try accessing stimecmp - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_14:
	;#csr_rw(stimecmp, read, true, false)
	mv s0, t2
	li t3, failed_addr
	ld a7, 0(t3)
	jr a7
	# assert_exception block end
excp_return_label_14:
	# Try accessing time - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_15:
	;#csr_rw(time, read, true, false)
	mv a7, t2
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_15:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
SID_SSTC_02_HU_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_03_U)
SID_SSTC_03_U:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_SSTC_03_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mcounteren.tm=1
	li t2, 2
	;#csr_rw(mcounteren, set, false, false)
	# Set hcounteren.tm=1
	li t2, 2
	;#csr_rw(hcounteren, set, false, false)
	# Set scounteren.tm=0
	li t2, 2
	;#csr_rw(scounteren, clear, false, false)
	# Try accessing time in VU mode - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_16:
	;#csr_rw(time, read, true, false)
	mv s8, t2
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_16:
	# Set scounteren.tm=0
	li t2, 2
	;#csr_rw(scounteren, set, false, false)
	# Try accessing time in U mode - should cause illegal instruction exception
	;#csr_rw(time, read, true, false)
	mv a5, t2
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
SID_SSTC_03_U_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_04_NON_M)
SID_SSTC_04_NON_M:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSTC_04_NON_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=0
	li t2, 9223372036854775808
	;#csr_rw(menvcfg, clear, false, false)
	# Try accessing stimecmp - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_17:
	;#csr_rw(stimecmp, read, true, false)
	mv t3, t2
	li a4, failed_addr
	ld t3, 0(a4)
	jr t3
	# assert_exception block end
excp_return_label_17:
	li t2, 9223372036854775808
	;#csr_rw(henvcfg, set, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_18:
	;#csr_rw(stimecmp, read, true, false)
	mv s6, t2
	li a7, failed_addr
	ld t1, 0(a7)
	jr t1
	# assert_exception block end
excp_return_label_18:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SSTC_04_NON_M_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_06)
SID_SSTC_06:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSTC_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=0
	li t2, 9223372036854775808
	;#csr_rw(menvcfg, clear, false, false)
	# Try to set henvcfg.STCE=1
	li t2, 9223372036854775808
	;#csr_rw(henvcfg, set, false, false)
	# Read henvcfg and verify STCE bit is 0
	;#csr_rw(henvcfg, read, false, false)
	mv s4, t2
	li s10, 0x8000000000000000
	and t4, s4, s10
	li a0, 0
	beq t4, a0, pass_label_0
	li a3, failed_addr
	ld t2, 0(a3)
	jr t2
pass_label_0:
	li t2, 9223372036854775808
	;#csr_rw(henvcfg, clear, false, false)
	;#csr_rw(henvcfg, read, false, false)
	mv a3, t2
	and s2, a3, s10
	li a1, 0
	beq s2, a1, pass_label_1
	li a3, failed_addr
	ld s6, 0(a3)
	jr s6
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SSTC_06_passed:
	;#test_passed()

test_cleanup:
	;#test_passed()
local_test_failed:
	;#test_failed()

.section .data
;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_01_stack, phys_name=SID_SSTC_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_01_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_02_HU_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_02_HU_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_02_HU_stack, phys_name=SID_SSTC_02_HU_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_02_HU_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_03_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_03_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_03_U_stack, phys_name=SID_SSTC_03_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_03_U_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_04_NON_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_04_NON_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_04_NON_M_stack, phys_name=SID_SSTC_04_NON_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_04_NON_M_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_06_stack, phys_name=SID_SSTC_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_06_stack
.dword 0xc001c0de
