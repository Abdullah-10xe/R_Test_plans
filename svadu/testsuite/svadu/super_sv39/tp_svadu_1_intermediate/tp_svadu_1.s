;#test.name       svadu
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      svadu
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: svadu

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_SVADU_01_fault_on_a_bit_cleared)
SID_SVADU_01_fault_on_a_bit_cleared:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SVADU_01_fault_on_a_bit_cleared_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable SVADU
	li t2, 2305843009213693952
	;#csr_rw(menvcfg, clear, false, false)
	# Access memory with pte.a=0 should fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a5, mem0
fault_label_0:
	lbu a0, 0(a5)
	li s8, failed_addr
	ld a0, 0(s8)
	jr a0
	# assert_exception block end
excp_return_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SVADU_01_fault_on_a_bit_cleared_passed:
	;#test_passed()

;#discrete_test(test=SID_SVADU_01_fault_on_d_bit_cleared)
SID_SVADU_01_fault_on_d_bit_cleared:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SVADU_01_fault_on_d_bit_cleared_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable SVADU
	li t2, 2305843009213693952
	;#csr_rw(menvcfg, clear, false, false)
	# Store to memory with pte.d=0 should fault
	li s7, 0xdead
	OS_SETUP_CHECK_EXCP 0xf, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t3, mem1
fault_label_1:
	sw s7, 0(t3)
	li s3, failed_addr
	ld s3, 0(s3)
	jr s3
	# assert_exception block end
excp_return_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SVADU_01_fault_on_d_bit_cleared_passed:
	;#test_passed()

;#discrete_test(test=SID_SVADU_02_hardware_update_a_bit)
SID_SVADU_02_hardware_update_a_bit:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SVADU_02_hardware_update_a_bit_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Enable SVADU
	li t2, 2305843009213693952
	;#csr_rw(menvcfg, set, false, false)
	# check pte.a is 0
	;#read_pte(mem2, leaf)
	li a0, 0x40
	and s7, t2, a0
	li t1, 0
	beq s7, t1, pass_label_0
	li s5, failed_addr
	ld s8, 0(s5)
	jr s8
pass_label_0:
	# Perform load - should update A bit
	li t6, mem2
	lh s8, 0(t6)
	;#read_pte(mem2, leaf)
	# A bit is bit 6 in the PTE entry
	li s8, 0x40
	and s0, t2, s8
	beq s0, s8, pass_label_1
	li t6, failed_addr
	ld s11, 0(t6)
	jr s11
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SVADU_02_hardware_update_a_bit_passed:
	;#test_passed()

;#discrete_test(test=SID_SVADU_02_hardware_update_d_bit)
SID_SVADU_02_hardware_update_d_bit:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SVADU_02_hardware_update_d_bit_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Enable SVADU
	li t2, 2305843009213693952
	;#csr_rw(menvcfg, set, false, false)
	# check pte.d is 0
	;#read_pte(mem3, leaf)
	li t5, 0x80
	and t5, t2, t5
	li a4, 0
	beq t5, a4, pass_label_2
	li s10, failed_addr
	ld a0, 0(s10)
	jr a0
pass_label_2:
	# Perform store - should update D bit
	li s3, 0xbeef
	li t1, mem3
	sh s3, 0(t1)
	;#read_pte(mem3, leaf)
	# D bit is bit 7 in the PTE entry
	li s0, 0x80
	and s1, t2, s0
	beq s1, s0, pass_label_3
	li a0, failed_addr
	ld t5, 0(a0)
	jr t5
pass_label_3:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SVADU_02_hardware_update_d_bit_passed:
	;#test_passed()

test_cleanup:
	;#test_passed()
local_test_failed:
	;#test_failed()

.section .data
;#random_addr(name=mem0,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=0, d=0, modify_pt=1)
;#init_memory @mem0
.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=0, modify_pt=1)
;#init_memory @mem1
.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=0, d=0, modify_pt=1)
;#init_memory @mem2
.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=0, d=0, modify_pt=1)
;#init_memory @mem3
.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_SVADU_01_fault_on_a_bit_cleared_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADU_01_fault_on_a_bit_cleared_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADU_01_fault_on_a_bit_cleared_stack, phys_name=SID_SVADU_01_fault_on_a_bit_cleared_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADU_01_fault_on_a_bit_cleared_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVADU_01_fault_on_d_bit_cleared_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADU_01_fault_on_d_bit_cleared_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADU_01_fault_on_d_bit_cleared_stack, phys_name=SID_SVADU_01_fault_on_d_bit_cleared_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADU_01_fault_on_d_bit_cleared_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVADU_02_hardware_update_a_bit_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADU_02_hardware_update_a_bit_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADU_02_hardware_update_a_bit_stack, phys_name=SID_SVADU_02_hardware_update_a_bit_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADU_02_hardware_update_a_bit_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVADU_02_hardware_update_d_bit_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADU_02_hardware_update_d_bit_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADU_02_hardware_update_d_bit_stack, phys_name=SID_SVADU_02_hardware_update_d_bit_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADU_02_hardware_update_d_bit_stack
.dword 0xc001c0de
