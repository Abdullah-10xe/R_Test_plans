;#test.name       paging
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv57
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
	li t2, mem0
	flw fa6, 0(t2)
	# Store access
	li a4, mem0
	li t6, 0x96c8da1c
	sw t6, 0(a4)
	# AMO access
	li t6, mem0
	li s4, 0
	add s6, t6, s4
	amoadd.w t2, zero, (s6)
	# Instruction Fetch access via CodePage + Call
	li a2, code_mem1
	jalr a2
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
	li s0, mem2
	lw s5, 0(s0)
	li t4, mem2
	li s8, 0xe1fab9da
	fcvt.s.lu ft4, s8
	fsd ft4, 0(t4)
SID_PBVMS_003_ptw_all_privilege_modes_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_006_ptw_page_boundary_crossing)
SID_PBVMS_006_ptw_page_boundary_crossing:
	li sp, SID_PBVMS_006_ptw_page_boundary_crossing_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# 4K-4K boundary crossing: Load, Store, AMO
	li a7, mem3
	li s6, 0xff8
	add t6, a7, s6
	ld t1, 0(t6)
	li s8, mem3
	li s0, 0xff8
	add s2, s8, s0
	li t1, 0xd7071081
	fcvt.s.w ft8, t1
	fsd ft8, 0(s2)
	li a7, mem3
	li t5, 0xff8
	add s6, a7, t5
	li s7, 0xff8
	amoadd.d t1, s7, (s6)
	# Instruction fetch page boundary crossing
	li a3, code_mem4
	jalr a3
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
	li s6, mem5
	li a3, 0x8000000000000000
	add t1, s6, a3
fault_label_0:
	ld a3, 0(t1)
	li a4, failed_addr
	ld s11, 0(a4)
	jr s11
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
	li s7, 0x400
	or s2, t2, s7
	mv t2, s2
	;#write_pte(mem6, leaf)
	OS_SETUP_CHECK_EXCP 0xd, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s11, mem6
fault_label_1:
	flw fa2, 0(s11)
	li s6, failed_addr
	ld a5, 0(s6)
	jr a5
	# assert_exception block end
excp_return_label_1:
	# Store page fault on misaligned superpage
	OS_SETUP_CHECK_EXCP 0xf, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, mem6
	li t4, 0x678a5aa6
fault_label_2:
	sd t4, 0(s2)
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_2:
	# AMO page fault on misaligned superpage
	OS_SETUP_CHECK_EXCP 0xf, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t1, mem6
	li s8, 0
	add s8, t1, s8
fault_label_3:
	amoadd.w s2, zero, (s8)
	li t6, failed_addr
	ld t6, 0(t6)
	jr t6
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
	ld s6, 0(t2)
	# First page no fault, second page leaf PTE fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, mem8
	li s11, 0xffa
	add s10, s2, s11
fault_label_4:
	ld a3, 0(s10)
	li t3, failed_addr
	ld s7, 0(t3)
	jr s7
	# assert_exception block end
excp_return_label_4:
	# First page leaf fault, second page no fault
	OS_SETUP_CHECK_EXCP 0xf, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t4, mem8
	li s4, 0xffa
	add s9, t4, s4
	li s5, 0xf320cd5a
fault_label_5:
	sw s5, 0(s9)
	li t1, failed_addr
	ld s10, 0(t1)
	jr s10
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
	li s9, mem9
fault_label_6:
	flw ft1, 0(s9)
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_6:
	# R=0 W=1 reserved encoding -> page fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t3, mem10
fault_label_7:
	lw a1, 0(t3)
	li s10, failed_addr
	ld t4, 0(s10)
	jr t4
	# assert_exception block end
excp_return_label_7:
	# Leaf PTE permission fault: U/W/R/X combination
	OS_SETUP_CHECK_EXCP 0xd, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a2, mem11
fault_label_8:
	fld ft9, 0(a2)
	li s0, failed_addr
	ld s0, 0(s0)
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
	li t5, mem12
	flw fs9, 0(t5)
	# Read-write page
	li a4, mem13
	lhu a3, 0(a4)
	li a6, mem13
	li s1, 0x73f7ba91
	sb s1, 0(a6)
	# Execute-only page
	# Read-execute page
	li s1, mem15
	lbu t4, 0(s1)
	li a2, code_mem16
	jalr a2
	# Read-write-execute page
	li s6, mem17
	lbu s4, 0(s6)
	li s0, mem17
	li a7, 0x3ba33de
	sb a7, 0(s0)
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
	li t3, mem18
	ld a5, 0(t3)
	# Clear mstatus.MXR=0, access again should fault
	li t2, 524288
	;#csr_rw(mstatus, clear, false, false)
	OS_SETUP_CHECK_EXCP 0xd, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t4, mem18
fault_label_9:
	lhu t3, 0(t4)
	li a7, failed_addr
	ld s7, 0(a7)
	jr s7
	# assert_exception block end
excp_return_label_9:
	# SUM test: set mstatus.SUM=1, access user page from S-mode
	li t2, 262144
	;#csr_rw(mstatus, set, false, false)
	li t3, mem19
	flw fa1, 0(t3)
	# Clear mstatus.SUM=0, access user page from S-mode should fault
	li t2, 262144
	;#csr_rw(mstatus, clear, false, false)
	OS_SETUP_CHECK_EXCP 0xd, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s9, mem19
fault_label_10:
	ld s10, 0(s9)
	li a0, failed_addr
	ld t1, 0(a0)
	jr t1
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
	;#csr_rw(satp, read, false, false)
	mv t2, t2
	mv a4, t2
	li t2, 263882790666240
	;#csr_rw(satp, set, false, false)
	# Access with ASID=A1
	li a6, mem20
	li a0, 0x6bc15388
	sh a0, 0(a6)
	# Switch to ASID=A2, access global page
	li t2, 263882790666240
	;#csr_rw(satp, clear, false, false)
	li s2, mem20
	lwu t2, 0(s2)
	# Switch back to ASID=A1, access should still work due to Global bit
	mv t2, a4
	;#csr_rw(satp, write, false, false)
	li s11, mem20
	lw a5, 0(s11)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_015_global_bit_honoured_passed:
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
	;#read_pte(mem21, 1)
	mv t2, t2
	;#write_pte(mem21, 1)
	# Access with ASID=A1, then switch ASID=A2
	li a4, mem21
	lwu t1, 0(a4)
	li t2, 4486007441326080
	;#csr_rw(satp, set, false, false)
	# Access should still succeed since non-leaf Global propagates to leaf
	li s5, mem21
	lb a2, 0(s5)
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
	;#read_pte(mem22, leaf)
	li a3, 0x300
	or s6, t2, a3
	mv t2, s6
	;#write_pte(mem22, leaf)
	# Re-read leaf PTE and verify RSW bits are set
	;#read_pte(mem22, leaf)
	and t6, t2, a3
	beq t6, a3, pass_label_0
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
pass_label_0:
	# Read non-leaf PTE, set RSW bits, write back
	;#read_pte(mem22, 1)
	or s5, t2, a3
	mv t2, s5
	;#write_pte(mem22, 1)
	# Access should still work after RSW modification
	li t3, mem22
	lb a5, 0(t3)
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
	;#csr_rw(satp, read, false, false)
	mv t3, t2
	# Attempt to write reserved mode value to satp
	li t5, 0x2000000000000000
	mv t2, t5
	;#csr_rw(satp, write, false, false)
	# Read satp again - should be unchanged (write should not take effect)
	;#csr_rw(satp, read, false, false)
	mv s7, t2
	beq t3, s7, pass_label_1
	li s5, failed_addr
	ld a4, 0(s5)
	jr a4
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
	;#csr_rw(satp, read, false, false)
	mv s7, t2
	# Write satp CSR
	mv t2, s7
	;#csr_rw(satp, write, false, false)
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
	;#csr_rw(satp, read, false, false)
	mv s11, t2
	li t1, 0xffff00000000000
	or s4, s11, t1
	mv t2, s4
	;#csr_rw(satp, write, false, false)
	# Read back satp and check ASID field is 0xFFFF (ASIDLEN=16)
	;#csr_rw(satp, read, false, false)
	mv t6, t2
	li t3, 0x2c
	srl t3, t6, t3
	li s2, 0xffff
	and s4, t3, s2
	beq s4, s2, pass_label_2
	li t1, failed_addr
	ld s7, 0(t1)
	jr s7
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_023_satp_asidlen_discovery_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_027_satp_user_mode_fault)
SID_PBVMS_027_satp_user_mode_fault:
	li sp, SID_PBVMS_027_satp_user_mode_fault_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Attempt to read satp from U-mode -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	;#csr_rw(satp, read, true, false)
	mv s0, t2
	li t6, failed_addr
	ld a7, 0(t6)
	jr a7
	# assert_exception block end
excp_return_label_11:
	# Attempt to write satp from U-mode -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, 0
fault_label_12:
	;#csr_rw(satp, write, true, false)
	li a2, failed_addr
	ld a5, 0(a2)
	jr a5
	# assert_exception block end
excp_return_label_12:
SID_PBVMS_027_satp_user_mode_fault_passed:
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
	li t2, 17592186044416
	;#csr_rw(satp, set, false, false)
	li a6, mem23
	lb t6, 0(a6)
	li a2, code_mem24
	jalr a2
	# Access with ASID=2
	li t2, 35184372088832
	;#csr_rw(satp, set, false, false)
	li s6, mem23
	lhu t3, 0(s6)
	li a7, code_mem24
	jalr a7
	# Access with ASID=3
	li t2, 52776558133248
	;#csr_rw(satp, set, false, false)
	li a1, mem23
	lbu t1, 0(a1)
	li a6, code_mem24
	jalr a6
	# Access with ASID=4
	li t2, 70368744177664
	;#csr_rw(satp, set, false, false)
	li s1, mem23
	lbu s6, 0(s1)
	li s3, code_mem24
	jalr s3
	# ASID reuse: switch back to ASID=1 and access
	li t2, 17592186044416
	;#csr_rw(satp, set, false, false)
	li a7, mem23
	lhu t5, 0(a7)
	li s2, code_mem24
	jalr s2
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
SID_PBVMS_040_context_table_overflow_passed:
	;#test_passed()

;#discrete_test(test=SID_PBVMS_042_canonical_boundary_crossing_fault)
SID_PBVMS_042_canonical_boundary_crossing_fault:
	li sp, SID_PBVMS_042_canonical_boundary_crossing_fault_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate memory at canonical boundary
	# Access that crosses canonical -> non-canonical boundary triggers page fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, mem25
	li s3, 0x8000000000000000
	add a3, t2, s3
fault_label_13:
	flw fa2, 0(a3)
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_13:
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
	li s8, code_mem27
	jalr s8
SID_PBVMS_043_fetch_window_spill_page_cross_passed:
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
	auipc s4, 0x20d
	li s6, 0x7ed4d57e
	li t3, 0xc2ce6f47
	subw s2, s6, t3
	ret

;#random_addr(name=code_mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem4, phys_name=code_mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem4
	li t4, 0xd5f4b3b5
	li a3, 0x63ca8290
	mulh s9, t4, a3
	li s1, 0x6ec9d289
	li s2, 0x9b810e79
	sub t1, s1, s2
	li t2, 0xc324c988
	li s0, 0xc464715c
	fcvt.s.wu fs5, t2
	fcvt.s.l fs2, s0
	fadd.s ft1, fs5, fs2
	li s8, 0x8a05a9
	addi s2, s8, 0x728
	ret

;#random_addr(name=code_mem16,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem16_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem16, phys_name=code_mem16_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem16
	li t4, 0xf8130c45
	li t1, 0x6c0fd4f8
	mulh s7, t4, t1
	ret

;#random_addr(name=code_mem24,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem24_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem24, phys_name=code_mem24_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem24
	li s5, 0xc381e892
	li s8, 0x701966a3
	mulhsu a3, s5, s8
	ret

;#random_addr(name=code_mem27,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem27_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem27, phys_name=code_mem27_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem27
	li s1, 0xf3c64afa
	li t5, 0x4a2f20ad
	clmulh a7, s1, t5
	li s1, 0xed2f89dc
	li t6, 0x5805978
	mulhsu s8, s1, t6
	li s5, 0x6a8ac4bd
	li s10, 0xd66b82a1
	mulhsu s1, s5, s10
	li a3, 0xea90a8f3
	li s2, 0x8e73ca4a
	li s3, 0xec148cb7
	fcvt.d.lu fs3, a3
	fcvt.d.w ft10, s2
	fcvt.s.l fa6, s3
	fnmsub.d ft11, fs3, ft10, fa6
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
;#page_mapping(lin_name=mem21, phys_name=mem21_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1, modify_pt=1)
;#init_memory @mem21
.dword 0xc001c0de

;#random_addr(name=mem22,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem22_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem22, phys_name=mem22_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem22
.dword 0xc001c0de

;#random_addr(name=mem23,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem23_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem23, phys_name=mem23_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem23
.dword 0xc001c0de

;#random_addr(name=mem25,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem25_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem25, phys_name=mem25_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem25
.dword 0xc001c0de

;#random_addr(name=mem26,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem26_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem26, phys_name=mem26_phys, pagesize=['2mb'], v=1, r=1, w=0, x=1)
;#page_mapping(lin_name=mem26+0x1000, phys_name=mem26_phys+0x1000, pagesize=['4kb'], v=1, r=1, w=0, x=1)
;#init_memory @mem26
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

;#random_addr(name=SID_PBVMS_027_satp_user_mode_fault_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_027_satp_user_mode_fault_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_027_satp_user_mode_fault_stack, phys_name=SID_PBVMS_027_satp_user_mode_fault_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_027_satp_user_mode_fault_stack
.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_040_context_table_overflow_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_040_context_table_overflow_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_040_context_table_overflow_stack, phys_name=SID_PBVMS_040_context_table_overflow_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_040_context_table_overflow_stack
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
