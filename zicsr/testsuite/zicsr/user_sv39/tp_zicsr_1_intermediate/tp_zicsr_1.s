;#test.name       zicsr
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
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
	;#csr_rw(fflags, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with max-int, rd is non-zero
	li a4, -1
	csrrw s1, fflags, a4
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fflags, write, false, true)
SID_ZICSR_01_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_02)
SID_ZICSR_02:
	li sp, tp_csr_storage
	;#csr_rw(frm, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_02_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with max-int, rd is x0 (no read)
	li t5, -1
	csrrw s4, frm, t5
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(frm, write, false, true)
SID_ZICSR_02_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_03)
SID_ZICSR_03:
	li sp, tp_csr_storage
	;#csr_rw(frm, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_03_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with 0 to zero out CSR
	li s10, 0
	csrrw s2, frm, s10
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(frm, write, false, true)
SID_ZICSR_03_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_04)
SID_ZICSR_04:
	li sp, tp_csr_storage
	;#csr_rw(fflags, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_04_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS: Set all bits using max-int mask
	li s1, -1
	csrrs s6, fflags, s1
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fflags, write, false, true)
SID_ZICSR_04_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_05)
SID_ZICSR_05:
	li sp, tp_csr_storage
	;#csr_rw(fflags, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_05_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS: Read-only access by setting rs1 to 0
	li s2, 0
	csrrs s4, fflags, s2
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fflags, write, false, true)
SID_ZICSR_05_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_06)
SID_ZICSR_06:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Clear all bits using max-int mask
	li t5, -1
	csrrc t6, fcsr, t5
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
SID_ZICSR_06_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_07)
SID_ZICSR_07:
	li sp, tp_csr_storage
	;#csr_rw(fflags, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_07_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Read-only access by setting rs1 to 0
	li t3, 0
	csrrc s4, fflags, t3
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fflags, write, false, true)
SID_ZICSR_07_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_08)
SID_ZICSR_08:
	li sp, tp_csr_storage
	;#csr_rw(frm, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is non-zero
	csrrwi t4, frm, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(frm, write, false, true)
SID_ZICSR_08_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_09)
SID_ZICSR_09:
	li sp, tp_csr_storage
	;#csr_rw(fflags, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_09_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is x0
	csrrwi s8, fflags, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fflags, write, false, true)
SID_ZICSR_09_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_10)
SID_ZICSR_10:
	li sp, SID_ZICSR_10_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is non-zero
	csrrwi a6, fflags, 0
SID_ZICSR_10_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_11)
SID_ZICSR_11:
	li sp, SID_ZICSR_11_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is x0
	csrrwi t1, fflags, 0
SID_ZICSR_11_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_12)
SID_ZICSR_12:
	li sp, tp_csr_storage
	;#csr_rw(fflags, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_12_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Set bits using max imm (0x1F)
	csrrsi s10, fflags, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fflags, write, false, true)
SID_ZICSR_12_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_13)
SID_ZICSR_13:
	li sp, SID_ZICSR_13_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Read-only access by setting uimm to 0
	csrrsi t1, frm, 0
SID_ZICSR_13_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_14)
SID_ZICSR_14:
	li sp, tp_csr_storage
	;#csr_rw(frm, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_14_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRCI: Clear bits using max imm (0x1F)
	csrrci s11, frm, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(frm, write, false, true)
SID_ZICSR_14_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_15)
SID_ZICSR_15:
	li sp, SID_ZICSR_15_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRCI: Read-only access by setting uimm to 0
	csrrci s3, frm, 0
SID_ZICSR_15_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_16)
SID_ZICSR_16:
	li sp, SID_ZICSR_16_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSR access surrounded by random arithmetic instructions
	li a5, 0xed2f89dc
	li s9, 0x5805978
	fcvt.d.lu ft9, a5
	fcvt.s.lu fa6, s9
	fmul.s ft10, ft9, fa6
	csrrw s7, fcsr, zero
	li s3, 0x6a8ac4bd
	li t3, 0xd66b82a1
	mulhsu t2, s3, t3
	csrrs s10, fflags, zero
	li a4, 0xea90a8f3
	li t2, 0x8e73ca4a
	clmulh t2, a4, t2
	csrrc s6, frm, zero
	li s11, 0xec148cb7
	li s10, 0xa46d6756
	mulhsu a2, s11, s10
	csrrwi s8, fflags, 0
	li s3, 0x19999e42
	li s10, 0x2f978d8a
	mulhsu s3, s3, s10
	csrrsi s11, fflags, 0
	li s10, 0xa11d459d
	li t4, 0xfe175333
	li s1, 0xb94067f0
	fcvt.s.w fa5, s10
	fcvt.d.wu fs8, t4
	fcvt.s.l fs3, s1
	fnmsub.d ft4, fa5, fs8, fs3
	csrrci t4, fflags, 0
	li a6, 0xdc2574c0
	li t2, 0x4be03db3
	remu s9, a6, t2
SID_ZICSR_16_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_17)
SID_ZICSR_17:
	li sp, SID_ZICSR_17_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Back to back CSR accesses - all cross coverage cases
	csrrw t2, frm, zero
	csrrw t3, frm, zero
	csrrw s1, fcsr, zero
	csrrs a0, fflags, zero
	csrrw t1, frm, zero
	csrrc s8, fflags, zero
	csrrw s0, frm, zero
	csrrwi s8, fcsr, 0
	csrrw s0, fcsr, zero
	csrrsi s3, frm, 0
	csrrw s2, fcsr, zero
	csrrci s5, fflags, 0
	csrrs a4, fcsr, zero
	csrrw a4, fflags, zero
	csrrs t1, frm, zero
	csrrs a7, frm, zero
	csrrs t4, frm, zero
	csrrc s10, fflags, zero
	csrrs a3, frm, zero
	csrrwi s6, fcsr, 0
	csrrs s7, frm, zero
	csrrsi t6, frm, 0
	csrrs s5, fflags, zero
	csrrci s9, frm, 0
	csrrc s6, fcsr, zero
	csrrw t3, fcsr, zero
	csrrc s7, fcsr, zero
	csrrs s9, fflags, zero
	csrrc a0, fcsr, zero
	csrrc t1, fcsr, zero
	csrrc s7, frm, zero
	csrrwi s0, fcsr, 0
	csrrc s10, fcsr, zero
	csrrsi a3, fflags, 0
	csrrc a6, fflags, zero
	csrrci a1, fcsr, 0
	csrrwi s2, fcsr, 0
	csrrw t6, fflags, zero
	csrrwi a7, fcsr, 0
	csrrs t3, frm, zero
	csrrwi t3, fflags, 0
	csrrc s1, fflags, zero
	csrrwi a4, fflags, 0
	csrrwi s11, frm, 0
	csrrwi s5, frm, 0
	csrrsi a4, frm, 0
	csrrwi a6, fcsr, 0
	csrrci s3, frm, 0
	csrrsi t3, frm, 0
	csrrw s10, frm, zero
	csrrsi a2, fflags, 0
	csrrs s9, fcsr, zero
	csrrsi a5, fflags, 0
	csrrc s2, fcsr, zero
	csrrsi t4, fflags, 0
	csrrwi t5, fcsr, 0
	csrrsi s2, frm, 0
	csrrsi t1, frm, 0
	csrrsi a4, frm, 0
	csrrci t5, fcsr, 0
	csrrci t3, fflags, 0
	csrrw s2, fcsr, zero
	csrrci s5, fflags, 0
	csrrs s9, frm, zero
	csrrci a3, fcsr, 0
	csrrc t5, frm, zero
	csrrci t5, frm, 0
	csrrwi s5, fcsr, 0
	csrrci a5, frm, 0
	csrrsi s10, fflags, 0
	csrrci a1, frm, 0
	csrrci a4, fcsr, 0
SID_ZICSR_17_passed:
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
	li t3, 0xff
	li s0, 0
	li s5, 0x1f
	li t4, 0xff
	# CSRRW: Write 0xFF to fcsr (all 8 writable bits)
	csrrw a7, fcsr, t3
	;#csr_rw(fcsr, read, true, false)
	mv t2, t2
	and a7, t2, t4
	beq a7, t3, pass_label_0
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
pass_label_0:
	# CSRRW: Clear fcsr by writing 0
	li s3, 0
	csrrw a3, fcsr, s3
	;#csr_rw(fcsr, read, true, false)
	mv a6, t2
	and a0, a6, t4
	beq a0, s0, pass_label_1
	li s9, failed_addr
	ld a2, 0(s9)
	jr a2
pass_label_1:
	# CSRRS: Set all 8 bits in fcsr
	csrrs a4, fcsr, t3
	;#csr_rw(fcsr, read, true, false)
	mv t5, t2
	and t6, t5, t4
	beq t6, t3, pass_label_2
	li s6, failed_addr
	ld a6, 0(s6)
	jr a6
pass_label_2:
	# CSRRC: Clear all 8 bits in fcsr
	csrrc t5, fcsr, t3
	;#csr_rw(fcsr, read, true, false)
	mv a7, t2
	and s4, a7, t4
	beq s4, s0, pass_label_3
	li t1, failed_addr
	ld t3, 0(t1)
	jr t3
pass_label_3:
	# CSRRWI: Write max immediate (0x1F) to fcsr
	csrrwi a5, fcsr, 0x1f
	;#csr_rw(fcsr, read, true, false)
	mv s4, t2
	and s1, s4, t4
	beq s1, s5, pass_label_4
	li t3, failed_addr
	ld a6, 0(t3)
	jr a6
pass_label_4:
	# CSRRWI: Clear fcsr by writing 0
	csrrwi s7, fcsr, 0
	;#csr_rw(fcsr, read, true, false)
	mv t2, t2
	and t3, t2, t4
	beq t3, s0, pass_label_5
	li a5, failed_addr
	ld s2, 0(a5)
	jr s2
pass_label_5:
	# CSRRSI: Set bits with max immediate (0x1F) in fcsr
	csrrsi t5, fcsr, 0x1f
	;#csr_rw(fcsr, read, true, false)
	mv a0, t2
	and a7, a0, t4
	beq a7, s5, pass_label_6
	li s11, failed_addr
	ld a2, 0(s11)
	jr a2
pass_label_6:
	# CSRRCI: Clear bits with max immediate (0x1F) in fcsr
	csrrci t2, fcsr, 0x1f
	;#csr_rw(fcsr, read, true, false)
	mv s11, t2
	and s7, s11, t4
	beq s7, s0, pass_label_7
	li s5, failed_addr
	ld a4, 0(s5)
	jr a4
pass_label_7:
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

;#random_addr(name=SID_ZICSR_20_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_20_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_20_stack, phys_name=SID_ZICSR_20_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_20_stack
.dword 0xc001c0de
