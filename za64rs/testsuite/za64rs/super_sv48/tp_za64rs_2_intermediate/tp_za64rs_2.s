;#test.name       za64rs
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      za64rs
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: za64rs

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_ZA64RS_01)
SID_ZA64RS_01:
	li sp, SID_ZA64RS_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test unaligned LR with misaligned address
	OS_SETUP_CHECK_EXCP 0x5, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li t2, mem0
	li s1, 0x1
	add a0, t2, s1
fault_label_0:
	lr.w s4, (a0)
	li a4, failed_addr
	ld a0, 0(a4)
	jr a0
	# assert_exception block end
excp_return_label_0:
	OS_SETUP_CHECK_EXCP 0x5, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a0, mem0
	li t2, 0x1
	add s3, a0, t2
fault_label_1:
	lr.d s2, (s3)
	li s1, failed_addr
	ld a6, 0(s1)
	jr a6
	# assert_exception block end
excp_return_label_1:
SID_ZA64RS_01_passed:
	;#test_passed()

;#discrete_test(test=SID_ZA64RS_02)
SID_ZA64RS_02:
	li sp, SID_ZA64RS_02_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test unaligned SC with misaligned address
	OS_SETUP_CHECK_EXCP 0x7, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s8, mem1
	li t3, 0x1
	add a1, s8, t3
	li s4, 0x9b575bd4
fault_label_2:
	sc.w t5, s4, (a1)
	li s3, failed_addr
	ld s3, 0(s3)
	jr s3
	# assert_exception block end
excp_return_label_2:
	OS_SETUP_CHECK_EXCP 0x7, fault_label_3, excp_return_label_3, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s4, mem1
	li s10, 0x1
	add s2, s4, s10
	li t6, 0x925e477
fault_label_3:
	sc.d s9, t6, (s2)
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
	# assert_exception block end
excp_return_label_3:
SID_ZA64RS_02_passed:
	;#test_passed()

;#discrete_test(test=SID_ZA64RS_03_w)
SID_ZA64RS_03_w:
	li sp, SID_ZA64RS_03_w_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.W anywhere 0..63, SC.W 64+ fail
	li t1, 0
	li s2, mem2
	li s6, 0x20
	add a7, s2, s6
	lr.w s5, (a7)
	li s8, mem2
	li t3, 0x60
	add a2, s8, t3
	li t6, 0xe6b58dea
	sc.w a3, t6, (a2)
	bne a3, t1, pass_label_0
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
pass_label_0:
	li t2, mem2
	li a5, 0x20
	add t4, t2, a5
	lr.w s4, (t4)
	li a4, mem2
	li t6, 0x20
	add a3, a4, t6
	li a7, 0x9325629
	sc.w s3, a7, (a3)
	beq s3, t1, pass_label_1
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
pass_label_1:
SID_ZA64RS_03_w_passed:
	;#test_passed()

;#discrete_test(test=SID_ZA64RS_03_d)
SID_ZA64RS_03_d:
	li sp, SID_ZA64RS_03_d_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.D anywhere 0..63, SC.D 64+ fail
	li s4, 0
	li s3, mem3
	li t6, 0x20
	add s8, s3, t6
	lr.d s8, (s8)
	li a7, mem3
	li t3, 0x60
	add s2, a7, t3
	li s5, 0x2e8d4b8d
	sc.d s10, s5, (s2)
	bne s10, s4, pass_label_2
	li a1, failed_addr
	ld a1, 0(a1)
	jr a1
pass_label_2:
	li s9, mem3
	li s10, 0x20
	add s9, s9, s10
	lr.d t5, (s9)
	li s5, mem3
	li s8, 0x20
	add a4, s5, s8
	li a7, 0xfec3f6b6
	sc.d a6, a7, (a4)
	beq a6, s4, pass_label_3
	li s2, failed_addr
	ld s10, 0(s2)
	jr s10
pass_label_3:
SID_ZA64RS_03_d_passed:
	;#test_passed()

;#discrete_test(test=SID_ZA64RS_03_lrw_scd)
SID_ZA64RS_03_lrw_scd:
	li sp, SID_ZA64RS_03_lrw_scd_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.W anywhere 0..63, SC.W 64+ fail
	li t6, 0
	li a7, mem4
	li t3, 0x20
	add s5, a7, t3
	lr.w s6, (s5)
	li s2, mem4
	li t4, 0x60
	add s2, s2, t4
	li s11, 0x83f0be51
	sc.d s2, s11, (s2)
	bne s2, t6, pass_label_4
	li s8, failed_addr
	ld s10, 0(s8)
	jr s10
pass_label_4:
	li s11, mem4
	li a3, 0x20
	add s3, s11, a3
	lr.w s11, (s3)
	li a1, mem4
	li s8, 0x20
	add a6, a1, s8
	li s6, 0xd4dec9f2
	sc.d s7, s6, (a6)
	beq s7, t6, pass_label_5
	li s9, failed_addr
	ld s9, 0(s9)
	jr s9
pass_label_5:
SID_ZA64RS_03_lrw_scd_passed:
	;#test_passed()

;#discrete_test(test=SID_ZA64RS_03_lrd_scw)
SID_ZA64RS_03_lrd_scw:
	li sp, SID_ZA64RS_03_lrd_scw_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.D anywhere 0..63, SC.D 64+ fail
	li s6, 0
	li s8, mem5
	li s7, 0x20
	add s9, s8, s7
	lr.d t5, (s9)
	li t4, mem5
	li t3, 0x60
	add s3, t4, t3
	li a5, 0xb4c9e758
	sc.w s3, a5, (s3)
	bne s3, s6, pass_label_6
	li a2, failed_addr
	ld t6, 0(a2)
	jr t6
pass_label_6:
	li s7, mem5
	li s4, 0x20
	add a2, s7, s4
	lr.d a5, (a2)
	li s0, mem5
	li s5, 0x20
	add s0, s0, s5
	li t1, 0xd4c0dcab
	sc.w a6, t1, (s0)
	beq a6, s6, pass_label_7
	li t1, failed_addr
	ld a1, 0(t1)
	jr a1
pass_label_7:
SID_ZA64RS_03_lrd_scw_passed:
	;#test_passed()

;#discrete_test(test=SID_ZA64RS_05_w)
SID_ZA64RS_05_w:
	li sp, SID_ZA64RS_05_w_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.W anywhere 64..127. SC.W 0...63 fail
	li s10, 0
	li t2, mem6
	li a5, 0x60
	add s11, t2, a5
	lr.w a4, (s11)
	li t2, mem6
	li a0, 0x20
	add a0, t2, a0
	li t3, 0xf0ad2ab
	sc.w a2, t3, (a0)
	bne a2, s10, pass_label_8
	li s3, failed_addr
	ld s2, 0(s3)
	jr s2
pass_label_8:
	li a7, mem6
	li s0, 0x60
	add t6, a7, s0
	lr.w a7, (t6)
	li a7, mem6
	li s1, 0x60
	add a1, a7, s1
	li a5, 0x930cdbd6
	sc.w s11, a5, (a1)
	beq s11, s10, pass_label_9
	li s6, failed_addr
	ld s9, 0(s6)
	jr s9
pass_label_9:
SID_ZA64RS_05_w_passed:
	;#test_passed()

;#discrete_test(test=SID_ZA64RS_05_d)
SID_ZA64RS_05_d:
	li sp, SID_ZA64RS_05_d_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.D anywhere 64..127. SC.D 0...63 fail
	li s0, 0
	li a0, mem7
	li s1, 0x60
	add t1, a0, s1
	lr.d a1, (t1)
	li t1, mem7
	li t2, 0x20
	add s7, t1, t2
	li s4, 0xac3a5b29
	sc.d a6, s4, (s7)
	bne a6, s0, pass_label_10
	li s2, failed_addr
	ld a6, 0(s2)
	jr a6
pass_label_10:
	li s3, mem7
	li s1, 0x60
	add a6, s3, s1
	lr.d a2, (a6)
	li t5, mem7
	li s4, 0x60
	add a4, t5, s4
	li s10, 0x6005722
	sc.d s6, s10, (a4)
	beq s6, s0, pass_label_11
	li a5, failed_addr
	ld a3, 0(a5)
	jr a3
pass_label_11:
SID_ZA64RS_05_d_passed:
	;#test_passed()

;#discrete_test(test=SID_ZA64RS_04_lrw_scd)
SID_ZA64RS_04_lrw_scd:
	li sp, SID_ZA64RS_04_lrw_scd_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.W anywhere 64..127. SC.W 0...63 fail
	li s9, 0
	li s11, mem8
	li t6, 0x60
	add s11, s11, t6
	lr.w s1, (s11)
	li a6, mem8
	li s2, 0x20
	add s8, a6, s2
	li t1, 0x581d8e86
	sc.d s3, t1, (s8)
	bne s3, s9, pass_label_12
	li t3, failed_addr
	ld s11, 0(t3)
	jr s11
pass_label_12:
	li s11, mem8
	li s2, 0x60
	add s11, s11, s2
	lr.w s0, (s11)
	li s4, mem8
	li t4, 0x60
	add t3, s4, t4
	li s4, 0xf03f2d74
	sc.d a3, s4, (t3)
	beq a3, s9, pass_label_13
	li s8, failed_addr
	ld s5, 0(s8)
	jr s5
pass_label_13:
SID_ZA64RS_04_lrw_scd_passed:
	;#test_passed()

;#discrete_test(test=SID_ZA64RS_04_lrd_scw)
SID_ZA64RS_04_lrd_scw:
	li sp, SID_ZA64RS_04_lrd_scw_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# LR.D anywhere 64..127. SC.D 0...63 fail
	li s11, 0
	li a6, mem9
	li s1, 0x60
	add t1, a6, s1
	lr.d s7, (t1)
	li a2, mem9
	li t3, 0x20
	add t6, a2, t3
	li s6, 0x17ec9409
	sc.w t4, s6, (t6)
	bne t4, s11, pass_label_14
	li a6, failed_addr
	ld s4, 0(a6)
	jr s4
pass_label_14:
	li a3, mem9
	li s8, 0x60
	add s3, a3, s8
	lr.d s5, (s3)
	li a6, mem9
	li s7, 0x60
	add s8, a6, s7
	li t2, 0xa92c0e72
	sc.w s7, t2, (s8)
	beq s7, s11, pass_label_15
	li s4, failed_addr
	ld a5, 0(s4)
	jr a5
pass_label_15:
SID_ZA64RS_04_lrd_scw_passed:
	;#test_passed()

test_cleanup:
	;#test_passed()
local_test_failed:
	;#test_failed()

.section .data
;#random_addr(name=mem0,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem0
.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem1
.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem2
.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem3
.dword 0xc001c0de

;#random_addr(name=mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem4
.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem5
.dword 0xc001c0de

;#random_addr(name=mem6,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem6_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem6
.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem7_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem7
.dword 0xc001c0de

;#random_addr(name=mem8,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem8_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem8, phys_name=mem8_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem8
.dword 0xc001c0de

;#random_addr(name=mem9,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem9_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem9
.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_01_stack, phys_name=SID_ZA64RS_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_01_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_02_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_02_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_02_stack, phys_name=SID_ZA64RS_02_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_02_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_03_w_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_03_w_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_03_w_stack, phys_name=SID_ZA64RS_03_w_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_03_w_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_03_d_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_03_d_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_03_d_stack, phys_name=SID_ZA64RS_03_d_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_03_d_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_03_lrw_scd_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_03_lrw_scd_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_03_lrw_scd_stack, phys_name=SID_ZA64RS_03_lrw_scd_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_03_lrw_scd_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_03_lrd_scw_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_03_lrd_scw_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_03_lrd_scw_stack, phys_name=SID_ZA64RS_03_lrd_scw_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_03_lrd_scw_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_05_w_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_05_w_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_05_w_stack, phys_name=SID_ZA64RS_05_w_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_05_w_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_05_d_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_05_d_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_05_d_stack, phys_name=SID_ZA64RS_05_d_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_05_d_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_04_lrw_scd_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_04_lrw_scd_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_04_lrw_scd_stack, phys_name=SID_ZA64RS_04_lrw_scd_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_04_lrw_scd_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZA64RS_04_lrd_scw_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZA64RS_04_lrd_scw_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZA64RS_04_lrd_scw_stack, phys_name=SID_ZA64RS_04_lrd_scw_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZA64RS_04_lrd_scw_stack
.dword 0xc001c0de
