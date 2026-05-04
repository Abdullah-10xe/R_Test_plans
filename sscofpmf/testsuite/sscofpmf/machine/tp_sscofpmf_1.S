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

#include "rvmodel_macros.h"
.include "tp_sscofpmf_1_equates.inc"
#include "tp_sscofpmf_1_macros.inc"
#include "tp_sscofpmf_1_loader.inc"
#include "tp_sscofpmf_1_syscalls.inc"
#include "tp_sscofpmf_1_trap_handler_m.inc"
#include "tp_sscofpmf_1_trap_handler_s.inc"
#include "tp_sscofpmf_1_os.inc"
#include "tp_sscofpmf_1_eot.inc"
#include "tp_sscofpmf_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL)
SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL:
	li sp, tp_csr_storage
	;#csr_rw(mcountinhibit, read, false, true)
csrr t2, mcountinhibit

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t6, 0xffffffffffffffff
	csrrw t5, mcountinhibit, t6
	csrr s0, mcountinhibit
	li a5, 0x2
	and a0, s0, a5
	li s8, 0
	beq a0, s8, pass_label_0
	li a0, failed_addr
	ld s7, 0(a0)
	jr s7
pass_label_0:
	csrrwi s10, mcountinhibit, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcountinhibit, write, false, true)
csrrw t2, mcountinhibit, t2

SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS)
SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS:
	li sp, tp_csr_storage
	;#csr_rw(mhpmevent3, read, false, true)
csrr t2, mhpmevent3

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s10, 0xffffffffffffffff
	csrrw s2, mhpmevent3, s10
	csrr s2, mhpmevent3
	li a2, 0x300000000000000
	and s1, s2, a2
	li s8, 0
	beq s1, s8, pass_label_1
	li t1, failed_addr
	ld s6, 0(t1)
	jr s6
pass_label_1:
	csrrwi s9, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmevent3, write, false, true)
csrrw t2, mhpmevent3, t2

SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS)
SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS:
	li sp, tp_csr_storage
	;#csr_rw(mhpmcounter3, read, false, true)
csrr t2, mhpmcounter3

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s9, 0x123456789abcdef0
	csrrw t6, mhpmcounter3, s9
	csrr t6, mhpmcounter3
	beq t6, s9, pass_label_2
	li t1, failed_addr
	ld t5, 0(t1)
	jr t5
pass_label_2:
	csrrwi s5, mhpmcounter3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmcounter3, write, false, true)
csrrw t2, mhpmcounter3, t2

SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE)
SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
csrr t2, mcounteren

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrci t6, mcounteren, 0x1
	csrr a3, mcycle
	mv s11, a3
	li a1, 0x81f9c1f9
	li s9, 0xd47d3810
	rem t3, a1, s9
	li a2, 0xe901e35f
	li s0, 0xab99254d
	mulhsu t5, a2, s0
	li s2, 0x3099fdf8
	li t2, 0x4da98f20
	li s0, 0x48beab16
	fcvt.d.l ft3, s2
	fcvt.d.wu ft4, t2
	fcvt.d.wu ft10, s0
	fnmsub.s ft1, ft3, ft4, ft10
	li t4, 0x966baea4
	li t1, 0xf9341c6b
	sub t1, t4, t1
	li t1, 0xe1ea24c7
	li s5, 0x7fd63119
	remw s4, t1, s5
	li s7, 0xd8a064e2
	addi a5, s7, 0x30
	li t4, 0xf0dfb4a8
	addi s3, t4, 0x535
	li s9, 0x815a47c8
	li a3, 0x64b2d2bf
	li a4, 0x96c8da1c
	fcvt.s.w fs1, s9
	fcvt.s.lu fa0, a3
	fcvt.s.lu fa4, a4
	fmsub.s fs7, fs1, fa0, fa4
	li s8, 0xda71144b
	li s9, 0x8d6af5a
	add t3, s8, s9
	li a3, 0x7af027bf
	li s9, 0x3e2434e6
	fcvt.s.wu fa6, a3
	fcvt.s.l fs6, s9
	fdiv.d ft4, fa6, fs6
	li s2, 0xbe6521cf
	li s7, 0xcc22af5b
	mulh a5, s2, s7
	li a7, 0x677f6cc0
	li s1, 0x6a107b78
	fcvt.d.l fa7, a7
	fcvt.s.w fs5, s1
	fmul.d fs3, fa7, fs5
	li t4, 0xaa2ca1b2
	addi a2, t4, 0x43b
	li s0, 0x2c4a369b
	li s10, 0x5dfbd3d4
	mulhsu s5, s0, s10
	li s10, 0x8c7e1352
	li s7, 0xe1fab9da
	li t2, 0xb3fa7aaa
	fcvt.d.w fs3, s10
	fcvt.d.wu ft10, s7
	fcvt.s.w fs10, t2
	fnmadd.d fa7, fs3, ft10, fs10
	li a0, 0xc69d4bdb
	li s3, 0xacab1a6e
	fcvt.d.l ft2, a0
	fcvt.s.wu fs11, s3
	fadd.s fa1, ft2, fs11
	li s6, 0xbcfbb053
	li s3, 0x5fec8992
	fcvt.s.lu fa1, s6
	fcvt.d.wu fa3, s3
	fmul.s ft1, fa1, fa3
	li a0, 0x1622bd7c
	li a2, 0x705fca19
	mulhsu s6, a0, a2
	li a7, 0xa9ec0809
	li s10, 0x82283d18
	clmulh s8, a7, s10
	li a2, 0x1ba16218
	li s10, 0xc74803e6
	mulhsu s7, a2, s10
	li s0, 0x29e821a7
	li t3, 0x855c3847
	mulhsu a0, s0, t3
	li s10, 0xd7071081
	li a6, 0x64ac5dbc
	li s5, 0x5eda92db
	fcvt.s.w fs5, s10
	fcvt.s.wu fa6, a6
	fcvt.s.lu fs11, s5
	fnmsub.d ft8, fs5, fa6, fs11
	li a0, 0x7d5c8dff
	li t3, 0xbb968a46
	remu s3, a0, t3
	li a1, 0x7923989
	addi s3, a1, 0x357
	li s1, 0x78255d6b
	li a4, 0xb21fbaf
	fcvt.s.w ft8, s1
	fcvt.s.lu fs2, a4
	fmul.s fs11, ft8, fs2
	li t5, 0x4efbc8d9
	li s6, 0xb410d93f
	sub s4, t5, s6
	li a3, 0xd92a4aa5
	li a2, 0xfbb230be
	divw s7, a3, a2
	li a2, 0x9d643c28
	li t4, 0x97dae390
	remu t3, a2, t4
	li s6, 0x94035610
	li s0, 0x64c2f2e6
	subw a5, s6, s0
	li t6, 0xa5ac06db
	li s7, 0x2b9c0151
	clmul s9, t6, s7
	li t3, 0x2b28fef3
	li a6, 0x8092b4d7
	fcvt.d.l fs11, t3
	fcvt.s.lu ft8, a6
	fdiv.s fs3, fs11, ft8
	li a3, 0x3a1890ca
	li s10, 0xfb695ffe
	fcvt.s.wu fa6, a3
	fcvt.d.l fs11, s10
	fmul.d ft8, fa6, fs11
	csrr s10, mcycle
	sub a6, s10, s11
	li s7, 0
	bne a6, s7, pass_label_3
	li s0, failed_addr
	ld s2, 0(s0)
	jr s2
pass_label_3:
	csrrwi a2, mcounteren, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
csrrw t2, mcounteren, t2

SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET)
SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
csrr t2, mcounteren

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrci t1, mcounteren, 0x4
	csrr t2, minstret
	mv t2, t2
	li a7, 0xc49872c9
	li t1, 0xfc4a4481
	mul t3, a7, t1
	li s3, 0x88534209
	li s8, 0x3c11654c
	clmulh s6, s3, s8
	li s4, 0x10b8fe25
	li s9, 0xb9b81638
	sub a0, s4, s9
	li a1, 0xa57af38
	li s10, 0x15ad9aa0
	mulh s6, a1, s10
	li a7, 0x220d672e
	li a3, 0x2b711346
	li s7, 0x2aa3300e
	fcvt.s.l ft7, a7
	fcvt.d.lu fs11, a3
	fcvt.s.wu fs5, s7
	fnmadd.s ft8, ft7, fs11, fs5
	li s9, 0xe9367edc
	li a3, 0x89c80c50
	fcvt.s.l fa7, s9
	fcvt.d.lu fs9, a3
	fmul.d fa3, fa7, fs9
	li s11, 0x3685156e
	li a6, 0x449c4ca5
	li s10, 0xc2557038
	fcvt.d.l fs0, s11
	fcvt.s.l fa2, a6
	fcvt.d.l fs1, s10
	fnmsub.s fa1, fs0, fa2, fs1
	li t3, 0x550d40e0
	li a2, 0x99a74927
	mul t6, t3, a2
	li a4, 0x8181e850
	li a7, 0xd7547083
	fcvt.d.l ft3, a4
	fcvt.d.lu fs11, a7
	fadd.s ft11, ft3, fs11
	li t3, 0x415ac403
	li s4, 0x5e3c536f
	sub t1, t3, s4
	li s7, 0x56befa3c
	li a0, 0x571ceef1
	fcvt.s.w ft2, s7
	fcvt.d.lu fs4, a0
	fdiv.d fa4, ft2, fs4
	li s6, 0x1d29658b
	li a7, 0x4a8d15db
	remu a1, s6, a7
	li s3, 0x3c356131
	li s11, 0xde0f39aa
	fcvt.d.l ft6, s3
	fcvt.d.wu fa7, s11
	fdiv.s fs0, ft6, fa7
	li s7, 0xf1a9a65b
	li s6, 0x9a9e994f
	fcvt.d.wu ft5, s7
	fcvt.s.w fs6, s6
	fadd.s fs7, ft5, fs6
	li s0, 0xc78fec48
	addi s9, s0, 0x29d
	li a4, 0xf44d7e43
	li s2, 0xb7115c05
	li s10, 0xe323ce57
	fcvt.d.w fs1, a4
	fcvt.d.lu ft5, s2
	fcvt.s.wu fa0, s10
	fmadd.d ft6, fs1, ft5, fa0
	li s5, 0x7d2186d6
	li s1, 0x22a608c2
	remu a4, s5, s1
	li a5, 0x947810db
	addi t1, a5, 0x144
	li t1, 0x8d198222
	li a1, 0xc52f4fc1
	mul s0, t1, a1
	li s9, 0x1ab1c432
	li a6, 0x521b18ac
	remw a3, s9, a6
	li s1, 0xa04ef4b
	li s11, 0x6816de09
	li s8, 0x12bccdce
	fcvt.d.w fa1, s1
	fcvt.d.wu fa4, s11
	fcvt.d.w fs3, s8
	fnmadd.s fs8, fa1, fa4, fs3
	li s8, 0x6156c4e2
	li t3, 0xddbd3592
	div s4, s8, t3
	li s10, 0xfdc1786e
	li s2, 0xc9c1fff2
	clmul t6, s10, s2
	li s10, 0x25b7501d
	li a3, 0xd418f7b2
	fcvt.d.lu ft6, s10
	fcvt.s.w fs8, a3
	fmul.d fa7, ft6, fs8
	li a4, 0x20012173
	li a7, 0x57450e68
	mulh s6, a4, a7
	li s3, 0x1d5c4828
	li s2, 0x9d7cd4f9
	rem s3, s3, s2
	li t5, 0x96605d98
	li a6, 0xc82ad58c
	sub a7, t5, a6
	li s3, 0xed192da6
	li a3, 0x60c73497
	fcvt.s.w fa4, s3
	fcvt.s.l ft5, a3
	fdiv.d fs1, fa4, ft5
	li t1, 0x139f7113
	li a5, 0x921ebce9
	fcvt.s.l fs5, t1
	fcvt.s.wu ft3, a5
	fmul.s fs0, fs5, ft3
	li a1, 0x8cdece78
	li a2, 0x39455356
	clmulh a5, a1, a2
	li t1, 0x90e32e85
	li s11, 0x14ed204c
	li t3, 0xf3c668b4
	fcvt.s.lu fa7, t1
	fcvt.d.lu fa5, s11
	fcvt.d.wu ft6, t3
	fmsub.s ft6, fa7, fa5, ft6
	li t5, 0x44480033
	li s2, 0x5d698c8e
	fcvt.s.lu fs7, t5
	fcvt.d.l ft8, s2
	fadd.s fa1, fs7, ft8
	csrr a7, minstret
	mv a2, a7
	sub s3, a2, t2
	li t4, 0
	bne s3, t4, pass_label_4
	li a6, failed_addr
	ld a4, 0(a6)
	jr a4
pass_label_4:
	csrrwi s1, mcounteren, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
csrrw t2, mcounteren, t2

SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS)
SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS:
	li sp, tp_csr_storage
	;#csr_rw(mcountinhibit, read, false, true)
csrr t2, mcountinhibit

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrsi s1, mcountinhibit, 0x1
	# Settling period for in-flight instructions, should help for OoO processors
	li s9, 0xa5319f4a
	li t6, 0xe09edd5d
	mulw t1, s9, t6
	li s10, 0x5e6279de
	li a7, 0x28d2e091
	fcvt.s.w ft11, s10
	fcvt.s.w fs6, a7
	fadd.s fs10, ft11, fs6
	li t1, 0x82fa4d7d
	addi s1, t1, 0x65b
	li a2, 0xc41a66dc
	li a0, 0xcadff91b
	li t4, 0xe20cea4d
	fcvt.s.w fa2, a2
	fcvt.d.w fs4, a0
	fcvt.s.lu ft10, t4
	fmsub.d fa0, fa2, fs4, ft10
	li s8, 0x342f22bd
	li s9, 0x4fd24209
	li a2, 0x4c78c7ae
	fcvt.s.wu fa4, s8
	fcvt.d.w fs6, s9
	fcvt.s.wu fs5, a2
	fnmadd.s fa3, fa4, fs6, fs5
	li t2, 0xb14b69df
	addi a4, t2, 0x82
	li t6, 0x4cb05ec4
	li a2, 0xd9577b6e
	clmulh s10, t6, a2
	li s11, 0x8d64b3b0
	li s6, 0x5f221dff
	li s8, 0x2a4926f3
	fcvt.d.wu fa7, s11
	fcvt.d.lu fa5, s6
	fcvt.s.w fa4, s8
	fnmsub.s ft10, fa7, fa5, fa4
	csrr a2, mcycle
	# Main filler period
	li t2, 0xb38742b0
	li a0, 0xb386d25f
	div a5, t2, a0
	li s6, 0xbc85e5e1
	li t1, 0x76fbb6f0
	li s1, 0x9836404f
	fcvt.s.w ft7, s6
	fcvt.d.lu ft9, t1
	fcvt.s.l ft1, s1
	fnmsub.s fa6, ft7, ft9, ft1
	li a0, 0x15c0cdd8
	li t2, 0xdb34fa90
	div a0, a0, t2
	li t2, 0x1f8ce97d
	li a0, 0xe587dd24
	div s10, t2, a0
	li s4, 0x9b29b54e
	li t6, 0xf5c7b9ad
	mulw s1, s4, t6
	li a5, 0x83924f08
	li a4, 0x923c4e60
	rem a5, a5, a4
	li s1, 0x60900775
	li t5, 0x2d206add
	li a5, 0x27e125a7
	fcvt.s.l fs0, s1
	fcvt.d.wu ft11, t5
	fcvt.s.w fs5, a5
	fmadd.d fa5, fs0, ft11, fs5
	li t2, 0x40270549
	li s5, 0x6d3fad4f
	li s11, 0x37b5dbaf
	fcvt.d.l fs4, t2
	fcvt.d.wu ft2, s5
	fcvt.s.wu ft7, s11
	fnmadd.s ft8, fs4, ft2, ft7
	li a4, 0xf112cfd3
	li t1, 0x91cbe389
	li s6, 0xb8378d85
	fcvt.d.l fs9, a4
	fcvt.d.l ft2, t1
	fcvt.d.wu ft9, s6
	fmadd.d ft10, fs9, ft2, ft9
	li t1, 0xc1fbe94f
	li a4, 0xc842c19d
	divw t1, t1, a4
	lui a3, 0x1e1
	li s1, 0xd589a5b
	li a3, 0x7eba0355
	fcvt.s.l fs3, s1
	fcvt.d.wu ft11, a3
	fadd.s ft11, fs3, ft11
	li s6, 0xae7fba14
	li s9, 0x64c371d2
	add t1, s6, s9
	li s0, 0xb7975b2b
	li t5, 0xa310a84c
	divw s0, s0, t5
	li s6, 0x59155102
	li s7, 0x624c4b65
	li t1, 0x83dab268
	fcvt.d.w ft8, s6
	fcvt.s.l ft11, s7
	fcvt.d.w fa0, t1
	fmadd.s ft9, ft8, ft11, fa0
	li a0, 0xd87064ff
	li a7, 0x2a30363e
	remw a7, a0, a7
	li s2, 0x8b5230f0
	li s6, 0xbada794a
	fcvt.d.wu ft3, s2
	fcvt.s.l fs6, s6
	fdiv.s ft3, ft3, fs6
	li t6, 0xfe8b2b7c
	li s2, 0xa6be26f
	li s1, 0x863043da
	fcvt.s.l fa0, t6
	fcvt.s.l fs9, s2
	fcvt.s.wu fs5, s1
	fnmadd.d fs10, fa0, fs9, fs5
	li t4, 0xfb314da3
	li t5, 0x17249262
	mulhsu t2, t4, t5
	li t1, 0xced566a2
	li s10, 0x4153bbca
	mulhu a0, t1, s10
	li t6, 0xa0e20048
	li a6, 0x19de2df0
	remw a4, t6, a6
	li t4, 0x447c99a0
	li s8, 0xbca5f87e
	fcvt.d.w ft11, t4
	fcvt.s.lu ft7, s8
	fadd.s ft1, ft11, ft7
	li t3, 0xe9b161f7
	li s6, 0x156eab7c
	fcvt.s.wu ft6, t3
	fcvt.s.w fs6, s6
	fsub.d fa5, ft6, fs6
	li a1, 0xf59dc88a
	li a3, 0xf98ddc87
	mulhsu t6, a1, a3
	li a1, 0x239dc59c
	li s9, 0xf81f5c83
	li t6, 0xc69806ed
	fcvt.d.lu fs1, a1
	fcvt.d.wu fs0, s9
	fcvt.s.w fs9, t6
	fmsub.d ft11, fs1, fs0, fs9
	li s2, 0x9ded5500
	li s6, 0xd788c7cf
	clmul t5, s2, s6
	li s7, 0xf78047d2
	li t3, 0xa8e33c97
	fcvt.d.wu fs11, s7
	fcvt.s.l fa3, t3
	fmul.s ft11, fs11, fa3
	li s10, 0xafc6ee72
	li t2, 0xb34dec77
	rem a5, s10, t2
	li s5, 0x14fe7ebf
	li t2, 0x71ef5e7d
	mulhsu s2, s5, t2
	li a5, 0xd9d93211
	li s8, 0xec9f6fc2
	addw t6, a5, s8
	auipc s7, 0x61e
	li s10, 0x3db18a2b
	li s7, 0xf8a10e73
	fcvt.d.lu ft5, s10
	fcvt.d.l fa2, s7
	fdiv.s ft2, ft5, fa2
	csrr a5, mcycle
	beq a5, a2, pass_label_5
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
pass_label_5:
	csrrwi s5, mcountinhibit, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcountinhibit, write, false, true)
csrrw t2, mcountinhibit, t2

SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES)
SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES:
	li sp, tp_csr_storage
	;#csr_rw(mcountinhibit, read, false, true)
csrr t2, mcountinhibit

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrsi t2, mcountinhibit, 0x1
	csrrci s8, mcountinhibit, 0x1
	csrr s0, mcycle
	mv s9, s0
	li a2, 0xc7495dfc
	li s1, 0x235a63d8
	rem s2, a2, s1
	li s2, 0xe4d4ad89
	li a3, 0xb73b6065
	clmulh s11, s2, a3
	li a1, 0x70d07ebd
	li s3, 0x5c706109
	mulhsu t1, a1, s3
	li s8, 0x4f4c8db9
	li s11, 0xc05a32a6
	li a7, 0x6697f221
	fcvt.s.w fs8, s8
	fcvt.d.wu fs1, s11
	fcvt.s.wu fs7, a7
	fmadd.d ft10, fs8, fs1, fs7
	li s6, 0x3d90fd2a
	li s8, 0x1da77d94
	fcvt.s.l fa6, s6
	fcvt.s.lu fa4, s8
	fmul.s fa2, fa6, fa4
	li t1, 0xb7d9365f
	li t3, 0x34c8d03d
	li t4, 0xb7ee1a9d
	fcvt.s.wu fs11, t1
	fcvt.d.lu ft8, t3
	fcvt.d.wu fs0, t4
	fmadd.d fa0, fs11, ft8, fs0
	li a4, 0xae7024f0
	li a7, 0x4e34fa7a
	divw s6, a4, a7
	li s7, 0x1177461b
	li s1, 0x1b3c137e
	fcvt.d.lu fs4, s7
	fcvt.d.l fs8, s1
	fsub.d fa6, fs4, fs8
	li t1, 0x3a4548f5
	li a7, 0x65a24e8d
	mulw s8, t1, a7
	li a5, 0x524550a7
	li a3, 0x7e0b6726
	clmul s6, a5, a3
	li s11, 0xedb924db
	li s1, 0x1997e8f6
	mulhsu t6, s11, s1
	li s11, 0xf48fe7d6
	li a7, 0x2fcf9619
	mulw t4, s11, a7
	li t6, 0xb83da53
	li s4, 0xe2af644
	mulhu t4, t6, s4
	li s2, 0xcf39efda
	addi t4, s2, 0x6d3
	li s11, 0x98f6a647
	li t4, 0x5f5e71e
	li s5, 0xe38d62aa
	fcvt.d.l fa3, s11
	fcvt.d.l ft6, t4
	fcvt.s.wu ft4, s5
	fmadd.d ft7, fa3, ft6, ft4
	li a6, 0xc09f0261
	li a1, 0x377054d2
	remw a3, a6, a1
	li s10, 0xaeecb547
	li t5, 0x8e2fad6
	fcvt.s.lu fs11, s10
	fcvt.s.w ft3, t5
	fmul.d fs11, fs11, ft3
	li s2, 0x7e94f5ae
	li s4, 0xb4345625
	mulhu t4, s2, s4
	li s6, 0x874e2642
	li a2, 0xd09dfa6f
	rem s1, s6, a2
	li t2, 0xb9559253
	li a4, 0xf6d0ac20
	mul s2, t2, a4
	auipc s0, 0x504
	li s10, 0xe31e1295
	li a4, 0x9cf94bc4
	divuw t1, s10, a4
	li a3, 0x7139bed4
	li a4, 0x57aa5ae4
	li t4, 0xa9b576da
	fcvt.s.l ft1, a3
	fcvt.d.wu fa6, a4
	fcvt.s.w fa4, t4
	fnmsub.s fs6, ft1, fa6, fa4
	li t3, 0xd67e8ed2
	li s5, 0x464a8299
	li t5, 0x1e39a54f
	fcvt.d.w fa1, t3
	fcvt.d.w ft9, s5
	fcvt.d.l ft5, t5
	fnmadd.d fs6, fa1, ft9, ft5
	li a2, 0x9cfd7180
	li s3, 0xb150a790
	li a1, 0x2c354a1e
	fcvt.d.l fs7, a2
	fcvt.s.w ft1, s3
	fcvt.d.w fs3, a1
	fnmsub.s fs1, fs7, ft1, fs3
	li s2, 0x18610ca2
	li a5, 0x38d94322
	divu s3, s2, a5
	li s1, 0x66531db2
	li a7, 0x3bb42da0
	fcvt.d.l fs4, s1
	fcvt.s.w fs7, a7
	fsub.s ft11, fs4, fs7
	li s5, 0x7eb9d1cb
	li a2, 0x73270136
	mulw s4, s5, a2
	li t1, 0x60bdadd1
	li a3, 0xc02823ef
	li a5, 0x2b2935f5
	fcvt.s.l ft1, t1
	fcvt.d.w fs8, a3
	fcvt.d.lu ft11, a5
	fnmsub.d fa6, ft1, fs8, ft11
	li s2, 0xf9333f77
	li t6, 0x3b51d378
	li a6, 0x3c593e82
	fcvt.s.wu ft9, s2
	fcvt.s.l ft1, t6
	fcvt.d.l ft4, a6
	fmadd.s fs11, ft9, ft1, ft4
	li a2, 0xd1f559b2
	li a6, 0x489cbb02
	divuw t1, a2, a6
	li a2, 0x766b5e3f
	li s5, 0x8c09786e
	div a3, a2, s5
	csrr a0, mcycle
	mv t3, a0
	sub a0, t3, s9
	li s0, 0
	bne a0, s0, pass_label_6
	li a4, failed_addr
	ld a7, 0(a4)
	jr a7
pass_label_6:
	csrrwi a5, mcountinhibit, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcountinhibit, write, false, true)
csrrw t2, mcountinhibit, t2

SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS)
SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS:
	li sp, tp_csr_storage
	;#csr_rw(mcountinhibit, read, false, true)
csrr t2, mcountinhibit

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrsi a5, mcountinhibit, 0x4
	# Settling period for in-flight instructions should help for OoO processors
	li t3, 0x935ac8dc
	li a5, 0xda64b873
	li t4, 0xfe145174
	fcvt.d.wu ft1, t3
	fcvt.s.w ft10, a5
	fcvt.s.wu ft4, t4
	fmadd.s ft10, ft1, ft10, ft4
	li s0, 0x407dbb97
	li t1, 0xc8b0da2b
	remw s5, s0, t1
	li a7, 0x3ed03c4c
	li s9, 0xb3f25140
	sub s2, a7, s9
	li s2, 0x92e38015
	li s7, 0xbf246427
	li t1, 0x56b1b135
	fcvt.s.lu fs10, s2
	fcvt.d.wu ft1, s7
	fcvt.s.wu fs2, t1
	fmsub.d ft9, fs10, ft1, fs2
	li s6, 0x5c905c25
	li s11, 0xfd983df8
	clmulh t3, s6, s11
	li t3, 0xf13b761c
	li a1, 0xcc025367
	div s0, t3, a1
	li t5, 0xa4bc797a
	li a3, 0x5ec127b6
	li s5, 0x670f2137
	fcvt.d.lu ft7, t5
	fcvt.s.l ft2, a3
	fcvt.s.w fa0, s5
	fnmadd.s fs2, ft7, ft2, fa0
	auipc s8, 0x5c
	csrr t4, minstret
	# Main filler period
	li a4, 0x4eb0ff77
	li a1, 0x76ee29ad
	remuw a5, a4, a1
	li t1, 0x9927a900
	li t6, 0xfad13808
	li t5, 0x5727d743
	fcvt.d.wu fa5, t1
	fcvt.d.l fs10, t6
	fcvt.s.w fs5, t5
	fmsub.s ft1, fa5, fs10, fs5
	li a7, 0x88399113
	li t3, 0x81ee476f
	remw s7, a7, t3
	li s7, 0x2af4c785
	li s8, 0x77148a8
	li s4, 0x25fa97e0
	fcvt.s.wu ft9, s7
	fcvt.d.lu fa5, s8
	fcvt.s.w fs8, s4
	fmsub.d fs8, ft9, fa5, fs8
	li a3, 0x400839ac
	li s8, 0xafef1ac4
	remuw a4, a3, s8
	li a0, 0x389c1cd2
	li a2, 0x90120ea4
	remw s10, a0, a2
	li s6, 0x2226ff46
	li s9, 0xe824748a
	clmulh s5, s6, s9
	li s9, 0x1cddee9f
	li t2, 0x2f41f7d0
	rem s2, s9, t2
	li t6, 0xc42dddc5
	li s0, 0x693e6d60
	remw a0, t6, s0
	li a0, 0xf06f217d
	li s11, 0xba5b99d0
	li s8, 0x9ea4f0be
	fcvt.s.w ft10, a0
	fcvt.d.l fs2, s11
	fcvt.s.lu fa1, s8
	fmadd.s fa5, ft10, fs2, fa1
	li s1, 0xcd3aeeb
	li a1, 0xcfcd6905
	fcvt.s.wu fs7, s1
	fcvt.d.l ft2, a1
	fdiv.s ft2, fs7, ft2
	li s3, 0x1966a3be
	li t6, 0xfa8545a0
	add s7, s3, t6
	li a0, 0x8bb3835e
	li s9, 0xae6ac89d
	li s6, 0x4406d482
	fcvt.d.wu ft5, a0
	fcvt.s.l fs5, s9
	fcvt.d.l fs1, s6
	fmadd.s fs2, ft5, fs5, fs1
	li s1, 0xb6f3d08d
	li a0, 0x1b604339
	subw s2, s1, a0
	li s6, 0x344fefe4
	li s2, 0x42fe9cac
	divu t5, s6, s2
	li a2, 0x11180cdc
	li s6, 0xa1d3ff85
	remw s10, a2, s6
	li s4, 0x923b3bed
	li s7, 0x86c0ac01
	remw s10, s4, s7
	li a5, 0xa41aafaf
	li s5, 0x14185d09
	remw s7, a5, s5
	li s4, 0xdaeb22a8
	li a7, 0x12a3c54e
	li s9, 0xcb517e6d
	fcvt.d.lu fa2, s4
	fcvt.s.l ft10, a7
	fcvt.s.lu ft4, s9
	fnmadd.s fs6, fa2, ft10, ft4
	auipc s7, 0x3a0
	li a2, 0xd9c2b0d2
	li t5, 0x37a6437e
	rem s1, a2, t5
	li a3, 0xa4ab4eef
	li s9, 0xd69871bf
	fcvt.s.l fa2, a3
	fcvt.s.w fs10, s9
	fsub.d fa3, fa2, fs10
	li t2, 0x2c61cbef
	li s6, 0x82f01b5b
	li t5, 0xdca12852
	fcvt.s.w fa2, t2
	fcvt.s.l fs5, s6
	fcvt.s.wu fs3, t5
	fnmsub.d fa7, fa2, fs5, fs3
	li a7, 0x6e9d707a
	li s3, 0x597ebc4
	fcvt.s.l ft9, a7
	fcvt.d.w fs6, s3
	fadd.d fa7, ft9, fs6
	li s1, 0x9721c6e8
	li a0, 0x5e3c1d99
	fcvt.s.wu fs3, s1
	fcvt.d.w fa5, a0
	fdiv.d ft10, fs3, fa5
	lui s9, 0x763
	li s8, 0xe66743df
	li a7, 0xd8fe433b
	li a5, 0x7c969923
	fcvt.d.w fa7, s8
	fcvt.s.l fs7, a7
	fcvt.d.l fa4, a5
	fnmsub.s ft3, fa7, fs7, fa4
	li a5, 0xb5d4ce48
	li a7, 0xceb52fc6
	addw s9, a5, a7
	li s4, 0x48a3ff79
	li a7, 0x384da685
	div s2, s4, a7
	li t1, 0xe42b062a
	li a0, 0x334c76bb
	addw s4, t1, a0
	li t5, 0x991ba3d1
	li s7, 0x7e5d9340
	li s0, 0xdd90f85e
	fcvt.s.w ft11, t5
	fcvt.d.l ft4, s7
	fcvt.s.lu fa0, s0
	fmadd.s ft1, ft11, ft4, fa0
	li t5, 0xe61bacee
	li s5, 0xe48e1b50
	fcvt.s.w fs2, t5
	fcvt.s.w fs9, s5
	fadd.s fs11, fs2, fs9
	csrr a3, minstret
	beq a3, t4, pass_label_7
	li s10, failed_addr
	ld s9, 0(s10)
	jr s9
pass_label_7:
	csrrwi s4, mcountinhibit, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcountinhibit, write, false, true)
csrrw t2, mcountinhibit, t2

SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES)
SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES:
	li sp, tp_csr_storage
	;#csr_rw(mcountinhibit, read, false, true)
csrr t2, mcountinhibit

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrsi s3, mcountinhibit, 0x4
	csrrci a4, mcountinhibit, 0x4
	csrr s9, minstret
	mv t1, s9
	li a6, 0xa522eeb6
	li t3, 0xc2eba583
	fcvt.d.l fs1, a6
	fcvt.s.lu fs2, t3
	fsub.s fa0, fs1, fs2
	li s10, 0xcfdc3a84
	li a1, 0xfd26770d
	addw s7, s10, a1
	li s10, 0xe439e770
	li a0, 0x36930455
	li s8, 0x50bbd9b3
	fcvt.d.lu ft3, s10
	fcvt.d.lu fs9, a0
	fcvt.d.lu fs6, s8
	fmsub.s fa5, ft3, fs9, fs6
	li s9, 0x9f5f48b7
	li a6, 0x7e652245
	fcvt.s.l ft3, s9
	fcvt.s.lu fs2, a6
	fsub.s ft11, ft3, fs2
	li a4, 0x7afbf35b
	li s8, 0x547d9b73
	fcvt.d.wu fs10, a4
	fcvt.s.l ft1, s8
	fdiv.s ft9, fs10, ft1
	li s5, 0x1e4fed4f
	li s3, 0x20bf8364
	divu a4, s5, s3
	li a3, 0xe3231fec
	li a5, 0x23deb6ab
	li s1, 0xb2c6fbd3
	fcvt.d.l ft1, a3
	fcvt.s.lu ft8, a5
	fcvt.d.l ft7, s1
	fmsub.d fs6, ft1, ft8, ft7
	li s6, 0x41a7fb62
	li s9, 0x399b6c9c
	rem s9, s6, s9
	li t3, 0x16890d94
	li s7, 0xa2a0929e
	rem t6, t3, s7
	li s4, 0x89f0784b
	li s2, 0xd43b1dd8
	fcvt.d.lu ft1, s4
	fcvt.d.w fs10, s2
	fsub.d fs4, ft1, fs10
	li a4, 0xb3f2b9a5
	li s5, 0xcced510
	remuw a7, a4, s5
	li t6, 0x9025869a
	li t4, 0x2c0dacc6
	rem a6, t6, t4
	li s3, 0xaf4cdfb8
	li t6, 0x1dbb2fb4
	fcvt.s.w ft3, s3
	fcvt.s.lu ft7, t6
	fadd.s fa5, ft3, ft7
	li s5, 0x39eb63b3
	li t2, 0x9031d498
	mulh a4, s5, t2
	li s0, 0x330c29c3
	li t6, 0x80c5b532
	fcvt.d.wu fs0, s0
	fcvt.d.lu fs7, t6
	fadd.s ft1, fs0, fs7
	li t4, 0x914c95d4
	li a1, 0xa8ef8123
	fcvt.s.lu ft10, t4
	fcvt.s.l ft2, a1
	fadd.d ft7, ft10, ft2
	li s4, 0xe2608a65
	li a4, 0x4ed01ee2
	fcvt.d.l fs10, s4
	fcvt.s.lu fs1, a4
	fsub.s fa7, fs10, fs1
	li t3, 0x6c19878a
	li a7, 0x53e0472f
	fcvt.d.lu fa0, t3
	fcvt.s.lu ft3, a7
	fsub.d ft11, fa0, ft3
	li s11, 0x115a720
	li a0, 0xc6170c3a
	mulhu s0, s11, a0
	li s0, 0x5221a12
	li t5, 0xd25c8065
	clmul a7, s0, t5
	li s0, 0x4e287103
	li t5, 0xd27c3a5e
	divw a2, s0, t5
	li s8, 0x9d892a70
	li s1, 0x38636234
	fcvt.d.w fa5, s8
	fcvt.s.l fa2, s1
	fsub.s fs4, fa5, fa2
	li t3, 0x15a61489
	li t6, 0xbe389162
	divw a7, t3, t6
	li s3, 0x3979828a
	li a2, 0x47b963b7
	li t3, 0xae41bc7b
	fcvt.s.w fs9, s3
	fcvt.d.lu ft3, a2
	fcvt.s.wu fs0, t3
	fnmsub.s fa2, fs9, ft3, fs0
	li s3, 0xa02ac243
	li a6, 0xfc286e9a
	li t6, 0xdc79184b
	fcvt.s.w fs3, s3
	fcvt.s.w fa1, a6
	fcvt.s.l ft7, t6
	fnmadd.d ft7, fs3, fa1, ft7
	li s4, 0x57508c3c
	li s7, 0x44e20d10
	li s6, 0x99e43e97
	fcvt.d.wu fs9, s4
	fcvt.s.l ft5, s7
	fcvt.d.w fs4, s6
	fmsub.s ft8, fs9, ft5, fs4
	li t5, 0xb80100cd
	li s6, 0x84b7d15e
	divu a0, t5, s6
	li a1, 0x61184464
	li t5, 0x5eb8168
	addw s7, a1, t5
	li s7, 0x1f24df06
	li a3, 0x54700726
	fcvt.d.l ft11, s7
	fcvt.d.lu ft10, a3
	fdiv.s ft2, ft11, ft10
	li a7, 0x58d683c3
	li s1, 0x23b26ad4
	remw s0, a7, s1
	li s0, 0x1d07d20f
	li a2, 0x4035d97f
	li s4, 0xe60b4840
	fcvt.d.w ft5, s0
	fcvt.d.wu fa1, a2
	fcvt.d.wu fs11, s4
	fmadd.s fs3, ft5, fa1, fs11
	li a3, 0xc51d7959
	li a1, 0x24adef80
	div s5, a3, a1
	csrr a5, minstret
	sub a6, a5, t1
	li a1, 0
	bne a6, a1, pass_label_8
	li t2, failed_addr
	ld s0, 0(t2)
	jr s0
pass_label_8:
	csrrwi s11, mcountinhibit, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcountinhibit, write, false, true)
csrrw t2, mcountinhibit, t2

SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW)
SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW:
	li sp, tp_csr_storage
	;#csr_rw(mhpmevent3, read, false, true)
csrr t2, mhpmevent3

	sd t2, 0(sp)
	;#csr_rw(mip, read, false, true)
csrr t2, mip

	sd t2, 0x8(sp)
	li sp, SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s7, 0
	li s11, 0x2000
	li t3, 0x8000000000000000
	# Clear mip.LCOFIP before test
	li s5, 0x2000
	csrrc a6, mip, s5
	# Write all ones except OF bit to mhpmevent3
	# All ones except OF bit
	li a6, 0x7fffffffffffffff
	csrrw s1, mhpmevent3, a6
	# Read back and check OF bit is clear
	csrr t5, mhpmevent3
	and t1, t5, t3
	beq t1, s7, pass_label_9
	li s10, failed_addr
	ld a4, 0(s10)
	jr a4
pass_label_9:
	# Check mip.LCOFIP is clear
	csrr s8, mip
	and s10, s8, s11
	beq s10, s7, pass_label_10
	li a3, failed_addr
	ld t4, 0(a3)
	jr t4
pass_label_10:
	# Write zero to mhpmevent3
	csrrwi t4, mhpmevent3, 0
	# Read back and check OF bit is still clear
	csrr s2, mhpmevent3
	and a1, s2, t3
	beq a1, s7, pass_label_11
	li s4, failed_addr
	ld s5, 0(s4)
	jr s5
pass_label_11:
	# Check mip.LCOFIP is still clear
	csrr a6, mip
	and s4, a6, s11
	beq s4, s7, pass_label_12
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
pass_label_12:
	# Cleanup: ensure mhpmevent3 is cleared
	csrrwi s11, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmevent3, write, false, true)
csrrw t2, mhpmevent3, t2

	ld t2, 0x8(sp)
	;#csr_rw(mip, write, false, true)
csrrw t2, mip, t2

SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW)
SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW:
	li sp, tp_csr_storage
	;#csr_rw(mhpmcounter3, read, false, true)
csrr t2, mhpmcounter3

	sd t2, 0(sp)
	;#csr_rw(mip, read, false, true)
csrr t2, mip

	sd t2, 0x8(sp)
	li sp, SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s4, 0
	li t5, 0x2000
	li s6, 0x8000000000000000
	# Clear mip.LCOFIP before test
	li a7, 0x2000
	csrrc s8, mip, a7
	# Write all ones to mhpmcounter3
	li t6, 0xffffffffffffffff
	csrrw s8, mhpmcounter3, t6
	# Check if counter is implemented (read back should be non-zero if implemented)
	csrr a2, mhpmcounter3
	bne a2, s4, pass_label_13
	li s7, failed_addr
	ld s10, 0(s7)
	jr s10
pass_label_13:
	# If implemented, check OF bit in mhpmevent3 is clear
	csrr s5, mhpmevent3
	and t6, s5, s6
	beq t6, s4, pass_label_14
	li s1, failed_addr
	ld s7, 0(s1)
	jr s7
pass_label_14:
	# Check mip.LCOFIP is clear
	csrr a7, mip
	and a6, a7, t5
	beq a6, s4, pass_label_15
	li a1, failed_addr
	ld a3, 0(a1)
	jr a3
pass_label_15:
	# Write zero to mhpmcounter3
	csrrwi t1, mhpmcounter3, 0
	# Read back and check OF bit in mhpmevent3 is still clear
	csrr a2, mhpmevent3
	and s5, a2, s6
	beq s5, s4, pass_label_16
	li a4, failed_addr
	ld t2, 0(a4)
	jr t2
pass_label_16:
	# Check mip.LCOFIP is still clear
	csrr a2, mip
	and a5, a2, t5
	beq a5, s4, pass_label_17
	li s11, failed_addr
	ld a1, 0(s11)
	jr a1
pass_label_17:
	# Cleanup: clear mhpmcounter3 and mhpmevent3
	csrrwi s11, mhpmcounter3, 0
	csrrwi a7, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmcounter3, write, false, true)
csrrw t2, mhpmcounter3, t2

	ld t2, 0x8(sp)
	;#csr_rw(mip, write, false, true)
csrrw t2, mip, t2

SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW)
SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW:
	li sp, tp_csr_storage
	;#csr_rw(mhpmcounter3, read, false, true)
csrr t2, mhpmcounter3

	sd t2, 0(sp)
	;#csr_rw(mip, read, false, true)
csrr t2, mip

	sd t2, 0x8(sp)
	li sp, SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s11, 0
	li s6, 0x2000
	li a5, 0x8000000000000000
	# Clear mip.LCOFIP before test
	li a0, 0x2000
	csrrc a1, mip, a0
	# Write zero to mhpmcounter3 first
	csrrwi s10, mhpmcounter3, 0
	# Check if counter is implemented (read back should be zero if implemented but we just wrote zero)
	# Actually, we can't check implementation this way since we wrote zero
	# Let's write a known non-zero value first to check implementation
	csrrwi s1, mhpmcounter3, 0x1
	csrr s2, mhpmcounter3
	bne s2, s11, pass_label_18
	li t1, failed_addr
	ld t4, 0(t1)
	jr t4
pass_label_18:
	# Write zero again to start the test sequence
	csrrwi s9, mhpmcounter3, 0
	# Check OF bit in mhpmevent3 is clear
	csrr t1, mhpmevent3
	and t1, t1, a5
	beq t1, s11, pass_label_19
	li s3, failed_addr
	ld s1, 0(s3)
	jr s1
pass_label_19:
	# Check mip.LCOFIP is clear
	csrr s1, mip
	and t5, s1, s6
	beq t5, s11, pass_label_20
	li t2, failed_addr
	ld s9, 0(t2)
	jr s9
pass_label_20:
	# Write all ones to mhpmcounter3
	li s5, 0xffffffffffffffff
	csrrw s10, mhpmcounter3, s5
	# Read back and check OF bit in mhpmevent3 is still clear
	csrr a7, mhpmevent3
	and s10, a7, a5
	beq s10, s11, pass_label_21
	li s4, failed_addr
	ld a1, 0(s4)
	jr a1
pass_label_21:
	# Check mip.LCOFIP is still clear
	csrr s10, mip
	and t3, s10, s6
	beq t3, s11, pass_label_22
	li a3, failed_addr
	ld t3, 0(a3)
	jr t3
pass_label_22:
	# Cleanup: clear mhpmcounter3 and mhpmevent3
	csrrwi a5, mhpmcounter3, 0
	csrrwi a7, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmcounter3, write, false, true)
csrrw t2, mhpmcounter3, t2

	ld t2, 0x8(sp)
	;#csr_rw(mip, write, false, true)
csrrw t2, mip, t2

SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED)
SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
csrr t2, mcounteren

	sd t2, 0(sp)
	;#csr_rw(mhpmevent3, read, false, true)
csrr t2, mhpmevent3

	sd t2, 0x8(sp)
	;#csr_rw(scounteren, read, false, true)
csrr t2, scounteren

	sd t2, 0x10(sp)
	li sp, SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a1, 0
	li a2, 0x8
	li s4, 0x8000000000000000
	# Counter 3 bit position in scountovf (bit 3)
	# Enable counter 3 in both mcounteren and scounteren
	csrrsi s11, mcounteren, 0x8
	csrrsi t1, scounteren, 0x8
	# Clear OF bit in mhpmevent3 first
	csrrwi s10, mhpmevent3, 0
	# Read scountovf and verify bit 3 is clear
	csrr a5, scountovf
	and s8, a5, a2
	beq s8, a1, pass_label_23
	li a7, failed_addr
	ld s0, 0(a7)
	jr s0
pass_label_23:
	# Set OF bit in mhpmevent3
	li s11, 0x8000000000000000
	csrrw s11, mhpmevent3, s11
	# Read mhpmevent3 to verify OF bit is set
	csrr s2, mhpmevent3
	and s11, s2, s4
	beq s11, s4, pass_label_24
	li s10, failed_addr
	ld s4, 0(s10)
	jr s4
pass_label_24:
	# Read scountovf and verify bit 3 reflects the OF bit
	csrr a7, scountovf
	and s2, a7, a2
	beq s2, a2, pass_label_25
	li a1, failed_addr
	ld a0, 0(a1)
	jr a0
pass_label_25:
	# Cleanup: clear mhpmevent3 and restore counteren registers
	csrrwi s6, mhpmevent3, 0
	csrrwi t6, mcounteren, 0
	csrrwi s6, scounteren, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
csrrw t2, mcounteren, t2

	ld t2, 0x8(sp)
	;#csr_rw(mhpmevent3, write, false, true)
csrrw t2, mhpmevent3, t2

	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
csrrw t2, scounteren, t2

SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP)
SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP:
	li sp, tp_csr_storage
	;#csr_rw(mhpmevent3, read, false, true)
csrr t2, mhpmevent3

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s4, 0
	li s1, 0x8000000000000000
	# Clear mhpmevent3 initially
	csrrwi s10, mhpmevent3, 0
	# Verify OF bit (bit 63) is writable in mhpmevent3
	csrrw t4, mhpmevent3, s1
	csrr t2, mhpmevent3
	and s5, t2, s1
	beq s5, s1, pass_label_26
	li a0, failed_addr
	ld t5, 0(a0)
	jr t5
pass_label_26:
	# Clear OF bit and verify it can be cleared
	csrrw a2, mhpmevent3, s4
	csrr s5, mhpmevent3
	and t3, s5, s1
	beq t3, s4, pass_label_27
	li s0, failed_addr
	ld t4, 0(s0)
	jr t4
pass_label_27:
	# Cleanup
	csrrwi s2, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmevent3, write, false, true)
csrrw t2, mhpmevent3, t2

SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP)
SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP:
	li sp, tp_csr_storage
	;#csr_rw(mhpmevent3, read, false, true)
csrr t2, mhpmevent3

	sd t2, 0(sp)
	;#csr_rw(mip, read, false, true)
csrr t2, mip

	sd t2, 0x8(sp)
	li sp, SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t5, 0
	li t1, 0x2000
	li t2, 0x8000000000000000
	# Clear mip.LCOFIP before test
	li a7, 0x2000
	csrrc s7, mip, a7
	# Clear mhpmevent3 initially
	csrrwi a6, mhpmevent3, 0
	# Set OF bit in mhpmevent3 via software write
	csrrw s8, mhpmevent3, t2
	# Verify OF bit is set
	csrr a3, mhpmevent3
	and s7, a3, t2
	beq s7, t2, pass_label_28
	li a2, failed_addr
	ld a7, 0(a2)
	jr a7
pass_label_28:
	# Verify mip.LCOFIP is NOT set (software write to OF should not trigger interrupt)
	csrr a2, mip
	and s6, a2, t1
	beq s6, t5, pass_label_29
	li t5, failed_addr
	ld s8, 0(t5)
	jr s8
pass_label_29:
	# Cleanup
	csrrwi a7, mhpmevent3, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmevent3, write, false, true)
csrrw t2, mhpmevent3, t2

	ld t2, 0x8(sp)
	;#csr_rw(mip, write, false, true)
csrrw t2, mip, t2

SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED)
SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED:
	li sp, tp_csr_storage
	;#csr_rw(mhpmevent11, read, false, true)
csrr t2, mhpmevent11

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Write all ones to mhpmevent11
	li s4, 0xffffffffffffffff
	csrrw s7, mhpmevent11, s4
	# Read back mhpmevent11 - should be zero if unimplemented
	csrr s7, mhpmevent11
	# Verify mhpmevent11 reads as zero
	li s3, 0
	beq s7, s3, pass_label_30
	li s10, failed_addr
	ld a1, 0(s10)
	jr a1
pass_label_30:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmevent11, write, false, true)
csrrw t2, mhpmevent11, t2

SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

;#discrete_test(test=SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED)
SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED:
	li sp, tp_csr_storage
	;#csr_rw(mhpmcounter11, read, false, true)
csrr t2, mhpmcounter11

	sd t2, 0(sp)
	li sp, SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Write all ones to mhpmcounter11
	li t3, 0xffffffffffffffff
	csrrw s2, mhpmcounter11, t3
	# Read back mhpmcounter11 - should be zero if unimplemented
	csrr t5, mhpmcounter11
	# Read shadow copy hpmcounter11
	csrr s3, hpmcounter11
	# Verify both read as zero if unimplemented
	li a2, 0
	beq t5, a2, pass_label_31
	li s8, failed_addr
	ld a5, 0(s8)
	jr a5
pass_label_31:
	beq s3, a2, pass_label_32
	li s5, failed_addr
	ld a0, 0(s5)
	jr a0
pass_label_32:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mhpmcounter11, write, false, true)
csrrw t2, mhpmcounter11, t2

SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_passed:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1

test_cleanup:
	;#test_passed()
	li t0, os_passed_addr
	ld t1, 0(t0)
	jr t1
local_test_failed:
	;#test_failed()
	li t0, os_failed_addr
	ld t1, 0(t0)
	jr t1

.section .data
;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack, phys_name=SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack
.section .SID_SSCOFPMF_02A_MCOUNTINHIBIT_WARL_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack, phys_name=SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack
.section .SID_SSCOFPMF_02B_MHPMEVENT3_RESERVED_BITS_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack, phys_name=SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack
.section .SID_SSCOFPMF_02C_MHPMCOUNTER3_WRITE_STICKS_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack, phys_name=SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack
.section .SID_SSCOFPMF_03A_MCOUNTEREN_MCYCLE_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack, phys_name=SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack
.section .SID_SSCOFPMF_03B_MCOUNTEREN_MINSTRET_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack, phys_name=SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack
.section .SID_SSCOFPMF_04A_MCOUNTINHIBIT_MCYCLE_STOPS_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack, phys_name=SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack
.section .SID_SSCOFPMF_04B_MCOUNTINHIBIT_MCYCLE_RESUMES_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack, phys_name=SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack
.section .SID_SSCOFPMF_04C_MCOUNTINHIBIT_MINSTRET_STOPS_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack, phys_name=SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack
.section .SID_SSCOFPMF_04D_MCOUNTINHIBIT_MINSTRET_RESUMES_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack, phys_name=SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack
.section .SID_SSCOFPMF_09A_MHPMEVENT3_WRITES_NO_OVERFLOW_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack, phys_name=SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack
.section .SID_SSCOFPMF_09B_MHPMCOUNTER3_WRITES_NO_OVERFLOW_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack, phys_name=SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack
.section .SID_SSCOFPMF_09C_MHPMCOUNTER3_REVERSE_WRITES_NO_OVERFLOW_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack, phys_name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack
.section .SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack, phys_name=SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack
.section .SID_SSCOFPMF_06A_OVERFLOW_SETS_LCOFIP_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack, phys_name=SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack
.section .SID_SSCOFPMF_07A_OF_BIT_MASKS_LCOFIP_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack, phys_name=SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack
.section .SID_SSCOFPMF_02D_MHPMEVENT11_UNIMPLEMENTED_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack, phys_name=SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack
.section .SID_SSCOFPMF_02E_MHPMCOUNTER11_UNIMPLEMENTED_stack, "aw"

.dword 0xc001c0de
