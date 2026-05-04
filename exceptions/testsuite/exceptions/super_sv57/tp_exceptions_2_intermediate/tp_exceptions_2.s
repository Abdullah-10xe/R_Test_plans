;#test.name       exceptions
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv57
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      exceptions
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: exceptions

.section .code, "ax"

test_setup:
	;#test_passed()

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
	mv s0, t2
	li a0, failed_addr
	ld a1, 0(a0)
	jr a1
	# assert_exception block end
excp_return_label_0:
	# Write to read-only CSR mvendorid
	li s6, 0x1234
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	mv t2, s6
fault_label_1:
	;#csr_rw(mvendorid, write, true, false)
	li a5, failed_addr
	ld s6, 0(a5)
	jr s6
	# assert_exception block end
excp_return_label_1:
	# Access unimplemented CSR address
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	csrr s6, 0x000
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_2:
	# Write to read-only system CSR cycle
	li s5, 0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_3:
	csrrw a1, cycle, s5
	li a7, failed_addr
	ld a5, 0(a7)
	jr a5
	# assert_exception block end
excp_return_label_3:
SID_EXCEP_04_SU_passed:
	;#test_passed()

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
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
	# assert_exception block end
excp_return_label_4:
	# All ones 32-bit opcode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	.word 0xFFFFFFFF
	li t4, failed_addr
	ld a2, 0(t4)
	jr a2
	# assert_exception block end
excp_return_label_5:
	# ILEN[15:0]=0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	.word 0xDEAD0000
	li s5, failed_addr
	ld t6, 0(s5)
	jr t6
	# assert_exception block end
excp_return_label_6:
	# Reserved opcode space
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	.word 0x0000007F
	li s4, failed_addr
	ld s4, 0(s4)
	jr s4
	# assert_exception block end
excp_return_label_7:
SID_EXCEP_05_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_06)
SID_EXCEP_06:
	li sp, tp_csr_storage
	;#csr_rw(misa, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Disable MISA extensions and execute their instructions
	# Disable MISA.M and execute MUL
	li s8, 0x1000
	mv t2, s8
	;#csr_rw(misa, clear, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_8:
	mul a0, a1, a2
	li s2, failed_addr
	ld s10, 0(s2)
	jr s10
	# assert_exception block end
excp_return_label_8:
	mv t2, s8
	;#csr_rw(misa, set, false, false)
	# Disable MISA.F and execute FADD.S
	li s7, 0x20
	mv t2, s7
	;#csr_rw(misa, clear, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	fadd.s fa0, fa1, fa2
	li s11, failed_addr
	ld a5, 0(s11)
	jr a5
	# assert_exception block end
excp_return_label_9:
	mv t2, s7
	;#csr_rw(misa, set, false, false)
	# Disable MISA.D and execute FADD.D
	li s1, 0x8
	mv t2, s1
	;#csr_rw(misa, clear, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_10:
	fadd.d fa0, fa1, fa2
	li t1, failed_addr
	ld s6, 0(t1)
	jr s6
	# assert_exception block end
excp_return_label_10:
	mv t2, s1
	;#csr_rw(misa, set, false, false)
	# Disable MISA.V and execute vector instruction
	li s10, 0x200000
	mv t2, s10
	;#csr_rw(misa, clear, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	vadd.vv v0, v1, v2
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_11:
	mv t2, s10
	;#csr_rw(misa, set, false, false)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(misa, write, false, true)
SID_EXCEP_06_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_07)
SID_EXCEP_07:
	li sp, tp_csr_storage
	;#csr_rw(misa, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_07_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MISA faulting configs: disable base extension, test dependent extensions
	# Clear MISA.F, test D extension instructions (D depends on F)
	li s5, 0x20
	mv t2, s5
	;#csr_rw(misa, clear, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	fadd.d fa0, fa1, fa2
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
	# assert_exception block end
excp_return_label_12:
	mv t2, s5
	;#csr_rw(misa, set, false, false)
	# Clear MISA.F, test Zfh half-precision instruction
	li t4, 0x20
	mv t2, t4
	;#csr_rw(misa, clear, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	fadd.h fa0, fa1, fa2
	li a3, failed_addr
	ld a6, 0(a3)
	jr a6
	# assert_exception block end
excp_return_label_13:
	mv t2, t4
	;#csr_rw(misa, set, false, false)
	# Clear MISA.F, test V extension FP vector instructions
	li s2, 0x20
	mv t2, s2
	;#csr_rw(misa, clear, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_14:
	vfadd.vv v0, v1, v2
	li t1, failed_addr
	ld a5, 0(t1)
	jr a5
	# assert_exception block end
excp_return_label_14:
	mv t2, s2
	;#csr_rw(misa, set, false, false)
	# Clear MISA.V, test Zvbb/Zvbc dependent instructions
	li s9, 0x200000
	mv t2, s9
	;#csr_rw(misa, clear, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_15:
	vandn.vv v0, v1, v2
	li a7, failed_addr
	ld a4, 0(a7)
	jr a4
	# assert_exception block end
excp_return_label_15:
	mv t2, s9
	;#csr_rw(misa, set, false, false)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(misa, write, false, true)
SID_EXCEP_07_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_08)
SID_EXCEP_08:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# xSTATUS.FS/VS/XS=OFF triggers illegal instruction
	# Set mstatus.FS=OFF (bits 14:13=00) and execute FP instruction
	li s6, 0x6000
	mv t2, s6
	;#csr_rw(mstatus, clear, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_16:
	fadd.s fa0, fa1, fa2
	li s8, failed_addr
	ld s2, 0(s8)
	jr s2
	# assert_exception block end
excp_return_label_16:
	# FP load with FS=OFF
	OS_SETUP_CHECK_EXCP 0x2, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_17:
	flw fa0, 0(a0)
	li s10, failed_addr
	ld s6, 0(s10)
	jr s6
	# assert_exception block end
excp_return_label_17:
	li t3, 0x6000
	mv t2, t3
	;#csr_rw(mstatus, set, false, false)
	# Set mstatus.VS=OFF (bits 10:9=00) and execute vector instruction
	li a2, 0x600
	mv t2, a2
	;#csr_rw(mstatus, clear, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_18:
	vadd.vv v0, v1, v2
	li s9, failed_addr
	ld s9, 0(s9)
	jr s9
	# assert_exception block end
excp_return_label_18:
	# VCSR access with VS=OFF
	OS_SETUP_CHECK_EXCP 0x2, fault_label_19, excp_return_label_19, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_19:
	csrr s7, vl
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
	# assert_exception block end
excp_return_label_19:
	li t2, 0x600
	mv t2, t2
	;#csr_rw(mstatus, set, false, false)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
SID_EXCEP_08_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_10)
SID_EXCEP_10:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_10_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Reserved rounding mode in FCSR.FRM with dynamic lookup faults
	# Set FCSR.FRM=101 (reserved), execute FP with dynamic rounding
	li a7, 0xa0
	csrrw a7, fcsr, a7
	OS_SETUP_CHECK_EXCP 0x2, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_20:
	fadd.s fa0, fa1, fa2, dyn
	li s9, failed_addr
	ld s2, 0(s9)
	jr s2
	# assert_exception block end
excp_return_label_20:
	# Set FCSR.FRM=110 (reserved), execute FP with dynamic rounding
	li s3, 0xc0
	csrrw s7, fcsr, s3
	OS_SETUP_CHECK_EXCP 0x2, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_21:
	fadd.s fa0, fa1, fa2, dyn
	li a1, failed_addr
	ld s7, 0(a1)
	jr s7
	# assert_exception block end
excp_return_label_21:
	# Set FCSR.FRM=111 (reserved), execute FP with dynamic rounding
	li s6, 0xe0
	csrrw s3, fcsr, s6
	OS_SETUP_CHECK_EXCP 0x2, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_22:
	fadd.s fa0, fa1, fa2, dyn
	li s7, failed_addr
	ld s11, 0(s7)
	jr s11
	# assert_exception block end
excp_return_label_22:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
SID_EXCEP_10_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_12)
SID_EXCEP_12:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_12_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# SATP/SFENCE.VMA/SINVAL.VMA fault when mstatus.TVM=1 in S-mode
	# Set mstatus.TVM=1
	li a3, 0x100000
	mv t2, a3
	;#csr_rw(mstatus, set, false, false)
	# Read SATP from S-mode with TVM=1 -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_23:
	csrr s7, satp
	li a6, failed_addr
	ld s9, 0(a6)
	jr s9
	# assert_exception block end
excp_return_label_23:
	# Write SATP from S-mode with TVM=1 -> illegal instruction
	li t4, 0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_24:
	csrrw s11, satp, t4
	li s11, failed_addr
	ld s4, 0(s11)
	jr s4
	# assert_exception block end
excp_return_label_24:
	# SFENCE.VMA from S-mode with TVM=1 -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_25:
	sfence.vma zero, zero
	li a6, failed_addr
	ld s10, 0(a6)
	jr s10
	# assert_exception block end
excp_return_label_25:
	# SINVAL.VMA from S-mode with TVM=1 -> illegal instruction
	OS_SETUP_CHECK_EXCP 0x2, fault_label_26, excp_return_label_26, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t3, 0xa7a83ee3
	li s5, 0x87c56476
fault_label_26:
	sinval.vma t3, s5
	li s9, failed_addr
	ld t3, 0(s9)
	jr t3
	# assert_exception block end
excp_return_label_26:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
SID_EXCEP_12_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_15_S)
SID_EXCEP_15_S:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_15_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# xCOUNTEREN controls counter CSR accessibility per privilege level
	# Set mcounteren=0: all S/U counter access faults
	li s7, 0
	mv t2, s7
	;#csr_rw(mcounteren, write, false, false)
	# S-mode reads cycle with mcounteren.CY=0 -> fault
	OS_SETUP_CHECK_EXCP 0x2, fault_label_27, excp_return_label_27, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_27:
	csrr t6, cycle
	li s5, failed_addr
	ld s8, 0(s5)
	jr s8
	# assert_exception block end
excp_return_label_27:
	# S-mode reads time with mcounteren.TM=0 -> fault
	OS_SETUP_CHECK_EXCP 0x2, fault_label_28, excp_return_label_28, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_28:
	csrr s7, time
	li a4, failed_addr
	ld s2, 0(a4)
	jr s2
	# assert_exception block end
excp_return_label_28:
	# S-mode reads instret with mcounteren.IR=0 -> fault
	OS_SETUP_CHECK_EXCP 0x2, fault_label_29, excp_return_label_29, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_29:
	csrr s8, instret
	li a2, failed_addr
	ld t6, 0(a2)
	jr t6
	# assert_exception block end
excp_return_label_29:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
SID_EXCEP_15_S_passed:
	;#test_passed()

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
	li a4, failed_addr
	ld t6, 0(a4)
	jr t6
	# assert_exception block end
excp_return_label_30:
SID_EXCEP_16_passed:
	;#test_passed()

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
	li s5, failed_addr
	ld a5, 0(s5)
	jr a5
	# assert_exception block end
excp_return_label_31:
SID_EXCEP_17_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_32_S)
SID_EXCEP_32_S:
	li sp, tp_csr_storage
	;#csr_rw(medeleg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_32_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MEDELEG bit-by-bit functional testing
	# Enable MEDELEG bit 2 (illegal instruction) -> traps to S-mode
	li a5, 0x4
	mv t2, a5
	;#csr_rw(medeleg, set, false, false)
	# Trigger illegal instruction -> verify arrives in S-mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_32, excp_return_label_32, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_32:
	.word 0x00000000
	li t2, failed_addr
	ld t5, 0(t2)
	jr t5
	# assert_exception block end
excp_return_label_32:
	# Verify scause reflects illegal instruction (cause=2)
	csrr s8, scause
	li s10, 0x2
	beq s8, s10, pass_label_0
	li s9, failed_addr
	ld s11, 0(s9)
	jr s11
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(medeleg, write, false, true)
SID_EXCEP_32_S_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_33_S)
SID_EXCEP_33_S:
	li sp, tp_csr_storage
	;#csr_rw(stvec, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_33_S_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# xTVEC direct and vectored mode functional testing
	# Set stvec to direct mode (MODE=0)
	li s10, 0x1
	csrrc s9, stvec, s10
	# Trigger exception: PC should go to stvec.BASE in direct mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_33, excp_return_label_33, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_33:
	UNIMP
	li s8, failed_addr
	ld s3, 0(s8)
	jr s3
	# assert_exception block end
excp_return_label_33:
	# Set stvec to vectored mode (MODE=1) - exceptions still go to BASE
	li a5, 0x1
	csrrs s8, stvec, a5
	# Trigger exception: PC should go to stvec.BASE even in vectored mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_34, excp_return_label_34, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_34:
	UNIMP
	li a2, failed_addr
	ld s11, 0(a2)
	jr s11
	# assert_exception block end
excp_return_label_34:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(stvec, write, false, true)
SID_EXCEP_33_S_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_35)
SID_EXCEP_35:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_35_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS/CSRRC with rs1=x0 on RO CSRs: no write, no exception
	# Set mcounteren.CY=1
	li s6, 0x1
	mv t2, s6
	;#csr_rw(mcounteren, set, false, false)
	# CSRRS cycle with rs1=x0: read-only, no write -> no exception
	csrrs s2, cycle, zero
	# CSRRC cycle with rs1=x0: read-only, no write -> no exception
	csrrc t5, cycle, zero
	# CSRRSI cycle with imm=0: read-only, no write -> no exception
	csrrsi t3, cycle, 0
	# CSRRCI cycle with imm=0: read-only, no write -> no exception
	csrrci s1, cycle, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
SID_EXCEP_35_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_37)
SID_EXCEP_37:
	li sp, SID_EXCEP_37_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# JALR masks bit 0 of target address: no misaligned exception
	# JALR with rs1 having LSB set: bit 0 masked by hardware
	auipc t6, 0
	addi a6, t6, 0xd
	jalr t5, 0(a6)
	nop
	# Execution continues: JALR cleared bit 0 of target
SID_EXCEP_37_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_38)
SID_EXCEP_38:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_38_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Static FP rounding mode ignores reserved FCSR.FRM - no exception
	# Set FCSR.FRM=101 (reserved) but use static rounding in instruction
	li t1, 0xa0
	csrrw a3, fcsr, t1
	# FADD.S with static rne rounding: FCSR.FRM ignored, no exception
	fadd.s fa0, fa1, fa2, rne
	li t6, 0xc0
	csrrw a0, fcsr, t6
	fmul.s fa0, fa1, fa2, rtz
	li s0, 0xe0
	csrrw t3, fcsr, s0
	fsub.s fa0, fa1, fa2, rdn
	# All static rounding mode FP ops completed without exception
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
SID_EXCEP_38_passed:
	;#test_passed()

test_cleanup:
	;#test_passed()
local_test_failed:
	;#test_failed()

.section .data
;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_04_SU_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_SU_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_SU_stack, phys_name=SID_EXCEP_04_SU_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_SU_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_05_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_05_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_05_stack, phys_name=SID_EXCEP_05_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_05_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_06_stack, phys_name=SID_EXCEP_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_06_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_07_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_07_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_07_stack, phys_name=SID_EXCEP_07_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_07_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_08_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_08_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_08_stack, phys_name=SID_EXCEP_08_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_08_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_10_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_10_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_10_stack, phys_name=SID_EXCEP_10_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_10_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_12_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_12_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_12_stack, phys_name=SID_EXCEP_12_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_12_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_15_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_15_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_15_S_stack, phys_name=SID_EXCEP_15_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_15_S_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_16_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_16_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_16_stack, phys_name=SID_EXCEP_16_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_16_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_17_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_17_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_17_stack, phys_name=SID_EXCEP_17_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_17_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_32_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_32_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_32_S_stack, phys_name=SID_EXCEP_32_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_32_S_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_33_S_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_33_S_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_33_S_stack, phys_name=SID_EXCEP_33_S_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_33_S_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_35_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_35_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_35_stack, phys_name=SID_EXCEP_35_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_35_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_37_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_37_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_37_stack, phys_name=SID_EXCEP_37_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_37_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_38_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_38_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_38_stack, phys_name=SID_EXCEP_38_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_38_stack
.dword 0xc001c0de
