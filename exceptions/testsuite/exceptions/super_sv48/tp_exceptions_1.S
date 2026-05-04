;#test.name       exceptions
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      exceptions
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: exceptions

#include "rvmodel_macros.h"
.include "tp_exceptions_1_equates.inc"

.include "tp_exceptions_1_pagetables.inc"
#include "tp_exceptions_1_macros.inc"
#include "tp_exceptions_1_loader.inc"
#include "tp_exceptions_1_syscalls.inc"
#include "tp_exceptions_1_trap_handler_m.inc"
#include "tp_exceptions_1_trap_handler_s.inc"
#include "tp_exceptions_1_os.inc"
#include "tp_exceptions_1_eot.inc"
#include "tp_exceptions_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_04_SU)
SID_EXCEP_04_SU:
	li sp, SID_EXCEP_04_SU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Access reserved/unpriv CSRs to trigger illegal instruction
	# Access M-mode CSR (mstatus) directly - faults in S/U mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	;#csr_rw(mstatus, read, true, false)
csrr t2, mstatus

	mv t2, t2
	li t6, failed_addr
	ld s1, 0(t6)
	jr s1
	# assert_exception block end
excp_return_label_0:
	# Write to read-only CSR mvendorid
	li a7, 0x1234
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	mv t2, a7
fault_label_1:
	;#csr_rw(mvendorid, write, true, false)
csrrw t2, mvendorid, t2

	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_1:
	# Access unimplemented CSR address
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	csrr a1, 0x000
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_2:
	# Write to read-only system CSR cycle
	li a1, 0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	csrrw s6, cycle, a1
	li s6, failed_addr
	ld a5, 0(s6)
	jr a5
	# assert_exception block end
excp_return_label_3:
SID_EXCEP_04_SU_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_05)
SID_EXCEP_05:
	li sp, SID_EXCEP_05_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Execute unallocated/invalid opcodes
	# All zeros 32-bit opcode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	.word 0x00000000
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_4:
	# All ones 32-bit opcode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	.word 0xFFFFFFFF
	li t1, failed_addr
	ld s4, 0(t1)
	jr s4
	# assert_exception block end
excp_return_label_5:
	# ILEN[15:0]=0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	.word 0xDEAD0000
	li s7, failed_addr
	ld t5, 0(s7)
	jr t5
	# assert_exception block end
excp_return_label_6:
	# Reserved opcode space
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	.word 0x0000007F
	li s7, failed_addr
	ld t5, 0(s7)
	jr t5
	# assert_exception block end
excp_return_label_7:
SID_EXCEP_05_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_06)
SID_EXCEP_06:
	li sp, tp_csr_storage
	;#csr_rw(misa, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_EXCEP_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable MISA extensions and execute their instructions
	# Disable MISA.M and execute MUL
	li s0, 0x1000
	mv t2, s0
	;#csr_rw(misa, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_8:
	mul a0, a1, a2
	li t5, failed_addr
	ld s6, 0(t5)
	jr s6
	# assert_exception block end
excp_return_label_8:
	mv t2, s0
	;#csr_rw(misa, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Disable MISA.F and execute FADD.S
	li a7, 0x20
	mv t2, a7
	;#csr_rw(misa, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	fadd.s fa0, fa1, fa2
	li s0, failed_addr
	ld a5, 0(s0)
	jr a5
	# assert_exception block end
excp_return_label_9:
	mv t2, a7
	;#csr_rw(misa, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Disable MISA.D and execute FADD.D
	li s0, 0x8
	mv t2, s0
	;#csr_rw(misa, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_10:
	fadd.d fa0, fa1, fa2
	li a1, failed_addr
	ld s5, 0(a1)
	jr s5
	# assert_exception block end
excp_return_label_10:
	mv t2, s0
	;#csr_rw(misa, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Disable MISA.V and execute vector instruction
	li s1, 0x200000
	mv t2, s1
	;#csr_rw(misa, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	vadd.vv v0, v1, v2
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
	# assert_exception block end
excp_return_label_11:
	mv t2, s1
	;#csr_rw(misa, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(misa, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_EXCEP_06_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_07)
SID_EXCEP_07:
	li sp, tp_csr_storage
	;#csr_rw(misa, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_EXCEP_07_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MISA faulting configs: disable base extension, test dependent extensions
	# Clear MISA.F, test D extension instructions (D depends on F)
	li t4, 0x20
	mv t2, t4
	;#csr_rw(misa, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	fadd.d fa0, fa1, fa2
	li s8, failed_addr
	ld t1, 0(s8)
	jr t1
	# assert_exception block end
excp_return_label_12:
	mv t2, t4
	;#csr_rw(misa, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Clear MISA.F, test Zfh half-precision instruction
	li s4, 0x20
	mv t2, s4
	;#csr_rw(misa, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	fadd.h fa0, fa1, fa2
	li s8, failed_addr
	ld a4, 0(s8)
	jr a4
	# assert_exception block end
excp_return_label_13:
	mv t2, s4
	;#csr_rw(misa, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Clear MISA.F, test V extension FP vector instructions
	li s7, 0x20
	mv t2, s7
	;#csr_rw(misa, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_14:
	vfadd.vv v0, v1, v2
	li s4, failed_addr
	ld s0, 0(s4)
	jr s0
	# assert_exception block end
excp_return_label_14:
	mv t2, s7
	;#csr_rw(misa, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Clear MISA.V, test Zvbb/Zvbc dependent instructions
	li s8, 0x200000
	mv t2, s8
	;#csr_rw(misa, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_15:
	vandn.vv v0, v1, v2
	li a7, failed_addr
	ld a7, 0(a7)
	jr a7
	# assert_exception block end
excp_return_label_15:
	mv t2, s8
	;#csr_rw(misa, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(misa, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 12
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_EXCEP_07_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_08)
SID_EXCEP_08:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 23
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_EXCEP_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# xSTATUS.FS/VS/XS=OFF triggers illegal instruction
	# Set mstatus.FS=OFF (bits 14:13=00) and execute FP instruction
	li s4, 0x6000
	mv t2, s4
	;#csr_rw(mstatus, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 24
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_16:
	fadd.s fa0, fa1, fa2
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
	# assert_exception block end
excp_return_label_16:
	# FP load with FS=OFF
	OS_SETUP_CHECK_EXCP 0x2, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_17:
	flw fa0, 0(a0)
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
	# assert_exception block end
excp_return_label_17:
	li a5, 0x6000
	mv t2, a5
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 25
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Set mstatus.VS=OFF (bits 10:9=00) and execute vector instruction
	li s10, 0x600
	mv t2, s10
	;#csr_rw(mstatus, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 24
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	OS_SETUP_CHECK_EXCP 0x2, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_18:
	vadd.vv v0, v1, v2
	li a6, failed_addr
	ld t2, 0(a6)
	jr t2
	# assert_exception block end
excp_return_label_18:
	# VCSR access with VS=OFF
	OS_SETUP_CHECK_EXCP 0x2, fault_label_19, excp_return_label_19, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_19:
	csrr t3, vl
	li s5, failed_addr
	ld t1, 0(s5)
	jr t1
	# assert_exception block end
excp_return_label_19:
	li t5, 0x600
	mv t2, t5
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 25
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 28
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_EXCEP_08_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_10)
SID_EXCEP_10:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 29
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_EXCEP_10_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Reserved rounding mode in FCSR.FRM with dynamic lookup faults
	# Set FCSR.FRM=101 (reserved), execute FP with dynamic rounding
	li s7, 0xa0
	csrrw s11, fcsr, s7
	OS_SETUP_CHECK_EXCP 0x2, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_20:
	fadd.s fa0, fa1, fa2, dyn
	li s1, failed_addr
	ld a2, 0(s1)
	jr a2
	# assert_exception block end
excp_return_label_20:
	# Set FCSR.FRM=110 (reserved), execute FP with dynamic rounding
	li t5, 0xc0
	csrrw s1, fcsr, t5
	OS_SETUP_CHECK_EXCP 0x2, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_21:
	fadd.s fa0, fa1, fa2, dyn
	li a7, failed_addr
	ld a0, 0(a7)
	jr a0
	# assert_exception block end
excp_return_label_21:
	# Set FCSR.FRM=111 (reserved), execute FP with dynamic rounding
	li s1, 0xe0
	csrrw s4, fcsr, s1
	OS_SETUP_CHECK_EXCP 0x2, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_22:
	fadd.s fa0, fa1, fa2, dyn
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
	# assert_exception block end
excp_return_label_22:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 30
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_EXCEP_10_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_12)
SID_EXCEP_12:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 23
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_EXCEP_12_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# SATP/SFENCE.VMA/SINVAL.VMA fault when mstatus.TVM=1 in S-mode
	# Set mstatus.TVM=1
	li s3, 0x100000
	mv t2, s3
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 25
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Read SATP from S-mode with TVM=1 -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_23:
	csrr s8, satp
	li t5, failed_addr
	ld a3, 0(t5)
	jr a3
	# assert_exception block end
excp_return_label_23:
	# Write SATP from S-mode with TVM=1 -> illegal instruction
	li s2, 0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_24:
	csrrw a7, satp, s2
	li t6, failed_addr
	ld s11, 0(t6)
	jr s11
	# assert_exception block end
excp_return_label_24:
	# SFENCE.VMA from S-mode with TVM=1 -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_25:
	sfence.vma zero, zero
	li t4, failed_addr
	ld s7, 0(t4)
	jr s7
	# assert_exception block end
excp_return_label_25:
	# SINVAL.VMA from S-mode with TVM=1 -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_26, excp_return_label_26, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t5, 0x803468b9
	li s0, 0xefba91ff
fault_label_26:
	sinval.vma t5, s0
	li t2, failed_addr
	ld a6, 0(t2)
	jr a6
	# assert_exception block end
excp_return_label_26:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 28
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_EXCEP_12_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_15_S)
SID_EXCEP_15_S:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 34
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_EXCEP_15_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# xCOUNTEREN controls counter CSR accessibility per privilege level
	# Set mcounteren=0: all S/U counter access faults
	li t4, 0
	mv t2, t4
	;#csr_rw(mcounteren, write, false, false)
li x31, machine_csr_jump_table_flags
li t5, 35
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# S-mode reads cycle with mcounteren.CY=0 -> fault
	OS_SETUP_CHECK_EXCP 0x2, fault_label_27, excp_return_label_27, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_27:
	csrr t2, cycle
	li s3, failed_addr
	ld s5, 0(s3)
	jr s5
	# assert_exception block end
excp_return_label_27:
	# S-mode reads time with mcounteren.TM=0 -> fault
	OS_SETUP_CHECK_EXCP 0x2, fault_label_28, excp_return_label_28, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_28:
	csrr t6, time
	li a2, failed_addr
	ld s4, 0(a2)
	jr s4
	# assert_exception block end
excp_return_label_28:
	# S-mode reads instret with mcounteren.IR=0 -> fault
	OS_SETUP_CHECK_EXCP 0x2, fault_label_29, excp_return_label_29, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_29:
	csrr t3, instret
	li t6, failed_addr
	ld t3, 0(t6)
	jr t3
	# assert_exception block end
excp_return_label_29:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 36
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_EXCEP_15_S_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_16)
SID_EXCEP_16:
	li sp, SID_EXCEP_16_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Verify xTVAL holds correct faulting instruction encoding
	# 4B illegal instruction: xTVAL = full 32-bit encoding
	OS_SETUP_CHECK_EXCP 0x2, fault_label_30, excp_return_label_30, 0xc0001073, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_30:
	UNIMP
	li s11, failed_addr
	ld t5, 0(s11)
	jr t5
	# assert_exception block end
excp_return_label_30:
SID_EXCEP_16_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_17)
SID_EXCEP_17:
	li sp, SID_EXCEP_17_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# ECALL from S-mode to M-mode
	# Execute ECALL - cause matches current privilege mode
	OS_SETUP_CHECK_EXCP 0x9, fault_label_31, excp_return_label_31, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_31:
	ecall
	li a7, failed_addr
	ld s0, 0(a7)
	jr s0
	# assert_exception block end
excp_return_label_31:
SID_EXCEP_17_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_32_S)
SID_EXCEP_32_S:
	li sp, tp_csr_storage
	;#csr_rw(medeleg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 37
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_EXCEP_32_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MEDELEG bit-by-bit functional testing
	# Enable MEDELEG bit 2 (illegal instruction) -> traps to S-mode
	li s4, 0x4
	mv t2, s4
	;#csr_rw(medeleg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 38
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Trigger illegal instruction -> verify arrives in S-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_32, excp_return_label_32, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_32:
	.word 0x00000000
	li t4, failed_addr
	ld s8, 0(t4)
	jr s8
	# assert_exception block end
excp_return_label_32:
	# Verify scause reflects illegal instruction (cause=2)
	csrr a0, scause
	li s8, 0x2
	beq a0, s8, pass_label_0
	li a3, failed_addr
	ld s11, 0(a3)
	jr s11
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(medeleg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 39
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_EXCEP_32_S_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_33_S)
SID_EXCEP_33_S:
	li sp, tp_csr_storage
	;#csr_rw(stvec, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 40
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_EXCEP_33_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# xTVEC direct and vectored mode functional testing
	# Set stvec to direct mode (MODE=0)
	li s2, 0x1
	csrrc a7, stvec, s2
	# Trigger exception: PC should go to stvec.BASE in direct mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_33, excp_return_label_33, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_33:
	UNIMP
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_33:
	# Set stvec to vectored mode (MODE=1) - exceptions still go to BASE
	li t1, 0x1
	csrrs s9, stvec, t1
	# Trigger exception: PC should go to stvec.BASE even in vectored mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_34, excp_return_label_34, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_34:
	UNIMP
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
	# assert_exception block end
excp_return_label_34:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(stvec, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 41
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_EXCEP_33_S_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_35)
SID_EXCEP_35:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 34
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_EXCEP_35_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS/CSRRC with rs1=x0 on RO CSRs: no write, no exception
	# Set mcounteren.CY=1
	li t3, 0x1
	mv t2, t3
	;#csr_rw(mcounteren, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 43
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# CSRRS cycle with rs1=x0: read-only, no write -> no exception
	csrrs s10, cycle, zero
	# CSRRC cycle with rs1=x0: read-only, no write -> no exception
	csrrc s9, cycle, zero
	# CSRRSI cycle with imm=0: read-only, no write -> no exception
	csrrsi s11, cycle, 0
	# CSRRCI cycle with imm=0: read-only, no write -> no exception
	csrrci s3, cycle, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 36
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_EXCEP_35_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_37)
SID_EXCEP_37:
	li sp, SID_EXCEP_37_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# JALR masks bit 0 of target address: no misaligned exception
	# JALR with rs1 having LSB set: bit 0 masked by hardware
	auipc s10, 0
	addi a1, s10, 0xd
	jalr a2, 0(a1)
	nop
	# Execution continues: JALR cleared bit 0 of target
SID_EXCEP_37_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_EXCEP_38)
SID_EXCEP_38:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 29
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_EXCEP_38_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Static FP rounding mode ignores reserved FCSR.FRM - no exception
	# Set FCSR.FRM=101 (reserved) but use static rounding in instruction
	li s6, 0xa0
	csrrw a3, fcsr, s6
	# FADD.S with static rne rounding: FCSR.FRM ignored, no exception
	fadd.s fa0, fa1, fa2, rne
	li t1, 0xc0
	csrrw a3, fcsr, t1
	fmul.s fa0, fa1, fa2, rtz
	li a4, 0xe0
	csrrw s11, fcsr, a4
	fsub.s fa0, fa1, fa2, rdn
	# All static rounding mode FP ops completed without exception
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 30
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_EXCEP_38_passed:
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

;#random_addr(name=SID_EXCEP_04_SU_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_SU_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_SU_stack, phys_name=SID_EXCEP_04_SU_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_SU_stack
.section .SID_EXCEP_04_SU_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_05_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_05_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_05_stack, phys_name=SID_EXCEP_05_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_05_stack
.section .SID_EXCEP_05_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_06_stack, phys_name=SID_EXCEP_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_06_stack
.section .SID_EXCEP_06_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_07_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_07_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_07_stack, phys_name=SID_EXCEP_07_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_07_stack
.section .SID_EXCEP_07_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_08_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_08_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_08_stack, phys_name=SID_EXCEP_08_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_08_stack
.section .SID_EXCEP_08_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_10_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_10_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_10_stack, phys_name=SID_EXCEP_10_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_10_stack
.section .SID_EXCEP_10_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_12_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_12_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_12_stack, phys_name=SID_EXCEP_12_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_12_stack
.section .SID_EXCEP_12_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_15_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_15_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_15_S_stack, phys_name=SID_EXCEP_15_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_15_S_stack
.section .SID_EXCEP_15_S_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_16_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_16_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_16_stack, phys_name=SID_EXCEP_16_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_16_stack
.section .SID_EXCEP_16_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_17_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_17_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_17_stack, phys_name=SID_EXCEP_17_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_17_stack
.section .SID_EXCEP_17_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_32_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_32_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_32_S_stack, phys_name=SID_EXCEP_32_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_32_S_stack
.section .SID_EXCEP_32_S_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_33_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_33_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_33_S_stack, phys_name=SID_EXCEP_33_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_33_S_stack
.section .SID_EXCEP_33_S_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_35_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_35_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_35_stack, phys_name=SID_EXCEP_35_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_35_stack
.section .SID_EXCEP_35_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_37_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_37_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_37_stack, phys_name=SID_EXCEP_37_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_37_stack
.section .SID_EXCEP_37_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_38_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_38_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_38_stack, phys_name=SID_EXCEP_38_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_38_stack
.section .SID_EXCEP_38_stack, "aw"

.dword 0xc001c0de
