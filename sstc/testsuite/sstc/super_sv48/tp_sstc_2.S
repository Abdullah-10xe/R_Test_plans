;#test.name       sstc
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
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
	csrr s0, time
	li a0, failed_addr
	ld a1, 0(a0)
	jr a1
	# assert_exception block end
excp_return_label_0:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	csrr s5, stimecmp
	li a5, failed_addr
	ld a1, 0(a5)
	jr a1
	# assert_exception block end
excp_return_label_1:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	csrr a1, vstimecmp
	li s0, failed_addr
	ld s4, 0(s0)
	jr s4
	# assert_exception block end
excp_return_label_2:
	# set scounteren.tm = 1
	csrrsi s3, scounteren, 0x2
	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	csrr a0, time
	li a7, failed_addr
	ld a5, 0(a7)
	jr a5
	# assert_exception block end
excp_return_label_3:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	csrr s1, stimecmp
	li a1, failed_addr
	ld a0, 0(a1)
	jr a0
	# assert_exception block end
excp_return_label_4:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	csrr s2, vstimecmp
	li t5, failed_addr
	ld a5, 0(t5)
	jr a5
	# assert_exception block end
excp_return_label_5:
	# set hcounteren.tm = 1
	csrrsi t4, hcounteren, 0x2
	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	csrr t4, time
	li t5, failed_addr
	ld s4, 0(t5)
	jr s4
	# assert_exception block end
excp_return_label_6:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	csrr t3, stimecmp
	li s1, failed_addr
	ld s0, 0(s1)
	jr s0
	# assert_exception block end
excp_return_label_7:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_8:
	csrr a1, vstimecmp
	li s9, failed_addr
	ld a2, 0(s9)
	jr a2
	# assert_exception block end
excp_return_label_8:
	# unset scounteren.tm = 0
	csrrci t1, scounteren, 0x2
	# Try accessing time CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	csrr s3, time
	li a5, failed_addr
	ld s5, 0(a5)
	jr s5
	# assert_exception block end
excp_return_label_9:
	# Try accessing stimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_10:
	csrr s2, stimecmp
	li t5, failed_addr
	ld s0, 0(t5)
	jr s0
	# assert_exception block end
excp_return_label_10:
	# Try accessing vstimecmp CSR - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	csrr s8, vstimecmp
	li a2, failed_addr
	ld s10, 0(a2)
	jr s10
	# assert_exception block end
excp_return_label_11:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SSTC_01_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSTC_02_M_HS)
SID_SSTC_02_M_HS:
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
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x10(sp)
	;#csr_rw(scounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x18(sp)
	li sp, SID_SSTC_02_M_HS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=1
	li t2, 9223372036854775808
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Set mcounteren.tm=1
	li t2, 2
	;#csr_rw(mcounteren, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Set hcounteren.tm=0
	csrrci a4, hcounteren, 0x2
	# Try accessing stimecmp - should be ok
	csrr a5, stimecmp
	# Try accessing time - should be ok
	csrr t1, time
	# set scounteren.tm = 1
	csrrsi a3, scounteren, 0x2
	# Try accessing stimecmp - should be ok
	csrr s5, stimecmp
	# Try accessing time - should be ok
	csrr a6, time
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x18(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SSTC_02_M_HS_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSTC_03_NON_U)
SID_SSTC_03_NON_U:
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
	li sp, SID_SSTC_03_NON_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mcounteren.tm=1
	li t2, 2
	;#csr_rw(mcounteren, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Set hcounteren.tm=1
	csrrsi a1, hcounteren, 0x2
	# Set scounteren.tm=0
	csrrci s8, scounteren, 0x2
	# Try accessing time in VU mode - should cause virtual instruction exception
	csrr s9, time
	# Set scounteren.tm=0
	csrrsi s3, scounteren, 0x2
	# Try accessing time in U mode - should cause illegal instruction exception
	csrr s11, time
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SSTC_03_NON_U_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSTC_04_NON_M)
SID_SSTC_04_NON_M:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
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
li t5, 27
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Try accessing stimecmp - should cause illegal instruction exception
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	csrr t3, stimecmp
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
	# assert_exception block end
excp_return_label_12:
	li s6, 0x8000000000000000
	csrrs s6, henvcfg, s6
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	csrr s5, stimecmp
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
	# assert_exception block end
excp_return_label_13:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 28
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SSTC_04_NON_M_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSTC_05_M_HS)
SID_SSTC_05_M_HS:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_SSTC_05_M_HS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=1
	li t2, 9223372036854775808
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Set henvcfg.STCE=0
	li t6, 0x8000000000000000
	csrrc s2, henvcfg, t6
	# Try accessing vstimecmp - should be okay
	csrr s2, stimecmp
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 28
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_SSTC_05_M_HS_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSTC_06)
SID_SSTC_06:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
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
li t5, 27
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Try to set henvcfg.STCE=1
	li s9, 0x8000000000000000
	csrrs s2, henvcfg, s9
	# Read henvcfg and verify STCE bit is 0
	csrr s3, henvcfg
	li s7, 0x8000000000000000
	and a2, s3, s7
	li s6, 0
	beq a2, s6, pass_label_0
	li s3, failed_addr
	ld s6, 0(s3)
	jr s6
pass_label_0:
	li s11, 0x8000000000000000
	csrrc s2, henvcfg, s11
	csrr t5, henvcfg
	and a5, t5, s7
	li t6, 0
	beq a5, t6, pass_label_1
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 28
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
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

;#random_addr(name=SID_SSTC_02_M_HS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_02_M_HS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_02_M_HS_stack, phys_name=SID_SSTC_02_M_HS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_02_M_HS_stack
.section .SID_SSTC_02_M_HS_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_03_NON_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_03_NON_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_03_NON_U_stack, phys_name=SID_SSTC_03_NON_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_03_NON_U_stack
.section .SID_SSTC_03_NON_U_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_04_NON_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_04_NON_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_04_NON_M_stack, phys_name=SID_SSTC_04_NON_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_04_NON_M_stack
.section .SID_SSTC_04_NON_M_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_05_M_HS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_05_M_HS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_05_M_HS_stack, phys_name=SID_SSTC_05_M_HS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_05_M_HS_stack
.section .SID_SSTC_05_M_HS_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSTC_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_06_stack, phys_name=SID_SSTC_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_06_stack
.section .SID_SSTC_06_stack, "aw"

.dword 0xc001c0de
