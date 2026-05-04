;#test.name       sstc
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv57
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
	csrr t2, time
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_0:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	csrr a6, stimecmp
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_1:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	csrr a1, vstimecmp
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_2:
	# set scounteren.tm = 1
	csrrsi s1, scounteren, 0x2
	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	csrr s6, time
	li s6, failed_addr
	ld a5, 0(s6)
	jr a5
	# assert_exception block end
excp_return_label_3:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	csrr a2, stimecmp
	li t2, failed_addr
	ld t1, 0(t2)
	jr t1
	# assert_exception block end
excp_return_label_4:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	csrr t4, vstimecmp
	li t6, failed_addr
	ld s6, 0(t6)
	jr s6
	# assert_exception block end
excp_return_label_5:
	# set hcounteren.tm = 1
	csrrsi t6, hcounteren, 0x2
	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	csrr s6, time
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_6:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	csrr a1, stimecmp
	li s7, failed_addr
	ld t4, 0(s7)
	jr t4
	# assert_exception block end
excp_return_label_7:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_8:
	csrr t4, vstimecmp
	li s5, failed_addr
	ld t1, 0(s5)
	jr t1
	# assert_exception block end
excp_return_label_8:
	# unset scounteren.tm = 0
	csrrci a7, scounteren, 0x2
	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	csrr s9, time
	li a0, failed_addr
	ld a3, 0(a0)
	jr a3
	# assert_exception block end
excp_return_label_9:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_10:
	csrr a4, stimecmp
	li t1, failed_addr
	ld s7, 0(t1)
	jr s7
	# assert_exception block end
excp_return_label_10:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	csrr s2, vstimecmp
	li t6, failed_addr
	ld a4, 0(t6)
	jr a4
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

;#discrete_test(test=SID_SSTC_02_M_HS)
SID_SSTC_02_M_HS:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x10(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x18(sp)
	li sp, SID_SSTC_02_M_HS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=1
	li t2, 9223372036854775808
	;#csr_rw(menvcfg, set, false, false)
	# Set mcounteren.tm=1
	li t2, 2
	;#csr_rw(mcounteren, set, false, false)
	# Set hcounteren.tm=0
	csrrci a3, hcounteren, 0x2
	# Try accessing stimecmp - should be ok
	csrr s5, stimecmp
	# Try accessing time - should be ok
	csrr t2, time
	# set scounteren.tm = 1
	csrrsi t1, scounteren, 0x2
	# Try accessing stimecmp - should be ok
	csrr s10, stimecmp
	# Try accessing time - should be ok
	csrr a6, time
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x18(sp)
	;#csr_rw(scounteren, write, false, true)
SID_SSTC_02_M_HS_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_03_NON_U)
SID_SSTC_03_NON_U:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_SSTC_03_NON_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mcounteren.tm=1
	li t2, 2
	;#csr_rw(mcounteren, set, false, false)
	# Set hcounteren.tm=1
	csrrsi t6, hcounteren, 0x2
	# Set scounteren.tm=0
	csrrci s5, scounteren, 0x2
	# Try accessing time in VU mode - should cause virtual instruction exception
	csrr s7, time
	# Set scounteren.tm=0
	csrrsi s10, scounteren, 0x2
	# Try accessing time in U mode - should cause illegal instruction exception
	csrr a4, time
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
SID_SSTC_03_NON_U_passed:
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
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	csrr s2, stimecmp
	li a4, failed_addr
	ld t5, 0(a4)
	jr t5
	# assert_exception block end
excp_return_label_12:
	li a5, 0x8000000000000000
	csrrs t5, henvcfg, a5
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	csrr s8, stimecmp
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
	# assert_exception block end
excp_return_label_13:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SSTC_04_NON_M_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_05_M_HS)
SID_SSTC_05_M_HS:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSTC_05_M_HS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=1
	li t2, 9223372036854775808
	;#csr_rw(menvcfg, set, false, false)
	# Set henvcfg.STCE=0
	li s4, 0x8000000000000000
	csrrc s9, henvcfg, s4
	# Try accessing vstimecmp - should be okay
	csrr t4, stimecmp
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SSTC_05_M_HS_passed:
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
	li a0, 0x8000000000000000
	csrrs a3, henvcfg, a0
	# Read henvcfg and verify STCE bit is 0
	csrr t4, henvcfg
	li a0, 0x8000000000000000
	and s2, t4, a0
	li a1, 0
	beq s2, a1, pass_label_0
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
pass_label_0:
	li s2, 0x8000000000000000
	csrrc a1, henvcfg, s2
	csrr t3, henvcfg
	and s9, t3, a0
	li t6, 0
	beq s9, t6, pass_label_1
	li a1, failed_addr
	ld a6, 0(a1)
	jr a6
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

;#random_addr(name=SID_SSTC_02_M_HS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_02_M_HS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_02_M_HS_stack, phys_name=SID_SSTC_02_M_HS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_02_M_HS_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_03_NON_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_03_NON_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_03_NON_U_stack, phys_name=SID_SSTC_03_NON_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_03_NON_U_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_04_NON_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_04_NON_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_04_NON_M_stack, phys_name=SID_SSTC_04_NON_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_04_NON_M_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_05_M_HS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_05_M_HS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_05_M_HS_stack, phys_name=SID_SSTC_05_M_HS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_05_M_HS_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_06_stack, phys_name=SID_SSTC_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_06_stack
.dword 0xc001c0de
