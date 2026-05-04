;#test.name       paging
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      paging
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: paging

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_001_ptw_no_faults_all_access_types)
SID_PBVMS_001_ptw_no_faults_all_access_types:
	li sp, SID_PBVMS_001_ptw_no_faults_all_access_types_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate RWX memory region for all access types
	# Load access
	li s5, mem0
	lw t3, 0(s5)
	# Store access
	li a3, mem0
	li a7, 0xb9d39ccd
	fcvt.s.wu fs11, a7
	fsd fs11, 0(a3)
	# AMO access
	li s5, mem0
	li a1, 0
	add t5, s5, a1
	amoadd.w a6, zero, (t5)
	# Instruction Fetch access via CodePage + Call
	li t5, code_mem1
	jalr t5
SID_PBVMS_001_ptw_no_faults_all_access_types_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_003_ptw_all_privilege_modes)
SID_PBVMS_003_ptw_all_privilege_modes:
	li sp, SID_PBVMS_003_ptw_all_privilege_modes_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate RW memory
	# Access from various privilege modes
	li t6, mem2
	fld fs7, 0(t6)
	li s6, mem2
	li s8, 0x4da4daee
	sh s8, 0(s6)
SID_PBVMS_003_ptw_all_privilege_modes_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_006_ptw_page_boundary_crossing)
SID_PBVMS_006_ptw_page_boundary_crossing:
	li sp, SID_PBVMS_006_ptw_page_boundary_crossing_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# 4K-4K boundary crossing: Load, Store, AMO
	li a2, mem3
	li s6, 0xff8
	add s8, a2, s6
	fld fa2, 0(s8)
	li t5, mem3
	li t3, 0xff8
	add s0, t5, t3
	li s2, 0xbb1e386f
	sh s2, 0(s0)
	li t3, mem3
	li t1, 0xff8
	add a5, t3, t1
	li t3, 0xff8
	amoadd.d a1, t3, (a5)
	# Instruction fetch page boundary crossing
	li s1, code_mem4
	jalr s1
SID_PBVMS_006_ptw_page_boundary_crossing_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_008_va_sign_extension_fault)
SID_PBVMS_008_va_sign_extension_fault:
	li sp, SID_PBVMS_008_va_sign_extension_fault_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate valid memory region
	# Dside: Load with non-canonical VA triggers page fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a4, mem5
	li s9, 0x8000000000000000
	add a3, a4, s9
fault_label_0:
	lb t5, 0(a3)
	li s1, failed_addr
	ld t5, 0(s1)
	jr t5
	# assert_exception block end
excp_return_label_0:
SID_PBVMS_008_va_sign_extension_fault_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_009_superpage_alignment_fault)
SID_PBVMS_009_superpage_alignment_fault:
	li sp, SID_PBVMS_009_superpage_alignment_fault_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# 2M superpage with misaligned PPN -> page fault on load
	;#read_pte(mem6, leaf)
	li a5, 0x400
	or a4, t2, a5
	mv t2, a4
	;#write_pte(mem6, leaf)
	OS_SETUP_CHECK_EXCP 0xd, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a3, mem6
fault_label_1:
	flw ft11, 0(a3)
	li s0, failed_addr
	ld s8, 0(s0)
	jr s8
	# assert_exception block end
excp_return_label_1:
	# Store page fault on misaligned superpage
	OS_SETUP_CHECK_EXCP 0xf, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, mem6
	li s8, 0xda9c025d
fault_label_2:
	sd s8, 0(t2)
	li s1, failed_addr
	ld a0, 0(s1)
	jr a0
	# assert_exception block end
excp_return_label_2:
	# AMO page fault on misaligned superpage
	OS_SETUP_CHECK_EXCP 0xf, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s9, mem6
	li s10, 0
	add s2, s9, s10
fault_label_3:
	amoadd.w s5, zero, (s2)
	li a0, failed_addr
	ld t1, 0(a0)
	jr t1
	# assert_exception block end
excp_return_label_3:
SID_PBVMS_009_superpage_alignment_fault_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_011_ptw_fault_boundary_crossing)
SID_PBVMS_011_ptw_fault_boundary_crossing:
	li sp, SID_PBVMS_011_ptw_fault_boundary_crossing_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# First page valid, second page leaf fault -> load page fault on crossing
	li t2, mem7
	lbu t5, 0(t2)
	# First page no fault, second page leaf PTE fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t1, mem8
	li s3, 0xffa
	add a6, t1, s3
fault_label_4:
	ld a2, 0(a6)
	li a4, failed_addr
	ld a6, 0(a4)
	jr a6
	# assert_exception block end
excp_return_label_4:
	# First page leaf fault, second page no fault
	OS_SETUP_CHECK_EXCP 0xf, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a5, mem8
	li t4, 0xffa
	add a4, a5, t4
	li s0, 0x67cfdce
fault_label_5:
	sb s0, 0(a4)
	li s10, failed_addr
	ld s3, 0(s10)
	jr s3
	# assert_exception block end
excp_return_label_5:
SID_PBVMS_011_ptw_fault_boundary_crossing_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_012_ptw_fault_prioritization)
SID_PBVMS_012_ptw_fault_prioritization:
	li sp, SID_PBVMS_012_ptw_fault_prioritization_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# V bit 0 on non-leaf PTE -> page fault (highest priority at non-leaf)
	OS_SETUP_CHECK_EXCP 0xd, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, mem9
fault_label_6:
	lb t1, 0(t2)
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_6:
	# R=0 W=1 reserved encoding -> page fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, mem10
fault_label_7:
	lh s3, 0(t5)
	li t3, failed_addr
	ld a1, 0(t3)
	jr a1
	# assert_exception block end
excp_return_label_7:
	# Leaf PTE permission fault: U/W/R/X combination
	OS_SETUP_CHECK_EXCP 0xd, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, mem11
fault_label_8:
	ld s5, 0(s2)
	li s11, failed_addr
	ld s0, 0(s11)
	jr s0
	# assert_exception block end
excp_return_label_8:
SID_PBVMS_012_ptw_fault_prioritization_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_013_ptw_permission_encodings)
SID_PBVMS_013_ptw_permission_encodings:
	li sp, SID_PBVMS_013_ptw_permission_encodings_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read-only page
	li s5, mem12
	lhu a3, 0(s5)
	# Read-write page
	li s0, mem13
	fld fs6, 0(s0)
	li t5, mem13
	li s2, 0xdcc93f11
	fcvt.d.w ft8, s2
	fsd ft8, 0(t5)
	# Execute-only page
	# Read-execute page
	li a0, mem15
	lb t1, 0(a0)
	li s10, code_mem16
	jalr s10
	# Read-write-execute page
	li s10, mem17
	lhu a4, 0(s10)
	li t6, mem17
	li s0, 0x9f20dbb3
	sw s0, 0(t6)
SID_PBVMS_013_ptw_permission_encodings_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_014_mstatus_sum_mxr)
SID_PBVMS_014_mstatus_sum_mxr:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_014_mstatus_sum_mxr_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MXR test: set mstatus.MXR=1, access execute-only page as readable
	li t2, 524288
	;#csr_rw(mstatus, set, false, false)
	li a1, mem18
	lwu s2, 0(a1)
	# Clear mstatus.MXR=0, access again should fault
	li t2, 524288
	;#csr_rw(mstatus, clear, false, false)
	OS_SETUP_CHECK_EXCP 0xd, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a6, mem18
fault_label_9:
	fld fs1, 0(a6)
	li t4, failed_addr
	ld s7, 0(t4)
	jr s7
	# assert_exception block end
excp_return_label_9:
	# SUM test: set mstatus.SUM=1, access user page from S-mode
	li t2, 262144
	;#csr_rw(mstatus, set, false, false)
	li a1, mem19
	flw ft1, 0(a1)
	# Clear mstatus.SUM=0, access user page from S-mode should fault
	li t2, 262144
	;#csr_rw(mstatus, clear, false, false)
	OS_SETUP_CHECK_EXCP 0xd, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t4, mem19
fault_label_10:
	lw t3, 0(t4)
	li a2, failed_addr
	ld a1, 0(a2)
	jr a1
	# assert_exception block end
excp_return_label_10:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
SID_PBVMS_014_mstatus_sum_mxr_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_015_global_bit_honoured)
SID_PBVMS_015_global_bit_honoured:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_015_global_bit_honoured_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate global RW memory
	# Save original satp, set ASID=A1
	csrr a1, satp
	mv a2, a1
	li s1, 0xf00000000000
	csrrs s7, satp, s1
	# Access with ASID=A1
	li t5, mem20
	li a6, 0x21b737a2
	sb a6, 0(t5)
	# Switch to ASID=A2, access global page
	li s11, 0xf00000000000
	csrrc t5, satp, s11
	li t2, mem20
	lhu s2, 0(t2)
	# Switch back to ASID=A1, access should still work due to Global bit
	csrrw s3, satp, a2
	li t2, mem20
	lb t4, 0(t2)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_015_global_bit_honoured_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_016_non_global_bit_honoured)
SID_PBVMS_016_non_global_bit_honoured:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_016_non_global_bit_honoured_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate non-global RW memory
	# Access VA1 to populate TLB
	li s0, mem21
	lbu s9, 0(s0)
	# Modify leaf PTE to introduce fault (clear Read bit)
	;#read_pte(mem21, leaf)
	li a5, -3
	and t4, t2, a5
	mv t2, t4
	;#write_pte(mem21, leaf)
	# Change ASID to a never used value
	li t2, 0xff00000000000
	csrrs t2, satp, t2
	# SFENCE.VMA to ensure TLB invalidated for new ASID
	sfence.vma zero, zero
	# Access VA1 again should fault since non-global and new ASID forces PTW
	OS_SETUP_CHECK_EXCP 0xd, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, mem21
fault_label_11:
	lhu a5, 0(t5)
	li s4, failed_addr
	ld a7, 0(s4)
	jr a7
	# assert_exception block end
excp_return_label_11:
	# Modify leaf PTE to re-add READ bit
	;#read_pte(mem21, leaf)
	li t5, 0x2
	or s8, t2, t5
	mv t2, s8
	;#write_pte(mem21, leaf)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_016_non_global_bit_honoured_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_017_global_at_non_leaf)
SID_PBVMS_017_global_at_non_leaf:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_017_global_at_non_leaf_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Setup memory with Global flag on non-leaf PTE
	# Read non-leaf PTE and set Global bit
	;#read_pte(mem22, 1)
	mv t2, t2
	;#write_pte(mem22, 1)
	# Access with ASID=A1, then switch ASID=A2
	li t6, mem22
	lhu t1, 0(t6)
	li a2, 0xff00000000000
	csrrs s1, satp, a2
	# Access should still succeed since non-leaf Global propagates to leaf
	li s6, mem22
	flw fa4, 0(s6)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_017_global_at_non_leaf_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_018_rsw_fields_writable)
SID_PBVMS_018_rsw_fields_writable:
	li sp, SID_PBVMS_018_rsw_fields_writable_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate memory, read leaf PTE, set RSW bits, write back, re-read and verify
	# Read leaf PTE, set RSW bits [9:8]
	;#read_pte(mem23, leaf)
	li a1, 0x300
	or s8, t2, a1
	mv t2, s8
	;#write_pte(mem23, leaf)
	# Re-read leaf PTE and verify RSW bits are set
	;#read_pte(mem23, leaf)
	and s8, t2, a1
	beq s8, a1, pass_label_0
	li s1, failed_addr
	ld a6, 0(s1)
	jr a6
pass_label_0:
	# Read non-leaf PTE, set RSW bits, write back
	;#read_pte(mem23, 1)
	or a2, t2, a1
	mv t2, a2
	;#write_pte(mem23, 1)
	# Access should still work after RSW modification
	li a3, mem23
	ld t1, 0(a3)
SID_PBVMS_018_rsw_fields_writable_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_021_satp_valid_to_reserved)
SID_PBVMS_021_satp_valid_to_reserved:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_021_satp_valid_to_reserved_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read current satp value (valid mode)
	csrr a1, satp
	# Attempt to write reserved mode value to satp
	li t6, 0x2000000000000000
	csrrw a4, satp, t6
	# Read satp again - should be unchanged (write should not take effect)
	csrr s1, satp
	beq a1, s1, pass_label_1
	li a5, failed_addr
	ld t1, 0(a5)
	jr t1
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_021_satp_valid_to_reserved_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_022_satp_csr_accessibility)
SID_PBVMS_022_satp_csr_accessibility:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_022_satp_csr_accessibility_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read satp CSR
	csrr s6, satp
	# Write satp CSR
	csrrw t3, satp, s6
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_022_satp_csr_accessibility_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_023_satp_asidlen_discovery)
SID_PBVMS_023_satp_asidlen_discovery:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_023_satp_asidlen_discovery_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Write 0xFFFF to satp.ASID field
	csrr s4, satp
	li s5, 0xffff00000000000
	or a5, s4, s5
	csrrw s10, satp, a5
	# Read back satp and check ASID field is 0xFFFF (ASIDLEN=16)
	csrr t5, satp
	li s3, 0x2c
	srl a2, t5, s3
	li a5, 0xffff
	and a2, a2, a5
	beq a2, a5, pass_label_2
	li a3, failed_addr
	ld a5, 0(a3)
	jr a5
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_023_satp_asidlen_discovery_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_025_mstatus_tvm_satp_access)
SID_PBVMS_025_mstatus_tvm_satp_access:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_025_mstatus_tvm_satp_access_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mstatus.TVM=1
	li t2, 1048576
	;#csr_rw(mstatus, set, false, false)
	# Attempt to read satp from S-mode -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	csrr t2, satp
	li s4, failed_addr
	ld s5, 0(s4)
	jr s5
	# assert_exception block end
excp_return_label_12:
	# Attempt to write satp from S-mode -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	csrrwi s9, satp, 0
	li t1, failed_addr
	ld t4, 0(t1)
	jr t4
	# assert_exception block end
excp_return_label_13:
	# Clear mstatus.TVM=0, satp access should succeed from S-mode
	li t2, 1048576
	;#csr_rw(mstatus, clear, false, false)
	csrr t5, satp
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
SID_PBVMS_025_mstatus_tvm_satp_access_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_026_tlb_asid_match)
SID_PBVMS_026_tlb_asid_match:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_026_tlb_asid_match_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate non-global memory
	# Set ASID=A1 and access to populate TLB
	csrr s6, satp
	li s9, 0x100000000000
	csrrs a1, satp, s9
	li s1, mem24
	lb t6, 0(s1)
	# Modify PTE to introduce fault (clear Read bit) 
	;#read_pte(mem24, leaf)
	li s10, -3
	and s4, t2, s10
	mv t2, s4
	;#write_pte(mem24, leaf)
	# Set ASID=A2 and access -> should NOT hit TLB (different ASID)
	li t1, 0x200000000000
	csrrs t5, satp, t1
	sfence.vma zero, zero
	OS_SETUP_CHECK_EXCP 0xd, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a3, mem24
fault_label_14:
	lwu t6, 0(a3)
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_14:
	# Modify PTE to re-add READ bit 
	;#read_pte(mem24, leaf)
	li t6, 0x2
	or t3, t2, t6
	mv t2, t3
	;#write_pte(mem24, leaf)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_026_tlb_asid_match_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_028_sfence_vma_opcode_coverage)
SID_PBVMS_028_sfence_vma_opcode_coverage:
	li sp, SID_PBVMS_028_sfence_vma_opcode_coverage_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a5, mem25
	li t1, 0x1
	# sfence.vma x0, x0 (invalidate all)
	sfence.vma zero, zero
	# sfence.vma rs1, x0 (VA-based invalidation)
	sfence.vma a5, zero
	# sfence.vma x0, rs2 (ASID-based invalidation)
	sfence.vma zero, t1
	# sfence.vma rs1, rs2 (VA+ASID-based invalidation)
	sfence.vma a5, t1
SID_PBVMS_028_sfence_vma_opcode_coverage_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_029_ordering_satp_mstatus_without_sfence)
SID_PBVMS_029_ordering_satp_mstatus_without_sfence:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mstatus.MXR=1, access execute-only page (should succeed)
	li t2, 524288
	;#csr_rw(mstatus, set, false, false)
	li a3, mem26
	lwu t2, 0(a3)
	# Clear mstatus.MXR=0 without SFENCE, access again (should fault)
	li t2, 524288
	;#csr_rw(mstatus, clear, false, false)
	OS_SETUP_CHECK_EXCP 0xd, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t4, mem26
fault_label_15:
	lbu t1, 0(t4)
	li t1, failed_addr
	ld s7, 0(t1)
	jr s7
	# assert_exception block end
excp_return_label_15:
	# Set mstatus.SUM=1, access user page from S-mode (should succeed)
	li t2, 262144
	;#csr_rw(mstatus, set, false, false)
	li s1, mem27
	lbu s8, 0(s1)
	# Clear mstatus.SUM=0 without SFENCE, access again (should fault)
	li t2, 262144
	;#csr_rw(mstatus, clear, false, false)
	OS_SETUP_CHECK_EXCP 0xd, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t4, mem27
fault_label_16:
	lhu s11, 0(t4)
	li s10, failed_addr
	ld a6, 0(s10)
	jr a6
	# assert_exception block end
excp_return_label_16:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
SID_PBVMS_029_ordering_satp_mstatus_without_sfence_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_030_sfence_vma_ordering_sync)
SID_PBVMS_030_sfence_vma_ordering_sync:
	li sp, SID_PBVMS_030_sfence_vma_ordering_sync_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Access MUT to populate TLB
	li a5, mem28
	lbu t1, 0(a5)
	# Modify leaf PTE to introduce fault (clear Read bit)
	;#read_pte(mem28, leaf)
	li s4, -3
	and s2, t2, s4
	mv t2, s2
	;#write_pte(mem28, leaf)
	# Execute SFENCE.VMA to synchronize PTE store
	sfence.vma zero, zero
	# Access MUT again - should fault after SFENCE.VMA
	OS_SETUP_CHECK_EXCP 0xd, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s4, mem28
fault_label_17:
	lb a0, 0(s4)
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_17:
	# Return PTE
	;#read_pte(mem28, leaf)
	li t3, 0x2
	or a6, t2, t3
	mv t2, a6
	;#write_pte(mem28, leaf)
SID_PBVMS_030_sfence_vma_ordering_sync_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_031_sfence_vma_invalidate_all)
SID_PBVMS_031_sfence_vma_invalidate_all:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_031_sfence_vma_invalidate_all_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate global and non-global memory regions
	# Set ASID=A1, access MUTs set#1
	li s2, 0x100000000000
	csrrs s1, satp, s2
	li a5, mem29
	lbu a0, 0(a5)
	li a1, mem30
	lw s0, 0(a1)
	# Set ASID=A2, access MUTs set#2
	li t6, 0x200000000000
	csrrs s6, satp, t6
	li a5, mem29
	lwu s9, 0(a5)
	li a7, mem30
	fld fs7, 0(a7)
	# Modify PTEs to introduce fault (clear Read bit)
	;#read_pte(mem29, leaf)
	li a6, -3
	and t1, t2, a6
	mv t2, t1
	;#write_pte(mem29, leaf)
	;#read_pte(mem30, leaf)
	and s6, t2, a6
	mv t2, s6
	;#write_pte(mem30, leaf)
	# Set ASID=A3, SFENCE.VMA (all)
	li a7, 0x300000000000
	csrrs a0, satp, a7
	sfence.vma zero, zero
	# Access MUTs should fault after full invalidation
	OS_SETUP_CHECK_EXCP 0xd, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a7, mem29
fault_label_18:
	ld a3, 0(a7)
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_18:
	OS_SETUP_CHECK_EXCP 0xd, fault_label_19, excp_return_label_19, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s0, mem30
fault_label_19:
	lw t3, 0(s0)
	li s2, failed_addr
	ld a5, 0(s2)
	jr a5
	# assert_exception block end
excp_return_label_19:
	# Return PTE
	;#read_pte(mem29, leaf)
	li s5, 0x2
	or s5, t2, s5
	mv t2, s5
	;#write_pte(mem29, leaf)
	;#read_pte(mem30, leaf)
	li a1, 0x2
	or t4, t2, a1
	mv t2, t4
	;#write_pte(mem30, leaf)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_031_sfence_vma_invalidate_all_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_032_sfence_vma_invalidate_asid)
SID_PBVMS_032_sfence_vma_invalidate_asid:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_032_sfence_vma_invalidate_asid_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate non-global memory
	# Set ASID=A1, access MUTs
	li s5, 0xffff00000000000
	csrrc t5, satp, s5
	li t6, 0x100000000000
	csrrs t6, satp, t6
	li s3, mem31
	fld ft10, 0(s3)
	# Modify PTE to introduce fault (clear Read bit)
	;#read_pte(mem31, leaf)
	li s8, -3
	and t5, t2, s8
	mv t2, t5
	;#write_pte(mem31, leaf)
	# Set ASID=A2, SFENCE.VMA with ASID=A1
	li a6, 0x200000000000
	csrrs s6, satp, a6
	li a4, 0x1
	sfence.vma zero, a4
	# Set ASID=A1, access should fault
	li a2, 0xffff00000000000
	csrrc t4, satp, a2
	li t5, 0x200000000000
	csrrs s2, satp, t5
	li s8, 0x1
	sfence.vma zero, s8
	# Return PTE
	li t3, 0xffff00000000000
	csrrc t5, satp, t3
	li t4, 0x100000000000
	csrrs s8, satp, t4
	OS_SETUP_CHECK_EXCP 0xd, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s1, mem31
fault_label_20:
	flw fs3, 0(s1)
	li t4, failed_addr
	ld a4, 0(t4)
	jr a4
	# assert_exception block end
excp_return_label_20:
	# Return PTE
	;#read_pte(mem31, leaf)
	li a1, 0x2
	or a0, t2, a1
	mv t2, a0
	;#write_pte(mem31, leaf)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_032_sfence_vma_invalidate_asid_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_033_sfence_vma_invalidate_va)
SID_PBVMS_033_sfence_vma_invalidate_va:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_033_sfence_vma_invalidate_va_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate global and non-global memory
	# Set ASID=A1, access MUTs
	li t6, 0x100000000000
	csrrs s3, satp, t6
	li s0, mem32
	lw s0, 0(s0)
	li s1, mem33
	ld t5, 0(s1)
	# Modify PTEs to introduce fault (clear Read bit)
	;#read_pte(mem32, leaf)
	li a1, -3
	and a4, t2, a1
	mv t2, a4
	;#write_pte(mem32, leaf)
	;#read_pte(mem33, leaf)
	and s5, t2, a1
	mv t2, s5
	;#write_pte(mem33, leaf)
	# SFENCE.VMA VA-based invalidation (rs1=VA, rs2=x0)
	li s9, mem32
	li s2, mem33
	sfence.vma s9, zero
	sfence.vma s2, zero
	# Access MUTs should fault after VA-based invalidation
	OS_SETUP_CHECK_EXCP 0xd, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s5, mem32
fault_label_21:
	flw fs6, 0(s5)
	li a1, failed_addr
	ld s8, 0(a1)
	jr s8
	# assert_exception block end
excp_return_label_21:
	OS_SETUP_CHECK_EXCP 0xd, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t6, mem33
fault_label_22:
	ld a6, 0(t6)
	li t5, failed_addr
	ld s10, 0(t5)
	jr s10
	# assert_exception block end
excp_return_label_22:
	# Modify leaf PTE to re-add READ bit
	;#read_pte(mem32, leaf)
	li a3, 0x2
	or a7, t2, a3
	mv t2, a7
	;#write_pte(mem32, leaf)
	;#read_pte(mem33, leaf)
	li a1, 0x2
	or t2, t2, a1
	mv t2, t2
	;#write_pte(mem33, leaf)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_033_sfence_vma_invalidate_va_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_034_sfence_vma_invalidate_va_asid)
SID_PBVMS_034_sfence_vma_invalidate_va_asid:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate non-global memory
	# Set ASID=A1, access MUTs
	li a6, 0xffff00000000000
	csrrc s7, satp, a6
	li a3, 0x100000000000
	csrrs t6, satp, a3
	li s9, mem34
	lwu a5, 0(s9)
	# Modify PTE to introduce fault (clear Read bit)
	;#read_pte(mem34, leaf)
	li a2, -3
	and a4, t2, a2
	mv t2, a4
	;#write_pte(mem34, leaf)
	# Set ASID=A2, SFENCE.VMA with VA+ASID=A1
	li t3, 0xffff00000000000
	csrrc a2, satp, t3
	li s3, 0x200000000000
	csrrs s11, satp, s3
	li s10, mem34
	li s11, 0x1
	sfence.vma s10, s11
	# Set ASID=A1, access should fault
	li a5, 0xffff00000000000
	csrrc s10, satp, a5
	li a1, 0x100000000000
	csrrs a3, satp, a1
	OS_SETUP_CHECK_EXCP 0xd, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t6, mem34
fault_label_23:
	lbu a1, 0(t6)
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_23:
	# Modify leaf PTE to re-add READ bit
	;#read_pte(mem34, leaf)
	li a5, 0x2
	or s7, t2, a5
	mv t2, s7
	;#write_pte(mem34, leaf)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_034_sfence_vma_invalidate_va_asid_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_035_sfence_vma_various_page_sizes)
SID_PBVMS_035_sfence_vma_various_page_sizes:
	li sp, SID_PBVMS_035_sfence_vma_various_page_sizes_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# 4K page: access, modify PTE (clear Read bit), SFENCE.VMA, verify fault
	li s5, mem35
	ld a4, 0(s5)
	;#read_pte(mem35, leaf)
	li s4, -3
	and a6, t2, s4
	mv t2, a6
	;#write_pte(mem35, leaf)
	sfence.vma zero, zero
	OS_SETUP_CHECK_EXCP 0xd, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a4, mem35
fault_label_24:
	lwu a6, 0(a4)
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
	# assert_exception block end
excp_return_label_24:
	# 2M page: access, modify PTE (clear Read bit), SFENCE.VMA, verify fault
	li s5, mem36
	flw fa6, 0(s5)
	;#read_pte(mem36, leaf)
	li s6, -3
	and t5, t2, s6
	mv t2, t5
	;#write_pte(mem36, leaf)
	sfence.vma zero, zero
	OS_SETUP_CHECK_EXCP 0xd, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s3, mem36
fault_label_25:
	lb s6, 0(s3)
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
	# assert_exception block end
excp_return_label_25:
	# Return PTE
	;#read_pte(mem36, leaf)
	li s1, 0x2
	or t2, t2, s1
	mv t2, t2
	;#write_pte(mem36, leaf)
	;#read_pte(mem35, leaf)
	li s5, 0x2
	or a7, t2, s5
	mv t2, a7
	;#write_pte(mem35, leaf)
SID_PBVMS_035_sfence_vma_various_page_sizes_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_037_sfence_vma_tvm_illegal)
SID_PBVMS_037_sfence_vma_tvm_illegal:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_037_sfence_vma_tvm_illegal_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mstatus.TVM=1
	li t2, 1048576
	;#csr_rw(mstatus, set, false, false)
	# Execute SFENCE.VMA from S-mode -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_26, excp_return_label_26, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_26:
	sfence.vma zero, zero
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_26:
	# Clear mstatus.TVM=0, SFENCE.VMA should succeed
	li t2, 1048576
	;#csr_rw(mstatus, clear, false, false)
	sfence.vma zero, zero
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
SID_PBVMS_037_sfence_vma_tvm_illegal_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_039_non_leaf_not_invalidated_va_based)
SID_PBVMS_039_non_leaf_not_invalidated_va_based:
	li sp, SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate memory and access to populate TLB
	li s11, mem37
	lh s2, 0(s11)
	# Modify non-leaf PTE attributes
	;#read_pte(mem37, 1)
	li t4, -3
	and t1, t2, t4
	mv t2, t1
	;#write_pte(mem37, 1)
	# VA-based SFENCE.VMA (should not invalidate non-leaf entries)
	li s3, mem37
	sfence.vma s3, zero
	# Access should still succeed (non-leaf entry not invalidated)
	li s8, mem37
	lwu t3, 0(s8)
SID_PBVMS_039_non_leaf_not_invalidated_va_based_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_040_context_table_overflow)
SID_PBVMS_040_context_table_overflow:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_040_context_table_overflow_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate RX memory for Dside and Iside access
	# Access with ASID=1 (no invalidation between changes)
	li a2, 0x100000000000
	csrrs t5, satp, a2
	li s9, mem38
	fld fs4, 0(s9)
	li s3, code_mem39
	jalr s3
	# Access with ASID=2
	li a3, 0x200000000000
	csrrs s1, satp, a3
	li s6, mem38
	ld t4, 0(s6)
	li s6, code_mem39
	jalr s6
	# Access with ASID=3
	li s6, 0x300000000000
	csrrs a5, satp, s6
	li s2, mem38
	lbu s6, 0(s2)
	li s9, code_mem39
	jalr s9
	# Access with ASID=4
	li s3, 0x400000000000
	csrrs a6, satp, s3
	li a2, mem38
	lb a2, 0(a2)
	li a5, code_mem39
	jalr a5
	# ASID reuse: switch back to ASID=1 and access
	li a1, 0x100000000000
	csrrs t1, satp, a1
	li s9, mem38
	lwu a2, 0(s9)
	li t5, code_mem39
	jalr t5
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_040_context_table_overflow_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_041_partial_page_invalidation)
SID_PBVMS_041_partial_page_invalidation:
	li sp, SID_PBVMS_041_partial_page_invalidation_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate 2M superpage and access first 4KB to populate TLB
	li s6, mem40
	fld fs3, 0(s6)
	# Modify PTE to introduce fault (clear Read bit)
	;#read_pte(mem40, leaf)
	li a2, -3
	and s7, t2, a2
	mv t2, s7
	;#write_pte(mem40, leaf)
	# SFENCE.VMA with VA not in first 4KB (offset 0x1000) to test partial invalidation
	li s6, mem40
	sfence.vma s6, zero
	# Access should fault since entire superpage entry should be invalidated
	OS_SETUP_CHECK_EXCP 0xd, fault_label_27, excp_return_label_27, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a4, mem40
fault_label_27:
	lhu s6, 0(a4)
	li s1, failed_addr
	ld s5, 0(s1)
	jr s5
	# assert_exception block end
excp_return_label_27:
	# Modify leaf PTE to re-add READ bit
	;#read_pte(mem40, leaf)
	li t1, 0x2
	or t4, t2, t1
	mv t2, t4
	;#write_pte(mem40, leaf)
SID_PBVMS_041_partial_page_invalidation_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_042_canonical_boundary_crossing_fault)
SID_PBVMS_042_canonical_boundary_crossing_fault:
	li sp, SID_PBVMS_042_canonical_boundary_crossing_fault_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate memory at canonical boundary
	# Access that crosses canonical -> non-canonical boundary triggers page fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_28, excp_return_label_28, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s11, mem41
	li t3, 0x8000000000000000
	add s0, s11, t3
fault_label_28:
	flw fs9, 0(s0)
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_28:
SID_PBVMS_042_canonical_boundary_crossing_fault_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_043_fetch_window_spill_page_cross)
SID_PBVMS_043_fetch_window_spill_page_cross:
	li sp, SID_PBVMS_043_fetch_window_spill_page_cross_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate two adjacent 4K pages for instruction fetch page crossing
	# Place code near page boundary to cause fetch window spill
	li s11, code_mem43
	jalr s11
SID_PBVMS_043_fetch_window_spill_page_cross_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_044_fe_idle_serialization_page_cross)
SID_PBVMS_044_fe_idle_serialization_page_cross:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
	sd t2, 0(sp)
	li sp, SID_PBVMS_044_fe_idle_serialization_page_cross_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate pages for instruction fetch near page boundary
	# CSR instruction around page cross
	csrr a6, satp
	csrrw s5, satp, a6
	# SFENCE.VMA around page cross
	sfence.vma zero, zero
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_044_fe_idle_serialization_page_cross_passed:
	;#test_passed()

test_cleanup:
	;#test_passed()
local_test_failed:
	;#test_failed()

.section .data
;#random_addr(name=code_mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem1, phys_name=code_mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem1
	li a1, 0x5c6e433a
	li t5, 0xd5e34127
	addw t5, a1, t5
	lui t3, 0xb0
	ret

;#random_addr(name=code_mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem4, phys_name=code_mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem4
	li s7, 0x9b575bd4
	li s4, 0x925e477
	remuw s8, s7, s4
	li a4, 0x94c9c953
	li t2, 0xae662678
	mulw t1, a4, t2
	li s5, 0x288bc784
	li s11, 0xffed9238
	fcvt.s.w ft10, s5
	fcvt.s.lu fa1, s11
	fsub.s ft10, ft10, fa1
	li s9, 0x6e405d96
	li t3, 0xa372db92
	mulh s7, s9, t3
	ret

;#random_addr(name=code_mem16,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem16_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem16, phys_name=code_mem16_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem16
	li a3, 0x8f7d9b7b
	li a4, 0x2d6c7982
	divuw t1, a3, a4
	ret

;#random_addr(name=code_mem39,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem39_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem39, phys_name=code_mem39_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem39
	li a0, 0x533c9138
	li s7, 0x2c705021
	divw s8, a0, s7
	ret

;#random_addr(name=code_mem43,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem43_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem43, phys_name=code_mem43_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem43
	li t3, 0xfec3f6b6
	li t5, 0xe4c11ab5
	fcvt.s.lu fa5, t3
	fcvt.s.lu fs6, t5
	fadd.d fs2, fa5, fs6
	li a3, 0x72154e79
	li s6, 0xcbf87547
	fcvt.s.lu fs1, a3
	fcvt.s.wu fs2, s6
	fdiv.s fs3, fs1, fs2
	li s8, 0x6a27e0e2
	li s9, 0xbc01bfd1
	fcvt.d.w fa5, s8
	fcvt.s.w ft11, s9
	fmul.s fa3, fa5, ft11
	li t5, 0x867e5e18
	li s5, 0xe8168564
	divw s7, t5, s5
	ret

;#random_addr(name=mem0,  type=linear, size=0x11000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x10000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem0
.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, u=1)
;#init_memory @mem2
.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem3_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['2mb'], v=1, r=1, w=1, x=1)
;#page_mapping(lin_name=mem3+0x1000, phys_name=mem3_phys+0x1000, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem3
.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=0, x=1)
;#init_memory @mem5
.dword 0xc001c0de

;#random_addr(name=mem6,  type=linear, size=0x201000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem6_phys,  type=physical, size=0x200000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['2mb'], v=1, r=1, w=1, x=1, modify_pt=1)
;#init_memory @mem6
.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem7_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['2mb'], v=1, r=1, w=1, x=0)
;#page_mapping(lin_name=mem7+0x1000, phys_name=mem7_phys+0x1000, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem7
.dword 0xc001c0de

;#random_addr(name=mem8,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem8_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['2mb'], v=1, r=0, w=0, x=0)
;#page_mapping(lin_name=mem8+0x1000, phys_name=mem8_phys+0x1000, pagesize=['4kb'], v=1, r=0, w=0, x=0)
;#init_memory @mem8
.dword 0xc001c0de

;#random_addr(name=mem9,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem9_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], v=0, r=1, w=0, x=0, modify_pt=1)
;#init_memory @mem9
.dword 0xc001c0de

;#random_addr(name=mem10,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem10_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], v=1, r=0, w=1, x=0, modify_pt=1)
;#init_memory @mem10
.dword 0xc001c0de

;#random_addr(name=mem11,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem11_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], v=1, r=0, w=0, x=1, modify_pt=1)
;#init_memory @mem11
.dword 0xc001c0de

;#random_addr(name=mem12,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem12_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem12, phys_name=mem12_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0)
;#init_memory @mem12
.dword 0xc001c0de

;#random_addr(name=mem13,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem13_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem13, phys_name=mem13_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem13
.dword 0xc001c0de

;#random_addr(name=mem14,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem14_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem14, phys_name=mem14_phys, pagesize=['4kb'], v=1, r=0, w=0, x=1)
;#init_memory @mem14
.dword 0xc001c0de

;#random_addr(name=mem15,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem15_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem15, phys_name=mem15_phys, pagesize=['4kb'], v=1, r=1, w=0, x=1)
;#init_memory @mem15
.dword 0xc001c0de

;#random_addr(name=mem17,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem17_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem17, phys_name=mem17_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem17
.dword 0xc001c0de

;#random_addr(name=mem18,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem18_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem18, phys_name=mem18_phys, pagesize=['4kb'], v=1, r=0, w=0, x=1)
;#init_memory @mem18
.dword 0xc001c0de

;#random_addr(name=mem19,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem19_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem19, phys_name=mem19_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, u=1)
;#init_memory @mem19
.dword 0xc001c0de

;#random_addr(name=mem20,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem20_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem20, phys_name=mem20_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=1)
;#init_memory @mem20
.dword 0xc001c0de

;#random_addr(name=mem21,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem21_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem21, phys_name=mem21_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=0, modify_pt=1)
;#init_memory @mem21
.dword 0xc001c0de

;#random_addr(name=mem22,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem22_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem22, phys_name=mem22_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1, modify_pt=1)
;#init_memory @mem22
.dword 0xc001c0de

;#random_addr(name=mem23,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem23_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem23, phys_name=mem23_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem23
.dword 0xc001c0de

;#random_addr(name=mem24,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem24_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem24, phys_name=mem24_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=0, modify_pt=1)
;#init_memory @mem24
.dword 0xc001c0de

;#random_addr(name=mem25,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem25_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem25, phys_name=mem25_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem25
.dword 0xc001c0de

;#random_addr(name=mem26,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem26_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem26, phys_name=mem26_phys, pagesize=['4kb'], v=1, r=0, w=0, x=1)
;#init_memory @mem26
.dword 0xc001c0de

;#random_addr(name=mem27,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem27_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem27, phys_name=mem27_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, u=1)
;#init_memory @mem27
.dword 0xc001c0de

;#random_addr(name=mem28,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem28_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem28, phys_name=mem28_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem28
.dword 0xc001c0de

;#random_addr(name=mem29,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem29_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem29, phys_name=mem29_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=1, modify_pt=1)
;#init_memory @mem29
.dword 0xc001c0de

;#random_addr(name=mem30,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem30_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem30, phys_name=mem30_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem30
.dword 0xc001c0de

;#random_addr(name=mem31,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem31_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem31, phys_name=mem31_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem31
.dword 0xc001c0de

;#random_addr(name=mem32,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem32_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem32, phys_name=mem32_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=1, modify_pt=1)
;#init_memory @mem32
.dword 0xc001c0de

;#random_addr(name=mem33,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem33_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem33, phys_name=mem33_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem33
.dword 0xc001c0de

;#random_addr(name=mem34,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem34_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem34, phys_name=mem34_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=0, modify_pt=1)
;#init_memory @mem34
.dword 0xc001c0de

;#random_addr(name=mem35,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem35_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem35, phys_name=mem35_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, modify_pt=1)
;#init_memory @mem35
.dword 0xc001c0de

;#random_addr(name=mem36,  type=linear, size=0x201000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem36_phys,  type=physical, size=0x200000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem36, phys_name=mem36_phys, pagesize=['2mb'], v=1, r=1, w=0, x=0, modify_pt=1)
;#init_memory @mem36
.dword 0xc001c0de

;#random_addr(name=mem37,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem37_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem37, phys_name=mem37_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem37
.dword 0xc001c0de

;#random_addr(name=mem38,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem38_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem38, phys_name=mem38_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem38
.dword 0xc001c0de

;#random_addr(name=mem40,  type=linear, size=0x201000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem40_phys,  type=physical, size=0x200000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem40, phys_name=mem40_phys, pagesize=['2mb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem40
.dword 0xc001c0de

;#random_addr(name=mem41,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem41_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem41, phys_name=mem41_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem41
.dword 0xc001c0de

;#random_addr(name=mem42,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem42_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem42, phys_name=mem42_phys, pagesize=['2mb'], v=1, r=1, w=0, x=1)
;#page_mapping(lin_name=mem42+0x1000, phys_name=mem42_phys+0x1000, pagesize=['4kb'], v=1, r=1, w=0, x=1)
;#init_memory @mem42
.dword 0xc001c0de

;#random_addr(name=mem44,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem44_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem44, phys_name=mem44_phys, pagesize=['2mb'], v=1, r=1, w=1, x=1)
;#page_mapping(lin_name=mem44+0x1000, phys_name=mem44_phys+0x1000, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem44
.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack, phys_name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_001_ptw_no_faults_all_access_types_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_003_ptw_all_privilege_modes_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_003_ptw_all_privilege_modes_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_003_ptw_all_privilege_modes_stack, phys_name=SID_PBVMS_003_ptw_all_privilege_modes_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_003_ptw_all_privilege_modes_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_006_ptw_page_boundary_crossing_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_006_ptw_page_boundary_crossing_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_006_ptw_page_boundary_crossing_stack, phys_name=SID_PBVMS_006_ptw_page_boundary_crossing_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_006_ptw_page_boundary_crossing_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_008_va_sign_extension_fault_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_008_va_sign_extension_fault_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_008_va_sign_extension_fault_stack, phys_name=SID_PBVMS_008_va_sign_extension_fault_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_008_va_sign_extension_fault_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_009_superpage_alignment_fault_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_009_superpage_alignment_fault_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_009_superpage_alignment_fault_stack, phys_name=SID_PBVMS_009_superpage_alignment_fault_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_009_superpage_alignment_fault_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack, phys_name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_011_ptw_fault_boundary_crossing_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_012_ptw_fault_prioritization_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_012_ptw_fault_prioritization_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_012_ptw_fault_prioritization_stack, phys_name=SID_PBVMS_012_ptw_fault_prioritization_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_012_ptw_fault_prioritization_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_013_ptw_permission_encodings_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_013_ptw_permission_encodings_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_013_ptw_permission_encodings_stack, phys_name=SID_PBVMS_013_ptw_permission_encodings_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_013_ptw_permission_encodings_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_014_mstatus_sum_mxr_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_014_mstatus_sum_mxr_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_014_mstatus_sum_mxr_stack, phys_name=SID_PBVMS_014_mstatus_sum_mxr_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_014_mstatus_sum_mxr_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_015_global_bit_honoured_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_015_global_bit_honoured_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_015_global_bit_honoured_stack, phys_name=SID_PBVMS_015_global_bit_honoured_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_015_global_bit_honoured_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_016_non_global_bit_honoured_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_016_non_global_bit_honoured_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_016_non_global_bit_honoured_stack, phys_name=SID_PBVMS_016_non_global_bit_honoured_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_016_non_global_bit_honoured_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_017_global_at_non_leaf_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_017_global_at_non_leaf_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_017_global_at_non_leaf_stack, phys_name=SID_PBVMS_017_global_at_non_leaf_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_017_global_at_non_leaf_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_018_rsw_fields_writable_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_018_rsw_fields_writable_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_018_rsw_fields_writable_stack, phys_name=SID_PBVMS_018_rsw_fields_writable_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_018_rsw_fields_writable_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_021_satp_valid_to_reserved_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_021_satp_valid_to_reserved_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_021_satp_valid_to_reserved_stack, phys_name=SID_PBVMS_021_satp_valid_to_reserved_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_021_satp_valid_to_reserved_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_022_satp_csr_accessibility_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_022_satp_csr_accessibility_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_022_satp_csr_accessibility_stack, phys_name=SID_PBVMS_022_satp_csr_accessibility_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_022_satp_csr_accessibility_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_023_satp_asidlen_discovery_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_023_satp_asidlen_discovery_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_023_satp_asidlen_discovery_stack, phys_name=SID_PBVMS_023_satp_asidlen_discovery_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_023_satp_asidlen_discovery_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_025_mstatus_tvm_satp_access_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_025_mstatus_tvm_satp_access_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_025_mstatus_tvm_satp_access_stack, phys_name=SID_PBVMS_025_mstatus_tvm_satp_access_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_025_mstatus_tvm_satp_access_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_026_tlb_asid_match_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_026_tlb_asid_match_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_026_tlb_asid_match_stack, phys_name=SID_PBVMS_026_tlb_asid_match_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_026_tlb_asid_match_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_028_sfence_vma_opcode_coverage_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_028_sfence_vma_opcode_coverage_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_028_sfence_vma_opcode_coverage_stack, phys_name=SID_PBVMS_028_sfence_vma_opcode_coverage_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_028_sfence_vma_opcode_coverage_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack, phys_name=SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_030_sfence_vma_ordering_sync_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_030_sfence_vma_ordering_sync_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_030_sfence_vma_ordering_sync_stack, phys_name=SID_PBVMS_030_sfence_vma_ordering_sync_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_030_sfence_vma_ordering_sync_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_031_sfence_vma_invalidate_all_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_031_sfence_vma_invalidate_all_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_031_sfence_vma_invalidate_all_stack, phys_name=SID_PBVMS_031_sfence_vma_invalidate_all_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_031_sfence_vma_invalidate_all_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_032_sfence_vma_invalidate_asid_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_032_sfence_vma_invalidate_asid_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_032_sfence_vma_invalidate_asid_stack, phys_name=SID_PBVMS_032_sfence_vma_invalidate_asid_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_032_sfence_vma_invalidate_asid_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_033_sfence_vma_invalidate_va_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_033_sfence_vma_invalidate_va_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_033_sfence_vma_invalidate_va_stack, phys_name=SID_PBVMS_033_sfence_vma_invalidate_va_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_033_sfence_vma_invalidate_va_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack, phys_name=SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_035_sfence_vma_various_page_sizes_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_035_sfence_vma_various_page_sizes_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_035_sfence_vma_various_page_sizes_stack, phys_name=SID_PBVMS_035_sfence_vma_various_page_sizes_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_035_sfence_vma_various_page_sizes_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_037_sfence_vma_tvm_illegal_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_037_sfence_vma_tvm_illegal_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_037_sfence_vma_tvm_illegal_stack, phys_name=SID_PBVMS_037_sfence_vma_tvm_illegal_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_037_sfence_vma_tvm_illegal_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack, phys_name=SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_040_context_table_overflow_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_040_context_table_overflow_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_040_context_table_overflow_stack, phys_name=SID_PBVMS_040_context_table_overflow_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_040_context_table_overflow_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_041_partial_page_invalidation_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_041_partial_page_invalidation_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_041_partial_page_invalidation_stack, phys_name=SID_PBVMS_041_partial_page_invalidation_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_041_partial_page_invalidation_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack, phys_name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_042_canonical_boundary_crossing_fault_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_043_fetch_window_spill_page_cross_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_043_fetch_window_spill_page_cross_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_043_fetch_window_spill_page_cross_stack, phys_name=SID_PBVMS_043_fetch_window_spill_page_cross_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_043_fetch_window_spill_page_cross_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_044_fe_idle_serialization_page_cross_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_044_fe_idle_serialization_page_cross_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_044_fe_idle_serialization_page_cross_stack, phys_name=SID_PBVMS_044_fe_idle_serialization_page_cross_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_044_fe_idle_serialization_page_cross_stack
.dword 0xc001c0de
