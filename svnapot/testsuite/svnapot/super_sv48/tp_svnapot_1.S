;#test.name       svnapot
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      svnapot
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: svnapot

#include "rvmodel_macros.h"
.include "tp_svnapot_1_equates.inc"

.include "tp_svnapot_1_pagetables.inc"
#include "tp_svnapot_1_macros.inc"
#include "tp_svnapot_1_loader.inc"
#include "tp_svnapot_1_syscalls.inc"
#include "tp_svnapot_1_trap_handler_m.inc"
#include "tp_svnapot_1_trap_handler_s.inc"
#include "tp_svnapot_1_os.inc"
#include "tp_svnapot_1_eot.inc"
#include "tp_svnapot_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_00_LOAD)
SID_SVNAPOT_00_LOAD:
	li sp, SID_SVNAPOT_00_LOAD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem0, leaf)
li x31, pte_access_flags
li t0, mem0
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv a6, t2
	# Set N=0, ppn[3:0]=4'b1000 (non-NAPOT, normal 4K page)
	li a0, 0x7fffffffffffc3ff
	and s8, a6, a0
	li s7, 0x2000
	or s10, s8, s7
	mv t2, s10
	;#write_pte(mem0, leaf)
li x31, pte_access_flags
li t0, mem0
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# Perform load access - should succeed on normal 4K page
	li a0, mem0
	lbu s5, 0(a0)
	# Restore original PTE
	mv t2, a6
	;#write_pte(mem0, leaf)
li x31, pte_access_flags
li t0, mem0
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_00_LOAD_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_00_STORE)
SID_SVNAPOT_00_STORE:
	li sp, SID_SVNAPOT_00_STORE_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem1, leaf)
li x31, pte_access_flags
li t0, mem1
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s7, t2
	# Set N=0, ppn[3:0]=4'b1000 (non-NAPOT, normal 4K page)
	li t1, 0x7fffffffffffc3ff
	and s4, s7, t1
	li s6, 0x2000
	or t5, s4, s6
	mv t2, t5
	;#write_pte(mem1, leaf)
li x31, pte_access_flags
li t0, mem1
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# Perform store access - should succeed on normal 4K page
	li t2, mem1
	li s0, 0x18072e8f
	sd s0, 0(t2)
	# Restore original PTE
	mv t2, s7
	;#write_pte(mem1, leaf)
li x31, pte_access_flags
li t0, mem1
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_00_STORE_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_00_AMO)
SID_SVNAPOT_00_AMO:
	li sp, SID_SVNAPOT_00_AMO_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem2, leaf)
li x31, pte_access_flags
li t0, mem2
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s6, t2
	# Set N=0, ppn[3:0]=4'b1000 (non-NAPOT, normal 4K page)
	li a5, 0x7fffffffffffc3ff
	and t2, s6, a5
	li a4, 0x2000
	or t3, t2, a4
	mv t2, t3
	;#write_pte(mem2, leaf)
li x31, pte_access_flags
li t0, mem2
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# Perform AMO access - should succeed on normal 4K page
	li a0, mem2
	li s4, 0
	add t1, a0, s4
	amoswap.w s0, zero, (t1)
	# Restore original PTE
	mv t2, s6
	;#write_pte(mem2, leaf)
li x31, pte_access_flags
li t0, mem2
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_00_AMO_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_00_LRSC)
SID_SVNAPOT_00_LRSC:
	li sp, SID_SVNAPOT_00_LRSC_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem3, leaf)
li x31, pte_access_flags
li t0, mem3
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s0, t2
	# Set N=0, ppn[3:0]=4'b1000 (non-NAPOT, normal 4K page)
	li t3, 0x7fffffffffffc3ff
	and s9, s0, t3
	li t1, 0x2000
	or s5, s9, t1
	mv t2, s5
	;#write_pte(mem3, leaf)
li x31, pte_access_flags
li t0, mem3
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# Perform LR access - should succeed on normal 4K page
	li s9, mem3
	li a5, 0
	add s8, s9, a5
	lr.w a5, (s8)
	# Perform SC access - should succeed on normal 4K page
	li s1, mem3
	li t6, 0
	add s2, s1, t6
	sc.w s2, zero, (s2)
	# Restore original PTE
	mv t2, s0
	;#write_pte(mem3, leaf)
li x31, pte_access_flags
li t0, mem3
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_00_LRSC_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_01_LOAD)
SID_SVNAPOT_01_LOAD:
	li sp, SID_SVNAPOT_01_LOAD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem4, leaf)
li x31, pte_access_flags
li t0, mem4
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s7, t2
	# Set N=1, ppn[3:0]=4'b0000 (reserved NAPOT encoding)
	li s9, 0x7fffffffffffc3ff
	and a4, s7, s9
	li s3, 0x8000000000000000
	or a5, a4, s3
	mv t2, a5
	;#write_pte(mem4, leaf)
li x31, pte_access_flags
li t0, mem4
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# Load should cause page fault due to reserved NAPOT encoding
	OS_SETUP_CHECK_EXCP 0xd, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a4, mem4
fault_label_0:
	fld fs0, 0(a4)
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_0:
	# Restore original PTE
	mv t2, s7
	;#write_pte(mem4, leaf)
li x31, pte_access_flags
li t0, mem4
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_01_LOAD_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_01_STORE)
SID_SVNAPOT_01_STORE:
	li sp, SID_SVNAPOT_01_STORE_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem5, leaf)
li x31, pte_access_flags
li t0, mem5
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s0, t2
	# Set N=1, ppn[3:0]=4'b0000 (reserved NAPOT encoding)
	li s5, 0x7fffffffffffc3ff
	and s10, s0, s5
	li t5, 0x8000000000000000
	or a1, s10, t5
	mv t2, a1
	;#write_pte(mem5, leaf)
li x31, pte_access_flags
li t0, mem5
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# Store should cause page fault due to reserved NAPOT encoding
	OS_SETUP_CHECK_EXCP 0xf, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a4, mem5
	li s10, 0xed2f89dc
fault_label_1:
	sh s10, 0(a4)
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_1:
	# Restore original PTE
	mv t2, s0
	;#write_pte(mem5, leaf)
li x31, pte_access_flags
li t0, mem5
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_01_STORE_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_01_AMO)
SID_SVNAPOT_01_AMO:
	li sp, SID_SVNAPOT_01_AMO_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem6, leaf)
li x31, pte_access_flags
li t0, mem6
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv a1, t2
	# Set N=1, ppn[3:0]=4'b0000 (reserved NAPOT encoding)
	li t6, 0x7fffffffffffc3ff
	and s2, a1, t6
	li t6, 0x8000000000000000
	or t2, s2, t6
	mv t2, t2
	;#write_pte(mem6, leaf)
li x31, pte_access_flags
li t0, mem6
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# AMO should cause page fault due to reserved NAPOT encoding
	OS_SETUP_CHECK_EXCP 0xf, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s9, mem6
	li s6, 0
	add s11, s9, s6
fault_label_2:
	amoswap.w t2, zero, (s11)
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_2:
	# Restore original PTE
	mv t2, a1
	;#write_pte(mem6, leaf)
li x31, pte_access_flags
li t0, mem6
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_01_AMO_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_01_LRSC)
SID_SVNAPOT_01_LRSC:
	li sp, SID_SVNAPOT_01_LRSC_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem7, leaf)
li x31, pte_access_flags
li t0, mem7
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv a7, t2
	# Set N=1, ppn[3:0]=4'b0000 (reserved NAPOT encoding)
	li s10, 0x7fffffffffffc3ff
	and s7, a7, s10
	li s9, 0x8000000000000000
	or s4, s7, s9
	mv t2, s4
	;#write_pte(mem7, leaf)
li x31, pte_access_flags
li t0, mem7
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# LR should cause page fault due to reserved NAPOT encoding
	OS_SETUP_CHECK_EXCP 0xd, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, mem7
	li s0, 0
	add t3, t5, s0
fault_label_3:
	lr.w a5, (t3)
	li t3, failed_addr
	ld s8, 0(t3)
	jr s8
	# assert_exception block end
excp_return_label_3:
	# SC should cause page fault due to reserved NAPOT encoding
	OS_SETUP_CHECK_EXCP 0xf, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t4, mem7
	li a5, 0
	add a3, t4, a5
fault_label_4:
	sc.w s11, zero, (a3)
	li t5, failed_addr
	ld a3, 0(t5)
	jr a3
	# assert_exception block end
excp_return_label_4:
	# Restore original PTE
	mv t2, a7
	;#write_pte(mem7, leaf)
li x31, pte_access_flags
li t0, mem7
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_01_LRSC_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_02_LOAD)
SID_SVNAPOT_02_LOAD:
	li sp, SID_SVNAPOT_02_LOAD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem8, leaf)
li x31, pte_access_flags
li t0, mem8
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv a0, t2
	# Set N=1, ppn[3:0]=4'b1000 (valid 64K NAPOT encoding)
	li s6, 0x7fffffffffffc3ff
	and t5, a0, s6
	li s9, 0x8000000000002000
	or a1, t5, s9
	mv t2, a1
	;#write_pte(mem8, leaf)
li x31, pte_access_flags
li t0, mem8
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# Perform load access - should succeed on 64K NAPOT contiguous region
	li t2, mem8
	lw a4, 0(t2)
	# Restore original PTE
	mv t2, a0
	;#write_pte(mem8, leaf)
li x31, pte_access_flags
li t0, mem8
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_02_LOAD_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_02_STORE)
SID_SVNAPOT_02_STORE:
	li sp, SID_SVNAPOT_02_STORE_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem9, leaf)
li x31, pte_access_flags
li t0, mem9
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s3, t2
	# Set N=1, ppn[3:0]=4'b1000 (valid 64K NAPOT encoding)
	li s7, 0x7fffffffffffc3ff
	and t2, s3, s7
	li t1, 0x8000000000002000
	or s9, t2, t1
	mv t2, s9
	;#write_pte(mem9, leaf)
li x31, pte_access_flags
li t0, mem9
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# Perform store access - should succeed on 64K NAPOT contiguous region
	li s1, mem9
	li s2, 0xd7071081
	fcvt.s.w fs7, s2
	fsd fs7, 0(s1)
	# Restore original PTE
	mv t2, s3
	;#write_pte(mem9, leaf)
li x31, pte_access_flags
li t0, mem9
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_02_STORE_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_02_AMO)
SID_SVNAPOT_02_AMO:
	li sp, SID_SVNAPOT_02_AMO_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem10, leaf)
li x31, pte_access_flags
li t0, mem10
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s11, t2
	# Set N=1, ppn[3:0]=4'b1000 (valid 64K NAPOT encoding)
	li s9, 0x7fffffffffffc3ff
	and s10, s11, s9
	li s3, 0x8000000000002000
	or t6, s10, s3
	mv t2, t6
	;#write_pte(mem10, leaf)
li x31, pte_access_flags
li t0, mem10
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# Perform AMO access - should succeed on 64K NAPOT contiguous region
	li a2, mem10
	li a3, 0
	add t4, a2, a3
	amoswap.w a6, zero, (t4)
	# Restore original PTE
	mv t2, s11
	;#write_pte(mem10, leaf)
li x31, pte_access_flags
li t0, mem10
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_02_AMO_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SVNAPOT_02_LRSC)
SID_SVNAPOT_02_LRSC:
	li sp, SID_SVNAPOT_02_LRSC_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read and save original leaf PTE
	;#read_pte(mem11, leaf)
li x31, pte_access_flags
li t0, mem11
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001007
ecall

	mv s0, t2
	# Set N=1, ppn[3:0]=4'b1000 (valid 64K NAPOT encoding)
	li t2, 0x7fffffffffffc3ff
	and a4, s0, t2
	li s10, 0x8000000000002000
	or s11, a4, s10
	mv t2, s11
	;#write_pte(mem11, leaf)
li x31, pte_access_flags
li t0, mem11
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
	# Perform LR access - should succeed on 64K NAPOT contiguous region
	li a6, mem11
	li s6, 0
	add t4, a6, s6
	lr.w s5, (t4)
	# Perform SC access - should succeed on 64K NAPOT contiguous region
	li s10, mem11
	li s7, 0
	add t5, s10, s7
	sc.w s2, zero, (t5)
	# Restore original PTE
	mv t2, s0
	;#write_pte(mem11, leaf)
li x31, pte_access_flags
li t0, mem11
sd t0, 0(x31)
li t0, 3
sd t0, 8(x31)
li t0, -1
sd t0, 16(x31)
li x31, 0xf0001008
ecall

	sfence.vma zero, zero
SID_SVNAPOT_02_LRSC_passed:
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
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem1
.section .mem1, "aw"

.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem2
.section .mem2, "aw"

.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem3
.section .mem3, "aw"

.dword 0xc001c0de

;#random_addr(name=mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem4
.section .mem4, "aw"

.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
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
;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem8
.section .mem8, "aw"

.dword 0xc001c0de

;#random_addr(name=mem9,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem9_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem9
.section .mem9, "aw"

.dword 0xc001c0de

;#random_addr(name=mem10,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem10_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem10
.section .mem10, "aw"

.dword 0xc001c0de

;#random_addr(name=mem11,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem11_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, modify_pt=1)
;#init_memory @mem11
.section .mem11, "aw"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_00_LOAD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_00_LOAD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_00_LOAD_stack, phys_name=SID_SVNAPOT_00_LOAD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_00_LOAD_stack
.section .SID_SVNAPOT_00_LOAD_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_00_STORE_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_00_STORE_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_00_STORE_stack, phys_name=SID_SVNAPOT_00_STORE_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_00_STORE_stack
.section .SID_SVNAPOT_00_STORE_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_00_AMO_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_00_AMO_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_00_AMO_stack, phys_name=SID_SVNAPOT_00_AMO_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_00_AMO_stack
.section .SID_SVNAPOT_00_AMO_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_00_LRSC_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_00_LRSC_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_00_LRSC_stack, phys_name=SID_SVNAPOT_00_LRSC_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_00_LRSC_stack
.section .SID_SVNAPOT_00_LRSC_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_01_LOAD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_01_LOAD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_01_LOAD_stack, phys_name=SID_SVNAPOT_01_LOAD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_01_LOAD_stack
.section .SID_SVNAPOT_01_LOAD_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_01_STORE_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_01_STORE_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_01_STORE_stack, phys_name=SID_SVNAPOT_01_STORE_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_01_STORE_stack
.section .SID_SVNAPOT_01_STORE_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_01_AMO_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_01_AMO_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_01_AMO_stack, phys_name=SID_SVNAPOT_01_AMO_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_01_AMO_stack
.section .SID_SVNAPOT_01_AMO_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_01_LRSC_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_01_LRSC_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_01_LRSC_stack, phys_name=SID_SVNAPOT_01_LRSC_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_01_LRSC_stack
.section .SID_SVNAPOT_01_LRSC_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_02_LOAD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_02_LOAD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_02_LOAD_stack, phys_name=SID_SVNAPOT_02_LOAD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_02_LOAD_stack
.section .SID_SVNAPOT_02_LOAD_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_02_STORE_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_02_STORE_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_02_STORE_stack, phys_name=SID_SVNAPOT_02_STORE_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_02_STORE_stack
.section .SID_SVNAPOT_02_STORE_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_02_AMO_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_02_AMO_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_02_AMO_stack, phys_name=SID_SVNAPOT_02_AMO_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_02_AMO_stack
.section .SID_SVNAPOT_02_AMO_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SVNAPOT_02_LRSC_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SVNAPOT_02_LRSC_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SVNAPOT_02_LRSC_stack, phys_name=SID_SVNAPOT_02_LRSC_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SVNAPOT_02_LRSC_stack
.section .SID_SVNAPOT_02_LRSC_stack, "aw"

.dword 0xc001c0de
