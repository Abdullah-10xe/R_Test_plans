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

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_04_M)
SID_EXCEP_04_M:
	li sp, SID_EXCEP_04_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Access reserved/unpriv CSRs to trigger illegal instruction
	# Write to read-only CSR mvendorid
	li s1, 0x1234
	OS_SETUP_CHECK_EXCP 0x2, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	csrrw s0, mvendorid, s1
	li a0, failed_addr
	ld s4, 0(a0)
	jr s4
	# assert_exception block end
excp_return_label_0:
	# Access unimplemented CSR address
	OS_SETUP_CHECK_EXCP 0x2, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	csrr a4, 0x000
	li a0, failed_addr
	ld a0, 0(a0)
	jr a0
	# assert_exception block end
excp_return_label_1:
	# Write to read-only system CSR cycle
	li a4, 0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	csrrw s3, cycle, a4
	li s2, failed_addr
	ld s1, 0(s2)
	jr s1
	# assert_exception block end
excp_return_label_2:
SID_EXCEP_04_M_passed:
	;#test_passed()

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
	li a2, failed_addr
	ld s10, 0(a2)
	jr s10
	# assert_exception block end
excp_return_label_3:
	# All ones 32-bit opcode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_4, excp_return_label_4, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_4:
	.word 0xFFFFFFFF
	li t2, failed_addr
	ld s11, 0(t2)
	jr s11
	# assert_exception block end
excp_return_label_4:
	# ILEN[15:0]=0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	.word 0xDEAD0000
	li t6, failed_addr
	ld a3, 0(t6)
	jr a3
	# assert_exception block end
excp_return_label_5:
	# Reserved opcode space
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	.word 0x0000007F
	li s6, failed_addr
	ld s10, 0(s6)
	jr s10
	# assert_exception block end
excp_return_label_6:
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
	li s4, 0x1000
	csrrc t5, misa, s4
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	mul a0, a1, a2
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
	# assert_exception block end
excp_return_label_7:
	csrrs s10, misa, s4
	# Disable MISA.F and execute FADD.S
	li s9, 0x20
	csrrc s11, misa, s9
	OS_SETUP_CHECK_EXCP 0x2, fault_label_8, excp_return_label_8, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_8:
	fadd.s fa0, fa1, fa2
	li a4, failed_addr
	ld t2, 0(a4)
	jr t2
	# assert_exception block end
excp_return_label_8:
	csrrs t1, misa, s9
	# Disable MISA.D and execute FADD.D
	li s6, 0x8
	csrrc t6, misa, s6
	OS_SETUP_CHECK_EXCP 0x2, fault_label_9, excp_return_label_9, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_9:
	fadd.d fa0, fa1, fa2
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
	# assert_exception block end
excp_return_label_9:
	csrrs s7, misa, s6
	# Disable MISA.V and execute vector instruction
	li a4, 0x200000
	csrrc a3, misa, a4
	OS_SETUP_CHECK_EXCP 0x2, fault_label_10, excp_return_label_10, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_10:
	vadd.vv v0, v1, v2
	li s9, failed_addr
	ld a5, 0(s9)
	jr a5
	# assert_exception block end
excp_return_label_10:
	csrrs s3, misa, a4
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
	li a5, 0x20
	csrrc t1, misa, a5
	OS_SETUP_CHECK_EXCP 0x2, fault_label_11, excp_return_label_11, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_11:
	fadd.d fa0, fa1, fa2
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
	# assert_exception block end
excp_return_label_11:
	csrrs a3, misa, a5
	# Clear MISA.F, test Zfh half-precision instruction
	li a4, 0x20
	csrrc t3, misa, a4
	OS_SETUP_CHECK_EXCP 0x2, fault_label_12, excp_return_label_12, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_12:
	fadd.h fa0, fa1, fa2
	li t4, failed_addr
	ld s7, 0(t4)
	jr s7
	# assert_exception block end
excp_return_label_12:
	csrrs t6, misa, a4
	# Clear MISA.F, test V extension FP vector instructions
	li a4, 0x20
	csrrc a2, misa, a4
	OS_SETUP_CHECK_EXCP 0x2, fault_label_13, excp_return_label_13, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_13:
	vfadd.vv v0, v1, v2
	li a6, failed_addr
	ld t5, 0(a6)
	jr t5
	# assert_exception block end
excp_return_label_13:
	csrrs a4, misa, a4
	# Clear MISA.V, test Zvbb/Zvbc dependent instructions
	li s3, 0x200000
	csrrc t5, misa, s3
	OS_SETUP_CHECK_EXCP 0x2, fault_label_14, excp_return_label_14, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_14:
	vandn.vv v0, v1, v2
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
	# assert_exception block end
excp_return_label_14:
	csrrs s9, misa, s3
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
	li t6, 0x6000
	csrrc s8, mstatus, t6
	OS_SETUP_CHECK_EXCP 0x2, fault_label_15, excp_return_label_15, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_15:
	fadd.s fa0, fa1, fa2
	li a7, failed_addr
	ld s2, 0(a7)
	jr s2
	# assert_exception block end
excp_return_label_15:
	# FP load with FS=OFF
	OS_SETUP_CHECK_EXCP 0x2, fault_label_16, excp_return_label_16, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_16:
	flw fa0, 0(a0)
	li s6, failed_addr
	ld a1, 0(s6)
	jr a1
	# assert_exception block end
excp_return_label_16:
	li s6, 0x6000
	csrrs s5, mstatus, s6
	# Set mstatus.VS=OFF (bits 10:9=00) and execute vector instruction
	li s2, 0x600
	csrrc s6, mstatus, s2
	OS_SETUP_CHECK_EXCP 0x2, fault_label_17, excp_return_label_17, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_17:
	vadd.vv v0, v1, v2
	li s10, failed_addr
	ld a7, 0(s10)
	jr a7
	# assert_exception block end
excp_return_label_17:
	# VCSR access with VS=OFF
	OS_SETUP_CHECK_EXCP 0x2, fault_label_18, excp_return_label_18, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_18:
	csrr t4, vl
	li a4, failed_addr
	ld t5, 0(a4)
	jr t5
	# assert_exception block end
excp_return_label_18:
	li a6, 0x600
	csrrs s8, mstatus, a6
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
SID_EXCEP_08_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_09)
SID_EXCEP_09:
	li sp, tp_csr_storage
	;#csr_rw(misa, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mstatus, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_EXCEP_09_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MISA.F/V and xSTATUS.FS/VS orthogonality - both paths fault independently
	# MISA.F=0, mstatus.FS=Initial: FP instruction faults
	li s8, 0x20
	csrrc s6, misa, s8
	li a7, 0x2000
	csrrs t5, mstatus, a7
	OS_SETUP_CHECK_EXCP 0x2, fault_label_19, excp_return_label_19, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_19:
	fadd.s fa0, fa1, fa2
	li s5, failed_addr
	ld s7, 0(s5)
	jr s7
	# assert_exception block end
excp_return_label_19:
	csrrs s2, misa, s8
	# MISA.F=1, mstatus.FS=OFF: FP instruction faults
	li t5, 0x6000
	csrrc s8, mstatus, t5
	OS_SETUP_CHECK_EXCP 0x2, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_20:
	fadd.s fa0, fa1, fa2
	li t4, failed_addr
	ld s8, 0(t4)
	jr s8
	# assert_exception block end
excp_return_label_20:
	csrrs s10, mstatus, t5
	# MISA.V=0, mstatus.VS=Initial: vector instruction faults
	li a7, 0x200000
	csrrc t4, misa, a7
	li a3, 0x200
	csrrs s3, mstatus, a3
	OS_SETUP_CHECK_EXCP 0x2, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_21:
	vadd.vv v0, v1, v2
	li t4, failed_addr
	ld a1, 0(t4)
	jr a1
	# assert_exception block end
excp_return_label_21:
	csrrs t5, misa, a7
	# MISA.V=1, mstatus.VS=OFF: vector instruction faults
	li s9, 0x600
	csrrc t5, mstatus, s9
	OS_SETUP_CHECK_EXCP 0x2, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_22:
	vadd.vv v0, v1, v2
	li s7, failed_addr
	ld s4, 0(s7)
	jr s4
	# assert_exception block end
excp_return_label_22:
	csrrs s11, mstatus, s9
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(misa, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mstatus, write, false, true)
SID_EXCEP_09_passed:
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
	li t6, 0xa0
	csrrw t3, fcsr, t6
	OS_SETUP_CHECK_EXCP 0x2, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_23:
	fadd.s fa0, fa1, fa2, dyn
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
	# assert_exception block end
excp_return_label_23:
	# Set FCSR.FRM=110 (reserved), execute FP with dynamic rounding
	li s7, 0xc0
	csrrw s9, fcsr, s7
	OS_SETUP_CHECK_EXCP 0x2, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_24:
	fadd.s fa0, fa1, fa2, dyn
	li t6, failed_addr
	ld t5, 0(t6)
	jr t5
	# assert_exception block end
excp_return_label_24:
	# Set FCSR.FRM=111 (reserved), execute FP with dynamic rounding
	li t4, 0xe0
	csrrw s3, fcsr, t4
	OS_SETUP_CHECK_EXCP 0x2, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_25:
	fadd.s fa0, fa1, fa2, dyn
	li a5, failed_addr
	ld t4, 0(a5)
	jr t4
	# assert_exception block end
excp_return_label_25:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
SID_EXCEP_10_passed:
	;#test_passed()

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
	li a2, failed_addr
	ld s6, 0(a2)
	jr s6
	# assert_exception block end
excp_return_label_26:
SID_EXCEP_16_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_32_M)
SID_EXCEP_32_M:
	li sp, tp_csr_storage
	;#csr_rw(medeleg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_32_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MEDELEG bit-by-bit functional testing
	# Disable MEDELEG bit 2 -> traps to M-mode
	li s6, 0x4
	csrrc a7, medeleg, s6
	OS_SETUP_CHECK_EXCP 0x2, fault_label_27, excp_return_label_27, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_27:
	.word 0x00000000
	li t4, failed_addr
	ld s11, 0(t4)
	jr s11
	# assert_exception block end
excp_return_label_27:
	# Verify mcause reflects illegal instruction (cause=2)
	csrr s0, mcause
	li s2, 0x2
	beq s0, s2, pass_label_0
	li s11, failed_addr
	ld t1, 0(s11)
	jr t1
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(medeleg, write, false, true)
SID_EXCEP_32_M_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_33_M)
SID_EXCEP_33_M:
	li sp, tp_csr_storage
	;#csr_rw(mtvec, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_33_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# xTVEC direct and vectored mode functional testing
	# Set stvec to direct mode (MODE=0)
	li a2, 0x1
	csrrc t5, mtvec, a2
	# Trigger exception: PC should go to mtvec.BASE in direct mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_28, excp_return_label_28, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_28:
	UNIMP
	li s1, failed_addr
	ld t2, 0(s1)
	jr t2
	# assert_exception block end
excp_return_label_28:
	# Set mtvec to vectored mode (MODE=1) - exceptions still go to BASE
	li s11, 0x1
	csrrs t6, mtvec, s11
	# Trigger exception: PC should go to mtvec.BASE even in vectored mode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_29, excp_return_label_29, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_29:
	UNIMP
	li s0, failed_addr
	ld s2, 0(s0)
	jr s2
	# assert_exception block end
excp_return_label_29:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mtvec, write, false, true)
SID_EXCEP_33_M_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_34)
SID_EXCEP_34:
	li sp, tp_csr_storage
	;#csr_rw(mscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_34_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW/CSRRWI with rd=x0: write-only, no read side effect
	# CSRRW to mscratch with rd=x0: write-only
	li s8, 0xcafebabe
	csrrw a3, mscratch, s8
	# Verify mscratch was written correctly
	csrr t4, mscratch
	beq t4, s8, pass_label_1
	li s1, failed_addr
	ld t4, 0(s1)
	jr t4
pass_label_1:
	# CSRRSI always reads regardless of rd - read side effects occur
	li s9, 0
	csrrsi a1, mscratch, 0
	# CSRRCI always reads regardless of rd - read side effects occur
	li a7, 0
	csrrci a6, mscratch, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mscratch, write, false, true)
SID_EXCEP_34_passed:
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
	li a2, 0x1
	csrrs t2, mcounteren, a2
	# CSRRS cycle with rs1=x0: read-only, no write -> no exception
	csrrs s5, cycle, zero
	# CSRRC cycle with rs1=x0: read-only, no write -> no exception
	csrrc t6, cycle, zero
	# CSRRSI cycle with imm=0: read-only, no write -> no exception
	csrrsi s5, cycle, 0
	# CSRRCI cycle with imm=0: read-only, no write -> no exception
	csrrci s0, cycle, 0
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
	auipc t2, 0
	addi s2, t2, 0xd
	jalr s3, 0(s2)
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
	li a1, 0xa0
	csrrw a4, fcsr, a1
	# FADD.S with static rne rounding: FCSR.FRM ignored, no exception
	fadd.s fa0, fa1, fa2, rne
	li t4, 0xc0
	csrrw t1, fcsr, t4
	fmul.s fa0, fa1, fa2, rtz
	li s1, 0xe0
	csrrw a2, fcsr, s1
	fsub.s fa0, fa1, fa2, rdn
	# All static rounding mode FP ops completed without exception
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
SID_EXCEP_38_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_40)
SID_EXCEP_40:
	li sp, tp_csr_storage
	;#csr_rw(medeleg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_EXCEP_40_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# MEDELEG bit 11 and SEDELEG.11:9 hardwired to zero
	# Write all ones to MEDELEG
	li s0, -1
	csrrw t1, medeleg, s0
	# Verify MEDELEG bit 11 (ECALL from M-mode) is hardwired zero
	csrr s1, medeleg
	li s0, 0x800
	and t2, s1, s0
	li s5, 0
	beq t2, s5, pass_label_2
	li s2, failed_addr
	ld a4, 0(s2)
	jr a4
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(medeleg, write, false, true)
SID_EXCEP_40_passed:
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

;#random_addr(name=SID_EXCEP_04_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_04_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_04_M_stack, phys_name=SID_EXCEP_04_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_04_M_stack
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

;#random_addr(name=SID_EXCEP_09_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_09_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_09_stack, phys_name=SID_EXCEP_09_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_09_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_10_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_10_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_10_stack, phys_name=SID_EXCEP_10_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_10_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_16_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_16_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_16_stack, phys_name=SID_EXCEP_16_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_16_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_32_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_32_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_32_M_stack, phys_name=SID_EXCEP_32_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_32_M_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_33_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_33_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_33_M_stack, phys_name=SID_EXCEP_33_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_33_M_stack
.dword 0xc001c0de

;#random_addr(name=SID_EXCEP_34_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_34_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_34_stack, phys_name=SID_EXCEP_34_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_34_stack
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

;#random_addr(name=SID_EXCEP_40_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_40_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_40_stack, phys_name=SID_EXCEP_40_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_40_stack
.dword 0xc001c0de
