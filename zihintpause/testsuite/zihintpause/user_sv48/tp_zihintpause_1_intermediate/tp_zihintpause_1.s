;#test.name       zihintpause
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zihintpause
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zihintpause

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_ZHP_01)
SID_ZHP_01:
	li sp, SID_ZHP_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Setup exception before pause
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	unimp
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_0:
	pause
SID_ZHP_01_passed:
	;#test_passed()

;#discrete_test(test=SID_ZHP_03)
SID_ZHP_03:
	li sp, SID_ZHP_03_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR/SC loop with pause - voids forward progress guarantee
	li a4, mem0
	li s1, 0
	add s7, a4, s1
	lr.d s1, (s7)
	pause
	li s6, mem0
	li s9, 0
	add t6, s6, s9
	li s4, 0x1027c4d4
	sc.d s4, s4, (t6)
	# SC may fail due to pause voiding forward progress
SID_ZHP_03_passed:
	;#test_passed()

;#discrete_test(test=SID_ZHP_04a_U)
SID_ZHP_04a_U:
	li sp, tp_csr_storage
	;#csr_rw(frm, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_ZHP_04a_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up mcounteren.tm=1
	li t2, 2
	;#csr_rw(mcounteren, set, false, false)
	# Set up scounteren.tm=1
	li t2, 2
	;#csr_rw(scounteren, set, false, false)
	# Pause after CSR serialization
	pause
	;#csr_rw(time, read, true, false)
	mv a3, t2
	pause
	li t2, 0
	;#csr_rw(frm, write, false, false)
	pause
	# Pause executed after CSR serialization
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(frm, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
SID_ZHP_04a_U_passed:
	;#test_passed()

;#discrete_test(test=SID_ZHP_04b)
SID_ZHP_04b:
	li sp, SID_ZHP_04b_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Pause after fence
	fence
	pause
	# Pause executed after fence
SID_ZHP_04b_passed:
	;#test_passed()

;#discrete_test(test=SID_ZHP_04c)
SID_ZHP_04c:
	li sp, SID_ZHP_04c_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Pause after random instruction
	pause
	li a4, 0x6ec9d289
	li t5, 0x9b810e79
	fcvt.d.l fs10, a4
	fcvt.s.wu fs0, t5
	fadd.s fs4, fs10, fs0
	pause
	li s1, mem1
	li s2, 0xc324c988
	sb s2, 0(s1)
	pause
	li t1, mem1
	lwu t2, 0(t1)
	pause
	# Pause executed after random instruction
SID_ZHP_04c_passed:
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

;#random_addr(name=SID_ZHP_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_01_stack, phys_name=SID_ZHP_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_01_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZHP_03_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_03_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_03_stack, phys_name=SID_ZHP_03_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_03_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZHP_04a_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_04a_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_04a_U_stack, phys_name=SID_ZHP_04a_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_04a_U_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZHP_04b_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_04b_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_04b_stack, phys_name=SID_ZHP_04b_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_04b_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZHP_04c_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZHP_04c_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZHP_04c_stack, phys_name=SID_ZHP_04c_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZHP_04c_stack
.dword 0xc001c0de
