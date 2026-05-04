;#test.name       zjpm
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zjpm
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zjpm

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_05_pm_disabled_u_vu_mode)
SID_05_pm_disabled_u_vu_mode:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_05_pm_disabled_u_vu_mode_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM disabled in U/VU mode - non-canonical addresses should fault
	# Set senvcfg.PMM[33:32] = 00 to disable PM
	li t2, 12884901888
	;#csr_rw(senvcfg, clear, true, false)
	# Create memory region for testing
	# Store value at canonical address
	li s6, 0xdeadbeef
	li t3, mem0
	sw s6, 0(t3)
	# Get address and XOR upper bits to make non-canonical
	li s3, mem0
	li a3, 0xfe00000000000000
	xor a1, s3, a3
	# Load from non-canonical address with PM disabled - expect page fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	fld fa6, 0(a1)
	li t1, failed_addr
	ld s8, 0(t1)
	jr s8
	# assert_exception block end
excp_return_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_05_pm_disabled_u_vu_mode_passed:
	;#test_passed()

;#discrete_test(test=SID_13_pm_enabled_u_vu_mode)
SID_13_pm_enabled_u_vu_mode:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_13_pm_enabled_u_vu_mode_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM enabled in U/VU mode - tagged addresses should work
	# Set senvcfg.PMM[33:32] = 10 for PMLEN=7
	li t2, 8589934592
	;#csr_rw(senvcfg, set, true, false)
	# Create memory region for testing
	# Store value at canonical address
	li t5, 0xabcd1234
	li a4, mem1
	sw t5, 0(a4)
	# Create tagged address by XORing upper 7 bits (PMLEN=7)
	li s10, mem1
	li a0, 0xfe00000000000000
	xor s3, s10, a0
	# Load via tagged address - PM should mask upper bits and access same memory
	ld t1, 0(s3)
	# Store via tagged address - should also succeed
	li s0, 0xcafebabe
	fcvt.s.l ft1, s0
	fsw ft1, 0(s3)
	# Load from canonical address - should see value stored via tagged address
	li a4, mem1
	fld fs3, 0(a4)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_13_pm_enabled_u_vu_mode_passed:
	;#test_passed()

;#discrete_test(test=SID_24_pm_instruction_set)
SID_24_pm_instruction_set:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_24_pm_instruction_set_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM with various instruction sets
	# Enable PM
	li t2, 8589934592
	;#csr_rw(senvcfg, set, true, false)
	# Test base load/store with PM - pointer masking should work
	li t3, 0x11223344
	li a3, mem2
	sb t3, 0(a3)
	li s5, mem2
	fld fs8, 0(s5)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_24_pm_instruction_set_passed:
	;#test_passed()

;#discrete_test(test=SID_25_pm_misaligned_access)
SID_25_pm_misaligned_access:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_25_pm_misaligned_access_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM with misaligned memory access
	# Enable PM
	li t2, 12884901888
	;#csr_rw(senvcfg, set, true, false)
	# Create misaligned access - pointer masking should still work
	li t6, 0x55667788
	li s5, mem3
	sb t6, 0(s5)
	li s7, mem3
	ld s10, 0(s7)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_25_pm_misaligned_access_passed:
	;#test_passed()

;#discrete_test(test=SID_26_pm_different_tags_same_address)
SID_26_pm_different_tags_same_address:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_26_pm_different_tags_same_address_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test same address with different tag values
	# Enable PM
	li t2, 12884901888
	;#csr_rw(senvcfg, set, true, false)
	# Access with tag1
	li t3, 0x11111111
	li a4, mem4
	sd t3, 0(a4)
	# Access with tag2 to same base address
	li t3, 0x22222222
	li s6, mem4
	sh t3, 0(s6)
	# Load from same address - pointer masking allows this
	li a7, mem4
	ld t1, 0(a7)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_26_pm_different_tags_same_address_passed:
	;#test_passed()

;#discrete_test(test=SID_27_pm_implicit_access)
SID_27_pm_implicit_access:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_27_pm_implicit_access_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM does not apply to implicit accesses (fetch and PTW)
	# Enable PM for explicit accesses
	li t2, 8589934592
	;#csr_rw(senvcfg, set, true, false)
	# Create executable memory for instruction fetch testing
	# Explicit memory access - PM applies here
	li a2, 0xfeedc0de
	li t3, mem5
	sw a2, 0(t3)
	li t2, mem5
	ld a7, 0(t2)
	# Code execution - instruction fetch does NOT use PM
	li a0, code_mem6
	jalr a0
	# Page table walks during address translation do NOT use PM
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_27_pm_implicit_access_passed:
	;#test_passed()

;#discrete_test(test=SID_28_pm_faults_trap_values)
SID_28_pm_faults_trap_values:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_28_pm_faults_trap_values_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test trap values contain canonical addresses when PM enabled
	# Enable PM with PMLEN=7
	li t2, 8589934592
	;#csr_rw(senvcfg, set, true, false)
	# Create memory with limited permissions to trigger fault
	# Attempt store to read-only page to trigger page fault
	li t6, 0xbadf00d
	# Expect store page fault when writing to read-only page
	OS_SETUP_CHECK_EXCP 0xf, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s7, mem7
	fcvt.s.lu ft10, t6
fault_label_1:
	fsw ft10, 0(s7)
	li s4, failed_addr
	ld s9, 0(s4)
	jr s9
	# assert_exception block end
excp_return_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_28_pm_faults_trap_values_passed:
	;#test_passed()

test_cleanup:
	;#test_passed()
local_test_failed:
	;#test_failed()

.section .data
;#random_addr(name=code_mem6,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem6_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem6, phys_name=code_mem6_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem6
	auipc s1, 0x20d
	ret

;#random_addr(name=mem0,  type=linear, size=0x11000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x10000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
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
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem5
.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem7_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0)
;#init_memory @mem7
.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_05_pm_disabled_u_vu_mode_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_05_pm_disabled_u_vu_mode_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_05_pm_disabled_u_vu_mode_stack, phys_name=SID_05_pm_disabled_u_vu_mode_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_05_pm_disabled_u_vu_mode_stack
.dword 0xc001c0de

;#random_addr(name=SID_13_pm_enabled_u_vu_mode_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_13_pm_enabled_u_vu_mode_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_13_pm_enabled_u_vu_mode_stack, phys_name=SID_13_pm_enabled_u_vu_mode_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_13_pm_enabled_u_vu_mode_stack
.dword 0xc001c0de

;#random_addr(name=SID_24_pm_instruction_set_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_24_pm_instruction_set_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_24_pm_instruction_set_stack, phys_name=SID_24_pm_instruction_set_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_24_pm_instruction_set_stack
.dword 0xc001c0de

;#random_addr(name=SID_25_pm_misaligned_access_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_25_pm_misaligned_access_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_25_pm_misaligned_access_stack, phys_name=SID_25_pm_misaligned_access_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_25_pm_misaligned_access_stack
.dword 0xc001c0de

;#random_addr(name=SID_26_pm_different_tags_same_address_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_26_pm_different_tags_same_address_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_26_pm_different_tags_same_address_stack, phys_name=SID_26_pm_different_tags_same_address_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_26_pm_different_tags_same_address_stack
.dword 0xc001c0de

;#random_addr(name=SID_27_pm_implicit_access_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_27_pm_implicit_access_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_27_pm_implicit_access_stack, phys_name=SID_27_pm_implicit_access_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_27_pm_implicit_access_stack
.dword 0xc001c0de

;#random_addr(name=SID_28_pm_faults_trap_values_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_28_pm_faults_trap_values_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_28_pm_faults_trap_values_stack, phys_name=SID_28_pm_faults_trap_values_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_28_pm_faults_trap_values_stack
.dword 0xc001c0de
