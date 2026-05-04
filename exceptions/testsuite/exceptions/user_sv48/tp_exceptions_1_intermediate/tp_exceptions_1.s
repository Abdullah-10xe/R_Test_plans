;#test.name       exceptions
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
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
	li a1, failed_addr
	ld s9, 0(a1)
	jr s9
	# assert_exception block end
excp_return_label_1:
	# Access unimplemented CSR address
	OS_SETUP_CHECK_EXCP 0x2, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_2:
	;#csr_rw(0x000, read, true, false)
	mv s9, t2
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
	# assert_exception block end
excp_return_label_2:
	# Write to read-only system CSR cycle
	li s9, 0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	mv t2, s9
fault_label_3:
	;#csr_rw(cycle, write, true, false)
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
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
	li a2, failed_addr
	ld s1, 0(a2)
	jr s1
	# assert_exception block end
excp_return_label_4:
	# All ones 32-bit opcode
	OS_SETUP_CHECK_EXCP 0x2, fault_label_5, excp_return_label_5, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_5:
	.word 0xFFFFFFFF
	li s7, failed_addr
	ld t1, 0(s7)
	jr t1
	# assert_exception block end
excp_return_label_5:
	# ILEN[15:0]=0
	OS_SETUP_CHECK_EXCP 0x2, fault_label_6, excp_return_label_6, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_6:
	.word 0xDEAD0000
	li s5, failed_addr
	ld s8, 0(s5)
	jr s8
	# assert_exception block end
excp_return_label_6:
	# Reserved opcode space
	OS_SETUP_CHECK_EXCP 0x2, fault_label_7, excp_return_label_7, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_7:
	.word 0x0000007F
	li t6, failed_addr
	ld s8, 0(t6)
	jr s8
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
	li s0, 0x1000
	mv t2, s0
	;#csr_rw(misa, clear, false, false)
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
	# Disable MISA.F and execute FADD.S
	li a7, 0x20
	mv t2, a7
	;#csr_rw(misa, clear, false, false)
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
	# Disable MISA.D and execute FADD.D
	li s0, 0x8
	mv t2, s0
	;#csr_rw(misa, clear, false, false)
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
	# Disable MISA.V and execute vector instruction
	li s1, 0x200000
	mv t2, s1
	;#csr_rw(misa, clear, false, false)
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
	li t4, 0x20
	mv t2, t4
	;#csr_rw(misa, clear, false, false)
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
	# Clear MISA.F, test Zfh half-precision instruction
	li s4, 0x20
	mv t2, s4
	;#csr_rw(misa, clear, false, false)
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
	# Clear MISA.F, test V extension FP vector instructions
	li s7, 0x20
	mv t2, s7
	;#csr_rw(misa, clear, false, false)
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
	# Clear MISA.V, test Zvbb/Zvbc dependent instructions
	li s8, 0x200000
	mv t2, s8
	;#csr_rw(misa, clear, false, false)
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
	li s4, 0x6000
	mv t2, s4
	;#csr_rw(mstatus, clear, false, false)
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
	# Set mstatus.VS=OFF (bits 10:9=00) and execute vector instruction
	li s10, 0x600
	mv t2, s10
	;#csr_rw(mstatus, clear, false, false)
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
	;#csr_rw(vl, read, true, false)
	mv t3, t2
	li s5, failed_addr
	ld t1, 0(s5)
	jr t1
	# assert_exception block end
excp_return_label_19:
	li t5, 0x600
	mv t2, t5
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
	li s7, 0xa0
	mv t2, s7
	;#csr_rw(fcsr, write, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_20, excp_return_label_20, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_20:
	fadd.s fa0, fa1, fa2, dyn
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
	# assert_exception block end
excp_return_label_20:
	# Set FCSR.FRM=110 (reserved), execute FP with dynamic rounding
	li a3, 0xc0
	mv t2, a3
	;#csr_rw(fcsr, write, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_21, excp_return_label_21, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_21:
	fadd.s fa0, fa1, fa2, dyn
	li t6, failed_addr
	ld a3, 0(t6)
	jr a3
	# assert_exception block end
excp_return_label_21:
	# Set FCSR.FRM=111 (reserved), execute FP with dynamic rounding
	li s2, 0xe0
	mv t2, s2
	;#csr_rw(fcsr, write, false, false)
	OS_SETUP_CHECK_EXCP 0x2, fault_label_22, excp_return_label_22, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_22:
	fadd.s fa0, fa1, fa2, dyn
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
	# assert_exception block end
excp_return_label_22:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
SID_EXCEP_10_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_15_U)
SID_EXCEP_15_U:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_EXCEP_15_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# xCOUNTEREN controls counter CSR accessibility per privilege level
	# Set mcounteren=0: all S/U counter access faults
	li a6, 0
	mv t2, a6
	;#csr_rw(mcounteren, write, false, false)
	# S-mode reads cycle with mcounteren.CY=0 -> fault
	OS_SETUP_CHECK_EXCP 0x2, fault_label_23, excp_return_label_23, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_23:
	;#csr_rw(cycle, read, true, false)
	mv t6, t2
	li t5, failed_addr
	ld s8, 0(t5)
	jr s8
	# assert_exception block end
excp_return_label_23:
	# S-mode reads time with mcounteren.TM=0 -> fault
	OS_SETUP_CHECK_EXCP 0x2, fault_label_24, excp_return_label_24, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_24:
	;#csr_rw(time, read, true, false)
	mv s5, t2
	li s10, failed_addr
	ld t5, 0(s10)
	jr t5
	# assert_exception block end
excp_return_label_24:
	# S-mode reads instret with mcounteren.IR=0 -> fault
	OS_SETUP_CHECK_EXCP 0x2, fault_label_25, excp_return_label_25, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_25:
	;#csr_rw(instret, read, true, false)
	mv a3, t2
	li s2, failed_addr
	ld s3, 0(s2)
	jr s3
	# assert_exception block end
excp_return_label_25:
	# mcounteren=all, scounteren=0: U-mode counter access faults
	li s8, -1
	mv t2, s8
	;#csr_rw(mcounteren, write, false, false)
	li t4, 0
	mv t2, t4
	;#csr_rw(scounteren, write, false, false)
	# U-mode reads cycle with scounteren.CY=0 -> fault
	OS_SETUP_CHECK_EXCP 0x2, fault_label_26, excp_return_label_26, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_26:
	;#csr_rw(cycle, read, true, false)
	mv t6, t2
	li s9, failed_addr
	ld a3, 0(s9)
	jr a3
	# assert_exception block end
excp_return_label_26:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_EXCEP_15_U_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_16)
SID_EXCEP_16:
	li sp, SID_EXCEP_16_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Verify xTVAL holds correct faulting instruction encoding
	# 4B illegal instruction: xTVAL = full 32-bit encoding
	OS_SETUP_CHECK_EXCP 0x2, fault_label_27, excp_return_label_27, 0xc0001073, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_27:
	UNIMP
	li t2, failed_addr
	ld s6, 0(t2)
	jr s6
	# assert_exception block end
excp_return_label_27:
SID_EXCEP_16_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_17)
SID_EXCEP_17:
	li sp, SID_EXCEP_17_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# ECALL from U-mode to M-mode
	# Execute ECALL - cause matches current privilege mode
	OS_SETUP_CHECK_EXCP 0x8, fault_label_28, excp_return_label_28, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_28:
	ecall
	li a3, failed_addr
	ld t5, 0(a3)
	jr t5
	# assert_exception block end
excp_return_label_28:
SID_EXCEP_17_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_35_U)
SID_EXCEP_35_U:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_EXCEP_35_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS/CSRRC with rs1=x0 on RO CSRs: no write, no exception
	# Set mcounteren.CY=1
	li t6, 0x1
	mv t2, t6
	;#csr_rw(mcounteren, set, false, false)
	# Set scounteren.CY=1
	li s3, 0x1
	mv t2, s3
	;#csr_rw(scounteren, set, false, false)
	# CSRRS cycle with rs1=x0: read-only, no write -> no exception
	csrrs s5, cycle, zero
	# CSRRC cycle with rs1=x0: read-only, no write -> no exception
	csrrc t5, cycle, zero
	# CSRRSI cycle with imm=0: read-only, no write -> no exception
	csrrsi a2, cycle, 0
	# CSRRCI cycle with imm=0: read-only, no write -> no exception
	csrrci s4, cycle, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_EXCEP_35_U_passed:
	;#test_passed()

;#discrete_test(test=SID_EXCEP_37)
SID_EXCEP_37:
	li sp, SID_EXCEP_37_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# JALR masks bit 0 of target address: no misaligned exception
	# JALR with rs1 having LSB set: bit 0 masked by hardware
	auipc s7, 0
	addi t4, s7, 0xd
	jalr s7, 0(t4)
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
	li s11, 0xa0
	mv t2, s11
	;#csr_rw(fcsr, write, false, false)
	# FADD.S with static rne rounding: FCSR.FRM ignored, no exception
	fadd.s fa0, fa1, fa2, rne
	li t6, 0xc0
	mv t2, t6
	;#csr_rw(fcsr, write, false, false)
	fmul.s fa0, fa1, fa2, rtz
	li s2, 0xe0
	mv t2, s2
	;#csr_rw(fcsr, write, false, false)
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

;#random_addr(name=SID_EXCEP_15_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_15_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_15_U_stack, phys_name=SID_EXCEP_15_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_15_U_stack
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

;#random_addr(name=SID_EXCEP_35_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_EXCEP_35_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_EXCEP_35_U_stack, phys_name=SID_EXCEP_35_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_EXCEP_35_U_stack
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
