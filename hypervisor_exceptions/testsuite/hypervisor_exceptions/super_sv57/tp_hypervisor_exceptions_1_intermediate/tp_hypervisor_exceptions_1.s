;#test.name       hypervisor_exceptions
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
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

;#discrete_test(test=SID_HEXCEP_14_hs_mode_tvm1)
SID_HEXCEP_14_hs_mode_tvm1:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_14_hs_mode_tvm1_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mstatus.TVM=1 to cause illegal instruction on GVMA fences
	li t2, 1048576
	;#csr_rw(mstatus, set, false, false)
	# HS-mode HFENCE.GVMA with mstatus.TVM=1, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, mem0
	li t6, 0
	add s1, t2, t6
fault_label_0:
	hfence.gvma s1, zero
	li a6, failed_addr
	ld a1, 0(a6)
	jr a1
	# assert_exception block end
excp_return_label_0:
	# HS-mode SINVAL.VMA with mstatus.TVM=1, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s9, mem0
	li a1, 0
	add s8, s9, a1
fault_label_1:
	sinval.vma s8, zero
	li s11, failed_addr
	ld s1, 0(s11)
	jr s1
	# assert_exception block end
excp_return_label_1:
	# HS-mode HINVAL.GVMA with mstatus.TVM=1, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	hinval.gvma x0, x0
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
	# assert_exception block end
excp_return_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
SID_HEXCEP_14_hs_mode_tvm1_passed:
	;#test_passed()

;#discrete_test(test=SID_HEXCEP_15)
SID_HEXCEP_15:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_HEXCEP_15_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mstatus.TVM=1 to cause illegal instruction on hgatp access
	li t2, 1048576
	;#csr_rw(mstatus, set, false, false)
	li a4, 0
	# Read hgatp in HS-mode with TVM=1, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	csrrs a0, hgatp, a4
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_3:
	# Write hgatp in HS-mode with TVM=1, expect ILLEGAL_INSTRUCTION
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	csrrw s6, hgatp, a4
	li s9, failed_addr
	ld t2, 0(s9)
	jr t2
	# assert_exception block end
excp_return_label_4:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
SID_HEXCEP_15_passed:
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

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_14_hs_mode_tvm1_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_14_hs_mode_tvm1_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_14_hs_mode_tvm1_stack, phys_name=SID_HEXCEP_14_hs_mode_tvm1_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_14_hs_mode_tvm1_stack
.dword 0xc001c0de

;#random_addr(name=SID_HEXCEP_15_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_HEXCEP_15_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_HEXCEP_15_stack, phys_name=SID_HEXCEP_15_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_HEXCEP_15_stack
.dword 0xc001c0de
