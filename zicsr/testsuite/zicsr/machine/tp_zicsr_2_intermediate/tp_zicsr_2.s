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
	;#csr_rw(mtvec, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with max-int, rd is non-zero
	li s0, -1
	csrrw s1, mtvec, s0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mtvec, write, false, true)
SID_ZICSR_01_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_02)
SID_ZICSR_02:
	li sp, tp_csr_storage
	;#csr_rw(mcause, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_02_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with max-int, rd is x0 (no read)
	li a1, -1
	csrrw t5, mcause, a1
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcause, write, false, true)
SID_ZICSR_02_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_03)
SID_ZICSR_03:
	li sp, tp_csr_storage
	;#csr_rw(mepc, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_03_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with 0 to zero out CSR
	li a4, 0
	csrrw s10, mepc, a4
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mepc, write, false, true)
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
	li s9, -1
	csrrs t2, mscratch, s9
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mscratch, write, false, true)
SID_ZICSR_04_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_05)
SID_ZICSR_05:
	li sp, tp_csr_storage
	;#csr_rw(mcause, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_05_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS: Read-only access by setting rs1 to 0
	li s11, 0
	csrrs a1, mcause, s11
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcause, write, false, true)
SID_ZICSR_05_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_06)
SID_ZICSR_06:
	li sp, tp_csr_storage
	;#csr_rw(mtval, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Clear all bits using max-int mask
	li s10, -1
	csrrc s2, mtval, s10
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mtval, write, false, true)
SID_ZICSR_06_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_07)
SID_ZICSR_07:
	li sp, tp_csr_storage
	;#csr_rw(mscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_07_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Read-only access by setting rs1 to 0
	li a7, 0
	csrrc s8, mscratch, a7
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mscratch, write, false, true)
SID_ZICSR_07_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_08)
SID_ZICSR_08:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is non-zero
	csrrwi s6, menvcfg, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_ZICSR_08_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_09)
SID_ZICSR_09:
	li sp, tp_csr_storage
	;#csr_rw(mepc, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_09_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is x0
	csrrwi t2, mepc, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mepc, write, false, true)
SID_ZICSR_09_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_10)
SID_ZICSR_10:
	li sp, SID_ZICSR_10_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is non-zero
	csrrwi a7, mtvec, 0
SID_ZICSR_10_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_11)
SID_ZICSR_11:
	li sp, SID_ZICSR_11_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is x0
	csrrwi a6, menvcfg, 0
SID_ZICSR_11_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_12)
SID_ZICSR_12:
	li sp, tp_csr_storage
	;#csr_rw(mtval, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_12_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Set bits using max imm (0x1F)
	csrrsi s3, mtval, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mtval, write, false, true)
SID_ZICSR_12_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_13)
SID_ZICSR_13:
	li sp, SID_ZICSR_13_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Read-only access by setting uimm to 0
	csrrsi a1, mscratch, 0
SID_ZICSR_13_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_14)
SID_ZICSR_14:
	li sp, tp_csr_storage
	;#csr_rw(minstret, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_14_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRCI: Clear bits using max imm (0x1F)
	csrrci a1, minstret, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(minstret, write, false, true)
SID_ZICSR_14_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_15)
SID_ZICSR_15:
	li sp, SID_ZICSR_15_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRCI: Read-only access by setting uimm to 0
	csrrci a3, menvcfg, 0
SID_ZICSR_15_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_16)
SID_ZICSR_16:
	li sp, SID_ZICSR_16_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSR access surrounded by random arithmetic instructions
	li t3, 0xbc01bfd1
	li a1, 0x867e5e18
	fcvt.s.w ft9, t3
	fcvt.s.wu ft11, a1
	fdiv.s fs4, ft9, ft11
	csrrw a5, mtvec, zero
	li a1, 0xe8168564
	li s7, 0xe89204e5
	fcvt.d.wu fa0, a1
	fcvt.s.wu fa1, s7
	fadd.d fa1, fa0, fa1
	csrrs s7, mcause, zero
	li t3, 0xc34c76a2
	li s9, 0x5d3fd986
	fcvt.s.l fs5, t3
	fcvt.s.wu fs3, s9
	fdiv.s fs6, fs5, fs3
	csrrc t6, marchid, zero
	li t5, 0xca2ce6bf
	li t4, 0x97eeab67
	fcvt.s.lu fa6, t5
	fcvt.s.wu fa2, t4
	fmul.s fs4, fa6, fa2
	csrrwi a3, mideleg, 0
	li s10, 0x5a91c89e
	li a5, 0x5ca495fd
	divw s4, s10, a5
	csrrsi t4, mepc, 0
	li t6, 0xfb2147e2
	li s0, 0xdbe53fcd
	li s5, 0xf63f23d3
	fcvt.s.wu fa0, t6
	fcvt.s.lu ft1, s0
	fcvt.s.wu fa6, s5
	fnmadd.d fs0, fa0, ft1, fa6
	csrrci t6, mscratch, 0
	li a0, 0x721dea3e
	li t2, 0x294365b5
	li a5, 0xf4767f29
	fcvt.s.wu ft11, a0
	fcvt.d.wu ft3, t2
	fcvt.s.lu fa5, a5
	fmsub.d fa1, ft11, ft3, fa5
SID_ZICSR_16_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_17)
SID_ZICSR_17:
	li sp, SID_ZICSR_17_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Back to back CSR accesses - all cross coverage cases
	csrrw a6, mscratch, zero
	csrrw a4, medeleg, zero
	csrrw a5, minstret, zero
	csrrs t3, mepc, zero
	csrrw s6, mepc, zero
	csrrc t6, menvcfg, zero
	csrrw t1, mscratch, zero
	csrrwi t3, mtvec, 0
	csrrw t4, mtval, zero
	csrrsi a1, minstret, 0
	csrrw t6, mtvec, zero
	csrrci s0, medeleg, 0
	csrrs s4, mimpid, zero
	csrrw s1, mcause, zero
	csrrs a7, mcause, zero
	csrrs s3, menvcfg, zero
	csrrs s5, menvcfg, zero
	csrrc a3, mtvec, zero
	csrrs t1, mideleg, zero
	csrrwi s1, medeleg, 0
	csrrs s10, mideleg, zero
	csrrsi t6, mtvec, 0
	csrrs t1, medeleg, zero
	csrrci a0, mtvec, 0
	csrrc t5, mimpid, zero
	csrrw a6, mepc, zero
	csrrc t1, mepc, zero
	csrrs s4, mcause, zero
	csrrc s2, mcause, zero
	csrrc s6, mscratch, zero
	csrrc s7, minstret, zero
	csrrwi a0, mtvec, 0
	csrrc t3, mhartid, zero
	csrrsi t1, mcause, 0
	csrrc t1, medeleg, zero
	csrrci t1, menvcfg, 0
	csrrwi s4, mideleg, 0
	csrrw a0, mtvec, zero
	csrrwi s3, mtvec, 0
	csrrs a1, mimpid, zero
	csrrwi t1, medeleg, 0
	csrrc s10, mvendorid, zero
	csrrwi s0, mcause, 0
	csrrwi s6, menvcfg, 0
	csrrwi s0, mtvec, 0
	csrrsi t2, mvendorid, 0
	csrrwi a4, menvcfg, 0
	csrrci s8, mepc, 0
	csrrsi s2, mtval, 0
	csrrw t3, mtvec, zero
	csrrsi a7, minstret, 0
	csrrs a5, mhartid, zero
	csrrsi s10, mtval, 0
	csrrc a7, minstret, zero
	csrrsi s11, mepc, 0
	csrrwi t5, menvcfg, 0
	csrrsi s5, menvcfg, 0
	csrrsi a3, mideleg, 0
	csrrsi a2, menvcfg, 0
	csrrci s7, menvcfg, 0
	csrrci a2, marchid, 0
	csrrw s3, medeleg, zero
	csrrci t6, mtvec, 0
	csrrs a1, medeleg, zero
	csrrci s9, mepc, 0
	csrrc s11, mscratch, zero
	csrrci s3, mcause, 0
	csrrwi s10, mtval, 0
	csrrci a7, mideleg, 0
	csrrsi a4, mscratch, 0
	csrrci a2, marchid, 0
	csrrci s11, mepc, 0
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
	li s2, -1
	li a2, 0
	li t4, 0x1f
	# CSRRW: Write all ones to mscratch
	csrrw a3, mscratch, s2
	csrr s6, mscratch
	beq s6, s2, pass_label_0
	li s7, failed_addr
	ld s11, 0(s7)
	jr s11
pass_label_0:
	# CSRRW: Clear mscratch by writing 0
	li t1, 0
	csrrw a3, mscratch, t1
	csrr s6, mscratch
	beq s6, a2, pass_label_1
	li s0, failed_addr
	ld s10, 0(s0)
	jr s10
pass_label_1:
	# CSRRS: Set all bits in mscratch
	csrrs s7, mscratch, s2
	csrr a3, mscratch
	beq a3, s2, pass_label_2
	li a5, failed_addr
	ld a1, 0(a5)
	jr a1
pass_label_2:
	# CSRRC: Clear all bits in mscratch
	csrrc a5, mscratch, s2
	csrr t1, mscratch
	beq t1, a2, pass_label_3
	li t3, failed_addr
	ld t2, 0(t3)
	jr t2
pass_label_3:
	# CSRRWI: Write max immediate (0x1F) to mscratch
	csrrwi s7, mscratch, 0x1f
	csrr a6, mscratch
	beq a6, t4, pass_label_4
	li t1, failed_addr
	ld s11, 0(t1)
	jr s11
pass_label_4:
	# CSRRWI: Clear mscratch by writing 0
	csrrwi t5, mscratch, 0
	csrr s11, mscratch
	beq s11, a2, pass_label_5
	li s0, failed_addr
	ld t6, 0(s0)
	jr t6
pass_label_5:
	# CSRRSI: Set bits with max immediate (0x1F) in mscratch
	csrrsi s1, mscratch, 0x1f
	csrr s0, mscratch
	beq s0, t4, pass_label_6
	li a5, failed_addr
	ld s3, 0(a5)
	jr s3
pass_label_6:
	# CSRRCI: Clear bits with max immediate (0x1F) in mscratch
	csrrci s4, mscratch, 0x1f
	csrr a1, mscratch
	beq a1, a2, pass_label_7
	li s6, failed_addr
	ld a1, 0(s6)
	jr a1
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
	li s11, 0xff
	li t1, 0
	li s5, 0x1f
	li s0, 0xff
	# CSRRW: Write 0xFF to fcsr (all 8 writable bits)
	csrrw s6, fcsr, s11
	csrr t6, fcsr
	and s9, t6, s0
	beq s9, s11, pass_label_8
	li s8, failed_addr
	ld a4, 0(s8)
	jr a4
pass_label_8:
	# CSRRW: Clear fcsr by writing 0
	li t6, 0
	csrrw s8, fcsr, t6
	csrr a0, fcsr
	and t2, a0, s0
	beq t2, t1, pass_label_9
	li s4, failed_addr
	ld s1, 0(s4)
	jr s1
pass_label_9:
	# CSRRS: Set all 8 bits in fcsr
	csrrs t4, fcsr, s11
	csrr s10, fcsr
	and a3, s10, s0
	beq a3, s11, pass_label_10
	li s7, failed_addr
	ld t2, 0(s7)
	jr t2
pass_label_10:
	# CSRRC: Clear all 8 bits in fcsr
	csrrc s3, fcsr, s11
	csrr a6, fcsr
	and s7, a6, s0
	beq s7, t1, pass_label_11
	li s8, failed_addr
	ld s4, 0(s8)
	jr s4
pass_label_11:
	# CSRRWI: Write max immediate (0x1F) to fcsr
	csrrwi s4, fcsr, 0x1f
	csrr s10, fcsr
	and s2, s10, s0
	beq s2, s5, pass_label_12
	li s1, failed_addr
	ld a3, 0(s1)
	jr a3
pass_label_12:
	# CSRRWI: Clear fcsr by writing 0
	csrrwi a7, fcsr, 0
	csrr t6, fcsr
	and t3, t6, s0
	beq t3, t1, pass_label_13
	li t5, failed_addr
	ld a5, 0(t5)
	jr a5
pass_label_13:
	# CSRRSI: Set bits with max immediate (0x1F) in fcsr
	csrrsi t6, fcsr, 0x1f
	csrr a6, fcsr
	and a5, a6, s0
	beq a5, s5, pass_label_14
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
pass_label_14:
	# CSRRCI: Clear bits with max immediate (0x1F) in fcsr
	csrrci s4, fcsr, 0x1f
	csrr s9, fcsr
	and a1, s9, s0
	beq a1, t1, pass_label_15
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
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
