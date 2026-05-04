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

#include "rvmodel_macros.h"
.include "tp_paging_1_equates.inc"

.include "tp_paging_1_pagetables.inc"
#include "tp_paging_1_macros.inc"
#include "tp_paging_1_loader.inc"
#include "tp_paging_1_syscalls.inc"
#include "tp_paging_1_trap_handler_m.inc"
#include "tp_paging_1_trap_handler_s.inc"
#include "tp_paging_1_os.inc"
#include "tp_paging_1_eot.inc"
#include "tp_paging_1_scheduler.inc"
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
	li s0, mem2
	lw s5, 0(s0)
	li t4, mem2
	li s8, 0xe1fab9da
	fcvt.s.lu ft4, s8
	fsd ft4, 0(t4)
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
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s7, 0x400
	or s2, t2, s7
	mv t2, s2
	;#write_pte(mem6, leaf)
li x31, pte_access_flags
li t0, mem6
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

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
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

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

	li t3, mem18
	ld a5, 0(t3)
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
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t3, mem19
	flw fa1, 0(t3)
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
	csrr t6, satp
	mv a2, t6
	li a5, 0xf00000000000
	csrrs s1, satp, a5
	# Access with ASID=A1
	li a7, mem20
	li s1, 0x6bc15388
	sh s1, 0(a7)
	# Switch to ASID=A2, access global page
	li s10, 0xf00000000000
	csrrc a4, satp, s10
	li t6, mem20
	lwu s8, 0(t6)
	# Switch back to ASID=A1, access should still work due to Global bit
	csrrw t1, satp, a2
	li s3, mem20
	lw t2, 0(s3)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_015_global_bit_honoured_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_016_non_global_bit_honoured)
SID_PBVMS_016_non_global_bit_honoured:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_016_non_global_bit_honoured_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate non-global RW memory
	# Access VA1 to populate TLB
	li t2, mem21
	lwu t5, 0(t2)
	# Modify leaf PTE to introduce fault (clear Read bit)
	;#read_pte(mem21, leaf)
li x31, pte_access_flags
li t0, mem21
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li a2, -3
	and s6, t2, a2
	mv t2, s6
	;#write_pte(mem21, leaf)
li x31, pte_access_flags
li t0, mem21
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Change ASID to a never used value
	li t5, 0xff00000000000
	csrrs s9, satp, t5
	# SFENCE.VMA to ensure TLB invalidated for new ASID
	sfence.vma zero, zero
	# Access VA1 again should fault since non-global and new ASID forces PTW
	OS_SETUP_CHECK_EXCP 0xd, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a2, mem21
fault_label_11:
	ld s5, 0(a2)
	li t3, failed_addr
	ld a5, 0(t3)
	jr a5
	# assert_exception block end
excp_return_label_11:
	# Modify leaf PTE to re-add READ bit
	;#read_pte(mem21, leaf)
li x31, pte_access_flags
li t0, mem21
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s9, 0x2
	or s9, t2, s9
	mv t2, s9
	;#write_pte(mem21, leaf)
li x31, pte_access_flags
li t0, mem21
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_016_non_global_bit_honoured_passed:
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

	mv t2, t2
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

	# Access with ASID=A1, then switch ASID=A2
	li a4, mem22
	flw fa7, 0(a4)
	li t3, 0xff00000000000
	csrrs t1, satp, t3
	# Access should still succeed since non-leaf Global propagates to leaf
	li s5, mem22
	fld fs7, 0(s5)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
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
	;#read_pte(mem23, leaf)
li x31, pte_access_flags
li t0, mem23
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s5, 0x300
	or s0, t2, s5
	mv t2, s0
	;#write_pte(mem23, leaf)
li x31, pte_access_flags
li t0, mem23
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Re-read leaf PTE and verify RSW bits are set
	;#read_pte(mem23, leaf)
li x31, pte_access_flags
li t0, mem23
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	and s0, t2, s5
	beq s0, s5, pass_label_0
	li a7, failed_addr
	ld a2, 0(a7)
	jr a2
pass_label_0:
	# Read non-leaf PTE, set RSW bits, write back
	;#read_pte(mem23, 1)
li x31, pte_access_flags
li t0, mem23
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	or a5, t2, s5
	mv t2, a5
	;#write_pte(mem23, 1)
li x31, pte_access_flags
li t0, mem23
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Access should still work after RSW modification
	li s1, mem23
	lw s6, 0(s1)
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
	csrr s0, satp
	# Attempt to write reserved mode value to satp
	li s1, 0x2000000000000000
	csrrw a7, satp, s1
	# Read satp again - should be unchanged (write should not take effect)
	csrr s2, satp
	beq s0, s2, pass_label_1
	li a7, failed_addr
	ld a3, 0(a7)
	jr a3
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
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
	csrr s3, satp
	# Write satp CSR
	csrrw s9, satp, s3
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
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
	csrr a4, satp
	li a0, 0xffff00000000000
	or t1, a4, a0
	csrrw s10, satp, t1
	# Read back satp and check ASID field is 0xFFFF (ASIDLEN=16)
	csrr s0, satp
	li t4, 0x2c
	srl a6, s0, t4
	li t6, 0xffff
	and s9, a6, t6
	beq s9, t6, pass_label_2
	li a5, failed_addr
	ld s9, 0(a5)
	jr s9
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_023_satp_asidlen_discovery_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_025_mstatus_tvm_satp_access)
SID_PBVMS_025_mstatus_tvm_satp_access:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_025_mstatus_tvm_satp_access_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mstatus.TVM=1
	li t2, 1048576
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Attempt to read satp from S-mode -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	csrr t4, satp
	li s10, failed_addr
	ld s7, 0(s10)
	jr s7
	# assert_exception block end
excp_return_label_12:
	# Attempt to write satp from S-mode -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	csrrwi s0, satp, 0
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_13:
	# Clear mstatus.TVM=0, satp access should succeed from S-mode
	li t2, 1048576
	;#csr_rw(mstatus, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	csrr s5, satp
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_025_mstatus_tvm_satp_access_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_026_tlb_asid_match)
SID_PBVMS_026_tlb_asid_match:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_026_tlb_asid_match_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate non-global memory
	# Set ASID=A1 and access to populate TLB
	csrr s8, satp
	li t3, 0x100000000000
	csrrs s3, satp, t3
	li s10, mem24
	lbu a2, 0(s10)
	# Modify PTE to introduce fault (clear Read bit) 
	;#read_pte(mem24, leaf)
li x31, pte_access_flags
li t0, mem24
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s9, -3
	and a0, t2, s9
	mv t2, a0
	;#write_pte(mem24, leaf)
li x31, pte_access_flags
li t0, mem24
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Set ASID=A2 and access -> should NOT hit TLB (different ASID)
	li s10, 0x200000000000
	csrrs s6, satp, s10
	sfence.vma zero, zero
	OS_SETUP_CHECK_EXCP 0xd, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, mem24
fault_label_14:
	lh s8, 0(s2)
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
	# assert_exception block end
excp_return_label_14:
	# Modify PTE to re-add READ bit 
	;#read_pte(mem24, leaf)
li x31, pte_access_flags
li t0, mem24
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s7, 0x2
	or s6, t2, s7
	mv t2, s6
	;#write_pte(mem24, leaf)
li x31, pte_access_flags
li t0, mem24
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_026_tlb_asid_match_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_028_sfence_vma_opcode_coverage)
SID_PBVMS_028_sfence_vma_opcode_coverage:
	li sp, SID_PBVMS_028_sfence_vma_opcode_coverage_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s2, mem25
	li a5, 0x1
	# sfence.vma x0, x0 (invalidate all)
	sfence.vma zero, zero
	# sfence.vma rs1, x0 (VA-based invalidation)
	sfence.vma s2, zero
	# sfence.vma x0, rs2 (ASID-based invalidation)
	sfence.vma zero, a5
	# sfence.vma rs1, rs2 (VA+ASID-based invalidation)
	sfence.vma s2, a5
SID_PBVMS_028_sfence_vma_opcode_coverage_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_029_ordering_satp_mstatus_without_sfence)
SID_PBVMS_029_ordering_satp_mstatus_without_sfence:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mstatus.MXR=1, access execute-only page (should succeed)
	li t2, 524288
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, mem26
	lb s9, 0(t2)
	# Clear mstatus.MXR=0 without SFENCE, access again (should fault)
	li t2, 524288
	;#csr_rw(mstatus, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0xd, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, mem26
fault_label_15:
	ld a1, 0(t2)
	li s2, failed_addr
	ld s6, 0(s2)
	jr s6
	# assert_exception block end
excp_return_label_15:
	# Set mstatus.SUM=1, access user page from S-mode (should succeed)
	li t2, 262144
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li a4, mem27
	lh a7, 0(a4)
	# Clear mstatus.SUM=0 without SFENCE, access again (should fault)
	li t2, 262144
	;#csr_rw(mstatus, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0xd, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, mem27
fault_label_16:
	lw a0, 0(s2)
	li s10, failed_addr
	ld s9, 0(s10)
	jr s9
	# assert_exception block end
excp_return_label_16:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_029_ordering_satp_mstatus_without_sfence_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_030_sfence_vma_ordering_sync)
SID_PBVMS_030_sfence_vma_ordering_sync:
	li sp, SID_PBVMS_030_sfence_vma_ordering_sync_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Access MUT to populate TLB
	li s5, mem28
	lw t6, 0(s5)
	# Modify leaf PTE to introduce fault (clear Read bit)
	;#read_pte(mem28, leaf)
li x31, pte_access_flags
li t0, mem28
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s9, -3
	and a4, t2, s9
	mv t2, a4
	;#write_pte(mem28, leaf)
li x31, pte_access_flags
li t0, mem28
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Execute SFENCE.VMA to synchronize PTE store
	sfence.vma zero, zero
	# Access MUT again - should fault after SFENCE.VMA
	OS_SETUP_CHECK_EXCP 0xd, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s1, mem28
fault_label_17:
	flw fs8, 0(s1)
	li s0, failed_addr
	ld a1, 0(s0)
	jr a1
	# assert_exception block end
excp_return_label_17:
	# Return PTE
	;#read_pte(mem28, leaf)
li x31, pte_access_flags
li t0, mem28
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li a5, 0x2
	or a7, t2, a5
	mv t2, a7
	;#write_pte(mem28, leaf)
li x31, pte_access_flags
li t0, mem28
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

SID_PBVMS_030_sfence_vma_ordering_sync_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_031_sfence_vma_invalidate_all)
SID_PBVMS_031_sfence_vma_invalidate_all:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_031_sfence_vma_invalidate_all_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate global and non-global memory regions
	# Set ASID=A1, access MUTs set#1
	li a4, 0x100000000000
	csrrs s2, satp, a4
	li a7, mem29
	ld s3, 0(a7)
	li s1, mem30
	flw fa0, 0(s1)
	# Set ASID=A2, access MUTs set#2
	li a5, 0x200000000000
	csrrs t6, satp, a5
	li a5, mem29
	lh s3, 0(a5)
	li s11, mem30
	lhu a1, 0(s11)
	# Modify PTEs to introduce fault (clear Read bit)
	;#read_pte(mem29, leaf)
li x31, pte_access_flags
li t0, mem29
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s11, -3
	and s2, t2, s11
	mv t2, s2
	;#write_pte(mem29, leaf)
li x31, pte_access_flags
li t0, mem29
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	;#read_pte(mem30, leaf)
li x31, pte_access_flags
li t0, mem30
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	and s11, t2, s11
	mv t2, s11
	;#write_pte(mem30, leaf)
li x31, pte_access_flags
li t0, mem30
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Set ASID=A3, SFENCE.VMA (all)
	li a2, 0x300000000000
	csrrs s9, satp, a2
	sfence.vma zero, zero
	# Access MUTs should fault after full invalidation
	OS_SETUP_CHECK_EXCP 0xd, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s0, mem29
fault_label_18:
	lw a4, 0(s0)
	li a3, failed_addr
	ld a7, 0(a3)
	jr a7
	# assert_exception block end
excp_return_label_18:
	OS_SETUP_CHECK_EXCP 0xd, fault_label_19, excp_return_label_19, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a7, mem30
fault_label_19:
	flw ft5, 0(a7)
	li s5, failed_addr
	ld t5, 0(s5)
	jr t5
	# assert_exception block end
excp_return_label_19:
	# Return PTE
	;#read_pte(mem29, leaf)
li x31, pte_access_flags
li t0, mem29
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s4, 0x2
	or a4, t2, s4
	mv t2, a4
	;#write_pte(mem29, leaf)
li x31, pte_access_flags
li t0, mem29
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	;#read_pte(mem30, leaf)
li x31, pte_access_flags
li t0, mem30
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s0, 0x2
	or s0, t2, s0
	mv t2, s0
	;#write_pte(mem30, leaf)
li x31, pte_access_flags
li t0, mem30
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_031_sfence_vma_invalidate_all_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_032_sfence_vma_invalidate_asid)
SID_PBVMS_032_sfence_vma_invalidate_asid:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_032_sfence_vma_invalidate_asid_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate non-global memory
	# Set ASID=A1, access MUTs
	li s8, 0xffff00000000000
	csrrc s7, satp, s8
	li a3, 0x100000000000
	csrrs s11, satp, a3
	li s0, mem31
	lwu a6, 0(s0)
	# Modify PTE to introduce fault (clear Read bit)
	;#read_pte(mem31, leaf)
li x31, pte_access_flags
li t0, mem31
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s5, -3
	and s3, t2, s5
	mv t2, s3
	;#write_pte(mem31, leaf)
li x31, pte_access_flags
li t0, mem31
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Set ASID=A2, SFENCE.VMA with ASID=A1
	li s7, 0x200000000000
	csrrs s8, satp, s7
	li a1, 0x1
	sfence.vma zero, a1
	# Set ASID=A1, access should fault
	li t5, 0xffff00000000000
	csrrc s4, satp, t5
	li a2, 0x200000000000
	csrrs a2, satp, a2
	li s1, 0x1
	sfence.vma zero, s1
	# Return PTE
	li t3, 0xffff00000000000
	csrrc t1, satp, t3
	li a1, 0x100000000000
	csrrs a2, satp, a1
	OS_SETUP_CHECK_EXCP 0xd, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a0, mem31
fault_label_20:
	lbu a7, 0(a0)
	li s3, failed_addr
	ld s6, 0(s3)
	jr s6
	# assert_exception block end
excp_return_label_20:
	# Return PTE
	;#read_pte(mem31, leaf)
li x31, pte_access_flags
li t0, mem31
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li a5, 0x2
	or a3, t2, a5
	mv t2, a3
	;#write_pte(mem31, leaf)
li x31, pte_access_flags
li t0, mem31
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_032_sfence_vma_invalidate_asid_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_033_sfence_vma_invalidate_va)
SID_PBVMS_033_sfence_vma_invalidate_va:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_033_sfence_vma_invalidate_va_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate global and non-global memory
	# Set ASID=A1, access MUTs
	li s4, 0x100000000000
	csrrs a1, satp, s4
	li t4, mem32
	lh a4, 0(t4)
	li a2, mem33
	lwu t4, 0(a2)
	# Modify PTEs to introduce fault (clear Read bit)
	;#read_pte(mem32, leaf)
li x31, pte_access_flags
li t0, mem32
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li a3, -3
	and s9, t2, a3
	mv t2, s9
	;#write_pte(mem32, leaf)
li x31, pte_access_flags
li t0, mem32
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	;#read_pte(mem33, leaf)
li x31, pte_access_flags
li t0, mem33
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	and s8, t2, a3
	mv t2, s8
	;#write_pte(mem33, leaf)
li x31, pte_access_flags
li t0, mem33
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# SFENCE.VMA VA-based invalidation (rs1=VA, rs2=x0)
	li t2, mem32
	li s4, mem33
	sfence.vma t2, zero
	sfence.vma s4, zero
	# Access MUTs should fault after VA-based invalidation
	OS_SETUP_CHECK_EXCP 0xd, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s5, mem32
fault_label_21:
	ld a4, 0(s5)
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
	# assert_exception block end
excp_return_label_21:
	OS_SETUP_CHECK_EXCP 0xd, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a1, mem33
fault_label_22:
	lbu s10, 0(a1)
	li a0, failed_addr
	ld s2, 0(a0)
	jr s2
	# assert_exception block end
excp_return_label_22:
	# Modify leaf PTE to re-add READ bit
	;#read_pte(mem32, leaf)
li x31, pte_access_flags
li t0, mem32
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s4, 0x2
	or t5, t2, s4
	mv t2, t5
	;#write_pte(mem32, leaf)
li x31, pte_access_flags
li t0, mem32
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	;#read_pte(mem33, leaf)
li x31, pte_access_flags
li t0, mem33
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s0, 0x2
	or t1, t2, s0
	mv t2, t1
	;#write_pte(mem33, leaf)
li x31, pte_access_flags
li t0, mem33
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_033_sfence_vma_invalidate_va_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_034_sfence_vma_invalidate_va_asid)
SID_PBVMS_034_sfence_vma_invalidate_va_asid:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate non-global memory
	# Set ASID=A1, access MUTs
	li t4, 0xffff00000000000
	csrrc s9, satp, t4
	li a6, 0x100000000000
	csrrs s5, satp, a6
	li s3, mem34
	lb a7, 0(s3)
	# Modify PTE to introduce fault (clear Read bit)
	;#read_pte(mem34, leaf)
li x31, pte_access_flags
li t0, mem34
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s7, -3
	and s1, t2, s7
	mv t2, s1
	;#write_pte(mem34, leaf)
li x31, pte_access_flags
li t0, mem34
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# Set ASID=A2, SFENCE.VMA with VA+ASID=A1
	li a0, 0xffff00000000000
	csrrc s8, satp, a0
	li s3, 0x200000000000
	csrrs t6, satp, s3
	li a2, mem34
	li s6, 0x1
	sfence.vma a2, s6
	# Set ASID=A1, access should fault
	li s2, 0xffff00000000000
	csrrc s2, satp, s2
	li a0, 0x100000000000
	csrrs s2, satp, a0
	OS_SETUP_CHECK_EXCP 0xd, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s1, mem34
fault_label_23:
	lhu s6, 0(s1)
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_23:
	# Modify leaf PTE to re-add READ bit
	;#read_pte(mem34, leaf)
li x31, pte_access_flags
li t0, mem34
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li t4, 0x2
	or s11, t2, t4
	mv t2, s11
	;#write_pte(mem34, leaf)
li x31, pte_access_flags
li t0, mem34
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_034_sfence_vma_invalidate_va_asid_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_035_sfence_vma_various_page_sizes)
SID_PBVMS_035_sfence_vma_various_page_sizes:
	li sp, SID_PBVMS_035_sfence_vma_various_page_sizes_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# 4K page: access, modify PTE (clear Read bit), SFENCE.VMA, verify fault
	li a2, mem35
	ld a4, 0(a2)
	;#read_pte(mem35, leaf)
li x31, pte_access_flags
li t0, mem35
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s4, -3
	and s1, t2, s4
	mv t2, s1
	;#write_pte(mem35, leaf)
li x31, pte_access_flags
li t0, mem35
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	OS_SETUP_CHECK_EXCP 0xd, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, mem35
fault_label_24:
	flw ft3, 0(s2)
	li t2, failed_addr
	ld s10, 0(t2)
	jr s10
	# assert_exception block end
excp_return_label_24:
	# 2M page: access, modify PTE (clear Read bit), SFENCE.VMA, verify fault
	li a0, mem36
	lh s4, 0(a0)
	;#read_pte(mem36, leaf)
li x31, pte_access_flags
li t0, mem36
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li a2, -3
	and s2, t2, a2
	mv t2, s2
	;#write_pte(mem36, leaf)
li x31, pte_access_flags
li t0, mem36
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	OS_SETUP_CHECK_EXCP 0xd, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s7, mem36
fault_label_25:
	lhu s3, 0(s7)
	li t3, failed_addr
	ld s8, 0(t3)
	jr s8
	# assert_exception block end
excp_return_label_25:
	# Return PTE
	;#read_pte(mem36, leaf)
li x31, pte_access_flags
li t0, mem36
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s0, 0x2
	or t4, t2, s0
	mv t2, t4
	;#write_pte(mem36, leaf)
li x31, pte_access_flags
li t0, mem36
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	;#read_pte(mem35, leaf)
li x31, pte_access_flags
li t0, mem35
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li a7, 0x2
	or t6, t2, a7
	mv t2, t6
	;#write_pte(mem35, leaf)
li x31, pte_access_flags
li t0, mem35
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

SID_PBVMS_035_sfence_vma_various_page_sizes_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_037_sfence_vma_tvm_illegal)
SID_PBVMS_037_sfence_vma_tvm_illegal:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_037_sfence_vma_tvm_illegal_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mstatus.TVM=1
	li t2, 1048576
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Execute SFENCE.VMA from S-mode -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_26, excp_return_label_26, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_26:
	sfence.vma zero, zero
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
	# assert_exception block end
excp_return_label_26:
	# Clear mstatus.TVM=0, SFENCE.VMA should succeed
	li t2, 1048576
	;#csr_rw(mstatus, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sfence.vma zero, zero
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_037_sfence_vma_tvm_illegal_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_039_non_leaf_not_invalidated_va_based)
SID_PBVMS_039_non_leaf_not_invalidated_va_based:
	li sp, SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate memory and access to populate TLB
	li a6, mem37
	lhu s1, 0(a6)
	# Modify non-leaf PTE attributes
	;#read_pte(mem37, 1)
li x31, pte_access_flags
li t0, mem37
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s10, -3
	and t4, t2, s10
	mv t2, t4
	;#write_pte(mem37, 1)
li x31, pte_access_flags
li t0, mem37
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# VA-based SFENCE.VMA (should not invalidate non-leaf entries)
	li t3, mem37
	sfence.vma t3, zero
	# Access should still succeed (non-leaf entry not invalidated)
	li t3, mem37
	lh t6, 0(t3)
SID_PBVMS_039_non_leaf_not_invalidated_va_based_passed:
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
	li s2, 0x100000000000
	csrrs s0, satp, s2
	li a5, mem38
	lbu s10, 0(a5)
	li s1, code_mem39
	jalr s1
	# Access with ASID=2
	li a5, 0x200000000000
	csrrs a0, satp, a5
	li t1, mem38
	lh s0, 0(t1)
	li t2, code_mem39
	jalr t2
	# Access with ASID=3
	li s6, 0x300000000000
	csrrs t2, satp, s6
	li t2, mem38
	lh s9, 0(t2)
	li t6, code_mem39
	jalr t6
	# Access with ASID=4
	li s2, 0x400000000000
	csrrs a6, satp, s2
	li a4, mem38
	lb a0, 0(a4)
	li a4, code_mem39
	jalr a4
	# ASID reuse: switch back to ASID=1 and access
	li a4, 0x100000000000
	csrrs t3, satp, a4
	li a3, mem38
	lh s6, 0(a3)
	li a0, code_mem39
	jalr a0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_040_context_table_overflow_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_041_partial_page_invalidation)
SID_PBVMS_041_partial_page_invalidation:
	li sp, SID_PBVMS_041_partial_page_invalidation_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate 2M superpage and access first 4KB to populate TLB
	li t5, mem40
	ld a0, 0(t5)
	# Modify PTE to introduce fault (clear Read bit)
	;#read_pte(mem40, leaf)
li x31, pte_access_flags
li t0, mem40
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li a2, -3
	and s3, t2, a2
	mv t2, s3
	;#write_pte(mem40, leaf)
li x31, pte_access_flags
li t0, mem40
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# SFENCE.VMA with VA not in first 4KB (offset 0x1000) to test partial invalidation
	li s2, mem40
	sfence.vma s2, zero
	# Access should fault since entire superpage entry should be invalidated
	OS_SETUP_CHECK_EXCP 0xd, fault_label_27, excp_return_label_27, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a1, mem40
fault_label_27:
	ld s3, 0(a1)
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
	# assert_exception block end
excp_return_label_27:
	# Modify leaf PTE to re-add READ bit
	;#read_pte(mem40, leaf)
li x31, pte_access_flags
li t0, mem40
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	li s5, 0x2
	or a4, t2, s5
	mv t2, a4
	;#write_pte(mem40, leaf)
li x31, pte_access_flags
li t0, mem40
sd t0, 0(x31)
li t0, 1
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

SID_PBVMS_041_partial_page_invalidation_passed:
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
	OS_SETUP_CHECK_EXCP 0xd, fault_label_28, excp_return_label_28, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a0, mem41
	li s8, 0x8000000000000000
	add t6, a0, s8
fault_label_28:
	lh t2, 0(t6)
	li t6, failed_addr
	ld s2, 0(t6)
	jr s2
	# assert_exception block end
excp_return_label_28:
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
	li s9, code_mem43
	jalr s9
SID_PBVMS_043_fetch_window_spill_page_cross_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_PBVMS_044_fe_idle_serialization_page_cross)
SID_PBVMS_044_fe_idle_serialization_page_cross:
	li sp, tp_csr_storage
	;#csr_rw(satp, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_PBVMS_044_fe_idle_serialization_page_cross_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Allocate pages for instruction fetch near page boundary
	# CSR instruction around page cross
	csrr t6, satp
	csrrw s11, satp, t6
	# SFENCE.VMA around page cross
	sfence.vma zero, zero
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(satp, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_PBVMS_044_fe_idle_serialization_page_cross_passed:
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

	auipc s4, 0x20d
	li s6, 0x7ed4d57e
	li t3, 0xc2ce6f47
	subw s2, s6, t3
	ret

;#random_addr(name=code_mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem4, phys_name=code_mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem4
.section .code_mem4, "ax"

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
.section .code_mem16, "ax"

	li t4, 0xf8130c45
	li t1, 0x6c0fd4f8
	mulh s7, t4, t1
	ret

;#random_addr(name=code_mem39,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem39_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem39, phys_name=code_mem39_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem39
.section .code_mem39, "ax"

	li s5, 0xc381e892
	li s8, 0x701966a3
	mulhsu a3, s5, s8
	ret

;#random_addr(name=code_mem43,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem43_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem43, phys_name=code_mem43_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem43
.section .code_mem43, "ax"

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
;#page_mapping(lin_name=mem21, phys_name=mem21_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=0, modify_pt=1)
;#init_memory @mem21
.section .mem21, "aw"

.dword 0xc001c0de

;#random_addr(name=mem22,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem22_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem22, phys_name=mem22_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1, modify_pt=1)
;#init_memory @mem22
.section .mem22, "ax"

.dword 0xc001c0de

;#random_addr(name=mem23,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem23_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem23, phys_name=mem23_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem23
.section .mem23, "aw"

.dword 0xc001c0de

;#random_addr(name=mem24,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem24_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem24, phys_name=mem24_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=0, modify_pt=1)
;#init_memory @mem24
.section .mem24, "aw"

.dword 0xc001c0de

;#random_addr(name=mem25,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem25_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem25, phys_name=mem25_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem25
.section .mem25, "aw"

.dword 0xc001c0de

;#random_addr(name=mem26,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem26_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem26, phys_name=mem26_phys, pagesize=['4kb'], v=1, r=0, w=0, x=1)
;#init_memory @mem26
.section .mem26, "ax"

.dword 0xc001c0de

;#random_addr(name=mem27,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem27_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem27, phys_name=mem27_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, u=1)
;#init_memory @mem27
.section .mem27, "aw"

.dword 0xc001c0de

;#random_addr(name=mem28,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem28_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem28, phys_name=mem28_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem28
.section .mem28, "aw"

.dword 0xc001c0de

;#random_addr(name=mem29,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem29_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem29, phys_name=mem29_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=1, modify_pt=1)
;#init_memory @mem29
.section .mem29, "aw"

.dword 0xc001c0de

;#random_addr(name=mem30,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem30_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem30, phys_name=mem30_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem30
.section .mem30, "aw"

.dword 0xc001c0de

;#random_addr(name=mem31,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem31_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem31, phys_name=mem31_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem31
.section .mem31, "aw"

.dword 0xc001c0de

;#random_addr(name=mem32,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem32_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem32, phys_name=mem32_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=1, modify_pt=1)
;#init_memory @mem32
.section .mem32, "aw"

.dword 0xc001c0de

;#random_addr(name=mem33,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem33_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem33, phys_name=mem33_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem33
.section .mem33, "aw"

.dword 0xc001c0de

;#random_addr(name=mem34,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem34_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem34, phys_name=mem34_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, g=0, modify_pt=1)
;#init_memory @mem34
.section .mem34, "aw"

.dword 0xc001c0de

;#random_addr(name=mem35,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem35_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem35, phys_name=mem35_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, modify_pt=1)
;#init_memory @mem35
.section .mem35, "aw"

.dword 0xc001c0de

;#random_addr(name=mem36,  type=linear, size=0x201000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem36_phys,  type=physical, size=0x200000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem36, phys_name=mem36_phys, pagesize=['2mb'], v=1, r=1, w=0, x=0, modify_pt=1)
;#init_memory @mem36
.section .mem36, "aw"

.dword 0xc001c0de

;#random_addr(name=mem37,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem37_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem37, phys_name=mem37_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem37
.section .mem37, "aw"

.dword 0xc001c0de

;#random_addr(name=mem38,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem38_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem38, phys_name=mem38_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem38
.section .mem38, "ax"

.dword 0xc001c0de

;#random_addr(name=mem40,  type=linear, size=0x201000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem40_phys,  type=physical, size=0x200000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem40, phys_name=mem40_phys, pagesize=['2mb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem40
.section .mem40, "aw"

.dword 0xc001c0de

;#random_addr(name=mem41,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem41_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem41, phys_name=mem41_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem41
.section .mem41, "aw"

.dword 0xc001c0de

;#random_addr(name=mem42,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem42_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem42, phys_name=mem42_phys, pagesize=['2mb'], v=1, r=1, w=0, x=1)
;#page_mapping(lin_name=mem42+0x1000, phys_name=mem42_phys+0x1000, pagesize=['4kb'], v=1, r=1, w=0, x=1)
;#init_memory @mem42
.section .mem42, "ax"

.dword 0xc001c0de

;#random_addr(name=mem44,  type=linear, size=0x3000, and_mask=0xffffffffffe00000)
;#random_addr(name=mem44_phys,  type=physical, size=0x2000, and_mask=0xffffffffffe00000)
;#page_mapping(lin_name=mem44, phys_name=mem44_phys, pagesize=['2mb'], v=1, r=1, w=1, x=1)
;#page_mapping(lin_name=mem44+0x1000, phys_name=mem44_phys+0x1000, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem44
.section .mem44, "ax"

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

;#random_addr(name=SID_PBVMS_016_non_global_bit_honoured_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_016_non_global_bit_honoured_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_016_non_global_bit_honoured_stack, phys_name=SID_PBVMS_016_non_global_bit_honoured_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_016_non_global_bit_honoured_stack
.section .SID_PBVMS_016_non_global_bit_honoured_stack, "aw"

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

;#random_addr(name=SID_PBVMS_025_mstatus_tvm_satp_access_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_025_mstatus_tvm_satp_access_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_025_mstatus_tvm_satp_access_stack, phys_name=SID_PBVMS_025_mstatus_tvm_satp_access_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_025_mstatus_tvm_satp_access_stack
.section .SID_PBVMS_025_mstatus_tvm_satp_access_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_026_tlb_asid_match_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_026_tlb_asid_match_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_026_tlb_asid_match_stack, phys_name=SID_PBVMS_026_tlb_asid_match_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_026_tlb_asid_match_stack
.section .SID_PBVMS_026_tlb_asid_match_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_028_sfence_vma_opcode_coverage_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_028_sfence_vma_opcode_coverage_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_028_sfence_vma_opcode_coverage_stack, phys_name=SID_PBVMS_028_sfence_vma_opcode_coverage_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_028_sfence_vma_opcode_coverage_stack
.section .SID_PBVMS_028_sfence_vma_opcode_coverage_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack, phys_name=SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack
.section .SID_PBVMS_029_ordering_satp_mstatus_without_sfence_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_030_sfence_vma_ordering_sync_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_030_sfence_vma_ordering_sync_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_030_sfence_vma_ordering_sync_stack, phys_name=SID_PBVMS_030_sfence_vma_ordering_sync_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_030_sfence_vma_ordering_sync_stack
.section .SID_PBVMS_030_sfence_vma_ordering_sync_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_031_sfence_vma_invalidate_all_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_031_sfence_vma_invalidate_all_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_031_sfence_vma_invalidate_all_stack, phys_name=SID_PBVMS_031_sfence_vma_invalidate_all_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_031_sfence_vma_invalidate_all_stack
.section .SID_PBVMS_031_sfence_vma_invalidate_all_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_032_sfence_vma_invalidate_asid_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_032_sfence_vma_invalidate_asid_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_032_sfence_vma_invalidate_asid_stack, phys_name=SID_PBVMS_032_sfence_vma_invalidate_asid_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_032_sfence_vma_invalidate_asid_stack
.section .SID_PBVMS_032_sfence_vma_invalidate_asid_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_033_sfence_vma_invalidate_va_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_033_sfence_vma_invalidate_va_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_033_sfence_vma_invalidate_va_stack, phys_name=SID_PBVMS_033_sfence_vma_invalidate_va_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_033_sfence_vma_invalidate_va_stack
.section .SID_PBVMS_033_sfence_vma_invalidate_va_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack, phys_name=SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack
.section .SID_PBVMS_034_sfence_vma_invalidate_va_asid_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_035_sfence_vma_various_page_sizes_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_035_sfence_vma_various_page_sizes_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_035_sfence_vma_various_page_sizes_stack, phys_name=SID_PBVMS_035_sfence_vma_various_page_sizes_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_035_sfence_vma_various_page_sizes_stack
.section .SID_PBVMS_035_sfence_vma_various_page_sizes_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_037_sfence_vma_tvm_illegal_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_037_sfence_vma_tvm_illegal_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_037_sfence_vma_tvm_illegal_stack, phys_name=SID_PBVMS_037_sfence_vma_tvm_illegal_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_037_sfence_vma_tvm_illegal_stack
.section .SID_PBVMS_037_sfence_vma_tvm_illegal_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack, phys_name=SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack
.section .SID_PBVMS_039_non_leaf_not_invalidated_va_based_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_040_context_table_overflow_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_040_context_table_overflow_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_040_context_table_overflow_stack, phys_name=SID_PBVMS_040_context_table_overflow_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_040_context_table_overflow_stack
.section .SID_PBVMS_040_context_table_overflow_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_PBVMS_041_partial_page_invalidation_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_041_partial_page_invalidation_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_041_partial_page_invalidation_stack, phys_name=SID_PBVMS_041_partial_page_invalidation_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_041_partial_page_invalidation_stack
.section .SID_PBVMS_041_partial_page_invalidation_stack, "aw"

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

;#random_addr(name=SID_PBVMS_044_fe_idle_serialization_page_cross_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_PBVMS_044_fe_idle_serialization_page_cross_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_PBVMS_044_fe_idle_serialization_page_cross_stack, phys_name=SID_PBVMS_044_fe_idle_serialization_page_cross_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_PBVMS_044_fe_idle_serialization_page_cross_stack
.section .SID_PBVMS_044_fe_idle_serialization_page_cross_stack, "aw"

.dword 0xc001c0de
