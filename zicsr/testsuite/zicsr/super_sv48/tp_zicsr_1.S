;#test.name       zicsr
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zicsr
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zicsr

#include "rvmodel_macros.h"
.include "tp_zicsr_1_equates.inc"

.include "tp_zicsr_1_pagetables.inc"
#include "tp_zicsr_1_macros.inc"
#include "tp_zicsr_1_loader.inc"
#include "tp_zicsr_1_syscalls.inc"
#include "tp_zicsr_1_trap_handler_m.inc"
#include "tp_zicsr_1_trap_handler_s.inc"
#include "tp_zicsr_1_os.inc"
#include "tp_zicsr_1_eot.inc"
#include "tp_zicsr_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_01)
SID_ZICSR_01:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with max-int, rd is non-zero
	li t6, -1
	csrrw t5, senvcfg, t6
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_01_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_02)
SID_ZICSR_02:
	li sp, tp_csr_storage
	;#csr_rw(stvec, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_02_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with max-int, rd is x0 (no read)
	li a4, -1
	csrrw s1, stvec, a4
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(stvec, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_02_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_03)
SID_ZICSR_03:
	li sp, tp_csr_storage
	;#csr_rw(sepc, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_03_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with 0 to zero out CSR
	li t5, 0
	csrrw s4, sepc, t5
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sepc, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_03_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_04)
SID_ZICSR_04:
	li sp, tp_csr_storage
	;#csr_rw(sepc, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_04_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS: Set all bits using max-int mask
	li s10, -1
	csrrs s2, sepc, s10
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sepc, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_04_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_05)
SID_ZICSR_05:
	li sp, tp_csr_storage
	;#csr_rw(stval, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_05_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS: Read-only access by setting rs1 to 0
	li a2, 0
	csrrs s1, stval, a2
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(stval, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_05_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_06)
SID_ZICSR_06:
	li sp, tp_csr_storage
	;#csr_rw(sepc, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Clear all bits using max-int mask
	li t1, -1
	csrrc s3, sepc, t1
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sepc, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_06_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_07)
SID_ZICSR_07:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_07_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Read-only access by setting rs1 to 0
	li s9, 0
	csrrc t6, senvcfg, s9
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_07_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_08)
SID_ZICSR_08:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is non-zero
	csrrwi t1, senvcfg, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_08_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_09)
SID_ZICSR_09:
	li sp, tp_csr_storage
	;#csr_rw(stval, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_09_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is x0
	csrrwi s4, stval, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(stval, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 10
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_09_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_10)
SID_ZICSR_10:
	li sp, SID_ZICSR_10_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is non-zero
	csrrwi t4, sscratch, 0
SID_ZICSR_10_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_11)
SID_ZICSR_11:
	li sp, SID_ZICSR_11_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is x0
	csrrwi a3, senvcfg, 0
SID_ZICSR_11_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_12)
SID_ZICSR_12:
	li sp, tp_csr_storage
	;#csr_rw(scause, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 19
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_12_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Set bits using max imm (0x1F)
	csrrsi s1, scause, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(scause, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 20
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_12_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_13)
SID_ZICSR_13:
	li sp, SID_ZICSR_13_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Read-only access by setting uimm to 0
	csrrsi t1, stval, 0
SID_ZICSR_13_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_14)
SID_ZICSR_14:
	li sp, tp_csr_storage
	;#csr_rw(stvec, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_14_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRCI: Clear bits using max imm (0x1F)
	csrrci t1, stvec, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(stvec, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_14_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_15)
SID_ZICSR_15:
	li sp, SID_ZICSR_15_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRCI: Read-only access by setting uimm to 0
	csrrci s7, sepc, 0
SID_ZICSR_15_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_16)
SID_ZICSR_16:
	li sp, SID_ZICSR_16_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSR access surrounded by random arithmetic instructions
	li a5, 0x3b1a11e2
	addi a6, a5, 0x43b
	csrrw s10, stvec, zero
	li s7, 0xad45f240
	li s9, 0x380208ac
	mulhsu s4, s7, s9
	csrrs t5, senvcfg, zero
	li t2, 0xc2cd789d
	li t3, 0x75a89297
	li a4, 0xf3c64afa
	fcvt.d.lu fs8, t2
	fcvt.d.w fs11, t3
	fcvt.s.l fa3, a4
	fnmadd.d fa5, fs8, fs11, fa3
	csrrc s4, sepc, zero
	li a2, 0x4a2f20ad
	li s8, 0xed2f89dc
	fcvt.d.lu fs4, a2
	fcvt.s.lu fa3, s8
	fadd.s ft8, fs4, fa3
	csrrwi a2, scounteren, 0
	li t3, 0x5805978
	li s8, 0x6a8ac4bd
	fcvt.s.w fa2, t3
	fcvt.d.wu ft3, s8
	fmul.s fs3, fa2, ft3
	csrrsi a4, senvcfg, 0
	li s10, 0xd66b82a1
	li a0, 0xea90a8f3
	mulhsu s10, s10, a0
	csrrci a7, scause, 0
	li t5, 0x8e73ca4a
	li a5, 0xec148cb7
	clmulh t6, t5, a5
SID_ZICSR_16_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_17)
SID_ZICSR_17:
	li sp, SID_ZICSR_17_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Back to back CSR accesses - all cross coverage cases
	csrrw s9, sepc, zero
	csrrw t1, stval, zero
	csrrw t1, stvec, zero
	csrrs a4, stvec, zero
	csrrw t4, stvec, zero
	csrrc a2, scause, zero
	csrrw s11, stval, zero
	csrrwi t5, senvcfg, 0
	csrrw a3, scause, zero
	csrrsi s1, sscratch, 0
	csrrw s1, scause, zero
	csrrci s9, senvcfg, 0
	csrrs s9, sepc, zero
	csrrw s3, scounteren, zero
	csrrs s0, sscratch, zero
	csrrs a3, scounteren, zero
	csrrs a1, sepc, zero
	csrrc a5, stvec, zero
	csrrs t2, stval, zero
	csrrwi t4, scounteren, 0
	csrrs a0, scounteren, zero
	csrrsi t4, senvcfg, 0
	csrrs a0, scounteren, zero
	csrrci s10, sepc, 0
	csrrc s8, senvcfg, zero
	csrrw t6, scause, zero
	csrrc s4, stval, zero
	csrrs s4, senvcfg, zero
	csrrc t2, sscratch, zero
	csrrc s7, stval, zero
	csrrc s1, stvec, zero
	csrrwi s11, sscratch, 0
	csrrc s2, sepc, zero
	csrrsi t1, scounteren, 0
	csrrc a4, sscratch, zero
	csrrci s3, scause, 0
	csrrwi t6, stvec, 0
	csrrw a2, sepc, zero
	csrrwi t1, senvcfg, 0
	csrrs a3, senvcfg, zero
	csrrwi a4, senvcfg, 0
	csrrc a2, scause, zero
	csrrwi a5, scause, 0
	csrrwi t2, senvcfg, 0
	csrrwi a4, scounteren, 0
	csrrsi a0, scounteren, 0
	csrrwi s11, senvcfg, 0
	csrrci s2, scounteren, 0
	csrrsi s6, sepc, 0
	csrrw a6, sepc, zero
	csrrsi s8, stvec, 0
	csrrs s3, stvec, zero
	csrrsi s7, senvcfg, 0
	csrrc a3, stval, zero
	csrrsi a3, sscratch, 0
	csrrwi a1, scause, 0
	csrrsi s4, sepc, 0
	csrrsi t5, scounteren, 0
	csrrsi t6, senvcfg, 0
	csrrci s4, stvec, 0
	csrrci s6, senvcfg, 0
	csrrw s10, sscratch, zero
	csrrci a3, senvcfg, 0
	csrrs s11, stval, zero
	csrrci a7, stvec, 0
	csrrc a2, scounteren, zero
	csrrci s5, scounteren, 0
	csrrwi s8, scause, 0
	csrrci s1, stval, 0
	csrrsi s9, sscratch, 0
	csrrci s8, stval, 0
	csrrci t2, stvec, 0
SID_ZICSR_17_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_19)
SID_ZICSR_19:
	li sp, tp_csr_storage
	;#csr_rw(sscratch, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 23
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_19_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# ZICSR test: sscratch write/set/clear with assertions (S-mode)
	li s4, -1
	li t4, 0
	li s7, 0x1f
	# CSRRW: Write all ones to sscratch
	csrrw t5, sscratch, s4
	csrr s3, sscratch
	beq s3, s4, pass_label_0
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
pass_label_0:
	# CSRRW: Clear sscratch by writing 0
	li s3, 0
	csrrw s3, sscratch, s3
	csrr s11, sscratch
	beq s11, t4, pass_label_1
	li s8, failed_addr
	ld a4, 0(s8)
	jr a4
pass_label_1:
	# CSRRS: Set all bits in sscratch
	csrrs t5, sscratch, s4
	csrr s8, sscratch
	beq s8, s4, pass_label_2
	li t1, failed_addr
	ld s9, 0(t1)
	jr s9
pass_label_2:
	# CSRRC: Clear all bits in sscratch
	csrrc t1, sscratch, s4
	csrr a4, sscratch
	beq a4, t4, pass_label_3
	li s5, failed_addr
	ld t1, 0(s5)
	jr t1
pass_label_3:
	# CSRRWI: Write max immediate (0x1F) to sscratch
	csrrwi s4, sscratch, 0x1f
	csrr s10, sscratch
	beq s10, s7, pass_label_4
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
pass_label_4:
	# CSRRWI: Clear sscratch by writing 0
	csrrwi s6, sscratch, 0
	csrr a2, sscratch
	beq a2, t4, pass_label_5
	li a7, failed_addr
	ld s1, 0(a7)
	jr s1
pass_label_5:
	# CSRRSI: Set bits with max immediate (0x1F) in sscratch
	csrrsi s3, sscratch, 0x1f
	csrr a1, sscratch
	beq a1, s7, pass_label_6
	li a5, failed_addr
	ld s8, 0(a5)
	jr s8
pass_label_6:
	# CSRRCI: Clear bits with max immediate (0x1F) in sscratch
	csrrci s9, sscratch, 0x1f
	csrr s8, sscratch
	beq s8, t4, pass_label_7
	li t6, failed_addr
	ld s0, 0(t6)
	jr s0
pass_label_7:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sscratch, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 24
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_19_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_ZICSR_20)
SID_ZICSR_20:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 25
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_ZICSR_20_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# ZICSR test: fcsr write/set/clear with assertions (lower 8 bits only)
	li s8, 0xff
	li a4, 0
	li a0, 0x1f
	li t1, 0xff
	# CSRRW: Write 0xFF to fcsr (all 8 writable bits)
	csrrw s11, fcsr, s8
	csrr s0, fcsr
	and t5, s0, t1
	beq t5, s8, pass_label_8
	li a6, failed_addr
	ld s11, 0(a6)
	jr s11
pass_label_8:
	# CSRRW: Clear fcsr by writing 0
	li s10, 0
	csrrw a5, fcsr, s10
	csrr s11, fcsr
	and s0, s11, t1
	beq s0, a4, pass_label_9
	li s1, failed_addr
	ld t3, 0(s1)
	jr t3
pass_label_9:
	# CSRRS: Set all 8 bits in fcsr
	csrrs s3, fcsr, s8
	csrr t4, fcsr
	and a3, t4, t1
	beq a3, s8, pass_label_10
	li s5, failed_addr
	ld s3, 0(s5)
	jr s3
pass_label_10:
	# CSRRC: Clear all 8 bits in fcsr
	csrrc s3, fcsr, s8
	csrr a5, fcsr
	and a3, a5, t1
	beq a3, a4, pass_label_11
	li s6, failed_addr
	ld t3, 0(s6)
	jr t3
pass_label_11:
	# CSRRWI: Write max immediate (0x1F) to fcsr
	csrrwi a7, fcsr, 0x1f
	csrr t3, fcsr
	and s0, t3, t1
	beq s0, a0, pass_label_12
	li a6, failed_addr
	ld a5, 0(a6)
	jr a5
pass_label_12:
	# CSRRWI: Clear fcsr by writing 0
	csrrwi s3, fcsr, 0
	csrr t2, fcsr
	and s1, t2, t1
	beq s1, a4, pass_label_13
	li a5, failed_addr
	ld s8, 0(a5)
	jr s8
pass_label_13:
	# CSRRSI: Set bits with max immediate (0x1F) in fcsr
	csrrsi s11, fcsr, 0x1f
	csrr a1, fcsr
	and t6, a1, t1
	beq t6, a0, pass_label_14
	li s10, failed_addr
	ld a7, 0(s10)
	jr a7
pass_label_14:
	# CSRRCI: Clear bits with max immediate (0x1F) in fcsr
	csrrci s11, fcsr, 0x1f
	csrr s9, fcsr
	and s0, s9, t1
	beq s0, a4, pass_label_15
	li s1, failed_addr
	ld s5, 0(s1)
	jr s5
pass_label_15:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 26
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_ZICSR_20_passed:
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

;#random_addr(name=SID_ZICSR_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_01_stack, phys_name=SID_ZICSR_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_01_stack
.section .SID_ZICSR_01_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_02_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_02_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_02_stack, phys_name=SID_ZICSR_02_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_02_stack
.section .SID_ZICSR_02_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_03_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_03_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_03_stack, phys_name=SID_ZICSR_03_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_03_stack
.section .SID_ZICSR_03_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_04_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_04_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_04_stack, phys_name=SID_ZICSR_04_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_04_stack
.section .SID_ZICSR_04_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_05_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_05_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_05_stack, phys_name=SID_ZICSR_05_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_05_stack
.section .SID_ZICSR_05_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_06_stack, phys_name=SID_ZICSR_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_06_stack
.section .SID_ZICSR_06_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_07_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_07_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_07_stack, phys_name=SID_ZICSR_07_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_07_stack
.section .SID_ZICSR_07_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_08_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_08_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_08_stack, phys_name=SID_ZICSR_08_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_08_stack
.section .SID_ZICSR_08_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_09_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_09_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_09_stack, phys_name=SID_ZICSR_09_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_09_stack
.section .SID_ZICSR_09_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_10_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_10_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_10_stack, phys_name=SID_ZICSR_10_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_10_stack
.section .SID_ZICSR_10_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_11_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_11_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_11_stack, phys_name=SID_ZICSR_11_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_11_stack
.section .SID_ZICSR_11_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_12_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_12_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_12_stack, phys_name=SID_ZICSR_12_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_12_stack
.section .SID_ZICSR_12_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_13_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_13_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_13_stack, phys_name=SID_ZICSR_13_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_13_stack
.section .SID_ZICSR_13_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_14_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_14_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_14_stack, phys_name=SID_ZICSR_14_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_14_stack
.section .SID_ZICSR_14_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_15_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_15_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_15_stack, phys_name=SID_ZICSR_15_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_15_stack
.section .SID_ZICSR_15_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_16_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_16_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_16_stack, phys_name=SID_ZICSR_16_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_16_stack
.section .SID_ZICSR_16_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_17_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_17_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_17_stack, phys_name=SID_ZICSR_17_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_17_stack
.section .SID_ZICSR_17_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_19_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_19_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_19_stack, phys_name=SID_ZICSR_19_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_19_stack
.section .SID_ZICSR_19_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_20_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_20_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_20_stack, phys_name=SID_ZICSR_20_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_20_stack
.section .SID_ZICSR_20_stack, "aw"

.dword 0xc001c0de
