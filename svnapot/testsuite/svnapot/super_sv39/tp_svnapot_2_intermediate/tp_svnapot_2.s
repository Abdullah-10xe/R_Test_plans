;#test.name       svnapot
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      svnapot
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: svnapot

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_00_LOAD)
SID_SVNAPOT_00_LOAD:
	li sp, SID_SVNAPOT_00_LOAD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem0, leaf)
	mv a0, t2
	# Set N=0, ppn[3:0]=4'b1000 (non-NAPOT, normal 4K page)
	li s1, 0x7fffffffffffc3ff
	and s4, a0, s1
	li a4, 0x2000
	or s4, s4, a4
	mv t2, s4
	;#write_pte(mem0, leaf)
	sfence.vma zero, zero
	# Perform load access - should succeed on normal 4K page
	li s1, mem0
	lb s3, 0(s1)
	# Restore original PTE
	mv t2, a0
	;#write_pte(mem0, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_00_LOAD_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_00_STORE)
SID_SVNAPOT_00_STORE:
	li sp, SID_SVNAPOT_00_STORE_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem1, leaf)
	mv a4, t2
	# Set N=0, ppn[3:0]=4'b1000 (non-NAPOT, normal 4K page)
	li s11, 0x7fffffffffffc3ff
	and s0, a4, s11
	li t3, 0x2000
	or t2, s0, t3
	mv t2, t2
	;#write_pte(mem1, leaf)
	sfence.vma zero, zero
	# Perform store access - should succeed on normal 4K page
	li a3, mem1
	li s7, 0x9b1f2831
	sh s7, 0(a3)
	# Restore original PTE
	mv t2, a4
	;#write_pte(mem1, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_00_STORE_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_00_AMO)
SID_SVNAPOT_00_AMO:
	li sp, SID_SVNAPOT_00_AMO_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem2, leaf)
	mv s4, t2
	# Set N=0, ppn[3:0]=4'b1000 (non-NAPOT, normal 4K page)
	li t6, 0x7fffffffffffc3ff
	and s8, s4, t6
	li s2, 0x2000
	or s11, s8, s2
	mv t2, s11
	;#write_pte(mem2, leaf)
	sfence.vma zero, zero
	# Perform AMO access - should succeed on normal 4K page
	li s7, mem2
	li t3, 0
	add a5, s7, t3
	amoswap.w s0, zero, (a5)
	# Restore original PTE
	mv t2, s4
	;#write_pte(mem2, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_00_AMO_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_00_LRSC)
SID_SVNAPOT_00_LRSC:
	li sp, SID_SVNAPOT_00_LRSC_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem3, leaf)
	mv s0, t2
	# Set N=0, ppn[3:0]=4'b1000 (non-NAPOT, normal 4K page)
	li s3, 0x7fffffffffffc3ff
	and s7, s0, s3
	li s2, 0x2000
	or s6, s7, s2
	mv t2, s6
	;#write_pte(mem3, leaf)
	sfence.vma zero, zero
	# Perform LR access - should succeed on normal 4K page
	li s9, mem3
	li t4, 0
	add a3, s9, t4
	lr.w s3, (a3)
	# Perform SC access - should succeed on normal 4K page
	li a4, mem3
	li a7, 0
	add s4, a4, a7
	sc.w t1, zero, (s4)
	# Restore original PTE
	mv t2, s0
	;#write_pte(mem3, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_00_LRSC_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_01_LOAD)
SID_SVNAPOT_01_LOAD:
	li sp, SID_SVNAPOT_01_LOAD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem4, leaf)
	mv s2, t2
	# Set N=1, ppn[3:0]=4'b0000 (reserved NAPOT encoding)
	li a2, 0x7fffffffffffc3ff
	and a1, s2, a2
	li s10, 0x8000000000000000
	or s11, a1, s10
	mv t2, s11
	;#write_pte(mem4, leaf)
	sfence.vma zero, zero
	# Load should cause page fault due to reserved NAPOT encoding
	OS_SETUP_CHECK_EXCP 0xd, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s5, mem4
fault_label_0:
	ld t4, 0(s5)
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_0:
	# Restore original PTE
	mv t2, s2
	;#write_pte(mem4, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_01_LOAD_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_01_STORE)
SID_SVNAPOT_01_STORE:
	li sp, SID_SVNAPOT_01_STORE_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem5, leaf)
	mv s6, t2
	# Set N=1, ppn[3:0]=4'b0000 (reserved NAPOT encoding)
	li s4, 0x7fffffffffffc3ff
	and t2, s6, s4
	li s9, 0x8000000000000000
	or s9, t2, s9
	mv t2, s9
	;#write_pte(mem5, leaf)
	sfence.vma zero, zero
	# Store should cause page fault due to reserved NAPOT encoding
	OS_SETUP_CHECK_EXCP 0xf, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, mem5
	li t4, 0xfec3f6b6
fault_label_1:
	sd t4, 0(s2)
	li s3, failed_addr
	ld s5, 0(s3)
	jr s5
	# assert_exception block end
excp_return_label_1:
	# Restore original PTE
	mv t2, s6
	;#write_pte(mem5, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_01_STORE_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_01_AMO)
SID_SVNAPOT_01_AMO:
	li sp, SID_SVNAPOT_01_AMO_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem6, leaf)
	mv s6, t2
	# Set N=1, ppn[3:0]=4'b0000 (reserved NAPOT encoding)
	li a2, 0x7fffffffffffc3ff
	and a2, s6, a2
	li s4, 0x8000000000000000
	or t2, a2, s4
	mv t2, t2
	;#write_pte(mem6, leaf)
	sfence.vma zero, zero
	# AMO should cause page fault due to reserved NAPOT encoding
	OS_SETUP_CHECK_EXCP 0xf, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s4, mem6
	li s8, 0
	add t6, s4, s8
fault_label_2:
	amoswap.w s11, zero, (t6)
	li a5, failed_addr
	ld t3, 0(a5)
	jr t3
	# assert_exception block end
excp_return_label_2:
	# Restore original PTE
	mv t2, s6
	;#write_pte(mem6, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_01_AMO_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_01_LRSC)
SID_SVNAPOT_01_LRSC:
	li sp, SID_SVNAPOT_01_LRSC_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem7, leaf)
	mv a6, t2
	# Set N=1, ppn[3:0]=4'b0000 (reserved NAPOT encoding)
	li s7, 0x7fffffffffffc3ff
	and s9, a6, s7
	li s10, 0x8000000000000000
	or s3, s9, s10
	mv t2, s3
	;#write_pte(mem7, leaf)
	sfence.vma zero, zero
	# LR should cause page fault due to reserved NAPOT encoding
	OS_SETUP_CHECK_EXCP 0xd, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s9, mem7
	li s8, 0
	add s11, s9, s8
fault_label_3:
	lr.w s4, (s11)
	li s10, failed_addr
	ld s4, 0(s10)
	jr s4
	# assert_exception block end
excp_return_label_3:
	# SC should cause page fault due to reserved NAPOT encoding
	OS_SETUP_CHECK_EXCP 0xf, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s7, mem7
	li s4, 0
	add t4, s7, s4
fault_label_4:
	sc.w t6, zero, (t4)
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_4:
	# Restore original PTE
	mv t2, a6
	;#write_pte(mem7, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_01_LRSC_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_02_LOAD)
SID_SVNAPOT_02_LOAD:
	li sp, SID_SVNAPOT_02_LOAD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem8, leaf)
	mv a3, t2
	# Set N=1, ppn[3:0]=4'b1000 (valid 64K NAPOT encoding)
	li s11, 0x7fffffffffffc3ff
	and a6, a3, s11
	li s8, 0x8000000000002000
	or s2, a6, s8
	mv t2, s2
	;#write_pte(mem8, leaf)
	sfence.vma zero, zero
	# Perform load access - should succeed on 64K NAPOT contiguous region
	li s3, mem8
	lw s2, 0(s3)
	# Restore original PTE
	mv t2, a3
	;#write_pte(mem8, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_02_LOAD_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_02_STORE)
SID_SVNAPOT_02_STORE:
	li sp, SID_SVNAPOT_02_STORE_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem9, leaf)
	mv a7, t2
	# Set N=1, ppn[3:0]=4'b1000 (valid 64K NAPOT encoding)
	li t6, 0x7fffffffffffc3ff
	and a3, a7, t6
	li s8, 0x8000000000002000
	or s10, a3, s8
	mv t2, s10
	;#write_pte(mem9, leaf)
	sfence.vma zero, zero
	# Perform store access - should succeed on 64K NAPOT contiguous region
	li s4, mem9
	li s8, 0x8feb994d
	fcvt.s.w fs4, s8
	fsd fs4, 0(s4)
	# Restore original PTE
	mv t2, a7
	;#write_pte(mem9, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_02_STORE_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_02_AMO)
SID_SVNAPOT_02_AMO:
	li sp, SID_SVNAPOT_02_AMO_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem10, leaf)
	mv a0, t2
	# Set N=1, ppn[3:0]=4'b1000 (valid 64K NAPOT encoding)
	li s2, 0x7fffffffffffc3ff
	and t2, a0, s2
	li t1, 0x8000000000002000
	or a5, t2, t1
	mv t2, a5
	;#write_pte(mem10, leaf)
	sfence.vma zero, zero
	# Perform AMO access - should succeed on 64K NAPOT contiguous region
	li a5, mem10
	li a2, 0
	add s1, a5, a2
	amoswap.w t6, zero, (s1)
	# Restore original PTE
	mv t2, a0
	;#write_pte(mem10, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_02_AMO_passed:
	;#test_passed()

;#discrete_test(test=SID_SVNAPOT_02_LRSC)
SID_SVNAPOT_02_LRSC:
	li sp, SID_SVNAPOT_02_LRSC_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem11, leaf)
	mv s1, t2
	# Set N=1, ppn[3:0]=4'b1000 (valid 64K NAPOT encoding)
	li a6, 0x7fffffffffffc3ff
	and s11, s1, a6
	li a5, 0x8000000000002000
	or t2, s11, a5
	mv t2, t2
	;#write_pte(mem11, leaf)
	sfence.vma zero, zero
	# Perform LR access - should succeed on 64K NAPOT contiguous region
	li a1, mem11
	li t3, 0
	add a3, a1, t3
	lr.w s4, (a3)
	# Perform SC access - should succeed on 64K NAPOT contiguous region
	li s3, mem11
	li s2, 0
	add s0, s3, s2
	sc.w t6, zero, (s0)
	# Restore original PTE
	mv t2, s1
	;#write_pte(mem11, leaf)
	sfence.vma zero, zero
SID_SVNAPOT_02_LRSC_passed:
	;#test_passed()

test_cleanup:
	;#test_passed()
local_test_failed:
	;#test_failed()

.section .data
;#random_addr(name=mem0,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem0
.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem1
.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem2
.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem3
.dword 0xc001c0de

;#random_addr(name=mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem4
.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem5
.dword 0xc001c0de

;#random_addr(name=mem6,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem6_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem6
.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem7_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem7
.dword 0xc001c0de

;#random_addr(name=mem8,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem8_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem8
.dword 0xc001c0de

;#random_addr(name=mem9,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem9_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem9
.dword 0xc001c0de

;#random_addr(name=mem10,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem10_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem10
.dword 0xc001c0de

;#random_addr(name=mem11,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem11_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem11
.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_00_LOAD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_00_LOAD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_00_LOAD_stack, phys_name=SID_SVNAPOT_00_LOAD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_00_LOAD_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_00_STORE_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_00_STORE_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_00_STORE_stack, phys_name=SID_SVNAPOT_00_STORE_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_00_STORE_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_00_AMO_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_00_AMO_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_00_AMO_stack, phys_name=SID_SVNAPOT_00_AMO_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_00_AMO_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_00_LRSC_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_00_LRSC_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_00_LRSC_stack, phys_name=SID_SVNAPOT_00_LRSC_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_00_LRSC_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_01_LOAD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_01_LOAD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_01_LOAD_stack, phys_name=SID_SVNAPOT_01_LOAD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_01_LOAD_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_01_STORE_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_01_STORE_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_01_STORE_stack, phys_name=SID_SVNAPOT_01_STORE_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_01_STORE_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_01_AMO_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_01_AMO_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_01_AMO_stack, phys_name=SID_SVNAPOT_01_AMO_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_01_AMO_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_01_LRSC_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_01_LRSC_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_01_LRSC_stack, phys_name=SID_SVNAPOT_01_LRSC_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_01_LRSC_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_02_LOAD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_02_LOAD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_02_LOAD_stack, phys_name=SID_SVNAPOT_02_LOAD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_02_LOAD_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_02_STORE_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_02_STORE_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_02_STORE_stack, phys_name=SID_SVNAPOT_02_STORE_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_02_STORE_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_02_AMO_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_02_AMO_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_02_AMO_stack, phys_name=SID_SVNAPOT_02_AMO_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_02_AMO_stack
.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_02_LRSC_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_02_LRSC_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_02_LRSC_stack, phys_name=SID_SVNAPOT_02_LRSC_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_02_LRSC_stack
.dword 0xc001c0de
