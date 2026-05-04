;#test.name       zicsr
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv57
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
	li s0, -1
	csrrw s1, fflags, s0
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
	li a1, -1
	csrrw t5, frm, a1
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(frm, write, false, true)
SID_ZICSR_02_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_03)
SID_ZICSR_03:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_03_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with 0 to zero out CSR
	li a5, 0
	csrrw a4, fcsr, a5
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
SID_ZICSR_03_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_04)
SID_ZICSR_04:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_04_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS: Set all bits using max-int mask
	li a2, -1
	csrrs s10, fcsr, a2
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
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
	li s8, 0
	csrrs t3, fflags, s8
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fflags, write, false, true)
SID_ZICSR_05_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_06)
SID_ZICSR_06:
	li sp, tp_csr_storage
	;#csr_rw(fflags, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Clear all bits using max-int mask
	li s3, -1
	csrrc s11, fflags, s3
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fflags, write, false, true)
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
	li t6, 0
	csrrc t4, fflags, t6
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fflags, write, false, true)
SID_ZICSR_07_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_08)
SID_ZICSR_08:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is non-zero
	csrrwi a7, fcsr, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
SID_ZICSR_08_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_09)
SID_ZICSR_09:
	li sp, tp_csr_storage
	;#csr_rw(fcsr, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_09_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is x0
	csrrwi s4, fcsr, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(fcsr, write, false, true)
SID_ZICSR_09_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_10)
SID_ZICSR_10:
	li sp, SID_ZICSR_10_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is non-zero
	csrrwi a4, fcsr, 0
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
	;#csr_rw(frm, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_12_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Set bits using max imm (0x1F)
	csrrsi s4, frm, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(frm, write, false, true)
SID_ZICSR_12_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_13)
SID_ZICSR_13:
	li sp, SID_ZICSR_13_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Read-only access by setting uimm to 0
	csrrsi s2, fcsr, 0
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
	csrrci s6, frm, 0x1f
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
	csrrci s7, frm, 0
SID_ZICSR_15_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_16)
SID_ZICSR_16:
	li sp, SID_ZICSR_16_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSR access surrounded by random arithmetic instructions
	li s6, 0x2e8d4b8d
	li s7, 0xfec3f6b6
	divw s7, s6, s7
	csrrw a7, fflags, zero
	li t5, 0xe4c11ab5
	li s5, 0x72154e79
	div s8, t5, s5
	csrrs s2, frm, zero
	li t6, 0xcbf87547
	li s8, 0x6a27e0e2
	fcvt.s.lu ft10, t6
	fcvt.s.lu fs2, s8
	fdiv.s fs9, ft10, fs2
	csrrc s10, frm, zero
	li t3, 0xbc01bfd1
	li s2, 0x867e5e18
	fcvt.s.wu fs0, t3
	fcvt.d.w fa2, s2
	fdiv.s ft10, fs0, fa2
	csrrwi s8, fflags, 0
	li a1, 0xe8168564
	li s5, 0xe89204e5
	fcvt.s.w fa0, a1
	fcvt.s.wu ft11, s5
	fadd.d fa0, fa0, ft11
	csrrsi s6, frm, 0
	li a6, 0xc34c76a2
	li s3, 0x5d3fd986
	fcvt.d.wu fa0, a6
	fcvt.s.wu fs9, s3
	fdiv.s ft8, fa0, fs9
	csrrci t6, fcsr, 0
	li t3, 0xca2ce6bf
	li s10, 0x97eeab67
	fcvt.s.l fs5, t3
	fcvt.s.wu fs11, s10
	fmul.s fs10, fs5, fs11
SID_ZICSR_16_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_17)
SID_ZICSR_17:
	li sp, SID_ZICSR_17_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Back to back CSR accesses - all cross coverage cases
	csrrw a6, fcsr, zero
	csrrw s6, frm, zero
	csrrw t1, frm, zero
	csrrs a7, fcsr, zero
	csrrw s8, fflags, zero
	csrrc t3, fflags, zero
	csrrw s8, fcsr, zero
	csrrwi t6, frm, 0
	csrrw t3, fcsr, zero
	csrrsi s0, frm, 0
	csrrw s2, fflags, zero
	csrrci s0, fcsr, 0
	csrrs s9, fcsr, zero
	csrrw a7, fflags, zero
	csrrs s2, frm, zero
	csrrs a2, fcsr, zero
	csrrs a6, fflags, zero
	csrrc s3, fflags, zero
	csrrs a0, frm, zero
	csrrwi s2, fcsr, 0
	csrrs a2, fflags, zero
	csrrsi s11, fcsr, 0
	csrrs a3, frm, zero
	csrrci t2, frm, 0
	csrrc t3, fcsr, zero
	csrrw t3, fflags, zero
	csrrc s4, frm, zero
	csrrs a6, frm, zero
	csrrc s2, fcsr, zero
	csrrc a6, frm, zero
	csrrc t6, frm, zero
	csrrwi s3, fflags, 0
	csrrc a2, fflags, zero
	csrrsi t1, fcsr, 0
	csrrc s5, fflags, zero
	csrrci s0, fflags, 0
	csrrwi s6, frm, 0
	csrrw s8, frm, zero
	csrrwi s3, fflags, 0
	csrrs t2, frm, zero
	csrrwi s5, fcsr, 0
	csrrc s1, fflags, zero
	csrrwi s3, fflags, 0
	csrrwi a2, fflags, 0
	csrrwi s10, fflags, 0
	csrrsi s5, fflags, 0
	csrrwi a4, fflags, 0
	csrrci s11, fcsr, 0
	csrrsi a5, fflags, 0
	csrrw s9, frm, zero
	csrrsi a0, fcsr, 0
	csrrs a3, frm, zero
	csrrsi t5, frm, 0
	csrrc s1, fcsr, zero
	csrrsi a5, frm, 0
	csrrwi a6, fcsr, 0
	csrrsi s5, fcsr, 0
	csrrsi s1, fflags, 0
	csrrsi s7, fflags, 0
	csrrci t1, frm, 0
	csrrci s0, fflags, 0
	csrrw s1, fflags, zero
	csrrci s11, frm, 0
	csrrs a7, fflags, zero
	csrrci t2, fflags, 0
	csrrc t3, fcsr, zero
	csrrci s7, frm, 0
	csrrwi s3, fcsr, 0
	csrrci s1, fcsr, 0
	csrrsi s1, fcsr, 0
	csrrci s1, fflags, 0
	csrrci s11, fcsr, 0
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
	li s3, 0xff
	li a6, 0
	li s7, 0x1f
	li a7, 0xff
	# CSRRW: Write 0xFF to fcsr (all 8 writable bits)
	csrrw s10, fcsr, s3
	;#csr_rw(fcsr, read, true, false)
	mv t1, t2
	and a2, t1, a7
	beq a2, s3, pass_label_0
	li s1, failed_addr
	ld s11, 0(s1)
	jr s11
pass_label_0:
	# CSRRW: Clear fcsr by writing 0
	li t4, 0
	csrrw a5, fcsr, t4
	;#csr_rw(fcsr, read, true, false)
	mv a3, t2
	and s1, a3, a7
	beq s1, a6, pass_label_1
	li a1, failed_addr
	ld s8, 0(a1)
	jr s8
pass_label_1:
	# CSRRS: Set all 8 bits in fcsr
	csrrs s2, fcsr, s3
	;#csr_rw(fcsr, read, true, false)
	mv s4, t2
	and s0, s4, a7
	beq s0, s3, pass_label_2
	li t3, failed_addr
	ld s10, 0(t3)
	jr s10
pass_label_2:
	# CSRRC: Clear all 8 bits in fcsr
	csrrc s6, fcsr, s3
	;#csr_rw(fcsr, read, true, false)
	mv t1, t2
	and a0, t1, a7
	beq a0, a6, pass_label_3
	li t3, failed_addr
	ld a0, 0(t3)
	jr a0
pass_label_3:
	# CSRRWI: Write max immediate (0x1F) to fcsr
	csrrwi s4, fcsr, 0x1f
	;#csr_rw(fcsr, read, true, false)
	mv s0, t2
	and a3, s0, a7
	beq a3, s7, pass_label_4
	li t3, failed_addr
	ld s0, 0(t3)
	jr s0
pass_label_4:
	# CSRRWI: Clear fcsr by writing 0
	csrrwi s2, fcsr, 0
	;#csr_rw(fcsr, read, true, false)
	mv s11, t2
	and t2, s11, a7
	beq t2, a6, pass_label_5
	li t4, failed_addr
	ld t1, 0(t4)
	jr t1
pass_label_5:
	# CSRRSI: Set bits with max immediate (0x1F) in fcsr
	csrrsi a0, fcsr, 0x1f
	;#csr_rw(fcsr, read, true, false)
	mv s0, t2
	and a4, s0, a7
	beq a4, s7, pass_label_6
	li t1, failed_addr
	ld a0, 0(t1)
	jr a0
pass_label_6:
	# CSRRCI: Clear bits with max immediate (0x1F) in fcsr
	csrrci s9, fcsr, 0x1f
	;#csr_rw(fcsr, read, true, false)
	mv t3, t2
	and s0, t3, a7
	beq s0, a6, pass_label_7
	li t1, failed_addr
	ld s1, 0(t1)
	jr s1
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
