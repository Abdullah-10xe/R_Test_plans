;#test.name       paging
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      paging
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: paging

#include "rvmodel_macros.h"
.include "tp_paging_2_equates.inc"

.include "tp_paging_2_pagetables.inc"
#include "tp_paging_2_macros.inc"
#include "tp_paging_2_loader.inc"
#include "tp_paging_2_syscalls.inc"
#include "tp_paging_2_trap_handler_m.inc"
#include "tp_paging_2_trap_handler_s.inc"
#include "tp_paging_2_os.inc"
#include "tp_paging_2_eot.inc"
#include "tp_paging_2_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_009_superpage_alignment_fault)
SID_PBVMS_009_superpage_alignment_fault:
	li sp, SID_PBVMS_009_superpage_alignment_fault_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# 2M superpage with misaligned PPN -> page fault on load
	;#read_pte(mem6, leaf)
li x31, pte_access_flags
li t0, mem6
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li a5, 0x400
	or a4, t2, a5
	mv t2, a4
	;#write_pte(mem6, leaf)
li x31, pte_access_flags
li t0, mem6
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

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
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_014_mstatus_sum_mxr)
SID_PBVMS_014_mstatus_sum_mxr:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_014_mstatus_sum_mxr_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MXR test: set mstatus.MXR=1, access execute-only page as readable
	li t2, 524288
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li a1, mem18
	lwu s2, 0(a1)
	# Clear mstatus.MXR=0, access again should fault
	li t2, 524288
	;#csr_rw(mstatus, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

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
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li a1, mem19
	flw ft1, 0(a1)
	# Clear mstatus.SUM=0, access user page from S-mode should fault
	li t2, 262144
	;#csr_rw(mstatus, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

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
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_014_mstatus_sum_mxr_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_015_global_bit_honoured)
SID_PBVMS_015_global_bit_honoured:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_015_global_bit_honoured_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate global RW memory
	# Save original satp, set ASID=A1
	;#csr_rw(satp, read, false, false)
li x31, super_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	mv a2, t2
	mv a4, a2
	li t2, 263882790666240
	;#csr_rw(satp, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Access with ASID=A1
	li a0, mem20
	li s8, 0x21b737a2
	sb s8, 0(a0)
	# Switch to ASID=A2, access global page
	li t2, 263882790666240
	;#csr_rw(satp, clear, false, false)
li x31, super_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t6, mem20
	lhu a7, 0(t6)
	# Switch back to ASID=A1, access should still work due to Global bit
	mv t2, a4
	;#csr_rw(satp, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 11
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t3, mem20
	lb a7, 0(t3)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_015_global_bit_honoured_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_017_global_at_non_leaf)
SID_PBVMS_017_global_at_non_leaf:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_017_global_at_non_leaf_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Setup memory with Global flag on non-leaf PTE
	# Read non-leaf PTE and set Global bit
	;#read_pte(mem21, 1)
li x31, pte_access_flags
li t0, mem21
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv t2, t2
	;#write_pte(mem21, 1)
li x31, pte_access_flags
li t0, mem21
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Access with ASID=A1, then switch ASID=A2
	li a4, mem21
	lb t5, 0(a4)
	li t2, 4486007441326080
	;#csr_rw(satp, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Access should still succeed since non-leaf Global propagates to leaf
	li s6, mem21
	lh s1, 0(s6)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_017_global_at_non_leaf_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_018_rsw_fields_writable)
SID_PBVMS_018_rsw_fields_writable:
	li sp, SID_PBVMS_018_rsw_fields_writable_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate memory, read leaf PTE, set RSW bits, write back, re-read and verify
	# Read leaf PTE, set RSW bits [9:8]
	;#read_pte(mem22, leaf)
li x31, pte_access_flags
li t0, mem22
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li a0, 0x300
	or s10, t2, a0
	mv t2, s10
	;#write_pte(mem22, leaf)
li x31, pte_access_flags
li t0, mem22
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Re-read leaf PTE and verify RSW bits are set
	;#read_pte(mem22, leaf)
li x31, pte_access_flags
li t0, mem22
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	and a5, t2, a0
	beq a5, a0, pass_label_0
	li t4, failed_addr
	ld t5, 0(t4)
	jr t5
pass_label_0:
	# Read non-leaf PTE, set RSW bits, write back
	;#read_pte(mem22, 1)
li x31, pte_access_flags
li t0, mem22
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	or t4, t2, a0
	mv t2, t4
	;#write_pte(mem22, 1)
li x31, pte_access_flags
li t0, mem22
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Access should still work after RSW modification
	li s4, mem22
	lhu a7, 0(s4)
SID_PBVMS_018_rsw_fields_writable_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_021_satp_valid_to_reserved)
SID_PBVMS_021_satp_valid_to_reserved:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_021_satp_valid_to_reserved_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read current satp value (valid mode)
	;#csr_rw(satp, read, false, false)
li x31, super_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	mv t4, t2
	# Attempt to write reserved mode value to satp
	li s4, 0x2000000000000000
	mv t2, s4
	;#csr_rw(satp, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 11
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Read satp again - should be unchanged (write should not take effect)
	;#csr_rw(satp, read, false, false)
li x31, super_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	mv a5, t2
	beq t4, a5, pass_label_1
	li s9, failed_addr
	ld a5, 0(s9)
	jr a5
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_021_satp_valid_to_reserved_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_022_satp_csr_accessibility)
SID_PBVMS_022_satp_csr_accessibility:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_022_satp_csr_accessibility_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read satp CSR
	;#csr_rw(satp, read, false, false)
li x31, super_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	mv t1, t2
	# Write satp CSR
	mv t2, t1
	;#csr_rw(satp, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 11
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_022_satp_csr_accessibility_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_023_satp_asidlen_discovery)
SID_PBVMS_023_satp_asidlen_discovery:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_023_satp_asidlen_discovery_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Write 0xFFFF to satp.ASID field
	;#csr_rw(satp, read, false, false)
li x31, super_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	mv a1, t2
	li s0, 0xffff00000000000
	or s5, a1, s0
	mv t2, s5
	;#csr_rw(satp, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 11
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Read back satp and check ASID field is 0xFFFF (ASIDLEN=16)
	;#csr_rw(satp, read, false, false)
li x31, super_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	mv s7, t2
	li a4, 0x2c
	srl a2, s7, a4
	li t4, 0xffff
	and a4, a2, t4
	beq a4, t4, pass_label_2
	li a0, failed_addr
	ld s3, 0(a0)
	jr s3
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_023_satp_asidlen_discovery_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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
csrr t2, satp

	mv a0, t2
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_11:
	# Attempt to write satp from U-mode -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, 0
fault_label_12:
	;#csr_rw(satp, write, true, false)
csrrw t2, satp, t2

	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_12:
SID_PBVMS_027_satp_user_mode_fault_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_040_context_table_overflow)
SID_PBVMS_040_context_table_overflow:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_040_context_table_overflow_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate RX memory for Dside and Iside access
	# Access with ASID=1 (no invalidation between changes)
	li t2, 17592186044416
	;#csr_rw(satp, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t3, mem23
	lh s5, 0(t3)
	li s6, code_mem24
	jalr s6
	# Access with ASID=2
	li t2, 35184372088832
	;#csr_rw(satp, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li a6, mem23
	lbu s11, 0(a6)
	li t3, code_mem24
	jalr t3
	# Access with ASID=3
	li t2, 52776558133248
	;#csr_rw(satp, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li s4, mem23
	lh a3, 0(s4)
	li s11, code_mem24
	jalr s11
	# Access with ASID=4
	li t2, 70368744177664
	;#csr_rw(satp, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li s11, mem23
	lb a4, 0(s11)
	li t2, code_mem24
	jalr t2
	# ASID reuse: switch back to ASID=1 and access
	li t2, 17592186044416
	;#csr_rw(satp, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t2, mem23
	flw fa4, 0(t2)
	li s10, code_mem24
	jalr s10
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_040_context_table_overflow_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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
	li t1, mem25
	li s9, 0x8000000000000000
	add s10, t1, s9
fault_label_13:
	flw ft2, 0(s10)
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_13:
SID_PBVMS_042_canonical_boundary_crossing_fault_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

test_cleanup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall
local_test_failed:
	;#test_failed()
	li x31, 0xf0000002  # Test Failed; End test with fail
	ecall

.section .data
;#random_addr(name=code_mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem1, phys_name=code_mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem1
.section .code_mem1, "ax"

	li a1, 0x5c6e433a
	li t5, 0xd5e34127
	addw t5, a1, t5
	lui t3, 0xb0
	ret

;#random_addr(name=code_mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem4, phys_name=code_mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem4
.section .code_mem4, "ax"

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
.section .code_mem16, "ax"

	li a3, 0x8f7d9b7b
	li a4, 0x2d6c7982
	divuw t1, a3, a4
	ret

;#random_addr(name=code_mem24,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem24_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem24, phys_name=code_mem24_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem24
.section .code_mem24, "ax"

	li a0, 0x533c9138
	li s7, 0x2c705021
	divw s8, a0, s7
	ret

;#random_addr(name=code_mem27,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem27_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem27, phys_name=code_mem27_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem27
.section .code_mem27, "ax"

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
.section .mem0, "ax"

.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, u=1)
;#init_memory @mem2
.section .mem2, "aw"

.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem3_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['2mb'], v=1, r=1, w=1, x=1)
;#page_mapping(lin_name=mem3+0x1000, phys_name=mem3_phys+0x1000, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem3
.section .mem3, "ax"

.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=0, x=1)
;#init_memory @mem5
.section .mem5, "ax"

.dword 0xc001c0de

;#random_addr(name=mem6,  type=linear, size=0x201000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem6_phys,  type=physical, size=0x200000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['2mb'], v=1, r=1, w=1, x=1, modify_pt=1)
;#init_memory @mem6
.section .mem6, "ax"

.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem7_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['2mb'], v=1, r=1, w=1, x=0)
;#page_mapping(lin_name=mem7+0x1000, phys_name=mem7_phys+0x1000, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem7
.section .mem7, "aw"

.dword 0xc001c0de

;#random_addr(name=mem8,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem8_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['2mb'], v=1, r=0, w=0, x=0)
;#page_mapping(lin_name=mem8+0x1000, phys_name=mem8_phys+0x1000, pagesize=['4kb'], v=1, r=0, w=0, x=0)
;#init_memory @mem8
.section .mem8, "aw"

.dword 0xc001c0de

;#random_addr(name=mem9,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem9_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], v=0, r=1, w=0, x=0, modify_pt=1)
;#init_memory @mem9
.section .mem9, "aw"

.dword 0xc001c0de

;#random_addr(name=mem10,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem10_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], v=1, r=0, w=1, x=0, modify_pt=1)
;#init_memory @mem10
.section .mem10, "aw"

.dword 0xc001c0de

;#random_addr(name=mem11,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem11_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], v=1, r=0, w=0, x=1, modify_pt=1)
;#init_memory @mem11
.section .mem11, "ax"

.dword 0xc001c0de

;#random_addr(name=mem12,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem12_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem12, phys_name=mem12_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0)
;#init_memory @mem12
.section .mem12, "aw"

.dword 0xc001c0de

;#random_addr(name=mem13,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem13_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem13, phys_name=mem13_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem13
.section .mem13, "aw"

.dword 0xc001c0de

;#random_addr(name=mem14,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem14_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem14, phys_name=mem14_phys, pagesize=['4kb'], v=1, r=0, w=0, x=1)
;#init_memory @mem14
.section .mem14, "ax"

.dword 0xc001c0de

;#random_addr(name=mem15,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem15_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem15, phys_name=mem15_phys, pagesize=['4kb'], v=1, r=1, w=0, x=1)
;#init_memory @mem15
.section .mem15, "ax"

.dword 0xc001c0de

;#random_addr(name=mem17,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem17_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem17, phys_name=mem17_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem17
.section .mem17, "ax"

.dword 0xc001c0de

;#random_addr(name=mem18,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem18_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem18, phys_name=mem18_phys, pagesize=['4kb'], v=1, r=0, w=0, x=1)
;#init_memory @mem18
.section .mem18, "ax"

.dword 0xc001c0de

;#random_addr(name=mem19,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem19_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem19, phys_name=mem19_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, u=1)
;#init_memory @mem19
.section .mem19, "aw"

.dword 0xc001c0de

;#random_addr(name=mem20,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem20_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem20, phys_name=mem20_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=1)
;#init_memory @mem20
.section .mem20, "aw"

.dword 0xc001c0de

;#random_addr(name=mem21,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem21_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem21, phys_name=mem21_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1, modify_pt=1)
;#init_memory @mem21
.section .mem21, "ax"

.dword 0xc001c0de

;#random_addr(name=mem22,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem22_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem22, phys_name=mem22_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem22
.section .mem22, "aw"

.dword 0xc001c0de

;#random_addr(name=mem23,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem23_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem23, phys_name=mem23_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem23
.section .mem23, "ax"

.dword 0xc001c0de

;#random_addr(name=mem25,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem25_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem25, phys_name=mem25_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem25
.section .mem25, "aw"

.dword 0xc001c0de

;#random_addr(name=mem26,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem26_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem26, phys_name=mem26_phys, pagesize=['2mb'], v=1, r=1, w=0, x=1)
;#page_mapping(lin_name=mem26+0x1000, phys_name=mem26_phys+0x1000, pagesize=['4kb'], v=1, r=1, w=0, x=1)
;#init_memory @mem26
.section .mem26, "ax"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack, phys_name=SID_PBVMS_001_ptw_no_faults_all_access_types_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_001_ptw_no_faults_all_access_types_stack
.section .SID_PBVMS_001_ptw_no_faults_all_access_types_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_003_ptw_all_privilege_modes_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_003_ptw_all_privilege_modes_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_003_ptw_all_privilege_modes_stack, phys_name=SID_PBVMS_003_ptw_all_privilege_modes_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_003_ptw_all_privilege_modes_stack
.section .SID_PBVMS_003_ptw_all_privilege_modes_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_006_ptw_page_boundary_crossing_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_006_ptw_page_boundary_crossing_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_006_ptw_page_boundary_crossing_stack, phys_name=SID_PBVMS_006_ptw_page_boundary_crossing_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_006_ptw_page_boundary_crossing_stack
.section .SID_PBVMS_006_ptw_page_boundary_crossing_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_008_va_sign_extension_fault_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_008_va_sign_extension_fault_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_008_va_sign_extension_fault_stack, phys_name=SID_PBVMS_008_va_sign_extension_fault_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_008_va_sign_extension_fault_stack
.section .SID_PBVMS_008_va_sign_extension_fault_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_009_superpage_alignment_fault_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_009_superpage_alignment_fault_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_009_superpage_alignment_fault_stack, phys_name=SID_PBVMS_009_superpage_alignment_fault_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_009_superpage_alignment_fault_stack
.section .SID_PBVMS_009_superpage_alignment_fault_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack, phys_name=SID_PBVMS_011_ptw_fault_boundary_crossing_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_011_ptw_fault_boundary_crossing_stack
.section .SID_PBVMS_011_ptw_fault_boundary_crossing_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_012_ptw_fault_prioritization_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_012_ptw_fault_prioritization_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_012_ptw_fault_prioritization_stack, phys_name=SID_PBVMS_012_ptw_fault_prioritization_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_012_ptw_fault_prioritization_stack
.section .SID_PBVMS_012_ptw_fault_prioritization_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_013_ptw_permission_encodings_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_013_ptw_permission_encodings_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_013_ptw_permission_encodings_stack, phys_name=SID_PBVMS_013_ptw_permission_encodings_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_013_ptw_permission_encodings_stack
.section .SID_PBVMS_013_ptw_permission_encodings_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_014_mstatus_sum_mxr_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_014_mstatus_sum_mxr_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_014_mstatus_sum_mxr_stack, phys_name=SID_PBVMS_014_mstatus_sum_mxr_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_014_mstatus_sum_mxr_stack
.section .SID_PBVMS_014_mstatus_sum_mxr_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_015_global_bit_honoured_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_015_global_bit_honoured_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_015_global_bit_honoured_stack, phys_name=SID_PBVMS_015_global_bit_honoured_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_015_global_bit_honoured_stack
.section .SID_PBVMS_015_global_bit_honoured_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_017_global_at_non_leaf_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_017_global_at_non_leaf_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_017_global_at_non_leaf_stack, phys_name=SID_PBVMS_017_global_at_non_leaf_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_017_global_at_non_leaf_stack
.section .SID_PBVMS_017_global_at_non_leaf_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_018_rsw_fields_writable_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_018_rsw_fields_writable_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_018_rsw_fields_writable_stack, phys_name=SID_PBVMS_018_rsw_fields_writable_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_018_rsw_fields_writable_stack
.section .SID_PBVMS_018_rsw_fields_writable_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_021_satp_valid_to_reserved_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_021_satp_valid_to_reserved_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_021_satp_valid_to_reserved_stack, phys_name=SID_PBVMS_021_satp_valid_to_reserved_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_021_satp_valid_to_reserved_stack
.section .SID_PBVMS_021_satp_valid_to_reserved_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_022_satp_csr_accessibility_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_022_satp_csr_accessibility_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_022_satp_csr_accessibility_stack, phys_name=SID_PBVMS_022_satp_csr_accessibility_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_022_satp_csr_accessibility_stack
.section .SID_PBVMS_022_satp_csr_accessibility_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_023_satp_asidlen_discovery_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_023_satp_asidlen_discovery_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_023_satp_asidlen_discovery_stack, phys_name=SID_PBVMS_023_satp_asidlen_discovery_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_023_satp_asidlen_discovery_stack
.section .SID_PBVMS_023_satp_asidlen_discovery_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_027_satp_user_mode_fault_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_027_satp_user_mode_fault_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_027_satp_user_mode_fault_stack, phys_name=SID_PBVMS_027_satp_user_mode_fault_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_027_satp_user_mode_fault_stack
.section .SID_PBVMS_027_satp_user_mode_fault_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_040_context_table_overflow_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_040_context_table_overflow_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_040_context_table_overflow_stack, phys_name=SID_PBVMS_040_context_table_overflow_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_040_context_table_overflow_stack
.section .SID_PBVMS_040_context_table_overflow_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack, phys_name=SID_PBVMS_042_canonical_boundary_crossing_fault_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_042_canonical_boundary_crossing_fault_stack
.section .SID_PBVMS_042_canonical_boundary_crossing_fault_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_043_fetch_window_spill_page_cross_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_043_fetch_window_spill_page_cross_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_043_fetch_window_spill_page_cross_stack, phys_name=SID_PBVMS_043_fetch_window_spill_page_cross_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_043_fetch_window_spill_page_cross_stack
.section .SID_PBVMS_043_fetch_window_spill_page_cross_stack, "aw"

.dword 0xc001c0de
