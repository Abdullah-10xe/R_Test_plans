;#test.name       zicntr_zihpm_sscounterenw
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zicntr_zihpm_sscounterenw
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zicntr_zihpm_sscounterenw

#include "rvmodel_macros.h"
.include "tp_zicntr_zihpm_sscounterenw_1_equates.inc"

.include "tp_zicntr_zihpm_sscounterenw_1_pagetables.inc"
#include "tp_zicntr_zihpm_sscounterenw_1_macros.inc"
#include "tp_zicntr_zihpm_sscounterenw_1_loader.inc"
#include "tp_zicntr_zihpm_sscounterenw_1_syscalls.inc"
#include "tp_zicntr_zihpm_sscounterenw_1_trap_handler_m.inc"
#include "tp_zicntr_zihpm_sscounterenw_1_trap_handler_s.inc"
#include "tp_zicntr_zihpm_sscounterenw_1_os.inc"
#include "tp_zicntr_zihpm_sscounterenw_1_eot.inc"
#include "tp_zicntr_zihpm_sscounterenw_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_XCOUNTEREN_01_U)
SID_XCOUNTEREN_01_U:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_01_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 4294967295
	;#csr_rw(mcounteren, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 4294967295
	;#csr_rw(scounteren, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test each CSR in U mode - all should succeed
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t2, t2
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t6, t2
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s1, t2
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a6, t2
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a1, t2
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s9, t2
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s9, t2
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s8, t2
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s11, t2
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a6, t2
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s6, t2
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t2, t2
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a5, t2
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a2, t2
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t6, t2
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t1, t2
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t4, t2
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s1, t2
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a5, t2
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a5, t2
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a5, t2
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s0, t2
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s1, t2
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s8, t2
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s7, t2
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s8, t2
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t2, t2
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s5, t2
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t4, t2
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a7, t2
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s9, t2
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a0, t2
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 37
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 38
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_XCOUNTEREN_01_U_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_XCOUNTEREN_02_U)
SID_XCOUNTEREN_02_U:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_02_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 4294967295
	;#csr_rw(mcounteren, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 4294967295
	;#csr_rw(scounteren, clear, false, false)
li x31, super_csr_jump_table_flags
li t5, 42
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test each CSR in U mode - all should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t1, t2
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_0:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s10, t2
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_1:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t4, t2
	li a6, failed_addr
	ld s9, 0(a6)
	jr s9
	# assert_exception block end
excp_return_label_2:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a6, t2
	li a0, failed_addr
	ld t1, 0(a0)
	jr t1
	# assert_exception block end
excp_return_label_3:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s3, t2
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
	# assert_exception block end
excp_return_label_4:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s10, t2
	li t4, failed_addr
	ld s4, 0(t4)
	jr s4
	# assert_exception block end
excp_return_label_5:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t3, t2
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_6:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s7, t2
	li t2, failed_addr
	ld a6, 0(t2)
	jr a6
	# assert_exception block end
excp_return_label_7:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_8:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t5, t2
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_8:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t3, t2
	li a6, failed_addr
	ld a5, 0(a6)
	jr a5
	# assert_exception block end
excp_return_label_9:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_10:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s8, t2
	li t1, failed_addr
	ld t2, 0(t1)
	jr t2
	# assert_exception block end
excp_return_label_10:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s9, t2
	li a7, failed_addr
	ld t2, 0(a7)
	jr t2
	# assert_exception block end
excp_return_label_11:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t6, t2
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
	# assert_exception block end
excp_return_label_12:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a1, t2
	li t4, failed_addr
	ld a6, 0(t4)
	jr a6
	# assert_exception block end
excp_return_label_13:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_14:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s9, t2
	li s1, failed_addr
	ld s10, 0(s1)
	jr s10
	# assert_exception block end
excp_return_label_14:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_15:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s4, t2
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_15:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_16:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a7, t2
	li t3, failed_addr
	ld s1, 0(t3)
	jr s1
	# assert_exception block end
excp_return_label_16:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_17:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a3, t2
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
	# assert_exception block end
excp_return_label_17:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_18:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a6, t2
	li a6, failed_addr
	ld t6, 0(a6)
	jr t6
	# assert_exception block end
excp_return_label_18:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_19, excp_return_label_19, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_19:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s9, t2
	li s3, failed_addr
	ld s6, 0(s3)
	jr s6
	# assert_exception block end
excp_return_label_19:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_20:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t4, t2
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_20:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_21:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s6, t2
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
	# assert_exception block end
excp_return_label_21:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_22:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s10, t2
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_22:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_23:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s3, t2
	li t6, failed_addr
	ld s0, 0(t6)
	jr s0
	# assert_exception block end
excp_return_label_23:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_24:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s0, t2
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
	# assert_exception block end
excp_return_label_24:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_25:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a3, t2
	li a7, failed_addr
	ld s10, 0(a7)
	jr s10
	# assert_exception block end
excp_return_label_25:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_26, excp_return_label_26, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_26:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a7, t2
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_26:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_27, excp_return_label_27, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_27:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s11, t2
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_27:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_28, excp_return_label_28, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_28:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s10, t2
	li a3, failed_addr
	ld a7, 0(a3)
	jr a7
	# assert_exception block end
excp_return_label_28:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_29, excp_return_label_29, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_29:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s2, t2
	li t3, failed_addr
	ld s8, 0(t3)
	jr s8
	# assert_exception block end
excp_return_label_29:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_30, excp_return_label_30, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_30:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s4, t2
	li s11, failed_addr
	ld s9, 0(s11)
	jr s9
	# assert_exception block end
excp_return_label_30:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_31, excp_return_label_31, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_31:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a4, t2
	li t2, failed_addr
	ld t4, 0(t2)
	jr t4
	# assert_exception block end
excp_return_label_31:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 37
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 38
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_XCOUNTEREN_02_U_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_XCOUNTEREN_03_U)
SID_XCOUNTEREN_03_U:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_03_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 4294967295
	;#csr_rw(mcounteren, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 79
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 4294967295
	;#csr_rw(scounteren, set, false, false)
li x31, super_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test each CSR in U mode - all should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_32, excp_return_label_32, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_32:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s8, t2
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_32:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_33, excp_return_label_33, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_33:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s4, t2
	li s11, failed_addr
	ld s3, 0(s11)
	jr s3
	# assert_exception block end
excp_return_label_33:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_34, excp_return_label_34, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_34:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t6, t2
	li s5, failed_addr
	ld t3, 0(s5)
	jr t3
	# assert_exception block end
excp_return_label_34:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_35, excp_return_label_35, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_35:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a6, t2
	li t6, failed_addr
	ld a4, 0(t6)
	jr a4
	# assert_exception block end
excp_return_label_35:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_36, excp_return_label_36, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_36:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s3, t2
	li a4, failed_addr
	ld t1, 0(a4)
	jr t1
	# assert_exception block end
excp_return_label_36:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_37, excp_return_label_37, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_37:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t4, t2
	li t4, failed_addr
	ld t1, 0(t4)
	jr t1
	# assert_exception block end
excp_return_label_37:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_38, excp_return_label_38, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_38:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s11, t2
	li s11, failed_addr
	ld a2, 0(s11)
	jr a2
	# assert_exception block end
excp_return_label_38:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_39, excp_return_label_39, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_39:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t3, t2
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
	# assert_exception block end
excp_return_label_39:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_40, excp_return_label_40, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_40:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a7, t2
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_40:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_41, excp_return_label_41, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_41:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a4, t2
	li s9, failed_addr
	ld t3, 0(s9)
	jr t3
	# assert_exception block end
excp_return_label_41:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_42, excp_return_label_42, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_42:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a2, t2
	li s6, failed_addr
	ld t6, 0(s6)
	jr t6
	# assert_exception block end
excp_return_label_42:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_43, excp_return_label_43, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_43:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t4, t2
	li a7, failed_addr
	ld a6, 0(a7)
	jr a6
	# assert_exception block end
excp_return_label_43:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_44, excp_return_label_44, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_44:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s11, t2
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
	# assert_exception block end
excp_return_label_44:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_45, excp_return_label_45, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_45:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s6, t2
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
	# assert_exception block end
excp_return_label_45:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_46, excp_return_label_46, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_46:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t2, t2
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
	# assert_exception block end
excp_return_label_46:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_47, excp_return_label_47, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_47:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t3, t2
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
	# assert_exception block end
excp_return_label_47:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_48, excp_return_label_48, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_48:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t2, t2
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_48:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_49, excp_return_label_49, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_49:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s10, t2
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_49:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_50, excp_return_label_50, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_50:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t5, t2
	li a5, failed_addr
	ld a5, 0(a5)
	jr a5
	# assert_exception block end
excp_return_label_50:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_51, excp_return_label_51, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_51:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a0, t2
	li a0, failed_addr
	ld s9, 0(a0)
	jr s9
	# assert_exception block end
excp_return_label_51:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_52, excp_return_label_52, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_52:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a3, t2
	li a5, failed_addr
	ld s7, 0(a5)
	jr s7
	# assert_exception block end
excp_return_label_52:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_53, excp_return_label_53, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_53:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s5, t2
	li a1, failed_addr
	ld s10, 0(a1)
	jr s10
	# assert_exception block end
excp_return_label_53:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_54, excp_return_label_54, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_54:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s2, t2
	li t2, failed_addr
	ld s2, 0(t2)
	jr s2
	# assert_exception block end
excp_return_label_54:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_55, excp_return_label_55, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_55:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t6, t2
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
	# assert_exception block end
excp_return_label_55:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_56, excp_return_label_56, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_56:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a2, t2
	li a2, failed_addr
	ld s10, 0(a2)
	jr s10
	# assert_exception block end
excp_return_label_56:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_57, excp_return_label_57, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_57:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s3, t2
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_57:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_58, excp_return_label_58, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_58:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a4, t2
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_58:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_59, excp_return_label_59, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_59:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a3, t2
	li a2, failed_addr
	ld a6, 0(a2)
	jr a6
	# assert_exception block end
excp_return_label_59:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_60, excp_return_label_60, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_60:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t1, t2
	li s7, failed_addr
	ld a3, 0(s7)
	jr a3
	# assert_exception block end
excp_return_label_60:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_61, excp_return_label_61, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_61:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t1, t2
	li a1, failed_addr
	ld s3, 0(a1)
	jr s3
	# assert_exception block end
excp_return_label_61:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_62, excp_return_label_62, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_62:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t1, t2
	li t6, failed_addr
	ld a4, 0(t6)
	jr a4
	# assert_exception block end
excp_return_label_62:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_63, excp_return_label_63, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_63:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s8, t2
	li a7, failed_addr
	ld s4, 0(a7)
	jr s4
	# assert_exception block end
excp_return_label_63:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 37
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 38
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_XCOUNTEREN_03_U_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_XCOUNTEREN_04_U)
SID_XCOUNTEREN_04_U:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_04_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 4294967295
	;#csr_rw(mcounteren, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 79
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 4294967295
	;#csr_rw(scounteren, clear, false, false)
li x31, super_csr_jump_table_flags
li t5, 42
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test each CSR in U mode - all should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_64, excp_return_label_64, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_64:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a6, t2
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_64:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_65, excp_return_label_65, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_65:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s7, t2
	li s7, failed_addr
	ld a3, 0(s7)
	jr a3
	# assert_exception block end
excp_return_label_65:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_66, excp_return_label_66, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_66:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a7, t2
	li a0, failed_addr
	ld s5, 0(a0)
	jr s5
	# assert_exception block end
excp_return_label_66:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_67, excp_return_label_67, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_67:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a0, t2
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
	# assert_exception block end
excp_return_label_67:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_68, excp_return_label_68, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_68:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a3, t2
	li t4, failed_addr
	ld t1, 0(t4)
	jr t1
	# assert_exception block end
excp_return_label_68:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_69, excp_return_label_69, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_69:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s8, t2
	li s0, failed_addr
	ld s4, 0(s0)
	jr s4
	# assert_exception block end
excp_return_label_69:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_70, excp_return_label_70, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_70:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s3, t2
	li a1, failed_addr
	ld t2, 0(a1)
	jr t2
	# assert_exception block end
excp_return_label_70:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_71, excp_return_label_71, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_71:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s10, t2
	li t6, failed_addr
	ld a1, 0(t6)
	jr a1
	# assert_exception block end
excp_return_label_71:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_72, excp_return_label_72, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_72:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t4, t2
	li s10, failed_addr
	ld a0, 0(s10)
	jr a0
	# assert_exception block end
excp_return_label_72:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_73, excp_return_label_73, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_73:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s0, t2
	li t5, failed_addr
	ld t4, 0(t5)
	jr t4
	# assert_exception block end
excp_return_label_73:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_74, excp_return_label_74, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_74:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t2, t2
	li s0, failed_addr
	ld s4, 0(s0)
	jr s4
	# assert_exception block end
excp_return_label_74:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_75, excp_return_label_75, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_75:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t1, t2
	li a6, failed_addr
	ld a1, 0(a6)
	jr a1
	# assert_exception block end
excp_return_label_75:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_76, excp_return_label_76, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_76:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s0, t2
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_76:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_77, excp_return_label_77, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_77:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a1, t2
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_77:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_78, excp_return_label_78, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_78:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a5, t2
	li s8, failed_addr
	ld s1, 0(s8)
	jr s1
	# assert_exception block end
excp_return_label_78:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_79, excp_return_label_79, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_79:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s10, t2
	li a4, failed_addr
	ld t2, 0(a4)
	jr t2
	# assert_exception block end
excp_return_label_79:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_80, excp_return_label_80, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_80:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a3, t2
	li t3, failed_addr
	ld a7, 0(t3)
	jr a7
	# assert_exception block end
excp_return_label_80:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_81, excp_return_label_81, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_81:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s6, t2
	li t5, failed_addr
	ld s11, 0(t5)
	jr s11
	# assert_exception block end
excp_return_label_81:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_82, excp_return_label_82, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_82:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s2, t2
	li a6, failed_addr
	ld s0, 0(a6)
	jr s0
	# assert_exception block end
excp_return_label_82:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_83, excp_return_label_83, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_83:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a6, t2
	li t6, failed_addr
	ld s10, 0(t6)
	jr s10
	# assert_exception block end
excp_return_label_83:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_84, excp_return_label_84, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_84:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t5, t2
	li a1, failed_addr
	ld s3, 0(a1)
	jr s3
	# assert_exception block end
excp_return_label_84:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_85, excp_return_label_85, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_85:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a2, t2
	li s0, failed_addr
	ld s7, 0(s0)
	jr s7
	# assert_exception block end
excp_return_label_85:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_86, excp_return_label_86, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_86:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s10, t2
	li a5, failed_addr
	ld a1, 0(a5)
	jr a1
	# assert_exception block end
excp_return_label_86:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_87, excp_return_label_87, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_87:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s2, t2
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_87:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_88, excp_return_label_88, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_88:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a1, t2
	li s7, failed_addr
	ld s3, 0(s7)
	jr s3
	# assert_exception block end
excp_return_label_88:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_89, excp_return_label_89, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_89:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s5, t2
	li a6, failed_addr
	ld a4, 0(a6)
	jr a4
	# assert_exception block end
excp_return_label_89:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_90, excp_return_label_90, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_90:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t6, t2
	li t1, failed_addr
	ld t3, 0(t1)
	jr t3
	# assert_exception block end
excp_return_label_90:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_91, excp_return_label_91, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_91:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s3, t2
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
	# assert_exception block end
excp_return_label_91:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_92, excp_return_label_92, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_92:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a6, t2
	li a7, failed_addr
	ld s7, 0(a7)
	jr s7
	# assert_exception block end
excp_return_label_92:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_93, excp_return_label_93, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_93:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s8, t2
	li a6, failed_addr
	ld s2, 0(a6)
	jr s2
	# assert_exception block end
excp_return_label_93:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_94, excp_return_label_94, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_94:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s0, t2
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_94:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_95, excp_return_label_95, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_95:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s9, t2
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
	# assert_exception block end
excp_return_label_95:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 37
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 38
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_XCOUNTEREN_04_U_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_XCOUNTEREN_05_U)
SID_XCOUNTEREN_05_U:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_05_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 0
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Set only this field in mcounteren, clear all others
	li t2, 1
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_96, excp_return_label_96, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_96:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s3, t2
	li a6, failed_addr
	ld t1, 0(a6)
	jr t1
	# assert_exception block end
excp_return_label_96:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_97, excp_return_label_97, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_97:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a3, t2
	li a5, failed_addr
	ld s6, 0(a5)
	jr s6
	# assert_exception block end
excp_return_label_97:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_98, excp_return_label_98, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_98:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t2, t2
	li t6, failed_addr
	ld t6, 0(t6)
	jr t6
	# assert_exception block end
excp_return_label_98:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_99, excp_return_label_99, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_99:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a2, t2
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_99:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_100, excp_return_label_100, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_100:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s2, t2
	li s7, failed_addr
	ld s8, 0(s7)
	jr s8
	# assert_exception block end
excp_return_label_100:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_101, excp_return_label_101, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_101:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a1, t2
	li s3, failed_addr
	ld t6, 0(s3)
	jr t6
	# assert_exception block end
excp_return_label_101:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_102, excp_return_label_102, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_102:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t5, t2
	li a1, failed_addr
	ld t3, 0(a1)
	jr t3
	# assert_exception block end
excp_return_label_102:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_103, excp_return_label_103, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_103:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s6, t2
	li t2, failed_addr
	ld s7, 0(t2)
	jr s7
	# assert_exception block end
excp_return_label_103:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_104, excp_return_label_104, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_104:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s9, t2
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_104:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_105, excp_return_label_105, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_105:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s1, t2
	li a7, failed_addr
	ld s10, 0(a7)
	jr s10
	# assert_exception block end
excp_return_label_105:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_106, excp_return_label_106, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_106:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t4, t2
	li a6, failed_addr
	ld s7, 0(a6)
	jr s7
	# assert_exception block end
excp_return_label_106:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_107, excp_return_label_107, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_107:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a3, t2
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_107:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_108, excp_return_label_108, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_108:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t6, t2
	li t4, failed_addr
	ld s1, 0(t4)
	jr s1
	# assert_exception block end
excp_return_label_108:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_109, excp_return_label_109, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_109:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s8, t2
	li t3, failed_addr
	ld a1, 0(t3)
	jr a1
	# assert_exception block end
excp_return_label_109:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_110, excp_return_label_110, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_110:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s6, t2
	li s5, failed_addr
	ld s9, 0(s5)
	jr s9
	# assert_exception block end
excp_return_label_110:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_111, excp_return_label_111, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_111:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s3, t2
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_111:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_112, excp_return_label_112, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_112:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s9, t2
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
	# assert_exception block end
excp_return_label_112:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_113, excp_return_label_113, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_113:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s6, t2
	li a1, failed_addr
	ld s6, 0(a1)
	jr s6
	# assert_exception block end
excp_return_label_113:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_114, excp_return_label_114, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_114:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s11, t2
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_114:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_115, excp_return_label_115, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_115:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s8, t2
	li a5, failed_addr
	ld s5, 0(a5)
	jr s5
	# assert_exception block end
excp_return_label_115:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_116, excp_return_label_116, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_116:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t2, t2
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
	# assert_exception block end
excp_return_label_116:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_117, excp_return_label_117, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_117:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t3, t2
	li t5, failed_addr
	ld a5, 0(t5)
	jr a5
	# assert_exception block end
excp_return_label_117:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_118, excp_return_label_118, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_118:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s8, t2
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_118:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_119, excp_return_label_119, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_119:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a2, t2
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_119:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_120, excp_return_label_120, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_120:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s1, t2
	li a5, failed_addr
	ld s10, 0(a5)
	jr s10
	# assert_exception block end
excp_return_label_120:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_121, excp_return_label_121, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_121:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t6, t2
	li s7, failed_addr
	ld s6, 0(s7)
	jr s6
	# assert_exception block end
excp_return_label_121:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_122, excp_return_label_122, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_122:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a0, t2
	li a7, failed_addr
	ld s2, 0(a7)
	jr s2
	# assert_exception block end
excp_return_label_122:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_123, excp_return_label_123, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_123:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t1, t2
	li s11, failed_addr
	ld a3, 0(s11)
	jr a3
	# assert_exception block end
excp_return_label_123:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_124, excp_return_label_124, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_124:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t2, t2
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_124:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_125, excp_return_label_125, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_125:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s0, t2
	li t1, failed_addr
	ld s4, 0(t1)
	jr s4
	# assert_exception block end
excp_return_label_125:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_126, excp_return_label_126, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_126:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a6, t2
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_126:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_127, excp_return_label_127, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_127:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a4, t2
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_127:
	# Set only this field in mcounteren, clear all others
	li t2, 2
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_128, excp_return_label_128, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_128:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s1, t2
	li s10, failed_addr
	ld s10, 0(s10)
	jr s10
	# assert_exception block end
excp_return_label_128:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_129, excp_return_label_129, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_129:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a6, t2
	li a3, failed_addr
	ld a2, 0(a3)
	jr a2
	# assert_exception block end
excp_return_label_129:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_130, excp_return_label_130, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_130:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t3, t2
	li s4, failed_addr
	ld t6, 0(s4)
	jr t6
	# assert_exception block end
excp_return_label_130:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_131, excp_return_label_131, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_131:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a2, t2
	li a7, failed_addr
	ld s7, 0(a7)
	jr s7
	# assert_exception block end
excp_return_label_131:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_132, excp_return_label_132, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_132:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a7, t2
	li s8, failed_addr
	ld s3, 0(s8)
	jr s3
	# assert_exception block end
excp_return_label_132:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_133, excp_return_label_133, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_133:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a4, t2
	li a4, failed_addr
	ld s4, 0(a4)
	jr s4
	# assert_exception block end
excp_return_label_133:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_134, excp_return_label_134, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_134:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t1, t2
	li a2, failed_addr
	ld s0, 0(a2)
	jr s0
	# assert_exception block end
excp_return_label_134:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_135, excp_return_label_135, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_135:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t1, t2
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_135:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_136, excp_return_label_136, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_136:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a5, t2
	li t5, failed_addr
	ld t1, 0(t5)
	jr t1
	# assert_exception block end
excp_return_label_136:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_137, excp_return_label_137, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_137:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a3, t2
	li a1, failed_addr
	ld t4, 0(a1)
	jr t4
	# assert_exception block end
excp_return_label_137:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_138, excp_return_label_138, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_138:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s5, t2
	li s5, failed_addr
	ld a7, 0(s5)
	jr a7
	# assert_exception block end
excp_return_label_138:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_139, excp_return_label_139, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_139:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s5, t2
	li t1, failed_addr
	ld s3, 0(t1)
	jr s3
	# assert_exception block end
excp_return_label_139:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_140, excp_return_label_140, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_140:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t6, t2
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
	# assert_exception block end
excp_return_label_140:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_141, excp_return_label_141, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_141:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s1, t2
	li s11, failed_addr
	ld s9, 0(s11)
	jr s9
	# assert_exception block end
excp_return_label_141:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_142, excp_return_label_142, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_142:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a5, t2
	li a2, failed_addr
	ld a7, 0(a2)
	jr a7
	# assert_exception block end
excp_return_label_142:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_143, excp_return_label_143, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_143:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s10, t2
	li s0, failed_addr
	ld s8, 0(s0)
	jr s8
	# assert_exception block end
excp_return_label_143:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_144, excp_return_label_144, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_144:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t2, t2
	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_144:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_145, excp_return_label_145, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_145:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s11, t2
	li s8, failed_addr
	ld a4, 0(s8)
	jr a4
	# assert_exception block end
excp_return_label_145:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_146, excp_return_label_146, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_146:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a5, t2
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_146:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_147, excp_return_label_147, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_147:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s7, t2
	li s0, failed_addr
	ld t5, 0(s0)
	jr t5
	# assert_exception block end
excp_return_label_147:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_148, excp_return_label_148, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_148:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s3, t2
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_148:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_149, excp_return_label_149, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_149:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a7, t2
	li s6, failed_addr
	ld s9, 0(s6)
	jr s9
	# assert_exception block end
excp_return_label_149:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_150, excp_return_label_150, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_150:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a6, t2
	li t2, failed_addr
	ld a3, 0(t2)
	jr a3
	# assert_exception block end
excp_return_label_150:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_151, excp_return_label_151, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_151:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t3, t2
	li s6, failed_addr
	ld t1, 0(s6)
	jr t1
	# assert_exception block end
excp_return_label_151:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_152, excp_return_label_152, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_152:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a6, t2
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_152:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_153, excp_return_label_153, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_153:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s0, t2
	li a5, failed_addr
	ld s2, 0(a5)
	jr s2
	# assert_exception block end
excp_return_label_153:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_154, excp_return_label_154, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_154:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t5, t2
	li a2, failed_addr
	ld a1, 0(a2)
	jr a1
	# assert_exception block end
excp_return_label_154:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_155, excp_return_label_155, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_155:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t2, t2
	li s10, failed_addr
	ld s3, 0(s10)
	jr s3
	# assert_exception block end
excp_return_label_155:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_156, excp_return_label_156, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_156:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s5, t2
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_156:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_157, excp_return_label_157, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_157:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t5, t2
	li s10, failed_addr
	ld a1, 0(s10)
	jr a1
	# assert_exception block end
excp_return_label_157:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_158, excp_return_label_158, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_158:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t2, t2
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_158:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_159, excp_return_label_159, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_159:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s9, t2
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
	# assert_exception block end
excp_return_label_159:
	# Set only this field in mcounteren, clear all others
	li t2, 4
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_160, excp_return_label_160, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_160:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t2, t2
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
	# assert_exception block end
excp_return_label_160:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_161, excp_return_label_161, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_161:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s11, t2
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_161:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_162, excp_return_label_162, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_162:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s8, t2
	li t4, failed_addr
	ld s7, 0(t4)
	jr s7
	# assert_exception block end
excp_return_label_162:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_163, excp_return_label_163, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_163:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s4, t2
	li s0, failed_addr
	ld s1, 0(s0)
	jr s1
	# assert_exception block end
excp_return_label_163:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_164, excp_return_label_164, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_164:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t5, t2
	li t2, failed_addr
	ld t2, 0(t2)
	jr t2
	# assert_exception block end
excp_return_label_164:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_165, excp_return_label_165, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_165:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s5, t2
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
	# assert_exception block end
excp_return_label_165:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_166, excp_return_label_166, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_166:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a5, t2
	li a4, failed_addr
	ld s4, 0(a4)
	jr s4
	# assert_exception block end
excp_return_label_166:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_167, excp_return_label_167, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_167:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s4, t2
	li s4, failed_addr
	ld t3, 0(s4)
	jr t3
	# assert_exception block end
excp_return_label_167:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_168, excp_return_label_168, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_168:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a6, t2
	li t5, failed_addr
	ld s4, 0(t5)
	jr s4
	# assert_exception block end
excp_return_label_168:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_169, excp_return_label_169, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_169:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t6, t2
	li s10, failed_addr
	ld t6, 0(s10)
	jr t6
	# assert_exception block end
excp_return_label_169:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_170, excp_return_label_170, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_170:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a3, t2
	li a1, failed_addr
	ld s0, 0(a1)
	jr s0
	# assert_exception block end
excp_return_label_170:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_171, excp_return_label_171, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_171:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s7, t2
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
	# assert_exception block end
excp_return_label_171:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_172, excp_return_label_172, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_172:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t5, t2
	li a3, failed_addr
	ld s5, 0(a3)
	jr s5
	# assert_exception block end
excp_return_label_172:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_173, excp_return_label_173, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_173:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a0, t2
	li t4, failed_addr
	ld t1, 0(t4)
	jr t1
	# assert_exception block end
excp_return_label_173:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_174, excp_return_label_174, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_174:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s3, t2
	li t1, failed_addr
	ld s6, 0(t1)
	jr s6
	# assert_exception block end
excp_return_label_174:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_175, excp_return_label_175, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_175:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s6, t2
	li a6, failed_addr
	ld a0, 0(a6)
	jr a0
	# assert_exception block end
excp_return_label_175:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_176, excp_return_label_176, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_176:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t2, t2
	li t1, failed_addr
	ld a3, 0(t1)
	jr a3
	# assert_exception block end
excp_return_label_176:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_177, excp_return_label_177, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_177:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t1, t2
	li a0, failed_addr
	ld s11, 0(a0)
	jr s11
	# assert_exception block end
excp_return_label_177:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_178, excp_return_label_178, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_178:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a2, t2
	li s10, failed_addr
	ld t5, 0(s10)
	jr t5
	# assert_exception block end
excp_return_label_178:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_179, excp_return_label_179, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_179:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a6, t2
	li a5, failed_addr
	ld s2, 0(a5)
	jr s2
	# assert_exception block end
excp_return_label_179:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_180, excp_return_label_180, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_180:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a6, t2
	li t5, failed_addr
	ld t6, 0(t5)
	jr t6
	# assert_exception block end
excp_return_label_180:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_181, excp_return_label_181, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_181:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s7, t2
	li t2, failed_addr
	ld s8, 0(t2)
	jr s8
	# assert_exception block end
excp_return_label_181:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_182, excp_return_label_182, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_182:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t5, t2
	li a0, failed_addr
	ld a0, 0(a0)
	jr a0
	# assert_exception block end
excp_return_label_182:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_183, excp_return_label_183, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_183:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t1, t2
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_183:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_184, excp_return_label_184, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_184:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t6, t2
	li s10, failed_addr
	ld s8, 0(s10)
	jr s8
	# assert_exception block end
excp_return_label_184:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_185, excp_return_label_185, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_185:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a5, t2
	li a7, failed_addr
	ld a2, 0(a7)
	jr a2
	# assert_exception block end
excp_return_label_185:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_186, excp_return_label_186, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_186:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a3, t2
	li a1, failed_addr
	ld s6, 0(a1)
	jr s6
	# assert_exception block end
excp_return_label_186:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_187, excp_return_label_187, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_187:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s5, t2
	li s9, failed_addr
	ld s9, 0(s9)
	jr s9
	# assert_exception block end
excp_return_label_187:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_188, excp_return_label_188, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_188:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a3, t2
	li s2, failed_addr
	ld a2, 0(s2)
	jr a2
	# assert_exception block end
excp_return_label_188:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_189, excp_return_label_189, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_189:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s1, t2
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
	# assert_exception block end
excp_return_label_189:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_190, excp_return_label_190, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_190:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t6, t2
	li s9, failed_addr
	ld s3, 0(s9)
	jr s3
	# assert_exception block end
excp_return_label_190:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_191, excp_return_label_191, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_191:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s2, t2
	li s11, failed_addr
	ld a6, 0(s11)
	jr a6
	# assert_exception block end
excp_return_label_191:
	# Set only this field in mcounteren, clear all others
	li t2, 8
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_192, excp_return_label_192, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_192:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s10, t2
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_192:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_193, excp_return_label_193, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_193:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s3, t2
	li a3, failed_addr
	ld t5, 0(a3)
	jr t5
	# assert_exception block end
excp_return_label_193:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_194, excp_return_label_194, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_194:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s10, t2
	li s0, failed_addr
	ld a7, 0(s0)
	jr a7
	# assert_exception block end
excp_return_label_194:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_195, excp_return_label_195, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_195:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s11, t2
	li a4, failed_addr
	ld a5, 0(a4)
	jr a5
	# assert_exception block end
excp_return_label_195:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_196, excp_return_label_196, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_196:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s3, t2
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_196:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_197, excp_return_label_197, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_197:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a4, t2
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_197:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_198, excp_return_label_198, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_198:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s3, t2
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_198:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_199, excp_return_label_199, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_199:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t3, t2
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_199:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_200, excp_return_label_200, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_200:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s1, t2
	li a5, failed_addr
	ld a2, 0(a5)
	jr a2
	# assert_exception block end
excp_return_label_200:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_201, excp_return_label_201, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_201:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s1, t2
	li a7, failed_addr
	ld a3, 0(a7)
	jr a3
	# assert_exception block end
excp_return_label_201:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_202, excp_return_label_202, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_202:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t3, t2
	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_202:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_203, excp_return_label_203, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_203:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s1, t2
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_203:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_204, excp_return_label_204, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_204:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s9, t2
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
	# assert_exception block end
excp_return_label_204:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_205, excp_return_label_205, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_205:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a0, t2
	li a7, failed_addr
	ld a3, 0(a7)
	jr a3
	# assert_exception block end
excp_return_label_205:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_206, excp_return_label_206, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_206:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s3, t2
	li s8, failed_addr
	ld s1, 0(s8)
	jr s1
	# assert_exception block end
excp_return_label_206:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_207, excp_return_label_207, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_207:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s1, t2
	li s1, failed_addr
	ld s0, 0(s1)
	jr s0
	# assert_exception block end
excp_return_label_207:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_208, excp_return_label_208, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_208:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t6, t2
	li a6, failed_addr
	ld s0, 0(a6)
	jr s0
	# assert_exception block end
excp_return_label_208:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_209, excp_return_label_209, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_209:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s11, t2
	li a3, failed_addr
	ld a5, 0(a3)
	jr a5
	# assert_exception block end
excp_return_label_209:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_210, excp_return_label_210, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_210:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s10, t2
	li a3, failed_addr
	ld a5, 0(a3)
	jr a5
	# assert_exception block end
excp_return_label_210:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_211, excp_return_label_211, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_211:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a3, t2
	li a7, failed_addr
	ld s0, 0(a7)
	jr s0
	# assert_exception block end
excp_return_label_211:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_212, excp_return_label_212, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_212:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t1, t2
	li s6, failed_addr
	ld a5, 0(s6)
	jr a5
	# assert_exception block end
excp_return_label_212:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_213, excp_return_label_213, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_213:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a6, t2
	li a3, failed_addr
	ld s3, 0(a3)
	jr s3
	# assert_exception block end
excp_return_label_213:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_214, excp_return_label_214, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_214:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s5, t2
	li a4, failed_addr
	ld t4, 0(a4)
	jr t4
	# assert_exception block end
excp_return_label_214:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_215, excp_return_label_215, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_215:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s10, t2
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_215:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_216, excp_return_label_216, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_216:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s2, t2
	li t2, failed_addr
	ld t2, 0(t2)
	jr t2
	# assert_exception block end
excp_return_label_216:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_217, excp_return_label_217, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_217:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s7, t2
	li a5, failed_addr
	ld a3, 0(a5)
	jr a3
	# assert_exception block end
excp_return_label_217:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_218, excp_return_label_218, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_218:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s0, t2
	li a5, failed_addr
	ld s2, 0(a5)
	jr s2
	# assert_exception block end
excp_return_label_218:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_219, excp_return_label_219, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_219:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a7, t2
	li s6, failed_addr
	ld t4, 0(s6)
	jr t4
	# assert_exception block end
excp_return_label_219:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_220, excp_return_label_220, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_220:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s9, t2
	li a3, failed_addr
	ld t2, 0(a3)
	jr t2
	# assert_exception block end
excp_return_label_220:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_221, excp_return_label_221, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_221:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a1, t2
	li s0, failed_addr
	ld a2, 0(s0)
	jr a2
	# assert_exception block end
excp_return_label_221:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_222, excp_return_label_222, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_222:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t2, t2
	li t1, failed_addr
	ld a3, 0(t1)
	jr a3
	# assert_exception block end
excp_return_label_222:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_223, excp_return_label_223, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_223:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a0, t2
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
	# assert_exception block end
excp_return_label_223:
	# Set only this field in mcounteren, clear all others
	li t2, 16
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_224, excp_return_label_224, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_224:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t3, t2
	li t6, failed_addr
	ld t3, 0(t6)
	jr t3
	# assert_exception block end
excp_return_label_224:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_225, excp_return_label_225, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_225:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t1, t2
	li s3, failed_addr
	ld t6, 0(s3)
	jr t6
	# assert_exception block end
excp_return_label_225:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_226, excp_return_label_226, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_226:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t1, t2
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_226:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_227, excp_return_label_227, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_227:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s10, t2
	li t4, failed_addr
	ld t4, 0(t4)
	jr t4
	# assert_exception block end
excp_return_label_227:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_228, excp_return_label_228, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_228:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s0, t2
	li a1, failed_addr
	ld s5, 0(a1)
	jr s5
	# assert_exception block end
excp_return_label_228:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_229, excp_return_label_229, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_229:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s6, t2
	li s3, failed_addr
	ld a6, 0(s3)
	jr a6
	# assert_exception block end
excp_return_label_229:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_230, excp_return_label_230, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_230:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s0, t2
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_230:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_231, excp_return_label_231, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_231:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s11, t2
	li s9, failed_addr
	ld a6, 0(s9)
	jr a6
	# assert_exception block end
excp_return_label_231:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_232, excp_return_label_232, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_232:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s6, t2
	li s10, failed_addr
	ld a4, 0(s10)
	jr a4
	# assert_exception block end
excp_return_label_232:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_233, excp_return_label_233, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_233:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a6, t2
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
	# assert_exception block end
excp_return_label_233:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_234, excp_return_label_234, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_234:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a3, t2
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
	# assert_exception block end
excp_return_label_234:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_235, excp_return_label_235, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_235:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s6, t2
	li s4, failed_addr
	ld t6, 0(s4)
	jr t6
	# assert_exception block end
excp_return_label_235:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_236, excp_return_label_236, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_236:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a4, t2
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_236:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_237, excp_return_label_237, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_237:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t5, t2
	li s1, failed_addr
	ld a4, 0(s1)
	jr a4
	# assert_exception block end
excp_return_label_237:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_238, excp_return_label_238, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_238:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t6, t2
	li s5, failed_addr
	ld s8, 0(s5)
	jr s8
	# assert_exception block end
excp_return_label_238:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_239, excp_return_label_239, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_239:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a1, t2
	li t4, failed_addr
	ld a6, 0(t4)
	jr a6
	# assert_exception block end
excp_return_label_239:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_240, excp_return_label_240, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_240:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t1, t2
	li a4, failed_addr
	ld s11, 0(a4)
	jr s11
	# assert_exception block end
excp_return_label_240:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_241, excp_return_label_241, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_241:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a0, t2
	li s6, failed_addr
	ld t4, 0(s6)
	jr t4
	# assert_exception block end
excp_return_label_241:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_242, excp_return_label_242, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_242:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t4, t2
	li s3, failed_addr
	ld a0, 0(s3)
	jr a0
	# assert_exception block end
excp_return_label_242:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_243, excp_return_label_243, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_243:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s5, t2
	li s5, failed_addr
	ld s5, 0(s5)
	jr s5
	# assert_exception block end
excp_return_label_243:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_244, excp_return_label_244, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_244:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a5, t2
	li a4, failed_addr
	ld s1, 0(a4)
	jr s1
	# assert_exception block end
excp_return_label_244:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_245, excp_return_label_245, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_245:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t1, t2
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_245:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_246, excp_return_label_246, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_246:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a2, t2
	li s4, failed_addr
	ld a5, 0(s4)
	jr a5
	# assert_exception block end
excp_return_label_246:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_247, excp_return_label_247, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_247:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s11, t2
	li s9, failed_addr
	ld s8, 0(s9)
	jr s8
	# assert_exception block end
excp_return_label_247:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_248, excp_return_label_248, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_248:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t2, t2
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
	# assert_exception block end
excp_return_label_248:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_249, excp_return_label_249, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_249:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s7, t2
	li t3, failed_addr
	ld a5, 0(t3)
	jr a5
	# assert_exception block end
excp_return_label_249:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_250, excp_return_label_250, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_250:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t3, t2
	li s2, failed_addr
	ld s11, 0(s2)
	jr s11
	# assert_exception block end
excp_return_label_250:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_251, excp_return_label_251, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_251:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a0, t2
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
	# assert_exception block end
excp_return_label_251:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_252, excp_return_label_252, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_252:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t3, t2
	li a5, failed_addr
	ld t6, 0(a5)
	jr t6
	# assert_exception block end
excp_return_label_252:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_253, excp_return_label_253, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_253:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a3, t2
	li s0, failed_addr
	ld a1, 0(s0)
	jr a1
	# assert_exception block end
excp_return_label_253:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_254, excp_return_label_254, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_254:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a0, t2
	li a0, failed_addr
	ld s1, 0(a0)
	jr s1
	# assert_exception block end
excp_return_label_254:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_255, excp_return_label_255, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_255:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s8, t2
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
	# assert_exception block end
excp_return_label_255:
	# Set only this field in mcounteren, clear all others
	li t2, 32
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_256, excp_return_label_256, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_256:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s4, t2
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
	# assert_exception block end
excp_return_label_256:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_257, excp_return_label_257, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_257:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a2, t2
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
	# assert_exception block end
excp_return_label_257:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_258, excp_return_label_258, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_258:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s0, t2
	li a7, failed_addr
	ld a1, 0(a7)
	jr a1
	# assert_exception block end
excp_return_label_258:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_259, excp_return_label_259, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_259:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s11, t2
	li s7, failed_addr
	ld t6, 0(s7)
	jr t6
	# assert_exception block end
excp_return_label_259:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_260, excp_return_label_260, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_260:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s1, t2
	li a5, failed_addr
	ld a5, 0(a5)
	jr a5
	# assert_exception block end
excp_return_label_260:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_261, excp_return_label_261, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_261:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s1, t2
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_261:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_262, excp_return_label_262, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_262:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a2, t2
	li t4, failed_addr
	ld s1, 0(t4)
	jr s1
	# assert_exception block end
excp_return_label_262:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_263, excp_return_label_263, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_263:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a0, t2
	li s4, failed_addr
	ld t1, 0(s4)
	jr t1
	# assert_exception block end
excp_return_label_263:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_264, excp_return_label_264, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_264:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s7, t2
	li s10, failed_addr
	ld s8, 0(s10)
	jr s8
	# assert_exception block end
excp_return_label_264:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_265, excp_return_label_265, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_265:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s4, t2
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_265:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_266, excp_return_label_266, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_266:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s4, t2
	li a0, failed_addr
	ld a2, 0(a0)
	jr a2
	# assert_exception block end
excp_return_label_266:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_267, excp_return_label_267, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_267:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s2, t2
	li a7, failed_addr
	ld s8, 0(a7)
	jr s8
	# assert_exception block end
excp_return_label_267:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_268, excp_return_label_268, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_268:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t1, t2
	li a5, failed_addr
	ld t2, 0(a5)
	jr t2
	# assert_exception block end
excp_return_label_268:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_269, excp_return_label_269, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_269:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s8, t2
	li s0, failed_addr
	ld a5, 0(s0)
	jr a5
	# assert_exception block end
excp_return_label_269:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_270, excp_return_label_270, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_270:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s9, t2
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
	# assert_exception block end
excp_return_label_270:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_271, excp_return_label_271, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_271:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a5, t2
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_271:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_272, excp_return_label_272, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_272:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s1, t2
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_272:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_273, excp_return_label_273, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_273:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t3, t2
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_273:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_274, excp_return_label_274, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_274:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a7, t2
	li s2, failed_addr
	ld s7, 0(s2)
	jr s7
	# assert_exception block end
excp_return_label_274:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_275, excp_return_label_275, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_275:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t3, t2
	li t5, failed_addr
	ld t2, 0(t5)
	jr t2
	# assert_exception block end
excp_return_label_275:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_276, excp_return_label_276, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_276:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s7, t2
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_276:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_277, excp_return_label_277, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_277:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s1, t2
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_277:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_278, excp_return_label_278, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_278:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s7, t2
	li t5, failed_addr
	ld s0, 0(t5)
	jr s0
	# assert_exception block end
excp_return_label_278:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_279, excp_return_label_279, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_279:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s5, t2
	li a6, failed_addr
	ld a0, 0(a6)
	jr a0
	# assert_exception block end
excp_return_label_279:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_280, excp_return_label_280, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_280:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a6, t2
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
	# assert_exception block end
excp_return_label_280:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_281, excp_return_label_281, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_281:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s5, t2
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_281:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_282, excp_return_label_282, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_282:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t2, t2
	li s10, failed_addr
	ld t4, 0(s10)
	jr t4
	# assert_exception block end
excp_return_label_282:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_283, excp_return_label_283, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_283:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t4, t2
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
	# assert_exception block end
excp_return_label_283:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_284, excp_return_label_284, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_284:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a1, t2
	li s3, failed_addr
	ld s1, 0(s3)
	jr s1
	# assert_exception block end
excp_return_label_284:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_285, excp_return_label_285, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_285:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a7, t2
	li a7, failed_addr
	ld s3, 0(a7)
	jr s3
	# assert_exception block end
excp_return_label_285:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_286, excp_return_label_286, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_286:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a0, t2
	li s1, failed_addr
	ld s10, 0(s1)
	jr s10
	# assert_exception block end
excp_return_label_286:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_287, excp_return_label_287, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_287:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t3, t2
	li s9, failed_addr
	ld a5, 0(s9)
	jr a5
	# assert_exception block end
excp_return_label_287:
	# Set only this field in mcounteren, clear all others
	li t2, 64
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_288, excp_return_label_288, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_288:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t6, t2
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_288:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_289, excp_return_label_289, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_289:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a7, t2
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_289:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_290, excp_return_label_290, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_290:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a6, t2
	li s9, failed_addr
	ld t1, 0(s9)
	jr t1
	# assert_exception block end
excp_return_label_290:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_291, excp_return_label_291, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_291:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s9, t2
	li a2, failed_addr
	ld s10, 0(a2)
	jr s10
	# assert_exception block end
excp_return_label_291:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_292, excp_return_label_292, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_292:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s4, t2
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_292:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_293, excp_return_label_293, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_293:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s10, t2
	li a7, failed_addr
	ld a4, 0(a7)
	jr a4
	# assert_exception block end
excp_return_label_293:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_294, excp_return_label_294, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_294:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s5, t2
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_294:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_295, excp_return_label_295, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_295:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a3, t2
	li s9, failed_addr
	ld s7, 0(s9)
	jr s7
	# assert_exception block end
excp_return_label_295:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_296, excp_return_label_296, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_296:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a6, t2
	li a4, failed_addr
	ld s7, 0(a4)
	jr s7
	# assert_exception block end
excp_return_label_296:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_297, excp_return_label_297, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_297:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t6, t2
	li a3, failed_addr
	ld s1, 0(a3)
	jr s1
	# assert_exception block end
excp_return_label_297:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_298, excp_return_label_298, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_298:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t3, t2
	li s5, failed_addr
	ld a5, 0(s5)
	jr a5
	# assert_exception block end
excp_return_label_298:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_299, excp_return_label_299, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_299:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s6, t2
	li a0, failed_addr
	ld a2, 0(a0)
	jr a2
	# assert_exception block end
excp_return_label_299:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_300, excp_return_label_300, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_300:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s0, t2
	li t5, failed_addr
	ld a2, 0(t5)
	jr a2
	# assert_exception block end
excp_return_label_300:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_301, excp_return_label_301, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_301:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s1, t2
	li s0, failed_addr
	ld a6, 0(s0)
	jr a6
	# assert_exception block end
excp_return_label_301:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_302, excp_return_label_302, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_302:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a3, t2
	li a5, failed_addr
	ld a0, 0(a5)
	jr a0
	# assert_exception block end
excp_return_label_302:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_303, excp_return_label_303, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_303:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a5, t2
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_303:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_304, excp_return_label_304, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_304:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a4, t2
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_304:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_305, excp_return_label_305, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_305:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s4, t2
	li s0, failed_addr
	ld s9, 0(s0)
	jr s9
	# assert_exception block end
excp_return_label_305:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_306, excp_return_label_306, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_306:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s5, t2
	li a4, failed_addr
	ld t2, 0(a4)
	jr t2
	# assert_exception block end
excp_return_label_306:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_307, excp_return_label_307, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_307:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a7, t2
	li a2, failed_addr
	ld a0, 0(a2)
	jr a0
	# assert_exception block end
excp_return_label_307:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_308, excp_return_label_308, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_308:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s1, t2
	li s8, failed_addr
	ld s4, 0(s8)
	jr s4
	# assert_exception block end
excp_return_label_308:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_309, excp_return_label_309, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_309:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t2, t2
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
	# assert_exception block end
excp_return_label_309:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_310, excp_return_label_310, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_310:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a6, t2
	li t3, failed_addr
	ld t6, 0(t3)
	jr t6
	# assert_exception block end
excp_return_label_310:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_311, excp_return_label_311, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_311:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t5, t2
	li s4, failed_addr
	ld t6, 0(s4)
	jr t6
	# assert_exception block end
excp_return_label_311:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_312, excp_return_label_312, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_312:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s6, t2
	li t5, failed_addr
	ld s11, 0(t5)
	jr s11
	# assert_exception block end
excp_return_label_312:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_313, excp_return_label_313, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_313:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t3, t2
	li a4, failed_addr
	ld s9, 0(a4)
	jr s9
	# assert_exception block end
excp_return_label_313:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_314, excp_return_label_314, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_314:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s1, t2
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_314:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_315, excp_return_label_315, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_315:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t2, t2
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_315:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_316, excp_return_label_316, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_316:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a1, t2
	li s1, failed_addr
	ld t2, 0(s1)
	jr t2
	# assert_exception block end
excp_return_label_316:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_317, excp_return_label_317, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_317:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s2, t2
	li s9, failed_addr
	ld t5, 0(s9)
	jr t5
	# assert_exception block end
excp_return_label_317:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_318, excp_return_label_318, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_318:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s0, t2
	li t5, failed_addr
	ld s7, 0(t5)
	jr s7
	# assert_exception block end
excp_return_label_318:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_319, excp_return_label_319, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_319:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s1, t2
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
	# assert_exception block end
excp_return_label_319:
	# Set only this field in mcounteren, clear all others
	li t2, 128
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_320, excp_return_label_320, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_320:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a1, t2
	li a7, failed_addr
	ld s5, 0(a7)
	jr s5
	# assert_exception block end
excp_return_label_320:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_321, excp_return_label_321, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_321:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s5, t2
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
	# assert_exception block end
excp_return_label_321:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_322, excp_return_label_322, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_322:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s9, t2
	li a5, failed_addr
	ld s11, 0(a5)
	jr s11
	# assert_exception block end
excp_return_label_322:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_323, excp_return_label_323, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_323:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s11, t2
	li s0, failed_addr
	ld t6, 0(s0)
	jr t6
	# assert_exception block end
excp_return_label_323:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_324, excp_return_label_324, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_324:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s10, t2
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
	# assert_exception block end
excp_return_label_324:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_325, excp_return_label_325, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_325:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s10, t2
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_325:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_326, excp_return_label_326, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_326:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t1, t2
	li a6, failed_addr
	ld s7, 0(a6)
	jr s7
	# assert_exception block end
excp_return_label_326:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_327, excp_return_label_327, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_327:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a0, t2
	li a1, failed_addr
	ld s0, 0(a1)
	jr s0
	# assert_exception block end
excp_return_label_327:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_328, excp_return_label_328, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_328:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s4, t2
	li s2, failed_addr
	ld s3, 0(s2)
	jr s3
	# assert_exception block end
excp_return_label_328:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_329, excp_return_label_329, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_329:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s8, t2
	li s8, failed_addr
	ld a1, 0(s8)
	jr a1
	# assert_exception block end
excp_return_label_329:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_330, excp_return_label_330, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_330:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t4, t2
	li t2, failed_addr
	ld a7, 0(t2)
	jr a7
	# assert_exception block end
excp_return_label_330:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_331, excp_return_label_331, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_331:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s8, t2
	li a3, failed_addr
	ld a0, 0(a3)
	jr a0
	# assert_exception block end
excp_return_label_331:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_332, excp_return_label_332, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_332:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s8, t2
	li s4, failed_addr
	ld t2, 0(s4)
	jr t2
	# assert_exception block end
excp_return_label_332:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_333, excp_return_label_333, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_333:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t4, t2
	li s7, failed_addr
	ld t6, 0(s7)
	jr t6
	# assert_exception block end
excp_return_label_333:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_334, excp_return_label_334, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_334:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s4, t2
	li s6, failed_addr
	ld a4, 0(s6)
	jr a4
	# assert_exception block end
excp_return_label_334:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_335, excp_return_label_335, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_335:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t4, t2
	li s6, failed_addr
	ld a5, 0(s6)
	jr a5
	# assert_exception block end
excp_return_label_335:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_336, excp_return_label_336, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_336:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s5, t2
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
	# assert_exception block end
excp_return_label_336:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_337, excp_return_label_337, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_337:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a6, t2
	li t6, failed_addr
	ld s7, 0(t6)
	jr s7
	# assert_exception block end
excp_return_label_337:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_338, excp_return_label_338, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_338:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a0, t2
	li t2, failed_addr
	ld s10, 0(t2)
	jr s10
	# assert_exception block end
excp_return_label_338:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_339, excp_return_label_339, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_339:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s2, t2
	li s3, failed_addr
	ld s8, 0(s3)
	jr s8
	# assert_exception block end
excp_return_label_339:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_340, excp_return_label_340, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_340:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s5, t2
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_340:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_341, excp_return_label_341, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_341:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s6, t2
	li s0, failed_addr
	ld a6, 0(s0)
	jr a6
	# assert_exception block end
excp_return_label_341:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_342, excp_return_label_342, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_342:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s6, t2
	li s4, failed_addr
	ld a5, 0(s4)
	jr a5
	# assert_exception block end
excp_return_label_342:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_343, excp_return_label_343, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_343:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s3, t2
	li a0, failed_addr
	ld s9, 0(a0)
	jr s9
	# assert_exception block end
excp_return_label_343:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_344, excp_return_label_344, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_344:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a3, t2
	li a2, failed_addr
	ld s1, 0(a2)
	jr s1
	# assert_exception block end
excp_return_label_344:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_345, excp_return_label_345, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_345:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t3, t2
	li t3, failed_addr
	ld s11, 0(t3)
	jr s11
	# assert_exception block end
excp_return_label_345:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_346, excp_return_label_346, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_346:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s4, t2
	li s5, failed_addr
	ld a6, 0(s5)
	jr a6
	# assert_exception block end
excp_return_label_346:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_347, excp_return_label_347, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_347:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a2, t2
	li s8, failed_addr
	ld s7, 0(s8)
	jr s7
	# assert_exception block end
excp_return_label_347:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_348, excp_return_label_348, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_348:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s3, t2
	li a7, failed_addr
	ld s3, 0(a7)
	jr s3
	# assert_exception block end
excp_return_label_348:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_349, excp_return_label_349, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_349:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a2, t2
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_349:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_350, excp_return_label_350, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_350:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t5, t2
	li a1, failed_addr
	ld t3, 0(a1)
	jr t3
	# assert_exception block end
excp_return_label_350:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_351, excp_return_label_351, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_351:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t6, t2
	li t5, failed_addr
	ld a7, 0(t5)
	jr a7
	# assert_exception block end
excp_return_label_351:
	# Set only this field in mcounteren, clear all others
	li t2, 256
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_352, excp_return_label_352, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_352:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t4, t2
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_352:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_353, excp_return_label_353, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_353:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a3, t2
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
	# assert_exception block end
excp_return_label_353:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_354, excp_return_label_354, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_354:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a1, t2
	li s5, failed_addr
	ld a6, 0(s5)
	jr a6
	# assert_exception block end
excp_return_label_354:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_355, excp_return_label_355, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_355:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a4, t2
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_355:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_356, excp_return_label_356, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_356:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a5, t2
	li s6, failed_addr
	ld s11, 0(s6)
	jr s11
	# assert_exception block end
excp_return_label_356:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_357, excp_return_label_357, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_357:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a0, t2
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
	# assert_exception block end
excp_return_label_357:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_358, excp_return_label_358, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_358:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s4, t2
	li a1, failed_addr
	ld s1, 0(a1)
	jr s1
	# assert_exception block end
excp_return_label_358:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_359, excp_return_label_359, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_359:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t6, t2
	li s10, failed_addr
	ld a5, 0(s10)
	jr a5
	# assert_exception block end
excp_return_label_359:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_360, excp_return_label_360, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_360:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a1, t2
	li a2, failed_addr
	ld t2, 0(a2)
	jr t2
	# assert_exception block end
excp_return_label_360:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_361, excp_return_label_361, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_361:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s2, t2
	li a5, failed_addr
	ld t4, 0(a5)
	jr t4
	# assert_exception block end
excp_return_label_361:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_362, excp_return_label_362, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_362:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a2, t2
	li t3, failed_addr
	ld s6, 0(t3)
	jr s6
	# assert_exception block end
excp_return_label_362:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_363, excp_return_label_363, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_363:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s0, t2
	li t4, failed_addr
	ld a6, 0(t4)
	jr a6
	# assert_exception block end
excp_return_label_363:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_364, excp_return_label_364, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_364:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a4, t2
	li s6, failed_addr
	ld s0, 0(s6)
	jr s0
	# assert_exception block end
excp_return_label_364:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_365, excp_return_label_365, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_365:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s5, t2
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_365:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_366, excp_return_label_366, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_366:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a6, t2
	li a6, failed_addr
	ld a4, 0(a6)
	jr a4
	# assert_exception block end
excp_return_label_366:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_367, excp_return_label_367, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_367:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t1, t2
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_367:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_368, excp_return_label_368, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_368:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s8, t2
	li a1, failed_addr
	ld s5, 0(a1)
	jr s5
	# assert_exception block end
excp_return_label_368:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_369, excp_return_label_369, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_369:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t1, t2
	li s0, failed_addr
	ld s7, 0(s0)
	jr s7
	# assert_exception block end
excp_return_label_369:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_370, excp_return_label_370, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_370:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a5, t2
	li a2, failed_addr
	ld s6, 0(a2)
	jr s6
	# assert_exception block end
excp_return_label_370:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_371, excp_return_label_371, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_371:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a1, t2
	li s4, failed_addr
	ld s6, 0(s4)
	jr s6
	# assert_exception block end
excp_return_label_371:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_372, excp_return_label_372, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_372:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t1, t2
	li a6, failed_addr
	ld s4, 0(a6)
	jr s4
	# assert_exception block end
excp_return_label_372:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_373, excp_return_label_373, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_373:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t5, t2
	li a6, failed_addr
	ld s2, 0(a6)
	jr s2
	# assert_exception block end
excp_return_label_373:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_374, excp_return_label_374, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_374:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a6, t2
	li s6, failed_addr
	ld t2, 0(s6)
	jr t2
	# assert_exception block end
excp_return_label_374:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_375, excp_return_label_375, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_375:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s6, t2
	li a7, failed_addr
	ld t4, 0(a7)
	jr t4
	# assert_exception block end
excp_return_label_375:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_376, excp_return_label_376, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_376:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t6, t2
	li a0, failed_addr
	ld s10, 0(a0)
	jr s10
	# assert_exception block end
excp_return_label_376:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_377, excp_return_label_377, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_377:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s3, t2
	li s8, failed_addr
	ld s4, 0(s8)
	jr s4
	# assert_exception block end
excp_return_label_377:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_378, excp_return_label_378, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_378:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s11, t2
	li s1, failed_addr
	ld s3, 0(s1)
	jr s3
	# assert_exception block end
excp_return_label_378:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_379, excp_return_label_379, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_379:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a3, t2
	li t6, failed_addr
	ld t4, 0(t6)
	jr t4
	# assert_exception block end
excp_return_label_379:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_380, excp_return_label_380, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_380:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s10, t2
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_380:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_381, excp_return_label_381, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_381:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a6, t2
	li t3, failed_addr
	ld a5, 0(t3)
	jr a5
	# assert_exception block end
excp_return_label_381:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_382, excp_return_label_382, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_382:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t6, t2
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_382:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_383, excp_return_label_383, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_383:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a5, t2
	li a1, failed_addr
	ld s1, 0(a1)
	jr s1
	# assert_exception block end
excp_return_label_383:
	# Set only this field in mcounteren, clear all others
	li t2, 512
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_384, excp_return_label_384, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_384:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s1, t2
	li a5, failed_addr
	ld s10, 0(a5)
	jr s10
	# assert_exception block end
excp_return_label_384:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_385, excp_return_label_385, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_385:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s9, t2
	li s10, failed_addr
	ld t3, 0(s10)
	jr t3
	# assert_exception block end
excp_return_label_385:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_386, excp_return_label_386, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_386:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s8, t2
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
	# assert_exception block end
excp_return_label_386:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_387, excp_return_label_387, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_387:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t2, t2
	li s2, failed_addr
	ld t1, 0(s2)
	jr t1
	# assert_exception block end
excp_return_label_387:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_388, excp_return_label_388, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_388:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s5, t2
	li s7, failed_addr
	ld a1, 0(s7)
	jr a1
	# assert_exception block end
excp_return_label_388:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_389, excp_return_label_389, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_389:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t5, t2
	li a1, failed_addr
	ld t6, 0(a1)
	jr t6
	# assert_exception block end
excp_return_label_389:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_390, excp_return_label_390, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_390:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s1, t2
	li t6, failed_addr
	ld s4, 0(t6)
	jr s4
	# assert_exception block end
excp_return_label_390:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_391, excp_return_label_391, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_391:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s3, t2
	li s3, failed_addr
	ld s8, 0(s3)
	jr s8
	# assert_exception block end
excp_return_label_391:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_392, excp_return_label_392, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_392:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t2, t2
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_392:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_393, excp_return_label_393, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_393:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s10, t2
	li a3, failed_addr
	ld s5, 0(a3)
	jr s5
	# assert_exception block end
excp_return_label_393:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_394, excp_return_label_394, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_394:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s9, t2
	li t6, failed_addr
	ld s8, 0(t6)
	jr s8
	# assert_exception block end
excp_return_label_394:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_395, excp_return_label_395, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_395:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a5, t2
	li t1, failed_addr
	ld s7, 0(t1)
	jr s7
	# assert_exception block end
excp_return_label_395:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_396, excp_return_label_396, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_396:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s10, t2
	li s10, failed_addr
	ld s1, 0(s10)
	jr s1
	# assert_exception block end
excp_return_label_396:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_397, excp_return_label_397, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_397:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t6, t2
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
	# assert_exception block end
excp_return_label_397:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_398, excp_return_label_398, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_398:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a4, t2
	li s1, failed_addr
	ld s9, 0(s1)
	jr s9
	# assert_exception block end
excp_return_label_398:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_399, excp_return_label_399, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_399:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t1, t2
	li s10, failed_addr
	ld t2, 0(s10)
	jr t2
	# assert_exception block end
excp_return_label_399:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_400, excp_return_label_400, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_400:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a3, t2
	li t1, failed_addr
	ld s7, 0(t1)
	jr s7
	# assert_exception block end
excp_return_label_400:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_401, excp_return_label_401, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_401:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t4, t2
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_401:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_402, excp_return_label_402, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_402:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s0, t2
	li s11, failed_addr
	ld t5, 0(s11)
	jr t5
	# assert_exception block end
excp_return_label_402:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_403, excp_return_label_403, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_403:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a5, t2
	li a4, failed_addr
	ld t1, 0(a4)
	jr t1
	# assert_exception block end
excp_return_label_403:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_404, excp_return_label_404, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_404:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s8, t2
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
	# assert_exception block end
excp_return_label_404:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_405, excp_return_label_405, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_405:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s9, t2
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
	# assert_exception block end
excp_return_label_405:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_406, excp_return_label_406, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_406:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a6, t2
	li a7, failed_addr
	ld s7, 0(a7)
	jr s7
	# assert_exception block end
excp_return_label_406:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_407, excp_return_label_407, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_407:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t2, t2
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_407:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_408, excp_return_label_408, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_408:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s3, t2
	li a5, failed_addr
	ld t4, 0(a5)
	jr t4
	# assert_exception block end
excp_return_label_408:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_409, excp_return_label_409, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_409:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s11, t2
	li t1, failed_addr
	ld s10, 0(t1)
	jr s10
	# assert_exception block end
excp_return_label_409:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_410, excp_return_label_410, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_410:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s8, t2
	li s10, failed_addr
	ld t2, 0(s10)
	jr t2
	# assert_exception block end
excp_return_label_410:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_411, excp_return_label_411, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_411:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s2, t2
	li t3, failed_addr
	ld s6, 0(t3)
	jr s6
	# assert_exception block end
excp_return_label_411:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_412, excp_return_label_412, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_412:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a5, t2
	li s4, failed_addr
	ld t6, 0(s4)
	jr t6
	# assert_exception block end
excp_return_label_412:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_413, excp_return_label_413, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_413:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a6, t2
	li t6, failed_addr
	ld a7, 0(t6)
	jr a7
	# assert_exception block end
excp_return_label_413:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_414, excp_return_label_414, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_414:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t2, t2
	li s7, failed_addr
	ld s6, 0(s7)
	jr s6
	# assert_exception block end
excp_return_label_414:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_415, excp_return_label_415, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_415:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a0, t2
	li s10, failed_addr
	ld a4, 0(s10)
	jr a4
	# assert_exception block end
excp_return_label_415:
	# Set only this field in mcounteren, clear all others
	li t2, 1024
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_416, excp_return_label_416, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_416:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a5, t2
	li t3, failed_addr
	ld t1, 0(t3)
	jr t1
	# assert_exception block end
excp_return_label_416:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_417, excp_return_label_417, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_417:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t3, t2
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_417:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_418, excp_return_label_418, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_418:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s10, t2
	li s10, failed_addr
	ld a1, 0(s10)
	jr a1
	# assert_exception block end
excp_return_label_418:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_419, excp_return_label_419, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_419:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a3, t2
	li s1, failed_addr
	ld a5, 0(s1)
	jr a5
	# assert_exception block end
excp_return_label_419:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_420, excp_return_label_420, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_420:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a4, t2
	li s5, failed_addr
	ld s4, 0(s5)
	jr s4
	# assert_exception block end
excp_return_label_420:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_421, excp_return_label_421, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_421:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t2, t2
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_421:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_422, excp_return_label_422, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_422:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a3, t2
	li s5, failed_addr
	ld s7, 0(s5)
	jr s7
	# assert_exception block end
excp_return_label_422:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_423, excp_return_label_423, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_423:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a0, t2
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_423:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_424, excp_return_label_424, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_424:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t1, t2
	li s2, failed_addr
	ld a7, 0(s2)
	jr a7
	# assert_exception block end
excp_return_label_424:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_425, excp_return_label_425, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_425:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a5, t2
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_425:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_426, excp_return_label_426, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_426:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s7, t2
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_426:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_427, excp_return_label_427, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_427:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a2, t2
	li s11, failed_addr
	ld a1, 0(s11)
	jr a1
	# assert_exception block end
excp_return_label_427:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_428, excp_return_label_428, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_428:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t4, t2
	li s10, failed_addr
	ld s7, 0(s10)
	jr s7
	# assert_exception block end
excp_return_label_428:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_429, excp_return_label_429, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_429:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a6, t2
	li s3, failed_addr
	ld s1, 0(s3)
	jr s1
	# assert_exception block end
excp_return_label_429:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_430, excp_return_label_430, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_430:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s1, t2
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_430:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_431, excp_return_label_431, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_431:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s10, t2
	li t5, failed_addr
	ld t5, 0(t5)
	jr t5
	# assert_exception block end
excp_return_label_431:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_432, excp_return_label_432, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_432:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s6, t2
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
	# assert_exception block end
excp_return_label_432:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_433, excp_return_label_433, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_433:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s2, t2
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_433:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_434, excp_return_label_434, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_434:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t1, t2
	li t3, failed_addr
	ld t6, 0(t3)
	jr t6
	# assert_exception block end
excp_return_label_434:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_435, excp_return_label_435, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_435:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s7, t2
	li s10, failed_addr
	ld t5, 0(s10)
	jr t5
	# assert_exception block end
excp_return_label_435:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_436, excp_return_label_436, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_436:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t3, t2
	li s4, failed_addr
	ld a3, 0(s4)
	jr a3
	# assert_exception block end
excp_return_label_436:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_437, excp_return_label_437, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_437:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t2, t2
	li a2, failed_addr
	ld t5, 0(a2)
	jr t5
	# assert_exception block end
excp_return_label_437:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_438, excp_return_label_438, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_438:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s5, t2
	li t6, failed_addr
	ld s2, 0(t6)
	jr s2
	# assert_exception block end
excp_return_label_438:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_439, excp_return_label_439, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_439:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s0, t2
	li a3, failed_addr
	ld s6, 0(a3)
	jr s6
	# assert_exception block end
excp_return_label_439:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_440, excp_return_label_440, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_440:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t3, t2
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_440:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_441, excp_return_label_441, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_441:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s1, t2
	li a6, failed_addr
	ld t4, 0(a6)
	jr t4
	# assert_exception block end
excp_return_label_441:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_442, excp_return_label_442, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_442:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s6, t2
	li s5, failed_addr
	ld a0, 0(s5)
	jr a0
	# assert_exception block end
excp_return_label_442:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_443, excp_return_label_443, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_443:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t5, t2
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_443:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_444, excp_return_label_444, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_444:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s4, t2
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
	# assert_exception block end
excp_return_label_444:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_445, excp_return_label_445, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_445:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t2, t2
	li s1, failed_addr
	ld s3, 0(s1)
	jr s3
	# assert_exception block end
excp_return_label_445:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_446, excp_return_label_446, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_446:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a7, t2
	li s10, failed_addr
	ld t4, 0(s10)
	jr t4
	# assert_exception block end
excp_return_label_446:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_447, excp_return_label_447, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_447:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t1, t2
	li s9, failed_addr
	ld t2, 0(s9)
	jr t2
	# assert_exception block end
excp_return_label_447:
	# Set only this field in mcounteren, clear all others
	li t2, 2048
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_448, excp_return_label_448, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_448:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a6, t2
	li t2, failed_addr
	ld a0, 0(t2)
	jr a0
	# assert_exception block end
excp_return_label_448:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_449, excp_return_label_449, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_449:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s1, t2
	li s4, failed_addr
	ld s11, 0(s4)
	jr s11
	# assert_exception block end
excp_return_label_449:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_450, excp_return_label_450, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_450:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s2, t2
	li a6, failed_addr
	ld t4, 0(a6)
	jr t4
	# assert_exception block end
excp_return_label_450:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_451, excp_return_label_451, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_451:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t2, t2
	li a0, failed_addr
	ld s1, 0(a0)
	jr s1
	# assert_exception block end
excp_return_label_451:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_452, excp_return_label_452, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_452:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s3, t2
	li a5, failed_addr
	ld s5, 0(a5)
	jr s5
	# assert_exception block end
excp_return_label_452:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_453, excp_return_label_453, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_453:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s9, t2
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_453:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_454, excp_return_label_454, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_454:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a7, t2
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_454:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_455, excp_return_label_455, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_455:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s5, t2
	li a1, failed_addr
	ld s3, 0(a1)
	jr s3
	# assert_exception block end
excp_return_label_455:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_456, excp_return_label_456, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_456:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t6, t2
	li s4, failed_addr
	ld s9, 0(s4)
	jr s9
	# assert_exception block end
excp_return_label_456:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_457, excp_return_label_457, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_457:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s4, t2
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_457:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_458, excp_return_label_458, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_458:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t3, t2
	li t6, failed_addr
	ld a1, 0(t6)
	jr a1
	# assert_exception block end
excp_return_label_458:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_459, excp_return_label_459, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_459:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s5, t2
	li s11, failed_addr
	ld s3, 0(s11)
	jr s3
	# assert_exception block end
excp_return_label_459:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_460, excp_return_label_460, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_460:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a5, t2
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_460:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_461, excp_return_label_461, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_461:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a7, t2
	li s11, failed_addr
	ld a5, 0(s11)
	jr a5
	# assert_exception block end
excp_return_label_461:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_462, excp_return_label_462, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_462:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s5, t2
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_462:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_463, excp_return_label_463, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_463:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t4, t2
	li a3, failed_addr
	ld s2, 0(a3)
	jr s2
	# assert_exception block end
excp_return_label_463:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_464, excp_return_label_464, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_464:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s3, t2
	li s5, failed_addr
	ld s6, 0(s5)
	jr s6
	# assert_exception block end
excp_return_label_464:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_465, excp_return_label_465, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_465:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a6, t2
	li t2, failed_addr
	ld s10, 0(t2)
	jr s10
	# assert_exception block end
excp_return_label_465:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_466, excp_return_label_466, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_466:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s8, t2
	li s5, failed_addr
	ld a4, 0(s5)
	jr a4
	# assert_exception block end
excp_return_label_466:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_467, excp_return_label_467, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_467:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a5, t2
	li a4, failed_addr
	ld s8, 0(a4)
	jr s8
	# assert_exception block end
excp_return_label_467:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_468, excp_return_label_468, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_468:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s6, t2
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
	# assert_exception block end
excp_return_label_468:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_469, excp_return_label_469, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_469:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a3, t2
	li t4, failed_addr
	ld s4, 0(t4)
	jr s4
	# assert_exception block end
excp_return_label_469:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_470, excp_return_label_470, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_470:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s11, t2
	li t2, failed_addr
	ld a3, 0(t2)
	jr a3
	# assert_exception block end
excp_return_label_470:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_471, excp_return_label_471, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_471:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s7, t2
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_471:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_472, excp_return_label_472, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_472:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s0, t2
	li a5, failed_addr
	ld s3, 0(a5)
	jr s3
	# assert_exception block end
excp_return_label_472:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_473, excp_return_label_473, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_473:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a2, t2
	li a6, failed_addr
	ld a6, 0(a6)
	jr a6
	# assert_exception block end
excp_return_label_473:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_474, excp_return_label_474, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_474:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t2, t2
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_474:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_475, excp_return_label_475, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_475:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s8, t2
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_475:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_476, excp_return_label_476, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_476:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a4, t2
	li s4, failed_addr
	ld t1, 0(s4)
	jr t1
	# assert_exception block end
excp_return_label_476:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_477, excp_return_label_477, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_477:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t2, t2
	li t6, failed_addr
	ld s3, 0(t6)
	jr s3
	# assert_exception block end
excp_return_label_477:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_478, excp_return_label_478, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_478:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s11, t2
	li a7, failed_addr
	ld a2, 0(a7)
	jr a2
	# assert_exception block end
excp_return_label_478:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_479, excp_return_label_479, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_479:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t3, t2
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_479:
	# Set only this field in mcounteren, clear all others
	li t2, 4096
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_480, excp_return_label_480, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_480:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a0, t2
	li a3, failed_addr
	ld s10, 0(a3)
	jr s10
	# assert_exception block end
excp_return_label_480:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_481, excp_return_label_481, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_481:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a2, t2
	li a2, failed_addr
	ld a5, 0(a2)
	jr a5
	# assert_exception block end
excp_return_label_481:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_482, excp_return_label_482, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_482:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t6, t2
	li a6, failed_addr
	ld t5, 0(a6)
	jr t5
	# assert_exception block end
excp_return_label_482:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_483, excp_return_label_483, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_483:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a4, t2
	li t5, failed_addr
	ld a7, 0(t5)
	jr a7
	# assert_exception block end
excp_return_label_483:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_484, excp_return_label_484, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_484:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a4, t2
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_484:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_485, excp_return_label_485, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_485:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s3, t2
	li t2, failed_addr
	ld a2, 0(t2)
	jr a2
	# assert_exception block end
excp_return_label_485:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_486, excp_return_label_486, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_486:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s7, t2
	li s3, failed_addr
	ld t6, 0(s3)
	jr t6
	# assert_exception block end
excp_return_label_486:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_487, excp_return_label_487, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_487:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a3, t2
	li s3, failed_addr
	ld a5, 0(s3)
	jr a5
	# assert_exception block end
excp_return_label_487:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_488, excp_return_label_488, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_488:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a1, t2
	li s2, failed_addr
	ld s0, 0(s2)
	jr s0
	# assert_exception block end
excp_return_label_488:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_489, excp_return_label_489, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_489:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s11, t2
	li s4, failed_addr
	ld s10, 0(s4)
	jr s10
	# assert_exception block end
excp_return_label_489:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_490, excp_return_label_490, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_490:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s4, t2
	li s1, failed_addr
	ld t1, 0(s1)
	jr t1
	# assert_exception block end
excp_return_label_490:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_491, excp_return_label_491, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_491:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a4, t2
	li a0, failed_addr
	ld a1, 0(a0)
	jr a1
	# assert_exception block end
excp_return_label_491:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_492, excp_return_label_492, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_492:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a1, t2
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_492:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_493, excp_return_label_493, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_493:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a4, t2
	li s3, failed_addr
	ld a7, 0(s3)
	jr a7
	# assert_exception block end
excp_return_label_493:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_494, excp_return_label_494, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_494:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s9, t2
	li a6, failed_addr
	ld s10, 0(a6)
	jr s10
	# assert_exception block end
excp_return_label_494:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_495, excp_return_label_495, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_495:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a4, t2
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_495:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_496, excp_return_label_496, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_496:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t6, t2
	li a7, failed_addr
	ld t1, 0(a7)
	jr t1
	# assert_exception block end
excp_return_label_496:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_497, excp_return_label_497, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_497:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s4, t2
	li t5, failed_addr
	ld t6, 0(t5)
	jr t6
	# assert_exception block end
excp_return_label_497:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_498, excp_return_label_498, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_498:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a2, t2
	li t6, failed_addr
	ld t4, 0(t6)
	jr t4
	# assert_exception block end
excp_return_label_498:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_499, excp_return_label_499, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_499:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t5, t2
	li s9, failed_addr
	ld t6, 0(s9)
	jr t6
	# assert_exception block end
excp_return_label_499:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_500, excp_return_label_500, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_500:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s9, t2
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
	# assert_exception block end
excp_return_label_500:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_501, excp_return_label_501, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_501:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t6, t2
	li a0, failed_addr
	ld s2, 0(a0)
	jr s2
	# assert_exception block end
excp_return_label_501:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_502, excp_return_label_502, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_502:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s4, t2
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_502:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_503, excp_return_label_503, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_503:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a0, t2
	li s8, failed_addr
	ld s8, 0(s8)
	jr s8
	# assert_exception block end
excp_return_label_503:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_504, excp_return_label_504, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_504:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a1, t2
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_504:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_505, excp_return_label_505, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_505:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a3, t2
	li a2, failed_addr
	ld s0, 0(a2)
	jr s0
	# assert_exception block end
excp_return_label_505:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_506, excp_return_label_506, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_506:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s2, t2
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_506:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_507, excp_return_label_507, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_507:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s0, t2
	li s8, failed_addr
	ld a0, 0(s8)
	jr a0
	# assert_exception block end
excp_return_label_507:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_508, excp_return_label_508, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_508:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s9, t2
	li s11, failed_addr
	ld a7, 0(s11)
	jr a7
	# assert_exception block end
excp_return_label_508:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_509, excp_return_label_509, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_509:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a3, t2
	li s3, failed_addr
	ld s10, 0(s3)
	jr s10
	# assert_exception block end
excp_return_label_509:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_510, excp_return_label_510, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_510:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s4, t2
	li s11, failed_addr
	ld s10, 0(s11)
	jr s10
	# assert_exception block end
excp_return_label_510:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_511, excp_return_label_511, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_511:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t1, t2
	li t3, failed_addr
	ld s9, 0(t3)
	jr s9
	# assert_exception block end
excp_return_label_511:
	# Set only this field in mcounteren, clear all others
	li t2, 8192
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_512, excp_return_label_512, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_512:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t6, t2
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
	# assert_exception block end
excp_return_label_512:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_513, excp_return_label_513, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_513:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s4, t2
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_513:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_514, excp_return_label_514, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_514:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t6, t2
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
	# assert_exception block end
excp_return_label_514:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_515, excp_return_label_515, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_515:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t5, t2
	li t5, failed_addr
	ld t2, 0(t5)
	jr t2
	# assert_exception block end
excp_return_label_515:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_516, excp_return_label_516, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_516:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s4, t2
	li s0, failed_addr
	ld t3, 0(s0)
	jr t3
	# assert_exception block end
excp_return_label_516:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_517, excp_return_label_517, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_517:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a6, t2
	li s6, failed_addr
	ld a6, 0(s6)
	jr a6
	# assert_exception block end
excp_return_label_517:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_518, excp_return_label_518, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_518:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s6, t2
	li s0, failed_addr
	ld s11, 0(s0)
	jr s11
	# assert_exception block end
excp_return_label_518:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_519, excp_return_label_519, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_519:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s6, t2
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_519:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_520, excp_return_label_520, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_520:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s4, t2
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_520:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_521, excp_return_label_521, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_521:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s10, t2
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_521:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_522, excp_return_label_522, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_522:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a3, t2
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
	# assert_exception block end
excp_return_label_522:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_523, excp_return_label_523, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_523:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a2, t2
	li s6, failed_addr
	ld s9, 0(s6)
	jr s9
	# assert_exception block end
excp_return_label_523:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_524, excp_return_label_524, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_524:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a0, t2
	li s2, failed_addr
	ld s7, 0(s2)
	jr s7
	# assert_exception block end
excp_return_label_524:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_525, excp_return_label_525, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_525:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t3, t2
	li t1, failed_addr
	ld s10, 0(t1)
	jr s10
	# assert_exception block end
excp_return_label_525:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_526, excp_return_label_526, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_526:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s6, t2
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_526:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_527, excp_return_label_527, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_527:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a4, t2
	li a0, failed_addr
	ld s10, 0(a0)
	jr s10
	# assert_exception block end
excp_return_label_527:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_528, excp_return_label_528, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_528:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s9, t2
	li s3, failed_addr
	ld s8, 0(s3)
	jr s8
	# assert_exception block end
excp_return_label_528:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_529, excp_return_label_529, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_529:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s4, t2
	li s11, failed_addr
	ld s7, 0(s11)
	jr s7
	# assert_exception block end
excp_return_label_529:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_530, excp_return_label_530, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_530:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s4, t2
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_530:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_531, excp_return_label_531, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_531:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a0, t2
	li s0, failed_addr
	ld s9, 0(s0)
	jr s9
	# assert_exception block end
excp_return_label_531:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_532, excp_return_label_532, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_532:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s6, t2
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_532:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_533, excp_return_label_533, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_533:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a3, t2
	li s2, failed_addr
	ld a6, 0(s2)
	jr a6
	# assert_exception block end
excp_return_label_533:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_534, excp_return_label_534, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_534:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s6, t2
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_534:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_535, excp_return_label_535, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_535:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s6, t2
	li s1, failed_addr
	ld a5, 0(s1)
	jr a5
	# assert_exception block end
excp_return_label_535:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_536, excp_return_label_536, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_536:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t6, t2
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_536:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_537, excp_return_label_537, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_537:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t4, t2
	li s2, failed_addr
	ld s7, 0(s2)
	jr s7
	# assert_exception block end
excp_return_label_537:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_538, excp_return_label_538, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_538:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s6, t2
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_538:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_539, excp_return_label_539, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_539:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t4, t2
	li t2, failed_addr
	ld t2, 0(t2)
	jr t2
	# assert_exception block end
excp_return_label_539:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_540, excp_return_label_540, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_540:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s10, t2
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
	# assert_exception block end
excp_return_label_540:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_541, excp_return_label_541, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_541:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t6, t2
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_541:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_542, excp_return_label_542, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_542:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a2, t2
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_542:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_543, excp_return_label_543, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_543:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a2, t2
	li a6, failed_addr
	ld a3, 0(a6)
	jr a3
	# assert_exception block end
excp_return_label_543:
	# Set only this field in mcounteren, clear all others
	li t2, 16384
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_544, excp_return_label_544, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_544:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a7, t2
	li s3, failed_addr
	ld s8, 0(s3)
	jr s8
	# assert_exception block end
excp_return_label_544:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_545, excp_return_label_545, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_545:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a7, t2
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_545:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_546, excp_return_label_546, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_546:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s1, t2
	li a7, failed_addr
	ld s4, 0(a7)
	jr s4
	# assert_exception block end
excp_return_label_546:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_547, excp_return_label_547, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_547:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s2, t2
	li s8, failed_addr
	ld s7, 0(s8)
	jr s7
	# assert_exception block end
excp_return_label_547:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_548, excp_return_label_548, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_548:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s3, t2
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_548:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_549, excp_return_label_549, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_549:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s0, t2
	li a6, failed_addr
	ld t6, 0(a6)
	jr t6
	# assert_exception block end
excp_return_label_549:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_550, excp_return_label_550, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_550:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s5, t2
	li t2, failed_addr
	ld t1, 0(t2)
	jr t1
	# assert_exception block end
excp_return_label_550:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_551, excp_return_label_551, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_551:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a4, t2
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
	# assert_exception block end
excp_return_label_551:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_552, excp_return_label_552, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_552:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a5, t2
	li s6, failed_addr
	ld a3, 0(s6)
	jr a3
	# assert_exception block end
excp_return_label_552:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_553, excp_return_label_553, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_553:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a2, t2
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
	# assert_exception block end
excp_return_label_553:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_554, excp_return_label_554, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_554:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s2, t2
	li a7, failed_addr
	ld a3, 0(a7)
	jr a3
	# assert_exception block end
excp_return_label_554:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_555, excp_return_label_555, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_555:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a7, t2
	li t1, failed_addr
	ld s8, 0(t1)
	jr s8
	# assert_exception block end
excp_return_label_555:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_556, excp_return_label_556, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_556:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s11, t2
	li t4, failed_addr
	ld a6, 0(t4)
	jr a6
	# assert_exception block end
excp_return_label_556:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_557, excp_return_label_557, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_557:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s5, t2
	li s9, failed_addr
	ld s10, 0(s9)
	jr s10
	# assert_exception block end
excp_return_label_557:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_558, excp_return_label_558, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_558:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t6, t2
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_558:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_559, excp_return_label_559, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_559:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s9, t2
	li t4, failed_addr
	ld t5, 0(t4)
	jr t5
	# assert_exception block end
excp_return_label_559:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_560, excp_return_label_560, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_560:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s2, t2
	li a1, failed_addr
	ld s7, 0(a1)
	jr s7
	# assert_exception block end
excp_return_label_560:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_561, excp_return_label_561, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_561:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a1, t2
	li s1, failed_addr
	ld a7, 0(s1)
	jr a7
	# assert_exception block end
excp_return_label_561:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_562, excp_return_label_562, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_562:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s8, t2
	li s0, failed_addr
	ld t1, 0(s0)
	jr t1
	# assert_exception block end
excp_return_label_562:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_563, excp_return_label_563, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_563:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t5, t2
	li t3, failed_addr
	ld t6, 0(t3)
	jr t6
	# assert_exception block end
excp_return_label_563:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_564, excp_return_label_564, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_564:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a0, t2
	li s6, failed_addr
	ld a3, 0(s6)
	jr a3
	# assert_exception block end
excp_return_label_564:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_565, excp_return_label_565, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_565:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s7, t2
	li s2, failed_addr
	ld t2, 0(s2)
	jr t2
	# assert_exception block end
excp_return_label_565:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_566, excp_return_label_566, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_566:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a0, t2
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
	# assert_exception block end
excp_return_label_566:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_567, excp_return_label_567, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_567:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a5, t2
	li a0, failed_addr
	ld s1, 0(a0)
	jr s1
	# assert_exception block end
excp_return_label_567:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_568, excp_return_label_568, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_568:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t4, t2
	li s3, failed_addr
	ld a3, 0(s3)
	jr a3
	# assert_exception block end
excp_return_label_568:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_569, excp_return_label_569, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_569:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s0, t2
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_569:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_570, excp_return_label_570, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_570:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t2, t2
	li t2, failed_addr
	ld s3, 0(t2)
	jr s3
	# assert_exception block end
excp_return_label_570:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_571, excp_return_label_571, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_571:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t3, t2
	li s4, failed_addr
	ld a3, 0(s4)
	jr a3
	# assert_exception block end
excp_return_label_571:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_572, excp_return_label_572, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_572:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t1, t2
	li s7, failed_addr
	ld s11, 0(s7)
	jr s11
	# assert_exception block end
excp_return_label_572:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_573, excp_return_label_573, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_573:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a3, t2
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
	# assert_exception block end
excp_return_label_573:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_574, excp_return_label_574, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_574:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s3, t2
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_574:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_575, excp_return_label_575, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_575:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s7, t2
	li a0, failed_addr
	ld s11, 0(a0)
	jr s11
	# assert_exception block end
excp_return_label_575:
	# Set only this field in mcounteren, clear all others
	li t2, 32768
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_576, excp_return_label_576, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_576:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a5, t2
	li s6, failed_addr
	ld t5, 0(s6)
	jr t5
	# assert_exception block end
excp_return_label_576:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_577, excp_return_label_577, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_577:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a0, t2
	li s10, failed_addr
	ld t4, 0(s10)
	jr t4
	# assert_exception block end
excp_return_label_577:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_578, excp_return_label_578, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_578:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a1, t2
	li a2, failed_addr
	ld t5, 0(a2)
	jr t5
	# assert_exception block end
excp_return_label_578:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_579, excp_return_label_579, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_579:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s11, t2
	li a7, failed_addr
	ld s2, 0(a7)
	jr s2
	# assert_exception block end
excp_return_label_579:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_580, excp_return_label_580, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_580:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv t3, t2
	li a6, failed_addr
	ld s6, 0(a6)
	jr s6
	# assert_exception block end
excp_return_label_580:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_581, excp_return_label_581, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_581:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s4, t2
	li t5, failed_addr
	ld a4, 0(t5)
	jr a4
	# assert_exception block end
excp_return_label_581:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_582, excp_return_label_582, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_582:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s0, t2
	li s2, failed_addr
	ld s7, 0(s2)
	jr s7
	# assert_exception block end
excp_return_label_582:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_583, excp_return_label_583, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_583:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t3, t2
	li a5, failed_addr
	ld a6, 0(a5)
	jr a6
	# assert_exception block end
excp_return_label_583:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_584, excp_return_label_584, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_584:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s1, t2
	li s11, failed_addr
	ld a6, 0(s11)
	jr a6
	# assert_exception block end
excp_return_label_584:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_585, excp_return_label_585, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_585:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t6, t2
	li a6, failed_addr
	ld a7, 0(a6)
	jr a7
	# assert_exception block end
excp_return_label_585:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_586, excp_return_label_586, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_586:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s8, t2
	li s11, failed_addr
	ld t3, 0(s11)
	jr t3
	# assert_exception block end
excp_return_label_586:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_587, excp_return_label_587, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_587:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s4, t2
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_587:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_588, excp_return_label_588, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_588:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t2, t2
	li s1, failed_addr
	ld a5, 0(s1)
	jr a5
	# assert_exception block end
excp_return_label_588:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_589, excp_return_label_589, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_589:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s4, t2
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_589:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_590, excp_return_label_590, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_590:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t6, t2
	li s6, failed_addr
	ld a6, 0(s6)
	jr a6
	# assert_exception block end
excp_return_label_590:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_591, excp_return_label_591, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_591:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s5, t2
	li a0, failed_addr
	ld s10, 0(a0)
	jr s10
	# assert_exception block end
excp_return_label_591:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_592, excp_return_label_592, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_592:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a3, t2
	li t6, failed_addr
	ld a1, 0(t6)
	jr a1
	# assert_exception block end
excp_return_label_592:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_593, excp_return_label_593, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_593:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s10, t2
	li a4, failed_addr
	ld s8, 0(a4)
	jr s8
	# assert_exception block end
excp_return_label_593:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_594, excp_return_label_594, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_594:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t2, t2
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_594:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_595, excp_return_label_595, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_595:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s1, t2
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
	# assert_exception block end
excp_return_label_595:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_596, excp_return_label_596, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_596:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a2, t2
	li a2, failed_addr
	ld s5, 0(a2)
	jr s5
	# assert_exception block end
excp_return_label_596:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_597, excp_return_label_597, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_597:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t6, t2
	li a0, failed_addr
	ld t4, 0(a0)
	jr t4
	# assert_exception block end
excp_return_label_597:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_598, excp_return_label_598, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_598:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t5, t2
	li s2, failed_addr
	ld s6, 0(s2)
	jr s6
	# assert_exception block end
excp_return_label_598:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_599, excp_return_label_599, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_599:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a3, t2
	li t5, failed_addr
	ld s2, 0(t5)
	jr s2
	# assert_exception block end
excp_return_label_599:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_600, excp_return_label_600, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_600:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t2, t2
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
	# assert_exception block end
excp_return_label_600:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_601, excp_return_label_601, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_601:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s9, t2
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
	# assert_exception block end
excp_return_label_601:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_602, excp_return_label_602, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_602:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t4, t2
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_602:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_603, excp_return_label_603, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_603:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a5, t2
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_603:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_604, excp_return_label_604, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_604:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a3, t2
	li s3, failed_addr
	ld a3, 0(s3)
	jr a3
	# assert_exception block end
excp_return_label_604:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_605, excp_return_label_605, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_605:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t5, t2
	li a5, failed_addr
	ld s3, 0(a5)
	jr s3
	# assert_exception block end
excp_return_label_605:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_606, excp_return_label_606, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_606:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a0, t2
	li s11, failed_addr
	ld s6, 0(s11)
	jr s6
	# assert_exception block end
excp_return_label_606:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_607, excp_return_label_607, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_607:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t1, t2
	li t6, failed_addr
	ld s3, 0(t6)
	jr s3
	# assert_exception block end
excp_return_label_607:
	# Set only this field in mcounteren, clear all others
	li t2, 65536
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_608, excp_return_label_608, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_608:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s2, t2
	li s7, failed_addr
	ld a1, 0(s7)
	jr a1
	# assert_exception block end
excp_return_label_608:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_609, excp_return_label_609, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_609:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a5, t2
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_609:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_610, excp_return_label_610, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_610:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s2, t2
	li a5, failed_addr
	ld s4, 0(a5)
	jr s4
	# assert_exception block end
excp_return_label_610:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_611, excp_return_label_611, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_611:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s0, t2
	li s0, failed_addr
	ld s10, 0(s0)
	jr s10
	# assert_exception block end
excp_return_label_611:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_612, excp_return_label_612, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_612:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s1, t2
	li a1, failed_addr
	ld s5, 0(a1)
	jr s5
	# assert_exception block end
excp_return_label_612:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_613, excp_return_label_613, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_613:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s7, t2
	li s2, failed_addr
	ld s7, 0(s2)
	jr s7
	# assert_exception block end
excp_return_label_613:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_614, excp_return_label_614, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_614:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s11, t2
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_614:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_615, excp_return_label_615, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_615:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t2, t2
	li a1, failed_addr
	ld s7, 0(a1)
	jr s7
	# assert_exception block end
excp_return_label_615:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_616, excp_return_label_616, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_616:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t1, t2
	li t1, failed_addr
	ld s10, 0(t1)
	jr s10
	# assert_exception block end
excp_return_label_616:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_617, excp_return_label_617, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_617:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s7, t2
	li t3, failed_addr
	ld t3, 0(t3)
	jr t3
	# assert_exception block end
excp_return_label_617:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_618, excp_return_label_618, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_618:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a3, t2
	li t5, failed_addr
	ld a2, 0(t5)
	jr a2
	# assert_exception block end
excp_return_label_618:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_619, excp_return_label_619, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_619:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a1, t2
	li s4, failed_addr
	ld a7, 0(s4)
	jr a7
	# assert_exception block end
excp_return_label_619:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_620, excp_return_label_620, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_620:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s9, t2
	li t2, failed_addr
	ld a4, 0(t2)
	jr a4
	# assert_exception block end
excp_return_label_620:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_621, excp_return_label_621, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_621:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a7, t2
	li s2, failed_addr
	ld s10, 0(s2)
	jr s10
	# assert_exception block end
excp_return_label_621:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_622, excp_return_label_622, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_622:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s2, t2
	li s0, failed_addr
	ld s1, 0(s0)
	jr s1
	# assert_exception block end
excp_return_label_622:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_623, excp_return_label_623, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_623:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s10, t2
	li a7, failed_addr
	ld s10, 0(a7)
	jr s10
	# assert_exception block end
excp_return_label_623:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_624, excp_return_label_624, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_624:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s8, t2
	li s2, failed_addr
	ld t5, 0(s2)
	jr t5
	# assert_exception block end
excp_return_label_624:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_625, excp_return_label_625, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_625:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a2, t2
	li a3, failed_addr
	ld t3, 0(a3)
	jr t3
	# assert_exception block end
excp_return_label_625:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_626, excp_return_label_626, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_626:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t1, t2
	li t2, failed_addr
	ld a1, 0(t2)
	jr a1
	# assert_exception block end
excp_return_label_626:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_627, excp_return_label_627, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_627:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s1, t2
	li s1, failed_addr
	ld t1, 0(s1)
	jr t1
	# assert_exception block end
excp_return_label_627:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_628, excp_return_label_628, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_628:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s5, t2
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
	# assert_exception block end
excp_return_label_628:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_629, excp_return_label_629, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_629:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s2, t2
	li t6, failed_addr
	ld t4, 0(t6)
	jr t4
	# assert_exception block end
excp_return_label_629:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_630, excp_return_label_630, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_630:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s0, t2
	li s2, failed_addr
	ld s3, 0(s2)
	jr s3
	# assert_exception block end
excp_return_label_630:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_631, excp_return_label_631, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_631:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t1, t2
	li s7, failed_addr
	ld a3, 0(s7)
	jr a3
	# assert_exception block end
excp_return_label_631:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_632, excp_return_label_632, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_632:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s2, t2
	li s3, failed_addr
	ld s5, 0(s3)
	jr s5
	# assert_exception block end
excp_return_label_632:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_633, excp_return_label_633, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_633:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s8, t2
	li t2, failed_addr
	ld s3, 0(t2)
	jr s3
	# assert_exception block end
excp_return_label_633:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_634, excp_return_label_634, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_634:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a5, t2
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_634:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_635, excp_return_label_635, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_635:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s0, t2
	li a7, failed_addr
	ld t6, 0(a7)
	jr t6
	# assert_exception block end
excp_return_label_635:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_636, excp_return_label_636, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_636:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s7, t2
	li a4, failed_addr
	ld t1, 0(a4)
	jr t1
	# assert_exception block end
excp_return_label_636:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_637, excp_return_label_637, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_637:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s7, t2
	li a2, failed_addr
	ld s4, 0(a2)
	jr s4
	# assert_exception block end
excp_return_label_637:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_638, excp_return_label_638, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_638:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s1, t2
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_638:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_639, excp_return_label_639, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_639:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s4, t2
	li t3, failed_addr
	ld t3, 0(t3)
	jr t3
	# assert_exception block end
excp_return_label_639:
	# Set only this field in mcounteren, clear all others
	li t2, 131072
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_640, excp_return_label_640, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_640:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s2, t2
	li a7, failed_addr
	ld t2, 0(a7)
	jr t2
	# assert_exception block end
excp_return_label_640:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_641, excp_return_label_641, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_641:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a4, t2
	li a5, failed_addr
	ld s7, 0(a5)
	jr s7
	# assert_exception block end
excp_return_label_641:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_642, excp_return_label_642, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_642:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s2, t2
	li t2, failed_addr
	ld a4, 0(t2)
	jr a4
	# assert_exception block end
excp_return_label_642:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_643, excp_return_label_643, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_643:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s2, t2
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_643:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_644, excp_return_label_644, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_644:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s1, t2
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
	# assert_exception block end
excp_return_label_644:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_645, excp_return_label_645, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_645:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s9, t2
	li s2, failed_addr
	ld a7, 0(s2)
	jr a7
	# assert_exception block end
excp_return_label_645:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_646, excp_return_label_646, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_646:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s3, t2
	li t5, failed_addr
	ld t4, 0(t5)
	jr t4
	# assert_exception block end
excp_return_label_646:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_647, excp_return_label_647, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_647:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a0, t2
	li a4, failed_addr
	ld t1, 0(a4)
	jr t1
	# assert_exception block end
excp_return_label_647:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_648, excp_return_label_648, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_648:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a3, t2
	li a3, failed_addr
	ld s6, 0(a3)
	jr s6
	# assert_exception block end
excp_return_label_648:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_649, excp_return_label_649, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_649:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a0, t2
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_649:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_650, excp_return_label_650, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_650:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a7, t2
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
	# assert_exception block end
excp_return_label_650:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_651, excp_return_label_651, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_651:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s8, t2
	li a4, failed_addr
	ld a4, 0(a4)
	jr a4
	# assert_exception block end
excp_return_label_651:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_652, excp_return_label_652, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_652:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s1, t2
	li a2, failed_addr
	ld s4, 0(a2)
	jr s4
	# assert_exception block end
excp_return_label_652:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_653, excp_return_label_653, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_653:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a0, t2
	li s0, failed_addr
	ld s2, 0(s0)
	jr s2
	# assert_exception block end
excp_return_label_653:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_654, excp_return_label_654, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_654:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s11, t2
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
	# assert_exception block end
excp_return_label_654:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_655, excp_return_label_655, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_655:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t2, t2
	li s0, failed_addr
	ld a7, 0(s0)
	jr a7
	# assert_exception block end
excp_return_label_655:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_656, excp_return_label_656, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_656:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s0, t2
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_656:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_657, excp_return_label_657, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_657:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s4, t2
	li s0, failed_addr
	ld s9, 0(s0)
	jr s9
	# assert_exception block end
excp_return_label_657:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_658, excp_return_label_658, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_658:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s10, t2
	li s11, failed_addr
	ld s11, 0(s11)
	jr s11
	# assert_exception block end
excp_return_label_658:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_659, excp_return_label_659, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_659:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t4, t2
	li a2, failed_addr
	ld a5, 0(a2)
	jr a5
	# assert_exception block end
excp_return_label_659:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_660, excp_return_label_660, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_660:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s11, t2
	li t5, failed_addr
	ld s1, 0(t5)
	jr s1
	# assert_exception block end
excp_return_label_660:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_661, excp_return_label_661, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_661:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a5, t2
	li s5, failed_addr
	ld s7, 0(s5)
	jr s7
	# assert_exception block end
excp_return_label_661:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_662, excp_return_label_662, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_662:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s7, t2
	li t4, failed_addr
	ld a2, 0(t4)
	jr a2
	# assert_exception block end
excp_return_label_662:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_663, excp_return_label_663, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_663:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a3, t2
	li s8, failed_addr
	ld s0, 0(s8)
	jr s0
	# assert_exception block end
excp_return_label_663:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_664, excp_return_label_664, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_664:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s5, t2
	li a6, failed_addr
	ld a5, 0(a6)
	jr a5
	# assert_exception block end
excp_return_label_664:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_665, excp_return_label_665, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_665:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s2, t2
	li t5, failed_addr
	ld a7, 0(t5)
	jr a7
	# assert_exception block end
excp_return_label_665:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_666, excp_return_label_666, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_666:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t2, t2
	li a1, failed_addr
	ld s8, 0(a1)
	jr s8
	# assert_exception block end
excp_return_label_666:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_667, excp_return_label_667, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_667:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a1, t2
	li s3, failed_addr
	ld s8, 0(s3)
	jr s8
	# assert_exception block end
excp_return_label_667:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_668, excp_return_label_668, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_668:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s5, t2
	li s3, failed_addr
	ld t5, 0(s3)
	jr t5
	# assert_exception block end
excp_return_label_668:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_669, excp_return_label_669, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_669:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a1, t2
	li a5, failed_addr
	ld t1, 0(a5)
	jr t1
	# assert_exception block end
excp_return_label_669:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_670, excp_return_label_670, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_670:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s10, t2
	li a3, failed_addr
	ld s10, 0(a3)
	jr s10
	# assert_exception block end
excp_return_label_670:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_671, excp_return_label_671, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_671:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s2, t2
	li a0, failed_addr
	ld a1, 0(a0)
	jr a1
	# assert_exception block end
excp_return_label_671:
	# Set only this field in mcounteren, clear all others
	li t2, 262144
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_672, excp_return_label_672, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_672:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a3, t2
	li t6, failed_addr
	ld a7, 0(t6)
	jr a7
	# assert_exception block end
excp_return_label_672:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_673, excp_return_label_673, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_673:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s6, t2
	li s10, failed_addr
	ld s9, 0(s10)
	jr s9
	# assert_exception block end
excp_return_label_673:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_674, excp_return_label_674, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_674:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t6, t2
	li t1, failed_addr
	ld a4, 0(t1)
	jr a4
	# assert_exception block end
excp_return_label_674:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_675, excp_return_label_675, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_675:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a1, t2
	li s0, failed_addr
	ld a1, 0(s0)
	jr a1
	# assert_exception block end
excp_return_label_675:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_676, excp_return_label_676, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_676:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv t3, t2
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_676:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_677, excp_return_label_677, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_677:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s6, t2
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
	# assert_exception block end
excp_return_label_677:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_678, excp_return_label_678, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_678:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s10, t2
	li a6, failed_addr
	ld s4, 0(a6)
	jr s4
	# assert_exception block end
excp_return_label_678:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_679, excp_return_label_679, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_679:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a2, t2
	li t3, failed_addr
	ld s4, 0(t3)
	jr s4
	# assert_exception block end
excp_return_label_679:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_680, excp_return_label_680, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_680:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a7, t2
	li t2, failed_addr
	ld s6, 0(t2)
	jr s6
	# assert_exception block end
excp_return_label_680:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_681, excp_return_label_681, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_681:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a2, t2
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_681:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_682, excp_return_label_682, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_682:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t2, t2
	li a4, failed_addr
	ld t3, 0(a4)
	jr t3
	# assert_exception block end
excp_return_label_682:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_683, excp_return_label_683, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_683:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s5, t2
	li a4, failed_addr
	ld a1, 0(a4)
	jr a1
	# assert_exception block end
excp_return_label_683:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_684, excp_return_label_684, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_684:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s5, t2
	li t5, failed_addr
	ld t5, 0(t5)
	jr t5
	# assert_exception block end
excp_return_label_684:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_685, excp_return_label_685, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_685:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s2, t2
	li s6, failed_addr
	ld s9, 0(s6)
	jr s9
	# assert_exception block end
excp_return_label_685:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_686, excp_return_label_686, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_686:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a6, t2
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_686:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_687, excp_return_label_687, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_687:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t5, t2
	li s10, failed_addr
	ld a0, 0(s10)
	jr a0
	# assert_exception block end
excp_return_label_687:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_688, excp_return_label_688, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_688:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a0, t2
	li s10, failed_addr
	ld a6, 0(s10)
	jr a6
	# assert_exception block end
excp_return_label_688:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_689, excp_return_label_689, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_689:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s7, t2
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_689:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_690, excp_return_label_690, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_690:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s3, t2
	li a3, failed_addr
	ld s0, 0(a3)
	jr s0
	# assert_exception block end
excp_return_label_690:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_691, excp_return_label_691, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_691:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a4, t2
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_691:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_692, excp_return_label_692, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_692:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t1, t2
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_692:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_693, excp_return_label_693, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_693:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s7, t2
	li s11, failed_addr
	ld s4, 0(s11)
	jr s4
	# assert_exception block end
excp_return_label_693:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_694, excp_return_label_694, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_694:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a7, t2
	li t5, failed_addr
	ld s8, 0(t5)
	jr s8
	# assert_exception block end
excp_return_label_694:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_695, excp_return_label_695, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_695:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s6, t2
	li a5, failed_addr
	ld a5, 0(a5)
	jr a5
	# assert_exception block end
excp_return_label_695:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_696, excp_return_label_696, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_696:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s11, t2
	li s7, failed_addr
	ld t5, 0(s7)
	jr t5
	# assert_exception block end
excp_return_label_696:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_697, excp_return_label_697, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_697:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s10, t2
	li a7, failed_addr
	ld t1, 0(a7)
	jr t1
	# assert_exception block end
excp_return_label_697:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_698, excp_return_label_698, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_698:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s10, t2
	li t3, failed_addr
	ld s11, 0(t3)
	jr s11
	# assert_exception block end
excp_return_label_698:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_699, excp_return_label_699, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_699:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s2, t2
	li s7, failed_addr
	ld s8, 0(s7)
	jr s8
	# assert_exception block end
excp_return_label_699:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_700, excp_return_label_700, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_700:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a3, t2
	li s7, failed_addr
	ld s3, 0(s7)
	jr s3
	# assert_exception block end
excp_return_label_700:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_701, excp_return_label_701, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_701:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t6, t2
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
	# assert_exception block end
excp_return_label_701:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_702, excp_return_label_702, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_702:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s0, t2
	li s0, failed_addr
	ld t6, 0(s0)
	jr t6
	# assert_exception block end
excp_return_label_702:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_703, excp_return_label_703, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_703:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t4, t2
	li s1, failed_addr
	ld t2, 0(s1)
	jr t2
	# assert_exception block end
excp_return_label_703:
	# Set only this field in mcounteren, clear all others
	li t2, 524288
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_704, excp_return_label_704, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_704:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s10, t2
	li t3, failed_addr
	ld s2, 0(t3)
	jr s2
	# assert_exception block end
excp_return_label_704:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_705, excp_return_label_705, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_705:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s1, t2
	li s9, failed_addr
	ld t6, 0(s9)
	jr t6
	# assert_exception block end
excp_return_label_705:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_706, excp_return_label_706, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_706:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s10, t2
	li s5, failed_addr
	ld s9, 0(s5)
	jr s9
	# assert_exception block end
excp_return_label_706:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_707, excp_return_label_707, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_707:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t4, t2
	li t3, failed_addr
	ld a4, 0(t3)
	jr a4
	# assert_exception block end
excp_return_label_707:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_708, excp_return_label_708, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_708:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a7, t2
	li s8, failed_addr
	ld s6, 0(s8)
	jr s6
	# assert_exception block end
excp_return_label_708:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_709, excp_return_label_709, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_709:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s7, t2
	li t1, failed_addr
	ld s8, 0(t1)
	jr s8
	# assert_exception block end
excp_return_label_709:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_710, excp_return_label_710, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_710:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t1, t2
	li s1, failed_addr
	ld s2, 0(s1)
	jr s2
	# assert_exception block end
excp_return_label_710:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_711, excp_return_label_711, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_711:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s1, t2
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
	# assert_exception block end
excp_return_label_711:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_712, excp_return_label_712, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_712:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t6, t2
	li t5, failed_addr
	ld a5, 0(t5)
	jr a5
	# assert_exception block end
excp_return_label_712:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_713, excp_return_label_713, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_713:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t4, t2
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_713:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_714, excp_return_label_714, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_714:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s5, t2
	li a1, failed_addr
	ld s3, 0(a1)
	jr s3
	# assert_exception block end
excp_return_label_714:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_715, excp_return_label_715, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_715:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t3, t2
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_715:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_716, excp_return_label_716, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_716:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t6, t2
	li a0, failed_addr
	ld s6, 0(a0)
	jr s6
	# assert_exception block end
excp_return_label_716:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_717, excp_return_label_717, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_717:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t2, t2
	li t2, failed_addr
	ld t3, 0(t2)
	jr t3
	# assert_exception block end
excp_return_label_717:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_718, excp_return_label_718, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_718:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a1, t2
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_718:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_719, excp_return_label_719, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_719:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t5, t2
	li t2, failed_addr
	ld s2, 0(t2)
	jr s2
	# assert_exception block end
excp_return_label_719:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_720, excp_return_label_720, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_720:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s8, t2
	li a1, failed_addr
	ld s4, 0(a1)
	jr s4
	# assert_exception block end
excp_return_label_720:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_721, excp_return_label_721, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_721:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s11, t2
	li s11, failed_addr
	ld s7, 0(s11)
	jr s7
	# assert_exception block end
excp_return_label_721:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_722, excp_return_label_722, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_722:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a7, t2
	li a7, failed_addr
	ld a4, 0(a7)
	jr a4
	# assert_exception block end
excp_return_label_722:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_723, excp_return_label_723, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_723:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s4, t2
	li s9, failed_addr
	ld t1, 0(s9)
	jr t1
	# assert_exception block end
excp_return_label_723:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_724, excp_return_label_724, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_724:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t6, t2
	li a4, failed_addr
	ld s7, 0(a4)
	jr s7
	# assert_exception block end
excp_return_label_724:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_725, excp_return_label_725, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_725:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s0, t2
	li s7, failed_addr
	ld s5, 0(s7)
	jr s5
	# assert_exception block end
excp_return_label_725:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_726, excp_return_label_726, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_726:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a7, t2
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_726:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_727, excp_return_label_727, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_727:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s1, t2
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
	# assert_exception block end
excp_return_label_727:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_728, excp_return_label_728, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_728:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s11, t2
	li s1, failed_addr
	ld s0, 0(s1)
	jr s0
	# assert_exception block end
excp_return_label_728:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_729, excp_return_label_729, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_729:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t4, t2
	li s1, failed_addr
	ld s2, 0(s1)
	jr s2
	# assert_exception block end
excp_return_label_729:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_730, excp_return_label_730, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_730:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t5, t2
	li s2, failed_addr
	ld a6, 0(s2)
	jr a6
	# assert_exception block end
excp_return_label_730:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_731, excp_return_label_731, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_731:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t5, t2
	li s3, failed_addr
	ld s3, 0(s3)
	jr s3
	# assert_exception block end
excp_return_label_731:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_732, excp_return_label_732, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_732:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s8, t2
	li t2, failed_addr
	ld t4, 0(t2)
	jr t4
	# assert_exception block end
excp_return_label_732:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_733, excp_return_label_733, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_733:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s5, t2
	li s3, failed_addr
	ld s11, 0(s3)
	jr s11
	# assert_exception block end
excp_return_label_733:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_734, excp_return_label_734, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_734:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s2, t2
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_734:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_735, excp_return_label_735, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_735:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t6, t2
	li s10, failed_addr
	ld s2, 0(s10)
	jr s2
	# assert_exception block end
excp_return_label_735:
	# Set only this field in mcounteren, clear all others
	li t2, 1048576
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_736, excp_return_label_736, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_736:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a1, t2
	li t6, failed_addr
	ld s10, 0(t6)
	jr s10
	# assert_exception block end
excp_return_label_736:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_737, excp_return_label_737, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_737:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s3, t2
	li s5, failed_addr
	ld s7, 0(s5)
	jr s7
	# assert_exception block end
excp_return_label_737:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_738, excp_return_label_738, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_738:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t5, t2
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_738:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_739, excp_return_label_739, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_739:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s5, t2
	li s11, failed_addr
	ld t4, 0(s11)
	jr t4
	# assert_exception block end
excp_return_label_739:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_740, excp_return_label_740, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_740:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a0, t2
	li t6, failed_addr
	ld t3, 0(t6)
	jr t3
	# assert_exception block end
excp_return_label_740:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_741, excp_return_label_741, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_741:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t4, t2
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
	# assert_exception block end
excp_return_label_741:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_742, excp_return_label_742, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_742:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s5, t2
	li a2, failed_addr
	ld s4, 0(a2)
	jr s4
	# assert_exception block end
excp_return_label_742:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_743, excp_return_label_743, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_743:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s4, t2
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
	# assert_exception block end
excp_return_label_743:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_744, excp_return_label_744, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_744:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s8, t2
	li t5, failed_addr
	ld t2, 0(t5)
	jr t2
	# assert_exception block end
excp_return_label_744:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_745, excp_return_label_745, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_745:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a7, t2
	li s3, failed_addr
	ld s2, 0(s3)
	jr s2
	# assert_exception block end
excp_return_label_745:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_746, excp_return_label_746, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_746:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s0, t2
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_746:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_747, excp_return_label_747, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_747:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a4, t2
	li a3, failed_addr
	ld a2, 0(a3)
	jr a2
	# assert_exception block end
excp_return_label_747:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_748, excp_return_label_748, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_748:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s6, t2
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
	# assert_exception block end
excp_return_label_748:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_749, excp_return_label_749, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_749:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a4, t2
	li s2, failed_addr
	ld t6, 0(s2)
	jr t6
	# assert_exception block end
excp_return_label_749:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_750, excp_return_label_750, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_750:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s3, t2
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
	# assert_exception block end
excp_return_label_750:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_751, excp_return_label_751, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_751:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a0, t2
	li t3, failed_addr
	ld t1, 0(t3)
	jr t1
	# assert_exception block end
excp_return_label_751:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_752, excp_return_label_752, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_752:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s0, t2
	li a0, failed_addr
	ld s3, 0(a0)
	jr s3
	# assert_exception block end
excp_return_label_752:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_753, excp_return_label_753, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_753:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s3, t2
	li t2, failed_addr
	ld a6, 0(t2)
	jr a6
	# assert_exception block end
excp_return_label_753:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_754, excp_return_label_754, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_754:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a3, t2
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_754:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_755, excp_return_label_755, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_755:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s9, t2
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
	# assert_exception block end
excp_return_label_755:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_756, excp_return_label_756, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_756:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s5, t2
	li a4, failed_addr
	ld a0, 0(a4)
	jr a0
	# assert_exception block end
excp_return_label_756:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_757, excp_return_label_757, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_757:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a1, t2
	li s9, failed_addr
	ld s1, 0(s9)
	jr s1
	# assert_exception block end
excp_return_label_757:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_758, excp_return_label_758, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_758:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t4, t2
	li s5, failed_addr
	ld s0, 0(s5)
	jr s0
	# assert_exception block end
excp_return_label_758:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_759, excp_return_label_759, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_759:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t5, t2
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_759:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_760, excp_return_label_760, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_760:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a0, t2
	li s1, failed_addr
	ld s0, 0(s1)
	jr s0
	# assert_exception block end
excp_return_label_760:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_761, excp_return_label_761, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_761:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t3, t2
	li s3, failed_addr
	ld a2, 0(s3)
	jr a2
	# assert_exception block end
excp_return_label_761:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_762, excp_return_label_762, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_762:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s4, t2
	li s5, failed_addr
	ld s11, 0(s5)
	jr s11
	# assert_exception block end
excp_return_label_762:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_763, excp_return_label_763, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_763:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s1, t2
	li a3, failed_addr
	ld a5, 0(a3)
	jr a5
	# assert_exception block end
excp_return_label_763:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_764, excp_return_label_764, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_764:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t5, t2
	li a4, failed_addr
	ld s5, 0(a4)
	jr s5
	# assert_exception block end
excp_return_label_764:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_765, excp_return_label_765, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_765:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a4, t2
	li s9, failed_addr
	ld s9, 0(s9)
	jr s9
	# assert_exception block end
excp_return_label_765:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_766, excp_return_label_766, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_766:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s2, t2
	li a5, failed_addr
	ld a3, 0(a5)
	jr a3
	# assert_exception block end
excp_return_label_766:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_767, excp_return_label_767, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_767:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s1, t2
	li a1, failed_addr
	ld s7, 0(a1)
	jr s7
	# assert_exception block end
excp_return_label_767:
	# Set only this field in mcounteren, clear all others
	li t2, 2097152
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_768, excp_return_label_768, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_768:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s2, t2
	li s2, failed_addr
	ld s2, 0(s2)
	jr s2
	# assert_exception block end
excp_return_label_768:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_769, excp_return_label_769, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_769:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s2, t2
	li s3, failed_addr
	ld s11, 0(s3)
	jr s11
	# assert_exception block end
excp_return_label_769:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_770, excp_return_label_770, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_770:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s4, t2
	li a5, failed_addr
	ld a5, 0(a5)
	jr a5
	# assert_exception block end
excp_return_label_770:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_771, excp_return_label_771, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_771:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a7, t2
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_771:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_772, excp_return_label_772, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_772:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv t1, t2
	li s10, failed_addr
	ld s4, 0(s10)
	jr s4
	# assert_exception block end
excp_return_label_772:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_773, excp_return_label_773, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_773:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s3, t2
	li s6, failed_addr
	ld t4, 0(s6)
	jr t4
	# assert_exception block end
excp_return_label_773:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_774, excp_return_label_774, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_774:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s9, t2
	li a3, failed_addr
	ld a1, 0(a3)
	jr a1
	# assert_exception block end
excp_return_label_774:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_775, excp_return_label_775, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_775:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a1, t2
	li s10, failed_addr
	ld a6, 0(s10)
	jr a6
	# assert_exception block end
excp_return_label_775:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_776, excp_return_label_776, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_776:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s9, t2
	li a5, failed_addr
	ld t4, 0(a5)
	jr t4
	# assert_exception block end
excp_return_label_776:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_777, excp_return_label_777, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_777:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a0, t2
	li s3, failed_addr
	ld s9, 0(s3)
	jr s9
	# assert_exception block end
excp_return_label_777:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_778, excp_return_label_778, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_778:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s0, t2
	li s10, failed_addr
	ld s6, 0(s10)
	jr s6
	# assert_exception block end
excp_return_label_778:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_779, excp_return_label_779, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_779:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s7, t2
	li a5, failed_addr
	ld a5, 0(a5)
	jr a5
	# assert_exception block end
excp_return_label_779:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_780, excp_return_label_780, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_780:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a0, t2
	li s8, failed_addr
	ld a4, 0(s8)
	jr a4
	# assert_exception block end
excp_return_label_780:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_781, excp_return_label_781, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_781:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s4, t2
	li a1, failed_addr
	ld s11, 0(a1)
	jr s11
	# assert_exception block end
excp_return_label_781:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_782, excp_return_label_782, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_782:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s5, t2
	li a0, failed_addr
	ld s1, 0(a0)
	jr s1
	# assert_exception block end
excp_return_label_782:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_783, excp_return_label_783, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_783:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a4, t2
	li t5, failed_addr
	ld s10, 0(t5)
	jr s10
	# assert_exception block end
excp_return_label_783:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_784, excp_return_label_784, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_784:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s9, t2
	li a1, failed_addr
	ld a5, 0(a1)
	jr a5
	# assert_exception block end
excp_return_label_784:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_785, excp_return_label_785, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_785:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s6, t2
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_785:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_786, excp_return_label_786, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_786:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s9, t2
	li s4, failed_addr
	ld t3, 0(s4)
	jr t3
	# assert_exception block end
excp_return_label_786:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_787, excp_return_label_787, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_787:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s9, t2
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
	# assert_exception block end
excp_return_label_787:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_788, excp_return_label_788, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_788:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t4, t2
	li s7, failed_addr
	ld s7, 0(s7)
	jr s7
	# assert_exception block end
excp_return_label_788:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_789, excp_return_label_789, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_789:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s11, t2
	li t2, failed_addr
	ld t5, 0(t2)
	jr t5
	# assert_exception block end
excp_return_label_789:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_790, excp_return_label_790, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_790:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s4, t2
	li a0, failed_addr
	ld s9, 0(a0)
	jr s9
	# assert_exception block end
excp_return_label_790:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_791, excp_return_label_791, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_791:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t2, t2
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_791:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_792, excp_return_label_792, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_792:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t1, t2
	li s7, failed_addr
	ld s8, 0(s7)
	jr s8
	# assert_exception block end
excp_return_label_792:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_793, excp_return_label_793, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_793:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s10, t2
	li a7, failed_addr
	ld a3, 0(a7)
	jr a3
	# assert_exception block end
excp_return_label_793:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_794, excp_return_label_794, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_794:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s5, t2
	li s0, failed_addr
	ld t1, 0(s0)
	jr t1
	# assert_exception block end
excp_return_label_794:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_795, excp_return_label_795, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_795:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s0, t2
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
	# assert_exception block end
excp_return_label_795:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_796, excp_return_label_796, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_796:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a5, t2
	li a1, failed_addr
	ld s3, 0(a1)
	jr s3
	# assert_exception block end
excp_return_label_796:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_797, excp_return_label_797, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_797:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t5, t2
	li s3, failed_addr
	ld a3, 0(s3)
	jr a3
	# assert_exception block end
excp_return_label_797:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_798, excp_return_label_798, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_798:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a2, t2
	li a3, failed_addr
	ld s0, 0(a3)
	jr s0
	# assert_exception block end
excp_return_label_798:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_799, excp_return_label_799, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_799:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s9, t2
	li s9, failed_addr
	ld s9, 0(s9)
	jr s9
	# assert_exception block end
excp_return_label_799:
	# Set only this field in mcounteren, clear all others
	li t2, 4194304
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_800, excp_return_label_800, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_800:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s11, t2
	li a1, failed_addr
	ld s1, 0(a1)
	jr s1
	# assert_exception block end
excp_return_label_800:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_801, excp_return_label_801, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_801:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s3, t2
	li s10, failed_addr
	ld s5, 0(s10)
	jr s5
	# assert_exception block end
excp_return_label_801:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_802, excp_return_label_802, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_802:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s8, t2
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
	# assert_exception block end
excp_return_label_802:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_803, excp_return_label_803, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_803:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a6, t2
	li s9, failed_addr
	ld t5, 0(s9)
	jr t5
	# assert_exception block end
excp_return_label_803:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_804, excp_return_label_804, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_804:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv t2, t2
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_804:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_805, excp_return_label_805, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_805:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t6, t2
	li a3, failed_addr
	ld s3, 0(a3)
	jr s3
	# assert_exception block end
excp_return_label_805:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_806, excp_return_label_806, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_806:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a3, t2
	li t1, failed_addr
	ld a6, 0(t1)
	jr a6
	# assert_exception block end
excp_return_label_806:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_807, excp_return_label_807, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_807:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s4, t2
	li t1, failed_addr
	ld a4, 0(t1)
	jr a4
	# assert_exception block end
excp_return_label_807:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_808, excp_return_label_808, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_808:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s4, t2
	li a6, failed_addr
	ld a3, 0(a6)
	jr a3
	# assert_exception block end
excp_return_label_808:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_809, excp_return_label_809, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_809:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t5, t2
	li s8, failed_addr
	ld s6, 0(s8)
	jr s6
	# assert_exception block end
excp_return_label_809:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_810, excp_return_label_810, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_810:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a2, t2
	li a1, failed_addr
	ld s7, 0(a1)
	jr s7
	# assert_exception block end
excp_return_label_810:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_811, excp_return_label_811, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_811:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a3, t2
	li a5, failed_addr
	ld s8, 0(a5)
	jr s8
	# assert_exception block end
excp_return_label_811:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_812, excp_return_label_812, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_812:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a6, t2
	li a7, failed_addr
	ld t2, 0(a7)
	jr t2
	# assert_exception block end
excp_return_label_812:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_813, excp_return_label_813, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_813:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t4, t2
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_813:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_814, excp_return_label_814, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_814:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t2, t2
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_814:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_815, excp_return_label_815, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_815:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s7, t2
	li a4, failed_addr
	ld t5, 0(a4)
	jr t5
	# assert_exception block end
excp_return_label_815:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_816, excp_return_label_816, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_816:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a4, t2
	li a2, failed_addr
	ld t6, 0(a2)
	jr t6
	# assert_exception block end
excp_return_label_816:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_817, excp_return_label_817, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_817:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s7, t2
	li t3, failed_addr
	ld s2, 0(t3)
	jr s2
	# assert_exception block end
excp_return_label_817:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_818, excp_return_label_818, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_818:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s5, t2
	li s1, failed_addr
	ld t1, 0(s1)
	jr t1
	# assert_exception block end
excp_return_label_818:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_819, excp_return_label_819, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_819:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a5, t2
	li t6, failed_addr
	ld s10, 0(t6)
	jr s10
	# assert_exception block end
excp_return_label_819:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_820, excp_return_label_820, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_820:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s11, t2
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_820:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_821, excp_return_label_821, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_821:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s3, t2
	li s5, failed_addr
	ld s8, 0(s5)
	jr s8
	# assert_exception block end
excp_return_label_821:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_822, excp_return_label_822, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_822:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s9, t2
	li a5, failed_addr
	ld a0, 0(a5)
	jr a0
	# assert_exception block end
excp_return_label_822:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_823, excp_return_label_823, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_823:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s4, t2
	li t6, failed_addr
	ld s7, 0(t6)
	jr s7
	# assert_exception block end
excp_return_label_823:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_824, excp_return_label_824, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_824:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a4, t2
	li s3, failed_addr
	ld s8, 0(s3)
	jr s8
	# assert_exception block end
excp_return_label_824:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_825, excp_return_label_825, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_825:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t1, t2
	li s1, failed_addr
	ld s11, 0(s1)
	jr s11
	# assert_exception block end
excp_return_label_825:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_826, excp_return_label_826, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_826:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s3, t2
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_826:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_827, excp_return_label_827, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_827:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t1, t2
	li t5, failed_addr
	ld s2, 0(t5)
	jr s2
	# assert_exception block end
excp_return_label_827:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_828, excp_return_label_828, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_828:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a2, t2
	li s3, failed_addr
	ld s9, 0(s3)
	jr s9
	# assert_exception block end
excp_return_label_828:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_829, excp_return_label_829, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_829:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a1, t2
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_829:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_830, excp_return_label_830, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_830:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s1, t2
	li s4, failed_addr
	ld s0, 0(s4)
	jr s0
	# assert_exception block end
excp_return_label_830:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_831, excp_return_label_831, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_831:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t5, t2
	li s6, failed_addr
	ld t3, 0(s6)
	jr t3
	# assert_exception block end
excp_return_label_831:
	# Set only this field in mcounteren, clear all others
	li t2, 8388608
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_832, excp_return_label_832, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_832:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s0, t2
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_832:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_833, excp_return_label_833, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_833:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t3, t2
	li t5, failed_addr
	ld a2, 0(t5)
	jr a2
	# assert_exception block end
excp_return_label_833:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_834, excp_return_label_834, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_834:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t3, t2
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
	# assert_exception block end
excp_return_label_834:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_835, excp_return_label_835, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_835:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s11, t2
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_835:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_836, excp_return_label_836, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_836:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s7, t2
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_836:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_837, excp_return_label_837, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_837:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t5, t2
	li t5, failed_addr
	ld s2, 0(t5)
	jr s2
	# assert_exception block end
excp_return_label_837:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_838, excp_return_label_838, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_838:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t4, t2
	li s11, failed_addr
	ld t5, 0(s11)
	jr t5
	# assert_exception block end
excp_return_label_838:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_839, excp_return_label_839, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_839:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s8, t2
	li s6, failed_addr
	ld a2, 0(s6)
	jr a2
	# assert_exception block end
excp_return_label_839:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_840, excp_return_label_840, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_840:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t4, t2
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
	# assert_exception block end
excp_return_label_840:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_841, excp_return_label_841, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_841:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s2, t2
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_841:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_842, excp_return_label_842, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_842:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s6, t2
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_842:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_843, excp_return_label_843, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_843:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s3, t2
	li s6, failed_addr
	ld a2, 0(s6)
	jr a2
	# assert_exception block end
excp_return_label_843:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_844, excp_return_label_844, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_844:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a1, t2
	li s4, failed_addr
	ld a1, 0(s4)
	jr a1
	# assert_exception block end
excp_return_label_844:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_845, excp_return_label_845, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_845:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t2, t2
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_845:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_846, excp_return_label_846, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_846:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a0, t2
	li s9, failed_addr
	ld s1, 0(s9)
	jr s1
	# assert_exception block end
excp_return_label_846:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_847, excp_return_label_847, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_847:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s7, t2
	li a3, failed_addr
	ld s3, 0(a3)
	jr s3
	# assert_exception block end
excp_return_label_847:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_848, excp_return_label_848, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_848:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s3, t2
	li s10, failed_addr
	ld s10, 0(s10)
	jr s10
	# assert_exception block end
excp_return_label_848:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_849, excp_return_label_849, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_849:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a2, t2
	li s4, failed_addr
	ld s2, 0(s4)
	jr s2
	# assert_exception block end
excp_return_label_849:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_850, excp_return_label_850, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_850:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s11, t2
	li s1, failed_addr
	ld a0, 0(s1)
	jr a0
	# assert_exception block end
excp_return_label_850:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_851, excp_return_label_851, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_851:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s0, t2
	li s1, failed_addr
	ld a3, 0(s1)
	jr a3
	# assert_exception block end
excp_return_label_851:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_852, excp_return_label_852, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_852:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s6, t2
	li s1, failed_addr
	ld a0, 0(s1)
	jr a0
	# assert_exception block end
excp_return_label_852:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_853, excp_return_label_853, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_853:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a4, t2
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
	# assert_exception block end
excp_return_label_853:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_854, excp_return_label_854, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_854:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a6, t2
	li a0, failed_addr
	ld t1, 0(a0)
	jr t1
	# assert_exception block end
excp_return_label_854:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_855, excp_return_label_855, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_855:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a2, t2
	li a2, failed_addr
	ld a7, 0(a2)
	jr a7
	# assert_exception block end
excp_return_label_855:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_856, excp_return_label_856, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_856:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s9, t2
	li t2, failed_addr
	ld s7, 0(t2)
	jr s7
	# assert_exception block end
excp_return_label_856:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_857, excp_return_label_857, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_857:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s9, t2
	li t6, failed_addr
	ld s2, 0(t6)
	jr s2
	# assert_exception block end
excp_return_label_857:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_858, excp_return_label_858, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_858:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s6, t2
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_858:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_859, excp_return_label_859, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_859:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s1, t2
	li s0, failed_addr
	ld t6, 0(s0)
	jr t6
	# assert_exception block end
excp_return_label_859:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_860, excp_return_label_860, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_860:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t2, t2
	li t4, failed_addr
	ld s4, 0(t4)
	jr s4
	# assert_exception block end
excp_return_label_860:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_861, excp_return_label_861, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_861:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t6, t2
	li a5, failed_addr
	ld t1, 0(a5)
	jr t1
	# assert_exception block end
excp_return_label_861:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_862, excp_return_label_862, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_862:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t3, t2
	li t6, failed_addr
	ld s4, 0(t6)
	jr s4
	# assert_exception block end
excp_return_label_862:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_863, excp_return_label_863, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_863:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a1, t2
	li a4, failed_addr
	ld a1, 0(a4)
	jr a1
	# assert_exception block end
excp_return_label_863:
	# Set only this field in mcounteren, clear all others
	li t2, 16777216
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_864, excp_return_label_864, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_864:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s4, t2
	li s7, failed_addr
	ld a3, 0(s7)
	jr a3
	# assert_exception block end
excp_return_label_864:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_865, excp_return_label_865, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_865:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t6, t2
	li s2, failed_addr
	ld a2, 0(s2)
	jr a2
	# assert_exception block end
excp_return_label_865:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_866, excp_return_label_866, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_866:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t5, t2
	li a3, failed_addr
	ld a2, 0(a3)
	jr a2
	# assert_exception block end
excp_return_label_866:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_867, excp_return_label_867, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_867:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t5, t2
	li a0, failed_addr
	ld t5, 0(a0)
	jr t5
	# assert_exception block end
excp_return_label_867:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_868, excp_return_label_868, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_868:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv t5, t2
	li t2, failed_addr
	ld a1, 0(t2)
	jr a1
	# assert_exception block end
excp_return_label_868:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_869, excp_return_label_869, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_869:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t5, t2
	li t6, failed_addr
	ld a2, 0(t6)
	jr a2
	# assert_exception block end
excp_return_label_869:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_870, excp_return_label_870, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_870:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t4, t2
	li s1, failed_addr
	ld s0, 0(s1)
	jr s0
	# assert_exception block end
excp_return_label_870:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_871, excp_return_label_871, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_871:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a4, t2
	li s7, failed_addr
	ld a1, 0(s7)
	jr a1
	# assert_exception block end
excp_return_label_871:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_872, excp_return_label_872, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_872:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a3, t2
	li a3, failed_addr
	ld s11, 0(a3)
	jr s11
	# assert_exception block end
excp_return_label_872:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_873, excp_return_label_873, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_873:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s6, t2
	li t5, failed_addr
	ld a5, 0(t5)
	jr a5
	# assert_exception block end
excp_return_label_873:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_874, excp_return_label_874, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_874:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a1, t2
	li s3, failed_addr
	ld s11, 0(s3)
	jr s11
	# assert_exception block end
excp_return_label_874:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_875, excp_return_label_875, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_875:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t3, t2
	li a5, failed_addr
	ld s4, 0(a5)
	jr s4
	# assert_exception block end
excp_return_label_875:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_876, excp_return_label_876, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_876:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s2, t2
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
	# assert_exception block end
excp_return_label_876:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_877, excp_return_label_877, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_877:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a4, t2
	li t1, failed_addr
	ld s4, 0(t1)
	jr s4
	# assert_exception block end
excp_return_label_877:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_878, excp_return_label_878, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_878:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s9, t2
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_878:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_879, excp_return_label_879, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_879:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s4, t2
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_879:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_880, excp_return_label_880, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_880:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s8, t2
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_880:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_881, excp_return_label_881, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_881:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s4, t2
	li a3, failed_addr
	ld s2, 0(a3)
	jr s2
	# assert_exception block end
excp_return_label_881:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_882, excp_return_label_882, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_882:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s0, t2
	li t6, failed_addr
	ld a3, 0(t6)
	jr a3
	# assert_exception block end
excp_return_label_882:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_883, excp_return_label_883, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_883:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a0, t2
	li s10, failed_addr
	ld a5, 0(s10)
	jr a5
	# assert_exception block end
excp_return_label_883:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_884, excp_return_label_884, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_884:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s9, t2
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_884:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_885, excp_return_label_885, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_885:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t2, t2
	li s0, failed_addr
	ld s4, 0(s0)
	jr s4
	# assert_exception block end
excp_return_label_885:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_886, excp_return_label_886, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_886:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a4, t2
	li s9, failed_addr
	ld a2, 0(s9)
	jr a2
	# assert_exception block end
excp_return_label_886:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_887, excp_return_label_887, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_887:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s2, t2
	li s4, failed_addr
	ld t1, 0(s4)
	jr t1
	# assert_exception block end
excp_return_label_887:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_888, excp_return_label_888, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_888:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t2, t2
	li t3, failed_addr
	ld s2, 0(t3)
	jr s2
	# assert_exception block end
excp_return_label_888:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_889, excp_return_label_889, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_889:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s11, t2
	li a0, failed_addr
	ld a6, 0(a0)
	jr a6
	# assert_exception block end
excp_return_label_889:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_890, excp_return_label_890, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_890:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s6, t2
	li t2, failed_addr
	ld t4, 0(t2)
	jr t4
	# assert_exception block end
excp_return_label_890:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_891, excp_return_label_891, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_891:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s11, t2
	li a2, failed_addr
	ld t5, 0(a2)
	jr t5
	# assert_exception block end
excp_return_label_891:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_892, excp_return_label_892, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_892:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t3, t2
	li t6, failed_addr
	ld t4, 0(t6)
	jr t4
	# assert_exception block end
excp_return_label_892:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_893, excp_return_label_893, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_893:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t6, t2
	li a2, failed_addr
	ld t2, 0(a2)
	jr t2
	# assert_exception block end
excp_return_label_893:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_894, excp_return_label_894, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_894:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s10, t2
	li t1, failed_addr
	ld s9, 0(t1)
	jr s9
	# assert_exception block end
excp_return_label_894:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_895, excp_return_label_895, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_895:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t2, t2
	li a3, failed_addr
	ld s5, 0(a3)
	jr s5
	# assert_exception block end
excp_return_label_895:
	# Set only this field in mcounteren, clear all others
	li t2, 33554432
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_896, excp_return_label_896, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_896:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s3, t2
	li s10, failed_addr
	ld t4, 0(s10)
	jr t4
	# assert_exception block end
excp_return_label_896:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_897, excp_return_label_897, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_897:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t6, t2
	li a2, failed_addr
	ld a5, 0(a2)
	jr a5
	# assert_exception block end
excp_return_label_897:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_898, excp_return_label_898, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_898:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s1, t2
	li a6, failed_addr
	ld s7, 0(a6)
	jr s7
	# assert_exception block end
excp_return_label_898:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_899, excp_return_label_899, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_899:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s8, t2
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
	# assert_exception block end
excp_return_label_899:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_900, excp_return_label_900, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_900:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s7, t2
	li s0, failed_addr
	ld s10, 0(s0)
	jr s10
	# assert_exception block end
excp_return_label_900:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_901, excp_return_label_901, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_901:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s0, t2
	li s7, failed_addr
	ld a1, 0(s7)
	jr a1
	# assert_exception block end
excp_return_label_901:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_902, excp_return_label_902, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_902:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s2, t2
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_902:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_903, excp_return_label_903, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_903:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s11, t2
	li s10, failed_addr
	ld a2, 0(s10)
	jr a2
	# assert_exception block end
excp_return_label_903:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_904, excp_return_label_904, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_904:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a5, t2
	li a5, failed_addr
	ld s6, 0(a5)
	jr s6
	# assert_exception block end
excp_return_label_904:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_905, excp_return_label_905, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_905:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a4, t2
	li t5, failed_addr
	ld s4, 0(t5)
	jr s4
	# assert_exception block end
excp_return_label_905:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_906, excp_return_label_906, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_906:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t4, t2
	li s2, failed_addr
	ld t6, 0(s2)
	jr t6
	# assert_exception block end
excp_return_label_906:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_907, excp_return_label_907, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_907:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s8, t2
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
	# assert_exception block end
excp_return_label_907:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_908, excp_return_label_908, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_908:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a4, t2
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
	# assert_exception block end
excp_return_label_908:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_909, excp_return_label_909, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_909:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a6, t2
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
	# assert_exception block end
excp_return_label_909:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_910, excp_return_label_910, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_910:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s4, t2
	li t1, failed_addr
	ld s11, 0(t1)
	jr s11
	# assert_exception block end
excp_return_label_910:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_911, excp_return_label_911, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_911:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s6, t2
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
	# assert_exception block end
excp_return_label_911:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_912, excp_return_label_912, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_912:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s9, t2
	li s2, failed_addr
	ld t6, 0(s2)
	jr t6
	# assert_exception block end
excp_return_label_912:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_913, excp_return_label_913, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_913:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a0, t2
	li s1, failed_addr
	ld t3, 0(s1)
	jr t3
	# assert_exception block end
excp_return_label_913:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_914, excp_return_label_914, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_914:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a7, t2
	li a2, failed_addr
	ld t1, 0(a2)
	jr t1
	# assert_exception block end
excp_return_label_914:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_915, excp_return_label_915, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_915:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s1, t2
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
	# assert_exception block end
excp_return_label_915:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_916, excp_return_label_916, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_916:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t4, t2
	li t5, failed_addr
	ld a6, 0(t5)
	jr a6
	# assert_exception block end
excp_return_label_916:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_917, excp_return_label_917, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_917:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s8, t2
	li s11, failed_addr
	ld s11, 0(s11)
	jr s11
	# assert_exception block end
excp_return_label_917:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_918, excp_return_label_918, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_918:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s10, t2
	li s5, failed_addr
	ld s5, 0(s5)
	jr s5
	# assert_exception block end
excp_return_label_918:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_919, excp_return_label_919, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_919:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t6, t2
	li s5, failed_addr
	ld s3, 0(s5)
	jr s3
	# assert_exception block end
excp_return_label_919:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_920, excp_return_label_920, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_920:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a5, t2
	li s1, failed_addr
	ld s4, 0(s1)
	jr s4
	# assert_exception block end
excp_return_label_920:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_921, excp_return_label_921, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_921:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a0, t2
	li a1, failed_addr
	ld t2, 0(a1)
	jr t2
	# assert_exception block end
excp_return_label_921:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_922, excp_return_label_922, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_922:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t1, t2
	li t5, failed_addr
	ld a4, 0(t5)
	jr a4
	# assert_exception block end
excp_return_label_922:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_923, excp_return_label_923, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_923:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s1, t2
	li s6, failed_addr
	ld s5, 0(s6)
	jr s5
	# assert_exception block end
excp_return_label_923:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_924, excp_return_label_924, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_924:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a2, t2
	li a2, failed_addr
	ld t4, 0(a2)
	jr t4
	# assert_exception block end
excp_return_label_924:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_925, excp_return_label_925, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_925:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s6, t2
	li a7, failed_addr
	ld s2, 0(a7)
	jr s2
	# assert_exception block end
excp_return_label_925:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_926, excp_return_label_926, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_926:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s0, t2
	li s11, failed_addr
	ld s9, 0(s11)
	jr s9
	# assert_exception block end
excp_return_label_926:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_927, excp_return_label_927, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_927:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s11, t2
	li s9, failed_addr
	ld a6, 0(s9)
	jr a6
	# assert_exception block end
excp_return_label_927:
	# Set only this field in mcounteren, clear all others
	li t2, 67108864
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_928, excp_return_label_928, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_928:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s7, t2
	li s7, failed_addr
	ld s7, 0(s7)
	jr s7
	# assert_exception block end
excp_return_label_928:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_929, excp_return_label_929, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_929:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a6, t2
	li s4, failed_addr
	ld t1, 0(s4)
	jr t1
	# assert_exception block end
excp_return_label_929:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_930, excp_return_label_930, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_930:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a6, t2
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
	# assert_exception block end
excp_return_label_930:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_931, excp_return_label_931, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_931:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t4, t2
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_931:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_932, excp_return_label_932, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_932:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv t3, t2
	li a0, failed_addr
	ld s1, 0(a0)
	jr s1
	# assert_exception block end
excp_return_label_932:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_933, excp_return_label_933, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_933:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s1, t2
	li t5, failed_addr
	ld a7, 0(t5)
	jr a7
	# assert_exception block end
excp_return_label_933:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_934, excp_return_label_934, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_934:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s11, t2
	li s9, failed_addr
	ld a6, 0(s9)
	jr a6
	# assert_exception block end
excp_return_label_934:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_935, excp_return_label_935, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_935:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a6, t2
	li a7, failed_addr
	ld s1, 0(a7)
	jr s1
	# assert_exception block end
excp_return_label_935:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_936, excp_return_label_936, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_936:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s4, t2
	li a6, failed_addr
	ld t1, 0(a6)
	jr t1
	# assert_exception block end
excp_return_label_936:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_937, excp_return_label_937, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_937:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s10, t2
	li t4, failed_addr
	ld a2, 0(t4)
	jr a2
	# assert_exception block end
excp_return_label_937:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_938, excp_return_label_938, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_938:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s11, t2
	li a1, failed_addr
	ld a4, 0(a1)
	jr a4
	# assert_exception block end
excp_return_label_938:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_939, excp_return_label_939, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_939:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s10, t2
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_939:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_940, excp_return_label_940, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_940:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s7, t2
	li t6, failed_addr
	ld s7, 0(t6)
	jr s7
	# assert_exception block end
excp_return_label_940:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_941, excp_return_label_941, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_941:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t2, t2
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
	# assert_exception block end
excp_return_label_941:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_942, excp_return_label_942, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_942:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a4, t2
	li s9, failed_addr
	ld s1, 0(s9)
	jr s1
	# assert_exception block end
excp_return_label_942:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_943, excp_return_label_943, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_943:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s1, t2
	li t1, failed_addr
	ld a1, 0(t1)
	jr a1
	# assert_exception block end
excp_return_label_943:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_944, excp_return_label_944, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_944:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a2, t2
	li t4, failed_addr
	ld s11, 0(t4)
	jr s11
	# assert_exception block end
excp_return_label_944:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_945, excp_return_label_945, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_945:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a6, t2
	li t6, failed_addr
	ld a4, 0(t6)
	jr a4
	# assert_exception block end
excp_return_label_945:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_946, excp_return_label_946, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_946:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s1, t2
	li a3, failed_addr
	ld s7, 0(a3)
	jr s7
	# assert_exception block end
excp_return_label_946:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_947, excp_return_label_947, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_947:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s0, t2
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_947:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_948, excp_return_label_948, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_948:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a0, t2
	li s1, failed_addr
	ld s2, 0(s1)
	jr s2
	# assert_exception block end
excp_return_label_948:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_949, excp_return_label_949, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_949:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a3, t2
	li s1, failed_addr
	ld t2, 0(s1)
	jr t2
	# assert_exception block end
excp_return_label_949:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_950, excp_return_label_950, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_950:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t5, t2
	li s10, failed_addr
	ld a4, 0(s10)
	jr a4
	# assert_exception block end
excp_return_label_950:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_951, excp_return_label_951, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_951:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a3, t2
	li s1, failed_addr
	ld a7, 0(s1)
	jr a7
	# assert_exception block end
excp_return_label_951:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_952, excp_return_label_952, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_952:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s4, t2
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_952:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_953, excp_return_label_953, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_953:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a3, t2
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_953:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_954, excp_return_label_954, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_954:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t3, t2
	li s5, failed_addr
	ld s3, 0(s5)
	jr s3
	# assert_exception block end
excp_return_label_954:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_955, excp_return_label_955, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_955:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a2, t2
	li s0, failed_addr
	ld s4, 0(s0)
	jr s4
	# assert_exception block end
excp_return_label_955:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_956, excp_return_label_956, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_956:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s2, t2
	li s6, failed_addr
	ld t1, 0(s6)
	jr t1
	# assert_exception block end
excp_return_label_956:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_957, excp_return_label_957, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_957:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t4, t2
	li s3, failed_addr
	ld a7, 0(s3)
	jr a7
	# assert_exception block end
excp_return_label_957:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_958, excp_return_label_958, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_958:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t3, t2
	li a1, failed_addr
	ld s7, 0(a1)
	jr s7
	# assert_exception block end
excp_return_label_958:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_959, excp_return_label_959, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_959:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a7, t2
	li a6, failed_addr
	ld s9, 0(a6)
	jr s9
	# assert_exception block end
excp_return_label_959:
	# Set only this field in mcounteren, clear all others
	li t2, 134217728
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_960, excp_return_label_960, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_960:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s7, t2
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
	# assert_exception block end
excp_return_label_960:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_961, excp_return_label_961, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_961:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t3, t2
	li a5, failed_addr
	ld t6, 0(a5)
	jr t6
	# assert_exception block end
excp_return_label_961:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_962, excp_return_label_962, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_962:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a5, t2
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
	# assert_exception block end
excp_return_label_962:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_963, excp_return_label_963, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_963:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s6, t2
	li t1, failed_addr
	ld t4, 0(t1)
	jr t4
	# assert_exception block end
excp_return_label_963:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_964, excp_return_label_964, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_964:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s7, t2
	li s3, failed_addr
	ld s3, 0(s3)
	jr s3
	# assert_exception block end
excp_return_label_964:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_965, excp_return_label_965, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_965:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t3, t2
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_965:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_966, excp_return_label_966, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_966:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s7, t2
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
	# assert_exception block end
excp_return_label_966:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_967, excp_return_label_967, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_967:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t3, t2
	li a4, failed_addr
	ld s5, 0(a4)
	jr s5
	# assert_exception block end
excp_return_label_967:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_968, excp_return_label_968, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_968:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t6, t2
	li a0, failed_addr
	ld a6, 0(a0)
	jr a6
	# assert_exception block end
excp_return_label_968:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_969, excp_return_label_969, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_969:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t3, t2
	li a0, failed_addr
	ld a0, 0(a0)
	jr a0
	# assert_exception block end
excp_return_label_969:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_970, excp_return_label_970, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_970:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s4, t2
	li t5, failed_addr
	ld s10, 0(t5)
	jr s10
	# assert_exception block end
excp_return_label_970:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_971, excp_return_label_971, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_971:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s6, t2
	li s3, failed_addr
	ld t3, 0(s3)
	jr t3
	# assert_exception block end
excp_return_label_971:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_972, excp_return_label_972, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_972:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a1, t2
	li a5, failed_addr
	ld s2, 0(a5)
	jr s2
	# assert_exception block end
excp_return_label_972:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_973, excp_return_label_973, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_973:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s2, t2
	li s1, failed_addr
	ld t4, 0(s1)
	jr t4
	# assert_exception block end
excp_return_label_973:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_974, excp_return_label_974, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_974:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a4, t2
	li s1, failed_addr
	ld t3, 0(s1)
	jr t3
	# assert_exception block end
excp_return_label_974:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_975, excp_return_label_975, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_975:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s8, t2
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
	# assert_exception block end
excp_return_label_975:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_976, excp_return_label_976, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_976:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s11, t2
	li a6, failed_addr
	ld s6, 0(a6)
	jr s6
	# assert_exception block end
excp_return_label_976:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_977, excp_return_label_977, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_977:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a4, t2
	li s4, failed_addr
	ld s7, 0(s4)
	jr s7
	# assert_exception block end
excp_return_label_977:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_978, excp_return_label_978, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_978:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t6, t2
	li s10, failed_addr
	ld s0, 0(s10)
	jr s0
	# assert_exception block end
excp_return_label_978:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_979, excp_return_label_979, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_979:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s2, t2
	li a4, failed_addr
	ld a6, 0(a4)
	jr a6
	# assert_exception block end
excp_return_label_979:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_980, excp_return_label_980, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_980:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s6, t2
	li s7, failed_addr
	ld s0, 0(s7)
	jr s0
	# assert_exception block end
excp_return_label_980:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_981, excp_return_label_981, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_981:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t6, t2
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
	# assert_exception block end
excp_return_label_981:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_982, excp_return_label_982, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_982:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s11, t2
	li a6, failed_addr
	ld s2, 0(a6)
	jr s2
	# assert_exception block end
excp_return_label_982:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_983, excp_return_label_983, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_983:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s10, t2
	li t5, failed_addr
	ld s7, 0(t5)
	jr s7
	# assert_exception block end
excp_return_label_983:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_984, excp_return_label_984, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_984:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s8, t2
	li a1, failed_addr
	ld s6, 0(a1)
	jr s6
	# assert_exception block end
excp_return_label_984:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_985, excp_return_label_985, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_985:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t2, t2
	li s9, failed_addr
	ld t3, 0(s9)
	jr t3
	# assert_exception block end
excp_return_label_985:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_986, excp_return_label_986, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_986:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t4, t2
	li a7, failed_addr
	ld t4, 0(a7)
	jr t4
	# assert_exception block end
excp_return_label_986:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_987, excp_return_label_987, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_987:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s3, t2
	li a5, failed_addr
	ld s3, 0(a5)
	jr s3
	# assert_exception block end
excp_return_label_987:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_988, excp_return_label_988, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_988:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a4, t2
	li a3, failed_addr
	ld s0, 0(a3)
	jr s0
	# assert_exception block end
excp_return_label_988:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_989, excp_return_label_989, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_989:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s6, t2
	li t5, failed_addr
	ld t6, 0(t5)
	jr t6
	# assert_exception block end
excp_return_label_989:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_990, excp_return_label_990, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_990:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s5, t2
	li s5, failed_addr
	ld a1, 0(s5)
	jr a1
	# assert_exception block end
excp_return_label_990:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_991, excp_return_label_991, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_991:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s1, t2
	li s6, failed_addr
	ld s10, 0(s6)
	jr s10
	# assert_exception block end
excp_return_label_991:
	# Set only this field in mcounteren, clear all others
	li t2, 268435456
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_992, excp_return_label_992, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_992:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a1, t2
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
	# assert_exception block end
excp_return_label_992:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_993, excp_return_label_993, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_993:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s4, t2
	li a3, failed_addr
	ld a1, 0(a3)
	jr a1
	# assert_exception block end
excp_return_label_993:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_994, excp_return_label_994, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_994:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s6, t2
	li s8, failed_addr
	ld s2, 0(s8)
	jr s2
	# assert_exception block end
excp_return_label_994:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_995, excp_return_label_995, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_995:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a5, t2
	li s7, failed_addr
	ld a3, 0(s7)
	jr a3
	# assert_exception block end
excp_return_label_995:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_996, excp_return_label_996, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_996:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a5, t2
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_996:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_997, excp_return_label_997, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_997:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a2, t2
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
	# assert_exception block end
excp_return_label_997:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_998, excp_return_label_998, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_998:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a1, t2
	li s7, failed_addr
	ld t1, 0(s7)
	jr t1
	# assert_exception block end
excp_return_label_998:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_999, excp_return_label_999, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_999:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s11, t2
	li s10, failed_addr
	ld s2, 0(s10)
	jr s2
	# assert_exception block end
excp_return_label_999:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1000, excp_return_label_1000, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1000:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a7, t2
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
	# assert_exception block end
excp_return_label_1000:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1001, excp_return_label_1001, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1001:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t5, t2
	li s9, failed_addr
	ld t1, 0(s9)
	jr t1
	# assert_exception block end
excp_return_label_1001:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1002, excp_return_label_1002, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1002:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s8, t2
	li t5, failed_addr
	ld t2, 0(t5)
	jr t2
	# assert_exception block end
excp_return_label_1002:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1003, excp_return_label_1003, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1003:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a7, t2
	li t1, failed_addr
	ld s6, 0(t1)
	jr s6
	# assert_exception block end
excp_return_label_1003:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1004, excp_return_label_1004, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1004:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s9, t2
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_1004:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1005, excp_return_label_1005, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1005:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s8, t2
	li t3, failed_addr
	ld s4, 0(t3)
	jr s4
	# assert_exception block end
excp_return_label_1005:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1006, excp_return_label_1006, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1006:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a1, t2
	li s2, failed_addr
	ld s3, 0(s2)
	jr s3
	# assert_exception block end
excp_return_label_1006:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1007, excp_return_label_1007, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1007:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a2, t2
	li a4, failed_addr
	ld s2, 0(a4)
	jr s2
	# assert_exception block end
excp_return_label_1007:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1008, excp_return_label_1008, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1008:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a1, t2
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
	# assert_exception block end
excp_return_label_1008:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1009, excp_return_label_1009, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1009:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a5, t2
	li t1, failed_addr
	ld s10, 0(t1)
	jr s10
	# assert_exception block end
excp_return_label_1009:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1010, excp_return_label_1010, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1010:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s9, t2
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
	# assert_exception block end
excp_return_label_1010:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1011, excp_return_label_1011, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1011:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s8, t2
	li a1, failed_addr
	ld a4, 0(a1)
	jr a4
	# assert_exception block end
excp_return_label_1011:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1012, excp_return_label_1012, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1012:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a6, t2
	li s4, failed_addr
	ld s11, 0(s4)
	jr s11
	# assert_exception block end
excp_return_label_1012:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1013, excp_return_label_1013, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1013:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a1, t2
	li a2, failed_addr
	ld t6, 0(a2)
	jr t6
	# assert_exception block end
excp_return_label_1013:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1014, excp_return_label_1014, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1014:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s7, t2
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
	# assert_exception block end
excp_return_label_1014:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1015, excp_return_label_1015, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1015:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a1, t2
	li s3, failed_addr
	ld a0, 0(s3)
	jr a0
	# assert_exception block end
excp_return_label_1015:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1016, excp_return_label_1016, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1016:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s6, t2
	li t2, failed_addr
	ld a7, 0(t2)
	jr a7
	# assert_exception block end
excp_return_label_1016:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1017, excp_return_label_1017, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1017:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s6, t2
	li s7, failed_addr
	ld s11, 0(s7)
	jr s11
	# assert_exception block end
excp_return_label_1017:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1018, excp_return_label_1018, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1018:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a1, t2
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
	# assert_exception block end
excp_return_label_1018:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1019, excp_return_label_1019, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1019:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a5, t2
	li a1, failed_addr
	ld t3, 0(a1)
	jr t3
	# assert_exception block end
excp_return_label_1019:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1020, excp_return_label_1020, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1020:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a6, t2
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_1020:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1021, excp_return_label_1021, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1021:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t5, t2
	li a0, failed_addr
	ld s3, 0(a0)
	jr s3
	# assert_exception block end
excp_return_label_1021:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1022, excp_return_label_1022, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1022:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a5, t2
	li s3, failed_addr
	ld a6, 0(s3)
	jr a6
	# assert_exception block end
excp_return_label_1022:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1023, excp_return_label_1023, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1023:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a5, t2
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_1023:
	# Set only this field in mcounteren, clear all others
	li t2, 536870912
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1024, excp_return_label_1024, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1024:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a1, t2
	li t4, failed_addr
	ld t6, 0(t4)
	jr t6
	# assert_exception block end
excp_return_label_1024:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1025, excp_return_label_1025, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1025:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a1, t2
	li a2, failed_addr
	ld s5, 0(a2)
	jr s5
	# assert_exception block end
excp_return_label_1025:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1026, excp_return_label_1026, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1026:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a2, t2
	li t4, failed_addr
	ld s6, 0(t4)
	jr s6
	# assert_exception block end
excp_return_label_1026:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1027, excp_return_label_1027, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1027:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s2, t2
	li s6, failed_addr
	ld s10, 0(s6)
	jr s10
	# assert_exception block end
excp_return_label_1027:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1028, excp_return_label_1028, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1028:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s1, t2
	li t6, failed_addr
	ld a1, 0(t6)
	jr a1
	# assert_exception block end
excp_return_label_1028:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1029, excp_return_label_1029, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1029:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s11, t2
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_1029:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1030, excp_return_label_1030, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1030:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s11, t2
	li a0, failed_addr
	ld s6, 0(a0)
	jr s6
	# assert_exception block end
excp_return_label_1030:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1031, excp_return_label_1031, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1031:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t2, t2
	li t1, failed_addr
	ld a1, 0(t1)
	jr a1
	# assert_exception block end
excp_return_label_1031:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1032, excp_return_label_1032, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1032:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s6, t2
	li s10, failed_addr
	ld s8, 0(s10)
	jr s8
	# assert_exception block end
excp_return_label_1032:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1033, excp_return_label_1033, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1033:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s0, t2
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
	# assert_exception block end
excp_return_label_1033:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1034, excp_return_label_1034, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1034:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t4, t2
	li t1, failed_addr
	ld t2, 0(t1)
	jr t2
	# assert_exception block end
excp_return_label_1034:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1035, excp_return_label_1035, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1035:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s2, t2
	li t3, failed_addr
	ld s8, 0(t3)
	jr s8
	# assert_exception block end
excp_return_label_1035:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1036, excp_return_label_1036, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1036:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s0, t2
	li s1, failed_addr
	ld s4, 0(s1)
	jr s4
	# assert_exception block end
excp_return_label_1036:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1037, excp_return_label_1037, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1037:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s1, t2
	li s5, failed_addr
	ld s11, 0(s5)
	jr s11
	# assert_exception block end
excp_return_label_1037:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1038, excp_return_label_1038, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1038:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a0, t2
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_1038:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1039, excp_return_label_1039, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1039:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s1, t2
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_1039:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1040, excp_return_label_1040, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1040:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t6, t2
	li s7, failed_addr
	ld t3, 0(s7)
	jr t3
	# assert_exception block end
excp_return_label_1040:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1041, excp_return_label_1041, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1041:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t3, t2
	li t4, failed_addr
	ld a5, 0(t4)
	jr a5
	# assert_exception block end
excp_return_label_1041:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1042, excp_return_label_1042, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1042:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s3, t2
	li t5, failed_addr
	ld s11, 0(t5)
	jr s11
	# assert_exception block end
excp_return_label_1042:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1043, excp_return_label_1043, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1043:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s9, t2
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_1043:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1044, excp_return_label_1044, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1044:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s4, t2
	li s4, failed_addr
	ld s6, 0(s4)
	jr s6
	# assert_exception block end
excp_return_label_1044:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1045, excp_return_label_1045, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1045:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t5, t2
	li t3, failed_addr
	ld a5, 0(t3)
	jr a5
	# assert_exception block end
excp_return_label_1045:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1046, excp_return_label_1046, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1046:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a4, t2
	li t4, failed_addr
	ld s0, 0(t4)
	jr s0
	# assert_exception block end
excp_return_label_1046:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1047, excp_return_label_1047, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1047:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t5, t2
	li a3, failed_addr
	ld s9, 0(a3)
	jr s9
	# assert_exception block end
excp_return_label_1047:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1048, excp_return_label_1048, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1048:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t4, t2
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
	# assert_exception block end
excp_return_label_1048:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1049, excp_return_label_1049, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1049:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s1, t2
	li s5, failed_addr
	ld a5, 0(s5)
	jr a5
	# assert_exception block end
excp_return_label_1049:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1050, excp_return_label_1050, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1050:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s10, t2
	li s11, failed_addr
	ld s7, 0(s11)
	jr s7
	# assert_exception block end
excp_return_label_1050:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1051, excp_return_label_1051, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1051:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a6, t2
	li s8, failed_addr
	ld s0, 0(s8)
	jr s0
	# assert_exception block end
excp_return_label_1051:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1052, excp_return_label_1052, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1052:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a0, t2
	li s3, failed_addr
	ld s3, 0(s3)
	jr s3
	# assert_exception block end
excp_return_label_1052:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1053, excp_return_label_1053, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1053:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a0, t2
	li s7, failed_addr
	ld a5, 0(s7)
	jr a5
	# assert_exception block end
excp_return_label_1053:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1054, excp_return_label_1054, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1054:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a3, t2
	li a4, failed_addr
	ld s8, 0(a4)
	jr s8
	# assert_exception block end
excp_return_label_1054:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1055, excp_return_label_1055, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1055:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a3, t2
	li s5, failed_addr
	ld s11, 0(s5)
	jr s11
	# assert_exception block end
excp_return_label_1055:
	# Set only this field in mcounteren, clear all others
	li t2, 1073741824
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1056, excp_return_label_1056, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1056:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a6, t2
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_1056:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1057, excp_return_label_1057, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1057:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t4, t2
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_1057:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1058, excp_return_label_1058, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1058:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a6, t2
	li a3, failed_addr
	ld t3, 0(a3)
	jr t3
	# assert_exception block end
excp_return_label_1058:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1059, excp_return_label_1059, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1059:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a5, t2
	li a5, failed_addr
	ld t5, 0(a5)
	jr t5
	# assert_exception block end
excp_return_label_1059:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1060, excp_return_label_1060, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1060:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s10, t2
	li t3, failed_addr
	ld t6, 0(t3)
	jr t6
	# assert_exception block end
excp_return_label_1060:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1061, excp_return_label_1061, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1061:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t5, t2
	li a7, failed_addr
	ld a4, 0(a7)
	jr a4
	# assert_exception block end
excp_return_label_1061:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1062, excp_return_label_1062, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1062:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s6, t2
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
	# assert_exception block end
excp_return_label_1062:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1063, excp_return_label_1063, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1063:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s6, t2
	li a7, failed_addr
	ld s10, 0(a7)
	jr s10
	# assert_exception block end
excp_return_label_1063:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1064, excp_return_label_1064, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1064:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a7, t2
	li s1, failed_addr
	ld s4, 0(s1)
	jr s4
	# assert_exception block end
excp_return_label_1064:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1065, excp_return_label_1065, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1065:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a5, t2
	li t3, failed_addr
	ld t4, 0(t3)
	jr t4
	# assert_exception block end
excp_return_label_1065:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1066, excp_return_label_1066, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1066:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t6, t2
	li s8, failed_addr
	ld s3, 0(s8)
	jr s3
	# assert_exception block end
excp_return_label_1066:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1067, excp_return_label_1067, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1067:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a1, t2
	li s9, failed_addr
	ld t2, 0(s9)
	jr t2
	# assert_exception block end
excp_return_label_1067:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1068, excp_return_label_1068, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1068:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s0, t2
	li s7, failed_addr
	ld t4, 0(s7)
	jr t4
	# assert_exception block end
excp_return_label_1068:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1069, excp_return_label_1069, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1069:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a7, t2
	li s11, failed_addr
	ld t3, 0(s11)
	jr t3
	# assert_exception block end
excp_return_label_1069:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1070, excp_return_label_1070, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1070:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s4, t2
	li a6, failed_addr
	ld a1, 0(a6)
	jr a1
	# assert_exception block end
excp_return_label_1070:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1071, excp_return_label_1071, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1071:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s3, t2
	li s7, failed_addr
	ld s11, 0(s7)
	jr s11
	# assert_exception block end
excp_return_label_1071:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1072, excp_return_label_1072, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1072:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t1, t2
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_1072:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1073, excp_return_label_1073, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1073:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a1, t2
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_1073:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1074, excp_return_label_1074, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1074:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s9, t2
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
	# assert_exception block end
excp_return_label_1074:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1075, excp_return_label_1075, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1075:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s0, t2
	li t2, failed_addr
	ld t5, 0(t2)
	jr t5
	# assert_exception block end
excp_return_label_1075:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1076, excp_return_label_1076, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1076:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t4, t2
	li t6, failed_addr
	ld s6, 0(t6)
	jr s6
	# assert_exception block end
excp_return_label_1076:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1077, excp_return_label_1077, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1077:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s6, t2
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
	# assert_exception block end
excp_return_label_1077:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1078, excp_return_label_1078, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1078:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s5, t2
	li s5, failed_addr
	ld s6, 0(s5)
	jr s6
	# assert_exception block end
excp_return_label_1078:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1079, excp_return_label_1079, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1079:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a3, t2
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
	# assert_exception block end
excp_return_label_1079:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1080, excp_return_label_1080, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1080:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a5, t2
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
	# assert_exception block end
excp_return_label_1080:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1081, excp_return_label_1081, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1081:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a4, t2
	li t4, failed_addr
	ld s1, 0(t4)
	jr s1
	# assert_exception block end
excp_return_label_1081:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1082, excp_return_label_1082, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1082:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t6, t2
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_1082:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1083, excp_return_label_1083, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1083:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s6, t2
	li a1, failed_addr
	ld a3, 0(a1)
	jr a3
	# assert_exception block end
excp_return_label_1083:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1084, excp_return_label_1084, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1084:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s3, t2
	li a2, failed_addr
	ld t4, 0(a2)
	jr t4
	# assert_exception block end
excp_return_label_1084:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1085, excp_return_label_1085, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1085:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a7, t2
	li s11, failed_addr
	ld s4, 0(s11)
	jr s4
	# assert_exception block end
excp_return_label_1085:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1086, excp_return_label_1086, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1086:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a1, t2
	li s1, failed_addr
	ld t4, 0(s1)
	jr t4
	# assert_exception block end
excp_return_label_1086:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1087, excp_return_label_1087, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1087:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s1, t2
	li s6, failed_addr
	ld s3, 0(s6)
	jr s3
	# assert_exception block end
excp_return_label_1087:
	# Set only this field in mcounteren, clear all others
	li t2, 2147483648
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Test the enabled CSR in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1088, excp_return_label_1088, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1088:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s7, t2
	li a5, failed_addr
	ld t1, 0(a5)
	jr t1
	# assert_exception block end
excp_return_label_1088:
	# Test other CSRs in U mode - should also fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1089, excp_return_label_1089, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1089:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a0, t2
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_1089:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1090, excp_return_label_1090, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1090:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s5, t2
	li a4, failed_addr
	ld a4, 0(a4)
	jr a4
	# assert_exception block end
excp_return_label_1090:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1091, excp_return_label_1091, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1091:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t2, t2
	li t5, failed_addr
	ld s1, 0(t5)
	jr s1
	# assert_exception block end
excp_return_label_1091:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1092, excp_return_label_1092, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1092:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s3, t2
	li s0, failed_addr
	ld a6, 0(s0)
	jr a6
	# assert_exception block end
excp_return_label_1092:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1093, excp_return_label_1093, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1093:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s3, t2
	li s9, failed_addr
	ld a5, 0(s9)
	jr a5
	# assert_exception block end
excp_return_label_1093:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1094, excp_return_label_1094, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1094:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s10, t2
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
	# assert_exception block end
excp_return_label_1094:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1095, excp_return_label_1095, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1095:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t1, t2
	li a6, failed_addr
	ld s7, 0(a6)
	jr s7
	# assert_exception block end
excp_return_label_1095:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1096, excp_return_label_1096, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1096:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t4, t2
	li t5, failed_addr
	ld s2, 0(t5)
	jr s2
	# assert_exception block end
excp_return_label_1096:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1097, excp_return_label_1097, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1097:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s0, t2
	li s10, failed_addr
	ld s2, 0(s10)
	jr s2
	# assert_exception block end
excp_return_label_1097:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1098, excp_return_label_1098, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1098:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a5, t2
	li s5, failed_addr
	ld t2, 0(s5)
	jr t2
	# assert_exception block end
excp_return_label_1098:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1099, excp_return_label_1099, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1099:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s2, t2
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_1099:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1100, excp_return_label_1100, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1100:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t5, t2
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_1100:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1101, excp_return_label_1101, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1101:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s3, t2
	li s1, failed_addr
	ld s4, 0(s1)
	jr s4
	# assert_exception block end
excp_return_label_1101:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1102, excp_return_label_1102, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1102:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a7, t2
	li s5, failed_addr
	ld s6, 0(s5)
	jr s6
	# assert_exception block end
excp_return_label_1102:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1103, excp_return_label_1103, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1103:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s2, t2
	li a1, failed_addr
	ld s10, 0(a1)
	jr s10
	# assert_exception block end
excp_return_label_1103:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1104, excp_return_label_1104, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1104:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s11, t2
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
	# assert_exception block end
excp_return_label_1104:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1105, excp_return_label_1105, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1105:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s5, t2
	li a5, failed_addr
	ld a4, 0(a5)
	jr a4
	# assert_exception block end
excp_return_label_1105:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1106, excp_return_label_1106, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1106:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s6, t2
	li s5, failed_addr
	ld s10, 0(s5)
	jr s10
	# assert_exception block end
excp_return_label_1106:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1107, excp_return_label_1107, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1107:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a5, t2
	li t5, failed_addr
	ld t2, 0(t5)
	jr t2
	# assert_exception block end
excp_return_label_1107:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1108, excp_return_label_1108, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1108:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a0, t2
	li t3, failed_addr
	ld a4, 0(t3)
	jr a4
	# assert_exception block end
excp_return_label_1108:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1109, excp_return_label_1109, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1109:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s5, t2
	li s5, failed_addr
	ld a1, 0(s5)
	jr a1
	# assert_exception block end
excp_return_label_1109:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1110, excp_return_label_1110, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1110:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s3, t2
	li s6, failed_addr
	ld a1, 0(s6)
	jr a1
	# assert_exception block end
excp_return_label_1110:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1111, excp_return_label_1111, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1111:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s2, t2
	li a0, failed_addr
	ld a6, 0(a0)
	jr a6
	# assert_exception block end
excp_return_label_1111:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1112, excp_return_label_1112, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1112:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t1, t2
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_1112:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1113, excp_return_label_1113, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1113:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t4, t2
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
	# assert_exception block end
excp_return_label_1113:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1114, excp_return_label_1114, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1114:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t6, t2
	li t2, failed_addr
	ld t5, 0(t2)
	jr t5
	# assert_exception block end
excp_return_label_1114:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1115, excp_return_label_1115, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1115:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s3, t2
	li t2, failed_addr
	ld a3, 0(t2)
	jr a3
	# assert_exception block end
excp_return_label_1115:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1116, excp_return_label_1116, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1116:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a4, t2
	li s2, failed_addr
	ld s8, 0(s2)
	jr s8
	# assert_exception block end
excp_return_label_1116:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1117, excp_return_label_1117, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1117:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a1, t2
	li a6, failed_addr
	ld t1, 0(a6)
	jr t1
	# assert_exception block end
excp_return_label_1117:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1118, excp_return_label_1118, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1118:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a4, t2
	li s2, failed_addr
	ld a6, 0(s2)
	jr a6
	# assert_exception block end
excp_return_label_1118:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1119, excp_return_label_1119, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1119:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a0, t2
	li s10, failed_addr
	ld s10, 0(s10)
	jr s10
	# assert_exception block end
excp_return_label_1119:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 37
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 38
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_XCOUNTEREN_05_U_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_XCOUNTEREN_06_U)
SID_XCOUNTEREN_06_U:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_06_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set only this field in both registers, clear all others
	li t2, 1
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 1
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a6, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1120, excp_return_label_1120, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1120:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a4, t2
	li s3, failed_addr
	ld s6, 0(s3)
	jr s6
	# assert_exception block end
excp_return_label_1120:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1121, excp_return_label_1121, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1121:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a4, t2
	li s7, failed_addr
	ld s3, 0(s7)
	jr s3
	# assert_exception block end
excp_return_label_1121:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1122, excp_return_label_1122, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1122:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s3, t2
	li a2, failed_addr
	ld t1, 0(a2)
	jr t1
	# assert_exception block end
excp_return_label_1122:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1123, excp_return_label_1123, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1123:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s10, t2
	li s7, failed_addr
	ld s9, 0(s7)
	jr s9
	# assert_exception block end
excp_return_label_1123:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1124, excp_return_label_1124, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1124:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s3, t2
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
	# assert_exception block end
excp_return_label_1124:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1125, excp_return_label_1125, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1125:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a2, t2
	li s2, failed_addr
	ld s4, 0(s2)
	jr s4
	# assert_exception block end
excp_return_label_1125:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1126, excp_return_label_1126, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1126:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a0, t2
	li s9, failed_addr
	ld t4, 0(s9)
	jr t4
	# assert_exception block end
excp_return_label_1126:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1127, excp_return_label_1127, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1127:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a6, t2
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_1127:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1128, excp_return_label_1128, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1128:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t5, t2
	li a3, failed_addr
	ld s7, 0(a3)
	jr s7
	# assert_exception block end
excp_return_label_1128:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1129, excp_return_label_1129, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1129:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s0, t2
	li s0, failed_addr
	ld s10, 0(s0)
	jr s10
	# assert_exception block end
excp_return_label_1129:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1130, excp_return_label_1130, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1130:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a5, t2
	li a5, failed_addr
	ld s4, 0(a5)
	jr s4
	# assert_exception block end
excp_return_label_1130:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1131, excp_return_label_1131, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1131:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s11, t2
	li s8, failed_addr
	ld a3, 0(s8)
	jr a3
	# assert_exception block end
excp_return_label_1131:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1132, excp_return_label_1132, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1132:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t2, t2
	li s8, failed_addr
	ld s6, 0(s8)
	jr s6
	# assert_exception block end
excp_return_label_1132:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1133, excp_return_label_1133, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1133:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s6, t2
	li a0, failed_addr
	ld t6, 0(a0)
	jr t6
	# assert_exception block end
excp_return_label_1133:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1134, excp_return_label_1134, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1134:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t4, t2
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_1134:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1135, excp_return_label_1135, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1135:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a3, t2
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
	# assert_exception block end
excp_return_label_1135:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1136, excp_return_label_1136, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1136:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s11, t2
	li s2, failed_addr
	ld s3, 0(s2)
	jr s3
	# assert_exception block end
excp_return_label_1136:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1137, excp_return_label_1137, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1137:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a2, t2
	li t1, failed_addr
	ld s9, 0(t1)
	jr s9
	# assert_exception block end
excp_return_label_1137:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1138, excp_return_label_1138, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1138:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t6, t2
	li s5, failed_addr
	ld a4, 0(s5)
	jr a4
	# assert_exception block end
excp_return_label_1138:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1139, excp_return_label_1139, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1139:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t3, t2
	li a6, failed_addr
	ld t1, 0(a6)
	jr t1
	# assert_exception block end
excp_return_label_1139:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1140, excp_return_label_1140, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1140:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s3, t2
	li s0, failed_addr
	ld s11, 0(s0)
	jr s11
	# assert_exception block end
excp_return_label_1140:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1141, excp_return_label_1141, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1141:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s10, t2
	li s7, failed_addr
	ld t1, 0(s7)
	jr t1
	# assert_exception block end
excp_return_label_1141:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1142, excp_return_label_1142, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1142:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t2, t2
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
	# assert_exception block end
excp_return_label_1142:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1143, excp_return_label_1143, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1143:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s11, t2
	li a3, failed_addr
	ld s0, 0(a3)
	jr s0
	# assert_exception block end
excp_return_label_1143:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1144, excp_return_label_1144, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1144:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a5, t2
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_1144:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1145, excp_return_label_1145, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1145:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t6, t2
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
	# assert_exception block end
excp_return_label_1145:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1146, excp_return_label_1146, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1146:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a2, t2
	li s6, failed_addr
	ld s10, 0(s6)
	jr s10
	# assert_exception block end
excp_return_label_1146:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1147, excp_return_label_1147, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1147:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a5, t2
	li s11, failed_addr
	ld a7, 0(s11)
	jr a7
	# assert_exception block end
excp_return_label_1147:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1148, excp_return_label_1148, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1148:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s6, t2
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
	# assert_exception block end
excp_return_label_1148:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1149, excp_return_label_1149, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1149:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a2, t2
	li t6, failed_addr
	ld s11, 0(t6)
	jr s11
	# assert_exception block end
excp_return_label_1149:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1150, excp_return_label_1150, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1150:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s9, t2
	li t3, failed_addr
	ld s0, 0(t3)
	jr s0
	# assert_exception block end
excp_return_label_1150:
	# Set only this field in both registers, clear all others
	li t2, 2
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 2
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s9, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1151, excp_return_label_1151, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1151:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s5, t2
	li s7, failed_addr
	ld t2, 0(s7)
	jr t2
	# assert_exception block end
excp_return_label_1151:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1152, excp_return_label_1152, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1152:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s10, t2
	li s8, failed_addr
	ld s6, 0(s8)
	jr s6
	# assert_exception block end
excp_return_label_1152:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1153, excp_return_label_1153, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1153:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv t6, t2
	li a1, failed_addr
	ld s0, 0(a1)
	jr s0
	# assert_exception block end
excp_return_label_1153:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1154, excp_return_label_1154, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1154:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s11, t2
	li a3, failed_addr
	ld t2, 0(a3)
	jr t2
	# assert_exception block end
excp_return_label_1154:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1155, excp_return_label_1155, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1155:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s2, t2
	li s1, failed_addr
	ld a3, 0(s1)
	jr a3
	# assert_exception block end
excp_return_label_1155:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1156, excp_return_label_1156, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1156:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t2, t2
	li t5, failed_addr
	ld a3, 0(t5)
	jr a3
	# assert_exception block end
excp_return_label_1156:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1157, excp_return_label_1157, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1157:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s1, t2
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
	# assert_exception block end
excp_return_label_1157:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1158, excp_return_label_1158, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1158:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t3, t2
	li s0, failed_addr
	ld s4, 0(s0)
	jr s4
	# assert_exception block end
excp_return_label_1158:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1159, excp_return_label_1159, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1159:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s3, t2
	li s3, failed_addr
	ld a5, 0(s3)
	jr a5
	# assert_exception block end
excp_return_label_1159:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1160, excp_return_label_1160, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1160:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t2, t2
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_1160:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1161, excp_return_label_1161, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1161:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s11, t2
	li t6, failed_addr
	ld t4, 0(t6)
	jr t4
	# assert_exception block end
excp_return_label_1161:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1162, excp_return_label_1162, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1162:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a2, t2
	li t6, failed_addr
	ld s3, 0(t6)
	jr s3
	# assert_exception block end
excp_return_label_1162:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1163, excp_return_label_1163, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1163:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s0, t2
	li t6, failed_addr
	ld t4, 0(t6)
	jr t4
	# assert_exception block end
excp_return_label_1163:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1164, excp_return_label_1164, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1164:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t3, t2
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
	# assert_exception block end
excp_return_label_1164:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1165, excp_return_label_1165, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1165:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s5, t2
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_1165:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1166, excp_return_label_1166, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1166:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s0, t2
	li a4, failed_addr
	ld s0, 0(a4)
	jr s0
	# assert_exception block end
excp_return_label_1166:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1167, excp_return_label_1167, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1167:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a7, t2
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_1167:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1168, excp_return_label_1168, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1168:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a5, t2
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_1168:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1169, excp_return_label_1169, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1169:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a1, t2
	li t1, failed_addr
	ld s10, 0(t1)
	jr s10
	# assert_exception block end
excp_return_label_1169:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1170, excp_return_label_1170, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1170:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s11, t2
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_1170:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1171, excp_return_label_1171, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1171:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t3, t2
	li s11, failed_addr
	ld a7, 0(s11)
	jr a7
	# assert_exception block end
excp_return_label_1171:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1172, excp_return_label_1172, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1172:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a5, t2
	li a5, failed_addr
	ld t6, 0(a5)
	jr t6
	# assert_exception block end
excp_return_label_1172:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1173, excp_return_label_1173, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1173:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s4, t2
	li a0, failed_addr
	ld s2, 0(a0)
	jr s2
	# assert_exception block end
excp_return_label_1173:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1174, excp_return_label_1174, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1174:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s9, t2
	li s6, failed_addr
	ld s11, 0(s6)
	jr s11
	# assert_exception block end
excp_return_label_1174:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1175, excp_return_label_1175, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1175:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a6, t2
	li t5, failed_addr
	ld t3, 0(t5)
	jr t3
	# assert_exception block end
excp_return_label_1175:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1176, excp_return_label_1176, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1176:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t2, t2
	li s3, failed_addr
	ld a5, 0(s3)
	jr a5
	# assert_exception block end
excp_return_label_1176:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1177, excp_return_label_1177, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1177:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s1, t2
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_1177:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1178, excp_return_label_1178, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1178:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a5, t2
	li s3, failed_addr
	ld t6, 0(s3)
	jr t6
	# assert_exception block end
excp_return_label_1178:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1179, excp_return_label_1179, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1179:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s2, t2
	li t2, failed_addr
	ld a7, 0(t2)
	jr a7
	# assert_exception block end
excp_return_label_1179:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1180, excp_return_label_1180, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1180:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s1, t2
	li a7, failed_addr
	ld a3, 0(a7)
	jr a3
	# assert_exception block end
excp_return_label_1180:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1181, excp_return_label_1181, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1181:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t3, t2
	li a6, failed_addr
	ld s0, 0(a6)
	jr s0
	# assert_exception block end
excp_return_label_1181:
	# Set only this field in both registers, clear all others
	li t2, 4
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 4
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t3, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1182, excp_return_label_1182, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1182:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s3, t2
	li s6, failed_addr
	ld a7, 0(s6)
	jr a7
	# assert_exception block end
excp_return_label_1182:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1183, excp_return_label_1183, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1183:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t4, t2
	li t5, failed_addr
	ld a2, 0(t5)
	jr a2
	# assert_exception block end
excp_return_label_1183:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1184, excp_return_label_1184, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1184:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a0, t2
	li a7, failed_addr
	ld t4, 0(a7)
	jr t4
	# assert_exception block end
excp_return_label_1184:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1185, excp_return_label_1185, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1185:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a1, t2
	li a3, failed_addr
	ld s10, 0(a3)
	jr s10
	# assert_exception block end
excp_return_label_1185:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1186, excp_return_label_1186, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1186:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t2, t2
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_1186:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1187, excp_return_label_1187, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1187:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s9, t2
	li s11, failed_addr
	ld s0, 0(s11)
	jr s0
	# assert_exception block end
excp_return_label_1187:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1188, excp_return_label_1188, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1188:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s5, t2
	li t4, failed_addr
	ld s9, 0(t4)
	jr s9
	# assert_exception block end
excp_return_label_1188:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1189, excp_return_label_1189, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1189:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a4, t2
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_1189:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1190, excp_return_label_1190, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1190:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s8, t2
	li s8, failed_addr
	ld s0, 0(s8)
	jr s0
	# assert_exception block end
excp_return_label_1190:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1191, excp_return_label_1191, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1191:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a1, t2
	li a5, failed_addr
	ld s11, 0(a5)
	jr s11
	# assert_exception block end
excp_return_label_1191:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1192, excp_return_label_1192, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1192:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s9, t2
	li s8, failed_addr
	ld t4, 0(s8)
	jr t4
	# assert_exception block end
excp_return_label_1192:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1193, excp_return_label_1193, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1193:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s2, t2
	li t3, failed_addr
	ld a1, 0(t3)
	jr a1
	# assert_exception block end
excp_return_label_1193:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1194, excp_return_label_1194, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1194:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t4, t2
	li t3, failed_addr
	ld a6, 0(t3)
	jr a6
	# assert_exception block end
excp_return_label_1194:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1195, excp_return_label_1195, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1195:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s2, t2
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_1195:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1196, excp_return_label_1196, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1196:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a4, t2
	li a2, failed_addr
	ld a1, 0(a2)
	jr a1
	# assert_exception block end
excp_return_label_1196:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1197, excp_return_label_1197, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1197:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a3, t2
	li t4, failed_addr
	ld t2, 0(t4)
	jr t2
	# assert_exception block end
excp_return_label_1197:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1198, excp_return_label_1198, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1198:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s7, t2
	li t3, failed_addr
	ld s1, 0(t3)
	jr s1
	# assert_exception block end
excp_return_label_1198:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1199, excp_return_label_1199, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1199:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t6, t2
	li a7, failed_addr
	ld a3, 0(a7)
	jr a3
	# assert_exception block end
excp_return_label_1199:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1200, excp_return_label_1200, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1200:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s7, t2
	li a7, failed_addr
	ld a6, 0(a7)
	jr a6
	# assert_exception block end
excp_return_label_1200:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1201, excp_return_label_1201, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1201:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s6, t2
	li t5, failed_addr
	ld s11, 0(t5)
	jr s11
	# assert_exception block end
excp_return_label_1201:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1202, excp_return_label_1202, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1202:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a0, t2
	li a5, failed_addr
	ld s10, 0(a5)
	jr s10
	# assert_exception block end
excp_return_label_1202:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1203, excp_return_label_1203, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1203:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a0, t2
	li t5, failed_addr
	ld a6, 0(t5)
	jr a6
	# assert_exception block end
excp_return_label_1203:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1204, excp_return_label_1204, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1204:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s3, t2
	li t1, failed_addr
	ld s6, 0(t1)
	jr s6
	# assert_exception block end
excp_return_label_1204:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1205, excp_return_label_1205, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1205:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a3, t2
	li a2, failed_addr
	ld s0, 0(a2)
	jr s0
	# assert_exception block end
excp_return_label_1205:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1206, excp_return_label_1206, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1206:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s1, t2
	li a0, failed_addr
	ld s6, 0(a0)
	jr s6
	# assert_exception block end
excp_return_label_1206:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1207, excp_return_label_1207, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1207:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s5, t2
	li a3, failed_addr
	ld s10, 0(a3)
	jr s10
	# assert_exception block end
excp_return_label_1207:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1208, excp_return_label_1208, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1208:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a2, t2
	li s7, failed_addr
	ld t5, 0(s7)
	jr t5
	# assert_exception block end
excp_return_label_1208:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1209, excp_return_label_1209, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1209:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a3, t2
	li s9, failed_addr
	ld s7, 0(s9)
	jr s7
	# assert_exception block end
excp_return_label_1209:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1210, excp_return_label_1210, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1210:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s10, t2
	li s4, failed_addr
	ld s11, 0(s4)
	jr s11
	# assert_exception block end
excp_return_label_1210:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1211, excp_return_label_1211, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1211:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a3, t2
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
	# assert_exception block end
excp_return_label_1211:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1212, excp_return_label_1212, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1212:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a7, t2
	li a6, failed_addr
	ld s0, 0(a6)
	jr s0
	# assert_exception block end
excp_return_label_1212:
	# Set only this field in both registers, clear all others
	li t2, 8
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 8
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s0, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1213, excp_return_label_1213, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1213:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s7, t2
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_1213:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1214, excp_return_label_1214, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1214:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s8, t2
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_1214:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1215, excp_return_label_1215, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1215:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t6, t2
	li a0, failed_addr
	ld t1, 0(a0)
	jr t1
	# assert_exception block end
excp_return_label_1215:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1216, excp_return_label_1216, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1216:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s6, t2
	li a7, failed_addr
	ld a2, 0(a7)
	jr a2
	# assert_exception block end
excp_return_label_1216:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1217, excp_return_label_1217, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1217:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s8, t2
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
	# assert_exception block end
excp_return_label_1217:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1218, excp_return_label_1218, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1218:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s4, t2
	li a0, failed_addr
	ld t6, 0(a0)
	jr t6
	# assert_exception block end
excp_return_label_1218:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1219, excp_return_label_1219, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1219:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s0, t2
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_1219:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1220, excp_return_label_1220, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1220:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t6, t2
	li s9, failed_addr
	ld s0, 0(s9)
	jr s0
	# assert_exception block end
excp_return_label_1220:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1221, excp_return_label_1221, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1221:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a2, t2
	li a0, failed_addr
	ld s7, 0(a0)
	jr s7
	# assert_exception block end
excp_return_label_1221:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1222, excp_return_label_1222, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1222:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a7, t2
	li t2, failed_addr
	ld s0, 0(t2)
	jr s0
	# assert_exception block end
excp_return_label_1222:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1223, excp_return_label_1223, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1223:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s5, t2
	li s11, failed_addr
	ld s2, 0(s11)
	jr s2
	# assert_exception block end
excp_return_label_1223:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1224, excp_return_label_1224, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1224:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t4, t2
	li s1, failed_addr
	ld a2, 0(s1)
	jr a2
	# assert_exception block end
excp_return_label_1224:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1225, excp_return_label_1225, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1225:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s3, t2
	li s4, failed_addr
	ld s6, 0(s4)
	jr s6
	# assert_exception block end
excp_return_label_1225:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1226, excp_return_label_1226, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1226:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a5, t2
	li a5, failed_addr
	ld s2, 0(a5)
	jr s2
	# assert_exception block end
excp_return_label_1226:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1227, excp_return_label_1227, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1227:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t6, t2
	li s10, failed_addr
	ld t5, 0(s10)
	jr t5
	# assert_exception block end
excp_return_label_1227:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1228, excp_return_label_1228, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1228:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a2, t2
	li a3, failed_addr
	ld s1, 0(a3)
	jr s1
	# assert_exception block end
excp_return_label_1228:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1229, excp_return_label_1229, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1229:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a1, t2
	li s4, failed_addr
	ld a5, 0(s4)
	jr a5
	# assert_exception block end
excp_return_label_1229:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1230, excp_return_label_1230, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1230:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s4, t2
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_1230:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1231, excp_return_label_1231, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1231:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a2, t2
	li t4, failed_addr
	ld s8, 0(t4)
	jr s8
	# assert_exception block end
excp_return_label_1231:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1232, excp_return_label_1232, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1232:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a2, t2
	li a4, failed_addr
	ld a5, 0(a4)
	jr a5
	# assert_exception block end
excp_return_label_1232:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1233, excp_return_label_1233, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1233:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a7, t2
	li t2, failed_addr
	ld s3, 0(t2)
	jr s3
	# assert_exception block end
excp_return_label_1233:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1234, excp_return_label_1234, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1234:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s8, t2
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_1234:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1235, excp_return_label_1235, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1235:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t2, t2
	li s4, failed_addr
	ld t6, 0(s4)
	jr t6
	# assert_exception block end
excp_return_label_1235:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1236, excp_return_label_1236, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1236:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t3, t2
	li s8, failed_addr
	ld s10, 0(s8)
	jr s10
	# assert_exception block end
excp_return_label_1236:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1237, excp_return_label_1237, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1237:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s8, t2
	li a5, failed_addr
	ld s10, 0(a5)
	jr s10
	# assert_exception block end
excp_return_label_1237:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1238, excp_return_label_1238, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1238:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a6, t2
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
	# assert_exception block end
excp_return_label_1238:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1239, excp_return_label_1239, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1239:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s0, t2
	li s11, failed_addr
	ld s4, 0(s11)
	jr s4
	# assert_exception block end
excp_return_label_1239:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1240, excp_return_label_1240, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1240:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a2, t2
	li a6, failed_addr
	ld t4, 0(a6)
	jr t4
	# assert_exception block end
excp_return_label_1240:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1241, excp_return_label_1241, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1241:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s11, t2
	li a6, failed_addr
	ld t4, 0(a6)
	jr t4
	# assert_exception block end
excp_return_label_1241:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1242, excp_return_label_1242, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1242:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s10, t2
	li t6, failed_addr
	ld s7, 0(t6)
	jr s7
	# assert_exception block end
excp_return_label_1242:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1243, excp_return_label_1243, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1243:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s11, t2
	li a5, failed_addr
	ld s4, 0(a5)
	jr s4
	# assert_exception block end
excp_return_label_1243:
	# Set only this field in both registers, clear all others
	li t2, 16
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 16
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a7, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1244, excp_return_label_1244, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1244:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s10, t2
	li a5, failed_addr
	ld a0, 0(a5)
	jr a0
	# assert_exception block end
excp_return_label_1244:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1245, excp_return_label_1245, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1245:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t5, t2
	li a1, failed_addr
	ld s6, 0(a1)
	jr s6
	# assert_exception block end
excp_return_label_1245:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1246, excp_return_label_1246, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1246:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s10, t2
	li s1, failed_addr
	ld s1, 0(s1)
	jr s1
	# assert_exception block end
excp_return_label_1246:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1247, excp_return_label_1247, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1247:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s2, t2
	li a4, failed_addr
	ld a0, 0(a4)
	jr a0
	# assert_exception block end
excp_return_label_1247:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1248, excp_return_label_1248, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1248:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a5, t2
	li a6, failed_addr
	ld a5, 0(a6)
	jr a5
	# assert_exception block end
excp_return_label_1248:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1249, excp_return_label_1249, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1249:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t2, t2
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_1249:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1250, excp_return_label_1250, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1250:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s1, t2
	li t1, failed_addr
	ld t6, 0(t1)
	jr t6
	# assert_exception block end
excp_return_label_1250:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1251, excp_return_label_1251, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1251:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t4, t2
	li s5, failed_addr
	ld a6, 0(s5)
	jr a6
	# assert_exception block end
excp_return_label_1251:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1252, excp_return_label_1252, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1252:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s6, t2
	li s5, failed_addr
	ld s1, 0(s5)
	jr s1
	# assert_exception block end
excp_return_label_1252:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1253, excp_return_label_1253, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1253:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a4, t2
	li a7, failed_addr
	ld a6, 0(a7)
	jr a6
	# assert_exception block end
excp_return_label_1253:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1254, excp_return_label_1254, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1254:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a2, t2
	li s10, failed_addr
	ld s5, 0(s10)
	jr s5
	# assert_exception block end
excp_return_label_1254:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1255, excp_return_label_1255, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1255:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t2, t2
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
	# assert_exception block end
excp_return_label_1255:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1256, excp_return_label_1256, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1256:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a6, t2
	li a0, failed_addr
	ld a3, 0(a0)
	jr a3
	# assert_exception block end
excp_return_label_1256:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1257, excp_return_label_1257, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1257:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s9, t2
	li s1, failed_addr
	ld s3, 0(s1)
	jr s3
	# assert_exception block end
excp_return_label_1257:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1258, excp_return_label_1258, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1258:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t1, t2
	li s10, failed_addr
	ld a7, 0(s10)
	jr a7
	# assert_exception block end
excp_return_label_1258:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1259, excp_return_label_1259, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1259:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a2, t2
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
	# assert_exception block end
excp_return_label_1259:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1260, excp_return_label_1260, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1260:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a5, t2
	li t3, failed_addr
	ld a5, 0(t3)
	jr a5
	# assert_exception block end
excp_return_label_1260:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1261, excp_return_label_1261, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1261:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a2, t2
	li s7, failed_addr
	ld s11, 0(s7)
	jr s11
	# assert_exception block end
excp_return_label_1261:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1262, excp_return_label_1262, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1262:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s11, t2
	li a3, failed_addr
	ld s9, 0(a3)
	jr s9
	# assert_exception block end
excp_return_label_1262:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1263, excp_return_label_1263, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1263:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a6, t2
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_1263:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1264, excp_return_label_1264, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1264:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s8, t2
	li t4, failed_addr
	ld t4, 0(t4)
	jr t4
	# assert_exception block end
excp_return_label_1264:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1265, excp_return_label_1265, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1265:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s5, t2
	li t5, failed_addr
	ld t5, 0(t5)
	jr t5
	# assert_exception block end
excp_return_label_1265:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1266, excp_return_label_1266, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1266:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s4, t2
	li a5, failed_addr
	ld s2, 0(a5)
	jr s2
	# assert_exception block end
excp_return_label_1266:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1267, excp_return_label_1267, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1267:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s9, t2
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_1267:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1268, excp_return_label_1268, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1268:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s10, t2
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_1268:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1269, excp_return_label_1269, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1269:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s10, t2
	li s7, failed_addr
	ld s4, 0(s7)
	jr s4
	# assert_exception block end
excp_return_label_1269:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1270, excp_return_label_1270, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1270:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s8, t2
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
	# assert_exception block end
excp_return_label_1270:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1271, excp_return_label_1271, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1271:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s4, t2
	li s2, failed_addr
	ld s2, 0(s2)
	jr s2
	# assert_exception block end
excp_return_label_1271:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1272, excp_return_label_1272, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1272:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s10, t2
	li s0, failed_addr
	ld a2, 0(s0)
	jr a2
	# assert_exception block end
excp_return_label_1272:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1273, excp_return_label_1273, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1273:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t3, t2
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_1273:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1274, excp_return_label_1274, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1274:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t2, t2
	li a2, failed_addr
	ld s5, 0(a2)
	jr s5
	# assert_exception block end
excp_return_label_1274:
	# Set only this field in both registers, clear all others
	li t2, 32
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 32
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a3, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1275, excp_return_label_1275, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1275:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t2, t2
	li a7, failed_addr
	ld s5, 0(a7)
	jr s5
	# assert_exception block end
excp_return_label_1275:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1276, excp_return_label_1276, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1276:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t3, t2
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_1276:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1277, excp_return_label_1277, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1277:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t6, t2
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
	# assert_exception block end
excp_return_label_1277:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1278, excp_return_label_1278, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1278:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s6, t2
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_1278:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1279, excp_return_label_1279, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1279:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a1, t2
	li t4, failed_addr
	ld s3, 0(t4)
	jr s3
	# assert_exception block end
excp_return_label_1279:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1280, excp_return_label_1280, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1280:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t3, t2
	li a3, failed_addr
	ld a6, 0(a3)
	jr a6
	# assert_exception block end
excp_return_label_1280:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1281, excp_return_label_1281, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1281:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s2, t2
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
	# assert_exception block end
excp_return_label_1281:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1282, excp_return_label_1282, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1282:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s7, t2
	li a4, failed_addr
	ld a1, 0(a4)
	jr a1
	# assert_exception block end
excp_return_label_1282:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1283, excp_return_label_1283, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1283:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a2, t2
	li t5, failed_addr
	ld s0, 0(t5)
	jr s0
	# assert_exception block end
excp_return_label_1283:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1284, excp_return_label_1284, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1284:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a0, t2
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
	# assert_exception block end
excp_return_label_1284:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1285, excp_return_label_1285, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1285:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a5, t2
	li s4, failed_addr
	ld s7, 0(s4)
	jr s7
	# assert_exception block end
excp_return_label_1285:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1286, excp_return_label_1286, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1286:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t3, t2
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_1286:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1287, excp_return_label_1287, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1287:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s2, t2
	li s7, failed_addr
	ld a5, 0(s7)
	jr a5
	# assert_exception block end
excp_return_label_1287:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1288, excp_return_label_1288, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1288:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t4, t2
	li a3, failed_addr
	ld t3, 0(a3)
	jr t3
	# assert_exception block end
excp_return_label_1288:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1289, excp_return_label_1289, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1289:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a2, t2
	li t2, failed_addr
	ld s1, 0(t2)
	jr s1
	# assert_exception block end
excp_return_label_1289:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1290, excp_return_label_1290, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1290:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t4, t2
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
	# assert_exception block end
excp_return_label_1290:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1291, excp_return_label_1291, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1291:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s4, t2
	li a7, failed_addr
	ld s11, 0(a7)
	jr s11
	# assert_exception block end
excp_return_label_1291:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1292, excp_return_label_1292, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1292:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s0, t2
	li s7, failed_addr
	ld s5, 0(s7)
	jr s5
	# assert_exception block end
excp_return_label_1292:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1293, excp_return_label_1293, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1293:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a3, t2
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
	# assert_exception block end
excp_return_label_1293:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1294, excp_return_label_1294, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1294:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a6, t2
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_1294:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1295, excp_return_label_1295, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1295:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s4, t2
	li s11, failed_addr
	ld t4, 0(s11)
	jr t4
	# assert_exception block end
excp_return_label_1295:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1296, excp_return_label_1296, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1296:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s2, t2
	li a3, failed_addr
	ld s2, 0(a3)
	jr s2
	# assert_exception block end
excp_return_label_1296:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1297, excp_return_label_1297, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1297:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s6, t2
	li s1, failed_addr
	ld s1, 0(s1)
	jr s1
	# assert_exception block end
excp_return_label_1297:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1298, excp_return_label_1298, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1298:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s3, t2
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_1298:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1299, excp_return_label_1299, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1299:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s11, t2
	li s11, failed_addr
	ld a2, 0(s11)
	jr a2
	# assert_exception block end
excp_return_label_1299:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1300, excp_return_label_1300, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1300:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s4, t2
	li s1, failed_addr
	ld t1, 0(s1)
	jr t1
	# assert_exception block end
excp_return_label_1300:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1301, excp_return_label_1301, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1301:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s2, t2
	li s4, failed_addr
	ld t2, 0(s4)
	jr t2
	# assert_exception block end
excp_return_label_1301:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1302, excp_return_label_1302, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1302:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a1, t2
	li t2, failed_addr
	ld a6, 0(t2)
	jr a6
	# assert_exception block end
excp_return_label_1302:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1303, excp_return_label_1303, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1303:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a3, t2
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_1303:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1304, excp_return_label_1304, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1304:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a0, t2
	li s7, failed_addr
	ld t3, 0(s7)
	jr t3
	# assert_exception block end
excp_return_label_1304:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1305, excp_return_label_1305, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1305:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t2, t2
	li s10, failed_addr
	ld s1, 0(s10)
	jr s1
	# assert_exception block end
excp_return_label_1305:
	# Set only this field in both registers, clear all others
	li t2, 64
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 64
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t3, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1306, excp_return_label_1306, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1306:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a2, t2
	li s9, failed_addr
	ld a6, 0(s9)
	jr a6
	# assert_exception block end
excp_return_label_1306:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1307, excp_return_label_1307, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1307:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s7, t2
	li a6, failed_addr
	ld s5, 0(a6)
	jr s5
	# assert_exception block end
excp_return_label_1307:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1308, excp_return_label_1308, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1308:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s5, t2
	li t2, failed_addr
	ld s10, 0(t2)
	jr s10
	# assert_exception block end
excp_return_label_1308:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1309, excp_return_label_1309, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1309:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s4, t2
	li a0, failed_addr
	ld a0, 0(a0)
	jr a0
	# assert_exception block end
excp_return_label_1309:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1310, excp_return_label_1310, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1310:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a0, t2
	li s6, failed_addr
	ld a2, 0(s6)
	jr a2
	# assert_exception block end
excp_return_label_1310:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1311, excp_return_label_1311, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1311:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s8, t2
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_1311:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1312, excp_return_label_1312, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1312:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t5, t2
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_1312:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1313, excp_return_label_1313, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1313:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t6, t2
	li s2, failed_addr
	ld s9, 0(s2)
	jr s9
	# assert_exception block end
excp_return_label_1313:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1314, excp_return_label_1314, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1314:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a7, t2
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
	# assert_exception block end
excp_return_label_1314:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1315, excp_return_label_1315, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1315:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s7, t2
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
	# assert_exception block end
excp_return_label_1315:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1316, excp_return_label_1316, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1316:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a0, t2
	li t2, failed_addr
	ld s3, 0(t2)
	jr s3
	# assert_exception block end
excp_return_label_1316:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1317, excp_return_label_1317, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1317:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t1, t2
	li a1, failed_addr
	ld s11, 0(a1)
	jr s11
	# assert_exception block end
excp_return_label_1317:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1318, excp_return_label_1318, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1318:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s2, t2
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_1318:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1319, excp_return_label_1319, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1319:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t5, t2
	li s1, failed_addr
	ld t1, 0(s1)
	jr t1
	# assert_exception block end
excp_return_label_1319:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1320, excp_return_label_1320, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1320:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a0, t2
	li a3, failed_addr
	ld s4, 0(a3)
	jr s4
	# assert_exception block end
excp_return_label_1320:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1321, excp_return_label_1321, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1321:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a7, t2
	li t2, failed_addr
	ld s10, 0(t2)
	jr s10
	# assert_exception block end
excp_return_label_1321:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1322, excp_return_label_1322, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1322:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a0, t2
	li a4, failed_addr
	ld t5, 0(a4)
	jr t5
	# assert_exception block end
excp_return_label_1322:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1323, excp_return_label_1323, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1323:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s6, t2
	li s3, failed_addr
	ld s10, 0(s3)
	jr s10
	# assert_exception block end
excp_return_label_1323:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1324, excp_return_label_1324, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1324:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s9, t2
	li t4, failed_addr
	ld s6, 0(t4)
	jr s6
	# assert_exception block end
excp_return_label_1324:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1325, excp_return_label_1325, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1325:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s6, t2
	li s9, failed_addr
	ld s8, 0(s9)
	jr s8
	# assert_exception block end
excp_return_label_1325:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1326, excp_return_label_1326, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1326:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s2, t2
	li t6, failed_addr
	ld s3, 0(t6)
	jr s3
	# assert_exception block end
excp_return_label_1326:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1327, excp_return_label_1327, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1327:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t1, t2
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_1327:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1328, excp_return_label_1328, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1328:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s9, t2
	li a5, failed_addr
	ld t6, 0(a5)
	jr t6
	# assert_exception block end
excp_return_label_1328:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1329, excp_return_label_1329, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1329:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t4, t2
	li a3, failed_addr
	ld a5, 0(a3)
	jr a5
	# assert_exception block end
excp_return_label_1329:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1330, excp_return_label_1330, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1330:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t2, t2
	li s11, failed_addr
	ld a2, 0(s11)
	jr a2
	# assert_exception block end
excp_return_label_1330:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1331, excp_return_label_1331, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1331:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a7, t2
	li a1, failed_addr
	ld a6, 0(a1)
	jr a6
	# assert_exception block end
excp_return_label_1331:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1332, excp_return_label_1332, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1332:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s10, t2
	li t1, failed_addr
	ld a4, 0(t1)
	jr a4
	# assert_exception block end
excp_return_label_1332:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1333, excp_return_label_1333, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1333:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s4, t2
	li t5, failed_addr
	ld a7, 0(t5)
	jr a7
	# assert_exception block end
excp_return_label_1333:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1334, excp_return_label_1334, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1334:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t2, t2
	li s10, failed_addr
	ld s5, 0(s10)
	jr s5
	# assert_exception block end
excp_return_label_1334:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1335, excp_return_label_1335, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1335:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t6, t2
	li a5, failed_addr
	ld s5, 0(a5)
	jr s5
	# assert_exception block end
excp_return_label_1335:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1336, excp_return_label_1336, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1336:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s2, t2
	li s8, failed_addr
	ld t3, 0(s8)
	jr t3
	# assert_exception block end
excp_return_label_1336:
	# Set only this field in both registers, clear all others
	li t2, 128
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 128
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a4, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1337, excp_return_label_1337, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1337:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s9, t2
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_1337:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1338, excp_return_label_1338, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1338:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s6, t2
	li s9, failed_addr
	ld a1, 0(s9)
	jr a1
	# assert_exception block end
excp_return_label_1338:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1339, excp_return_label_1339, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1339:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a1, t2
	li s11, failed_addr
	ld t2, 0(s11)
	jr t2
	# assert_exception block end
excp_return_label_1339:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1340, excp_return_label_1340, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1340:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv t1, t2
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_1340:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1341, excp_return_label_1341, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1341:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t2, t2
	li a1, failed_addr
	ld s5, 0(a1)
	jr s5
	# assert_exception block end
excp_return_label_1341:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1342, excp_return_label_1342, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1342:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a7, t2
	li a0, failed_addr
	ld s3, 0(a0)
	jr s3
	# assert_exception block end
excp_return_label_1342:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1343, excp_return_label_1343, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1343:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s1, t2
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_1343:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1344, excp_return_label_1344, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1344:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s8, t2
	li t1, failed_addr
	ld a3, 0(t1)
	jr a3
	# assert_exception block end
excp_return_label_1344:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1345, excp_return_label_1345, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1345:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a7, t2
	li s4, failed_addr
	ld s0, 0(s4)
	jr s0
	# assert_exception block end
excp_return_label_1345:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1346, excp_return_label_1346, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1346:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s8, t2
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_1346:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1347, excp_return_label_1347, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1347:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s5, t2
	li a3, failed_addr
	ld a6, 0(a3)
	jr a6
	# assert_exception block end
excp_return_label_1347:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1348, excp_return_label_1348, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1348:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t3, t2
	li s7, failed_addr
	ld s9, 0(s7)
	jr s9
	# assert_exception block end
excp_return_label_1348:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1349, excp_return_label_1349, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1349:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s3, t2
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
	# assert_exception block end
excp_return_label_1349:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1350, excp_return_label_1350, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1350:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t3, t2
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
	# assert_exception block end
excp_return_label_1350:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1351, excp_return_label_1351, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1351:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s1, t2
	li s8, failed_addr
	ld a7, 0(s8)
	jr a7
	# assert_exception block end
excp_return_label_1351:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1352, excp_return_label_1352, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1352:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s0, t2
	li a2, failed_addr
	ld t4, 0(a2)
	jr t4
	# assert_exception block end
excp_return_label_1352:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1353, excp_return_label_1353, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1353:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t5, t2
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
	# assert_exception block end
excp_return_label_1353:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1354, excp_return_label_1354, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1354:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a0, t2
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_1354:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1355, excp_return_label_1355, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1355:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s11, t2
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
	# assert_exception block end
excp_return_label_1355:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1356, excp_return_label_1356, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1356:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s5, t2
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
	# assert_exception block end
excp_return_label_1356:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1357, excp_return_label_1357, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1357:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s9, t2
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_1357:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1358, excp_return_label_1358, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1358:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t3, t2
	li a5, failed_addr
	ld t1, 0(a5)
	jr t1
	# assert_exception block end
excp_return_label_1358:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1359, excp_return_label_1359, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1359:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s5, t2
	li s7, failed_addr
	ld t6, 0(s7)
	jr t6
	# assert_exception block end
excp_return_label_1359:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1360, excp_return_label_1360, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1360:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t3, t2
	li s5, failed_addr
	ld s7, 0(s5)
	jr s7
	# assert_exception block end
excp_return_label_1360:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1361, excp_return_label_1361, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1361:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a4, t2
	li s8, failed_addr
	ld t2, 0(s8)
	jr t2
	# assert_exception block end
excp_return_label_1361:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1362, excp_return_label_1362, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1362:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a1, t2
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
	# assert_exception block end
excp_return_label_1362:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1363, excp_return_label_1363, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1363:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a5, t2
	li a2, failed_addr
	ld s7, 0(a2)
	jr s7
	# assert_exception block end
excp_return_label_1363:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1364, excp_return_label_1364, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1364:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a3, t2
	li s2, failed_addr
	ld t4, 0(s2)
	jr t4
	# assert_exception block end
excp_return_label_1364:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1365, excp_return_label_1365, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1365:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s1, t2
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_1365:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1366, excp_return_label_1366, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1366:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s5, t2
	li a3, failed_addr
	ld t5, 0(a3)
	jr t5
	# assert_exception block end
excp_return_label_1366:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1367, excp_return_label_1367, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1367:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s7, t2
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_1367:
	# Set only this field in both registers, clear all others
	li t2, 256
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 256
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s9, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1368, excp_return_label_1368, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1368:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a5, t2
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_1368:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1369, excp_return_label_1369, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1369:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a1, t2
	li s2, failed_addr
	ld t1, 0(s2)
	jr t1
	# assert_exception block end
excp_return_label_1369:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1370, excp_return_label_1370, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1370:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t3, t2
	li s11, failed_addr
	ld s5, 0(s11)
	jr s5
	# assert_exception block end
excp_return_label_1370:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1371, excp_return_label_1371, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1371:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a5, t2
	li s10, failed_addr
	ld a1, 0(s10)
	jr a1
	# assert_exception block end
excp_return_label_1371:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1372, excp_return_label_1372, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1372:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t4, t2
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
	# assert_exception block end
excp_return_label_1372:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1373, excp_return_label_1373, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1373:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a4, t2
	li t2, failed_addr
	ld t3, 0(t2)
	jr t3
	# assert_exception block end
excp_return_label_1373:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1374, excp_return_label_1374, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1374:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s10, t2
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_1374:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1375, excp_return_label_1375, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1375:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s6, t2
	li s1, failed_addr
	ld t4, 0(s1)
	jr t4
	# assert_exception block end
excp_return_label_1375:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1376, excp_return_label_1376, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1376:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s0, t2
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_1376:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1377, excp_return_label_1377, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1377:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s11, t2
	li a6, failed_addr
	ld s2, 0(a6)
	jr s2
	# assert_exception block end
excp_return_label_1377:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1378, excp_return_label_1378, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1378:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a1, t2
	li s10, failed_addr
	ld s4, 0(s10)
	jr s4
	# assert_exception block end
excp_return_label_1378:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1379, excp_return_label_1379, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1379:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s6, t2
	li s4, failed_addr
	ld s11, 0(s4)
	jr s11
	# assert_exception block end
excp_return_label_1379:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1380, excp_return_label_1380, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1380:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s0, t2
	li s3, failed_addr
	ld s3, 0(s3)
	jr s3
	# assert_exception block end
excp_return_label_1380:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1381, excp_return_label_1381, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1381:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a2, t2
	li a2, failed_addr
	ld s0, 0(a2)
	jr s0
	# assert_exception block end
excp_return_label_1381:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1382, excp_return_label_1382, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1382:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s8, t2
	li t1, failed_addr
	ld s6, 0(t1)
	jr s6
	# assert_exception block end
excp_return_label_1382:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1383, excp_return_label_1383, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1383:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a6, t2
	li s11, failed_addr
	ld a4, 0(s11)
	jr a4
	# assert_exception block end
excp_return_label_1383:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1384, excp_return_label_1384, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1384:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a2, t2
	li a3, failed_addr
	ld t1, 0(a3)
	jr t1
	# assert_exception block end
excp_return_label_1384:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1385, excp_return_label_1385, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1385:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t5, t2
	li t3, failed_addr
	ld t6, 0(t3)
	jr t6
	# assert_exception block end
excp_return_label_1385:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1386, excp_return_label_1386, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1386:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a1, t2
	li t3, failed_addr
	ld s0, 0(t3)
	jr s0
	# assert_exception block end
excp_return_label_1386:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1387, excp_return_label_1387, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1387:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s10, t2
	li a2, failed_addr
	ld a0, 0(a2)
	jr a0
	# assert_exception block end
excp_return_label_1387:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1388, excp_return_label_1388, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1388:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t6, t2
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
	# assert_exception block end
excp_return_label_1388:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1389, excp_return_label_1389, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1389:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t3, t2
	li a1, failed_addr
	ld t2, 0(a1)
	jr t2
	# assert_exception block end
excp_return_label_1389:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1390, excp_return_label_1390, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1390:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s10, t2
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_1390:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1391, excp_return_label_1391, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1391:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s5, t2
	li s6, failed_addr
	ld t6, 0(s6)
	jr t6
	# assert_exception block end
excp_return_label_1391:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1392, excp_return_label_1392, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1392:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s3, t2
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_1392:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1393, excp_return_label_1393, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1393:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a0, t2
	li t5, failed_addr
	ld s7, 0(t5)
	jr s7
	# assert_exception block end
excp_return_label_1393:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1394, excp_return_label_1394, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1394:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s11, t2
	li s11, failed_addr
	ld a6, 0(s11)
	jr a6
	# assert_exception block end
excp_return_label_1394:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1395, excp_return_label_1395, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1395:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a7, t2
	li s11, failed_addr
	ld s6, 0(s11)
	jr s6
	# assert_exception block end
excp_return_label_1395:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1396, excp_return_label_1396, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1396:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s8, t2
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
	# assert_exception block end
excp_return_label_1396:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1397, excp_return_label_1397, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1397:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s4, t2
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_1397:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1398, excp_return_label_1398, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1398:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t2, t2
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_1398:
	# Set only this field in both registers, clear all others
	li t2, 512
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 512
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a7, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1399, excp_return_label_1399, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1399:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s9, t2
	li a1, failed_addr
	ld a4, 0(a1)
	jr a4
	# assert_exception block end
excp_return_label_1399:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1400, excp_return_label_1400, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1400:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t4, t2
	li s7, failed_addr
	ld a0, 0(s7)
	jr a0
	# assert_exception block end
excp_return_label_1400:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1401, excp_return_label_1401, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1401:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s4, t2
	li s0, failed_addr
	ld a7, 0(s0)
	jr a7
	# assert_exception block end
excp_return_label_1401:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1402, excp_return_label_1402, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1402:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a0, t2
	li s11, failed_addr
	ld s3, 0(s11)
	jr s3
	# assert_exception block end
excp_return_label_1402:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1403, excp_return_label_1403, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1403:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s7, t2
	li s5, failed_addr
	ld a1, 0(s5)
	jr a1
	# assert_exception block end
excp_return_label_1403:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1404, excp_return_label_1404, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1404:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t5, t2
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_1404:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1405, excp_return_label_1405, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1405:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t4, t2
	li t4, failed_addr
	ld s7, 0(t4)
	jr s7
	# assert_exception block end
excp_return_label_1405:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1406, excp_return_label_1406, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1406:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t6, t2
	li s0, failed_addr
	ld s9, 0(s0)
	jr s9
	# assert_exception block end
excp_return_label_1406:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1407, excp_return_label_1407, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1407:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a2, t2
	li s1, failed_addr
	ld s0, 0(s1)
	jr s0
	# assert_exception block end
excp_return_label_1407:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1408, excp_return_label_1408, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1408:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s7, t2
	li s9, failed_addr
	ld s9, 0(s9)
	jr s9
	# assert_exception block end
excp_return_label_1408:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1409, excp_return_label_1409, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1409:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a0, t2
	li t1, failed_addr
	ld a5, 0(t1)
	jr a5
	# assert_exception block end
excp_return_label_1409:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1410, excp_return_label_1410, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1410:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t5, t2
	li s0, failed_addr
	ld t6, 0(s0)
	jr t6
	# assert_exception block end
excp_return_label_1410:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1411, excp_return_label_1411, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1411:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t3, t2
	li t2, failed_addr
	ld a2, 0(t2)
	jr a2
	# assert_exception block end
excp_return_label_1411:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1412, excp_return_label_1412, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1412:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s6, t2
	li s0, failed_addr
	ld t6, 0(s0)
	jr t6
	# assert_exception block end
excp_return_label_1412:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1413, excp_return_label_1413, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1413:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t6, t2
	li s11, failed_addr
	ld s9, 0(s11)
	jr s9
	# assert_exception block end
excp_return_label_1413:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1414, excp_return_label_1414, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1414:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t4, t2
	li t5, failed_addr
	ld a6, 0(t5)
	jr a6
	# assert_exception block end
excp_return_label_1414:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1415, excp_return_label_1415, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1415:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s1, t2
	li t4, failed_addr
	ld s10, 0(t4)
	jr s10
	# assert_exception block end
excp_return_label_1415:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1416, excp_return_label_1416, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1416:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a3, t2
	li s9, failed_addr
	ld t6, 0(s9)
	jr t6
	# assert_exception block end
excp_return_label_1416:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1417, excp_return_label_1417, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1417:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t6, t2
	li s1, failed_addr
	ld t1, 0(s1)
	jr t1
	# assert_exception block end
excp_return_label_1417:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1418, excp_return_label_1418, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1418:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a7, t2
	li s10, failed_addr
	ld s5, 0(s10)
	jr s5
	# assert_exception block end
excp_return_label_1418:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1419, excp_return_label_1419, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1419:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s11, t2
	li a7, failed_addr
	ld t3, 0(a7)
	jr t3
	# assert_exception block end
excp_return_label_1419:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1420, excp_return_label_1420, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1420:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s11, t2
	li t4, failed_addr
	ld t2, 0(t4)
	jr t2
	# assert_exception block end
excp_return_label_1420:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1421, excp_return_label_1421, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1421:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a0, t2
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
	# assert_exception block end
excp_return_label_1421:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1422, excp_return_label_1422, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1422:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a6, t2
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_1422:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1423, excp_return_label_1423, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1423:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s6, t2
	li s3, failed_addr
	ld a3, 0(s3)
	jr a3
	# assert_exception block end
excp_return_label_1423:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1424, excp_return_label_1424, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1424:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t5, t2
	li s8, failed_addr
	ld s2, 0(s8)
	jr s2
	# assert_exception block end
excp_return_label_1424:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1425, excp_return_label_1425, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1425:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a1, t2
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
	# assert_exception block end
excp_return_label_1425:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1426, excp_return_label_1426, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1426:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s5, t2
	li a1, failed_addr
	ld s0, 0(a1)
	jr s0
	# assert_exception block end
excp_return_label_1426:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1427, excp_return_label_1427, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1427:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t1, t2
	li s11, failed_addr
	ld t2, 0(s11)
	jr t2
	# assert_exception block end
excp_return_label_1427:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1428, excp_return_label_1428, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1428:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s7, t2
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_1428:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1429, excp_return_label_1429, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1429:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s6, t2
	li a3, failed_addr
	ld s7, 0(a3)
	jr s7
	# assert_exception block end
excp_return_label_1429:
	# Set only this field in both registers, clear all others
	li t2, 1024
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 1024
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s7, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1430, excp_return_label_1430, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1430:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t5, t2
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_1430:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1431, excp_return_label_1431, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1431:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a1, t2
	li s7, failed_addr
	ld t5, 0(s7)
	jr t5
	# assert_exception block end
excp_return_label_1431:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1432, excp_return_label_1432, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1432:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a2, t2
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_1432:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1433, excp_return_label_1433, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1433:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s6, t2
	li a5, failed_addr
	ld s8, 0(a5)
	jr s8
	# assert_exception block end
excp_return_label_1433:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1434, excp_return_label_1434, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1434:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s4, t2
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_1434:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1435, excp_return_label_1435, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1435:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a7, t2
	li t3, failed_addr
	ld s0, 0(t3)
	jr s0
	# assert_exception block end
excp_return_label_1435:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1436, excp_return_label_1436, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1436:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s1, t2
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
	# assert_exception block end
excp_return_label_1436:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1437, excp_return_label_1437, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1437:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a5, t2
	li t3, failed_addr
	ld s4, 0(t3)
	jr s4
	# assert_exception block end
excp_return_label_1437:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1438, excp_return_label_1438, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1438:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s3, t2
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
	# assert_exception block end
excp_return_label_1438:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1439, excp_return_label_1439, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1439:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s9, t2
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
	# assert_exception block end
excp_return_label_1439:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1440, excp_return_label_1440, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1440:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a1, t2
	li a4, failed_addr
	ld t2, 0(a4)
	jr t2
	# assert_exception block end
excp_return_label_1440:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1441, excp_return_label_1441, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1441:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a3, t2
	li a0, failed_addr
	ld t4, 0(a0)
	jr t4
	# assert_exception block end
excp_return_label_1441:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1442, excp_return_label_1442, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1442:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s4, t2
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
	# assert_exception block end
excp_return_label_1442:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1443, excp_return_label_1443, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1443:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t3, t2
	li s11, failed_addr
	ld s6, 0(s11)
	jr s6
	# assert_exception block end
excp_return_label_1443:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1444, excp_return_label_1444, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1444:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s0, t2
	li s2, failed_addr
	ld a1, 0(s2)
	jr a1
	# assert_exception block end
excp_return_label_1444:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1445, excp_return_label_1445, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1445:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a6, t2
	li s1, failed_addr
	ld a4, 0(s1)
	jr a4
	# assert_exception block end
excp_return_label_1445:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1446, excp_return_label_1446, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1446:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t6, t2
	li t1, failed_addr
	ld s0, 0(t1)
	jr s0
	# assert_exception block end
excp_return_label_1446:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1447, excp_return_label_1447, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1447:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a6, t2
	li s6, failed_addr
	ld s3, 0(s6)
	jr s3
	# assert_exception block end
excp_return_label_1447:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1448, excp_return_label_1448, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1448:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t5, t2
	li s11, failed_addr
	ld a3, 0(s11)
	jr a3
	# assert_exception block end
excp_return_label_1448:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1449, excp_return_label_1449, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1449:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t4, t2
	li t5, failed_addr
	ld t1, 0(t5)
	jr t1
	# assert_exception block end
excp_return_label_1449:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1450, excp_return_label_1450, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1450:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a4, t2
	li a2, failed_addr
	ld s8, 0(a2)
	jr s8
	# assert_exception block end
excp_return_label_1450:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1451, excp_return_label_1451, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1451:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t4, t2
	li a2, failed_addr
	ld t6, 0(a2)
	jr t6
	# assert_exception block end
excp_return_label_1451:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1452, excp_return_label_1452, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1452:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a6, t2
	li s0, failed_addr
	ld t5, 0(s0)
	jr t5
	# assert_exception block end
excp_return_label_1452:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1453, excp_return_label_1453, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1453:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s3, t2
	li t3, failed_addr
	ld t1, 0(t3)
	jr t1
	# assert_exception block end
excp_return_label_1453:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1454, excp_return_label_1454, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1454:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s1, t2
	li a6, failed_addr
	ld s5, 0(a6)
	jr s5
	# assert_exception block end
excp_return_label_1454:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1455, excp_return_label_1455, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1455:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s7, t2
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
	# assert_exception block end
excp_return_label_1455:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1456, excp_return_label_1456, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1456:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s7, t2
	li t4, failed_addr
	ld s10, 0(t4)
	jr s10
	# assert_exception block end
excp_return_label_1456:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1457, excp_return_label_1457, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1457:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s0, t2
	li s2, failed_addr
	ld a6, 0(s2)
	jr a6
	# assert_exception block end
excp_return_label_1457:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1458, excp_return_label_1458, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1458:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s1, t2
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
	# assert_exception block end
excp_return_label_1458:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1459, excp_return_label_1459, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1459:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s1, t2
	li t6, failed_addr
	ld s0, 0(t6)
	jr s0
	# assert_exception block end
excp_return_label_1459:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1460, excp_return_label_1460, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1460:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a1, t2
	li a4, failed_addr
	ld t1, 0(a4)
	jr t1
	# assert_exception block end
excp_return_label_1460:
	# Set only this field in both registers, clear all others
	li t2, 2048
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 2048
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a4, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1461, excp_return_label_1461, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1461:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s10, t2
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_1461:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1462, excp_return_label_1462, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1462:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s10, t2
	li a6, failed_addr
	ld t4, 0(a6)
	jr t4
	# assert_exception block end
excp_return_label_1462:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1463, excp_return_label_1463, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1463:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a1, t2
	li s2, failed_addr
	ld t5, 0(s2)
	jr t5
	# assert_exception block end
excp_return_label_1463:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1464, excp_return_label_1464, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1464:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a3, t2
	li s1, failed_addr
	ld s10, 0(s1)
	jr s10
	# assert_exception block end
excp_return_label_1464:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1465, excp_return_label_1465, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1465:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a6, t2
	li a6, failed_addr
	ld s1, 0(a6)
	jr s1
	# assert_exception block end
excp_return_label_1465:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1466, excp_return_label_1466, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1466:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s10, t2
	li t3, failed_addr
	ld s8, 0(t3)
	jr s8
	# assert_exception block end
excp_return_label_1466:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1467, excp_return_label_1467, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1467:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s7, t2
	li a7, failed_addr
	ld t3, 0(a7)
	jr t3
	# assert_exception block end
excp_return_label_1467:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1468, excp_return_label_1468, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1468:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a0, t2
	li s0, failed_addr
	ld t3, 0(s0)
	jr t3
	# assert_exception block end
excp_return_label_1468:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1469, excp_return_label_1469, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1469:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a1, t2
	li s3, failed_addr
	ld a4, 0(s3)
	jr a4
	# assert_exception block end
excp_return_label_1469:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1470, excp_return_label_1470, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1470:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a4, t2
	li a4, failed_addr
	ld a7, 0(a4)
	jr a7
	# assert_exception block end
excp_return_label_1470:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1471, excp_return_label_1471, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1471:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a2, t2
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_1471:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1472, excp_return_label_1472, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1472:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t6, t2
	li s0, failed_addr
	ld s11, 0(s0)
	jr s11
	# assert_exception block end
excp_return_label_1472:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1473, excp_return_label_1473, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1473:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t5, t2
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_1473:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1474, excp_return_label_1474, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1474:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a1, t2
	li s4, failed_addr
	ld a6, 0(s4)
	jr a6
	# assert_exception block end
excp_return_label_1474:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1475, excp_return_label_1475, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1475:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t4, t2
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_1475:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1476, excp_return_label_1476, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1476:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t1, t2
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
	# assert_exception block end
excp_return_label_1476:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1477, excp_return_label_1477, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1477:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s0, t2
	li s0, failed_addr
	ld s9, 0(s0)
	jr s9
	# assert_exception block end
excp_return_label_1477:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1478, excp_return_label_1478, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1478:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s2, t2
	li a7, failed_addr
	ld s1, 0(a7)
	jr s1
	# assert_exception block end
excp_return_label_1478:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1479, excp_return_label_1479, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1479:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a3, t2
	li t4, failed_addr
	ld t2, 0(t4)
	jr t2
	# assert_exception block end
excp_return_label_1479:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1480, excp_return_label_1480, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1480:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s2, t2
	li a4, failed_addr
	ld s5, 0(a4)
	jr s5
	# assert_exception block end
excp_return_label_1480:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1481, excp_return_label_1481, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1481:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s1, t2
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_1481:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1482, excp_return_label_1482, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1482:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a1, t2
	li s4, failed_addr
	ld s0, 0(s4)
	jr s0
	# assert_exception block end
excp_return_label_1482:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1483, excp_return_label_1483, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1483:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t6, t2
	li s9, failed_addr
	ld t5, 0(s9)
	jr t5
	# assert_exception block end
excp_return_label_1483:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1484, excp_return_label_1484, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1484:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s7, t2
	li s11, failed_addr
	ld t2, 0(s11)
	jr t2
	# assert_exception block end
excp_return_label_1484:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1485, excp_return_label_1485, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1485:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s5, t2
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
	# assert_exception block end
excp_return_label_1485:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1486, excp_return_label_1486, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1486:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s1, t2
	li a0, failed_addr
	ld t4, 0(a0)
	jr t4
	# assert_exception block end
excp_return_label_1486:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1487, excp_return_label_1487, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1487:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a0, t2
	li t4, failed_addr
	ld a1, 0(t4)
	jr a1
	# assert_exception block end
excp_return_label_1487:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1488, excp_return_label_1488, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1488:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s11, t2
	li a6, failed_addr
	ld s8, 0(a6)
	jr s8
	# assert_exception block end
excp_return_label_1488:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1489, excp_return_label_1489, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1489:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a2, t2
	li s10, failed_addr
	ld t6, 0(s10)
	jr t6
	# assert_exception block end
excp_return_label_1489:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1490, excp_return_label_1490, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1490:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t5, t2
	li s5, failed_addr
	ld s3, 0(s5)
	jr s3
	# assert_exception block end
excp_return_label_1490:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1491, excp_return_label_1491, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1491:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s10, t2
	li s8, failed_addr
	ld s8, 0(s8)
	jr s8
	# assert_exception block end
excp_return_label_1491:
	# Set only this field in both registers, clear all others
	li t2, 4096
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 4096
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s7, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1492, excp_return_label_1492, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1492:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t6, t2
	li a3, failed_addr
	ld a7, 0(a3)
	jr a7
	# assert_exception block end
excp_return_label_1492:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1493, excp_return_label_1493, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1493:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a7, t2
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_1493:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1494, excp_return_label_1494, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1494:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t1, t2
	li s3, failed_addr
	ld s9, 0(s3)
	jr s9
	# assert_exception block end
excp_return_label_1494:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1495, excp_return_label_1495, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1495:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s5, t2
	li s3, failed_addr
	ld s1, 0(s3)
	jr s1
	# assert_exception block end
excp_return_label_1495:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1496, excp_return_label_1496, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1496:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a6, t2
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
	# assert_exception block end
excp_return_label_1496:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1497, excp_return_label_1497, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1497:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s3, t2
	li t1, failed_addr
	ld s0, 0(t1)
	jr s0
	# assert_exception block end
excp_return_label_1497:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1498, excp_return_label_1498, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1498:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s0, t2
	li a0, failed_addr
	ld a2, 0(a0)
	jr a2
	# assert_exception block end
excp_return_label_1498:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1499, excp_return_label_1499, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1499:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s4, t2
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
	# assert_exception block end
excp_return_label_1499:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1500, excp_return_label_1500, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1500:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s0, t2
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
	# assert_exception block end
excp_return_label_1500:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1501, excp_return_label_1501, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1501:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a7, t2
	li a3, failed_addr
	ld s5, 0(a3)
	jr s5
	# assert_exception block end
excp_return_label_1501:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1502, excp_return_label_1502, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1502:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s5, t2
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
	# assert_exception block end
excp_return_label_1502:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1503, excp_return_label_1503, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1503:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s2, t2
	li s6, failed_addr
	ld s3, 0(s6)
	jr s3
	# assert_exception block end
excp_return_label_1503:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1504, excp_return_label_1504, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1504:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t6, t2
	li t5, failed_addr
	ld s9, 0(t5)
	jr s9
	# assert_exception block end
excp_return_label_1504:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1505, excp_return_label_1505, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1505:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s0, t2
	li a3, failed_addr
	ld a2, 0(a3)
	jr a2
	# assert_exception block end
excp_return_label_1505:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1506, excp_return_label_1506, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1506:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s3, t2
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_1506:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1507, excp_return_label_1507, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1507:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s0, t2
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_1507:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1508, excp_return_label_1508, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1508:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s8, t2
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_1508:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1509, excp_return_label_1509, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1509:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s0, t2
	li t4, failed_addr
	ld s0, 0(t4)
	jr s0
	# assert_exception block end
excp_return_label_1509:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1510, excp_return_label_1510, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1510:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s1, t2
	li a4, failed_addr
	ld t2, 0(a4)
	jr t2
	# assert_exception block end
excp_return_label_1510:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1511, excp_return_label_1511, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1511:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s3, t2
	li a0, failed_addr
	ld s10, 0(a0)
	jr s10
	# assert_exception block end
excp_return_label_1511:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1512, excp_return_label_1512, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1512:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a5, t2
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_1512:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1513, excp_return_label_1513, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1513:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s6, t2
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
	# assert_exception block end
excp_return_label_1513:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1514, excp_return_label_1514, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1514:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a2, t2
	li s1, failed_addr
	ld t4, 0(s1)
	jr t4
	# assert_exception block end
excp_return_label_1514:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1515, excp_return_label_1515, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1515:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a2, t2
	li a5, failed_addr
	ld s10, 0(a5)
	jr s10
	# assert_exception block end
excp_return_label_1515:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1516, excp_return_label_1516, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1516:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t6, t2
	li a5, failed_addr
	ld a2, 0(a5)
	jr a2
	# assert_exception block end
excp_return_label_1516:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1517, excp_return_label_1517, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1517:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s8, t2
	li s9, failed_addr
	ld s3, 0(s9)
	jr s3
	# assert_exception block end
excp_return_label_1517:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1518, excp_return_label_1518, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1518:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t3, t2
	li s9, failed_addr
	ld a6, 0(s9)
	jr a6
	# assert_exception block end
excp_return_label_1518:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1519, excp_return_label_1519, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1519:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s1, t2
	li a1, failed_addr
	ld a7, 0(a1)
	jr a7
	# assert_exception block end
excp_return_label_1519:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1520, excp_return_label_1520, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1520:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a1, t2
	li a7, failed_addr
	ld s11, 0(a7)
	jr s11
	# assert_exception block end
excp_return_label_1520:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1521, excp_return_label_1521, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1521:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a3, t2
	li a1, failed_addr
	ld a6, 0(a1)
	jr a6
	# assert_exception block end
excp_return_label_1521:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1522, excp_return_label_1522, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1522:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s7, t2
	li s11, failed_addr
	ld a6, 0(s11)
	jr a6
	# assert_exception block end
excp_return_label_1522:
	# Set only this field in both registers, clear all others
	li t2, 8192
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 8192
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a5, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1523, excp_return_label_1523, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1523:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a1, t2
	li s2, failed_addr
	ld s10, 0(s2)
	jr s10
	# assert_exception block end
excp_return_label_1523:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1524, excp_return_label_1524, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1524:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s8, t2
	li t2, failed_addr
	ld a1, 0(t2)
	jr a1
	# assert_exception block end
excp_return_label_1524:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1525, excp_return_label_1525, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1525:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s4, t2
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_1525:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1526, excp_return_label_1526, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1526:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a7, t2
	li s3, failed_addr
	ld s10, 0(s3)
	jr s10
	# assert_exception block end
excp_return_label_1526:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1527, excp_return_label_1527, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1527:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t5, t2
	li t2, failed_addr
	ld a1, 0(t2)
	jr a1
	# assert_exception block end
excp_return_label_1527:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1528, excp_return_label_1528, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1528:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s9, t2
	li a1, failed_addr
	ld a1, 0(a1)
	jr a1
	# assert_exception block end
excp_return_label_1528:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1529, excp_return_label_1529, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1529:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s7, t2
	li s9, failed_addr
	ld s7, 0(s9)
	jr s7
	# assert_exception block end
excp_return_label_1529:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1530, excp_return_label_1530, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1530:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s9, t2
	li t1, failed_addr
	ld s3, 0(t1)
	jr s3
	# assert_exception block end
excp_return_label_1530:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1531, excp_return_label_1531, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1531:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s7, t2
	li s4, failed_addr
	ld t1, 0(s4)
	jr t1
	# assert_exception block end
excp_return_label_1531:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1532, excp_return_label_1532, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1532:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s7, t2
	li s9, failed_addr
	ld a0, 0(s9)
	jr a0
	# assert_exception block end
excp_return_label_1532:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1533, excp_return_label_1533, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1533:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s8, t2
	li s2, failed_addr
	ld t2, 0(s2)
	jr t2
	# assert_exception block end
excp_return_label_1533:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1534, excp_return_label_1534, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1534:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s6, t2
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_1534:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1535, excp_return_label_1535, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1535:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s0, t2
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
	# assert_exception block end
excp_return_label_1535:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1536, excp_return_label_1536, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1536:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s2, t2
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
	# assert_exception block end
excp_return_label_1536:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1537, excp_return_label_1537, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1537:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s10, t2
	li s1, failed_addr
	ld s4, 0(s1)
	jr s4
	# assert_exception block end
excp_return_label_1537:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1538, excp_return_label_1538, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1538:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s1, t2
	li t4, failed_addr
	ld a3, 0(t4)
	jr a3
	# assert_exception block end
excp_return_label_1538:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1539, excp_return_label_1539, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1539:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t2, t2
	li s3, failed_addr
	ld s9, 0(s3)
	jr s9
	# assert_exception block end
excp_return_label_1539:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1540, excp_return_label_1540, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1540:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a3, t2
	li s4, failed_addr
	ld t1, 0(s4)
	jr t1
	# assert_exception block end
excp_return_label_1540:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1541, excp_return_label_1541, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1541:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s3, t2
	li a6, failed_addr
	ld a6, 0(a6)
	jr a6
	# assert_exception block end
excp_return_label_1541:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1542, excp_return_label_1542, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1542:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t4, t2
	li s2, failed_addr
	ld t2, 0(s2)
	jr t2
	# assert_exception block end
excp_return_label_1542:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1543, excp_return_label_1543, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1543:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a0, t2
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_1543:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1544, excp_return_label_1544, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1544:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s3, t2
	li s7, failed_addr
	ld t2, 0(s7)
	jr t2
	# assert_exception block end
excp_return_label_1544:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1545, excp_return_label_1545, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1545:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a0, t2
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_1545:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1546, excp_return_label_1546, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1546:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s10, t2
	li t4, failed_addr
	ld s4, 0(t4)
	jr s4
	# assert_exception block end
excp_return_label_1546:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1547, excp_return_label_1547, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1547:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s9, t2
	li a5, failed_addr
	ld a1, 0(a5)
	jr a1
	# assert_exception block end
excp_return_label_1547:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1548, excp_return_label_1548, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1548:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t5, t2
	li s3, failed_addr
	ld a6, 0(s3)
	jr a6
	# assert_exception block end
excp_return_label_1548:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1549, excp_return_label_1549, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1549:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s4, t2
	li t4, failed_addr
	ld s3, 0(t4)
	jr s3
	# assert_exception block end
excp_return_label_1549:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1550, excp_return_label_1550, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1550:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a7, t2
	li s9, failed_addr
	ld s4, 0(s9)
	jr s4
	# assert_exception block end
excp_return_label_1550:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1551, excp_return_label_1551, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1551:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t3, t2
	li t4, failed_addr
	ld a6, 0(t4)
	jr a6
	# assert_exception block end
excp_return_label_1551:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1552, excp_return_label_1552, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1552:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a7, t2
	li t6, failed_addr
	ld a3, 0(t6)
	jr a3
	# assert_exception block end
excp_return_label_1552:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1553, excp_return_label_1553, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1553:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s10, t2
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
	# assert_exception block end
excp_return_label_1553:
	# Set only this field in both registers, clear all others
	li t2, 16384
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 16384
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a2, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1554, excp_return_label_1554, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1554:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t2, t2
	li t6, failed_addr
	ld a2, 0(t6)
	jr a2
	# assert_exception block end
excp_return_label_1554:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1555, excp_return_label_1555, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1555:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s7, t2
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_1555:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1556, excp_return_label_1556, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1556:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a0, t2
	li s4, failed_addr
	ld a5, 0(s4)
	jr a5
	# assert_exception block end
excp_return_label_1556:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1557, excp_return_label_1557, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1557:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s6, t2
	li t5, failed_addr
	ld a4, 0(t5)
	jr a4
	# assert_exception block end
excp_return_label_1557:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1558, excp_return_label_1558, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1558:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s1, t2
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
	# assert_exception block end
excp_return_label_1558:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1559, excp_return_label_1559, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1559:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t1, t2
	li s7, failed_addr
	ld a1, 0(s7)
	jr a1
	# assert_exception block end
excp_return_label_1559:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1560, excp_return_label_1560, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1560:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s3, t2
	li a6, failed_addr
	ld a6, 0(a6)
	jr a6
	# assert_exception block end
excp_return_label_1560:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1561, excp_return_label_1561, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1561:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a7, t2
	li s8, failed_addr
	ld s10, 0(s8)
	jr s10
	# assert_exception block end
excp_return_label_1561:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1562, excp_return_label_1562, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1562:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s2, t2
	li t3, failed_addr
	ld t4, 0(t3)
	jr t4
	# assert_exception block end
excp_return_label_1562:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1563, excp_return_label_1563, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1563:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t3, t2
	li s5, failed_addr
	ld a7, 0(s5)
	jr a7
	# assert_exception block end
excp_return_label_1563:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1564, excp_return_label_1564, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1564:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t4, t2
	li t6, failed_addr
	ld s9, 0(t6)
	jr s9
	# assert_exception block end
excp_return_label_1564:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1565, excp_return_label_1565, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1565:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a4, t2
	li s3, failed_addr
	ld a0, 0(s3)
	jr a0
	# assert_exception block end
excp_return_label_1565:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1566, excp_return_label_1566, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1566:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a1, t2
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_1566:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1567, excp_return_label_1567, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1567:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t2, t2
	li s2, failed_addr
	ld s2, 0(s2)
	jr s2
	# assert_exception block end
excp_return_label_1567:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1568, excp_return_label_1568, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1568:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s3, t2
	li a0, failed_addr
	ld t1, 0(a0)
	jr t1
	# assert_exception block end
excp_return_label_1568:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1569, excp_return_label_1569, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1569:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s1, t2
	li a1, failed_addr
	ld a3, 0(a1)
	jr a3
	# assert_exception block end
excp_return_label_1569:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1570, excp_return_label_1570, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1570:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s9, t2
	li s6, failed_addr
	ld a7, 0(s6)
	jr a7
	# assert_exception block end
excp_return_label_1570:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1571, excp_return_label_1571, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1571:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s1, t2
	li t6, failed_addr
	ld a0, 0(t6)
	jr a0
	# assert_exception block end
excp_return_label_1571:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1572, excp_return_label_1572, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1572:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t2, t2
	li t2, failed_addr
	ld a3, 0(t2)
	jr a3
	# assert_exception block end
excp_return_label_1572:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1573, excp_return_label_1573, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1573:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s1, t2
	li s7, failed_addr
	ld t4, 0(s7)
	jr t4
	# assert_exception block end
excp_return_label_1573:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1574, excp_return_label_1574, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1574:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s9, t2
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_1574:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1575, excp_return_label_1575, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1575:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t2, t2
	li s1, failed_addr
	ld a2, 0(s1)
	jr a2
	# assert_exception block end
excp_return_label_1575:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1576, excp_return_label_1576, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1576:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s11, t2
	li s11, failed_addr
	ld s7, 0(s11)
	jr s7
	# assert_exception block end
excp_return_label_1576:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1577, excp_return_label_1577, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1577:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s2, t2
	li s8, failed_addr
	ld a0, 0(s8)
	jr a0
	# assert_exception block end
excp_return_label_1577:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1578, excp_return_label_1578, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1578:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a6, t2
	li a5, failed_addr
	ld s8, 0(a5)
	jr s8
	# assert_exception block end
excp_return_label_1578:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1579, excp_return_label_1579, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1579:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s10, t2
	li s8, failed_addr
	ld s6, 0(s8)
	jr s6
	# assert_exception block end
excp_return_label_1579:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1580, excp_return_label_1580, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1580:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s7, t2
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
	# assert_exception block end
excp_return_label_1580:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1581, excp_return_label_1581, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1581:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s10, t2
	li t2, failed_addr
	ld t2, 0(t2)
	jr t2
	# assert_exception block end
excp_return_label_1581:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1582, excp_return_label_1582, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1582:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a7, t2
	li s11, failed_addr
	ld s1, 0(s11)
	jr s1
	# assert_exception block end
excp_return_label_1582:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1583, excp_return_label_1583, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1583:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a4, t2
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_1583:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1584, excp_return_label_1584, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1584:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a3, t2
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_1584:
	# Set only this field in both registers, clear all others
	li t2, 32768
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 32768
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s10, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1585, excp_return_label_1585, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1585:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s10, t2
	li s3, failed_addr
	ld a6, 0(s3)
	jr a6
	# assert_exception block end
excp_return_label_1585:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1586, excp_return_label_1586, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1586:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a7, t2
	li a6, failed_addr
	ld t5, 0(a6)
	jr t5
	# assert_exception block end
excp_return_label_1586:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1587, excp_return_label_1587, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1587:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s8, t2
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_1587:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1588, excp_return_label_1588, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1588:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv t1, t2
	li a4, failed_addr
	ld a4, 0(a4)
	jr a4
	# assert_exception block end
excp_return_label_1588:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1589, excp_return_label_1589, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1589:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a6, t2
	li t4, failed_addr
	ld a5, 0(t4)
	jr a5
	# assert_exception block end
excp_return_label_1589:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1590, excp_return_label_1590, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1590:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a1, t2
	li s4, failed_addr
	ld s7, 0(s4)
	jr s7
	# assert_exception block end
excp_return_label_1590:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1591, excp_return_label_1591, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1591:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s7, t2
	li a0, failed_addr
	ld s10, 0(a0)
	jr s10
	# assert_exception block end
excp_return_label_1591:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1592, excp_return_label_1592, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1592:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a5, t2
	li a2, failed_addr
	ld t4, 0(a2)
	jr t4
	# assert_exception block end
excp_return_label_1592:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1593, excp_return_label_1593, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1593:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a3, t2
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
	# assert_exception block end
excp_return_label_1593:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1594, excp_return_label_1594, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1594:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s3, t2
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_1594:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1595, excp_return_label_1595, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1595:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t1, t2
	li t3, failed_addr
	ld s6, 0(t3)
	jr s6
	# assert_exception block end
excp_return_label_1595:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1596, excp_return_label_1596, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1596:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s7, t2
	li t1, failed_addr
	ld a4, 0(t1)
	jr a4
	# assert_exception block end
excp_return_label_1596:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1597, excp_return_label_1597, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1597:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a5, t2
	li t3, failed_addr
	ld t4, 0(t3)
	jr t4
	# assert_exception block end
excp_return_label_1597:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1598, excp_return_label_1598, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1598:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s2, t2
	li s11, failed_addr
	ld s0, 0(s11)
	jr s0
	# assert_exception block end
excp_return_label_1598:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1599, excp_return_label_1599, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1599:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s7, t2
	li s10, failed_addr
	ld s0, 0(s10)
	jr s0
	# assert_exception block end
excp_return_label_1599:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1600, excp_return_label_1600, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1600:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a4, t2
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_1600:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1601, excp_return_label_1601, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1601:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a6, t2
	li a2, failed_addr
	ld t2, 0(a2)
	jr t2
	# assert_exception block end
excp_return_label_1601:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1602, excp_return_label_1602, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1602:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s3, t2
	li t3, failed_addr
	ld a5, 0(t3)
	jr a5
	# assert_exception block end
excp_return_label_1602:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1603, excp_return_label_1603, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1603:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s4, t2
	li s5, failed_addr
	ld a4, 0(s5)
	jr a4
	# assert_exception block end
excp_return_label_1603:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1604, excp_return_label_1604, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1604:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a4, t2
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_1604:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1605, excp_return_label_1605, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1605:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s0, t2
	li t2, failed_addr
	ld a2, 0(t2)
	jr a2
	# assert_exception block end
excp_return_label_1605:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1606, excp_return_label_1606, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1606:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s1, t2
	li a5, failed_addr
	ld a5, 0(a5)
	jr a5
	# assert_exception block end
excp_return_label_1606:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1607, excp_return_label_1607, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1607:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s2, t2
	li a1, failed_addr
	ld s11, 0(a1)
	jr s11
	# assert_exception block end
excp_return_label_1607:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1608, excp_return_label_1608, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1608:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a0, t2
	li s5, failed_addr
	ld s4, 0(s5)
	jr s4
	# assert_exception block end
excp_return_label_1608:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1609, excp_return_label_1609, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1609:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t1, t2
	li s6, failed_addr
	ld s5, 0(s6)
	jr s5
	# assert_exception block end
excp_return_label_1609:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1610, excp_return_label_1610, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1610:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a2, t2
	li s2, failed_addr
	ld s6, 0(s2)
	jr s6
	# assert_exception block end
excp_return_label_1610:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1611, excp_return_label_1611, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1611:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t2, t2
	li a3, failed_addr
	ld s10, 0(a3)
	jr s10
	# assert_exception block end
excp_return_label_1611:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1612, excp_return_label_1612, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1612:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s3, t2
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_1612:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1613, excp_return_label_1613, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1613:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s3, t2
	li s1, failed_addr
	ld s11, 0(s1)
	jr s11
	# assert_exception block end
excp_return_label_1613:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1614, excp_return_label_1614, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1614:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s1, t2
	li t5, failed_addr
	ld s10, 0(t5)
	jr s10
	# assert_exception block end
excp_return_label_1614:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1615, excp_return_label_1615, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1615:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s10, t2
	li s7, failed_addr
	ld s9, 0(s7)
	jr s9
	# assert_exception block end
excp_return_label_1615:
	# Set only this field in both registers, clear all others
	li t2, 65536
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 65536
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a1, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1616, excp_return_label_1616, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1616:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s4, t2
	li a5, failed_addr
	ld s4, 0(a5)
	jr s4
	# assert_exception block end
excp_return_label_1616:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1617, excp_return_label_1617, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1617:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s10, t2
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_1617:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1618, excp_return_label_1618, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1618:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s2, t2
	li a7, failed_addr
	ld a7, 0(a7)
	jr a7
	# assert_exception block end
excp_return_label_1618:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1619, excp_return_label_1619, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1619:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a0, t2
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_1619:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1620, excp_return_label_1620, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1620:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a3, t2
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
	# assert_exception block end
excp_return_label_1620:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1621, excp_return_label_1621, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1621:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t3, t2
	li a5, failed_addr
	ld s6, 0(a5)
	jr s6
	# assert_exception block end
excp_return_label_1621:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1622, excp_return_label_1622, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1622:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s9, t2
	li a5, failed_addr
	ld a1, 0(a5)
	jr a1
	# assert_exception block end
excp_return_label_1622:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1623, excp_return_label_1623, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1623:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a1, t2
	li t2, failed_addr
	ld s8, 0(t2)
	jr s8
	# assert_exception block end
excp_return_label_1623:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1624, excp_return_label_1624, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1624:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s0, t2
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
	# assert_exception block end
excp_return_label_1624:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1625, excp_return_label_1625, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1625:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s1, t2
	li a5, failed_addr
	ld t6, 0(a5)
	jr t6
	# assert_exception block end
excp_return_label_1625:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1626, excp_return_label_1626, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1626:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a0, t2
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
	# assert_exception block end
excp_return_label_1626:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1627, excp_return_label_1627, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1627:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s2, t2
	li t4, failed_addr
	ld t4, 0(t4)
	jr t4
	# assert_exception block end
excp_return_label_1627:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1628, excp_return_label_1628, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1628:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a7, t2
	li s4, failed_addr
	ld s6, 0(s4)
	jr s6
	# assert_exception block end
excp_return_label_1628:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1629, excp_return_label_1629, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1629:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s6, t2
	li a0, failed_addr
	ld s10, 0(a0)
	jr s10
	# assert_exception block end
excp_return_label_1629:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1630, excp_return_label_1630, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1630:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s10, t2
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
	# assert_exception block end
excp_return_label_1630:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1631, excp_return_label_1631, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1631:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t1, t2
	li t1, failed_addr
	ld s1, 0(t1)
	jr s1
	# assert_exception block end
excp_return_label_1631:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1632, excp_return_label_1632, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1632:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s5, t2
	li s10, failed_addr
	ld t4, 0(s10)
	jr t4
	# assert_exception block end
excp_return_label_1632:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1633, excp_return_label_1633, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1633:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s0, t2
	li t2, failed_addr
	ld a1, 0(t2)
	jr a1
	# assert_exception block end
excp_return_label_1633:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1634, excp_return_label_1634, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1634:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t4, t2
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_1634:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1635, excp_return_label_1635, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1635:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s10, t2
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
	# assert_exception block end
excp_return_label_1635:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1636, excp_return_label_1636, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1636:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t3, t2
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_1636:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1637, excp_return_label_1637, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1637:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t6, t2
	li t2, failed_addr
	ld t4, 0(t2)
	jr t4
	# assert_exception block end
excp_return_label_1637:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1638, excp_return_label_1638, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1638:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s5, t2
	li s6, failed_addr
	ld s0, 0(s6)
	jr s0
	# assert_exception block end
excp_return_label_1638:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1639, excp_return_label_1639, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1639:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s1, t2
	li t6, failed_addr
	ld a4, 0(t6)
	jr a4
	# assert_exception block end
excp_return_label_1639:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1640, excp_return_label_1640, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1640:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s7, t2
	li s10, failed_addr
	ld a5, 0(s10)
	jr a5
	# assert_exception block end
excp_return_label_1640:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1641, excp_return_label_1641, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1641:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s10, t2
	li s0, failed_addr
	ld a0, 0(s0)
	jr a0
	# assert_exception block end
excp_return_label_1641:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1642, excp_return_label_1642, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1642:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s5, t2
	li s10, failed_addr
	ld a6, 0(s10)
	jr a6
	# assert_exception block end
excp_return_label_1642:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1643, excp_return_label_1643, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1643:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s1, t2
	li s8, failed_addr
	ld s6, 0(s8)
	jr s6
	# assert_exception block end
excp_return_label_1643:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1644, excp_return_label_1644, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1644:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t2, t2
	li s10, failed_addr
	ld s9, 0(s10)
	jr s9
	# assert_exception block end
excp_return_label_1644:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1645, excp_return_label_1645, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1645:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s6, t2
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_1645:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1646, excp_return_label_1646, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1646:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a1, t2
	li s9, failed_addr
	ld t3, 0(s9)
	jr t3
	# assert_exception block end
excp_return_label_1646:
	# Set only this field in both registers, clear all others
	li t2, 131072
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 131072
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s1, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1647, excp_return_label_1647, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1647:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s1, t2
	li t5, failed_addr
	ld t6, 0(t5)
	jr t6
	# assert_exception block end
excp_return_label_1647:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1648, excp_return_label_1648, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1648:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a4, t2
	li a4, failed_addr
	ld a7, 0(a4)
	jr a7
	# assert_exception block end
excp_return_label_1648:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1649, excp_return_label_1649, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1649:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s7, t2
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
	# assert_exception block end
excp_return_label_1649:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1650, excp_return_label_1650, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1650:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a0, t2
	li s9, failed_addr
	ld s11, 0(s9)
	jr s11
	# assert_exception block end
excp_return_label_1650:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1651, excp_return_label_1651, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1651:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a5, t2
	li s10, failed_addr
	ld a7, 0(s10)
	jr a7
	# assert_exception block end
excp_return_label_1651:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1652, excp_return_label_1652, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1652:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s6, t2
	li t4, failed_addr
	ld a6, 0(t4)
	jr a6
	# assert_exception block end
excp_return_label_1652:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1653, excp_return_label_1653, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1653:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a3, t2
	li s1, failed_addr
	ld s11, 0(s1)
	jr s11
	# assert_exception block end
excp_return_label_1653:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1654, excp_return_label_1654, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1654:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a7, t2
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
	# assert_exception block end
excp_return_label_1654:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1655, excp_return_label_1655, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1655:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a4, t2
	li t3, failed_addr
	ld s0, 0(t3)
	jr s0
	# assert_exception block end
excp_return_label_1655:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1656, excp_return_label_1656, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1656:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a1, t2
	li t5, failed_addr
	ld t5, 0(t5)
	jr t5
	# assert_exception block end
excp_return_label_1656:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1657, excp_return_label_1657, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1657:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s10, t2
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
	# assert_exception block end
excp_return_label_1657:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1658, excp_return_label_1658, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1658:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s1, t2
	li s10, failed_addr
	ld t6, 0(s10)
	jr t6
	# assert_exception block end
excp_return_label_1658:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1659, excp_return_label_1659, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1659:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s9, t2
	li a4, failed_addr
	ld t2, 0(a4)
	jr t2
	# assert_exception block end
excp_return_label_1659:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1660, excp_return_label_1660, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1660:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s8, t2
	li a7, failed_addr
	ld s2, 0(a7)
	jr s2
	# assert_exception block end
excp_return_label_1660:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1661, excp_return_label_1661, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1661:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t1, t2
	li t6, failed_addr
	ld t4, 0(t6)
	jr t4
	# assert_exception block end
excp_return_label_1661:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1662, excp_return_label_1662, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1662:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t3, t2
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_1662:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1663, excp_return_label_1663, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1663:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s4, t2
	li s0, failed_addr
	ld s5, 0(s0)
	jr s5
	# assert_exception block end
excp_return_label_1663:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1664, excp_return_label_1664, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1664:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s9, t2
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_1664:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1665, excp_return_label_1665, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1665:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a4, t2
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
	# assert_exception block end
excp_return_label_1665:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1666, excp_return_label_1666, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1666:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s1, t2
	li a3, failed_addr
	ld s3, 0(a3)
	jr s3
	# assert_exception block end
excp_return_label_1666:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1667, excp_return_label_1667, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1667:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s2, t2
	li a2, failed_addr
	ld s6, 0(a2)
	jr s6
	# assert_exception block end
excp_return_label_1667:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1668, excp_return_label_1668, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1668:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv t6, t2
	li a4, failed_addr
	ld s4, 0(a4)
	jr s4
	# assert_exception block end
excp_return_label_1668:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1669, excp_return_label_1669, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1669:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t6, t2
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_1669:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1670, excp_return_label_1670, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1670:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a6, t2
	li a0, failed_addr
	ld s5, 0(a0)
	jr s5
	# assert_exception block end
excp_return_label_1670:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1671, excp_return_label_1671, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1671:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s7, t2
	li a3, failed_addr
	ld a2, 0(a3)
	jr a2
	# assert_exception block end
excp_return_label_1671:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1672, excp_return_label_1672, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1672:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s11, t2
	li t1, failed_addr
	ld t1, 0(t1)
	jr t1
	# assert_exception block end
excp_return_label_1672:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1673, excp_return_label_1673, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1673:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s11, t2
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
	# assert_exception block end
excp_return_label_1673:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1674, excp_return_label_1674, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1674:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a2, t2
	li s7, failed_addr
	ld t3, 0(s7)
	jr t3
	# assert_exception block end
excp_return_label_1674:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1675, excp_return_label_1675, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1675:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t2, t2
	li t6, failed_addr
	ld s2, 0(t6)
	jr s2
	# assert_exception block end
excp_return_label_1675:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1676, excp_return_label_1676, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1676:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a2, t2
	li t4, failed_addr
	ld a1, 0(t4)
	jr a1
	# assert_exception block end
excp_return_label_1676:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1677, excp_return_label_1677, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1677:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t5, t2
	li s11, failed_addr
	ld s5, 0(s11)
	jr s5
	# assert_exception block end
excp_return_label_1677:
	# Set only this field in both registers, clear all others
	li t2, 262144
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 262144
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t6, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1678, excp_return_label_1678, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1678:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t5, t2
	li s11, failed_addr
	ld s9, 0(s11)
	jr s9
	# assert_exception block end
excp_return_label_1678:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1679, excp_return_label_1679, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1679:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t1, t2
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
	# assert_exception block end
excp_return_label_1679:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1680, excp_return_label_1680, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1680:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s8, t2
	li s10, failed_addr
	ld s7, 0(s10)
	jr s7
	# assert_exception block end
excp_return_label_1680:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1681, excp_return_label_1681, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1681:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a1, t2
	li t1, failed_addr
	ld a6, 0(t1)
	jr a6
	# assert_exception block end
excp_return_label_1681:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1682, excp_return_label_1682, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1682:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t5, t2
	li s10, failed_addr
	ld s4, 0(s10)
	jr s4
	# assert_exception block end
excp_return_label_1682:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1683, excp_return_label_1683, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1683:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s7, t2
	li t3, failed_addr
	ld s10, 0(t3)
	jr s10
	# assert_exception block end
excp_return_label_1683:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1684, excp_return_label_1684, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1684:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s1, t2
	li t4, failed_addr
	ld t4, 0(t4)
	jr t4
	# assert_exception block end
excp_return_label_1684:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1685, excp_return_label_1685, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1685:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s7, t2
	li s11, failed_addr
	ld s10, 0(s11)
	jr s10
	# assert_exception block end
excp_return_label_1685:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1686, excp_return_label_1686, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1686:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a0, t2
	li t2, failed_addr
	ld s2, 0(t2)
	jr s2
	# assert_exception block end
excp_return_label_1686:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1687, excp_return_label_1687, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1687:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s4, t2
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
	# assert_exception block end
excp_return_label_1687:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1688, excp_return_label_1688, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1688:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t2, t2
	li a0, failed_addr
	ld a6, 0(a0)
	jr a6
	# assert_exception block end
excp_return_label_1688:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1689, excp_return_label_1689, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1689:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t5, t2
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
	# assert_exception block end
excp_return_label_1689:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1690, excp_return_label_1690, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1690:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s9, t2
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_1690:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1691, excp_return_label_1691, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1691:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t3, t2
	li s6, failed_addr
	ld s1, 0(s6)
	jr s1
	# assert_exception block end
excp_return_label_1691:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1692, excp_return_label_1692, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1692:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s1, t2
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_1692:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1693, excp_return_label_1693, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1693:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a5, t2
	li s11, failed_addr
	ld a5, 0(s11)
	jr a5
	# assert_exception block end
excp_return_label_1693:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1694, excp_return_label_1694, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1694:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t5, t2
	li s11, failed_addr
	ld a6, 0(s11)
	jr a6
	# assert_exception block end
excp_return_label_1694:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1695, excp_return_label_1695, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1695:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s2, t2
	li s5, failed_addr
	ld s3, 0(s5)
	jr s3
	# assert_exception block end
excp_return_label_1695:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1696, excp_return_label_1696, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1696:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t2, t2
	li a4, failed_addr
	ld a3, 0(a4)
	jr a3
	# assert_exception block end
excp_return_label_1696:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1697, excp_return_label_1697, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1697:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s7, t2
	li t1, failed_addr
	ld a6, 0(t1)
	jr a6
	# assert_exception block end
excp_return_label_1697:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1698, excp_return_label_1698, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1698:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s4, t2
	li t4, failed_addr
	ld s0, 0(t4)
	jr s0
	# assert_exception block end
excp_return_label_1698:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1699, excp_return_label_1699, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1699:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a6, t2
	li t5, failed_addr
	ld a3, 0(t5)
	jr a3
	# assert_exception block end
excp_return_label_1699:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1700, excp_return_label_1700, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1700:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a7, t2
	li s4, failed_addr
	ld s7, 0(s4)
	jr s7
	# assert_exception block end
excp_return_label_1700:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1701, excp_return_label_1701, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1701:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s8, t2
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
	# assert_exception block end
excp_return_label_1701:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1702, excp_return_label_1702, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1702:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s3, t2
	li s2, failed_addr
	ld a2, 0(s2)
	jr a2
	# assert_exception block end
excp_return_label_1702:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1703, excp_return_label_1703, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1703:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s11, t2
	li s6, failed_addr
	ld t6, 0(s6)
	jr t6
	# assert_exception block end
excp_return_label_1703:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1704, excp_return_label_1704, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1704:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s11, t2
	li a5, failed_addr
	ld a0, 0(a5)
	jr a0
	# assert_exception block end
excp_return_label_1704:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1705, excp_return_label_1705, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1705:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s5, t2
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
	# assert_exception block end
excp_return_label_1705:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1706, excp_return_label_1706, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1706:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s11, t2
	li a2, failed_addr
	ld a0, 0(a2)
	jr a0
	# assert_exception block end
excp_return_label_1706:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1707, excp_return_label_1707, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1707:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a7, t2
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
	# assert_exception block end
excp_return_label_1707:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1708, excp_return_label_1708, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1708:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s2, t2
	li a1, failed_addr
	ld s0, 0(a1)
	jr s0
	# assert_exception block end
excp_return_label_1708:
	# Set only this field in both registers, clear all others
	li t2, 524288
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 524288
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s8, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1709, excp_return_label_1709, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1709:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s2, t2
	li s10, failed_addr
	ld s0, 0(s10)
	jr s0
	# assert_exception block end
excp_return_label_1709:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1710, excp_return_label_1710, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1710:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s9, t2
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_1710:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1711, excp_return_label_1711, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1711:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a5, t2
	li s2, failed_addr
	ld s2, 0(s2)
	jr s2
	# assert_exception block end
excp_return_label_1711:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1712, excp_return_label_1712, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1712:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s2, t2
	li a6, failed_addr
	ld s1, 0(a6)
	jr s1
	# assert_exception block end
excp_return_label_1712:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1713, excp_return_label_1713, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1713:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a6, t2
	li t2, failed_addr
	ld a2, 0(t2)
	jr a2
	# assert_exception block end
excp_return_label_1713:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1714, excp_return_label_1714, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1714:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a5, t2
	li s5, failed_addr
	ld s4, 0(s5)
	jr s4
	# assert_exception block end
excp_return_label_1714:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1715, excp_return_label_1715, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1715:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a3, t2
	li s6, failed_addr
	ld t1, 0(s6)
	jr t1
	# assert_exception block end
excp_return_label_1715:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1716, excp_return_label_1716, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1716:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a5, t2
	li a0, failed_addr
	ld a2, 0(a0)
	jr a2
	# assert_exception block end
excp_return_label_1716:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1717, excp_return_label_1717, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1717:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s5, t2
	li s8, failed_addr
	ld a0, 0(s8)
	jr a0
	# assert_exception block end
excp_return_label_1717:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1718, excp_return_label_1718, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1718:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a2, t2
	li a7, failed_addr
	ld t6, 0(a7)
	jr t6
	# assert_exception block end
excp_return_label_1718:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1719, excp_return_label_1719, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1719:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s6, t2
	li s8, failed_addr
	ld s10, 0(s8)
	jr s10
	# assert_exception block end
excp_return_label_1719:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1720, excp_return_label_1720, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1720:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a6, t2
	li a1, failed_addr
	ld s8, 0(a1)
	jr s8
	# assert_exception block end
excp_return_label_1720:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1721, excp_return_label_1721, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1721:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s2, t2
	li s6, failed_addr
	ld s9, 0(s6)
	jr s9
	# assert_exception block end
excp_return_label_1721:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1722, excp_return_label_1722, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1722:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s2, t2
	li s7, failed_addr
	ld s9, 0(s7)
	jr s9
	# assert_exception block end
excp_return_label_1722:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1723, excp_return_label_1723, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1723:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s8, t2
	li s4, failed_addr
	ld s5, 0(s4)
	jr s5
	# assert_exception block end
excp_return_label_1723:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1724, excp_return_label_1724, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1724:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s6, t2
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_1724:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1725, excp_return_label_1725, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1725:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a1, t2
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_1725:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1726, excp_return_label_1726, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1726:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s1, t2
	li s0, failed_addr
	ld s8, 0(s0)
	jr s8
	# assert_exception block end
excp_return_label_1726:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1727, excp_return_label_1727, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1727:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s4, t2
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_1727:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1728, excp_return_label_1728, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1728:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a0, t2
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
	# assert_exception block end
excp_return_label_1728:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1729, excp_return_label_1729, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1729:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t6, t2
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
	# assert_exception block end
excp_return_label_1729:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1730, excp_return_label_1730, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1730:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a2, t2
	li a5, failed_addr
	ld t6, 0(a5)
	jr t6
	# assert_exception block end
excp_return_label_1730:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1731, excp_return_label_1731, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1731:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t4, t2
	li s7, failed_addr
	ld s9, 0(s7)
	jr s9
	# assert_exception block end
excp_return_label_1731:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1732, excp_return_label_1732, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1732:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s0, t2
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
	# assert_exception block end
excp_return_label_1732:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1733, excp_return_label_1733, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1733:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s2, t2
	li s9, failed_addr
	ld s1, 0(s9)
	jr s1
	# assert_exception block end
excp_return_label_1733:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1734, excp_return_label_1734, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1734:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a0, t2
	li t5, failed_addr
	ld a0, 0(t5)
	jr a0
	# assert_exception block end
excp_return_label_1734:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1735, excp_return_label_1735, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1735:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s11, t2
	li s6, failed_addr
	ld t2, 0(s6)
	jr t2
	# assert_exception block end
excp_return_label_1735:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1736, excp_return_label_1736, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1736:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s0, t2
	li t4, failed_addr
	ld s10, 0(t4)
	jr s10
	# assert_exception block end
excp_return_label_1736:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1737, excp_return_label_1737, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1737:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t6, t2
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_1737:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1738, excp_return_label_1738, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1738:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s7, t2
	li s0, failed_addr
	ld s4, 0(s0)
	jr s4
	# assert_exception block end
excp_return_label_1738:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1739, excp_return_label_1739, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1739:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a5, t2
	li a2, failed_addr
	ld a2, 0(a2)
	jr a2
	# assert_exception block end
excp_return_label_1739:
	# Set only this field in both registers, clear all others
	li t2, 1048576
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 1048576
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a3, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1740, excp_return_label_1740, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1740:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t4, t2
	li s0, failed_addr
	ld a1, 0(s0)
	jr a1
	# assert_exception block end
excp_return_label_1740:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1741, excp_return_label_1741, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1741:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t2, t2
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
	# assert_exception block end
excp_return_label_1741:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1742, excp_return_label_1742, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1742:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s8, t2
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
	# assert_exception block end
excp_return_label_1742:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1743, excp_return_label_1743, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1743:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a6, t2
	li s11, failed_addr
	ld t3, 0(s11)
	jr t3
	# assert_exception block end
excp_return_label_1743:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1744, excp_return_label_1744, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1744:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t3, t2
	li s0, failed_addr
	ld t5, 0(s0)
	jr t5
	# assert_exception block end
excp_return_label_1744:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1745, excp_return_label_1745, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1745:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a1, t2
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_1745:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1746, excp_return_label_1746, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1746:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a5, t2
	li t4, failed_addr
	ld a4, 0(t4)
	jr a4
	# assert_exception block end
excp_return_label_1746:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1747, excp_return_label_1747, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1747:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a5, t2
	li a7, failed_addr
	ld a1, 0(a7)
	jr a1
	# assert_exception block end
excp_return_label_1747:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1748, excp_return_label_1748, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1748:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s11, t2
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
	# assert_exception block end
excp_return_label_1748:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1749, excp_return_label_1749, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1749:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a6, t2
	li t3, failed_addr
	ld a6, 0(t3)
	jr a6
	# assert_exception block end
excp_return_label_1749:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1750, excp_return_label_1750, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1750:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s8, t2
	li a1, failed_addr
	ld t2, 0(a1)
	jr t2
	# assert_exception block end
excp_return_label_1750:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1751, excp_return_label_1751, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1751:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t4, t2
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
	# assert_exception block end
excp_return_label_1751:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1752, excp_return_label_1752, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1752:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t4, t2
	li s7, failed_addr
	ld t5, 0(s7)
	jr t5
	# assert_exception block end
excp_return_label_1752:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1753, excp_return_label_1753, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1753:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a0, t2
	li s1, failed_addr
	ld s9, 0(s1)
	jr s9
	# assert_exception block end
excp_return_label_1753:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1754, excp_return_label_1754, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1754:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s1, t2
	li a3, failed_addr
	ld s9, 0(a3)
	jr s9
	# assert_exception block end
excp_return_label_1754:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1755, excp_return_label_1755, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1755:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a7, t2
	li t1, failed_addr
	ld t5, 0(t1)
	jr t5
	# assert_exception block end
excp_return_label_1755:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1756, excp_return_label_1756, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1756:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s8, t2
	li t1, failed_addr
	ld a6, 0(t1)
	jr a6
	# assert_exception block end
excp_return_label_1756:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1757, excp_return_label_1757, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1757:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s5, t2
	li t6, failed_addr
	ld s2, 0(t6)
	jr s2
	# assert_exception block end
excp_return_label_1757:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1758, excp_return_label_1758, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1758:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a0, t2
	li t1, failed_addr
	ld a4, 0(t1)
	jr a4
	# assert_exception block end
excp_return_label_1758:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1759, excp_return_label_1759, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1759:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s4, t2
	li t3, failed_addr
	ld a4, 0(t3)
	jr a4
	# assert_exception block end
excp_return_label_1759:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1760, excp_return_label_1760, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1760:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s8, t2
	li s9, failed_addr
	ld a5, 0(s9)
	jr a5
	# assert_exception block end
excp_return_label_1760:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1761, excp_return_label_1761, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1761:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a4, t2
	li s0, failed_addr
	ld s7, 0(s0)
	jr s7
	# assert_exception block end
excp_return_label_1761:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1762, excp_return_label_1762, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1762:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s8, t2
	li s10, failed_addr
	ld s7, 0(s10)
	jr s7
	# assert_exception block end
excp_return_label_1762:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1763, excp_return_label_1763, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1763:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s5, t2
	li a6, failed_addr
	ld s9, 0(a6)
	jr s9
	# assert_exception block end
excp_return_label_1763:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1764, excp_return_label_1764, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1764:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s4, t2
	li s4, failed_addr
	ld t2, 0(s4)
	jr t2
	# assert_exception block end
excp_return_label_1764:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1765, excp_return_label_1765, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1765:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t4, t2
	li t1, failed_addr
	ld a6, 0(t1)
	jr a6
	# assert_exception block end
excp_return_label_1765:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1766, excp_return_label_1766, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1766:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s0, t2
	li s5, failed_addr
	ld s1, 0(s5)
	jr s1
	# assert_exception block end
excp_return_label_1766:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1767, excp_return_label_1767, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1767:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s6, t2
	li s9, failed_addr
	ld t5, 0(s9)
	jr t5
	# assert_exception block end
excp_return_label_1767:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1768, excp_return_label_1768, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1768:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s1, t2
	li s2, failed_addr
	ld s1, 0(s2)
	jr s1
	# assert_exception block end
excp_return_label_1768:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1769, excp_return_label_1769, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1769:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a3, t2
	li a1, failed_addr
	ld a4, 0(a1)
	jr a4
	# assert_exception block end
excp_return_label_1769:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1770, excp_return_label_1770, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1770:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s6, t2
	li s3, failed_addr
	ld a2, 0(s3)
	jr a2
	# assert_exception block end
excp_return_label_1770:
	# Set only this field in both registers, clear all others
	li t2, 2097152
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 2097152
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t1, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1771, excp_return_label_1771, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1771:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s4, t2
	li s8, failed_addr
	ld a7, 0(s8)
	jr a7
	# assert_exception block end
excp_return_label_1771:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1772, excp_return_label_1772, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1772:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s0, t2
	li s4, failed_addr
	ld s8, 0(s4)
	jr s8
	# assert_exception block end
excp_return_label_1772:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1773, excp_return_label_1773, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1773:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a5, t2
	li s10, failed_addr
	ld a0, 0(s10)
	jr a0
	# assert_exception block end
excp_return_label_1773:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1774, excp_return_label_1774, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1774:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a5, t2
	li a6, failed_addr
	ld s0, 0(a6)
	jr s0
	# assert_exception block end
excp_return_label_1774:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1775, excp_return_label_1775, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1775:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s6, t2
	li s2, failed_addr
	ld s6, 0(s2)
	jr s6
	# assert_exception block end
excp_return_label_1775:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1776, excp_return_label_1776, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1776:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t2, t2
	li t4, failed_addr
	ld t3, 0(t4)
	jr t3
	# assert_exception block end
excp_return_label_1776:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1777, excp_return_label_1777, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1777:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s1, t2
	li t2, failed_addr
	ld t5, 0(t2)
	jr t5
	# assert_exception block end
excp_return_label_1777:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1778, excp_return_label_1778, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1778:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s2, t2
	li s8, failed_addr
	ld a1, 0(s8)
	jr a1
	# assert_exception block end
excp_return_label_1778:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1779, excp_return_label_1779, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1779:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t2, t2
	li s10, failed_addr
	ld t4, 0(s10)
	jr t4
	# assert_exception block end
excp_return_label_1779:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1780, excp_return_label_1780, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1780:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s0, t2
	li a3, failed_addr
	ld s8, 0(a3)
	jr s8
	# assert_exception block end
excp_return_label_1780:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1781, excp_return_label_1781, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1781:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s7, t2
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
	# assert_exception block end
excp_return_label_1781:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1782, excp_return_label_1782, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1782:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t1, t2
	li a2, failed_addr
	ld s5, 0(a2)
	jr s5
	# assert_exception block end
excp_return_label_1782:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1783, excp_return_label_1783, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1783:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s1, t2
	li s3, failed_addr
	ld a5, 0(s3)
	jr a5
	# assert_exception block end
excp_return_label_1783:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1784, excp_return_label_1784, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1784:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a0, t2
	li a2, failed_addr
	ld s5, 0(a2)
	jr s5
	# assert_exception block end
excp_return_label_1784:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1785, excp_return_label_1785, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1785:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a0, t2
	li a7, failed_addr
	ld t1, 0(a7)
	jr t1
	# assert_exception block end
excp_return_label_1785:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1786, excp_return_label_1786, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1786:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t5, t2
	li s9, failed_addr
	ld t5, 0(s9)
	jr t5
	# assert_exception block end
excp_return_label_1786:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1787, excp_return_label_1787, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1787:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t5, t2
	li a2, failed_addr
	ld s0, 0(a2)
	jr s0
	# assert_exception block end
excp_return_label_1787:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1788, excp_return_label_1788, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1788:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a4, t2
	li s8, failed_addr
	ld a0, 0(s8)
	jr a0
	# assert_exception block end
excp_return_label_1788:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1789, excp_return_label_1789, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1789:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s10, t2
	li t3, failed_addr
	ld s8, 0(t3)
	jr s8
	# assert_exception block end
excp_return_label_1789:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1790, excp_return_label_1790, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1790:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a2, t2
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
	# assert_exception block end
excp_return_label_1790:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1791, excp_return_label_1791, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1791:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t2, t2
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_1791:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1792, excp_return_label_1792, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1792:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s5, t2
	li a0, failed_addr
	ld t4, 0(a0)
	jr t4
	# assert_exception block end
excp_return_label_1792:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1793, excp_return_label_1793, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1793:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s6, t2
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
	# assert_exception block end
excp_return_label_1793:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1794, excp_return_label_1794, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1794:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a6, t2
	li a6, failed_addr
	ld s0, 0(a6)
	jr s0
	# assert_exception block end
excp_return_label_1794:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1795, excp_return_label_1795, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1795:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a6, t2
	li t3, failed_addr
	ld s9, 0(t3)
	jr s9
	# assert_exception block end
excp_return_label_1795:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1796, excp_return_label_1796, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1796:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s1, t2
	li s5, failed_addr
	ld t3, 0(s5)
	jr t3
	# assert_exception block end
excp_return_label_1796:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1797, excp_return_label_1797, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1797:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a2, t2
	li t1, failed_addr
	ld t5, 0(t1)
	jr t5
	# assert_exception block end
excp_return_label_1797:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1798, excp_return_label_1798, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1798:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t3, t2
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_1798:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1799, excp_return_label_1799, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1799:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t6, t2
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_1799:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1800, excp_return_label_1800, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1800:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s6, t2
	li t3, failed_addr
	ld s1, 0(t3)
	jr s1
	# assert_exception block end
excp_return_label_1800:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1801, excp_return_label_1801, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1801:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a5, t2
	li s6, failed_addr
	ld t2, 0(s6)
	jr t2
	# assert_exception block end
excp_return_label_1801:
	# Set only this field in both registers, clear all others
	li t2, 4194304
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 4194304
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a2, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1802, excp_return_label_1802, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1802:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t6, t2
	li s0, failed_addr
	ld a6, 0(s0)
	jr a6
	# assert_exception block end
excp_return_label_1802:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1803, excp_return_label_1803, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1803:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s3, t2
	li a3, failed_addr
	ld s10, 0(a3)
	jr s10
	# assert_exception block end
excp_return_label_1803:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1804, excp_return_label_1804, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1804:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s6, t2
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_1804:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1805, excp_return_label_1805, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1805:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s5, t2
	li a3, failed_addr
	ld a0, 0(a3)
	jr a0
	# assert_exception block end
excp_return_label_1805:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1806, excp_return_label_1806, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1806:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a7, t2
	li s1, failed_addr
	ld t1, 0(s1)
	jr t1
	# assert_exception block end
excp_return_label_1806:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1807, excp_return_label_1807, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1807:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s4, t2
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
	# assert_exception block end
excp_return_label_1807:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1808, excp_return_label_1808, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1808:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a1, t2
	li t1, failed_addr
	ld t3, 0(t1)
	jr t3
	# assert_exception block end
excp_return_label_1808:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1809, excp_return_label_1809, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1809:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s6, t2
	li a0, failed_addr
	ld s9, 0(a0)
	jr s9
	# assert_exception block end
excp_return_label_1809:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1810, excp_return_label_1810, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1810:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t3, t2
	li a6, failed_addr
	ld s4, 0(a6)
	jr s4
	# assert_exception block end
excp_return_label_1810:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1811, excp_return_label_1811, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1811:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t3, t2
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_1811:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1812, excp_return_label_1812, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1812:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a2, t2
	li s4, failed_addr
	ld a3, 0(s4)
	jr a3
	# assert_exception block end
excp_return_label_1812:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1813, excp_return_label_1813, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1813:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s8, t2
	li s5, failed_addr
	ld t2, 0(s5)
	jr t2
	# assert_exception block end
excp_return_label_1813:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1814, excp_return_label_1814, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1814:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a7, t2
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_1814:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1815, excp_return_label_1815, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1815:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a0, t2
	li s11, failed_addr
	ld a0, 0(s11)
	jr a0
	# assert_exception block end
excp_return_label_1815:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1816, excp_return_label_1816, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1816:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t3, t2
	li t1, failed_addr
	ld s2, 0(t1)
	jr s2
	# assert_exception block end
excp_return_label_1816:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1817, excp_return_label_1817, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1817:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s7, t2
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_1817:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1818, excp_return_label_1818, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1818:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t6, t2
	li s3, failed_addr
	ld a4, 0(s3)
	jr a4
	# assert_exception block end
excp_return_label_1818:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1819, excp_return_label_1819, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1819:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s3, t2
	li s5, failed_addr
	ld a1, 0(s5)
	jr a1
	# assert_exception block end
excp_return_label_1819:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1820, excp_return_label_1820, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1820:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t4, t2
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_1820:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1821, excp_return_label_1821, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1821:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a0, t2
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_1821:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1822, excp_return_label_1822, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1822:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t1, t2
	li t5, failed_addr
	ld a0, 0(t5)
	jr a0
	# assert_exception block end
excp_return_label_1822:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1823, excp_return_label_1823, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1823:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv s2, t2
	li t1, failed_addr
	ld t6, 0(t1)
	jr t6
	# assert_exception block end
excp_return_label_1823:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1824, excp_return_label_1824, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1824:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv a5, t2
	li a3, failed_addr
	ld a2, 0(a3)
	jr a2
	# assert_exception block end
excp_return_label_1824:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1825, excp_return_label_1825, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1825:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s0, t2
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_1825:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1826, excp_return_label_1826, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1826:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s1, t2
	li a2, failed_addr
	ld a7, 0(a2)
	jr a7
	# assert_exception block end
excp_return_label_1826:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1827, excp_return_label_1827, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1827:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a0, t2
	li a1, failed_addr
	ld s6, 0(a1)
	jr s6
	# assert_exception block end
excp_return_label_1827:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1828, excp_return_label_1828, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1828:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s8, t2
	li t6, failed_addr
	ld s6, 0(t6)
	jr s6
	# assert_exception block end
excp_return_label_1828:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1829, excp_return_label_1829, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1829:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t3, t2
	li s0, failed_addr
	ld s11, 0(s0)
	jr s11
	# assert_exception block end
excp_return_label_1829:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1830, excp_return_label_1830, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1830:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a4, t2
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
	# assert_exception block end
excp_return_label_1830:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1831, excp_return_label_1831, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1831:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s1, t2
	li t5, failed_addr
	ld a6, 0(t5)
	jr a6
	# assert_exception block end
excp_return_label_1831:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1832, excp_return_label_1832, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1832:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s6, t2
	li s5, failed_addr
	ld s4, 0(s5)
	jr s4
	# assert_exception block end
excp_return_label_1832:
	# Set only this field in both registers, clear all others
	li t2, 8388608
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 8388608
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s6, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1833, excp_return_label_1833, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1833:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s8, t2
	li s11, failed_addr
	ld a0, 0(s11)
	jr a0
	# assert_exception block end
excp_return_label_1833:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1834, excp_return_label_1834, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1834:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t1, t2
	li s9, failed_addr
	ld a6, 0(s9)
	jr a6
	# assert_exception block end
excp_return_label_1834:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1835, excp_return_label_1835, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1835:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a1, t2
	li a2, failed_addr
	ld s4, 0(a2)
	jr s4
	# assert_exception block end
excp_return_label_1835:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1836, excp_return_label_1836, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1836:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a5, t2
	li a3, failed_addr
	ld t3, 0(a3)
	jr t3
	# assert_exception block end
excp_return_label_1836:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1837, excp_return_label_1837, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1837:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t6, t2
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_1837:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1838, excp_return_label_1838, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1838:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s5, t2
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
	# assert_exception block end
excp_return_label_1838:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1839, excp_return_label_1839, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1839:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv t5, t2
	li a1, failed_addr
	ld a1, 0(a1)
	jr a1
	# assert_exception block end
excp_return_label_1839:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1840, excp_return_label_1840, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1840:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a1, t2
	li s9, failed_addr
	ld t6, 0(s9)
	jr t6
	# assert_exception block end
excp_return_label_1840:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1841, excp_return_label_1841, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1841:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv t2, t2
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
	# assert_exception block end
excp_return_label_1841:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1842, excp_return_label_1842, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1842:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a4, t2
	li s0, failed_addr
	ld s11, 0(s0)
	jr s11
	# assert_exception block end
excp_return_label_1842:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1843, excp_return_label_1843, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1843:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s3, t2
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
	# assert_exception block end
excp_return_label_1843:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1844, excp_return_label_1844, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1844:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s10, t2
	li t2, failed_addr
	ld s7, 0(t2)
	jr s7
	# assert_exception block end
excp_return_label_1844:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1845, excp_return_label_1845, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1845:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s0, t2
	li a5, failed_addr
	ld a7, 0(a5)
	jr a7
	# assert_exception block end
excp_return_label_1845:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1846, excp_return_label_1846, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1846:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t2, t2
	li a4, failed_addr
	ld s7, 0(a4)
	jr s7
	# assert_exception block end
excp_return_label_1846:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1847, excp_return_label_1847, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1847:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a0, t2
	li s4, failed_addr
	ld s10, 0(s4)
	jr s10
	# assert_exception block end
excp_return_label_1847:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1848, excp_return_label_1848, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1848:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s1, t2
	li s11, failed_addr
	ld t2, 0(s11)
	jr t2
	# assert_exception block end
excp_return_label_1848:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1849, excp_return_label_1849, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1849:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t1, t2
	li a4, failed_addr
	ld s2, 0(a4)
	jr s2
	# assert_exception block end
excp_return_label_1849:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1850, excp_return_label_1850, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1850:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t2, t2
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
	# assert_exception block end
excp_return_label_1850:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1851, excp_return_label_1851, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1851:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s3, t2
	li s2, failed_addr
	ld t2, 0(s2)
	jr t2
	# assert_exception block end
excp_return_label_1851:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1852, excp_return_label_1852, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1852:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s0, t2
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_1852:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1853, excp_return_label_1853, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1853:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a3, t2
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
	# assert_exception block end
excp_return_label_1853:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1854, excp_return_label_1854, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1854:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t2, t2
	li s8, failed_addr
	ld s10, 0(s8)
	jr s10
	# assert_exception block end
excp_return_label_1854:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1855, excp_return_label_1855, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1855:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s4, t2
	li t4, failed_addr
	ld a7, 0(t4)
	jr a7
	# assert_exception block end
excp_return_label_1855:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1856, excp_return_label_1856, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1856:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t6, t2
	li s1, failed_addr
	ld a2, 0(s1)
	jr a2
	# assert_exception block end
excp_return_label_1856:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1857, excp_return_label_1857, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1857:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s3, t2
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
	# assert_exception block end
excp_return_label_1857:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1858, excp_return_label_1858, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1858:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t5, t2
	li s8, failed_addr
	ld s8, 0(s8)
	jr s8
	# assert_exception block end
excp_return_label_1858:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1859, excp_return_label_1859, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1859:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s8, t2
	li a3, failed_addr
	ld s2, 0(a3)
	jr s2
	# assert_exception block end
excp_return_label_1859:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1860, excp_return_label_1860, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1860:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s8, t2
	li a5, failed_addr
	ld a0, 0(a5)
	jr a0
	# assert_exception block end
excp_return_label_1860:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1861, excp_return_label_1861, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1861:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a5, t2
	li a3, failed_addr
	ld t1, 0(a3)
	jr t1
	# assert_exception block end
excp_return_label_1861:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1862, excp_return_label_1862, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1862:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a3, t2
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
	# assert_exception block end
excp_return_label_1862:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1863, excp_return_label_1863, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1863:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a4, t2
	li s5, failed_addr
	ld t3, 0(s5)
	jr t3
	# assert_exception block end
excp_return_label_1863:
	# Set only this field in both registers, clear all others
	li t2, 16777216
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 16777216
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a6, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1864, excp_return_label_1864, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1864:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s5, t2
	li s10, failed_addr
	ld t4, 0(s10)
	jr t4
	# assert_exception block end
excp_return_label_1864:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1865, excp_return_label_1865, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1865:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a0, t2
	li s6, failed_addr
	ld t4, 0(s6)
	jr t4
	# assert_exception block end
excp_return_label_1865:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1866, excp_return_label_1866, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1866:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s9, t2
	li a7, failed_addr
	ld a7, 0(a7)
	jr a7
	# assert_exception block end
excp_return_label_1866:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1867, excp_return_label_1867, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1867:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s5, t2
	li t3, failed_addr
	ld t5, 0(t3)
	jr t5
	# assert_exception block end
excp_return_label_1867:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1868, excp_return_label_1868, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1868:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s0, t2
	li t3, failed_addr
	ld a7, 0(t3)
	jr a7
	# assert_exception block end
excp_return_label_1868:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1869, excp_return_label_1869, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1869:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s2, t2
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_1869:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1870, excp_return_label_1870, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1870:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a2, t2
	li a0, failed_addr
	ld a6, 0(a0)
	jr a6
	# assert_exception block end
excp_return_label_1870:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1871, excp_return_label_1871, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1871:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a3, t2
	li a3, failed_addr
	ld t5, 0(a3)
	jr t5
	# assert_exception block end
excp_return_label_1871:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1872, excp_return_label_1872, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1872:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s7, t2
	li s9, failed_addr
	ld s3, 0(s9)
	jr s3
	# assert_exception block end
excp_return_label_1872:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1873, excp_return_label_1873, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1873:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s6, t2
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
	# assert_exception block end
excp_return_label_1873:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1874, excp_return_label_1874, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1874:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a7, t2
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_1874:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1875, excp_return_label_1875, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1875:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a3, t2
	li s3, failed_addr
	ld a2, 0(s3)
	jr a2
	# assert_exception block end
excp_return_label_1875:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1876, excp_return_label_1876, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1876:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s9, t2
	li s5, failed_addr
	ld s11, 0(s5)
	jr s11
	# assert_exception block end
excp_return_label_1876:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1877, excp_return_label_1877, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1877:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t6, t2
	li t6, failed_addr
	ld s4, 0(t6)
	jr s4
	# assert_exception block end
excp_return_label_1877:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1878, excp_return_label_1878, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1878:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s4, t2
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_1878:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1879, excp_return_label_1879, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1879:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t6, t2
	li t4, failed_addr
	ld s7, 0(t4)
	jr s7
	# assert_exception block end
excp_return_label_1879:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1880, excp_return_label_1880, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1880:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a5, t2
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
	# assert_exception block end
excp_return_label_1880:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1881, excp_return_label_1881, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1881:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s11, t2
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_1881:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1882, excp_return_label_1882, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1882:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t3, t2
	li s2, failed_addr
	ld a2, 0(s2)
	jr a2
	# assert_exception block end
excp_return_label_1882:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1883, excp_return_label_1883, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1883:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a1, t2
	li s7, failed_addr
	ld a2, 0(s7)
	jr a2
	# assert_exception block end
excp_return_label_1883:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1884, excp_return_label_1884, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1884:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s7, t2
	li s3, failed_addr
	ld s6, 0(s3)
	jr s6
	# assert_exception block end
excp_return_label_1884:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1885, excp_return_label_1885, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1885:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a6, t2
	li t5, failed_addr
	ld a2, 0(t5)
	jr a2
	# assert_exception block end
excp_return_label_1885:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1886, excp_return_label_1886, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1886:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a6, t2
	li s0, failed_addr
	ld s10, 0(s0)
	jr s10
	# assert_exception block end
excp_return_label_1886:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1887, excp_return_label_1887, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1887:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s10, t2
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_1887:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1888, excp_return_label_1888, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1888:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a5, t2
	li s4, failed_addr
	ld t3, 0(s4)
	jr t3
	# assert_exception block end
excp_return_label_1888:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1889, excp_return_label_1889, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1889:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s1, t2
	li s5, failed_addr
	ld t3, 0(s5)
	jr t3
	# assert_exception block end
excp_return_label_1889:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1890, excp_return_label_1890, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1890:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t1, t2
	li s9, failed_addr
	ld s9, 0(s9)
	jr s9
	# assert_exception block end
excp_return_label_1890:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1891, excp_return_label_1891, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1891:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s0, t2
	li t1, failed_addr
	ld a6, 0(t1)
	jr a6
	# assert_exception block end
excp_return_label_1891:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1892, excp_return_label_1892, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1892:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s0, t2
	li a2, failed_addr
	ld s7, 0(a2)
	jr s7
	# assert_exception block end
excp_return_label_1892:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1893, excp_return_label_1893, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1893:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a6, t2
	li a0, failed_addr
	ld t5, 0(a0)
	jr t5
	# assert_exception block end
excp_return_label_1893:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1894, excp_return_label_1894, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1894:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s4, t2
	li t2, failed_addr
	ld s8, 0(t2)
	jr s8
	# assert_exception block end
excp_return_label_1894:
	# Set only this field in both registers, clear all others
	li t2, 33554432
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 33554432
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t2, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1895, excp_return_label_1895, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1895:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t3, t2
	li a5, failed_addr
	ld s6, 0(a5)
	jr s6
	# assert_exception block end
excp_return_label_1895:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1896, excp_return_label_1896, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1896:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a2, t2
	li a4, failed_addr
	ld s10, 0(a4)
	jr s10
	# assert_exception block end
excp_return_label_1896:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1897, excp_return_label_1897, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1897:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a7, t2
	li s9, failed_addr
	ld s1, 0(s9)
	jr s1
	# assert_exception block end
excp_return_label_1897:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1898, excp_return_label_1898, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1898:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a7, t2
	li t6, failed_addr
	ld t3, 0(t6)
	jr t3
	# assert_exception block end
excp_return_label_1898:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1899, excp_return_label_1899, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1899:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t4, t2
	li t4, failed_addr
	ld a3, 0(t4)
	jr a3
	# assert_exception block end
excp_return_label_1899:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1900, excp_return_label_1900, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1900:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv a1, t2
	li a7, failed_addr
	ld a2, 0(a7)
	jr a2
	# assert_exception block end
excp_return_label_1900:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1901, excp_return_label_1901, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1901:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s11, t2
	li s11, failed_addr
	ld a3, 0(s11)
	jr a3
	# assert_exception block end
excp_return_label_1901:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1902, excp_return_label_1902, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1902:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a0, t2
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_1902:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1903, excp_return_label_1903, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1903:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s10, t2
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_1903:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1904, excp_return_label_1904, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1904:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a2, t2
	li s9, failed_addr
	ld s4, 0(s9)
	jr s4
	# assert_exception block end
excp_return_label_1904:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1905, excp_return_label_1905, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1905:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a0, t2
	li s10, failed_addr
	ld a5, 0(s10)
	jr a5
	# assert_exception block end
excp_return_label_1905:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1906, excp_return_label_1906, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1906:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a6, t2
	li a5, failed_addr
	ld s8, 0(a5)
	jr s8
	# assert_exception block end
excp_return_label_1906:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1907, excp_return_label_1907, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1907:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv t5, t2
	li s5, failed_addr
	ld a1, 0(s5)
	jr a1
	# assert_exception block end
excp_return_label_1907:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1908, excp_return_label_1908, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1908:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s11, t2
	li t1, failed_addr
	ld s6, 0(t1)
	jr s6
	# assert_exception block end
excp_return_label_1908:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1909, excp_return_label_1909, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1909:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv t2, t2
	li a5, failed_addr
	ld t4, 0(a5)
	jr t4
	# assert_exception block end
excp_return_label_1909:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1910, excp_return_label_1910, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1910:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t3, t2
	li s9, failed_addr
	ld s9, 0(s9)
	jr s9
	# assert_exception block end
excp_return_label_1910:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1911, excp_return_label_1911, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1911:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a1, t2
	li s11, failed_addr
	ld s8, 0(s11)
	jr s8
	# assert_exception block end
excp_return_label_1911:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1912, excp_return_label_1912, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1912:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t2, t2
	li s8, failed_addr
	ld a1, 0(s8)
	jr a1
	# assert_exception block end
excp_return_label_1912:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1913, excp_return_label_1913, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1913:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s7, t2
	li t5, failed_addr
	ld t3, 0(t5)
	jr t3
	# assert_exception block end
excp_return_label_1913:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1914, excp_return_label_1914, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1914:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s10, t2
	li a7, failed_addr
	ld s0, 0(a7)
	jr s0
	# assert_exception block end
excp_return_label_1914:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1915, excp_return_label_1915, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1915:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s7, t2
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_1915:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1916, excp_return_label_1916, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1916:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a2, t2
	li s7, failed_addr
	ld a1, 0(s7)
	jr a1
	# assert_exception block end
excp_return_label_1916:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1917, excp_return_label_1917, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1917:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s0, t2
	li a4, failed_addr
	ld t5, 0(a4)
	jr t5
	# assert_exception block end
excp_return_label_1917:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1918, excp_return_label_1918, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1918:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s8, t2
	li a6, failed_addr
	ld t6, 0(a6)
	jr t6
	# assert_exception block end
excp_return_label_1918:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1919, excp_return_label_1919, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1919:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv a3, t2
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
	# assert_exception block end
excp_return_label_1919:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1920, excp_return_label_1920, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1920:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s9, t2
	li s10, failed_addr
	ld s6, 0(s10)
	jr s6
	# assert_exception block end
excp_return_label_1920:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1921, excp_return_label_1921, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1921:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s1, t2
	li a3, failed_addr
	ld a7, 0(a3)
	jr a7
	# assert_exception block end
excp_return_label_1921:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1922, excp_return_label_1922, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1922:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s0, t2
	li s8, failed_addr
	ld s6, 0(s8)
	jr s6
	# assert_exception block end
excp_return_label_1922:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1923, excp_return_label_1923, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1923:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s1, t2
	li a7, failed_addr
	ld s4, 0(a7)
	jr s4
	# assert_exception block end
excp_return_label_1923:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1924, excp_return_label_1924, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1924:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t4, t2
	li t6, failed_addr
	ld a4, 0(t6)
	jr a4
	# assert_exception block end
excp_return_label_1924:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1925, excp_return_label_1925, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1925:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s0, t2
	li a4, failed_addr
	ld a3, 0(a4)
	jr a3
	# assert_exception block end
excp_return_label_1925:
	# Set only this field in both registers, clear all others
	li t2, 67108864
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 67108864
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a6, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1926, excp_return_label_1926, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1926:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv a4, t2
	li s5, failed_addr
	ld s6, 0(s5)
	jr s6
	# assert_exception block end
excp_return_label_1926:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1927, excp_return_label_1927, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1927:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t5, t2
	li s2, failed_addr
	ld s7, 0(s2)
	jr s7
	# assert_exception block end
excp_return_label_1927:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1928, excp_return_label_1928, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1928:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s10, t2
	li t4, failed_addr
	ld s2, 0(t4)
	jr s2
	# assert_exception block end
excp_return_label_1928:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1929, excp_return_label_1929, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1929:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s7, t2
	li s11, failed_addr
	ld a1, 0(s11)
	jr a1
	# assert_exception block end
excp_return_label_1929:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1930, excp_return_label_1930, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1930:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s1, t2
	li s11, failed_addr
	ld s6, 0(s11)
	jr s6
	# assert_exception block end
excp_return_label_1930:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1931, excp_return_label_1931, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1931:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s2, t2
	li a0, failed_addr
	ld s9, 0(a0)
	jr s9
	# assert_exception block end
excp_return_label_1931:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1932, excp_return_label_1932, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1932:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv a1, t2
	li s0, failed_addr
	ld t1, 0(s0)
	jr t1
	# assert_exception block end
excp_return_label_1932:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1933, excp_return_label_1933, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1933:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s9, t2
	li a2, failed_addr
	ld a6, 0(a2)
	jr a6
	# assert_exception block end
excp_return_label_1933:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1934, excp_return_label_1934, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1934:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s0, t2
	li a0, failed_addr
	ld s8, 0(a0)
	jr s8
	# assert_exception block end
excp_return_label_1934:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1935, excp_return_label_1935, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1935:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t6, t2
	li a0, failed_addr
	ld a6, 0(a0)
	jr a6
	# assert_exception block end
excp_return_label_1935:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1936, excp_return_label_1936, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1936:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t1, t2
	li s6, failed_addr
	ld s0, 0(s6)
	jr s0
	# assert_exception block end
excp_return_label_1936:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1937, excp_return_label_1937, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1937:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s5, t2
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
	# assert_exception block end
excp_return_label_1937:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1938, excp_return_label_1938, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1938:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a5, t2
	li a3, failed_addr
	ld a0, 0(a3)
	jr a0
	# assert_exception block end
excp_return_label_1938:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1939, excp_return_label_1939, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1939:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv t2, t2
	li s9, failed_addr
	ld s6, 0(s9)
	jr s6
	# assert_exception block end
excp_return_label_1939:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1940, excp_return_label_1940, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1940:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s1, t2
	li s6, failed_addr
	ld t6, 0(s6)
	jr t6
	# assert_exception block end
excp_return_label_1940:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1941, excp_return_label_1941, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1941:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a7, t2
	li a3, failed_addr
	ld s0, 0(a3)
	jr s0
	# assert_exception block end
excp_return_label_1941:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1942, excp_return_label_1942, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1942:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv t5, t2
	li a7, failed_addr
	ld s0, 0(a7)
	jr s0
	# assert_exception block end
excp_return_label_1942:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1943, excp_return_label_1943, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1943:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv a0, t2
	li s11, failed_addr
	ld s2, 0(s11)
	jr s2
	# assert_exception block end
excp_return_label_1943:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1944, excp_return_label_1944, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1944:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s1, t2
	li s4, failed_addr
	ld a7, 0(s4)
	jr a7
	# assert_exception block end
excp_return_label_1944:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1945, excp_return_label_1945, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1945:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s4, t2
	li a1, failed_addr
	ld s0, 0(a1)
	jr s0
	# assert_exception block end
excp_return_label_1945:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1946, excp_return_label_1946, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1946:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t5, t2
	li s7, failed_addr
	ld t3, 0(s7)
	jr t3
	# assert_exception block end
excp_return_label_1946:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1947, excp_return_label_1947, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1947:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t5, t2
	li a6, failed_addr
	ld t1, 0(a6)
	jr t1
	# assert_exception block end
excp_return_label_1947:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1948, excp_return_label_1948, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1948:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s3, t2
	li a0, failed_addr
	ld s9, 0(a0)
	jr s9
	# assert_exception block end
excp_return_label_1948:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1949, excp_return_label_1949, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1949:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s6, t2
	li a0, failed_addr
	ld s7, 0(a0)
	jr s7
	# assert_exception block end
excp_return_label_1949:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1950, excp_return_label_1950, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1950:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t3, t2
	li s9, failed_addr
	ld s4, 0(s9)
	jr s4
	# assert_exception block end
excp_return_label_1950:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1951, excp_return_label_1951, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1951:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t1, t2
	li a1, failed_addr
	ld s5, 0(a1)
	jr s5
	# assert_exception block end
excp_return_label_1951:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1952, excp_return_label_1952, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1952:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv t2, t2
	li a3, failed_addr
	ld a4, 0(a3)
	jr a4
	# assert_exception block end
excp_return_label_1952:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1953, excp_return_label_1953, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1953:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s2, t2
	li t3, failed_addr
	ld s4, 0(t3)
	jr s4
	# assert_exception block end
excp_return_label_1953:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1954, excp_return_label_1954, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1954:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t4, t2
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_1954:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1955, excp_return_label_1955, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1955:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s5, t2
	li s8, failed_addr
	ld s8, 0(s8)
	jr s8
	# assert_exception block end
excp_return_label_1955:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1956, excp_return_label_1956, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1956:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s10, t2
	li a7, failed_addr
	ld s4, 0(a7)
	jr s4
	# assert_exception block end
excp_return_label_1956:
	# Set only this field in both registers, clear all others
	li t2, 134217728
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 134217728
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s6, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1957, excp_return_label_1957, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1957:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s3, t2
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_1957:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1958, excp_return_label_1958, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1958:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a1, t2
	li s0, failed_addr
	ld s1, 0(s0)
	jr s1
	# assert_exception block end
excp_return_label_1958:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1959, excp_return_label_1959, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1959:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a3, t2
	li s5, failed_addr
	ld a4, 0(s5)
	jr a4
	# assert_exception block end
excp_return_label_1959:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1960, excp_return_label_1960, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1960:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a1, t2
	li a5, failed_addr
	ld t1, 0(a5)
	jr t1
	# assert_exception block end
excp_return_label_1960:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1961, excp_return_label_1961, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1961:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s11, t2
	li a1, failed_addr
	ld s6, 0(a1)
	jr s6
	# assert_exception block end
excp_return_label_1961:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1962, excp_return_label_1962, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1962:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t5, t2
	li s6, failed_addr
	ld t1, 0(s6)
	jr t1
	# assert_exception block end
excp_return_label_1962:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1963, excp_return_label_1963, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1963:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s10, t2
	li s8, failed_addr
	ld a7, 0(s8)
	jr a7
	# assert_exception block end
excp_return_label_1963:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1964, excp_return_label_1964, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1964:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t1, t2
	li a7, failed_addr
	ld s1, 0(a7)
	jr s1
	# assert_exception block end
excp_return_label_1964:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1965, excp_return_label_1965, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1965:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s4, t2
	li s4, failed_addr
	ld s5, 0(s4)
	jr s5
	# assert_exception block end
excp_return_label_1965:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1966, excp_return_label_1966, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1966:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a1, t2
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
	# assert_exception block end
excp_return_label_1966:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1967, excp_return_label_1967, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1967:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s7, t2
	li a7, failed_addr
	ld s3, 0(a7)
	jr s3
	# assert_exception block end
excp_return_label_1967:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1968, excp_return_label_1968, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1968:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv a1, t2
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_1968:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1969, excp_return_label_1969, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1969:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s2, t2
	li s10, failed_addr
	ld s9, 0(s10)
	jr s9
	# assert_exception block end
excp_return_label_1969:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1970, excp_return_label_1970, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1970:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a3, t2
	li t4, failed_addr
	ld s2, 0(t4)
	jr s2
	# assert_exception block end
excp_return_label_1970:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1971, excp_return_label_1971, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1971:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a6, t2
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
	# assert_exception block end
excp_return_label_1971:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1972, excp_return_label_1972, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1972:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv t6, t2
	li s6, failed_addr
	ld s4, 0(s6)
	jr s4
	# assert_exception block end
excp_return_label_1972:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1973, excp_return_label_1973, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1973:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s8, t2
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_1973:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1974, excp_return_label_1974, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1974:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t4, t2
	li s2, failed_addr
	ld a7, 0(s2)
	jr a7
	# assert_exception block end
excp_return_label_1974:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1975, excp_return_label_1975, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1975:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv t6, t2
	li s4, failed_addr
	ld a7, 0(s4)
	jr a7
	# assert_exception block end
excp_return_label_1975:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1976, excp_return_label_1976, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1976:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a1, t2
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
	# assert_exception block end
excp_return_label_1976:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1977, excp_return_label_1977, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1977:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv t5, t2
	li a3, failed_addr
	ld s0, 0(a3)
	jr s0
	# assert_exception block end
excp_return_label_1977:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1978, excp_return_label_1978, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1978:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a3, t2
	li a0, failed_addr
	ld a5, 0(a0)
	jr a5
	# assert_exception block end
excp_return_label_1978:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1979, excp_return_label_1979, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1979:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a6, t2
	li a5, failed_addr
	ld t5, 0(a5)
	jr t5
	# assert_exception block end
excp_return_label_1979:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1980, excp_return_label_1980, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1980:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv t6, t2
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
	# assert_exception block end
excp_return_label_1980:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1981, excp_return_label_1981, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1981:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s8, t2
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_1981:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1982, excp_return_label_1982, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1982:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t6, t2
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
	# assert_exception block end
excp_return_label_1982:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1983, excp_return_label_1983, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1983:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv t1, t2
	li a7, failed_addr
	ld t2, 0(a7)
	jr t2
	# assert_exception block end
excp_return_label_1983:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1984, excp_return_label_1984, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1984:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a0, t2
	li s6, failed_addr
	ld s7, 0(s6)
	jr s7
	# assert_exception block end
excp_return_label_1984:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1985, excp_return_label_1985, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1985:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s8, t2
	li t3, failed_addr
	ld s0, 0(t3)
	jr s0
	# assert_exception block end
excp_return_label_1985:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1986, excp_return_label_1986, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1986:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s4, t2
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
	# assert_exception block end
excp_return_label_1986:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1987, excp_return_label_1987, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1987:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s3, t2
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
	# assert_exception block end
excp_return_label_1987:
	# Set only this field in both registers, clear all others
	li t2, 268435456
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 268435456
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t3, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1988, excp_return_label_1988, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1988:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s5, t2
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
	# assert_exception block end
excp_return_label_1988:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1989, excp_return_label_1989, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1989:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv t1, t2
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
	# assert_exception block end
excp_return_label_1989:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1990, excp_return_label_1990, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1990:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t1, t2
	li s7, failed_addr
	ld a0, 0(s7)
	jr a0
	# assert_exception block end
excp_return_label_1990:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1991, excp_return_label_1991, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1991:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a6, t2
	li s0, failed_addr
	ld s11, 0(s0)
	jr s11
	# assert_exception block end
excp_return_label_1991:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1992, excp_return_label_1992, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1992:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s0, t2
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
	# assert_exception block end
excp_return_label_1992:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1993, excp_return_label_1993, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1993:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s11, t2
	li a6, failed_addr
	ld a1, 0(a6)
	jr a1
	# assert_exception block end
excp_return_label_1993:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1994, excp_return_label_1994, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1994:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s5, t2
	li s4, failed_addr
	ld s7, 0(s4)
	jr s7
	# assert_exception block end
excp_return_label_1994:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1995, excp_return_label_1995, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1995:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s2, t2
	li s2, failed_addr
	ld s9, 0(s2)
	jr s9
	# assert_exception block end
excp_return_label_1995:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1996, excp_return_label_1996, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1996:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s0, t2
	li s2, failed_addr
	ld t5, 0(s2)
	jr t5
	# assert_exception block end
excp_return_label_1996:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1997, excp_return_label_1997, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1997:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv s1, t2
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
	# assert_exception block end
excp_return_label_1997:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1998, excp_return_label_1998, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1998:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s8, t2
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
	# assert_exception block end
excp_return_label_1998:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1999, excp_return_label_1999, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1999:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s9, t2
	li s5, failed_addr
	ld a6, 0(s5)
	jr a6
	# assert_exception block end
excp_return_label_1999:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2000, excp_return_label_2000, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2000:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s1, t2
	li a3, failed_addr
	ld t1, 0(a3)
	jr t1
	# assert_exception block end
excp_return_label_2000:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2001, excp_return_label_2001, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2001:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s2, t2
	li a7, failed_addr
	ld a4, 0(a7)
	jr a4
	# assert_exception block end
excp_return_label_2001:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2002, excp_return_label_2002, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2002:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv s2, t2
	li s4, failed_addr
	ld t5, 0(s4)
	jr t5
	# assert_exception block end
excp_return_label_2002:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2003, excp_return_label_2003, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2003:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a4, t2
	li s2, failed_addr
	ld a3, 0(s2)
	jr a3
	# assert_exception block end
excp_return_label_2003:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2004, excp_return_label_2004, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2004:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s7, t2
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_2004:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2005, excp_return_label_2005, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2005:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s0, t2
	li s10, failed_addr
	ld s0, 0(s10)
	jr s0
	# assert_exception block end
excp_return_label_2005:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2006, excp_return_label_2006, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2006:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s11, t2
	li a0, failed_addr
	ld s10, 0(a0)
	jr s10
	# assert_exception block end
excp_return_label_2006:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2007, excp_return_label_2007, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2007:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s4, t2
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_2007:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2008, excp_return_label_2008, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2008:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s8, t2
	li s4, failed_addr
	ld a0, 0(s4)
	jr a0
	# assert_exception block end
excp_return_label_2008:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2009, excp_return_label_2009, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2009:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv t5, t2
	li a6, failed_addr
	ld s5, 0(a6)
	jr s5
	# assert_exception block end
excp_return_label_2009:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2010, excp_return_label_2010, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2010:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s0, t2
	li t6, failed_addr
	ld t3, 0(t6)
	jr t3
	# assert_exception block end
excp_return_label_2010:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2011, excp_return_label_2011, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2011:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s7, t2
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_2011:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2012, excp_return_label_2012, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2012:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t3, t2
	li s2, failed_addr
	ld t5, 0(s2)
	jr t5
	# assert_exception block end
excp_return_label_2012:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2013, excp_return_label_2013, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2013:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv t1, t2
	li s5, failed_addr
	ld s10, 0(s5)
	jr s10
	# assert_exception block end
excp_return_label_2013:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2014, excp_return_label_2014, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2014:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a7, t2
	li a5, failed_addr
	ld s1, 0(a5)
	jr s1
	# assert_exception block end
excp_return_label_2014:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2015, excp_return_label_2015, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2015:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s8, t2
	li a5, failed_addr
	ld s9, 0(a5)
	jr s9
	# assert_exception block end
excp_return_label_2015:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2016, excp_return_label_2016, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2016:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv t6, t2
	li t4, failed_addr
	ld a5, 0(t4)
	jr a5
	# assert_exception block end
excp_return_label_2016:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2017, excp_return_label_2017, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2017:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s2, t2
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
	# assert_exception block end
excp_return_label_2017:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2018, excp_return_label_2018, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2018:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a3, t2
	li s3, failed_addr
	ld a1, 0(s3)
	jr a1
	# assert_exception block end
excp_return_label_2018:
	# Set only this field in both registers, clear all others
	li t2, 536870912
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 536870912
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s0, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2019, excp_return_label_2019, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2019:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s9, t2
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
	# assert_exception block end
excp_return_label_2019:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2020, excp_return_label_2020, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2020:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv s1, t2
	li s1, failed_addr
	ld s1, 0(s1)
	jr s1
	# assert_exception block end
excp_return_label_2020:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2021, excp_return_label_2021, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2021:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv t5, t2
	li s10, failed_addr
	ld s0, 0(s10)
	jr s0
	# assert_exception block end
excp_return_label_2021:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2022, excp_return_label_2022, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2022:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv t4, t2
	li s5, failed_addr
	ld a2, 0(s5)
	jr a2
	# assert_exception block end
excp_return_label_2022:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2023, excp_return_label_2023, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2023:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv t6, t2
	li s7, failed_addr
	ld a6, 0(s7)
	jr a6
	# assert_exception block end
excp_return_label_2023:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2024, excp_return_label_2024, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2024:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s7, t2
	li s9, failed_addr
	ld t3, 0(s9)
	jr t3
	# assert_exception block end
excp_return_label_2024:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2025, excp_return_label_2025, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2025:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s9, t2
	li a6, failed_addr
	ld a3, 0(a6)
	jr a3
	# assert_exception block end
excp_return_label_2025:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2026, excp_return_label_2026, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2026:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv s9, t2
	li t5, failed_addr
	ld a2, 0(t5)
	jr a2
	# assert_exception block end
excp_return_label_2026:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2027, excp_return_label_2027, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2027:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s11, t2
	li s9, failed_addr
	ld t2, 0(s9)
	jr t2
	# assert_exception block end
excp_return_label_2027:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2028, excp_return_label_2028, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2028:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t5, t2
	li a7, failed_addr
	ld t1, 0(a7)
	jr t1
	# assert_exception block end
excp_return_label_2028:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2029, excp_return_label_2029, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2029:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv t1, t2
	li s2, failed_addr
	ld a6, 0(s2)
	jr a6
	# assert_exception block end
excp_return_label_2029:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2030, excp_return_label_2030, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2030:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t3, t2
	li t6, failed_addr
	ld s8, 0(t6)
	jr s8
	# assert_exception block end
excp_return_label_2030:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2031, excp_return_label_2031, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2031:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s4, t2
	li s7, failed_addr
	ld t3, 0(s7)
	jr t3
	# assert_exception block end
excp_return_label_2031:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2032, excp_return_label_2032, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2032:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv s5, t2
	li t4, failed_addr
	ld a4, 0(t4)
	jr a4
	# assert_exception block end
excp_return_label_2032:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2033, excp_return_label_2033, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2033:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a2, t2
	li a2, failed_addr
	ld s2, 0(a2)
	jr s2
	# assert_exception block end
excp_return_label_2033:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2034, excp_return_label_2034, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2034:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a5, t2
	li a7, failed_addr
	ld s9, 0(a7)
	jr s9
	# assert_exception block end
excp_return_label_2034:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2035, excp_return_label_2035, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2035:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s5, t2
	li s2, failed_addr
	ld s0, 0(s2)
	jr s0
	# assert_exception block end
excp_return_label_2035:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2036, excp_return_label_2036, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2036:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv t5, t2
	li s0, failed_addr
	ld t1, 0(s0)
	jr t1
	# assert_exception block end
excp_return_label_2036:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2037, excp_return_label_2037, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2037:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv s10, t2
	li s8, failed_addr
	ld a7, 0(s8)
	jr a7
	# assert_exception block end
excp_return_label_2037:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2038, excp_return_label_2038, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2038:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv s7, t2
	li s2, failed_addr
	ld a1, 0(s2)
	jr a1
	# assert_exception block end
excp_return_label_2038:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2039, excp_return_label_2039, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2039:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s7, t2
	li s3, failed_addr
	ld s11, 0(s3)
	jr s11
	# assert_exception block end
excp_return_label_2039:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2040, excp_return_label_2040, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2040:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a6, t2
	li s5, failed_addr
	ld a5, 0(s5)
	jr a5
	# assert_exception block end
excp_return_label_2040:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2041, excp_return_label_2041, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2041:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv s9, t2
	li s9, failed_addr
	ld a7, 0(s9)
	jr a7
	# assert_exception block end
excp_return_label_2041:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2042, excp_return_label_2042, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2042:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s4, t2
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_2042:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2043, excp_return_label_2043, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2043:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s6, t2
	li s0, failed_addr
	ld a0, 0(s0)
	jr a0
	# assert_exception block end
excp_return_label_2043:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2044, excp_return_label_2044, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2044:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv a5, t2
	li t5, failed_addr
	ld s4, 0(t5)
	jr s4
	# assert_exception block end
excp_return_label_2044:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2045, excp_return_label_2045, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2045:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a7, t2
	li s1, failed_addr
	ld s11, 0(s1)
	jr s11
	# assert_exception block end
excp_return_label_2045:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2046, excp_return_label_2046, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2046:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv s0, t2
	li s5, failed_addr
	ld s0, 0(s5)
	jr s0
	# assert_exception block end
excp_return_label_2046:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2047, excp_return_label_2047, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2047:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv a3, t2
	li a3, failed_addr
	ld a7, 0(a3)
	jr a7
	# assert_exception block end
excp_return_label_2047:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2048, excp_return_label_2048, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2048:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv a5, t2
	li a6, failed_addr
	ld a4, 0(a6)
	jr a4
	# assert_exception block end
excp_return_label_2048:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2049, excp_return_label_2049, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2049:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv a2, t2
	li s0, failed_addr
	ld a3, 0(s0)
	jr a3
	# assert_exception block end
excp_return_label_2049:
	# Set only this field in both registers, clear all others
	li t2, 1073741824
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 1073741824
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv t6, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2050, excp_return_label_2050, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2050:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv t2, t2
	li t5, failed_addr
	ld t1, 0(t5)
	jr t1
	# assert_exception block end
excp_return_label_2050:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2051, excp_return_label_2051, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2051:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a7, t2
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
	# assert_exception block end
excp_return_label_2051:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2052, excp_return_label_2052, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2052:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv a3, t2
	li t4, failed_addr
	ld a6, 0(t4)
	jr a6
	# assert_exception block end
excp_return_label_2052:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2053, excp_return_label_2053, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2053:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv s0, t2
	li t1, failed_addr
	ld s11, 0(t1)
	jr s11
	# assert_exception block end
excp_return_label_2053:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2054, excp_return_label_2054, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2054:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv s9, t2
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
	# assert_exception block end
excp_return_label_2054:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2055, excp_return_label_2055, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2055:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv s1, t2
	li a3, failed_addr
	ld a5, 0(a3)
	jr a5
	# assert_exception block end
excp_return_label_2055:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2056, excp_return_label_2056, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2056:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s7, t2
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
	# assert_exception block end
excp_return_label_2056:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2057, excp_return_label_2057, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2057:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv a1, t2
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
	# assert_exception block end
excp_return_label_2057:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2058, excp_return_label_2058, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2058:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv a3, t2
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_2058:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2059, excp_return_label_2059, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2059:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv t2, t2
	li s2, failed_addr
	ld s8, 0(s2)
	jr s8
	# assert_exception block end
excp_return_label_2059:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2060, excp_return_label_2060, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2060:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv a5, t2
	li s5, failed_addr
	ld t3, 0(s5)
	jr t3
	# assert_exception block end
excp_return_label_2060:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2061, excp_return_label_2061, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2061:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv t2, t2
	li t3, failed_addr
	ld t5, 0(t3)
	jr t5
	# assert_exception block end
excp_return_label_2061:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2062, excp_return_label_2062, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2062:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv a0, t2
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
	# assert_exception block end
excp_return_label_2062:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2063, excp_return_label_2063, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2063:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a4, t2
	li s5, failed_addr
	ld t5, 0(s5)
	jr t5
	# assert_exception block end
excp_return_label_2063:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2064, excp_return_label_2064, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2064:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a1, t2
	li a1, failed_addr
	ld a4, 0(a1)
	jr a4
	# assert_exception block end
excp_return_label_2064:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2065, excp_return_label_2065, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2065:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv a2, t2
	li s9, failed_addr
	ld s5, 0(s9)
	jr s5
	# assert_exception block end
excp_return_label_2065:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2066, excp_return_label_2066, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2066:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv s1, t2
	li s0, failed_addr
	ld s7, 0(s0)
	jr s7
	# assert_exception block end
excp_return_label_2066:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2067, excp_return_label_2067, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2067:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s8, t2
	li t2, failed_addr
	ld s4, 0(t2)
	jr s4
	# assert_exception block end
excp_return_label_2067:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2068, excp_return_label_2068, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2068:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a3, t2
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_2068:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2069, excp_return_label_2069, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2069:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv t3, t2
	li s5, failed_addr
	ld s0, 0(s5)
	jr s0
	# assert_exception block end
excp_return_label_2069:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2070, excp_return_label_2070, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2070:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv a7, t2
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_2070:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2071, excp_return_label_2071, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2071:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a2, t2
	li s8, failed_addr
	ld s1, 0(s8)
	jr s1
	# assert_exception block end
excp_return_label_2071:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2072, excp_return_label_2072, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2072:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a1, t2
	li t5, failed_addr
	ld s0, 0(t5)
	jr s0
	# assert_exception block end
excp_return_label_2072:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2073, excp_return_label_2073, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2073:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s0, t2
	li s8, failed_addr
	ld a7, 0(s8)
	jr a7
	# assert_exception block end
excp_return_label_2073:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2074, excp_return_label_2074, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2074:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv s5, t2
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_2074:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2075, excp_return_label_2075, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2075:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s8, t2
	li a6, failed_addr
	ld s10, 0(a6)
	jr s10
	# assert_exception block end
excp_return_label_2075:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2076, excp_return_label_2076, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2076:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv a0, t2
	li s4, failed_addr
	ld s11, 0(s4)
	jr s11
	# assert_exception block end
excp_return_label_2076:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2077, excp_return_label_2077, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2077:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a6, t2
	li s10, failed_addr
	ld a5, 0(s10)
	jr a5
	# assert_exception block end
excp_return_label_2077:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2078, excp_return_label_2078, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2078:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv s7, t2
	li t2, failed_addr
	ld t1, 0(t2)
	jr t1
	# assert_exception block end
excp_return_label_2078:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2079, excp_return_label_2079, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2079:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv a5, t2
	li a3, failed_addr
	ld t6, 0(a3)
	jr t6
	# assert_exception block end
excp_return_label_2079:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2080, excp_return_label_2080, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2080:
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv t2, t2
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_2080:
	# Set only this field in both registers, clear all others
	li t2, 2147483648
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 156
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li t2, 2147483648
	;#csr_rw(scounteren, write, false, false)
li x31, super_csr_jump_table_flags
li t5, 155
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	# Test the enabled CSR in U mode - should succeed
	;#csr_rw(hpmcounter31, read, true, false)
csrr t2, hpmcounter31

	mv s11, t2
	# Test other CSRs in U mode - should fail
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2081, excp_return_label_2081, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2081:
	;#csr_rw(cycle, read, true, false)
csrr t2, cycle

	mv s10, t2
	li t1, failed_addr
	ld s8, 0(t1)
	jr s8
	# assert_exception block end
excp_return_label_2081:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2082, excp_return_label_2082, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2082:
	;#csr_rw(time, read, true, false)
csrr t2, time

	mv a0, t2
	li s3, failed_addr
	ld s10, 0(s3)
	jr s10
	# assert_exception block end
excp_return_label_2082:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2083, excp_return_label_2083, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2083:
	;#csr_rw(instret, read, true, false)
csrr t2, instret

	mv s3, t2
	li a6, failed_addr
	ld a4, 0(a6)
	jr a4
	# assert_exception block end
excp_return_label_2083:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2084, excp_return_label_2084, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2084:
	;#csr_rw(hpmcounter3, read, true, false)
csrr t2, hpmcounter3

	mv a0, t2
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
	# assert_exception block end
excp_return_label_2084:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2085, excp_return_label_2085, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2085:
	;#csr_rw(hpmcounter4, read, true, false)
csrr t2, hpmcounter4

	mv a4, t2
	li s7, failed_addr
	ld s11, 0(s7)
	jr s11
	# assert_exception block end
excp_return_label_2085:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2086, excp_return_label_2086, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2086:
	;#csr_rw(hpmcounter5, read, true, false)
csrr t2, hpmcounter5

	mv t5, t2
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_2086:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2087, excp_return_label_2087, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2087:
	;#csr_rw(hpmcounter6, read, true, false)
csrr t2, hpmcounter6

	mv s11, t2
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
	# assert_exception block end
excp_return_label_2087:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2088, excp_return_label_2088, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2088:
	;#csr_rw(hpmcounter7, read, true, false)
csrr t2, hpmcounter7

	mv t1, t2
	li t4, failed_addr
	ld s4, 0(t4)
	jr s4
	# assert_exception block end
excp_return_label_2088:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2089, excp_return_label_2089, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2089:
	;#csr_rw(hpmcounter8, read, true, false)
csrr t2, hpmcounter8

	mv s11, t2
	li s11, failed_addr
	ld s1, 0(s11)
	jr s1
	# assert_exception block end
excp_return_label_2089:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2090, excp_return_label_2090, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2090:
	;#csr_rw(hpmcounter9, read, true, false)
csrr t2, hpmcounter9

	mv a4, t2
	li s5, failed_addr
	ld s0, 0(s5)
	jr s0
	# assert_exception block end
excp_return_label_2090:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2091, excp_return_label_2091, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2091:
	;#csr_rw(hpmcounter10, read, true, false)
csrr t2, hpmcounter10

	mv s7, t2
	li t5, failed_addr
	ld a4, 0(t5)
	jr a4
	# assert_exception block end
excp_return_label_2091:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2092, excp_return_label_2092, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2092:
	;#csr_rw(hpmcounter11, read, true, false)
csrr t2, hpmcounter11

	mv s0, t2
	li s2, failed_addr
	ld s8, 0(s2)
	jr s8
	# assert_exception block end
excp_return_label_2092:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2093, excp_return_label_2093, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2093:
	;#csr_rw(hpmcounter12, read, true, false)
csrr t2, hpmcounter12

	mv s0, t2
	li s3, failed_addr
	ld s2, 0(s3)
	jr s2
	# assert_exception block end
excp_return_label_2093:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2094, excp_return_label_2094, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2094:
	;#csr_rw(hpmcounter13, read, true, false)
csrr t2, hpmcounter13

	mv a5, t2
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_2094:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2095, excp_return_label_2095, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2095:
	;#csr_rw(hpmcounter14, read, true, false)
csrr t2, hpmcounter14

	mv a4, t2
	li s2, failed_addr
	ld s8, 0(s2)
	jr s8
	# assert_exception block end
excp_return_label_2095:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2096, excp_return_label_2096, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2096:
	;#csr_rw(hpmcounter15, read, true, false)
csrr t2, hpmcounter15

	mv s8, t2
	li s5, failed_addr
	ld t1, 0(s5)
	jr t1
	# assert_exception block end
excp_return_label_2096:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2097, excp_return_label_2097, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2097:
	;#csr_rw(hpmcounter16, read, true, false)
csrr t2, hpmcounter16

	mv a3, t2
	li a3, failed_addr
	ld a4, 0(a3)
	jr a4
	# assert_exception block end
excp_return_label_2097:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2098, excp_return_label_2098, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2098:
	;#csr_rw(hpmcounter17, read, true, false)
csrr t2, hpmcounter17

	mv s8, t2
	li a4, failed_addr
	ld a2, 0(a4)
	jr a2
	# assert_exception block end
excp_return_label_2098:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2099, excp_return_label_2099, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2099:
	;#csr_rw(hpmcounter18, read, true, false)
csrr t2, hpmcounter18

	mv a3, t2
	li s5, failed_addr
	ld s7, 0(s5)
	jr s7
	# assert_exception block end
excp_return_label_2099:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2100, excp_return_label_2100, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2100:
	;#csr_rw(hpmcounter19, read, true, false)
csrr t2, hpmcounter19

	mv a2, t2
	li a7, failed_addr
	ld s10, 0(a7)
	jr s10
	# assert_exception block end
excp_return_label_2100:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2101, excp_return_label_2101, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2101:
	;#csr_rw(hpmcounter20, read, true, false)
csrr t2, hpmcounter20

	mv s6, t2
	li t3, failed_addr
	ld a7, 0(t3)
	jr a7
	# assert_exception block end
excp_return_label_2101:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2102, excp_return_label_2102, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2102:
	;#csr_rw(hpmcounter21, read, true, false)
csrr t2, hpmcounter21

	mv a6, t2
	li a1, failed_addr
	ld s11, 0(a1)
	jr s11
	# assert_exception block end
excp_return_label_2102:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2103, excp_return_label_2103, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2103:
	;#csr_rw(hpmcounter22, read, true, false)
csrr t2, hpmcounter22

	mv a2, t2
	li a5, failed_addr
	ld t6, 0(a5)
	jr t6
	# assert_exception block end
excp_return_label_2103:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2104, excp_return_label_2104, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2104:
	;#csr_rw(hpmcounter23, read, true, false)
csrr t2, hpmcounter23

	mv s3, t2
	li s7, failed_addr
	ld a4, 0(s7)
	jr a4
	# assert_exception block end
excp_return_label_2104:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2105, excp_return_label_2105, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2105:
	;#csr_rw(hpmcounter24, read, true, false)
csrr t2, hpmcounter24

	mv t6, t2
	li t1, failed_addr
	ld s7, 0(t1)
	jr s7
	# assert_exception block end
excp_return_label_2105:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2106, excp_return_label_2106, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2106:
	;#csr_rw(hpmcounter25, read, true, false)
csrr t2, hpmcounter25

	mv s10, t2
	li s9, failed_addr
	ld t1, 0(s9)
	jr t1
	# assert_exception block end
excp_return_label_2106:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2107, excp_return_label_2107, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2107:
	;#csr_rw(hpmcounter26, read, true, false)
csrr t2, hpmcounter26

	mv s0, t2
	li a1, failed_addr
	ld s4, 0(a1)
	jr s4
	# assert_exception block end
excp_return_label_2107:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2108, excp_return_label_2108, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2108:
	;#csr_rw(hpmcounter27, read, true, false)
csrr t2, hpmcounter27

	mv a6, t2
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
	# assert_exception block end
excp_return_label_2108:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2109, excp_return_label_2109, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2109:
	;#csr_rw(hpmcounter28, read, true, false)
csrr t2, hpmcounter28

	mv t6, t2
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
	# assert_exception block end
excp_return_label_2109:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2110, excp_return_label_2110, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2110:
	;#csr_rw(hpmcounter29, read, true, false)
csrr t2, hpmcounter29

	mv s2, t2
	li a0, failed_addr
	ld s11, 0(a0)
	jr s11
	# assert_exception block end
excp_return_label_2110:
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2111, excp_return_label_2111, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2111:
	;#csr_rw(hpmcounter30, read, true, false)
csrr t2, hpmcounter30

	mv s1, t2
	li s6, failed_addr
	ld a1, 0(s6)
	jr a1
	# assert_exception block end
excp_return_label_2111:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 37
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 38
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_XCOUNTEREN_06_U_passed:
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

;#random_addr(name=SID_XCOUNTEREN_01_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_01_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_01_U_stack, phys_name=SID_XCOUNTEREN_01_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_01_U_stack
.section .SID_XCOUNTEREN_01_U_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_02_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_02_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_02_U_stack, phys_name=SID_XCOUNTEREN_02_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_02_U_stack
.section .SID_XCOUNTEREN_02_U_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_03_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_03_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_03_U_stack, phys_name=SID_XCOUNTEREN_03_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_03_U_stack
.section .SID_XCOUNTEREN_03_U_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_04_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_04_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_04_U_stack, phys_name=SID_XCOUNTEREN_04_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_04_U_stack
.section .SID_XCOUNTEREN_04_U_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_05_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_05_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_05_U_stack, phys_name=SID_XCOUNTEREN_05_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_05_U_stack
.section .SID_XCOUNTEREN_05_U_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_06_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_06_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_06_U_stack, phys_name=SID_XCOUNTEREN_06_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_06_U_stack
.section .SID_XCOUNTEREN_06_U_stack, "aw"

.dword 0xc001c0de
