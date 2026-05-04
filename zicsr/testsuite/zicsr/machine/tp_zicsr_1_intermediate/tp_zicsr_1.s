;#test.name       zicsr
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zicsr
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zicsr

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_01)
SID_ZICSR_01:
	li sp, tp_csr_storage
	;#csr_rw(medeleg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with max-int, rd is non-zero
	li a4, -1
	csrrw s1, medeleg, a4
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(medeleg, write, false, true)
SID_ZICSR_01_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_02)
SID_ZICSR_02:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_02_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with max-int, rd is x0 (no read)
	li t5, -1
	csrrw s4, menvcfg, t5
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_ZICSR_02_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_03)
SID_ZICSR_03:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_03_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with 0 to zero out CSR
	li s10, 0
	csrrw s2, menvcfg, s10
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_ZICSR_03_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_04)
SID_ZICSR_04:
	li sp, tp_csr_storage
	;#csr_rw(mscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_04_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS: Set all bits using max-int mask
	li s1, -1
	csrrs s6, mscratch, s1
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mscratch, write, false, true)
SID_ZICSR_04_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_05)
SID_ZICSR_05:
	li sp, tp_csr_storage
	;#csr_rw(mtvec, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_05_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS: Read-only access by setting rs1 to 0
	li s2, 0
	csrrs s4, mtvec, s2
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mtvec, write, false, true)
SID_ZICSR_05_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_06)
SID_ZICSR_06:
	li sp, tp_csr_storage
	;#csr_rw(mtvec, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Clear all bits using max-int mask
	li t3, -1
	csrrc s4, mtvec, t3
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mtvec, write, false, true)
SID_ZICSR_06_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_07)
SID_ZICSR_07:
	li sp, tp_csr_storage
	;#csr_rw(minstret, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_07_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Read-only access by setting rs1 to 0
	li t4, 0
	csrrc t4, minstret, t4
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(minstret, write, false, true)
SID_ZICSR_07_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_08)
SID_ZICSR_08:
	li sp, tp_csr_storage
	;#csr_rw(mscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is non-zero
	csrrwi s8, mscratch, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mscratch, write, false, true)
SID_ZICSR_08_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_09)
SID_ZICSR_09:
	li sp, tp_csr_storage
	;#csr_rw(medeleg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_09_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is x0
	csrrwi a6, medeleg, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(medeleg, write, false, true)
SID_ZICSR_09_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_10)
SID_ZICSR_10:
	li sp, SID_ZICSR_10_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is non-zero
	csrrwi t1, mtvec, 0
SID_ZICSR_10_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_11)
SID_ZICSR_11:
	li sp, SID_ZICSR_11_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is x0
	csrrwi s10, mtvec, 0
SID_ZICSR_11_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_12)
SID_ZICSR_12:
	li sp, tp_csr_storage
	;#csr_rw(minstret, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_12_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Set bits using max imm (0x1F)
	csrrsi t1, minstret, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(minstret, write, false, true)
SID_ZICSR_12_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_13)
SID_ZICSR_13:
	li sp, SID_ZICSR_13_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Read-only access by setting uimm to 0
	csrrsi s11, mhartid, 0
SID_ZICSR_13_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_14)
SID_ZICSR_14:
	li sp, tp_csr_storage
	;#csr_rw(mscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_14_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRCI: Clear bits using max imm (0x1F)
	csrrci s3, mscratch, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mscratch, write, false, true)
SID_ZICSR_14_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_15)
SID_ZICSR_15:
	li sp, SID_ZICSR_15_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRCI: Read-only access by setting uimm to 0
	csrrci s6, mtvec, 0
SID_ZICSR_15_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_16)
SID_ZICSR_16:
	li sp, SID_ZICSR_16_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSR access surrounded by random arithmetic instructions
	li s6, 0x2f978d8a
	li s2, 0xa11d459d
	mulhsu s10, s6, s2
	csrrw t2, mscratch, zero
	li s8, 0xfe175333
	li a4, 0xb94067f0
	mulhsu t2, s8, a4
	csrrs t2, medeleg, zero
	li s5, 0xdc2574c0
	li s9, 0x4be03db3
	li s8, 0x1ef2a4f3
	fcvt.s.w ft6, s5
	fcvt.d.wu fa3, s9
	fcvt.s.l fs4, s8
	fnmsub.d ft6, ft6, fa3, fs4
	csrrc t2, mideleg, zero
	li s8, 0xbe3edc0d
	li a4, 0x552b82f9
	remu t2, s8, a4
	csrrwi s4, minstret, 0
	li s1, 0xe5446dd7
	addi t5, s1, 0x357
	csrrsi a4, menvcfg, 0
	li s2, 0xb8b333ab
	li a1, 0xf9270f51
	fcvt.s.l ft8, s2
	fcvt.s.wu ft7, a1
	fmul.s fs5, ft8, ft7
	csrrci t4, mimpid, 0
	li t3, 0xb610a9fa
	li s9, 0x803468b9
	sub t4, t3, s9
SID_ZICSR_16_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_17)
SID_ZICSR_17:
	li sp, SID_ZICSR_17_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Back to back CSR accesses - all cross coverage cases
	csrrw s1, mtvec, zero
	csrrw s1, menvcfg, zero
	csrrw s10, mtvec, zero
	csrrs a2, mvendorid, zero
	csrrw s3, mtval, zero
	csrrc a7, mconfigptr, zero
	csrrw s0, mideleg, zero
	csrrwi a4, mideleg, 0
	csrrw a5, minstret, zero
	csrrsi s5, menvcfg, 0
	csrrw t6, mtvec, zero
	csrrci a6, mtval, 0
	csrrs a4, mepc, zero
	csrrw s7, minstret, zero
	csrrs a5, menvcfg, zero
	csrrs a6, mhartid, zero
	csrrs s9, mscratch, zero
	csrrc s10, mimpid, zero
	csrrs a5, mcause, zero
	csrrwi t3, mcause, 0
	csrrs a7, medeleg, zero
	csrrsi s0, minstret, 0
	csrrs a1, menvcfg, zero
	csrrci t1, mepc, 0
	csrrc t5, mtval, zero
	csrrw s5, mtvec, zero
	csrrc a2, mhartid, zero
	csrrs s7, mscratch, zero
	csrrc s7, mepc, zero
	csrrc s8, mscratch, zero
	csrrc s1, mepc, zero
	csrrwi s2, mscratch, 0
	csrrc t6, mtvec, zero
	csrrsi s1, medeleg, 0
	csrrc a1, mideleg, zero
	csrrci t4, mimpid, 0
	csrrwi s7, minstret, 0
	csrrw a7, mscratch, zero
	csrrwi t2, minstret, 0
	csrrs a6, mtvec, zero
	csrrwi a0, menvcfg, 0
	csrrc t5, mimpid, zero
	csrrwi s3, mtval, 0
	csrrwi s4, mcause, 0
	csrrwi t5, mtvec, 0
	csrrsi s10, mepc, 0
	csrrwi s1, minstret, 0
	csrrci s4, mtval, 0
	csrrsi s7, mtval, 0
	csrrw t5, mcause, zero
	csrrsi t6, medeleg, 0
	csrrs a6, mtval, zero
	csrrsi s0, mtvec, 0
	csrrc s4, menvcfg, zero
	csrrsi s4, mconfigptr, 0
	csrrwi t6, mideleg, 0
	csrrsi a0, mepc, 0
	csrrsi a7, mcause, 0
	csrrsi t1, mcause, 0
	csrrci s1, mideleg, 0
	csrrci s4, mepc, 0
	csrrw a3, mepc, zero
	csrrci t2, medeleg, 0
	csrrs t1, menvcfg, zero
	csrrci t6, mideleg, 0
	csrrc t6, mideleg, zero
	csrrci a1, mtvec, 0
	csrrwi a3, menvcfg, 0
	csrrci s4, mtvec, 0
	csrrsi s7, minstret, 0
	csrrci s11, menvcfg, 0
	csrrci s4, minstret, 0
SID_ZICSR_17_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_18)
SID_ZICSR_18:
	li sp, tp_csr_storage
	;#csr_rw(mscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_18_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# ZICSR test: mscratch write/set/clear with assertions (M-mode)
	li a5, -1
	li a0, 0
	li a3, 0x1f
	# CSRRW: Write all ones to mscratch
	csrrw t2, mscratch, a5
	csrr s3, mscratch
	beq s3, a5, pass_label_0
	li s1, failed_addr
	ld a1, 0(s1)
	jr a1
pass_label_0:
	# CSRRW: Clear mscratch by writing 0
	li s6, 0
	csrrw s7, mscratch, s6
	csrr a7, mscratch
	beq a7, a0, pass_label_1
	li t4, failed_addr
	ld a1, 0(t4)
	jr a1
pass_label_1:
	# CSRRS: Set all bits in mscratch
	csrrs s8, mscratch, a5
	csrr a6, mscratch
	beq a6, a5, pass_label_2
	li t1, failed_addr
	ld a7, 0(t1)
	jr a7
pass_label_2:
	# CSRRC: Clear all bits in mscratch
	csrrc a2, mscratch, a5
	csrr s8, mscratch
	beq s8, a0, pass_label_3
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
pass_label_3:
	# CSRRWI: Write max immediate (0x1F) to mscratch
	csrrwi s7, mscratch, 0x1f
	csrr s9, mscratch
	beq s9, a3, pass_label_4
	li s7, failed_addr
	ld s8, 0(s7)
	jr s8
pass_label_4:
	# CSRRWI: Clear mscratch by writing 0
	csrrwi a7, mscratch, 0
	csrr a4, mscratch
	beq a4, a0, pass_label_5
	li t4, failed_addr
	ld t5, 0(t4)
	jr t5
pass_label_5:
	# CSRRSI: Set bits with max immediate (0x1F) in mscratch
	csrrsi a1, mscratch, 0x1f
	csrr s5, mscratch
	beq s5, a3, pass_label_6
	li t2, failed_addr
	ld a4, 0(t2)
	jr a4
pass_label_6:
	# CSRRCI: Clear bits with max immediate (0x1F) in mscratch
	csrrci a3, mscratch, 0x1f
	csrr t1, mscratch
	beq t1, a0, pass_label_7
	li t5, failed_addr
	ld s3, 0(t5)
	jr s3
pass_label_7:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mscratch, write, false, true)
SID_ZICSR_18_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_20)
SID_ZICSR_20:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_20_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# ZICSR test: fcsr write/set/clear with assertions (lower 8 bits only)
	li s5, 0xff
	li s1, 0
	li t4, 0x1f
	li s3, 0xff
	# CSRRW: Write 0xFF to fcsr (all 8 writable bits)
	csrrw a6, fcsr, s5
	csrr s10, fcsr
	and s9, s10, s3
	beq s9, s5, pass_label_8
	li t1, failed_addr
	ld s4, 0(t1)
	jr s4
pass_label_8:
	# CSRRW: Clear fcsr by writing 0
	li s9, 0
	csrrw s8, fcsr, s9
	csrr s2, fcsr
	and t2, s2, s3
	beq t2, s1, pass_label_9
	li a4, failed_addr
	ld a7, 0(a4)
	jr a7
pass_label_9:
	# CSRRS: Set all 8 bits in fcsr
	csrrs t5, fcsr, s5
	csrr t2, fcsr
	and a3, t2, s3
	beq a3, s5, pass_label_10
	li a6, failed_addr
	ld s9, 0(a6)
	jr s9
pass_label_10:
	# CSRRC: Clear all 8 bits in fcsr
	csrrc s7, fcsr, s5
	csrr t6, fcsr
	and s7, t6, s3
	beq s7, s1, pass_label_11
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
pass_label_11:
	# CSRRWI: Write max immediate (0x1F) to fcsr
	csrrwi s9, fcsr, 0x1f
	csrr s2, fcsr
	and s9, s2, s3
	beq s9, t4, pass_label_12
	li t6, failed_addr
	ld a6, 0(t6)
	jr a6
pass_label_12:
	# CSRRWI: Clear fcsr by writing 0
	csrrwi a2, fcsr, 0
	csrr s10, fcsr
	and a1, s10, s3
	beq a1, s1, pass_label_13
	li a0, failed_addr
	ld s6, 0(a0)
	jr s6
pass_label_13:
	# CSRRSI: Set bits with max immediate (0x1F) in fcsr
	csrrsi t1, fcsr, 0x1f
	csrr s8, fcsr
	and a7, s8, s3
	beq a7, t4, pass_label_14
	li a1, failed_addr
	ld t2, 0(a1)
	jr t2
pass_label_14:
	# CSRRCI: Clear bits with max immediate (0x1F) in fcsr
	csrrci s7, fcsr, 0x1f
	csrr s9, fcsr
	and a7, s9, s3
	beq a7, s1, pass_label_15
	li t1, failed_addr
	ld a4, 0(t1)
	jr a4
pass_label_15:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
SID_ZICSR_20_passed:
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

;#random_addr(name=SID_ZICSR_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_01_stack, phys_name=SID_ZICSR_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_01_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_02_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_02_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_02_stack, phys_name=SID_ZICSR_02_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_02_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_03_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_03_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_03_stack, phys_name=SID_ZICSR_03_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_03_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_04_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_04_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_04_stack, phys_name=SID_ZICSR_04_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_04_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_05_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_05_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_05_stack, phys_name=SID_ZICSR_05_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_05_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_06_stack, phys_name=SID_ZICSR_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_06_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_07_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_07_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_07_stack, phys_name=SID_ZICSR_07_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_07_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_08_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_08_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_08_stack, phys_name=SID_ZICSR_08_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_08_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_09_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_09_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_09_stack, phys_name=SID_ZICSR_09_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_09_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_10_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_10_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_10_stack, phys_name=SID_ZICSR_10_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_10_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_11_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_11_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_11_stack, phys_name=SID_ZICSR_11_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_11_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_12_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_12_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_12_stack, phys_name=SID_ZICSR_12_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_12_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_13_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_13_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_13_stack, phys_name=SID_ZICSR_13_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_13_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_14_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_14_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_14_stack, phys_name=SID_ZICSR_14_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_14_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_15_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_15_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_15_stack, phys_name=SID_ZICSR_15_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_15_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_16_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_16_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_16_stack, phys_name=SID_ZICSR_16_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_16_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_17_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_17_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_17_stack, phys_name=SID_ZICSR_17_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_17_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_18_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_18_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_18_stack, phys_name=SID_ZICSR_18_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_18_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_20_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_20_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_20_stack, phys_name=SID_ZICSR_20_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_20_stack
.dword 0xc001c0de
