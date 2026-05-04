;#test.name       hypervisor_exceptions
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        virtualized
;#test.cpus       1
;#test.paging     sv57
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      hypervisor_exceptions
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: hypervisor_exceptions

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_05)
SID_HEXCEP_05:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, false)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_05_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Ensure mstatus.TVM=0 (HS-mode would allow access)
	li t2, 1048576
	;#csr_rw(mstatus, clear, false, false)
	li s1, 0
	# V=1 mode: access vsstatus read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a0, 0
fault_label_0:
	csrrs a1, vsstatus, a0
	li s5, failed_addr
	ld a5, 0(s5)
	jr a5
	# assert_exception block end
excp_return_label_0:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	csrrw s5, vsstatus, s1
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_1:
	# V=1 mode: access vsip read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s3, 0
fault_label_2:
	csrrs a1, vsip, s3
	li a7, failed_addr
	ld s5, 0(a7)
	jr s5
	# assert_exception block end
excp_return_label_2:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	csrrw s0, vsip, s1
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
	# assert_exception block end
excp_return_label_3:
	# V=1 mode: access vsie read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, 0
fault_label_4:
	csrrs t5, vsie, s2
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_4:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	csrrw s0, vsie, s1
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_5:
	# V=1 mode: access vstvec read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a0, 0
fault_label_6:
	csrrs s4, vstvec, a0
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
	# assert_exception block end
excp_return_label_6:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	csrrw a2, vstvec, s1
	li t1, failed_addr
	ld a1, 0(t1)
	jr a1
	# assert_exception block end
excp_return_label_7:
	# V=1 mode: access vsscratch read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t4, 0
fault_label_8:
	csrrs a5, vsscratch, t4
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
	# assert_exception block end
excp_return_label_8:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	csrrw a7, vsscratch, s1
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_9:
	# V=1 mode: access vsepc read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s10, 0
fault_label_10:
	csrrs t2, vsepc, s10
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_10:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	csrrw t6, vsepc, s1
	li s9, failed_addr
	ld s2, 0(s9)
	jr s2
	# assert_exception block end
excp_return_label_11:
	# V=1 mode: access vscause read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s11, 0
fault_label_12:
	csrrs t1, vscause, s11
	li s10, failed_addr
	ld a5, 0(s10)
	jr a5
	# assert_exception block end
excp_return_label_12:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	csrrw s5, vscause, s1
	li t1, failed_addr
	ld t6, 0(t1)
	jr t6
	# assert_exception block end
excp_return_label_13:
	# V=1 mode: access vstval read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t3, 0
fault_label_14:
	csrrs t2, vstval, t3
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
	# assert_exception block end
excp_return_label_14:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_15:
	csrrw s11, vstval, s1
	li s11, failed_addr
	ld s3, 0(s11)
	jr s3
	# assert_exception block end
excp_return_label_15:
	# V=1 mode: access vsatp read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t1, 0
fault_label_16:
	csrrs a7, vsatp, t1
	li a3, failed_addr
	ld a5, 0(a3)
	jr a5
	# assert_exception block end
excp_return_label_16:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_17:
	csrrw a0, vsatp, s1
	li a0, failed_addr
	ld s10, 0(a0)
	jr s10
	# assert_exception block end
excp_return_label_17:
	# V=1 mode: access hstatus read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a5, 0
fault_label_18:
	csrrs s10, hstatus, a5
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
	# assert_exception block end
excp_return_label_18:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_19, excp_return_label_19, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_19:
	csrrw s11, hstatus, s1
	li a1, failed_addr
	ld s3, 0(a1)
	jr s3
	# assert_exception block end
excp_return_label_19:
	# V=1 mode: access hedeleg read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, 0
fault_label_20:
	csrrs a7, hedeleg, t5
	li a5, failed_addr
	ld s10, 0(a5)
	jr s10
	# assert_exception block end
excp_return_label_20:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_21:
	csrrw t6, hedeleg, s1
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_21:
	# V=1 mode: access hideleg read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t3, 0
fault_label_22:
	csrrs s8, hideleg, t3
	li a5, failed_addr
	ld s8, 0(a5)
	jr s8
	# assert_exception block end
excp_return_label_22:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_23:
	csrrw t5, hideleg, s1
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_23:
	# V=1 mode: access hvip read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s3, 0
fault_label_24:
	csrrs t5, hvip, s3
	li t4, failed_addr
	ld t2, 0(t4)
	jr t2
	# assert_exception block end
excp_return_label_24:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_25:
	csrrw t5, hvip, s1
	li s4, failed_addr
	ld s11, 0(s4)
	jr s11
	# assert_exception block end
excp_return_label_25:
	# V=1 mode: access hip read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_26, excp_return_label_26, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s5, 0
fault_label_26:
	csrrs s5, hip, s5
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
	# assert_exception block end
excp_return_label_26:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_27, excp_return_label_27, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_27:
	csrrw a1, hip, s1
	li t3, failed_addr
	ld t4, 0(t3)
	jr t4
	# assert_exception block end
excp_return_label_27:
	# V=1 mode: access hie read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_28, excp_return_label_28, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, 0
fault_label_28:
	csrrs t2, hie, t5
	li s4, failed_addr
	ld t3, 0(s4)
	jr t3
	# assert_exception block end
excp_return_label_28:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_29, excp_return_label_29, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_29:
	csrrw a1, hie, s1
	li a3, failed_addr
	ld a5, 0(a3)
	jr a5
	# assert_exception block end
excp_return_label_29:
	# V=1 mode: access hgeie read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_30, excp_return_label_30, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s10, 0
fault_label_30:
	csrrs a5, hgeie, s10
	li s9, failed_addr
	ld t4, 0(s9)
	jr t4
	# assert_exception block end
excp_return_label_30:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_31, excp_return_label_31, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_31:
	csrrw t2, hgeie, s1
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_31:
	# V=1 mode: access henvcfg read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_32, excp_return_label_32, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s10, 0
fault_label_32:
	csrrs s6, henvcfg, s10
	li s3, failed_addr
	ld s6, 0(s3)
	jr s6
	# assert_exception block end
excp_return_label_32:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_33, excp_return_label_33, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_33:
	csrrw a4, henvcfg, s1
	li t6, failed_addr
	ld a4, 0(t6)
	jr a4
	# assert_exception block end
excp_return_label_33:
	# V=1 mode: access hcounteren read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_34, excp_return_label_34, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a2, 0
fault_label_34:
	csrrs s7, hcounteren, a2
	li s10, failed_addr
	ld t6, 0(s10)
	jr t6
	# assert_exception block end
excp_return_label_34:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_35, excp_return_label_35, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_35:
	csrrw s0, hcounteren, s1
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_35:
	# V=1 mode: access htimedelta read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_36, excp_return_label_36, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, 0
fault_label_36:
	csrrs s0, htimedelta, t5
	li a7, failed_addr
	ld a7, 0(a7)
	jr a7
	# assert_exception block end
excp_return_label_36:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_37, excp_return_label_37, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_37:
	csrrw a2, htimedelta, s1
	li s11, failed_addr
	ld a5, 0(s11)
	jr a5
	# assert_exception block end
excp_return_label_37:
	# V=1 mode: access htval read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_38, excp_return_label_38, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a3, 0
fault_label_38:
	csrrs a1, htval, a3
	li s2, failed_addr
	ld t6, 0(s2)
	jr t6
	# assert_exception block end
excp_return_label_38:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_39, excp_return_label_39, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_39:
	csrrw a1, htval, s1
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_39:
	# V=1 mode: access htinst read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_40, excp_return_label_40, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a0, 0
fault_label_40:
	csrrs s4, htinst, a0
	li a4, failed_addr
	ld s8, 0(a4)
	jr s8
	# assert_exception block end
excp_return_label_40:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_41, excp_return_label_41, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_41:
	csrrw s6, htinst, s1
	li s4, failed_addr
	ld a6, 0(s4)
	jr a6
	# assert_exception block end
excp_return_label_41:
	# V=1 mode: access hgatp read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_42, excp_return_label_42, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t4, 0
fault_label_42:
	csrrs s9, hgatp, t4
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
	# assert_exception block end
excp_return_label_42:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_43, excp_return_label_43, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_43:
	csrrw s3, hgatp, s1
	li s5, failed_addr
	ld t3, 0(s5)
	jr t3
	# assert_exception block end
excp_return_label_43:
	# V=1 mode: access hcontext read/write, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_44, excp_return_label_44, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a1, 0
fault_label_44:
	csrrs a3, hcontext, a1
	li a7, failed_addr
	ld s11, 0(a7)
	jr s11
	# assert_exception block end
excp_return_label_44:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_45, excp_return_label_45, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_45:
	csrrw a7, hcontext, s1
	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_45:
	# V=1 mode: read hgeip, expect VIRTUAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x16, fault_label_46, excp_return_label_46, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_46:
	;#csr_rw(hgeip, read, true, false)
	mv s1, t2
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_46:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, false)
SID_HEXCEP_05_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_07_vs_mode)
SID_HEXCEP_07_vs_mode:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, false)
	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, false)
	sd t2, 0x8(sp)
	li sp, SID_HEXCEP_07_vs_mode_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Setup: mcounteren.y=1, hcounteren.y=0 for all counters
	li t2, 4294967295
	;#csr_rw(mcounteren, set, false, false)
	li t2, 4294967295
	;#csr_rw(hcounteren, clear, false, false)
	# In VS-mode, access each counter CSR - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x16, fault_label_47, excp_return_label_47, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_47:
	csrr s9, cycle
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
	# assert_exception block end
excp_return_label_47:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_48, excp_return_label_48, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_48:
	csrr a5, time
	li a2, failed_addr
	ld s1, 0(a2)
	jr s1
	# assert_exception block end
excp_return_label_48:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_49, excp_return_label_49, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_49:
	csrr t1, instret
	li s7, failed_addr
	ld s9, 0(s7)
	jr s9
	# assert_exception block end
excp_return_label_49:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_50, excp_return_label_50, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_50:
	;#csr_rw(hpmcounter3, read, true, false)
	mv a2, t2
	li s9, failed_addr
	ld t2, 0(s9)
	jr t2
	# assert_exception block end
excp_return_label_50:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_51, excp_return_label_51, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_51:
	;#csr_rw(hpmcounter4, read, true, false)
	mv a4, t2
	li s6, failed_addr
	ld s10, 0(s6)
	jr s10
	# assert_exception block end
excp_return_label_51:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_52, excp_return_label_52, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_52:
	;#csr_rw(hpmcounter5, read, true, false)
	mv s0, t2
	li a0, failed_addr
	ld s11, 0(a0)
	jr s11
	# assert_exception block end
excp_return_label_52:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_53, excp_return_label_53, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_53:
	;#csr_rw(hpmcounter6, read, true, false)
	mv s1, t2
	li s9, failed_addr
	ld s1, 0(s9)
	jr s1
	# assert_exception block end
excp_return_label_53:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_54, excp_return_label_54, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_54:
	;#csr_rw(hpmcounter7, read, true, false)
	mv s10, t2
	li s1, failed_addr
	ld a3, 0(s1)
	jr a3
	# assert_exception block end
excp_return_label_54:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_55, excp_return_label_55, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_55:
	;#csr_rw(hpmcounter8, read, true, false)
	mv t3, t2
	li t2, failed_addr
	ld t1, 0(t2)
	jr t1
	# assert_exception block end
excp_return_label_55:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_56, excp_return_label_56, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_56:
	;#csr_rw(hpmcounter9, read, true, false)
	mv s9, t2
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_56:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_57, excp_return_label_57, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_57:
	;#csr_rw(hpmcounter10, read, true, false)
	mv s0, t2
	li t4, failed_addr
	ld a7, 0(t4)
	jr a7
	# assert_exception block end
excp_return_label_57:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_58, excp_return_label_58, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_58:
	;#csr_rw(hpmcounter11, read, true, false)
	mv s3, t2
	li s0, failed_addr
	ld a2, 0(s0)
	jr a2
	# assert_exception block end
excp_return_label_58:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_59, excp_return_label_59, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_59:
	;#csr_rw(hpmcounter12, read, true, false)
	mv s4, t2
	li a1, failed_addr
	ld a3, 0(a1)
	jr a3
	# assert_exception block end
excp_return_label_59:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_60, excp_return_label_60, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_60:
	;#csr_rw(hpmcounter13, read, true, false)
	mv t2, t2
	li t5, failed_addr
	ld t4, 0(t5)
	jr t4
	# assert_exception block end
excp_return_label_60:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_61, excp_return_label_61, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_61:
	;#csr_rw(hpmcounter14, read, true, false)
	mv s0, t2
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_61:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_62, excp_return_label_62, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_62:
	;#csr_rw(hpmcounter15, read, true, false)
	mv a7, t2
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
	# assert_exception block end
excp_return_label_62:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_63, excp_return_label_63, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_63:
	;#csr_rw(hpmcounter16, read, true, false)
	mv t6, t2
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_63:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_64, excp_return_label_64, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_64:
	;#csr_rw(hpmcounter17, read, true, false)
	mv s10, t2
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
	# assert_exception block end
excp_return_label_64:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_65, excp_return_label_65, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_65:
	;#csr_rw(hpmcounter18, read, true, false)
	mv t1, t2
	li a6, failed_addr
	ld a3, 0(a6)
	jr a3
	# assert_exception block end
excp_return_label_65:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_66, excp_return_label_66, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_66:
	;#csr_rw(hpmcounter19, read, true, false)
	mv s11, t2
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_66:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_67, excp_return_label_67, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_67:
	;#csr_rw(hpmcounter20, read, true, false)
	mv s5, t2
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_67:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_68, excp_return_label_68, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_68:
	;#csr_rw(hpmcounter21, read, true, false)
	mv s9, t2
	li s3, failed_addr
	ld a1, 0(s3)
	jr a1
	# assert_exception block end
excp_return_label_68:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_69, excp_return_label_69, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_69:
	;#csr_rw(hpmcounter22, read, true, false)
	mv s6, t2
	li a3, failed_addr
	ld s9, 0(a3)
	jr s9
	# assert_exception block end
excp_return_label_69:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_70, excp_return_label_70, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_70:
	;#csr_rw(hpmcounter23, read, true, false)
	mv s1, t2
	li s5, failed_addr
	ld s9, 0(s5)
	jr s9
	# assert_exception block end
excp_return_label_70:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_71, excp_return_label_71, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_71:
	;#csr_rw(hpmcounter24, read, true, false)
	mv a5, t2
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_71:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_72, excp_return_label_72, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_72:
	;#csr_rw(hpmcounter25, read, true, false)
	mv a5, t2
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_72:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_73, excp_return_label_73, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_73:
	;#csr_rw(hpmcounter26, read, true, false)
	mv t1, t2
	li t5, failed_addr
	ld t6, 0(t5)
	jr t6
	# assert_exception block end
excp_return_label_73:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_74, excp_return_label_74, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_74:
	;#csr_rw(hpmcounter27, read, true, false)
	mv s11, t2
	li s8, failed_addr
	ld s8, 0(s8)
	jr s8
	# assert_exception block end
excp_return_label_74:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_75, excp_return_label_75, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_75:
	;#csr_rw(hpmcounter28, read, true, false)
	mv t2, t2
	li t3, failed_addr
	ld s11, 0(t3)
	jr s11
	# assert_exception block end
excp_return_label_75:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_76, excp_return_label_76, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_76:
	;#csr_rw(hpmcounter29, read, true, false)
	mv a1, t2
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_76:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_77, excp_return_label_77, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_77:
	;#csr_rw(hpmcounter30, read, true, false)
	mv s5, t2
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_77:
	OS_SETUP_CHECK_EXCP 0x16, fault_label_78, excp_return_label_78, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_78:
	;#csr_rw(hpmcounter31, read, true, false)
	mv t5, t2
	li s2, failed_addr
	ld s10, 0(s2)
	jr s10
	# assert_exception block end
excp_return_label_78:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, false)
	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, false)
SID_HEXCEP_07_vs_mode_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_08)
SID_HEXCEP_08:
	li sp, SID_HEXCEP_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Attempt HLV in virtualized mode - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x16, fault_label_79, excp_return_label_79, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a1, mem0
fault_label_79:
	hlv.b s1, (a1)
	li s8, failed_addr
	ld a1, 0(s8)
	jr a1
	# assert_exception block end
excp_return_label_79:
	# Attempt HLVX in virtualized mode - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x16, fault_label_80, excp_return_label_80, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s0, mem0
fault_label_80:
	hlvx.wu a6, (s0)
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
	# assert_exception block end
excp_return_label_80:
	# Attempt HSV in virtualized mode - should cause virtual instruction exception
	li a0, 0xab
	OS_SETUP_CHECK_EXCP 0x16, fault_label_81, excp_return_label_81, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, mem0
fault_label_81:
	hsv.w a0, (s2)
	li a0, failed_addr
	ld s5, 0(a0)
	jr s5
	# assert_exception block end
excp_return_label_81:
	# Attempt HFENCE.VVMA in virtualized mode - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x16, fault_label_82, excp_return_label_82, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a5, mem0
	li s6, 0
	add t1, a5, s6
fault_label_82:
	hfence.vvma t1, zero
	li s0, failed_addr
	ld s5, 0(s0)
	jr s5
	# assert_exception block end
excp_return_label_82:
	# Attempt HFENCE.GVMA in virtualized mode - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x16, fault_label_83, excp_return_label_83, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s8, mem0
	li a1, 0
	add t3, s8, a1
fault_label_83:
	hfence.gvma t3, zero
	li a0, failed_addr
	ld s0, 0(a0)
	jr s0
	# assert_exception block end
excp_return_label_83:
SID_HEXCEP_08_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_09_mret_in_vs_vu)
SID_HEXCEP_09_mret_in_vs_vu:
	li sp, SID_HEXCEP_09_mret_in_vs_vu_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MRET in VS/VU mode causes illegal instruction exception (not HS-qualified)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_84, excp_return_label_84, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_84:
	mret
	li s2, failed_addr
	ld a2, 0(s2)
	jr a2
	# assert_exception block end
excp_return_label_84:
SID_HEXCEP_09_mret_in_vs_vu_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_09_sret_vtsr1_vs)
SID_HEXCEP_09_sret_vtsr1_vs:
	li sp, tp_csr_storage
	;#csr_rw(hstatus, read, false, false)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_09_sret_vtsr1_vs_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set hstatus.VTSR=1
	li t2, 4194304
	;#csr_rw(hstatus, set, false, false)
	# SRET in VS-mode with VTSR=1 causes virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x16, fault_label_85, excp_return_label_85, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_85:
	sret
	li t3, failed_addr
	ld t2, 0(t3)
	jr t2
	# assert_exception block end
excp_return_label_85:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hstatus, write, false, false)
SID_HEXCEP_09_sret_vtsr1_vs_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_09_sfence_vma_vtvm1_vs)
SID_HEXCEP_09_sfence_vma_vtvm1_vs:
	li sp, tp_csr_storage
	;#csr_rw(hstatus, read, false, false)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set hstatus.VTVM=1
	li t2, 1048576
	;#csr_rw(hstatus, set, false, false)
	# SFENCE.VMA in VS-mode with VTVM=1 causes virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x16, fault_label_86, excp_return_label_86, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_86:
	sfence.vma zero, zero
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_86:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hstatus, write, false, false)
SID_HEXCEP_09_sfence_vma_vtvm1_vs_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_09_sinval_vma_vtvm1_vs)
SID_HEXCEP_09_sinval_vma_vtvm1_vs:
	li sp, tp_csr_storage
	;#csr_rw(hstatus, read, false, false)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set hstatus.VTVM=1
	li t2, 1048576
	;#csr_rw(hstatus, set, false, false)
	# SINVAL.VMA in VS-mode with VTVM=1 causes virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x16, fault_label_87, excp_return_label_87, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, mem1
	li s4, 0
	add s5, t2, s4
fault_label_87:
	sinval.vma s5, zero
	li s9, failed_addr
	ld t1, 0(s9)
	jr t1
	# assert_exception block end
excp_return_label_87:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hstatus, write, false, false)
SID_HEXCEP_09_sinval_vma_vtvm1_vs_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_09_hinval_vvma_vs)
SID_HEXCEP_09_hinval_vvma_vs:
	li sp, SID_HEXCEP_09_hinval_vvma_vs_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# HINVAL.VVMA in VS-mode causes virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x16, fault_label_88, excp_return_label_88, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_88:
	hinval.vvma x0, x0
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_88:
SID_HEXCEP_09_hinval_vvma_vs_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_09_hinval_gvma_vs)
SID_HEXCEP_09_hinval_gvma_vs:
	li sp, SID_HEXCEP_09_hinval_gvma_vs_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# HINVAL.GVMA in VS-mode causes virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x16, fault_label_89, excp_return_label_89, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_89:
	hinval.gvma x0, x0
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_89:
SID_HEXCEP_09_hinval_gvma_vs_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_10)
SID_HEXCEP_10:
	li sp, tp_csr_storage
	;#csr_rw(hstatus, read, false, false)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_10_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set hstatus.VTVM=1 (bit 20) to trap satp accesses in VS-mode
	li t2, 1048576
	;#csr_rw(hstatus, set, false, false)
	# Access satp CSR in VS-mode - should cause virtual instruction exception
	li s8, 0
	OS_SETUP_CHECK_EXCP 0x16, fault_label_90, excp_return_label_90, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_90:
	csrrs s10, satp, s8
	li a2, failed_addr
	ld a0, 0(a2)
	jr a0
	# assert_exception block end
excp_return_label_90:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hstatus, write, false, false)
SID_HEXCEP_10_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_11)
SID_HEXCEP_11:
	li sp, SID_HEXCEP_11_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# V=1 mode: access high-half CSRs (RV32 only), expect ILLEGAL_INSTRUCTION
	# Access htimedeltah - high-half CSR illegal on RV64
	OS_SETUP_CHECK_EXCP 0x2, fault_label_91, excp_return_label_91, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s11, 0
fault_label_91:
	csrrs s11, htimedeltah, s11
	li s5, failed_addr
	ld a7, 0(s5)
	jr a7
	# assert_exception block end
excp_return_label_91:
	# Access henvcfgh - high-half CSR illegal on RV64
	OS_SETUP_CHECK_EXCP 0x2, fault_label_92, excp_return_label_92, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t1, 0
fault_label_92:
	csrrs s9, henvcfgh, t1
	li a0, failed_addr
	ld t6, 0(a0)
	jr t6
	# assert_exception block end
excp_return_label_92:
	# Access cycleh - high-half CSR illegal on RV64
	OS_SETUP_CHECK_EXCP 0x2, fault_label_93, excp_return_label_93, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s4, 0
fault_label_93:
	csrrs s2, cycleh, s4
	li a0, failed_addr
	ld s7, 0(a0)
	jr s7
	# assert_exception block end
excp_return_label_93:
	# Access timeh - high-half CSR illegal on RV64
	OS_SETUP_CHECK_EXCP 0x2, fault_label_94, excp_return_label_94, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s3, 0
fault_label_94:
	csrrs t2, timeh, s3
	li s2, failed_addr
	ld t5, 0(s2)
	jr t5
	# assert_exception block end
excp_return_label_94:
	# Access instreth - high-half CSR illegal on RV64
	OS_SETUP_CHECK_EXCP 0x2, fault_label_95, excp_return_label_95, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a2, 0
fault_label_95:
	csrrs a3, instreth, a2
	li t3, failed_addr
	ld s6, 0(t3)
	jr s6
	# assert_exception block end
excp_return_label_95:
	# Access hpmcounter3h - high-half CSR illegal on RV64
	OS_SETUP_CHECK_EXCP 0x2, fault_label_96, excp_return_label_96, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t3, 0
fault_label_96:
	csrrs t5, hpmcounter3h, t3
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
	# assert_exception block end
excp_return_label_96:
SID_HEXCEP_11_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_16_fs0_both)
SID_HEXCEP_16_fs0_both:
	li sp, tp_csr_storage
	;#csr_rw(sstatus, read, false, false)
	sd t2, 0(sp)
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_HEXCEP_16_fs0_both_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Clear HS-level sstatus.FS=0 (must be done in HS-mode)
	li s5, 0x6000
	# Privilege mode switch (block 0)
    li s11, 0
    li x31, 0xf0001002
    ecall
	# Clear vsstatus.FS=0 (VS-level)
	li t2, 24576
	csrrc s4, sstatus, t2
	# Execute FP instruction with FS=0 at both levels, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_97, excp_return_label_97, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_97:
	fadd.d f0, f0, f0
	li t4, failed_addr
	ld s8, 0(t4)
	jr s8
	# assert_exception block end
excp_return_label_97:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sstatus, write, false, false)
	ld t2, 0x8(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_16_fs0_both_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_16_vsstatus_fs0)
SID_HEXCEP_16_vsstatus_fs0:
	li sp, tp_csr_storage
	;#csr_rw(sstatus, read, false, false)
	sd t2, 0(sp)
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_HEXCEP_16_vsstatus_fs0_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set HS-level sstatus.FS=1 (must be done in HS-mode)
	li s5, 0x2000
	# Privilege mode switch (block 1)
    li s11, 1
    li x31, 0xf0001002
    ecall
	# Clear vsstatus.FS=0 (VS-level disabled)
	li t2, 24576
	csrrc s11, sstatus, t2
	# Execute FP instruction with vsstatus.FS=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_98, excp_return_label_98, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_98:
	fadd.d f0, f0, f0
	li t4, failed_addr
	ld s1, 0(t4)
	jr s1
	# assert_exception block end
excp_return_label_98:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sstatus, write, false, false)
	ld t2, 0x8(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_16_vsstatus_fs0_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_16_sstatus_fs0)
SID_HEXCEP_16_sstatus_fs0:
	li sp, tp_csr_storage
	;#csr_rw(sstatus, read, false, false)
	sd t2, 0(sp)
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_HEXCEP_16_sstatus_fs0_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Clear HS-level sstatus.FS=0 (must be done in HS-mode)
	li t2, 0x6000
	# Privilege mode switch (block 2)
    li s11, 2
    li x31, 0xf0001002
    ecall
	# Set vsstatus.FS=1 (VS-level enabled)
	li t2, 8192
	csrrs t1, sstatus, t2
	# Execute FP instruction with sstatus.FS=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_99, excp_return_label_99, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_99:
	fadd.d f0, f0, f0
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_99:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sstatus, write, false, false)
	ld t2, 0x8(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_16_sstatus_fs0_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_17_vs0_both)
SID_HEXCEP_17_vs0_both:
	li sp, tp_csr_storage
	;#csr_rw(sstatus, read, false, false)
	sd t2, 0(sp)
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_HEXCEP_17_vs0_both_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Clear HS-level sstatus.VS=0 (must be done in HS-mode)
	li s1, 0x600
	# Privilege mode switch (block 3)
    li s11, 3
    li x31, 0xf0001002
    ecall
	# Clear vsstatus.VS=0 (VS-level)
	li t2, 1536
	csrrc a4, sstatus, t2
	# Execute vector instruction with VS=0 at both levels, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_100, excp_return_label_100, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_100:
	vsetivli x0, 1, e32, m1
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_100:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sstatus, write, false, false)
	ld t2, 0x8(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_17_vs0_both_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_17_vsstatus_vs0)
SID_HEXCEP_17_vsstatus_vs0:
	li sp, tp_csr_storage
	;#csr_rw(sstatus, read, false, false)
	sd t2, 0(sp)
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_HEXCEP_17_vsstatus_vs0_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set HS-level sstatus.VS=1 (must be done in HS-mode)
	li a0, 0x200
	# Privilege mode switch (block 4)
    li s11, 4
    li x31, 0xf0001002
    ecall
	# Clear vsstatus.VS=0 (VS-level disabled)
	li t2, 1536
	csrrc s3, sstatus, t2
	# Execute vector instruction with vsstatus.VS=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_101, excp_return_label_101, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_101:
	vsetivli x0, 1, e32, m1
	li s5, failed_addr
	ld s9, 0(s5)
	jr s9
	# assert_exception block end
excp_return_label_101:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sstatus, write, false, false)
	ld t2, 0x8(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_17_vsstatus_vs0_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_17_sstatus_vs0)
SID_HEXCEP_17_sstatus_vs0:
	li sp, tp_csr_storage
	;#csr_rw(sstatus, read, false, false)
	sd t2, 0(sp)
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_HEXCEP_17_sstatus_vs0_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Clear HS-level sstatus.VS=0 (must be done in HS-mode)
	li s5, 0x600
	# Privilege mode switch (block 5)
    li s11, 5
    li x31, 0xf0001002
    ecall
	# Set vsstatus.VS=1 (VS-level enabled)
	li t2, 512
	csrrs a0, sstatus, t2
	# Execute vector instruction with sstatus.VS=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_102, excp_return_label_102, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_102:
	vsetivli x0, 1, e32, m1
	li s3, failed_addr
	ld s6, 0(s3)
	jr s6
	# assert_exception block end
excp_return_label_102:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sstatus, write, false, false)
	ld t2, 0x8(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_17_sstatus_vs0_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_19_misaligned_amo)
SID_HEXCEP_19_misaligned_amo:
	li sp, tp_csr_storage
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_19_misaligned_amo_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Misaligned amoadd.w with offset=1 causes STORE_AMO_ACCESS_FAULT
	OS_SETUP_CHECK_EXCP 0x7, fault_label_103, excp_return_label_103, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s1, mem2
	li a5, 0x1
	add a0, s1, a5
	li a1, 0x1
fault_label_103:
	amoadd.w s0, a1, (a0)
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_103:
	# Misaligned amoswap.w with offset=3 causes STORE_AMO_ACCESS_FAULT
	OS_SETUP_CHECK_EXCP 0x7, fault_label_104, excp_return_label_104, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a5, mem2
	li s8, 0x3
	add a7, a5, s8
	li s5, 0x3
fault_label_104:
	amoswap.w a3, s5, (a7)
	li t1, failed_addr
	ld t5, 0(t1)
	jr t5
	# assert_exception block end
excp_return_label_104:
	# Misaligned amoadd.d with offset=4 causes STORE_AMO_ACCESS_FAULT
	OS_SETUP_CHECK_EXCP 0x7, fault_label_105, excp_return_label_105, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a7, mem2
	li s1, 0x4
	add a7, a7, s1
	li a2, 0x4
fault_label_105:
	amoadd.d s1, a2, (a7)
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
	# assert_exception block end
excp_return_label_105:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_19_misaligned_amo_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_19_misaligned_lr)
SID_HEXCEP_19_misaligned_lr:
	li sp, tp_csr_storage
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_19_misaligned_lr_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Misaligned lr.w with offset=1 causes LOAD_ACCESS_FAULT
	OS_SETUP_CHECK_EXCP 0x5, fault_label_106, excp_return_label_106, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a5, mem3
	li s2, 0x1
	add s6, a5, s2
fault_label_106:
	lr.w a0, (s6)
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_106:
	# Misaligned lr.d with offset=4 causes LOAD_ACCESS_FAULT
	OS_SETUP_CHECK_EXCP 0x5, fault_label_107, excp_return_label_107, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a6, mem3
	li s11, 0x4
	add t4, a6, s11
fault_label_107:
	lr.d t3, (t4)
	li s11, failed_addr
	ld t4, 0(s11)
	jr t4
	# assert_exception block end
excp_return_label_107:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_19_misaligned_lr_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_19_misaligned_sc)
SID_HEXCEP_19_misaligned_sc:
	li sp, tp_csr_storage
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_19_misaligned_sc_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Misaligned sc.w with offset=1 causes STORE_AMO_ACCESS_FAULT
	OS_SETUP_CHECK_EXCP 0x7, fault_label_108, excp_return_label_108, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t6, mem4
	li s3, 0x1
	add s6, t6, s3
	li t4, 0x1
fault_label_108:
	sc.w a5, t4, (s6)
	li s4, failed_addr
	ld a3, 0(s4)
	jr a3
	# assert_exception block end
excp_return_label_108:
	# Misaligned sc.d with offset=4 causes STORE_AMO_ACCESS_FAULT
	OS_SETUP_CHECK_EXCP 0x7, fault_label_109, excp_return_label_109, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a1, mem4
	li s11, 0x4
	add s6, a1, s11
	li a7, 0x4
fault_label_109:
	sc.d s3, a7, (s6)
	li s10, failed_addr
	ld s6, 0(s10)
	jr s6
	# assert_exception block end
excp_return_label_109:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_19_misaligned_sc_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_19_misaligned_amo_delegated)
SID_HEXCEP_19_misaligned_amo_delegated:
	li sp, tp_csr_storage
	;#csr_rw(hedeleg, read, false, false)
	sd t2, 0(sp)
	;#csr_rw(medeleg, read, false, false)
	sd t2, 0x8(sp)
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_HEXCEP_19_misaligned_amo_delegated_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Delegate STORE_AMO_ACCESS_FAULT (cause 7) to VS-mode
	li t2, 128
	;#csr_rw(medeleg, set, false, false)
	li t2, 128
	;#csr_rw(hedeleg, set, false, false)
	# Misaligned amoadd.w - delegated to VS-mode handler
	OS_SETUP_CHECK_EXCP 0x7, fault_label_110, excp_return_label_110, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t3, mem5
	li t5, 0x1
	add s1, t3, t5
	li s10, 0x1
fault_label_110:
	amoadd.w t5, s10, (s1)
	li s11, failed_addr
	ld a1, 0(s11)
	jr a1
	# assert_exception block end
excp_return_label_110:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hedeleg, write, false, false)
	ld t2, 0x8(sp)
	;#csr_rw(medeleg, write, false, false)
	ld t2, 0x10(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_19_misaligned_amo_delegated_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_19_misaligned_lr_delegated)
SID_HEXCEP_19_misaligned_lr_delegated:
	li sp, tp_csr_storage
	;#csr_rw(hedeleg, read, false, false)
	sd t2, 0(sp)
	;#csr_rw(medeleg, read, false, false)
	sd t2, 0x8(sp)
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_HEXCEP_19_misaligned_lr_delegated_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Delegate LOAD_ACCESS_FAULT (cause 5) to VS-mode
	li t2, 32
	;#csr_rw(medeleg, set, false, false)
	li t2, 32
	;#csr_rw(hedeleg, set, false, false)
	# Misaligned lr.w - delegated to VS-mode handler
	OS_SETUP_CHECK_EXCP 0x5, fault_label_111, excp_return_label_111, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s1, mem6
	li s3, 0x1
	add a3, s1, s3
fault_label_111:
	lr.w s11, (a3)
	li a2, failed_addr
	ld a2, 0(a2)
	jr a2
	# assert_exception block end
excp_return_label_111:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hedeleg, write, false, false)
	ld t2, 0x8(sp)
	;#csr_rw(medeleg, write, false, false)
	ld t2, 0x10(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_19_misaligned_lr_delegated_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_19_misaligned_sc_delegated)
SID_HEXCEP_19_misaligned_sc_delegated:
	li sp, tp_csr_storage
	;#csr_rw(hedeleg, read, false, false)
	sd t2, 0(sp)
	;#csr_rw(medeleg, read, false, false)
	sd t2, 0x8(sp)
	;#csr_rw(sstatus, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_HEXCEP_19_misaligned_sc_delegated_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Delegate STORE_AMO_ACCESS_FAULT (cause 7) to VS-mode
	li t2, 128
	;#csr_rw(medeleg, set, false, false)
	li t2, 128
	;#csr_rw(hedeleg, set, false, false)
	# Misaligned sc.w - delegated to VS-mode handler
	OS_SETUP_CHECK_EXCP 0x7, fault_label_112, excp_return_label_112, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s4, mem7
	li s1, 0x1
	add s1, s4, s1
	li a0, 0x1
fault_label_112:
	sc.w t6, a0, (s1)
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_112:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hedeleg, write, false, false)
	ld t2, 0x8(sp)
	;#csr_rw(medeleg, write, false, false)
	ld t2, 0x10(sp)
	;#csr_rw(sstatus, write, false, true)
SID_HEXCEP_19_misaligned_sc_delegated_passed:
	;#test_passed()

test_cleanup:
	;#test_passed()
local_test_failed:
	;#test_failed()

.section .code_super_0, "ax"
# Supervisor code jump table - block index in s11
li x31, 0
beq s11, x31, supervisor_block_0_4bdfb98f
li x31, 1
beq s11, x31, supervisor_block_1_4bdfb98f
li x31, 2
beq s11, x31, supervisor_block_2_4bdfb98f
li x31, 3
beq s11, x31, supervisor_block_3_4bdfb98f
li x31, 4
beq s11, x31, supervisor_block_4_4bdfb98f
li x31, 5
beq s11, x31, supervisor_block_5_4bdfb98f
j end_supervisor_code_4bdfb98f

supervisor_block_0_4bdfb98f:
    csrrc t2, sstatus, s5
    j end_supervisor_code_4bdfb98f

supervisor_block_1_4bdfb98f:
    csrrs a2, sstatus, s5
    j end_supervisor_code_4bdfb98f

supervisor_block_2_4bdfb98f:
    csrrc a6, sstatus, t2
    j end_supervisor_code_4bdfb98f

supervisor_block_3_4bdfb98f:
    csrrc a4, sstatus, s1
    j end_supervisor_code_4bdfb98f

supervisor_block_4_4bdfb98f:
    csrrs s9, sstatus, a0
    j end_supervisor_code_4bdfb98f

supervisor_block_5_4bdfb98f:
    csrrc a0, sstatus, s5
    j end_supervisor_code_4bdfb98f

end_supervisor_code_4bdfb98f:
    li x31, 0xf0001004
    ecall

.section .data
;#random_addr(name=mem0,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1, v_leaf_gleaf=1, r_leaf_gleaf=1, w_leaf_gleaf=1, a_leaf_gleaf=1, d_leaf_gleaf=1)
;#init_memory @mem0
.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem1
.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem2
.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem3
.dword 0xc001c0de

;#random_addr(name=mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem4
.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem5
.dword 0xc001c0de

;#random_addr(name=mem6,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem6_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem6
.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem7_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem7
.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_05_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_05_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_05_stack, phys_name=SID_HEXCEP_05_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_05_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_07_vs_mode_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_07_vs_mode_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_07_vs_mode_stack, phys_name=SID_HEXCEP_07_vs_mode_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_07_vs_mode_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_08_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_08_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_08_stack, phys_name=SID_HEXCEP_08_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_08_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_09_mret_in_vs_vu_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_09_mret_in_vs_vu_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_09_mret_in_vs_vu_stack, phys_name=SID_HEXCEP_09_mret_in_vs_vu_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_09_mret_in_vs_vu_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_09_sret_vtsr1_vs_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_09_sret_vtsr1_vs_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_09_sret_vtsr1_vs_stack, phys_name=SID_HEXCEP_09_sret_vtsr1_vs_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_09_sret_vtsr1_vs_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack, phys_name=SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_09_sfence_vma_vtvm1_vs_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack, phys_name=SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_09_sinval_vma_vtvm1_vs_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_09_hinval_vvma_vs_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_09_hinval_vvma_vs_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_09_hinval_vvma_vs_stack, phys_name=SID_HEXCEP_09_hinval_vvma_vs_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_09_hinval_vvma_vs_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_09_hinval_gvma_vs_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_09_hinval_gvma_vs_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_09_hinval_gvma_vs_stack, phys_name=SID_HEXCEP_09_hinval_gvma_vs_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_09_hinval_gvma_vs_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_10_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_10_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_10_stack, phys_name=SID_HEXCEP_10_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_10_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_11_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_11_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_11_stack, phys_name=SID_HEXCEP_11_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_11_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_16_fs0_both_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_16_fs0_both_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_16_fs0_both_stack, phys_name=SID_HEXCEP_16_fs0_both_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_16_fs0_both_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_16_vsstatus_fs0_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_16_vsstatus_fs0_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_16_vsstatus_fs0_stack, phys_name=SID_HEXCEP_16_vsstatus_fs0_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_16_vsstatus_fs0_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_16_sstatus_fs0_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_16_sstatus_fs0_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_16_sstatus_fs0_stack, phys_name=SID_HEXCEP_16_sstatus_fs0_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_16_sstatus_fs0_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_17_vs0_both_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_17_vs0_both_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_17_vs0_both_stack, phys_name=SID_HEXCEP_17_vs0_both_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_17_vs0_both_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_17_vsstatus_vs0_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_17_vsstatus_vs0_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_17_vsstatus_vs0_stack, phys_name=SID_HEXCEP_17_vsstatus_vs0_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_17_vsstatus_vs0_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_17_sstatus_vs0_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_17_sstatus_vs0_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_17_sstatus_vs0_stack, phys_name=SID_HEXCEP_17_sstatus_vs0_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_17_sstatus_vs0_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_19_misaligned_amo_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_19_misaligned_amo_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_amo_stack, phys_name=SID_HEXCEP_19_misaligned_amo_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_19_misaligned_amo_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_19_misaligned_lr_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_19_misaligned_lr_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_lr_stack, phys_name=SID_HEXCEP_19_misaligned_lr_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_19_misaligned_lr_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_19_misaligned_sc_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_19_misaligned_sc_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_sc_stack, phys_name=SID_HEXCEP_19_misaligned_sc_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_19_misaligned_sc_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_19_misaligned_amo_delegated_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_19_misaligned_amo_delegated_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_amo_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_amo_delegated_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_19_misaligned_amo_delegated_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_19_misaligned_lr_delegated_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_19_misaligned_lr_delegated_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_lr_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_lr_delegated_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_19_misaligned_lr_delegated_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_19_misaligned_sc_delegated_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_19_misaligned_sc_delegated_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_19_misaligned_sc_delegated_stack, phys_name=SID_HEXCEP_19_misaligned_sc_delegated_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_19_misaligned_sc_delegated_stack
.dword 0xc001c0de
