;#test.name       svade
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      svade
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: svade

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_SVADE_01_fault_on_a_bit_cleared)
SID_SVADE_01_fault_on_a_bit_cleared:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SVADE_01_fault_on_a_bit_cleared_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable SVADE
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
SID_SVADE_01_fault_on_a_bit_cleared_passed:
	;#test_passed()

;#discrete_test(test=SID_SVADE_01_fault_on_d_bit_cleared)
SID_SVADE_01_fault_on_d_bit_cleared:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SVADE_01_fault_on_d_bit_cleared_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable SVADE
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
SID_SVADE_01_fault_on_d_bit_cleared_passed:
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

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_SVADE_01_fault_on_a_bit_cleared_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADE_01_fault_on_a_bit_cleared_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADE_01_fault_on_a_bit_cleared_stack, phys_name=SID_SVADE_01_fault_on_a_bit_cleared_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADE_01_fault_on_a_bit_cleared_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVADE_01_fault_on_d_bit_cleared_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVADE_01_fault_on_d_bit_cleared_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVADE_01_fault_on_d_bit_cleared_stack, phys_name=SID_SVADE_01_fault_on_d_bit_cleared_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVADE_01_fault_on_d_bit_cleared_stack
.dword 0xc001c0de
