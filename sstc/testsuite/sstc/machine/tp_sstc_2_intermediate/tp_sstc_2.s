;#test.name       sstc
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      sstc
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: sstc

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_SSTC_02_M_HS)
SID_SSTC_02_M_HS:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x10(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x18(sp)
	li sp, SID_SSTC_02_M_HS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=1
	li t2, 0x8000000000000000
	csrrs s1, menvcfg, t2
	# Set mcounteren.tm=1
	csrrsi a0, mcounteren, 0x2
	# Set hcounteren.tm=0
	csrrci s4, hcounteren, 0x2
	# Try accessing stimecmp - should be ok
	csrr a4, stimecmp
	# Try accessing time - should be ok
	csrr a0, time
	# set scounteren.tm = 1
	csrrsi a0, scounteren, 0x2
	# Try accessing stimecmp - should be ok
	csrr t2, stimecmp
	# Try accessing time - should be ok
	csrr s3, time
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x18(sp)
	;#csr_rw(scounteren, write, false, true)
SID_SSTC_02_M_HS_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_03_NON_U)
SID_SSTC_03_NON_U:
	li sp, tp_csr_storage
	;#csr_rw(hcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_SSTC_03_NON_U_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set mcounteren.tm=1
	csrrsi a4, mcounteren, 0x2
	# Set hcounteren.tm=1
	csrrsi s10, hcounteren, 0x2
	# Set scounteren.tm=0
	csrrci a2, scounteren, 0x2
	# Try accessing time in VU mode - should cause virtual instruction exception
	csrr t3, time
	# Set scounteren.tm=0
	csrrsi t2, scounteren, 0x2
	# Try accessing time in U mode - should cause illegal instruction exception
	csrr t4, time
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(hcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
SID_SSTC_03_NON_U_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_04_M)
SID_SSTC_04_M:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSTC_04_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=0
	li s11, 0x8000000000000000
	csrrc a1, menvcfg, s11
	# Try accessing stimecmp - should be okay as we are in M mode
	csrr s4, stimecmp
	li t4, 0x8000000000000000
	csrrs s3, henvcfg, t4
	csrr s3, stimecmp
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SSTC_04_M_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_05_M_HS)
SID_SSTC_05_M_HS:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSTC_05_M_HS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=1
	li t4, 0x8000000000000000
	csrrs s6, menvcfg, t4
	# Set henvcfg.STCE=0
	li a7, 0x8000000000000000
	csrrc s9, henvcfg, a7
	# Try accessing vstimecmp - should be okay
	csrr s5, stimecmp
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SSTC_05_M_HS_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_06)
SID_SSTC_06:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSTC_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=0
	li s6, 0x8000000000000000
	csrrc a4, menvcfg, s6
	# Try to set henvcfg.STCE=1
	li t2, 0x8000000000000000
	csrrs t1, henvcfg, t2
	# Read henvcfg and verify STCE bit is 0
	csrr s4, henvcfg
	li s9, 0x8000000000000000
	and s3, s4, s9
	li s8, 0
	beq s3, s8, pass_label_0
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
pass_label_0:
	li a3, 0x8000000000000000
	csrrc t2, henvcfg, a3
	csrr a5, henvcfg
	and s2, a5, s9
	li s5, 0
	beq s2, s5, pass_label_1
	li s0, failed_addr
	ld a7, 0(s0)
	jr a7
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_SSTC_06_passed:
	;#test_passed()

;#discrete_test(test=SID_SSTC_08)
SID_SSTC_08:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(mip, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_SSTC_08_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set menvcfg.STCE=1
	li a6, 0x8000000000000000
	csrrs a1, menvcfg, a6
	# unset hevncfg.STCE
	li a0, 0x8000000000000000
	csrrc s9, henvcfg, a0
	# read mip and verify stip is not set
	csrr s10, mip
	andi s4, s10, 0x20
	# Try to write to mip.stip
	li t3, 0x20
	csrrs a0, mip, t3
	# read mip and verify stip is not set
	csrr t5, mip
	andi a3, t5, 0x20
	# Try to write to mip.stip
	li s11, 0x20
	csrrc s8, mip, s11
	# read mip and verify stip is not set
	csrr s8, mip
	andi a1, s8, 0x20
	beq a1, s4, pass_label_2
	li s6, failed_addr
	ld a0, 0(s6)
	jr a0
pass_label_2:
	beq a1, a3, pass_label_3
	li s7, failed_addr
	ld t4, 0(s7)
	jr t4
pass_label_3:
	beq a3, s4, pass_label_4
	li s10, failed_addr
	ld a4, 0(s10)
	jr a4
pass_label_4:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(menvcfg, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(mip, write, false, true)
SID_SSTC_08_passed:
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

;#random_addr(name=SID_SSTC_02_M_HS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_02_M_HS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_02_M_HS_stack, phys_name=SID_SSTC_02_M_HS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_02_M_HS_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_03_NON_U_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_03_NON_U_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_03_NON_U_stack, phys_name=SID_SSTC_03_NON_U_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_03_NON_U_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_04_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_04_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_04_M_stack, phys_name=SID_SSTC_04_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_04_M_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_05_M_HS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_05_M_HS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_05_M_HS_stack, phys_name=SID_SSTC_05_M_HS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_05_M_HS_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_06_stack, phys_name=SID_SSTC_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_06_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSTC_08_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSTC_08_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSTC_08_stack, phys_name=SID_SSTC_08_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSTC_08_stack
.dword 0xc001c0de
