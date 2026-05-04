;#test.name       hypervisor_exceptions
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      hypervisor_exceptions
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: hypervisor_exceptions

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_12)
SID_HEXCEP_12:
	li sp, SID_HEXCEP_12_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# HU-mode (non-virtualized U-mode): access VS-CSRs, expect ILLEGAL_INSTRUCTION
	# Access vsstatus from HU-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, 0
fault_label_0:
	csrrs s1, vsstatus, t2
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_0:
	# Access vsip from HU-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a4, 0
fault_label_1:
	csrrs a0, vsip, a4
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_1:
	# Access vsie from HU-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s3, 0
fault_label_2:
	csrrs s2, vsie, s3
	li s1, failed_addr
	ld a6, 0(s1)
	jr a6
	# assert_exception block end
excp_return_label_2:
	# Access vstvec from HU-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a4, 0
fault_label_3:
	csrrs s0, vstvec, a4
	li a0, failed_addr
	ld s1, 0(a0)
	jr s1
	# assert_exception block end
excp_return_label_3:
	# Access vsscratch from HU-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a7, 0
fault_label_4:
	csrrs t4, vsscratch, a7
	li a4, failed_addr
	ld t3, 0(a4)
	jr t3
	# assert_exception block end
excp_return_label_4:
	# Access vsepc from HU-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t3, 0
fault_label_5:
	csrrs t4, vsepc, t3
	li s3, failed_addr
	ld s11, 0(s3)
	jr s11
	# assert_exception block end
excp_return_label_5:
	# Access vscause from HU-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s0, 0
fault_label_6:
	csrrs t2, vscause, s0
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_6:
	# Access vstval from HU-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a1, 0
fault_label_7:
	csrrs t1, vstval, a1
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
	# assert_exception block end
excp_return_label_7:
	# Access vsatp from HU-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s4, 0
fault_label_8:
	csrrs a7, vsatp, s4
	li t4, failed_addr
	ld t2, 0(t4)
	jr t2
	# assert_exception block end
excp_return_label_8:
SID_HEXCEP_12_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_13)
SID_HEXCEP_13:
	li sp, tp_csr_storage
	;#csr_rw(hstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_13_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Ensure hstatus.HU=0 to disallow H-instructions in U-mode
	li t2, 512
	;#csr_rw(hstatus, clear, false, false)
	# U-mode HLV.B with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a2, mem0
fault_label_9:
	hlv.b s9, (a2)
	li a3, failed_addr
	ld a6, 0(a3)
	jr a6
	# assert_exception block end
excp_return_label_9:
	# U-mode HLV.BU with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a7, mem0
fault_label_10:
	hlv.bu t1, (a7)
	li a5, failed_addr
	ld s7, 0(a5)
	jr s7
	# assert_exception block end
excp_return_label_10:
	# U-mode HLV.H with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, mem0
fault_label_11:
	hlv.h a4, (s2)
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
	# assert_exception block end
excp_return_label_11:
	# U-mode HLV.HU with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t3, mem0
fault_label_12:
	hlv.hu a6, (t3)
	li a4, failed_addr
	ld t1, 0(a4)
	jr t1
	# assert_exception block end
excp_return_label_12:
	# U-mode HLV.W with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s4, mem0
fault_label_13:
	hlv.w a3, (s4)
	li a3, failed_addr
	ld t2, 0(a3)
	jr t2
	# assert_exception block end
excp_return_label_13:
	# U-mode HLV.WU with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s4, mem0
fault_label_14:
	hlv.wu s2, (s4)
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_14:
	# U-mode HLV.D with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, mem0
fault_label_15:
	hlv.d a6, (t5)
	li t6, failed_addr
	ld a7, 0(t6)
	jr a7
	# assert_exception block end
excp_return_label_15:
	# U-mode HLVX.HU with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s9, mem0
fault_label_16:
	hlvx.hu s5, (s9)
	li s9, failed_addr
	ld a2, 0(s9)
	jr a2
	# assert_exception block end
excp_return_label_16:
	# U-mode HLVX.WU with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a7, mem0
fault_label_17:
	hlvx.wu s9, (a7)
	li t1, failed_addr
	ld t6, 0(t1)
	jr t6
	# assert_exception block end
excp_return_label_17:
	li t5, 0x12345678
	# U-mode HSV.B with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s10, mem0
fault_label_18:
	hsv.b t5, (s10)
	li s2, failed_addr
	ld t4, 0(s2)
	jr t4
	# assert_exception block end
excp_return_label_18:
	# U-mode HSV.H with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_19, excp_return_label_19, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a6, mem0
fault_label_19:
	hsv.h t5, (a6)
	li a2, failed_addr
	ld a7, 0(a2)
	jr a7
	# assert_exception block end
excp_return_label_19:
	# U-mode HSV.W with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a4, mem0
fault_label_20:
	hsv.w t5, (a4)
	li a6, failed_addr
	ld s5, 0(a6)
	jr s5
	# assert_exception block end
excp_return_label_20:
	# U-mode HSV.D with hstatus.HU=0, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s9, mem0
fault_label_21:
	hsv.d t5, (s9)
	li a3, failed_addr
	ld a2, 0(a3)
	jr a2
	# assert_exception block end
excp_return_label_21:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hstatus, write, false, true)
SID_HEXCEP_13_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_14_hu_mode)
SID_HEXCEP_14_hu_mode:
	li sp, SID_HEXCEP_14_hu_mode_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# HU-mode HFENCE.VVMA, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t4, mem1
	li s7, 0
	add t6, t4, s7
fault_label_22:
	hfence.vvma t6, zero
	li s4, failed_addr
	ld s6, 0(s4)
	jr s6
	# assert_exception block end
excp_return_label_22:
	# HU-mode HFENCE.GVMA, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t4, mem1
	li a3, 0
	add a7, t4, a3
fault_label_23:
	hfence.gvma a7, zero
	li s6, failed_addr
	ld a1, 0(s6)
	jr a1
	# assert_exception block end
excp_return_label_23:
	# HU-mode HINVAL.VVMA, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_24:
	hinval.vvma x0, x0
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
	# assert_exception block end
excp_return_label_24:
	# HU-mode HINVAL.GVMA, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_25:
	hinval.gvma x0, x0
	li t6, failed_addr
	ld t3, 0(t6)
	jr t3
	# assert_exception block end
excp_return_label_25:
SID_HEXCEP_14_hu_mode_passed:
	;#test_passed()

test_cleanup:
	;#test_passed()
local_test_failed:
	;#test_failed()

.section .data
;#random_addr(name=mem0,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem0
.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem1
.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_12_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_12_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_12_stack, phys_name=SID_HEXCEP_12_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_12_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_13_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_13_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_13_stack, phys_name=SID_HEXCEP_13_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_13_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_14_hu_mode_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_14_hu_mode_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_14_hu_mode_stack, phys_name=SID_HEXCEP_14_hu_mode_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_14_hu_mode_stack
.dword 0xc001c0de
