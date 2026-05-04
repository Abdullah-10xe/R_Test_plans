;#test.name       svinval
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      svinval
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: svinval

#include "rvmodel_macros.h"
.include "tp_svinval_1_equates.inc"

.include "tp_svinval_1_pagetables.inc"
#include "tp_svinval_1_macros.inc"
#include "tp_svinval_1_loader.inc"
#include "tp_svinval_1_syscalls.inc"
#include "tp_svinval_1_trap_handler_m.inc"
#include "tp_svinval_1_trap_handler_s.inc"
#include "tp_svinval_1_os.inc"
#include "tp_svinval_1_eot.inc"
#include "tp_svinval_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_01_opcode_coverage)
SID_SVINVAL_01_opcode_coverage:
	li sp, SID_SVINVAL_01_opcode_coverage_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test SINVAL.VMA variants (S-mode, various paging modes)
	li t6, mem0
	sinval.vma t6, zero
	# Test SFENCE.W.INVAL and SFENCE.INVAL.IR (all privilege modes)
	sfence.w.inval
	sfence.inval.ir
	# Simple assertion to verify execution
	li t5, 0x1
	beq t5, t5, pass_label_0
	li s0, failed_addr
	ld a5, 0(s0)
	jr a5
pass_label_0:
SID_SVINVAL_01_opcode_coverage_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_03_invalidation_sequence_1)
SID_SVINVAL_03_invalidation_sequence_1:
	li sp, SID_SVINVAL_03_invalidation_sequence_1_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Random read to bring PTE into TLB
	li s5, mem1
	lbu s11, 0(s5)
	# Exception check on random store (should fault - no W bit)
	li s4, 0xdead
	OS_SETUP_CHECK_EXCP 0xf, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a2, mem1
fault_label_0:
	sw s4, 0(a2)
	li s1, failed_addr
	ld s9, 0(s1)
	jr s9
	# assert_exception block end
excp_return_label_0:
	# ReadPTE (leaf), set W bit to 1, write it back with WritePTE
	;#read_pte(mem1, leaf)
li x31, pte_access_flags
li t0, mem1
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s0, t2
	# W bit is bit 2
	li s8, 0x4
	or t3, t2, s8
	mv t2, t3
	;#write_pte(mem1, leaf)
li x31, pte_access_flags
li t0, mem1
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# 2. SFENCE.W.INVAL
	sfence.w.inval
	# 3. SINVAL.VMA
	li s1, mem1
	sinval.vma s1, zero
	# 4. SFENCE.INVAL.IR
	sfence.inval.ir
	# Verify page table is properly invalidated with a store
	li t1, mem1
	sw s4, 0(t1)
	;#read_pte(mem1, leaf)
li x31, pte_access_flags
li t0, mem1
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s4, t2
	bne s0, s4, pass_label_1
	li t6, failed_addr
	ld s3, 0(t6)
	jr s3
pass_label_1:
SID_SVINVAL_03_invalidation_sequence_1_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_04_invalidation_sequence_2_multiple_vas)
SID_SVINVAL_04_invalidation_sequence_2_multiple_vas:
	li sp, SID_SVINVAL_04_invalidation_sequence_2_multiple_vas_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Random reads to bring PTEs into TLB
	li s3, mem2
	lh t5, 0(s3)
	li t1, mem3
	lbu s8, 0(t1)
	li a4, mem4
	lw s8, 0(a4)
	# Exception checks on random stores (should fault - no W bit)
	li s9, 0xdead
	OS_SETUP_CHECK_EXCP 0xf, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s10, mem2
fault_label_1:
	sb s9, 0(s10)
	li t4, failed_addr
	ld a5, 0(t4)
	jr a5
	# assert_exception block end
excp_return_label_1:
	OS_SETUP_CHECK_EXCP 0xf, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s5, mem3
fault_label_2:
	sb s9, 0(s5)
	li a6, failed_addr
	ld t4, 0(a6)
	jr t4
	# assert_exception block end
excp_return_label_2:
	OS_SETUP_CHECK_EXCP 0xf, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a7, mem4
fault_label_3:
	sb s9, 0(a7)
	li a7, failed_addr
	ld s3, 0(a7)
	jr s3
	# assert_exception block end
excp_return_label_3:
	# Read PTEs, set W bit to 1, write them back
	# W bit is bit 2
	;#read_pte(mem2, leaf)
li x31, pte_access_flags
li t0, mem2
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s7, t2
	li s0, 0x4
	or a4, t2, s0
	mv t2, a4
	;#write_pte(mem2, leaf)
li x31, pte_access_flags
li t0, mem2
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	;#read_pte(mem3, leaf)
li x31, pte_access_flags
li t0, mem3
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv a4, t2
	li s3, 0x4
	or a2, t2, s3
	mv t2, a2
	;#write_pte(mem3, leaf)
li x31, pte_access_flags
li t0, mem3
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	;#read_pte(mem4, leaf)
li x31, pte_access_flags
li t0, mem4
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s4, t2
	li a2, 0x4
	or t5, t2, a2
	mv t2, t5
	;#write_pte(mem4, leaf)
li x31, pte_access_flags
li t0, mem4
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# 2. SFENCE.W.INVAL
	sfence.w.inval
	# 3. SINVAL.VMA for each VA
	li a3, mem2
	sinval.vma a3, zero
	li s10, mem3
	sinval.vma s10, zero
	li s3, mem4
	sinval.vma s3, zero
	# 4. SFENCE.INVAL.IR
	sfence.inval.ir
	# Verify page tables are properly invalidated with stores
	li t4, mem2
	fcvt.s.w fa7, s9
	fsw fa7, 0(t4)
	li t4, mem3
	fcvt.d.wu ft7, s9
	fsd ft7, 0(t4)
	li s8, mem4
	sb s9, 0(s8)
	# 5. Access all VAs
	;#read_pte(mem2, leaf)
li x31, pte_access_flags
li t0, mem2
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv a7, t2
	;#read_pte(mem3, leaf)
li x31, pte_access_flags
li t0, mem3
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s8, t2
	;#read_pte(mem4, leaf)
li x31, pte_access_flags
li t0, mem4
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s10, t2
	bne s7, a7, pass_label_2
	li s0, failed_addr
	ld t2, 0(s0)
	jr t2
pass_label_2:
	bne a4, s8, pass_label_3
	li a0, failed_addr
	ld t4, 0(a0)
	jr t4
pass_label_3:
	bne s4, s10, pass_label_4
	li t1, failed_addr
	ld s4, 0(t1)
	jr s4
pass_label_4:
SID_SVINVAL_04_invalidation_sequence_2_multiple_vas_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_05_non_consecutive_invalidation)
SID_SVINVAL_05_non_consecutive_invalidation:
	li sp, SID_SVINVAL_05_non_consecutive_invalidation_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Random read to bring PTE into TLB
	li s11, mem5
	lwu s6, 0(s11)
	# Exception check on random store (should fault - no W bit)
	li a1, 0xdead
	OS_SETUP_CHECK_EXCP 0xf, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s6, mem5
fault_label_4:
	sw a1, 0(s6)
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
	# assert_exception block end
excp_return_label_4:
	# ReadPTE (leaf), set W bit to 1, write it back with WritePTE
	;#read_pte(mem5, leaf)
li x31, pte_access_flags
li t0, mem5
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s7, t2
	# W bit is bit 2
	li s4, 0x4
	or t4, t2, s4
	mv t2, t4
	;#write_pte(mem5, leaf)
li x31, pte_access_flags
li t0, mem5
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	# 2. SFENCE.W.INVAL followed by random ops
	sfence.w.inval
	li t2, 0xe1fab9da
	li t1, 0xb3fa7aaa
	divw t6, t2, t1
	# 3. SINVAL.VMA
	li s1, mem5
	sinval.vma s1, zero
	# 4. Random ops followed by SFENCE.INVAL.IR
	li s5, 0xc69d4bdb
	li s1, 0xacab1a6e
	fcvt.s.lu ft8, s5
	fcvt.d.lu fs4, s1
	fadd.d fs3, ft8, fs4
	sfence.inval.ir
	# Verify page table is properly invalidated with a store
	li t4, mem5
	fcvt.s.wu fa3, a1
	fsd fa3, 0(t4)
	# 5. Access VA1
	;#read_pte(mem5, leaf)
li x31, pte_access_flags
li t0, mem5
sd t0, 0(x31)
li t0, 2
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s5, t2
	bne s7, s5, pass_label_5
	li a6, failed_addr
	ld a7, 0(a6)
	jr a7
pass_label_5:
SID_SVINVAL_05_non_consecutive_invalidation_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_07_fault_in_smode_with_tvm)
SID_SVINVAL_07_fault_in_smode_with_tvm:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_SVINVAL_07_fault_in_smode_with_tvm_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mstatus.TVM=1 (bit 20)
	li t2, 1048576
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# SINVAL.VMA should fault
	li s8, mem6
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	sinval.vma s8, zero
	li a4, failed_addr
	ld t1, 0(a4)
	jr t1
	# assert_exception block end
excp_return_label_5:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SVINVAL_07_fault_in_smode_with_tvm_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_09_tvm_sfence_sinval_sfence_flow)
SID_SVINVAL_09_tvm_sfence_sinval_sfence_flow:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_SVINVAL_09_tvm_sfence_sinval_sfence_flow_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mstatus.TVM=1 (bit 20)
	li t2, 1048576
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# SFENCE.W.INVAL should not fault with TVM=1
	sfence.w.inval
	# SINVAL.VMA should fault with TVM=1 in S-mode
	li a4, mem7
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	sinval.vma a4, zero
	li s9, failed_addr
	ld s10, 0(s9)
	jr s10
	# assert_exception block end
excp_return_label_6:
	# SFENCE.INVAL.IR should not fault with TVM=1
	sfence.inval.ir
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SVINVAL_09_tvm_sfence_sinval_sfence_flow_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_12_sinval_vma_opcode_x0_nonx0)
SID_SVINVAL_12_sinval_vma_opcode_x0_nonx0:
	li sp, SID_SVINVAL_12_sinval_vma_opcode_x0_nonx0_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a3, 0x1
	# SFENCE.W.INVAL
	sfence.w.inval
	# sinval.vma x0, rs2 (ASID-based invalidation)
	sinval.vma zero, a3
	# SFENCE.INVAL.IR
	sfence.inval.ir
SID_SVINVAL_12_sinval_vma_opcode_x0_nonx0_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_13_sinval_vma_opcode_nonx0_x0)
SID_SVINVAL_13_sinval_vma_opcode_nonx0_x0:
	li sp, SID_SVINVAL_13_sinval_vma_opcode_nonx0_x0_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# SFENCE.W.INVAL
	sfence.w.inval
	# sinval.vma rs1, x0 (VA-based invalidation)
	li s2, mem9
	sinval.vma s2, zero
	# SFENCE.INVAL.IR
	sfence.inval.ir
SID_SVINVAL_13_sinval_vma_opcode_nonx0_x0_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_14_sinval_vma_opcode_nonx0_nonx0)
SID_SVINVAL_14_sinval_vma_opcode_nonx0_nonx0:
	li sp, SID_SVINVAL_14_sinval_vma_opcode_nonx0_nonx0_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s6, 0x1
	# SFENCE.W.INVAL
	sfence.w.inval
	# sinval.vma rs1, rs2 (VA+ASID-based invalidation)
	li a7, mem10
	sinval.vma a7, s6
	# SFENCE.INVAL.IR
	sfence.inval.ir
SID_SVINVAL_14_sinval_vma_opcode_nonx0_nonx0_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVINVAL_15_sinval_vma_opcode_x0_x0)
SID_SVINVAL_15_sinval_vma_opcode_x0_x0:
	li sp, SID_SVINVAL_15_sinval_vma_opcode_x0_x0_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# SFENCE.W.INVAL
	sfence.w.inval
	# sinval.vma x0, x0 (VA+ASID-based invalidation)
	sinval.vma x0, x0
	# SFENCE.INVAL.IR
	sfence.inval.ir
SID_SVINVAL_15_sinval_vma_opcode_x0_x0_passed:
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
;#random_addr(name=mem0,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem0
.section .mem0, "aw"

.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, w=0, modify_pt=1)
;#init_memory @mem1
.section .mem1, "aw"

.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000, or_mask=0x1000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000, or_mask=0x1000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, w=0, modify_pt=1)
;#init_memory @mem2
.section .mem2, "aw"

.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000, or_mask=0x2000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000, or_mask=0x2000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, w=0, modify_pt=1)
;#init_memory @mem3
.section .mem3, "aw"

.dword 0xc001c0de

;#random_addr(name=mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000, or_mask=0x4000)
;#random_addr(name=mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000, or_mask=0x4000)
;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, w=0, modify_pt=1)
;#init_memory @mem4
.section .mem4, "aw"

.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0, w=0, modify_pt=1)
;#init_memory @mem5
.section .mem5, "aw"

.dword 0xc001c0de

;#random_addr(name=mem6,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem6_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem6
.section .mem6, "aw"

.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem7_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem7
.section .mem7, "aw"

.dword 0xc001c0de

;#random_addr(name=mem8,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem8_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem8
.section .mem8, "aw"

.dword 0xc001c0de

;#random_addr(name=mem9,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem9_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem9
.section .mem9, "aw"

.dword 0xc001c0de

;#random_addr(name=mem10,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem10_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem10
.section .mem10, "aw"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_01_opcode_coverage_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_01_opcode_coverage_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_01_opcode_coverage_stack, phys_name=SID_SVINVAL_01_opcode_coverage_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_01_opcode_coverage_stack
.section .SID_SVINVAL_01_opcode_coverage_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_03_invalidation_sequence_1_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_03_invalidation_sequence_1_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_03_invalidation_sequence_1_stack, phys_name=SID_SVINVAL_03_invalidation_sequence_1_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_03_invalidation_sequence_1_stack
.section .SID_SVINVAL_03_invalidation_sequence_1_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_04_invalidation_sequence_2_multiple_vas_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_04_invalidation_sequence_2_multiple_vas_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_04_invalidation_sequence_2_multiple_vas_stack, phys_name=SID_SVINVAL_04_invalidation_sequence_2_multiple_vas_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_04_invalidation_sequence_2_multiple_vas_stack
.section .SID_SVINVAL_04_invalidation_sequence_2_multiple_vas_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_05_non_consecutive_invalidation_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_05_non_consecutive_invalidation_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_05_non_consecutive_invalidation_stack, phys_name=SID_SVINVAL_05_non_consecutive_invalidation_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_05_non_consecutive_invalidation_stack
.section .SID_SVINVAL_05_non_consecutive_invalidation_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_07_fault_in_smode_with_tvm_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_07_fault_in_smode_with_tvm_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_07_fault_in_smode_with_tvm_stack, phys_name=SID_SVINVAL_07_fault_in_smode_with_tvm_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_07_fault_in_smode_with_tvm_stack
.section .SID_SVINVAL_07_fault_in_smode_with_tvm_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_09_tvm_sfence_sinval_sfence_flow_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_09_tvm_sfence_sinval_sfence_flow_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_09_tvm_sfence_sinval_sfence_flow_stack, phys_name=SID_SVINVAL_09_tvm_sfence_sinval_sfence_flow_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_09_tvm_sfence_sinval_sfence_flow_stack
.section .SID_SVINVAL_09_tvm_sfence_sinval_sfence_flow_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_12_sinval_vma_opcode_x0_nonx0_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_12_sinval_vma_opcode_x0_nonx0_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_12_sinval_vma_opcode_x0_nonx0_stack, phys_name=SID_SVINVAL_12_sinval_vma_opcode_x0_nonx0_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_12_sinval_vma_opcode_x0_nonx0_stack
.section .SID_SVINVAL_12_sinval_vma_opcode_x0_nonx0_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_13_sinval_vma_opcode_nonx0_x0_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_13_sinval_vma_opcode_nonx0_x0_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_13_sinval_vma_opcode_nonx0_x0_stack, phys_name=SID_SVINVAL_13_sinval_vma_opcode_nonx0_x0_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_13_sinval_vma_opcode_nonx0_x0_stack
.section .SID_SVINVAL_13_sinval_vma_opcode_nonx0_x0_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_14_sinval_vma_opcode_nonx0_nonx0_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_14_sinval_vma_opcode_nonx0_nonx0_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_14_sinval_vma_opcode_nonx0_nonx0_stack, phys_name=SID_SVINVAL_14_sinval_vma_opcode_nonx0_nonx0_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_14_sinval_vma_opcode_nonx0_nonx0_stack
.section .SID_SVINVAL_14_sinval_vma_opcode_nonx0_nonx0_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVINVAL_15_sinval_vma_opcode_x0_x0_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVINVAL_15_sinval_vma_opcode_x0_x0_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVINVAL_15_sinval_vma_opcode_x0_x0_stack, phys_name=SID_SVINVAL_15_sinval_vma_opcode_x0_x0_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVINVAL_15_sinval_vma_opcode_x0_x0_stack
.section .SID_SVINVAL_15_sinval_vma_opcode_x0_x0_stack, "aw"

.dword 0xc001c0de
