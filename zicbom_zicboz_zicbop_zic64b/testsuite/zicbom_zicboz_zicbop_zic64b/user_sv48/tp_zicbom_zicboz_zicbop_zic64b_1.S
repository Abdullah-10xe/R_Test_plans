;#test.name       zicbom_zicboz_zicbop_zic64b
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
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

;#discrete_test(test=SID_ZICBO_002)
SID_ZICBO_002:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICBO_002_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure senvcfg.CBIE = 00
	# Clear CBIE bits
	li t2, 48
	;#csr_rw(senvcfg, clear, false, false)
li x31, super_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Execute cbo.inval instruction
	# Check for illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s6, mem1
	li t2, 0
	add s5, s6, t2
fault_label_1:
	cbo.inval (s5)
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_002_passed:
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
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s3, mem2
	li a3, 0
	add a0, s3, a3
fault_label_2:
	cbo.clean (a0)
	li s9, failed_addr
	ld t1, 0(s9)
	jr t1
	# assert_exception block end
excp_return_label_2:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s7, mem2
	li s10, 0
	add s3, s7, s10
fault_label_3:
	cbo.flush (s3)
	li s10, failed_addr
	ld s3, 0(s10)
	jr s3
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

SID_ZICBO_003_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_004)
SID_ZICBO_004:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICBO_004_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure senvcfg.CBCFE = 00
	# Clear CBCFE bits
	li t2, 64
	;#csr_rw(senvcfg, clear, false, false)
li x31, super_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Execute cbo.clean and cbo.flush instructions
	# Check for illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t1, mem3
	li t5, 0
	add s6, t1, t5
fault_label_4:
	cbo.clean (s6)
	li a6, failed_addr
	ld t5, 0(a6)
	jr t5
	# assert_exception block end
excp_return_label_4:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, mem3
	li a5, 0
	add t4, t5, a5
fault_label_5:
	cbo.flush (t4)
	li a1, failed_addr
	ld s5, 0(a1)
	jr s5
	# assert_exception block end
excp_return_label_5:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_004_passed:
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
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t1, mem4
	li s0, 0
	add s1, t1, s0
fault_label_6:
	cbo.zero (s1)
	li t5, failed_addr
	ld s11, 0(t5)
	jr s11
	# assert_exception block end
excp_return_label_6:
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

;#discrete_test(test=SID_ZICBO_006)
SID_ZICBO_006:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICBO_006_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set up memory region
	# Configure senvcfg.CBZE = 00
	# Clear CBZE bit
	li t2, 128
	;#csr_rw(senvcfg, clear, false, false)
li x31, super_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Execute cbo.zero instruction
	# Check for illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t1, mem5
	li s4, 0
	add t5, t1, s4
fault_label_7:
	cbo.zero (t5)
	li a4, failed_addr
	ld s7, 0(a4)
	jr s7
	# assert_exception block end
excp_return_label_7:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_006_passed:
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
	li t4, mem6
	li t1, 0
	add s7, t4, t1
	prefetch.i 0(s7)
	li a4, mem6
	li s7, 0
	add s6, a4, s7
	prefetch.r 0(s6)
	li s9, mem6
	li t3, 0
	add a5, s9, t3
	prefetch.w 0(a5)
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
	li a7, mem7
	li a3, 0x7e0
	add t4, a7, a3
	prefetch.i 0(t4)
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
	li a3, mem8
	li t6, 0
	add s5, a3, t6
	prefetch.r 0(s5)
	li a6, mem8
	li t1, 0x7e0
	add s7, a6, t1
	prefetch.r 0(s7)
	# prefetch_r_2 = MemAccess(op="prefetch.r", memory=mem, offset=0x1F)
	# NOTE: compilers will fail out on imm[11:0] !=0, so unfortunately this test is not executable
	li t3, mem8
	li t6, 0
	add a0, t3, t6
	prefetch.w 0(a0)
	li a4, mem8
	li t1, 0x7e0
	add a0, a4, t1
	prefetch.w 0(a0)
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
li t5, 19
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
li t5, 4
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
li t5, 22
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Set CBZE bit
	li t2, 128
	;#csr_rw(senvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 23
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Set CBZE bit
	li t2, 128
	;#csr_rw(henvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 24
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Execute cbo.zero instruction
	li a6, mem9
	li a0, 0
	add t2, a6, a0
	cbo.zero (t2)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
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
li t5, 6
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
li t5, 19
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
li t5, 4
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
li t5, 22
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 23
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 24
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Set up memory region
	# Store data to memory
	li t5, mem10
	li t4, 0xe5446dd7
	sh t4, 0(t5)
	# Execute cbo.zero
	li s7, mem10
	li s4, 0
	add s9, s7, s4
	cbo.zero (s9)
	# Read back and verify zeros
	li t5, mem10
	lw a3, 0(t5)
	beq a3, a3, pass_label_0
	li a7, failed_addr
	ld s2, 0(a7)
	jr s2
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
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
li t5, 6
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
li t5, 19
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
li t5, 4
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
li t5, 22
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 23
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 24
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Set up memory regions for aliasing
	# Store data to VA1
	li s7, mem11
	li s3, 0xf9341c6b
	fcvt.s.wu fs3, s3
	fsd fs3, 0(s7)
	# Execute cbo.zero to VA1
	li s0, mem11
	li s9, 0
	add a5, s0, s9
	cbo.zero (a5)
	# Read back from both VAs and verify zeros
	li s0, mem11
	lw s0, 0(s0)
	li s6, mem12
	lw s10, 0(s6)
	beq s0, s0, pass_label_1
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
pass_label_1:
	beq s10, s10, pass_label_2
	li s8, failed_addr
	ld s3, 0(s8)
	jr s3
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
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
li t5, 6
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
li t5, 19
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
li t5, 4
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
li t5, 22
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 23
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 24
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Set up memory regions for aliasing
	# Same physical address
	# Same physical address, different VA
	# Store data to memory
	# Unaligned offset
	li s1, mem13
	li s6, 0xc69d4bdb
	fcvt.s.lu fs6, s6
	fsw fs6, 0x1(s1)
	# Execute cbo.zero with unaligned address
	# Unaligned address
	li s9, mem13
	li a1, 0
	add s9, s9, a1
	cbo.zero (s9)
	# Read back and verify zeros (should be aligned to cache block boundary)
	li a4, mem13
	lw t3, 0(a4)
	li s7, mem14
	lw s5, 0(s7)
	beq t3, t3, pass_label_3
	li t5, failed_addr
	ld t3, 0(t5)
	jr t3
pass_label_3:
	beq s5, s5, pass_label_4
	li t1, failed_addr
	ld t2, 0(t1)
	jr t2
pass_label_4:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
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
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICBO_020_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICBO_047)
SID_ZICBO_047:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 19
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
li t5, 4
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
li t5, 22
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 23
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 24
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li s9, mem15
	li s3, 0
	add t4, s9, s3
	cbo.flush (t4)
	li a2, mem15
	li a3, 0
	add s11, a2, a3
	lbu a6, 0(s11)
	li t1, mem15
	li a6, 0
	add a7, t1, a6
	cbo.clean (a7)
	li s9, mem15
	li s3, 0
	add s4, s9, s3
	li t3, 0x97dae390
	sh t3, 0(s4)
	li a2, mem15
	li s10, 0
	add a6, a2, s10
	cbo.inval (a6)
	li t5, mem15
	li a3, 0
	add s6, t5, a3
	flw fs6, 0(s6)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
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
li t5, 6
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
li t5, 19
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
li t5, 4
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
li t5, 22
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 23
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 24
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t5, mem16
	li t1, 0
	add s4, t5, t1
	lr.w s4, (s4)
	# Execute CMO between LR and SC
	# FIXME: add random cmo operation after LR and before SC
	li t5, mem16
	li s9, 0
	add s9, t5, s9
	cbo.flush (s9)
	# Execute SC (Store Conditional) - should succeed or fail based on reservation
	li a2, mem16
	li s11, 0
	add a2, a2, s11
	li t4, 0x9be3cece
	sc.w a5, t4, (a2)
	# Verify the result
	li s8, mem16
	flw ft11, 0(s8)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
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
li t5, 6
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
li t5, 19
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
li t5, 4
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
li t5, 22
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 240
	;#csr_rw(senvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 23
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	li t2, 240
	;#csr_rw(henvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 24
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Set up memory region
	# 1. Store to VA non-zero value
	li t1, mem17
	li s9, 0xf0e642f7
	sb s9, 0(t1)
	li s10, mem17
	li t4, 0x81355c56
	sw t4, 0x20(s10)
	li t4, mem17
	li t5, 0x69d495e0
	sh t5, 0x38(t4)
	# 2. Store to VA+64 non-zero value
	li s2, mem17
	li s7, 0x7c240d4c
	fcvt.s.w fs4, s7
	fsd fs4, 0x40(s2)
	li s0, mem17
	li a6, 0xd037ce02
	fcvt.s.lu fs6, a6
	fsd fs6, 0x60(s0)
	li a4, mem17
	li s9, 0x5b569646
	sd s9, 0x78(a4)
	# 3. CBO.ZERO to VA
	li t4, mem17
	li a5, 0
	add a1, t4, a5
	cbo.zero (a1)
	# 4. Verify VA to VA+63 == 0
	# Check multiple locations within the cache line to ensure all bytes are zeroed
	li a1, 0
	li s7, mem17
	ld s6, 0(s7)
	beq s6, a1, pass_label_5
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
pass_label_5:
	li a3, mem17
	ld a7, 0x20(a3)
	beq a7, a1, pass_label_6
	li s1, failed_addr
	ld s0, 0(s1)
	jr s0
pass_label_6:
	li a2, mem17
	ld a2, 0x38(a2)
	beq a2, a1, pass_label_7
	li a2, failed_addr
	ld t1, 0(a2)
	jr t1
pass_label_7:
	# 5. Verify VA+64 is non-zero
	li t2, mem17
	ld t5, 0x40(t2)
	bne t5, a1, pass_label_8
	li s8, failed_addr
	ld s0, 0(s8)
	jr s0
pass_label_8:
	li t6, mem17
	ld s7, 0x60(t6)
	bne s7, a1, pass_label_9
	li s9, failed_addr
	ld s5, 0(s9)
	jr s5
pass_label_9:
	li s2, mem17
	ld a6, 0x78(s2)
	bne a6, a1, pass_label_10
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
pass_label_10:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
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
li t5, 6
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
;#page_mapping(lin_name=mem12, phys_name=mem12_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem12
.section .mem12, "ax"

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

;#random_addr(name=mem16,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem16_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem16, phys_name=mem16_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem16
.section .mem16, "ax"

.dword 0xc001c0de

;#random_addr(name=mem17,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem17_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem17, phys_name=mem17_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem17
.section .mem17, "ax"

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

;#random_addr(name=SID_ZICBO_002_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_002_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_002_stack, phys_name=SID_ZICBO_002_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_002_stack
.section .SID_ZICBO_002_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_003_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_003_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_003_stack, phys_name=SID_ZICBO_003_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_003_stack
.section .SID_ZICBO_003_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_004_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_004_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_004_stack, phys_name=SID_ZICBO_004_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_004_stack
.section .SID_ZICBO_004_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_005_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_005_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_005_stack, phys_name=SID_ZICBO_005_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_005_stack
.section .SID_ZICBO_005_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICBO_006_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICBO_006_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICBO_006_stack, phys_name=SID_ZICBO_006_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICBO_006_stack
.section .SID_ZICBO_006_stack, "aw"

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
