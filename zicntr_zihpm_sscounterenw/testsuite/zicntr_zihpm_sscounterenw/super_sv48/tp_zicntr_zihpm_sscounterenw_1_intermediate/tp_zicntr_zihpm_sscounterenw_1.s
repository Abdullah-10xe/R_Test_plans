;#test.name       zicntr_zihpm_sscounterenw
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zicntr_zihpm_sscounterenw
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zicntr_zihpm_sscounterenw

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_01_S)
SID_XCOUNTEREN_01_S:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_01_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 4294967295
	;#csr_rw(mcounteren, set, false, false)
	li t2, 0xffffffff
	csrrs t6, scounteren, t2
	# Test each CSR in S mode - all should succeed
	csrr s1, cycle
	csrr a6, time
	csrr a1, instret
	csrr s9, hpmcounter3
	csrr a1, hpmcounter4
	csrr s8, hpmcounter5
	csrr s11, hpmcounter6
	csrr s1, hpmcounter7
	csrr s6, hpmcounter8
	csrr s6, hpmcounter9
	csrr a5, hpmcounter10
	csrr a2, hpmcounter11
	csrr t2, hpmcounter12
	csrr t1, hpmcounter13
	csrr t4, hpmcounter14
	csrr t6, hpmcounter15
	csrr s6, hpmcounter16
	csrr t6, hpmcounter17
	csrr s6, hpmcounter18
	csrr s0, hpmcounter19
	csrr t4, hpmcounter20
	csrr a1, hpmcounter21
	csrr s7, hpmcounter22
	csrr t4, hpmcounter23
	csrr t4, hpmcounter24
	csrr s5, hpmcounter25
	csrr t1, hpmcounter26
	csrr a7, hpmcounter27
	csrr s9, hpmcounter28
	csrr a0, hpmcounter29
	csrr a3, hpmcounter30
	csrr a4, hpmcounter31
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_XCOUNTEREN_01_S_passed:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_02_S)
SID_XCOUNTEREN_02_S:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_02_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 4294967295
	;#csr_rw(mcounteren, set, false, false)
	li s11, 0xffffffff
	csrrc s8, scounteren, s11
	# Test each CSR in S mode - all should succeed
	csrr t1, cycle
	csrr s4, time
	csrr t2, instret
	csrr a4, hpmcounter3
	csrr s7, hpmcounter4
	csrr t2, hpmcounter5
	csrr s0, hpmcounter6
	csrr t5, hpmcounter7
	csrr a7, hpmcounter8
	csrr t5, hpmcounter9
	csrr t4, hpmcounter10
	csrr s11, hpmcounter11
	csrr s4, hpmcounter12
	csrr s2, hpmcounter13
	csrr s10, hpmcounter14
	csrr s3, hpmcounter15
	csrr s11, hpmcounter16
	csrr s5, hpmcounter17
	csrr s11, hpmcounter18
	csrr s7, hpmcounter19
	csrr t3, hpmcounter20
	csrr s1, hpmcounter21
	csrr s0, hpmcounter22
	csrr s2, hpmcounter23
	csrr s11, hpmcounter24
	csrr a3, hpmcounter25
	csrr s6, hpmcounter26
	csrr s1, hpmcounter27
	csrr a3, hpmcounter28
	csrr a4, hpmcounter29
	csrr a5, hpmcounter30
	csrr a3, hpmcounter31
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_XCOUNTEREN_02_S_passed:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_03_S)
SID_XCOUNTEREN_03_S:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_03_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 4294967295
	;#csr_rw(mcounteren, clear, false, false)
	li a7, 0xffffffff
	csrrs t6, scounteren, a7
	# Test each CSR in S mode - all should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	csrr t5, cycle
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_0:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	csrr s10, time
	li t6, failed_addr
	ld a3, 0(t6)
	jr a3
	# assert_exception block end
excp_return_label_1:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	csrr s2, instret
	li s3, failed_addr
	ld t5, 0(s3)
	jr t5
	# assert_exception block end
excp_return_label_2:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	csrr t4, hpmcounter3
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
	# assert_exception block end
excp_return_label_3:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	csrr t6, hpmcounter4
	li s0, failed_addr
	ld s5, 0(s0)
	jr s5
	# assert_exception block end
excp_return_label_4:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	csrr a6, hpmcounter5
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
	# assert_exception block end
excp_return_label_5:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	csrr t2, hpmcounter6
	li s10, failed_addr
	ld s5, 0(s10)
	jr s5
	# assert_exception block end
excp_return_label_6:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	csrr a4, hpmcounter7
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_7:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_8:
	csrr s5, hpmcounter8
	li s9, failed_addr
	ld s10, 0(s9)
	jr s10
	# assert_exception block end
excp_return_label_8:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	csrr s5, hpmcounter9
	li a3, failed_addr
	ld a0, 0(a3)
	jr a0
	# assert_exception block end
excp_return_label_9:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_10:
	csrr a7, hpmcounter10
	li s10, failed_addr
	ld s0, 0(s10)
	jr s0
	# assert_exception block end
excp_return_label_10:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	csrr a2, hpmcounter11
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
	# assert_exception block end
excp_return_label_11:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	csrr s8, hpmcounter12
	li t6, failed_addr
	ld t4, 0(t6)
	jr t4
	# assert_exception block end
excp_return_label_12:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	csrr s5, hpmcounter13
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
	# assert_exception block end
excp_return_label_13:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_14:
	csrr a0, hpmcounter14
	li a1, failed_addr
	ld a6, 0(a1)
	jr a6
	# assert_exception block end
excp_return_label_14:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_15:
	csrr t1, hpmcounter15
	li t4, failed_addr
	ld s8, 0(t4)
	jr s8
	# assert_exception block end
excp_return_label_15:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_16:
	csrr s5, hpmcounter16
	li a3, failed_addr
	ld a6, 0(a3)
	jr a6
	# assert_exception block end
excp_return_label_16:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_17:
	csrr t3, hpmcounter17
	li s2, failed_addr
	ld a0, 0(s2)
	jr a0
	# assert_exception block end
excp_return_label_17:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_18:
	csrr t2, hpmcounter18
	li s1, failed_addr
	ld t2, 0(s1)
	jr t2
	# assert_exception block end
excp_return_label_18:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_19, excp_return_label_19, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_19:
	csrr a4, hpmcounter19
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_19:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_20:
	csrr a7, hpmcounter20
	li a1, failed_addr
	ld t3, 0(a1)
	jr t3
	# assert_exception block end
excp_return_label_20:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_21:
	csrr t6, hpmcounter21
	li t2, failed_addr
	ld t1, 0(t2)
	jr t1
	# assert_exception block end
excp_return_label_21:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_22:
	csrr s2, hpmcounter22
	li a2, failed_addr
	ld t6, 0(a2)
	jr t6
	# assert_exception block end
excp_return_label_22:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_23:
	csrr a3, hpmcounter23
	li t3, failed_addr
	ld t6, 0(t3)
	jr t6
	# assert_exception block end
excp_return_label_23:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_24:
	csrr a5, hpmcounter24
	li a0, failed_addr
	ld a0, 0(a0)
	jr a0
	# assert_exception block end
excp_return_label_24:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_25:
	csrr t6, hpmcounter25
	li a1, failed_addr
	ld a1, 0(a1)
	jr a1
	# assert_exception block end
excp_return_label_25:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_26, excp_return_label_26, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_26:
	csrr t5, hpmcounter26
	li t1, failed_addr
	ld t5, 0(t1)
	jr t5
	# assert_exception block end
excp_return_label_26:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_27, excp_return_label_27, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_27:
	csrr a2, hpmcounter27
	li s0, failed_addr
	ld a7, 0(s0)
	jr a7
	# assert_exception block end
excp_return_label_27:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_28, excp_return_label_28, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_28:
	csrr s7, hpmcounter28
	li t3, failed_addr
	ld s5, 0(t3)
	jr s5
	# assert_exception block end
excp_return_label_28:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_29, excp_return_label_29, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_29:
	csrr t1, hpmcounter29
	li a1, failed_addr
	ld t4, 0(a1)
	jr t4
	# assert_exception block end
excp_return_label_29:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_30, excp_return_label_30, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_30:
	csrr t5, hpmcounter30
	li a5, failed_addr
	ld a2, 0(a5)
	jr a2
	# assert_exception block end
excp_return_label_30:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_31, excp_return_label_31, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_31:
	csrr s2, hpmcounter31
	li t6, failed_addr
	ld a3, 0(t6)
	jr a3
	# assert_exception block end
excp_return_label_31:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_XCOUNTEREN_03_S_passed:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_04_S)
SID_XCOUNTEREN_04_S:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_04_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 4294967295
	;#csr_rw(mcounteren, clear, false, false)
	li t1, 0xffffffff
	csrrc s9, scounteren, t1
	# Test each CSR in S mode - all should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_32, excp_return_label_32, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_32:
	csrr s10, cycle
	li t4, failed_addr
	ld t4, 0(t4)
	jr t4
	# assert_exception block end
excp_return_label_32:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_33, excp_return_label_33, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_33:
	csrr t5, time
	li s2, failed_addr
	ld s7, 0(s2)
	jr s7
	# assert_exception block end
excp_return_label_33:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_34, excp_return_label_34, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_34:
	csrr t1, instret
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
	# assert_exception block end
excp_return_label_34:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_35, excp_return_label_35, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_35:
	csrr a6, hpmcounter3
	li t5, failed_addr
	ld a4, 0(t5)
	jr a4
	# assert_exception block end
excp_return_label_35:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_36, excp_return_label_36, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_36:
	csrr s10, hpmcounter4
	li s2, failed_addr
	ld a5, 0(s2)
	jr a5
	# assert_exception block end
excp_return_label_36:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_37, excp_return_label_37, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_37:
	csrr a1, hpmcounter5
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_37:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_38, excp_return_label_38, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_38:
	csrr t1, hpmcounter6
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
	# assert_exception block end
excp_return_label_38:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_39, excp_return_label_39, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_39:
	csrr a5, hpmcounter7
	li a3, failed_addr
	ld a7, 0(a3)
	jr a7
	# assert_exception block end
excp_return_label_39:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_40, excp_return_label_40, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_40:
	csrr s1, hpmcounter8
	li t5, failed_addr
	ld a2, 0(t5)
	jr a2
	# assert_exception block end
excp_return_label_40:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_41, excp_return_label_41, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_41:
	csrr t5, hpmcounter9
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
	# assert_exception block end
excp_return_label_41:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_42, excp_return_label_42, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_42:
	csrr t2, hpmcounter10
	li s7, failed_addr
	ld s8, 0(s7)
	jr s8
	# assert_exception block end
excp_return_label_42:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_43, excp_return_label_43, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_43:
	csrr s8, hpmcounter11
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_43:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_44, excp_return_label_44, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_44:
	csrr a1, hpmcounter12
	li s10, failed_addr
	ld s5, 0(s10)
	jr s5
	# assert_exception block end
excp_return_label_44:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_45, excp_return_label_45, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_45:
	csrr s0, hpmcounter13
	li a6, failed_addr
	ld s6, 0(a6)
	jr s6
	# assert_exception block end
excp_return_label_45:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_46, excp_return_label_46, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_46:
	csrr s7, hpmcounter14
	li a4, failed_addr
	ld s0, 0(a4)
	jr s0
	# assert_exception block end
excp_return_label_46:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_47, excp_return_label_47, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_47:
	csrr a5, hpmcounter15
	li a6, failed_addr
	ld a4, 0(a6)
	jr a4
	# assert_exception block end
excp_return_label_47:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_48, excp_return_label_48, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_48:
	csrr a7, hpmcounter16
	li s1, failed_addr
	ld a6, 0(s1)
	jr a6
	# assert_exception block end
excp_return_label_48:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_49, excp_return_label_49, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_49:
	csrr a2, hpmcounter17
	li s10, failed_addr
	ld s5, 0(s10)
	jr s5
	# assert_exception block end
excp_return_label_49:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_50, excp_return_label_50, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_50:
	csrr t3, hpmcounter18
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
	# assert_exception block end
excp_return_label_50:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_51, excp_return_label_51, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_51:
	csrr s6, hpmcounter19
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
	# assert_exception block end
excp_return_label_51:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_52, excp_return_label_52, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_52:
	csrr a5, hpmcounter20
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_52:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_53, excp_return_label_53, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_53:
	csrr s2, hpmcounter21
	li s7, failed_addr
	ld s8, 0(s7)
	jr s8
	# assert_exception block end
excp_return_label_53:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_54, excp_return_label_54, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_54:
	csrr t3, hpmcounter22
	li s9, failed_addr
	ld a5, 0(s9)
	jr a5
	# assert_exception block end
excp_return_label_54:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_55, excp_return_label_55, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_55:
	csrr s10, hpmcounter23
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_55:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_56, excp_return_label_56, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_56:
	csrr s11, hpmcounter24
	li t2, failed_addr
	ld a1, 0(t2)
	jr a1
	# assert_exception block end
excp_return_label_56:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_57, excp_return_label_57, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_57:
	csrr t1, hpmcounter25
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_57:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_58, excp_return_label_58, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_58:
	csrr s8, hpmcounter26
	li t1, failed_addr
	ld a5, 0(t1)
	jr a5
	# assert_exception block end
excp_return_label_58:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_59, excp_return_label_59, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_59:
	csrr t2, hpmcounter27
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_59:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_60, excp_return_label_60, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_60:
	csrr s5, hpmcounter28
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_60:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_61, excp_return_label_61, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_61:
	csrr s7, hpmcounter29
	li s11, failed_addr
	ld s10, 0(s11)
	jr s10
	# assert_exception block end
excp_return_label_61:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_62, excp_return_label_62, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_62:
	csrr s3, hpmcounter30
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_62:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_63, excp_return_label_63, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_63:
	csrr t4, hpmcounter31
	li s4, failed_addr
	ld s3, 0(s4)
	jr s3
	# assert_exception block end
excp_return_label_63:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_XCOUNTEREN_04_S_passed:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_05_S)
SID_XCOUNTEREN_05_S:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	li sp, SID_XCOUNTEREN_05_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrwi s8, scounteren, 0
	# Set only this field in mcounteren, clear all others
	li t2, 1
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr t2, cycle
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_64, excp_return_label_64, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_64:
	csrr a7, time
	li t5, failed_addr
	ld t4, 0(t5)
	jr t4
	# assert_exception block end
excp_return_label_64:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_65, excp_return_label_65, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_65:
	csrr s5, instret
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_65:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_66, excp_return_label_66, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_66:
	csrr s2, hpmcounter3
	li a2, failed_addr
	ld a5, 0(a2)
	jr a5
	# assert_exception block end
excp_return_label_66:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_67, excp_return_label_67, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_67:
	csrr s1, hpmcounter4
	li s7, failed_addr
	ld a1, 0(s7)
	jr a1
	# assert_exception block end
excp_return_label_67:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_68, excp_return_label_68, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_68:
	csrr a3, hpmcounter5
	li s11, failed_addr
	ld t3, 0(s11)
	jr t3
	# assert_exception block end
excp_return_label_68:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_69, excp_return_label_69, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_69:
	csrr a3, hpmcounter6
	li s4, failed_addr
	ld s5, 0(s4)
	jr s5
	# assert_exception block end
excp_return_label_69:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_70, excp_return_label_70, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_70:
	csrr s1, hpmcounter7
	li t6, failed_addr
	ld s3, 0(t6)
	jr s3
	# assert_exception block end
excp_return_label_70:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_71, excp_return_label_71, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_71:
	csrr t1, hpmcounter8
	li s11, failed_addr
	ld a4, 0(s11)
	jr a4
	# assert_exception block end
excp_return_label_71:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_72, excp_return_label_72, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_72:
	csrr s4, hpmcounter9
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_72:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_73, excp_return_label_73, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_73:
	csrr a1, hpmcounter10
	li s8, failed_addr
	ld a1, 0(s8)
	jr a1
	# assert_exception block end
excp_return_label_73:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_74, excp_return_label_74, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_74:
	csrr t2, hpmcounter11
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_74:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_75, excp_return_label_75, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_75:
	csrr a6, hpmcounter12
	li t3, failed_addr
	ld s0, 0(t3)
	jr s0
	# assert_exception block end
excp_return_label_75:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_76, excp_return_label_76, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_76:
	csrr a3, hpmcounter13
	li s10, failed_addr
	ld s2, 0(s10)
	jr s2
	# assert_exception block end
excp_return_label_76:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_77, excp_return_label_77, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_77:
	csrr s11, hpmcounter14
	li s0, failed_addr
	ld s4, 0(s0)
	jr s4
	# assert_exception block end
excp_return_label_77:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_78, excp_return_label_78, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_78:
	csrr a6, hpmcounter15
	li a2, failed_addr
	ld t2, 0(a2)
	jr t2
	# assert_exception block end
excp_return_label_78:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_79, excp_return_label_79, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_79:
	csrr a7, hpmcounter16
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_79:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_80, excp_return_label_80, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_80:
	csrr t1, hpmcounter17
	li s2, failed_addr
	ld s10, 0(s2)
	jr s10
	# assert_exception block end
excp_return_label_80:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_81, excp_return_label_81, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_81:
	csrr a0, hpmcounter18
	li a1, failed_addr
	ld s4, 0(a1)
	jr s4
	# assert_exception block end
excp_return_label_81:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_82, excp_return_label_82, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_82:
	csrr a3, hpmcounter19
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_82:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_83, excp_return_label_83, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_83:
	csrr s5, hpmcounter20
	li a4, failed_addr
	ld a6, 0(a4)
	jr a6
	# assert_exception block end
excp_return_label_83:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_84, excp_return_label_84, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_84:
	csrr a6, hpmcounter21
	li a1, failed_addr
	ld a1, 0(a1)
	jr a1
	# assert_exception block end
excp_return_label_84:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_85, excp_return_label_85, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_85:
	csrr s7, hpmcounter22
	li t2, failed_addr
	ld s2, 0(t2)
	jr s2
	# assert_exception block end
excp_return_label_85:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_86, excp_return_label_86, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_86:
	csrr t3, hpmcounter23
	li a2, failed_addr
	ld s7, 0(a2)
	jr s7
	# assert_exception block end
excp_return_label_86:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_87, excp_return_label_87, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_87:
	csrr a5, hpmcounter24
	li s4, failed_addr
	ld a6, 0(s4)
	jr a6
	# assert_exception block end
excp_return_label_87:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_88, excp_return_label_88, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_88:
	csrr a0, hpmcounter25
	li s7, failed_addr
	ld t2, 0(s7)
	jr t2
	# assert_exception block end
excp_return_label_88:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_89, excp_return_label_89, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_89:
	csrr a4, hpmcounter26
	li t2, failed_addr
	ld t3, 0(t2)
	jr t3
	# assert_exception block end
excp_return_label_89:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_90, excp_return_label_90, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_90:
	csrr a7, hpmcounter27
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_90:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_91, excp_return_label_91, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_91:
	csrr t5, hpmcounter28
	li t6, failed_addr
	ld s8, 0(t6)
	jr s8
	# assert_exception block end
excp_return_label_91:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_92, excp_return_label_92, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_92:
	csrr s10, hpmcounter29
	li a3, failed_addr
	ld t2, 0(a3)
	jr t2
	# assert_exception block end
excp_return_label_92:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_93, excp_return_label_93, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_93:
	csrr s6, hpmcounter30
	li s2, failed_addr
	ld s6, 0(s2)
	jr s6
	# assert_exception block end
excp_return_label_93:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_94, excp_return_label_94, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_94:
	csrr s4, hpmcounter31
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_94:
	# Set only this field in mcounteren, clear all others
	li t2, 2
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr a2, time
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_95, excp_return_label_95, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_95:
	csrr s7, cycle
	li a0, failed_addr
	ld a4, 0(a0)
	jr a4
	# assert_exception block end
excp_return_label_95:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_96, excp_return_label_96, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_96:
	csrr s0, instret
	li a7, failed_addr
	ld a5, 0(a7)
	jr a5
	# assert_exception block end
excp_return_label_96:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_97, excp_return_label_97, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_97:
	csrr a2, hpmcounter3
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
	# assert_exception block end
excp_return_label_97:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_98, excp_return_label_98, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_98:
	csrr s4, hpmcounter4
	li s1, failed_addr
	ld a0, 0(s1)
	jr a0
	# assert_exception block end
excp_return_label_98:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_99, excp_return_label_99, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_99:
	csrr s7, hpmcounter5
	li a0, failed_addr
	ld t1, 0(a0)
	jr t1
	# assert_exception block end
excp_return_label_99:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_100, excp_return_label_100, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_100:
	csrr a3, hpmcounter6
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
	# assert_exception block end
excp_return_label_100:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_101, excp_return_label_101, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_101:
	csrr s5, hpmcounter7
	li a4, failed_addr
	ld a4, 0(a4)
	jr a4
	# assert_exception block end
excp_return_label_101:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_102, excp_return_label_102, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_102:
	csrr t4, hpmcounter8
	li t5, failed_addr
	ld a7, 0(t5)
	jr a7
	# assert_exception block end
excp_return_label_102:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_103, excp_return_label_103, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_103:
	csrr a6, hpmcounter9
	li t2, failed_addr
	ld s3, 0(t2)
	jr s3
	# assert_exception block end
excp_return_label_103:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_104, excp_return_label_104, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_104:
	csrr s3, hpmcounter10
	li s4, failed_addr
	ld a1, 0(s4)
	jr a1
	# assert_exception block end
excp_return_label_104:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_105, excp_return_label_105, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_105:
	csrr t4, hpmcounter11
	li a4, failed_addr
	ld t3, 0(a4)
	jr t3
	# assert_exception block end
excp_return_label_105:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_106, excp_return_label_106, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_106:
	csrr a6, hpmcounter12
	li t6, failed_addr
	ld s0, 0(t6)
	jr s0
	# assert_exception block end
excp_return_label_106:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_107, excp_return_label_107, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_107:
	csrr t1, hpmcounter13
	li s7, failed_addr
	ld t4, 0(s7)
	jr t4
	# assert_exception block end
excp_return_label_107:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_108, excp_return_label_108, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_108:
	csrr a1, hpmcounter14
	li s2, failed_addr
	ld s3, 0(s2)
	jr s3
	# assert_exception block end
excp_return_label_108:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_109, excp_return_label_109, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_109:
	csrr a0, hpmcounter15
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
	# assert_exception block end
excp_return_label_109:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_110, excp_return_label_110, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_110:
	csrr s11, hpmcounter16
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
	# assert_exception block end
excp_return_label_110:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_111, excp_return_label_111, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_111:
	csrr s2, hpmcounter17
	li s6, failed_addr
	ld s10, 0(s6)
	jr s10
	# assert_exception block end
excp_return_label_111:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_112, excp_return_label_112, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_112:
	csrr a5, hpmcounter18
	li t1, failed_addr
	ld a3, 0(t1)
	jr a3
	# assert_exception block end
excp_return_label_112:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_113, excp_return_label_113, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_113:
	csrr a3, hpmcounter19
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
	# assert_exception block end
excp_return_label_113:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_114, excp_return_label_114, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_114:
	csrr a6, hpmcounter20
	li a6, failed_addr
	ld s6, 0(a6)
	jr s6
	# assert_exception block end
excp_return_label_114:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_115, excp_return_label_115, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_115:
	csrr a0, hpmcounter21
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_115:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_116, excp_return_label_116, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_116:
	csrr s2, hpmcounter22
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_116:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_117, excp_return_label_117, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_117:
	csrr t4, hpmcounter23
	li s0, failed_addr
	ld a0, 0(s0)
	jr a0
	# assert_exception block end
excp_return_label_117:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_118, excp_return_label_118, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_118:
	csrr t2, hpmcounter24
	li a3, failed_addr
	ld t1, 0(a3)
	jr t1
	# assert_exception block end
excp_return_label_118:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_119, excp_return_label_119, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_119:
	csrr t1, hpmcounter25
	li t5, failed_addr
	ld s9, 0(t5)
	jr s9
	# assert_exception block end
excp_return_label_119:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_120, excp_return_label_120, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_120:
	csrr t6, hpmcounter26
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
	# assert_exception block end
excp_return_label_120:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_121, excp_return_label_121, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_121:
	csrr s2, hpmcounter27
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_121:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_122, excp_return_label_122, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_122:
	csrr s11, hpmcounter28
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
	# assert_exception block end
excp_return_label_122:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_123, excp_return_label_123, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_123:
	csrr s1, hpmcounter29
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_123:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_124, excp_return_label_124, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_124:
	csrr s5, hpmcounter30
	li s0, failed_addr
	ld s8, 0(s0)
	jr s8
	# assert_exception block end
excp_return_label_124:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_125, excp_return_label_125, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_125:
	csrr s11, hpmcounter31
	li t2, failed_addr
	ld t5, 0(t2)
	jr t5
	# assert_exception block end
excp_return_label_125:
	# Set only this field in mcounteren, clear all others
	li t2, 4
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s9, instret
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_126, excp_return_label_126, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_126:
	csrr a3, cycle
	li s2, failed_addr
	ld s3, 0(s2)
	jr s3
	# assert_exception block end
excp_return_label_126:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_127, excp_return_label_127, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_127:
	csrr s10, time
	li a2, failed_addr
	ld t2, 0(a2)
	jr t2
	# assert_exception block end
excp_return_label_127:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_128, excp_return_label_128, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_128:
	csrr s5, hpmcounter3
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_128:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_129, excp_return_label_129, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_129:
	csrr a0, hpmcounter4
	li a0, failed_addr
	ld s10, 0(a0)
	jr s10
	# assert_exception block end
excp_return_label_129:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_130, excp_return_label_130, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_130:
	csrr a0, hpmcounter5
	li s2, failed_addr
	ld t6, 0(s2)
	jr t6
	# assert_exception block end
excp_return_label_130:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_131, excp_return_label_131, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_131:
	csrr s9, hpmcounter6
	li s10, failed_addr
	ld s0, 0(s10)
	jr s0
	# assert_exception block end
excp_return_label_131:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_132, excp_return_label_132, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_132:
	csrr a7, hpmcounter7
	li t4, failed_addr
	ld a4, 0(t4)
	jr a4
	# assert_exception block end
excp_return_label_132:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_133, excp_return_label_133, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_133:
	csrr t3, hpmcounter8
	li s11, failed_addr
	ld s6, 0(s11)
	jr s6
	# assert_exception block end
excp_return_label_133:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_134, excp_return_label_134, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_134:
	csrr s8, hpmcounter9
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_134:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_135, excp_return_label_135, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_135:
	csrr s3, hpmcounter10
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
	# assert_exception block end
excp_return_label_135:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_136, excp_return_label_136, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_136:
	csrr s0, hpmcounter11
	li s4, failed_addr
	ld t2, 0(s4)
	jr t2
	# assert_exception block end
excp_return_label_136:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_137, excp_return_label_137, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_137:
	csrr s6, hpmcounter12
	li a6, failed_addr
	ld t6, 0(a6)
	jr t6
	# assert_exception block end
excp_return_label_137:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_138, excp_return_label_138, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_138:
	csrr s5, hpmcounter13
	li t4, failed_addr
	ld s9, 0(t4)
	jr s9
	# assert_exception block end
excp_return_label_138:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_139, excp_return_label_139, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_139:
	csrr a1, hpmcounter14
	li a4, failed_addr
	ld a2, 0(a4)
	jr a2
	# assert_exception block end
excp_return_label_139:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_140, excp_return_label_140, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_140:
	csrr s11, hpmcounter15
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_140:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_141, excp_return_label_141, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_141:
	csrr t3, hpmcounter16
	li s10, failed_addr
	ld s3, 0(s10)
	jr s3
	# assert_exception block end
excp_return_label_141:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_142, excp_return_label_142, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_142:
	csrr t5, hpmcounter17
	li a1, failed_addr
	ld s11, 0(a1)
	jr s11
	# assert_exception block end
excp_return_label_142:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_143, excp_return_label_143, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_143:
	csrr a2, hpmcounter18
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_143:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_144, excp_return_label_144, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_144:
	csrr s1, hpmcounter19
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
	# assert_exception block end
excp_return_label_144:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_145, excp_return_label_145, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_145:
	csrr s7, hpmcounter20
	li s7, failed_addr
	ld t2, 0(s7)
	jr t2
	# assert_exception block end
excp_return_label_145:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_146, excp_return_label_146, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_146:
	csrr a4, hpmcounter21
	li a0, failed_addr
	ld s5, 0(a0)
	jr s5
	# assert_exception block end
excp_return_label_146:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_147, excp_return_label_147, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_147:
	csrr t3, hpmcounter22
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_147:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_148, excp_return_label_148, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_148:
	csrr a7, hpmcounter23
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_148:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_149, excp_return_label_149, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_149:
	csrr a3, hpmcounter24
	li t5, failed_addr
	ld a3, 0(t5)
	jr a3
	# assert_exception block end
excp_return_label_149:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_150, excp_return_label_150, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_150:
	csrr a3, hpmcounter25
	li a2, failed_addr
	ld t2, 0(a2)
	jr t2
	# assert_exception block end
excp_return_label_150:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_151, excp_return_label_151, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_151:
	csrr a4, hpmcounter26
	li t4, failed_addr
	ld a6, 0(t4)
	jr a6
	# assert_exception block end
excp_return_label_151:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_152, excp_return_label_152, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_152:
	csrr a7, hpmcounter27
	li a6, failed_addr
	ld a6, 0(a6)
	jr a6
	# assert_exception block end
excp_return_label_152:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_153, excp_return_label_153, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_153:
	csrr a5, hpmcounter28
	li s6, failed_addr
	ld t5, 0(s6)
	jr t5
	# assert_exception block end
excp_return_label_153:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_154, excp_return_label_154, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_154:
	csrr a7, hpmcounter29
	li s3, failed_addr
	ld a1, 0(s3)
	jr a1
	# assert_exception block end
excp_return_label_154:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_155, excp_return_label_155, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_155:
	csrr s3, hpmcounter30
	li s10, failed_addr
	ld s11, 0(s10)
	jr s11
	# assert_exception block end
excp_return_label_155:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_156, excp_return_label_156, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_156:
	csrr t1, hpmcounter31
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_156:
	# Set only this field in mcounteren, clear all others
	li t2, 8
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr t1, hpmcounter3
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_157, excp_return_label_157, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_157:
	csrr t5, cycle
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_157:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_158, excp_return_label_158, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_158:
	csrr s0, time
	li s2, failed_addr
	ld s7, 0(s2)
	jr s7
	# assert_exception block end
excp_return_label_158:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_159, excp_return_label_159, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_159:
	csrr t6, instret
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_159:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_160, excp_return_label_160, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_160:
	csrr s2, hpmcounter4
	li s6, failed_addr
	ld a3, 0(s6)
	jr a3
	# assert_exception block end
excp_return_label_160:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_161, excp_return_label_161, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_161:
	csrr a3, hpmcounter5
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_161:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_162, excp_return_label_162, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_162:
	csrr a3, hpmcounter6
	li s6, failed_addr
	ld a4, 0(s6)
	jr a4
	# assert_exception block end
excp_return_label_162:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_163, excp_return_label_163, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_163:
	csrr a2, hpmcounter7
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_163:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_164, excp_return_label_164, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_164:
	csrr s2, hpmcounter8
	li t4, failed_addr
	ld s9, 0(t4)
	jr s9
	# assert_exception block end
excp_return_label_164:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_165, excp_return_label_165, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_165:
	csrr t1, hpmcounter9
	li a1, failed_addr
	ld s3, 0(a1)
	jr s3
	# assert_exception block end
excp_return_label_165:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_166, excp_return_label_166, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_166:
	csrr s5, hpmcounter10
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_166:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_167, excp_return_label_167, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_167:
	csrr t1, hpmcounter11
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_167:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_168, excp_return_label_168, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_168:
	csrr t5, hpmcounter12
	li t4, failed_addr
	ld s10, 0(t4)
	jr s10
	# assert_exception block end
excp_return_label_168:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_169, excp_return_label_169, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_169:
	csrr a1, hpmcounter13
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_169:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_170, excp_return_label_170, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_170:
	csrr s2, hpmcounter14
	li s8, failed_addr
	ld a4, 0(s8)
	jr a4
	# assert_exception block end
excp_return_label_170:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_171, excp_return_label_171, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_171:
	csrr t6, hpmcounter15
	li s11, failed_addr
	ld s4, 0(s11)
	jr s4
	# assert_exception block end
excp_return_label_171:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_172, excp_return_label_172, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_172:
	csrr t4, hpmcounter16
	li s1, failed_addr
	ld s1, 0(s1)
	jr s1
	# assert_exception block end
excp_return_label_172:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_173, excp_return_label_173, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_173:
	csrr a4, hpmcounter17
	li t5, failed_addr
	ld s8, 0(t5)
	jr s8
	# assert_exception block end
excp_return_label_173:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_174, excp_return_label_174, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_174:
	csrr a0, hpmcounter18
	li a5, failed_addr
	ld t5, 0(a5)
	jr t5
	# assert_exception block end
excp_return_label_174:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_175, excp_return_label_175, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_175:
	csrr s10, hpmcounter19
	li t4, failed_addr
	ld s7, 0(t4)
	jr s7
	# assert_exception block end
excp_return_label_175:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_176, excp_return_label_176, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_176:
	csrr a4, hpmcounter20
	li s6, failed_addr
	ld s9, 0(s6)
	jr s9
	# assert_exception block end
excp_return_label_176:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_177, excp_return_label_177, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_177:
	csrr a1, hpmcounter21
	li a2, failed_addr
	ld s4, 0(a2)
	jr s4
	# assert_exception block end
excp_return_label_177:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_178, excp_return_label_178, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_178:
	csrr t4, hpmcounter22
	li s1, failed_addr
	ld t3, 0(s1)
	jr t3
	# assert_exception block end
excp_return_label_178:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_179, excp_return_label_179, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_179:
	csrr s9, hpmcounter23
	li t2, failed_addr
	ld s2, 0(t2)
	jr s2
	# assert_exception block end
excp_return_label_179:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_180, excp_return_label_180, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_180:
	csrr a4, hpmcounter24
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
	# assert_exception block end
excp_return_label_180:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_181, excp_return_label_181, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_181:
	csrr s4, hpmcounter25
	li t5, failed_addr
	ld s1, 0(t5)
	jr s1
	# assert_exception block end
excp_return_label_181:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_182, excp_return_label_182, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_182:
	csrr a4, hpmcounter26
	li a2, failed_addr
	ld s4, 0(a2)
	jr s4
	# assert_exception block end
excp_return_label_182:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_183, excp_return_label_183, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_183:
	csrr s3, hpmcounter27
	li a2, failed_addr
	ld s8, 0(a2)
	jr s8
	# assert_exception block end
excp_return_label_183:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_184, excp_return_label_184, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_184:
	csrr a0, hpmcounter28
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
	# assert_exception block end
excp_return_label_184:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_185, excp_return_label_185, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_185:
	csrr a2, hpmcounter29
	li a6, failed_addr
	ld a5, 0(a6)
	jr a5
	# assert_exception block end
excp_return_label_185:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_186, excp_return_label_186, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_186:
	csrr s2, hpmcounter30
	li t2, failed_addr
	ld t4, 0(t2)
	jr t4
	# assert_exception block end
excp_return_label_186:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_187, excp_return_label_187, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_187:
	csrr s8, hpmcounter31
	li a2, failed_addr
	ld t4, 0(a2)
	jr t4
	# assert_exception block end
excp_return_label_187:
	# Set only this field in mcounteren, clear all others
	li t2, 16
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr a5, hpmcounter4
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_188, excp_return_label_188, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_188:
	csrr s7, cycle
	li s8, failed_addr
	ld s10, 0(s8)
	jr s10
	# assert_exception block end
excp_return_label_188:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_189, excp_return_label_189, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_189:
	csrr s0, time
	li t1, failed_addr
	ld s0, 0(t1)
	jr s0
	# assert_exception block end
excp_return_label_189:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_190, excp_return_label_190, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_190:
	csrr s2, instret
	li s7, failed_addr
	ld s4, 0(s7)
	jr s4
	# assert_exception block end
excp_return_label_190:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_191, excp_return_label_191, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_191:
	csrr a1, hpmcounter3
	li t2, failed_addr
	ld a1, 0(t2)
	jr a1
	# assert_exception block end
excp_return_label_191:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_192, excp_return_label_192, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_192:
	csrr a1, hpmcounter5
	li s9, failed_addr
	ld s3, 0(s9)
	jr s3
	# assert_exception block end
excp_return_label_192:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_193, excp_return_label_193, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_193:
	csrr a0, hpmcounter6
	li a1, failed_addr
	ld s6, 0(a1)
	jr s6
	# assert_exception block end
excp_return_label_193:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_194, excp_return_label_194, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_194:
	csrr s2, hpmcounter7
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_194:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_195, excp_return_label_195, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_195:
	csrr s6, hpmcounter8
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_195:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_196, excp_return_label_196, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_196:
	csrr s0, hpmcounter9
	li a0, failed_addr
	ld a3, 0(a0)
	jr a3
	# assert_exception block end
excp_return_label_196:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_197, excp_return_label_197, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_197:
	csrr s11, hpmcounter10
	li s6, failed_addr
	ld s3, 0(s6)
	jr s3
	# assert_exception block end
excp_return_label_197:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_198, excp_return_label_198, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_198:
	csrr s2, hpmcounter11
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_198:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_199, excp_return_label_199, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_199:
	csrr s1, hpmcounter12
	li s10, failed_addr
	ld t4, 0(s10)
	jr t4
	# assert_exception block end
excp_return_label_199:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_200, excp_return_label_200, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_200:
	csrr a5, hpmcounter13
	li s3, failed_addr
	ld t4, 0(s3)
	jr t4
	# assert_exception block end
excp_return_label_200:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_201, excp_return_label_201, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_201:
	csrr s3, hpmcounter14
	li s3, failed_addr
	ld s5, 0(s3)
	jr s5
	# assert_exception block end
excp_return_label_201:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_202, excp_return_label_202, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_202:
	csrr s11, hpmcounter15
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
	# assert_exception block end
excp_return_label_202:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_203, excp_return_label_203, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_203:
	csrr s5, hpmcounter16
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_203:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_204, excp_return_label_204, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_204:
	csrr a3, hpmcounter17
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_204:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_205, excp_return_label_205, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_205:
	csrr s11, hpmcounter18
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_205:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_206, excp_return_label_206, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_206:
	csrr a5, hpmcounter19
	li a6, failed_addr
	ld a6, 0(a6)
	jr a6
	# assert_exception block end
excp_return_label_206:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_207, excp_return_label_207, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_207:
	csrr a0, hpmcounter20
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
	# assert_exception block end
excp_return_label_207:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_208, excp_return_label_208, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_208:
	csrr s2, hpmcounter21
	li s11, failed_addr
	ld a2, 0(s11)
	jr a2
	# assert_exception block end
excp_return_label_208:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_209, excp_return_label_209, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_209:
	csrr s9, hpmcounter22
	li a2, failed_addr
	ld a6, 0(a2)
	jr a6
	# assert_exception block end
excp_return_label_209:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_210, excp_return_label_210, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_210:
	csrr s2, hpmcounter23
	li s11, failed_addr
	ld a2, 0(s11)
	jr a2
	# assert_exception block end
excp_return_label_210:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_211, excp_return_label_211, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_211:
	csrr s4, hpmcounter24
	li s8, failed_addr
	ld s10, 0(s8)
	jr s10
	# assert_exception block end
excp_return_label_211:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_212, excp_return_label_212, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_212:
	csrr a3, hpmcounter25
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_212:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_213, excp_return_label_213, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_213:
	csrr s1, hpmcounter26
	li s7, failed_addr
	ld t3, 0(s7)
	jr t3
	# assert_exception block end
excp_return_label_213:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_214, excp_return_label_214, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_214:
	csrr a6, hpmcounter27
	li s6, failed_addr
	ld a3, 0(s6)
	jr a3
	# assert_exception block end
excp_return_label_214:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_215, excp_return_label_215, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_215:
	csrr a2, hpmcounter28
	li s0, failed_addr
	ld a1, 0(s0)
	jr a1
	# assert_exception block end
excp_return_label_215:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_216, excp_return_label_216, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_216:
	csrr s4, hpmcounter29
	li a6, failed_addr
	ld s7, 0(a6)
	jr s7
	# assert_exception block end
excp_return_label_216:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_217, excp_return_label_217, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_217:
	csrr s8, hpmcounter30
	li a4, failed_addr
	ld s4, 0(a4)
	jr s4
	# assert_exception block end
excp_return_label_217:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_218, excp_return_label_218, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_218:
	csrr s9, hpmcounter31
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_218:
	# Set only this field in mcounteren, clear all others
	li t2, 32
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s6, hpmcounter5
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_219, excp_return_label_219, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_219:
	csrr a0, cycle
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_219:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_220, excp_return_label_220, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_220:
	csrr s11, time
	li a4, failed_addr
	ld a6, 0(a4)
	jr a6
	# assert_exception block end
excp_return_label_220:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_221, excp_return_label_221, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_221:
	csrr t2, instret
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
	# assert_exception block end
excp_return_label_221:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_222, excp_return_label_222, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_222:
	csrr s11, hpmcounter3
	li a7, failed_addr
	ld t3, 0(a7)
	jr t3
	# assert_exception block end
excp_return_label_222:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_223, excp_return_label_223, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_223:
	csrr a2, hpmcounter4
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_223:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_224, excp_return_label_224, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_224:
	csrr s4, hpmcounter6
	li s10, failed_addr
	ld s3, 0(s10)
	jr s3
	# assert_exception block end
excp_return_label_224:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_225, excp_return_label_225, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_225:
	csrr a1, hpmcounter7
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_225:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_226, excp_return_label_226, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_226:
	csrr s1, hpmcounter8
	li a0, failed_addr
	ld s6, 0(a0)
	jr s6
	# assert_exception block end
excp_return_label_226:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_227, excp_return_label_227, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_227:
	csrr a1, hpmcounter9
	li a7, failed_addr
	ld a7, 0(a7)
	jr a7
	# assert_exception block end
excp_return_label_227:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_228, excp_return_label_228, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_228:
	csrr a7, hpmcounter10
	li s0, failed_addr
	ld s10, 0(s0)
	jr s10
	# assert_exception block end
excp_return_label_228:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_229, excp_return_label_229, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_229:
	csrr t5, hpmcounter11
	li s4, failed_addr
	ld a2, 0(s4)
	jr a2
	# assert_exception block end
excp_return_label_229:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_230, excp_return_label_230, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_230:
	csrr s2, hpmcounter12
	li a2, failed_addr
	ld s7, 0(a2)
	jr s7
	# assert_exception block end
excp_return_label_230:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_231, excp_return_label_231, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_231:
	csrr a7, hpmcounter13
	li s3, failed_addr
	ld a4, 0(s3)
	jr a4
	# assert_exception block end
excp_return_label_231:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_232, excp_return_label_232, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_232:
	csrr t3, hpmcounter14
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
	# assert_exception block end
excp_return_label_232:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_233, excp_return_label_233, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_233:
	csrr a3, hpmcounter15
	li s5, failed_addr
	ld s9, 0(s5)
	jr s9
	# assert_exception block end
excp_return_label_233:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_234, excp_return_label_234, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_234:
	csrr s7, hpmcounter16
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_234:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_235, excp_return_label_235, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_235:
	csrr a7, hpmcounter17
	li s6, failed_addr
	ld s7, 0(s6)
	jr s7
	# assert_exception block end
excp_return_label_235:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_236, excp_return_label_236, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_236:
	csrr s6, hpmcounter18
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
	# assert_exception block end
excp_return_label_236:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_237, excp_return_label_237, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_237:
	csrr s11, hpmcounter19
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_237:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_238, excp_return_label_238, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_238:
	csrr s4, hpmcounter20
	li s7, failed_addr
	ld s7, 0(s7)
	jr s7
	# assert_exception block end
excp_return_label_238:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_239, excp_return_label_239, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_239:
	csrr s10, hpmcounter21
	li a4, failed_addr
	ld s6, 0(a4)
	jr s6
	# assert_exception block end
excp_return_label_239:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_240, excp_return_label_240, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_240:
	csrr s4, hpmcounter22
	li a2, failed_addr
	ld s4, 0(a2)
	jr s4
	# assert_exception block end
excp_return_label_240:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_241, excp_return_label_241, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_241:
	csrr s9, hpmcounter23
	li s2, failed_addr
	ld a5, 0(s2)
	jr a5
	# assert_exception block end
excp_return_label_241:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_242, excp_return_label_242, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_242:
	csrr t1, hpmcounter24
	li a6, failed_addr
	ld s2, 0(a6)
	jr s2
	# assert_exception block end
excp_return_label_242:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_243, excp_return_label_243, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_243:
	csrr t3, hpmcounter25
	li t4, failed_addr
	ld a3, 0(t4)
	jr a3
	# assert_exception block end
excp_return_label_243:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_244, excp_return_label_244, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_244:
	csrr s4, hpmcounter26
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_244:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_245, excp_return_label_245, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_245:
	csrr a7, hpmcounter27
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
	# assert_exception block end
excp_return_label_245:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_246, excp_return_label_246, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_246:
	csrr a6, hpmcounter28
	li s9, failed_addr
	ld s1, 0(s9)
	jr s1
	# assert_exception block end
excp_return_label_246:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_247, excp_return_label_247, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_247:
	csrr a7, hpmcounter29
	li s6, failed_addr
	ld a2, 0(s6)
	jr a2
	# assert_exception block end
excp_return_label_247:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_248, excp_return_label_248, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_248:
	csrr t5, hpmcounter30
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_248:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_249, excp_return_label_249, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_249:
	csrr s10, hpmcounter31
	li s6, failed_addr
	ld a7, 0(s6)
	jr a7
	# assert_exception block end
excp_return_label_249:
	# Set only this field in mcounteren, clear all others
	li t2, 64
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s6, hpmcounter6
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_250, excp_return_label_250, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_250:
	csrr a7, cycle
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
	# assert_exception block end
excp_return_label_250:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_251, excp_return_label_251, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_251:
	csrr s11, time
	li a6, failed_addr
	ld s10, 0(a6)
	jr s10
	# assert_exception block end
excp_return_label_251:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_252, excp_return_label_252, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_252:
	csrr t5, instret
	li t4, failed_addr
	ld s10, 0(t4)
	jr s10
	# assert_exception block end
excp_return_label_252:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_253, excp_return_label_253, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_253:
	csrr a6, hpmcounter3
	li s2, failed_addr
	ld t4, 0(s2)
	jr t4
	# assert_exception block end
excp_return_label_253:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_254, excp_return_label_254, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_254:
	csrr s5, hpmcounter4
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_254:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_255, excp_return_label_255, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_255:
	csrr s2, hpmcounter5
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_255:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_256, excp_return_label_256, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_256:
	csrr a2, hpmcounter7
	li s10, failed_addr
	ld t6, 0(s10)
	jr t6
	# assert_exception block end
excp_return_label_256:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_257, excp_return_label_257, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_257:
	csrr t2, hpmcounter8
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
	# assert_exception block end
excp_return_label_257:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_258, excp_return_label_258, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_258:
	csrr s11, hpmcounter9
	li s9, failed_addr
	ld s4, 0(s9)
	jr s4
	# assert_exception block end
excp_return_label_258:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_259, excp_return_label_259, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_259:
	csrr t6, hpmcounter10
	li s10, failed_addr
	ld s4, 0(s10)
	jr s4
	# assert_exception block end
excp_return_label_259:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_260, excp_return_label_260, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_260:
	csrr s9, hpmcounter11
	li s10, failed_addr
	ld s0, 0(s10)
	jr s0
	# assert_exception block end
excp_return_label_260:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_261, excp_return_label_261, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_261:
	csrr a5, hpmcounter12
	li s10, failed_addr
	ld s7, 0(s10)
	jr s7
	# assert_exception block end
excp_return_label_261:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_262, excp_return_label_262, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_262:
	csrr s4, hpmcounter13
	li s9, failed_addr
	ld a6, 0(s9)
	jr a6
	# assert_exception block end
excp_return_label_262:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_263, excp_return_label_263, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_263:
	csrr a5, hpmcounter14
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_263:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_264, excp_return_label_264, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_264:
	csrr a5, hpmcounter15
	li s4, failed_addr
	ld t3, 0(s4)
	jr t3
	# assert_exception block end
excp_return_label_264:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_265, excp_return_label_265, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_265:
	csrr a6, hpmcounter16
	li t3, failed_addr
	ld a7, 0(t3)
	jr a7
	# assert_exception block end
excp_return_label_265:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_266, excp_return_label_266, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_266:
	csrr a7, hpmcounter17
	li s5, failed_addr
	ld s1, 0(s5)
	jr s1
	# assert_exception block end
excp_return_label_266:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_267, excp_return_label_267, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_267:
	csrr s5, hpmcounter18
	li a4, failed_addr
	ld s5, 0(a4)
	jr s5
	# assert_exception block end
excp_return_label_267:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_268, excp_return_label_268, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_268:
	csrr s4, hpmcounter19
	li a1, failed_addr
	ld s0, 0(a1)
	jr s0
	# assert_exception block end
excp_return_label_268:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_269, excp_return_label_269, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_269:
	csrr t5, hpmcounter20
	li t5, failed_addr
	ld s4, 0(t5)
	jr s4
	# assert_exception block end
excp_return_label_269:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_270, excp_return_label_270, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_270:
	csrr a0, hpmcounter21
	li a1, failed_addr
	ld a7, 0(a1)
	jr a7
	# assert_exception block end
excp_return_label_270:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_271, excp_return_label_271, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_271:
	csrr t6, hpmcounter22
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_271:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_272, excp_return_label_272, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_272:
	csrr s10, hpmcounter23
	li s5, failed_addr
	ld s2, 0(s5)
	jr s2
	# assert_exception block end
excp_return_label_272:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_273, excp_return_label_273, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_273:
	csrr s0, hpmcounter24
	li a0, failed_addr
	ld t1, 0(a0)
	jr t1
	# assert_exception block end
excp_return_label_273:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_274, excp_return_label_274, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_274:
	csrr t2, hpmcounter25
	li t6, failed_addr
	ld s8, 0(t6)
	jr s8
	# assert_exception block end
excp_return_label_274:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_275, excp_return_label_275, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_275:
	csrr t2, hpmcounter26
	li s5, failed_addr
	ld a1, 0(s5)
	jr a1
	# assert_exception block end
excp_return_label_275:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_276, excp_return_label_276, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_276:
	csrr s6, hpmcounter27
	li s4, failed_addr
	ld a2, 0(s4)
	jr a2
	# assert_exception block end
excp_return_label_276:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_277, excp_return_label_277, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_277:
	csrr s5, hpmcounter28
	li s2, failed_addr
	ld s3, 0(s2)
	jr s3
	# assert_exception block end
excp_return_label_277:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_278, excp_return_label_278, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_278:
	csrr a6, hpmcounter29
	li s8, failed_addr
	ld s2, 0(s8)
	jr s2
	# assert_exception block end
excp_return_label_278:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_279, excp_return_label_279, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_279:
	csrr s1, hpmcounter30
	li a6, failed_addr
	ld s7, 0(a6)
	jr s7
	# assert_exception block end
excp_return_label_279:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_280, excp_return_label_280, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_280:
	csrr t1, hpmcounter31
	li s8, failed_addr
	ld a6, 0(s8)
	jr a6
	# assert_exception block end
excp_return_label_280:
	# Set only this field in mcounteren, clear all others
	li t2, 128
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr t3, hpmcounter7
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_281, excp_return_label_281, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_281:
	csrr s1, cycle
	li s0, failed_addr
	ld a7, 0(s0)
	jr a7
	# assert_exception block end
excp_return_label_281:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_282, excp_return_label_282, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_282:
	csrr s2, time
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
	# assert_exception block end
excp_return_label_282:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_283, excp_return_label_283, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_283:
	csrr s4, instret
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_283:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_284, excp_return_label_284, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_284:
	csrr a5, hpmcounter3
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_284:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_285, excp_return_label_285, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_285:
	csrr a1, hpmcounter4
	li t1, failed_addr
	ld t3, 0(t1)
	jr t3
	# assert_exception block end
excp_return_label_285:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_286, excp_return_label_286, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_286:
	csrr s2, hpmcounter5
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_286:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_287, excp_return_label_287, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_287:
	csrr s11, hpmcounter6
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
	# assert_exception block end
excp_return_label_287:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_288, excp_return_label_288, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_288:
	csrr s2, hpmcounter8
	li s6, failed_addr
	ld s11, 0(s6)
	jr s11
	# assert_exception block end
excp_return_label_288:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_289, excp_return_label_289, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_289:
	csrr s1, hpmcounter9
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_289:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_290, excp_return_label_290, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_290:
	csrr s8, hpmcounter10
	li s7, failed_addr
	ld s3, 0(s7)
	jr s3
	# assert_exception block end
excp_return_label_290:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_291, excp_return_label_291, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_291:
	csrr a5, hpmcounter11
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_291:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_292, excp_return_label_292, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_292:
	csrr a2, hpmcounter12
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
	# assert_exception block end
excp_return_label_292:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_293, excp_return_label_293, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_293:
	csrr s0, hpmcounter13
	li s3, failed_addr
	ld a1, 0(s3)
	jr a1
	# assert_exception block end
excp_return_label_293:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_294, excp_return_label_294, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_294:
	csrr s6, hpmcounter14
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
	# assert_exception block end
excp_return_label_294:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_295, excp_return_label_295, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_295:
	csrr a2, hpmcounter15
	li s6, failed_addr
	ld t4, 0(s6)
	jr t4
	# assert_exception block end
excp_return_label_295:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_296, excp_return_label_296, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_296:
	csrr t2, hpmcounter16
	li a3, failed_addr
	ld a1, 0(a3)
	jr a1
	# assert_exception block end
excp_return_label_296:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_297, excp_return_label_297, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_297:
	csrr s8, hpmcounter17
	li s1, failed_addr
	ld s2, 0(s1)
	jr s2
	# assert_exception block end
excp_return_label_297:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_298, excp_return_label_298, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_298:
	csrr s1, hpmcounter18
	li a0, failed_addr
	ld a0, 0(a0)
	jr a0
	# assert_exception block end
excp_return_label_298:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_299, excp_return_label_299, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_299:
	csrr s11, hpmcounter19
	li t1, failed_addr
	ld s10, 0(t1)
	jr s10
	# assert_exception block end
excp_return_label_299:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_300, excp_return_label_300, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_300:
	csrr s2, hpmcounter20
	li t1, failed_addr
	ld t3, 0(t1)
	jr t3
	# assert_exception block end
excp_return_label_300:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_301, excp_return_label_301, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_301:
	csrr s8, hpmcounter21
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
	# assert_exception block end
excp_return_label_301:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_302, excp_return_label_302, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_302:
	csrr s8, hpmcounter22
	li a6, failed_addr
	ld s2, 0(a6)
	jr s2
	# assert_exception block end
excp_return_label_302:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_303, excp_return_label_303, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_303:
	csrr s0, hpmcounter23
	li a1, failed_addr
	ld s10, 0(a1)
	jr s10
	# assert_exception block end
excp_return_label_303:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_304, excp_return_label_304, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_304:
	csrr s7, hpmcounter24
	li a7, failed_addr
	ld s7, 0(a7)
	jr s7
	# assert_exception block end
excp_return_label_304:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_305, excp_return_label_305, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_305:
	csrr a5, hpmcounter25
	li s10, failed_addr
	ld t3, 0(s10)
	jr t3
	# assert_exception block end
excp_return_label_305:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_306, excp_return_label_306, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_306:
	csrr s1, hpmcounter26
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_306:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_307, excp_return_label_307, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_307:
	csrr t4, hpmcounter27
	li a2, failed_addr
	ld s5, 0(a2)
	jr s5
	# assert_exception block end
excp_return_label_307:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_308, excp_return_label_308, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_308:
	csrr s1, hpmcounter28
	li s6, failed_addr
	ld a2, 0(s6)
	jr a2
	# assert_exception block end
excp_return_label_308:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_309, excp_return_label_309, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_309:
	csrr t4, hpmcounter29
	li a0, failed_addr
	ld t6, 0(a0)
	jr t6
	# assert_exception block end
excp_return_label_309:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_310, excp_return_label_310, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_310:
	csrr s3, hpmcounter30
	li s8, failed_addr
	ld s7, 0(s8)
	jr s7
	# assert_exception block end
excp_return_label_310:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_311, excp_return_label_311, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_311:
	csrr a1, hpmcounter31
	li s5, failed_addr
	ld s9, 0(s5)
	jr s9
	# assert_exception block end
excp_return_label_311:
	# Set only this field in mcounteren, clear all others
	li t2, 256
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr t1, hpmcounter8
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_312, excp_return_label_312, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_312:
	csrr t5, cycle
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_312:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_313, excp_return_label_313, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_313:
	csrr a1, time
	li a4, failed_addr
	ld a1, 0(a4)
	jr a1
	# assert_exception block end
excp_return_label_313:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_314, excp_return_label_314, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_314:
	csrr a5, instret
	li t5, failed_addr
	ld s11, 0(t5)
	jr s11
	# assert_exception block end
excp_return_label_314:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_315, excp_return_label_315, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_315:
	csrr s7, hpmcounter3
	li a5, failed_addr
	ld s9, 0(a5)
	jr s9
	# assert_exception block end
excp_return_label_315:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_316, excp_return_label_316, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_316:
	csrr s7, hpmcounter4
	li a4, failed_addr
	ld s8, 0(a4)
	jr s8
	# assert_exception block end
excp_return_label_316:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_317, excp_return_label_317, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_317:
	csrr t4, hpmcounter5
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_317:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_318, excp_return_label_318, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_318:
	csrr s0, hpmcounter6
	li s7, failed_addr
	ld s9, 0(s7)
	jr s9
	# assert_exception block end
excp_return_label_318:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_319, excp_return_label_319, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_319:
	csrr t3, hpmcounter7
	li a7, failed_addr
	ld t6, 0(a7)
	jr t6
	# assert_exception block end
excp_return_label_319:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_320, excp_return_label_320, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_320:
	csrr a1, hpmcounter9
	li s3, failed_addr
	ld s8, 0(s3)
	jr s8
	# assert_exception block end
excp_return_label_320:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_321, excp_return_label_321, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_321:
	csrr a4, hpmcounter10
	li s11, failed_addr
	ld a4, 0(s11)
	jr a4
	# assert_exception block end
excp_return_label_321:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_322, excp_return_label_322, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_322:
	csrr a2, hpmcounter11
	li t2, failed_addr
	ld t1, 0(t2)
	jr t1
	# assert_exception block end
excp_return_label_322:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_323, excp_return_label_323, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_323:
	csrr a5, hpmcounter12
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_323:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_324, excp_return_label_324, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_324:
	csrr s11, hpmcounter13
	li s7, failed_addr
	ld s5, 0(s7)
	jr s5
	# assert_exception block end
excp_return_label_324:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_325, excp_return_label_325, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_325:
	csrr a1, hpmcounter14
	li s11, failed_addr
	ld t4, 0(s11)
	jr t4
	# assert_exception block end
excp_return_label_325:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_326, excp_return_label_326, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_326:
	csrr s9, hpmcounter15
	li t2, failed_addr
	ld s3, 0(t2)
	jr s3
	# assert_exception block end
excp_return_label_326:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_327, excp_return_label_327, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_327:
	csrr s10, hpmcounter16
	li t5, failed_addr
	ld s2, 0(t5)
	jr s2
	# assert_exception block end
excp_return_label_327:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_328, excp_return_label_328, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_328:
	csrr a6, hpmcounter17
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_328:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_329, excp_return_label_329, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_329:
	csrr s1, hpmcounter18
	li s11, failed_addr
	ld a5, 0(s11)
	jr a5
	# assert_exception block end
excp_return_label_329:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_330, excp_return_label_330, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_330:
	csrr s5, hpmcounter19
	li t5, failed_addr
	ld t1, 0(t5)
	jr t1
	# assert_exception block end
excp_return_label_330:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_331, excp_return_label_331, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_331:
	csrr s8, hpmcounter20
	li s9, failed_addr
	ld t6, 0(s9)
	jr t6
	# assert_exception block end
excp_return_label_331:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_332, excp_return_label_332, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_332:
	csrr s9, hpmcounter21
	li s5, failed_addr
	ld a7, 0(s5)
	jr a7
	# assert_exception block end
excp_return_label_332:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_333, excp_return_label_333, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_333:
	csrr a7, hpmcounter22
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_333:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_334, excp_return_label_334, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_334:
	csrr a6, hpmcounter23
	li t3, failed_addr
	ld a7, 0(t3)
	jr a7
	# assert_exception block end
excp_return_label_334:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_335, excp_return_label_335, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_335:
	csrr s8, hpmcounter24
	li s0, failed_addr
	ld s5, 0(s0)
	jr s5
	# assert_exception block end
excp_return_label_335:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_336, excp_return_label_336, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_336:
	csrr s11, hpmcounter25
	li s10, failed_addr
	ld a1, 0(s10)
	jr a1
	# assert_exception block end
excp_return_label_336:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_337, excp_return_label_337, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_337:
	csrr a2, hpmcounter26
	li a0, failed_addr
	ld s5, 0(a0)
	jr s5
	# assert_exception block end
excp_return_label_337:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_338, excp_return_label_338, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_338:
	csrr a5, hpmcounter27
	li s6, failed_addr
	ld s7, 0(s6)
	jr s7
	# assert_exception block end
excp_return_label_338:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_339, excp_return_label_339, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_339:
	csrr s11, hpmcounter28
	li t4, failed_addr
	ld s10, 0(t4)
	jr s10
	# assert_exception block end
excp_return_label_339:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_340, excp_return_label_340, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_340:
	csrr a3, hpmcounter29
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_340:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_341, excp_return_label_341, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_341:
	csrr t2, hpmcounter30
	li s1, failed_addr
	ld a2, 0(s1)
	jr a2
	# assert_exception block end
excp_return_label_341:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_342, excp_return_label_342, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_342:
	csrr s2, hpmcounter31
	li a6, failed_addr
	ld a4, 0(a6)
	jr a4
	# assert_exception block end
excp_return_label_342:
	# Set only this field in mcounteren, clear all others
	li t2, 512
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s11, hpmcounter9
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_343, excp_return_label_343, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_343:
	csrr a2, cycle
	li s9, failed_addr
	ld s11, 0(s9)
	jr s11
	# assert_exception block end
excp_return_label_343:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_344, excp_return_label_344, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_344:
	csrr a1, time
	li t2, failed_addr
	ld s8, 0(t2)
	jr s8
	# assert_exception block end
excp_return_label_344:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_345, excp_return_label_345, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_345:
	csrr s9, instret
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
	# assert_exception block end
excp_return_label_345:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_346, excp_return_label_346, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_346:
	csrr s6, hpmcounter3
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
	# assert_exception block end
excp_return_label_346:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_347, excp_return_label_347, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_347:
	csrr a5, hpmcounter4
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
	# assert_exception block end
excp_return_label_347:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_348, excp_return_label_348, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_348:
	csrr a0, hpmcounter5
	li s7, failed_addr
	ld t5, 0(s7)
	jr t5
	# assert_exception block end
excp_return_label_348:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_349, excp_return_label_349, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_349:
	csrr t2, hpmcounter6
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
	# assert_exception block end
excp_return_label_349:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_350, excp_return_label_350, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_350:
	csrr s0, hpmcounter7
	li a2, failed_addr
	ld s8, 0(a2)
	jr s8
	# assert_exception block end
excp_return_label_350:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_351, excp_return_label_351, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_351:
	csrr s7, hpmcounter8
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_351:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_352, excp_return_label_352, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_352:
	csrr s5, hpmcounter10
	li a3, failed_addr
	ld t1, 0(a3)
	jr t1
	# assert_exception block end
excp_return_label_352:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_353, excp_return_label_353, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_353:
	csrr a1, hpmcounter11
	li a2, failed_addr
	ld a5, 0(a2)
	jr a5
	# assert_exception block end
excp_return_label_353:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_354, excp_return_label_354, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_354:
	csrr s7, hpmcounter12
	li s1, failed_addr
	ld a2, 0(s1)
	jr a2
	# assert_exception block end
excp_return_label_354:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_355, excp_return_label_355, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_355:
	csrr t4, hpmcounter13
	li t5, failed_addr
	ld s7, 0(t5)
	jr s7
	# assert_exception block end
excp_return_label_355:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_356, excp_return_label_356, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_356:
	csrr t3, hpmcounter14
	li t4, failed_addr
	ld s11, 0(t4)
	jr s11
	# assert_exception block end
excp_return_label_356:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_357, excp_return_label_357, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_357:
	csrr t3, hpmcounter15
	li s1, failed_addr
	ld s11, 0(s1)
	jr s11
	# assert_exception block end
excp_return_label_357:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_358, excp_return_label_358, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_358:
	csrr s1, hpmcounter16
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
	# assert_exception block end
excp_return_label_358:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_359, excp_return_label_359, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_359:
	csrr a6, hpmcounter17
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_359:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_360, excp_return_label_360, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_360:
	csrr t6, hpmcounter18
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_360:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_361, excp_return_label_361, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_361:
	csrr s10, hpmcounter19
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
	# assert_exception block end
excp_return_label_361:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_362, excp_return_label_362, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_362:
	csrr a0, hpmcounter20
	li s6, failed_addr
	ld a7, 0(s6)
	jr a7
	# assert_exception block end
excp_return_label_362:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_363, excp_return_label_363, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_363:
	csrr s4, hpmcounter21
	li t4, failed_addr
	ld s0, 0(t4)
	jr s0
	# assert_exception block end
excp_return_label_363:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_364, excp_return_label_364, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_364:
	csrr t3, hpmcounter22
	li s9, failed_addr
	ld t1, 0(s9)
	jr t1
	# assert_exception block end
excp_return_label_364:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_365, excp_return_label_365, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_365:
	csrr a0, hpmcounter23
	li t2, failed_addr
	ld s2, 0(t2)
	jr s2
	# assert_exception block end
excp_return_label_365:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_366, excp_return_label_366, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_366:
	csrr s9, hpmcounter24
	li a5, failed_addr
	ld s10, 0(a5)
	jr s10
	# assert_exception block end
excp_return_label_366:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_367, excp_return_label_367, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_367:
	csrr a5, hpmcounter25
	li s2, failed_addr
	ld a7, 0(s2)
	jr a7
	# assert_exception block end
excp_return_label_367:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_368, excp_return_label_368, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_368:
	csrr s3, hpmcounter26
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_368:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_369, excp_return_label_369, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_369:
	csrr t6, hpmcounter27
	li a1, failed_addr
	ld t5, 0(a1)
	jr t5
	# assert_exception block end
excp_return_label_369:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_370, excp_return_label_370, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_370:
	csrr t5, hpmcounter28
	li s4, failed_addr
	ld a2, 0(s4)
	jr a2
	# assert_exception block end
excp_return_label_370:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_371, excp_return_label_371, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_371:
	csrr t4, hpmcounter29
	li a3, failed_addr
	ld s9, 0(a3)
	jr s9
	# assert_exception block end
excp_return_label_371:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_372, excp_return_label_372, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_372:
	csrr s7, hpmcounter30
	li a3, failed_addr
	ld t1, 0(a3)
	jr t1
	# assert_exception block end
excp_return_label_372:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_373, excp_return_label_373, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_373:
	csrr s10, hpmcounter31
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_373:
	# Set only this field in mcounteren, clear all others
	li t2, 1024
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr a5, hpmcounter10
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_374, excp_return_label_374, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_374:
	csrr a5, cycle
	li t6, failed_addr
	ld t6, 0(t6)
	jr t6
	# assert_exception block end
excp_return_label_374:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_375, excp_return_label_375, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_375:
	csrr a6, time
	li s8, failed_addr
	ld s2, 0(s8)
	jr s2
	# assert_exception block end
excp_return_label_375:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_376, excp_return_label_376, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_376:
	csrr a4, instret
	li t4, failed_addr
	ld s3, 0(t4)
	jr s3
	# assert_exception block end
excp_return_label_376:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_377, excp_return_label_377, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_377:
	csrr a3, hpmcounter3
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_377:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_378, excp_return_label_378, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_378:
	csrr a2, hpmcounter4
	li s9, failed_addr
	ld s8, 0(s9)
	jr s8
	# assert_exception block end
excp_return_label_378:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_379, excp_return_label_379, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_379:
	csrr s8, hpmcounter5
	li s10, failed_addr
	ld s3, 0(s10)
	jr s3
	# assert_exception block end
excp_return_label_379:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_380, excp_return_label_380, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_380:
	csrr s2, hpmcounter6
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
	# assert_exception block end
excp_return_label_380:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_381, excp_return_label_381, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_381:
	csrr s8, hpmcounter7
	li t4, failed_addr
	ld a7, 0(t4)
	jr a7
	# assert_exception block end
excp_return_label_381:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_382, excp_return_label_382, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_382:
	csrr s9, hpmcounter8
	li t4, failed_addr
	ld s3, 0(t4)
	jr s3
	# assert_exception block end
excp_return_label_382:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_383, excp_return_label_383, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_383:
	csrr a7, hpmcounter9
	li a2, failed_addr
	ld s2, 0(a2)
	jr s2
	# assert_exception block end
excp_return_label_383:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_384, excp_return_label_384, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_384:
	csrr s5, hpmcounter11
	li t2, failed_addr
	ld s2, 0(t2)
	jr s2
	# assert_exception block end
excp_return_label_384:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_385, excp_return_label_385, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_385:
	csrr t5, hpmcounter12
	li s7, failed_addr
	ld a5, 0(s7)
	jr a5
	# assert_exception block end
excp_return_label_385:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_386, excp_return_label_386, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_386:
	csrr s6, hpmcounter13
	li s3, failed_addr
	ld a3, 0(s3)
	jr a3
	# assert_exception block end
excp_return_label_386:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_387, excp_return_label_387, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_387:
	csrr t3, hpmcounter14
	li t4, failed_addr
	ld s8, 0(t4)
	jr s8
	# assert_exception block end
excp_return_label_387:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_388, excp_return_label_388, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_388:
	csrr s4, hpmcounter15
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
	# assert_exception block end
excp_return_label_388:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_389, excp_return_label_389, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_389:
	csrr s1, hpmcounter16
	li a7, failed_addr
	ld a7, 0(a7)
	jr a7
	# assert_exception block end
excp_return_label_389:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_390, excp_return_label_390, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_390:
	csrr s8, hpmcounter17
	li a3, failed_addr
	ld s5, 0(a3)
	jr s5
	# assert_exception block end
excp_return_label_390:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_391, excp_return_label_391, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_391:
	csrr s7, hpmcounter18
	li a2, failed_addr
	ld s2, 0(a2)
	jr s2
	# assert_exception block end
excp_return_label_391:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_392, excp_return_label_392, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_392:
	csrr s6, hpmcounter19
	li s9, failed_addr
	ld s3, 0(s9)
	jr s3
	# assert_exception block end
excp_return_label_392:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_393, excp_return_label_393, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_393:
	csrr s6, hpmcounter20
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
	# assert_exception block end
excp_return_label_393:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_394, excp_return_label_394, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_394:
	csrr s8, hpmcounter21
	li s11, failed_addr
	ld s5, 0(s11)
	jr s5
	# assert_exception block end
excp_return_label_394:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_395, excp_return_label_395, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_395:
	csrr a6, hpmcounter22
	li s10, failed_addr
	ld a5, 0(s10)
	jr a5
	# assert_exception block end
excp_return_label_395:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_396, excp_return_label_396, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_396:
	csrr a6, hpmcounter23
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
	# assert_exception block end
excp_return_label_396:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_397, excp_return_label_397, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_397:
	csrr s1, hpmcounter24
	li s8, failed_addr
	ld t6, 0(s8)
	jr t6
	# assert_exception block end
excp_return_label_397:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_398, excp_return_label_398, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_398:
	csrr s6, hpmcounter25
	li s4, failed_addr
	ld s11, 0(s4)
	jr s11
	# assert_exception block end
excp_return_label_398:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_399, excp_return_label_399, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_399:
	csrr a7, hpmcounter26
	li s2, failed_addr
	ld s11, 0(s2)
	jr s11
	# assert_exception block end
excp_return_label_399:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_400, excp_return_label_400, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_400:
	csrr s9, hpmcounter27
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_400:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_401, excp_return_label_401, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_401:
	csrr t6, hpmcounter28
	li t1, failed_addr
	ld t3, 0(t1)
	jr t3
	# assert_exception block end
excp_return_label_401:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_402, excp_return_label_402, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_402:
	csrr a0, hpmcounter29
	li s4, failed_addr
	ld s6, 0(s4)
	jr s6
	# assert_exception block end
excp_return_label_402:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_403, excp_return_label_403, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_403:
	csrr s9, hpmcounter30
	li s5, failed_addr
	ld s5, 0(s5)
	jr s5
	# assert_exception block end
excp_return_label_403:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_404, excp_return_label_404, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_404:
	csrr s3, hpmcounter31
	li s6, failed_addr
	ld t1, 0(s6)
	jr t1
	# assert_exception block end
excp_return_label_404:
	# Set only this field in mcounteren, clear all others
	li t2, 2048
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s6, hpmcounter11
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_405, excp_return_label_405, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_405:
	csrr s1, cycle
	li a7, failed_addr
	ld a7, 0(a7)
	jr a7
	# assert_exception block end
excp_return_label_405:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_406, excp_return_label_406, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_406:
	csrr s3, time
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
	# assert_exception block end
excp_return_label_406:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_407, excp_return_label_407, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_407:
	csrr s0, instret
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_407:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_408, excp_return_label_408, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_408:
	csrr s11, hpmcounter3
	li s6, failed_addr
	ld t2, 0(s6)
	jr t2
	# assert_exception block end
excp_return_label_408:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_409, excp_return_label_409, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_409:
	csrr a2, hpmcounter4
	li a1, failed_addr
	ld s10, 0(a1)
	jr s10
	# assert_exception block end
excp_return_label_409:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_410, excp_return_label_410, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_410:
	csrr t3, hpmcounter5
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
	# assert_exception block end
excp_return_label_410:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_411, excp_return_label_411, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_411:
	csrr s11, hpmcounter6
	li a5, failed_addr
	ld s7, 0(a5)
	jr s7
	# assert_exception block end
excp_return_label_411:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_412, excp_return_label_412, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_412:
	csrr a0, hpmcounter7
	li s7, failed_addr
	ld s4, 0(s7)
	jr s4
	# assert_exception block end
excp_return_label_412:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_413, excp_return_label_413, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_413:
	csrr a0, hpmcounter8
	li t2, failed_addr
	ld t4, 0(t2)
	jr t4
	# assert_exception block end
excp_return_label_413:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_414, excp_return_label_414, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_414:
	csrr t4, hpmcounter9
	li s8, failed_addr
	ld t6, 0(s8)
	jr t6
	# assert_exception block end
excp_return_label_414:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_415, excp_return_label_415, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_415:
	csrr a0, hpmcounter10
	li s2, failed_addr
	ld s8, 0(s2)
	jr s8
	# assert_exception block end
excp_return_label_415:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_416, excp_return_label_416, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_416:
	csrr s9, hpmcounter12
	li s3, failed_addr
	ld s1, 0(s3)
	jr s1
	# assert_exception block end
excp_return_label_416:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_417, excp_return_label_417, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_417:
	csrr a6, hpmcounter13
	li s2, failed_addr
	ld t6, 0(s2)
	jr t6
	# assert_exception block end
excp_return_label_417:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_418, excp_return_label_418, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_418:
	csrr t2, hpmcounter14
	li s3, failed_addr
	ld s5, 0(s3)
	jr s5
	# assert_exception block end
excp_return_label_418:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_419, excp_return_label_419, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_419:
	csrr t1, hpmcounter15
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
	# assert_exception block end
excp_return_label_419:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_420, excp_return_label_420, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_420:
	csrr t6, hpmcounter16
	li s6, failed_addr
	ld s1, 0(s6)
	jr s1
	# assert_exception block end
excp_return_label_420:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_421, excp_return_label_421, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_421:
	csrr a0, hpmcounter17
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_421:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_422, excp_return_label_422, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_422:
	csrr t4, hpmcounter18
	li t2, failed_addr
	ld t5, 0(t2)
	jr t5
	# assert_exception block end
excp_return_label_422:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_423, excp_return_label_423, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_423:
	csrr t5, hpmcounter19
	li s7, failed_addr
	ld s11, 0(s7)
	jr s11
	# assert_exception block end
excp_return_label_423:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_424, excp_return_label_424, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_424:
	csrr t3, hpmcounter20
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_424:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_425, excp_return_label_425, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_425:
	csrr s4, hpmcounter21
	li a2, failed_addr
	ld s1, 0(a2)
	jr s1
	# assert_exception block end
excp_return_label_425:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_426, excp_return_label_426, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_426:
	csrr s5, hpmcounter22
	li s3, failed_addr
	ld s7, 0(s3)
	jr s7
	# assert_exception block end
excp_return_label_426:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_427, excp_return_label_427, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_427:
	csrr a5, hpmcounter23
	li a5, failed_addr
	ld t5, 0(a5)
	jr t5
	# assert_exception block end
excp_return_label_427:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_428, excp_return_label_428, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_428:
	csrr s7, hpmcounter24
	li a4, failed_addr
	ld s2, 0(a4)
	jr s2
	# assert_exception block end
excp_return_label_428:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_429, excp_return_label_429, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_429:
	csrr s11, hpmcounter25
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_429:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_430, excp_return_label_430, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_430:
	csrr s11, hpmcounter26
	li s3, failed_addr
	ld s11, 0(s3)
	jr s11
	# assert_exception block end
excp_return_label_430:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_431, excp_return_label_431, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_431:
	csrr t6, hpmcounter27
	li a5, failed_addr
	ld s5, 0(a5)
	jr s5
	# assert_exception block end
excp_return_label_431:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_432, excp_return_label_432, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_432:
	csrr a1, hpmcounter28
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_432:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_433, excp_return_label_433, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_433:
	csrr s2, hpmcounter29
	li s2, failed_addr
	ld s11, 0(s2)
	jr s11
	# assert_exception block end
excp_return_label_433:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_434, excp_return_label_434, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_434:
	csrr t6, hpmcounter30
	li t5, failed_addr
	ld s0, 0(t5)
	jr s0
	# assert_exception block end
excp_return_label_434:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_435, excp_return_label_435, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_435:
	csrr s1, hpmcounter31
	li a3, failed_addr
	ld a7, 0(a3)
	jr a7
	# assert_exception block end
excp_return_label_435:
	# Set only this field in mcounteren, clear all others
	li t2, 4096
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr t4, hpmcounter12
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_436, excp_return_label_436, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_436:
	csrr a4, cycle
	li a7, failed_addr
	ld t2, 0(a7)
	jr t2
	# assert_exception block end
excp_return_label_436:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_437, excp_return_label_437, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_437:
	csrr s1, time
	li s10, failed_addr
	ld t5, 0(s10)
	jr t5
	# assert_exception block end
excp_return_label_437:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_438, excp_return_label_438, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_438:
	csrr s6, instret
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_438:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_439, excp_return_label_439, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_439:
	csrr s6, hpmcounter3
	li a2, failed_addr
	ld s6, 0(a2)
	jr s6
	# assert_exception block end
excp_return_label_439:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_440, excp_return_label_440, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_440:
	csrr a7, hpmcounter4
	li t5, failed_addr
	ld s1, 0(t5)
	jr s1
	# assert_exception block end
excp_return_label_440:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_441, excp_return_label_441, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_441:
	csrr t2, hpmcounter5
	li a1, failed_addr
	ld s10, 0(a1)
	jr s10
	# assert_exception block end
excp_return_label_441:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_442, excp_return_label_442, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_442:
	csrr s0, hpmcounter6
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
	# assert_exception block end
excp_return_label_442:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_443, excp_return_label_443, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_443:
	csrr t4, hpmcounter7
	li t2, failed_addr
	ld s10, 0(t2)
	jr s10
	# assert_exception block end
excp_return_label_443:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_444, excp_return_label_444, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_444:
	csrr s1, hpmcounter8
	li s3, failed_addr
	ld s6, 0(s3)
	jr s6
	# assert_exception block end
excp_return_label_444:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_445, excp_return_label_445, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_445:
	csrr s2, hpmcounter9
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
	# assert_exception block end
excp_return_label_445:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_446, excp_return_label_446, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_446:
	csrr a1, hpmcounter10
	li s10, failed_addr
	ld s4, 0(s10)
	jr s4
	# assert_exception block end
excp_return_label_446:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_447, excp_return_label_447, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_447:
	csrr s1, hpmcounter11
	li s4, failed_addr
	ld s9, 0(s4)
	jr s9
	# assert_exception block end
excp_return_label_447:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_448, excp_return_label_448, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_448:
	csrr a4, hpmcounter13
	li a1, failed_addr
	ld s8, 0(a1)
	jr s8
	# assert_exception block end
excp_return_label_448:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_449, excp_return_label_449, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_449:
	csrr t2, hpmcounter14
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_449:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_450, excp_return_label_450, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_450:
	csrr s10, hpmcounter15
	li t1, failed_addr
	ld t4, 0(t1)
	jr t4
	# assert_exception block end
excp_return_label_450:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_451, excp_return_label_451, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_451:
	csrr s2, hpmcounter16
	li s6, failed_addr
	ld s0, 0(s6)
	jr s0
	# assert_exception block end
excp_return_label_451:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_452, excp_return_label_452, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_452:
	csrr t1, hpmcounter17
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_452:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_453, excp_return_label_453, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_453:
	csrr a6, hpmcounter18
	li a5, failed_addr
	ld s11, 0(a5)
	jr s11
	# assert_exception block end
excp_return_label_453:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_454, excp_return_label_454, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_454:
	csrr a0, hpmcounter19
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
	# assert_exception block end
excp_return_label_454:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_455, excp_return_label_455, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_455:
	csrr s10, hpmcounter20
	li s1, failed_addr
	ld s1, 0(s1)
	jr s1
	# assert_exception block end
excp_return_label_455:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_456, excp_return_label_456, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_456:
	csrr s1, hpmcounter21
	li a1, failed_addr
	ld a0, 0(a1)
	jr a0
	# assert_exception block end
excp_return_label_456:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_457, excp_return_label_457, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_457:
	csrr s1, hpmcounter22
	li s0, failed_addr
	ld s1, 0(s0)
	jr s1
	# assert_exception block end
excp_return_label_457:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_458, excp_return_label_458, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_458:
	csrr t2, hpmcounter23
	li s6, failed_addr
	ld a6, 0(s6)
	jr a6
	# assert_exception block end
excp_return_label_458:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_459, excp_return_label_459, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_459:
	csrr a6, hpmcounter24
	li a7, failed_addr
	ld s8, 0(a7)
	jr s8
	# assert_exception block end
excp_return_label_459:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_460, excp_return_label_460, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_460:
	csrr t1, hpmcounter25
	li a3, failed_addr
	ld a2, 0(a3)
	jr a2
	# assert_exception block end
excp_return_label_460:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_461, excp_return_label_461, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_461:
	csrr s3, hpmcounter26
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_461:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_462, excp_return_label_462, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_462:
	csrr a5, hpmcounter27
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_462:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_463, excp_return_label_463, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_463:
	csrr a3, hpmcounter28
	li a3, failed_addr
	ld a1, 0(a3)
	jr a1
	# assert_exception block end
excp_return_label_463:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_464, excp_return_label_464, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_464:
	csrr a6, hpmcounter29
	li s10, failed_addr
	ld s3, 0(s10)
	jr s3
	# assert_exception block end
excp_return_label_464:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_465, excp_return_label_465, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_465:
	csrr s1, hpmcounter30
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
	# assert_exception block end
excp_return_label_465:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_466, excp_return_label_466, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_466:
	csrr s3, hpmcounter31
	li s0, failed_addr
	ld s7, 0(s0)
	jr s7
	# assert_exception block end
excp_return_label_466:
	# Set only this field in mcounteren, clear all others
	li t2, 8192
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s8, hpmcounter13
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_467, excp_return_label_467, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_467:
	csrr t2, cycle
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
	# assert_exception block end
excp_return_label_467:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_468, excp_return_label_468, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_468:
	csrr s8, time
	li a6, failed_addr
	ld a0, 0(a6)
	jr a0
	# assert_exception block end
excp_return_label_468:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_469, excp_return_label_469, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_469:
	csrr t4, instret
	li a1, failed_addr
	ld t5, 0(a1)
	jr t5
	# assert_exception block end
excp_return_label_469:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_470, excp_return_label_470, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_470:
	csrr t3, hpmcounter3
	li s11, failed_addr
	ld a2, 0(s11)
	jr a2
	# assert_exception block end
excp_return_label_470:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_471, excp_return_label_471, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_471:
	csrr s6, hpmcounter4
	li s4, failed_addr
	ld a2, 0(s4)
	jr a2
	# assert_exception block end
excp_return_label_471:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_472, excp_return_label_472, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_472:
	csrr t6, hpmcounter5
	li a7, failed_addr
	ld s3, 0(a7)
	jr s3
	# assert_exception block end
excp_return_label_472:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_473, excp_return_label_473, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_473:
	csrr a5, hpmcounter6
	li a1, failed_addr
	ld a5, 0(a1)
	jr a5
	# assert_exception block end
excp_return_label_473:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_474, excp_return_label_474, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_474:
	csrr a4, hpmcounter7
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
	# assert_exception block end
excp_return_label_474:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_475, excp_return_label_475, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_475:
	csrr a4, hpmcounter8
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_475:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_476, excp_return_label_476, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_476:
	csrr s1, hpmcounter9
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
	# assert_exception block end
excp_return_label_476:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_477, excp_return_label_477, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_477:
	csrr s2, hpmcounter10
	li a5, failed_addr
	ld s8, 0(a5)
	jr s8
	# assert_exception block end
excp_return_label_477:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_478, excp_return_label_478, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_478:
	csrr a4, hpmcounter11
	li t6, failed_addr
	ld s4, 0(t6)
	jr s4
	# assert_exception block end
excp_return_label_478:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_479, excp_return_label_479, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_479:
	csrr s10, hpmcounter12
	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_479:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_480, excp_return_label_480, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_480:
	csrr s10, hpmcounter14
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_480:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_481, excp_return_label_481, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_481:
	csrr t1, hpmcounter15
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_481:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_482, excp_return_label_482, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_482:
	csrr a3, hpmcounter16
	li a2, failed_addr
	ld t1, 0(a2)
	jr t1
	# assert_exception block end
excp_return_label_482:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_483, excp_return_label_483, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_483:
	csrr s3, hpmcounter17
	li t5, failed_addr
	ld t6, 0(t5)
	jr t6
	# assert_exception block end
excp_return_label_483:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_484, excp_return_label_484, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_484:
	csrr t6, hpmcounter18
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
	# assert_exception block end
excp_return_label_484:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_485, excp_return_label_485, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_485:
	csrr s0, hpmcounter19
	li s0, failed_addr
	ld a1, 0(s0)
	jr a1
	# assert_exception block end
excp_return_label_485:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_486, excp_return_label_486, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_486:
	csrr t5, hpmcounter20
	li s3, failed_addr
	ld a6, 0(s3)
	jr a6
	# assert_exception block end
excp_return_label_486:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_487, excp_return_label_487, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_487:
	csrr a5, hpmcounter21
	li t3, failed_addr
	ld t5, 0(t3)
	jr t5
	# assert_exception block end
excp_return_label_487:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_488, excp_return_label_488, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_488:
	csrr s4, hpmcounter22
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_488:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_489, excp_return_label_489, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_489:
	csrr t1, hpmcounter23
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
	# assert_exception block end
excp_return_label_489:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_490, excp_return_label_490, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_490:
	csrr s11, hpmcounter24
	li s4, failed_addr
	ld s3, 0(s4)
	jr s3
	# assert_exception block end
excp_return_label_490:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_491, excp_return_label_491, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_491:
	csrr a7, hpmcounter25
	li s1, failed_addr
	ld a1, 0(s1)
	jr a1
	# assert_exception block end
excp_return_label_491:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_492, excp_return_label_492, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_492:
	csrr t2, hpmcounter26
	li a7, failed_addr
	ld a4, 0(a7)
	jr a4
	# assert_exception block end
excp_return_label_492:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_493, excp_return_label_493, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_493:
	csrr s2, hpmcounter27
	li t6, failed_addr
	ld a2, 0(t6)
	jr a2
	# assert_exception block end
excp_return_label_493:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_494, excp_return_label_494, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_494:
	csrr a5, hpmcounter28
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_494:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_495, excp_return_label_495, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_495:
	csrr a6, hpmcounter29
	li s3, failed_addr
	ld a2, 0(s3)
	jr a2
	# assert_exception block end
excp_return_label_495:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_496, excp_return_label_496, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_496:
	csrr a2, hpmcounter30
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_496:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_497, excp_return_label_497, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_497:
	csrr a0, hpmcounter31
	li a7, failed_addr
	ld t6, 0(a7)
	jr t6
	# assert_exception block end
excp_return_label_497:
	# Set only this field in mcounteren, clear all others
	li t2, 16384
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s8, hpmcounter14
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_498, excp_return_label_498, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_498:
	csrr s2, cycle
	li s5, failed_addr
	ld s9, 0(s5)
	jr s9
	# assert_exception block end
excp_return_label_498:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_499, excp_return_label_499, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_499:
	csrr s5, time
	li s2, failed_addr
	ld t2, 0(s2)
	jr t2
	# assert_exception block end
excp_return_label_499:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_500, excp_return_label_500, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_500:
	csrr a1, instret
	li s5, failed_addr
	ld t1, 0(s5)
	jr t1
	# assert_exception block end
excp_return_label_500:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_501, excp_return_label_501, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_501:
	csrr t4, hpmcounter3
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
	# assert_exception block end
excp_return_label_501:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_502, excp_return_label_502, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_502:
	csrr a2, hpmcounter4
	li a4, failed_addr
	ld a2, 0(a4)
	jr a2
	# assert_exception block end
excp_return_label_502:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_503, excp_return_label_503, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_503:
	csrr a3, hpmcounter5
	li s4, failed_addr
	ld a1, 0(s4)
	jr a1
	# assert_exception block end
excp_return_label_503:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_504, excp_return_label_504, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_504:
	csrr s1, hpmcounter6
	li a6, failed_addr
	ld s4, 0(a6)
	jr s4
	# assert_exception block end
excp_return_label_504:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_505, excp_return_label_505, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_505:
	csrr a5, hpmcounter7
	li s5, failed_addr
	ld t3, 0(s5)
	jr t3
	# assert_exception block end
excp_return_label_505:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_506, excp_return_label_506, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_506:
	csrr t5, hpmcounter8
	li s8, failed_addr
	ld a0, 0(s8)
	jr a0
	# assert_exception block end
excp_return_label_506:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_507, excp_return_label_507, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_507:
	csrr a4, hpmcounter9
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_507:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_508, excp_return_label_508, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_508:
	csrr s5, hpmcounter10
	li s6, failed_addr
	ld a5, 0(s6)
	jr a5
	# assert_exception block end
excp_return_label_508:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_509, excp_return_label_509, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_509:
	csrr a0, hpmcounter11
	li s4, failed_addr
	ld s3, 0(s4)
	jr s3
	# assert_exception block end
excp_return_label_509:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_510, excp_return_label_510, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_510:
	csrr a1, hpmcounter12
	li t4, failed_addr
	ld t6, 0(t4)
	jr t6
	# assert_exception block end
excp_return_label_510:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_511, excp_return_label_511, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_511:
	csrr a6, hpmcounter13
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_511:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_512, excp_return_label_512, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_512:
	csrr t2, hpmcounter15
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
	# assert_exception block end
excp_return_label_512:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_513, excp_return_label_513, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_513:
	csrr a0, hpmcounter16
	li a4, failed_addr
	ld a1, 0(a4)
	jr a1
	# assert_exception block end
excp_return_label_513:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_514, excp_return_label_514, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_514:
	csrr s3, hpmcounter17
	li a3, failed_addr
	ld t3, 0(a3)
	jr t3
	# assert_exception block end
excp_return_label_514:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_515, excp_return_label_515, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_515:
	csrr s9, hpmcounter18
	li a0, failed_addr
	ld s9, 0(a0)
	jr s9
	# assert_exception block end
excp_return_label_515:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_516, excp_return_label_516, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_516:
	csrr t1, hpmcounter19
	li a0, failed_addr
	ld a4, 0(a0)
	jr a4
	# assert_exception block end
excp_return_label_516:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_517, excp_return_label_517, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_517:
	csrr s9, hpmcounter20
	li a2, failed_addr
	ld a1, 0(a2)
	jr a1
	# assert_exception block end
excp_return_label_517:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_518, excp_return_label_518, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_518:
	csrr a7, hpmcounter21
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_518:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_519, excp_return_label_519, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_519:
	csrr t6, hpmcounter22
	li t1, failed_addr
	ld s10, 0(t1)
	jr s10
	# assert_exception block end
excp_return_label_519:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_520, excp_return_label_520, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_520:
	csrr t5, hpmcounter23
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
	# assert_exception block end
excp_return_label_520:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_521, excp_return_label_521, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_521:
	csrr t5, hpmcounter24
	li a5, failed_addr
	ld s6, 0(a5)
	jr s6
	# assert_exception block end
excp_return_label_521:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_522, excp_return_label_522, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_522:
	csrr t6, hpmcounter25
	li s9, failed_addr
	ld a2, 0(s9)
	jr a2
	# assert_exception block end
excp_return_label_522:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_523, excp_return_label_523, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_523:
	csrr s2, hpmcounter26
	li s1, failed_addr
	ld s5, 0(s1)
	jr s5
	# assert_exception block end
excp_return_label_523:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_524, excp_return_label_524, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_524:
	csrr s4, hpmcounter27
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_524:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_525, excp_return_label_525, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_525:
	csrr s3, hpmcounter28
	li s11, failed_addr
	ld s5, 0(s11)
	jr s5
	# assert_exception block end
excp_return_label_525:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_526, excp_return_label_526, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_526:
	csrr s9, hpmcounter29
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
	# assert_exception block end
excp_return_label_526:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_527, excp_return_label_527, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_527:
	csrr s4, hpmcounter30
	li a0, failed_addr
	ld s9, 0(a0)
	jr s9
	# assert_exception block end
excp_return_label_527:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_528, excp_return_label_528, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_528:
	csrr a6, hpmcounter31
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_528:
	# Set only this field in mcounteren, clear all others
	li t2, 32768
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s10, hpmcounter15
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_529, excp_return_label_529, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_529:
	csrr s3, cycle
	li a0, failed_addr
	ld s5, 0(a0)
	jr s5
	# assert_exception block end
excp_return_label_529:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_530, excp_return_label_530, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_530:
	csrr s6, time
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
	# assert_exception block end
excp_return_label_530:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_531, excp_return_label_531, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_531:
	csrr s7, instret
	li a2, failed_addr
	ld s8, 0(a2)
	jr s8
	# assert_exception block end
excp_return_label_531:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_532, excp_return_label_532, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_532:
	csrr s2, hpmcounter3
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_532:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_533, excp_return_label_533, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_533:
	csrr a1, hpmcounter4
	li s5, failed_addr
	ld s11, 0(s5)
	jr s11
	# assert_exception block end
excp_return_label_533:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_534, excp_return_label_534, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_534:
	csrr s4, hpmcounter5
	li t6, failed_addr
	ld s2, 0(t6)
	jr s2
	# assert_exception block end
excp_return_label_534:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_535, excp_return_label_535, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_535:
	csrr t1, hpmcounter6
	li s9, failed_addr
	ld s5, 0(s9)
	jr s5
	# assert_exception block end
excp_return_label_535:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_536, excp_return_label_536, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_536:
	csrr t1, hpmcounter7
	li a2, failed_addr
	ld a0, 0(a2)
	jr a0
	# assert_exception block end
excp_return_label_536:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_537, excp_return_label_537, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_537:
	csrr t4, hpmcounter8
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_537:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_538, excp_return_label_538, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_538:
	csrr s7, hpmcounter9
	li s1, failed_addr
	ld a5, 0(s1)
	jr a5
	# assert_exception block end
excp_return_label_538:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_539, excp_return_label_539, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_539:
	csrr t3, hpmcounter10
	li a5, failed_addr
	ld a6, 0(a5)
	jr a6
	# assert_exception block end
excp_return_label_539:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_540, excp_return_label_540, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_540:
	csrr s7, hpmcounter11
	li t4, failed_addr
	ld a3, 0(t4)
	jr a3
	# assert_exception block end
excp_return_label_540:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_541, excp_return_label_541, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_541:
	csrr s2, hpmcounter12
	li s0, failed_addr
	ld t2, 0(s0)
	jr t2
	# assert_exception block end
excp_return_label_541:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_542, excp_return_label_542, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_542:
	csrr s2, hpmcounter13
	li s3, failed_addr
	ld s5, 0(s3)
	jr s5
	# assert_exception block end
excp_return_label_542:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_543, excp_return_label_543, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_543:
	csrr a2, hpmcounter14
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
	# assert_exception block end
excp_return_label_543:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_544, excp_return_label_544, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_544:
	csrr t4, hpmcounter16
	li a7, failed_addr
	ld t3, 0(a7)
	jr t3
	# assert_exception block end
excp_return_label_544:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_545, excp_return_label_545, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_545:
	csrr a4, hpmcounter17
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_545:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_546, excp_return_label_546, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_546:
	csrr s0, hpmcounter18
	li a3, failed_addr
	ld s9, 0(a3)
	jr s9
	# assert_exception block end
excp_return_label_546:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_547, excp_return_label_547, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_547:
	csrr t3, hpmcounter19
	li s0, failed_addr
	ld s1, 0(s0)
	jr s1
	# assert_exception block end
excp_return_label_547:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_548, excp_return_label_548, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_548:
	csrr s4, hpmcounter20
	li s9, failed_addr
	ld s2, 0(s9)
	jr s2
	# assert_exception block end
excp_return_label_548:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_549, excp_return_label_549, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_549:
	csrr s7, hpmcounter21
	li s10, failed_addr
	ld a1, 0(s10)
	jr a1
	# assert_exception block end
excp_return_label_549:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_550, excp_return_label_550, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_550:
	csrr a2, hpmcounter22
	li t5, failed_addr
	ld t4, 0(t5)
	jr t4
	# assert_exception block end
excp_return_label_550:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_551, excp_return_label_551, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_551:
	csrr t4, hpmcounter23
	li t4, failed_addr
	ld s7, 0(t4)
	jr s7
	# assert_exception block end
excp_return_label_551:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_552, excp_return_label_552, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_552:
	csrr t5, hpmcounter24
	li a5, failed_addr
	ld s10, 0(a5)
	jr s10
	# assert_exception block end
excp_return_label_552:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_553, excp_return_label_553, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_553:
	csrr t6, hpmcounter25
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
	# assert_exception block end
excp_return_label_553:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_554, excp_return_label_554, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_554:
	csrr a5, hpmcounter26
	li t4, failed_addr
	ld t5, 0(t4)
	jr t5
	# assert_exception block end
excp_return_label_554:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_555, excp_return_label_555, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_555:
	csrr a5, hpmcounter27
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
	# assert_exception block end
excp_return_label_555:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_556, excp_return_label_556, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_556:
	csrr t6, hpmcounter28
	li s4, failed_addr
	ld t3, 0(s4)
	jr t3
	# assert_exception block end
excp_return_label_556:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_557, excp_return_label_557, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_557:
	csrr s1, hpmcounter29
	li a4, failed_addr
	ld t1, 0(a4)
	jr t1
	# assert_exception block end
excp_return_label_557:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_558, excp_return_label_558, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_558:
	csrr t6, hpmcounter30
	li s0, failed_addr
	ld a1, 0(s0)
	jr a1
	# assert_exception block end
excp_return_label_558:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_559, excp_return_label_559, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_559:
	csrr t2, hpmcounter31
	li s11, failed_addr
	ld a4, 0(s11)
	jr a4
	# assert_exception block end
excp_return_label_559:
	# Set only this field in mcounteren, clear all others
	li t2, 65536
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s4, hpmcounter16
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_560, excp_return_label_560, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_560:
	csrr s3, cycle
	li a3, failed_addr
	ld s7, 0(a3)
	jr s7
	# assert_exception block end
excp_return_label_560:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_561, excp_return_label_561, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_561:
	csrr a2, time
	li s1, failed_addr
	ld t4, 0(s1)
	jr t4
	# assert_exception block end
excp_return_label_561:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_562, excp_return_label_562, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_562:
	csrr a4, instret
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_562:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_563, excp_return_label_563, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_563:
	csrr s3, hpmcounter3
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_563:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_564, excp_return_label_564, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_564:
	csrr t3, hpmcounter4
	li s7, failed_addr
	ld s9, 0(s7)
	jr s9
	# assert_exception block end
excp_return_label_564:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_565, excp_return_label_565, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_565:
	csrr t2, hpmcounter5
	li t3, failed_addr
	ld a7, 0(t3)
	jr a7
	# assert_exception block end
excp_return_label_565:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_566, excp_return_label_566, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_566:
	csrr t2, hpmcounter6
	li s4, failed_addr
	ld s5, 0(s4)
	jr s5
	# assert_exception block end
excp_return_label_566:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_567, excp_return_label_567, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_567:
	csrr s9, hpmcounter7
	li s2, failed_addr
	ld s1, 0(s2)
	jr s1
	# assert_exception block end
excp_return_label_567:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_568, excp_return_label_568, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_568:
	csrr s7, hpmcounter8
	li t3, failed_addr
	ld t3, 0(t3)
	jr t3
	# assert_exception block end
excp_return_label_568:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_569, excp_return_label_569, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_569:
	csrr s1, hpmcounter9
	li a3, failed_addr
	ld s2, 0(a3)
	jr s2
	# assert_exception block end
excp_return_label_569:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_570, excp_return_label_570, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_570:
	csrr s4, hpmcounter10
	li s6, failed_addr
	ld s7, 0(s6)
	jr s7
	# assert_exception block end
excp_return_label_570:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_571, excp_return_label_571, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_571:
	csrr a2, hpmcounter11
	li a7, failed_addr
	ld s4, 0(a7)
	jr s4
	# assert_exception block end
excp_return_label_571:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_572, excp_return_label_572, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_572:
	csrr t1, hpmcounter12
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_572:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_573, excp_return_label_573, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_573:
	csrr s6, hpmcounter13
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_573:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_574, excp_return_label_574, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_574:
	csrr a4, hpmcounter14
	li s2, failed_addr
	ld s2, 0(s2)
	jr s2
	# assert_exception block end
excp_return_label_574:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_575, excp_return_label_575, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_575:
	csrr a4, hpmcounter15
	li s5, failed_addr
	ld t3, 0(s5)
	jr t3
	# assert_exception block end
excp_return_label_575:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_576, excp_return_label_576, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_576:
	csrr t2, hpmcounter17
	li t4, failed_addr
	ld s11, 0(t4)
	jr s11
	# assert_exception block end
excp_return_label_576:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_577, excp_return_label_577, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_577:
	csrr s11, hpmcounter18
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_577:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_578, excp_return_label_578, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_578:
	csrr s4, hpmcounter19
	li s0, failed_addr
	ld t2, 0(s0)
	jr t2
	# assert_exception block end
excp_return_label_578:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_579, excp_return_label_579, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_579:
	csrr a5, hpmcounter20
	li s7, failed_addr
	ld t6, 0(s7)
	jr t6
	# assert_exception block end
excp_return_label_579:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_580, excp_return_label_580, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_580:
	csrr s0, hpmcounter21
	li t2, failed_addr
	ld t2, 0(t2)
	jr t2
	# assert_exception block end
excp_return_label_580:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_581, excp_return_label_581, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_581:
	csrr s4, hpmcounter22
	li a0, failed_addr
	ld a6, 0(a0)
	jr a6
	# assert_exception block end
excp_return_label_581:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_582, excp_return_label_582, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_582:
	csrr a7, hpmcounter23
	li s10, failed_addr
	ld t2, 0(s10)
	jr t2
	# assert_exception block end
excp_return_label_582:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_583, excp_return_label_583, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_583:
	csrr s1, hpmcounter24
	li t3, failed_addr
	ld t2, 0(t3)
	jr t2
	# assert_exception block end
excp_return_label_583:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_584, excp_return_label_584, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_584:
	csrr s0, hpmcounter25
	li s9, failed_addr
	ld s7, 0(s9)
	jr s7
	# assert_exception block end
excp_return_label_584:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_585, excp_return_label_585, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_585:
	csrr t5, hpmcounter26
	li s7, failed_addr
	ld t6, 0(s7)
	jr t6
	# assert_exception block end
excp_return_label_585:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_586, excp_return_label_586, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_586:
	csrr t3, hpmcounter27
	li s9, failed_addr
	ld s4, 0(s9)
	jr s4
	# assert_exception block end
excp_return_label_586:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_587, excp_return_label_587, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_587:
	csrr a4, hpmcounter28
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_587:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_588, excp_return_label_588, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_588:
	csrr a6, hpmcounter29
	li t3, failed_addr
	ld t2, 0(t3)
	jr t2
	# assert_exception block end
excp_return_label_588:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_589, excp_return_label_589, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_589:
	csrr s3, hpmcounter30
	li s6, failed_addr
	ld t6, 0(s6)
	jr t6
	# assert_exception block end
excp_return_label_589:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_590, excp_return_label_590, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_590:
	csrr s6, hpmcounter31
	li a3, failed_addr
	ld t3, 0(a3)
	jr t3
	# assert_exception block end
excp_return_label_590:
	# Set only this field in mcounteren, clear all others
	li t2, 131072
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s6, hpmcounter17
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_591, excp_return_label_591, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_591:
	csrr a3, cycle
	li s8, failed_addr
	ld s8, 0(s8)
	jr s8
	# assert_exception block end
excp_return_label_591:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_592, excp_return_label_592, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_592:
	csrr a1, time
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_592:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_593, excp_return_label_593, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_593:
	csrr s11, instret
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_593:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_594, excp_return_label_594, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_594:
	csrr s3, hpmcounter3
	li s4, failed_addr
	ld a3, 0(s4)
	jr a3
	# assert_exception block end
excp_return_label_594:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_595, excp_return_label_595, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_595:
	csrr t5, hpmcounter4
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_595:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_596, excp_return_label_596, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_596:
	csrr t3, hpmcounter5
	li a5, failed_addr
	ld a5, 0(a5)
	jr a5
	# assert_exception block end
excp_return_label_596:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_597, excp_return_label_597, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_597:
	csrr s8, hpmcounter6
	li s5, failed_addr
	ld s0, 0(s5)
	jr s0
	# assert_exception block end
excp_return_label_597:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_598, excp_return_label_598, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_598:
	csrr s0, hpmcounter7
	li a3, failed_addr
	ld s7, 0(a3)
	jr s7
	# assert_exception block end
excp_return_label_598:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_599, excp_return_label_599, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_599:
	csrr t4, hpmcounter8
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_599:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_600, excp_return_label_600, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_600:
	csrr s1, hpmcounter9
	li a0, failed_addr
	ld s1, 0(a0)
	jr s1
	# assert_exception block end
excp_return_label_600:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_601, excp_return_label_601, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_601:
	csrr t1, hpmcounter10
	li s6, failed_addr
	ld s11, 0(s6)
	jr s11
	# assert_exception block end
excp_return_label_601:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_602, excp_return_label_602, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_602:
	csrr a5, hpmcounter11
	li s6, failed_addr
	ld s4, 0(s6)
	jr s4
	# assert_exception block end
excp_return_label_602:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_603, excp_return_label_603, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_603:
	csrr a1, hpmcounter12
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
	# assert_exception block end
excp_return_label_603:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_604, excp_return_label_604, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_604:
	csrr s11, hpmcounter13
	li s2, failed_addr
	ld a5, 0(s2)
	jr a5
	# assert_exception block end
excp_return_label_604:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_605, excp_return_label_605, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_605:
	csrr a3, hpmcounter14
	li s7, failed_addr
	ld s0, 0(s7)
	jr s0
	# assert_exception block end
excp_return_label_605:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_606, excp_return_label_606, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_606:
	csrr s5, hpmcounter15
	li t3, failed_addr
	ld s5, 0(t3)
	jr s5
	# assert_exception block end
excp_return_label_606:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_607, excp_return_label_607, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_607:
	csrr t4, hpmcounter16
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_607:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_608, excp_return_label_608, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_608:
	csrr t3, hpmcounter18
	li t6, failed_addr
	ld s0, 0(t6)
	jr s0
	# assert_exception block end
excp_return_label_608:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_609, excp_return_label_609, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_609:
	csrr s7, hpmcounter19
	li s2, failed_addr
	ld a7, 0(s2)
	jr a7
	# assert_exception block end
excp_return_label_609:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_610, excp_return_label_610, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_610:
	csrr s10, hpmcounter20
	li s6, failed_addr
	ld s7, 0(s6)
	jr s7
	# assert_exception block end
excp_return_label_610:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_611, excp_return_label_611, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_611:
	csrr a6, hpmcounter21
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_611:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_612, excp_return_label_612, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_612:
	csrr s0, hpmcounter22
	li s6, failed_addr
	ld s7, 0(s6)
	jr s7
	# assert_exception block end
excp_return_label_612:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_613, excp_return_label_613, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_613:
	csrr t3, hpmcounter23
	li s11, failed_addr
	ld t3, 0(s11)
	jr t3
	# assert_exception block end
excp_return_label_613:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_614, excp_return_label_614, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_614:
	csrr s6, hpmcounter24
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_614:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_615, excp_return_label_615, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_615:
	csrr a2, hpmcounter25
	li s10, failed_addr
	ld a1, 0(s10)
	jr a1
	# assert_exception block end
excp_return_label_615:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_616, excp_return_label_616, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_616:
	csrr s2, hpmcounter26
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_616:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_617, excp_return_label_617, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_617:
	csrr a6, hpmcounter27
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_617:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_618, excp_return_label_618, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_618:
	csrr t5, hpmcounter28
	li t4, failed_addr
	ld s0, 0(t4)
	jr s0
	# assert_exception block end
excp_return_label_618:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_619, excp_return_label_619, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_619:
	csrr s7, hpmcounter29
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_619:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_620, excp_return_label_620, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_620:
	csrr t6, hpmcounter30
	li t4, failed_addr
	ld s10, 0(t4)
	jr s10
	# assert_exception block end
excp_return_label_620:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_621, excp_return_label_621, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_621:
	csrr t6, hpmcounter31
	li t2, failed_addr
	ld s6, 0(t2)
	jr s6
	# assert_exception block end
excp_return_label_621:
	# Set only this field in mcounteren, clear all others
	li t2, 262144
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr a6, hpmcounter18
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_622, excp_return_label_622, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_622:
	csrr t4, cycle
	li a6, failed_addr
	ld t6, 0(a6)
	jr t6
	# assert_exception block end
excp_return_label_622:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_623, excp_return_label_623, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_623:
	csrr t4, time
	li s5, failed_addr
	ld s1, 0(s5)
	jr s1
	# assert_exception block end
excp_return_label_623:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_624, excp_return_label_624, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_624:
	csrr t5, instret
	li a1, failed_addr
	ld s6, 0(a1)
	jr s6
	# assert_exception block end
excp_return_label_624:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_625, excp_return_label_625, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_625:
	csrr a0, hpmcounter3
	li t6, failed_addr
	ld s10, 0(t6)
	jr s10
	# assert_exception block end
excp_return_label_625:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_626, excp_return_label_626, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_626:
	csrr t3, hpmcounter4
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_626:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_627, excp_return_label_627, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_627:
	csrr s9, hpmcounter5
	li a6, failed_addr
	ld s5, 0(a6)
	jr s5
	# assert_exception block end
excp_return_label_627:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_628, excp_return_label_628, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_628:
	csrr s8, hpmcounter6
	li s8, failed_addr
	ld a4, 0(s8)
	jr a4
	# assert_exception block end
excp_return_label_628:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_629, excp_return_label_629, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_629:
	csrr a7, hpmcounter7
	li s11, failed_addr
	ld s0, 0(s11)
	jr s0
	# assert_exception block end
excp_return_label_629:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_630, excp_return_label_630, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_630:
	csrr t6, hpmcounter8
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
	# assert_exception block end
excp_return_label_630:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_631, excp_return_label_631, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_631:
	csrr a7, hpmcounter9
	li s9, failed_addr
	ld s9, 0(s9)
	jr s9
	# assert_exception block end
excp_return_label_631:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_632, excp_return_label_632, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_632:
	csrr s1, hpmcounter10
	li s2, failed_addr
	ld s7, 0(s2)
	jr s7
	# assert_exception block end
excp_return_label_632:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_633, excp_return_label_633, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_633:
	csrr a4, hpmcounter11
	li a2, failed_addr
	ld a0, 0(a2)
	jr a0
	# assert_exception block end
excp_return_label_633:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_634, excp_return_label_634, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_634:
	csrr s3, hpmcounter12
	li t6, failed_addr
	ld s8, 0(t6)
	jr s8
	# assert_exception block end
excp_return_label_634:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_635, excp_return_label_635, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_635:
	csrr s8, hpmcounter13
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_635:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_636, excp_return_label_636, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_636:
	csrr s8, hpmcounter14
	li s8, failed_addr
	ld s10, 0(s8)
	jr s10
	# assert_exception block end
excp_return_label_636:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_637, excp_return_label_637, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_637:
	csrr s2, hpmcounter15
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
	# assert_exception block end
excp_return_label_637:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_638, excp_return_label_638, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_638:
	csrr t1, hpmcounter16
	li a0, failed_addr
	ld a0, 0(a0)
	jr a0
	# assert_exception block end
excp_return_label_638:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_639, excp_return_label_639, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_639:
	csrr a5, hpmcounter17
	li s1, failed_addr
	ld a1, 0(s1)
	jr a1
	# assert_exception block end
excp_return_label_639:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_640, excp_return_label_640, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_640:
	csrr t1, hpmcounter19
	li t3, failed_addr
	ld s9, 0(t3)
	jr s9
	# assert_exception block end
excp_return_label_640:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_641, excp_return_label_641, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_641:
	csrr s1, hpmcounter20
	li s11, failed_addr
	ld t2, 0(s11)
	jr t2
	# assert_exception block end
excp_return_label_641:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_642, excp_return_label_642, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_642:
	csrr s11, hpmcounter21
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_642:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_643, excp_return_label_643, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_643:
	csrr s5, hpmcounter22
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
	# assert_exception block end
excp_return_label_643:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_644, excp_return_label_644, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_644:
	csrr s1, hpmcounter23
	li s4, failed_addr
	ld s9, 0(s4)
	jr s9
	# assert_exception block end
excp_return_label_644:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_645, excp_return_label_645, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_645:
	csrr a2, hpmcounter24
	li t1, failed_addr
	ld a4, 0(t1)
	jr a4
	# assert_exception block end
excp_return_label_645:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_646, excp_return_label_646, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_646:
	csrr a4, hpmcounter25
	li t4, failed_addr
	ld s5, 0(t4)
	jr s5
	# assert_exception block end
excp_return_label_646:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_647, excp_return_label_647, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_647:
	csrr a4, hpmcounter26
	li s8, failed_addr
	ld t4, 0(s8)
	jr t4
	# assert_exception block end
excp_return_label_647:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_648, excp_return_label_648, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_648:
	csrr s2, hpmcounter27
	li a4, failed_addr
	ld a2, 0(a4)
	jr a2
	# assert_exception block end
excp_return_label_648:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_649, excp_return_label_649, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_649:
	csrr s5, hpmcounter28
	li s4, failed_addr
	ld a6, 0(s4)
	jr a6
	# assert_exception block end
excp_return_label_649:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_650, excp_return_label_650, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_650:
	csrr s0, hpmcounter29
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
	# assert_exception block end
excp_return_label_650:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_651, excp_return_label_651, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_651:
	csrr s9, hpmcounter30
	li s7, failed_addr
	ld a2, 0(s7)
	jr a2
	# assert_exception block end
excp_return_label_651:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_652, excp_return_label_652, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_652:
	csrr a6, hpmcounter31
	li t5, failed_addr
	ld t1, 0(t5)
	jr t1
	# assert_exception block end
excp_return_label_652:
	# Set only this field in mcounteren, clear all others
	li t2, 524288
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr t6, hpmcounter19
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_653, excp_return_label_653, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_653:
	csrr s0, cycle
	li s3, failed_addr
	ld t5, 0(s3)
	jr t5
	# assert_exception block end
excp_return_label_653:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_654, excp_return_label_654, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_654:
	csrr a5, time
	li a7, failed_addr
	ld a2, 0(a7)
	jr a2
	# assert_exception block end
excp_return_label_654:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_655, excp_return_label_655, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_655:
	csrr s1, instret
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
	# assert_exception block end
excp_return_label_655:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_656, excp_return_label_656, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_656:
	csrr s10, hpmcounter3
	li s5, failed_addr
	ld t2, 0(s5)
	jr t2
	# assert_exception block end
excp_return_label_656:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_657, excp_return_label_657, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_657:
	csrr a4, hpmcounter4
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_657:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_658, excp_return_label_658, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_658:
	csrr s8, hpmcounter5
	li a3, failed_addr
	ld s6, 0(a3)
	jr s6
	# assert_exception block end
excp_return_label_658:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_659, excp_return_label_659, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_659:
	csrr a2, hpmcounter6
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_659:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_660, excp_return_label_660, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_660:
	csrr s8, hpmcounter7
	li t2, failed_addr
	ld a3, 0(t2)
	jr a3
	# assert_exception block end
excp_return_label_660:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_661, excp_return_label_661, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_661:
	csrr a7, hpmcounter8
	li a4, failed_addr
	ld a4, 0(a4)
	jr a4
	# assert_exception block end
excp_return_label_661:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_662, excp_return_label_662, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_662:
	csrr a5, hpmcounter9
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
	# assert_exception block end
excp_return_label_662:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_663, excp_return_label_663, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_663:
	csrr a4, hpmcounter10
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_663:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_664, excp_return_label_664, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_664:
	csrr s10, hpmcounter11
	li s10, failed_addr
	ld s9, 0(s10)
	jr s9
	# assert_exception block end
excp_return_label_664:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_665, excp_return_label_665, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_665:
	csrr s8, hpmcounter12
	li s0, failed_addr
	ld t6, 0(s0)
	jr t6
	# assert_exception block end
excp_return_label_665:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_666, excp_return_label_666, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_666:
	csrr t4, hpmcounter13
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_666:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_667, excp_return_label_667, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_667:
	csrr s5, hpmcounter14
	li s7, failed_addr
	ld s5, 0(s7)
	jr s5
	# assert_exception block end
excp_return_label_667:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_668, excp_return_label_668, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_668:
	csrr s6, hpmcounter15
	li s0, failed_addr
	ld s11, 0(s0)
	jr s11
	# assert_exception block end
excp_return_label_668:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_669, excp_return_label_669, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_669:
	csrr s6, hpmcounter16
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_669:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_670, excp_return_label_670, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_670:
	csrr a6, hpmcounter17
	li a3, failed_addr
	ld s2, 0(a3)
	jr s2
	# assert_exception block end
excp_return_label_670:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_671, excp_return_label_671, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_671:
	csrr a4, hpmcounter18
	li s8, failed_addr
	ld t4, 0(s8)
	jr t4
	# assert_exception block end
excp_return_label_671:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_672, excp_return_label_672, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_672:
	csrr s1, hpmcounter20
	li a7, failed_addr
	ld s0, 0(a7)
	jr s0
	# assert_exception block end
excp_return_label_672:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_673, excp_return_label_673, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_673:
	csrr a1, hpmcounter21
	li a2, failed_addr
	ld t1, 0(a2)
	jr t1
	# assert_exception block end
excp_return_label_673:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_674, excp_return_label_674, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_674:
	csrr t5, hpmcounter22
	li t6, failed_addr
	ld s9, 0(t6)
	jr s9
	# assert_exception block end
excp_return_label_674:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_675, excp_return_label_675, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_675:
	csrr s4, hpmcounter23
	li s4, failed_addr
	ld s0, 0(s4)
	jr s0
	# assert_exception block end
excp_return_label_675:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_676, excp_return_label_676, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_676:
	csrr a7, hpmcounter24
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_676:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_677, excp_return_label_677, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_677:
	csrr a2, hpmcounter25
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_677:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_678, excp_return_label_678, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_678:
	csrr s6, hpmcounter26
	li s4, failed_addr
	ld s10, 0(s4)
	jr s10
	# assert_exception block end
excp_return_label_678:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_679, excp_return_label_679, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_679:
	csrr s0, hpmcounter27
	li t5, failed_addr
	ld s1, 0(t5)
	jr s1
	# assert_exception block end
excp_return_label_679:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_680, excp_return_label_680, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_680:
	csrr s10, hpmcounter28
	li a5, failed_addr
	ld s3, 0(a5)
	jr s3
	# assert_exception block end
excp_return_label_680:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_681, excp_return_label_681, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_681:
	csrr s0, hpmcounter29
	li t2, failed_addr
	ld a6, 0(t2)
	jr a6
	# assert_exception block end
excp_return_label_681:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_682, excp_return_label_682, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_682:
	csrr a6, hpmcounter30
	li a5, failed_addr
	ld a0, 0(a5)
	jr a0
	# assert_exception block end
excp_return_label_682:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_683, excp_return_label_683, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_683:
	csrr t3, hpmcounter31
	li a5, failed_addr
	ld s8, 0(a5)
	jr s8
	# assert_exception block end
excp_return_label_683:
	# Set only this field in mcounteren, clear all others
	li t2, 1048576
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr t1, hpmcounter20
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_684, excp_return_label_684, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_684:
	csrr s4, cycle
	li a5, failed_addr
	ld a4, 0(a5)
	jr a4
	# assert_exception block end
excp_return_label_684:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_685, excp_return_label_685, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_685:
	csrr a0, time
	li s8, failed_addr
	ld t4, 0(s8)
	jr t4
	# assert_exception block end
excp_return_label_685:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_686, excp_return_label_686, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_686:
	csrr a5, instret
	li t3, failed_addr
	ld t2, 0(t3)
	jr t2
	# assert_exception block end
excp_return_label_686:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_687, excp_return_label_687, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_687:
	csrr a3, hpmcounter3
	li s5, failed_addr
	ld s3, 0(s5)
	jr s3
	# assert_exception block end
excp_return_label_687:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_688, excp_return_label_688, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_688:
	csrr t6, hpmcounter4
	li s1, failed_addr
	ld a2, 0(s1)
	jr a2
	# assert_exception block end
excp_return_label_688:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_689, excp_return_label_689, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_689:
	csrr s5, hpmcounter5
	li s1, failed_addr
	ld s4, 0(s1)
	jr s4
	# assert_exception block end
excp_return_label_689:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_690, excp_return_label_690, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_690:
	csrr t1, hpmcounter6
	li s1, failed_addr
	ld a7, 0(s1)
	jr a7
	# assert_exception block end
excp_return_label_690:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_691, excp_return_label_691, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_691:
	csrr s10, hpmcounter7
	li a4, failed_addr
	ld s1, 0(a4)
	jr s1
	# assert_exception block end
excp_return_label_691:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_692, excp_return_label_692, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_692:
	csrr s9, hpmcounter8
	li a5, failed_addr
	ld t6, 0(a5)
	jr t6
	# assert_exception block end
excp_return_label_692:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_693, excp_return_label_693, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_693:
	csrr s4, hpmcounter9
	li s8, failed_addr
	ld s2, 0(s8)
	jr s2
	# assert_exception block end
excp_return_label_693:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_694, excp_return_label_694, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_694:
	csrr a7, hpmcounter10
	li t3, failed_addr
	ld a6, 0(t3)
	jr a6
	# assert_exception block end
excp_return_label_694:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_695, excp_return_label_695, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_695:
	csrr s2, hpmcounter11
	li s10, failed_addr
	ld s7, 0(s10)
	jr s7
	# assert_exception block end
excp_return_label_695:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_696, excp_return_label_696, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_696:
	csrr s3, hpmcounter12
	li s3, failed_addr
	ld s3, 0(s3)
	jr s3
	# assert_exception block end
excp_return_label_696:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_697, excp_return_label_697, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_697:
	csrr a7, hpmcounter13
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_697:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_698, excp_return_label_698, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_698:
	csrr s2, hpmcounter14
	li a4, failed_addr
	ld s2, 0(a4)
	jr s2
	# assert_exception block end
excp_return_label_698:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_699, excp_return_label_699, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_699:
	csrr t6, hpmcounter15
	li a2, failed_addr
	ld a7, 0(a2)
	jr a7
	# assert_exception block end
excp_return_label_699:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_700, excp_return_label_700, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_700:
	csrr a1, hpmcounter16
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
	# assert_exception block end
excp_return_label_700:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_701, excp_return_label_701, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_701:
	csrr a5, hpmcounter17
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_701:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_702, excp_return_label_702, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_702:
	csrr t2, hpmcounter18
	li a7, failed_addr
	ld t4, 0(a7)
	jr t4
	# assert_exception block end
excp_return_label_702:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_703, excp_return_label_703, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_703:
	csrr s5, hpmcounter19
	li t5, failed_addr
	ld a3, 0(t5)
	jr a3
	# assert_exception block end
excp_return_label_703:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_704, excp_return_label_704, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_704:
	csrr s6, hpmcounter21
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
	# assert_exception block end
excp_return_label_704:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_705, excp_return_label_705, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_705:
	csrr s4, hpmcounter22
	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_705:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_706, excp_return_label_706, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_706:
	csrr s2, hpmcounter23
	li t1, failed_addr
	ld a5, 0(t1)
	jr a5
	# assert_exception block end
excp_return_label_706:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_707, excp_return_label_707, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_707:
	csrr s10, hpmcounter24
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
	# assert_exception block end
excp_return_label_707:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_708, excp_return_label_708, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_708:
	csrr s6, hpmcounter25
	li s9, failed_addr
	ld a1, 0(s9)
	jr a1
	# assert_exception block end
excp_return_label_708:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_709, excp_return_label_709, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_709:
	csrr t2, hpmcounter26
	li a4, failed_addr
	ld a1, 0(a4)
	jr a1
	# assert_exception block end
excp_return_label_709:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_710, excp_return_label_710, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_710:
	csrr s11, hpmcounter27
	li t2, failed_addr
	ld a6, 0(t2)
	jr a6
	# assert_exception block end
excp_return_label_710:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_711, excp_return_label_711, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_711:
	csrr a6, hpmcounter28
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
	# assert_exception block end
excp_return_label_711:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_712, excp_return_label_712, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_712:
	csrr s6, hpmcounter29
	li a3, failed_addr
	ld t2, 0(a3)
	jr t2
	# assert_exception block end
excp_return_label_712:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_713, excp_return_label_713, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_713:
	csrr s10, hpmcounter30
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_713:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_714, excp_return_label_714, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_714:
	csrr a7, hpmcounter31
	li s5, failed_addr
	ld a0, 0(s5)
	jr a0
	# assert_exception block end
excp_return_label_714:
	# Set only this field in mcounteren, clear all others
	li t2, 2097152
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr a4, hpmcounter21
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_715, excp_return_label_715, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_715:
	csrr a2, cycle
	li s5, failed_addr
	ld a0, 0(s5)
	jr a0
	# assert_exception block end
excp_return_label_715:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_716, excp_return_label_716, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_716:
	csrr a3, time
	li s6, failed_addr
	ld t3, 0(s6)
	jr t3
	# assert_exception block end
excp_return_label_716:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_717, excp_return_label_717, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_717:
	csrr s11, instret
	li t1, failed_addr
	ld s11, 0(t1)
	jr s11
	# assert_exception block end
excp_return_label_717:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_718, excp_return_label_718, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_718:
	csrr a3, hpmcounter3
	li s10, failed_addr
	ld a6, 0(s10)
	jr a6
	# assert_exception block end
excp_return_label_718:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_719, excp_return_label_719, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_719:
	csrr a5, hpmcounter4
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_719:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_720, excp_return_label_720, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_720:
	csrr s10, hpmcounter5
	li t4, failed_addr
	ld s4, 0(t4)
	jr s4
	# assert_exception block end
excp_return_label_720:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_721, excp_return_label_721, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_721:
	csrr s11, hpmcounter6
	li s0, failed_addr
	ld t3, 0(s0)
	jr t3
	# assert_exception block end
excp_return_label_721:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_722, excp_return_label_722, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_722:
	csrr s0, hpmcounter7
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_722:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_723, excp_return_label_723, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_723:
	csrr t6, hpmcounter8
	li t1, failed_addr
	ld a6, 0(t1)
	jr a6
	# assert_exception block end
excp_return_label_723:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_724, excp_return_label_724, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_724:
	csrr t4, hpmcounter9
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_724:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_725, excp_return_label_725, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_725:
	csrr s2, hpmcounter10
	li t5, failed_addr
	ld t4, 0(t5)
	jr t4
	# assert_exception block end
excp_return_label_725:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_726, excp_return_label_726, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_726:
	csrr s2, hpmcounter11
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_726:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_727, excp_return_label_727, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_727:
	csrr s0, hpmcounter12
	li s6, failed_addr
	ld s5, 0(s6)
	jr s5
	# assert_exception block end
excp_return_label_727:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_728, excp_return_label_728, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_728:
	csrr t4, hpmcounter13
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_728:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_729, excp_return_label_729, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_729:
	csrr t5, hpmcounter14
	li t6, failed_addr
	ld s8, 0(t6)
	jr s8
	# assert_exception block end
excp_return_label_729:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_730, excp_return_label_730, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_730:
	csrr s7, hpmcounter15
	li a2, failed_addr
	ld s10, 0(a2)
	jr s10
	# assert_exception block end
excp_return_label_730:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_731, excp_return_label_731, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_731:
	csrr t2, hpmcounter16
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_731:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_732, excp_return_label_732, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_732:
	csrr s8, hpmcounter17
	li a5, failed_addr
	ld a1, 0(a5)
	jr a1
	# assert_exception block end
excp_return_label_732:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_733, excp_return_label_733, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_733:
	csrr s2, hpmcounter18
	li s9, failed_addr
	ld a0, 0(s9)
	jr a0
	# assert_exception block end
excp_return_label_733:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_734, excp_return_label_734, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_734:
	csrr a7, hpmcounter19
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_734:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_735, excp_return_label_735, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_735:
	csrr s4, hpmcounter20
	li s5, failed_addr
	ld t2, 0(s5)
	jr t2
	# assert_exception block end
excp_return_label_735:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_736, excp_return_label_736, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_736:
	csrr a4, hpmcounter22
	li a0, failed_addr
	ld s2, 0(a0)
	jr s2
	# assert_exception block end
excp_return_label_736:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_737, excp_return_label_737, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_737:
	csrr s3, hpmcounter23
	li t3, failed_addr
	ld s10, 0(t3)
	jr s10
	# assert_exception block end
excp_return_label_737:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_738, excp_return_label_738, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_738:
	csrr t1, hpmcounter24
	li a1, failed_addr
	ld a1, 0(a1)
	jr a1
	# assert_exception block end
excp_return_label_738:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_739, excp_return_label_739, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_739:
	csrr s5, hpmcounter25
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_739:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_740, excp_return_label_740, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_740:
	csrr s7, hpmcounter26
	li a7, failed_addr
	ld t6, 0(a7)
	jr t6
	# assert_exception block end
excp_return_label_740:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_741, excp_return_label_741, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_741:
	csrr s8, hpmcounter27
	li s3, failed_addr
	ld a3, 0(s3)
	jr a3
	# assert_exception block end
excp_return_label_741:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_742, excp_return_label_742, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_742:
	csrr s5, hpmcounter28
	li t1, failed_addr
	ld s1, 0(t1)
	jr s1
	# assert_exception block end
excp_return_label_742:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_743, excp_return_label_743, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_743:
	csrr s10, hpmcounter29
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_743:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_744, excp_return_label_744, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_744:
	csrr s10, hpmcounter30
	li a4, failed_addr
	ld a4, 0(a4)
	jr a4
	# assert_exception block end
excp_return_label_744:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_745, excp_return_label_745, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_745:
	csrr t4, hpmcounter31
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_745:
	# Set only this field in mcounteren, clear all others
	li t2, 4194304
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s1, hpmcounter22
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_746, excp_return_label_746, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_746:
	csrr s2, cycle
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_746:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_747, excp_return_label_747, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_747:
	csrr t4, time
	li t4, failed_addr
	ld s0, 0(t4)
	jr s0
	# assert_exception block end
excp_return_label_747:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_748, excp_return_label_748, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_748:
	csrr a7, instret
	li a3, failed_addr
	ld s3, 0(a3)
	jr s3
	# assert_exception block end
excp_return_label_748:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_749, excp_return_label_749, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_749:
	csrr t1, hpmcounter3
	li t1, failed_addr
	ld a6, 0(t1)
	jr a6
	# assert_exception block end
excp_return_label_749:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_750, excp_return_label_750, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_750:
	csrr s2, hpmcounter4
	li t4, failed_addr
	ld a2, 0(t4)
	jr a2
	# assert_exception block end
excp_return_label_750:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_751, excp_return_label_751, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_751:
	csrr s6, hpmcounter5
	li a3, failed_addr
	ld s0, 0(a3)
	jr s0
	# assert_exception block end
excp_return_label_751:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_752, excp_return_label_752, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_752:
	csrr s11, hpmcounter6
	li a1, failed_addr
	ld a4, 0(a1)
	jr a4
	# assert_exception block end
excp_return_label_752:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_753, excp_return_label_753, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_753:
	csrr s5, hpmcounter7
	li s1, failed_addr
	ld s5, 0(s1)
	jr s5
	# assert_exception block end
excp_return_label_753:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_754, excp_return_label_754, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_754:
	csrr a2, hpmcounter8
	li a5, failed_addr
	ld a1, 0(a5)
	jr a1
	# assert_exception block end
excp_return_label_754:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_755, excp_return_label_755, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_755:
	csrr s3, hpmcounter9
	li s11, failed_addr
	ld a0, 0(s11)
	jr a0
	# assert_exception block end
excp_return_label_755:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_756, excp_return_label_756, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_756:
	csrr a3, hpmcounter10
	li a5, failed_addr
	ld t3, 0(a5)
	jr t3
	# assert_exception block end
excp_return_label_756:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_757, excp_return_label_757, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_757:
	csrr s5, hpmcounter11
	li s0, failed_addr
	ld a6, 0(s0)
	jr a6
	# assert_exception block end
excp_return_label_757:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_758, excp_return_label_758, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_758:
	csrr a1, hpmcounter12
	li a1, failed_addr
	ld s11, 0(a1)
	jr s11
	# assert_exception block end
excp_return_label_758:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_759, excp_return_label_759, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_759:
	csrr t5, hpmcounter13
	li s10, failed_addr
	ld s6, 0(s10)
	jr s6
	# assert_exception block end
excp_return_label_759:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_760, excp_return_label_760, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_760:
	csrr s1, hpmcounter14
	li a7, failed_addr
	ld s8, 0(a7)
	jr s8
	# assert_exception block end
excp_return_label_760:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_761, excp_return_label_761, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_761:
	csrr a1, hpmcounter15
	li t2, failed_addr
	ld t5, 0(t2)
	jr t5
	# assert_exception block end
excp_return_label_761:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_762, excp_return_label_762, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_762:
	csrr s4, hpmcounter16
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
	# assert_exception block end
excp_return_label_762:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_763, excp_return_label_763, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_763:
	csrr s6, hpmcounter17
	li a6, failed_addr
	ld s5, 0(a6)
	jr s5
	# assert_exception block end
excp_return_label_763:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_764, excp_return_label_764, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_764:
	csrr a5, hpmcounter18
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_764:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_765, excp_return_label_765, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_765:
	csrr s10, hpmcounter19
	li s7, failed_addr
	ld s3, 0(s7)
	jr s3
	# assert_exception block end
excp_return_label_765:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_766, excp_return_label_766, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_766:
	csrr t1, hpmcounter20
	li s3, failed_addr
	ld a5, 0(s3)
	jr a5
	# assert_exception block end
excp_return_label_766:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_767, excp_return_label_767, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_767:
	csrr s0, hpmcounter21
	li s0, failed_addr
	ld s1, 0(s0)
	jr s1
	# assert_exception block end
excp_return_label_767:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_768, excp_return_label_768, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_768:
	csrr s0, hpmcounter23
	li t5, failed_addr
	ld t3, 0(t5)
	jr t3
	# assert_exception block end
excp_return_label_768:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_769, excp_return_label_769, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_769:
	csrr s8, hpmcounter24
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_769:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_770, excp_return_label_770, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_770:
	csrr a5, hpmcounter25
	li s2, failed_addr
	ld t4, 0(s2)
	jr t4
	# assert_exception block end
excp_return_label_770:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_771, excp_return_label_771, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_771:
	csrr t1, hpmcounter26
	li s11, failed_addr
	ld s4, 0(s11)
	jr s4
	# assert_exception block end
excp_return_label_771:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_772, excp_return_label_772, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_772:
	csrr s7, hpmcounter27
	li a4, failed_addr
	ld a7, 0(a4)
	jr a7
	# assert_exception block end
excp_return_label_772:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_773, excp_return_label_773, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_773:
	csrr s5, hpmcounter28
	li s2, failed_addr
	ld a7, 0(s2)
	jr a7
	# assert_exception block end
excp_return_label_773:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_774, excp_return_label_774, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_774:
	csrr s4, hpmcounter29
	li a6, failed_addr
	ld s6, 0(a6)
	jr s6
	# assert_exception block end
excp_return_label_774:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_775, excp_return_label_775, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_775:
	csrr a3, hpmcounter30
	li a0, failed_addr
	ld s0, 0(a0)
	jr s0
	# assert_exception block end
excp_return_label_775:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_776, excp_return_label_776, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_776:
	csrr a3, hpmcounter31
	li s7, failed_addr
	ld t6, 0(s7)
	jr t6
	# assert_exception block end
excp_return_label_776:
	# Set only this field in mcounteren, clear all others
	li t2, 8388608
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s7, hpmcounter23
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_777, excp_return_label_777, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_777:
	csrr a7, cycle
	li a5, failed_addr
	ld a5, 0(a5)
	jr a5
	# assert_exception block end
excp_return_label_777:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_778, excp_return_label_778, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_778:
	csrr a5, time
	li t5, failed_addr
	ld a0, 0(t5)
	jr a0
	# assert_exception block end
excp_return_label_778:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_779, excp_return_label_779, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_779:
	csrr a1, instret
	li a3, failed_addr
	ld a4, 0(a3)
	jr a4
	# assert_exception block end
excp_return_label_779:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_780, excp_return_label_780, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_780:
	csrr s5, hpmcounter3
	li s11, failed_addr
	ld s7, 0(s11)
	jr s7
	# assert_exception block end
excp_return_label_780:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_781, excp_return_label_781, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_781:
	csrr s1, hpmcounter4
	li a2, failed_addr
	ld a7, 0(a2)
	jr a7
	# assert_exception block end
excp_return_label_781:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_782, excp_return_label_782, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_782:
	csrr s0, hpmcounter5
	li s0, failed_addr
	ld a2, 0(s0)
	jr a2
	# assert_exception block end
excp_return_label_782:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_783, excp_return_label_783, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_783:
	csrr s10, hpmcounter6
	li s9, failed_addr
	ld t2, 0(s9)
	jr t2
	# assert_exception block end
excp_return_label_783:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_784, excp_return_label_784, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_784:
	csrr a1, hpmcounter7
	li s9, failed_addr
	ld s2, 0(s9)
	jr s2
	# assert_exception block end
excp_return_label_784:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_785, excp_return_label_785, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_785:
	csrr s1, hpmcounter8
	li t3, failed_addr
	ld s9, 0(t3)
	jr s9
	# assert_exception block end
excp_return_label_785:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_786, excp_return_label_786, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_786:
	csrr a2, hpmcounter9
	li s1, failed_addr
	ld s2, 0(s1)
	jr s2
	# assert_exception block end
excp_return_label_786:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_787, excp_return_label_787, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_787:
	csrr a1, hpmcounter10
	li a7, failed_addr
	ld s5, 0(a7)
	jr s5
	# assert_exception block end
excp_return_label_787:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_788, excp_return_label_788, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_788:
	csrr a6, hpmcounter11
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_788:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_789, excp_return_label_789, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_789:
	csrr t1, hpmcounter12
	li s2, failed_addr
	ld s6, 0(s2)
	jr s6
	# assert_exception block end
excp_return_label_789:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_790, excp_return_label_790, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_790:
	csrr a7, hpmcounter13
	li s1, failed_addr
	ld s4, 0(s1)
	jr s4
	# assert_exception block end
excp_return_label_790:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_791, excp_return_label_791, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_791:
	csrr a7, hpmcounter14
	li s7, failed_addr
	ld a1, 0(s7)
	jr a1
	# assert_exception block end
excp_return_label_791:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_792, excp_return_label_792, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_792:
	csrr a4, hpmcounter15
	li a4, failed_addr
	ld s8, 0(a4)
	jr s8
	# assert_exception block end
excp_return_label_792:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_793, excp_return_label_793, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_793:
	csrr a2, hpmcounter16
	li t5, failed_addr
	ld s9, 0(t5)
	jr s9
	# assert_exception block end
excp_return_label_793:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_794, excp_return_label_794, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_794:
	csrr s7, hpmcounter17
	li t5, failed_addr
	ld a6, 0(t5)
	jr a6
	# assert_exception block end
excp_return_label_794:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_795, excp_return_label_795, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_795:
	csrr s10, hpmcounter18
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_795:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_796, excp_return_label_796, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_796:
	csrr t4, hpmcounter19
	li a1, failed_addr
	ld a0, 0(a1)
	jr a0
	# assert_exception block end
excp_return_label_796:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_797, excp_return_label_797, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_797:
	csrr t3, hpmcounter20
	li s2, failed_addr
	ld a6, 0(s2)
	jr a6
	# assert_exception block end
excp_return_label_797:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_798, excp_return_label_798, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_798:
	csrr a3, hpmcounter21
	li a5, failed_addr
	ld s1, 0(a5)
	jr s1
	# assert_exception block end
excp_return_label_798:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_799, excp_return_label_799, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_799:
	csrr a5, hpmcounter22
	li t2, failed_addr
	ld t4, 0(t2)
	jr t4
	# assert_exception block end
excp_return_label_799:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_800, excp_return_label_800, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_800:
	csrr s6, hpmcounter24
	li s0, failed_addr
	ld t3, 0(s0)
	jr t3
	# assert_exception block end
excp_return_label_800:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_801, excp_return_label_801, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_801:
	csrr a4, hpmcounter25
	li s8, failed_addr
	ld s2, 0(s8)
	jr s2
	# assert_exception block end
excp_return_label_801:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_802, excp_return_label_802, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_802:
	csrr s10, hpmcounter26
	li s7, failed_addr
	ld a5, 0(s7)
	jr a5
	# assert_exception block end
excp_return_label_802:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_803, excp_return_label_803, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_803:
	csrr t4, hpmcounter27
	li a0, failed_addr
	ld a1, 0(a0)
	jr a1
	# assert_exception block end
excp_return_label_803:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_804, excp_return_label_804, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_804:
	csrr s1, hpmcounter28
	li s7, failed_addr
	ld t6, 0(s7)
	jr t6
	# assert_exception block end
excp_return_label_804:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_805, excp_return_label_805, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_805:
	csrr t5, hpmcounter29
	li t4, failed_addr
	ld s9, 0(t4)
	jr s9
	# assert_exception block end
excp_return_label_805:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_806, excp_return_label_806, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_806:
	csrr s3, hpmcounter30
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_806:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_807, excp_return_label_807, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_807:
	csrr s6, hpmcounter31
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_807:
	# Set only this field in mcounteren, clear all others
	li t2, 16777216
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s3, hpmcounter24
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_808, excp_return_label_808, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_808:
	csrr a1, cycle
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_808:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_809, excp_return_label_809, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_809:
	csrr s9, time
	li s5, failed_addr
	ld a2, 0(s5)
	jr a2
	# assert_exception block end
excp_return_label_809:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_810, excp_return_label_810, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_810:
	csrr s8, instret
	li a1, failed_addr
	ld t2, 0(a1)
	jr t2
	# assert_exception block end
excp_return_label_810:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_811, excp_return_label_811, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_811:
	csrr s5, hpmcounter3
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_811:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_812, excp_return_label_812, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_812:
	csrr t2, hpmcounter4
	li s9, failed_addr
	ld a0, 0(s9)
	jr a0
	# assert_exception block end
excp_return_label_812:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_813, excp_return_label_813, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_813:
	csrr t5, hpmcounter5
	li a7, failed_addr
	ld t6, 0(a7)
	jr t6
	# assert_exception block end
excp_return_label_813:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_814, excp_return_label_814, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_814:
	csrr s2, hpmcounter6
	li a4, failed_addr
	ld a7, 0(a4)
	jr a7
	# assert_exception block end
excp_return_label_814:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_815, excp_return_label_815, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_815:
	csrr s5, hpmcounter7
	li s5, failed_addr
	ld a1, 0(s5)
	jr a1
	# assert_exception block end
excp_return_label_815:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_816, excp_return_label_816, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_816:
	csrr t5, hpmcounter8
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
	# assert_exception block end
excp_return_label_816:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_817, excp_return_label_817, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_817:
	csrr s9, hpmcounter9
	li t2, failed_addr
	ld s11, 0(t2)
	jr s11
	# assert_exception block end
excp_return_label_817:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_818, excp_return_label_818, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_818:
	csrr a1, hpmcounter10
	li a7, failed_addr
	ld s11, 0(a7)
	jr s11
	# assert_exception block end
excp_return_label_818:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_819, excp_return_label_819, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_819:
	csrr s5, hpmcounter11
	li s11, failed_addr
	ld s8, 0(s11)
	jr s8
	# assert_exception block end
excp_return_label_819:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_820, excp_return_label_820, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_820:
	csrr s9, hpmcounter12
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_820:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_821, excp_return_label_821, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_821:
	csrr s1, hpmcounter13
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
	# assert_exception block end
excp_return_label_821:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_822, excp_return_label_822, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_822:
	csrr s7, hpmcounter14
	li s11, failed_addr
	ld s7, 0(s11)
	jr s7
	# assert_exception block end
excp_return_label_822:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_823, excp_return_label_823, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_823:
	csrr s7, hpmcounter15
	li a4, failed_addr
	ld t3, 0(a4)
	jr t3
	# assert_exception block end
excp_return_label_823:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_824, excp_return_label_824, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_824:
	csrr s9, hpmcounter16
	li s6, failed_addr
	ld s3, 0(s6)
	jr s3
	# assert_exception block end
excp_return_label_824:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_825, excp_return_label_825, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_825:
	csrr t6, hpmcounter17
	li t1, failed_addr
	ld a4, 0(t1)
	jr a4
	# assert_exception block end
excp_return_label_825:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_826, excp_return_label_826, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_826:
	csrr t1, hpmcounter18
	li a6, failed_addr
	ld a6, 0(a6)
	jr a6
	# assert_exception block end
excp_return_label_826:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_827, excp_return_label_827, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_827:
	csrr s8, hpmcounter19
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
	# assert_exception block end
excp_return_label_827:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_828, excp_return_label_828, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_828:
	csrr t5, hpmcounter20
	li s6, failed_addr
	ld t3, 0(s6)
	jr t3
	# assert_exception block end
excp_return_label_828:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_829, excp_return_label_829, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_829:
	csrr a2, hpmcounter21
	li t5, failed_addr
	ld t6, 0(t5)
	jr t6
	# assert_exception block end
excp_return_label_829:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_830, excp_return_label_830, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_830:
	csrr s1, hpmcounter22
	li a2, failed_addr
	ld s6, 0(a2)
	jr s6
	# assert_exception block end
excp_return_label_830:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_831, excp_return_label_831, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_831:
	csrr a5, hpmcounter23
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
	# assert_exception block end
excp_return_label_831:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_832, excp_return_label_832, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_832:
	csrr a3, hpmcounter25
	li a2, failed_addr
	ld t4, 0(a2)
	jr t4
	# assert_exception block end
excp_return_label_832:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_833, excp_return_label_833, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_833:
	csrr a6, hpmcounter26
	li a6, failed_addr
	ld s4, 0(a6)
	jr s4
	# assert_exception block end
excp_return_label_833:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_834, excp_return_label_834, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_834:
	csrr s9, hpmcounter27
	li s4, failed_addr
	ld a5, 0(s4)
	jr a5
	# assert_exception block end
excp_return_label_834:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_835, excp_return_label_835, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_835:
	csrr s9, hpmcounter28
	li s10, failed_addr
	ld t2, 0(s10)
	jr t2
	# assert_exception block end
excp_return_label_835:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_836, excp_return_label_836, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_836:
	csrr t6, hpmcounter29
	li s0, failed_addr
	ld t5, 0(s0)
	jr t5
	# assert_exception block end
excp_return_label_836:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_837, excp_return_label_837, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_837:
	csrr s1, hpmcounter30
	li t3, failed_addr
	ld s9, 0(t3)
	jr s9
	# assert_exception block end
excp_return_label_837:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_838, excp_return_label_838, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_838:
	csrr s9, hpmcounter31
	li a1, failed_addr
	ld s8, 0(a1)
	jr s8
	# assert_exception block end
excp_return_label_838:
	# Set only this field in mcounteren, clear all others
	li t2, 33554432
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s9, hpmcounter25
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_839, excp_return_label_839, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_839:
	csrr s2, cycle
	li a2, failed_addr
	ld s7, 0(a2)
	jr s7
	# assert_exception block end
excp_return_label_839:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_840, excp_return_label_840, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_840:
	csrr t2, time
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_840:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_841, excp_return_label_841, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_841:
	csrr s6, instret
	li s11, failed_addr
	ld t2, 0(s11)
	jr t2
	# assert_exception block end
excp_return_label_841:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_842, excp_return_label_842, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_842:
	csrr s4, hpmcounter3
	li t5, failed_addr
	ld s7, 0(t5)
	jr s7
	# assert_exception block end
excp_return_label_842:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_843, excp_return_label_843, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_843:
	csrr s10, hpmcounter4
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
	# assert_exception block end
excp_return_label_843:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_844, excp_return_label_844, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_844:
	csrr s4, hpmcounter5
	li s10, failed_addr
	ld t4, 0(s10)
	jr t4
	# assert_exception block end
excp_return_label_844:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_845, excp_return_label_845, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_845:
	csrr a3, hpmcounter6
	li t4, failed_addr
	ld a3, 0(t4)
	jr a3
	# assert_exception block end
excp_return_label_845:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_846, excp_return_label_846, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_846:
	csrr t4, hpmcounter7
	li s6, failed_addr
	ld a3, 0(s6)
	jr a3
	# assert_exception block end
excp_return_label_846:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_847, excp_return_label_847, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_847:
	csrr t5, hpmcounter8
	li s4, failed_addr
	ld a1, 0(s4)
	jr a1
	# assert_exception block end
excp_return_label_847:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_848, excp_return_label_848, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_848:
	csrr s1, hpmcounter9
	li t3, failed_addr
	ld s8, 0(t3)
	jr s8
	# assert_exception block end
excp_return_label_848:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_849, excp_return_label_849, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_849:
	csrr t2, hpmcounter10
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
	# assert_exception block end
excp_return_label_849:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_850, excp_return_label_850, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_850:
	csrr a0, hpmcounter11
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_850:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_851, excp_return_label_851, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_851:
	csrr s6, hpmcounter12
	li s9, failed_addr
	ld t2, 0(s9)
	jr t2
	# assert_exception block end
excp_return_label_851:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_852, excp_return_label_852, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_852:
	csrr a4, hpmcounter13
	li a0, failed_addr
	ld a2, 0(a0)
	jr a2
	# assert_exception block end
excp_return_label_852:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_853, excp_return_label_853, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_853:
	csrr s6, hpmcounter14
	li s11, failed_addr
	ld s7, 0(s11)
	jr s7
	# assert_exception block end
excp_return_label_853:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_854, excp_return_label_854, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_854:
	csrr a2, hpmcounter15
	li s1, failed_addr
	ld t3, 0(s1)
	jr t3
	# assert_exception block end
excp_return_label_854:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_855, excp_return_label_855, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_855:
	csrr s2, hpmcounter16
	li s6, failed_addr
	ld a5, 0(s6)
	jr a5
	# assert_exception block end
excp_return_label_855:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_856, excp_return_label_856, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_856:
	csrr s2, hpmcounter17
	li a1, failed_addr
	ld a5, 0(a1)
	jr a5
	# assert_exception block end
excp_return_label_856:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_857, excp_return_label_857, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_857:
	csrr s2, hpmcounter18
	li s5, failed_addr
	ld a7, 0(s5)
	jr a7
	# assert_exception block end
excp_return_label_857:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_858, excp_return_label_858, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_858:
	csrr a5, hpmcounter19
	li s2, failed_addr
	ld a1, 0(s2)
	jr a1
	# assert_exception block end
excp_return_label_858:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_859, excp_return_label_859, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_859:
	csrr t4, hpmcounter20
	li s11, failed_addr
	ld a2, 0(s11)
	jr a2
	# assert_exception block end
excp_return_label_859:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_860, excp_return_label_860, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_860:
	csrr a3, hpmcounter21
	li a1, failed_addr
	ld s10, 0(a1)
	jr s10
	# assert_exception block end
excp_return_label_860:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_861, excp_return_label_861, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_861:
	csrr s3, hpmcounter22
	li s7, failed_addr
	ld s6, 0(s7)
	jr s6
	# assert_exception block end
excp_return_label_861:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_862, excp_return_label_862, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_862:
	csrr t4, hpmcounter23
	li a0, failed_addr
	ld a0, 0(a0)
	jr a0
	# assert_exception block end
excp_return_label_862:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_863, excp_return_label_863, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_863:
	csrr s11, hpmcounter24
	li s2, failed_addr
	ld s1, 0(s2)
	jr s1
	# assert_exception block end
excp_return_label_863:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_864, excp_return_label_864, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_864:
	csrr s7, hpmcounter26
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_864:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_865, excp_return_label_865, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_865:
	csrr s11, hpmcounter27
	li t3, failed_addr
	ld t3, 0(t3)
	jr t3
	# assert_exception block end
excp_return_label_865:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_866, excp_return_label_866, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_866:
	csrr t4, hpmcounter28
	li t5, failed_addr
	ld a4, 0(t5)
	jr a4
	# assert_exception block end
excp_return_label_866:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_867, excp_return_label_867, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_867:
	csrr a1, hpmcounter29
	li t1, failed_addr
	ld a5, 0(t1)
	jr a5
	# assert_exception block end
excp_return_label_867:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_868, excp_return_label_868, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_868:
	csrr t1, hpmcounter30
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_868:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_869, excp_return_label_869, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_869:
	csrr s7, hpmcounter31
	li t6, failed_addr
	ld t3, 0(t6)
	jr t3
	# assert_exception block end
excp_return_label_869:
	# Set only this field in mcounteren, clear all others
	li t2, 67108864
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr a3, hpmcounter26
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_870, excp_return_label_870, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_870:
	csrr s4, cycle
	li t2, failed_addr
	ld s7, 0(t2)
	jr s7
	# assert_exception block end
excp_return_label_870:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_871, excp_return_label_871, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_871:
	csrr s4, time
	li s3, failed_addr
	ld t4, 0(s3)
	jr t4
	# assert_exception block end
excp_return_label_871:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_872, excp_return_label_872, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_872:
	csrr s6, instret
	li s6, failed_addr
	ld s10, 0(s6)
	jr s10
	# assert_exception block end
excp_return_label_872:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_873, excp_return_label_873, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_873:
	csrr s0, hpmcounter3
	li s5, failed_addr
	ld s4, 0(s5)
	jr s4
	# assert_exception block end
excp_return_label_873:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_874, excp_return_label_874, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_874:
	csrr a3, hpmcounter4
	li t2, failed_addr
	ld s7, 0(t2)
	jr s7
	# assert_exception block end
excp_return_label_874:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_875, excp_return_label_875, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_875:
	csrr a0, hpmcounter5
	li a2, failed_addr
	ld a5, 0(a2)
	jr a5
	# assert_exception block end
excp_return_label_875:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_876, excp_return_label_876, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_876:
	csrr s8, hpmcounter6
	li a7, failed_addr
	ld a1, 0(a7)
	jr a1
	# assert_exception block end
excp_return_label_876:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_877, excp_return_label_877, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_877:
	csrr a6, hpmcounter7
	li a5, failed_addr
	ld s2, 0(a5)
	jr s2
	# assert_exception block end
excp_return_label_877:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_878, excp_return_label_878, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_878:
	csrr s5, hpmcounter8
	li a5, failed_addr
	ld a6, 0(a5)
	jr a6
	# assert_exception block end
excp_return_label_878:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_879, excp_return_label_879, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_879:
	csrr s9, hpmcounter9
	li a4, failed_addr
	ld s11, 0(a4)
	jr s11
	# assert_exception block end
excp_return_label_879:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_880, excp_return_label_880, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_880:
	csrr s1, hpmcounter10
	li t5, failed_addr
	ld s2, 0(t5)
	jr s2
	# assert_exception block end
excp_return_label_880:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_881, excp_return_label_881, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_881:
	csrr t2, hpmcounter11
	li s7, failed_addr
	ld s7, 0(s7)
	jr s7
	# assert_exception block end
excp_return_label_881:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_882, excp_return_label_882, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_882:
	csrr t1, hpmcounter12
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_882:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_883, excp_return_label_883, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_883:
	csrr a4, hpmcounter13
	li s4, failed_addr
	ld s9, 0(s4)
	jr s9
	# assert_exception block end
excp_return_label_883:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_884, excp_return_label_884, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_884:
	csrr a3, hpmcounter14
	li s8, failed_addr
	ld a1, 0(s8)
	jr a1
	# assert_exception block end
excp_return_label_884:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_885, excp_return_label_885, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_885:
	csrr s11, hpmcounter15
	li t1, failed_addr
	ld s7, 0(t1)
	jr s7
	# assert_exception block end
excp_return_label_885:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_886, excp_return_label_886, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_886:
	csrr a7, hpmcounter16
	li a2, failed_addr
	ld s0, 0(a2)
	jr s0
	# assert_exception block end
excp_return_label_886:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_887, excp_return_label_887, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_887:
	csrr s5, hpmcounter17
	li t6, failed_addr
	ld s3, 0(t6)
	jr s3
	# assert_exception block end
excp_return_label_887:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_888, excp_return_label_888, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_888:
	csrr s1, hpmcounter18
	li t1, failed_addr
	ld t6, 0(t1)
	jr t6
	# assert_exception block end
excp_return_label_888:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_889, excp_return_label_889, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_889:
	csrr s8, hpmcounter19
	li t4, failed_addr
	ld s4, 0(t4)
	jr s4
	# assert_exception block end
excp_return_label_889:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_890, excp_return_label_890, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_890:
	csrr s9, hpmcounter20
	li s7, failed_addr
	ld a0, 0(s7)
	jr a0
	# assert_exception block end
excp_return_label_890:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_891, excp_return_label_891, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_891:
	csrr t3, hpmcounter21
	li t6, failed_addr
	ld s2, 0(t6)
	jr s2
	# assert_exception block end
excp_return_label_891:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_892, excp_return_label_892, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_892:
	csrr t1, hpmcounter22
	li s7, failed_addr
	ld a5, 0(s7)
	jr a5
	# assert_exception block end
excp_return_label_892:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_893, excp_return_label_893, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_893:
	csrr s7, hpmcounter23
	li a4, failed_addr
	ld a1, 0(a4)
	jr a1
	# assert_exception block end
excp_return_label_893:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_894, excp_return_label_894, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_894:
	csrr a7, hpmcounter24
	li a3, failed_addr
	ld s3, 0(a3)
	jr s3
	# assert_exception block end
excp_return_label_894:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_895, excp_return_label_895, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_895:
	csrr s3, hpmcounter25
	li t5, failed_addr
	ld s10, 0(t5)
	jr s10
	# assert_exception block end
excp_return_label_895:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_896, excp_return_label_896, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_896:
	csrr s10, hpmcounter27
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_896:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_897, excp_return_label_897, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_897:
	csrr a2, hpmcounter28
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_897:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_898, excp_return_label_898, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_898:
	csrr s5, hpmcounter29
	li s9, failed_addr
	ld a6, 0(s9)
	jr a6
	# assert_exception block end
excp_return_label_898:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_899, excp_return_label_899, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_899:
	csrr s5, hpmcounter30
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
	# assert_exception block end
excp_return_label_899:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_900, excp_return_label_900, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_900:
	csrr s11, hpmcounter31
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_900:
	# Set only this field in mcounteren, clear all others
	li t2, 134217728
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s4, hpmcounter27
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_901, excp_return_label_901, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_901:
	csrr t6, cycle
	li t6, failed_addr
	ld s7, 0(t6)
	jr s7
	# assert_exception block end
excp_return_label_901:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_902, excp_return_label_902, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_902:
	csrr s1, time
	li t3, failed_addr
	ld t4, 0(t3)
	jr t4
	# assert_exception block end
excp_return_label_902:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_903, excp_return_label_903, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_903:
	csrr s0, instret
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_903:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_904, excp_return_label_904, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_904:
	csrr s0, hpmcounter3
	li a3, failed_addr
	ld a1, 0(a3)
	jr a1
	# assert_exception block end
excp_return_label_904:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_905, excp_return_label_905, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_905:
	csrr t1, hpmcounter4
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_905:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_906, excp_return_label_906, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_906:
	csrr a3, hpmcounter5
	li a5, failed_addr
	ld s5, 0(a5)
	jr s5
	# assert_exception block end
excp_return_label_906:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_907, excp_return_label_907, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_907:
	csrr t1, hpmcounter6
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_907:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_908, excp_return_label_908, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_908:
	csrr t6, hpmcounter7
	li s9, failed_addr
	ld t3, 0(s9)
	jr t3
	# assert_exception block end
excp_return_label_908:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_909, excp_return_label_909, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_909:
	csrr a0, hpmcounter8
	li s9, failed_addr
	ld s11, 0(s9)
	jr s11
	# assert_exception block end
excp_return_label_909:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_910, excp_return_label_910, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_910:
	csrr s9, hpmcounter9
	li s2, failed_addr
	ld s1, 0(s2)
	jr s1
	# assert_exception block end
excp_return_label_910:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_911, excp_return_label_911, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_911:
	csrr s8, hpmcounter10
	li s0, failed_addr
	ld s5, 0(s0)
	jr s5
	# assert_exception block end
excp_return_label_911:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_912, excp_return_label_912, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_912:
	csrr s0, hpmcounter11
	li s2, failed_addr
	ld s11, 0(s2)
	jr s11
	# assert_exception block end
excp_return_label_912:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_913, excp_return_label_913, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_913:
	csrr a3, hpmcounter12
	li s5, failed_addr
	ld a5, 0(s5)
	jr a5
	# assert_exception block end
excp_return_label_913:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_914, excp_return_label_914, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_914:
	csrr s3, hpmcounter13
	li t6, failed_addr
	ld s4, 0(t6)
	jr s4
	# assert_exception block end
excp_return_label_914:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_915, excp_return_label_915, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_915:
	csrr s1, hpmcounter14
	li t1, failed_addr
	ld a4, 0(t1)
	jr a4
	# assert_exception block end
excp_return_label_915:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_916, excp_return_label_916, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_916:
	csrr a5, hpmcounter15
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_916:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_917, excp_return_label_917, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_917:
	csrr a1, hpmcounter16
	li s10, failed_addr
	ld a1, 0(s10)
	jr a1
	# assert_exception block end
excp_return_label_917:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_918, excp_return_label_918, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_918:
	csrr a1, hpmcounter17
	li s11, failed_addr
	ld a0, 0(s11)
	jr a0
	# assert_exception block end
excp_return_label_918:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_919, excp_return_label_919, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_919:
	csrr t1, hpmcounter18
	li s8, failed_addr
	ld s2, 0(s8)
	jr s2
	# assert_exception block end
excp_return_label_919:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_920, excp_return_label_920, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_920:
	csrr s8, hpmcounter19
	li s5, failed_addr
	ld s1, 0(s5)
	jr s1
	# assert_exception block end
excp_return_label_920:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_921, excp_return_label_921, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_921:
	csrr a5, hpmcounter20
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
	# assert_exception block end
excp_return_label_921:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_922, excp_return_label_922, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_922:
	csrr a3, hpmcounter21
	li t5, failed_addr
	ld a0, 0(t5)
	jr a0
	# assert_exception block end
excp_return_label_922:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_923, excp_return_label_923, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_923:
	csrr s2, hpmcounter22
	li s6, failed_addr
	ld s10, 0(s6)
	jr s10
	# assert_exception block end
excp_return_label_923:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_924, excp_return_label_924, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_924:
	csrr t4, hpmcounter23
	li t6, failed_addr
	ld t3, 0(t6)
	jr t3
	# assert_exception block end
excp_return_label_924:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_925, excp_return_label_925, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_925:
	csrr s11, hpmcounter24
	li a0, failed_addr
	ld a6, 0(a0)
	jr a6
	# assert_exception block end
excp_return_label_925:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_926, excp_return_label_926, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_926:
	csrr s2, hpmcounter25
	li s11, failed_addr
	ld a6, 0(s11)
	jr a6
	# assert_exception block end
excp_return_label_926:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_927, excp_return_label_927, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_927:
	csrr s9, hpmcounter26
	li a4, failed_addr
	ld t5, 0(a4)
	jr t5
	# assert_exception block end
excp_return_label_927:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_928, excp_return_label_928, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_928:
	csrr s2, hpmcounter28
	li s11, failed_addr
	ld s0, 0(s11)
	jr s0
	# assert_exception block end
excp_return_label_928:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_929, excp_return_label_929, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_929:
	csrr a1, hpmcounter29
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
	# assert_exception block end
excp_return_label_929:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_930, excp_return_label_930, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_930:
	csrr t5, hpmcounter30
	li s4, failed_addr
	ld s3, 0(s4)
	jr s3
	# assert_exception block end
excp_return_label_930:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_931, excp_return_label_931, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_931:
	csrr t6, hpmcounter31
	li s8, failed_addr
	ld t4, 0(s8)
	jr t4
	# assert_exception block end
excp_return_label_931:
	# Set only this field in mcounteren, clear all others
	li t2, 268435456
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s1, hpmcounter28
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_932, excp_return_label_932, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_932:
	csrr s10, cycle
	li s0, failed_addr
	ld a0, 0(s0)
	jr a0
	# assert_exception block end
excp_return_label_932:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_933, excp_return_label_933, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_933:
	csrr s7, time
	li a1, failed_addr
	ld a5, 0(a1)
	jr a5
	# assert_exception block end
excp_return_label_933:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_934, excp_return_label_934, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_934:
	csrr t4, instret
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_934:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_935, excp_return_label_935, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_935:
	csrr s5, hpmcounter3
	li s6, failed_addr
	ld t4, 0(s6)
	jr t4
	# assert_exception block end
excp_return_label_935:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_936, excp_return_label_936, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_936:
	csrr s4, hpmcounter4
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_936:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_937, excp_return_label_937, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_937:
	csrr s9, hpmcounter5
	li s7, failed_addr
	ld s11, 0(s7)
	jr s11
	# assert_exception block end
excp_return_label_937:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_938, excp_return_label_938, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_938:
	csrr a2, hpmcounter6
	li a3, failed_addr
	ld s11, 0(a3)
	jr s11
	# assert_exception block end
excp_return_label_938:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_939, excp_return_label_939, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_939:
	csrr s3, hpmcounter7
	li s9, failed_addr
	ld a0, 0(s9)
	jr a0
	# assert_exception block end
excp_return_label_939:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_940, excp_return_label_940, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_940:
	csrr s3, hpmcounter8
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_940:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_941, excp_return_label_941, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_941:
	csrr a5, hpmcounter9
	li a5, failed_addr
	ld s7, 0(a5)
	jr s7
	# assert_exception block end
excp_return_label_941:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_942, excp_return_label_942, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_942:
	csrr a0, hpmcounter10
	li a0, failed_addr
	ld a1, 0(a0)
	jr a1
	# assert_exception block end
excp_return_label_942:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_943, excp_return_label_943, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_943:
	csrr t6, hpmcounter11
	li s0, failed_addr
	ld a5, 0(s0)
	jr a5
	# assert_exception block end
excp_return_label_943:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_944, excp_return_label_944, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_944:
	csrr a4, hpmcounter12
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
	# assert_exception block end
excp_return_label_944:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_945, excp_return_label_945, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_945:
	csrr t3, hpmcounter13
	li t4, failed_addr
	ld s0, 0(t4)
	jr s0
	# assert_exception block end
excp_return_label_945:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_946, excp_return_label_946, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_946:
	csrr a2, hpmcounter14
	li a2, failed_addr
	ld s10, 0(a2)
	jr s10
	# assert_exception block end
excp_return_label_946:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_947, excp_return_label_947, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_947:
	csrr a6, hpmcounter15
	li s5, failed_addr
	ld s9, 0(s5)
	jr s9
	# assert_exception block end
excp_return_label_947:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_948, excp_return_label_948, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_948:
	csrr t1, hpmcounter16
	li t4, failed_addr
	ld a1, 0(t4)
	jr a1
	# assert_exception block end
excp_return_label_948:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_949, excp_return_label_949, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_949:
	csrr a3, hpmcounter17
	li t6, failed_addr
	ld a3, 0(t6)
	jr a3
	# assert_exception block end
excp_return_label_949:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_950, excp_return_label_950, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_950:
	csrr s2, hpmcounter18
	li s3, failed_addr
	ld a5, 0(s3)
	jr a5
	# assert_exception block end
excp_return_label_950:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_951, excp_return_label_951, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_951:
	csrr a3, hpmcounter19
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
	# assert_exception block end
excp_return_label_951:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_952, excp_return_label_952, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_952:
	csrr s7, hpmcounter20
	li s6, failed_addr
	ld s11, 0(s6)
	jr s11
	# assert_exception block end
excp_return_label_952:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_953, excp_return_label_953, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_953:
	csrr t3, hpmcounter21
	li s5, failed_addr
	ld s3, 0(s5)
	jr s3
	# assert_exception block end
excp_return_label_953:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_954, excp_return_label_954, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_954:
	csrr a2, hpmcounter22
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_954:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_955, excp_return_label_955, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_955:
	csrr a6, hpmcounter23
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_955:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_956, excp_return_label_956, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_956:
	csrr s5, hpmcounter24
	li s11, failed_addr
	ld t3, 0(s11)
	jr t3
	# assert_exception block end
excp_return_label_956:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_957, excp_return_label_957, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_957:
	csrr a2, hpmcounter25
	li a6, failed_addr
	ld a0, 0(a6)
	jr a0
	# assert_exception block end
excp_return_label_957:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_958, excp_return_label_958, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_958:
	csrr a0, hpmcounter26
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
	# assert_exception block end
excp_return_label_958:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_959, excp_return_label_959, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_959:
	csrr s5, hpmcounter27
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_959:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_960, excp_return_label_960, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_960:
	csrr s10, hpmcounter29
	li t3, failed_addr
	ld t1, 0(t3)
	jr t1
	# assert_exception block end
excp_return_label_960:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_961, excp_return_label_961, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_961:
	csrr t4, hpmcounter30
	li s11, failed_addr
	ld s11, 0(s11)
	jr s11
	# assert_exception block end
excp_return_label_961:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_962, excp_return_label_962, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_962:
	csrr s4, hpmcounter31
	li a3, failed_addr
	ld s2, 0(a3)
	jr s2
	# assert_exception block end
excp_return_label_962:
	# Set only this field in mcounteren, clear all others
	li t2, 536870912
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s3, hpmcounter29
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_963, excp_return_label_963, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_963:
	csrr t2, cycle
	li a1, failed_addr
	ld a5, 0(a1)
	jr a5
	# assert_exception block end
excp_return_label_963:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_964, excp_return_label_964, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_964:
	csrr a1, time
	li a2, failed_addr
	ld t5, 0(a2)
	jr t5
	# assert_exception block end
excp_return_label_964:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_965, excp_return_label_965, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_965:
	csrr a6, instret
	li s11, failed_addr
	ld s10, 0(s11)
	jr s10
	# assert_exception block end
excp_return_label_965:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_966, excp_return_label_966, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_966:
	csrr a0, hpmcounter3
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
	# assert_exception block end
excp_return_label_966:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_967, excp_return_label_967, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_967:
	csrr t4, hpmcounter4
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_967:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_968, excp_return_label_968, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_968:
	csrr s8, hpmcounter5
	li s0, failed_addr
	ld s7, 0(s0)
	jr s7
	# assert_exception block end
excp_return_label_968:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_969, excp_return_label_969, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_969:
	csrr s1, hpmcounter6
	li t6, failed_addr
	ld a2, 0(t6)
	jr a2
	# assert_exception block end
excp_return_label_969:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_970, excp_return_label_970, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_970:
	csrr s8, hpmcounter7
	li s0, failed_addr
	ld t1, 0(s0)
	jr t1
	# assert_exception block end
excp_return_label_970:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_971, excp_return_label_971, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_971:
	csrr s7, hpmcounter8
	li t2, failed_addr
	ld t3, 0(t2)
	jr t3
	# assert_exception block end
excp_return_label_971:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_972, excp_return_label_972, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_972:
	csrr t6, hpmcounter9
	li s7, failed_addr
	ld t1, 0(s7)
	jr t1
	# assert_exception block end
excp_return_label_972:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_973, excp_return_label_973, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_973:
	csrr t3, hpmcounter10
	li a4, failed_addr
	ld s2, 0(a4)
	jr s2
	# assert_exception block end
excp_return_label_973:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_974, excp_return_label_974, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_974:
	csrr s11, hpmcounter11
	li a2, failed_addr
	ld t2, 0(a2)
	jr t2
	# assert_exception block end
excp_return_label_974:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_975, excp_return_label_975, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_975:
	csrr a7, hpmcounter12
	li s6, failed_addr
	ld a6, 0(s6)
	jr a6
	# assert_exception block end
excp_return_label_975:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_976, excp_return_label_976, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_976:
	csrr s7, hpmcounter13
	li a4, failed_addr
	ld s1, 0(a4)
	jr s1
	# assert_exception block end
excp_return_label_976:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_977, excp_return_label_977, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_977:
	csrr s3, hpmcounter14
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_977:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_978, excp_return_label_978, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_978:
	csrr t2, hpmcounter15
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_978:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_979, excp_return_label_979, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_979:
	csrr t2, hpmcounter16
	li s7, failed_addr
	ld s4, 0(s7)
	jr s4
	# assert_exception block end
excp_return_label_979:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_980, excp_return_label_980, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_980:
	csrr s8, hpmcounter17
	li s2, failed_addr
	ld t1, 0(s2)
	jr t1
	# assert_exception block end
excp_return_label_980:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_981, excp_return_label_981, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_981:
	csrr t1, hpmcounter18
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_981:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_982, excp_return_label_982, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_982:
	csrr a4, hpmcounter19
	li s11, failed_addr
	ld a6, 0(s11)
	jr a6
	# assert_exception block end
excp_return_label_982:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_983, excp_return_label_983, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_983:
	csrr a5, hpmcounter20
	li t3, failed_addr
	ld a1, 0(t3)
	jr a1
	# assert_exception block end
excp_return_label_983:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_984, excp_return_label_984, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_984:
	csrr s11, hpmcounter21
	li a4, failed_addr
	ld s1, 0(a4)
	jr s1
	# assert_exception block end
excp_return_label_984:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_985, excp_return_label_985, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_985:
	csrr s9, hpmcounter22
	li t6, failed_addr
	ld s7, 0(t6)
	jr s7
	# assert_exception block end
excp_return_label_985:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_986, excp_return_label_986, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_986:
	csrr s6, hpmcounter23
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
	# assert_exception block end
excp_return_label_986:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_987, excp_return_label_987, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_987:
	csrr s4, hpmcounter24
	li t1, failed_addr
	ld s11, 0(t1)
	jr s11
	# assert_exception block end
excp_return_label_987:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_988, excp_return_label_988, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_988:
	csrr t3, hpmcounter25
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_988:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_989, excp_return_label_989, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_989:
	csrr a7, hpmcounter26
	li t1, failed_addr
	ld a5, 0(t1)
	jr a5
	# assert_exception block end
excp_return_label_989:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_990, excp_return_label_990, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_990:
	csrr s10, hpmcounter27
	li a2, failed_addr
	ld s6, 0(a2)
	jr s6
	# assert_exception block end
excp_return_label_990:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_991, excp_return_label_991, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_991:
	csrr s8, hpmcounter28
	li a7, failed_addr
	ld a6, 0(a7)
	jr a6
	# assert_exception block end
excp_return_label_991:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_992, excp_return_label_992, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_992:
	csrr s1, hpmcounter30
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_992:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_993, excp_return_label_993, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_993:
	csrr s6, hpmcounter31
	li t2, failed_addr
	ld s10, 0(t2)
	jr s10
	# assert_exception block end
excp_return_label_993:
	# Set only this field in mcounteren, clear all others
	li t2, 1073741824
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr a3, hpmcounter30
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_994, excp_return_label_994, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_994:
	csrr s8, cycle
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_994:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_995, excp_return_label_995, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_995:
	csrr s9, time
	li a3, failed_addr
	ld s0, 0(a3)
	jr s0
	# assert_exception block end
excp_return_label_995:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_996, excp_return_label_996, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_996:
	csrr t3, instret
	li s2, failed_addr
	ld a5, 0(s2)
	jr a5
	# assert_exception block end
excp_return_label_996:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_997, excp_return_label_997, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_997:
	csrr s3, hpmcounter3
	li a6, failed_addr
	ld a7, 0(a6)
	jr a7
	# assert_exception block end
excp_return_label_997:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_998, excp_return_label_998, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_998:
	csrr s1, hpmcounter4
	li a6, failed_addr
	ld s0, 0(a6)
	jr s0
	# assert_exception block end
excp_return_label_998:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_999, excp_return_label_999, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_999:
	csrr a7, hpmcounter5
	li s4, failed_addr
	ld t2, 0(s4)
	jr t2
	# assert_exception block end
excp_return_label_999:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1000, excp_return_label_1000, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1000:
	csrr s9, hpmcounter6
	li a4, failed_addr
	ld s2, 0(a4)
	jr s2
	# assert_exception block end
excp_return_label_1000:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1001, excp_return_label_1001, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1001:
	csrr t2, hpmcounter7
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_1001:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1002, excp_return_label_1002, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1002:
	csrr t2, hpmcounter8
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_1002:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1003, excp_return_label_1003, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1003:
	csrr a1, hpmcounter9
	li s9, failed_addr
	ld s7, 0(s9)
	jr s7
	# assert_exception block end
excp_return_label_1003:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1004, excp_return_label_1004, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1004:
	csrr t4, hpmcounter10
	li a4, failed_addr
	ld s2, 0(a4)
	jr s2
	# assert_exception block end
excp_return_label_1004:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1005, excp_return_label_1005, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1005:
	csrr s4, hpmcounter11
	li s6, failed_addr
	ld t1, 0(s6)
	jr t1
	# assert_exception block end
excp_return_label_1005:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1006, excp_return_label_1006, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1006:
	csrr s2, hpmcounter12
	li s3, failed_addr
	ld a1, 0(s3)
	jr a1
	# assert_exception block end
excp_return_label_1006:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1007, excp_return_label_1007, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1007:
	csrr a1, hpmcounter13
	li s8, failed_addr
	ld a4, 0(s8)
	jr a4
	# assert_exception block end
excp_return_label_1007:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1008, excp_return_label_1008, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1008:
	csrr s3, hpmcounter14
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
	# assert_exception block end
excp_return_label_1008:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1009, excp_return_label_1009, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1009:
	csrr t5, hpmcounter15
	li t2, failed_addr
	ld s2, 0(t2)
	jr s2
	# assert_exception block end
excp_return_label_1009:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1010, excp_return_label_1010, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1010:
	csrr t5, hpmcounter16
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
	# assert_exception block end
excp_return_label_1010:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1011, excp_return_label_1011, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1011:
	csrr s4, hpmcounter17
	li a3, failed_addr
	ld s9, 0(a3)
	jr s9
	# assert_exception block end
excp_return_label_1011:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1012, excp_return_label_1012, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1012:
	csrr a7, hpmcounter18
	li s7, failed_addr
	ld s5, 0(s7)
	jr s5
	# assert_exception block end
excp_return_label_1012:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1013, excp_return_label_1013, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1013:
	csrr a7, hpmcounter19
	li s6, failed_addr
	ld t1, 0(s6)
	jr t1
	# assert_exception block end
excp_return_label_1013:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1014, excp_return_label_1014, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1014:
	csrr t2, hpmcounter20
	li a6, failed_addr
	ld s6, 0(a6)
	jr s6
	# assert_exception block end
excp_return_label_1014:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1015, excp_return_label_1015, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1015:
	csrr s5, hpmcounter21
	li t1, failed_addr
	ld a3, 0(t1)
	jr a3
	# assert_exception block end
excp_return_label_1015:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1016, excp_return_label_1016, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1016:
	csrr t4, hpmcounter22
	li s10, failed_addr
	ld s4, 0(s10)
	jr s4
	# assert_exception block end
excp_return_label_1016:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1017, excp_return_label_1017, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1017:
	csrr s10, hpmcounter23
	li t5, failed_addr
	ld s0, 0(t5)
	jr s0
	# assert_exception block end
excp_return_label_1017:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1018, excp_return_label_1018, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1018:
	csrr s1, hpmcounter24
	li a5, failed_addr
	ld a6, 0(a5)
	jr a6
	# assert_exception block end
excp_return_label_1018:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1019, excp_return_label_1019, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1019:
	csrr a2, hpmcounter25
	li a7, failed_addr
	ld s10, 0(a7)
	jr s10
	# assert_exception block end
excp_return_label_1019:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1020, excp_return_label_1020, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1020:
	csrr s7, hpmcounter26
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_1020:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1021, excp_return_label_1021, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1021:
	csrr s1, hpmcounter27
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_1021:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1022, excp_return_label_1022, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1022:
	csrr s11, hpmcounter28
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
	# assert_exception block end
excp_return_label_1022:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1023, excp_return_label_1023, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1023:
	csrr a4, hpmcounter29
	li t3, failed_addr
	ld a6, 0(t3)
	jr a6
	# assert_exception block end
excp_return_label_1023:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1024, excp_return_label_1024, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1024:
	csrr s11, hpmcounter31
	li s2, failed_addr
	ld s1, 0(s2)
	jr s1
	# assert_exception block end
excp_return_label_1024:
	# Set only this field in mcounteren, clear all others
	li t2, 2147483648
	;#csr_rw(mcounteren, write, false, false)
	# Test the enabled CSR in S mode - should succeed
	csrr s5, hpmcounter31
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1025, excp_return_label_1025, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1025:
	csrr s10, cycle
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
	# assert_exception block end
excp_return_label_1025:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1026, excp_return_label_1026, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1026:
	csrr a2, time
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
	# assert_exception block end
excp_return_label_1026:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1027, excp_return_label_1027, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1027:
	csrr a3, instret
	li s9, failed_addr
	ld t1, 0(s9)
	jr t1
	# assert_exception block end
excp_return_label_1027:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1028, excp_return_label_1028, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1028:
	csrr a5, hpmcounter3
	li a5, failed_addr
	ld s9, 0(a5)
	jr s9
	# assert_exception block end
excp_return_label_1028:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1029, excp_return_label_1029, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1029:
	csrr a2, hpmcounter4
	li s10, failed_addr
	ld t3, 0(s10)
	jr t3
	# assert_exception block end
excp_return_label_1029:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1030, excp_return_label_1030, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1030:
	csrr a7, hpmcounter5
	li s6, failed_addr
	ld s10, 0(s6)
	jr s10
	# assert_exception block end
excp_return_label_1030:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1031, excp_return_label_1031, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1031:
	csrr s5, hpmcounter6
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
	# assert_exception block end
excp_return_label_1031:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1032, excp_return_label_1032, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1032:
	csrr a5, hpmcounter7
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
	# assert_exception block end
excp_return_label_1032:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1033, excp_return_label_1033, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1033:
	csrr s7, hpmcounter8
	li a7, failed_addr
	ld s3, 0(a7)
	jr s3
	# assert_exception block end
excp_return_label_1033:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1034, excp_return_label_1034, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1034:
	csrr s6, hpmcounter9
	li s1, failed_addr
	ld a5, 0(s1)
	jr a5
	# assert_exception block end
excp_return_label_1034:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1035, excp_return_label_1035, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1035:
	csrr a5, hpmcounter10
	li a4, failed_addr
	ld t5, 0(a4)
	jr t5
	# assert_exception block end
excp_return_label_1035:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1036, excp_return_label_1036, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1036:
	csrr s6, hpmcounter11
	li t4, failed_addr
	ld a5, 0(t4)
	jr a5
	# assert_exception block end
excp_return_label_1036:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1037, excp_return_label_1037, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1037:
	csrr t6, hpmcounter12
	li t3, failed_addr
	ld s4, 0(t3)
	jr s4
	# assert_exception block end
excp_return_label_1037:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1038, excp_return_label_1038, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1038:
	csrr s11, hpmcounter13
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_1038:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1039, excp_return_label_1039, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1039:
	csrr a5, hpmcounter14
	li a4, failed_addr
	ld t3, 0(a4)
	jr t3
	# assert_exception block end
excp_return_label_1039:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1040, excp_return_label_1040, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1040:
	csrr t2, hpmcounter15
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_1040:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1041, excp_return_label_1041, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1041:
	csrr t5, hpmcounter16
	li s11, failed_addr
	ld s6, 0(s11)
	jr s6
	# assert_exception block end
excp_return_label_1041:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1042, excp_return_label_1042, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1042:
	csrr s7, hpmcounter17
	li t1, failed_addr
	ld s8, 0(t1)
	jr s8
	# assert_exception block end
excp_return_label_1042:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1043, excp_return_label_1043, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1043:
	csrr a6, hpmcounter18
	li t1, failed_addr
	ld a3, 0(t1)
	jr a3
	# assert_exception block end
excp_return_label_1043:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1044, excp_return_label_1044, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1044:
	csrr s9, hpmcounter19
	li t5, failed_addr
	ld a4, 0(t5)
	jr a4
	# assert_exception block end
excp_return_label_1044:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1045, excp_return_label_1045, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1045:
	csrr s5, hpmcounter20
	li s1, failed_addr
	ld t2, 0(s1)
	jr t2
	# assert_exception block end
excp_return_label_1045:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1046, excp_return_label_1046, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1046:
	csrr a7, hpmcounter21
	li s8, failed_addr
	ld s7, 0(s8)
	jr s7
	# assert_exception block end
excp_return_label_1046:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1047, excp_return_label_1047, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1047:
	csrr a3, hpmcounter22
	li a4, failed_addr
	ld a1, 0(a4)
	jr a1
	# assert_exception block end
excp_return_label_1047:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1048, excp_return_label_1048, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1048:
	csrr s1, hpmcounter23
	li t6, failed_addr
	ld a7, 0(t6)
	jr a7
	# assert_exception block end
excp_return_label_1048:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1049, excp_return_label_1049, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1049:
	csrr s9, hpmcounter24
	li s5, failed_addr
	ld a6, 0(s5)
	jr a6
	# assert_exception block end
excp_return_label_1049:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1050, excp_return_label_1050, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1050:
	csrr s4, hpmcounter25
	li t1, failed_addr
	ld s4, 0(t1)
	jr s4
	# assert_exception block end
excp_return_label_1050:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1051, excp_return_label_1051, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1051:
	csrr t1, hpmcounter26
	li t4, failed_addr
	ld a7, 0(t4)
	jr a7
	# assert_exception block end
excp_return_label_1051:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1052, excp_return_label_1052, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1052:
	csrr s11, hpmcounter27
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
	# assert_exception block end
excp_return_label_1052:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1053, excp_return_label_1053, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1053:
	csrr a0, hpmcounter28
	li s5, failed_addr
	ld s10, 0(s5)
	jr s10
	# assert_exception block end
excp_return_label_1053:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1054, excp_return_label_1054, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1054:
	csrr s10, hpmcounter29
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_1054:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1055, excp_return_label_1055, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1055:
	csrr t1, hpmcounter30
	li s8, failed_addr
	ld a6, 0(s8)
	jr a6
	# assert_exception block end
excp_return_label_1055:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
SID_XCOUNTEREN_05_S_passed:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_06_S)
SID_XCOUNTEREN_06_S:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_06_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set only this field in both registers, clear all others
	li t2, 1
	;#csr_rw(mcounteren, write, false, false)
	csrrwi a7, scounteren, 0x1
	# Test the enabled CSR in S mode - should succeed
	csrr s6, cycle
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1056, excp_return_label_1056, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1056:
	csrr s2, time
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_1056:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1057, excp_return_label_1057, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1057:
	csrr s7, instret
	li s0, failed_addr
	ld a0, 0(s0)
	jr a0
	# assert_exception block end
excp_return_label_1057:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1058, excp_return_label_1058, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1058:
	csrr s11, hpmcounter3
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_1058:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1059, excp_return_label_1059, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1059:
	csrr t5, hpmcounter4
	li s8, failed_addr
	ld s2, 0(s8)
	jr s2
	# assert_exception block end
excp_return_label_1059:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1060, excp_return_label_1060, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1060:
	csrr a2, hpmcounter5
	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_1060:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1061, excp_return_label_1061, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1061:
	csrr s11, hpmcounter6
	li a7, failed_addr
	ld s8, 0(a7)
	jr s8
	# assert_exception block end
excp_return_label_1061:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1062, excp_return_label_1062, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1062:
	csrr s11, hpmcounter7
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_1062:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1063, excp_return_label_1063, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1063:
	csrr a4, hpmcounter8
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
	# assert_exception block end
excp_return_label_1063:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1064, excp_return_label_1064, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1064:
	csrr s0, hpmcounter9
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
	# assert_exception block end
excp_return_label_1064:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1065, excp_return_label_1065, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1065:
	csrr s10, hpmcounter10
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
	# assert_exception block end
excp_return_label_1065:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1066, excp_return_label_1066, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1066:
	csrr s6, hpmcounter11
	li t4, failed_addr
	ld s8, 0(t4)
	jr s8
	# assert_exception block end
excp_return_label_1066:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1067, excp_return_label_1067, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1067:
	csrr s4, hpmcounter12
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_1067:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1068, excp_return_label_1068, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1068:
	csrr s8, hpmcounter13
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_1068:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1069, excp_return_label_1069, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1069:
	csrr s1, hpmcounter14
	li s0, failed_addr
	ld t5, 0(s0)
	jr t5
	# assert_exception block end
excp_return_label_1069:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1070, excp_return_label_1070, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1070:
	csrr t6, hpmcounter15
	li s5, failed_addr
	ld t3, 0(s5)
	jr t3
	# assert_exception block end
excp_return_label_1070:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1071, excp_return_label_1071, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1071:
	csrr a7, hpmcounter16
	li s6, failed_addr
	ld t1, 0(s6)
	jr t1
	# assert_exception block end
excp_return_label_1071:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1072, excp_return_label_1072, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1072:
	csrr s4, hpmcounter17
	li a4, failed_addr
	ld s6, 0(a4)
	jr s6
	# assert_exception block end
excp_return_label_1072:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1073, excp_return_label_1073, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1073:
	csrr s9, hpmcounter18
	li a0, failed_addr
	ld s6, 0(a0)
	jr s6
	# assert_exception block end
excp_return_label_1073:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1074, excp_return_label_1074, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1074:
	csrr a4, hpmcounter19
	li s10, failed_addr
	ld s4, 0(s10)
	jr s4
	# assert_exception block end
excp_return_label_1074:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1075, excp_return_label_1075, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1075:
	csrr a7, hpmcounter20
	li s1, failed_addr
	ld a3, 0(s1)
	jr a3
	# assert_exception block end
excp_return_label_1075:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1076, excp_return_label_1076, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1076:
	csrr s1, hpmcounter21
	li t4, failed_addr
	ld a5, 0(t4)
	jr a5
	# assert_exception block end
excp_return_label_1076:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1077, excp_return_label_1077, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1077:
	csrr s2, hpmcounter22
	li a0, failed_addr
	ld s11, 0(a0)
	jr s11
	# assert_exception block end
excp_return_label_1077:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1078, excp_return_label_1078, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1078:
	csrr s6, hpmcounter23
	li t2, failed_addr
	ld s10, 0(t2)
	jr s10
	# assert_exception block end
excp_return_label_1078:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1079, excp_return_label_1079, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1079:
	csrr a2, hpmcounter24
	li t4, failed_addr
	ld a6, 0(t4)
	jr a6
	# assert_exception block end
excp_return_label_1079:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1080, excp_return_label_1080, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1080:
	csrr s2, hpmcounter25
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_1080:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1081, excp_return_label_1081, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1081:
	csrr a0, hpmcounter26
	li a6, failed_addr
	ld t2, 0(a6)
	jr t2
	# assert_exception block end
excp_return_label_1081:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1082, excp_return_label_1082, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1082:
	csrr s2, hpmcounter27
	li s4, failed_addr
	ld t2, 0(s4)
	jr t2
	# assert_exception block end
excp_return_label_1082:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1083, excp_return_label_1083, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1083:
	csrr t4, hpmcounter28
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
	# assert_exception block end
excp_return_label_1083:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1084, excp_return_label_1084, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1084:
	csrr a0, hpmcounter29
	li a0, failed_addr
	ld s6, 0(a0)
	jr s6
	# assert_exception block end
excp_return_label_1084:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1085, excp_return_label_1085, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1085:
	csrr a3, hpmcounter30
	li a4, failed_addr
	ld a0, 0(a4)
	jr a0
	# assert_exception block end
excp_return_label_1085:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1086, excp_return_label_1086, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1086:
	csrr s11, hpmcounter31
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
	# assert_exception block end
excp_return_label_1086:
	# Set only this field in both registers, clear all others
	li t2, 2
	;#csr_rw(mcounteren, write, false, false)
	csrrwi t5, scounteren, 0x2
	# Test the enabled CSR in S mode - should succeed
	csrr t1, time
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1087, excp_return_label_1087, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1087:
	csrr s6, cycle
	li t3, failed_addr
	ld s11, 0(t3)
	jr s11
	# assert_exception block end
excp_return_label_1087:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1088, excp_return_label_1088, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1088:
	csrr a5, instret
	li s7, failed_addr
	ld a5, 0(s7)
	jr a5
	# assert_exception block end
excp_return_label_1088:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1089, excp_return_label_1089, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1089:
	csrr s4, hpmcounter3
	li t1, failed_addr
	ld s4, 0(t1)
	jr s4
	# assert_exception block end
excp_return_label_1089:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1090, excp_return_label_1090, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1090:
	csrr s3, hpmcounter4
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_1090:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1091, excp_return_label_1091, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1091:
	csrr a1, hpmcounter5
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_1091:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1092, excp_return_label_1092, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1092:
	csrr t2, hpmcounter6
	li s3, failed_addr
	ld a7, 0(s3)
	jr a7
	# assert_exception block end
excp_return_label_1092:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1093, excp_return_label_1093, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1093:
	csrr a4, hpmcounter7
	li t3, failed_addr
	ld a6, 0(t3)
	jr a6
	# assert_exception block end
excp_return_label_1093:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1094, excp_return_label_1094, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1094:
	csrr a6, hpmcounter8
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
	# assert_exception block end
excp_return_label_1094:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1095, excp_return_label_1095, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1095:
	csrr s11, hpmcounter9
	li t1, failed_addr
	ld a3, 0(t1)
	jr a3
	# assert_exception block end
excp_return_label_1095:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1096, excp_return_label_1096, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1096:
	csrr s4, hpmcounter10
	li t4, failed_addr
	ld s4, 0(t4)
	jr s4
	# assert_exception block end
excp_return_label_1096:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1097, excp_return_label_1097, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1097:
	csrr a2, hpmcounter11
	li s8, failed_addr
	ld t6, 0(s8)
	jr t6
	# assert_exception block end
excp_return_label_1097:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1098, excp_return_label_1098, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1098:
	csrr a3, hpmcounter12
	li a1, failed_addr
	ld t4, 0(a1)
	jr t4
	# assert_exception block end
excp_return_label_1098:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1099, excp_return_label_1099, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1099:
	csrr t4, hpmcounter13
	li a1, failed_addr
	ld s4, 0(a1)
	jr s4
	# assert_exception block end
excp_return_label_1099:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1100, excp_return_label_1100, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1100:
	csrr s6, hpmcounter14
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
	# assert_exception block end
excp_return_label_1100:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1101, excp_return_label_1101, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1101:
	csrr a3, hpmcounter15
	li a7, failed_addr
	ld a6, 0(a7)
	jr a6
	# assert_exception block end
excp_return_label_1101:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1102, excp_return_label_1102, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1102:
	csrr a5, hpmcounter16
	li a3, failed_addr
	ld a4, 0(a3)
	jr a4
	# assert_exception block end
excp_return_label_1102:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1103, excp_return_label_1103, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1103:
	csrr s2, hpmcounter17
	li t6, failed_addr
	ld s0, 0(t6)
	jr s0
	# assert_exception block end
excp_return_label_1103:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1104, excp_return_label_1104, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1104:
	csrr s0, hpmcounter18
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_1104:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1105, excp_return_label_1105, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1105:
	csrr s9, hpmcounter19
	li s6, failed_addr
	ld t2, 0(s6)
	jr t2
	# assert_exception block end
excp_return_label_1105:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1106, excp_return_label_1106, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1106:
	csrr a0, hpmcounter20
	li a4, failed_addr
	ld a4, 0(a4)
	jr a4
	# assert_exception block end
excp_return_label_1106:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1107, excp_return_label_1107, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1107:
	csrr t2, hpmcounter21
	li s11, failed_addr
	ld t2, 0(s11)
	jr t2
	# assert_exception block end
excp_return_label_1107:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1108, excp_return_label_1108, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1108:
	csrr s7, hpmcounter22
	li t3, failed_addr
	ld a5, 0(t3)
	jr a5
	# assert_exception block end
excp_return_label_1108:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1109, excp_return_label_1109, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1109:
	csrr s2, hpmcounter23
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_1109:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1110, excp_return_label_1110, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1110:
	csrr s7, hpmcounter24
	li s2, failed_addr
	ld s6, 0(s2)
	jr s6
	# assert_exception block end
excp_return_label_1110:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1111, excp_return_label_1111, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1111:
	csrr s4, hpmcounter25
	li t4, failed_addr
	ld a1, 0(t4)
	jr a1
	# assert_exception block end
excp_return_label_1111:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1112, excp_return_label_1112, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1112:
	csrr a2, hpmcounter26
	li s1, failed_addr
	ld a0, 0(s1)
	jr a0
	# assert_exception block end
excp_return_label_1112:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1113, excp_return_label_1113, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1113:
	csrr a6, hpmcounter27
	li t1, failed_addr
	ld s3, 0(t1)
	jr s3
	# assert_exception block end
excp_return_label_1113:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1114, excp_return_label_1114, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1114:
	csrr s7, hpmcounter28
	li a1, failed_addr
	ld s4, 0(a1)
	jr s4
	# assert_exception block end
excp_return_label_1114:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1115, excp_return_label_1115, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1115:
	csrr t6, hpmcounter29
	li s2, failed_addr
	ld s0, 0(s2)
	jr s0
	# assert_exception block end
excp_return_label_1115:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1116, excp_return_label_1116, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1116:
	csrr a5, hpmcounter30
	li s7, failed_addr
	ld s7, 0(s7)
	jr s7
	# assert_exception block end
excp_return_label_1116:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1117, excp_return_label_1117, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1117:
	csrr s0, hpmcounter31
	li s2, failed_addr
	ld t6, 0(s2)
	jr t6
	# assert_exception block end
excp_return_label_1117:
	# Set only this field in both registers, clear all others
	li t2, 4
	;#csr_rw(mcounteren, write, false, false)
	csrrwi s6, scounteren, 0x4
	# Test the enabled CSR in S mode - should succeed
	csrr a5, instret
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1118, excp_return_label_1118, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1118:
	csrr s8, cycle
	li s5, failed_addr
	ld a0, 0(s5)
	jr a0
	# assert_exception block end
excp_return_label_1118:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1119, excp_return_label_1119, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1119:
	csrr s5, time
	li s11, failed_addr
	ld t4, 0(s11)
	jr t4
	# assert_exception block end
excp_return_label_1119:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1120, excp_return_label_1120, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1120:
	csrr a2, hpmcounter3
	li s5, failed_addr
	ld s2, 0(s5)
	jr s2
	# assert_exception block end
excp_return_label_1120:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1121, excp_return_label_1121, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1121:
	csrr a5, hpmcounter4
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_1121:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1122, excp_return_label_1122, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1122:
	csrr a2, hpmcounter5
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
	# assert_exception block end
excp_return_label_1122:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1123, excp_return_label_1123, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1123:
	csrr t4, hpmcounter6
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_1123:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1124, excp_return_label_1124, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1124:
	csrr s1, hpmcounter7
	li s3, failed_addr
	ld s6, 0(s3)
	jr s6
	# assert_exception block end
excp_return_label_1124:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1125, excp_return_label_1125, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1125:
	csrr a5, hpmcounter8
	li a6, failed_addr
	ld s0, 0(a6)
	jr s0
	# assert_exception block end
excp_return_label_1125:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1126, excp_return_label_1126, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1126:
	csrr a5, hpmcounter9
	li s5, failed_addr
	ld a4, 0(s5)
	jr a4
	# assert_exception block end
excp_return_label_1126:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1127, excp_return_label_1127, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1127:
	csrr t5, hpmcounter10
	li t4, failed_addr
	ld s10, 0(t4)
	jr s10
	# assert_exception block end
excp_return_label_1127:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1128, excp_return_label_1128, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1128:
	csrr s3, hpmcounter11
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_1128:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1129, excp_return_label_1129, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1129:
	csrr s3, hpmcounter12
	li s11, failed_addr
	ld s8, 0(s11)
	jr s8
	# assert_exception block end
excp_return_label_1129:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1130, excp_return_label_1130, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1130:
	csrr t2, hpmcounter13
	li t2, failed_addr
	ld a3, 0(t2)
	jr a3
	# assert_exception block end
excp_return_label_1130:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1131, excp_return_label_1131, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1131:
	csrr s8, hpmcounter14
	li s11, failed_addr
	ld a7, 0(s11)
	jr a7
	# assert_exception block end
excp_return_label_1131:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1132, excp_return_label_1132, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1132:
	csrr t1, hpmcounter15
	li s1, failed_addr
	ld s10, 0(s1)
	jr s10
	# assert_exception block end
excp_return_label_1132:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1133, excp_return_label_1133, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1133:
	csrr a2, hpmcounter16
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_1133:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1134, excp_return_label_1134, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1134:
	csrr s2, hpmcounter17
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_1134:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1135, excp_return_label_1135, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1135:
	csrr t6, hpmcounter18
	li a0, failed_addr
	ld t5, 0(a0)
	jr t5
	# assert_exception block end
excp_return_label_1135:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1136, excp_return_label_1136, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1136:
	csrr s9, hpmcounter19
	li s11, failed_addr
	ld a0, 0(s11)
	jr a0
	# assert_exception block end
excp_return_label_1136:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1137, excp_return_label_1137, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1137:
	csrr a2, hpmcounter20
	li s1, failed_addr
	ld s11, 0(s1)
	jr s11
	# assert_exception block end
excp_return_label_1137:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1138, excp_return_label_1138, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1138:
	csrr t5, hpmcounter21
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
	# assert_exception block end
excp_return_label_1138:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1139, excp_return_label_1139, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1139:
	csrr a4, hpmcounter22
	li a6, failed_addr
	ld s10, 0(a6)
	jr s10
	# assert_exception block end
excp_return_label_1139:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1140, excp_return_label_1140, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1140:
	csrr s8, hpmcounter23
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
	# assert_exception block end
excp_return_label_1140:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1141, excp_return_label_1141, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1141:
	csrr t1, hpmcounter24
	li s4, failed_addr
	ld s9, 0(s4)
	jr s9
	# assert_exception block end
excp_return_label_1141:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1142, excp_return_label_1142, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1142:
	csrr a0, hpmcounter25
	li s2, failed_addr
	ld a6, 0(s2)
	jr a6
	# assert_exception block end
excp_return_label_1142:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1143, excp_return_label_1143, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1143:
	csrr s5, hpmcounter26
	li t4, failed_addr
	ld s7, 0(t4)
	jr s7
	# assert_exception block end
excp_return_label_1143:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1144, excp_return_label_1144, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1144:
	csrr a5, hpmcounter27
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_1144:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1145, excp_return_label_1145, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1145:
	csrr t3, hpmcounter28
	li t5, failed_addr
	ld a5, 0(t5)
	jr a5
	# assert_exception block end
excp_return_label_1145:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1146, excp_return_label_1146, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1146:
	csrr t1, hpmcounter29
	li a0, failed_addr
	ld a0, 0(a0)
	jr a0
	# assert_exception block end
excp_return_label_1146:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1147, excp_return_label_1147, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1147:
	csrr t6, hpmcounter30
	li s2, failed_addr
	ld s1, 0(s2)
	jr s1
	# assert_exception block end
excp_return_label_1147:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1148, excp_return_label_1148, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1148:
	csrr s3, hpmcounter31
	li s6, failed_addr
	ld a2, 0(s6)
	jr a2
	# assert_exception block end
excp_return_label_1148:
	# Set only this field in both registers, clear all others
	li t2, 8
	;#csr_rw(mcounteren, write, false, false)
	csrrwi a5, scounteren, 0x8
	# Test the enabled CSR in S mode - should succeed
	csrr a1, hpmcounter3
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1149, excp_return_label_1149, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1149:
	csrr a3, cycle
	li t5, failed_addr
	ld t5, 0(t5)
	jr t5
	# assert_exception block end
excp_return_label_1149:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1150, excp_return_label_1150, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1150:
	csrr a6, time
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_1150:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1151, excp_return_label_1151, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1151:
	csrr s5, instret
	li a6, failed_addr
	ld s5, 0(a6)
	jr s5
	# assert_exception block end
excp_return_label_1151:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1152, excp_return_label_1152, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1152:
	csrr t5, hpmcounter4
	li t6, failed_addr
	ld s3, 0(t6)
	jr s3
	# assert_exception block end
excp_return_label_1152:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1153, excp_return_label_1153, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1153:
	csrr t6, hpmcounter5
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_1153:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1154, excp_return_label_1154, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1154:
	csrr t6, hpmcounter6
	li s11, failed_addr
	ld a3, 0(s11)
	jr a3
	# assert_exception block end
excp_return_label_1154:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1155, excp_return_label_1155, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1155:
	csrr a5, hpmcounter7
	li s4, failed_addr
	ld s11, 0(s4)
	jr s11
	# assert_exception block end
excp_return_label_1155:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1156, excp_return_label_1156, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1156:
	csrr s5, hpmcounter8
	li a2, failed_addr
	ld a0, 0(a2)
	jr a0
	# assert_exception block end
excp_return_label_1156:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1157, excp_return_label_1157, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1157:
	csrr a4, hpmcounter9
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_1157:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1158, excp_return_label_1158, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1158:
	csrr s1, hpmcounter10
	li a2, failed_addr
	ld a0, 0(a2)
	jr a0
	# assert_exception block end
excp_return_label_1158:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1159, excp_return_label_1159, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1159:
	csrr t4, hpmcounter11
	li t6, failed_addr
	ld t3, 0(t6)
	jr t3
	# assert_exception block end
excp_return_label_1159:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1160, excp_return_label_1160, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1160:
	csrr t3, hpmcounter12
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_1160:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1161, excp_return_label_1161, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1161:
	csrr s6, hpmcounter13
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_1161:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1162, excp_return_label_1162, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1162:
	csrr s10, hpmcounter14
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
	# assert_exception block end
excp_return_label_1162:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1163, excp_return_label_1163, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1163:
	csrr a7, hpmcounter15
	li t4, failed_addr
	ld s8, 0(t4)
	jr s8
	# assert_exception block end
excp_return_label_1163:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1164, excp_return_label_1164, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1164:
	csrr t4, hpmcounter16
	li t4, failed_addr
	ld t2, 0(t4)
	jr t2
	# assert_exception block end
excp_return_label_1164:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1165, excp_return_label_1165, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1165:
	csrr a0, hpmcounter17
	li a6, failed_addr
	ld s6, 0(a6)
	jr s6
	# assert_exception block end
excp_return_label_1165:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1166, excp_return_label_1166, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1166:
	csrr a2, hpmcounter18
	li s8, failed_addr
	ld s10, 0(s8)
	jr s10
	# assert_exception block end
excp_return_label_1166:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1167, excp_return_label_1167, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1167:
	csrr s3, hpmcounter19
	li s4, failed_addr
	ld t2, 0(s4)
	jr t2
	# assert_exception block end
excp_return_label_1167:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1168, excp_return_label_1168, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1168:
	csrr s8, hpmcounter20
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
	# assert_exception block end
excp_return_label_1168:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1169, excp_return_label_1169, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1169:
	csrr s10, hpmcounter21
	li a2, failed_addr
	ld a6, 0(a2)
	jr a6
	# assert_exception block end
excp_return_label_1169:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1170, excp_return_label_1170, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1170:
	csrr a3, hpmcounter22
	li a1, failed_addr
	ld s4, 0(a1)
	jr s4
	# assert_exception block end
excp_return_label_1170:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1171, excp_return_label_1171, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1171:
	csrr a7, hpmcounter23
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_1171:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1172, excp_return_label_1172, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1172:
	csrr t3, hpmcounter24
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_1172:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1173, excp_return_label_1173, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1173:
	csrr t5, hpmcounter25
	li s1, failed_addr
	ld a7, 0(s1)
	jr a7
	# assert_exception block end
excp_return_label_1173:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1174, excp_return_label_1174, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1174:
	csrr s4, hpmcounter26
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
	# assert_exception block end
excp_return_label_1174:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1175, excp_return_label_1175, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1175:
	csrr s5, hpmcounter27
	li a4, failed_addr
	ld a2, 0(a4)
	jr a2
	# assert_exception block end
excp_return_label_1175:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1176, excp_return_label_1176, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1176:
	csrr s9, hpmcounter28
	li a0, failed_addr
	ld t6, 0(a0)
	jr t6
	# assert_exception block end
excp_return_label_1176:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1177, excp_return_label_1177, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1177:
	csrr a2, hpmcounter29
	li s5, failed_addr
	ld t5, 0(s5)
	jr t5
	# assert_exception block end
excp_return_label_1177:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1178, excp_return_label_1178, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1178:
	csrr s11, hpmcounter30
	li s7, failed_addr
	ld s3, 0(s7)
	jr s3
	# assert_exception block end
excp_return_label_1178:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1179, excp_return_label_1179, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1179:
	csrr s1, hpmcounter31
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
	# assert_exception block end
excp_return_label_1179:
	# Set only this field in both registers, clear all others
	li t2, 16
	;#csr_rw(mcounteren, write, false, false)
	csrrwi t1, scounteren, 0x10
	# Test the enabled CSR in S mode - should succeed
	csrr a2, hpmcounter4
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1180, excp_return_label_1180, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1180:
	csrr s3, cycle
	li a5, failed_addr
	ld s1, 0(a5)
	jr s1
	# assert_exception block end
excp_return_label_1180:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1181, excp_return_label_1181, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1181:
	csrr t6, time
	li a3, failed_addr
	ld s4, 0(a3)
	jr s4
	# assert_exception block end
excp_return_label_1181:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1182, excp_return_label_1182, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1182:
	csrr s5, instret
	li a5, failed_addr
	ld s6, 0(a5)
	jr s6
	# assert_exception block end
excp_return_label_1182:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1183, excp_return_label_1183, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1183:
	csrr a3, hpmcounter3
	li s1, failed_addr
	ld s2, 0(s1)
	jr s2
	# assert_exception block end
excp_return_label_1183:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1184, excp_return_label_1184, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1184:
	csrr s9, hpmcounter5
	li s5, failed_addr
	ld a2, 0(s5)
	jr a2
	# assert_exception block end
excp_return_label_1184:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1185, excp_return_label_1185, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1185:
	csrr t1, hpmcounter6
	li a4, failed_addr
	ld t5, 0(a4)
	jr t5
	# assert_exception block end
excp_return_label_1185:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1186, excp_return_label_1186, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1186:
	csrr t4, hpmcounter7
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_1186:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1187, excp_return_label_1187, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1187:
	csrr a5, hpmcounter8
	li s9, failed_addr
	ld s10, 0(s9)
	jr s10
	# assert_exception block end
excp_return_label_1187:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1188, excp_return_label_1188, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1188:
	csrr s7, hpmcounter9
	li a2, failed_addr
	ld a7, 0(a2)
	jr a7
	# assert_exception block end
excp_return_label_1188:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1189, excp_return_label_1189, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1189:
	csrr s7, hpmcounter10
	li s10, failed_addr
	ld s5, 0(s10)
	jr s5
	# assert_exception block end
excp_return_label_1189:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1190, excp_return_label_1190, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1190:
	csrr t1, hpmcounter11
	li t6, failed_addr
	ld s9, 0(t6)
	jr s9
	# assert_exception block end
excp_return_label_1190:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1191, excp_return_label_1191, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1191:
	csrr a2, hpmcounter12
	li a0, failed_addr
	ld s1, 0(a0)
	jr s1
	# assert_exception block end
excp_return_label_1191:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1192, excp_return_label_1192, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1192:
	csrr a7, hpmcounter13
	li s9, failed_addr
	ld t4, 0(s9)
	jr t4
	# assert_exception block end
excp_return_label_1192:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1193, excp_return_label_1193, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1193:
	csrr s9, hpmcounter14
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
	# assert_exception block end
excp_return_label_1193:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1194, excp_return_label_1194, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1194:
	csrr s6, hpmcounter15
	li t4, failed_addr
	ld t1, 0(t4)
	jr t1
	# assert_exception block end
excp_return_label_1194:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1195, excp_return_label_1195, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1195:
	csrr s1, hpmcounter16
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_1195:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1196, excp_return_label_1196, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1196:
	csrr t5, hpmcounter17
	li s6, failed_addr
	ld s3, 0(s6)
	jr s3
	# assert_exception block end
excp_return_label_1196:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1197, excp_return_label_1197, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1197:
	csrr s2, hpmcounter18
	li s0, failed_addr
	ld t3, 0(s0)
	jr t3
	# assert_exception block end
excp_return_label_1197:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1198, excp_return_label_1198, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1198:
	csrr t2, hpmcounter19
	li t4, failed_addr
	ld s11, 0(t4)
	jr s11
	# assert_exception block end
excp_return_label_1198:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1199, excp_return_label_1199, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1199:
	csrr s9, hpmcounter20
	li s10, failed_addr
	ld a2, 0(s10)
	jr a2
	# assert_exception block end
excp_return_label_1199:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1200, excp_return_label_1200, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1200:
	csrr a2, hpmcounter21
	li s2, failed_addr
	ld a0, 0(s2)
	jr a0
	# assert_exception block end
excp_return_label_1200:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1201, excp_return_label_1201, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1201:
	csrr a3, hpmcounter22
	li s4, failed_addr
	ld t2, 0(s4)
	jr t2
	# assert_exception block end
excp_return_label_1201:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1202, excp_return_label_1202, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1202:
	csrr a5, hpmcounter23
	li t3, failed_addr
	ld a1, 0(t3)
	jr a1
	# assert_exception block end
excp_return_label_1202:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1203, excp_return_label_1203, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1203:
	csrr s11, hpmcounter24
	li s10, failed_addr
	ld a1, 0(s10)
	jr a1
	# assert_exception block end
excp_return_label_1203:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1204, excp_return_label_1204, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1204:
	csrr a3, hpmcounter25
	li s6, failed_addr
	ld s4, 0(s6)
	jr s4
	# assert_exception block end
excp_return_label_1204:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1205, excp_return_label_1205, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1205:
	csrr s0, hpmcounter26
	li t6, failed_addr
	ld s6, 0(t6)
	jr s6
	# assert_exception block end
excp_return_label_1205:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1206, excp_return_label_1206, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1206:
	csrr a6, hpmcounter27
	li s11, failed_addr
	ld s5, 0(s11)
	jr s5
	# assert_exception block end
excp_return_label_1206:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1207, excp_return_label_1207, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1207:
	csrr s11, hpmcounter28
	li t4, failed_addr
	ld s0, 0(t4)
	jr s0
	# assert_exception block end
excp_return_label_1207:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1208, excp_return_label_1208, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1208:
	csrr s0, hpmcounter29
	li s7, failed_addr
	ld s7, 0(s7)
	jr s7
	# assert_exception block end
excp_return_label_1208:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1209, excp_return_label_1209, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1209:
	csrr s10, hpmcounter30
	li s2, failed_addr
	ld s8, 0(s2)
	jr s8
	# assert_exception block end
excp_return_label_1209:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1210, excp_return_label_1210, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1210:
	csrr t4, hpmcounter31
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_1210:
	# Set only this field in both registers, clear all others
	li t2, 32
	;#csr_rw(mcounteren, write, false, false)
	li s5, 0x20
	csrrw a0, scounteren, s5
	# Test the enabled CSR in S mode - should succeed
	csrr a4, hpmcounter5
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1211, excp_return_label_1211, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1211:
	csrr s10, cycle
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_1211:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1212, excp_return_label_1212, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1212:
	csrr s3, time
	li a4, failed_addr
	ld s6, 0(a4)
	jr s6
	# assert_exception block end
excp_return_label_1212:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1213, excp_return_label_1213, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1213:
	csrr a0, instret
	li s10, failed_addr
	ld t5, 0(s10)
	jr t5
	# assert_exception block end
excp_return_label_1213:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1214, excp_return_label_1214, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1214:
	csrr s6, hpmcounter3
	li a0, failed_addr
	ld s5, 0(a0)
	jr s5
	# assert_exception block end
excp_return_label_1214:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1215, excp_return_label_1215, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1215:
	csrr s2, hpmcounter4
	li s1, failed_addr
	ld s10, 0(s1)
	jr s10
	# assert_exception block end
excp_return_label_1215:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1216, excp_return_label_1216, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1216:
	csrr t2, hpmcounter6
	li s3, failed_addr
	ld s11, 0(s3)
	jr s11
	# assert_exception block end
excp_return_label_1216:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1217, excp_return_label_1217, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1217:
	csrr a0, hpmcounter7
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
	# assert_exception block end
excp_return_label_1217:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1218, excp_return_label_1218, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1218:
	csrr a3, hpmcounter8
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_1218:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1219, excp_return_label_1219, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1219:
	csrr s11, hpmcounter9
	li t3, failed_addr
	ld t3, 0(t3)
	jr t3
	# assert_exception block end
excp_return_label_1219:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1220, excp_return_label_1220, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1220:
	csrr a2, hpmcounter10
	li a6, failed_addr
	ld s10, 0(a6)
	jr s10
	# assert_exception block end
excp_return_label_1220:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1221, excp_return_label_1221, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1221:
	csrr a0, hpmcounter11
	li t5, failed_addr
	ld a0, 0(t5)
	jr a0
	# assert_exception block end
excp_return_label_1221:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1222, excp_return_label_1222, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1222:
	csrr a0, hpmcounter12
	li s8, failed_addr
	ld t4, 0(s8)
	jr t4
	# assert_exception block end
excp_return_label_1222:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1223, excp_return_label_1223, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1223:
	csrr s11, hpmcounter13
	li s7, failed_addr
	ld s5, 0(s7)
	jr s5
	# assert_exception block end
excp_return_label_1223:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1224, excp_return_label_1224, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1224:
	csrr s6, hpmcounter14
	li s4, failed_addr
	ld s10, 0(s4)
	jr s10
	# assert_exception block end
excp_return_label_1224:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1225, excp_return_label_1225, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1225:
	csrr a1, hpmcounter15
	li s6, failed_addr
	ld t4, 0(s6)
	jr t4
	# assert_exception block end
excp_return_label_1225:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1226, excp_return_label_1226, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1226:
	csrr a2, hpmcounter16
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
	# assert_exception block end
excp_return_label_1226:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1227, excp_return_label_1227, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1227:
	csrr a4, hpmcounter17
	li s9, failed_addr
	ld a1, 0(s9)
	jr a1
	# assert_exception block end
excp_return_label_1227:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1228, excp_return_label_1228, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1228:
	csrr a1, hpmcounter18
	li t1, failed_addr
	ld s0, 0(t1)
	jr s0
	# assert_exception block end
excp_return_label_1228:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1229, excp_return_label_1229, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1229:
	csrr s3, hpmcounter19
	li a6, failed_addr
	ld a5, 0(a6)
	jr a5
	# assert_exception block end
excp_return_label_1229:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1230, excp_return_label_1230, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1230:
	csrr a7, hpmcounter20
	li s6, failed_addr
	ld t1, 0(s6)
	jr t1
	# assert_exception block end
excp_return_label_1230:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1231, excp_return_label_1231, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1231:
	csrr s11, hpmcounter21
	li a4, failed_addr
	ld a2, 0(a4)
	jr a2
	# assert_exception block end
excp_return_label_1231:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1232, excp_return_label_1232, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1232:
	csrr s4, hpmcounter22
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_1232:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1233, excp_return_label_1233, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1233:
	csrr t5, hpmcounter23
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_1233:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1234, excp_return_label_1234, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1234:
	csrr a2, hpmcounter24
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_1234:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1235, excp_return_label_1235, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1235:
	csrr s2, hpmcounter25
	li a6, failed_addr
	ld a5, 0(a6)
	jr a5
	# assert_exception block end
excp_return_label_1235:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1236, excp_return_label_1236, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1236:
	csrr s0, hpmcounter26
	li s3, failed_addr
	ld s1, 0(s3)
	jr s1
	# assert_exception block end
excp_return_label_1236:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1237, excp_return_label_1237, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1237:
	csrr a0, hpmcounter27
	li s5, failed_addr
	ld s5, 0(s5)
	jr s5
	# assert_exception block end
excp_return_label_1237:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1238, excp_return_label_1238, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1238:
	csrr s9, hpmcounter28
	li a1, failed_addr
	ld a1, 0(a1)
	jr a1
	# assert_exception block end
excp_return_label_1238:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1239, excp_return_label_1239, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1239:
	csrr t2, hpmcounter29
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_1239:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1240, excp_return_label_1240, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1240:
	csrr a6, hpmcounter30
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_1240:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1241, excp_return_label_1241, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1241:
	csrr s11, hpmcounter31
	li a2, failed_addr
	ld t4, 0(a2)
	jr t4
	# assert_exception block end
excp_return_label_1241:
	# Set only this field in both registers, clear all others
	li t2, 64
	;#csr_rw(mcounteren, write, false, false)
	li s11, 0x40
	csrrw a2, scounteren, s11
	# Test the enabled CSR in S mode - should succeed
	csrr a1, hpmcounter6
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1242, excp_return_label_1242, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1242:
	csrr s1, cycle
	li s10, failed_addr
	ld t3, 0(s10)
	jr t3
	# assert_exception block end
excp_return_label_1242:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1243, excp_return_label_1243, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1243:
	csrr a2, time
	li s10, failed_addr
	ld s10, 0(s10)
	jr s10
	# assert_exception block end
excp_return_label_1243:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1244, excp_return_label_1244, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1244:
	csrr t2, instret
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_1244:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1245, excp_return_label_1245, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1245:
	csrr s3, hpmcounter3
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_1245:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1246, excp_return_label_1246, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1246:
	csrr s3, hpmcounter4
	li t6, failed_addr
	ld s5, 0(t6)
	jr s5
	# assert_exception block end
excp_return_label_1246:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1247, excp_return_label_1247, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1247:
	csrr s2, hpmcounter5
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
	# assert_exception block end
excp_return_label_1247:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1248, excp_return_label_1248, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1248:
	csrr t6, hpmcounter7
	li s0, failed_addr
	ld s11, 0(s0)
	jr s11
	# assert_exception block end
excp_return_label_1248:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1249, excp_return_label_1249, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1249:
	csrr s2, hpmcounter8
	li s7, failed_addr
	ld s7, 0(s7)
	jr s7
	# assert_exception block end
excp_return_label_1249:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1250, excp_return_label_1250, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1250:
	csrr s2, hpmcounter9
	li s1, failed_addr
	ld s10, 0(s1)
	jr s10
	# assert_exception block end
excp_return_label_1250:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1251, excp_return_label_1251, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1251:
	csrr s5, hpmcounter10
	li a3, failed_addr
	ld a0, 0(a3)
	jr a0
	# assert_exception block end
excp_return_label_1251:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1252, excp_return_label_1252, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1252:
	csrr s6, hpmcounter11
	li t6, failed_addr
	ld s10, 0(t6)
	jr s10
	# assert_exception block end
excp_return_label_1252:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1253, excp_return_label_1253, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1253:
	csrr a5, hpmcounter12
	li a2, failed_addr
	ld t6, 0(a2)
	jr t6
	# assert_exception block end
excp_return_label_1253:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1254, excp_return_label_1254, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1254:
	csrr a3, hpmcounter13
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_1254:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1255, excp_return_label_1255, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1255:
	csrr s5, hpmcounter14
	li s3, failed_addr
	ld s9, 0(s3)
	jr s9
	# assert_exception block end
excp_return_label_1255:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1256, excp_return_label_1256, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1256:
	csrr t2, hpmcounter15
	li t5, failed_addr
	ld a5, 0(t5)
	jr a5
	# assert_exception block end
excp_return_label_1256:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1257, excp_return_label_1257, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1257:
	csrr s0, hpmcounter16
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_1257:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1258, excp_return_label_1258, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1258:
	csrr a3, hpmcounter17
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
	# assert_exception block end
excp_return_label_1258:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1259, excp_return_label_1259, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1259:
	csrr a5, hpmcounter18
	li t5, failed_addr
	ld t3, 0(t5)
	jr t3
	# assert_exception block end
excp_return_label_1259:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1260, excp_return_label_1260, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1260:
	csrr s0, hpmcounter19
	li t6, failed_addr
	ld a2, 0(t6)
	jr a2
	# assert_exception block end
excp_return_label_1260:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1261, excp_return_label_1261, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1261:
	csrr a3, hpmcounter20
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_1261:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1262, excp_return_label_1262, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1262:
	csrr a7, hpmcounter21
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_1262:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1263, excp_return_label_1263, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1263:
	csrr a4, hpmcounter22
	li s6, failed_addr
	ld s11, 0(s6)
	jr s11
	# assert_exception block end
excp_return_label_1263:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1264, excp_return_label_1264, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1264:
	csrr s4, hpmcounter23
	li s9, failed_addr
	ld t5, 0(s9)
	jr t5
	# assert_exception block end
excp_return_label_1264:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1265, excp_return_label_1265, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1265:
	csrr s3, hpmcounter24
	li t6, failed_addr
	ld s11, 0(t6)
	jr s11
	# assert_exception block end
excp_return_label_1265:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1266, excp_return_label_1266, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1266:
	csrr s7, hpmcounter25
	li s10, failed_addr
	ld s9, 0(s10)
	jr s9
	# assert_exception block end
excp_return_label_1266:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1267, excp_return_label_1267, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1267:
	csrr s8, hpmcounter26
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_1267:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1268, excp_return_label_1268, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1268:
	csrr a7, hpmcounter27
	li a5, failed_addr
	ld s3, 0(a5)
	jr s3
	# assert_exception block end
excp_return_label_1268:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1269, excp_return_label_1269, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1269:
	csrr a5, hpmcounter28
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_1269:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1270, excp_return_label_1270, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1270:
	csrr a3, hpmcounter29
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_1270:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1271, excp_return_label_1271, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1271:
	csrr s2, hpmcounter30
	li a4, failed_addr
	ld a4, 0(a4)
	jr a4
	# assert_exception block end
excp_return_label_1271:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1272, excp_return_label_1272, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1272:
	csrr s5, hpmcounter31
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_1272:
	# Set only this field in both registers, clear all others
	li t2, 128
	;#csr_rw(mcounteren, write, false, false)
	li t1, 0x80
	csrrw a5, scounteren, t1
	# Test the enabled CSR in S mode - should succeed
	csrr a0, hpmcounter7
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1273, excp_return_label_1273, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1273:
	csrr t1, cycle
	li t4, failed_addr
	ld t1, 0(t4)
	jr t1
	# assert_exception block end
excp_return_label_1273:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1274, excp_return_label_1274, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1274:
	csrr s10, time
	li s3, failed_addr
	ld t5, 0(s3)
	jr t5
	# assert_exception block end
excp_return_label_1274:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1275, excp_return_label_1275, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1275:
	csrr s3, instret
	li t3, failed_addr
	ld s9, 0(t3)
	jr s9
	# assert_exception block end
excp_return_label_1275:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1276, excp_return_label_1276, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1276:
	csrr s0, hpmcounter3
	li s0, failed_addr
	ld s1, 0(s0)
	jr s1
	# assert_exception block end
excp_return_label_1276:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1277, excp_return_label_1277, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1277:
	csrr s8, hpmcounter4
	li s9, failed_addr
	ld s5, 0(s9)
	jr s5
	# assert_exception block end
excp_return_label_1277:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1278, excp_return_label_1278, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1278:
	csrr a6, hpmcounter5
	li t1, failed_addr
	ld t3, 0(t1)
	jr t3
	# assert_exception block end
excp_return_label_1278:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1279, excp_return_label_1279, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1279:
	csrr a6, hpmcounter6
	li s11, failed_addr
	ld a6, 0(s11)
	jr a6
	# assert_exception block end
excp_return_label_1279:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1280, excp_return_label_1280, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1280:
	csrr s11, hpmcounter8
	li s0, failed_addr
	ld a0, 0(s0)
	jr a0
	# assert_exception block end
excp_return_label_1280:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1281, excp_return_label_1281, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1281:
	csrr s3, hpmcounter9
	li s3, failed_addr
	ld a0, 0(s3)
	jr a0
	# assert_exception block end
excp_return_label_1281:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1282, excp_return_label_1282, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1282:
	csrr a3, hpmcounter10
	li s9, failed_addr
	ld a1, 0(s9)
	jr a1
	# assert_exception block end
excp_return_label_1282:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1283, excp_return_label_1283, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1283:
	csrr t5, hpmcounter11
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_1283:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1284, excp_return_label_1284, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1284:
	csrr s5, hpmcounter12
	li a0, failed_addr
	ld s7, 0(a0)
	jr s7
	# assert_exception block end
excp_return_label_1284:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1285, excp_return_label_1285, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1285:
	csrr a5, hpmcounter13
	li s6, failed_addr
	ld s4, 0(s6)
	jr s4
	# assert_exception block end
excp_return_label_1285:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1286, excp_return_label_1286, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1286:
	csrr s0, hpmcounter14
	li a7, failed_addr
	ld t1, 0(a7)
	jr t1
	# assert_exception block end
excp_return_label_1286:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1287, excp_return_label_1287, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1287:
	csrr s7, hpmcounter15
	li t6, failed_addr
	ld s3, 0(t6)
	jr s3
	# assert_exception block end
excp_return_label_1287:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1288, excp_return_label_1288, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1288:
	csrr t6, hpmcounter16
	li s2, failed_addr
	ld t2, 0(s2)
	jr t2
	# assert_exception block end
excp_return_label_1288:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1289, excp_return_label_1289, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1289:
	csrr t4, hpmcounter17
	li a4, failed_addr
	ld t1, 0(a4)
	jr t1
	# assert_exception block end
excp_return_label_1289:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1290, excp_return_label_1290, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1290:
	csrr a1, hpmcounter18
	li a0, failed_addr
	ld t5, 0(a0)
	jr t5
	# assert_exception block end
excp_return_label_1290:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1291, excp_return_label_1291, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1291:
	csrr s1, hpmcounter19
	li s2, failed_addr
	ld s3, 0(s2)
	jr s3
	# assert_exception block end
excp_return_label_1291:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1292, excp_return_label_1292, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1292:
	csrr t1, hpmcounter20
	li s4, failed_addr
	ld s6, 0(s4)
	jr s6
	# assert_exception block end
excp_return_label_1292:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1293, excp_return_label_1293, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1293:
	csrr s4, hpmcounter21
	li s11, failed_addr
	ld s2, 0(s11)
	jr s2
	# assert_exception block end
excp_return_label_1293:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1294, excp_return_label_1294, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1294:
	csrr s7, hpmcounter22
	li a0, failed_addr
	ld s5, 0(a0)
	jr s5
	# assert_exception block end
excp_return_label_1294:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1295, excp_return_label_1295, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1295:
	csrr t6, hpmcounter23
	li s4, failed_addr
	ld a5, 0(s4)
	jr a5
	# assert_exception block end
excp_return_label_1295:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1296, excp_return_label_1296, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1296:
	csrr s0, hpmcounter24
	li a0, failed_addr
	ld s0, 0(a0)
	jr s0
	# assert_exception block end
excp_return_label_1296:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1297, excp_return_label_1297, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1297:
	csrr s4, hpmcounter25
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_1297:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1298, excp_return_label_1298, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1298:
	csrr a1, hpmcounter26
	li s5, failed_addr
	ld s1, 0(s5)
	jr s1
	# assert_exception block end
excp_return_label_1298:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1299, excp_return_label_1299, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1299:
	csrr a4, hpmcounter27
	li t5, failed_addr
	ld s0, 0(t5)
	jr s0
	# assert_exception block end
excp_return_label_1299:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1300, excp_return_label_1300, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1300:
	csrr a2, hpmcounter28
	li s1, failed_addr
	ld a5, 0(s1)
	jr a5
	# assert_exception block end
excp_return_label_1300:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1301, excp_return_label_1301, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1301:
	csrr s3, hpmcounter29
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
	# assert_exception block end
excp_return_label_1301:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1302, excp_return_label_1302, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1302:
	csrr t4, hpmcounter30
	li a3, failed_addr
	ld s6, 0(a3)
	jr s6
	# assert_exception block end
excp_return_label_1302:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1303, excp_return_label_1303, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1303:
	csrr t2, hpmcounter31
	li t3, failed_addr
	ld t6, 0(t3)
	jr t6
	# assert_exception block end
excp_return_label_1303:
	# Set only this field in both registers, clear all others
	li t2, 256
	;#csr_rw(mcounteren, write, false, false)
	li s5, 0x100
	csrrw s2, scounteren, s5
	# Test the enabled CSR in S mode - should succeed
	csrr t1, hpmcounter8
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1304, excp_return_label_1304, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1304:
	csrr s7, cycle
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_1304:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1305, excp_return_label_1305, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1305:
	csrr t6, time
	li a6, failed_addr
	ld a2, 0(a6)
	jr a2
	# assert_exception block end
excp_return_label_1305:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1306, excp_return_label_1306, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1306:
	csrr s3, instret
	li t6, failed_addr
	ld s9, 0(t6)
	jr s9
	# assert_exception block end
excp_return_label_1306:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1307, excp_return_label_1307, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1307:
	csrr s4, hpmcounter3
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_1307:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1308, excp_return_label_1308, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1308:
	csrr t5, hpmcounter4
	li t2, failed_addr
	ld t2, 0(t2)
	jr t2
	# assert_exception block end
excp_return_label_1308:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1309, excp_return_label_1309, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1309:
	csrr a0, hpmcounter5
	li s5, failed_addr
	ld s6, 0(s5)
	jr s6
	# assert_exception block end
excp_return_label_1309:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1310, excp_return_label_1310, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1310:
	csrr s5, hpmcounter6
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
	# assert_exception block end
excp_return_label_1310:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1311, excp_return_label_1311, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1311:
	csrr t5, hpmcounter7
	li s2, failed_addr
	ld s9, 0(s2)
	jr s9
	# assert_exception block end
excp_return_label_1311:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1312, excp_return_label_1312, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1312:
	csrr s9, hpmcounter9
	li s5, failed_addr
	ld s3, 0(s5)
	jr s3
	# assert_exception block end
excp_return_label_1312:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1313, excp_return_label_1313, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1313:
	csrr s7, hpmcounter10
	li s11, failed_addr
	ld a1, 0(s11)
	jr a1
	# assert_exception block end
excp_return_label_1313:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1314, excp_return_label_1314, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1314:
	csrr a4, hpmcounter11
	li a3, failed_addr
	ld a5, 0(a3)
	jr a5
	# assert_exception block end
excp_return_label_1314:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1315, excp_return_label_1315, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1315:
	csrr s2, hpmcounter12
	li s6, failed_addr
	ld a3, 0(s6)
	jr a3
	# assert_exception block end
excp_return_label_1315:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1316, excp_return_label_1316, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1316:
	csrr s3, hpmcounter13
	li t5, failed_addr
	ld s10, 0(t5)
	jr s10
	# assert_exception block end
excp_return_label_1316:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1317, excp_return_label_1317, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1317:
	csrr a5, hpmcounter14
	li a6, failed_addr
	ld s7, 0(a6)
	jr s7
	# assert_exception block end
excp_return_label_1317:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1318, excp_return_label_1318, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1318:
	csrr s5, hpmcounter15
	li s6, failed_addr
	ld t3, 0(s6)
	jr t3
	# assert_exception block end
excp_return_label_1318:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1319, excp_return_label_1319, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1319:
	csrr s4, hpmcounter16
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_1319:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1320, excp_return_label_1320, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1320:
	csrr s11, hpmcounter17
	li t2, failed_addr
	ld a6, 0(t2)
	jr a6
	# assert_exception block end
excp_return_label_1320:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1321, excp_return_label_1321, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1321:
	csrr t3, hpmcounter18
	li a4, failed_addr
	ld s2, 0(a4)
	jr s2
	# assert_exception block end
excp_return_label_1321:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1322, excp_return_label_1322, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1322:
	csrr a1, hpmcounter19
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_1322:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1323, excp_return_label_1323, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1323:
	csrr t5, hpmcounter20
	li t4, failed_addr
	ld s1, 0(t4)
	jr s1
	# assert_exception block end
excp_return_label_1323:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1324, excp_return_label_1324, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1324:
	csrr t1, hpmcounter21
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
	# assert_exception block end
excp_return_label_1324:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1325, excp_return_label_1325, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1325:
	csrr t2, hpmcounter22
	li t6, failed_addr
	ld s7, 0(t6)
	jr s7
	# assert_exception block end
excp_return_label_1325:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1326, excp_return_label_1326, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1326:
	csrr s0, hpmcounter23
	li s11, failed_addr
	ld a1, 0(s11)
	jr a1
	# assert_exception block end
excp_return_label_1326:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1327, excp_return_label_1327, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1327:
	csrr t6, hpmcounter24
	li a0, failed_addr
	ld s3, 0(a0)
	jr s3
	# assert_exception block end
excp_return_label_1327:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1328, excp_return_label_1328, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1328:
	csrr a7, hpmcounter25
	li a1, failed_addr
	ld a5, 0(a1)
	jr a5
	# assert_exception block end
excp_return_label_1328:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1329, excp_return_label_1329, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1329:
	csrr a6, hpmcounter26
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
	# assert_exception block end
excp_return_label_1329:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1330, excp_return_label_1330, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1330:
	csrr a7, hpmcounter27
	li s4, failed_addr
	ld a1, 0(s4)
	jr a1
	# assert_exception block end
excp_return_label_1330:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1331, excp_return_label_1331, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1331:
	csrr a5, hpmcounter28
	li a4, failed_addr
	ld a7, 0(a4)
	jr a7
	# assert_exception block end
excp_return_label_1331:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1332, excp_return_label_1332, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1332:
	csrr s8, hpmcounter29
	li s11, failed_addr
	ld a7, 0(s11)
	jr a7
	# assert_exception block end
excp_return_label_1332:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1333, excp_return_label_1333, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1333:
	csrr s9, hpmcounter30
	li a2, failed_addr
	ld s1, 0(a2)
	jr s1
	# assert_exception block end
excp_return_label_1333:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1334, excp_return_label_1334, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1334:
	csrr a6, hpmcounter31
	li t5, failed_addr
	ld a4, 0(t5)
	jr a4
	# assert_exception block end
excp_return_label_1334:
	# Set only this field in both registers, clear all others
	li t2, 512
	;#csr_rw(mcounteren, write, false, false)
	li s5, 0x200
	csrrw s7, scounteren, s5
	# Test the enabled CSR in S mode - should succeed
	csrr t4, hpmcounter9
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1335, excp_return_label_1335, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1335:
	csrr s2, cycle
	li s6, failed_addr
	ld s0, 0(s6)
	jr s0
	# assert_exception block end
excp_return_label_1335:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1336, excp_return_label_1336, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1336:
	csrr s8, time
	li t2, failed_addr
	ld s10, 0(t2)
	jr s10
	# assert_exception block end
excp_return_label_1336:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1337, excp_return_label_1337, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1337:
	csrr a4, instret
	li s7, failed_addr
	ld a5, 0(s7)
	jr a5
	# assert_exception block end
excp_return_label_1337:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1338, excp_return_label_1338, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1338:
	csrr s4, hpmcounter3
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_1338:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1339, excp_return_label_1339, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1339:
	csrr s8, hpmcounter4
	li s9, failed_addr
	ld s5, 0(s9)
	jr s5
	# assert_exception block end
excp_return_label_1339:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1340, excp_return_label_1340, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1340:
	csrr a2, hpmcounter5
	li s7, failed_addr
	ld s6, 0(s7)
	jr s6
	# assert_exception block end
excp_return_label_1340:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1341, excp_return_label_1341, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1341:
	csrr s0, hpmcounter6
	li s4, failed_addr
	ld a6, 0(s4)
	jr a6
	# assert_exception block end
excp_return_label_1341:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1342, excp_return_label_1342, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1342:
	csrr s8, hpmcounter7
	li a4, failed_addr
	ld s1, 0(a4)
	jr s1
	# assert_exception block end
excp_return_label_1342:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1343, excp_return_label_1343, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1343:
	csrr t6, hpmcounter8
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_1343:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1344, excp_return_label_1344, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1344:
	csrr a2, hpmcounter10
	li s4, failed_addr
	ld t3, 0(s4)
	jr t3
	# assert_exception block end
excp_return_label_1344:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1345, excp_return_label_1345, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1345:
	csrr a1, hpmcounter11
	li s1, failed_addr
	ld t4, 0(s1)
	jr t4
	# assert_exception block end
excp_return_label_1345:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1346, excp_return_label_1346, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1346:
	csrr s8, hpmcounter12
	li a3, failed_addr
	ld s11, 0(a3)
	jr s11
	# assert_exception block end
excp_return_label_1346:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1347, excp_return_label_1347, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1347:
	csrr a0, hpmcounter13
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_1347:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1348, excp_return_label_1348, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1348:
	csrr s9, hpmcounter14
	li a6, failed_addr
	ld a2, 0(a6)
	jr a2
	# assert_exception block end
excp_return_label_1348:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1349, excp_return_label_1349, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1349:
	csrr s3, hpmcounter15
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_1349:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1350, excp_return_label_1350, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1350:
	csrr a0, hpmcounter16
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_1350:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1351, excp_return_label_1351, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1351:
	csrr s11, hpmcounter17
	li t5, failed_addr
	ld t5, 0(t5)
	jr t5
	# assert_exception block end
excp_return_label_1351:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1352, excp_return_label_1352, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1352:
	csrr a0, hpmcounter18
	li a7, failed_addr
	ld s5, 0(a7)
	jr s5
	# assert_exception block end
excp_return_label_1352:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1353, excp_return_label_1353, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1353:
	csrr s3, hpmcounter19
	li s7, failed_addr
	ld a2, 0(s7)
	jr a2
	# assert_exception block end
excp_return_label_1353:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1354, excp_return_label_1354, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1354:
	csrr a3, hpmcounter20
	li s11, failed_addr
	ld s4, 0(s11)
	jr s4
	# assert_exception block end
excp_return_label_1354:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1355, excp_return_label_1355, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1355:
	csrr a7, hpmcounter21
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
	# assert_exception block end
excp_return_label_1355:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1356, excp_return_label_1356, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1356:
	csrr t3, hpmcounter22
	li s9, failed_addr
	ld t2, 0(s9)
	jr t2
	# assert_exception block end
excp_return_label_1356:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1357, excp_return_label_1357, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1357:
	csrr t5, hpmcounter23
	li a6, failed_addr
	ld a3, 0(a6)
	jr a3
	# assert_exception block end
excp_return_label_1357:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1358, excp_return_label_1358, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1358:
	csrr t1, hpmcounter24
	li t6, failed_addr
	ld a1, 0(t6)
	jr a1
	# assert_exception block end
excp_return_label_1358:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1359, excp_return_label_1359, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1359:
	csrr t4, hpmcounter25
	li s9, failed_addr
	ld t3, 0(s9)
	jr t3
	# assert_exception block end
excp_return_label_1359:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1360, excp_return_label_1360, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1360:
	csrr t4, hpmcounter26
	li t5, failed_addr
	ld s1, 0(t5)
	jr s1
	# assert_exception block end
excp_return_label_1360:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1361, excp_return_label_1361, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1361:
	csrr a0, hpmcounter27
	li s6, failed_addr
	ld s5, 0(s6)
	jr s5
	# assert_exception block end
excp_return_label_1361:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1362, excp_return_label_1362, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1362:
	csrr t1, hpmcounter28
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_1362:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1363, excp_return_label_1363, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1363:
	csrr s6, hpmcounter29
	li a3, failed_addr
	ld a7, 0(a3)
	jr a7
	# assert_exception block end
excp_return_label_1363:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1364, excp_return_label_1364, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1364:
	csrr s10, hpmcounter30
	li s7, failed_addr
	ld s7, 0(s7)
	jr s7
	# assert_exception block end
excp_return_label_1364:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1365, excp_return_label_1365, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1365:
	csrr s3, hpmcounter31
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_1365:
	# Set only this field in both registers, clear all others
	li t2, 1024
	;#csr_rw(mcounteren, write, false, false)
	li s6, 0x400
	csrrw a0, scounteren, s6
	# Test the enabled CSR in S mode - should succeed
	csrr s8, hpmcounter10
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1366, excp_return_label_1366, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1366:
	csrr a6, cycle
	li a1, failed_addr
	ld a4, 0(a1)
	jr a4
	# assert_exception block end
excp_return_label_1366:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1367, excp_return_label_1367, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1367:
	csrr a3, time
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_1367:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1368, excp_return_label_1368, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1368:
	csrr s11, instret
	li a1, failed_addr
	ld a5, 0(a1)
	jr a5
	# assert_exception block end
excp_return_label_1368:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1369, excp_return_label_1369, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1369:
	csrr t4, hpmcounter3
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
	# assert_exception block end
excp_return_label_1369:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1370, excp_return_label_1370, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1370:
	csrr s7, hpmcounter4
	li a4, failed_addr
	ld a6, 0(a4)
	jr a6
	# assert_exception block end
excp_return_label_1370:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1371, excp_return_label_1371, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1371:
	csrr a3, hpmcounter5
	li s11, failed_addr
	ld s7, 0(s11)
	jr s7
	# assert_exception block end
excp_return_label_1371:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1372, excp_return_label_1372, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1372:
	csrr s10, hpmcounter6
	li a0, failed_addr
	ld s9, 0(a0)
	jr s9
	# assert_exception block end
excp_return_label_1372:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1373, excp_return_label_1373, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1373:
	csrr s5, hpmcounter7
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_1373:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1374, excp_return_label_1374, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1374:
	csrr a1, hpmcounter8
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
	# assert_exception block end
excp_return_label_1374:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1375, excp_return_label_1375, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1375:
	csrr a2, hpmcounter9
	li a0, failed_addr
	ld t1, 0(a0)
	jr t1
	# assert_exception block end
excp_return_label_1375:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1376, excp_return_label_1376, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1376:
	csrr a6, hpmcounter11
	li a7, failed_addr
	ld t6, 0(a7)
	jr t6
	# assert_exception block end
excp_return_label_1376:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1377, excp_return_label_1377, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1377:
	csrr s1, hpmcounter12
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
	# assert_exception block end
excp_return_label_1377:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1378, excp_return_label_1378, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1378:
	csrr a6, hpmcounter13
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_1378:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1379, excp_return_label_1379, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1379:
	csrr s4, hpmcounter14
	li s0, failed_addr
	ld a5, 0(s0)
	jr a5
	# assert_exception block end
excp_return_label_1379:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1380, excp_return_label_1380, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1380:
	csrr s1, hpmcounter15
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_1380:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1381, excp_return_label_1381, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1381:
	csrr a0, hpmcounter16
	li a7, failed_addr
	ld t2, 0(a7)
	jr t2
	# assert_exception block end
excp_return_label_1381:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1382, excp_return_label_1382, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1382:
	csrr a5, hpmcounter17
	li s1, failed_addr
	ld a5, 0(s1)
	jr a5
	# assert_exception block end
excp_return_label_1382:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1383, excp_return_label_1383, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1383:
	csrr s7, hpmcounter18
	li a2, failed_addr
	ld s8, 0(a2)
	jr s8
	# assert_exception block end
excp_return_label_1383:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1384, excp_return_label_1384, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1384:
	csrr s0, hpmcounter19
	li s3, failed_addr
	ld t6, 0(s3)
	jr t6
	# assert_exception block end
excp_return_label_1384:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1385, excp_return_label_1385, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1385:
	csrr a2, hpmcounter20
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
	# assert_exception block end
excp_return_label_1385:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1386, excp_return_label_1386, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1386:
	csrr s7, hpmcounter21
	li s1, failed_addr
	ld s7, 0(s1)
	jr s7
	# assert_exception block end
excp_return_label_1386:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1387, excp_return_label_1387, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1387:
	csrr s3, hpmcounter22
	li s11, failed_addr
	ld a3, 0(s11)
	jr a3
	# assert_exception block end
excp_return_label_1387:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1388, excp_return_label_1388, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1388:
	csrr a2, hpmcounter23
	li s9, failed_addr
	ld a5, 0(s9)
	jr a5
	# assert_exception block end
excp_return_label_1388:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1389, excp_return_label_1389, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1389:
	csrr s11, hpmcounter24
	li t3, failed_addr
	ld s9, 0(t3)
	jr s9
	# assert_exception block end
excp_return_label_1389:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1390, excp_return_label_1390, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1390:
	csrr t6, hpmcounter25
	li t3, failed_addr
	ld a6, 0(t3)
	jr a6
	# assert_exception block end
excp_return_label_1390:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1391, excp_return_label_1391, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1391:
	csrr s1, hpmcounter26
	li t3, failed_addr
	ld s0, 0(t3)
	jr s0
	# assert_exception block end
excp_return_label_1391:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1392, excp_return_label_1392, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1392:
	csrr s2, hpmcounter27
	li a2, failed_addr
	ld a7, 0(a2)
	jr a7
	# assert_exception block end
excp_return_label_1392:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1393, excp_return_label_1393, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1393:
	csrr s10, hpmcounter28
	li t5, failed_addr
	ld s8, 0(t5)
	jr s8
	# assert_exception block end
excp_return_label_1393:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1394, excp_return_label_1394, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1394:
	csrr s6, hpmcounter29
	li s0, failed_addr
	ld s5, 0(s0)
	jr s5
	# assert_exception block end
excp_return_label_1394:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1395, excp_return_label_1395, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1395:
	csrr a5, hpmcounter30
	li t5, failed_addr
	ld s2, 0(t5)
	jr s2
	# assert_exception block end
excp_return_label_1395:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1396, excp_return_label_1396, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1396:
	csrr s0, hpmcounter31
	li t2, failed_addr
	ld s3, 0(t2)
	jr s3
	# assert_exception block end
excp_return_label_1396:
	# Set only this field in both registers, clear all others
	li t2, 2048
	;#csr_rw(mcounteren, write, false, false)
	li s9, 0x800
	csrrw s3, scounteren, s9
	# Test the enabled CSR in S mode - should succeed
	csrr t1, hpmcounter11
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1397, excp_return_label_1397, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1397:
	csrr s7, cycle
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
	# assert_exception block end
excp_return_label_1397:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1398, excp_return_label_1398, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1398:
	csrr s10, time
	li s3, failed_addr
	ld s10, 0(s3)
	jr s10
	# assert_exception block end
excp_return_label_1398:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1399, excp_return_label_1399, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1399:
	csrr a5, instret
	li a5, failed_addr
	ld s8, 0(a5)
	jr s8
	# assert_exception block end
excp_return_label_1399:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1400, excp_return_label_1400, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1400:
	csrr s2, hpmcounter3
	li s3, failed_addr
	ld s10, 0(s3)
	jr s10
	# assert_exception block end
excp_return_label_1400:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1401, excp_return_label_1401, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1401:
	csrr a0, hpmcounter4
	li s7, failed_addr
	ld t2, 0(s7)
	jr t2
	# assert_exception block end
excp_return_label_1401:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1402, excp_return_label_1402, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1402:
	csrr a5, hpmcounter5
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
	# assert_exception block end
excp_return_label_1402:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1403, excp_return_label_1403, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1403:
	csrr a4, hpmcounter6
	li a1, failed_addr
	ld t4, 0(a1)
	jr t4
	# assert_exception block end
excp_return_label_1403:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1404, excp_return_label_1404, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1404:
	csrr s5, hpmcounter7
	li s11, failed_addr
	ld s0, 0(s11)
	jr s0
	# assert_exception block end
excp_return_label_1404:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1405, excp_return_label_1405, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1405:
	csrr t1, hpmcounter8
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_1405:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1406, excp_return_label_1406, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1406:
	csrr a5, hpmcounter9
	li s5, failed_addr
	ld a7, 0(s5)
	jr a7
	# assert_exception block end
excp_return_label_1406:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1407, excp_return_label_1407, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1407:
	csrr t1, hpmcounter10
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_1407:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1408, excp_return_label_1408, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1408:
	csrr a4, hpmcounter12
	li s10, failed_addr
	ld a2, 0(s10)
	jr a2
	# assert_exception block end
excp_return_label_1408:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1409, excp_return_label_1409, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1409:
	csrr s8, hpmcounter13
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_1409:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1410, excp_return_label_1410, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1410:
	csrr s10, hpmcounter14
	li a6, failed_addr
	ld t6, 0(a6)
	jr t6
	# assert_exception block end
excp_return_label_1410:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1411, excp_return_label_1411, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1411:
	csrr s5, hpmcounter15
	li s2, failed_addr
	ld s7, 0(s2)
	jr s7
	# assert_exception block end
excp_return_label_1411:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1412, excp_return_label_1412, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1412:
	csrr a5, hpmcounter16
	li s9, failed_addr
	ld t2, 0(s9)
	jr t2
	# assert_exception block end
excp_return_label_1412:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1413, excp_return_label_1413, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1413:
	csrr s11, hpmcounter17
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
	# assert_exception block end
excp_return_label_1413:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1414, excp_return_label_1414, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1414:
	csrr t3, hpmcounter18
	li s0, failed_addr
	ld a1, 0(s0)
	jr a1
	# assert_exception block end
excp_return_label_1414:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1415, excp_return_label_1415, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1415:
	csrr s1, hpmcounter19
	li s2, failed_addr
	ld t2, 0(s2)
	jr t2
	# assert_exception block end
excp_return_label_1415:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1416, excp_return_label_1416, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1416:
	csrr s8, hpmcounter20
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
	# assert_exception block end
excp_return_label_1416:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1417, excp_return_label_1417, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1417:
	csrr s3, hpmcounter21
	li a5, failed_addr
	ld a2, 0(a5)
	jr a2
	# assert_exception block end
excp_return_label_1417:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1418, excp_return_label_1418, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1418:
	csrr a6, hpmcounter22
	li a7, failed_addr
	ld s1, 0(a7)
	jr s1
	# assert_exception block end
excp_return_label_1418:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1419, excp_return_label_1419, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1419:
	csrr s0, hpmcounter23
	li a4, failed_addr
	ld s4, 0(a4)
	jr s4
	# assert_exception block end
excp_return_label_1419:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1420, excp_return_label_1420, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1420:
	csrr a2, hpmcounter24
	li s0, failed_addr
	ld a1, 0(s0)
	jr a1
	# assert_exception block end
excp_return_label_1420:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1421, excp_return_label_1421, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1421:
	csrr t2, hpmcounter25
	li s2, failed_addr
	ld a6, 0(s2)
	jr a6
	# assert_exception block end
excp_return_label_1421:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1422, excp_return_label_1422, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1422:
	csrr s9, hpmcounter26
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_1422:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1423, excp_return_label_1423, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1423:
	csrr t3, hpmcounter27
	li a1, failed_addr
	ld t5, 0(a1)
	jr t5
	# assert_exception block end
excp_return_label_1423:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1424, excp_return_label_1424, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1424:
	csrr t1, hpmcounter28
	li s0, failed_addr
	ld t5, 0(s0)
	jr t5
	# assert_exception block end
excp_return_label_1424:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1425, excp_return_label_1425, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1425:
	csrr t1, hpmcounter29
	li s4, failed_addr
	ld s5, 0(s4)
	jr s5
	# assert_exception block end
excp_return_label_1425:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1426, excp_return_label_1426, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1426:
	csrr t2, hpmcounter30
	li s11, failed_addr
	ld t3, 0(s11)
	jr t3
	# assert_exception block end
excp_return_label_1426:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1427, excp_return_label_1427, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1427:
	csrr a7, hpmcounter31
	li t3, failed_addr
	ld a1, 0(t3)
	jr a1
	# assert_exception block end
excp_return_label_1427:
	# Set only this field in both registers, clear all others
	li t2, 4096
	;#csr_rw(mcounteren, write, false, false)
	li t3, 0x1000
	csrrw s0, scounteren, t3
	# Test the enabled CSR in S mode - should succeed
	csrr s5, hpmcounter12
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1428, excp_return_label_1428, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1428:
	csrr s6, cycle
	li s1, failed_addr
	ld s7, 0(s1)
	jr s7
	# assert_exception block end
excp_return_label_1428:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1429, excp_return_label_1429, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1429:
	csrr s6, time
	li s4, failed_addr
	ld a2, 0(s4)
	jr a2
	# assert_exception block end
excp_return_label_1429:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1430, excp_return_label_1430, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1430:
	csrr s9, instret
	li s6, failed_addr
	ld a7, 0(s6)
	jr a7
	# assert_exception block end
excp_return_label_1430:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1431, excp_return_label_1431, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1431:
	csrr t1, hpmcounter3
	li s5, failed_addr
	ld s11, 0(s5)
	jr s11
	# assert_exception block end
excp_return_label_1431:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1432, excp_return_label_1432, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1432:
	csrr s2, hpmcounter4
	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_1432:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1433, excp_return_label_1433, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1433:
	csrr s9, hpmcounter5
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
	# assert_exception block end
excp_return_label_1433:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1434, excp_return_label_1434, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1434:
	csrr a5, hpmcounter6
	li t2, failed_addr
	ld a2, 0(t2)
	jr a2
	# assert_exception block end
excp_return_label_1434:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1435, excp_return_label_1435, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1435:
	csrr a4, hpmcounter7
	li t5, failed_addr
	ld t4, 0(t5)
	jr t4
	# assert_exception block end
excp_return_label_1435:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1436, excp_return_label_1436, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1436:
	csrr t2, hpmcounter8
	li s10, failed_addr
	ld s0, 0(s10)
	jr s0
	# assert_exception block end
excp_return_label_1436:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1437, excp_return_label_1437, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1437:
	csrr t4, hpmcounter9
	li t1, failed_addr
	ld a6, 0(t1)
	jr a6
	# assert_exception block end
excp_return_label_1437:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1438, excp_return_label_1438, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1438:
	csrr s7, hpmcounter10
	li a6, failed_addr
	ld a6, 0(a6)
	jr a6
	# assert_exception block end
excp_return_label_1438:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1439, excp_return_label_1439, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1439:
	csrr t5, hpmcounter11
	li s4, failed_addr
	ld a2, 0(s4)
	jr a2
	# assert_exception block end
excp_return_label_1439:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1440, excp_return_label_1440, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1440:
	csrr a0, hpmcounter13
	li t3, failed_addr
	ld s10, 0(t3)
	jr s10
	# assert_exception block end
excp_return_label_1440:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1441, excp_return_label_1441, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1441:
	csrr s3, hpmcounter14
	li s11, failed_addr
	ld s1, 0(s11)
	jr s1
	# assert_exception block end
excp_return_label_1441:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1442, excp_return_label_1442, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1442:
	csrr a1, hpmcounter15
	li t4, failed_addr
	ld t6, 0(t4)
	jr t6
	# assert_exception block end
excp_return_label_1442:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1443, excp_return_label_1443, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1443:
	csrr s9, hpmcounter16
	li a7, failed_addr
	ld s2, 0(a7)
	jr s2
	# assert_exception block end
excp_return_label_1443:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1444, excp_return_label_1444, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1444:
	csrr a0, hpmcounter17
	li s11, failed_addr
	ld s2, 0(s11)
	jr s2
	# assert_exception block end
excp_return_label_1444:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1445, excp_return_label_1445, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1445:
	csrr t6, hpmcounter18
	li t3, failed_addr
	ld t3, 0(t3)
	jr t3
	# assert_exception block end
excp_return_label_1445:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1446, excp_return_label_1446, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1446:
	csrr a3, hpmcounter19
	li s5, failed_addr
	ld a6, 0(s5)
	jr a6
	# assert_exception block end
excp_return_label_1446:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1447, excp_return_label_1447, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1447:
	csrr s6, hpmcounter20
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
	# assert_exception block end
excp_return_label_1447:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1448, excp_return_label_1448, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1448:
	csrr s6, hpmcounter21
	li a3, failed_addr
	ld s7, 0(a3)
	jr s7
	# assert_exception block end
excp_return_label_1448:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1449, excp_return_label_1449, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1449:
	csrr s1, hpmcounter22
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_1449:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1450, excp_return_label_1450, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1450:
	csrr t2, hpmcounter23
	li a1, failed_addr
	ld t4, 0(a1)
	jr t4
	# assert_exception block end
excp_return_label_1450:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1451, excp_return_label_1451, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1451:
	csrr t6, hpmcounter24
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_1451:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1452, excp_return_label_1452, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1452:
	csrr s3, hpmcounter25
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_1452:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1453, excp_return_label_1453, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1453:
	csrr s3, hpmcounter26
	li s7, failed_addr
	ld a1, 0(s7)
	jr a1
	# assert_exception block end
excp_return_label_1453:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1454, excp_return_label_1454, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1454:
	csrr s9, hpmcounter27
	li s1, failed_addr
	ld s11, 0(s1)
	jr s11
	# assert_exception block end
excp_return_label_1454:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1455, excp_return_label_1455, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1455:
	csrr a1, hpmcounter28
	li s1, failed_addr
	ld s11, 0(s1)
	jr s11
	# assert_exception block end
excp_return_label_1455:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1456, excp_return_label_1456, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1456:
	csrr t2, hpmcounter29
	li s10, failed_addr
	ld s2, 0(s10)
	jr s2
	# assert_exception block end
excp_return_label_1456:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1457, excp_return_label_1457, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1457:
	csrr s4, hpmcounter30
	li t5, failed_addr
	ld a5, 0(t5)
	jr a5
	# assert_exception block end
excp_return_label_1457:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1458, excp_return_label_1458, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1458:
	csrr t6, hpmcounter31
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_1458:
	# Set only this field in both registers, clear all others
	li t2, 8192
	;#csr_rw(mcounteren, write, false, false)
	li t1, 0x2000
	csrrw a5, scounteren, t1
	# Test the enabled CSR in S mode - should succeed
	csrr s4, hpmcounter13
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1459, excp_return_label_1459, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1459:
	csrr s4, cycle
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_1459:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1460, excp_return_label_1460, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1460:
	csrr a7, time
	li s5, failed_addr
	ld a7, 0(s5)
	jr a7
	# assert_exception block end
excp_return_label_1460:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1461, excp_return_label_1461, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1461:
	csrr t6, instret
	li a5, failed_addr
	ld a0, 0(a5)
	jr a0
	# assert_exception block end
excp_return_label_1461:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1462, excp_return_label_1462, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1462:
	csrr t2, hpmcounter3
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
	# assert_exception block end
excp_return_label_1462:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1463, excp_return_label_1463, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1463:
	csrr a0, hpmcounter4
	li s9, failed_addr
	ld s2, 0(s9)
	jr s2
	# assert_exception block end
excp_return_label_1463:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1464, excp_return_label_1464, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1464:
	csrr a5, hpmcounter5
	li s5, failed_addr
	ld s3, 0(s5)
	jr s3
	# assert_exception block end
excp_return_label_1464:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1465, excp_return_label_1465, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1465:
	csrr s2, hpmcounter6
	li t4, failed_addr
	ld s2, 0(t4)
	jr s2
	# assert_exception block end
excp_return_label_1465:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1466, excp_return_label_1466, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1466:
	csrr a1, hpmcounter7
	li t5, failed_addr
	ld s7, 0(t5)
	jr s7
	# assert_exception block end
excp_return_label_1466:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1467, excp_return_label_1467, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1467:
	csrr a1, hpmcounter8
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
	# assert_exception block end
excp_return_label_1467:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1468, excp_return_label_1468, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1468:
	csrr t6, hpmcounter9
	li a6, failed_addr
	ld a5, 0(a6)
	jr a5
	# assert_exception block end
excp_return_label_1468:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1469, excp_return_label_1469, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1469:
	csrr a7, hpmcounter10
	li t6, failed_addr
	ld a7, 0(t6)
	jr a7
	# assert_exception block end
excp_return_label_1469:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1470, excp_return_label_1470, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1470:
	csrr s0, hpmcounter11
	li s7, failed_addr
	ld s6, 0(s7)
	jr s6
	# assert_exception block end
excp_return_label_1470:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1471, excp_return_label_1471, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1471:
	csrr s8, hpmcounter12
	li s5, failed_addr
	ld a4, 0(s5)
	jr a4
	# assert_exception block end
excp_return_label_1471:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1472, excp_return_label_1472, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1472:
	csrr t3, hpmcounter14
	li t2, failed_addr
	ld a3, 0(t2)
	jr a3
	# assert_exception block end
excp_return_label_1472:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1473, excp_return_label_1473, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1473:
	csrr a5, hpmcounter15
	li s0, failed_addr
	ld s8, 0(s0)
	jr s8
	# assert_exception block end
excp_return_label_1473:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1474, excp_return_label_1474, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1474:
	csrr s3, hpmcounter16
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
	# assert_exception block end
excp_return_label_1474:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1475, excp_return_label_1475, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1475:
	csrr a1, hpmcounter17
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_1475:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1476, excp_return_label_1476, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1476:
	csrr s11, hpmcounter18
	li s8, failed_addr
	ld t6, 0(s8)
	jr t6
	# assert_exception block end
excp_return_label_1476:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1477, excp_return_label_1477, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1477:
	csrr s1, hpmcounter19
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_1477:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1478, excp_return_label_1478, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1478:
	csrr t2, hpmcounter20
	li t6, failed_addr
	ld s0, 0(t6)
	jr s0
	# assert_exception block end
excp_return_label_1478:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1479, excp_return_label_1479, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1479:
	csrr s2, hpmcounter21
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
	# assert_exception block end
excp_return_label_1479:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1480, excp_return_label_1480, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1480:
	csrr s9, hpmcounter22
	li s10, failed_addr
	ld s6, 0(s10)
	jr s6
	# assert_exception block end
excp_return_label_1480:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1481, excp_return_label_1481, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1481:
	csrr a5, hpmcounter23
	li t3, failed_addr
	ld s6, 0(t3)
	jr s6
	# assert_exception block end
excp_return_label_1481:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1482, excp_return_label_1482, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1482:
	csrr a0, hpmcounter24
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_1482:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1483, excp_return_label_1483, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1483:
	csrr t1, hpmcounter25
	li s2, failed_addr
	ld a1, 0(s2)
	jr a1
	# assert_exception block end
excp_return_label_1483:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1484, excp_return_label_1484, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1484:
	csrr t3, hpmcounter26
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_1484:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1485, excp_return_label_1485, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1485:
	csrr a5, hpmcounter27
	li t6, failed_addr
	ld a7, 0(t6)
	jr a7
	# assert_exception block end
excp_return_label_1485:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1486, excp_return_label_1486, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1486:
	csrr s5, hpmcounter28
	li a2, failed_addr
	ld s6, 0(a2)
	jr s6
	# assert_exception block end
excp_return_label_1486:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1487, excp_return_label_1487, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1487:
	csrr t4, hpmcounter29
	li a6, failed_addr
	ld s6, 0(a6)
	jr s6
	# assert_exception block end
excp_return_label_1487:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1488, excp_return_label_1488, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1488:
	csrr t4, hpmcounter30
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_1488:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1489, excp_return_label_1489, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1489:
	csrr a6, hpmcounter31
	li s5, failed_addr
	ld s4, 0(s5)
	jr s4
	# assert_exception block end
excp_return_label_1489:
	# Set only this field in both registers, clear all others
	li t2, 16384
	;#csr_rw(mcounteren, write, false, false)
	li s9, 0x4000
	csrrw s5, scounteren, s9
	# Test the enabled CSR in S mode - should succeed
	csrr t3, hpmcounter14
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1490, excp_return_label_1490, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1490:
	csrr a6, cycle
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_1490:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1491, excp_return_label_1491, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1491:
	csrr a5, time
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_1491:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1492, excp_return_label_1492, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1492:
	csrr t5, instret
	li a5, failed_addr
	ld s5, 0(a5)
	jr s5
	# assert_exception block end
excp_return_label_1492:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1493, excp_return_label_1493, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1493:
	csrr t4, hpmcounter3
	li t6, failed_addr
	ld s7, 0(t6)
	jr s7
	# assert_exception block end
excp_return_label_1493:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1494, excp_return_label_1494, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1494:
	csrr a4, hpmcounter4
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_1494:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1495, excp_return_label_1495, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1495:
	csrr a2, hpmcounter5
	li s7, failed_addr
	ld s7, 0(s7)
	jr s7
	# assert_exception block end
excp_return_label_1495:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1496, excp_return_label_1496, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1496:
	csrr s4, hpmcounter6
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_1496:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1497, excp_return_label_1497, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1497:
	csrr s7, hpmcounter7
	li s11, failed_addr
	ld t4, 0(s11)
	jr t4
	# assert_exception block end
excp_return_label_1497:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1498, excp_return_label_1498, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1498:
	csrr s2, hpmcounter8
	li t3, failed_addr
	ld s7, 0(t3)
	jr s7
	# assert_exception block end
excp_return_label_1498:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1499, excp_return_label_1499, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1499:
	csrr t4, hpmcounter9
	li s4, failed_addr
	ld s10, 0(s4)
	jr s10
	# assert_exception block end
excp_return_label_1499:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1500, excp_return_label_1500, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1500:
	csrr t5, hpmcounter10
	li a6, failed_addr
	ld s10, 0(a6)
	jr s10
	# assert_exception block end
excp_return_label_1500:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1501, excp_return_label_1501, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1501:
	csrr a0, hpmcounter11
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_1501:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1502, excp_return_label_1502, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1502:
	csrr s1, hpmcounter12
	li s3, failed_addr
	ld t4, 0(s3)
	jr t4
	# assert_exception block end
excp_return_label_1502:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1503, excp_return_label_1503, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1503:
	csrr a6, hpmcounter13
	li a2, failed_addr
	ld a6, 0(a2)
	jr a6
	# assert_exception block end
excp_return_label_1503:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1504, excp_return_label_1504, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1504:
	csrr t6, hpmcounter15
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
	# assert_exception block end
excp_return_label_1504:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1505, excp_return_label_1505, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1505:
	csrr t6, hpmcounter16
	li t1, failed_addr
	ld a3, 0(t1)
	jr a3
	# assert_exception block end
excp_return_label_1505:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1506, excp_return_label_1506, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1506:
	csrr a3, hpmcounter17
	li s11, failed_addr
	ld s3, 0(s11)
	jr s3
	# assert_exception block end
excp_return_label_1506:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1507, excp_return_label_1507, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1507:
	csrr t1, hpmcounter18
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
	# assert_exception block end
excp_return_label_1507:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1508, excp_return_label_1508, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1508:
	csrr a3, hpmcounter19
	li s9, failed_addr
	ld s9, 0(s9)
	jr s9
	# assert_exception block end
excp_return_label_1508:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1509, excp_return_label_1509, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1509:
	csrr t6, hpmcounter20
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
	# assert_exception block end
excp_return_label_1509:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1510, excp_return_label_1510, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1510:
	csrr s4, hpmcounter21
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_1510:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1511, excp_return_label_1511, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1511:
	csrr a0, hpmcounter22
	li s7, failed_addr
	ld t1, 0(s7)
	jr t1
	# assert_exception block end
excp_return_label_1511:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1512, excp_return_label_1512, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1512:
	csrr s9, hpmcounter23
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_1512:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1513, excp_return_label_1513, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1513:
	csrr a6, hpmcounter24
	li t6, failed_addr
	ld s4, 0(t6)
	jr s4
	# assert_exception block end
excp_return_label_1513:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1514, excp_return_label_1514, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1514:
	csrr s11, hpmcounter25
	li a5, failed_addr
	ld t4, 0(a5)
	jr t4
	# assert_exception block end
excp_return_label_1514:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1515, excp_return_label_1515, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1515:
	csrr a4, hpmcounter26
	li a0, failed_addr
	ld a3, 0(a0)
	jr a3
	# assert_exception block end
excp_return_label_1515:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1516, excp_return_label_1516, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1516:
	csrr t6, hpmcounter27
	li a6, failed_addr
	ld a4, 0(a6)
	jr a4
	# assert_exception block end
excp_return_label_1516:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1517, excp_return_label_1517, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1517:
	csrr s5, hpmcounter28
	li s4, failed_addr
	ld a3, 0(s4)
	jr a3
	# assert_exception block end
excp_return_label_1517:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1518, excp_return_label_1518, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1518:
	csrr a7, hpmcounter29
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_1518:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1519, excp_return_label_1519, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1519:
	csrr a4, hpmcounter30
	li t1, failed_addr
	ld s3, 0(t1)
	jr s3
	# assert_exception block end
excp_return_label_1519:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1520, excp_return_label_1520, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1520:
	csrr s9, hpmcounter31
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
	# assert_exception block end
excp_return_label_1520:
	# Set only this field in both registers, clear all others
	li t2, 32768
	;#csr_rw(mcounteren, write, false, false)
	li s8, 0x8000
	csrrw s8, scounteren, s8
	# Test the enabled CSR in S mode - should succeed
	csrr t1, hpmcounter15
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1521, excp_return_label_1521, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1521:
	csrr t2, cycle
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
	# assert_exception block end
excp_return_label_1521:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1522, excp_return_label_1522, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1522:
	csrr s3, time
	li s11, failed_addr
	ld a3, 0(s11)
	jr a3
	# assert_exception block end
excp_return_label_1522:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1523, excp_return_label_1523, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1523:
	csrr a5, instret
	li t3, failed_addr
	ld s5, 0(t3)
	jr s5
	# assert_exception block end
excp_return_label_1523:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1524, excp_return_label_1524, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1524:
	csrr s0, hpmcounter3
	li s6, failed_addr
	ld a5, 0(s6)
	jr a5
	# assert_exception block end
excp_return_label_1524:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1525, excp_return_label_1525, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1525:
	csrr a5, hpmcounter4
	li a2, failed_addr
	ld t2, 0(a2)
	jr t2
	# assert_exception block end
excp_return_label_1525:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1526, excp_return_label_1526, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1526:
	csrr t4, hpmcounter5
	li s2, failed_addr
	ld a0, 0(s2)
	jr a0
	# assert_exception block end
excp_return_label_1526:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1527, excp_return_label_1527, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1527:
	csrr a0, hpmcounter6
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_1527:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1528, excp_return_label_1528, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1528:
	csrr a6, hpmcounter7
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_1528:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1529, excp_return_label_1529, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1529:
	csrr t6, hpmcounter8
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
	# assert_exception block end
excp_return_label_1529:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1530, excp_return_label_1530, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1530:
	csrr a0, hpmcounter9
	li a7, failed_addr
	ld s8, 0(a7)
	jr s8
	# assert_exception block end
excp_return_label_1530:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1531, excp_return_label_1531, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1531:
	csrr s4, hpmcounter10
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_1531:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1532, excp_return_label_1532, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1532:
	csrr s3, hpmcounter11
	li t2, failed_addr
	ld a1, 0(t2)
	jr a1
	# assert_exception block end
excp_return_label_1532:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1533, excp_return_label_1533, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1533:
	csrr s9, hpmcounter12
	li s9, failed_addr
	ld a6, 0(s9)
	jr a6
	# assert_exception block end
excp_return_label_1533:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1534, excp_return_label_1534, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1534:
	csrr a6, hpmcounter13
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_1534:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1535, excp_return_label_1535, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1535:
	csrr a5, hpmcounter14
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_1535:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1536, excp_return_label_1536, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1536:
	csrr a1, hpmcounter16
	li s8, failed_addr
	ld s6, 0(s8)
	jr s6
	# assert_exception block end
excp_return_label_1536:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1537, excp_return_label_1537, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1537:
	csrr s1, hpmcounter17
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_1537:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1538, excp_return_label_1538, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1538:
	csrr s5, hpmcounter18
	li s5, failed_addr
	ld s5, 0(s5)
	jr s5
	# assert_exception block end
excp_return_label_1538:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1539, excp_return_label_1539, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1539:
	csrr s3, hpmcounter19
	li s1, failed_addr
	ld a2, 0(s1)
	jr a2
	# assert_exception block end
excp_return_label_1539:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1540, excp_return_label_1540, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1540:
	csrr a0, hpmcounter20
	li a1, failed_addr
	ld s11, 0(a1)
	jr s11
	# assert_exception block end
excp_return_label_1540:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1541, excp_return_label_1541, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1541:
	csrr s3, hpmcounter21
	li s3, failed_addr
	ld s11, 0(s3)
	jr s11
	# assert_exception block end
excp_return_label_1541:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1542, excp_return_label_1542, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1542:
	csrr t1, hpmcounter22
	li t5, failed_addr
	ld t5, 0(t5)
	jr t5
	# assert_exception block end
excp_return_label_1542:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1543, excp_return_label_1543, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1543:
	csrr s1, hpmcounter23
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_1543:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1544, excp_return_label_1544, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1544:
	csrr a7, hpmcounter24
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_1544:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1545, excp_return_label_1545, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1545:
	csrr s9, hpmcounter25
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_1545:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1546, excp_return_label_1546, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1546:
	csrr s8, hpmcounter26
	li t5, failed_addr
	ld a5, 0(t5)
	jr a5
	# assert_exception block end
excp_return_label_1546:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1547, excp_return_label_1547, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1547:
	csrr a7, hpmcounter27
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
	# assert_exception block end
excp_return_label_1547:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1548, excp_return_label_1548, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1548:
	csrr a7, hpmcounter28
	li s6, failed_addr
	ld t1, 0(s6)
	jr t1
	# assert_exception block end
excp_return_label_1548:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1549, excp_return_label_1549, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1549:
	csrr s3, hpmcounter29
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_1549:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1550, excp_return_label_1550, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1550:
	csrr s9, hpmcounter30
	li s5, failed_addr
	ld a1, 0(s5)
	jr a1
	# assert_exception block end
excp_return_label_1550:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1551, excp_return_label_1551, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1551:
	csrr t1, hpmcounter31
	li s4, failed_addr
	ld t1, 0(s4)
	jr t1
	# assert_exception block end
excp_return_label_1551:
	# Set only this field in both registers, clear all others
	li t2, 65536
	;#csr_rw(mcounteren, write, false, false)
	li t4, 0x10000
	csrrw a7, scounteren, t4
	# Test the enabled CSR in S mode - should succeed
	csrr s6, hpmcounter16
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1552, excp_return_label_1552, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1552:
	csrr t4, cycle
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
	# assert_exception block end
excp_return_label_1552:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1553, excp_return_label_1553, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1553:
	csrr s6, time
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
	# assert_exception block end
excp_return_label_1553:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1554, excp_return_label_1554, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1554:
	csrr s9, instret
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_1554:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1555, excp_return_label_1555, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1555:
	csrr a0, hpmcounter3
	li s10, failed_addr
	ld a2, 0(s10)
	jr a2
	# assert_exception block end
excp_return_label_1555:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1556, excp_return_label_1556, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1556:
	csrr a1, hpmcounter4
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
	# assert_exception block end
excp_return_label_1556:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1557, excp_return_label_1557, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1557:
	csrr s2, hpmcounter5
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_1557:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1558, excp_return_label_1558, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1558:
	csrr s1, hpmcounter6
	li a3, failed_addr
	ld s5, 0(a3)
	jr s5
	# assert_exception block end
excp_return_label_1558:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1559, excp_return_label_1559, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1559:
	csrr a1, hpmcounter7
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
	# assert_exception block end
excp_return_label_1559:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1560, excp_return_label_1560, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1560:
	csrr s5, hpmcounter8
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_1560:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1561, excp_return_label_1561, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1561:
	csrr a1, hpmcounter9
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_1561:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1562, excp_return_label_1562, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1562:
	csrr a2, hpmcounter10
	li s0, failed_addr
	ld t1, 0(s0)
	jr t1
	# assert_exception block end
excp_return_label_1562:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1563, excp_return_label_1563, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1563:
	csrr s3, hpmcounter11
	li s1, failed_addr
	ld a4, 0(s1)
	jr a4
	# assert_exception block end
excp_return_label_1563:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1564, excp_return_label_1564, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1564:
	csrr s6, hpmcounter12
	li a6, failed_addr
	ld s8, 0(a6)
	jr s8
	# assert_exception block end
excp_return_label_1564:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1565, excp_return_label_1565, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1565:
	csrr s2, hpmcounter13
	li s6, failed_addr
	ld a2, 0(s6)
	jr a2
	# assert_exception block end
excp_return_label_1565:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1566, excp_return_label_1566, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1566:
	csrr a3, hpmcounter14
	li t3, failed_addr
	ld s9, 0(t3)
	jr s9
	# assert_exception block end
excp_return_label_1566:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1567, excp_return_label_1567, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1567:
	csrr a0, hpmcounter15
	li t3, failed_addr
	ld t6, 0(t3)
	jr t6
	# assert_exception block end
excp_return_label_1567:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1568, excp_return_label_1568, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1568:
	csrr t1, hpmcounter17
	li s0, failed_addr
	ld s5, 0(s0)
	jr s5
	# assert_exception block end
excp_return_label_1568:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1569, excp_return_label_1569, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1569:
	csrr s7, hpmcounter18
	li s6, failed_addr
	ld s7, 0(s6)
	jr s7
	# assert_exception block end
excp_return_label_1569:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1570, excp_return_label_1570, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1570:
	csrr a3, hpmcounter19
	li t4, failed_addr
	ld s2, 0(t4)
	jr s2
	# assert_exception block end
excp_return_label_1570:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1571, excp_return_label_1571, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1571:
	csrr t4, hpmcounter20
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_1571:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1572, excp_return_label_1572, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1572:
	csrr t1, hpmcounter21
	li t1, failed_addr
	ld s1, 0(t1)
	jr s1
	# assert_exception block end
excp_return_label_1572:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1573, excp_return_label_1573, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1573:
	csrr s10, hpmcounter22
	li a4, failed_addr
	ld t2, 0(a4)
	jr t2
	# assert_exception block end
excp_return_label_1573:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1574, excp_return_label_1574, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1574:
	csrr s5, hpmcounter23
	li s0, failed_addr
	ld t5, 0(s0)
	jr t5
	# assert_exception block end
excp_return_label_1574:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1575, excp_return_label_1575, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1575:
	csrr a1, hpmcounter24
	li t2, failed_addr
	ld t4, 0(t2)
	jr t4
	# assert_exception block end
excp_return_label_1575:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1576, excp_return_label_1576, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1576:
	csrr t1, hpmcounter25
	li t5, failed_addr
	ld t5, 0(t5)
	jr t5
	# assert_exception block end
excp_return_label_1576:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1577, excp_return_label_1577, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1577:
	csrr a2, hpmcounter26
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_1577:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1578, excp_return_label_1578, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1578:
	csrr s7, hpmcounter27
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_1578:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1579, excp_return_label_1579, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1579:
	csrr a0, hpmcounter28
	li s10, failed_addr
	ld s8, 0(s10)
	jr s8
	# assert_exception block end
excp_return_label_1579:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1580, excp_return_label_1580, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1580:
	csrr a3, hpmcounter29
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
	# assert_exception block end
excp_return_label_1580:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1581, excp_return_label_1581, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1581:
	csrr a6, hpmcounter30
	li s11, failed_addr
	ld s1, 0(s11)
	jr s1
	# assert_exception block end
excp_return_label_1581:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1582, excp_return_label_1582, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1582:
	csrr s5, hpmcounter31
	li s7, failed_addr
	ld s5, 0(s7)
	jr s5
	# assert_exception block end
excp_return_label_1582:
	# Set only this field in both registers, clear all others
	li t2, 131072
	;#csr_rw(mcounteren, write, false, false)
	li a3, 0x20000
	csrrw s8, scounteren, a3
	# Test the enabled CSR in S mode - should succeed
	csrr a5, hpmcounter17
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1583, excp_return_label_1583, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1583:
	csrr t1, cycle
	li a7, failed_addr
	ld a7, 0(a7)
	jr a7
	# assert_exception block end
excp_return_label_1583:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1584, excp_return_label_1584, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1584:
	csrr a4, time
	li a5, failed_addr
	ld a1, 0(a5)
	jr a1
	# assert_exception block end
excp_return_label_1584:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1585, excp_return_label_1585, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1585:
	csrr t3, instret
	li t1, failed_addr
	ld t5, 0(t1)
	jr t5
	# assert_exception block end
excp_return_label_1585:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1586, excp_return_label_1586, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1586:
	csrr t6, hpmcounter3
	li s7, failed_addr
	ld t1, 0(s7)
	jr t1
	# assert_exception block end
excp_return_label_1586:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1587, excp_return_label_1587, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1587:
	csrr s11, hpmcounter4
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_1587:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1588, excp_return_label_1588, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1588:
	csrr t6, hpmcounter5
	li s1, failed_addr
	ld s4, 0(s1)
	jr s4
	# assert_exception block end
excp_return_label_1588:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1589, excp_return_label_1589, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1589:
	csrr s2, hpmcounter6
	li s3, failed_addr
	ld a7, 0(s3)
	jr a7
	# assert_exception block end
excp_return_label_1589:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1590, excp_return_label_1590, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1590:
	csrr a3, hpmcounter7
	li s11, failed_addr
	ld s8, 0(s11)
	jr s8
	# assert_exception block end
excp_return_label_1590:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1591, excp_return_label_1591, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1591:
	csrr s3, hpmcounter8
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_1591:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1592, excp_return_label_1592, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1592:
	csrr a4, hpmcounter9
	li s2, failed_addr
	ld s2, 0(s2)
	jr s2
	# assert_exception block end
excp_return_label_1592:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1593, excp_return_label_1593, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1593:
	csrr s3, hpmcounter10
	li s5, failed_addr
	ld s7, 0(s5)
	jr s7
	# assert_exception block end
excp_return_label_1593:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1594, excp_return_label_1594, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1594:
	csrr s5, hpmcounter11
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
	# assert_exception block end
excp_return_label_1594:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1595, excp_return_label_1595, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1595:
	csrr s8, hpmcounter12
	li t1, failed_addr
	ld s2, 0(t1)
	jr s2
	# assert_exception block end
excp_return_label_1595:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1596, excp_return_label_1596, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1596:
	csrr s0, hpmcounter13
	li s0, failed_addr
	ld a7, 0(s0)
	jr a7
	# assert_exception block end
excp_return_label_1596:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1597, excp_return_label_1597, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1597:
	csrr a5, hpmcounter14
	li t2, failed_addr
	ld a4, 0(t2)
	jr a4
	# assert_exception block end
excp_return_label_1597:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1598, excp_return_label_1598, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1598:
	csrr s4, hpmcounter15
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_1598:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1599, excp_return_label_1599, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1599:
	csrr t2, hpmcounter16
	li s9, failed_addr
	ld s10, 0(s9)
	jr s10
	# assert_exception block end
excp_return_label_1599:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1600, excp_return_label_1600, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1600:
	csrr a5, hpmcounter18
	li s2, failed_addr
	ld t4, 0(s2)
	jr t4
	# assert_exception block end
excp_return_label_1600:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1601, excp_return_label_1601, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1601:
	csrr t5, hpmcounter19
	li t2, failed_addr
	ld t5, 0(t2)
	jr t5
	# assert_exception block end
excp_return_label_1601:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1602, excp_return_label_1602, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1602:
	csrr s11, hpmcounter20
	li t5, failed_addr
	ld t6, 0(t5)
	jr t6
	# assert_exception block end
excp_return_label_1602:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1603, excp_return_label_1603, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1603:
	csrr a7, hpmcounter21
	li s7, failed_addr
	ld s4, 0(s7)
	jr s4
	# assert_exception block end
excp_return_label_1603:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1604, excp_return_label_1604, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1604:
	csrr s0, hpmcounter22
	li s11, failed_addr
	ld s6, 0(s11)
	jr s6
	# assert_exception block end
excp_return_label_1604:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1605, excp_return_label_1605, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1605:
	csrr a6, hpmcounter23
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_1605:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1606, excp_return_label_1606, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1606:
	csrr a6, hpmcounter24
	li s7, failed_addr
	ld s5, 0(s7)
	jr s5
	# assert_exception block end
excp_return_label_1606:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1607, excp_return_label_1607, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1607:
	csrr t6, hpmcounter25
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
	# assert_exception block end
excp_return_label_1607:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1608, excp_return_label_1608, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1608:
	csrr s4, hpmcounter26
	li s1, failed_addr
	ld a7, 0(s1)
	jr a7
	# assert_exception block end
excp_return_label_1608:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1609, excp_return_label_1609, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1609:
	csrr a7, hpmcounter27
	li t6, failed_addr
	ld s8, 0(t6)
	jr s8
	# assert_exception block end
excp_return_label_1609:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1610, excp_return_label_1610, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1610:
	csrr s1, hpmcounter28
	li s4, failed_addr
	ld s10, 0(s4)
	jr s10
	# assert_exception block end
excp_return_label_1610:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1611, excp_return_label_1611, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1611:
	csrr a4, hpmcounter29
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
	# assert_exception block end
excp_return_label_1611:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1612, excp_return_label_1612, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1612:
	csrr t4, hpmcounter30
	li t2, failed_addr
	ld a2, 0(t2)
	jr a2
	# assert_exception block end
excp_return_label_1612:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1613, excp_return_label_1613, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1613:
	csrr s0, hpmcounter31
	li s11, failed_addr
	ld s11, 0(s11)
	jr s11
	# assert_exception block end
excp_return_label_1613:
	# Set only this field in both registers, clear all others
	li t2, 262144
	;#csr_rw(mcounteren, write, false, false)
	li t1, 0x40000
	csrrw s6, scounteren, t1
	# Test the enabled CSR in S mode - should succeed
	csrr a2, hpmcounter18
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1614, excp_return_label_1614, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1614:
	csrr s10, cycle
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_1614:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1615, excp_return_label_1615, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1615:
	csrr s9, time
	li s4, failed_addr
	ld a7, 0(s4)
	jr a7
	# assert_exception block end
excp_return_label_1615:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1616, excp_return_label_1616, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1616:
	csrr t2, instret
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_1616:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1617, excp_return_label_1617, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1617:
	csrr a3, hpmcounter3
	li a1, failed_addr
	ld t4, 0(a1)
	jr t4
	# assert_exception block end
excp_return_label_1617:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1618, excp_return_label_1618, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1618:
	csrr a4, hpmcounter4
	li a7, failed_addr
	ld s0, 0(a7)
	jr s0
	# assert_exception block end
excp_return_label_1618:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1619, excp_return_label_1619, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1619:
	csrr s9, hpmcounter5
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_1619:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1620, excp_return_label_1620, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1620:
	csrr a6, hpmcounter6
	li a2, failed_addr
	ld s6, 0(a2)
	jr s6
	# assert_exception block end
excp_return_label_1620:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1621, excp_return_label_1621, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1621:
	csrr s6, hpmcounter7
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_1621:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1622, excp_return_label_1622, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1622:
	csrr s7, hpmcounter8
	li a1, failed_addr
	ld s6, 0(a1)
	jr s6
	# assert_exception block end
excp_return_label_1622:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1623, excp_return_label_1623, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1623:
	csrr a7, hpmcounter9
	li s2, failed_addr
	ld s9, 0(s2)
	jr s9
	# assert_exception block end
excp_return_label_1623:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1624, excp_return_label_1624, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1624:
	csrr a7, hpmcounter10
	li s1, failed_addr
	ld a4, 0(s1)
	jr a4
	# assert_exception block end
excp_return_label_1624:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1625, excp_return_label_1625, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1625:
	csrr t3, hpmcounter11
	li a5, failed_addr
	ld s6, 0(a5)
	jr s6
	# assert_exception block end
excp_return_label_1625:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1626, excp_return_label_1626, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1626:
	csrr s8, hpmcounter12
	li s11, failed_addr
	ld s3, 0(s11)
	jr s3
	# assert_exception block end
excp_return_label_1626:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1627, excp_return_label_1627, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1627:
	csrr s9, hpmcounter13
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_1627:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1628, excp_return_label_1628, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1628:
	csrr s5, hpmcounter14
	li s2, failed_addr
	ld s2, 0(s2)
	jr s2
	# assert_exception block end
excp_return_label_1628:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1629, excp_return_label_1629, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1629:
	csrr t2, hpmcounter15
	li s3, failed_addr
	ld s11, 0(s3)
	jr s11
	# assert_exception block end
excp_return_label_1629:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1630, excp_return_label_1630, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1630:
	csrr s2, hpmcounter16
	li s7, failed_addr
	ld a3, 0(s7)
	jr a3
	# assert_exception block end
excp_return_label_1630:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1631, excp_return_label_1631, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1631:
	csrr a0, hpmcounter17
	li a4, failed_addr
	ld s4, 0(a4)
	jr s4
	# assert_exception block end
excp_return_label_1631:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1632, excp_return_label_1632, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1632:
	csrr s11, hpmcounter19
	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_1632:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1633, excp_return_label_1633, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1633:
	csrr s9, hpmcounter20
	li s11, failed_addr
	ld a1, 0(s11)
	jr a1
	# assert_exception block end
excp_return_label_1633:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1634, excp_return_label_1634, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1634:
	csrr s7, hpmcounter21
	li t5, failed_addr
	ld s10, 0(t5)
	jr s10
	# assert_exception block end
excp_return_label_1634:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1635, excp_return_label_1635, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1635:
	csrr t6, hpmcounter22
	li t1, failed_addr
	ld a1, 0(t1)
	jr a1
	# assert_exception block end
excp_return_label_1635:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1636, excp_return_label_1636, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1636:
	csrr a4, hpmcounter23
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_1636:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1637, excp_return_label_1637, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1637:
	csrr t3, hpmcounter24
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_1637:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1638, excp_return_label_1638, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1638:
	csrr s3, hpmcounter25
	li a1, failed_addr
	ld t6, 0(a1)
	jr t6
	# assert_exception block end
excp_return_label_1638:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1639, excp_return_label_1639, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1639:
	csrr s8, hpmcounter26
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_1639:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1640, excp_return_label_1640, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1640:
	csrr a0, hpmcounter27
	li s3, failed_addr
	ld s6, 0(s3)
	jr s6
	# assert_exception block end
excp_return_label_1640:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1641, excp_return_label_1641, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1641:
	csrr a6, hpmcounter28
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_1641:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1642, excp_return_label_1642, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1642:
	csrr s10, hpmcounter29
	li s8, failed_addr
	ld a6, 0(s8)
	jr a6
	# assert_exception block end
excp_return_label_1642:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1643, excp_return_label_1643, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1643:
	csrr a2, hpmcounter30
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_1643:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1644, excp_return_label_1644, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1644:
	csrr s7, hpmcounter31
	li t6, failed_addr
	ld a7, 0(t6)
	jr a7
	# assert_exception block end
excp_return_label_1644:
	# Set only this field in both registers, clear all others
	li t2, 524288
	;#csr_rw(mcounteren, write, false, false)
	li t5, 0x80000
	csrrw s9, scounteren, t5
	# Test the enabled CSR in S mode - should succeed
	csrr t3, hpmcounter19
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1645, excp_return_label_1645, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1645:
	csrr t4, cycle
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_1645:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1646, excp_return_label_1646, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1646:
	csrr t2, time
	li s11, failed_addr
	ld t5, 0(s11)
	jr t5
	# assert_exception block end
excp_return_label_1646:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1647, excp_return_label_1647, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1647:
	csrr t6, instret
	li a6, failed_addr
	ld s2, 0(a6)
	jr s2
	# assert_exception block end
excp_return_label_1647:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1648, excp_return_label_1648, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1648:
	csrr s6, hpmcounter3
	li s6, failed_addr
	ld s11, 0(s6)
	jr s11
	# assert_exception block end
excp_return_label_1648:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1649, excp_return_label_1649, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1649:
	csrr a2, hpmcounter4
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
	# assert_exception block end
excp_return_label_1649:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1650, excp_return_label_1650, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1650:
	csrr t6, hpmcounter5
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_1650:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1651, excp_return_label_1651, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1651:
	csrr s7, hpmcounter6
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_1651:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1652, excp_return_label_1652, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1652:
	csrr t1, hpmcounter7
	li t4, failed_addr
	ld t2, 0(t4)
	jr t2
	# assert_exception block end
excp_return_label_1652:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1653, excp_return_label_1653, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1653:
	csrr t3, hpmcounter8
	li s3, failed_addr
	ld s5, 0(s3)
	jr s5
	# assert_exception block end
excp_return_label_1653:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1654, excp_return_label_1654, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1654:
	csrr s3, hpmcounter9
	li s0, failed_addr
	ld t5, 0(s0)
	jr t5
	# assert_exception block end
excp_return_label_1654:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1655, excp_return_label_1655, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1655:
	csrr s4, hpmcounter10
	li a6, failed_addr
	ld s4, 0(a6)
	jr s4
	# assert_exception block end
excp_return_label_1655:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1656, excp_return_label_1656, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1656:
	csrr a4, hpmcounter11
	li a7, failed_addr
	ld s3, 0(a7)
	jr s3
	# assert_exception block end
excp_return_label_1656:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1657, excp_return_label_1657, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1657:
	csrr s11, hpmcounter12
	li s3, failed_addr
	ld t4, 0(s3)
	jr t4
	# assert_exception block end
excp_return_label_1657:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1658, excp_return_label_1658, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1658:
	csrr a7, hpmcounter13
	li t1, failed_addr
	ld t6, 0(t1)
	jr t6
	# assert_exception block end
excp_return_label_1658:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1659, excp_return_label_1659, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1659:
	csrr s10, hpmcounter14
	li s7, failed_addr
	ld s7, 0(s7)
	jr s7
	# assert_exception block end
excp_return_label_1659:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1660, excp_return_label_1660, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1660:
	csrr a5, hpmcounter15
	li s4, failed_addr
	ld s6, 0(s4)
	jr s6
	# assert_exception block end
excp_return_label_1660:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1661, excp_return_label_1661, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1661:
	csrr t2, hpmcounter16
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_1661:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1662, excp_return_label_1662, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1662:
	csrr s2, hpmcounter17
	li a1, failed_addr
	ld t2, 0(a1)
	jr t2
	# assert_exception block end
excp_return_label_1662:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1663, excp_return_label_1663, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1663:
	csrr s3, hpmcounter18
	li a5, failed_addr
	ld s1, 0(a5)
	jr s1
	# assert_exception block end
excp_return_label_1663:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1664, excp_return_label_1664, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1664:
	csrr a7, hpmcounter20
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_1664:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1665, excp_return_label_1665, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1665:
	csrr s8, hpmcounter21
	li s4, failed_addr
	ld s10, 0(s4)
	jr s10
	# assert_exception block end
excp_return_label_1665:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1666, excp_return_label_1666, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1666:
	csrr t1, hpmcounter22
	li t3, failed_addr
	ld t4, 0(t3)
	jr t4
	# assert_exception block end
excp_return_label_1666:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1667, excp_return_label_1667, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1667:
	csrr t5, hpmcounter23
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_1667:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1668, excp_return_label_1668, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1668:
	csrr s11, hpmcounter24
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_1668:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1669, excp_return_label_1669, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1669:
	csrr a3, hpmcounter25
	li t3, failed_addr
	ld s8, 0(t3)
	jr s8
	# assert_exception block end
excp_return_label_1669:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1670, excp_return_label_1670, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1670:
	csrr t1, hpmcounter26
	li s11, failed_addr
	ld a5, 0(s11)
	jr a5
	# assert_exception block end
excp_return_label_1670:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1671, excp_return_label_1671, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1671:
	csrr s10, hpmcounter27
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
	# assert_exception block end
excp_return_label_1671:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1672, excp_return_label_1672, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1672:
	csrr s9, hpmcounter28
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
	# assert_exception block end
excp_return_label_1672:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1673, excp_return_label_1673, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1673:
	csrr t6, hpmcounter29
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
	# assert_exception block end
excp_return_label_1673:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1674, excp_return_label_1674, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1674:
	csrr s5, hpmcounter30
	li t1, failed_addr
	ld a3, 0(t1)
	jr a3
	# assert_exception block end
excp_return_label_1674:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1675, excp_return_label_1675, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1675:
	csrr t1, hpmcounter31
	li a4, failed_addr
	ld a4, 0(a4)
	jr a4
	# assert_exception block end
excp_return_label_1675:
	# Set only this field in both registers, clear all others
	li t2, 1048576
	;#csr_rw(mcounteren, write, false, false)
	li a4, 0x100000
	csrrw a1, scounteren, a4
	# Test the enabled CSR in S mode - should succeed
	csrr a6, hpmcounter20
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1676, excp_return_label_1676, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1676:
	csrr a4, cycle
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_1676:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1677, excp_return_label_1677, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1677:
	csrr t1, time
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_1677:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1678, excp_return_label_1678, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1678:
	csrr s1, instret
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_1678:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1679, excp_return_label_1679, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1679:
	csrr s11, hpmcounter3
	li a3, failed_addr
	ld a6, 0(a3)
	jr a6
	# assert_exception block end
excp_return_label_1679:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1680, excp_return_label_1680, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1680:
	csrr t1, hpmcounter4
	li t6, failed_addr
	ld s11, 0(t6)
	jr s11
	# assert_exception block end
excp_return_label_1680:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1681, excp_return_label_1681, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1681:
	csrr a3, hpmcounter5
	li s10, failed_addr
	ld t3, 0(s10)
	jr t3
	# assert_exception block end
excp_return_label_1681:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1682, excp_return_label_1682, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1682:
	csrr s1, hpmcounter6
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
	# assert_exception block end
excp_return_label_1682:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1683, excp_return_label_1683, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1683:
	csrr a4, hpmcounter7
	li s2, failed_addr
	ld s1, 0(s2)
	jr s1
	# assert_exception block end
excp_return_label_1683:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1684, excp_return_label_1684, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1684:
	csrr t2, hpmcounter8
	li t3, failed_addr
	ld s5, 0(t3)
	jr s5
	# assert_exception block end
excp_return_label_1684:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1685, excp_return_label_1685, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1685:
	csrr s1, hpmcounter9
	li s4, failed_addr
	ld t3, 0(s4)
	jr t3
	# assert_exception block end
excp_return_label_1685:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1686, excp_return_label_1686, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1686:
	csrr s2, hpmcounter10
	li a5, failed_addr
	ld a6, 0(a5)
	jr a6
	# assert_exception block end
excp_return_label_1686:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1687, excp_return_label_1687, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1687:
	csrr t2, hpmcounter11
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_1687:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1688, excp_return_label_1688, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1688:
	csrr a4, hpmcounter12
	li s2, failed_addr
	ld a1, 0(s2)
	jr a1
	# assert_exception block end
excp_return_label_1688:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1689, excp_return_label_1689, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1689:
	csrr s2, hpmcounter13
	li s9, failed_addr
	ld t3, 0(s9)
	jr t3
	# assert_exception block end
excp_return_label_1689:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1690, excp_return_label_1690, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1690:
	csrr a4, hpmcounter14
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_1690:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1691, excp_return_label_1691, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1691:
	csrr t6, hpmcounter15
	li s10, failed_addr
	ld s6, 0(s10)
	jr s6
	# assert_exception block end
excp_return_label_1691:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1692, excp_return_label_1692, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1692:
	csrr t6, hpmcounter16
	li s1, failed_addr
	ld t1, 0(s1)
	jr t1
	# assert_exception block end
excp_return_label_1692:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1693, excp_return_label_1693, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1693:
	csrr s11, hpmcounter17
	li s10, failed_addr
	ld s6, 0(s10)
	jr s6
	# assert_exception block end
excp_return_label_1693:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1694, excp_return_label_1694, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1694:
	csrr a0, hpmcounter18
	li t6, failed_addr
	ld s4, 0(t6)
	jr s4
	# assert_exception block end
excp_return_label_1694:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1695, excp_return_label_1695, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1695:
	csrr s2, hpmcounter19
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_1695:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1696, excp_return_label_1696, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1696:
	csrr s5, hpmcounter21
	li t6, failed_addr
	ld a1, 0(t6)
	jr a1
	# assert_exception block end
excp_return_label_1696:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1697, excp_return_label_1697, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1697:
	csrr t4, hpmcounter22
	li s3, failed_addr
	ld t4, 0(s3)
	jr t4
	# assert_exception block end
excp_return_label_1697:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1698, excp_return_label_1698, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1698:
	csrr s8, hpmcounter23
	li a6, failed_addr
	ld t4, 0(a6)
	jr t4
	# assert_exception block end
excp_return_label_1698:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1699, excp_return_label_1699, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1699:
	csrr s4, hpmcounter24
	li s6, failed_addr
	ld s1, 0(s6)
	jr s1
	# assert_exception block end
excp_return_label_1699:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1700, excp_return_label_1700, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1700:
	csrr s10, hpmcounter25
	li s2, failed_addr
	ld s10, 0(s2)
	jr s10
	# assert_exception block end
excp_return_label_1700:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1701, excp_return_label_1701, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1701:
	csrr a0, hpmcounter26
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_1701:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1702, excp_return_label_1702, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1702:
	csrr s11, hpmcounter27
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_1702:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1703, excp_return_label_1703, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1703:
	csrr t2, hpmcounter28
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
	# assert_exception block end
excp_return_label_1703:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1704, excp_return_label_1704, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1704:
	csrr a7, hpmcounter29
	li a7, failed_addr
	ld t4, 0(a7)
	jr t4
	# assert_exception block end
excp_return_label_1704:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1705, excp_return_label_1705, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1705:
	csrr s3, hpmcounter30
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_1705:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1706, excp_return_label_1706, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1706:
	csrr t5, hpmcounter31
	li a2, failed_addr
	ld s8, 0(a2)
	jr s8
	# assert_exception block end
excp_return_label_1706:
	# Set only this field in both registers, clear all others
	li t2, 2097152
	;#csr_rw(mcounteren, write, false, false)
	li a4, 0x200000
	csrrw t2, scounteren, a4
	# Test the enabled CSR in S mode - should succeed
	csrr a0, hpmcounter21
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1707, excp_return_label_1707, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1707:
	csrr a1, cycle
	li a7, failed_addr
	ld s10, 0(a7)
	jr s10
	# assert_exception block end
excp_return_label_1707:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1708, excp_return_label_1708, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1708:
	csrr a3, time
	li t3, failed_addr
	ld s4, 0(t3)
	jr s4
	# assert_exception block end
excp_return_label_1708:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1709, excp_return_label_1709, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1709:
	csrr s7, instret
	li a3, failed_addr
	ld s10, 0(a3)
	jr s10
	# assert_exception block end
excp_return_label_1709:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1710, excp_return_label_1710, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1710:
	csrr a1, hpmcounter3
	li s8, failed_addr
	ld s8, 0(s8)
	jr s8
	# assert_exception block end
excp_return_label_1710:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1711, excp_return_label_1711, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1711:
	csrr t5, hpmcounter4
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
	# assert_exception block end
excp_return_label_1711:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1712, excp_return_label_1712, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1712:
	csrr a2, hpmcounter5
	li s9, failed_addr
	ld s10, 0(s9)
	jr s10
	# assert_exception block end
excp_return_label_1712:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1713, excp_return_label_1713, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1713:
	csrr a2, hpmcounter6
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
	# assert_exception block end
excp_return_label_1713:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1714, excp_return_label_1714, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1714:
	csrr s2, hpmcounter7
	li t3, failed_addr
	ld a7, 0(t3)
	jr a7
	# assert_exception block end
excp_return_label_1714:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1715, excp_return_label_1715, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1715:
	csrr a0, hpmcounter8
	li s3, failed_addr
	ld t6, 0(s3)
	jr t6
	# assert_exception block end
excp_return_label_1715:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1716, excp_return_label_1716, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1716:
	csrr s5, hpmcounter9
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
	# assert_exception block end
excp_return_label_1716:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1717, excp_return_label_1717, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1717:
	csrr t6, hpmcounter10
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_1717:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1718, excp_return_label_1718, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1718:
	csrr a7, hpmcounter11
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_1718:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1719, excp_return_label_1719, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1719:
	csrr a4, hpmcounter12
	li s1, failed_addr
	ld a2, 0(s1)
	jr a2
	# assert_exception block end
excp_return_label_1719:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1720, excp_return_label_1720, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1720:
	csrr a5, hpmcounter13
	li a0, failed_addr
	ld s9, 0(a0)
	jr s9
	# assert_exception block end
excp_return_label_1720:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1721, excp_return_label_1721, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1721:
	csrr s4, hpmcounter14
	li t4, failed_addr
	ld t5, 0(t4)
	jr t5
	# assert_exception block end
excp_return_label_1721:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1722, excp_return_label_1722, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1722:
	csrr s9, hpmcounter15
	li a7, failed_addr
	ld t1, 0(a7)
	jr t1
	# assert_exception block end
excp_return_label_1722:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1723, excp_return_label_1723, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1723:
	csrr s7, hpmcounter16
	li t5, failed_addr
	ld t2, 0(t5)
	jr t2
	# assert_exception block end
excp_return_label_1723:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1724, excp_return_label_1724, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1724:
	csrr t3, hpmcounter17
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_1724:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1725, excp_return_label_1725, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1725:
	csrr t2, hpmcounter18
	li a4, failed_addr
	ld a3, 0(a4)
	jr a3
	# assert_exception block end
excp_return_label_1725:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1726, excp_return_label_1726, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1726:
	csrr a7, hpmcounter19
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_1726:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1727, excp_return_label_1727, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1727:
	csrr a7, hpmcounter20
	li s2, failed_addr
	ld a0, 0(s2)
	jr a0
	# assert_exception block end
excp_return_label_1727:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1728, excp_return_label_1728, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1728:
	csrr a4, hpmcounter22
	li t5, failed_addr
	ld t2, 0(t5)
	jr t2
	# assert_exception block end
excp_return_label_1728:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1729, excp_return_label_1729, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1729:
	csrr s5, hpmcounter23
	li a6, failed_addr
	ld a3, 0(a6)
	jr a3
	# assert_exception block end
excp_return_label_1729:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1730, excp_return_label_1730, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1730:
	csrr s8, hpmcounter24
	li t2, failed_addr
	ld a2, 0(t2)
	jr a2
	# assert_exception block end
excp_return_label_1730:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1731, excp_return_label_1731, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1731:
	csrr t2, hpmcounter25
	li s3, failed_addr
	ld s10, 0(s3)
	jr s10
	# assert_exception block end
excp_return_label_1731:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1732, excp_return_label_1732, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1732:
	csrr s7, hpmcounter26
	li s5, failed_addr
	ld s0, 0(s5)
	jr s0
	# assert_exception block end
excp_return_label_1732:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1733, excp_return_label_1733, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1733:
	csrr s11, hpmcounter27
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_1733:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1734, excp_return_label_1734, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1734:
	csrr t3, hpmcounter28
	li t6, failed_addr
	ld a4, 0(t6)
	jr a4
	# assert_exception block end
excp_return_label_1734:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1735, excp_return_label_1735, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1735:
	csrr s2, hpmcounter29
	li s4, failed_addr
	ld t1, 0(s4)
	jr t1
	# assert_exception block end
excp_return_label_1735:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1736, excp_return_label_1736, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1736:
	csrr s9, hpmcounter30
	li a5, failed_addr
	ld s4, 0(a5)
	jr s4
	# assert_exception block end
excp_return_label_1736:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1737, excp_return_label_1737, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1737:
	csrr a0, hpmcounter31
	li t6, failed_addr
	ld s7, 0(t6)
	jr s7
	# assert_exception block end
excp_return_label_1737:
	# Set only this field in both registers, clear all others
	li t2, 4194304
	;#csr_rw(mcounteren, write, false, false)
	li s8, 0x400000
	csrrw t2, scounteren, s8
	# Test the enabled CSR in S mode - should succeed
	csrr t2, hpmcounter22
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1738, excp_return_label_1738, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1738:
	csrr a7, cycle
	li t4, failed_addr
	ld a2, 0(t4)
	jr a2
	# assert_exception block end
excp_return_label_1738:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1739, excp_return_label_1739, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1739:
	csrr t4, time
	li a3, failed_addr
	ld s7, 0(a3)
	jr s7
	# assert_exception block end
excp_return_label_1739:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1740, excp_return_label_1740, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1740:
	csrr t1, instret
	li s10, failed_addr
	ld s10, 0(s10)
	jr s10
	# assert_exception block end
excp_return_label_1740:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1741, excp_return_label_1741, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1741:
	csrr s9, hpmcounter3
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
	# assert_exception block end
excp_return_label_1741:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1742, excp_return_label_1742, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1742:
	csrr s3, hpmcounter4
	li s7, failed_addr
	ld s6, 0(s7)
	jr s6
	# assert_exception block end
excp_return_label_1742:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1743, excp_return_label_1743, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1743:
	csrr s6, hpmcounter5
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_1743:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1744, excp_return_label_1744, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1744:
	csrr s11, hpmcounter6
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_1744:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1745, excp_return_label_1745, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1745:
	csrr s0, hpmcounter7
	li s4, failed_addr
	ld a5, 0(s4)
	jr a5
	# assert_exception block end
excp_return_label_1745:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1746, excp_return_label_1746, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1746:
	csrr t3, hpmcounter8
	li s11, failed_addr
	ld s4, 0(s11)
	jr s4
	# assert_exception block end
excp_return_label_1746:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1747, excp_return_label_1747, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1747:
	csrr a4, hpmcounter9
	li a2, failed_addr
	ld t4, 0(a2)
	jr t4
	# assert_exception block end
excp_return_label_1747:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1748, excp_return_label_1748, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1748:
	csrr a6, hpmcounter10
	li t4, failed_addr
	ld a6, 0(t4)
	jr a6
	# assert_exception block end
excp_return_label_1748:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1749, excp_return_label_1749, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1749:
	csrr a5, hpmcounter11
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
	# assert_exception block end
excp_return_label_1749:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1750, excp_return_label_1750, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1750:
	csrr s3, hpmcounter12
	li s11, failed_addr
	ld s10, 0(s11)
	jr s10
	# assert_exception block end
excp_return_label_1750:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1751, excp_return_label_1751, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1751:
	csrr a7, hpmcounter13
	li s5, failed_addr
	ld a6, 0(s5)
	jr a6
	# assert_exception block end
excp_return_label_1751:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1752, excp_return_label_1752, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1752:
	csrr a4, hpmcounter14
	li t3, failed_addr
	ld t3, 0(t3)
	jr t3
	# assert_exception block end
excp_return_label_1752:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1753, excp_return_label_1753, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1753:
	csrr t2, hpmcounter15
	li s11, failed_addr
	ld a4, 0(s11)
	jr a4
	# assert_exception block end
excp_return_label_1753:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1754, excp_return_label_1754, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1754:
	csrr s3, hpmcounter16
	li s9, failed_addr
	ld s8, 0(s9)
	jr s8
	# assert_exception block end
excp_return_label_1754:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1755, excp_return_label_1755, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1755:
	csrr s5, hpmcounter17
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
	# assert_exception block end
excp_return_label_1755:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1756, excp_return_label_1756, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1756:
	csrr a0, hpmcounter18
	li a5, failed_addr
	ld t3, 0(a5)
	jr t3
	# assert_exception block end
excp_return_label_1756:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1757, excp_return_label_1757, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1757:
	csrr s10, hpmcounter19
	li a2, failed_addr
	ld t5, 0(a2)
	jr t5
	# assert_exception block end
excp_return_label_1757:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1758, excp_return_label_1758, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1758:
	csrr s11, hpmcounter20
	li t3, failed_addr
	ld s8, 0(t3)
	jr s8
	# assert_exception block end
excp_return_label_1758:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1759, excp_return_label_1759, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1759:
	csrr a6, hpmcounter21
	li t4, failed_addr
	ld s11, 0(t4)
	jr s11
	# assert_exception block end
excp_return_label_1759:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1760, excp_return_label_1760, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1760:
	csrr s10, hpmcounter23
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_1760:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1761, excp_return_label_1761, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1761:
	csrr t6, hpmcounter24
	li s2, failed_addr
	ld s9, 0(s2)
	jr s9
	# assert_exception block end
excp_return_label_1761:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1762, excp_return_label_1762, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1762:
	csrr t4, hpmcounter25
	li a2, failed_addr
	ld s0, 0(a2)
	jr s0
	# assert_exception block end
excp_return_label_1762:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1763, excp_return_label_1763, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1763:
	csrr s2, hpmcounter26
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_1763:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1764, excp_return_label_1764, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1764:
	csrr s1, hpmcounter27
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_1764:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1765, excp_return_label_1765, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1765:
	csrr s6, hpmcounter28
	li s10, failed_addr
	ld t2, 0(s10)
	jr t2
	# assert_exception block end
excp_return_label_1765:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1766, excp_return_label_1766, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1766:
	csrr s2, hpmcounter29
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_1766:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1767, excp_return_label_1767, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1767:
	csrr t5, hpmcounter30
	li s6, failed_addr
	ld a4, 0(s6)
	jr a4
	# assert_exception block end
excp_return_label_1767:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1768, excp_return_label_1768, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1768:
	csrr s4, hpmcounter31
	li s2, failed_addr
	ld s8, 0(s2)
	jr s8
	# assert_exception block end
excp_return_label_1768:
	# Set only this field in both registers, clear all others
	li t2, 8388608
	;#csr_rw(mcounteren, write, false, false)
	li t6, 0x800000
	csrrw s7, scounteren, t6
	# Test the enabled CSR in S mode - should succeed
	csrr s2, hpmcounter23
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1769, excp_return_label_1769, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1769:
	csrr t1, cycle
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_1769:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1770, excp_return_label_1770, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1770:
	csrr t4, time
	li a4, failed_addr
	ld s11, 0(a4)
	jr s11
	# assert_exception block end
excp_return_label_1770:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1771, excp_return_label_1771, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1771:
	csrr s8, instret
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_1771:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1772, excp_return_label_1772, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1772:
	csrr s11, hpmcounter3
	li a3, failed_addr
	ld s6, 0(a3)
	jr s6
	# assert_exception block end
excp_return_label_1772:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1773, excp_return_label_1773, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1773:
	csrr a2, hpmcounter4
	li a0, failed_addr
	ld a3, 0(a0)
	jr a3
	# assert_exception block end
excp_return_label_1773:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1774, excp_return_label_1774, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1774:
	csrr a7, hpmcounter5
	li t5, failed_addr
	ld a3, 0(t5)
	jr a3
	# assert_exception block end
excp_return_label_1774:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1775, excp_return_label_1775, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1775:
	csrr s4, hpmcounter6
	li s6, failed_addr
	ld a5, 0(s6)
	jr a5
	# assert_exception block end
excp_return_label_1775:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1776, excp_return_label_1776, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1776:
	csrr t4, hpmcounter7
	li a1, failed_addr
	ld t4, 0(a1)
	jr t4
	# assert_exception block end
excp_return_label_1776:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1777, excp_return_label_1777, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1777:
	csrr t2, hpmcounter8
	li t1, failed_addr
	ld s11, 0(t1)
	jr s11
	# assert_exception block end
excp_return_label_1777:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1778, excp_return_label_1778, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1778:
	csrr t6, hpmcounter9
	li a1, failed_addr
	ld s0, 0(a1)
	jr s0
	# assert_exception block end
excp_return_label_1778:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1779, excp_return_label_1779, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1779:
	csrr t3, hpmcounter10
	li s6, failed_addr
	ld s5, 0(s6)
	jr s5
	# assert_exception block end
excp_return_label_1779:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1780, excp_return_label_1780, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1780:
	csrr t3, hpmcounter11
	li t5, failed_addr
	ld s2, 0(t5)
	jr s2
	# assert_exception block end
excp_return_label_1780:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1781, excp_return_label_1781, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1781:
	csrr s3, hpmcounter12
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
	# assert_exception block end
excp_return_label_1781:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1782, excp_return_label_1782, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1782:
	csrr t6, hpmcounter13
	li s4, failed_addr
	ld s5, 0(s4)
	jr s5
	# assert_exception block end
excp_return_label_1782:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1783, excp_return_label_1783, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1783:
	csrr t2, hpmcounter14
	li a6, failed_addr
	ld t1, 0(a6)
	jr t1
	# assert_exception block end
excp_return_label_1783:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1784, excp_return_label_1784, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1784:
	csrr s11, hpmcounter15
	li s5, failed_addr
	ld s0, 0(s5)
	jr s0
	# assert_exception block end
excp_return_label_1784:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1785, excp_return_label_1785, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1785:
	csrr a1, hpmcounter16
	li a0, failed_addr
	ld t6, 0(a0)
	jr t6
	# assert_exception block end
excp_return_label_1785:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1786, excp_return_label_1786, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1786:
	csrr s1, hpmcounter17
	li a6, failed_addr
	ld s0, 0(a6)
	jr s0
	# assert_exception block end
excp_return_label_1786:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1787, excp_return_label_1787, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1787:
	csrr s7, hpmcounter18
	li a0, failed_addr
	ld a3, 0(a0)
	jr a3
	# assert_exception block end
excp_return_label_1787:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1788, excp_return_label_1788, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1788:
	csrr s1, hpmcounter19
	li t5, failed_addr
	ld s9, 0(t5)
	jr s9
	# assert_exception block end
excp_return_label_1788:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1789, excp_return_label_1789, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1789:
	csrr a7, hpmcounter20
	li s5, failed_addr
	ld t5, 0(s5)
	jr t5
	# assert_exception block end
excp_return_label_1789:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1790, excp_return_label_1790, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1790:
	csrr t4, hpmcounter21
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
	# assert_exception block end
excp_return_label_1790:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1791, excp_return_label_1791, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1791:
	csrr s6, hpmcounter22
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_1791:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1792, excp_return_label_1792, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1792:
	csrr s0, hpmcounter24
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
	# assert_exception block end
excp_return_label_1792:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1793, excp_return_label_1793, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1793:
	csrr s5, hpmcounter25
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
	# assert_exception block end
excp_return_label_1793:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1794, excp_return_label_1794, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1794:
	csrr s8, hpmcounter26
	li s9, failed_addr
	ld t6, 0(s9)
	jr t6
	# assert_exception block end
excp_return_label_1794:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1795, excp_return_label_1795, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1795:
	csrr a3, hpmcounter27
	li s11, failed_addr
	ld a4, 0(s11)
	jr a4
	# assert_exception block end
excp_return_label_1795:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1796, excp_return_label_1796, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1796:
	csrr s6, hpmcounter28
	li t2, failed_addr
	ld s7, 0(t2)
	jr s7
	# assert_exception block end
excp_return_label_1796:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1797, excp_return_label_1797, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1797:
	csrr t3, hpmcounter29
	li a6, failed_addr
	ld a1, 0(a6)
	jr a1
	# assert_exception block end
excp_return_label_1797:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1798, excp_return_label_1798, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1798:
	csrr t5, hpmcounter30
	li a7, failed_addr
	ld s11, 0(a7)
	jr s11
	# assert_exception block end
excp_return_label_1798:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1799, excp_return_label_1799, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1799:
	csrr a6, hpmcounter31
	li s5, failed_addr
	ld a1, 0(s5)
	jr a1
	# assert_exception block end
excp_return_label_1799:
	# Set only this field in both registers, clear all others
	li t2, 16777216
	;#csr_rw(mcounteren, write, false, false)
	li a6, 0x1000000
	csrrw s0, scounteren, a6
	# Test the enabled CSR in S mode - should succeed
	csrr s6, hpmcounter24
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1800, excp_return_label_1800, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1800:
	csrr s6, cycle
	li s0, failed_addr
	ld s11, 0(s0)
	jr s11
	# assert_exception block end
excp_return_label_1800:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1801, excp_return_label_1801, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1801:
	csrr a7, time
	li a7, failed_addr
	ld t3, 0(a7)
	jr t3
	# assert_exception block end
excp_return_label_1801:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1802, excp_return_label_1802, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1802:
	csrr a5, instret
	li t3, failed_addr
	ld t4, 0(t3)
	jr t4
	# assert_exception block end
excp_return_label_1802:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1803, excp_return_label_1803, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1803:
	csrr s9, hpmcounter3
	li s4, failed_addr
	ld s9, 0(s4)
	jr s9
	# assert_exception block end
excp_return_label_1803:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1804, excp_return_label_1804, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1804:
	csrr s0, hpmcounter4
	li s10, failed_addr
	ld s0, 0(s10)
	jr s0
	# assert_exception block end
excp_return_label_1804:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1805, excp_return_label_1805, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1805:
	csrr s3, hpmcounter5
	li t3, failed_addr
	ld t5, 0(t3)
	jr t5
	# assert_exception block end
excp_return_label_1805:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1806, excp_return_label_1806, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1806:
	csrr a0, hpmcounter6
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_1806:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1807, excp_return_label_1807, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1807:
	csrr s0, hpmcounter7
	li t6, failed_addr
	ld a7, 0(t6)
	jr a7
	# assert_exception block end
excp_return_label_1807:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1808, excp_return_label_1808, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1808:
	csrr s10, hpmcounter8
	li s1, failed_addr
	ld t4, 0(s1)
	jr t4
	# assert_exception block end
excp_return_label_1808:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1809, excp_return_label_1809, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1809:
	csrr s10, hpmcounter9
	li a3, failed_addr
	ld a0, 0(a3)
	jr a0
	# assert_exception block end
excp_return_label_1809:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1810, excp_return_label_1810, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1810:
	csrr t1, hpmcounter10
	li t1, failed_addr
	ld s10, 0(t1)
	jr s10
	# assert_exception block end
excp_return_label_1810:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1811, excp_return_label_1811, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1811:
	csrr s7, hpmcounter11
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
	# assert_exception block end
excp_return_label_1811:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1812, excp_return_label_1812, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1812:
	csrr s7, hpmcounter12
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
	# assert_exception block end
excp_return_label_1812:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1813, excp_return_label_1813, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1813:
	csrr s7, hpmcounter13
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_1813:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1814, excp_return_label_1814, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1814:
	csrr s1, hpmcounter14
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_1814:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1815, excp_return_label_1815, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1815:
	csrr a7, hpmcounter15
	li t6, failed_addr
	ld s2, 0(t6)
	jr s2
	# assert_exception block end
excp_return_label_1815:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1816, excp_return_label_1816, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1816:
	csrr t5, hpmcounter16
	li s11, failed_addr
	ld a5, 0(s11)
	jr a5
	# assert_exception block end
excp_return_label_1816:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1817, excp_return_label_1817, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1817:
	csrr s10, hpmcounter17
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_1817:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1818, excp_return_label_1818, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1818:
	csrr a2, hpmcounter18
	li a6, failed_addr
	ld s1, 0(a6)
	jr s1
	# assert_exception block end
excp_return_label_1818:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1819, excp_return_label_1819, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1819:
	csrr s1, hpmcounter19
	li a6, failed_addr
	ld s7, 0(a6)
	jr s7
	# assert_exception block end
excp_return_label_1819:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1820, excp_return_label_1820, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1820:
	csrr a0, hpmcounter20
	li s1, failed_addr
	ld t3, 0(s1)
	jr t3
	# assert_exception block end
excp_return_label_1820:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1821, excp_return_label_1821, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1821:
	csrr s0, hpmcounter21
	li s1, failed_addr
	ld a6, 0(s1)
	jr a6
	# assert_exception block end
excp_return_label_1821:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1822, excp_return_label_1822, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1822:
	csrr t1, hpmcounter22
	li s1, failed_addr
	ld a7, 0(s1)
	jr a7
	# assert_exception block end
excp_return_label_1822:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1823, excp_return_label_1823, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1823:
	csrr t6, hpmcounter23
	li a3, failed_addr
	ld s5, 0(a3)
	jr s5
	# assert_exception block end
excp_return_label_1823:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1824, excp_return_label_1824, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1824:
	csrr a1, hpmcounter25
	li a4, failed_addr
	ld a3, 0(a4)
	jr a3
	# assert_exception block end
excp_return_label_1824:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1825, excp_return_label_1825, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1825:
	csrr s8, hpmcounter26
	li a7, failed_addr
	ld t3, 0(a7)
	jr t3
	# assert_exception block end
excp_return_label_1825:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1826, excp_return_label_1826, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1826:
	csrr s2, hpmcounter27
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_1826:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1827, excp_return_label_1827, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1827:
	csrr s4, hpmcounter28
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_1827:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1828, excp_return_label_1828, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1828:
	csrr s5, hpmcounter29
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_1828:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1829, excp_return_label_1829, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1829:
	csrr a4, hpmcounter30
	li s9, failed_addr
	ld s7, 0(s9)
	jr s7
	# assert_exception block end
excp_return_label_1829:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1830, excp_return_label_1830, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1830:
	csrr s6, hpmcounter31
	li a5, failed_addr
	ld s6, 0(a5)
	jr s6
	# assert_exception block end
excp_return_label_1830:
	# Set only this field in both registers, clear all others
	li t2, 33554432
	;#csr_rw(mcounteren, write, false, false)
	li t3, 0x2000000
	csrrw a3, scounteren, t3
	# Test the enabled CSR in S mode - should succeed
	csrr s1, hpmcounter25
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1831, excp_return_label_1831, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1831:
	csrr s1, cycle
	li a2, failed_addr
	ld t5, 0(a2)
	jr t5
	# assert_exception block end
excp_return_label_1831:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1832, excp_return_label_1832, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1832:
	csrr s4, time
	li a0, failed_addr
	ld s2, 0(a0)
	jr s2
	# assert_exception block end
excp_return_label_1832:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1833, excp_return_label_1833, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1833:
	csrr t5, instret
	li s9, failed_addr
	ld t5, 0(s9)
	jr t5
	# assert_exception block end
excp_return_label_1833:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1834, excp_return_label_1834, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1834:
	csrr a1, hpmcounter3
	li a7, failed_addr
	ld a3, 0(a7)
	jr a3
	# assert_exception block end
excp_return_label_1834:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1835, excp_return_label_1835, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1835:
	csrr s4, hpmcounter4
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
	# assert_exception block end
excp_return_label_1835:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1836, excp_return_label_1836, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1836:
	csrr s5, hpmcounter5
	li t4, failed_addr
	ld s11, 0(t4)
	jr s11
	# assert_exception block end
excp_return_label_1836:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1837, excp_return_label_1837, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1837:
	csrr s11, hpmcounter6
	li t6, failed_addr
	ld s11, 0(t6)
	jr s11
	# assert_exception block end
excp_return_label_1837:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1838, excp_return_label_1838, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1838:
	csrr t5, hpmcounter7
	li t4, failed_addr
	ld t5, 0(t4)
	jr t5
	# assert_exception block end
excp_return_label_1838:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1839, excp_return_label_1839, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1839:
	csrr s8, hpmcounter8
	li a2, failed_addr
	ld a6, 0(a2)
	jr a6
	# assert_exception block end
excp_return_label_1839:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1840, excp_return_label_1840, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1840:
	csrr t6, hpmcounter9
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
	# assert_exception block end
excp_return_label_1840:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1841, excp_return_label_1841, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1841:
	csrr s8, hpmcounter10
	li s11, failed_addr
	ld a4, 0(s11)
	jr a4
	# assert_exception block end
excp_return_label_1841:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1842, excp_return_label_1842, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1842:
	csrr s7, hpmcounter11
	li s4, failed_addr
	ld a5, 0(s4)
	jr a5
	# assert_exception block end
excp_return_label_1842:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1843, excp_return_label_1843, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1843:
	csrr s5, hpmcounter12
	li s7, failed_addr
	ld a5, 0(s7)
	jr a5
	# assert_exception block end
excp_return_label_1843:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1844, excp_return_label_1844, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1844:
	csrr a3, hpmcounter13
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_1844:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1845, excp_return_label_1845, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1845:
	csrr s1, hpmcounter14
	li s5, failed_addr
	ld a0, 0(s5)
	jr a0
	# assert_exception block end
excp_return_label_1845:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1846, excp_return_label_1846, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1846:
	csrr s3, hpmcounter15
	li a1, failed_addr
	ld s3, 0(a1)
	jr s3
	# assert_exception block end
excp_return_label_1846:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1847, excp_return_label_1847, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1847:
	csrr s0, hpmcounter16
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
	# assert_exception block end
excp_return_label_1847:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1848, excp_return_label_1848, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1848:
	csrr a6, hpmcounter17
	li s11, failed_addr
	ld s10, 0(s11)
	jr s10
	# assert_exception block end
excp_return_label_1848:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1849, excp_return_label_1849, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1849:
	csrr s2, hpmcounter18
	li a6, failed_addr
	ld t1, 0(a6)
	jr t1
	# assert_exception block end
excp_return_label_1849:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1850, excp_return_label_1850, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1850:
	csrr s6, hpmcounter19
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
	# assert_exception block end
excp_return_label_1850:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1851, excp_return_label_1851, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1851:
	csrr a6, hpmcounter20
	li s5, failed_addr
	ld s6, 0(s5)
	jr s6
	# assert_exception block end
excp_return_label_1851:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1852, excp_return_label_1852, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1852:
	csrr s1, hpmcounter21
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_1852:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1853, excp_return_label_1853, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1853:
	csrr t6, hpmcounter22
	li s0, failed_addr
	ld a2, 0(s0)
	jr a2
	# assert_exception block end
excp_return_label_1853:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1854, excp_return_label_1854, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1854:
	csrr s0, hpmcounter23
	li s3, failed_addr
	ld s3, 0(s3)
	jr s3
	# assert_exception block end
excp_return_label_1854:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1855, excp_return_label_1855, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1855:
	csrr s2, hpmcounter24
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
	# assert_exception block end
excp_return_label_1855:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1856, excp_return_label_1856, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1856:
	csrr s6, hpmcounter26
	li s8, failed_addr
	ld a1, 0(s8)
	jr a1
	# assert_exception block end
excp_return_label_1856:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1857, excp_return_label_1857, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1857:
	csrr s9, hpmcounter27
	li t1, failed_addr
	ld s11, 0(t1)
	jr s11
	# assert_exception block end
excp_return_label_1857:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1858, excp_return_label_1858, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1858:
	csrr a1, hpmcounter28
	li t4, failed_addr
	ld s3, 0(t4)
	jr s3
	# assert_exception block end
excp_return_label_1858:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1859, excp_return_label_1859, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1859:
	csrr t5, hpmcounter29
	li t5, failed_addr
	ld a7, 0(t5)
	jr a7
	# assert_exception block end
excp_return_label_1859:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1860, excp_return_label_1860, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1860:
	csrr s4, hpmcounter30
	li s11, failed_addr
	ld a3, 0(s11)
	jr a3
	# assert_exception block end
excp_return_label_1860:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1861, excp_return_label_1861, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1861:
	csrr t2, hpmcounter31
	li t2, failed_addr
	ld t5, 0(t2)
	jr t5
	# assert_exception block end
excp_return_label_1861:
	# Set only this field in both registers, clear all others
	li t2, 67108864
	;#csr_rw(mcounteren, write, false, false)
	li a6, 0x4000000
	csrrw s5, scounteren, a6
	# Test the enabled CSR in S mode - should succeed
	csrr t5, hpmcounter26
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1862, excp_return_label_1862, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1862:
	csrr s8, cycle
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_1862:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1863, excp_return_label_1863, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1863:
	csrr s11, time
	li s9, failed_addr
	ld a2, 0(s9)
	jr a2
	# assert_exception block end
excp_return_label_1863:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1864, excp_return_label_1864, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1864:
	csrr t2, instret
	li t5, failed_addr
	ld s2, 0(t5)
	jr s2
	# assert_exception block end
excp_return_label_1864:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1865, excp_return_label_1865, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1865:
	csrr s7, hpmcounter3
	li t5, failed_addr
	ld s0, 0(t5)
	jr s0
	# assert_exception block end
excp_return_label_1865:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1866, excp_return_label_1866, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1866:
	csrr t6, hpmcounter4
	li s10, failed_addr
	ld a7, 0(s10)
	jr a7
	# assert_exception block end
excp_return_label_1866:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1867, excp_return_label_1867, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1867:
	csrr a3, hpmcounter5
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_1867:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1868, excp_return_label_1868, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1868:
	csrr t3, hpmcounter6
	li s7, failed_addr
	ld s3, 0(s7)
	jr s3
	# assert_exception block end
excp_return_label_1868:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1869, excp_return_label_1869, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1869:
	csrr t4, hpmcounter7
	li s11, failed_addr
	ld s11, 0(s11)
	jr s11
	# assert_exception block end
excp_return_label_1869:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1870, excp_return_label_1870, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1870:
	csrr s10, hpmcounter8
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
	# assert_exception block end
excp_return_label_1870:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1871, excp_return_label_1871, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1871:
	csrr t5, hpmcounter9
	li a7, failed_addr
	ld s11, 0(a7)
	jr s11
	# assert_exception block end
excp_return_label_1871:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1872, excp_return_label_1872, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1872:
	csrr s1, hpmcounter10
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_1872:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1873, excp_return_label_1873, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1873:
	csrr t2, hpmcounter11
	li s4, failed_addr
	ld a6, 0(s4)
	jr a6
	# assert_exception block end
excp_return_label_1873:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1874, excp_return_label_1874, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1874:
	csrr s11, hpmcounter12
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_1874:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1875, excp_return_label_1875, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1875:
	csrr s5, hpmcounter13
	li a6, failed_addr
	ld a7, 0(a6)
	jr a7
	# assert_exception block end
excp_return_label_1875:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1876, excp_return_label_1876, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1876:
	csrr s4, hpmcounter14
	li s6, failed_addr
	ld s1, 0(s6)
	jr s1
	# assert_exception block end
excp_return_label_1876:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1877, excp_return_label_1877, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1877:
	csrr t5, hpmcounter15
	li s2, failed_addr
	ld a1, 0(s2)
	jr a1
	# assert_exception block end
excp_return_label_1877:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1878, excp_return_label_1878, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1878:
	csrr s8, hpmcounter16
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_1878:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1879, excp_return_label_1879, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1879:
	csrr t4, hpmcounter17
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
	# assert_exception block end
excp_return_label_1879:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1880, excp_return_label_1880, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1880:
	csrr s11, hpmcounter18
	li a1, failed_addr
	ld t2, 0(a1)
	jr t2
	# assert_exception block end
excp_return_label_1880:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1881, excp_return_label_1881, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1881:
	csrr a7, hpmcounter19
	li s8, failed_addr
	ld s3, 0(s8)
	jr s3
	# assert_exception block end
excp_return_label_1881:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1882, excp_return_label_1882, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1882:
	csrr t1, hpmcounter20
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_1882:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1883, excp_return_label_1883, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1883:
	csrr s7, hpmcounter21
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_1883:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1884, excp_return_label_1884, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1884:
	csrr t2, hpmcounter22
	li s2, failed_addr
	ld s11, 0(s2)
	jr s11
	# assert_exception block end
excp_return_label_1884:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1885, excp_return_label_1885, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1885:
	csrr t5, hpmcounter23
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
	# assert_exception block end
excp_return_label_1885:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1886, excp_return_label_1886, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1886:
	csrr s8, hpmcounter24
	li s1, failed_addr
	ld a4, 0(s1)
	jr a4
	# assert_exception block end
excp_return_label_1886:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1887, excp_return_label_1887, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1887:
	csrr s5, hpmcounter25
	li t4, failed_addr
	ld s9, 0(t4)
	jr s9
	# assert_exception block end
excp_return_label_1887:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1888, excp_return_label_1888, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1888:
	csrr s1, hpmcounter27
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_1888:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1889, excp_return_label_1889, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1889:
	csrr a6, hpmcounter28
	li s3, failed_addr
	ld a4, 0(s3)
	jr a4
	# assert_exception block end
excp_return_label_1889:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1890, excp_return_label_1890, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1890:
	csrr t6, hpmcounter29
	li s9, failed_addr
	ld a2, 0(s9)
	jr a2
	# assert_exception block end
excp_return_label_1890:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1891, excp_return_label_1891, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1891:
	csrr s6, hpmcounter30
	li s10, failed_addr
	ld s4, 0(s10)
	jr s4
	# assert_exception block end
excp_return_label_1891:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1892, excp_return_label_1892, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1892:
	csrr a3, hpmcounter31
	li a2, failed_addr
	ld a0, 0(a2)
	jr a0
	# assert_exception block end
excp_return_label_1892:
	# Set only this field in both registers, clear all others
	li t2, 134217728
	;#csr_rw(mcounteren, write, false, false)
	li s11, 0x8000000
	csrrw s4, scounteren, s11
	# Test the enabled CSR in S mode - should succeed
	csrr s6, hpmcounter27
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1893, excp_return_label_1893, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1893:
	csrr a7, cycle
	li s7, failed_addr
	ld s4, 0(s7)
	jr s4
	# assert_exception block end
excp_return_label_1893:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1894, excp_return_label_1894, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1894:
	csrr t2, time
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_1894:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1895, excp_return_label_1895, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1895:
	csrr s11, instret
	li s8, failed_addr
	ld s10, 0(s8)
	jr s10
	# assert_exception block end
excp_return_label_1895:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1896, excp_return_label_1896, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1896:
	csrr s9, hpmcounter3
	li t3, failed_addr
	ld s2, 0(t3)
	jr s2
	# assert_exception block end
excp_return_label_1896:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1897, excp_return_label_1897, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1897:
	csrr s7, hpmcounter4
	li s7, failed_addr
	ld a2, 0(s7)
	jr a2
	# assert_exception block end
excp_return_label_1897:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1898, excp_return_label_1898, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1898:
	csrr a3, hpmcounter5
	li s3, failed_addr
	ld a2, 0(s3)
	jr a2
	# assert_exception block end
excp_return_label_1898:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1899, excp_return_label_1899, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1899:
	csrr a7, hpmcounter6
	li t1, failed_addr
	ld t3, 0(t1)
	jr t3
	# assert_exception block end
excp_return_label_1899:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1900, excp_return_label_1900, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1900:
	csrr t6, hpmcounter7
	li s5, failed_addr
	ld a7, 0(s5)
	jr a7
	# assert_exception block end
excp_return_label_1900:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1901, excp_return_label_1901, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1901:
	csrr t3, hpmcounter8
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
	# assert_exception block end
excp_return_label_1901:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1902, excp_return_label_1902, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1902:
	csrr s10, hpmcounter9
	li a3, failed_addr
	ld a1, 0(a3)
	jr a1
	# assert_exception block end
excp_return_label_1902:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1903, excp_return_label_1903, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1903:
	csrr s5, hpmcounter10
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_1903:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1904, excp_return_label_1904, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1904:
	csrr a7, hpmcounter11
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
	# assert_exception block end
excp_return_label_1904:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1905, excp_return_label_1905, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1905:
	csrr s0, hpmcounter12
	li a7, failed_addr
	ld s4, 0(a7)
	jr s4
	# assert_exception block end
excp_return_label_1905:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1906, excp_return_label_1906, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1906:
	csrr t2, hpmcounter13
	li a5, failed_addr
	ld t3, 0(a5)
	jr t3
	# assert_exception block end
excp_return_label_1906:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1907, excp_return_label_1907, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1907:
	csrr s7, hpmcounter14
	li s3, failed_addr
	ld a5, 0(s3)
	jr a5
	# assert_exception block end
excp_return_label_1907:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1908, excp_return_label_1908, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1908:
	csrr t6, hpmcounter15
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_1908:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1909, excp_return_label_1909, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1909:
	csrr s5, hpmcounter16
	li s4, failed_addr
	ld a3, 0(s4)
	jr a3
	# assert_exception block end
excp_return_label_1909:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1910, excp_return_label_1910, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1910:
	csrr s11, hpmcounter17
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
	# assert_exception block end
excp_return_label_1910:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1911, excp_return_label_1911, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1911:
	csrr t5, hpmcounter18
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_1911:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1912, excp_return_label_1912, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1912:
	csrr t3, hpmcounter19
	li s1, failed_addr
	ld t1, 0(s1)
	jr t1
	# assert_exception block end
excp_return_label_1912:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1913, excp_return_label_1913, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1913:
	csrr a2, hpmcounter20
	li a3, failed_addr
	ld s6, 0(a3)
	jr s6
	# assert_exception block end
excp_return_label_1913:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1914, excp_return_label_1914, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1914:
	csrr s6, hpmcounter21
	li t4, failed_addr
	ld a1, 0(t4)
	jr a1
	# assert_exception block end
excp_return_label_1914:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1915, excp_return_label_1915, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1915:
	csrr t6, hpmcounter22
	li s7, failed_addr
	ld t2, 0(s7)
	jr t2
	# assert_exception block end
excp_return_label_1915:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1916, excp_return_label_1916, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1916:
	csrr s4, hpmcounter23
	li s5, failed_addr
	ld t2, 0(s5)
	jr t2
	# assert_exception block end
excp_return_label_1916:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1917, excp_return_label_1917, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1917:
	csrr s8, hpmcounter24
	li s10, failed_addr
	ld s11, 0(s10)
	jr s11
	# assert_exception block end
excp_return_label_1917:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1918, excp_return_label_1918, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1918:
	csrr a2, hpmcounter25
	li s1, failed_addr
	ld s5, 0(s1)
	jr s5
	# assert_exception block end
excp_return_label_1918:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1919, excp_return_label_1919, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1919:
	csrr s9, hpmcounter26
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_1919:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1920, excp_return_label_1920, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1920:
	csrr s1, hpmcounter28
	li t6, failed_addr
	ld s0, 0(t6)
	jr s0
	# assert_exception block end
excp_return_label_1920:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1921, excp_return_label_1921, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1921:
	csrr s1, hpmcounter29
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_1921:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1922, excp_return_label_1922, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1922:
	csrr a3, hpmcounter30
	li t4, failed_addr
	ld s1, 0(t4)
	jr s1
	# assert_exception block end
excp_return_label_1922:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1923, excp_return_label_1923, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1923:
	csrr a3, hpmcounter31
	li s8, failed_addr
	ld a1, 0(s8)
	jr a1
	# assert_exception block end
excp_return_label_1923:
	# Set only this field in both registers, clear all others
	li t2, 268435456
	;#csr_rw(mcounteren, write, false, false)
	li t2, 0x10000000
	csrrw a2, scounteren, t2
	# Test the enabled CSR in S mode - should succeed
	csrr t6, hpmcounter28
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1924, excp_return_label_1924, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1924:
	csrr s7, cycle
	li a1, failed_addr
	ld a5, 0(a1)
	jr a5
	# assert_exception block end
excp_return_label_1924:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1925, excp_return_label_1925, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1925:
	csrr a3, time
	li t6, failed_addr
	ld a2, 0(t6)
	jr a2
	# assert_exception block end
excp_return_label_1925:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1926, excp_return_label_1926, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1926:
	csrr a0, instret
	li a3, failed_addr
	ld t5, 0(a3)
	jr t5
	# assert_exception block end
excp_return_label_1926:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1927, excp_return_label_1927, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1927:
	csrr s6, hpmcounter3
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_1927:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1928, excp_return_label_1928, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1928:
	csrr t3, hpmcounter4
	li a3, failed_addr
	ld a7, 0(a3)
	jr a7
	# assert_exception block end
excp_return_label_1928:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1929, excp_return_label_1929, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1929:
	csrr s0, hpmcounter5
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
	# assert_exception block end
excp_return_label_1929:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1930, excp_return_label_1930, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1930:
	csrr s9, hpmcounter6
	li s7, failed_addr
	ld t4, 0(s7)
	jr t4
	# assert_exception block end
excp_return_label_1930:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1931, excp_return_label_1931, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1931:
	csrr a1, hpmcounter7
	li a5, failed_addr
	ld s11, 0(a5)
	jr s11
	# assert_exception block end
excp_return_label_1931:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1932, excp_return_label_1932, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1932:
	csrr t3, hpmcounter8
	li a1, failed_addr
	ld t6, 0(a1)
	jr t6
	# assert_exception block end
excp_return_label_1932:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1933, excp_return_label_1933, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1933:
	csrr s9, hpmcounter9
	li t3, failed_addr
	ld s0, 0(t3)
	jr s0
	# assert_exception block end
excp_return_label_1933:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1934, excp_return_label_1934, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1934:
	csrr s1, hpmcounter10
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
	# assert_exception block end
excp_return_label_1934:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1935, excp_return_label_1935, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1935:
	csrr a6, hpmcounter11
	li s10, failed_addr
	ld a7, 0(s10)
	jr a7
	# assert_exception block end
excp_return_label_1935:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1936, excp_return_label_1936, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1936:
	csrr s3, hpmcounter12
	li s4, failed_addr
	ld a3, 0(s4)
	jr a3
	# assert_exception block end
excp_return_label_1936:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1937, excp_return_label_1937, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1937:
	csrr s3, hpmcounter13
	li s9, failed_addr
	ld a1, 0(s9)
	jr a1
	# assert_exception block end
excp_return_label_1937:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1938, excp_return_label_1938, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1938:
	csrr a0, hpmcounter14
	li s9, failed_addr
	ld s7, 0(s9)
	jr s7
	# assert_exception block end
excp_return_label_1938:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1939, excp_return_label_1939, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1939:
	csrr t3, hpmcounter15
	li a2, failed_addr
	ld a1, 0(a2)
	jr a1
	# assert_exception block end
excp_return_label_1939:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1940, excp_return_label_1940, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1940:
	csrr s3, hpmcounter16
	li s7, failed_addr
	ld s0, 0(s7)
	jr s0
	# assert_exception block end
excp_return_label_1940:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1941, excp_return_label_1941, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1941:
	csrr s1, hpmcounter17
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_1941:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1942, excp_return_label_1942, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1942:
	csrr t1, hpmcounter18
	li t4, failed_addr
	ld s9, 0(t4)
	jr s9
	# assert_exception block end
excp_return_label_1942:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1943, excp_return_label_1943, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1943:
	csrr a4, hpmcounter19
	li a6, failed_addr
	ld t6, 0(a6)
	jr t6
	# assert_exception block end
excp_return_label_1943:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1944, excp_return_label_1944, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1944:
	csrr s3, hpmcounter20
	li s0, failed_addr
	ld a0, 0(s0)
	jr a0
	# assert_exception block end
excp_return_label_1944:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1945, excp_return_label_1945, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1945:
	csrr s0, hpmcounter21
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
	# assert_exception block end
excp_return_label_1945:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1946, excp_return_label_1946, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1946:
	csrr s0, hpmcounter22
	li a0, failed_addr
	ld s3, 0(a0)
	jr s3
	# assert_exception block end
excp_return_label_1946:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1947, excp_return_label_1947, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1947:
	csrr a0, hpmcounter23
	li t5, failed_addr
	ld s10, 0(t5)
	jr s10
	# assert_exception block end
excp_return_label_1947:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1948, excp_return_label_1948, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1948:
	csrr s3, hpmcounter24
	li t1, failed_addr
	ld s7, 0(t1)
	jr s7
	# assert_exception block end
excp_return_label_1948:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1949, excp_return_label_1949, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1949:
	csrr s4, hpmcounter25
	li a4, failed_addr
	ld s2, 0(a4)
	jr s2
	# assert_exception block end
excp_return_label_1949:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1950, excp_return_label_1950, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1950:
	csrr s4, hpmcounter26
	li a3, failed_addr
	ld s4, 0(a3)
	jr s4
	# assert_exception block end
excp_return_label_1950:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1951, excp_return_label_1951, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1951:
	csrr a4, hpmcounter27
	li s7, failed_addr
	ld t6, 0(s7)
	jr t6
	# assert_exception block end
excp_return_label_1951:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1952, excp_return_label_1952, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1952:
	csrr s9, hpmcounter29
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
	# assert_exception block end
excp_return_label_1952:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1953, excp_return_label_1953, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1953:
	csrr s11, hpmcounter30
	li s11, failed_addr
	ld s6, 0(s11)
	jr s6
	# assert_exception block end
excp_return_label_1953:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1954, excp_return_label_1954, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1954:
	csrr a3, hpmcounter31
	li s3, failed_addr
	ld a1, 0(s3)
	jr a1
	# assert_exception block end
excp_return_label_1954:
	# Set only this field in both registers, clear all others
	li t2, 536870912
	;#csr_rw(mcounteren, write, false, false)
	li s8, 0x20000000
	csrrw a6, scounteren, s8
	# Test the enabled CSR in S mode - should succeed
	csrr s8, hpmcounter29
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1955, excp_return_label_1955, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1955:
	csrr t4, cycle
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_1955:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1956, excp_return_label_1956, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1956:
	csrr s6, time
	li s8, failed_addr
	ld s7, 0(s8)
	jr s7
	# assert_exception block end
excp_return_label_1956:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1957, excp_return_label_1957, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1957:
	csrr a6, instret
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
	# assert_exception block end
excp_return_label_1957:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1958, excp_return_label_1958, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1958:
	csrr s3, hpmcounter3
	li s1, failed_addr
	ld s5, 0(s1)
	jr s5
	# assert_exception block end
excp_return_label_1958:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1959, excp_return_label_1959, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1959:
	csrr t1, hpmcounter4
	li t2, failed_addr
	ld a1, 0(t2)
	jr a1
	# assert_exception block end
excp_return_label_1959:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1960, excp_return_label_1960, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1960:
	csrr s1, hpmcounter5
	li s5, failed_addr
	ld a6, 0(s5)
	jr a6
	# assert_exception block end
excp_return_label_1960:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1961, excp_return_label_1961, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1961:
	csrr s11, hpmcounter6
	li s9, failed_addr
	ld s5, 0(s9)
	jr s5
	# assert_exception block end
excp_return_label_1961:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1962, excp_return_label_1962, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1962:
	csrr a3, hpmcounter7
	li t5, failed_addr
	ld a3, 0(t5)
	jr a3
	# assert_exception block end
excp_return_label_1962:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1963, excp_return_label_1963, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1963:
	csrr a4, hpmcounter8
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_1963:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1964, excp_return_label_1964, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1964:
	csrr t1, hpmcounter9
	li s11, failed_addr
	ld a1, 0(s11)
	jr a1
	# assert_exception block end
excp_return_label_1964:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1965, excp_return_label_1965, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1965:
	csrr t4, hpmcounter10
	li s5, failed_addr
	ld a4, 0(s5)
	jr a4
	# assert_exception block end
excp_return_label_1965:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1966, excp_return_label_1966, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1966:
	csrr t2, hpmcounter11
	li s8, failed_addr
	ld s6, 0(s8)
	jr s6
	# assert_exception block end
excp_return_label_1966:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1967, excp_return_label_1967, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1967:
	csrr t5, hpmcounter12
	li a2, failed_addr
	ld s0, 0(a2)
	jr s0
	# assert_exception block end
excp_return_label_1967:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1968, excp_return_label_1968, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1968:
	csrr a6, hpmcounter13
	li s11, failed_addr
	ld t5, 0(s11)
	jr t5
	# assert_exception block end
excp_return_label_1968:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1969, excp_return_label_1969, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1969:
	csrr a2, hpmcounter14
	li s1, failed_addr
	ld a4, 0(s1)
	jr a4
	# assert_exception block end
excp_return_label_1969:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1970, excp_return_label_1970, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1970:
	csrr s10, hpmcounter15
	li s8, failed_addr
	ld s2, 0(s8)
	jr s2
	# assert_exception block end
excp_return_label_1970:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1971, excp_return_label_1971, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1971:
	csrr s3, hpmcounter16
	li s4, failed_addr
	ld s7, 0(s4)
	jr s7
	# assert_exception block end
excp_return_label_1971:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1972, excp_return_label_1972, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1972:
	csrr a1, hpmcounter17
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
	# assert_exception block end
excp_return_label_1972:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1973, excp_return_label_1973, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1973:
	csrr s11, hpmcounter18
	li a5, failed_addr
	ld a1, 0(a5)
	jr a1
	# assert_exception block end
excp_return_label_1973:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1974, excp_return_label_1974, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1974:
	csrr a2, hpmcounter19
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_1974:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1975, excp_return_label_1975, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1975:
	csrr s9, hpmcounter20
	li a0, failed_addr
	ld t6, 0(a0)
	jr t6
	# assert_exception block end
excp_return_label_1975:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1976, excp_return_label_1976, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1976:
	csrr s6, hpmcounter21
	li s3, failed_addr
	ld t5, 0(s3)
	jr t5
	# assert_exception block end
excp_return_label_1976:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1977, excp_return_label_1977, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1977:
	csrr s6, hpmcounter22
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_1977:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1978, excp_return_label_1978, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1978:
	csrr s4, hpmcounter23
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_1978:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1979, excp_return_label_1979, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1979:
	csrr t6, hpmcounter24
	li s11, failed_addr
	ld s10, 0(s11)
	jr s10
	# assert_exception block end
excp_return_label_1979:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1980, excp_return_label_1980, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1980:
	csrr t3, hpmcounter25
	li t1, failed_addr
	ld s0, 0(t1)
	jr s0
	# assert_exception block end
excp_return_label_1980:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1981, excp_return_label_1981, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1981:
	csrr t2, hpmcounter26
	li t1, failed_addr
	ld s3, 0(t1)
	jr s3
	# assert_exception block end
excp_return_label_1981:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1982, excp_return_label_1982, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1982:
	csrr a2, hpmcounter27
	li t1, failed_addr
	ld s0, 0(t1)
	jr s0
	# assert_exception block end
excp_return_label_1982:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1983, excp_return_label_1983, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1983:
	csrr s5, hpmcounter28
	li a2, failed_addr
	ld s4, 0(a2)
	jr s4
	# assert_exception block end
excp_return_label_1983:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1984, excp_return_label_1984, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1984:
	csrr s10, hpmcounter30
	li a3, failed_addr
	ld s5, 0(a3)
	jr s5
	# assert_exception block end
excp_return_label_1984:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1985, excp_return_label_1985, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1985:
	csrr s10, hpmcounter31
	li a2, failed_addr
	ld s2, 0(a2)
	jr s2
	# assert_exception block end
excp_return_label_1985:
	# Set only this field in both registers, clear all others
	li t2, 1073741824
	;#csr_rw(mcounteren, write, false, false)
	li a4, 0x40000000
	csrrw t2, scounteren, a4
	# Test the enabled CSR in S mode - should succeed
	csrr a1, hpmcounter30
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1986, excp_return_label_1986, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1986:
	csrr s0, cycle
	li t1, failed_addr
	ld t3, 0(t1)
	jr t3
	# assert_exception block end
excp_return_label_1986:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1987, excp_return_label_1987, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1987:
	csrr s7, time
	li t4, failed_addr
	ld s3, 0(t4)
	jr s3
	# assert_exception block end
excp_return_label_1987:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1988, excp_return_label_1988, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1988:
	csrr s0, instret
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_1988:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1989, excp_return_label_1989, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1989:
	csrr a6, hpmcounter3
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_1989:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1990, excp_return_label_1990, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1990:
	csrr t2, hpmcounter4
	li a5, failed_addr
	ld s2, 0(a5)
	jr s2
	# assert_exception block end
excp_return_label_1990:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1991, excp_return_label_1991, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1991:
	csrr s10, hpmcounter5
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_1991:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1992, excp_return_label_1992, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1992:
	csrr s8, hpmcounter6
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
	# assert_exception block end
excp_return_label_1992:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1993, excp_return_label_1993, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1993:
	csrr a4, hpmcounter7
	li s1, failed_addr
	ld t3, 0(s1)
	jr t3
	# assert_exception block end
excp_return_label_1993:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1994, excp_return_label_1994, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1994:
	csrr a5, hpmcounter8
	li t4, failed_addr
	ld s0, 0(t4)
	jr s0
	# assert_exception block end
excp_return_label_1994:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1995, excp_return_label_1995, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1995:
	csrr a0, hpmcounter9
	li a5, failed_addr
	ld s9, 0(a5)
	jr s9
	# assert_exception block end
excp_return_label_1995:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1996, excp_return_label_1996, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1996:
	csrr s5, hpmcounter10
	li a1, failed_addr
	ld s10, 0(a1)
	jr s10
	# assert_exception block end
excp_return_label_1996:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1997, excp_return_label_1997, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1997:
	csrr t2, hpmcounter11
	li s2, failed_addr
	ld s2, 0(s2)
	jr s2
	# assert_exception block end
excp_return_label_1997:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1998, excp_return_label_1998, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1998:
	csrr t3, hpmcounter12
	li s7, failed_addr
	ld s8, 0(s7)
	jr s8
	# assert_exception block end
excp_return_label_1998:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1999, excp_return_label_1999, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1999:
	csrr a7, hpmcounter13
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
	# assert_exception block end
excp_return_label_1999:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2000, excp_return_label_2000, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2000:
	csrr t5, hpmcounter14
	li s10, failed_addr
	ld s7, 0(s10)
	jr s7
	# assert_exception block end
excp_return_label_2000:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2001, excp_return_label_2001, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2001:
	csrr t3, hpmcounter15
	li s2, failed_addr
	ld s6, 0(s2)
	jr s6
	# assert_exception block end
excp_return_label_2001:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2002, excp_return_label_2002, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2002:
	csrr s9, hpmcounter16
	li s8, failed_addr
	ld a1, 0(s8)
	jr a1
	# assert_exception block end
excp_return_label_2002:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2003, excp_return_label_2003, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2003:
	csrr s8, hpmcounter17
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_2003:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2004, excp_return_label_2004, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2004:
	csrr t3, hpmcounter18
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_2004:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2005, excp_return_label_2005, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2005:
	csrr t6, hpmcounter19
	li a6, failed_addr
	ld a1, 0(a6)
	jr a1
	# assert_exception block end
excp_return_label_2005:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2006, excp_return_label_2006, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2006:
	csrr s8, hpmcounter20
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_2006:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2007, excp_return_label_2007, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2007:
	csrr s10, hpmcounter21
	li a3, failed_addr
	ld s4, 0(a3)
	jr s4
	# assert_exception block end
excp_return_label_2007:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2008, excp_return_label_2008, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2008:
	csrr a0, hpmcounter22
	li s2, failed_addr
	ld a1, 0(s2)
	jr a1
	# assert_exception block end
excp_return_label_2008:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2009, excp_return_label_2009, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2009:
	csrr s11, hpmcounter23
	li t5, failed_addr
	ld a6, 0(t5)
	jr a6
	# assert_exception block end
excp_return_label_2009:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2010, excp_return_label_2010, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2010:
	csrr s10, hpmcounter24
	li s6, failed_addr
	ld t2, 0(s6)
	jr t2
	# assert_exception block end
excp_return_label_2010:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2011, excp_return_label_2011, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2011:
	csrr s3, hpmcounter25
	li a5, failed_addr
	ld a0, 0(a5)
	jr a0
	# assert_exception block end
excp_return_label_2011:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2012, excp_return_label_2012, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2012:
	csrr s2, hpmcounter26
	li t3, failed_addr
	ld s4, 0(t3)
	jr s4
	# assert_exception block end
excp_return_label_2012:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2013, excp_return_label_2013, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2013:
	csrr s3, hpmcounter27
	li a6, failed_addr
	ld s0, 0(a6)
	jr s0
	# assert_exception block end
excp_return_label_2013:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2014, excp_return_label_2014, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2014:
	csrr s11, hpmcounter28
	li s10, failed_addr
	ld a0, 0(s10)
	jr a0
	# assert_exception block end
excp_return_label_2014:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2015, excp_return_label_2015, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2015:
	csrr a5, hpmcounter29
	li s8, failed_addr
	ld s8, 0(s8)
	jr s8
	# assert_exception block end
excp_return_label_2015:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2016, excp_return_label_2016, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2016:
	csrr t4, hpmcounter31
	li s1, failed_addr
	ld s2, 0(s1)
	jr s2
	# assert_exception block end
excp_return_label_2016:
	# Set only this field in both registers, clear all others
	li t2, 2147483648
	;#csr_rw(mcounteren, write, false, false)
	li s9, 0x80000000
	csrrw t3, scounteren, s9
	# Test the enabled CSR in S mode - should succeed
	csrr t3, hpmcounter31
	# Test other CSRs in S mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2017, excp_return_label_2017, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2017:
	csrr s9, cycle
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
	# assert_exception block end
excp_return_label_2017:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2018, excp_return_label_2018, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2018:
	csrr s10, time
	li a6, failed_addr
	ld s5, 0(a6)
	jr s5
	# assert_exception block end
excp_return_label_2018:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2019, excp_return_label_2019, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2019:
	csrr t2, instret
	li s9, failed_addr
	ld s0, 0(s9)
	jr s0
	# assert_exception block end
excp_return_label_2019:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2020, excp_return_label_2020, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2020:
	csrr s0, hpmcounter3
	li a6, failed_addr
	ld t6, 0(a6)
	jr t6
	# assert_exception block end
excp_return_label_2020:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2021, excp_return_label_2021, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2021:
	csrr s6, hpmcounter4
	li s5, failed_addr
	ld a5, 0(s5)
	jr a5
	# assert_exception block end
excp_return_label_2021:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2022, excp_return_label_2022, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2022:
	csrr t5, hpmcounter5
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_2022:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2023, excp_return_label_2023, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2023:
	csrr s4, hpmcounter6
	li s7, failed_addr
	ld a0, 0(s7)
	jr a0
	# assert_exception block end
excp_return_label_2023:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2024, excp_return_label_2024, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2024:
	csrr s4, hpmcounter7
	li s4, failed_addr
	ld t3, 0(s4)
	jr t3
	# assert_exception block end
excp_return_label_2024:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2025, excp_return_label_2025, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2025:
	csrr s6, hpmcounter8
	li a5, failed_addr
	ld a3, 0(a5)
	jr a3
	# assert_exception block end
excp_return_label_2025:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2026, excp_return_label_2026, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2026:
	csrr t6, hpmcounter9
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_2026:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2027, excp_return_label_2027, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2027:
	csrr s1, hpmcounter10
	li s5, failed_addr
	ld s9, 0(s5)
	jr s9
	# assert_exception block end
excp_return_label_2027:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2028, excp_return_label_2028, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2028:
	csrr t2, hpmcounter11
	li s6, failed_addr
	ld t2, 0(s6)
	jr t2
	# assert_exception block end
excp_return_label_2028:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2029, excp_return_label_2029, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2029:
	csrr a6, hpmcounter12
	li a5, failed_addr
	ld t3, 0(a5)
	jr t3
	# assert_exception block end
excp_return_label_2029:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2030, excp_return_label_2030, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2030:
	csrr t3, hpmcounter13
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
	# assert_exception block end
excp_return_label_2030:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2031, excp_return_label_2031, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2031:
	csrr s11, hpmcounter14
	li a4, failed_addr
	ld t1, 0(a4)
	jr t1
	# assert_exception block end
excp_return_label_2031:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2032, excp_return_label_2032, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2032:
	csrr a0, hpmcounter15
	li a2, failed_addr
	ld t2, 0(a2)
	jr t2
	# assert_exception block end
excp_return_label_2032:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2033, excp_return_label_2033, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2033:
	csrr s11, hpmcounter16
	li s2, failed_addr
	ld t5, 0(s2)
	jr t5
	# assert_exception block end
excp_return_label_2033:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2034, excp_return_label_2034, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2034:
	csrr s2, hpmcounter17
	li s10, failed_addr
	ld s11, 0(s10)
	jr s11
	# assert_exception block end
excp_return_label_2034:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2035, excp_return_label_2035, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2035:
	csrr t6, hpmcounter18
	li t3, failed_addr
	ld t3, 0(t3)
	jr t3
	# assert_exception block end
excp_return_label_2035:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2036, excp_return_label_2036, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2036:
	csrr s0, hpmcounter19
	li s3, failed_addr
	ld a0, 0(s3)
	jr a0
	# assert_exception block end
excp_return_label_2036:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2037, excp_return_label_2037, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2037:
	csrr t2, hpmcounter20
	li s2, failed_addr
	ld s8, 0(s2)
	jr s8
	# assert_exception block end
excp_return_label_2037:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2038, excp_return_label_2038, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2038:
	csrr a4, hpmcounter21
	li s0, failed_addr
	ld a0, 0(s0)
	jr a0
	# assert_exception block end
excp_return_label_2038:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2039, excp_return_label_2039, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2039:
	csrr a4, hpmcounter22
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_2039:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2040, excp_return_label_2040, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2040:
	csrr s8, hpmcounter23
	li t6, failed_addr
	ld a4, 0(t6)
	jr a4
	# assert_exception block end
excp_return_label_2040:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2041, excp_return_label_2041, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2041:
	csrr a2, hpmcounter24
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
	# assert_exception block end
excp_return_label_2041:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2042, excp_return_label_2042, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2042:
	csrr s9, hpmcounter25
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_2042:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2043, excp_return_label_2043, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2043:
	csrr t5, hpmcounter26
	li s3, failed_addr
	ld s5, 0(s3)
	jr s5
	# assert_exception block end
excp_return_label_2043:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2044, excp_return_label_2044, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2044:
	csrr t2, hpmcounter27
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_2044:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2045, excp_return_label_2045, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2045:
	csrr a3, hpmcounter28
	li a3, failed_addr
	ld s1, 0(a3)
	jr s1
	# assert_exception block end
excp_return_label_2045:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2046, excp_return_label_2046, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2046:
	csrr a4, hpmcounter29
	li a5, failed_addr
	ld s6, 0(a5)
	jr s6
	# assert_exception block end
excp_return_label_2046:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2047, excp_return_label_2047, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2047:
	csrr a2, hpmcounter30
	li t5, failed_addr
	ld s1, 0(t5)
	jr s1
	# assert_exception block end
excp_return_label_2047:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_XCOUNTEREN_06_S_passed:
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

;#random_addr(name=SID_XCOUNTEREN_01_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_01_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_01_S_stack, phys_name=SID_XCOUNTEREN_01_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_01_S_stack
.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_02_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_02_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_02_S_stack, phys_name=SID_XCOUNTEREN_02_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_02_S_stack
.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_03_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_03_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_03_S_stack, phys_name=SID_XCOUNTEREN_03_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_03_S_stack
.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_04_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_04_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_04_S_stack, phys_name=SID_XCOUNTEREN_04_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_04_S_stack
.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_05_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_05_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_05_S_stack, phys_name=SID_XCOUNTEREN_05_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_05_S_stack
.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_06_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_06_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_06_S_stack, phys_name=SID_XCOUNTEREN_06_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_06_S_stack
.dword 0xc001c0de
