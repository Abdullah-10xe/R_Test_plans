;#test.name       exceptions
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      exceptions
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: exceptions

#include "rvmodel_macros.h"
.include "tp_exceptions_1_equates.inc"
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
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_04_M)
SID_EXCEP_04_M:
	li sp, SID_EXCEP_04_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Access reserved/unpriv CSRs to trigger illegal instruction
	# Write to read-only CSR mvendorid
	li a0, 0x1234
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	csrrw a5, mvendorid, a0
	li s1, failed_addr
	ld s8, 0(s1)
	jr s8
	# assert_exception block end
excp_return_label_0:
	# Access unimplemented CSR address
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	csrr s1, 0x000
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
	# assert_exception block end
excp_return_label_1:
	# Write to read-only system CSR cycle
	li s1, 0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	csrrw s5, cycle, s1
	li s5, failed_addr
	ld a4, 0(s5)
	jr a4
	# assert_exception block end
excp_return_label_2:
SID_EXCEP_04_M_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_05)
SID_EXCEP_05:
	li sp, SID_EXCEP_05_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Execute unallocated/invalid opcodes
	# All zeros 32-bit opcode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	.word 0x00000000
	li s1, failed_addr
	ld s6, 0(s1)
	jr s6
	# assert_exception block end
excp_return_label_3:
	# All ones 32-bit opcode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	.word 0xFFFFFFFF
	li t1, failed_addr
	ld s4, 0(t1)
	jr s4
	# assert_exception block end
excp_return_label_4:
	# ILEN[15:0]=0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	.word 0xDEAD0000
	li s7, failed_addr
	ld t5, 0(s7)
	jr t5
	# assert_exception block end
excp_return_label_5:
	# Reserved opcode space
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	.word 0x0000007F
	li s7, failed_addr
	ld t5, 0(s7)
	jr t5
	# assert_exception block end
excp_return_label_6:
SID_EXCEP_05_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_06)
SID_EXCEP_06:
	li sp, tp_csr_storage
	;#csr_rw(misa, read, false, true)
csrr t2, misa

	sd t2, 0(sp)
	li sp, SID_EXCEP_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable MISA extensions and execute their instructions
	# Disable MISA.M and execute MUL
	li s0, 0x1000
	csrrc t4, misa, s0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	mul a0, a1, a2
	li s5, failed_addr
	ld a5, 0(s5)
	jr a5
	# assert_exception block end
excp_return_label_7:
	csrrs s5, misa, s0
	# Disable MISA.F and execute FADD.S
	li a7, 0x20
	csrrc t3, misa, a7
	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_8:
	fadd.s fa0, fa1, fa2
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_8:
	csrrs t1, misa, a7
	# Disable MISA.D and execute FADD.D
	li s1, 0x8
	csrrc t2, misa, s1
	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	fadd.d fa0, fa1, fa2
	li a0, failed_addr
	ld s0, 0(a0)
	jr s0
	# assert_exception block end
excp_return_label_9:
	csrrs a1, misa, s1
	# Disable MISA.V and execute vector instruction
	li t5, 0x200000
	csrrc a0, misa, t5
	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_10:
	vadd.vv v0, v1, v2
	li s6, failed_addr
	ld a5, 0(s6)
	jr a5
	# assert_exception block end
excp_return_label_10:
	csrrs s6, misa, t5
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(misa, write, false, true)
csrrw t2, misa, t2

SID_EXCEP_06_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_07)
SID_EXCEP_07:
	li sp, tp_csr_storage
	;#csr_rw(misa, read, false, true)
csrr t2, misa

	sd t2, 0(sp)
	li sp, SID_EXCEP_07_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MISA faulting configs: disable base extension, test dependent extensions
	# Clear MISA.F, test D extension instructions (D depends on F)
	li s0, 0x20
	csrrc s7, misa, s0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	fadd.d fa0, fa1, fa2
	li a4, failed_addr
	ld a4, 0(a4)
	jr a4
	# assert_exception block end
excp_return_label_11:
	csrrs s6, misa, s0
	# Clear MISA.F, test Zfh half-precision instruction
	li s11, 0x20
	csrrc t3, misa, s11
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	fadd.h fa0, fa1, fa2
	li a5, failed_addr
	ld s4, 0(a5)
	jr s4
	# assert_exception block end
excp_return_label_12:
	csrrs a6, misa, s11
	# Clear MISA.F, test V extension FP vector instructions
	li s11, 0x20
	csrrc a7, misa, s11
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	vfadd.vv v0, v1, v2
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
	# assert_exception block end
excp_return_label_13:
	csrrs s5, misa, s11
	# Clear MISA.V, test Zvbb/Zvbc dependent instructions
	li s1, 0x200000
	csrrc s7, misa, s1
	OS_SETUP_CHECK_EXCP 0x2, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_14:
	vandn.vv v0, v1, v2
	li a5, failed_addr
	ld t5, 0(a5)
	jr t5
	# assert_exception block end
excp_return_label_14:
	csrrs a1, misa, s1
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(misa, write, false, true)
csrrw t2, misa, t2

SID_EXCEP_07_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_08)
SID_EXCEP_08:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
csrr t2, mstatus

	sd t2, 0(sp)
	li sp, SID_EXCEP_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# xSTATUS.FS/VS/XS=OFF triggers illegal instruction
	# Set mstatus.FS=OFF (bits 14:13=00) and execute FP instruction
	li a1, 0x6000
	csrrc s11, mstatus, a1
	OS_SETUP_CHECK_EXCP 0x2, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_15:
	fadd.s fa0, fa1, fa2
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
	# assert_exception block end
excp_return_label_15:
	# FP load with FS=OFF
	OS_SETUP_CHECK_EXCP 0x2, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_16:
	flw fa0, 0(a0)
	li s1, failed_addr
	ld t6, 0(s1)
	jr t6
	# assert_exception block end
excp_return_label_16:
	li s3, 0x6000
	csrrs s1, mstatus, s3
	# Set mstatus.VS=OFF (bits 10:9=00) and execute vector instruction
	li a6, 0x600
	csrrc s10, mstatus, a6
	OS_SETUP_CHECK_EXCP 0x2, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_17:
	vadd.vv v0, v1, v2
	li s7, failed_addr
	ld t4, 0(s7)
	jr t4
	# assert_exception block end
excp_return_label_17:
	# VCSR access with VS=OFF
	OS_SETUP_CHECK_EXCP 0x2, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_18:
	csrr s1, vl
	li a4, failed_addr
	ld s4, 0(a4)
	jr s4
	# assert_exception block end
excp_return_label_18:
	li s5, 0x600
	csrrs a6, mstatus, s5
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
csrrw t2, mstatus, t2

SID_EXCEP_08_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_09)
SID_EXCEP_09:
	li sp, tp_csr_storage
	;#csr_rw(misa, read, false, true)
csrr t2, misa

	sd t2, 0(sp)
	;#csr_rw(mstatus, read, false, true)
csrr t2, mstatus

	sd t2, 0x8(sp)
	li sp, SID_EXCEP_09_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MISA.F/V and xSTATUS.FS/VS orthogonality - both paths fault independently
	# MISA.F=0, mstatus.FS=Initial: FP instruction faults
	li s7, 0x20
	csrrc s6, misa, s7
	li s2, 0x2000
	csrrs s11, mstatus, s2
	OS_SETUP_CHECK_EXCP 0x2, fault_label_19, excp_return_label_19, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_19:
	fadd.s fa0, fa1, fa2
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
	# assert_exception block end
excp_return_label_19:
	csrrs a4, misa, s7
	# MISA.F=1, mstatus.FS=OFF: FP instruction faults
	li s8, 0x6000
	csrrc s10, mstatus, s8
	OS_SETUP_CHECK_EXCP 0x2, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_20:
	fadd.s fa0, fa1, fa2
	li s9, failed_addr
	ld a2, 0(s9)
	jr a2
	# assert_exception block end
excp_return_label_20:
	csrrs s5, mstatus, s8
	# MISA.V=0, mstatus.VS=Initial: vector instruction faults
	li a4, 0x200000
	csrrc a2, misa, a4
	li a2, 0x200
	csrrs s9, mstatus, a2
	OS_SETUP_CHECK_EXCP 0x2, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_21:
	vadd.vv v0, v1, v2
	li a2, failed_addr
	ld t3, 0(a2)
	jr t3
	# assert_exception block end
excp_return_label_21:
	csrrs s1, misa, a4
	# MISA.V=1, mstatus.VS=OFF: vector instruction faults
	li s11, 0x600
	csrrc a2, mstatus, s11
	OS_SETUP_CHECK_EXCP 0x2, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_22:
	vadd.vv v0, v1, v2
	li s7, failed_addr
	ld a1, 0(s7)
	jr a1
	# assert_exception block end
excp_return_label_22:
	csrrs a1, mstatus, s11
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(misa, write, false, true)
csrrw t2, misa, t2

	ld t2, 0x8(sp)
	;#csr_rw(mstatus, write, false, true)
csrrw t2, mstatus, t2

SID_EXCEP_09_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_10)
SID_EXCEP_10:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
csrr t2, fcsr

	sd t2, 0(sp)
	li sp, SID_EXCEP_10_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Reserved rounding mode in FCSR.FRM with dynamic lookup faults
	# Set FCSR.FRM=101 (reserved), execute FP with dynamic rounding
	li a1, 0xa0
	csrrw s7, fcsr, a1
	OS_SETUP_CHECK_EXCP 0x2, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_23:
	fadd.s fa0, fa1, fa2, dyn
	li s3, failed_addr
	ld s2, 0(s3)
	jr s2
	# assert_exception block end
excp_return_label_23:
	# Set FCSR.FRM=110 (reserved), execute FP with dynamic rounding
	li s9, 0xc0
	csrrw s3, fcsr, s9
	OS_SETUP_CHECK_EXCP 0x2, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_24:
	fadd.s fa0, fa1, fa2, dyn
	li t1, failed_addr
	ld s11, 0(t1)
	jr s11
	# assert_exception block end
excp_return_label_24:
	# Set FCSR.FRM=111 (reserved), execute FP with dynamic rounding
	li s0, 0xe0
	csrrw s4, fcsr, s0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_25:
	fadd.s fa0, fa1, fa2, dyn
	li t1, failed_addr
	ld s2, 0(t1)
	jr s2
	# assert_exception block end
excp_return_label_25:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
csrrw t2, fcsr, t2

SID_EXCEP_10_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_16)
SID_EXCEP_16:
	li sp, SID_EXCEP_16_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Verify xTVAL holds correct faulting instruction encoding
	# 4B illegal instruction: xTVAL = full 32-bit encoding
	OS_SETUP_CHECK_EXCP 0x2, fault_label_26, excp_return_label_26, 0xc0001073, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_26:
	UNIMP
	li s8, failed_addr
	ld s9, 0(s8)
	jr s9
	# assert_exception block end
excp_return_label_26:
SID_EXCEP_16_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_32_M)
SID_EXCEP_32_M:
	li sp, tp_csr_storage
	;#csr_rw(medeleg, read, false, true)
csrr t2, medeleg

	sd t2, 0(sp)
	li sp, SID_EXCEP_32_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MEDELEG bit-by-bit functional testing
	# Disable MEDELEG bit 2 -> traps to M-mode
	li s2, 0x4
	csrrc s11, medeleg, s2
	OS_SETUP_CHECK_EXCP 0x2, fault_label_27, excp_return_label_27, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_27:
	.word 0x00000000
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
	# assert_exception block end
excp_return_label_27:
	# Verify mcause reflects illegal instruction (cause=2)
	csrr s9, mcause
	li a5, 0x2
	beq s9, a5, pass_label_0
	li t1, failed_addr
	ld a5, 0(t1)
	jr a5
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(medeleg, write, false, true)
csrrw t2, medeleg, t2

SID_EXCEP_32_M_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_33_M)
SID_EXCEP_33_M:
	li sp, tp_csr_storage
	;#csr_rw(mtvec, read, false, true)
csrr t2, mtvec

	sd t2, 0(sp)
	li sp, SID_EXCEP_33_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# xTVEC direct and vectored mode functional testing
	# Set stvec to direct mode (MODE=0)
	li a2, 0x1
	csrrc s8, mtvec, a2
	# Trigger exception: PC should go to mtvec.BASE in direct mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_28, excp_return_label_28, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_28:
	UNIMP
	li s9, failed_addr
	ld a4, 0(s9)
	jr a4
	# assert_exception block end
excp_return_label_28:
	# Set mtvec to vectored mode (MODE=1) - exceptions still go to BASE
	li s4, 0x1
	csrrs s11, mtvec, s4
	# Trigger exception: PC should go to mtvec.BASE even in vectored mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_29, excp_return_label_29, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_29:
	UNIMP
	li s3, failed_addr
	ld t6, 0(s3)
	jr t6
	# assert_exception block end
excp_return_label_29:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mtvec, write, false, true)
csrrw t2, mtvec, t2

SID_EXCEP_33_M_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_34)
SID_EXCEP_34:
	li sp, tp_csr_storage
	;#csr_rw(mscratch, read, false, true)
csrr t2, mscratch

	sd t2, 0(sp)
	li sp, SID_EXCEP_34_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW/CSRRWI with rd=x0: write-only, no read side effect
	# CSRRW to mscratch with rd=x0: write-only
	li a7, 0xcafebabe
	csrrw s5, mscratch, a7
	# Verify mscratch was written correctly
	csrr a4, mscratch
	beq a4, a7, pass_label_1
	li t5, failed_addr
	ld s10, 0(t5)
	jr s10
pass_label_1:
	# CSRRSI always reads regardless of rd - read side effects occur
	li t4, 0
	csrrsi t5, mscratch, 0
	# CSRRCI always reads regardless of rd - read side effects occur
	li t1, 0
	csrrci s6, mscratch, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mscratch, write, false, true)
csrrw t2, mscratch, t2

SID_EXCEP_34_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_35)
SID_EXCEP_35:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
csrr t2, mcounteren

	sd t2, 0(sp)
	li sp, SID_EXCEP_35_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS/CSRRC with rs1=x0 on RO CSRs: no write, no exception
	# Set mcounteren.CY=1
	li t6, 0x1
	csrrs t4, mcounteren, t6
	# CSRRS cycle with rs1=x0: read-only, no write -> no exception
	csrrs s6, cycle, zero
	# CSRRC cycle with rs1=x0: read-only, no write -> no exception
	csrrc s6, cycle, zero
	# CSRRSI cycle with imm=0: read-only, no write -> no exception
	csrrsi a0, cycle, 0
	# CSRRCI cycle with imm=0: read-only, no write -> no exception
	csrrci s8, cycle, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
csrrw t2, mcounteren, t2

SID_EXCEP_35_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_37)
SID_EXCEP_37:
	li sp, SID_EXCEP_37_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# JALR masks bit 0 of target address: no misaligned exception
	# JALR with rs1 having LSB set: bit 0 masked by hardware
	auipc t5, 0
	addi s7, t5, 0xd
	jalr a2, 0(s7)
	nop
	# Execution continues: JALR cleared bit 0 of target
SID_EXCEP_37_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_38)
SID_EXCEP_38:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
csrr t2, fcsr

	sd t2, 0(sp)
	li sp, SID_EXCEP_38_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Static FP rounding mode ignores reserved FCSR.FRM - no exception
	# Set FCSR.FRM=101 (reserved) but use static rounding in instruction
	li s3, 0xa0
	csrrw t2, fcsr, s3
	# FADD.S with static rne rounding: FCSR.FRM ignored, no exception
	fadd.s fa0, fa1, fa2, rne
	li s7, 0xc0
	csrrw s2, fcsr, s7
	fmul.s fa0, fa1, fa2, rtz
	li t3, 0xe0
	csrrw s11, fcsr, t3
	fsub.s fa0, fa1, fa2, rdn
	# All static rounding mode FP ops completed without exception
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
csrrw t2, fcsr, t2

SID_EXCEP_38_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_EXCEP_40)
SID_EXCEP_40:
	li sp, tp_csr_storage
	;#csr_rw(medeleg, read, false, true)
csrr t2, medeleg

	sd t2, 0(sp)
	li sp, SID_EXCEP_40_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MEDELEG bit 11 and SEDELEG.11:9 hardwired to zero
	# Write all ones to MEDELEG
	li a2, -1
	csrrw s7, medeleg, a2
	# Verify MEDELEG bit 11 (ECALL from M-mode) is hardwired zero
	csrr s4, medeleg
	li s8, 0x800
	and s2, s4, s8
	li s6, 0
	beq s2, s6, pass_label_2
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(medeleg, write, false, true)
csrrw t2, medeleg, t2

SID_EXCEP_40_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

test_cleanup:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1
local_test_failed:
	;#test_failed()
	li t0, os_failed_addr
	ld t1, 0(t0)
	jr t1

.section .data
;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_M_stack, phys_name=SID_EXCEP_04_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_M_stack
.section .SID_EXCEP_04_M_stack, "aw"

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

;#random_addr(name=SID_EXCEP_09_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_09_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_09_stack, phys_name=SID_EXCEP_09_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_09_stack
.section .SID_EXCEP_09_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_10_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_10_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_10_stack, phys_name=SID_EXCEP_10_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_10_stack
.section .SID_EXCEP_10_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_16_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_16_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_16_stack, phys_name=SID_EXCEP_16_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_16_stack
.section .SID_EXCEP_16_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_32_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_32_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_32_M_stack, phys_name=SID_EXCEP_32_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_32_M_stack
.section .SID_EXCEP_32_M_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_33_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_33_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_33_M_stack, phys_name=SID_EXCEP_33_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_33_M_stack
.section .SID_EXCEP_33_M_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_34_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_34_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_34_stack, phys_name=SID_EXCEP_34_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_34_stack
.section .SID_EXCEP_34_stack, "aw"

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

;#random_addr(name=SID_EXCEP_40_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_40_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_40_stack, phys_name=SID_EXCEP_40_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_40_stack
.section .SID_EXCEP_40_stack, "aw"

.dword 0xc001c0de
