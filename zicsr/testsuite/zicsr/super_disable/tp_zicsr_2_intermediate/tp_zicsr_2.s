;#test.name       zicsr
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
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
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with max-int, rd is non-zero
	li t2, -1
	csrrw s1, senvcfg, t2
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICSR_01_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_02)
SID_ZICSR_02:
	li sp, tp_csr_storage
	;#csr_rw(stvec, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_02_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with max-int, rd is x0 (no read)
	li a7, -1
	csrrw a1, stvec, a7
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(stvec, write, false, true)
SID_ZICSR_02_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_03)
SID_ZICSR_03:
	li sp, tp_csr_storage
	;#csr_rw(stval, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_03_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRW: Atomic swap with 0 to zero out CSR
	li t6, 0
	csrrw s11, stval, t6
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(stval, write, false, true)
SID_ZICSR_03_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_04)
SID_ZICSR_04:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_04_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS: Set all bits using max-int mask
	li a5, -1
	csrrs a4, senvcfg, a5
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
SID_ZICSR_04_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_05)
SID_ZICSR_05:
	li sp, tp_csr_storage
	;#csr_rw(sscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_05_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRS: Read-only access by setting rs1 to 0
	li a2, 0
	csrrs s10, sscratch, a2
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sscratch, write, false, true)
SID_ZICSR_05_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_06)
SID_ZICSR_06:
	li sp, tp_csr_storage
	;#csr_rw(stvec, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Clear all bits using max-int mask
	li s8, -1
	csrrc t3, stvec, s8
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(stvec, write, false, true)
SID_ZICSR_06_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_07)
SID_ZICSR_07:
	li sp, tp_csr_storage
	;#csr_rw(sscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_07_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRC: Read-only access by setting rs1 to 0
	li s3, 0
	csrrc s11, sscratch, s3
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sscratch, write, false, true)
SID_ZICSR_07_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_08)
SID_ZICSR_08:
	li sp, tp_csr_storage
	;#csr_rw(sepc, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is non-zero
	csrrwi t6, sepc, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sepc, write, false, true)
SID_ZICSR_08_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_09)
SID_ZICSR_09:
	li sp, tp_csr_storage
	;#csr_rw(stval, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_09_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with max imm (0x1F), rd is x0
	csrrwi s6, stval, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(stval, write, false, true)
SID_ZICSR_09_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_10)
SID_ZICSR_10:
	li sp, SID_ZICSR_10_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is non-zero
	csrrwi s7, sscratch, 0
SID_ZICSR_10_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_11)
SID_ZICSR_11:
	li sp, SID_ZICSR_11_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRWI: Atomic swap with imm=0, rd is x0
	csrrwi s6, sepc, 0
SID_ZICSR_11_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_12)
SID_ZICSR_12:
	li sp, tp_csr_storage
	;#csr_rw(sscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_12_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Set bits using max imm (0x1F)
	csrrsi t2, sscratch, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sscratch, write, false, true)
SID_ZICSR_12_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_13)
SID_ZICSR_13:
	li sp, SID_ZICSR_13_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRSI: Read-only access by setting uimm to 0
	csrrsi t1, senvcfg, 0
SID_ZICSR_13_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_14)
SID_ZICSR_14:
	li sp, tp_csr_storage
	;#csr_rw(sscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_14_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRCI: Clear bits using max imm (0x1F)
	csrrci s4, sscratch, 0x1f
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sscratch, write, false, true)
SID_ZICSR_14_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_15)
SID_ZICSR_15:
	li sp, SID_ZICSR_15_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSRRCI: Read-only access by setting uimm to 0
	csrrci s2, stval, 0
SID_ZICSR_15_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_16)
SID_ZICSR_16:
	li sp, SID_ZICSR_16_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# CSR access surrounded by random arithmetic instructions
	li a1, 0x5c14bc4d
	li t6, 0xffa9b9f4
	mulhsu s3, a1, t6
	csrrw t5, sepc, zero
	li t6, 0x83844b43
	addi s6, t6, 0x16c
	csrrs t4, scounteren, zero
	li s9, 0xacaab3a1
	li a4, 0x8f54f8d1
	remw s10, s9, a4
	csrrc a6, sscratch, zero
	li t3, 0x2e8d4b8d
	li s3, 0xfec3f6b6
	divw t5, t3, s3
	csrrwi t5, scause, 0
	li s5, 0xe4c11ab5
	li a6, 0x72154e79
	div a1, s5, a6
	csrrsi t6, sscratch, 0
	li s7, 0xcbf87547
	li t3, 0x6a27e0e2
	fcvt.s.lu fs8, s7
	fcvt.s.lu ft11, t3
	fdiv.s fs2, fs8, ft11
	csrrci t6, sepc, 0
	li t4, 0xbc01bfd1
	li a4, 0x867e5e18
	fcvt.s.lu fs7, t4
	fcvt.s.wu fs0, a4
	fdiv.s fs0, fs7, fs0
SID_ZICSR_16_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_17)
SID_ZICSR_17:
	li sp, SID_ZICSR_17_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Back to back CSR accesses - all cross coverage cases
	csrrw t1, sscratch, zero
	csrrw s0, senvcfg, zero
	csrrw t6, stval, zero
	csrrs t2, senvcfg, zero
	csrrw s4, scounteren, zero
	csrrc a7, sscratch, zero
	csrrw a3, sscratch, zero
	csrrwi a5, senvcfg, 0
	csrrw a7, sepc, zero
	csrrsi a6, scause, 0
	csrrw t5, sscratch, zero
	csrrci a5, stval, 0
	csrrs s1, scause, zero
	csrrw s11, senvcfg, zero
	csrrs s4, scounteren, zero
	csrrs a1, scounteren, zero
	csrrs a1, scounteren, zero
	csrrc s7, scounteren, zero
	csrrs s3, sepc, zero
	csrrwi a2, scause, 0
	csrrs a0, sscratch, zero
	csrrsi t6, senvcfg, 0
	csrrs s4, scause, zero
	csrrci s7, scause, 0
	csrrc t6, sepc, zero
	csrrw s4, sepc, zero
	csrrc s6, scounteren, zero
	csrrs s0, stval, zero
	csrrc a3, sepc, zero
	csrrc s11, sscratch, zero
	csrrc a4, scounteren, zero
	csrrwi a7, senvcfg, 0
	csrrc s3, senvcfg, zero
	csrrsi t6, stval, 0
	csrrc s3, scause, zero
	csrrci s0, stvec, 0
	csrrwi t6, senvcfg, 0
	csrrw s5, scounteren, zero
	csrrwi a6, stval, 0
	csrrs s5, scounteren, zero
	csrrwi a2, stvec, 0
	csrrc a7, sscratch, zero
	csrrwi a6, stval, 0
	csrrwi t3, stvec, 0
	csrrwi a3, sscratch, 0
	csrrsi t5, sscratch, 0
	csrrwi s9, scounteren, 0
	csrrci a6, sepc, 0
	csrrsi t3, scounteren, 0
	csrrw s7, senvcfg, zero
	csrrsi t4, scounteren, 0
	csrrs s2, sscratch, zero
	csrrsi t6, senvcfg, 0
	csrrc t6, scause, zero
	csrrsi a5, sepc, 0
	csrrwi a3, senvcfg, 0
	csrrsi a6, sepc, 0
	csrrsi a3, stvec, 0
	csrrsi s0, senvcfg, 0
	csrrci t5, scause, 0
	csrrci t3, stval, 0
	csrrw a4, stvec, zero
	csrrci s1, stvec, 0
	csrrs s5, stval, zero
	csrrci s11, stval, 0
	csrrc s3, sscratch, zero
	csrrci t5, sepc, 0
	csrrwi s2, stval, 0
	csrrci s1, stvec, 0
	csrrsi s8, scounteren, 0
	csrrci t5, scounteren, 0
	csrrci t3, scounteren, 0
SID_ZICSR_17_passed:
	;#test_passed()

;#discrete_test(test=SID_ZICSR_19)
SID_ZICSR_19:
	li sp, tp_csr_storage
	;#csr_rw(sscratch, read, false, true)
	sd t2, 0(sp)
	li sp, SID_ZICSR_19_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# ZICSR test: sscratch write/set/clear with assertions (S-mode)
	li a0, -1
	li t3, 0
	li t2, 0x1f
	# CSRRW: Write all ones to sscratch
	csrrw a6, sscratch, a0
	csrr s0, sscratch
	beq s0, a0, pass_label_0
	li a3, failed_addr
	ld a5, 0(a3)
	jr a5
pass_label_0:
	# CSRRW: Clear sscratch by writing 0
	li a7, 0
	csrrw a2, sscratch, a7
	csrr t4, sscratch
	beq t4, t3, pass_label_1
	li a7, failed_addr
	ld s5, 0(a7)
	jr s5
pass_label_1:
	# CSRRS: Set all bits in sscratch
	csrrs s0, sscratch, a0
	csrr s0, sscratch
	beq s0, a0, pass_label_2
	li s1, failed_addr
	ld s7, 0(s1)
	jr s7
pass_label_2:
	# CSRRC: Clear all bits in sscratch
	csrrc s8, sscratch, a0
	csrr a0, sscratch
	beq a0, t3, pass_label_3
	li a5, failed_addr
	ld a4, 0(a5)
	jr a4
pass_label_3:
	# CSRRWI: Write max immediate (0x1F) to sscratch
	csrrwi s11, sscratch, 0x1f
	csrr s2, sscratch
	beq s2, t2, pass_label_4
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
pass_label_4:
	# CSRRWI: Clear sscratch by writing 0
	csrrwi a4, sscratch, 0
	csrr s11, sscratch
	beq s11, t3, pass_label_5
	li a4, failed_addr
	ld t4, 0(a4)
	jr t4
pass_label_5:
	# CSRRSI: Set bits with max immediate (0x1F) in sscratch
	csrrsi a6, sscratch, 0x1f
	csrr a4, sscratch
	beq a4, t2, pass_label_6
	li s1, failed_addr
	ld a3, 0(s1)
	jr a3
pass_label_6:
	# CSRRCI: Clear bits with max immediate (0x1F) in sscratch
	csrrci s8, sscratch, 0x1f
	csrr s8, sscratch
	beq s8, t3, pass_label_7
	li t1, failed_addr
	ld s9, 0(t1)
	jr s9
pass_label_7:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(sscratch, write, false, true)
SID_ZICSR_19_passed:
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
	li t2, 0xff
	li s3, 0
	li s5, 0x1f
	li a2, 0xff
	# CSRRW: Write 0xFF to fcsr (all 8 writable bits)
	csrrw a0, fcsr, t2
	csrr s11, fcsr
	and s1, s11, a2
	beq s1, t2, pass_label_8
	li a7, failed_addr
	ld a3, 0(a7)
	jr a3
pass_label_8:
	# CSRRW: Clear fcsr by writing 0
	li a4, 0
	csrrw t1, fcsr, a4
	csrr s4, fcsr
	and s8, s4, a2
	beq s8, s3, pass_label_9
	li a6, failed_addr
	ld s9, 0(a6)
	jr s9
pass_label_9:
	# CSRRS: Set all 8 bits in fcsr
	csrrs s0, fcsr, t2
	csrr t1, fcsr
	and t1, t1, a2
	beq t1, t2, pass_label_10
	li a3, failed_addr
	ld a4, 0(a3)
	jr a4
pass_label_10:
	# CSRRC: Clear all 8 bits in fcsr
	csrrc t6, fcsr, t2
	csrr s0, fcsr
	and t2, s0, a2
	beq t2, s3, pass_label_11
	li a7, failed_addr
	ld t3, 0(a7)
	jr t3
pass_label_11:
	# CSRRWI: Write max immediate (0x1F) to fcsr
	csrrwi a7, fcsr, 0x1f
	csrr t4, fcsr
	and s9, t4, a2
	beq s9, s5, pass_label_12
	li t1, failed_addr
	ld s0, 0(t1)
	jr s0
pass_label_12:
	# CSRRWI: Clear fcsr by writing 0
	csrrwi a1, fcsr, 0
	csrr t4, fcsr
	and s9, t4, a2
	beq s9, s3, pass_label_13
	li s2, failed_addr
	ld t6, 0(s2)
	jr t6
pass_label_13:
	# CSRRSI: Set bits with max immediate (0x1F) in fcsr
	csrrsi t1, fcsr, 0x1f
	csrr t4, fcsr
	and a0, t4, a2
	beq a0, s5, pass_label_14
	li s10, failed_addr
	ld s5, 0(s10)
	jr s5
pass_label_14:
	# CSRRCI: Clear bits with max immediate (0x1F) in fcsr
	csrrci a1, fcsr, 0x1f
	csrr t2, fcsr
	and a5, t2, a2
	beq a5, s3, pass_label_15
	li t1, failed_addr
	ld s11, 0(t1)
	jr s11
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

;#random_addr(name=SID_ZICSR_19_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_19_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_19_stack, phys_name=SID_ZICSR_19_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_19_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZICSR_20_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZICSR_20_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZICSR_20_stack, phys_name=SID_ZICSR_20_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZICSR_20_stack
.dword 0xc001c0de
