;#test.name       sscofpmf
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      sscofpmf
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: sscofpmf

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL)
SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL:
	li sp, tp_csr_storage
	;#csr_rw(mcountinhibit, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 0xffffffffffffffff
	csrrw s1, mcountinhibit, t2
	csrr a0, mcountinhibit
	li s4, 0x2
	and a4, a0, s4
	li a0, 0
	beq a4, a0, pass_label_0
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
pass_label_0:
	csrrwi s3, mcountinhibit, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcountinhibit, write, false, true)
SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS)
SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS:
	li sp, tp_csr_storage
	;#csr_rw(mhpmevent3, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a4, 0xffffffffffffffff
	csrrw s10, mhpmevent3, a4
	csrr a2, mhpmevent3
	li t3, 0x300000000000000
	and t2, a2, t3
	li t4, 0
	beq t2, t4, pass_label_1
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
pass_label_1:
	csrrwi s7, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmevent3, write, false, true)
SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS)
SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS:
	li sp, tp_csr_storage
	;#csr_rw(mhpmcounter3, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s10, 0x123456789abcdef0
	csrrw s2, mhpmcounter3, s10
	csrr t6, mhpmcounter3
	beq t6, s10, pass_label_2
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
pass_label_2:
	csrrwi s11, mhpmcounter3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmcounter3, write, false, true)
SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE)
SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrci t1, mcounteren, 0x1
	csrr s2, mcycle
	mv s11, s2
	li t4, 0xfb2147e2
	li s2, 0xdbe53fcd
	li a0, 0xf63f23d3
	fcvt.d.wu fa0, t4
	fcvt.s.wu fa2, s2
	fcvt.s.lu fs2, a0
	fnmadd.d ft1, fa0, fa2, fs2
	li a7, 0x721dea3e
	li s8, 0x294365b5
	fcvt.d.lu fs6, a7
	fcvt.s.lu ft10, s8
	fdiv.s fs9, fs6, ft10
	li a7, 0xf4767f29
	li s0, 0xc1066935
	rem s3, a7, s0
	li s3, 0x665d7438
	addiw s9, s3, 0x6fa
	li a0, 0xb714210f
	addi s3, a0, 0x2ec
	li a3, 0xbd143fac
	li t1, 0x761ebfd5
	li s4, 0xa7a83ee3
	fcvt.d.l ft4, a3
	fcvt.d.wu ft9, t1
	fcvt.d.lu ft11, s4
	fnmsub.d fa5, ft4, ft9, ft11
	li a2, 0x87c56476
	li t2, 0x3ff98ff6
	remw s8, a2, t2
	li a6, 0x7d718d76
	li a0, 0x47733e87
	fcvt.d.l fs11, a6
	fcvt.d.l ft10, a0
	fdiv.d fs3, fs11, ft10
	li s9, 0xecc1cb66
	li a3, 0x7f813761
	fcvt.s.l fa6, s9
	fcvt.d.wu ft7, a3
	fmul.d ft10, fa6, ft7
	li t6, 0x80371ebc
	li t3, 0x83f0be51
	li t5, 0xd4dec9f2
	fcvt.d.lu ft1, t6
	fcvt.d.w fs8, t3
	fcvt.s.l ft4, t5
	fmadd.s ft2, ft1, fs8, ft4
	li t6, 0xcbd4d3e5
	li s8, 0x5a9ac6e1
	divuw s5, t6, s8
	li t5, 0xa9643a2c
	li a1, 0xe20284a0
	fcvt.d.wu fa7, t5
	fcvt.d.wu ft5, a1
	fmul.s fa1, fa7, ft5
	li s10, 0x74667c02
	li t4, 0xe652c71d
	divw s6, s10, t4
	li s9, 0xe73695c6
	li a1, 0x7604e4b7
	mulhu s3, s9, a1
	li s8, 0x59cc60b4
	li a1, 0x91551e85
	mulhsu a4, s8, a1
	li s4, 0xb9d39ccd
	addi a2, s4, 0x16c
	li a4, 0xeb9ac68b
	li t5, 0x8ebdbfe6
	remw s7, a4, t5
	li a0, 0xb9492f28
	li s2, 0x74e088ac
	divw s4, a0, s2
	li a3, 0x7c9260df
	li t5, 0xa8acb516
	div s7, a3, t5
	li a3, 0x38c89b3b
	li t4, 0xf0caeef3
	fcvt.d.l fs7, a3
	fcvt.s.w ft7, t4
	fdiv.s fs6, fs7, ft7
	li t6, 0x531d6463
	li a4, 0xd08f1bb5
	fcvt.d.l ft2, t6
	fcvt.d.l ft3, a4
	fdiv.s fa4, ft2, ft3
	li a5, 0xb3172065
	li s8, 0xd5c44a51
	fcvt.s.lu ft11, a5
	fcvt.s.lu fs5, s8
	fadd.d fa3, ft11, fs5
	li s4, 0x2a838afb
	li s8, 0xe06f291e
	fcvt.d.w fs1, s4
	fcvt.d.wu fs2, s8
	fdiv.s fs10, fs1, fs2
	li t1, 0xe86ec9c9
	li s1, 0x9dc8db4b
	fcvt.d.l fa2, t1
	fcvt.d.lu ft11, s1
	fmul.s fa5, fa2, ft11
	li a6, 0x44a4a8f9
	li s6, 0xc5e2486f
	divw a7, a6, s6
	li a4, 0xe9500ecc
	li a6, 0x7ad1f45d
	li t4, 0x4f3f877a
	fcvt.d.lu fa7, a4
	fcvt.d.lu fa6, a6
	fcvt.d.l fs6, t4
	fnmadd.d fs5, fa7, fa6, fs6
	li s7, 0x4da4daee
	li s3, 0xf515a826
	li a6, 0xcc9c3adf
	fcvt.d.l fs6, s7
	fcvt.d.l fa2, s3
	fcvt.s.lu ft9, a6
	fmsub.d ft11, fs6, fa2, ft9
	li a5, 0xb4c9e758
	li s4, 0xd4c0dcab
	li s6, 0x81167349
	fcvt.s.l ft6, a5
	fcvt.d.w fa3, s4
	fcvt.d.w fs1, s6
	fmadd.s fs4, ft6, fa3, fs1
	li s8, 0x8feb994d
	li a4, 0x848b1dfa
	fcvt.d.w fs10, s8
	fcvt.d.l fs3, a4
	fadd.d fs10, fs10, fs3
	li s5, 0x81e220e2
	li s6, 0xa6c3181f
	li t4, 0x9da59b77
	fcvt.s.w fs7, s5
	fcvt.d.l fs0, s6
	fcvt.d.wu fa7, t4
	fnmsub.s fa7, fs7, fs0, fa7
	li s10, 0x96838b79
	li s8, 0x681b8f5b
	clmulh t1, s10, s8
	li a3, 0x4fd507a1
	li s8, 0xbb1e386f
	fcvt.d.w fs0, a3
	fcvt.d.l ft2, s8
	fadd.d fa1, fs0, ft2
	csrr s0, mcycle
	sub t1, s0, s11
	li a6, 0
	bne t1, a6, pass_label_3
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
pass_label_3:
	csrrwi s7, mcounteren, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET)
SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrci a4, mcounteren, 0x4
	csrr t4, minstret
	mv t6, t4
	li s4, 0xb151ad78
	li a4, 0x1afb9097
	mul t3, s4, a4
	li s7, 0x650b156
	addi s2, s7, 0x682
	li s11, 0x9e412ca0
	li a7, 0xa8beb006
	li s2, 0x786a764b
	fcvt.d.l fs8, s11
	fcvt.d.w ft11, a7
	fcvt.s.l fs6, s2
	fnmadd.d ft3, fs8, ft11, fs6
	li s2, 0xc6f75c84
	li a7, 0xb0ddfd4
	addw a3, s2, a7
	li s4, 0xb9387e65
	li s7, 0xb4af8aa9
	li a2, 0x7f799eb2
	fcvt.s.w fa4, s4
	fcvt.d.wu fs8, s7
	fcvt.s.lu fs10, a2
	fmsub.d fa5, fa4, fs8, fs10
	li a7, 0x4a6ec74d
	li t1, 0x5b8aaa49
	fcvt.s.wu fa2, a7
	fcvt.d.w fs3, t1
	fadd.s fs7, fa2, fs3
	li a2, 0xf5a85142
	li t4, 0x75004b02
	li s7, 0x243725d4
	fcvt.s.l ft7, a2
	fcvt.d.lu fa5, t4
	fcvt.d.w ft5, s7
	fnmsub.d ft1, ft7, fa5, ft5
	li s10, 0xcc790cf7
	li a6, 0x5ffa441d
	mulh s10, s10, a6
	li a7, 0x44d96a48
	li a2, 0x7bf4a209
	li a4, 0x86bbd7a0
	fcvt.s.w fa5, a7
	fcvt.d.lu fa1, a2
	fcvt.s.lu ft1, a4
	fnmsub.s fs0, fa5, fa1, ft1
	auipc t3, 0xd
	li t4, 0xdda4a340
	li s3, 0x7a415785
	remu s8, t4, s3
	li s3, 0xb8343864
	addi a7, s3, 0x2fe
	li a2, 0xf467032a
	li s5, 0xba588a85
	remuw a6, a2, s5
	auipc s8, 0x1c3
	li a1, 0xcde9e147
	li t2, 0x6b415a81
	fcvt.d.wu fa4, a1
	fcvt.s.l fa2, t2
	fadd.s ft8, fa4, fa2
	li t3, 0xee9b14f9
	li s2, 0x7dfbad9f
	mul a7, t3, s2
	li a6, 0xd604761a
	li s9, 0xae2321e9
	subw s3, a6, s9
	li a6, 0x4bf8b43d
	li s11, 0x65093665
	li a0, 0x3b4bee54
	fcvt.d.w fs9, a6
	fcvt.d.w ft2, s11
	fcvt.s.wu ft8, a0
	fnmadd.s ft3, fs9, ft2, ft8
	li t3, 0x2809cc8c
	li a6, 0x7d214e9a
	fcvt.d.wu fa5, t3
	fcvt.s.w fs1, a6
	fadd.d fa2, fa5, fs1
	li a7, 0x98b7df52
	li a1, 0x42686372
	li t3, 0x8c6e800e
	fcvt.s.lu fs1, a7
	fcvt.d.w ft9, a1
	fcvt.s.wu fs10, t3
	fmadd.d fs5, fs1, ft9, fs10
	li s2, 0x6d7ab8bb
	li s8, 0xb2140e4a
	li s0, 0xaddc2211
	fcvt.s.wu fa0, s2
	fcvt.d.l fa4, s8
	fcvt.s.w fa2, s0
	fnmsub.d fs8, fa0, fa4, fa2
	li s4, 0xb2ff0a7d
	li t2, 0xeb2812f2
	div a4, s4, t2
	li s0, 0x15956620
	li s8, 0x95fd948f
	clmulh s0, s0, s8
	li a3, 0xba5128a2
	li a5, 0xd15ed4a7
	li s10, 0x93646be3
	fcvt.d.w fa1, a3
	fcvt.s.w fs7, a5
	fcvt.d.l ft1, s10
	fmadd.d ft9, fa1, fs7, ft1
	li s3, 0x189000cc
	li s7, 0x12378868
	subw s1, s3, s7
	li a6, 0x5b269109
	li s0, 0x2d1724ae
	mulw t2, a6, s0
	li s6, 0xff6c6a1e
	li s2, 0x8b966e9f
	subw t1, s6, s2
	li s7, 0x258117a8
	li s8, 0xce69f78b
	subw s0, s7, s8
	lui s10, 0x4f1
	li a0, 0x6ab14f81
	li s8, 0xe5f0bff9
	clmul s4, a0, s8
	li t2, 0x111c62e3
	li s10, 0xcc6f1e09
	li s9, 0x160de24a
	fcvt.s.wu fs9, t2
	fcvt.s.l fa0, s10
	fcvt.s.w ft3, s9
	fmadd.d fa2, fs9, fa0, ft3
	li a3, 0xe94f49a1
	li a2, 0xe53f82d8
	mulh a5, a3, a2
	csrr a6, minstret
	mv s1, a6
	sub s2, s1, t6
	li a2, 0
	bne s2, a2, pass_label_4
	li a2, failed_addr
	ld s6, 0(a2)
	jr s6
pass_label_4:
	csrrwi a6, mcounteren, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS)
SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS:
	li sp, tp_csr_storage
	;#csr_rw(mcountinhibit, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrsi t5, mcountinhibit, 0x1
	# Settling period for in-flight instructions, should help for OoO processors
	li s5, 0x78092ffc
	li s6, 0x30861996
	li s11, 0xc09885d8
	fcvt.s.w ft8, s5
	fcvt.d.l fa1, s6
	fcvt.s.lu fs3, s11
	fmadd.d ft10, ft8, fa1, fs3
	li t3, 0xadb040b5
	li t4, 0xd8a1b800
	li s0, 0x5fb09791
	fcvt.d.wu fs5, t3
	fcvt.s.w fs2, t4
	fcvt.s.l fs6, s0
	fmadd.s fs11, fs5, fs2, fs6
	lui s8, 0x414
	li s3, 0x2f721389
	li t4, 0x5b293bbd
	mulh s9, s3, t4
	li a2, 0x23e710fa
	li s10, 0xcb8b84c6
	li s7, 0x22a85499
	fcvt.s.wu fs4, a2
	fcvt.d.w fa6, s10
	fcvt.s.lu ft2, s7
	fmadd.d fs4, fs4, fa6, ft2
	li a0, 0x3bb12a6e
	li s6, 0x44c54d8e
	fcvt.s.lu ft9, a0
	fcvt.d.wu ft6, s6
	fsub.s ft5, ft9, ft6
	li a2, 0xcefc3d53
	li s0, 0x8cf41b85
	li a4, 0xa2062bdf
	fcvt.s.wu ft4, a2
	fcvt.d.lu fs8, s0
	fcvt.d.w fa5, a4
	fmadd.s ft8, ft4, fs8, fa5
	li a4, 0x60c50664
	li s6, 0x66777271
	divu t1, a4, s6
	csrr s4, mcycle
	# Main filler period
	li a3, 0xcef968ed
	li a4, 0xd2d22609
	fcvt.d.wu fs9, a3
	fcvt.s.lu fa3, a4
	fdiv.s fa0, fs9, fa3
	lui t2, 0x279
	li a7, 0xbfd9cb18
	addiw s9, a7, 0x1e0
	li a4, 0x579de8b3
	li a5, 0x47dedcf7
	li s3, 0xe0eab473
	fcvt.s.l fa5, a4
	fcvt.d.w fs4, a5
	fcvt.s.w fs5, s3
	fnmsub.d ft3, fa5, fs4, fs5
	li s0, 0xb856740d
	li s11, 0xed097b24
	fcvt.s.lu fs0, s0
	fcvt.s.l fa6, s11
	fmul.s fa4, fs0, fa6
	li t2, 0x98584fcf
	li s1, 0x80aacedc
	mulhsu t5, t2, s1
	li t2, 0x94b31465
	li s9, 0xb0a2befe
	li a5, 0xbb6beb36
	fcvt.d.lu ft7, t2
	fcvt.s.lu fs1, s9
	fcvt.d.wu fa1, a5
	fmadd.s ft8, ft7, fs1, fa1
	li a1, 0xf2e3626d
	li s3, 0x520b6b99
	rem a2, a1, s3
	li a5, 0xbe1867ec
	li s11, 0x6640b2dc
	addw s10, a5, s11
	li t3, 0xc041ff69
	li a7, 0xb6bcf51c
	subw t2, t3, a7
	li a6, 0xde8b1c3e
	li t4, 0xb45aa3a5
	subw a5, a6, t4
	li s8, 0xef8192f2
	li a3, 0xa1d4342f
	fcvt.d.wu fs7, s8
	fcvt.d.wu ft4, a3
	fdiv.d ft10, fs7, ft4
	li t6, 0xc0e7a000
	li a6, 0xf832c259
	fcvt.d.l fs2, t6
	fcvt.s.lu fs0, a6
	fadd.d fs8, fs2, fs0
	li s9, 0xfaa44732
	li a5, 0xb763ae12
	mulh a3, s9, a5
	li a2, 0x4aa6b05b
	li a5, 0x882d2eb0
	remw t2, a2, a5
	li t4, 0x9f5b417b
	li a2, 0xa311fee0
	clmulh t1, t4, a2
	auipc t6, 0x2b0
	li a0, 0xabb03d09
	li a4, 0x129a70f6
	li a2, 0x5e102c23
	fcvt.s.lu fs8, a0
	fcvt.d.l fs6, a4
	fcvt.d.w fs3, a2
	fnmsub.d fa0, fs8, fs6, fs3
	li t5, 0x4eff778a
	li s10, 0x652a5f1c
	fcvt.d.w fs9, t5
	fcvt.d.lu fs5, s10
	fadd.d ft11, fs9, fs5
	li s9, 0x7be76a6e
	li s0, 0x2cbe00f5
	divuw a3, s9, s0
	li s8, 0x42072c98
	li a7, 0xf52ca206
	fcvt.s.w fs6, s8
	fcvt.s.wu fs10, a7
	fadd.s ft8, fs6, fs10
	li s6, 0xe6bdd5af
	li a4, 0x5a9ff998
	li a6, 0x70d3fddd
	fcvt.s.l fa5, s6
	fcvt.d.w fs7, a4
	fcvt.s.lu fs5, a6
	fnmadd.d fa1, fa5, fs7, fs5
	li a5, 0x7a04afdb
	li t3, 0x16735790
	remu t5, a5, t3
	li a5, 0xe4c0ae1e
	li a1, 0xec6b7f4b
	li t5, 0x2fbb3174
	fcvt.d.lu fs2, a5
	fcvt.s.lu fs9, a1
	fcvt.s.w fs11, t5
	fnmsub.d ft1, fs2, fs9, fs11
	li a4, 0x509bed1e
	li a7, 0xf5ee6fab
	div a7, a4, a7
	li t2, 0x61071128
	li t4, 0x2086b975
	li t1, 0xf7ce3075
	fcvt.d.wu fs1, t2
	fcvt.d.l ft11, t4
	fcvt.s.w fa7, t1
	fnmadd.d fa5, fs1, ft11, fa7
	li s3, 0x72cf171
	li a7, 0x1ab165a4
	mulh s2, s3, a7
	li a7, 0x59ccb7e8
	li s9, 0x2ac61f7a
	rem s2, a7, s9
	li s9, 0x5bf2e128
	li a1, 0x13b8b256
	remw t2, s9, a1
	li s7, 0xeaeabcea
	li t2, 0xe0df0ff8
	divuw t2, s7, t2
	li s0, 0xe21904a8
	li a0, 0xbb7a0d1e
	sub s9, s0, a0
	li t3, 0xc2f5a84a
	li s1, 0xa6d97a43
	mulhu s9, t3, s1
	csrr s8, mcycle
	beq s8, s4, pass_label_5
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
pass_label_5:
	csrrwi s1, mcountinhibit, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcountinhibit, write, false, true)
SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES)
SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES:
	li sp, tp_csr_storage
	;#csr_rw(mcountinhibit, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrsi s2, mcountinhibit, 0x1
	csrrci t4, mcountinhibit, 0x1
	csrr s4, mcycle
	mv s3, s4
	li a3, 0x620312ef
	li s10, 0x79266c56
	li a5, 0x9cd8fe4f
	fcvt.d.w ft4, a3
	fcvt.s.w fa3, s10
	fcvt.d.lu fs3, a5
	fmsub.s fa4, ft4, fa3, fs3
	li t3, 0x412c1546
	li s11, 0x9d7af545
	divw t4, t3, s11
	lui s0, 0x7d5
	li s11, 0x30db5af8
	li t5, 0x94b05bec
	li s0, 0x79e20e28
	fcvt.s.wu fs1, s11
	fcvt.s.l fa1, t5
	fcvt.d.lu ft1, s0
	fnmsub.d ft2, fs1, fa1, ft1
	li s2, 0x71e7b0c9
	li t2, 0x312f7404
	remu a2, s2, t2
	li t5, 0xc15b6917
	li a4, 0x782739e8
	mulh s5, t5, a4
	li t6, 0xd99bbc78
	li s7, 0x92c4511b
	divuw s2, t6, s7
	li s1, 0x56772f2a
	li a4, 0x4f38e0a7
	remw a7, s1, a4
	li s7, 0x121dbecf
	li s10, 0x2ba0f630
	rem s10, s7, s10
	li a6, 0x5e9579f4
	li a4, 0x9ae615ff
	li t6, 0xa0542e08
	fcvt.s.wu fs10, a6
	fcvt.s.wu ft6, a4
	fcvt.d.wu ft4, t6
	fmadd.s fa3, fs10, ft6, ft4
	li s8, 0xdc349cee
	li a2, 0x78a9fe3d
	li t6, 0x38e58232
	fcvt.d.w fa0, s8
	fcvt.s.l ft5, a2
	fcvt.d.wu fs5, t6
	fnmadd.s ft10, fa0, ft5, fs5
	auipc a4, 0x350
	li t3, 0xc4bf0390
	li s1, 0x9d9dc6a0
	li a0, 0xa76e8f50
	fcvt.d.wu ft10, t3
	fcvt.s.lu fs3, s1
	fcvt.s.w fs8, a0
	fmsub.d fa3, ft10, fs3, fs8
	li t2, 0xa89f8e64
	addiw t3, t2, 0x3a7
	li s9, 0x93af674a
	li a4, 0xe2852842
	remuw s2, s9, a4
	li s4, 0x20ca5ac6
	li t2, 0xaea18d56
	subw s7, s4, t2
	li s10, 0xef20c4f6
	li s2, 0x4ecd5706
	rem t5, s10, s2
	li a0, 0xde810c11
	addi a7, a0, 0x1ba
	li a4, 0x35120402
	li s10, 0x8908fdfa
	li a5, 0xd63ca329
	fcvt.s.w ft3, a4
	fcvt.d.wu fs0, s10
	fcvt.d.wu fs11, a5
	fmsub.d fa4, ft3, fs0, fs11
	li a0, 0xd2c16af5
	li t1, 0x4c968cce
	clmul s1, a0, t1
	li a5, 0x191d950e
	li t5, 0x33b6e9b
	mulw s1, a5, t5
	li s6, 0xc9f8ec05
	li a5, 0xded5ed25
	li t4, 0x76fb590
	fcvt.d.l fs5, s6
	fcvt.s.l fs10, a5
	fcvt.d.wu ft2, t4
	fmsub.s ft5, fs5, fs10, ft2
	li t4, 0x32aa00a2
	li s7, 0xfdc3b31a
	li s2, 0x502634fa
	fcvt.d.w fs1, t4
	fcvt.s.w fs6, s7
	fcvt.s.w fs5, s2
	fmadd.d fs2, fs1, fs6, fs5
	li a6, 0xefe0d6c
	li s6, 0x51a5cad0
	li a3, 0x888a4b08
	fcvt.d.lu ft7, a6
	fcvt.s.wu fa3, s6
	fcvt.s.w ft5, a3
	fnmsub.s ft5, ft7, fa3, ft5
	li s6, 0x4182baa0
	li a7, 0xcada1f6d
	li a6, 0xb9617599
	fcvt.s.w fs7, s6
	fcvt.s.wu fa1, a7
	fcvt.s.w fa2, a6
	fmadd.s fs7, fs7, fa1, fa2
	li s11, 0xaa1fc134
	li s9, 0x57c4581f
	mul s2, s11, s9
	li s4, 0xd29883ff
	li t5, 0x70c92f2c
	fcvt.s.l fa7, s4
	fcvt.d.wu fs7, t5
	fmul.d ft10, fa7, fs7
	li s8, 0x126e5b0b
	li s11, 0x6b5aa619
	div s5, s8, s11
	li s10, 0x787bd7c6
	li a0, 0xd55fb310
	divuw s2, s10, a0
	li a4, 0xb630fafe
	li t6, 0x4ac6e08
	li a1, 0x485a2da3
	fcvt.d.wu fs2, a4
	fcvt.d.wu fs8, t6
	fcvt.d.l fs4, a1
	fnmadd.d ft2, fs2, fs8, fs4
	li s7, 0x946d8d0b
	li s10, 0x9300eb3a
	li a4, 0x21c133cb
	fcvt.d.lu ft6, s7
	fcvt.d.l fa6, s10
	fcvt.d.l fs5, a4
	fnmsub.d ft7, ft6, fa6, fs5
	li s11, 0x36553046
	li s9, 0x26893d9e
	clmulh t5, s11, s9
	csrr t1, mcycle
	mv s1, t1
	sub a0, s1, s3
	li a5, 0
	bne a0, a5, pass_label_6
	li a1, failed_addr
	ld a0, 0(a1)
	jr a0
pass_label_6:
	csrrwi s5, mcountinhibit, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcountinhibit, write, false, true)
SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS)
SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS:
	li sp, tp_csr_storage
	;#csr_rw(mcountinhibit, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrsi a3, mcountinhibit, 0x4
	# Settling period for in-flight instructions should help for OoO processors
	li s2, 0x7761ff55
	li s3, 0xb64de557
	addw s3, s2, s3
	li a1, 0x74fffd72
	li a5, 0x5d734e4c
	li t3, 0x859edf2d
	fcvt.s.l fs10, a1
	fcvt.s.lu fs5, a5
	fcvt.d.l fs9, t3
	fnmadd.s fs4, fs10, fs5, fs9
	li a6, 0xd8d8e761
	li a4, 0x9e605a43
	divw a3, a6, a4
	li s11, 0x76338d68
	li s4, 0xe84c275d
	li s10, 0xa9d454ec
	fcvt.s.w fs10, s11
	fcvt.d.l fs1, s4
	fcvt.d.wu fs6, s10
	fmadd.s ft7, fs10, fs1, fs6
	li s3, 0x3f09d99f
	li a2, 0x8e5c3cf2
	li t1, 0xd8fbf4fd
	fcvt.s.wu fa5, s3
	fcvt.d.lu fs9, a2
	fcvt.d.lu fs3, t1
	fnmadd.d fs4, fa5, fs9, fs3
	li t5, 0x88e18a1d
	li s4, 0x28d6a650
	fcvt.d.l ft6, t5
	fcvt.s.lu fs5, s4
	fmul.d fa0, ft6, fs5
	li t1, 0x75fbb3cd
	li a2, 0x49c0c9b9
	fcvt.s.lu ft11, t1
	fcvt.s.lu fa0, a2
	fsub.s fs0, ft11, fa0
	li t3, 0xf3c3ace0
	li s10, 0xef97204d
	li t2, 0xc13ab819
	fcvt.s.w fs4, t3
	fcvt.d.w fs9, s10
	fcvt.s.lu ft5, t2
	fnmadd.d fs9, fs4, fs9, ft5
	csrr s7, minstret
	# Main filler period
	li t3, 0x5c94b0f5
	li s8, 0x6b795aab
	divuw s0, t3, s8
	li a2, 0x1c17b2a3
	li a7, 0x81605e52
	fcvt.d.lu ft8, a2
	fcvt.s.wu ft11, a7
	fadd.s fa5, ft8, ft11
	li t6, 0xaf3e8495
	li a7, 0xe5d94004
	fcvt.s.w fa2, t6
	fcvt.d.wu fa7, a7
	fsub.s ft9, fa2, fa7
	li t3, 0x3ee57eb2
	li s1, 0xbf3c9ed4
	div a0, t3, s1
	li s3, 0xf85e6e8d
	li t4, 0xa72f9593
	clmulh s11, s3, t4
	li s6, 0xa8fd4bfb
	li t3, 0xf5768496
	divu s10, s6, t3
	li t6, 0x6307b533
	addi s8, t6, 0x205
	li a1, 0x1dfec06e
	li s2, 0x6ec27246
	divw a0, a1, s2
	li a3, 0x99167bfd
	li a4, 0x762255d9
	divu a4, a3, a4
	li s11, 0x9fcd513f
	li s2, 0x8572f659
	li a5, 0x7461ffe6
	fcvt.s.wu fs2, s11
	fcvt.d.lu fa1, s2
	fcvt.d.l fa7, a5
	fmsub.d fs3, fs2, fa1, fa7
	li s8, 0x171453cb
	li a6, 0xf69419ff
	li a1, 0xbded7fcb
	fcvt.s.lu ft8, s8
	fcvt.d.l ft9, a6
	fcvt.s.l fs11, a1
	fnmadd.s ft10, ft8, ft9, fs11
	li s5, 0xf7ac40cf
	li a4, 0xd5413f57
	mulw s11, s5, a4
	li a2, 0x63fbe7f1
	li s4, 0x73da16b5
	li a0, 0x9dc5554b
	fcvt.s.wu fs11, a2
	fcvt.d.w fa3, s4
	fcvt.d.l fa6, a0
	fnmadd.d ft11, fs11, fa3, fa6
	li s6, 0xf105393a
	li a5, 0xc40670fb
	fcvt.d.l fa6, s6
	fcvt.s.lu fs8, a5
	fsub.d fa3, fa6, fs8
	li t5, 0xb61b7955
	li s6, 0xb2347b5e
	li t6, 0xbd37088e
	fcvt.s.w fs4, t5
	fcvt.s.wu fs11, s6
	fcvt.d.l ft2, t6
	fnmsub.d fs7, fs4, fs11, ft2
	li t4, 0x5cdccc31
	li a0, 0xe9cc4e82
	mul s8, t4, a0
	li s6, 0xcc57daca
	li a3, 0x8e98d136
	fcvt.s.wu fs8, s6
	fcvt.d.wu ft10, a3
	fmul.d ft8, fs8, ft10
	li s0, 0x594ade2b
	li t3, 0x2a62dfa1
	fcvt.d.wu fs10, s0
	fcvt.s.lu fs7, t3
	fmul.d fs10, fs10, fs7
	li s2, 0x259b9aa4
	li s9, 0x3bc1d4de
	rem s11, s2, s9
	li s1, 0xaa213d1f
	li a4, 0xe5765364
	mulhsu s3, s1, a4
	li t6, 0xa634bfcb
	li a7, 0x2c848b83
	clmulh t3, t6, a7
	li t6, 0x68939272
	addiw s1, t6, 0x694
	li a1, 0x737ea28b
	li s8, 0x7fb46848
	li s5, 0xb55323df
	fcvt.d.w fs10, a1
	fcvt.s.lu fa5, s8
	fcvt.s.l fs11, s5
	fmadd.d ft2, fs10, fa5, fs11
	li a5, 0xfce8d358
	addi s6, a5, 0x36c
	li t3, 0xb8d7b02a
	li t1, 0xcedd7902
	remuw t1, t3, t1
	li t2, 0x2c32206f
	addi s9, t2, 0x7cb
	li s6, 0x683120b3
	li t5, 0x4393d20b
	fcvt.s.w fs8, s6
	fcvt.s.wu ft4, t5
	fmul.s fs11, fs8, ft4
	li s5, 0xe965d457
	li a6, 0x50061e2a
	fcvt.s.wu fs6, s5
	fcvt.s.l fs7, a6
	fsub.d fs3, fs6, fs7
	li s1, 0x9201f3a1
	li t5, 0xea9c9ed5
	li a7, 0x67a8f71b
	fcvt.d.lu ft9, s1
	fcvt.d.wu fs10, t5
	fcvt.s.lu ft5, a7
	fnmadd.s fs9, ft9, fs10, ft5
	li s4, 0x4c97c44f
	li a6, 0xa5978a84
	mulw a3, s4, a6
	li a6, 0xb6e1ef95
	li a0, 0xc898925c
	rem s10, a6, a0
	li s0, 0xf83d0d86
	li a4, 0xe572d475
	mulhu t2, s0, a4
	csrr s0, minstret
	beq s0, s7, pass_label_7
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
pass_label_7:
	csrrwi s3, mcountinhibit, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcountinhibit, write, false, true)
SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES)
SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES:
	li sp, tp_csr_storage
	;#csr_rw(mcountinhibit, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrsi s6, mcountinhibit, 0x4
	csrrci s8, mcountinhibit, 0x4
	csrr s5, minstret
	mv s9, s5
	li t5, 0xb873b165
	li a4, 0x9e76629c
	li a1, 0x2d63a41d
	fcvt.d.lu ft11, t5
	fcvt.d.l ft7, a4
	fcvt.d.wu fa3, a1
	fnmadd.s ft9, ft11, ft7, fa3
	li s1, 0x32e13afe
	li a1, 0xa9679eef
	li a6, 0xfafcd050
	fcvt.s.w fs0, s1
	fcvt.d.l fa7, a1
	fcvt.d.wu ft5, a6
	fmsub.s fs6, fs0, fa7, ft5
	li a5, 0x9f028740
	li s6, 0xacb7d00e
	div s11, a5, s6
	lui a3, 0x7f2
	li s0, 0xb5add892
	li s10, 0x12834550
	mulhsu t5, s0, s10
	li a7, 0x8980d2ec
	li a6, 0xf2503cb1
	li a0, 0x504d64bc
	fcvt.s.w ft11, a7
	fcvt.s.lu fa6, a6
	fcvt.d.w ft10, a0
	fnmadd.s fs1, ft11, fa6, ft10
	li t3, 0x211ac31b
	li a3, 0x80a9ebaa
	mulhsu t2, t3, a3
	li a5, 0x3cbd8126
	li t5, 0x3cddce42
	clmul a2, a5, t5
	lui s6, 0x703
	li a0, 0xad8686de
	li a4, 0x7490132b
	divw s8, a0, a4
	li t4, 0xac580955
	li s8, 0x67f54e98
	fcvt.d.w fs4, t4
	fcvt.s.l fs6, s8
	fmul.d fa2, fs4, fs6
	li s5, 0x74b8c956
	li a2, 0x1b4f89c8
	mulh a1, s5, a2
	li t5, 0x504a5c82
	li s0, 0x3b68df22
	li a4, 0xc391081
	fcvt.s.l fa5, t5
	fcvt.s.l ft9, s0
	fcvt.d.wu fs2, a4
	fmsub.d fa0, fa5, ft9, fs2
	li t1, 0x58291bf5
	addiw a1, t1, 0x6ae
	li a2, 0x1b622ef2
	li t2, 0x64c7779f
	clmul s8, a2, t2
	li a2, 0x4ab91b7
	li s3, 0x9032af6b
	fcvt.s.l ft2, a2
	fcvt.s.l fa2, s3
	fmul.d fa3, ft2, fa2
	li s10, 0x1df8237c
	li a4, 0xbf2b93af
	fcvt.s.w fs9, s10
	fcvt.s.wu fs8, a4
	fadd.s ft9, fs9, fs8
	li s8, 0xcfa8f8f7
	li s4, 0x42529a55
	fcvt.s.wu fa7, s8
	fcvt.s.w fs11, s4
	fmul.s fa4, fa7, fs11
	li t5, 0x5a6b57e1
	li s7, 0x8dfffeab
	clmulh t3, t5, s7
	li s5, 0x3d971c1c
	li s6, 0x567a55f8
	divw s5, s5, s6
	li a2, 0x6c4f3069
	li a0, 0x3a06845b
	li s6, 0xb20853f
	fcvt.s.l fs1, a2
	fcvt.s.w fs11, a0
	fcvt.d.w fs10, s6
	fmadd.s ft3, fs1, fs11, fs10
	li a0, 0x23cb6d86
	li t1, 0x2ad792c7
	subw s2, a0, t1
	li a4, 0xf5b665ca
	addiw s6, a4, 0x103
	li t4, 0x217a0e9f
	li a3, 0xeeac1c52
	fcvt.s.w fa6, t4
	fcvt.s.l fs8, a3
	fdiv.d fs9, fa6, fs8
	li t3, 0xba6f87da
	li a6, 0xd4b26c74
	divu s7, t3, a6
	li t3, 0xf0af5384
	li s10, 0x2bea7a0b
	li s11, 0x6451038a
	fcvt.s.wu ft9, t3
	fcvt.s.w fs5, s10
	fcvt.s.lu fs10, s11
	fmsub.d fa6, ft9, fs5, fs10
	li s1, 0x26a86f52
	li t1, 0xfe3ab67e
	mulhsu a5, s1, t1
	li a6, 0x1ab59e93
	li t3, 0xa5185e02
	rem t2, a6, t3
	li t6, 0x4ceb1d25
	li a7, 0xc38dca4c
	li s6, 0x6d1e5808
	fcvt.d.lu ft8, t6
	fcvt.d.l fs1, a7
	fcvt.s.l fa4, s6
	fmsub.s fa3, ft8, fs1, fa4
	li s6, 0x76a9abca
	li t1, 0x1e4cda0
	subw s11, s6, t1
	lui s7, 0x420
	li s6, 0x1c484872
	li t6, 0x6c105551
	li s7, 0x60518c
	fcvt.s.w fa7, s6
	fcvt.s.wu ft10, t6
	fcvt.d.lu fa1, s7
	fnmadd.s fa4, fa7, ft10, fa1
	csrr s0, minstret
	sub s8, s0, s9
	li a0, 0
	bne s8, a0, pass_label_8
	li a1, failed_addr
	ld s8, 0(a1)
	jr s8
pass_label_8:
	csrrwi t1, mcountinhibit, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcountinhibit, write, false, true)
SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW)
SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW:
	li sp, tp_csr_storage
	;#csr_rw(mhpmevent3, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mip, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t5, 0
	li s6, 0x2000
	li t1, 0x8000000000000000
	# Clear mip.LCOFIP before test
	li a1, 0x2000
	csrrc t2, mip, a1
	# Write all ones except OF bit to mhpmevent3
	# All ones except OF bit
	li s2, 0x7fffffffffffffff
	csrrw a7, mhpmevent3, s2
	# Read back and check OF bit is clear
	csrr a2, mhpmevent3
	and s0, a2, t1
	beq s0, t5, pass_label_9
	li a7, failed_addr
	ld t2, 0(a7)
	jr t2
pass_label_9:
	# Check mip.LCOFIP is clear
	csrr s1, mip
	and s10, s1, s6
	beq s10, t5, pass_label_10
	li s7, failed_addr
	ld a5, 0(s7)
	jr a5
pass_label_10:
	# Write zero to mhpmevent3
	csrrwi t6, mhpmevent3, 0
	# Read back and check OF bit is still clear
	csrr a5, mhpmevent3
	and t6, a5, t1
	beq t6, t5, pass_label_11
	li s7, failed_addr
	ld a5, 0(s7)
	jr a5
pass_label_11:
	# Check mip.LCOFIP is still clear
	csrr s4, mip
	and a2, s4, s6
	beq a2, t5, pass_label_12
	li a0, failed_addr
	ld s11, 0(a0)
	jr s11
pass_label_12:
	# Cleanup: ensure mhpmevent3 is cleared
	csrrwi s9, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmevent3, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mip, write, false, true)
SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW)
SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW:
	li sp, tp_csr_storage
	;#csr_rw(mhpmcounter3, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mip, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a1, 0
	li s10, 0x2000
	li t5, 0x8000000000000000
	# Clear mip.LCOFIP before test
	li s4, 0x2000
	csrrc s9, mip, s4
	# Write all ones to mhpmcounter3
	li t2, 0xffffffffffffffff
	csrrw t4, mhpmcounter3, t2
	# Check if counter is implemented (read back should be non-zero if implemented)
	csrr a6, mhpmcounter3
	bne a6, a1, pass_label_13
	li a0, failed_addr
	ld a7, 0(a0)
	jr a7
pass_label_13:
	# If implemented, check OF bit in mhpmevent3 is clear
	csrr t2, mhpmevent3
	and s2, t2, t5
	beq s2, a1, pass_label_14
	li s0, failed_addr
	ld s3, 0(s0)
	jr s3
pass_label_14:
	# Check mip.LCOFIP is clear
	csrr s0, mip
	and s6, s0, s10
	beq s6, a1, pass_label_15
	li s0, failed_addr
	ld a5, 0(s0)
	jr a5
pass_label_15:
	# Write zero to mhpmcounter3
	csrrwi s3, mhpmcounter3, 0
	# Read back and check OF bit in mhpmevent3 is still clear
	csrr t1, mhpmevent3
	and s7, t1, t5
	beq s7, a1, pass_label_16
	li a4, failed_addr
	ld a5, 0(a4)
	jr a5
pass_label_16:
	# Check mip.LCOFIP is still clear
	csrr t3, mip
	and s7, t3, s10
	beq s7, a1, pass_label_17
	li s4, failed_addr
	ld a6, 0(s4)
	jr a6
pass_label_17:
	# Cleanup: clear mhpmcounter3 and mhpmevent3
	csrrwi a7, mhpmcounter3, 0
	csrrwi s7, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmcounter3, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mip, write, false, true)
SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW)
SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW:
	li sp, tp_csr_storage
	;#csr_rw(mhpmcounter3, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mip, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s0, 0
	li s11, 0x2000
	li a3, 0x8000000000000000
	# Clear mip.LCOFIP before test
	li t4, 0x2000
	csrrc a1, mip, t4
	# Write zero to mhpmcounter3 first
	csrrwi t3, mhpmcounter3, 0
	# Check if counter is implemented (read back should be zero if implemented but we just wrote zero)
	# Actually, we can't check implementation this way since we wrote zero
	# Let's write a known non-zero value first to check implementation
	csrrwi a6, mhpmcounter3, 0x1
	csrr a0, mhpmcounter3
	bne a0, s0, pass_label_18
	li s6, failed_addr
	ld t5, 0(s6)
	jr t5
pass_label_18:
	# Write zero again to start the test sequence
	csrrwi t5, mhpmcounter3, 0
	# Check OF bit in mhpmevent3 is clear
	csrr a5, mhpmevent3
	and s2, a5, a3
	beq s2, s0, pass_label_19
	li s3, failed_addr
	ld t6, 0(s3)
	jr t6
pass_label_19:
	# Check mip.LCOFIP is clear
	csrr s8, mip
	and t1, s8, s11
	beq t1, s0, pass_label_20
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
pass_label_20:
	# Write all ones to mhpmcounter3
	li t6, 0xffffffffffffffff
	csrrw a1, mhpmcounter3, t6
	# Read back and check OF bit in mhpmevent3 is still clear
	csrr s9, mhpmevent3
	and a0, s9, a3
	beq a0, s0, pass_label_21
	li t3, failed_addr
	ld a2, 0(t3)
	jr a2
pass_label_21:
	# Check mip.LCOFIP is still clear
	csrr a6, mip
	and t3, a6, s11
	beq t3, s0, pass_label_22
	li s1, failed_addr
	ld t3, 0(s1)
	jr t3
pass_label_22:
	# Cleanup: clear mhpmcounter3 and mhpmevent3
	csrrwi t5, mhpmcounter3, 0
	csrrwi a7, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmcounter3, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mip, write, false, true)
SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED)
SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mhpmevent3, read, false, true)
	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x10(sp)
	li sp, SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s5, 0
	li s7, 0x8
	li t4, 0x8000000000000000
	# Counter 3 bit position in scountovf (bit 3)
	# Enable counter 3 in both mcounteren and scounteren
	csrrsi a0, mcounteren, 0x8
	csrrsi t3, scounteren, 0x8
	# Clear OF bit in mhpmevent3 first
	csrrwi s11, mhpmevent3, 0
	# Read scountovf and verify bit 3 is clear
	csrr s2, scountovf
	and a6, s2, s7
	beq a6, s5, pass_label_23
	li t3, failed_addr
	ld s8, 0(t3)
	jr s8
pass_label_23:
	# Set OF bit in mhpmevent3
	li s2, 0x8000000000000000
	csrrw s9, mhpmevent3, s2
	# Read mhpmevent3 to verify OF bit is set
	csrr t3, mhpmevent3
	and s1, t3, t4
	beq s1, t4, pass_label_24
	li s5, failed_addr
	ld a3, 0(s5)
	jr a3
pass_label_24:
	# Read scountovf and verify bit 3 reflects the OF bit
	csrr t3, scountovf
	and s9, t3, s7
	beq s9, s7, pass_label_25
	li a7, failed_addr
	ld s1, 0(a7)
	jr s1
pass_label_25:
	# Cleanup: clear mhpmevent3 and restore counteren registers
	csrrwi a3, mhpmevent3, 0
	csrrwi a2, mcounteren, 0
	csrrwi s0, scounteren, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mhpmevent3, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP)
SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP:
	li sp, tp_csr_storage
	;#csr_rw(mhpmevent3, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s4, 0
	li s0, 0x8000000000000000
	# Clear mhpmevent3 initially
	csrrwi s11, mhpmevent3, 0
	# Verify OF bit (bit 63) is writable in mhpmevent3
	csrrw a1, mhpmevent3, s0
	csrr s8, mhpmevent3
	and t1, s8, s0
	beq t1, s0, pass_label_26
	li a3, failed_addr
	ld s7, 0(a3)
	jr s7
pass_label_26:
	# Clear OF bit and verify it can be cleared
	csrrw a6, mhpmevent3, s4
	csrr t5, mhpmevent3
	and s9, t5, s0
	beq s9, s4, pass_label_27
	li a1, failed_addr
	ld a6, 0(a1)
	jr a6
pass_label_27:
	# Cleanup
	csrrwi a4, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmevent3, write, false, true)
SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP)
SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP:
	li sp, tp_csr_storage
	;#csr_rw(mhpmevent3, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mip, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s3, 0
	li a2, 0x2000
	li s1, 0x8000000000000000
	# Clear mip.LCOFIP before test
	li s2, 0x2000
	csrrc s4, mip, s2
	# Clear mhpmevent3 initially
	csrrwi a7, mhpmevent3, 0
	# Set OF bit in mhpmevent3 via software write
	csrrw s9, mhpmevent3, s1
	# Verify OF bit is set
	csrr a1, mhpmevent3
	and a6, a1, s1
	beq a6, s1, pass_label_28
	li s4, failed_addr
	ld s6, 0(s4)
	jr s6
pass_label_28:
	# Verify mip.LCOFIP is NOT set (software write to OF should not trigger interrupt)
	csrr t6, mip
	and s10, t6, a2
	beq s10, s3, pass_label_29
	li t1, failed_addr
	ld s3, 0(t1)
	jr s3
pass_label_29:
	# Cleanup
	csrrwi s0, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmevent3, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mip, write, false, true)
SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED)
SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED:
	li sp, tp_csr_storage
	;#csr_rw(mhpmevent11, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Write all ones to mhpmevent11
	li t1, 0xffffffffffffffff
	csrrw a0, mhpmevent11, t1
	# Read back mhpmevent11 - should be zero if unimplemented
	csrr a4, mhpmevent11
	# Verify mhpmevent11 reads as zero
	li s2, 0
	beq a4, s2, pass_label_30
	li s0, failed_addr
	ld s0, 0(s0)
	jr s0
pass_label_30:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmevent11, write, false, true)
SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED)
SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED:
	li sp, tp_csr_storage
	;#csr_rw(mhpmcounter11, read, false, true)
	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Write all ones to mhpmcounter11
	li s4, 0xffffffffffffffff
	csrrw s7, mhpmcounter11, s4
	# Read back mhpmcounter11 - should be zero if unimplemented
	csrr s4, mhpmcounter11
	# Read shadow copy hpmcounter11
	csrr a3, hpmcounter11
	# Verify both read as zero if unimplemented
	li a2, 0
	beq s4, a2, pass_label_31
	li a5, failed_addr
	ld s0, 0(a5)
	jr s0
pass_label_31:
	beq a3, a2, pass_label_32
	li t2, failed_addr
	ld t1, 0(t2)
	jr t1
pass_label_32:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmcounter11, write, false, true)
SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_passed:
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

;#random_addr(name=SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack, phys_name=SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack, phys_name=SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack, phys_name=SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack, phys_name=SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack, phys_name=SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack, phys_name=SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack, phys_name=SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack, phys_name=SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack, phys_name=SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack, phys_name=SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack, phys_name=SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack, phys_name=SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack, phys_name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack, phys_name=SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack, phys_name=SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack, phys_name=SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack, phys_name=SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack
.dword 0xc001c0de
