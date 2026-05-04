;#test.name       sstc
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      sstc
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: sstc

#include "rvmodel_macros.h"
.include "tp_sstc_2_equates.inc"

.include "tp_sstc_2_pagetables.inc"
#include "tp_sstc_2_macros.inc"
#include "tp_sstc_2_loader.inc"
#include "tp_sstc_2_syscalls.inc"
#include "tp_sstc_2_trap_handler_m.inc"
#include "tp_sstc_2_trap_handler_s.inc"
#include "tp_sstc_2_os.inc"
#include "tp_sstc_2_eot.inc"
#include "tp_sstc_2_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSTC_01)
SID_SSTC_01:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_SSTC_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mcounteren.tm=0
	li t2, 2
	;#csr_rw(mcounteren, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s0, t2
	li a0, failed_addr
	ld a1, 0(a0)
	jr a1
	# assert_exception block end
excp_return_label_0:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	;#csr_rw(stimecmp, read, true, false)
csrr t2, stimecmp

	mv s5, t2
	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_1:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	;#csr_rw(vstimecmp, read, true, false)
csrr t2, vstimecmp

	mv t2, t2
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_2:
	# set scounteren.tm = 1
	li t2, 2
	;#csr_rw(scounteren, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s3, t2
	li a1, failed_addr
	ld a7, 0(a1)
	jr a7
	# assert_exception block end
excp_return_label_3:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	;#csr_rw(stimecmp, read, true, false)
csrr t2, stimecmp

	mv a5, t2
	li s1, failed_addr
	ld a0, 0(s1)
	jr a0
	# assert_exception block end
excp_return_label_4:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	;#csr_rw(vstimecmp, read, true, false)
csrr t2, vstimecmp

	mv a7, t2
	li s2, failed_addr
	ld t5, 0(s2)
	jr t5
	# assert_exception block end
excp_return_label_5:
	# set hcounteren.tm = 1
	li t2, 2
	;#csr_rw(hcounteren, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s1, t2
	li t4, failed_addr
	ld t4, 0(t4)
	jr t4
	# assert_exception block end
excp_return_label_6:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	;#csr_rw(stimecmp, read, true, false)
csrr t2, stimecmp

	mv s1, t2
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_7:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_8:
	;#csr_rw(vstimecmp, read, true, false)
csrr t2, vstimecmp

	mv a0, t2
	li s4, failed_addr
	ld a7, 0(s4)
	jr a7
	# assert_exception block end
excp_return_label_8:
	# unset scounteren.tm = 0
	li t2, 2
	;#csr_rw(scounteren, clear, false, false)
li x31, super_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s9, t2
	li a2, failed_addr
	ld t1, 0(a2)
	jr t1
	# assert_exception block end
excp_return_label_9:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_10:
	;#csr_rw(stimecmp, read, true, false)
csrr t2, stimecmp

	mv a1, t2
	li t4, failed_addr
	ld s5, 0(t4)
	jr s5
	# assert_exception block end
excp_return_label_10:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	;#csr_rw(vstimecmp, read, true, false)
csrr t2, vstimecmp

	mv t5, t2
	li s3, failed_addr
	ld a7, 0(s3)
	jr a7
	# assert_exception block end
excp_return_label_11:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 20
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 21
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 22
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SSTC_01_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSTC_02_HU)
SID_SSTC_02_HU:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_SSTC_02_HU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mcounteren.tm=1
	li t2, 2
	;#csr_rw(mcounteren, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 26
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Set hcounteren.tm=0
	li t2, 2
	;#csr_rw(hcounteren, clear, false, false)
li x31, super_csr_jump_table_flags
li t5, 27
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Try accessing stimecmp - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	;#csr_rw(stimecmp, read, true, false)
csrr t2, stimecmp

	mv a2, t2
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_12:
	# Try accessing time - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a6, t2
	li a7, failed_addr
	ld t1, 0(a7)
	jr t1
	# assert_exception block end
excp_return_label_13:
	# set scounteren.tm = 1
	li t2, 2
	;#csr_rw(scounteren, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Try accessing stimecmp - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_14:
	;#csr_rw(stimecmp, read, true, false)
csrr t2, stimecmp

	mv a5, t2
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_14:
	# Try accessing time - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_15:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a4, t2
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_15:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 20
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 21
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 22
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SSTC_02_HU_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSTC_03_U)
SID_SSTC_03_U:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	li sp, SID_SSTC_03_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mcounteren.tm=1
	li t2, 2
	;#csr_rw(mcounteren, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 26
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Set hcounteren.tm=1
	li t2, 2
	;#csr_rw(hcounteren, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Set scounteren.tm=0
	li t2, 2
	;#csr_rw(scounteren, clear, false, false)
li x31, super_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Try accessing time in VU mode - should cause virtual instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_16:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s2, t2
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_16:
	# Set scounteren.tm=0
	li t2, 2
	;#csr_rw(scounteren, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Try accessing time in U mode - should cause illegal instruction exception
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s10, t2
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 20
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 21
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 22
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SSTC_03_U_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSTC_04_NON_M)
SID_SSTC_04_NON_M:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 48
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 49
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_SSTC_04_NON_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=0
	li t2, 9223372036854775808
	;#csr_rw(menvcfg, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 50
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Try accessing stimecmp - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_17:
	;#csr_rw(stimecmp, read, true, false)
csrr t2, stimecmp

	mv a2, t2
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
	# assert_exception block end
excp_return_label_17:
	li t2, 9223372036854775808
	;#csr_rw(henvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 52
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_18:
	;#csr_rw(stimecmp, read, true, false)
csrr t2, stimecmp

	mv s5, t2
	li s6, failed_addr
	ld s10, 0(s6)
	jr s10
	# assert_exception block end
excp_return_label_18:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 54
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 55
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SSTC_04_NON_M_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSTC_06)
SID_SSTC_06:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 48
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 49
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_SSTC_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=0
	li t2, 9223372036854775808
	;#csr_rw(menvcfg, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 50
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Try to set henvcfg.STCE=1
	li t2, 9223372036854775808
	;#csr_rw(henvcfg, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 52
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Read henvcfg and verify STCE bit is 0
	;#csr_rw(henvcfg, read, false, false)
li x31, super_csr_jump_table_flags
li t5, 60
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	mv t6, t2
	li s3, 0x8000000000000000
	and s10, t6, s3
	li s2, 0
	beq s10, s2, pass_label_0
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
pass_label_0:
	li t2, 9223372036854775808
	;#csr_rw(henvcfg, clear, false, false)
li x31, super_csr_jump_table_flags
li t5, 61
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	;#csr_rw(henvcfg, read, false, false)
li x31, super_csr_jump_table_flags
li t5, 60
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	mv a2, t2
	and s3, a2, s3
	li s7, 0
	beq s3, s7, pass_label_1
	li t2, failed_addr
	ld s3, 0(t2)
	jr s3
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 54
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 55
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SSTC_06_passed:
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
;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_01_stack, phys_name=SID_SSTC_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_01_stack
.section .SID_SSTC_01_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_02_HU_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_02_HU_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_02_HU_stack, phys_name=SID_SSTC_02_HU_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_02_HU_stack
.section .SID_SSTC_02_HU_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_03_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_03_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_03_U_stack, phys_name=SID_SSTC_03_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_03_U_stack
.section .SID_SSTC_03_U_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_04_NON_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_04_NON_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_04_NON_M_stack, phys_name=SID_SSTC_04_NON_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_04_NON_M_stack
.section .SID_SSTC_04_NON_M_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_06_stack, phys_name=SID_SSTC_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_06_stack
.section .SID_SSTC_06_stack, "aw"

.dword 0xc001c0de
