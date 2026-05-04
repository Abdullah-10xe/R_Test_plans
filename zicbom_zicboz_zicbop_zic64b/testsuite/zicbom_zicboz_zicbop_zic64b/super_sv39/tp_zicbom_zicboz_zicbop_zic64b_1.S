;#test.name       zicbom_zicboz_zicbop_zic64b
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zicbom_zicboz_zicbop_zic64b
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zicbom_zicboz_zicbop_zic64b

#include "rvmodel_macros.h"
.include "tp_zicbom_zicboz_zicbop_zic64b_1_equates.inc"

.include "tp_zicbom_zicboz_zicbop_zic64b_1_pagetables.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_macros.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_loader.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_syscalls.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_trap_handler_m.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_trap_handler_s.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_os.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_eot.inc"
#include "tp_zicbom_zicboz_zicbop_zic64b_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_001)
SID_ZICBO_001:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICBO_001_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure menvcfg.CBIE = 00
	# Clear CBIE bits
	li t2, 48
	;#csr_rw(menvcfg, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Execute cbo.inval instruction
	# Check for illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, mem0
	li t6, 0
	add s1, t2, t6
fault_label_0:
	cbo.inval (s1)
	li a6, failed_addr
	ld a1, 0(a6)
	jr a1
	# assert_exception block end
excp_return_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_001_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_003)
SID_ZICBO_003:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICBO_003_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure menvcfg.CBCFE = 00
	# Clear CBCFE bits
	li t2, 64
	;#csr_rw(menvcfg, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Execute cbo.clean instruction
	# Execute cbo.flush instruction
	# Check for illegal instruction exception for both
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s6, mem1
	li t2, 0
	add s5, s6, t2
fault_label_1:
	cbo.clean (s5)
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_1:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s3, mem1
	li a3, 0
	add a0, s3, a3
fault_label_2:
	cbo.flush (a0)
	li t3, failed_addr
	ld t1, 0(t3)
	jr t1
	# assert_exception block end
excp_return_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_003_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_005)
SID_ZICBO_005:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICBO_005_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure menvcfg.CBZE = 00
	# Clear CBZE bit
	li t2, 128
	;#csr_rw(menvcfg, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Execute cbo.zero instruction
	# Check for illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s3, mem2
	li s5, 0
	add t3, s3, s5
fault_label_3:
	cbo.zero (t3)
	li s5, failed_addr
	ld t3, 0(s5)
	jr t3
	# assert_exception block end
excp_return_label_3:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_005_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_013)
SID_ZICBO_013:
	li sp, SID_ZICBO_013_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute prefetch instructions (these should not trap)
	li t1, mem3
	li t4, 0
	add s5, t1, t4
	prefetch.i 0(s5)
	li a5, mem3
	li t4, 0
	add t4, a5, t4
	prefetch.r 0(t4)
	li a4, mem3
	li t3, 0
	add a0, a4, t3
	prefetch.w 0(a0)
SID_ZICBO_013_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_015)
SID_ZICBO_015:
	li sp, SID_ZICBO_015_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute prefetch.i with non-zero imm[11:5]
	# imm[11:5] != 0
	li a6, mem4
	li t1, 0x7e0
	add t2, a6, t1
	prefetch.i 0(t2)
SID_ZICBO_015_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_016)
SID_ZICBO_016:
	li sp, SID_ZICBO_016_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute prefetch.r and prefetch.w with various imm values
	li t1, mem5
	li s11, 0
	add s8, t1, s11
	prefetch.r 0(s8)
	li t2, mem5
	li s4, 0x7e0
	add t1, t2, s4
	prefetch.r 0(t1)
	# prefetch_r_2 = MemAccess(op="prefetch.r", memory=mem, offset=0x1F)
	# NOTE: compilers will fail out on imm[11:0] !=0, so unfortunately this test is not executable
	li a4, mem5
	li s7, 0
	add t1, a4, s7
	prefetch.w 0(t1)
	li s0, mem5
	li t5, 0x7e0
	add a7, s0, t5
	prefetch.w 0(a7)
	# prefetch_w_2 = MemAccess(op="prefetch.w", memory=mem, offset=0x1F)
	# NOTE: compilers will fail out on imm[11:0] !=0, so unfortunately this test is not executable
SID_ZICBO_016_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_017)
SID_ZICBO_017:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_017_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure xENVCFG bits to permit execution
	# Set CBZE bit
	li t2, 128
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Set CBZE bit
	li t6, 0x80
	csrrs s5, senvcfg, t6
	# Set CBZE bit
	li s7, 0x80
	csrrs s10, henvcfg, s7
	# Execute cbo.zero instruction
	li a4, mem6
	li s3, 0
	add a5, a4, s3
	cbo.zero (a5)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 14
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_017_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_018)
SID_ZICBO_018:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_018_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li a6, 0xf0
	csrrs t1, senvcfg, a6
	li s6, 0xf0
	csrrs s11, henvcfg, s6
	# Set up memory region
	# Store data to memory
	li t6, mem7
	li a1, 0x380208ac
	fcvt.s.wu ft6, a1
	fsw ft6, 0(t6)
	# Execute cbo.zero
	li a6, mem7
	li a1, 0
	add s3, a6, a1
	cbo.zero (s3)
	# Read back and verify zeros
	li a2, mem7
	lw a1, 0(a2)
	beq a1, a1, pass_label_0
	li s7, failed_addr
	ld a2, 0(s7)
	jr a2
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 14
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_018_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_019)
SID_ZICBO_019:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_019_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li s7, 0xf0
	csrrs t4, senvcfg, s7
	li a3, 0xf0
	csrrs a7, henvcfg, a3
	# Set up memory regions for aliasing
	# Store data to VA1
	li s2, mem8
	li t5, 0x803468b9
	fcvt.s.w ft9, t5
	fsw ft9, 0(s2)
	# Execute cbo.zero to VA1
	li s10, mem8
	li t3, 0
	add s6, s10, t3
	cbo.zero (s6)
	# Read back from both VAs and verify zeros
	li t4, mem8
	lw s0, 0(t4)
	li t2, mem9
	lw a6, 0(t2)
	beq s0, s0, pass_label_1
	li t2, failed_addr
	ld s11, 0(t2)
	jr s11
pass_label_1:
	beq a6, a6, pass_label_2
	li s7, failed_addr
	ld s0, 0(s7)
	jr s0
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 14
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_019_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_020)
SID_ZICBO_020:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_020_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li s8, 0xf0
	csrrs t5, senvcfg, s8
	li s8, 0xf0
	csrrs t4, henvcfg, s8
	# Set up memory regions for aliasing
	# Same physical address
	# Same physical address, different VA
	# Store data to memory
	# Unaligned offset
	li t5, mem10
	li s2, 0x5dfbd3d4
	sd s2, 0x1(t5)
	# Execute cbo.zero with unaligned address
	# Unaligned address
	li s1, mem10
	li s7, 0
	add t4, s1, s7
	cbo.zero (t4)
	# Read back and verify zeros (should be aligned to cache block boundary)
	li s11, mem10
	lw a1, 0(s11)
	li s11, mem11
	lw a4, 0(s11)
	beq a1, a1, pass_label_3
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
pass_label_3:
	beq a4, a4, pass_label_4
	li s6, failed_addr
	ld t5, 0(s6)
	jr t5
pass_label_4:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 14
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_020_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_022)
SID_ZICBO_022:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_022_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t5, 0xf0
	csrrs t1, senvcfg, t5
	li s7, 0xf0
	csrrs s1, henvcfg, s7
	# Set up memory region with restricted access
	# No write permission
	# FIXME: add pmp configuratoin to create access fault
	# # Execute cbo.zero instruction
	# cbo_zero = MemAccess(op="cbo.zero", memory=mem)
	# # Check for store page fault exception
	# assert_exception = AssertException(cause=ExceptionCause.STORE_AMO_ACCESS_FAULT, code=[cbo_zero])
	# Execute reverse cbo.zero instruction
	# Check for store page fault exception
	OS_SETUP_CHECK_EXCP 0xf, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s2, mem12
	li t1, 0
	add t6, s2, t1
fault_label_4:
	cbo.zero (t6)
	li t4, failed_addr
	ld t2, 0(t4)
	jr t2
	# assert_exception block end
excp_return_label_4:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 14
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_022_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_047)
SID_ZICBO_047:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_047_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t1, 0xf0
	csrrs t2, senvcfg, t1
	li a4, 0xf0
	csrrs s10, henvcfg, a4
	li s11, mem13
	li a6, 0
	add s6, s11, a6
	cbo.flush (s6)
	li t4, mem13
	li s5, 0
	add t2, t4, s5
	li s7, 0x2b28fef3
	amoadd.w t5, s7, (t2)
	li s2, mem13
	li s5, 0
	add s11, s2, s5
	cbo.clean (s11)
	li t4, mem13
	li s5, 0
	add s0, t4, s5
	li t6, 0x8092b4d7
	fcvt.d.wu fs10, t6
	fsw fs10, 0(s0)
	li s5, mem13
	li s6, 0
	add s6, s5, s6
	cbo.inval (s6)
	li a3, mem13
	li s7, 0
	add a3, a3, s7
	lw s2, 0(a3)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 14
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_047_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_049)
SID_ZICBO_049:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_049_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Execute LR (Load Reserved)
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li s0, 0xf0
	csrrs s7, senvcfg, s0
	li s3, 0xf0
	csrrs t3, henvcfg, s3
	li s11, mem14
	li a4, 0
	add t4, s11, a4
	lr.w s8, (t4)
	# Execute CMO between LR and SC
	# FIXME: add random cmo operation after LR and before SC
	li t5, mem14
	li s5, 0
	add s10, t5, s5
	cbo.flush (s10)
	# Execute SC (Store Conditional) - should succeed or fail based on reservation
	li s6, mem14
	li t1, 0
	add s11, s6, t1
	li a4, 0x6d14475e
	sc.w t5, a4, (s11)
	# Verify the result
	li t5, mem14
	lh s5, 0(t5)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 14
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_049_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_50_ZIC64B_01)
SID_ZICBO_50_ZIC64B_01:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_ZICBO_50_ZIC64B_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Enable cache operations
	li t2, 240
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t3, 0xf0
	csrrs s1, senvcfg, t3
	li a0, 0xf0
	csrrs t1, henvcfg, a0
	# Set up memory region
	# 1. Store to VA non-zero value
	li s8, mem15
	li s0, 0x2d5db79e
	sh s0, 0(s8)
	li s8, mem15
	li s0, 0x8cfe5cd4
	sw s0, 0x20(s8)
	li s3, mem15
	li s2, 0x959f3a54
	fcvt.s.l fs1, s2
	fsd fs1, 0x38(s3)
	# 2. Store to VA+64 non-zero value
	li a4, mem15
	li a0, 0x2e47dc11
	sb a0, 0x40(a4)
	li a7, mem15
	li s11, 0xdc6b13ae
	sd s11, 0x60(a7)
	li s9, mem15
	li a3, 0x1773308f
	fcvt.d.l ft6, a3
	fsw ft6, 0x78(s9)
	# 3. CBO.ZERO to VA
	li s5, mem15
	li t4, 0
	add s2, s5, t4
	cbo.zero (s2)
	# 4. Verify VA to VA+63 == 0
	# Check multiple locations within the cache line to ensure all bytes are zeroed
	li s6, 0
	li s9, mem15
	ld t6, 0(s9)
	beq t6, s6, pass_label_5
	li s5, failed_addr
	ld s9, 0(s5)
	jr s9
pass_label_5:
	li t3, mem15
	ld a4, 0x20(t3)
	beq a4, s6, pass_label_6
	li s9, failed_addr
	ld t1, 0(s9)
	jr t1
pass_label_6:
	li s11, mem15
	ld a3, 0x38(s11)
	beq a3, s6, pass_label_7
	li a6, failed_addr
	ld a1, 0(a6)
	jr a1
pass_label_7:
	# 5. Verify VA+64 is non-zero
	li s0, mem15
	ld t4, 0x40(s0)
	bne t4, s6, pass_label_8
	li a0, failed_addr
	ld s5, 0(a0)
	jr s5
pass_label_8:
	li t2, mem15
	ld s3, 0x60(t2)
	bne s3, s6, pass_label_9
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
pass_label_9:
	li s7, mem15
	ld a1, 0x78(s7)
	bne a1, s6, pass_label_10
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
pass_label_10:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 14
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_50_ZIC64B_01_passed:
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
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem0
.section .mem0, "ax"

.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem1
.section .mem1, "ax"

.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem2
.section .mem2, "ax"

.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem3
.section .mem3, "ax"

.dword 0xc001c0de

;#random_addr(name=mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem4
.section .mem4, "ax"

.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem5
.section .mem5, "ax"

.dword 0xc001c0de

;#random_addr(name=mem6,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem6_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem6
.section .mem6, "ax"

.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem7_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem7
.section .mem7, "ax"

.dword 0xc001c0de

;#random_addr(name=mem8,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem8_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem8
.section .mem8, "ax"

.dword 0xc001c0de

;#random_addr(name=mem9,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem9_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem9
.section .mem9, "ax"

.dword 0xc001c0de

;#random_addr(name=mem10,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem10_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem10, phys_name=mem10_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem10
.section .mem10, "ax"

.dword 0xc001c0de

;#random_addr(name=mem11,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem11_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem11, phys_name=mem11_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem11
.section .mem11, "ax"

.dword 0xc001c0de

;#random_addr(name=mem12,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem12_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem12, phys_name=mem12_phys, pagesize=['4kb'], v=0, r=1, w=0, x=0)
;#init_memory @mem12
.section .mem12, "aw"

.dword 0xc001c0de

;#random_addr(name=mem13,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem13_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem13, phys_name=mem13_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem13
.section .mem13, "ax"

.dword 0xc001c0de

;#random_addr(name=mem14,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem14_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem14, phys_name=mem14_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem14
.section .mem14, "ax"

.dword 0xc001c0de

;#random_addr(name=mem15,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem15_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem15, phys_name=mem15_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem15
.section .mem15, "ax"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_001_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_001_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_001_stack, phys_name=SID_ZICBO_001_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_001_stack
.section .SID_ZICBO_001_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_003_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_003_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_003_stack, phys_name=SID_ZICBO_003_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_003_stack
.section .SID_ZICBO_003_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_005_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_005_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_005_stack, phys_name=SID_ZICBO_005_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_005_stack
.section .SID_ZICBO_005_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_013_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_013_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_013_stack, phys_name=SID_ZICBO_013_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_013_stack
.section .SID_ZICBO_013_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_015_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_015_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_015_stack, phys_name=SID_ZICBO_015_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_015_stack
.section .SID_ZICBO_015_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_016_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_016_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_016_stack, phys_name=SID_ZICBO_016_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_016_stack
.section .SID_ZICBO_016_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_017_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_017_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_017_stack, phys_name=SID_ZICBO_017_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_017_stack
.section .SID_ZICBO_017_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_018_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_018_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_018_stack, phys_name=SID_ZICBO_018_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_018_stack
.section .SID_ZICBO_018_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_019_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_019_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_019_stack, phys_name=SID_ZICBO_019_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_019_stack
.section .SID_ZICBO_019_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_020_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_020_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_020_stack, phys_name=SID_ZICBO_020_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_020_stack
.section .SID_ZICBO_020_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_022_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_022_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_022_stack, phys_name=SID_ZICBO_022_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_022_stack
.section .SID_ZICBO_022_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_047_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_047_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_047_stack, phys_name=SID_ZICBO_047_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_047_stack
.section .SID_ZICBO_047_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_049_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_049_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_049_stack, phys_name=SID_ZICBO_049_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_049_stack
.section .SID_ZICBO_049_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_50_ZIC64B_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_50_ZIC64B_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_50_ZIC64B_01_stack, phys_name=SID_ZICBO_50_ZIC64B_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_50_ZIC64B_01_stack
.section .SID_ZICBO_50_ZIC64B_01_stack, "aw"

.dword 0xc001c0de
