;#test.name       zkt
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zkt
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zkt

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_ZKT_02)
SID_ZKT_02:
	li sp, SID_ZKT_02_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 0
	csrr a1, time
	csrr a3, cycle
	csrr a4, instret
	auipc a0, 0x798
	auipc s9, 0x6cd
	auipc t2, 0x76
	auipc s2, 0xbe
	auipc t4, 0xb0
	auipc t4, 0x2e6
	auipc s0, 0x6b2
	auipc s4, 0x15d
	auipc s5, 0x5e6
	auipc s5, 0x67b
	auipc t6, 0x55e
	auipc a2, 0x6d7
	auipc s8, 0x27a
	auipc a5, 0x206
	auipc s5, 0x4db
	auipc s10, 0x1b5
	auipc s8, 0x4dd
	auipc a5, 0x4c
	auipc a5, 0x4a9
	auipc s9, 0x576
	auipc t3, 0x147
	auipc s9, 0x375
	auipc s0, 0x51e
	auipc t5, 0x328
	auipc s10, 0x670
	auipc t1, 0x5cb
	auipc s6, 0x6e4
	auipc a6, 0x7f8
	auipc s5, 0x415
	auipc a5, 0x79b
	auipc a0, 0x2fc
	auipc s7, 0x45d
	auipc t1, 0x77f
	auipc s3, 0x392
	auipc t6, 0x407
	auipc t2, 0x228
	auipc s2, 0x738
	auipc s1, 0x4c
	auipc s8, 0x6fa
	auipc s0, 0x3b
	auipc s4, 0x2ec
	auipc t5, 0x3bb
	auipc a7, 0x777
	auipc s2, 0x28f
	auipc a7, 0x746
	auipc t6, 0x30d
	auipc t2, 0x366
	auipc a5, 0x725
	auipc t5, 0x715
	auipc t2, 0x437
	auipc s3, 0x153
	auipc s6, 0x47e
	auipc s3, 0x16e
	auipc a6, 0x1e6
	auipc s4, 0x1db
	auipc s2, 0x33
	auipc t5, 0x16c
	auipc s11, 0x29c
	auipc a6, 0x166
	auipc s4, 0x11a
	auipc a2, 0x417
	auipc a5, 0x417
	auipc s2, 0x2e3
	auipc a6, 0x41f
	auipc a0, 0x568
	auipc s10, 0x47d
	auipc a0, 0x177
	auipc s11, 0x7f9
	auipc t2, 0x729
	auipc t4, 0x393
	auipc s2, 0x662
	auipc s7, 0x354
	auipc t2, 0x5e3
	auipc t5, 0x436
	auipc s6, 0x743
	auipc s6, 0x747
	auipc a2, 0x61d
	auipc s3, 0x2ec
	auipc t3, 0x654
	auipc s3, 0x4c2
	auipc s11, 0x2d7
	auipc s1, 0x2e8
	auipc s8, 0x7dc
	auipc s10, 0x6e2
	auipc s4, 0x7b4
	auipc s10, 0x393
	auipc s9, 0x14d
	auipc a2, 0x7a6
	auipc t1, 0x60b
	auipc t3, 0x335
	auipc a2, 0x5bb
	auipc s1, 0x5eb
	auipc s11, 0x3b3
	auipc a0, 0x540
	auipc t3, 0x441
	auipc s1, 0x202
	auipc a7, 0x3ee
	auipc s5, 0x23e
	auipc s6, 0x769
	auipc s0, 0x3ff
	csrr s10, time
	csrr s8, cycle
	csrr a6, instret
	sub s3, s10, a1
	sub a7, s8, a3
	sub t5, a6, a4
	li s2, 0
	csrr s3, time
	csrr t3, cycle
	csrr s5, instret
	auipc s2, 0x404
	auipc a1, 0x422
	auipc t2, 0x6a9
	auipc s6, 0x661
	auipc s10, 0x2d7
	auipc s7, 0x54e
	auipc a0, 0x713
	auipc s4, 0x3a6
	auipc s9, 0x735
	auipc t4, 0x73c
	auipc a0, 0x3b3
	auipc a4, 0x2d1
	auipc t4, 0x48d
	auipc s2, 0x5d1
	auipc s0, 0x75f
	auipc s0, 0x478
	auipc a2, 0x5cd
	auipc t6, 0x3aa
	auipc s2, 0x3e7
	auipc t6, 0x548
	auipc s9, 0x1c9
	auipc t1, 0x789
	auipc t1, 0x29b
	auipc a4, 0x687
	auipc t2, 0x59b
	auipc s7, 0x6b1
	auipc s0, 0x157
	auipc s8, 0x706
	auipc a0, 0x746
	auipc s6, 0x4f1
	auipc t1, 0x228
	auipc t2, 0x632
	auipc a4, 0x74d
	auipc t6, 0x3d9
	auipc s0, 0x27c
	auipc t6, 0x270
	auipc s4, 0x7ab
	auipc s9, 0x667
	auipc a1, 0x5a9
	auipc a6, 0x6a9
	auipc t2, 0x40b
	auipc s9, 0x482
	auipc a2, 0x427
	auipc s4, 0x412
	auipc t1, 0x539
	auipc t1, 0x4f0
	auipc s4, 0x4b7
	auipc s4, 0x343
	auipc s1, 0x281
	auipc s9, 0x5db
	auipc a2, 0x1ac
	auipc a7, 0x3ec
	auipc a3, 0x41b
	auipc s0, 0x2f1
	auipc s2, 0x77c
	auipc s9, 0x57c
	auipc t4, 0x4ff
	auipc t1, 0x711
	auipc t5, 0x9d
	auipc s10, 0x649
	auipc t5, 0x693
	auipc t1, 0x2be
	auipc s11, 0x5d1
	auipc s6, 0x14
	auipc s4, 0x745
	auipc a3, 0x688
	auipc a6, 0x18a
	auipc a6, 0x7fc
	auipc a3, 0x5f8
	auipc a6, 0xdc
	auipc a7, 0x7b
	auipc s10, 0x49b
	auipc t6, 0x53c
	auipc s6, 0x67
	auipc s0, 0x232
	auipc a0, 0x4be
	auipc a1, 0x1d3
	auipc s10, 0x578
	auipc s4, 0x704
	auipc a4, 0x756
	auipc t1, 0xdc
	auipc s0, 0x60b
	auipc s9, 0x430
	auipc s9, 0x11a
	auipc a1, 0x6d7
	auipc t5, 0x223
	auipc a2, 0x1f8
	auipc s2, 0x69c
	auipc s4, 0x1b2
	auipc s4, 0x78f
	auipc a3, 0x70e
	auipc s10, 0x7e
	auipc a0, 0x365
	auipc s2, 0x732
	auipc s1, 0x5bf
	auipc a1, 0x616
	auipc t5, 0x44
	auipc a5, 0x77
	auipc s1, 0x2e9
	auipc s9, 0x2e4
	csrr a6, time
	csrr s4, cycle
	csrr a1, instret
	sub s8, a6, s3
	sub t5, s4, t3
	sub t1, a1, s5
	li a0, 0
	csrr s0, time
	csrr a0, cycle
	csrr s1, instret
	auipc a1, 0x163
	auipc a6, 0x201
	auipc s2, 0x564
	auipc s5, 0x33
	auipc s10, 0xac
	auipc t4, 0xee
	auipc a2, 0x7a5
	auipc s5, 0x8d
	auipc a2, 0x36
	auipc a4, 0x56
	auipc s4, 0x5d8
	auipc a1, 0x75c
	auipc a1, 0x2e
	auipc s7, 0x2ff
	auipc t3, 0x20e
	auipc s5, 0x108
	auipc s4, 0x684
	auipc a2, 0x77f
	auipc a2, 0x144
	auipc a3, 0x5e3
	auipc t6, 0x17b
	auipc t2, 0x432
	auipc a1, 0x58b
	auipc s8, 0x6
	auipc t2, 0x318
	auipc s8, 0x4ba
	auipc t3, 0x5b
	auipc a6, 0x65d
	auipc a5, 0x7ee
	auipc a2, 0x1fe
	auipc t3, 0x139
	auipc s10, 0x7c7
	auipc s7, 0x4d
	auipc t3, 0xb
	auipc s10, 0x2c3
	auipc t4, 0x784
	auipc a5, 0x4ef
	auipc t4, 0x508
	auipc s3, 0x5f3
	auipc s11, 0x5fe
	auipc s3, 0xea
	auipc a2, 0x24c
	auipc s10, 0x2b5
	auipc t6, 0x3eb
	auipc s11, 0x42
	auipc s10, 0x27a
	auipc s5, 0x399
	auipc t4, 0x46c
	auipc a3, 0x623
	auipc s9, 0x4da
	auipc a5, 0x5ee
	auipc a7, 0x60
	auipc s5, 0x73a
	auipc s9, 0x21f
	auipc a4, 0x60e
	auipc s5, 0x339
	auipc a3, 0x6e9
	auipc a2, 0x4fc
	auipc a5, 0x5a7
	auipc t3, 0x13d
	auipc s5, 0x3cb
	auipc s9, 0x7ae
	auipc s6, 0x1d0
	auipc a1, 0xc2
	auipc s6, 0x54c
	auipc a7, 0x582
	auipc s7, 0x28a
	auipc a2, 0x6b8
	auipc s10, 0xd3
	auipc s10, 0x34
	auipc a6, 0x398
	auipc s4, 0x651
	auipc s11, 0x702
	auipc s7, 0x798
	auipc a1, 0x108
	auipc a2, 0x428
	auipc t3, 0x4b0
	auipc t6, 0x642
	auipc s2, 0x327
	auipc s6, 0x3e8
	auipc t3, 0x421
	auipc s7, 0x2a2
	auipc t2, 0x129
	auipc s4, 0x701
	auipc s3, 0x7b0
	auipc s7, 0x2bd
	auipc a2, 0x215
	auipc s3, 0x21b
	auipc s6, 0x4dc
	auipc s9, 0x7c6
	auipc s11, 0x35e
	auipc s7, 0x53c
	auipc s7, 0x27
	auipc a5, 0x59b
	auipc s3, 0x479
	auipc s11, 0x7af
	auipc t6, 0x122
	auipc a4, 0x560
	auipc s2, 0x77
	auipc s4, 0x209
	csrr t2, time
	csrr s6, cycle
	csrr a2, instret
	sub s3, t2, s0
	sub s4, s6, a0
	sub a3, a2, s1
	beq t5, s4, pass_label_0
	li t2, failed_addr
	ld a2, 0(t2)
	jr a2
pass_label_0:
	beq t1, a3, pass_label_1
	li a1, failed_addr
	ld a4, 0(a1)
	jr a4
pass_label_1:
SID_ZKT_02_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_ADDI)
SID_ZKT_03_ADDI:
	li sp, SID_ZKT_03_ADDI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a6, 0
	csrr t3, time
	csrr s7, cycle
	csrr a3, instret
	addi a0, a6, 0x4c8
	addi s4, a0, 0x441
	addi s10, s4, 0x6cc
	addi t1, s10, 0x6d1
	addi a2, t1, 0x135
	addi a6, a2, 0x665
	addi a1, a6, 0x40c
	addi s3, a1, 0x50a
	addi a4, s3, 0xb9
	addi a0, a4, 0x279
	addi s5, a0, 0x56
	addi s0, s5, 0x1e0
	addi a4, s0, 0x79b
	addi s8, a4, 0x3ac
	addi s0, s8, 0x480
	addi s10, s0, 0x1de
	addi t6, s10, 0x431
	addi s8, t6, 0x23b
	addi s10, s8, 0x80
	addi a2, s10, 0x7ac
	addi a2, a2, 0xe8
	addi s5, a2, 0xe8
	addi a4, s5, 0x56a
	addi s5, a4, 0x68f
	addi s6, s5, 0x64f
	addi t6, s6, 0x30b
	addi a7, t6, 0x6dd
	addi s9, a7, 0x2ed
	addi t6, s9, 0x1b8
	addi t5, t6, 0x28f
	addi t4, t5, 0x2dc
	addi s8, t4, 0xa1
	addi t1, s8, 0x2b0
	addi a0, t1, 0x3ab
	addi s10, a0, 0x2e9
	addi s6, s10, 0x157
	addi s11, s6, 0x3fe
	addi s9, s11, 0x38c
	addi s4, s9, 0x6f7
	addi t6, s4, 0x258
	addi s5, t6, 0x3b3
	addi a4, s5, 0x72b
	addi s2, a4, 0x115
	addi s9, s2, 0x762
	addi a6, s9, 0x5c2
	addi s11, a6, 0x38c
	addi t5, s11, 0x7f0
	addi s8, t5, 0x520
	addi a4, s8, 0x1bd
	addi s5, a4, 0x772
	addi t4, s5, 0x232
	addi a7, t4, 0x29f
	addi s2, a7, 0x148
	addi s2, s2, 0xce
	addi s3, s2, 0x71d
	addi s3, s3, 0x1ea
	addi a4, s3, 0x3c3
	addi s3, a4, 0x187
	addi a1, s3, 0x607
	addi t2, a1, 0x570
	addi a4, t2, 0x6c8
	addi a7, a4, 0x300
	addi s10, a7, 0x17e
	addi s6, s10, 0x2dc
	addi s4, s6, 0x122
	addi s5, s4, 0x65f
	addi a7, s5, 0x118
	addi a5, a7, 0x1e0
	addi s5, a5, 0x229
	addi a0, s5, 0x67a
	addi a5, a0, 0x46a
	addi s1, a5, 0x513
	addi s8, s1, 0x309
	addi s8, s8, 0x336
	addi s6, s8, 0x67a
	addi s5, s6, 0x699
	addi a2, s5, 0x601
	addi t4, a2, 0x2bf
	addi a6, t4, 0x241
	addi s5, a6, 0x70a
	addi a4, s5, 0x5c5
	addi t1, a4, 0x76b
	addi t1, t1, 0x4c5
	addi s3, t1, 0x408
	addi s11, s3, 0x4a8
	addi s2, s11, 0x588
	addi s3, s2, 0x5de
	addi s3, s3, 0x79a
	addi s5, s3, 0x293
	addi t2, s5, 0x5f3
	addi s9, t2, 0x335
	addi t2, s9, 0x605
	addi a6, t2, 0x5b8
	addi s9, a6, 0x6f7
	addi s1, s9, 0x5a5
	addi a7, s1, 0x77f
	addi s4, a7, 0x511
	addi t4, s4, 0x60a
	addi t4, t4, 0x7c4
	addi s6, t4, 0x7d8
	csrr a6, time
	csrr a7, cycle
	csrr t5, instret
	sub s5, a6, t3
	sub t2, a7, s7
	sub s7, t5, a3
	li a3, 0
	csrr t6, time
	csrr s4, cycle
	csrr s11, instret
	addi s7, a3, 0x5be
	addi a0, s7, 0x258
	addi a3, a0, 0x444
	addi a3, a3, 0x4fd
	addi s2, a3, 0x51b
	addi s0, s2, 0x560
	addi t1, s0, 0x97
	addi s5, t1, 0x2f3
	addi s6, s5, 0x27a
	addi s1, s6, 0x32c
	addi s2, s1, 0x3e2
	addi t2, s2, 0x168
	addi s5, t2, 0x213
	addi s0, s5, 0x7ac
	addi s3, s0, 0x738
	addi a0, s3, 0x2d7
	addi a2, a0, 0x389
	addi a2, a2, 0x3d3
	addi s9, a2, 0xb6
	addi s1, s9, 0x729
	addi s2, s1, 0x766
	addi a3, s2, 0x180
	addi s6, a3, 0x287
	addi s3, s6, 0x7b2
	addi s2, s3, 0x30b
	addi a7, s2, 0x107
	addi s6, a7, 0x7c1
	addi t3, s6, 0x3c
	addi s3, t3, 0xd8
	addi s9, s3, 0x2d1
	addi a2, s9, 0x159
	addi a6, a2, 0x2e2
	addi s2, a6, 0xa0
	addi s3, s2, 0x75a
	addi s5, s3, 0x709
	addi t2, s5, 0x713
	addi a5, t2, 0x5de
	addi t5, a5, 0x61a
	addi a7, t5, 0x539
	addi t2, a7, 0x380
	addi t5, t2, 0x14
	addi a6, t5, 0x45a
	addi s0, a6, 0x293
	addi t2, s0, 0x1e7
	addi a6, t2, 0x69c
	addi t2, a6, 0x6ae
	addi a7, t2, 0x4c4
	addi t4, a7, 0x321
	addi a7, t4, 0x457
	addi s6, a7, 0x249
	addi a0, s6, 0x3c3
	addi a6, a0, 0x51d
	addi s9, a6, 0x737
	addi a4, s9, 0x137
	addi a1, a4, 0x2e3
	addi s10, a1, 0x28a
	addi a2, s10, 0x1a0
	addi t5, a2, 0x76b
	addi s7, t5, 0x3ff
	addi t2, s7, 0xc5
	addi a1, t2, 0x7c7
	addi a5, a1, 0x126
	addi a1, a5, 0x648
	addi a7, a1, 0x1a5
	addi a4, a7, 0x2a9
	addi s1, a4, 0x205
	addi s10, s1, 0x124
	addi s7, s10, 0x35f
	addi s7, s7, 0x2e5
	addi s8, s7, 0x203
	addi a0, s8, 0xb9
	addi s1, a0, 0x2c0
	addi s10, s1, 0x183
	addi s3, s10, 0x1fb
	addi t4, s3, 0x5ab
	addi s5, t4, 0x1ee
	addi s6, s5, 0x5d6
	addi s3, s6, 0x4e5
	addi a7, s3, 0x62
	addi t3, a7, 0x2b4
	addi s3, t3, 0x788
	addi s5, s3, 0x2fe
	addi a0, s5, 0x532
	addi t2, a0, 0x627
	addi s5, t2, 0x4e7
	addi s2, s5, 0x81
	addi s6, s2, 0x6e8
	addi a7, s6, 0x129
	addi a5, a7, 0x16e
	addi s9, a5, 0x6d1
	addi s2, s9, 0x84
	addi s8, s2, 0x373
	addi a4, s8, 0x38f
	addi a1, a4, 0x63d
	addi s2, a1, 0x22f
	addi s2, s2, 0x112
	addi t3, s2, 0x294
	addi s8, t3, 0x432
	addi a1, s8, 0x4a0
	addi a1, a1, 0x6c6
	csrr t2, time
	csrr s9, cycle
	csrr s6, instret
	sub s1, t2, t6
	sub t2, s9, s4
	sub s7, s6, s11
	li a1, 0
	csrr a3, time
	csrr a0, cycle
	csrr s3, instret
	addi t5, a1, 0xf1
	addi a1, t5, 0x2b7
	addi s8, a1, 0x532
	addi s1, s8, 0x628
	addi a2, s1, 0x5b2
	addi s11, a2, 0x4e5
	addi s4, s11, 0x7ab
	addi s9, s4, 0x32b
	addi s8, s9, 0x1d5
	addi s6, s8, 0x7fd
	addi s2, s6, 0x71
	addi a7, s2, 0x326
	addi a4, a7, 0x624
	addi t3, a4, 0x3cd
	addi s0, t3, 0x3ee
	addi a7, s0, 0x4f7
	addi s2, a7, 0x6fb
	addi s10, s2, 0x28b
	addi s2, s10, 0x45e
	addi s0, s2, 0x6b6
	addi t1, s0, 0x4fb
	addi t4, t1, 0x4ca
	addi s6, t4, 0xbc
	addi t3, s6, 0x4b7
	addi a4, t3, 0x418
	addi a2, a4, 0x452
	addi t4, a2, 0x554
	addi s4, t4, 0x7e4
	addi t6, s4, 0x3fa
	addi s2, t6, 0x7ec
	addi a2, s2, 0x338
	addi s0, a2, 0x6bc
	addi s4, s0, 0x58b
	addi t4, s4, 0x3a5
	addi s0, t4, 0x15d
	addi a5, s0, 0x34e
	addi t6, a5, 0x319
	addi s8, t6, 0x435
	addi s10, s8, 0x3a2
	addi a6, s10, 0x61
	addi s5, a6, 0x70a
	addi a5, s5, 0xe0
	addi a1, a5, 0x39f
	addi a7, a1, 0x7f9
	addi a7, a7, 0x4be
	addi t1, a7, 0x109
	addi a4, t1, 0xf5
	addi s0, a4, 0x782
	addi a2, s0, 0x761
	addi t1, a2, 0x573
	addi s1, t1, 0x403
	addi t1, s1, 0x755
	addi t3, t1, 0x169
	addi t3, t3, 0xa1
	addi s10, t3, 0x327
	addi s6, s10, 0x275
	addi s6, s6, 0x3ac
	addi t1, s6, 0x665
	addi t3, t1, 0x5ab
	addi s9, t3, 0x15
	addi t4, s9, 0x209
	addi a2, t4, 0xdc
	addi t6, a2, 0x55c
	addi s11, t6, 0x2d1
	addi a4, s11, 0x1c6
	addi t4, a4, 0x165
	addi a7, t4, 0x36
	addi a2, a7, 0x12f
	addi s2, a2, 0x36e
	addi t4, s2, 0x55e
	addi t1, t4, 0x7e0
	addi s6, t1, 0xbf
	addi a6, s6, 0x2b3
	addi s6, a6, 0x7c8
	addi t6, s6, 0x691
	addi s5, t6, 0x534
	addi t6, s5, 0x3bc
	addi a4, t6, 0x68
	addi a7, a4, 0x6e0
	addi a7, a7, 0x733
	addi t3, a7, 0x3cf
	addi s6, t3, 0x1f1
	addi s11, s6, 0x87
	addi a4, s11, 0x3dd
	addi s11, a4, 0x120
	addi a1, s11, 0x47b
	addi t5, a1, 0x41
	addi s8, t5, 0x11e
	addi a6, s8, 0x593
	addi t3, a6, 0x407
	addi t3, t3, 0x459
	addi s4, t3, 0x7e
	addi a7, s4, 0x66
	addi a6, a7, 0x19b
	addi s0, a6, 0x461
	addi s10, s0, 0x75c
	addi a7, s10, 0xf
	addi s4, a7, 0x696
	addi a7, s4, 0x686
	addi t5, a7, 0x431
	csrr s8, time
	csrr t3, cycle
	csrr s5, instret
	sub t4, s8, a3
	sub t1, t3, a0
	sub a0, s5, s3
	beq t2, t1, pass_label_2
	li s1, failed_addr
	ld a5, 0(s1)
	jr a5
pass_label_2:
	beq s7, a0, pass_label_3
	li s3, failed_addr
	ld a0, 0(s3)
	jr a0
pass_label_3:
SID_ZKT_03_ADDI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SLTI)
SID_ZKT_03_SLTI:
	li sp, SID_ZKT_03_SLTI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a3, 0
	csrr s2, time
	csrr s3, cycle
	csrr a1, instret
	slti a5, a3, 0x7be
	slti t3, a5, 0x5c4
	slti a3, t3, 0x6a0
	slti t6, a3, 0x2d6
	slti a6, t6, 0x565
	slti a4, a6, 0x176
	slti t3, a4, 0x25e
	slti s11, t3, 0x2b
	slti s4, s11, 0x73f
	slti s10, s4, 0x6f7
	slti s6, s10, 0x55
	slti t3, s6, 0x7c2
	slti a7, t3, 0x1fc
	slti a4, a7, 0x48a
	slti a2, a4, 0x650
	slti t1, a2, 0x77b
	slti t6, t1, 0x72b
	slti s10, t6, 0x1c4
	slti a3, s10, 0x33c
	slti t6, a3, 0x84
	slti s7, t6, 0x748
	slti t6, s7, 0x2e4
	slti s9, t6, 0xe6
	slti s9, s9, 0x772
	slti a3, s9, 0x4c9
	slti s8, a3, 0x750
	slti a2, s8, 0x8d
	slti s9, a2, 0x1f3
	slti t2, s9, 0x1e0
	slti t4, t2, 0x469
	slti a6, t4, 0x187
	slti a6, a6, 0xd5
	slti s11, a6, 0xf
	slti s0, s11, 0x58c
	slti t4, s0, 0x341
	slti s5, t4, 0xa6
	slti s8, s5, 0x403
	slti t4, s8, 0x6d5
	slti t3, t4, 0x242
	slti s6, t3, 0x4aa
	slti s10, s6, 0x539
	slti s9, s10, 0x1c8
	slti t3, s9, 0x6e
	slti s1, t3, 0x437
	slti a0, s1, 0x426
	slti a6, a0, 0x7fb
	slti a7, a6, 0x43b
	slti t2, a7, 0x761
	slti a5, t2, 0x33c
	slti a0, a5, 0x36d
	slti s8, a0, 0x754
	slti t3, s8, 0x646
	slti s6, t3, 0x106
	slti t1, s6, 0x140
	slti a4, t1, 0x36d
	slti a7, a4, 0x10c
	slti a2, a7, 0x3b0
	slti a3, a2, 0x5e4
	slti a0, a3, 0x2fe
	slti a2, a0, 0x6f
	slti s7, a2, 0x7cd
	slti s9, s7, 0x7ad
	slti s0, s9, 0x496
	slti a4, s0, 0x179
	slti a0, a4, 0x424
	slti t6, a0, 0x68e
	slti a2, t6, 0x388
	slti a2, a2, 0x794
	slti a5, a2, 0x382
	slti s8, a5, 0x4ce
	slti t5, s8, 0x79e
	slti a0, t5, 0x695
	slti t6, a0, 0x667
	slti a6, t6, 0x6f5
	slti s5, a6, 0x531
	slti s0, s5, 0x394
	slti s1, s0, 0x14f
	slti t3, s1, 0x3f9
	slti a6, t3, 0x4c4
	slti s7, a6, 0x7f0
	slti t5, s7, 0x108
	slti t1, t5, 0x6d5
	slti s11, t1, 0x2d1
	slti s11, s11, 0x12d
	slti a5, s11, 0x32
	slti s0, a5, 0x205
	slti t4, s0, 0x5a7
	slti a7, t4, 0x182
	slti a2, a7, 0x7d4
	slti s0, a2, 0x138
	slti s1, s0, 0x51d
	slti a2, s1, 0x34f
	slti t6, a2, 0x491
	slti t6, t6, 0x50d
	slti s1, t6, 0x203
	slti s6, s1, 0x7db
	slti s8, s6, 0x38c
	slti s9, s8, 0x3c5
	slti t3, s9, 0x3ba
	slti s4, t3, 0x184
	csrr s11, time
	csrr a4, cycle
	csrr t1, instret
	sub a0, s11, s2
	sub a2, a4, s3
	sub a1, t1, a1
	li a3, 0
	csrr s4, time
	csrr t1, cycle
	csrr s3, instret
	slti s7, a3, 0x365
	slti s6, s7, 0x37e
	slti t5, s6, 0x22a
	slti s2, t5, 0x635
	slti a7, s2, 0x1c4
	slti s8, a7, 0x2d6
	slti s7, s8, 0x604
	slti s10, s7, 0x512
	slti t2, s10, 0x7a1
	slti a0, t2, 0x43
	slti s10, a0, 0x694
	slti s0, s10, 0x32b
	slti a5, s0, 0x4fb
	slti s7, a5, 0x6b2
	slti a6, s7, 0x3c
	slti s9, a6, 0x36c
	slti t2, s9, 0x26e
	slti a7, t2, 0x776
	slti t2, a7, 0x6bb
	slti t5, t2, 0x34
	slti s0, t5, 0x7cb
	slti t5, s0, 0x74a
	slti a3, t5, 0x464
	slti s6, a3, 0x3d4
	slti t6, s6, 0x490
	slti a3, t6, 0x21a
	slti s11, a3, 0x580
	slti t3, s11, 0x22d
	slti s5, t3, 0x1fd
	slti a4, s5, 0x3be
	slti s2, a4, 0x5b5
	slti a7, s2, 0x3aa
	slti a7, a7, 0x2ee
	slti s8, a7, 0x42f
	slti s9, s8, 0x6c9
	slti a4, s9, 0x4f6
	slti s9, a4, 0x3b4
	slti s5, s9, 0x745
	slti a0, s5, 0x551
	slti a2, a0, 0x1fb
	slti t2, a2, 0x475
	slti s9, t2, 0x6ca
	slti s0, s9, 0x44a
	slti a3, s0, 0x149
	slti a1, a3, 0x3b2
	slti a6, a1, 0x251
	slti a1, a6, 0x7a1
	slti a4, a1, 0x77f
	slti s6, a4, 0x60c
	slti a0, s6, 0x2e7
	slti a4, a0, 0x35e
	slti a0, a4, 0xe3
	slti s1, a0, 0x40e
	slti s8, s1, 0x57c
	slti s9, s8, 0x731
	slti a6, s9, 0x1fa
	slti s8, a6, 0x5fc
	slti a4, s8, 0x7c5
	slti a2, a4, 0x53c
	slti t6, a2, 0x54a
	slti s1, t6, 0x7ae
	slti s7, s1, 0x31b
	slti s1, s7, 0xf2
	slti s10, s1, 0x379
	slti t3, s10, 0x4cb
	slti s10, t3, 0x3b4
	slti a0, s10, 0x501
	slti s2, a0, 0x42e
	slti s8, s2, 0x3a6
	slti s0, s8, 0xbb
	slti s2, s0, 0x7b7
	slti a1, s2, 0x5f2
	slti s8, a1, 0x7c0
	slti s10, s8, 0x6ad
	slti s10, s10, 0x322
	slti s11, s10, 0x3a1
	slti t5, s11, 0x4f1
	slti s0, t5, 0x78b
	slti s8, s0, 0x623
	slti s11, s8, 0x5b3
	slti a3, s11, 0x594
	slti s9, a3, 0x5ec
	slti a3, s9, 0x2e9
	slti s8, a3, 0x751
	slti a3, s8, 0x665
	slti a3, a3, 0x477
	slti a7, a3, 0x2cd
	slti s0, a7, 0x156
	slti s1, s0, 0x12f
	slti s6, s1, 0x1e1
	slti s9, s6, 0x554
	slti t6, s9, 0x72e
	slti s7, t6, 0x534
	slti t6, s7, 0x167
	slti s8, t6, 0x347
	slti t6, s8, 0x39e
	slti t5, t6, 0x400
	slti a7, t5, 0x5ad
	slti t2, a7, 0x7ea
	slti s10, t2, 0x5c9
	csrr a0, time
	csrr a5, cycle
	csrr s1, instret
	sub a4, a0, s4
	sub s7, a5, t1
	sub t4, s1, s3
	li a0, 0
	csrr t3, time
	csrr s6, cycle
	csrr t5, instret
	slti a5, a0, 0x679
	slti s0, a5, 0x164
	slti a7, s0, 0x344
	slti a4, a7, 0x21f
	slti s9, a4, 0x74e
	slti a6, s9, 0x283
	slti s11, a6, 0x493
	slti s8, s11, 0x757
	slti a3, s8, 0x340
	slti t2, a3, 0x267
	slti s0, t2, 0x52f
	slti t6, s0, 0x5ba
	slti a1, t6, 0x647
	slti a1, a1, 0x7c4
	slti a5, a1, 0x72e
	slti s11, a5, 0x220
	slti a3, s11, 0x55f
	slti s5, a3, 0x285
	slti s4, s5, 0x559
	slti s0, s4, 0x1a
	slti a2, s0, 0x337
	slti s3, a2, 0x4c0
	slti s10, s3, 0x55
	slti s9, s10, 0x1a9
	slti a3, s9, 0x3a6
	slti s2, a3, 0xd2
	slti s8, s2, 0xed
	slti s4, s8, 0x18
	slti s11, s4, 0x78c
	slti a4, s11, 0x6b5
	slti t2, a4, 0x2e9
	slti s5, t2, 0x297
	slti s0, s5, 0x4da
	slti a2, s0, 0x28b
	slti s5, a2, 0x5e0
	slti a5, s5, 0x342
	slti t2, a5, 0x170
	slti s9, t2, 0x5fe
	slti a3, s9, 0x6ae
	slti t2, a3, 0x769
	slti a4, t2, 0x29d
	slti s5, a4, 0x646
	slti a5, s5, 0xa7
	slti s11, a5, 0x43a
	slti s2, s11, 0x4cf
	slti a2, s2, 0x3da
	slti t6, a2, 0x33a
	slti t6, t6, 0x4f8
	slti t2, t6, 0x75d
	slti s4, t2, 0x1e5
	slti t6, s4, 0x391
	slti a5, t6, 0x717
	slti a2, a5, 0xc4
	slti s5, a2, 0x4d6
	slti a5, s5, 0x28
	slti s9, a5, 0x2c4
	slti a2, s9, 0x41
	slti a0, a2, 0x26f
	slti s9, a0, 0x3f5
	slti t1, s9, 0x121
	slti a3, t1, 0x5b9
	slti t6, a3, 0x5ab
	slti t1, t6, 0x6b
	slti a5, t1, 0x16
	slti a6, a5, 0x2a6
	slti a3, a6, 0x342
	slti t1, a3, 0x3d6
	slti s9, t1, 0x539
	slti a5, s9, 0x731
	slti a5, a5, 0x4eb
	slti s11, a5, 0x7c6
	slti s8, s11, 0xd
	slti a4, s8, 0x703
	slti a0, a4, 0x3de
	slti s3, a0, 0x51f
	slti s4, s3, 0x743
	slti t2, s4, 0x49c
	slti a5, t2, 0x1a3
	slti s0, a5, 0x1cb
	slti s3, s0, 0x5f0
	slti a2, s3, 0x4e8
	slti t2, a2, 0x2a1
	slti s8, t2, 0x156
	slti s5, s8, 0x2ae
	slti a1, s5, 0x26f
	slti s11, a1, 0x642
	slti s3, s11, 0x6a7
	slti t6, s3, 0x324
	slti s5, t6, 0x48e
	slti s10, s5, 0x4cb
	slti s0, s10, 0x5d2
	slti t1, s0, 0x3e5
	slti a0, t1, 0x3bc
	slti s10, a0, 0x61c
	slti a7, s10, 0x23f
	slti s3, a7, 0xb2
	slti a0, s3, 0x40a
	slti s2, a0, 0x1b8
	slti t6, s2, 0x498
	slti s3, t6, 0x2f2
	csrr s8, time
	csrr a2, cycle
	csrr s4, instret
	sub s10, s8, t3
	sub a1, a2, s6
	sub t2, s4, t5
	beq s7, a1, pass_label_4
	li s6, failed_addr
	ld s5, 0(s6)
	jr s5
pass_label_4:
	beq t4, t2, pass_label_5
	li s10, failed_addr
	ld t1, 0(s10)
	jr t1
pass_label_5:
SID_ZKT_03_SLTI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SLTIU)
SID_ZKT_03_SLTIU:
	li sp, SID_ZKT_03_SLTIU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s8, 0
	csrr s3, time
	csrr t3, cycle
	csrr s7, instret
	sltiu t1, s8, 0x46c
	sltiu t2, t1, 0x23c
	sltiu a3, t2, 0x4db
	sltiu a1, a3, 0x21b
	sltiu a6, a1, 0x147
	sltiu s2, a6, 0x37
	sltiu a0, s2, 0x52d
	sltiu a0, a0, 0x4f8
	sltiu s6, a0, 0x7af
	sltiu t2, s6, 0x336
	sltiu a1, t2, 0x41b
	sltiu s9, a1, 0x74b
	sltiu a4, s9, 0x5c0
	sltiu s4, a4, 0x6b
	sltiu a1, s4, 0x75
	sltiu t5, a1, 0x646
	sltiu s10, t5, 0x3ef
	sltiu s4, s10, 0x192
	sltiu a2, s4, 0x472
	sltiu s11, a2, 0x29a
	sltiu a2, s11, 0x785
	sltiu s0, a2, 0x25a
	sltiu s1, s0, 0x5df
	sltiu s0, s1, 0x7ab
	sltiu t4, s0, 0x741
	sltiu s1, t4, 0x52d
	sltiu a1, s1, 0x61
	sltiu t5, a1, 0x3c0
	sltiu a5, t5, 0x2b1
	sltiu a1, a5, 0x17c
	sltiu t4, a1, 0x396
	sltiu a7, t4, 0x64
	sltiu a0, a7, 0x1ac
	sltiu a0, a0, 0x2f3
	sltiu a4, a0, 0x212
	sltiu a0, a4, 0x7cd
	sltiu s8, a0, 0x5f6
	sltiu t2, s8, 0x391
	sltiu t2, t2, 0x220
	sltiu s10, t2, 0x56a
	sltiu a3, s10, 0x408
	sltiu s6, a3, 0x70e
	sltiu s4, s6, 0x203
	sltiu t1, s4, 0x64
	sltiu a7, t1, 0x5c4
	sltiu s1, a7, 0x294
	sltiu t2, s1, 0x1a
	sltiu s2, t2, 0x35a
	sltiu a5, s2, 0x53c
	sltiu s1, a5, 0x1d2
	sltiu t2, s1, 0x17a
	sltiu s11, t2, 0x313
	sltiu a0, s11, 0x587
	sltiu a3, a0, 0x576
	sltiu a1, a3, 0x3db
	sltiu t2, a1, 0x116
	sltiu t4, t2, 0x363
	sltiu t5, t4, 0x591
	sltiu s1, t5, 0x262
	sltiu a5, s1, 0x9a
	sltiu s9, a5, 0x544
	sltiu a3, s9, 0x7cc
	sltiu s2, a3, 0x166
	sltiu s9, s2, 0x61d
	sltiu t1, s9, 0x653
	sltiu t1, t1, 0x72
	sltiu t6, t1, 0x35d
	sltiu t4, t6, 0x732
	sltiu a6, t4, 0x6ab
	sltiu t5, a6, 0x8a
	sltiu a5, t5, 0x7c0
	sltiu t5, a5, 0x443
	sltiu t5, t5, 0x4a9
	sltiu t5, t5, 0x13c
	sltiu s4, t5, 0x2e
	sltiu t6, s4, 0x41
	sltiu a3, t6, 0x2f0
	sltiu a6, a3, 0x1b9
	sltiu t6, a6, 0x7d1
	sltiu a2, t6, 0x573
	sltiu t6, a2, 0x53a
	sltiu a5, t6, 0x48a
	sltiu s2, a5, 0x614
	sltiu a0, s2, 0x452
	sltiu s8, a0, 0x3d2
	sltiu s4, s8, 0x375
	sltiu s1, s4, 0x789
	sltiu s9, s1, 0x55f
	sltiu a6, s9, 0x744
	sltiu a1, a6, 0x633
	sltiu a6, a1, 0x4e9
	sltiu a7, a6, 0x584
	sltiu a7, a7, 0x4ba
	sltiu t1, a7, 0x2a6
	sltiu s10, t1, 0xd6
	sltiu s5, s10, 0x6ba
	sltiu a2, s5, 0x11
	sltiu a6, a2, 0xa0
	sltiu a6, a6, 0x1a7
	sltiu t2, a6, 0x32
	csrr s4, time
	csrr s9, cycle
	csrr a2, instret
	sub a4, s4, s3
	sub a4, s9, t3
	sub t3, a2, s7
	li t5, 0
	csrr s7, time
	csrr s9, cycle
	csrr s6, instret
	sltiu s11, t5, 0x5c7
	sltiu a0, s11, 0x440
	sltiu t4, a0, 0x6ca
	sltiu t4, t4, 0x7ae
	sltiu a7, t4, 0x62b
	sltiu t3, a7, 0x6a6
	sltiu s8, t3, 0x71b
	sltiu s1, s8, 0x43a
	sltiu t5, s1, 0x41
	sltiu s3, t5, 0x140
	sltiu t5, s3, 0x3d
	sltiu t6, t5, 0x25f
	sltiu t6, t6, 0x20d
	sltiu s11, t6, 0xf8
	sltiu s8, s11, 0x28
	sltiu t5, s8, 0x528
	sltiu t1, t5, 0x4b3
	sltiu s2, t1, 0x2b
	sltiu a7, s2, 0x772
	sltiu a4, a7, 0x2cf
	sltiu t2, a4, 0x733
	sltiu s0, t2, 0x236
	sltiu a4, s0, 0xdc
	sltiu s4, a4, 0x31b
	sltiu t4, s4, 0x553
	sltiu a5, t4, 0x73d
	sltiu t3, a5, 0x561
	sltiu a0, t3, 0x516
	sltiu t3, a0, 0x545
	sltiu t2, t3, 0x182
	sltiu a4, t2, 0x34d
	sltiu s0, a4, 0x15
	sltiu a7, s0, 0x1e7
	sltiu a3, a7, 0x1c0
	sltiu s10, a3, 0x719
	sltiu t5, s10, 0x150
	sltiu a5, t5, 0x73d
	sltiu a4, a5, 0x4f5
	sltiu s10, a4, 0x5be
	sltiu a5, s10, 0x37f
	sltiu s0, a5, 0x45c
	sltiu t6, s0, 0x6f6
	sltiu t3, t6, 0x46
	sltiu a2, t3, 0x49c
	sltiu a3, a2, 0x239
	sltiu t5, a3, 0xd4
	sltiu a5, t5, 0x1ed
	sltiu t5, a5, 0x4b2
	sltiu s11, t5, 0x1f4
	sltiu t3, s11, 0x63
	sltiu s8, t3, 0x1bd
	sltiu a0, s8, 0x690
	sltiu s11, a0, 0x55b
	sltiu s3, s11, 0x1e7
	sltiu s3, s3, 0x573
	sltiu t5, s3, 0x69b
	sltiu s1, t5, 0x16b
	sltiu t3, s1, 0x501
	sltiu s4, t3, 0x739
	sltiu a1, s4, 0x684
	sltiu t6, a1, 0x4
	sltiu a6, t6, 0x160
	sltiu s4, a6, 0x7a8
	sltiu a1, s4, 0xff
	sltiu s0, a1, 0x4ad
	sltiu s4, s0, 0x19c
	sltiu a0, s4, 0x52c
	sltiu a5, a0, 0x1f2
	sltiu s0, a5, 0x243
	sltiu s4, s0, 0x2a7
	sltiu a1, s4, 0x58a
	sltiu s0, a1, 0xad
	sltiu t2, s0, 0x705
	sltiu s2, t2, 0x530
	sltiu s4, s2, 0x1a7
	sltiu a3, s4, 0x515
	sltiu a4, a3, 0x110
	sltiu t2, a4, 0x492
	sltiu s1, t2, 0x650
	sltiu s1, s1, 0x7ae
	sltiu t3, s1, 0x201
	sltiu t1, t3, 0x7ec
	sltiu s11, t1, 0xdb
	sltiu s1, s11, 0x2e3
	sltiu t4, s1, 0x3f2
	sltiu t5, t4, 0x58c
	sltiu s0, t5, 0x181
	sltiu a7, s0, 0x1b1
	sltiu s5, a7, 0x1b8
	sltiu a7, s5, 0x31b
	sltiu t1, a7, 0x248
	sltiu a4, t1, 0x9
	sltiu s5, a4, 0xb0
	sltiu t6, s5, 0x1d7
	sltiu t6, t6, 0x690
	sltiu a2, t6, 0x7f7
	sltiu a4, a2, 0x488
	sltiu t6, a4, 0x275
	sltiu s1, t6, 0x53c
	sltiu s3, s1, 0x2fb
	csrr t3, time
	csrr a1, cycle
	csrr a2, instret
	sub a4, t3, s7
	sub a3, a1, s9
	sub a0, a2, s6
	li t4, 0
	csrr t5, time
	csrr t1, cycle
	csrr t3, instret
	sltiu s0, t4, 0x259
	sltiu a4, s0, 0x458
	sltiu t2, a4, 0x636
	sltiu s1, t2, 0x794
	sltiu s0, s1, 0x7b3
	sltiu s10, s0, 0x282
	sltiu s0, s10, 0x550
	sltiu s8, s0, 0x59
	sltiu s0, s8, 0x621
	sltiu s10, s0, 0x27e
	sltiu s4, s10, 0x7d0
	sltiu t4, s4, 0xba
	sltiu a4, t4, 0x7f9
	sltiu t2, a4, 0x3cf
	sltiu a4, t2, 0x405
	sltiu s8, a4, 0x545
	sltiu t2, s8, 0x121
	sltiu s7, t2, 0x4e0
	sltiu s0, s7, 0x48b
	sltiu a6, s0, 0x2d9
	sltiu a1, a6, 0x24e
	sltiu a5, a1, 0x7b8
	sltiu s2, a5, 0x744
	sltiu s9, s2, 0x500
	sltiu s2, s9, 0x363
	sltiu s2, s2, 0x7fc
	sltiu a4, s2, 0x4c6
	sltiu a2, a4, 0x36a
	sltiu s1, a2, 0x71c
	sltiu s5, s1, 0x52b
	sltiu a4, s5, 0x683
	sltiu s0, a4, 0xce
	sltiu t2, s0, 0x7a0
	sltiu a6, t2, 0x44c
	sltiu a7, a6, 0x181
	sltiu s6, a7, 0x52e
	sltiu s9, s6, 0x4d9
	sltiu a5, s9, 0x1df
	sltiu t4, a5, 0x765
	sltiu s4, t4, 0x501
	sltiu a2, s4, 0x517
	sltiu s1, a2, 0x111
	sltiu s9, s1, 0x87
	sltiu t4, s9, 0x3b4
	sltiu a2, t4, 0xa9
	sltiu s1, a2, 0x4de
	sltiu s5, s1, 0x128
	sltiu s0, s5, 0x3d9
	sltiu s1, s0, 0x3f
	sltiu a6, s1, 0x139
	sltiu a2, a6, 0x304
	sltiu s1, a2, 0x188
	sltiu s0, s1, 0x3d8
	sltiu s9, s0, 0x302
	sltiu s4, s9, 0x431
	sltiu a5, s4, 0x53a
	sltiu s3, a5, 0x117
	sltiu s5, s3, 0x379
	sltiu s10, s5, 0x78b
	sltiu s4, s10, 0x19e
	sltiu a1, s4, 0xd8
	sltiu s7, a1, 0x2b7
	sltiu a2, s7, 0x2bd
	sltiu s9, a2, 0x27a
	sltiu s10, s9, 0x382
	sltiu a2, s10, 0x11c
	sltiu s8, a2, 0x1fd
	sltiu s5, s8, 0x4b9
	sltiu s3, s5, 0x215
	sltiu s7, s3, 0x3c7
	sltiu s3, s7, 0x673
	sltiu a6, s3, 0x29d
	sltiu a2, a6, 0x767
	sltiu s11, a2, 0x6
	sltiu s3, s11, 0x5da
	sltiu s5, s3, 0x752
	sltiu a2, s5, 0x6a3
	sltiu a1, a2, 0x5f
	sltiu a1, a1, 0x12
	sltiu s8, a1, 0xee
	sltiu t4, s8, 0x1ab
	sltiu s8, t4, 0x25c
	sltiu a4, s8, 0x76
	sltiu t6, a4, 0x653
	sltiu s0, t6, 0x38c
	sltiu s10, s0, 0x781
	sltiu s2, s10, 0x407
	sltiu s11, s2, 0x615
	sltiu a7, s11, 0x1cb
	sltiu s8, a7, 0x1a9
	sltiu s5, s8, 0x1f3
	sltiu a4, s5, 0x6b9
	sltiu a6, a4, 0xa0
	sltiu s10, a6, 0x45
	sltiu s8, s10, 0x3a
	sltiu a2, s8, 0xe8
	sltiu s8, a2, 0x31b
	sltiu s2, s8, 0xe7
	sltiu s11, s2, 0x356
	sltiu a1, s11, 0x484
	csrr t2, time
	csrr t6, cycle
	csrr s7, instret
	sub s5, t2, t5
	sub s6, t6, t1
	sub s0, s7, t3
	beq a3, s6, pass_label_6
	li s1, failed_addr
	ld a4, 0(s1)
	jr a4
pass_label_6:
	beq a0, s0, pass_label_7
	li a7, failed_addr
	ld s11, 0(a7)
	jr s11
pass_label_7:
SID_ZKT_03_SLTIU_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_XORI)
SID_ZKT_03_XORI:
	li sp, SID_ZKT_03_XORI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a6, 0
	csrr s8, time
	csrr a3, cycle
	csrr a4, instret
	xori a5, a6, 0x64a
	xori a7, a5, 0x23b
	xori s9, a7, 0x492
	xori s9, s9, 0x189
	xori s10, s9, 0x612
	xori s4, s10, 0x570
	xori a0, s4, 0x593
	xori s4, a0, 0x2b4
	xori s6, s4, 0x71e
	xori s4, s6, 0x31f
	xori t1, s4, 0x4b4
	xori t6, t1, 0x105
	xori s9, t6, 0x2f
	xori t6, s9, 0x67
	xori t1, t6, 0xd4
	xori a5, t1, 0x1ff
	xori a2, a5, 0x34e
	xori t3, a2, 0x546
	xori t5, t3, 0xf5
	xori s9, t5, 0x30c
	xori a5, s9, 0x27e
	xori a1, a5, 0x11e
	xori s3, a1, 0x235
	xori a2, s3, 0x19e
	xori a2, a2, 0x7e0
	xori s3, a2, 0x342
	xori s6, s3, 0x7ba
	xori a1, s6, 0x43
	xori a0, a1, 0x565
	xori s0, a0, 0x6e6
	xori s0, s0, 0x361
	xori t3, s0, 0x6a3
	xori a5, t3, 0x350
	xori t1, a5, 0x2bc
	xori s2, t1, 0x93
	xori s5, s2, 0x1b1
	xori a1, s5, 0x3a2
	xori s6, a1, 0x797
	xori s0, s6, 0x128
	xori s0, s0, 0x586
	xori s1, s0, 0x444
	xori s1, s1, 0x521
	xori s0, s1, 0x68a
	xori a7, s0, 0x3b4
	xori t6, a7, 0x337
	xori a0, t6, 0x3d8
	xori a5, a0, 0x5a9
	xori s3, a5, 0x22b
	xori a5, s3, 0x687
	xori t6, a5, 0x4f9
	xori t3, t6, 0x754
	xori s3, t3, 0x1d2
	xori s9, s3, 0x36d
	xori a5, s9, 0x3b2
	xori s9, a5, 0x1e8
	xori s9, s9, 0x50d
	xori a0, s9, 0x720
	xori s1, a0, 0x6a0
	xori s3, s1, 0x401
	xori s6, s3, 0x519
	xori s0, s6, 0x232
	xori s0, s0, 0x1ae
	xori a6, s0, 0x57a
	xori s9, a6, 0x3ce
	xori s6, s9, 0x6eb
	xori s10, s6, 0x74b
	xori a2, s10, 0x7e0
	xori t1, a2, 0x6b5
	xori s10, t1, 0x306
	xori s2, s10, 0x3c
	xori t4, s2, 0x221
	xori s7, t4, 0x43f
	xori s11, s7, 0x203
	xori a6, s11, 0x74a
	xori t5, a6, 0x265
	xori s9, t5, 0x288
	xori t4, s9, 0x1c0
	xori t1, t4, 0x499
	xori t6, t1, 0x75e
	xori s0, t6, 0x79c
	xori s10, s0, 0x515
	xori a7, s10, 0x359
	xori t2, a7, 0x69
	xori s4, t2, 0xad
	xori a6, s4, 0xc3
	xori s9, a6, 0x6b7
	xori t2, s9, 0x17e
	xori a0, t2, 0x764
	xori s3, a0, 0x7c2
	xori s4, s3, 0x161
	xori s11, s4, 0x2bf
	xori s1, s11, 0x24e
	xori a5, s1, 0x676
	xori s6, a5, 0x445
	xori s7, s6, 0x1cf
	xori t4, s7, 0x540
	xori t1, t4, 0x193
	xori t1, t1, 0x618
	xori t6, t1, 0x78c
	xori a2, t6, 0x50a
	csrr t2, time
	csrr a1, cycle
	csrr a6, instret
	sub s4, t2, s8
	sub t3, a1, a3
	sub t6, a6, a4
	li a4, 0
	csrr t6, time
	csrr a1, cycle
	csrr s8, instret
	xori s10, a4, 0x9d
	xori a5, s10, 0xd5
	xori s2, a5, 0x404
	xori a3, s2, 0x20c
	xori a3, a3, 0x43f
	xori s6, a3, 0x3a2
	xori s11, s6, 0x2b6
	xori s9, s11, 0x40f
	xori a5, s9, 0x60f
	xori s7, a5, 0x12e
	xori t4, s7, 0x6d8
	xori t4, t4, 0x186
	xori s10, t4, 0x1d8
	xori t5, s10, 0xf5
	xori s9, t5, 0x26c
	xori s11, s9, 0x435
	xori a4, s11, 0x3e6
	xori s4, a4, 0x616
	xori s4, s4, 0x3d9
	xori s7, s4, 0x3a3
	xori s10, s7, 0x512
	xori s0, s10, 0x58f
	xori t1, s0, 0x634
	xori s4, t1, 0x41c
	xori t3, s4, 0x2b9
	xori a0, t3, 0x243
	xori t4, a0, 0x789
	xori s5, t4, 0x135
	xori s10, s5, 0x3a9
	xori a0, s10, 0x392
	xori a7, a0, 0x3d
	xori s7, a7, 0x713
	xori t2, s7, 0x363
	xori a5, t2, 0x647
	xori t1, a5, 0x440
	xori a4, t1, 0x333
	xori t2, a4, 0x179
	xori t2, t2, 0x75d
	xori s10, t2, 0x70c
	xori a6, s10, 0x1dd
	xori s9, a6, 0x4c8
	xori a7, s9, 0x295
	xori a2, a7, 0x42c
	xori a6, a2, 0x354
	xori a7, a6, 0x249
	xori a4, a7, 0x390
	xori s10, a4, 0x113
	xori s0, s10, 0x732
	xori s6, s0, 0x237
	xori s3, s6, 0x2ef
	xori a2, s3, 0x524
	xori s9, a2, 0x35d
	xori s7, s9, 0x579
	xori s3, s7, 0x722
	xori a7, s3, 0x57a
	xori s10, a7, 0x556
	xori a4, s10, 0x44
	xori a0, a4, 0x14a
	xori s11, a0, 0x63c
	xori s10, s11, 0x2fa
	xori a4, s10, 0x592
	xori t1, a4, 0x689
	xori a0, t1, 0x577
	xori s7, a0, 0x6ad
	xori t2, s7, 0x431
	xori a3, t2, 0x737
	xori s4, a3, 0x6d7
	xori s1, s4, 0x483
	xori s11, s1, 0x7b6
	xori t4, s11, 0x1bf
	xori s3, t4, 0x4ad
	xori t5, s3, 0x4a5
	xori a7, t5, 0x378
	xori s2, a7, 0x2ba
	xori a2, s2, 0x457
	xori s3, a2, 0x1c1
	xori s0, s3, 0x66b
	xori t2, s0, 0x22e
	xori s3, t2, 0x56d
	xori s0, s3, 0x120
	xori a3, s0, 0x638
	xori s3, a3, 0x582
	xori s6, s3, 0x27c
	xori a5, s6, 0x4a6
	xori s7, a5, 0x4d3
	xori s3, s7, 0x7d3
	xori s9, s3, 0x1e6
	xori a6, s9, 0x51c
	xori t1, a6, 0x4a1
	xori s7, t1, 0x9c
	xori s11, s7, 0x21
	xori t3, s11, 0x578
	xori s2, t3, 0x448
	xori t1, s2, 0x591
	xori s1, t1, 0x5d4
	xori s1, s1, 0x692
	xori s10, s1, 0x74c
	xori a5, s10, 0x62a
	xori s6, a5, 0x3e4
	xori a0, s6, 0x12
	csrr a3, time
	csrr s2, cycle
	csrr a0, instret
	sub t3, a3, t6
	sub a7, s2, a1
	sub a0, a0, s8
	li t6, 0
	csrr a4, time
	csrr s3, cycle
	csrr s1, instret
	xori a6, t6, 0x6fe
	xori t1, a6, 0x45c
	xori t2, t1, 0x19d
	xori a6, t2, 0x7f5
	xori t1, a6, 0x1a
	xori a1, t1, 0x8e
	xori a5, a1, 0x46f
	xori t4, a5, 0x530
	xori s6, t4, 0x2c2
	xori a3, s6, 0x15e
	xori s7, a3, 0x32c
	xori t5, s7, 0x173
	xori a2, t5, 0x4cd
	xori t2, a2, 0x4c0
	xori a3, t2, 0x60e
	xori s6, a3, 0x269
	xori a2, s6, 0x6e9
	xori s5, a2, 0x353
	xori s10, s5, 0x299
	xori s10, s10, 0x141
	xori a5, s10, 0x4ab
	xori t4, a5, 0x78e
	xori t1, t4, 0x50c
	xori a2, t1, 0x15
	xori s10, a2, 0x57e
	xori s4, s10, 0x432
	xori s2, s4, 0x4ae
	xori s10, s2, 0x628
	xori a3, s10, 0x3bb
	xori s4, a3, 0x75a
	xori s10, s4, 0x67c
	xori t6, s10, 0x741
	xori t5, t6, 0x2b
	xori t2, t5, 0x30e
	xori s6, t2, 0x64d
	xori s8, s6, 0x5ee
	xori s0, s8, 0x159
	xori s4, s0, 0x735
	xori a1, s4, 0x178
	xori s10, a1, 0x1fb
	xori t6, s10, 0x562
	xori a6, t6, 0xf5
	xori s4, a6, 0x3a6
	xori s4, s4, 0x1b3
	xori t5, s4, 0x2c0
	xori s8, t5, 0x1cb
	xori a3, s8, 0xa3
	xori a2, a3, 0x273
	xori s6, a2, 0x6c
	xori s4, s6, 0xc7
	xori s11, s4, 0x227
	xori s0, s11, 0x37b
	xori a6, s0, 0xc8
	xori a1, a6, 0x7c0
	xori s7, a1, 0x595
	xori s5, s7, 0xc3
	xori s5, s5, 0x19e
	xori s11, s5, 0x5a8
	xori t1, s11, 0x30e
	xori t2, t1, 0x192
	xori t4, t2, 0x361
	xori a6, t4, 0x48c
	xori t1, a6, 0x5a6
	xori a3, t1, 0x1fa
	xori t2, a3, 0x68b
	xori a1, t2, 0x3dc
	xori s9, a1, 0x510
	xori s9, s9, 0x539
	xori t4, s9, 0x1bf
	xori a5, t4, 0x97
	xori t5, a5, 0x11c
	xori s6, t5, 0x6c3
	xori t3, s6, 0x47c
	xori a2, t3, 0xa9
	xori s9, a2, 0x2f0
	xori a5, s9, 0x722
	xori s2, a5, 0x5cf
	xori s11, s2, 0x190
	xori s9, s11, 0x1bd
	xori s9, s9, 0x2dd
	xori a6, s9, 0x589
	xori a6, a6, 0x3d2
	xori a5, a6, 0x2e0
	xori a5, a5, 0x680
	xori s8, a5, 0x240
	xori a1, s8, 0x750
	xori a5, a1, 0x175
	xori s7, a5, 0x396
	xori a3, s7, 0x60b
	xori a1, a3, 0x51a
	xori s9, a1, 0x40b
	xori t2, s9, 0x239
	xori t3, t2, 0x45c
	xori s7, t3, 0x4b9
	xori s4, s7, 0x6ab
	xori t1, s4, 0xba
	xori s9, t1, 0x3a
	xori t6, s9, 0x437
	xori s2, t6, 0x45f
	xori a6, s2, 0x130
	csrr s8, time
	csrr a6, cycle
	csrr s10, instret
	sub s5, s8, a4
	sub s8, a6, s3
	sub t3, s10, s1
	beq a7, s8, pass_label_8
	li a4, failed_addr
	ld a1, 0(a4)
	jr a1
pass_label_8:
	beq a0, t3, pass_label_9
	li s9, failed_addr
	ld s5, 0(s9)
	jr s5
pass_label_9:
SID_ZKT_03_XORI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_ORI)
SID_ZKT_03_ORI:
	li sp, SID_ZKT_03_ORI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 0
	csrr a1, time
	csrr s10, cycle
	csrr s8, instret
	ori s4, t2, 0x404
	ori s9, s4, 0x620
	ori t2, s9, 0x5b8
	ori s6, t2, 0x50f
	ori s3, s6, 0x6f2
	ori a3, s3, 0x1f
	ori a5, a3, 0x2c8
	ori s5, a5, 0x4ef
	ori t4, s5, 0x567
	ori t6, t4, 0x7b0
	ori s0, t6, 0x2c9
	ori s9, s0, 0x1c6
	ori t2, s9, 0x209
	ori a7, t2, 0x20
	ori s6, a7, 0x73
	ori t4, s6, 0x2c5
	ori s4, t4, 0x33f
	ori s9, s4, 0x25
	ori a4, s9, 0x4e2
	ori s0, a4, 0x7ec
	ori s6, s0, 0x415
	ori a7, s6, 0x1eb
	ori s7, a7, 0x398
	ori s7, s7, 0xf8
	ori a3, s7, 0x62b
	ori s6, a3, 0x528
	ori a0, s6, 0x3a3
	ori t6, a0, 0x25
	ori s7, t6, 0x58a
	ori s1, s7, 0x70f
	ori s2, s1, 0x475
	ori t3, s2, 0x68d
	ori s2, t3, 0x79c
	ori t6, s2, 0x3a0
	ori s3, t6, 0x2ac
	ori a3, s3, 0x146
	ori t4, a3, 0x38c
	ori a0, t4, 0x28b
	ori s11, a0, 0x627
	ori t5, s11, 0x4eb
	ori a3, t5, 0x261
	ori a7, a3, 0x591
	ori t1, a7, 0x65e
	ori s3, t1, 0x4c5
	ori t5, s3, 0x29b
	ori s6, t5, 0x22b
	ori s0, s6, 0x13d
	ori a3, s0, 0x5c1
	ori s9, a3, 0x461
	ori a4, s9, 0x6bb
	ori s2, a4, 0x47f
	ori t1, s2, 0x33b
	ori s4, t1, 0x274
	ori s1, s4, 0x6b
	ori s3, s1, 0x232
	ori t4, s3, 0x530
	ori s2, t4, 0x7fe
	ori s2, s2, 0x28d
	ori s4, s2, 0x40b
	ori s4, s4, 0x73a
	ori s3, s4, 0x5b1
	ori a6, s3, 0x478
	ori t5, a6, 0x35e
	ori a2, t5, 0x732
	ori a3, a2, 0x469
	ori s6, a3, 0x66a
	ori s1, s6, 0x24c
	ori s0, s1, 0x548
	ori s6, s0, 0x15d
	ori s4, s6, 0xa3
	ori s6, s4, 0x6ac
	ori t1, s6, 0x75c
	ori t1, t1, 0x577
	ori a7, t1, 0x11b
	ori a0, a7, 0x272
	ori t1, a0, 0x487
	ori s4, t1, 0x342
	ori a6, s4, 0x2ef
	ori t6, a6, 0x47d
	ori s2, t6, 0x3f7
	ori s0, s2, 0x88
	ori t6, s0, 0x60f
	ori a2, t6, 0x4ee
	ori s7, a2, 0x7ea
	ori a0, s7, 0x7f8
	ori s6, a0, 0x21b
	ori s11, s6, 0x57d
	ori a7, s11, 0x700
	ori s6, a7, 0x3bd
	ori a2, s6, 0x24f
	ori s0, a2, 0xf9
	ori a5, s0, 0x569
	ori s3, a5, 0x452
	ori t1, s3, 0x663
	ori a2, t1, 0x4aa
	ori t2, a2, 0x638
	ori t1, t2, 0x597
	ori s5, t1, 0x7be
	ori t1, s5, 0x712
	ori a4, t1, 0x6b4
	csrr t2, time
	csrr a3, cycle
	csrr t4, instret
	sub t3, t2, a1
	sub s9, a3, s10
	sub s7, t4, s8
	li s8, 0
	csrr t6, time
	csrr a1, cycle
	csrr t5, instret
	ori a2, s8, 0x22a
	ori a3, a2, 0x267
	ori s5, a3, 0xd9
	ori a6, s5, 0x6fd
	ori s2, a6, 0x7c3
	ori t4, s2, 0x4db
	ori s2, t4, 0x449
	ori s2, s2, 0x6fb
	ori t4, s2, 0x71c
	ori a5, t4, 0x5d3
	ori s9, a5, 0x4d8
	ori t1, s9, 0xd8
	ori s3, t1, 0x738
	ori a5, s3, 0x604
	ori a2, a5, 0x4d3
	ori s4, a2, 0x34b
	ori s0, s4, 0x5d1
	ori s0, s0, 0x7e6
	ori a3, s0, 0x515
	ori t3, a3, 0x508
	ori s8, t3, 0x7a2
	ori s9, s8, 0x5f
	ori t4, s9, 0x605
	ori s3, t4, 0x39
	ori t2, s3, 0x7cd
	ori a4, t2, 0x4b6
	ori a2, a4, 0x357
	ori t3, a2, 0x506
	ori a6, t3, 0x1a9
	ori s10, a6, 0x296
	ori a3, s10, 0x19f
	ori s8, a3, 0x7bc
	ori s2, s8, 0x3a9
	ori s5, s2, 0x6af
	ori a7, s5, 0x476
	ori s10, a7, 0x24b
	ori a4, s10, 0x586
	ori a6, a4, 0x6de
	ori s6, a6, 0x3bb
	ori a0, s6, 0x2a6
	ori t1, a0, 0x7ba
	ori t4, t1, 0x2fe
	ori a7, t4, 0x341
	ori s0, a7, 0x2ac
	ori t4, s0, 0x14
	ori t2, t4, 0x481
	ori s4, t2, 0x43b
	ori s5, s4, 0x503
	ori t2, s5, 0x545
	ori s11, t2, 0x3cc
	ori a4, s11, 0x1f2
	ori s1, a4, 0x3da
	ori s4, s1, 0x5f2
	ori s10, s4, 0x687
	ori s8, s10, 0x195
	ori a3, s8, 0x538
	ori a0, a3, 0x73e
	ori t3, a0, 0x482
	ori s7, t3, 0x394
	ori a7, s7, 0x57c
	ori s4, a7, 0x7a1
	ori t3, s4, 0x6a7
	ori s8, t3, 0x4eb
	ori s7, s8, 0x4dd
	ori s10, s7, 0x5cd
	ori s7, s10, 0x4ff
	ori a6, s7, 0x1a8
	ori s10, a6, 0xe4
	ori s1, s10, 0x70f
	ori s6, s1, 0x325
	ori s3, s6, 0x7ee
	ori s9, s3, 0x447
	ori s5, s9, 0x135
	ori s4, s5, 0x32f
	ori s7, s4, 0x4a5
	ori s2, s7, 0x305
	ori a7, s2, 0x14b
	ori t4, a7, 0x4be
	ori t1, t4, 0x70e
	ori s2, t1, 0x573
	ori t4, s2, 0x6ed
	ori s8, t4, 0x329
	ori s6, s8, 0x74d
	ori t3, s6, 0x299
	ori s11, t3, 0x628
	ori s2, s11, 0x1c
	ori t1, s2, 0x31c
	ori t2, t1, 0x356
	ori s6, t2, 0x510
	ori s4, s6, 0x277
	ori a0, s4, 0x7b
	ori s7, a0, 0x26b
	ori a3, s7, 0xdc
	ori t1, a3, 0x1f6
	ori a7, t1, 0x474
	ori t3, a7, 0x69f
	ori s7, t3, 0x5f0
	ori s0, s7, 0x222
	ori s1, s0, 0x25d
	ori a6, s1, 0x66b
	csrr a6, time
	csrr s8, cycle
	csrr a3, instret
	sub s0, a6, t6
	sub t4, s8, a1
	sub s11, a3, t5
	li t1, 0
	csrr t2, time
	csrr s9, cycle
	csrr s2, instret
	ori s1, t1, 0x1e
	ori s1, s1, 0x5e2
	ori s8, s1, 0x5f
	ori s8, s8, 0x74d
	ori t3, s8, 0x2a6
	ori a4, t3, 0x37
	ori s7, a4, 0x2fd
	ori t1, s7, 0x6b5
	ori t1, t1, 0x743
	ori a7, t1, 0x25e
	ori a5, a7, 0x588
	ori s1, a5, 0x5b3
	ori s0, s1, 0x711
	ori a1, s0, 0x7b6
	ori a6, a1, 0x60e
	ori a2, a6, 0x31f
	ori a3, a2, 0x59d
	ori s8, a3, 0x774
	ori a2, s8, 0x61e
	ori s0, a2, 0x36d
	ori s3, s0, 0x1c8
	ori s0, s3, 0x133
	ori a5, s0, 0x613
	ori t5, a5, 0x7f7
	ori s6, t5, 0x4a8
	ori t5, s6, 0x4d
	ori a3, t5, 0x52a
	ori s1, a3, 0x43c
	ori a0, s1, 0x3fa
	ori a7, a0, 0x485
	ori t5, a7, 0x397
	ori a2, t5, 0x6de
	ori s1, a2, 0x6c2
	ori t6, s1, 0x61b
	ori s3, t6, 0x668
	ori s8, s3, 0x16f
	ori a1, s8, 0x18e
	ori a4, a1, 0x379
	ori s4, a4, 0x6e3
	ori a1, s4, 0x3c6
	ori s8, a1, 0x454
	ori t3, s8, 0x46e
	ori s1, t3, 0x82
	ori a6, s1, 0x773
	ori a5, a6, 0x654
	ori s0, a5, 0xc5
	ori s4, s0, 0x70d
	ori t3, s4, 0x95
	ori s0, t3, 0x37b
	ori s3, s0, 0x26c
	ori s4, s3, 0x372
	ori s7, s4, 0x29a
	ori s1, s7, 0x22c
	ori a4, s1, 0x445
	ori t1, a4, 0x190
	ori a4, t1, 0x503
	ori s6, a4, 0x449
	ori s3, s6, 0x5e4
	ori t5, s3, 0x382
	ori s4, t5, 0xb0
	ori a1, s4, 0x53d
	ori s3, a1, 0xff
	ori t3, s3, 0x546
	ori t1, t3, 0x649
	ori t1, t1, 0x18f
	ori s4, t1, 0x1f
	ori t5, s4, 0x62b
	ori t5, t5, 0x592
	ori t5, t5, 0x39e
	ori s8, t5, 0xb4
	ori s1, s8, 0x345
	ori t3, s1, 0x4fc
	ori s1, t3, 0x17c
	ori s10, s1, 0x559
	ori s0, s10, 0x4e5
	ori s8, s0, 0x4b1
	ori a6, s8, 0x573
	ori a3, a6, 0x97
	ori s3, a3, 0x644
	ori a6, s3, 0x775
	ori a1, a6, 0x693
	ori a3, a1, 0x5a4
	ori a4, a3, 0x2ce
	ori t3, a4, 0x356
	ori a0, t3, 0x461
	ori s3, a0, 0x3d3
	ori t5, s3, 0x4ed
	ori a2, t5, 0x483
	ori s8, a2, 0x31f
	ori a3, s8, 0x239
	ori a3, a3, 0x17
	ori s8, a3, 0x7f1
	ori s6, s8, 0x5d7
	ori s7, s6, 0x1a0
	ori a5, s7, 0x734
	ori a3, a5, 0x20
	ori s10, a3, 0x3cd
	ori a6, s10, 0x70f
	ori s7, a6, 0x762
	ori s10, s7, 0x46b
	csrr a1, time
	csrr s6, cycle
	csrr a0, instret
	sub s10, a1, t2
	sub t2, s6, s9
	sub a2, a0, s2
	beq t4, t2, pass_label_10
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
pass_label_10:
	beq s11, a2, pass_label_11
	li a7, failed_addr
	ld a4, 0(a7)
	jr a4
pass_label_11:
SID_ZKT_03_ORI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_ANDI)
SID_ZKT_03_ANDI:
	li sp, SID_ZKT_03_ANDI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s7, 0
	csrr s6, time
	csrr a6, cycle
	csrr a7, instret
	andi a1, s7, 0x5df
	andi s9, a1, 0x2a2
	andi s7, s9, 0x479
	andi s5, s7, 0x2fa
	andi a3, s5, 0x2ae
	andi s0, a3, 0x7eb
	andi t4, s0, 0x507
	andi s4, t4, 0x34a
	andi s10, s4, 0x2dd
	andi a4, s10, 0x4dd
	andi s7, a4, 0x3f2
	andi a0, s7, 0x17b
	andi s0, a0, 0x4b4
	andi a4, s0, 0x59c
	andi t1, a4, 0x668
	andi a5, t1, 0x640
	andi s9, a5, 0x18c
	andi a1, s9, 0x270
	andi s4, a1, 0x7b8
	andi s5, s4, 0x370
	andi t5, s5, 0x6cd
	andi s8, t5, 0x2c6
	andi s9, s8, 0x184
	andi s2, s9, 0x5d3
	andi t3, s2, 0x74c
	andi a0, t3, 0x4ac
	andi s9, a0, 0x227
	andi t4, s9, 0x750
	andi s0, t4, 0x6c8
	andi a4, s0, 0x4ce
	andi t3, a4, 0x1b7
	andi s4, t3, 0x625
	andi s0, s4, 0x6e7
	andi t4, s0, 0x442
	andi a5, t4, 0x6ed
	andi s2, a5, 0x3a1
	andi s10, s2, 0x47c
	andi a5, s10, 0x3bb
	andi s3, a5, 0x572
	andi s4, s3, 0x1c6
	andi s0, s4, 0x60c
	andi s8, s0, 0x3e9
	andi t5, s8, 0x518
	andi s3, t5, 0x4ee
	andi s11, s3, 0x2b1
	andi a2, s11, 0x4d5
	andi a1, a2, 0x62b
	andi t3, a1, 0x24f
	andi t5, t3, 0x73d
	andi s9, t5, 0x2b3
	andi t6, s9, 0x44c
	andi t5, t6, 0x4b2
	andi s8, t5, 0x6e3
	andi t4, s8, 0x6db
	andi s10, t4, 0x2e7
	andi a3, s10, 0x9
	andi t5, a3, 0x398
	andi a3, t5, 0x653
	andi s10, a3, 0x573
	andi t1, s10, 0x36c
	andi a4, t1, 0x28e
	andi t2, a4, 0x63f
	andi s10, t2, 0x652
	andi a0, s10, 0x33
	andi t2, a0, 0x661
	andi s8, t2, 0x220
	andi s3, s8, 0x1a8
	andi t5, s3, 0x691
	andi s8, t5, 0x337
	andi t5, s8, 0x66f
	andi s2, t5, 0x710
	andi t6, s2, 0x15
	andi s10, t6, 0x423
	andi t5, s10, 0x1c0
	andi t2, t5, 0x4c
	andi t2, t2, 0x3f6
	andi a1, t2, 0x67a
	andi s5, a1, 0x59c
	andi s9, s5, 0x179
	andi s0, s9, 0x2f6
	andi s9, s0, 0x3c1
	andi a4, s9, 0x314
	andi s2, a4, 0x73d
	andi s8, s2, 0x4c1
	andi t3, s8, 0x621
	andi a1, t3, 0x3d9
	andi a0, a1, 0x5f7
	andi s2, a0, 0x482
	andi t2, s2, 0x25
	andi s4, t2, 0x1b3
	andi s0, s4, 0x1ff
	andi s5, s0, 0x2b0
	andi a5, s5, 0xee
	andi s1, a5, 0x703
	andi a5, s1, 0x7db
	andi a0, a5, 0x72c
	andi t5, a0, 0x1b9
	andi s3, t5, 0x755
	andi s11, s3, 0x14b
	andi s7, s11, 0x1d6
	csrr t3, time
	csrr s10, cycle
	csrr t5, instret
	sub a0, t3, s6
	sub t2, s10, a6
	sub t6, t5, a7
	li s11, 0
	csrr s5, time
	csrr s8, cycle
	csrr a6, instret
	andi s4, s11, 0x5b7
	andi a2, s4, 0x200
	andi a2, a2, 0x642
	andi t5, a2, 0x27c
	andi a2, t5, 0x5be
	andi a7, a2, 0xcc
	andi t2, a7, 0x444
	andi s7, t2, 0x111
	andi s3, s7, 0x720
	andi s7, s3, 0x6f0
	andi s10, s7, 0x4cf
	andi a0, s10, 0x4f2
	andi s11, a0, 0x4f
	andi a5, s11, 0x140
	andi t5, a5, 0x6b2
	andi t4, t5, 0x627
	andi s1, t4, 0x10
	andi s9, s1, 0x5ff
	andi s4, s9, 0x7f6
	andi s9, s4, 0x3ad
	andi t4, s9, 0x4a7
	andi a3, t4, 0x6d
	andi a7, a3, 0x507
	andi t4, a7, 0x4be
	andi a5, t4, 0x1e9
	andi s10, a5, 0x2d5
	andi s1, s10, 0x6e8
	andi a5, s1, 0x68d
	andi s4, a5, 0x2e7
	andi s2, s4, 0x4f0
	andi a0, s2, 0x49c
	andi s11, a0, 0x712
	andi a5, s11, 0x7b
	andi a5, a5, 0x7a7
	andi s10, a5, 0x566
	andi a2, s10, 0x774
	andi s10, a2, 0x6bf
	andi s9, s10, 0x20b
	andi s0, s9, 0x4ee
	andi t3, s0, 0x1a2
	andi s9, t3, 0x679
	andi s1, s9, 0x516
	andi s0, s1, 0x491
	andi t4, s0, 0x6b7
	andi s1, t4, 0x474
	andi a5, s1, 0x3de
	andi a4, a5, 0x6ab
	andi s9, a4, 0x1e3
	andi a7, s9, 0x17d
	andi s6, a7, 0x2b4
	andi s7, s6, 0x326
	andi a0, s7, 0x46e
	andi a5, a0, 0x671
	andi t5, a5, 0x1ce
	andi a0, t5, 0x5ee
	andi s3, a0, 0x577
	andi a1, s3, 0x74b
	andi s2, a1, 0x6e1
	andi a1, s2, 0x5d8
	andi s2, a1, 0x123
	andi t2, s2, 0x561
	andi s10, t2, 0x150
	andi t1, s10, 0x51b
	andi s1, t1, 0x273
	andi a1, s1, 0x1d2
	andi t1, a1, 0x3b4
	andi s6, t1, 0x634
	andi a3, s6, 0x221
	andi a7, a3, 0x68d
	andi s11, a7, 0x22a
	andi t3, s11, 0x1dd
	andi a5, t3, 0x345
	andi s10, a5, 0x302
	andi s3, s10, 0x1bd
	andi s9, s3, 0x377
	andi t1, s9, 0x690
	andi s0, t1, 0x5e2
	andi s7, s0, 0xa2
	andi t4, s7, 0x9c
	andi s4, t4, 0x77c
	andi s10, s4, 0x101
	andi a0, s10, 0x14e
	andi s9, a0, 0x766
	andi t4, s9, 0x2da
	andi a3, t4, 0x628
	andi a5, a3, 0x324
	andi s7, a5, 0x347
	andi s7, s7, 0x389
	andi t5, s7, 0x15a
	andi s6, t5, 0x6d3
	andi s0, s6, 0xb
	andi t1, s0, 0x3aa
	andi a2, t1, 0x13b
	andi a2, a2, 0x3fa
	andi s10, a2, 0x71f
	andi s3, s10, 0x36e
	andi s10, s3, 0xaf
	andi a5, s10, 0x357
	andi a5, a5, 0x6d0
	andi t6, a5, 0x47e
	csrr a4, time
	csrr s0, cycle
	csrr a1, instret
	sub t3, a4, s5
	sub s3, s0, s8
	sub a2, a1, a6
	li s5, 0
	csrr t1, time
	csrr s2, cycle
	csrr t4, instret
	andi s1, s5, 0x172
	andi s11, s1, 0x7b3
	andi s11, s11, 0x66e
	andi s0, s11, 0x261
	andi s0, s0, 0x1d3
	andi t2, s0, 0x5a9
	andi s10, t2, 0x5a5
	andi t2, s10, 0xe0
	andi s5, t2, 0x62c
	andi a5, s5, 0xba
	andi s6, a5, 0x428
	andi s1, s6, 0x664
	andi s9, s1, 0x1f0
	andi a4, s9, 0x49f
	andi t3, a4, 0x3fa
	andi s1, t3, 0x232
	andi t3, s1, 0x1f8
	andi s1, t3, 0x6a8
	andi a3, s1, 0x7c6
	andi s8, a3, 0x6ca
	andi a0, s8, 0x3b1
	andi s4, a0, 0x767
	andi s1, s4, 0x498
	andi a0, s1, 0x2f4
	andi s1, a0, 0x294
	andi t2, s1, 0x352
	andi t6, t2, 0x37d
	andi a0, t6, 0x1c0
	andi s5, a0, 0x736
	andi a0, s5, 0x796
	andi t2, a0, 0x71c
	andi s5, t2, 0x182
	andi a7, s5, 0x6a5
	andi s7, a7, 0x621
	andi s9, s7, 0x797
	andi s7, s9, 0xdc
	andi a1, s7, 0x7ef
	andi s5, a1, 0x3a8
	andi a4, s5, 0x21
	andi a4, a4, 0x2be
	andi t6, a4, 0x253
	andi t6, t6, 0x33c
	andi a3, t6, 0xbd
	andi s6, a3, 0x3f9
	andi s10, s6, 0x6b5
	andi s5, s10, 0x3a7
	andi s7, s5, 0x12c
	andi a6, s7, 0x135
	andi a4, a6, 0x65a
	andi a6, a4, 0x278
	andi s0, a6, 0x18d
	andi a0, s0, 0x39a
	andi a7, a0, 0x19e
	andi t3, a7, 0x344
	andi t6, t3, 0x29b
	andi a3, t6, 0x76e
	andi s4, a3, 0x728
	andi t2, s4, 0x18b
	andi s9, t2, 0x201
	andi s11, s9, 0x59c
	andi s1, s11, 0x187
	andi s6, s1, 0x6ad
	andi a3, s6, 0x645
	andi s6, a3, 0x441
	andi t2, s6, 0x214
	andi s10, t2, 0x6ee
	andi s6, s10, 0x4a6
	andi t5, s6, 0x37a
	andi a6, t5, 0x3d4
	andi s6, a6, 0x442
	andi a6, s6, 0x5aa
	andi t5, a6, 0x67c
	andi s0, t5, 0x3f7
	andi s1, s0, 0x56d
	andi a6, s1, 0x1d4
	andi a0, a6, 0x654
	andi s7, a0, 0x10c
	andi t6, s7, 0x67
	andi a3, t6, 0x6bc
	andi t2, a3, 0x79e
	andi s6, t2, 0x1d2
	andi s11, s6, 0x50d
	andi a1, s11, 0x20a
	andi a6, a1, 0x57
	andi a4, a6, 0x4a2
	andi t3, a4, 0x317
	andi s0, t3, 0x798
	andi a7, s0, 0x3cf
	andi t6, a7, 0x2e8
	andi s6, t6, 0x5f9
	andi a4, s6, 0x298
	andi a6, a4, 0x1d5
	andi s7, a6, 0x2c0
	andi s5, s7, 0x5e1
	andi a1, s5, 0x3a9
	andi t3, a1, 0x64c
	andi s4, t3, 0x755
	andi a6, s4, 0x4d9
	andi s10, a6, 0x4a2
	andi t6, s10, 0x565
	csrr s10, time
	csrr s4, cycle
	csrr a1, instret
	sub a4, s10, t1
	sub a4, s4, s2
	sub s4, a1, t4
	beq s3, a4, pass_label_12
	li s7, failed_addr
	ld s9, 0(s7)
	jr s9
pass_label_12:
	beq a2, s4, pass_label_13
	li s4, failed_addr
	ld t4, 0(s4)
	jr t4
pass_label_13:
SID_ZKT_03_ANDI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SLLI)
SID_ZKT_03_SLLI:
	li sp, SID_ZKT_03_SLLI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s7, 0
	csrr a4, time
	csrr t4, cycle
	csrr t2, instret
	slli s11, s7, 0x16
	slli s7, s11, 0x1d
	slli a5, s7, 0x1d
	slli s8, a5, 0xf
	slli t1, s8, 0x1e
	slli t3, t1, 0x9
	slli t3, t3, 0x18
	slli t6, t3, 0x5
	slli s10, t6, 0x1f
	slli a3, s10, 0xb
	slli s10, a3, 0x3
	slli s8, s10, 0x9
	slli a2, s8, 0x1a
	slli s0, a2, 0x12
	slli s11, s0, 0x1d
	slli s2, s11, 0x13
	slli s9, s2, 0x15
	slli s7, s9, 0xa
	slli a7, s7, 0x7
	slli s8, a7, 0xd
	slli t3, s8, 0xe
	slli a7, t3, 0x14
	slli t5, a7, 0x14
	slli s9, t5, 0xe
	slli a5, s9, 0x15
	slli a6, a5, 0x3
	slli t5, a6, 0x1f
	slli s5, t5, 0xd
	slli s5, s5, 0x1c
	slli a2, s5, 0x8
	slli a7, a2, 0x1f
	slli s11, a7, 0x7
	slli a2, s11, 0x5
	slli a7, a2, 0xd
	slli s7, a7, 0x1a
	slli a1, s7, 0x9
	slli a7, a1, 0x1b
	slli s8, a7, 0x19
	slli s10, s8, 0x3
	slli s1, s10, 0x1a
	slli s0, s1, 0x1d
	slli s4, s0, 0x1a
	slli t3, s4, 0x10
	slli a0, t3, 0x16
	slli s4, a0, 0x19
	slli s9, s4, 0x1f
	slli t6, s9, 0x5
	slli s5, t6, 0x1d
	slli a7, s5, 0x1d
	slli s11, a7, 0x13
	slli t1, s11, 0x1c
	slli t5, t1, 0xb
	slli s2, t5, 0x15
	slli a6, s2, 0x10
	slli a2, a6, 0x10
	slli s10, a2, 0x1d
	slli s1, s10, 0xc
	slli a0, s1, 0x19
	slli s3, a0, 0x16
	slli s10, s3, 0xe
	slli a2, s10, 0x14
	slli s2, a2, 0xd
	slli a6, s2, 0xc
	slli a6, a6, 0x1e
	slli s2, a6, 0x12
	slli s10, s2, 0x10
	slli s11, s10, 0x10
	slli t6, s11, 0x11
	slli a2, t6, 0x1e
	slli s3, a2, 0x5
	slli a1, s3, 0x6
	slli s5, a1, 0xd
	slli s9, s5, 0x5
	slli s10, s9, 0x17
	slli a0, s10, 0x13
	slli s2, a0, 0x4
	slli t6, s2, 0x14
	slli s9, t6, 0x17
	slli a6, s9, 0x4
	slli s7, a6, 0x11
	slli a1, s7, 0x8
	slli s11, a1, 0x7
	slli s5, s11, 0xe
	slli s5, s5, 0x9
	slli a5, s5, 0x5
	slli t6, a5, 0x1b
	slli s7, t6, 0x5
	slli a3, s7, 0x3
	slli a7, a3, 0x6
	slli a5, a7, 0x9
	slli s1, a5, 0x7
	slli a7, s1, 0x12
	slli s5, a7, 0x1c
	slli a5, s5, 0x1d
	slli t6, a5, 0x1c
	slli s3, t6, 0x4
	slli s1, s3, 0x13
	slli s8, s1, 0x7
	slli t1, s8, 0x13
	slli s5, t1, 0x13
	csrr s2, time
	csrr s0, cycle
	csrr s4, instret
	sub t6, s2, a4
	sub s11, s0, t4
	sub s3, s4, t2
	li s8, 0
	csrr a1, time
	csrr t6, cycle
	csrr t5, instret
	slli a7, s8, 0x1c
	slli a0, a7, 0x14
	slli s2, a0, 0x14
	slli a4, s2, 0x10
	slli t2, a4, 0x1c
	slli a4, t2, 0x11
	slli a3, a4, 0x13
	slli a7, a3, 0x6
	slli a6, a7, 0xf
	slli a6, a6, 0x14
	slli a4, a6, 0x9
	slli t2, a4, 0x11
	slli t2, t2, 0x15
	slli s6, t2, 0x16
	slli t1, s6, 0x18
	slli s8, t1, 0x12
	slli a0, s8, 0x5
	slli a0, a0, 0xe
	slli t4, a0, 0x14
	slli s11, t4, 0x4
	slli t3, s11, 0xa
	slli s3, t3, 0x11
	slli s3, s3, 0x10
	slli t1, s3, 0x5
	slli s11, t1, 0x3
	slli s6, s11, 0x14
	slli s0, s6, 0xa
	slli a5, s0, 0x11
	slli s1, a5, 0x15
	slli s2, s1, 0x5
	slli s6, s2, 0xe
	slli a4, s6, 0x14
	slli a4, a4, 0x11
	slli s6, a4, 0x18
	slli a6, s6, 0xb
	slli a4, a6, 0x1a
	slli a5, a4, 0xc
	slli a0, a5, 0xc
	slli t3, a0, 0x17
	slli s2, t3, 0x5
	slli t4, s2, 0x7
	slli s9, t4, 0x4
	slli s6, s9, 0x8
	slli t1, s6, 0x5
	slli s1, t1, 0x1c
	slli t4, s1, 0x10
	slli s8, t4, 0x9
	slli a0, s8, 0x3
	slli s7, a0, 0xb
	slli s5, s7, 0x11
	slli s8, s5, 0x17
	slli a7, s8, 0x1c
	slli s0, a7, 0xb
	slli a7, s0, 0x3
	slli s4, a7, 0x19
	slli t4, s4, 0x17
	slli s3, t4, 0x14
	slli a6, s3, 0x8
	slli t1, a6, 0x8
	slli a5, t1, 0x6
	slli s1, a5, 0x10
	slli a6, s1, 0x6
	slli s10, a6, 0x3
	slli s7, s10, 0x3
	slli s11, s7, 0x11
	slli s9, s11, 0xc
	slli t3, s9, 0x6
	slli a5, t3, 0xd
	slli s11, a5, 0x6
	slli a6, s11, 0xb
	slli t4, a6, 0x11
	slli s7, t4, 0xe
	slli a3, s7, 0x13
	slli t1, a3, 0x8
	slli s9, t1, 0xb
	slli a6, s9, 0x7
	slli a7, a6, 0x18
	slli a7, a7, 0xc
	slli s1, a7, 0x3
	slli s8, s1, 0xa
	slli s8, s8, 0x19
	slli s3, s8, 0xc
	slli t4, s3, 0x10
	slli a2, t4, 0x3
	slli a2, a2, 0x19
	slli a4, a2, 0x12
	slli a3, a4, 0x6
	slli a0, a3, 0x1f
	slli a0, a0, 0x5
	slli s8, a0, 0xa
	slli s2, s8, 0x4
	slli s0, s2, 0x10
	slli s2, s0, 0x10
	slli s8, s2, 0x11
	slli s8, s8, 0xb
	slli t2, s8, 0xa
	slli a5, t2, 0x5
	slli s8, a5, 0x6
	slli s1, s8, 0xc
	slli a2, s1, 0x18
	csrr t3, time
	csrr s7, cycle
	csrr s1, instret
	sub s9, t3, a1
	sub t1, s7, t6
	sub s6, s1, t5
	li a6, 0
	csrr a1, time
	csrr t3, cycle
	csrr s2, instret
	slli a2, a6, 0x14
	slli s7, a2, 0x12
	slli t2, s7, 0xc
	slli a7, t2, 0x1a
	slli a2, a7, 0xf
	slli a6, a2, 0x1e
	slli s8, a6, 0x1a
	slli s0, s8, 0x11
	slli s3, s0, 0x12
	slli t5, s3, 0x9
	slli s5, t5, 0x5
	slli s3, s5, 0x1a
	slli t4, s3, 0x5
	slli a3, t4, 0x1b
	slli s11, a3, 0x1e
	slli s1, s11, 0x8
	slli a3, s1, 0xf
	slli t2, a3, 0xe
	slli a3, t2, 0x19
	slli a6, a3, 0x3
	slli t5, a6, 0x9
	slli t4, t5, 0x13
	slli s10, t4, 0x10
	slli a0, s10, 0x1a
	slli s10, a0, 0x15
	slli t2, s10, 0x16
	slli s3, t2, 0x11
	slli t5, s3, 0x1c
	slli a5, t5, 0x1d
	slli s3, a5, 0x12
	slli a0, s3, 0x3
	slli s10, a0, 0x9
	slli s0, s10, 0x5
	slli s10, s0, 0x14
	slli t4, s10, 0x19
	slli a0, t4, 0x16
	slli a7, a0, 0x1e
	slli a2, a7, 0x7
	slli s7, a2, 0xd
	slli s7, s7, 0x15
	slli s7, s7, 0xe
	slli s5, s7, 0x11
	slli s5, s5, 0x8
	slli a6, s5, 0xf
	slli s9, a6, 0x12
	slli s9, s9, 0x12
	slli t5, s9, 0xe
	slli s0, t5, 0x1b
	slli s10, s0, 0xe
	slli a3, s10, 0x15
	slli s5, a3, 0x17
	slli s3, s5, 0xd
	slli t4, s3, 0x8
	slli t5, t4, 0x12
	slli t2, t5, 0x1f
	slli s9, t2, 0x3
	slli a7, s9, 0x19
	slli a4, a7, 0xc
	slli s9, a4, 0x1c
	slli a5, s9, 0x18
	slli s11, a5, 0x13
	slli t2, s11, 0x3
	slli a5, t2, 0x18
	slli s8, a5, 0x17
	slli t4, s8, 0x1b
	slli s5, t4, 0x19
	slli s11, s5, 0x1e
	slli s1, s11, 0x1e
	slli s11, s1, 0x1e
	slli s0, s11, 0xb
	slli t5, s0, 0x9
	slli s1, t5, 0x4
	slli t4, s1, 0x17
	slli s11, t4, 0x1f
	slli a0, s11, 0x3
	slli t6, a0, 0x1c
	slli a4, t6, 0x17
	slli s3, a4, 0xc
	slli a4, s3, 0x1f
	slli t6, a4, 0xf
	slli a6, t6, 0x1a
	slli a2, a6, 0x1f
	slli s4, a2, 0x6
	slli s10, s4, 0x15
	slli a4, s10, 0x1e
	slli s11, a4, 0x1b
	slli s11, s11, 0xa
	slli t6, s11, 0xa
	slli a4, t6, 0x1c
	slli a7, a4, 0xc
	slli s1, a7, 0x4
	slli a2, s1, 0x5
	slli a0, a2, 0xf
	slli a3, a0, 0x7
	slli s10, a3, 0x7
	slli s10, s10, 0x1b
	slli t4, s10, 0x14
	slli a7, t4, 0x6
	slli a3, a7, 0xc
	slli t5, a3, 0x1b
	csrr a5, time
	csrr s8, cycle
	csrr s9, instret
	sub a7, a5, a1
	sub s11, s8, t3
	sub a7, s9, s2
	beq t1, s11, pass_label_14
	li s8, failed_addr
	ld a4, 0(s8)
	jr a4
pass_label_14:
	beq s6, a7, pass_label_15
	li t4, failed_addr
	ld t1, 0(t4)
	jr t1
pass_label_15:
SID_ZKT_03_SLLI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SRLI)
SID_ZKT_03_SRLI:
	li sp, SID_ZKT_03_SRLI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t4, 0
	csrr s2, time
	csrr t3, cycle
	csrr t5, instret
	srli s10, t4, 0xe
	srli t4, s10, 0x11
	srli s6, t4, 0x1a
	srli a2, s6, 0xc
	srli t4, a2, 0xb
	srli a5, t4, 0xf
	srli a5, a5, 0x16
	srli a4, a5, 0x5
	srli s7, a4, 0x11
	srli s4, s7, 0xf
	srli t2, s4, 0x9
	srli a5, t2, 0x17
	srli s10, a5, 0x11
	srli a2, s10, 0x1b
	srli a2, a2, 0x14
	srli s7, a2, 0x17
	srli s6, s7, 0xe
	srli s8, s6, 0x3
	srli s6, s8, 0x10
	srli s4, s6, 0xa
	srli s4, s4, 0x1a
	srli t6, s4, 0x1d
	srli s5, t6, 0x14
	srli a0, s5, 0x5
	srli t2, a0, 0x5
	srli t1, t2, 0x11
	srli a1, t1, 0x15
	srli s1, a1, 0x1b
	srli a3, s1, 0xe
	srli a7, a3, 0x4
	srli a7, a7, 0x6
	srli s8, a7, 0x1e
	srli s6, s8, 0x19
	srli s0, s6, 0x9
	srli a3, s0, 0x6
	srli t1, a3, 0x3
	srli a6, t1, 0x17
	srli s11, a6, 0x18
	srli t6, s11, 0x14
	srli s8, t6, 0x12
	srli a4, s8, 0x3
	srli s1, a4, 0x12
	srli a3, s1, 0x8
	srli s3, a3, 0x1d
	srli s3, s3, 0x10
	srli t4, s3, 0x1d
	srli s10, t4, 0x19
	srli s0, s10, 0x6
	srli s9, s0, 0x1f
	srli a1, s9, 0xb
	srli s9, a1, 0x16
	srli a0, s9, 0xb
	srli t6, a0, 0x14
	srli s7, t6, 0x19
	srli a7, s7, 0x9
	srli s5, a7, 0x11
	srli s1, s5, 0xb
	srli a0, s1, 0x16
	srli a3, a0, 0xe
	srli s4, a3, 0x1e
	srli s0, s4, 0xa
	srli s4, s0, 0x1b
	srli t1, s4, 0x19
	srli t4, t1, 0x10
	srli a6, t4, 0xd
	srli t6, a6, 0xe
	srli t6, t6, 0x18
	srli a2, t6, 0x19
	srli s4, a2, 0x6
	srli a2, s4, 0x16
	srli a7, a2, 0x9
	srli a6, a7, 0x18
	srli a7, a6, 0x3
	srli t4, a7, 0x12
	srli a3, t4, 0xa
	srli t2, a3, 0x1a
	srli s6, t2, 0x1e
	srli s3, s6, 0xa
	srli t4, s3, 0xb
	srli a0, t4, 0x1c
	srli s10, a0, 0x1c
	srli a0, s10, 0xf
	srli t4, a0, 0x3
	srli a1, t4, 0x10
	srli s6, a1, 0x11
	srli s6, s6, 0x4
	srli s11, s6, 0x10
	srli s4, s11, 0x1d
	srli s11, s4, 0xa
	srli s10, s11, 0x15
	srli a3, s10, 0x12
	srli s10, a3, 0x17
	srli t1, s10, 0xd
	srli s1, t1, 0x16
	srli s10, s1, 0x4
	srli s6, s10, 0x1f
	srli s10, s6, 0x14
	srli a1, s10, 0x18
	srli t6, a1, 0x13
	srli a7, t6, 0x1f
	csrr a4, time
	csrr a7, cycle
	csrr t1, instret
	sub a3, a4, s2
	sub t3, a7, t3
	sub t2, t1, t5
	li a7, 0
	csrr s11, time
	csrr s5, cycle
	csrr a4, instret
	srli a1, a7, 0x9
	srli a2, a1, 0x1f
	srli a3, a2, 0x1d
	srli t4, a3, 0x6
	srli s10, t4, 0x4
	srli t4, s10, 0x4
	srli s3, t4, 0x1e
	srli s3, s3, 0x12
	srli t6, s3, 0x9
	srli t3, t6, 0x6
	srli a1, t3, 0xd
	srli a1, a1, 0x17
	srli t2, a1, 0x1b
	srli t3, t2, 0xe
	srli a6, t3, 0x8
	srli s1, a6, 0x10
	srli t3, s1, 0xc
	srli s8, t3, 0x1d
	srli t1, s8, 0xa
	srli s6, t1, 0x4
	srli s0, s6, 0x9
	srli s6, s0, 0x1d
	srli t6, s6, 0x11
	srli t2, t6, 0x3
	srli a6, t2, 0x15
	srli a5, a6, 0x17
	srli t5, a5, 0x11
	srli a0, t5, 0x4
	srli s4, a0, 0x11
	srli s9, s4, 0x19
	srli t6, s9, 0x19
	srli s1, t6, 0x17
	srli s10, s1, 0x14
	srli s0, s10, 0x10
	srli s3, s0, 0xe
	srli s4, s3, 0x11
	srli t1, s4, 0xb
	srli s6, t1, 0x19
	srli s8, s6, 0x5
	srli a6, s8, 0x15
	srli t5, a6, 0xc
	srli a2, t5, 0x5
	srli s7, a2, 0x9
	srli s3, s7, 0xe
	srli s8, s3, 0xa
	srli t6, s8, 0xd
	srli s6, t6, 0x6
	srli s0, s6, 0x3
	srli t6, s0, 0x9
	srli t4, t6, 0x13
	srli s1, t4, 0x10
	srli s7, s1, 0xa
	srli a5, s7, 0x6
	srli s7, a5, 0x18
	srli a1, s7, 0x1a
	srli s2, a1, 0x12
	srli s8, s2, 0xc
	srli s4, s8, 0x3
	srli t5, s4, 0x1b
	srli s1, t5, 0x1a
	srli t5, s1, 0x14
	srli t3, t5, 0x19
	srli t4, t3, 0x1c
	srli a3, t4, 0x1a
	srli s9, a3, 0x15
	srli s4, s9, 0xe
	srli s4, s4, 0xd
	srli a0, s4, 0x18
	srli a5, a0, 0x8
	srli a1, a5, 0x4
	srli a2, a1, 0x8
	srli a0, a2, 0x1e
	srli s8, a0, 0x14
	srli t6, s8, 0x1a
	srli t5, t6, 0x1e
	srli s2, t5, 0x17
	srli s6, s2, 0xe
	srli a6, s6, 0x8
	srli a7, a6, 0x5
	srli t3, a7, 0x1a
	srli s10, t3, 0x3
	srli s0, s10, 0x8
	srli s6, s0, 0x1b
	srli s8, s6, 0x1f
	srli s2, s8, 0x12
	srli s2, s2, 0xd
	srli a2, s2, 0xc
	srli s6, a2, 0x1e
	srli s4, s6, 0x19
	srli s9, s4, 0x5
	srli t3, s9, 0x1e
	srli a2, t3, 0xc
	srli s7, a2, 0x6
	srli s3, s7, 0x1c
	srli s3, s3, 0xc
	srli s7, s3, 0x5
	srli t1, s7, 0x3
	srli a6, t1, 0x1a
	srli a6, a6, 0x1a
	srli a1, a6, 0xf
	csrr a1, time
	csrr s4, cycle
	csrr s1, instret
	sub s6, a1, s11
	sub s5, s4, s5
	sub s3, s1, a4
	li a5, 0
	csrr s9, time
	csrr s2, cycle
	csrr t2, instret
	srli a6, a5, 0x9
	srli a1, a6, 0x15
	srli s11, a1, 0x11
	srli s10, s11, 0x8
	srli s6, s10, 0x7
	srli a0, s6, 0xa
	srli a4, a0, 0x1c
	srli a7, a4, 0x1f
	srli s4, a7, 0x11
	srli a2, s4, 0x1a
	srli s4, a2, 0x13
	srli s11, s4, 0x6
	srli s8, s11, 0xe
	srli s4, s8, 0x5
	srli a4, s4, 0x19
	srli s0, a4, 0x6
	srli a2, s0, 0x1e
	srli a4, a2, 0x9
	srli a0, a4, 0x15
	srli s8, a0, 0xc
	srli s6, s8, 0x11
	srli s4, s6, 0x13
	srli s0, s4, 0xc
	srli s0, s0, 0x1d
	srli a6, s0, 0x1a
	srli a0, a6, 0x5
	srli t4, a0, 0x19
	srli s10, t4, 0x12
	srli s10, s10, 0x16
	srli s7, s10, 0x17
	srli t1, s7, 0x13
	srli a5, t1, 0x1c
	srli s1, a5, 0x17
	srli s1, s1, 0x12
	srli s6, s1, 0x1b
	srli s8, s6, 0x17
	srli s7, s8, 0x10
	srli a2, s7, 0x7
	srli a3, a2, 0x1b
	srli a1, a3, 0xc
	srli a0, a1, 0x4
	srli a6, a0, 0x1e
	srli s7, a6, 0x3
	srli t6, s7, 0x8
	srli s6, t6, 0x14
	srli t3, s6, 0x1d
	srli a5, t3, 0x16
	srli t3, a5, 0x3
	srli a3, t3, 0x9
	srli s6, a3, 0xf
	srli s10, s6, 0x1c
	srli s1, s10, 0x11
	srli t3, s1, 0xe
	srli s1, t3, 0x7
	srli s4, s1, 0x1d
	srli s7, s4, 0xf
	srli a1, s7, 0x14
	srli s7, a1, 0xc
	srli a3, s7, 0x1b
	srli a4, a3, 0x6
	srli a1, a4, 0x1d
	srli s4, a1, 0x7
	srli s6, s4, 0xd
	srli a1, s6, 0xd
	srli s0, a1, 0x4
	srli s10, s0, 0x4
	srli t4, s10, 0x8
	srli s6, t4, 0xc
	srli a1, s6, 0x1b
	srli s0, a1, 0xc
	srli t1, s0, 0x1d
	srli s6, t1, 0x1a
	srli a4, s6, 0xa
	srli a5, a4, 0x18
	srli s11, a5, 0x9
	srli s8, s11, 0x10
	srli a1, s8, 0x4
	srli a0, a1, 0xc
	srli s10, a0, 0x1b
	srli t1, s10, 0xf
	srli t4, t1, 0x19
	srli s8, t4, 0x5
	srli a1, s8, 0x1e
	srli t5, a1, 0x7
	srli a1, t5, 0xa
	srli a7, a1, 0x1f
	srli t6, a7, 0xb
	srli t4, t6, 0x19
	srli s0, t4, 0xb
	srli t5, s0, 0x10
	srli t1, t5, 0x19
	srli s4, t1, 0x7
	srli s0, s4, 0x3
	srli s0, s0, 0x18
	srli t1, s0, 0xe
	srli t5, t1, 0x6
	srli a1, t5, 0x3
	srli t5, a1, 0x15
	srli s1, t5, 0xb
	srli a7, s1, 0x9
	csrr s10, time
	csrr t6, cycle
	csrr s8, instret
	sub s10, s10, s9
	sub t5, t6, s2
	sub s10, s8, t2
	beq s5, t5, pass_label_16
	li t2, failed_addr
	ld a5, 0(t2)
	jr a5
pass_label_16:
	beq s3, s10, pass_label_17
	li s10, failed_addr
	ld a5, 0(s10)
	jr a5
pass_label_17:
SID_ZKT_03_SRLI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SRAI)
SID_ZKT_03_SRAI:
	li sp, SID_ZKT_03_SRAI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t1, 0
	csrr s0, time
	csrr a3, cycle
	csrr t5, instret
	srai t1, t1, 0x1e
	srai s2, t1, 0x1d
	srai s6, s2, 0x19
	srai s10, s6, 0xb
	srai t2, s10, 0x4
	srai a5, t2, 0x7
	srai s5, a5, 0x14
	srai s11, s5, 0x12
	srai s7, s11, 0x12
	srai s8, s7, 0x1c
	srai s4, s8, 0x14
	srai a4, s4, 0xe
	srai s6, a4, 0xa
	srai t4, s6, 0x1a
	srai a6, t4, 0x5
	srai s3, a6, 0x1d
	srai t2, s3, 0xb
	srai a4, t2, 0x3
	srai t3, a4, 0x6
	srai s5, t3, 0x11
	srai s7, s5, 0x9
	srai s4, s7, 0x11
	srai s3, s4, 0x8
	srai s5, s3, 0xa
	srai t3, s5, 0x10
	srai s4, t3, 0x3
	srai a4, s4, 0x4
	srai s1, a4, 0x1d
	srai t3, s1, 0xb
	srai t2, t3, 0x1d
	srai s2, t2, 0xd
	srai a1, s2, 0xc
	srai s4, a1, 0x3
	srai s2, s4, 0xe
	srai s2, s2, 0x10
	srai a5, s2, 0x1e
	srai t4, a5, 0x6
	srai a2, t4, 0x17
	srai s8, a2, 0xf
	srai a5, s8, 0x13
	srai a4, a5, 0x1b
	srai t3, a4, 0x9
	srai s4, t3, 0xb
	srai s11, s4, 0x19
	srai s3, s11, 0x13
	srai a0, s3, 0x3
	srai a2, a0, 0x14
	srai t3, a2, 0xe
	srai t4, t3, 0x9
	srai t6, t4, 0x1b
	srai s1, t6, 0x1f
	srai a2, s1, 0x6
	srai s10, a2, 0x1f
	srai s4, s10, 0x7
	srai t2, s4, 0x1d
	srai a5, t2, 0x5
	srai s9, a5, 0x7
	srai s5, s9, 0xa
	srai s11, s5, 0x1b
	srai t4, s11, 0xd
	srai s7, t4, 0xf
	srai s1, s7, 0x19
	srai a2, s1, 0x9
	srai t1, a2, 0x7
	srai t1, t1, 0x19
	srai s1, t1, 0x3
	srai s4, s1, 0x13
	srai a6, s4, 0xb
	srai s2, a6, 0xb
	srai s3, s2, 0xe
	srai s2, s3, 0x13
	srai a5, s2, 0xf
	srai t4, a5, 0xf
	srai s11, t4, 0x12
	srai a6, s11, 0x15
	srai a7, a6, 0x8
	srai t2, a7, 0x1b
	srai s5, t2, 0x7
	srai s5, s5, 0x1b
	srai t1, s5, 0x6
	srai t3, t1, 0xc
	srai s7, t3, 0x1e
	srai s3, s7, 0xe
	srai t1, s3, 0x9
	srai s1, t1, 0xa
	srai a0, s1, 0x18
	srai s4, a0, 0xb
	srai a0, s4, 0xa
	srai a0, a0, 0x12
	srai s6, a0, 0xe
	srai s11, s6, 0x6
	srai s4, s11, 0x13
	srai a7, s4, 0x6
	srai s5, a7, 0x16
	srai s9, s5, 0x17
	srai t4, s9, 0x13
	srai a7, t4, 0x17
	srai s3, a7, 0xe
	srai s7, s3, 0x9
	srai s4, s7, 0xc
	csrr t6, time
	csrr a7, cycle
	csrr t3, instret
	sub t1, t6, s0
	sub s5, a7, a3
	sub t1, t3, t5
	li t1, 0
	csrr t5, time
	csrr t2, cycle
	csrr a5, instret
	srai s10, t1, 0x18
	srai s5, s10, 0xb
	srai a3, s5, 0x19
	srai s6, a3, 0x6
	srai t4, s6, 0x1f
	srai s1, t4, 0x1a
	srai a1, s1, 0x9
	srai s3, a1, 0x1e
	srai a1, s3, 0x1a
	srai a4, a1, 0x1a
	srai a2, a4, 0x7
	srai s8, a2, 0x1a
	srai s8, s8, 0xb
	srai s7, s8, 0x6
	srai t4, s7, 0x9
	srai s10, t4, 0x1c
	srai s4, s10, 0x16
	srai s9, s4, 0x11
	srai s0, s9, 0x13
	srai s10, s0, 0x18
	srai s7, s10, 0x1f
	srai s9, s7, 0x14
	srai t3, s9, 0x14
	srai a0, t3, 0x15
	srai s4, a0, 0x1e
	srai a4, s4, 0x3
	srai s7, a4, 0x7
	srai a2, s7, 0x5
	srai s4, a2, 0xd
	srai s2, s4, 0x5
	srai s9, s2, 0x12
	srai s11, s9, 0x1e
	srai a2, s11, 0xe
	srai a3, a2, 0x5
	srai a0, a3, 0x7
	srai s1, a0, 0xe
	srai t3, s1, 0x1b
	srai a6, t3, 0x7
	srai s1, a6, 0x17
	srai t3, s1, 0x9
	srai s8, t3, 0x18
	srai a7, s8, 0x1b
	srai s2, a7, 0x1c
	srai t6, s2, 0x12
	srai a4, t6, 0x1a
	srai s9, a4, 0x14
	srai t6, s9, 0x1b
	srai a2, t6, 0x1c
	srai a0, a2, 0x9
	srai s1, a0, 0x11
	srai a1, s1, 0x19
	srai a7, a1, 0x16
	srai t4, a7, 0x10
	srai s5, t4, 0x17
	srai s4, s5, 0x1d
	srai s4, s4, 0xc
	srai a4, s4, 0x14
	srai s10, a4, 0x1b
	srai a1, s10, 0xd
	srai a3, a1, 0x7
	srai t1, a3, 0x10
	srai s5, t1, 0x4
	srai a1, s5, 0xa
	srai s7, a1, 0x17
	srai s9, s7, 0x5
	srai t4, s9, 0x1b
	srai a1, t4, 0x1d
	srai s6, a1, 0x1f
	srai s10, s6, 0x4
	srai t3, s10, 0xb
	srai s2, t3, 0x16
	srai s11, s2, 0x1a
	srai a4, s11, 0xc
	srai a7, a4, 0x4
	srai s0, a7, 0x18
	srai s2, s0, 0xc
	srai s7, s2, 0x4
	srai s11, s7, 0x1d
	srai a4, s11, 0x12
	srai s4, a4, 0x12
	srai t6, s4, 0x12
	srai t6, t6, 0x17
	srai s9, t6, 0xb
	srai t6, s9, 0xc
	srai a6, t6, 0xb
	srai t1, a6, 0xb
	srai a0, t1, 0x1a
	srai s9, a0, 0x17
	srai s8, s9, 0x15
	srai t1, s8, 0x10
	srai t3, t1, 0xf
	srai s8, t3, 0x16
	srai s9, s8, 0x11
	srai s0, s9, 0x1a
	srai s8, s0, 0x16
	srai a0, s8, 0x9
	srai s9, a0, 0x16
	srai a4, s9, 0xe
	srai t3, a4, 0x18
	srai s1, t3, 0x1e
	csrr t4, time
	csrr s10, cycle
	csrr s0, instret
	sub s3, t4, t5
	sub s8, s10, t2
	sub t4, s0, a5
	li s11, 0
	csrr s4, time
	csrr t1, cycle
	csrr a5, instret
	srai s7, s11, 0x4
	srai t2, s7, 0x1b
	srai s1, t2, 0x7
	srai a7, s1, 0x4
	srai s10, a7, 0x12
	srai a6, s10, 0x10
	srai a0, a6, 0x15
	srai s5, a0, 0x7
	srai a4, s5, 0xb
	srai a7, a4, 0x13
	srai s11, a7, 0x8
	srai s3, s11, 0xa
	srai a6, s3, 0xf
	srai s10, a6, 0x1a
	srai t3, s10, 0xd
	srai a3, t3, 0x7
	srai a2, a3, 0x5
	srai s0, a2, 0x19
	srai s9, s0, 0x16
	srai s0, s9, 0x1b
	srai s0, s0, 0x6
	srai s1, s0, 0xa
	srai s1, s1, 0x12
	srai a4, s1, 0x8
	srai t6, a4, 0x16
	srai a4, t6, 0xd
	srai a2, a4, 0xa
	srai s0, a2, 0x1a
	srai t3, s0, 0x14
	srai s11, t3, 0x6
	srai a6, s11, 0x1d
	srai t3, a6, 0x19
	srai s10, t3, 0x1b
	srai s7, s10, 0xb
	srai a0, s7, 0x1c
	srai s11, a0, 0xa
	srai s1, s11, 0x15
	srai a4, s1, 0x18
	srai s5, a4, 0x1d
	srai s2, s5, 0x9
	srai s10, s2, 0x14
	srai a4, s10, 0x4
	srai a2, a4, 0x12
	srai s5, a2, 0x10
	srai t6, s5, 0x10
	srai s11, t6, 0xf
	srai s10, s11, 0x12
	srai s9, s10, 0x7
	srai t6, s9, 0x1c
	srai t3, t6, 0x1b
	srai s2, t3, 0x5
	srai a1, s2, 0x6
	srai a7, a1, 0x18
	srai t6, a7, 0x17
	srai a1, t6, 0xb
	srai t3, a1, 0x6
	srai s9, t3, 0x6
	srai t2, s9, 0x10
	srai s1, t2, 0xf
	srai t5, s1, 0x7
	srai s7, t5, 0xf
	srai s1, s7, 0x4
	srai t2, s1, 0xe
	srai s11, t2, 0x17
	srai s0, s11, 0x1a
	srai a2, s0, 0x11
	srai s5, a2, 0xb
	srai s10, s5, 0xd
	srai t2, s10, 0x5
	srai s11, t2, 0x9
	srai a1, s11, 0xa
	srai t5, a1, 0x16
	srai a7, t5, 0x1e
	srai s2, a7, 0x5
	srai t5, s2, 0x1e
	srai a1, t5, 0x4
	srai a3, a1, 0xa
	srai s9, a3, 0x7
	srai s0, s9, 0x18
	srai a6, s0, 0xf
	srai s1, a6, 0xe
	srai a0, s1, 0x17
	srai s10, a0, 0x8
	srai t2, s10, 0x5
	srai s10, t2, 0xa
	srai t3, s10, 0x1b
	srai s9, t3, 0x10
	srai a0, s9, 0x1f
	srai s1, a0, 0x1a
	srai a4, s1, 0x18
	srai s7, a4, 0x1f
	srai t3, s7, 0x16
	srai s0, t3, 0x7
	srai a4, s0, 0x13
	srai a0, a4, 0x1d
	srai a7, a0, 0xa
	srai s11, a7, 0x19
	srai s7, s11, 0x17
	srai s10, s7, 0x1a
	srai s0, s10, 0x1e
	csrr s1, time
	csrr a6, cycle
	csrr a7, instret
	sub s1, s1, s4
	sub s11, a6, t1
	sub s1, a7, a5
	beq s8, s11, pass_label_18
	li a5, failed_addr
	ld s2, 0(a5)
	jr s2
pass_label_18:
	beq t4, s1, pass_label_19
	li s2, failed_addr
	ld s10, 0(s2)
	jr s10
pass_label_19:
SID_ZKT_03_SRAI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_ADDIW)
SID_ZKT_03_ADDIW:
	li sp, SID_ZKT_03_ADDIW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s11, 0
	csrr t6, time
	csrr s1, cycle
	csrr a0, instret
	addiw s6, s11, 0x5fe
	addiw t4, s6, 0x5d8
	addiw a7, t4, 0x4eb
	addiw s2, a7, 0x43a
	addiw a6, s2, 0x4c4
	addiw a5, a6, 0x558
	addiw s0, a5, 0x45f
	addiw s8, s0, 0x787
	addiw a6, s8, 0x597
	addiw s0, a6, 0x3bc
	addiw a4, s0, 0x211
	addiw s0, a4, 0x3c7
	addiw s5, s0, 0x3bd
	addiw s5, s5, 0x5af
	addiw s0, s5, 0x753
	addiw a7, s0, 0x7f0
	addiw s11, a7, 0x750
	addiw s9, s11, 0x371
	addiw a5, s9, 0x572
	addiw a3, a5, 0x3fb
	addiw s4, a3, 0x15
	addiw t5, s4, 0x628
	addiw t4, t5, 0x39e
	addiw s8, t4, 0x662
	addiw a4, s8, 0x7d
	addiw s6, a4, 0x2c
	addiw a3, s6, 0x72a
	addiw a6, a3, 0x25f
	addiw s9, a6, 0x53d
	addiw s6, s9, 0x80
	addiw a7, s6, 0x5f7
	addiw a3, a7, 0x2ac
	addiw s11, a3, 0x4cc
	addiw s0, s11, 0x3c8
	addiw s5, s0, 0x104
	addiw s7, s5, 0x6c7
	addiw a1, s7, 0x448
	addiw a1, a1, 0x525
	addiw s2, a1, 0x682
	addiw s7, s2, 0x767
	addiw a4, s7, 0x1a2
	addiw a2, a4, 0x1fe
	addiw s10, a2, 0x60f
	addiw a2, s10, 0x295
	addiw s11, a2, 0x108
	addiw s7, s11, 0x4eb
	addiw s3, s7, 0x22c
	addiw t2, s3, 0x114
	addiw s7, t2, 0x3a7
	addiw s0, s7, 0x65e
	addiw a3, s0, 0x74
	addiw a4, a3, 0x67f
	addiw a2, a4, 0x2fc
	addiw a6, a2, 0x43a
	addiw a3, a6, 0x42a
	addiw s11, a3, 0x439
	addiw t3, s11, 0x6e6
	addiw a1, t3, 0x731
	addiw t5, a1, 0xb9
	addiw s9, t5, 0x652
	addiw s10, s9, 0x512
	addiw s3, s10, 0x202
	addiw s2, s3, 0x754
	addiw t1, s2, 0x735
	addiw s7, t1, 0x41f
	addiw s5, s7, 0x48f
	addiw s6, s5, 0x4a9
	addiw t4, s6, 0x670
	addiw s9, t4, 0x5ea
	addiw s2, s9, 0xcd
	addiw a3, s2, 0x3d1
	addiw a6, a3, 0x34e
	addiw s10, a6, 0x385
	addiw t5, s10, 0x2c3
	addiw s2, t5, 0x43d
	addiw s11, s2, 0x40e
	addiw t5, s11, 0x6e7
	addiw s8, t5, 0x72c
	addiw s11, s8, 0x2c3
	addiw t1, s11, 0x88
	addiw t2, t1, 0x1a2
	addiw s9, t2, 0x261
	addiw a4, s9, 0x125
	addiw s9, a4, 0xf2
	addiw s7, s9, 0x2d4
	addiw t4, s7, 0x60c
	addiw t2, t4, 0x7df
	addiw s5, t2, 0x403
	addiw a7, s5, 0x3c2
	addiw t3, a7, 0x42c
	addiw a4, t3, 0x268
	addiw t5, a4, 0x4a2
	addiw a5, t5, 0x380
	addiw t1, a5, 0x194
	addiw s0, t1, 0x705
	addiw s5, s0, 0x49a
	addiw a5, s5, 0x2f9
	addiw a7, a5, 0x4e3
	addiw t4, a7, 0x471
	addiw a5, t4, 0x695
	csrr t2, time
	csrr a1, cycle
	csrr a4, instret
	sub a7, t2, t6
	sub s11, a1, s1
	sub a0, a4, a0
	li t5, 0
	csrr a6, time
	csrr t1, cycle
	csrr s7, instret
	addiw s8, t5, 0x3bd
	addiw a3, s8, 0x1c7
	addiw s8, a3, 0x622
	addiw a4, s8, 0x3ed
	addiw s11, a4, 0xc3
	addiw s8, s11, 0x3e0
	addiw s8, s8, 0x6a0
	addiw t2, s8, 0xa1
	addiw a4, t2, 0x2cc
	addiw a1, a4, 0x653
	addiw t5, a1, 0x2cd
	addiw a4, t5, 0x1a2
	addiw s0, a4, 0x69b
	addiw s5, s0, 0x5d5
	addiw s6, s5, 0x6cd
	addiw t4, s6, 0x208
	addiw t6, t4, 0x446
	addiw s4, t6, 0x61b
	addiw s1, s4, 0x300
	addiw t6, s1, 0x79b
	addiw a1, t6, 0x73
	addiw s0, a1, 0x9e
	addiw a7, s0, 0x64a
	addiw s4, a7, 0x210
	addiw s6, s4, 0x10c
	addiw a1, s6, 0x5ea
	addiw s9, a1, 0x247
	addiw t2, s9, 0x20c
	addiw s1, t2, 0x5d7
	addiw s2, s1, 0x1fa
	addiw t4, s2, 0x1f5
	addiw s1, t4, 0x32a
	addiw s9, s1, 0x5fc
	addiw s2, s9, 0x597
	addiw a2, s2, 0x616
	addiw t5, a2, 0x6d0
	addiw s10, t5, 0xe0
	addiw a0, s10, 0x51d
	addiw a0, a0, 0x399
	addiw s9, a0, 0x178
	addiw t6, s9, 0x3fa
	addiw t3, t6, 0x3d6
	addiw s2, t3, 0x60
	addiw t5, s2, 0x69
	addiw s11, t5, 0x1d
	addiw t4, s11, 0x535
	addiw s9, t4, 0x208
	addiw a2, s9, 0x5e6
	addiw s11, a2, 0x5f1
	addiw s9, s11, 0x191
	addiw a5, s9, 0x19c
	addiw a5, a5, 0x40
	addiw s8, a5, 0x273
	addiw t3, s8, 0x55b
	addiw t5, t3, 0x7eb
	addiw s2, t5, 0x656
	addiw a3, s2, 0x1f1
	addiw t6, a3, 0x772
	addiw s1, t6, 0x2d7
	addiw a5, s1, 0x2e
	addiw s6, a5, 0x695
	addiw a2, s6, 0x721
	addiw t5, a2, 0x1e0
	addiw t3, t5, 0x5ff
	addiw t2, t3, 0x3de
	addiw t3, t2, 0x1a1
	addiw t4, t3, 0x74a
	addiw s5, t4, 0x66
	addiw s2, s5, 0x258
	addiw a4, s2, 0x6c4
	addiw a7, a4, 0x45
	addiw s5, a7, 0x5f
	addiw a4, s5, 0x29b
	addiw s10, a4, 0x381
	addiw t6, s10, 0x49c
	addiw s9, t6, 0x2d6
	addiw s2, s9, 0x4e9
	addiw s0, s2, 0x48e
	addiw t3, s0, 0x70e
	addiw a4, t3, 0x12b
	addiw a1, a4, 0x731
	addiw a0, a1, 0x465
	addiw t5, a0, 0x7da
	addiw s2, t5, 0x5df
	addiw s1, s2, 0x2a4
	addiw a7, s1, 0x323
	addiw s11, a7, 0x2ca
	addiw a4, s11, 0x8d
	addiw a4, a4, 0x712
	addiw a0, a4, 0x4d6
	addiw a1, a0, 0xec
	addiw s3, a1, 0x296
	addiw a0, s3, 0x51c
	addiw a5, a0, 0x771
	addiw a1, a5, 0x213
	addiw s6, a1, 0x269
	addiw s5, s6, 0x15c
	addiw t6, s5, 0x16c
	addiw s3, t6, 0x768
	addiw a5, s3, 0x404
	csrr t5, time
	csrr s8, cycle
	csrr s10, instret
	sub t3, t5, a6
	sub t3, s8, t1
	sub a3, s10, s7
	li s11, 0
	csrr s4, time
	csrr s9, cycle
	csrr s7, instret
	addiw s5, s11, 0x36e
	addiw a5, s5, 0x310
	addiw a5, a5, 0x28a
	addiw s2, a5, 0x97
	addiw a2, s2, 0x4d9
	addiw t5, a2, 0x4d0
	addiw a4, t5, 0x478
	addiw t6, a4, 0x25f
	addiw t4, t6, 0x71e
	addiw s6, t4, 0x76b
	addiw t4, s6, 0x5ac
	addiw s5, t4, 0x11a
	addiw a4, s5, 0x319
	addiw s5, a4, 0xea
	addiw a2, s5, 0x6c4
	addiw a1, a2, 0x422
	addiw s3, a1, 0x659
	addiw s3, s3, 0x5fc
	addiw s11, s3, 0x33a
	addiw s5, s11, 0x786
	addiw t6, s5, 0x31
	addiw s10, t6, 0x599
	addiw s5, s10, 0x63a
	addiw a4, s5, 0x752
	addiw s6, a4, 0x497
	addiw t2, s6, 0x3f8
	addiw s6, t2, 0x15b
	addiw s1, s6, 0x615
	addiw t1, s1, 0x6b5
	addiw a7, t1, 0x34c
	addiw t1, a7, 0x747
	addiw a7, t1, 0x3fd
	addiw a2, a7, 0x474
	addiw a2, a2, 0x62c
	addiw t6, a2, 0x75c
	addiw a5, t6, 0x50
	addiw s2, a5, 0x535
	addiw t5, s2, 0x5ac
	addiw t6, t5, 0x6c5
	addiw a0, t6, 0x3ed
	addiw a0, a0, 0x25b
	addiw t2, a0, 0x60d
	addiw a1, t2, 0x22c
	addiw t6, a1, 0x3ca
	addiw s3, t6, 0x400
	addiw t5, s3, 0x3f
	addiw t5, t5, 0x533
	addiw a0, t5, 0x57d
	addiw t2, a0, 0x53b
	addiw s5, t2, 0x2b
	addiw a5, s5, 0x6a2
	addiw s11, a5, 0x4e0
	addiw s6, s11, 0x3d
	addiw s0, s6, 0x718
	addiw t6, s0, 0x357
	addiw s1, t6, 0x449
	addiw a1, s1, 0x133
	addiw s10, a1, 0x327
	addiw s10, s10, 0xcc
	addiw a2, s10, 0x5dc
	addiw a0, a2, 0x436
	addiw t6, a0, 0x1aa
	addiw s0, t6, 0x7e1
	addiw s11, s0, 0x73b
	addiw s2, s11, 0x54c
	addiw s5, s2, 0x39
	addiw a5, s5, 0xcb
	addiw a6, a5, 0x73c
	addiw a7, a6, 0x4e4
	addiw a1, a7, 0x51
	addiw a2, a1, 0x409
	addiw t1, a2, 0x720
	addiw t4, t1, 0x6f1
	addiw s8, t4, 0x369
	addiw a4, s8, 0x61e
	addiw s11, a4, 0x453
	addiw s3, s11, 0x29
	addiw a7, s3, 0x272
	addiw a5, a7, 0x238
	addiw t2, a5, 0x5e6
	addiw a7, t2, 0x29a
	addiw s1, a7, 0x7bf
	addiw s3, s1, 0x464
	addiw s2, s3, 0x13b
	addiw a6, s2, 0x379
	addiw t5, a6, 0x44f
	addiw a5, t5, 0x9c
	addiw t6, a5, 0x12e
	addiw s11, t6, 0x5c6
	addiw s5, s11, 0x638
	addiw s6, s5, 0x2d3
	addiw a6, s6, 0x7f
	addiw s8, a6, 0x5a7
	addiw a7, s8, 0x2a6
	addiw t5, a7, 0x448
	addiw s5, t5, 0x1bf
	addiw a0, s5, 0xf7
	addiw t1, a0, 0x5e7
	addiw t1, t1, 0x46e
	addiw s6, t1, 0x1a8
	csrr s6, time
	csrr a7, cycle
	csrr s2, instret
	sub a6, s6, s4
	sub s8, a7, s9
	sub s11, s2, s7
	beq t3, s8, pass_label_20
	li s2, failed_addr
	ld s8, 0(s2)
	jr s8
pass_label_20:
	beq a3, s11, pass_label_21
	li a1, failed_addr
	ld a1, 0(a1)
	jr a1
pass_label_21:
SID_ZKT_03_ADDIW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SLLIW)
SID_ZKT_03_SLLIW:
	li sp, SID_ZKT_03_SLLIW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 0
	csrr s5, time
	csrr s2, cycle
	csrr a1, instret
	slliw t4, t2, 0x12
	slliw a7, t4, 0x4
	slliw s4, a7, 0xd
	slliw t3, s4, 0x4
	slliw s3, t3, 0x9
	slliw t2, s3, 0x1e
	slliw s4, t2, 0x19
	slliw s3, s4, 0x8
	slliw s3, s3, 0x1c
	slliw a4, s3, 0x1c
	slliw a7, a4, 0xd
	slliw a4, a7, 0x6
	slliw s7, a4, 0xe
	slliw t3, s7, 0x12
	slliw a3, t3, 0xc
	slliw s9, a3, 0x7
	slliw a7, s9, 0x1c
	slliw s3, a7, 0x1b
	slliw s1, s3, 0x4
	slliw s6, s1, 0x1d
	slliw t6, s6, 0x19
	slliw a4, t6, 0x5
	slliw s1, a4, 0x1d
	slliw a5, s1, 0x18
	slliw s6, a5, 0x1b
	slliw s10, s6, 0x19
	slliw s4, s10, 0x5
	slliw s0, s4, 0xb
	slliw a2, s0, 0x9
	slliw t1, a2, 0xb
	slliw s7, t1, 0x3
	slliw t6, s7, 0x1c
	slliw s0, t6, 0x11
	slliw s9, s0, 0x17
	slliw t4, s9, 0x1c
	slliw a7, t4, 0xa
	slliw t3, a7, 0x6
	slliw a4, t3, 0x14
	slliw a6, a4, 0x1d
	slliw s8, a6, 0x9
	slliw t1, s8, 0xe
	slliw t5, t1, 0x16
	slliw a7, t5, 0x18
	slliw t2, a7, 0x3
	slliw s10, t2, 0xb
	slliw s0, s10, 0x19
	slliw s0, s0, 0x19
	slliw s10, s0, 0x1f
	slliw t4, s10, 0x6
	slliw s10, t4, 0x14
	slliw s11, s10, 0x4
	slliw t3, s11, 0x8
	slliw a4, t3, 0xf
	slliw s9, a4, 0x7
	slliw a6, s9, 0x7
	slliw a3, a6, 0x19
	slliw s8, a3, 0x1b
	slliw a4, s8, 0x19
	slliw s4, a4, 0x14
	slliw a6, s4, 0x6
	slliw a3, a6, 0xa
	slliw s4, a3, 0xe
	slliw s3, s4, 0x6
	slliw t5, s3, 0x9
	slliw s4, t5, 0x11
	slliw t4, s4, 0x1d
	slliw a6, t4, 0x1d
	slliw s1, a6, 0x18
	slliw a6, s1, 0xa
	slliw t4, a6, 0x1e
	slliw t5, t4, 0x15
	slliw s10, t5, 0x11
	slliw a5, s10, 0x1d
	slliw s3, a5, 0x15
	slliw t6, s3, 0xc
	slliw s10, t6, 0x1f
	slliw t2, s10, 0x16
	slliw s10, t2, 0xf
	slliw a3, s10, 0xf
	slliw t3, a3, 0x1f
	slliw s10, t3, 0xc
	slliw s11, s10, 0x1c
	slliw a3, s11, 0xf
	slliw t1, a3, 0x16
	slliw t6, t1, 0x10
	slliw t6, t6, 0xe
	slliw s4, t6, 0x17
	slliw a2, s4, 0xa
	slliw s8, a2, 0x6
	slliw t4, s8, 0x10
	slliw t1, t4, 0x14
	slliw a3, t1, 0x1e
	slliw s10, a3, 0xa
	slliw s1, s10, 0x18
	slliw t2, s1, 0x18
	slliw t2, t2, 0xa
	slliw s3, t2, 0xf
	slliw t1, s3, 0x1b
	slliw t1, t1, 0xd
	slliw s9, t1, 0x15
	csrr s7, time
	csrr a0, cycle
	csrr a6, instret
	sub a7, s7, s5
	sub s7, a0, s2
	sub s5, a6, a1
	li a1, 0
	csrr s1, time
	csrr s10, cycle
	csrr s0, instret
	slliw a1, a1, 0x1a
	slliw s2, a1, 0x16
	slliw s6, s2, 0x7
	slliw s5, s6, 0x14
	slliw a1, s5, 0x6
	slliw t2, a1, 0xf
	slliw s3, t2, 0x14
	slliw a6, s3, 0x17
	slliw t2, a6, 0xd
	slliw a5, t2, 0x3
	slliw t3, a5, 0x7
	slliw a4, t3, 0x13
	slliw a1, a4, 0x15
	slliw a6, a1, 0x15
	slliw s2, a6, 0xe
	slliw a4, s2, 0x12
	slliw s11, a4, 0x1c
	slliw t2, s11, 0x14
	slliw t5, t2, 0x1b
	slliw a5, t5, 0x15
	slliw s9, a5, 0x7
	slliw s7, s9, 0x4
	slliw s11, s7, 0x5
	slliw s4, s11, 0xd
	slliw s11, s4, 0x9
	slliw t4, s11, 0xb
	slliw s5, t4, 0x19
	slliw t1, s5, 0x12
	slliw s4, t1, 0x1a
	slliw t3, s4, 0xa
	slliw a0, t3, 0xd
	slliw s6, a0, 0x3
	slliw s11, s6, 0xe
	slliw a0, s11, 0x1e
	slliw a7, a0, 0xe
	slliw a6, a7, 0x11
	slliw a4, a6, 0xc
	slliw a1, a4, 0xf
	slliw s5, a1, 0x1f
	slliw a4, s5, 0xa
	slliw a6, a4, 0x3
	slliw a0, a6, 0x5
	slliw t2, a0, 0x7
	slliw a0, t2, 0xa
	slliw t2, a0, 0x14
	slliw t3, t2, 0x1c
	slliw s8, t3, 0xa
	slliw a5, s8, 0x1f
	slliw a5, a5, 0x5
	slliw s11, a5, 0x1b
	slliw t3, s11, 0x9
	slliw a4, t3, 0x1f
	slliw t1, a4, 0x14
	slliw s2, t1, 0xe
	slliw a2, s2, 0x14
	slliw a3, a2, 0x11
	slliw s2, a3, 0xe
	slliw s3, s2, 0x4
	slliw t5, s3, 0x7
	slliw a7, t5, 0x5
	slliw t6, a7, 0x1d
	slliw t3, t6, 0x6
	slliw s2, t3, 0xf
	slliw s11, s2, 0x1d
	slliw t1, s11, 0x17
	slliw s3, t1, 0x9
	slliw t6, s3, 0x1b
	slliw t4, t6, 0xf
	slliw s6, t4, 0x4
	slliw a4, s6, 0x3
	slliw s7, a4, 0x17
	slliw s2, s7, 0x10
	slliw t6, s2, 0xf
	slliw a5, t6, 0x6
	slliw s3, a5, 0x9
	slliw t2, s3, 0x12
	slliw t2, t2, 0x14
	slliw t5, t2, 0x1c
	slliw t3, t5, 0x18
	slliw t3, t3, 0x17
	slliw a5, t3, 0xd
	slliw s2, a5, 0x1d
	slliw t4, s2, 0x6
	slliw s7, t4, 0x3
	slliw s8, s7, 0x6
	slliw a0, s8, 0x11
	slliw s6, a0, 0x18
	slliw a0, s6, 0x1f
	slliw a4, a0, 0x3
	slliw a4, a4, 0x18
	slliw a0, a4, 0x17
	slliw a5, a0, 0xb
	slliw a5, a5, 0x12
	slliw a5, a5, 0x17
	slliw s5, a5, 0x1d
	slliw a4, s5, 0x9
	slliw a6, a4, 0x1c
	slliw s4, a6, 0x1a
	slliw t5, s4, 0x1a
	slliw a0, t5, 0x16
	csrr a3, time
	csrr s8, cycle
	csrr a1, instret
	sub a2, a3, s1
	sub s3, s8, s10
	sub s5, a1, s0
	li t5, 0
	csrr s10, time
	csrr a7, cycle
	csrr t3, instret
	slliw s9, t5, 0x1f
	slliw s6, s9, 0x1e
	slliw a6, s6, 0x1b
	slliw s7, a6, 0x19
	slliw t4, s7, 0x13
	slliw a1, t4, 0xd
	slliw s0, a1, 0x1c
	slliw s8, s0, 0x8
	slliw a6, s8, 0xf
	slliw s6, a6, 0x8
	slliw s1, s6, 0x5
	slliw t1, s1, 0x6
	slliw a1, t1, 0x5
	slliw t6, a1, 0x3
	slliw s4, t6, 0x6
	slliw s9, s4, 0x10
	slliw s6, s9, 0xf
	slliw a4, s6, 0x11
	slliw a4, a4, 0xe
	slliw s4, a4, 0x1f
	slliw t2, s4, 0x13
	slliw s6, t2, 0x1c
	slliw a2, s6, 0x5
	slliw s9, a2, 0x15
	slliw s0, s9, 0x8
	slliw t1, s0, 0x12
	slliw a5, t1, 0x4
	slliw s6, a5, 0xb
	slliw s4, s6, 0x14
	slliw a2, s4, 0x1a
	slliw s9, a2, 0x10
	slliw a5, s9, 0x7
	slliw a2, a5, 0x17
	slliw t2, a2, 0xc
	slliw a6, t2, 0x1e
	slliw a3, a6, 0x13
	slliw s4, a3, 0x1a
	slliw a0, s4, 0x10
	slliw a5, a0, 0x18
	slliw s6, a5, 0xc
	slliw s0, s6, 0x4
	slliw a2, s0, 0x1a
	slliw t1, a2, 0x1b
	slliw s0, t1, 0x17
	slliw a4, s0, 0x4
	slliw t4, a4, 0x4
	slliw a3, t4, 0x1e
	slliw t4, a3, 0x18
	slliw t6, t4, 0xd
	slliw t6, t6, 0x4
	slliw a0, t6, 0xd
	slliw a0, a0, 0x10
	slliw a0, a0, 0xf
	slliw t2, a0, 0xe
	slliw s0, t2, 0x18
	slliw t1, s0, 0xc
	slliw a6, t1, 0x9
	slliw t2, a6, 0x1b
	slliw a6, t2, 0x6
	slliw s9, a6, 0x1b
	slliw t5, s9, 0x6
	slliw s4, t5, 0x8
	slliw t2, s4, 0x13
	slliw a2, t2, 0x14
	slliw s0, a2, 0x5
	slliw t2, s0, 0x15
	slliw t6, t2, 0x6
	slliw a3, t6, 0x18
	slliw s11, a3, 0xb
	slliw s0, s11, 0xa
	slliw a2, s0, 0x10
	slliw s1, a2, 0x1c
	slliw t1, s1, 0xc
	slliw a5, t1, 0x3
	slliw s2, a5, 0x8
	slliw s4, s2, 0xf
	slliw s4, s4, 0x14
	slliw s1, s4, 0x7
	slliw a0, s1, 0x3
	slliw a4, a0, 0x17
	slliw s0, a4, 0x16
	slliw s0, s0, 0x1f
	slliw s6, s0, 0xe
	slliw s0, s6, 0x6
	slliw s0, s0, 0x15
	slliw s9, s0, 0x3
	slliw s2, s9, 0x7
	slliw s6, s2, 0x7
	slliw s7, s6, 0xc
	slliw a2, s7, 0xe
	slliw s2, a2, 0x13
	slliw a5, s2, 0x1a
	slliw t2, a5, 0x13
	slliw t2, t2, 0x9
	slliw a0, t2, 0x19
	slliw a0, a0, 0x1e
	slliw s6, a0, 0x1a
	slliw s9, s6, 0xf
	slliw t4, s9, 0x6
	slliw s0, t4, 0x3
	csrr t4, time
	csrr s1, cycle
	csrr s6, instret
	sub s4, t4, s10
	sub a2, s1, a7
	sub s9, s6, t3
	beq s3, a2, pass_label_22
	li t4, failed_addr
	ld a2, 0(t4)
	jr a2
pass_label_22:
	beq s5, s9, pass_label_23
	li s3, failed_addr
	ld a3, 0(s3)
	jr a3
pass_label_23:
SID_ZKT_03_SLLIW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SRLIW)
SID_ZKT_03_SRLIW:
	li sp, SID_ZKT_03_SRLIW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s5, 0
	csrr a4, time
	csrr a6, cycle
	csrr t6, instret
	srliw t5, s5, 0xb
	srliw s0, t5, 0x8
	srliw s10, s0, 0x11
	srliw t1, s10, 0x8
	srliw a3, t1, 0x14
	srliw s2, a3, 0x10
	srliw t1, s2, 0x18
	srliw a2, t1, 0x16
	srliw s4, a2, 0xa
	srliw s7, s4, 0x1a
	srliw a3, s7, 0x6
	srliw a1, a3, 0x6
	srliw t4, a1, 0x14
	srliw s8, t4, 0x11
	srliw a5, s8, 0x1b
	srliw a1, a5, 0x12
	srliw s5, a1, 0x1e
	srliw s8, s5, 0x19
	srliw t2, s8, 0x17
	srliw s0, t2, 0x8
	srliw a3, s0, 0x9
	srliw t4, a3, 0x15
	srliw a7, t4, 0xb
	srliw s8, a7, 0xc
	srliw s2, s8, 0x7
	srliw t5, s2, 0x8
	srliw t2, t5, 0x9
	srliw t2, t2, 0xb
	srliw s3, t2, 0xb
	srliw t2, s3, 0x8
	srliw s4, t2, 0x18
	srliw a3, s4, 0x9
	srliw s1, a3, 0x10
	srliw s10, s1, 0x1f
	srliw a0, s10, 0x1f
	srliw t4, a0, 0x13
	srliw s10, t4, 0xa
	srliw a1, s10, 0x1c
	srliw t5, a1, 0x18
	srliw s2, t5, 0x10
	srliw s0, s2, 0x7
	srliw s0, s0, 0xe
	srliw t5, s0, 0x15
	srliw s6, t5, 0xd
	srliw s10, s6, 0x1c
	srliw s2, s10, 0x1e
	srliw s4, s2, 0xe
	srliw a7, s4, 0x17
	srliw s0, a7, 0x4
	srliw t5, s0, 0x10
	srliw s0, t5, 0x3
	srliw t4, s0, 0x1d
	srliw s1, t4, 0x15
	srliw t3, s1, 0xa
	srliw a5, t3, 0x1b
	srliw a3, a5, 0x9
	srliw a5, a3, 0x1d
	srliw s9, a5, 0x15
	srliw s8, s9, 0x1c
	srliw t4, s8, 0x1c
	srliw s2, t4, 0xf
	srliw t5, s2, 0xc
	srliw t3, t5, 0x3
	srliw s8, t3, 0xc
	srliw s11, s8, 0x15
	srliw a2, s11, 0x11
	srliw t5, a2, 0x1f
	srliw s4, t5, 0x13
	srliw a2, s4, 0x16
	srliw a7, a2, 0x9
	srliw a7, a7, 0x3
	srliw s7, a7, 0x1c
	srliw a0, s7, 0xd
	srliw a7, a0, 0xe
	srliw s11, a7, 0x13
	srliw t3, s11, 0xc
	srliw s8, t3, 0x8
	srliw a2, s8, 0x19
	srliw t2, a2, 0xd
	srliw a5, t2, 0x8
	srliw s3, a5, 0x19
	srliw t5, s3, 0x17
	srliw s10, t5, 0x13
	srliw t2, s10, 0x11
	srliw a5, t2, 0x4
	srliw t5, a5, 0x18
	srliw s5, t5, 0x1c
	srliw s1, s5, 0x9
	srliw t1, s1, 0xe
	srliw s7, t1, 0x12
	srliw a5, s7, 0x8
	srliw s2, a5, 0xb
	srliw t2, s2, 0x16
	srliw a3, t2, 0x18
	srliw s6, a3, 0x15
	srliw s3, s6, 0x9
	srliw s0, s3, 0x13
	srliw s10, s0, 0x6
	srliw s4, s10, 0x13
	srliw s0, s4, 0x1e
	csrr t3, time
	csrr s0, cycle
	csrr t1, instret
	sub s5, t3, a4
	sub a7, s0, a6
	sub t4, t1, t6
	li a7, 0
	csrr a6, time
	csrr a1, cycle
	csrr t4, instret
	srliw s3, a7, 0x1b
	srliw t5, s3, 0xc
	srliw s9, t5, 0x9
	srliw s10, s9, 0x19
	srliw s6, s10, 0x1f
	srliw s6, s6, 0xf
	srliw s11, s6, 0x5
	srliw s5, s11, 0xf
	srliw s2, s5, 0x1d
	srliw t2, s2, 0x6
	srliw t5, t2, 0x17
	srliw s11, t5, 0x8
	srliw t6, s11, 0x14
	srliw s8, t6, 0x1a
	srliw s1, s8, 0xf
	srliw s5, s1, 0x14
	srliw s8, s5, 0x11
	srliw a2, s8, 0xf
	srliw s2, a2, 0x1b
	srliw t3, s2, 0x1f
	srliw a5, t3, 0xc
	srliw t1, a5, 0x1c
	srliw s4, t1, 0x15
	srliw a5, s4, 0x9
	srliw a0, a5, 0x1d
	srliw a5, a0, 0xf
	srliw a4, a5, 0x5
	srliw t5, a4, 0x1b
	srliw s9, t5, 0x17
	srliw a2, s9, 0x9
	srliw s2, a2, 0x8
	srliw t5, s2, 0x10
	srliw s2, t5, 0xc
	srliw a0, s2, 0x1b
	srliw t2, a0, 0xb
	srliw s11, t2, 0x1b
	srliw s11, s11, 0x4
	srliw a4, s11, 0x11
	srliw s8, a4, 0x17
	srliw a4, s8, 0xd
	srliw s6, a4, 0x14
	srliw s8, s6, 0x1d
	srliw t5, s8, 0xd
	srliw a7, t5, 0x16
	srliw t5, a7, 0x6
	srliw t1, t5, 0x9
	srliw s4, t1, 0x9
	srliw t3, s4, 0x9
	srliw t6, t3, 0x1a
	srliw s5, t6, 0x10
	srliw s5, s5, 0x4
	srliw t6, s5, 0x5
	srliw s2, t6, 0x6
	srliw a5, s2, 0x19
	srliw a3, a5, 0xc
	srliw s6, a3, 0x11
	srliw t5, s6, 0xc
	srliw t2, t5, 0x5
	srliw t2, t2, 0x16
	srliw s2, t2, 0x6
	srliw a2, s2, 0xd
	srliw s7, a2, 0x11
	srliw s10, s7, 0x1d
	srliw s6, s10, 0x14
	srliw s4, s6, 0x5
	srliw s8, s4, 0x9
	srliw s6, s8, 0x1f
	srliw s6, s6, 0x3
	srliw s9, s6, 0x17
	srliw t5, s9, 0x6
	srliw s2, t5, 0xc
	srliw s0, s2, 0x19
	srliw t1, s0, 0x10
	srliw a2, t1, 0x18
	srliw t2, a2, 0x12
	srliw s2, t2, 0xf
	srliw s6, s2, 0x1f
	srliw t2, s6, 0xc
	srliw a7, t2, 0x1b
	srliw t2, a7, 0x11
	srliw s2, t2, 0x1a
	srliw t1, s2, 0x12
	srliw t2, t1, 0x1f
	srliw a2, t2, 0x15
	srliw s6, a2, 0x9
	srliw s0, s6, 0xf
	srliw a5, s0, 0x3
	srliw a3, a5, 0x8
	srliw s10, a3, 0x11
	srliw s2, s10, 0x16
	srliw a0, s2, 0xa
	srliw s4, a0, 0x4
	srliw t1, s4, 0x1d
	srliw s7, t1, 0x6
	srliw s6, s7, 0x10
	srliw s9, s6, 0xd
	srliw t1, s9, 0x7
	srliw t6, t1, 0x13
	srliw t3, t6, 0x1e
	srliw s2, t3, 0x5
	csrr t5, time
	csrr s10, cycle
	csrr a4, instret
	sub t1, t5, a6
	sub s1, s10, a1
	sub s10, a4, t4
	li a5, 0
	csrr s7, time
	csrr t3, cycle
	csrr s3, instret
	srliw s0, a5, 0x14
	srliw a3, s0, 0x19
	srliw t5, a3, 0xf
	srliw a7, t5, 0x12
	srliw a6, a7, 0x10
	srliw a1, a6, 0x15
	srliw s2, a1, 0x10
	srliw a1, s2, 0xd
	srliw s5, a1, 0x14
	srliw s4, s5, 0x3
	srliw a3, s4, 0x3
	srliw s9, a3, 0x1f
	srliw t4, s9, 0x17
	srliw s2, t4, 0x13
	srliw a5, s2, 0x1f
	srliw t4, a5, 0x17
	srliw a2, t4, 0xf
	srliw a4, a2, 0x1b
	srliw s11, a4, 0x9
	srliw s8, s11, 0x18
	srliw t6, s8, 0xf
	srliw s4, t6, 0x1c
	srliw a6, s4, 0x8
	srliw t1, a6, 0xa
	srliw t6, t1, 0x14
	srliw t4, t6, 0x11
	srliw a0, t4, 0x4
	srliw a3, a0, 0x1d
	srliw s2, a3, 0x15
	srliw t1, s2, 0x4
	srliw t4, t1, 0x11
	srliw s11, t4, 0x8
	srliw s6, s11, 0xe
	srliw a5, s6, 0x3
	srliw s11, a5, 0x1f
	srliw t4, s11, 0x12
	srliw a2, t4, 0x1f
	srliw a5, a2, 0x10
	srliw s2, a5, 0x11
	srliw s5, s2, 0x1c
	srliw s6, s5, 0x1c
	srliw a0, s6, 0x1e
	srliw t2, a0, 0x8
	srliw a7, t2, 0x12
	srliw a7, a7, 0x7
	srliw s9, a7, 0xf
	srliw t5, s9, 0xa
	srliw a5, t5, 0x19
	srliw t6, a5, 0x7
	srliw s2, t6, 0x1b
	srliw a4, s2, 0x1a
	srliw s9, a4, 0xa
	srliw t4, s9, 0x16
	srliw s4, t4, 0x15
	srliw a1, s4, 0x17
	srliw s5, a1, 0x9
	srliw a0, s5, 0xc
	srliw a4, a0, 0x19
	srliw a0, a4, 0x15
	srliw s9, a0, 0xf
	srliw s2, s9, 0x16
	srliw t4, s2, 0x17
	srliw s11, t4, 0x10
	srliw a5, s11, 0x11
	srliw a4, a5, 0x6
	srliw s0, a4, 0x11
	srliw a4, s0, 0x1c
	srliw a3, a4, 0x14
	srliw a1, a3, 0x1d
	srliw t4, a1, 0x1a
	srliw a3, t4, 0x8
	srliw a4, a3, 0x10
	srliw a5, a4, 0x1a
	srliw a1, a5, 0x1c
	srliw a1, a1, 0x3
	srliw a0, a1, 0x10
	srliw s8, a0, 0x5
	srliw s0, s8, 0x17
	srliw t2, s0, 0x17
	srliw a0, t2, 0x5
	srliw t1, a0, 0xc
	srliw t5, t1, 0x15
	srliw s0, t5, 0x1f
	srliw s11, s0, 0x18
	srliw a0, s11, 0x10
	srliw a6, a0, 0x1d
	srliw a6, a6, 0x1a
	srliw a2, a6, 0x8
	srliw s5, a2, 0xb
	srliw t6, s5, 0x1e
	srliw t4, t6, 0x19
	srliw a5, t4, 0x1b
	srliw s4, a5, 0x18
	srliw a6, s4, 0x4
	srliw a7, a6, 0x13
	srliw t5, a7, 0xd
	srliw s0, t5, 0x1c
	srliw s11, s0, 0x14
	srliw s9, s11, 0x9
	srliw a4, s9, 0x15
	csrr a3, time
	csrr t1, cycle
	csrr a1, instret
	sub s6, a3, s7
	sub a6, t1, t3
	sub s3, a1, s3
	beq s1, a6, pass_label_24
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
pass_label_24:
	beq s10, s3, pass_label_25
	li a4, failed_addr
	ld s4, 0(a4)
	jr s4
pass_label_25:
SID_ZKT_03_SRLIW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SRAIW)
SID_ZKT_03_SRAIW:
	li sp, SID_ZKT_03_SRAIW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t6, 0
	csrr s4, time
	csrr s7, cycle
	csrr a1, instret
	sraiw t2, t6, 0x1c
	sraiw a6, t2, 0x1f
	sraiw s9, a6, 0x15
	sraiw t2, s9, 0x9
	sraiw a3, t2, 0x12
	sraiw a3, a3, 0xb
	sraiw t6, a3, 0x11
	sraiw s1, t6, 0x5
	sraiw s3, s1, 0x13
	sraiw a5, s3, 0x1c
	sraiw t3, a5, 0x15
	sraiw s8, t3, 0x9
	sraiw t2, s8, 0xb
	sraiw a6, t2, 0x3
	sraiw t6, a6, 0x1a
	sraiw s11, t6, 0x9
	sraiw s8, s11, 0x1d
	sraiw s9, s8, 0x14
	sraiw a3, s9, 0x1b
	sraiw s5, a3, 0x1b
	sraiw t4, s5, 0x6
	sraiw s0, t4, 0x16
	sraiw a4, s0, 0x1b
	sraiw s1, a4, 0x9
	sraiw a3, s1, 0x19
	sraiw s1, a3, 0x1f
	sraiw s1, s1, 0xd
	sraiw s8, s1, 0x19
	sraiw s3, s8, 0x16
	sraiw s2, s3, 0x16
	sraiw a4, s2, 0xb
	sraiw s1, a4, 0x4
	sraiw s6, s1, 0x1e
	sraiw t4, s6, 0xe
	sraiw a2, t4, 0x3
	sraiw a6, a2, 0x18
	sraiw a7, a6, 0x7
	sraiw a7, a7, 0x1c
	sraiw a3, a7, 0x12
	sraiw s9, a3, 0x17
	sraiw a3, s9, 0x13
	sraiw s3, a3, 0x1f
	sraiw s2, s3, 0x14
	sraiw a4, s2, 0x1a
	sraiw a5, a4, 0x1b
	sraiw s10, a5, 0x11
	sraiw a2, s10, 0x14
	sraiw s3, a2, 0xc
	sraiw a4, s3, 0x10
	sraiw t5, a4, 0x9
	sraiw a0, t5, 0x6
	sraiw s9, a0, 0xf
	sraiw a3, s9, 0xe
	sraiw a6, a3, 0x12
	sraiw a2, a6, 0xc
	sraiw a3, a2, 0x1d
	sraiw s10, a3, 0x7
	sraiw a3, s10, 0x5
	sraiw t3, a3, 0xb
	sraiw t2, t3, 0x15
	sraiw s9, t2, 0x12
	sraiw t3, s9, 0x11
	sraiw t5, t3, 0x3
	sraiw t2, t5, 0x19
	sraiw a2, t2, 0xc
	sraiw t2, a2, 0x18
	sraiw s9, t2, 0x12
	sraiw t4, s9, 0x4
	sraiw a7, t4, 0x1c
	sraiw s6, a7, 0x12
	sraiw a5, s6, 0xe
	sraiw t3, a5, 0x1d
	sraiw s3, t3, 0x17
	sraiw s3, s3, 0x1f
	sraiw s6, s3, 0x9
	sraiw a0, s6, 0x12
	sraiw s9, a0, 0xb
	sraiw t2, s9, 0x12
	sraiw s5, t2, 0x12
	sraiw a6, s5, 0x5
	sraiw s1, a6, 0x19
	sraiw a6, s1, 0x5
	sraiw s5, a6, 0x12
	sraiw s1, s5, 0x3
	sraiw t4, s1, 0x9
	sraiw t4, t4, 0x6
	sraiw a3, t4, 0x5
	sraiw a2, a3, 0x10
	sraiw s8, a2, 0x1e
	sraiw s11, s8, 0xb
	sraiw a7, s11, 0x18
	sraiw s10, a7, 0x1d
	sraiw t1, s10, 0x14
	sraiw t5, t1, 0xd
	sraiw t4, t5, 0x17
	sraiw t4, t4, 0x17
	sraiw s11, t4, 0x1c
	sraiw a6, s11, 0xc
	sraiw t4, a6, 0xe
	sraiw s1, t4, 0x3
	csrr t5, time
	csrr t3, cycle
	csrr s5, instret
	sub s4, t5, s4
	sub a0, t3, s7
	sub t1, s5, a1
	li t5, 0
	csrr a6, time
	csrr s10, cycle
	csrr t3, instret
	sraiw t5, t5, 0x15
	sraiw s7, t5, 0x1a
	sraiw t1, s7, 0xe
	sraiw t4, t1, 0x6
	sraiw s0, t4, 0xe
	sraiw s5, s0, 0x1c
	sraiw s6, s5, 0x16
	sraiw s1, s6, 0xa
	sraiw s0, s1, 0x10
	sraiw a0, s0, 0x17
	sraiw s9, a0, 0x4
	sraiw s0, s9, 0x1b
	sraiw a1, s0, 0x1e
	sraiw s5, a1, 0x1e
	sraiw a1, s5, 0x1b
	sraiw t4, a1, 0x16
	sraiw s4, t4, 0x1f
	sraiw a0, s4, 0x18
	sraiw a3, a0, 0x18
	sraiw a0, a3, 0x1e
	sraiw t4, a0, 0x19
	sraiw s11, t4, 0x5
	sraiw s4, s11, 0xd
	sraiw s2, s4, 0x3
	sraiw s8, s2, 0xa
	sraiw a2, s8, 0x3
	sraiw a5, a2, 0x10
	sraiw t1, a5, 0xb
	sraiw t5, t1, 0x9
	sraiw a5, t5, 0x13
	sraiw s11, a5, 0x6
	sraiw s5, s11, 0x8
	sraiw s2, s5, 0x15
	sraiw a0, s2, 0x8
	sraiw t4, a0, 0x9
	sraiw a4, t4, 0xc
	sraiw t6, a4, 0x1c
	sraiw s4, t6, 0x16
	sraiw t2, s4, 0x7
	sraiw t6, t2, 0x5
	sraiw s1, t6, 0xe
	sraiw t5, s1, 0x17
	sraiw t2, t5, 0xc
	sraiw a0, t2, 0x5
	sraiw t1, a0, 0x1c
	sraiw s5, t1, 0x1d
	sraiw t6, s5, 0x13
	sraiw a7, t6, 0xb
	sraiw t6, a7, 0x18
	sraiw s1, t6, 0xe
	sraiw s2, s1, 0x1d
	sraiw t4, s2, 0xc
	sraiw t1, t4, 0x6
	sraiw s9, t1, 0x13
	sraiw t1, s9, 0x4
	sraiw s6, t1, 0xb
	sraiw a0, s6, 0x1b
	sraiw s5, a0, 0x7
	sraiw s4, s5, 0x14
	sraiw s4, s4, 0x18
	sraiw t5, s4, 0x5
	sraiw s0, t5, 0xf
	sraiw a3, s0, 0x19
	sraiw a0, a3, 0x8
	sraiw a2, a0, 0x15
	sraiw s2, a2, 0x5
	sraiw t6, s2, 0x17
	sraiw t2, t6, 0xf
	sraiw s8, t2, 0x1a
	sraiw s6, s8, 0x11
	sraiw s9, s6, 0x11
	sraiw s2, s9, 0x6
	sraiw a7, s2, 0x18
	sraiw a7, a7, 0x14
	sraiw a0, a7, 0x19
	sraiw t4, a0, 0x1a
	sraiw t1, t4, 0x1c
	sraiw s5, t1, 0x3
	sraiw a7, s5, 0x6
	sraiw a0, a7, 0xc
	sraiw s5, a0, 0x1d
	sraiw a7, s5, 0x1a
	sraiw s6, a7, 0x8
	sraiw a2, s6, 0x1e
	sraiw s2, a2, 0x9
	sraiw a7, s2, 0x18
	sraiw a2, a7, 0xd
	sraiw t1, a2, 0x11
	sraiw t4, t1, 0x15
	sraiw s7, t4, 0x12
	sraiw s4, s7, 0x1e
	sraiw s11, s4, 0xf
	sraiw a0, s11, 0x7
	sraiw s0, a0, 0xc
	sraiw t6, s0, 0x14
	sraiw s11, t6, 0x7
	sraiw t1, s11, 0x16
	sraiw t1, t1, 0x1c
	sraiw a5, t1, 0x8
	sraiw a3, a5, 0x17
	csrr s3, time
	csrr t6, cycle
	csrr t2, instret
	sub a0, s3, a6
	sub s3, t6, s10
	sub a3, t2, t3
	li s9, 0
	csrr s8, time
	csrr a1, cycle
	csrr s2, instret
	sraiw t6, s9, 0x9
	sraiw a2, t6, 0xa
	sraiw s0, a2, 0x8
	sraiw t3, s0, 0x13
	sraiw s4, t3, 0xb
	sraiw s9, s4, 0xf
	sraiw t6, s9, 0x3
	sraiw t2, t6, 0x19
	sraiw a4, t2, 0x15
	sraiw s5, a4, 0x1a
	sraiw t1, s5, 0x1d
	sraiw t3, t1, 0x4
	sraiw s4, t3, 0x1e
	sraiw s11, s4, 0x1d
	sraiw s0, s11, 0x6
	sraiw t1, s0, 0x6
	sraiw t2, t1, 0x5
	sraiw t3, t2, 0xa
	sraiw a6, t3, 0x13
	sraiw t1, a6, 0x11
	sraiw s10, t1, 0x10
	sraiw s1, s10, 0x18
	sraiw a2, s1, 0x1c
	sraiw t4, a2, 0x5
	sraiw s4, t4, 0xd
	sraiw a6, s4, 0x1b
	sraiw s4, a6, 0x19
	sraiw a0, s4, 0x1e
	sraiw a4, a0, 0x1b
	sraiw s5, a4, 0x1c
	sraiw t2, s5, 0xd
	sraiw s1, t2, 0x18
	sraiw s4, s1, 0x17
	sraiw t1, s4, 0x16
	sraiw t4, t1, 0x10
	sraiw t1, t4, 0x1e
	sraiw a4, t1, 0x9
	sraiw a0, a4, 0x1c
	sraiw t5, a0, 0x9
	sraiw a0, t5, 0x4
	sraiw t3, a0, 0xd
	sraiw a0, t3, 0xa
	sraiw a2, a0, 0xb
	sraiw t3, a2, 0x1e
	sraiw t4, t3, 0x16
	sraiw t5, t4, 0x1a
	sraiw s6, t5, 0x14
	sraiw a5, s6, 0x13
	sraiw a6, a5, 0x11
	sraiw s4, a6, 0x4
	sraiw t4, s4, 0x18
	sraiw t1, t4, 0x17
	sraiw t6, t1, 0x3
	sraiw t6, t6, 0x1e
	sraiw a0, t6, 0x17
	sraiw s5, a0, 0x1b
	sraiw a7, s5, 0x6
	sraiw t3, a7, 0x10
	sraiw s1, t3, 0x17
	sraiw s5, s1, 0x16
	sraiw a5, s5, 0x9
	sraiw s9, a5, 0x13
	sraiw a7, s9, 0x9
	sraiw t5, a7, 0x7
	sraiw s6, t5, 0x11
	sraiw a2, s6, 0x18
	sraiw t2, a2, 0x19
	sraiw s5, t2, 0x1f
	sraiw a6, s5, 0xd
	sraiw t1, a6, 0x16
	sraiw s9, t1, 0x18
	sraiw t5, s9, 0xf
	sraiw a4, t5, 0x10
	sraiw a4, a4, 0x16
	sraiw a6, a4, 0x5
	sraiw a6, a6, 0x16
	sraiw s4, a6, 0xf
	sraiw a5, s4, 0x11
	sraiw s4, a5, 0xc
	sraiw s6, s4, 0x1c
	sraiw s7, s6, 0xc
	sraiw t5, s7, 0x1e
	sraiw s9, t5, 0xa
	sraiw a5, s9, 0x5
	sraiw s0, a5, 0xf
	sraiw a2, s0, 0x3
	sraiw s4, a2, 0x1b
	sraiw t4, s4, 0x9
	sraiw a2, t4, 0xe
	sraiw a0, a2, 0xf
	sraiw s5, a0, 0xe
	sraiw a6, s5, 0x1d
	sraiw t5, a6, 0x1e
	sraiw t5, t5, 0x11
	sraiw s11, t5, 0x8
	sraiw t6, s11, 0x7
	sraiw a5, t6, 0x4
	sraiw s6, a5, 0x16
	sraiw a4, s6, 0x14
	sraiw s1, a4, 0xf
	csrr a6, time
	csrr t4, cycle
	csrr s10, instret
	sub a6, a6, s8
	sub a2, t4, a1
	sub s4, s10, s2
	beq s3, a2, pass_label_26
	li t6, failed_addr
	ld s0, 0(t6)
	jr s0
pass_label_26:
	beq a3, s4, pass_label_27
	li s4, failed_addr
	ld s0, 0(s4)
	jr s0
pass_label_27:
SID_ZKT_03_SRAIW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_04)
SID_ZKT_04:
	li sp, SID_ZKT_04_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t3, 0
	li a3, 0
	beq t3, t3, pass_label_28
	li a3, failed_addr
	ld t5, 0(a3)
	jr t5
pass_label_28:
SID_ZKT_04_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_ADD)
SID_ZKT_05_ADD:
	li sp, SID_ZKT_05_ADD_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a2, 0
	csrr s3, time
	csrr s7, cycle
	csrr s4, instret
	li a0, 0x690
	add t1, a2, a0
	li s2, 0x405
	add s10, t1, s2
	li s0, 0x370
	add t3, s10, s0
	li a7, 0x30f
	add s9, t3, a7
	li t6, 0xdd
	add s1, s9, t6
	li a3, 0x708
	add t5, s1, a3
	li t6, 0x491
	add s10, t5, t6
	li t2, 0x4ab
	add t1, s10, t2
	li s0, 0x228
	add a4, t1, s0
	li s6, 0x30e
	add s8, a4, s6
	li t2, 0x582
	add s5, s8, t2
	li t4, 0x59a
	add s11, s5, t4
	li a4, 0x54c
	add a6, s11, a4
	li a5, 0x1ae
	add s11, a6, a5
	li s10, 0x311
	add t3, s11, s10
	li s10, 0x61c
	add s5, t3, s10
	li s10, 0xcf
	add a1, s5, s10
	li a6, 0x3bc
	add s9, a1, a6
	li a4, 0x3a4
	add s6, s9, a4
	li a7, 0x418
	add s11, s6, a7
	li t6, 0x7c9
	add s11, s11, t6
	li a6, 0x5dc
	add s2, s11, a6
	li a6, 0x139
	add a7, s2, a6
	li t6, 0x4d8
	add t2, a7, t6
	li t4, 0x66d
	add s10, t2, t4
	li a6, 0x64b
	add s6, s10, a6
	li a2, 0x793
	add a7, s6, a2
	li s1, 0x4fb
	add t6, a7, s1
	li a0, 0x4a6
	add s11, t6, a0
	li t3, 0x626
	add s2, s11, t3
	li s1, 0x14b
	add t5, s2, s1
	li a7, 0x2a7
	add a5, t5, a7
	li s0, 0x633
	add t6, a5, s0
	li s9, 0x447
	add t6, t6, s9
	li a2, 0xd2
	add t1, t6, a2
	li a3, 0x3
	add s11, t1, a3
	li t2, 0x549
	add a0, s11, t2
	li a7, 0x2b2
	add t2, a0, a7
	li s9, 0x6c4
	add t5, t2, s9
	li a5, 0x79c
	add t3, t5, a5
	li a1, 0x520
	add s9, t3, a1
	li a5, 0xaf
	add a0, s9, a5
	li s9, 0x51e
	add s11, a0, s9
	li t3, 0x267
	add a0, s11, t3
	li a5, 0x2cd
	add t5, a0, a5
	li s1, 0x12
	add a1, t5, s1
	li s2, 0x5fa
	add t5, a1, s2
	li s11, 0x5f6
	add s6, t5, s11
	li a5, 0x5c8
	add s0, s6, a5
	li t4, 0x559
	add t1, s0, t4
	li s0, 0x20c
	add t5, t1, s0
	li s10, 0x40a
	add t5, t5, s10
	li a1, 0x511
	add a2, t5, a1
	li t1, 0x3e2
	add s10, a2, t1
	li a0, 0x26b
	add t2, s10, a0
	li s9, 0x78b
	add s9, t2, s9
	li t6, 0x3e4
	add s10, s9, t6
	li t6, 0x561
	add a1, s10, t6
	li s9, 0xf2
	add a1, a1, s9
	li a3, 0x2a1
	add s10, a1, a3
	li t6, 0x5ac
	add a5, s10, t6
	li t1, 0x6fa
	add s9, a5, t1
	li a5, 0x2a
	add s11, s9, a5
	li t2, 0x67b
	add s10, s11, t2
	li t5, 0x4b5
	add s9, s10, t5
	li s5, 0x3c0
	add s8, s9, s5
	li t2, 0x305
	add a0, s8, t2
	li s8, 0x2e8
	add t1, a0, s8
	li t2, 0xee
	add t6, t1, t2
	li s0, 0x504
	add s6, t6, s0
	li t5, 0x6c2
	add t2, s6, t5
	li a0, 0x487
	add a7, t2, a0
	li s2, 0x64
	add t1, a7, s2
	li s2, 0x30a
	add t5, t1, s2
	li s10, 0x23f
	add a4, t5, s10
	li s2, 0x30b
	add s6, a4, s2
	li t2, 0x6dc
	add a1, s6, t2
	li a0, 0x14e
	add a0, a1, a0
	li t6, 0x773
	add s5, a0, t6
	li a5, 0x27d
	add s0, s5, a5
	li s1, 0x60a
	add s11, s0, s1
	li s8, 0x52f
	add t2, s11, s8
	li t3, 0x411
	add a4, t2, t3
	li a5, 0x6f1
	add s1, a4, a5
	li s0, 0x668
	add s10, s1, s0
	li t2, 0x122
	add s1, s10, t2
	li t4, 0x3e3
	add s1, s1, t4
	li t3, 0x71f
	add a3, s1, t3
	li s5, 0x4fa
	add s8, a3, s5
	li s1, 0x108
	add s5, s8, s1
	li a7, 0x1bd
	add a6, s5, a7
	li s1, 0x5bd
	add s10, a6, s1
	li s9, 0x6f6
	add a2, s10, s9
	li t2, 0x476
	add t5, a2, t2
	li t1, 0x75d
	add t1, t5, t1
	li s11, 0x4dc
	add a1, t1, s11
	li s9, 0x1a
	add s11, a1, s9
	li t1, 0x17a
	add a7, s11, t1
	li a4, 0x4df
	add a6, a7, a4
	li t2, 0x11a
	add s1, a6, t2
	csrr a3, time
	csrr s8, cycle
	csrr a4, instret
	sub t6, a3, s3
	sub a5, s8, s7
	sub a4, a4, s4
	li a3, 0
	csrr s2, time
	csrr a1, cycle
	csrr s8, instret
	li a4, 0x11b
	add t3, a3, a4
	li s0, 0x5f7
	add s4, t3, s0
	li s1, 0x97
	add s1, s4, s1
	li s0, 0xa5
	add s9, s1, s0
	li t2, 0x156
	add a4, s9, t2
	li t4, 0x1d8
	add s7, a4, t4
	li a5, 0x5d7
	add a4, s7, a5
	li a6, 0x11f
	add s7, a4, a6
	li s5, 0x1a9
	add t1, s7, s5
	li s4, 0x318
	add s9, t1, s4
	li s1, 0x64d
	add t2, s9, s1
	li s10, 0x16c
	add t5, t2, s10
	li s5, 0x723
	add s6, t5, s5
	li s3, 0x178
	add a3, s6, s3
	li a2, 0x2d3
	add t5, a3, a2
	li a7, 0x557
	add t5, t5, a7
	li t3, 0x10
	add a4, t5, t3
	li a6, 0x274
	add s0, a4, a6
	li a3, 0x153
	add s10, s0, a3
	li s4, 0x256
	add s7, s10, s4
	li a3, 0x7e4
	add s9, s7, a3
	li a2, 0x70f
	add s10, s9, a2
	li t3, 0x3bf
	add s10, s10, t3
	li s11, 0x453
	add a5, s10, s11
	li s3, 0x5c
	add s9, a5, s3
	li t2, 0x79f
	add a5, s9, t2
	li s7, 0x31a
	add a7, a5, s7
	li t2, 0x144
	add a4, a7, t2
	li t6, 0x572
	add a4, a4, t6
	li a0, 0x4f2
	add a7, a4, a0
	li s9, 0x76f
	add s5, a7, s9
	li t1, 0x2b4
	add a4, s5, t1
	li s1, 0x1fd
	add t3, a4, s1
	li a4, 0x19
	add t6, t3, a4
	li t1, 0x5ae
	add s1, t6, t1
	li a5, 0x128
	add s5, s1, a5
	li s10, 0x750
	add a6, s5, s10
	li a4, 0x14
	add s0, a6, a4
	li a5, 0x108
	add a5, s0, a5
	li s11, 0x4bb
	add a7, a5, s11
	li s10, 0x258
	add s0, a7, s10
	li a4, 0x73
	add t1, s0, a4
	li s0, 0x19b
	add a7, t1, s0
	li t5, 0x7d2
	add a3, a7, t5
	li a4, 0x3ae
	add s4, a3, a4
	li s6, 0xf3
	add t1, s4, s6
	li t5, 0x51f
	add s7, t1, t5
	li s6, 0x49c
	add t2, s7, s6
	li s11, 0x6c2
	add t3, t2, s11
	li t1, 0x2f2
	add s5, t3, t1
	li t5, 0x22b
	add s3, s5, t5
	li a7, 0x75a
	add s6, s3, a7
	li s4, 0x735
	add s3, s6, s4
	li a5, 0xab
	add s6, s3, a5
	li a2, 0x15c
	add s0, s6, a2
	li s5, 0x42a
	add t5, s0, s5
	li s3, 0x594
	add a6, t5, s3
	li a7, 0x89
	add a3, a6, a7
	li a0, 0x4f4
	add s3, a3, a0
	li s0, 0x271
	add a2, s3, s0
	li s1, 0xbc
	add s6, a2, s1
	li s1, 0x2ce
	add s10, s6, s1
	li s1, 0x223
	add t3, s10, s1
	li s4, 0x752
	add t1, t3, s4
	li s3, 0x7a4
	add s5, t1, s3
	li a6, 0x64d
	add t5, s5, a6
	li s1, 0x306
	add a5, t5, s1
	li s3, 0x641
	add a0, a5, s3
	li t3, 0x6c6
	add t1, a0, t3
	li a7, 0x76b
	add a2, t1, a7
	li a6, 0x759
	add t3, a2, a6
	li a0, 0x640
	add s5, t3, a0
	li a5, 0x66
	add s1, s5, a5
	li t3, 0x38d
	add t3, s1, t3
	li s0, 0x59c
	add t3, t3, s0
	li s1, 0x107
	add a0, t3, s1
	li t3, 0x5cd
	add a6, a0, t3
	li s9, 0x7a0
	add t3, a6, s9
	li s0, 0x17b
	add s10, t3, s0
	li t3, 0x37
	add a0, s10, t3
	li a2, 0x50
	add a3, a0, a2
	li a2, 0x669
	add t5, a3, a2
	li s4, 0x459
	add a2, t5, s4
	li s10, 0x1e
	add a6, a2, s10
	li t5, 0x700
	add t3, a6, t5
	li a6, 0x1ba
	add a2, t3, a6
	li t3, 0x4b1
	add t4, a2, t3
	li a7, 0x2f4
	add a0, t4, a7
	li a4, 0x777
	add a3, a0, a4
	li t2, 0x63
	add a6, a3, t2
	li a0, 0xb0
	add s4, a6, a0
	li t1, 0x481
	add t4, s4, t1
	li t1, 0x418
	add s0, t4, t1
	li t3, 0x293
	add s6, s0, t3
	li s7, 0x1c7
	add a3, s6, s7
	li t1, 0x223
	add s0, a3, t1
	li s11, 0x7f9
	add s0, s0, s11
	li s5, 0x772
	add s9, s0, s5
	li a7, 0x487
	add t2, s9, a7
	li a4, 0x6f6
	add t5, t2, a4
	csrr s0, time
	csrr t5, cycle
	csrr s11, instret
	sub s2, s0, s2
	sub a4, t5, a1
	sub t1, s11, s8
	li s10, 0
	csrr s2, time
	csrr a3, cycle
	csrr a5, instret
	li s4, 0x86
	add t3, s10, s4
	li t6, 0x64e
	add t3, t3, t6
	li s5, 0x6a5
	add t5, t3, s5
	li a7, 0x29e
	add t4, t5, a7
	li s8, 0x636
	add s10, t4, s8
	li s8, 0x41f
	add s5, s10, s8
	li s8, 0x2f6
	add s1, s5, s8
	li a1, 0x588
	add s9, s1, a1
	li s8, 0x7a2
	add s8, s9, s8
	li t2, 0x753
	add a0, s8, t2
	li a1, 0x629
	add t3, a0, a1
	li t5, 0x485
	add a7, t3, t5
	li t4, 0x51b
	add s6, a7, t4
	li a7, 0xe1
	add s6, s6, a7
	li t4, 0x2f5
	add t4, s6, t4
	li s0, 0x67b
	add t2, t4, s0
	li s10, 0x583
	add s4, t2, s10
	li t2, 0x11f
	add t2, s4, t2
	li a2, 0x99
	add s4, t2, a2
	li s8, 0x19c
	add s0, s4, s8
	li s1, 0x180
	add s11, s0, s1
	li t5, 0x49c
	add t6, s11, t5
	li t5, 0x3da
	add a7, t6, t5
	li a6, 0x14a
	add s11, a7, a6
	li a0, 0x11b
	add t6, s11, a0
	li t4, 0x503
	add s3, t6, t4
	li s0, 0x2f7
	add s1, s3, s0
	li s8, 0x31f
	add a0, s1, s8
	li s11, 0x20
	add a2, a0, s11
	li t4, 0x766
	add s7, a2, t4
	li t3, 0x12f
	add a1, s7, t3
	li t5, 0x29a
	add a1, a1, t5
	li s10, 0x27
	add s11, a1, s10
	li s3, 0x13e
	add t3, s11, s3
	li t5, 0x68f
	add a6, t3, t5
	li a1, 0x783
	add a1, a6, a1
	li s9, 0x73c
	add a2, a1, s9
	li s7, 0x722
	add s8, a2, s7
	li s0, 0x59f
	add s0, s8, s0
	li s5, 0x2de
	add s10, s0, s5
	li a1, 0x483
	add s0, s10, a1
	li s3, 0x37d
	add s8, s0, s3
	li s1, 0x468
	add t3, s8, s1
	li s4, 0x316
	add s11, t3, s4
	li t2, 0x4d4
	add t4, s11, t2
	li a1, 0x493
	add t3, t4, a1
	li t4, 0x20
	add a6, t3, t4
	li t2, 0x296
	add s11, a6, t2
	li t2, 0x74d
	add t5, s11, t2
	li s7, 0x2aa
	add s0, t5, s7
	li s5, 0x6a3
	add a6, s0, s5
	li s9, 0x4eb
	add s0, a6, s9
	li t3, 0x13f
	add t6, s0, t3
	li t2, 0x634
	add t3, t6, t2
	li a7, 0x442
	add s11, t3, a7
	li s0, 0x3c5
	add s9, s11, s0
	li a0, 0x206
	add a6, s9, a0
	li t4, 0xee
	add s9, a6, t4
	li a2, 0x3a
	add s9, s9, a2
	li a2, 0x42c
	add t2, s9, a2
	li t5, 0x20a
	add a0, t2, t5
	li t4, 0x61b
	add a1, a0, t4
	li s4, 0x25f
	add t5, a1, s4
	li s9, 0x11c
	add s5, t5, s9
	li s11, 0x71f
	add s6, s5, s11
	li s0, 0x55f
	add a2, s6, s0
	li s0, 0x7b7
	add s7, a2, s0
	li s0, 0x761
	add a0, s7, s0
	li s5, 0x353
	add s0, a0, s5
	li s10, 0x195
	add t6, s0, s10
	li t4, 0x97
	add s3, t6, t4
	li a1, 0x298
	add s3, s3, a1
	li t2, 0x3b7
	add s1, s3, t2
	li s0, 0x25b
	add s11, s1, s0
	li a0, 0x70a
	add a1, s11, a0
	li s6, 0x450
	add a1, a1, s6
	li s7, 0x50e
	add t3, a1, s7
	li s8, 0x11d
	add a0, t3, s8
	li t2, 0x1a1
	add s7, a0, t2
	li a7, 0x6bc
	add s7, s7, a7
	li s6, 0x240
	add s3, s7, s6
	li a6, 0x2c7
	add s11, s3, a6
	li a7, 0x5fc
	add s4, s11, a7
	li t5, 0x60d
	add a6, s4, t5
	li s10, 0x469
	add t2, a6, s10
	li t6, 0x4c6
	add s1, t2, t6
	li a6, 0x71b
	add t5, s1, a6
	li s4, 0x674
	add t5, t5, s4
	li s3, 0x127
	add t2, t5, s3
	li s11, 0x79c
	add a2, t2, s11
	li t6, 0x79b
	add s9, a2, t6
	li t4, 0x241
	add t5, s9, t4
	li t2, 0x7db
	add s8, t5, t2
	li a1, 0x35e
	add s8, s8, a1
	li s5, 0xb3
	add a1, s8, s5
	li a2, 0x747
	add s10, a1, a2
	li s6, 0x7bd
	add a7, s10, s6
	li s10, 0x5fe
	add a7, a7, s10
	li s4, 0x5f8
	add s1, a7, s4
	li t4, 0x510
	add a7, s1, t4
	csrr t3, time
	csrr a6, cycle
	csrr s10, instret
	sub t5, t3, s2
	sub s6, a6, a3
	sub a5, s10, a5
	beq a4, s6, pass_label_29
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
pass_label_29:
	beq t1, a5, pass_label_30
	li a6, failed_addr
	ld t2, 0(a6)
	jr t2
pass_label_30:
SID_ZKT_05_ADD_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SUB)
SID_ZKT_05_SUB:
	li sp, SID_ZKT_05_SUB_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 0
	csrr t4, time
	csrr s0, cycle
	csrr a7, instret
	li s1, 0x427
	sub a0, t2, s1
	li s10, 0x3c9
	sub t5, a0, s10
	li s1, 0x2c2
	sub s8, t5, s1
	li a5, 0x687
	sub a3, s8, a5
	li t5, 0x4a5
	sub a1, a3, t5
	li a0, 0x363
	sub s7, a1, a0
	li a2, 0x7c4
	sub a5, s7, a2
	li a0, 0x1bc
	sub t6, a5, a0
	li t1, 0x165
	sub s5, t6, t1
	li s4, 0x36
	sub a4, s5, s4
	li s5, 0x366
	sub s5, a4, s5
	li s7, 0x716
	sub s1, s5, s7
	li t5, 0x2ba
	sub s7, s1, t5
	li t1, 0x735
	sub s11, s7, t1
	li s3, 0x338
	sub t1, s11, s3
	li s11, 0x65d
	sub t1, t1, s11
	li a6, 0x721
	sub s6, t1, a6
	li a1, 0x385
	sub t2, s6, a1
	li a4, 0x323
	sub s1, t2, a4
	li s5, 0x382
	sub s7, s1, s5
	li t5, 0x3f2
	sub t3, s7, t5
	li s10, 0x2aa
	sub t5, t3, s10
	li s5, 0x353
	sub a6, t5, s5
	li a5, 0x1d0
	sub a2, a6, a5
	li a0, 0x699
	sub s5, a2, a0
	li a0, 0x447
	sub s6, s5, a0
	li a0, 0x49e
	sub t6, s6, a0
	li s9, 0x4cc
	sub s3, t6, s9
	li a4, 0x142
	sub s9, s3, a4
	li s10, 0x39f
	sub a5, s9, s10
	li t3, 0x325
	sub a6, a5, t3
	li s6, 0x5da
	sub a4, a6, s6
	li s5, 0x3f9
	sub t6, a4, s5
	li a0, 0x340
	sub a2, t6, a0
	li s5, 0x7d0
	sub s4, a2, s5
	li s1, 0x113
	sub a3, s4, s1
	li t6, 0x772
	sub s2, a3, t6
	li s3, 0x4a9
	sub s4, s2, s3
	li t2, 0x5e3
	sub t1, s4, t2
	li s9, 0x4ed
	sub s8, t1, s9
	li a1, 0x767
	sub s4, s8, a1
	li a2, 0x47c
	sub a4, s4, a2
	li a2, 0x6e6
	sub a4, a4, a2
	li a6, 0x391
	sub t5, a4, a6
	li a5, 0x29
	sub s9, t5, a5
	li t3, 0x441
	sub s1, s9, t3
	li t1, 0x360
	sub s8, s1, t1
	li a3, 0x50f
	sub s7, s8, a3
	li s4, 0x36c
	sub s3, s7, s4
	li s8, 0x4cf
	sub a4, s3, s8
	li t1, 0x28f
	sub t1, a4, t1
	li s8, 0x135
	sub t5, t1, s8
	li t1, 0x53f
	sub s11, t5, t1
	li s4, 0x7ae
	sub s3, s11, s4
	li a5, 0x324
	sub s11, s3, a5
	li s10, 0x63c
	sub s4, s11, s10
	li t5, 0x3e5
	sub t1, s4, t5
	li t6, 0xca
	sub s6, t1, t6
	li t1, 0x43c
	sub a6, s6, t1
	li s10, 0x2aa
	sub s5, a6, s10
	li s1, 0x1db
	sub s11, s5, s1
	li a1, 0x5ff
	sub a3, s11, a1
	li s10, 0x44a
	sub s1, a3, s10
	li t3, 0x110
	sub s5, s1, t3
	li s2, 0x4dc
	sub t6, s5, s2
	li s9, 0x75c
	sub s1, t6, s9
	li s5, 0x20c
	sub a3, s1, s5
	li a4, 0x516
	sub t6, a3, a4
	li s6, 0x40
	sub s1, t6, s6
	li t2, 0x687
	sub t5, s1, t2
	li a0, 0x325
	sub a1, t5, a0
	li t6, 0x196
	sub t1, a1, t6
	li s4, 0x798
	sub s9, t1, s4
	li s6, 0xcc
	sub t3, s9, s6
	li s1, 0x293
	sub s9, t3, s1
	li a6, 0x4cd
	sub a5, s9, a6
	li s1, 0x131
	sub a5, a5, s1
	li s3, 0x62f
	sub s7, a5, s3
	li a2, 0x700
	sub s10, s7, a2
	li a0, 0x5c
	sub s4, s10, a0
	li t6, 0x6ad
	sub a3, s4, t6
	li s1, 0x700
	sub t5, a3, s1
	li a5, 0x6e3
	sub t1, t5, a5
	li s6, 0x68b
	sub s9, t1, s6
	li s3, 0x1b9
	sub s4, s9, s3
	li s10, 0x1cf
	sub s6, s4, s10
	li t3, 0x395
	sub a0, s6, t3
	li s9, 0x1d4
	sub t3, a0, s9
	li a0, 0x610
	sub s7, t3, a0
	li s5, 0x73a
	sub t6, s7, s5
	li t5, 0x1a2
	sub s1, t6, t5
	li s9, 0x237
	sub a1, s1, s9
	li a5, 0x68d
	sub t1, a1, a5
	li s7, 0x263
	sub s6, t1, s7
	li s10, 0x71a
	sub t1, s6, s10
	li t2, 0x7b7
	sub s5, t1, t2
	li s1, 0x4a
	sub a2, s5, s1
	li s2, 0xf
	sub s3, a2, s2
	li a4, 0x603
	sub a4, s3, a4
	li t6, 0x662
	sub a5, a4, t6
	csrr a6, time
	csrr a0, cycle
	csrr s6, instret
	sub s4, a6, t4
	sub a2, a0, s0
	sub t5, s6, a7
	li t1, 0
	csrr s0, time
	csrr s5, cycle
	csrr s11, instret
	li t3, 0x63e
	sub s2, t1, t3
	li a4, 0x1f9
	sub a6, s2, a4
	li s4, 0x770
	sub a1, a6, s4
	li s7, 0x1a5
	sub t5, a1, s7
	li a4, 0x3fe
	sub s1, t5, a4
	li s4, 0x30e
	sub s8, s1, s4
	li s9, 0x74e
	sub s1, s8, s9
	li t6, 0x7a0
	sub t1, s1, t6
	li a2, 0x35e
	sub s10, t1, a2
	li s9, 0x6b4
	sub s4, s10, s9
	li s3, 0x3bb
	sub a5, s4, s3
	li t4, 0x67f
	sub t1, a5, t4
	li s9, 0x1ea
	sub s3, t1, s9
	li t4, 0x519
	sub s4, s3, t4
	li a5, 0x41c
	sub s8, s4, a5
	li a5, 0x579
	sub s2, s8, a5
	li t4, 0x56a
	sub a3, s2, t4
	li s1, 0x4d
	sub a5, a3, s1
	li t6, 0x4cd
	sub t4, a5, t6
	li t1, 0x142
	sub s7, t4, t1
	li s10, 0x650
	sub t5, s7, s10
	li a0, 0x5d3
	sub s6, t5, a0
	li a7, 0x77
	sub t5, s6, a7
	li a1, 0x2b6
	sub s2, t5, a1
	li a4, 0x6f9
	sub s4, s2, a4
	li t6, 0x5cb
	sub s8, s4, t6
	li t3, 0x40e
	sub a0, s8, t3
	li s7, 0x15c
	sub a2, a0, s7
	li t6, 0x226
	sub s4, a2, t6
	li a1, 0x4fe
	sub a1, s4, a1
	li t1, 0x58f
	sub s3, a1, t1
	li a3, 0x103
	sub s2, s3, a3
	li a5, 0x2ee
	sub a4, s2, a5
	li a5, 0x3bc
	sub t3, a4, a5
	li t5, 0x287
	sub t4, t3, t5
	li t1, 0x42c
	sub a3, t4, t1
	li a2, 0x2b5
	sub a1, a3, a2
	li a5, 0x683
	sub s4, a1, a5
	li a1, 0x509
	sub t3, s4, a1
	li t6, 0x411
	sub t5, t3, t6
	li t6, 0x38f
	sub t1, t5, t6
	li t3, 0x60f
	sub a5, t1, t3
	li a1, 0x6b6
	sub s3, a5, a1
	li t3, 0x2d3
	sub a4, s3, t3
	li s7, 0x669
	sub t6, a4, s7
	li a3, 0x671
	sub s6, t6, a3
	li a2, 0x171
	sub s4, s6, a2
	li a1, 0x2dc
	sub s10, s4, a1
	li t2, 0x273
	sub t5, s10, t2
	li s3, 0x2ef
	sub a7, t5, s3
	li t3, 0x4a7
	sub s10, a7, t3
	li a3, 0x33d
	sub a4, s10, a3
	li s8, 0x5cd
	sub a3, a4, s8
	li a0, 0x7f5
	sub s2, a3, a0
	li t6, 0xf4
	sub s3, s2, t6
	li s2, 0x1b
	sub s6, s3, s2
	li a0, 0x79b
	sub s9, s6, a0
	li a3, 0x4e3
	sub s6, s9, a3
	li a6, 0x1ad
	sub s8, s6, a6
	li a6, 0x7e7
	sub s8, s8, a6
	li a1, 0x6c
	sub a1, s8, a1
	li t4, 0x6b6
	sub a2, a1, t4
	li s6, 0x448
	sub s9, a2, s6
	li a3, 0x4a
	sub s4, s9, a3
	li t6, 0x150
	sub s10, s4, t6
	li s8, 0x336
	sub a2, s10, s8
	li a0, 0x425
	sub s10, a2, a0
	li t3, 0x1b4
	sub s6, s10, t3
	li a6, 0x6d5
	sub t1, s6, a6
	li s7, 0x43b
	sub a6, t1, s7
	li a2, 0x367
	sub t5, a6, a2
	li s9, 0x238
	sub s6, t5, s9
	li a4, 0x2e1
	sub s3, s6, a4
	li s9, 0x658
	sub t6, s3, s9
	li s6, 0x3e9
	sub a0, t6, s6
	li s7, 0x340
	sub s4, a0, s7
	li s2, 0x728
	sub a0, s4, s2
	li s6, 0x6fa
	sub a4, a0, s6
	li s7, 0x64f
	sub s10, a4, s7
	li t5, 0x185
	sub a7, s10, t5
	li a5, 0x30c
	sub s7, a7, a5
	li t3, 0x30f
	sub a6, s7, t3
	li s7, 0x263
	sub t1, a6, s7
	li t2, 0x615
	sub a6, t1, t2
	li a0, 0x4a2
	sub t1, a6, a0
	li t4, 0x673
	sub s6, t1, t4
	li s10, 0x3f
	sub t2, s6, s10
	li s6, 0x634
	sub a7, t2, s6
	li s6, 0x690
	sub t3, a7, s6
	li a3, 0x2d0
	sub a7, t3, a3
	li t2, 0x138
	sub a1, a7, t2
	li a4, 0x1eb
	sub a5, a1, a4
	li s1, 0x525
	sub s2, a5, s1
	li a5, 0x379
	sub s10, s2, a5
	li a0, 0x127
	sub t5, s10, a0
	li t3, 0x16c
	sub s9, t5, t3
	li a1, 0x5e3
	sub t5, s9, a1
	li s6, 0x7b5
	sub s3, t5, s6
	li t4, 0x412
	sub s10, s3, t4
	li s1, 0x140
	sub t5, s10, s1
	csrr a1, time
	csrr t3, cycle
	csrr a6, instret
	sub s1, a1, s0
	sub s8, t3, s5
	sub s0, a6, s11
	li a0, 0
	csrr a6, time
	csrr s10, cycle
	csrr a5, instret
	li t5, 0x4dd
	sub s1, a0, t5
	li t4, 0x479
	sub a0, s1, t4
	li t4, 0x3e9
	sub s5, a0, t4
	li s7, 0x25f
	sub t6, s5, s7
	li t3, 0x51f
	sub t5, t6, t3
	li a4, 0x17
	sub a0, t5, a4
	li a3, 0x509
	sub t6, a0, a3
	li a4, 0x2cf
	sub s5, t6, a4
	li t6, 0x19a
	sub s1, s5, t6
	li s6, 0x58c
	sub s2, s1, s6
	li t3, 0x3de
	sub s1, s2, t3
	li s2, 0x569
	sub t6, s1, s2
	li s6, 0x756
	sub s9, t6, s6
	li s3, 0x6ff
	sub t2, s9, s3
	li s9, 0x618
	sub s1, t2, s9
	li s11, 0x524
	sub a4, s1, s11
	li a1, 0x48f
	sub t6, a4, a1
	li a0, 0x71
	sub t5, t6, a0
	li s6, 0x7e4
	sub s11, t5, s6
	li t3, 0x31e
	sub s2, s11, t3
	li a2, 0x458
	sub t3, s2, a2
	li s6, 0x428
	sub t6, t3, s6
	li s11, 0x40e
	sub s5, t6, s11
	li a4, 0x472
	sub a2, s5, a4
	li s2, 0x39f
	sub s4, a2, s2
	li t4, 0x48e
	sub a0, s4, t4
	li a1, 0x11c
	sub a3, a0, a1
	li s6, 0x273
	sub s5, a3, s6
	li t4, 0x1c8
	sub a4, s5, t4
	li s3, 0x27a
	sub a1, a4, s3
	li a7, 0x44a
	sub s2, a1, a7
	li a7, 0x278
	sub s6, s2, a7
	li s4, 0x5a
	sub a3, s6, s4
	li a1, 0x19f
	sub s3, a3, a1
	li t1, 0x80
	sub a3, s3, t1
	li a1, 0x19d
	sub a7, a3, a1
	li s7, 0xe8
	sub t1, a7, s7
	li t4, 0x5f
	sub s6, t1, t4
	li t5, 0x4ff
	sub t2, s6, t5
	li a1, 0x7d9
	sub s7, t2, a1
	li s9, 0x512
	sub a3, s7, s9
	li t1, 0x695
	sub s3, a3, t1
	li s5, 0xad
	sub a0, s3, s5
	li s11, 0xb
	sub t4, a0, s11
	li t1, 0x2e1
	sub t4, t4, t1
	li t3, 0x1f8
	sub s9, t4, t3
	li t4, 0x5d5
	sub t6, s9, t4
	li s11, 0x209
	sub t6, t6, s11
	li s9, 0x34a
	sub a7, t6, s9
	li a4, 0x55b
	sub s3, a7, a4
	li a2, 0x772
	sub a2, s3, a2
	li s9, 0x273
	sub s3, a2, s9
	li s6, 0x8a
	sub s5, s3, s6
	li a2, 0x39c
	sub s9, s5, a2
	li s2, 0x5d8
	sub t4, s9, s2
	li s5, 0x71f
	sub t2, t4, s5
	li s9, 0x5d1
	sub s7, t2, s9
	li t1, 0x433
	sub a2, s7, t1
	li t5, 0x1a5
	sub s3, a2, t5
	li t1, 0x108
	sub a1, s3, t1
	li s7, 0x8a
	sub s3, a1, s7
	li s6, 0x5c6
	sub t3, s3, s6
	li s9, 0x553
	sub s4, t3, s9
	li s11, 0x4f4
	sub a2, s4, s11
	li t5, 0x1c1
	sub t5, a2, t5
	li s6, 0x45c
	sub a4, t5, s6
	li s6, 0x7d2
	sub a3, a4, s6
	li t2, 0x7f1
	sub a7, a3, t2
	li t4, 0xef
	sub s11, a7, t4
	li s7, 0x146
	sub a0, s11, s7
	li a7, 0x228
	sub a7, a0, a7
	li s1, 0x142
	sub a4, a7, s1
	li a2, 0x6f6
	sub s6, a4, a2
	li a3, 0x30a
	sub s11, s6, a3
	li s9, 0x69e
	sub a3, s11, s9
	li s5, 0x3b7
	sub a7, a3, s5
	li t2, 0x67e
	sub t4, a7, t2
	li s9, 0x2a8
	sub s6, t4, s9
	li a1, 0x58f
	sub a4, s6, a1
	li s6, 0x4d5
	sub s1, a4, s6
	li a1, 0x334
	sub s4, s1, a1
	li a1, 0x43b
	sub a1, s4, a1
	li t4, 0x2ab
	sub s6, a1, t4
	li s11, 0x5ec
	sub s7, s6, s11
	li a7, 0x386
	sub s3, s7, a7
	li a2, 0x139
	sub t4, s3, a2
	li s5, 0x592
	sub s9, t4, s5
	li t5, 0x427
	sub a2, s9, t5
	li s2, 0x5c
	sub s6, a2, s2
	li t1, 0x796
	sub a1, s6, t1
	li t2, 0x470
	sub s2, a1, t2
	li s4, 0x297
	sub s2, s2, s4
	li t5, 0x195
	sub s5, s2, t5
	li a4, 0x3c
	sub t6, s5, a4
	li s4, 0x655
	sub s9, t6, s4
	li s7, 0x103
	sub a1, s9, s7
	li s1, 0x528
	sub t2, a1, s1
	li a2, 0x2d0
	sub a2, t2, a2
	li t5, 0x78a
	sub t6, a2, t5
	li s6, 0x768
	sub s9, t6, s6
	csrr a0, time
	csrr a3, cycle
	csrr s4, instret
	sub a4, a0, a6
	sub a0, a3, s10
	sub s2, s4, a5
	beq s8, a0, pass_label_31
	li a4, failed_addr
	ld s9, 0(a4)
	jr s9
pass_label_31:
	beq s0, s2, pass_label_32
	li a4, failed_addr
	ld s8, 0(a4)
	jr s8
pass_label_32:
SID_ZKT_05_SUB_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SLL)
SID_ZKT_05_SLL:
	li sp, SID_ZKT_05_SLL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s1, 0
	csrr a1, time
	csrr t3, cycle
	csrr s7, instret
	li a4, 0x397
	sll t6, s1, a4
	li a0, 0x369
	sll a4, t6, a0
	li s0, 0x635
	sll a3, a4, s0
	li s2, 0x19
	sll a5, a3, s2
	li s9, 0x15
	sll t4, a5, s9
	li s10, 0x378
	sll a2, t4, s10
	li t6, 0x13d
	sll s8, a2, t6
	li s5, 0x22b
	sll s5, s8, s5
	li a7, 0x6ef
	sll s3, s5, a7
	li s1, 0x6af
	sll s3, s3, s1
	li s8, 0x484
	sll t2, s3, s8
	li t1, 0x5f2
	sll a4, t2, t1
	li s11, 0x168
	sll s10, a4, s11
	li a7, 0x2e0
	sll s3, s10, a7
	li t1, 0x36d
	sll s4, s3, t1
	li s6, 0x4c5
	sll s4, s4, s6
	li a2, 0x304
	sll t6, s4, a2
	li t5, 0x35
	sll s11, t6, t5
	li s0, 0x736
	sll s9, s11, s0
	li s5, 0x5f8
	sll t6, s9, s5
	li a7, 0x752
	sll a6, t6, a7
	li s5, 0x71e
	sll s11, a6, s5
	li t4, 0x509
	sll t6, s11, t4
	li s1, 0x745
	sll a4, t6, s1
	li s11, 0x3bf
	sll s1, a4, s11
	li t2, 0x749
	sll s8, s1, t2
	li a5, 0x7a8
	sll s1, s8, a5
	li t1, 0x168
	sll t1, s1, t1
	li a2, 0x262
	sll s8, t1, a2
	li s9, 0x6c3
	sll a5, s8, s9
	li s3, 0x53a
	sll s5, a5, s3
	li a6, 0x4b1
	sll s4, s5, a6
	li t5, 0x523
	sll t2, s4, t5
	li t5, 0x2c
	sll s1, t2, t5
	li s4, 0x57e
	sll a0, s1, s4
	li t1, 0x1fb
	sll s8, a0, t1
	li a4, 0x71b
	sll s11, s8, a4
	li t6, 0x5fb
	sll s5, s11, t6
	li a7, 0x2e4
	sll s0, s5, a7
	li s10, 0x31b
	sll t2, s0, s10
	li t1, 0x2cc
	sll t2, t2, t1
	li a3, 0x223
	sll s8, t2, a3
	li s2, 0x245
	sll t2, s8, s2
	li a4, 0x2b4
	sll a2, t2, a4
	li t4, 0x97
	sll a3, a2, t4
	li s2, 0x357
	sll s0, a3, s2
	li s8, 0x7a7
	sll s1, s0, s8
	li s6, 0x647
	sll t2, s1, s6
	li a6, 0x55c
	sll t4, t2, a6
	li s6, 0x38f
	sll a3, t4, s6
	li t1, 0x619
	sll a3, a3, t1
	li a7, 0x726
	sll s4, a3, a7
	li t2, 0x617
	sll s1, s4, t2
	li t2, 0x5da
	sll a3, s1, t2
	li s5, 0x36d
	sll a6, a3, s5
	li a7, 0x3cd
	sll s11, a6, a7
	li a4, 0x75f
	sll s1, s11, a4
	li s8, 0x7f9
	sll s3, s1, s8
	li a7, 0xd5
	sll s6, s3, a7
	li s3, 0x235
	sll t6, s6, s3
	li a7, 0x2a5
	sll a6, t6, a7
	li a3, 0x61c
	sll t2, a6, a3
	li s1, 0xe1
	sll a5, t2, s1
	li s9, 0x3ae
	sll s1, a5, s9
	li t1, 0x757
	sll s8, s1, t1
	li s10, 0x2bb
	sll a3, s8, s10
	li t2, 0x37e
	sll s5, a3, t2
	li a2, 0x9a
	sll t1, s5, a2
	li t4, 0x180
	sll s4, t1, t4
	li t2, 0x2e4
	sll s8, s4, t2
	li s5, 0x7d5
	sll s6, s8, s5
	li s10, 0x7da
	sll a4, s6, s10
	li a6, 0x1ad
	sll s3, a4, a6
	li a7, 0x126
	sll t4, s3, a7
	li t5, 0x7f4
	sll t5, t4, t5
	li t1, 0x340
	sll a6, t5, t1
	li s8, 0x4d8
	sll s8, a6, s8
	li t1, 0x473
	sll s2, s8, t1
	li t6, 0x742
	sll t2, s2, t6
	li t5, 0x328
	sll s5, t2, t5
	li s6, 0x3c8
	sll t4, s5, s6
	li s10, 0xb9
	sll s0, t4, s10
	li a0, 0x1f6
	sll s11, s0, a0
	li s1, 0x28c
	sll t2, s11, s1
	li s4, 0xb8
	sll a3, t2, s4
	li a0, 0x44c
	sll a6, a3, a0
	li s10, 0x462
	sll s9, a6, s10
	li t4, 0x573
	sll a6, s9, t4
	li a5, 0x9
	sll a2, a6, a5
	li a6, 0x50b
	sll a6, a2, a6
	li s1, 0x786
	sll s8, a6, s1
	li t6, 0x71
	sll a0, s8, t6
	li s4, 0x3a9
	sll s10, a0, s4
	li s11, 0x4ec
	sll s5, s10, s11
	li s2, 0xe6
	sll s8, s5, s2
	li s2, 0x1bb
	sll t2, s8, s2
	li s3, 0x42a
	sll s4, t2, s3
	li s6, 0x7a2
	sll t4, s4, s6
	li a3, 0x645
	sll a5, t4, a3
	li s6, 0x461
	sll s2, a5, s6
	csrr t4, time
	csrr t2, cycle
	csrr s3, instret
	sub s0, t4, a1
	sub t1, t2, t3
	sub t5, s3, s7
	li s4, 0
	csrr s10, time
	csrr a5, cycle
	csrr a0, instret
	li t2, 0x4c0
	sll a4, s4, t2
	li t4, 0x86
	sll s4, a4, t4
	li a4, 0x3c8
	sll s11, s4, a4
	li t3, 0x3de
	sll s7, s11, t3
	li s6, 0x302
	sll t6, s7, s6
	li a1, 0x379
	sll t5, t6, a1
	li a2, 0x7d4
	sll t5, t5, a2
	li s4, 0x2c3
	sll a2, t5, s4
	li a6, 0x409
	sll a4, a2, a6
	li a2, 0x433
	sll a4, a4, a2
	li a3, 0x102
	sll s11, a4, a3
	li t3, 0x6f7
	sll s6, s11, t3
	li s3, 0x84
	sll t6, s6, s3
	li a6, 0x510
	sll s5, t6, a6
	li s0, 0x3ab
	sll a6, s5, s0
	li a4, 0x53f
	sll a6, a6, a4
	li s7, 0x41c
	sll s4, a6, s7
	li a7, 0x226
	sll t4, s4, a7
	li a7, 0x2ee
	sll s8, t4, a7
	li s11, 0x485
	sll s11, s8, s11
	li s0, 0x3b7
	sll s3, s11, s0
	li t1, 0x5e5
	sll s7, s3, t1
	li s5, 0x205
	sll s4, s7, s5
	li t4, 0x1e9
	sll a2, s4, t4
	li s3, 0x388
	sll a2, a2, s3
	li s4, 0x706
	sll t4, a2, s4
	li a2, 0x702
	sll s7, t4, a2
	li t4, 0x674
	sll s3, s7, t4
	li t5, 0x6c4
	sll a2, s3, t5
	li t6, 0x2ce
	sll s8, a2, t6
	li s3, 0x359
	sll a3, s8, s3
	li a6, 0x1fa
	sll a1, a3, a6
	li s1, 0x25c
	sll t2, a1, s1
	li a1, 0xc7
	sll t2, t2, a1
	li s11, 0xd
	sll s6, t2, s11
	li a6, 0x4d1
	sll s2, s6, a6
	li a3, 0x607
	sll s8, s2, a3
	li a6, 0x6f6
	sll s4, s8, a6
	li s11, 0x4b7
	sll a2, s4, s11
	li s8, 0x4f2
	sll a3, a2, s8
	li s2, 0x6f4
	sll a7, a3, s2
	li a1, 0x173
	sll s2, a7, a1
	li s11, 0x7aa
	sll t5, s2, s11
	li s5, 0x122
	sll t6, t5, s5
	li s9, 0x7de
	sll t4, t6, s9
	li s5, 0x3af
	sll s8, t4, s5
	li s2, 0x542
	sll t1, s8, s2
	li s0, 0x448
	sll a4, t1, s0
	li s4, 0x204
	sll s11, a4, s4
	li s1, 0x6ee
	sll s4, s11, s1
	li t2, 0x9e
	sll t6, s4, t2
	li s8, 0x17f
	sll s7, t6, s8
	li s8, 0x21d
	sll s9, s7, s8
	li t1, 0x3ca
	sll s8, s9, t1
	li s11, 0xda
	sll a3, s8, s11
	li t6, 0x64a
	sll s11, a3, t6
	li a4, 0x3bf
	sll s5, s11, a4
	li s8, 0x148
	sll s8, s5, s8
	li a1, 0x3d3
	sll s2, s8, a1
	li s3, 0x126
	sll a2, s2, s3
	li s8, 0x325
	sll s3, a2, s8
	li s8, 0x5ec
	sll t3, s3, s8
	li s4, 0x693
	sll s7, t3, s4
	li a7, 0xbd
	sll s5, s7, a7
	li s2, 0x7f9
	sll t4, s5, s2
	li a4, 0x364
	sll t1, t4, a4
	li t4, 0x6ee
	sll a2, t1, t4
	li t6, 0x56c
	sll t5, a2, t6
	li s4, 0x548
	sll s4, t5, s4
	li s6, 0x1f5
	sll s6, s4, s6
	li a3, 0x3c4
	sll t2, s6, a3
	li t3, 0x600
	sll t1, t2, t3
	li s3, 0x477
	sll t6, t1, s3
	li a6, 0x7b8
	sll a2, t6, a6
	li a1, 0x584
	sll t1, a2, a1
	li s3, 0x445
	sll a6, t1, s3
	li s11, 0x381
	sll s9, a6, s11
	li s0, 0x12d
	sll t1, s9, s0
	li s0, 0x179
	sll s0, t1, s0
	li s4, 0x535
	sll s3, s0, s4
	li s8, 0x372
	sll s0, s3, s8
	li a7, 0x4ac
	sll t2, s0, a7
	li s5, 0x431
	sll s9, t2, s5
	li a4, 0x627
	sll a6, s9, a4
	li t1, 0x1b
	sll s9, a6, t1
	li s1, 0x552
	sll a4, s9, s1
	li s0, 0x426
	sll s6, a4, s0
	li s0, 0x5cf
	sll t1, s6, s0
	li t6, 0x6f2
	sll s1, t1, t6
	li a6, 0x57c
	sll t5, s1, a6
	li t6, 0x67b
	sll s8, t5, t6
	li s2, 0x446
	sll a7, s8, s2
	li s11, 0x7e4
	sll s7, a7, s11
	li s5, 0x613
	sll a6, s7, s5
	li s5, 0x402
	sll a1, a6, s5
	li s8, 0x4e
	sll s11, a1, s8
	li t3, 0x28b
	sll t1, s11, t3
	li a2, 0x642
	sll t3, t1, a2
	li s6, 0x25
	sll s3, t3, s6
	li a7, 0x40d
	sll s1, s3, a7
	csrr t2, time
	csrr a6, cycle
	csrr s9, instret
	sub t4, t2, s10
	sub s0, a6, a5
	sub a7, s9, a0
	li t4, 0
	csrr t2, time
	csrr s1, cycle
	csrr t6, instret
	li t1, 0x446
	sll a0, t4, t1
	li s2, 0x44a
	sll s9, a0, s2
	li a4, 0x602
	sll s4, s9, a4
	li s11, 0x10
	sll a0, s4, s11
	li a2, 0x3bd
	sll a1, a0, a2
	li s3, 0x197
	sll s4, a1, s3
	li s9, 0x401
	sll s9, s4, s9
	li t4, 0x372
	sll t3, s9, t4
	li a5, 0x21a
	sll a3, t3, a5
	li s10, 0x7af
	sll s4, a3, s10
	li s11, 0x1ed
	sll s3, s4, s11
	li a5, 0x44
	sll a2, s3, a5
	li t1, 0x59e
	sll a3, a2, t1
	li s5, 0x406
	sll s9, a3, s5
	li s11, 0x73a
	sll s10, s9, s11
	li a2, 0x1d1
	sll a1, s10, a2
	li a4, 0x422
	sll a3, a1, a4
	li a0, 0x344
	sll s7, a3, a0
	li s2, 0x5d2
	sll t5, s7, s2
	li t1, 0x3e1
	sll s9, t5, t1
	li a1, 0x1af
	sll s7, s9, a1
	li s4, 0x4c7
	sll s3, s7, s4
	li a5, 0x113
	sll t4, s3, a5
	li a4, 0xf5
	sll s6, t4, a4
	li s11, 0x6a5
	sll t5, s6, s11
	li s3, 0x444
	sll s9, t5, s3
	li t3, 0x25a
	sll a1, s9, t3
	li s3, 0x28a
	sll s4, a1, s3
	li a4, 0x12a
	sll a1, s4, a4
	li a6, 0x7e7
	sll s5, a1, a6
	li t5, 0x57
	sll t3, s5, t5
	li t4, 0x47c
	sll t4, t3, t4
	li s7, 0x5ec
	sll s9, t4, s7
	li a6, 0x20d
	sll s10, s9, a6
	li s9, 0x707
	sll a2, s10, s9
	li t3, 0x16a
	sll s4, a2, t3
	li s3, 0x93
	sll s3, s4, s3
	li a3, 0x6de
	sll s4, s3, a3
	li a2, 0x3a4
	sll s4, s4, a2
	li a6, 0x266
	sll s7, s4, a6
	li s10, 0x3c3
	sll s11, s7, s10
	li a1, 0x64e
	sll t5, s11, a1
	li a2, 0x73c
	sll s7, t5, a2
	li t3, 0x37b
	sll a1, s7, t3
	li a3, 0x10d
	sll t3, a1, a3
	li a0, 0x2a9
	sll t4, t3, a0
	li s9, 0x6f1
	sll a1, t4, s9
	li a0, 0x182
	sll t3, a1, a0
	li s4, 0x6fb
	sll s2, t3, s4
	li s10, 0x43c
	sll a1, s2, s10
	li s7, 0x152
	sll t3, a1, s7
	li t1, 0x334
	sll a4, t3, t1
	li s3, 0x7c3
	sll s7, a4, s3
	li t5, 0x78a
	sll t4, s7, t5
	li a2, 0x20f
	sll s10, t4, a2
	li a4, 0xcc
	sll a0, s10, a4
	li s3, 0x48a
	sll a6, a0, s3
	li s6, 0x179
	sll t5, a6, s6
	li s4, 0x657
	sll s5, t5, s4
	li a4, 0x2c6
	sll a5, s5, a4
	li a4, 0x645
	sll t1, a5, a4
	li s5, 0x502
	sll t1, t1, s5
	li s3, 0x4f3
	sll s10, t1, s3
	li t1, 0x6a5
	sll a4, s10, t1
	li s10, 0x657
	sll t4, a4, s10
	li s7, 0x2d2
	sll s11, t4, s7
	li a0, 0xcc
	sll s8, s11, a0
	li a5, 0x24d
	sll s5, s8, a5
	li a5, 0x753
	sll a2, s5, a5
	li s5, 0x4a7
	sll a4, a2, s5
	li a0, 0x3cd
	sll s7, a4, a0
	li a6, 0x2be
	sll s6, s7, a6
	li a0, 0x500
	sll s10, s6, a0
	li t5, 0x691
	sll s7, s10, t5
	li t3, 0x4c4
	sll a2, s7, t3
	li s6, 0x7dd
	sll s4, a2, s6
	li s7, 0x516
	sll a0, s4, s7
	li t3, 0x2ba
	sll s9, a0, t3
	li s4, 0x525
	sll s4, s9, s4
	li t5, 0x615
	sll s2, s4, t5
	li a1, 0x76c
	sll s10, s2, a1
	li s5, 0x680
	sll s5, s10, s5
	li a5, 0x7ee
	sll s3, s5, a5
	li s5, 0x9f
	sll s9, s3, s5
	li s5, 0x282
	sll s3, s9, s5
	li s6, 0x24
	sll s4, s3, s6
	li t5, 0x12c
	sll t5, s4, t5
	li a4, 0xe3
	sll s7, t5, a4
	li s6, 0x753
	sll s8, s7, s6
	li t5, 0x726
	sll t4, s8, t5
	li s10, 0x447
	sll a2, t4, s10
	li a3, 0x67a
	sll s5, a2, a3
	li a0, 0x55c
	sll s5, s5, a0
	li s3, 0x1ef
	sll s4, s5, s3
	li t1, 0x231
	sll s11, s4, t1
	li s3, 0x7a2
	sll t3, s11, s3
	li s9, 0xde
	sll s7, t3, s9
	li a2, 0x587
	sll s8, s7, a2
	li a4, 0x20d
	sll a1, s8, a4
	li s7, 0x5e3
	sll s4, a1, s7
	csrr a0, time
	csrr s8, cycle
	csrr s5, instret
	sub a4, a0, t2
	sub s4, s8, s1
	sub t2, s5, t6
	beq s0, s4, pass_label_33
	li a2, failed_addr
	ld a5, 0(a2)
	jr a5
pass_label_33:
	beq a7, t2, pass_label_34
	li a6, failed_addr
	ld t1, 0(a6)
	jr t1
pass_label_34:
SID_ZKT_05_SLL_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SLT)
SID_ZKT_05_SLT:
	li sp, SID_ZKT_05_SLT_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a5, 0
	csrr s8, time
	csrr s11, cycle
	csrr t3, instret
	li a2, 0x226
	slt t1, a5, a2
	li a5, 0x4d5
	slt s0, t1, a5
	li a6, 0x284
	slt s3, s0, a6
	li t1, 0x6a9
	slt a0, s3, t1
	li s2, 0x3eb
	slt t1, a0, s2
	li s2, 0x2b2
	slt s4, t1, s2
	li a1, 0x680
	slt a1, s4, a1
	li a3, 0x3e5
	slt s10, a1, a3
	li s9, 0x77b
	slt s1, s10, s9
	li t2, 0x485
	slt s5, s1, t2
	li s9, 0x37c
	slt s2, s5, s9
	li a3, 0x646
	slt s10, s2, a3
	li t4, 0x538
	slt s1, s10, t4
	li s9, 0x497
	slt s2, s1, s9
	li a7, 0x14f
	slt s1, s2, a7
	li t5, 0x57e
	slt t5, s1, t5
	li a2, 0x723
	slt t6, t5, a2
	li s2, 0x472
	slt s4, t6, s2
	li t2, 0x3c3
	slt a0, s4, t2
	li t2, 0x1ff
	slt s5, a0, t2
	li s4, 0x405
	slt a0, s5, s4
	li s9, 0x1c5
	slt a6, a0, s9
	li s4, 0x236
	slt a7, a6, s4
	li s7, 0x719
	slt t4, a7, s7
	li s2, 0x434
	slt s9, t4, s2
	li s10, 0x5ed
	slt s0, s9, s10
	li s3, 0x4cd
	slt a1, s0, s3
	li t5, 0x47f
	slt a7, a1, t5
	li s3, 0x1fc
	slt a4, a7, s3
	li s6, 0x184
	slt a7, a4, s6
	li s2, 0x738
	slt a3, a7, s2
	li a7, 0x6e9
	slt a2, a3, a7
	li a4, 0x30d
	slt a3, a2, a4
	li s4, 0x1b0
	slt s3, a3, s4
	li a1, 0x315
	slt t2, s3, a1
	li t4, 0x38f
	slt a6, t2, t4
	li a0, 0x224
	slt s9, a6, a0
	li s2, 0x668
	slt a7, s9, s2
	li a6, 0x686
	slt s3, a7, a6
	li a0, 0x293
	slt a3, s3, a0
	li s3, 0x7a3
	slt s4, a3, s3
	li a1, 0x6f3
	slt a4, s4, a1
	li s2, 0x313
	slt a0, a4, s2
	li t5, 0x27
	slt s3, a0, t5
	li s6, 0x189
	slt s1, s3, s6
	li s0, 0x78
	slt t4, s1, s0
	li t1, 0xa9
	slt s4, t4, t1
	li s6, 0xf4
	slt s9, s4, s6
	li t5, 0x269
	slt s3, s9, t5
	li a5, 0x2d5
	slt s1, s3, a5
	li s4, 0x433
	slt t2, s1, s4
	li t1, 0x356
	slt a0, t2, t1
	li t6, 0x6d4
	slt s7, a0, t6
	li a3, 0x43b
	slt s9, s7, a3
	li s10, 0x68a
	slt a2, s9, s10
	li s3, 0x3c5
	slt a5, a2, s3
	li s1, 0x265
	slt s9, a5, s1
	li a7, 0x6be
	slt s10, s9, a7
	li a3, 0x6c2
	slt t5, s10, a3
	li s4, 0x15
	slt s2, t5, s4
	li a7, 0x4e5
	slt t2, s2, a7
	li t1, 0x45b
	slt s3, t2, t1
	li t5, 0x516
	slt s5, s3, t5
	li s2, 0x2fd
	slt s4, s5, s2
	li s10, 0x2cf
	slt t5, s4, s10
	li s9, 0x3f5
	slt t5, t5, s9
	li t2, 0x60
	slt s9, t5, t2
	li a2, 0x6a6
	slt a1, s9, a2
	li s9, 0xed
	slt a2, a1, s9
	li s5, 0x633
	slt t2, a2, s5
	li a3, 0x6e
	slt t4, t2, a3
	li a1, 0x7f9
	slt a6, t4, a1
	li s10, 0x6ae
	slt s0, a6, s10
	li s3, 0x7f1
	slt s4, s0, s3
	li s0, 0x63e
	slt t1, s4, s0
	li a5, 0x33e
	slt s10, t1, a5
	li s6, 0x5c3
	slt s6, s10, s6
	li a7, 0x781
	slt t6, s6, a7
	li a3, 0x23d
	slt s0, t6, a3
	li s4, 0x34c
	slt a2, s0, s4
	li a4, 0x3bb
	slt a4, a2, a4
	li s9, 0x5b
	slt a7, a4, s9
	li a5, 0x463
	slt s1, a7, a5
	li a1, 0x2d
	slt s2, s1, a1
	li s10, 0x241
	slt s6, s2, s10
	li s10, 0x35c
	slt s2, s6, s10
	li t1, 0x4ea
	slt t4, s2, t1
	li s6, 0x757
	slt a7, t4, s6
	li s3, 0x6cb
	slt a6, a7, s3
	li a3, 0x2ce
	slt t6, a6, a3
	li a7, 0x404
	slt a3, t6, a7
	li a7, 0x610
	slt s4, a3, a7
	li a5, 0x6af
	slt s9, s4, a5
	li t6, 0x523
	slt s4, s9, t6
	li s6, 0x6ca
	slt a7, s4, s6
	li t4, 0x349
	slt s4, a7, t4
	li a5, 0x6e
	slt s9, s4, a5
	li a5, 0x129
	slt t4, s9, a5
	li s0, 0xbd
	slt t5, t4, s0
	li s1, 0x102
	slt a4, t5, s1
	csrr a5, time
	csrr s1, cycle
	csrr a2, instret
	sub t2, a5, s8
	sub s1, s1, s11
	sub t2, a2, t3
	li s8, 0
	csrr s3, time
	csrr a7, cycle
	csrr a1, instret
	li s9, 0x3ed
	slt a5, s8, s9
	li a6, 0x734
	slt a3, a5, a6
	li t1, 0x626
	slt s1, a3, t1
	li s5, 0x4fb
	slt a2, s1, s5
	li s5, 0x51d
	slt a5, a2, s5
	li s0, 0x208
	slt s4, a5, s0
	li s6, 0x5c6
	slt s2, s4, s6
	li s11, 0x24d
	slt a4, s2, s11
	li t5, 0x2c2
	slt s6, a4, t5
	li t5, 0x315
	slt t4, s6, t5
	li s7, 0x221
	slt s9, t4, s7
	li s0, 0x2e
	slt a0, s9, s0
	li s4, 0x2d
	slt a6, a0, s4
	li t3, 0x43c
	slt s6, a6, t3
	li a5, 0x3ea
	slt s10, s6, a5
	li s6, 0x3fa
	slt s1, s10, s6
	li t6, 0x33
	slt t5, s1, t6
	li a4, 0xf4
	slt a3, t5, a4
	li s7, 0x7d1
	slt a3, a3, s7
	li s2, 0x2d7
	slt t6, a3, s2
	li s4, 0x756
	slt a0, t6, s4
	li s6, 0x20b
	slt t5, a0, s6
	li t1, 0x3ad
	slt s8, t5, t1
	li a2, 0x5b6
	slt s6, s8, a2
	li a2, 0x1f5
	slt s2, s6, a2
	li s6, 0x3c9
	slt a6, s2, s6
	li s4, 0x628
	slt t6, a6, s4
	li s0, 0x674
	slt t5, t6, s0
	li t4, 0x6aa
	slt s5, t5, t4
	li s7, 0x16b
	slt a2, s5, s7
	li t2, 0x779
	slt t1, a2, t2
	li a4, 0x2a6
	slt t2, t1, a4
	li t6, 0x6a7
	slt t2, t2, t6
	li t6, 0x7d2
	slt t3, t2, t6
	li s10, 0x7a7
	slt t5, t3, s10
	li s7, 0x7dc
	slt s4, t5, s7
	li s0, 0x3db
	slt s6, s4, s0
	li s5, 0x2d7
	slt s8, s6, s5
	li a6, 0x25c
	slt a5, s8, a6
	li t4, 0x220
	slt a6, a5, t4
	li s5, 0x6da
	slt s0, a6, s5
	li a2, 0x751
	slt a4, s0, a2
	li s10, 0x20d
	slt a0, a4, s10
	li t2, 0x704
	slt t6, a0, t2
	li s4, 0x32d
	slt s1, t6, s4
	li t3, 0x298
	slt t4, s1, t3
	li s2, 0x7ef
	slt s9, t4, s2
	li s5, 0x798
	slt a6, s9, s5
	li t5, 0x23e
	slt a0, a6, t5
	li a2, 0x74a
	slt s7, a0, a2
	li s0, 0x1b2
	slt s6, s7, s0
	li t5, 0x140
	slt s7, s6, t5
	li t3, 0x1e0
	slt s0, s7, t3
	li t5, 0x3b0
	slt t2, s0, t5
	li s11, 0x6a5
	slt a5, t2, s11
	li a3, 0x6db
	slt t2, a5, a3
	li s5, 0x44d
	slt t1, t2, s5
	li s9, 0x3c7
	slt t4, t1, s9
	li s5, 0x62b
	slt a6, t4, s5
	li a5, 0x167
	slt t1, a6, a5
	li s1, 0x5b0
	slt a0, t1, s1
	li s8, 0x6db
	slt t5, a0, s8
	li t2, 0x3cc
	slt t2, t5, t2
	li t4, 0x375
	slt s11, t2, t4
	li t5, 0x705
	slt s8, s11, t5
	li t2, 0x341
	slt a2, s8, t2
	li a5, 0x48
	slt s10, a2, a5
	li a6, 0x48a
	slt s8, s10, a6
	li a3, 0x15d
	slt s9, s8, a3
	li s0, 0x1b8
	slt s1, s9, s0
	li s2, 0x7c1
	slt t3, s1, s2
	li a0, 0x311
	slt s5, t3, a0
	li a3, 0xb1
	slt t5, s5, a3
	li t3, 0x65
	slt s6, t5, t3
	li s11, 0x207
	slt s1, s6, s11
	li t2, 0x639
	slt a6, s1, t2
	li s1, 0xa0
	slt t5, a6, s1
	li s8, 0x5e6
	slt a2, t5, s8
	li s11, 0x3ac
	slt s6, a2, s11
	li s2, 0x2d5
	slt s6, s6, s2
	li a4, 0x1db
	slt s7, s6, a4
	li s4, 0x61e
	slt t2, s7, s4
	li s8, 0x666
	slt t4, t2, s8
	li t1, 0x42f
	slt s0, t4, t1
	li t4, 0x85
	slt t4, s0, t4
	li s8, 0x2a9
	slt a3, t4, s8
	li t1, 0x587
	slt t4, a3, t1
	li s11, 0x784
	slt t6, t4, s11
	li t1, 0x7b4
	slt t5, t6, t1
	li s7, 0x2a7
	slt a2, t5, s7
	li s8, 0x268
	slt s1, a2, s8
	li a6, 0x755
	slt s0, s1, a6
	li s9, 0x337
	slt a2, s0, s9
	li s8, 0x26f
	slt a0, a2, s8
	li t3, 0x7f1
	slt s6, a0, t3
	li s5, 0x614
	slt t6, s6, s5
	li t4, 0x678
	slt s7, t6, t4
	li s4, 0x16a
	slt s2, s7, s4
	li t2, 0x673
	slt a5, s2, t2
	li s6, 0x1f6
	slt s4, a5, s6
	csrr t1, time
	csrr s1, cycle
	csrr s8, instret
	sub t2, t1, s3
	sub s2, s1, a7
	sub t4, s8, a1
	li s8, 0
	csrr s0, time
	csrr a7, cycle
	csrr t2, instret
	li a2, 0x748
	slt a0, s8, a2
	li t3, 0xca
	slt s6, a0, t3
	li s4, 0x4bc
	slt a5, s6, s4
	li s10, 0x5be
	slt t3, a5, s10
	li a3, 0x3e4
	slt s7, t3, a3
	li t5, 0x7f4
	slt a4, s7, t5
	li a5, 0x71
	slt s6, a4, a5
	li s11, 0x133
	slt s11, s6, s11
	li a4, 0x2d3
	slt a5, s11, a4
	li s8, 0x5b6
	slt a3, a5, s8
	li t5, 0x321
	slt s5, a3, t5
	li t6, 0x7b4
	slt s11, s5, t6
	li s3, 0x6cc
	slt s1, s11, s3
	li a6, 0x708
	slt a4, s1, a6
	li t6, 0x409
	slt t6, a4, t6
	li s8, 0x126
	slt t3, t6, s8
	li a1, 0x7e4
	slt a6, t3, a1
	li t6, 0x284
	slt s6, a6, t6
	li t6, 0x565
	slt a1, s6, t6
	li s6, 0x25c
	slt t3, a1, s6
	li a0, 0x7d2
	slt t5, t3, a0
	li s4, 0x567
	slt a1, t5, s4
	li s7, 0x448
	slt a5, a1, s7
	li t5, 0x361
	slt t3, a5, t5
	li a5, 0x5f7
	slt s10, t3, a5
	li a5, 0x12d
	slt t1, s10, a5
	li a2, 0x621
	slt s9, t1, a2
	li s6, 0x2d
	slt t1, s9, s6
	li s1, 0x470
	slt s10, t1, s1
	li a2, 0x4c5
	slt s5, s10, a2
	li a1, 0x4dd
	slt a3, s5, a1
	li t6, 0x14
	slt s9, a3, t6
	li t6, 0xfb
	slt s3, s9, t6
	li s8, 0x57c
	slt s6, s3, s8
	li t1, 0x7be
	slt s1, s6, t1
	li s8, 0x141
	slt a4, s1, s8
	li a6, 0x3ce
	slt a0, a4, a6
	li a3, 0x750
	slt a1, a0, a3
	li a2, 0x98
	slt a4, a1, a2
	li s1, 0xb
	slt s9, a4, s1
	li s1, 0x354
	slt s9, s9, s1
	li a0, 0x81
	slt s1, s9, a0
	li t6, 0x622
	slt s7, s1, t6
	li s4, 0x285
	slt a0, s7, s4
	li a1, 0x742
	slt a5, a0, a1
	li t6, 0x3ac
	slt t3, a5, t6
	li a2, 0x1f2
	slt a1, t3, a2
	li s1, 0x7e
	slt s3, a1, s1
	li a0, 0x44a
	slt s4, s3, a0
	li t6, 0x378
	slt a5, s4, t6
	li s1, 0x38d
	slt a6, a5, s1
	li s4, 0x13
	slt s3, a6, s4
	li s6, 0x371
	slt t1, s3, s6
	li a2, 0x3be
	slt a6, t1, a2
	li s3, 0x13d
	slt a5, a6, s3
	li s5, 0x630
	slt s10, a5, s5
	li s3, 0x1ab
	slt t1, s10, s3
	li a2, 0x5e4
	slt s7, t1, a2
	li s3, 0x433
	slt a4, s7, s3
	li t1, 0x266
	slt s1, a4, t1
	li a1, 0x2f7
	slt s10, s1, a1
	li t6, 0x1c5
	slt s3, s10, t6
	li t5, 0x4ff
	slt s3, s3, t5
	li t1, 0x8a
	slt a2, s3, t1
	li a5, 0x54d
	slt a2, a2, a5
	li s11, 0x1a5
	slt a5, a2, s11
	li a3, 0x3c8
	slt s10, a5, a3
	li a5, 0x7fe
	slt s11, s10, a5
	li t1, 0x32d
	slt s1, s11, t1
	li t6, 0x63e
	slt a5, s1, t6
	li s5, 0x4de
	slt s8, a5, s5
	li a4, 0x33c
	slt s8, s8, a4
	li s10, 0x3fa
	slt a6, s8, s10
	li a2, 0x6d2
	slt a6, a6, a2
	li t3, 0x22e
	slt t3, a6, t3
	li a4, 0x2f0
	slt a0, t3, a4
	li s1, 0x177
	slt t1, a0, s1
	li a2, 0x3f4
	slt s1, t1, a2
	li t1, 0xd0
	slt s6, s1, t1
	li a5, 0x4aa
	slt s1, s6, a5
	li s9, 0x569
	slt s1, s1, s9
	li s4, 0x20f
	slt a3, s1, s4
	li t3, 0x5d5
	slt s11, a3, t3
	li s4, 0x3af
	slt a6, s11, s4
	li s8, 0x3c9
	slt a4, a6, s8
	li a2, 0x63a
	slt s9, a4, a2
	li a5, 0x3c8
	slt s1, s9, a5
	li s7, 0x2f
	slt a3, s1, s7
	li s7, 0x2a2
	slt s8, a3, s7
	li s3, 0x63d
	slt s9, s8, s3
	li a4, 0x7c3
	slt s5, s9, a4
	li s1, 0x4e
	slt s3, s5, s1
	li s7, 0x145
	slt a4, s3, s7
	li s6, 0x2c9
	slt a4, a4, s6
	li t5, 0x398
	slt s10, a4, t5
	li a3, 0x7e4
	slt t5, s10, a3
	li a5, 0x4b7
	slt a2, t5, a5
	li t3, 0x86
	slt a1, a2, t3
	li a6, 0x50c
	slt a1, a1, a6
	li s3, 0x142
	slt t3, a1, s3
	csrr s9, time
	csrr t1, cycle
	csrr a1, instret
	sub s0, s9, s0
	sub t5, t1, a7
	sub t3, a1, t2
	beq s2, t5, pass_label_35
	li t1, failed_addr
	ld s5, 0(t1)
	jr s5
pass_label_35:
	beq t4, t3, pass_label_36
	li s1, failed_addr
	ld t2, 0(s1)
	jr t2
pass_label_36:
SID_ZKT_05_SLT_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SLTU)
SID_ZKT_05_SLTU:
	li sp, SID_ZKT_05_SLTU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t5, 0
	csrr a0, time
	csrr s8, cycle
	csrr t6, instret
	li a6, 0x371
	sltu s2, t5, a6
	li a6, 0x5f9
	sltu t1, s2, a6
	li a1, 0x661
	sltu a1, t1, a1
	li s1, 0x4f1
	sltu a4, a1, s1
	li s3, 0x32f
	sltu s11, a4, s3
	li t2, 0x579
	sltu s11, s11, t2
	li t3, 0x1a5
	sltu a1, s11, t3
	li a7, 0x5f2
	sltu a7, a1, a7
	li s1, 0x456
	sltu t5, a7, s1
	li t4, 0x307
	sltu s4, t5, t4
	li s11, 0x7d4
	sltu t5, s4, s11
	li a5, 0x5c
	sltu s0, t5, a5
	li t3, 0x209
	sltu t4, s0, t3
	li a2, 0x172
	sltu t2, t4, a2
	li a3, 0x606
	sltu s6, t2, a3
	li t5, 0x506
	sltu a4, s6, t5
	li s3, 0x45e
	sltu a4, a4, s3
	li s10, 0x48
	sltu s11, a4, s10
	li s5, 0x369
	sltu s11, s11, s5
	li t2, 0x617
	sltu s9, s11, t2
	li t5, 0x4c3
	sltu s6, s9, t5
	li t1, 0x604
	sltu t1, s6, t1
	li s7, 0xbf
	sltu s5, t1, s7
	li a1, 0x463
	sltu t3, s5, a1
	li s6, 0x5b4
	sltu s10, t3, s6
	li s3, 0x3e6
	sltu s3, s10, s3
	li a1, 0x4ed
	sltu s2, s3, a1
	li s7, 0x5ee
	sltu a6, s2, s7
	li s6, 0x73
	sltu t5, a6, s6
	li s9, 0x7cc
	sltu s7, t5, s9
	li s2, 0x2e6
	sltu a6, s7, s2
	li s7, 0x651
	sltu s4, a6, s7
	li t2, 0x2f9
	sltu a7, s4, t2
	li s5, 0x516
	sltu t4, a7, s5
	li s2, 0x613
	sltu s10, t4, s2
	li t1, 0x7b9
	sltu s3, s10, t1
	li s6, 0x50d
	sltu s4, s3, s6
	li t4, 0x1c0
	sltu s9, s4, t4
	li s3, 0x314
	sltu a4, s9, s3
	li a6, 0x2dd
	sltu a1, a4, a6
	li s2, 0x7fa
	sltu a3, a1, s2
	li a4, 0x1e9
	sltu a1, a3, a4
	li a3, 0x1de
	sltu a4, a1, a3
	li a7, 0x557
	sltu a6, a4, a7
	li t3, 0x4db
	sltu t4, a6, t3
	li s2, 0x782
	sltu s0, t4, s2
	li a2, 0xf
	sltu s10, s0, a2
	li t2, 0x28
	sltu s3, s10, t2
	li t1, 0x72e
	sltu a7, s3, t1
	li s7, 0x502
	sltu a2, a7, s7
	li s5, 0x3d5
	sltu t4, a2, s5
	li a2, 0x5ca
	sltu a2, t4, a2
	li a1, 0x49
	sltu t3, a2, a1
	li s6, 0x478
	sltu t3, t3, s6
	li a2, 0x6fc
	sltu a4, t3, a2
	li t2, 0x40
	sltu a6, a4, t2
	li s0, 0x69c
	sltu t2, a6, s0
	li s7, 0x59c
	sltu t1, t2, s7
	li s2, 0x254
	sltu a4, t1, s2
	li a1, 0x6d5
	sltu t2, a4, a1
	li s4, 0x3f1
	sltu s1, t2, s4
	li s7, 0x7e2
	sltu s3, s1, s7
	li t3, 0x1a
	sltu s4, s3, t3
	li s3, 0x1a
	sltu a7, s4, s3
	li s10, 0x382
	sltu s10, a7, s10
	li a7, 0x7bd
	sltu s10, s10, a7
	li a4, 0x2a1
	sltu a6, s10, a4
	li s7, 0x411
	sltu s9, a6, s7
	li t5, 0xc7
	sltu t3, s9, t5
	li a2, 0xb3
	sltu t1, t3, a2
	li a2, 0x4ca
	sltu a7, t1, a2
	li s0, 0x488
	sltu s6, a7, s0
	li t3, 0x31
	sltu a5, s6, t3
	li t5, 0x277
	sltu s11, a5, t5
	li a4, 0x581
	sltu s2, s11, a4
	li s9, 0x511
	sltu a5, s2, s9
	li s7, 0x484
	sltu t3, a5, s7
	li s4, 0x12e
	sltu s9, t3, s4
	li s11, 0x7e0
	sltu s7, s9, s11
	li a5, 0x344
	sltu a1, s7, a5
	li s6, 0x6f6
	sltu a7, a1, s6
	li t3, 0x3a
	sltu t1, a7, t3
	li t2, 0x5e5
	sltu a2, t1, t2
	li t4, 0x5b6
	sltu s5, a2, t4
	li a6, 0x2a8
	sltu s6, s5, a6
	li s1, 0x2ac
	sltu s4, s6, s1
	li s2, 0x205
	sltu s7, s4, s2
	li a7, 0x2ab
	sltu a5, s7, a7
	li a4, 0x2b9
	sltu a5, a5, a4
	li t3, 0x67f
	sltu s11, a5, t3
	li a5, 0x128
	sltu s1, s11, a5
	li a7, 0x25f
	sltu t1, s1, a7
	li s6, 0x4de
	sltu a5, t1, s6
	li s10, 0x566
	sltu a6, a5, s10
	li s3, 0x164
	sltu a3, a6, s3
	li t4, 0x722
	sltu a5, a3, t4
	li a3, 0x2ce
	sltu a1, a5, a3
	li s7, 0x617
	sltu s6, a1, s7
	li s1, 0x549
	sltu t3, s6, s1
	li t5, 0x73b
	sltu a1, t3, t5
	csrr t5, time
	csrr t1, cycle
	csrr a5, instret
	sub s11, t5, a0
	sub a0, t1, s8
	sub a7, a5, t6
	li a7, 0
	csrr s1, time
	csrr s10, cycle
	csrr s7, instret
	li s2, 0x64a
	sltu s4, a7, s2
	li s9, 0x798
	sltu s4, s4, s9
	li s5, 0x611
	sltu s8, s4, s5
	li s9, 0x41c
	sltu a3, s8, s9
	li t5, 0x329
	sltu a3, a3, t5
	li s11, 0x400
	sltu s4, a3, s11
	li s5, 0x3d3
	sltu s5, s4, s5
	li t6, 0x126
	sltu a5, s5, t6
	li a3, 0x6f3
	sltu a7, a5, a3
	li a5, 0x2a9
	sltu a1, a7, a5
	li s6, 0x5e1
	sltu a3, a1, s6
	li t1, 0x607
	sltu t1, a3, t1
	li t4, 0x69c
	sltu a4, t1, t4
	li s2, 0x2ae
	sltu a1, a4, s2
	li t5, 0x2ac
	sltu s6, a1, t5
	li a1, 0x66
	sltu t3, s6, a1
	li a0, 0x633
	sltu a7, t3, a0
	li s2, 0xd7
	sltu a6, a7, s2
	li t3, 0x6e5
	sltu a0, a6, t3
	li t4, 0x334
	sltu s4, a0, t4
	li s8, 0x617
	sltu a7, s4, s8
	li s2, 0x65d
	sltu s3, a7, s2
	li a1, 0x1b0
	sltu s6, s3, a1
	li a6, 0x362
	sltu s9, s6, a6
	li a1, 0x749
	sltu s5, s9, a1
	li a2, 0x4a5
	sltu s4, s5, a2
	li t5, 0x426
	sltu a2, s4, t5
	li a3, 0x56
	sltu t2, a2, a3
	li s6, 0x3bb
	sltu a7, t2, s6
	li t6, 0x3d
	sltu a0, a7, t6
	li t4, 0x671
	sltu s11, a0, t4
	li s6, 0x256
	sltu s2, s11, s6
	li s6, 0x4e9
	sltu t6, s2, s6
	li a6, 0x502
	sltu s0, t6, a6
	li s6, 0x2cf
	sltu a1, s0, s6
	li t3, 0x6f9
	sltu s2, a1, t3
	li s4, 0x551
	sltu t2, s2, s4
	li s6, 0x60c
	sltu a1, t2, s6
	li a2, 0x193
	sltu s3, a1, a2
	li a3, 0x3f7
	sltu s11, s3, a3
	li s6, 0x503
	sltu t3, s11, s6
	li a3, 0x65
	sltu a4, t3, a3
	li a6, 0x640
	sltu s6, a4, a6
	li a4, 0x430
	sltu t1, s6, a4
	li s9, 0x2ba
	sltu t6, t1, s9
	li t2, 0x12c
	sltu s6, t6, t2
	li s2, 0x21a
	sltu s3, s6, s2
	li t2, 0x1ad
	sltu t3, s3, t2
	li s3, 0x5fd
	sltu s4, t3, s3
	li s2, 0x6f4
	sltu a5, s4, s2
	li s9, 0x7c0
	sltu s4, a5, s9
	li a3, 0x7cd
	sltu t2, s4, a3
	li t4, 0x12d
	sltu t6, t2, t4
	li s11, 0x314
	sltu a5, t6, s11
	li s3, 0x1aa
	sltu t4, a5, s3
	li a1, 0x609
	sltu a2, t4, a1
	li a4, 0x6bc
	sltu s2, a2, a4
	li s9, 0x445
	sltu t1, s2, s9
	li a6, 0x111
	sltu s8, t1, a6
	li a1, 0x238
	sltu s9, s8, a1
	li s4, 0x273
	sltu s4, s9, s4
	li a0, 0x45
	sltu t1, s4, a0
	li s6, 0x59b
	sltu s11, t1, s6
	li t2, 0x390
	sltu a0, s11, t2
	li a6, 0x421
	sltu s3, a0, a6
	li a7, 0x319
	sltu t2, s3, a7
	li a3, 0x2ee
	sltu a4, t2, a3
	li s8, 0x1e1
	sltu s8, a4, s8
	li t3, 0x605
	sltu s0, s8, t3
	li s11, 0x3c6
	sltu t4, s0, s11
	li a5, 0x36f
	sltu s2, t4, a5
	li a7, 0x789
	sltu t3, s2, a7
	li s3, 0x3cd
	sltu s9, t3, s3
	li a5, 0x213
	sltu t4, s9, a5
	li a3, 0x7e5
	sltu a1, t4, a3
	li t1, 0x50a
	sltu a2, a1, t1
	li a1, 0x783
	sltu s3, a2, a1
	li a1, 0x95
	sltu a6, s3, a1
	li t6, 0x774
	sltu a4, a6, t6
	li s8, 0x6b7
	sltu t1, a4, s8
	li t4, 0x36c
	sltu t2, t1, t4
	li t3, 0x7ab
	sltu a5, t2, t3
	li a7, 0x496
	sltu t5, a5, a7
	li a4, 0x184
	sltu s6, t5, a4
	li s5, 0x295
	sltu a0, s6, s5
	li s6, 0x578
	sltu s3, a0, s6
	li a3, 0x34a
	sltu a0, s3, a3
	li t5, 0x96
	sltu t5, a0, t5
	li t3, 0x343
	sltu t4, t5, t3
	li a6, 0x2a7
	sltu a4, t4, a6
	li s2, 0x581
	sltu s6, a4, s2
	li a6, 0x7df
	sltu t3, s6, a6
	li a2, 0x2bc
	sltu a0, t3, a2
	li a7, 0x359
	sltu a3, a0, a7
	li s11, 0x663
	sltu s3, a3, s11
	li a4, 0x64f
	sltu a4, s3, a4
	li t5, 0x5f
	sltu t5, a4, t5
	li t3, 0x560
	sltu a3, t5, t3
	li t2, 0x64f
	sltu a3, a3, t2
	li a7, 0x137
	sltu s6, a3, a7
	csrr a4, time
	csrr s3, cycle
	csrr t4, instret
	sub s8, a4, s1
	sub s4, s3, s10
	sub a2, t4, s7
	li s10, 0
	csrr a4, time
	csrr t1, cycle
	csrr s2, instret
	li s0, 0x18b
	sltu s6, s10, s0
	li s5, 0x61b
	sltu s5, s6, s5
	li s0, 0xe0
	sltu s8, s5, s0
	li s0, 0x262
	sltu s11, s8, s0
	li t3, 0x769
	sltu a3, s11, t3
	li s11, 0x6b0
	sltu s3, a3, s11
	li s5, 0x2f2
	sltu s3, s3, s5
	li a5, 0x51a
	sltu s7, s3, a5
	li s9, 0x757
	sltu s6, s7, s9
	li a1, 0x44
	sltu a1, s6, a1
	li s6, 0x403
	sltu s0, a1, s6
	li a0, 0x7b9
	sltu a5, s0, a0
	li s8, 0x262
	sltu a6, a5, s8
	li s7, 0x15e
	sltu t4, a6, s7
	li a3, 0x77e
	sltu s1, t4, a3
	li s11, 0x7a
	sltu a6, s1, s11
	li t2, 0x170
	sltu t6, a6, t2
	li s8, 0x737
	sltu s11, t6, s8
	li t3, 0x2a2
	sltu s6, s11, t3
	li s5, 0x337
	sltu s3, s6, s5
	li t2, 0x36b
	sltu s10, s3, t2
	li s9, 0x47a
	sltu s1, s10, s9
	li s0, 0x419
	sltu s10, s1, s0
	li a6, 0x58c
	sltu t6, s10, a6
	li s10, 0x5a9
	sltu s10, t6, s10
	li t4, 0x1ab
	sltu t5, s10, t4
	li t6, 0x230
	sltu a3, t5, t6
	li t4, 0x408
	sltu a0, a3, t4
	li a3, 0x4a1
	sltu s6, a0, a3
	li t2, 0x356
	sltu s0, s6, t2
	li s1, 0x243
	sltu t2, s0, s1
	li a3, 0x5eb
	sltu s5, t2, a3
	li s1, 0x4fc
	sltu a5, s5, s1
	li s7, 0x603
	sltu s11, a5, s7
	li t5, 0x162
	sltu s5, s11, t5
	li a5, 0x21e
	sltu s9, s5, a5
	li s8, 0x33e
	sltu s10, s9, s8
	li t5, 0x595
	sltu s9, s10, t5
	li t6, 0x13a
	sltu a1, s9, t6
	li s3, 0x42b
	sltu t2, a1, s3
	li t5, 0x3b8
	sltu s0, t2, t5
	li s8, 0x4a1
	sltu a6, s0, s8
	li s9, 0x2b1
	sltu a7, a6, s9
	li s5, 0x39
	sltu s9, a7, s5
	li s11, 0x2c
	sltu a0, s9, s11
	li s1, 0x75a
	sltu s5, a0, s1
	li a7, 0x627
	sltu a6, s5, a7
	li t6, 0x170
	sltu a1, a6, t6
	li a3, 0x312
	sltu s11, a1, a3
	li a7, 0x539
	sltu s9, s11, a7
	li a1, 0x69a
	sltu s5, s9, a1
	li s7, 0x25f
	sltu s3, s5, s7
	li s7, 0x145
	sltu t6, s3, s7
	li a1, 0x53b
	sltu a6, t6, a1
	li s10, 0xc1
	sltu s10, a6, s10
	li s11, 0x6f0
	sltu t4, s10, s11
	li s7, 0x3b5
	sltu t4, t4, s7
	li s11, 0x644
	sltu a7, t4, s11
	li t6, 0x658
	sltu s8, a7, t6
	li t4, 0xd5
	sltu a0, s8, t4
	li t3, 0x511
	sltu s3, a0, t3
	li s7, 0x4a3
	sltu t6, s3, s7
	li t2, 0x5c5
	sltu a3, t6, t2
	li t4, 0x3c4
	sltu s6, a3, t4
	li t6, 0x34e
	sltu s0, s6, t6
	li s10, 0x1d3
	sltu s5, s0, s10
	li a3, 0x6ef
	sltu a0, s5, a3
	li s1, 0x540
	sltu a6, a0, s1
	li s5, 0x6f1
	sltu s7, a6, s5
	li s1, 0x51d
	sltu t3, s7, s1
	li s10, 0x48b
	sltu t6, t3, s10
	li s5, 0x266
	sltu s1, t6, s5
	li s11, 0x42b
	sltu a0, s1, s11
	li t6, 0x695
	sltu s9, a0, t6
	li t2, 0x7a6
	sltu s9, s9, t2
	li s0, 0x212
	sltu t2, s9, s0
	li a5, 0x2b5
	sltu a6, t2, a5
	li a5, 0x70b
	sltu s11, a6, a5
	li a5, 0x3b9
	sltu a5, s11, a5
	li t3, 0x51b
	sltu s7, a5, t3
	li s8, 0x34d
	sltu a5, s7, s8
	li t4, 0x518
	sltu s0, a5, t4
	li a1, 0x11
	sltu t6, s0, a1
	li t2, 0x364
	sltu t4, t6, t2
	li s3, 0x7a6
	sltu a6, t4, s3
	li s8, 0x6c7
	sltu s10, a6, s8
	li t6, 0x5b0
	sltu s10, s10, t6
	li t4, 0x33e
	sltu a7, s10, t4
	li s6, 0xc9
	sltu s10, a7, s6
	li s6, 0x483
	sltu a3, s10, s6
	li s7, 0x501
	sltu s8, a3, s7
	li s11, 0x1b8
	sltu t2, s8, s11
	li s6, 0x39b
	sltu s7, t2, s6
	li a7, 0x1ba
	sltu t6, s7, a7
	li s1, 0x574
	sltu t2, t6, s1
	li a1, 0x58c
	sltu s8, t2, a1
	li s5, 0x22c
	sltu t5, s8, s5
	li a7, 0x14d
	sltu s5, t5, a7
	li s3, 0x5fd
	sltu s10, s5, s3
	li a0, 0x7af
	sltu s3, s10, a0
	csrr s7, time
	csrr s5, cycle
	csrr s3, instret
	sub s1, s7, a4
	sub a0, s5, t1
	sub s1, s3, s2
	beq s4, a0, pass_label_37
	li s3, failed_addr
	ld a6, 0(s3)
	jr a6
pass_label_37:
	beq a2, s1, pass_label_38
	li s0, failed_addr
	ld a4, 0(s0)
	jr a4
pass_label_38:
SID_ZKT_05_SLTU_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_XOR)
SID_ZKT_05_XOR:
	li sp, SID_ZKT_05_XOR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t1, 0
	csrr s10, time
	csrr t2, cycle
	csrr t5, instret
	li s6, 0x4ea
	xor t3, t1, s6
	li s11, 0x220
	xor t6, t3, s11
	li a6, 0x709
	xor s2, t6, a6
	li s0, 0x3a2
	xor t4, s2, s0
	li s6, 0xe0
	xor a6, t4, s6
	li a4, 0x11d
	xor t6, a6, a4
	li s9, 0x5c7
	xor a2, t6, s9
	li t6, 0xac
	xor s3, a2, t6
	li s4, 0x3d8
	xor s3, s3, s4
	li a6, 0x629
	xor t3, s3, a6
	li a6, 0x5f7
	xor t1, t3, a6
	li t4, 0x5f6
	xor s4, t1, t4
	li a3, 0x74c
	xor s4, s4, a3
	li t1, 0x496
	xor s3, s4, t1
	li s7, 0x5e2
	xor a7, s3, s7
	li t6, 0x268
	xor s3, a7, t6
	li t6, 0x100
	xor a7, s3, t6
	li s4, 0x5c9
	xor s3, a7, s4
	li a0, 0x590
	xor t3, s3, a0
	li s2, 0x390
	xor s1, t3, s2
	li s2, 0x44c
	xor s4, s1, s2
	li s3, 0x79d
	xor s3, s4, s3
	li a4, 0x20a
	xor s7, s3, a4
	li a6, 0x1af
	xor s4, s7, a6
	li s0, 0xa4
	xor s5, s4, s0
	li a6, 0x2b2
	xor a1, s5, a6
	li a2, 0x540
	xor s4, a1, a2
	li a1, 0x4f4
	xor s9, s4, a1
	li a6, 0x1bf
	xor a7, s9, a6
	li s0, 0x167
	xor s3, a7, s0
	li t6, 0x1ed
	xor a2, s3, t6
	li a7, 0x313
	xor s8, a2, a7
	li s11, 0x591
	xor s9, s8, s11
	li a2, 0x393
	xor a0, s9, a2
	li a3, 0x305
	xor s6, a0, a3
	li t3, 0x35b
	xor t3, s6, t3
	li a5, 0x20e
	xor s7, t3, a5
	li t3, 0x49f
	xor a3, s7, t3
	li t1, 0x285
	xor a7, a3, t1
	li s1, 0x330
	xor s1, a7, s1
	li a6, 0x31
	xor s5, s1, a6
	li s1, 0x247
	xor s8, s5, s1
	li t6, 0x533
	xor t1, s8, t6
	li s5, 0x3a5
	xor s11, t1, s5
	li t3, 0x26a
	xor a2, s11, t3
	li t1, 0x54d
	xor t1, a2, t1
	li a5, 0x2fe
	xor s9, t1, a5
	li t4, 0x495
	xor t6, s9, t4
	li t1, 0x79a
	xor a6, t6, t1
	li a3, 0x3af
	xor a0, a6, a3
	li t3, 0x54f
	xor a7, a0, t3
	li s4, 0x54c
	xor a4, a7, s4
	li a7, 0x7ab
	xor t3, a4, a7
	li t4, 0x2a6
	xor t3, t3, t4
	li s5, 0x587
	xor s7, t3, s5
	li t1, 0x592
	xor s5, s7, t1
	li t6, 0x1a3
	xor s6, s5, t6
	li a4, 0xeb
	xor s5, s6, a4
	li s7, 0x336
	xor a7, s5, s7
	li s3, 0x2b1
	xor s6, a7, s3
	li s0, 0x315
	xor s5, s6, s0
	li s8, 0x116
	xor s4, s5, s8
	li t4, 0xf5
	xor s9, s4, t4
	li s0, 0x15a
	xor a6, s9, s0
	li a2, 0x140
	xor t1, a6, a2
	li s7, 0x1c
	xor s4, t1, s7
	li a5, 0x1fc
	xor s6, s4, a5
	li a1, 0x5bb
	xor s2, s6, a1
	li s11, 0x767
	xor s7, s2, s11
	li a4, 0x65b
	xor a4, s7, a4
	li a7, 0x4bd
	xor a0, a4, a7
	li a3, 0x739
	xor a5, a0, a3
	li s5, 0x1e
	xor a4, a5, s5
	li a1, 0x38
	xor s11, a4, a1
	li t4, 0x70b
	xor s4, s11, t4
	li a0, 0x4db
	xor a0, s4, a0
	li s7, 0x1bc
	xor a1, a0, s7
	li t1, 0x2d3
	xor s4, a1, t1
	li a1, 0x294
	xor a2, s4, a1
	li t3, 0x63a
	xor a4, a2, t3
	li s8, 0x1f4
	xor s7, a4, s8
	li s11, 0x297
	xor s3, s7, s11
	li a4, 0x527
	xor a3, s3, a4
	li s5, 0x5cb
	xor a6, a3, s5
	li t1, 0x7dc
	xor t1, a6, t1
	li s11, 0x30
	xor a3, t1, s11
	li a1, 0x7ec
	xor a0, a3, a1
	li s6, 0x346
	xor a4, a0, s6
	li a3, 0x408
	xor t4, a4, a3
	li t1, 0x7e7
	xor s7, t4, t1
	li s11, 0x136
	xor s0, s7, s11
	li a0, 0x54f
	xor a2, s0, a0
	li s4, 0x505
	xor a2, a2, s4
	li a4, 0x7cb
	xor a7, a2, a4
	li s3, 0x6f3
	xor a6, a7, s3
	li a7, 0x30b
	xor s5, a6, a7
	li s9, 0x2d1
	xor a7, s5, s9
	li s5, 0x2e0
	xor s11, a7, s5
	li s4, 0x5e4
	xor s4, s11, s4
	li t4, 0x489
	xor a2, s4, t4
	csrr s3, time
	csrr t3, cycle
	csrr s8, instret
	sub a4, s3, s10
	sub a3, t3, t2
	sub a4, s8, t5
	li t2, 0
	csrr s3, time
	csrr a1, cycle
	csrr a3, instret
	li a5, 0x35e
	xor s8, t2, a5
	li a4, 0x9c
	xor a2, s8, a4
	li s1, 0x7d
	xor s4, a2, s1
	li s7, 0x43b
	xor a2, s4, s7
	li s8, 0x617
	xor s6, a2, s8
	li t6, 0x100
	xor s6, s6, t6
	li s0, 0x553
	xor a0, s6, s0
	li t4, 0x140
	xor a5, a0, t4
	li t4, 0x4c5
	xor a6, a5, t4
	li s6, 0x5ff
	xor s2, a6, s6
	li s6, 0x337
	xor s10, s2, s6
	li t1, 0x738
	xor a4, s10, t1
	li s2, 0x20
	xor a7, a4, s2
	li t5, 0x794
	xor s11, a7, t5
	li t1, 0x2c7
	xor s5, s11, t1
	li a7, 0x437
	xor a4, s5, a7
	li t3, 0x72a
	xor t1, a4, t3
	li s0, 0x7aa
	xor s8, t1, s0
	li a5, 0x69d
	xor t4, s8, a5
	li s2, 0x7ae
	xor t6, t4, s2
	li s7, 0x496
	xor s9, t6, s7
	li t5, 0x7c2
	xor s0, s9, t5
	li t2, 0x444
	xor s1, s0, t2
	li s2, 0xf2
	xor a7, s1, s2
	li t1, 0x3fe
	xor t5, a7, t1
	li a0, 0x163
	xor s5, t5, a0
	li t4, 0x378
	xor s4, s5, t4
	li a6, 0x3f3
	xor t6, s4, a6
	li a0, 0x1c4
	xor a6, t6, a0
	li s1, 0x6a7
	xor t5, a6, s1
	li s9, 0x404
	xor s7, t5, s9
	li s6, 0x563
	xor t5, s7, s6
	li a2, 0x702
	xor a2, t5, a2
	li s10, 0x345
	xor a4, a2, s10
	li a2, 0x635
	xor s7, a4, a2
	li t4, 0x51b
	xor s0, s7, t4
	li t4, 0x35a
	xor s7, s0, t4
	li a5, 0x7e1
	xor s4, s7, a5
	li s9, 0x153
	xor s7, s4, s9
	li t3, 0x427
	xor s2, s7, t3
	li t4, 0x540
	xor s1, s2, t4
	li a4, 0x4e5
	xor t1, s1, a4
	li s9, 0x6de
	xor t6, t1, s9
	li t4, 0x354
	xor s2, t6, t4
	li a4, 0x50a
	xor s6, s2, a4
	li s1, 0x457
	xor s8, s6, s1
	li t1, 0x10e
	xor a2, s8, t1
	li a5, 0xaa
	xor a0, a2, a5
	li a7, 0x6d5
	xor a4, a0, a7
	li a0, 0x7df
	xor a6, a4, a0
	li s10, 0x1fb
	xor s4, a6, s10
	li a5, 0x381
	xor t3, s4, a5
	li t4, 0x37d
	xor a0, t3, t4
	li a2, 0x5dd
	xor t2, a0, a2
	li t3, 0x4fc
	xor s2, t2, t3
	li s10, 0x19a
	xor s6, s2, s10
	li a4, 0x74b
	xor s5, s6, a4
	li s2, 0x3a
	xor s8, s5, s2
	li t1, 0x51a
	xor s2, s8, t1
	li s0, 0x23b
	xor t1, s2, s0
	li a2, 0x11c
	xor s1, t1, a2
	li s5, 0xf1
	xor t5, s1, s5
	li s10, 0x206
	xor a4, t5, s10
	li a5, 0x9e
	xor a4, a4, a5
	li t4, 0x65f
	xor s8, a4, t4
	li a4, 0x1b
	xor s0, s8, a4
	li a7, 0x7aa
	xor s9, s0, a7
	li t3, 0x580
	xor t4, s9, t3
	li s9, 0x40a
	xor s1, t4, s9
	li s9, 0x4fa
	xor s0, s1, s9
	li a5, 0x5ba
	xor s4, s0, a5
	li s10, 0x242
	xor a7, s4, s10
	li s10, 0x5da
	xor a2, a7, s10
	li t6, 0x151
	xor a7, a2, t6
	li s7, 0x561
	xor a5, a7, s7
	li t3, 0x3ef
	xor t2, a5, t3
	li a2, 0x47c
	xor s4, t2, a2
	li s0, 0x424
	xor s2, s4, s0
	li t4, 0x6a5
	xor t1, s2, t4
	li s6, 0x71e
	xor s5, t1, s6
	li a7, 0x4dc
	xor s7, s5, a7
	li s6, 0x56f
	xor s1, s7, s6
	li t4, 0x26d
	xor a7, s1, t4
	li t1, 0x5a9
	xor s10, a7, t1
	li s4, 0x6b0
	xor s1, s10, s4
	li a4, 0x3fb
	xor a6, s1, a4
	li a0, 0x5ca
	xor t2, a6, a0
	li s9, 0x2ca
	xor a7, t2, s9
	li s4, 0x3bc
	xor s2, a7, s4
	li t5, 0xa9
	xor t2, s2, t5
	li a6, 0x14d
	xor s2, t2, a6
	li t2, 0xee
	xor a0, s2, t2
	li s11, 0x11e
	xor t5, a0, s11
	li a5, 0x41f
	xor s4, t5, a5
	li t5, 0x76c
	xor s2, s4, t5
	li t4, 0x33
	xor t4, s2, t4
	li s2, 0x3
	xor a6, t4, s2
	li s11, 0x2db
	xor t3, a6, s11
	li s7, 0x55a
	xor a6, t3, s7
	li s4, 0x32d
	xor t3, a6, s4
	csrr s8, time
	csrr s10, cycle
	csrr t1, instret
	sub s8, s8, s3
	sub t3, s10, a1
	sub s0, t1, a3
	li a7, 0
	csrr a2, time
	csrr s8, cycle
	csrr t6, instret
	li s1, 0x286
	xor s4, a7, s1
	li s5, 0x700
	xor a4, s4, s5
	li s3, 0x728
	xor t5, a4, s3
	li a5, 0x21d
	xor a6, t5, a5
	li t5, 0x790
	xor s7, a6, t5
	li a3, 0x30b
	xor s7, s7, a3
	li a0, 0x3ee
	xor a3, s7, a0
	li t1, 0x5ea
	xor s1, a3, t1
	li a3, 0x2e1
	xor s11, s1, a3
	li t1, 0x44
	xor s6, s11, t1
	li a4, 0x71
	xor s3, s6, a4
	li s4, 0x2c1
	xor s4, s3, s4
	li t2, 0x4ea
	xor s4, s4, t2
	li a1, 0x342
	xor a5, s4, a1
	li s4, 0x7cc
	xor a6, a5, s4
	li a7, 0x1d2
	xor a5, a6, a7
	li s4, 0x358
	xor s10, a5, s4
	li s3, 0xe5
	xor s6, s10, s3
	li t1, 0x6f3
	xor a0, s6, t1
	li t2, 0x249
	xor s3, a0, t2
	li a4, 0x344
	xor s9, s3, a4
	li a0, 0x415
	xor s11, s9, a0
	li s5, 0x519
	xor s4, s11, s5
	li t1, 0x2a4
	xor a1, s4, t1
	li s3, 0x746
	xor s11, a1, s3
	li s10, 0x67d
	xor a4, s11, s10
	li t2, 0x5f5
	xor t1, a4, t2
	li s10, 0x3cd
	xor t4, t1, s10
	li a7, 0x4e0
	xor s2, t4, a7
	li s3, 0x69e
	xor s3, s2, s3
	li a4, 0x65d
	xor a7, s3, a4
	li t5, 0x194
	xor a3, a7, t5
	li t1, 0x2e6
	xor s11, a3, t1
	li a6, 0x9d
	xor a5, s11, a6
	li s9, 0x471
	xor s9, a5, s9
	li s2, 0x40b
	xor a7, s9, s2
	li s5, 0x307
	xor s6, a7, s5
	li s7, 0xa1
	xor a6, s6, s7
	li t2, 0x3bf
	xor s1, a6, t2
	li s9, 0x368
	xor s11, s1, s9
	li a4, 0x284
	xor a3, s11, a4
	li s1, 0x3c8
	xor a1, a3, s1
	li s10, 0x23d
	xor a5, a1, s10
	li t4, 0x2b9
	xor s9, a5, t4
	li t2, 0x135
	xor t1, s9, t2
	li a4, 0x4ae
	xor s5, t1, a4
	li s10, 0x43b
	xor s9, s5, s10
	li a5, 0x257
	xor s5, s9, a5
	li s3, 0x623
	xor a1, s5, s3
	li a4, 0x101
	xor s9, a1, a4
	li t1, 0x3b4
	xor t2, s9, t1
	li t5, 0x66c
	xor a3, t2, t5
	li s6, 0x632
	xor s6, a3, s6
	li t1, 0x418
	xor s9, s6, t1
	li t2, 0x317
	xor s2, s9, t2
	li s7, 0x7aa
	xor t4, s2, s7
	li a3, 0x2b
	xor a3, t4, a3
	li s6, 0x3f5
	xor a3, a3, s6
	li s2, 0x48
	xor s3, a3, s2
	li s7, 0x6dc
	xor s6, s3, s7
	li t5, 0x382
	xor t5, s6, t5
	li s2, 0x63b
	xor s1, t5, s2
	li t4, 0x342
	xor a6, s1, t4
	li t4, 0x60b
	xor a4, a6, t4
	li s4, 0x39
	xor s10, a4, s4
	li s5, 0x53d
	xor t1, s10, s5
	li s4, 0x6ff
	xor s4, t1, s4
	li s3, 0x7b6
	xor t1, s4, s3
	li a5, 0x611
	xor a1, t1, a5
	li t5, 0x4b7
	xor a3, a1, t5
	li s6, 0x7a7
	xor s2, a3, s6
	li a5, 0x4c6
	xor s9, s2, a5
	li a5, 0x33c
	xor a6, s9, a5
	li s5, 0x373
	xor s2, a6, s5
	li t2, 0x1a1
	xor a7, s2, t2
	li s3, 0x75d
	xor a1, a7, s3
	li a3, 0x4b0
	xor a6, a1, a3
	li a7, 0x7c
	xor s5, a6, a7
	li a7, 0x3ba
	xor a3, s5, a7
	li t4, 0x55e
	xor s9, a3, t4
	li s7, 0x67e
	xor a3, s9, s7
	li t5, 0xd8
	xor s10, a3, t5
	li s9, 0x71e
	xor a4, s10, s9
	li s3, 0x225
	xor s5, a4, s3
	li s9, 0x57d
	xor s5, s5, s9
	li s7, 0x2a6
	xor s9, s5, s7
	li t2, 0x76b
	xor t1, s9, t2
	li s11, 0x785
	xor s4, t1, s11
	li s11, 0x4af
	xor a1, s4, s11
	li a5, 0x2dd
	xor s4, a1, a5
	li t4, 0x60d
	xor t1, s4, t4
	li a4, 0x52b
	xor s1, t1, a4
	li s3, 0x46f
	xor t5, s1, s3
	li s10, 0x28f
	xor s5, t5, s10
	li a3, 0x476
	xor t4, s5, a3
	li s4, 0x129
	xor a4, t4, s4
	li t1, 0x4fa
	xor s5, a4, t1
	li s2, 0x666
	xor s6, s5, s2
	li t1, 0x5bc
	xor a3, s6, t1
	li s5, 0x559
	xor s1, a3, s5
	csrr a4, time
	csrr s2, cycle
	csrr s9, instret
	sub a0, a4, a2
	sub a1, s2, s8
	sub a6, s9, t6
	beq t3, a1, pass_label_39
	li s11, failed_addr
	ld a3, 0(s11)
	jr a3
pass_label_39:
	beq s0, a6, pass_label_40
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
pass_label_40:
SID_ZKT_05_XOR_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SRL)
SID_ZKT_05_SRL:
	li sp, SID_ZKT_05_SRL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a1, 0
	csrr t4, time
	csrr s7, cycle
	csrr a5, instret
	li t6, 0x37b
	srl a1, a1, t6
	li s5, 0x254
	srl a4, a1, s5
	li s11, 0x7b5
	srl s5, a4, s11
	li a7, 0x1ad
	srl a0, s5, a7
	li s6, 0x3da
	srl s10, a0, s6
	li s3, 0x3d1
	srl t3, s10, s3
	li s1, 0xda
	srl t6, t3, s1
	li t3, 0x389
	srl s4, t6, t3
	li t3, 0x288
	srl a1, s4, t3
	li s11, 0x307
	srl s9, a1, s11
	li t1, 0x480
	srl a0, s9, t1
	li t3, 0x233
	srl t1, a0, t3
	li a0, 0x5
	srl s8, t1, a0
	li t1, 0x489
	srl s4, s8, t1
	li s8, 0x784
	srl a3, s4, s8
	li t5, 0x664
	srl t6, a3, t5
	li t1, 0x294
	srl a4, t6, t1
	li t2, 0x1cb
	srl t1, a4, t2
	li s0, 0x27d
	srl s9, t1, s0
	li t6, 0x3ad
	srl a2, s9, t6
	li a3, 0x3c
	srl t5, a2, a3
	li t3, 0x29c
	srl s5, t5, t3
	li t5, 0x3c1
	srl s11, s5, t5
	li s4, 0x104
	srl t1, s11, s4
	li a2, 0x6f8
	srl a2, t1, a2
	li s11, 0x3d7
	srl t1, a2, s11
	li s5, 0x12f
	srl s2, t1, s5
	li a1, 0x7df
	srl t6, s2, a1
	li a7, 0x5cd
	srl a4, t6, a7
	li s2, 0x4d0
	srl a4, a4, s2
	li s6, 0x26d
	srl s3, a4, s6
	li a1, 0x75c
	srl s0, s3, a1
	li a4, 0x5e1
	srl s10, s0, a4
	li t5, 0x65f
	srl s2, s10, t5
	li s11, 0x293
	srl a0, s2, s11
	li t6, 0x5b5
	srl a6, a0, t6
	li t6, 0x494
	srl a7, a6, t6
	li a0, 0x65c
	srl t1, a7, a0
	li s1, 0xc0
	srl t1, t1, s1
	li t3, 0x169
	srl s2, t1, t3
	li a2, 0x42f
	srl a7, s2, a2
	li s10, 0x482
	srl s1, a7, s10
	li t5, 0x3d1
	srl s0, s1, t5
	li s10, 0x5c5
	srl t6, s0, s10
	li s1, 0x333
	srl t2, t6, s1
	li s0, 0x665
	srl a6, t2, s0
	li t6, 0x555
	srl s5, a6, t6
	li a7, 0x31f
	srl a1, s5, a7
	li s10, 0x4aa
	srl a0, a1, s10
	li s0, 0x2b2
	srl s11, a0, s0
	li s1, 0x547
	srl a0, s11, s1
	li s4, 0x678
	srl s8, a0, s4
	li s6, 0x4cf
	srl s8, s8, s6
	li s2, 0x237
	srl s9, s8, s2
	li s1, 0x41f
	srl s2, s9, s1
	li s4, 0x7c3
	srl s0, s2, s4
	li a4, 0x1c3
	srl s1, s0, a4
	li t2, 0x57
	srl s6, s1, t2
	li t1, 0x74f
	srl s9, s6, t1
	li a3, 0x3ea
	srl t3, s9, a3
	li a2, 0x789
	srl s11, t3, a2
	li s2, 0x71e
	srl t6, s11, s2
	li s6, 0x68e
	srl s10, t6, s6
	li s4, 0x78
	srl a3, s10, s4
	li t6, 0x3c9
	srl s8, a3, t6
	li a0, 0x376
	srl a4, s8, a0
	li s3, 0x695
	srl a0, a4, s3
	li s4, 0x67
	srl s10, a0, s4
	li s8, 0x5f4
	srl s9, s10, s8
	li s6, 0x462
	srl a4, s9, s6
	li t3, 0x36d
	srl s1, a4, t3
	li s0, 0x734
	srl a4, s1, s0
	li t5, 0x38
	srl s11, a4, t5
	li s0, 0x4ca
	srl a4, s11, s0
	li s10, 0x66a
	srl a1, a4, s10
	li a3, 0x512
	srl t6, a1, a3
	li a4, 0x71f
	srl t1, t6, a4
	li t3, 0x59a
	srl s1, t1, t3
	li s4, 0x181
	srl a6, s1, s4
	li s9, 0x7be
	srl t3, a6, s9
	li t1, 0x63d
	srl a0, t3, t1
	li t2, 0xce
	srl s4, a0, t2
	li s1, 0x430
	srl t2, s4, s1
	li t1, 0x16
	srl s8, t2, t1
	li s0, 0x7f2
	srl t3, s8, s0
	li s11, 0x541
	srl t2, t3, s11
	li s6, 0x2e1
	srl a4, t2, s6
	li s2, 0x1b8
	srl s11, a4, s2
	li a4, 0x7c5
	srl t5, s11, a4
	li t1, 0x638
	srl t6, t5, t1
	li a4, 0x757
	srl t1, t6, a4
	li a7, 0x438
	srl a3, t1, a7
	li s0, 0x2b3
	srl s4, a3, s0
	li t2, 0x7b1
	srl a6, s4, t2
	li t5, 0x79
	srl a6, a6, t5
	li a7, 0x169
	srl a0, a6, a7
	li t2, 0x3d3
	srl s4, a0, t2
	li s11, 0x500
	srl s1, s4, s11
	li a3, 0x4eb
	srl t6, s1, a3
	li s3, 0x26
	srl a0, t6, s3
	csrr a7, time
	csrr s11, cycle
	csrr a0, instret
	sub a4, a7, t4
	sub s6, s11, s7
	sub s8, a0, a5
	li s7, 0
	csrr a6, time
	csrr t5, cycle
	csrr a4, instret
	li a1, 0x52d
	srl s11, s7, a1
	li a3, 0x233
	srl t1, s11, a3
	li a5, 0x786
	srl a1, t1, a5
	li t3, 0x5c4
	srl a1, a1, t3
	li t1, 0x40c
	srl s5, a1, t1
	li s2, 0x278
	srl a0, s5, s2
	li s5, 0xe5
	srl t2, a0, s5
	li s11, 0xc3
	srl s9, t2, s11
	li t3, 0x45b
	srl a3, s9, t3
	li s9, 0x635
	srl a2, a3, s9
	li s6, 0x747
	srl t6, a2, s6
	li s0, 0x173
	srl s7, t6, s0
	li a2, 0x756
	srl s11, s7, a2
	li t2, 0x403
	srl t6, s11, t2
	li t2, 0x39f
	srl s5, t6, t2
	li s4, 0x1d7
	srl s3, s5, s4
	li a2, 0x53e
	srl t4, s3, a2
	li t2, 0x45a
	srl s2, t4, t2
	li s0, 0x57d
	srl s10, s2, s0
	li s5, 0x5c1
	srl a3, s10, s5
	li s6, 0x60
	srl t4, a3, s6
	li s7, 0x236
	srl t6, t4, s7
	li s10, 0x5e2
	srl s5, t6, s10
	li t3, 0x2fe
	srl t1, s5, t3
	li s5, 0x1cc
	srl t3, t1, s5
	li a7, 0x259
	srl t2, t3, a7
	li s11, 0x27f
	srl s0, t2, s11
	li s10, 0x553
	srl s1, s0, s10
	li t2, 0x6f9
	srl s0, s1, t2
	li s3, 0x19f
	srl t6, s0, s3
	li t4, 0x52d
	srl s5, t6, t4
	li t2, 0x268
	srl a3, s5, t2
	li s5, 0x46a
	srl a3, a3, s5
	li a2, 0x1dc
	srl t3, a3, a2
	li a0, 0x393
	srl s6, t3, a0
	li s11, 0x78a
	srl s0, s6, s11
	li s2, 0xb0
	srl t1, s0, s2
	li t6, 0x2f8
	srl a3, t1, t6
	li s9, 0x575
	srl s1, a3, s9
	li s6, 0x3e4
	srl a0, s1, s6
	li t6, 0x738
	srl a3, a0, t6
	li t3, 0x7a
	srl a0, a3, t3
	li a2, 0x1f7
	srl s2, a0, a2
	li a5, 0x217
	srl s10, s2, a5
	li s6, 0x1b4
	srl s11, s10, s6
	li s4, 0x355
	srl a7, s11, s4
	li a1, 0x7a8
	srl s2, a7, a1
	li s9, 0x426
	srl a7, s2, s9
	li s10, 0x25e
	srl t1, a7, s10
	li s0, 0x301
	srl s6, t1, s0
	li s11, 0x7c2
	srl t3, s6, s11
	li s3, 0x382
	srl s2, t3, s3
	li a5, 0x335
	srl s1, s2, a5
	li s3, 0x4e7
	srl s0, s1, s3
	li t3, 0x1d9
	srl s5, s0, t3
	li s6, 0x551
	srl s4, s5, s6
	li t4, 0x78e
	srl s7, s4, t4
	li a7, 0x48f
	srl s6, s7, a7
	li s7, 0x521
	srl s2, s6, s7
	li s9, 0x3bd
	srl s9, s2, s9
	li t4, 0x7da
	srl a0, s9, t4
	li s11, 0x739
	srl t4, a0, s11
	li s8, 0x6fe
	srl t2, t4, s8
	li s4, 0x3c1
	srl s9, t2, s4
	li s11, 0x3f7
	srl t3, s9, s11
	li s7, 0x5cb
	srl s3, t3, s7
	li s1, 0x264
	srl t6, s3, s1
	li s11, 0x3a
	srl a2, t6, s11
	li a5, 0x149
	srl s10, a2, a5
	li a7, 0x441
	srl a7, s10, a7
	li s6, 0xde
	srl a0, a7, s6
	li s7, 0x6fe
	srl s8, a0, s7
	li s6, 0x63c
	srl s10, s8, s6
	li a5, 0x5bf
	srl s8, s10, a5
	li a0, 0x2a9
	srl s9, s8, a0
	li t3, 0x791
	srl t3, s9, t3
	li a3, 0x3e7
	srl s8, t3, a3
	li t6, 0x1e5
	srl s4, s8, t6
	li s11, 0x4d8
	srl a1, s4, s11
	li s1, 0x3f3
	srl a1, a1, s1
	li s4, 0xed
	srl s3, a1, s4
	li s0, 0x3af
	srl s2, s3, s0
	li s0, 0x3fa
	srl t3, s2, s0
	li s4, 0x468
	srl a0, t3, s4
	li a7, 0x6ab
	srl s10, a0, a7
	li s11, 0x7ef
	srl s7, s10, s11
	li a5, 0x529
	srl a1, s7, a5
	li s0, 0x37c
	srl s5, a1, s0
	li a0, 0x5c6
	srl a5, s5, a0
	li s4, 0x423
	srl s0, a5, s4
	li s4, 0x130
	srl a3, s0, s4
	li a0, 0x243
	srl s3, a3, a0
	li t4, 0xbf
	srl s2, s3, t4
	li a1, 0x6a6
	srl a5, s2, a1
	li s1, 0x277
	srl a3, a5, s1
	li a0, 0x7bf
	srl s4, a3, a0
	li s9, 0x3f7
	srl s10, s4, s9
	li s2, 0x3fc
	srl s7, s10, s2
	li t1, 0x237
	srl s0, s7, t1
	li s4, 0x683
	srl s8, s0, s4
	csrr a3, time
	csrr a5, cycle
	csrr a2, instret
	sub t2, a3, a6
	sub a7, a5, t5
	sub a1, a2, a4
	li t5, 0
	csrr s3, time
	csrr s7, cycle
	csrr s10, instret
	li t2, 0x3a1
	srl a4, t5, t2
	li s11, 0x6c4
	srl t1, a4, s11
	li s2, 0x273
	srl a4, t1, s2
	li t2, 0x57d
	srl t5, a4, t2
	li a2, 0x15e
	srl s4, t5, a2
	li t1, 0x24f
	srl a3, s4, t1
	li s6, 0x150
	srl a4, a3, s6
	li t1, 0x3a5
	srl s2, a4, t1
	li a2, 0x8a
	srl t6, s2, a2
	li t4, 0xe9
	srl t1, t6, t4
	li s2, 0x3aa
	srl t2, t1, s2
	li s11, 0x2a4
	srl a2, t2, s11
	li t4, 0x546
	srl s1, a2, t4
	li a6, 0x359
	srl t4, s1, a6
	li t6, 0x684
	srl a6, t4, t6
	li a3, 0x443
	srl s8, a6, a3
	li t3, 0x2fe
	srl s4, s8, t3
	li a5, 0x551
	srl s9, s4, a5
	li a4, 0x13a
	srl a5, s9, a4
	li s0, 0x48e
	srl s9, a5, s0
	li s0, 0x5f9
	srl s9, s9, s0
	li t6, 0x709
	srl t5, s9, t6
	li a4, 0x20f
	srl s8, t5, a4
	li t5, 0x58f
	srl s9, s8, t5
	li s11, 0x4b6
	srl s2, s9, s11
	li t5, 0x4ef
	srl t4, s2, t5
	li a5, 0x6c4
	srl s0, t4, a5
	li t4, 0x386
	srl s1, s0, t4
	li a0, 0x181
	srl a6, s1, a0
	li a4, 0x269
	srl t1, a6, a4
	li s6, 0x7dc
	srl t1, t1, s6
	li a3, 0x293
	srl s9, t1, a3
	li a0, 0xd2
	srl s2, s9, a0
	li s6, 0x27d
	srl s0, s2, s6
	li t2, 0x5d9
	srl s4, s0, t2
	li a2, 0x55f
	srl a5, s4, a2
	li t3, 0x4e1
	srl s6, a5, t3
	li a3, 0x419
	srl t6, s6, a3
	li a0, 0x609
	srl a2, t6, a0
	li a0, 0x7a4
	srl a2, a2, a0
	li s4, 0x715
	srl a3, a2, s4
	li s4, 0x7a4
	srl s1, a3, s4
	li s8, 0x7fd
	srl t1, s1, s8
	li a4, 0x110
	srl a4, t1, a4
	li t6, 0x242
	srl s9, a4, t6
	li t5, 0xc3
	srl s6, s9, t5
	li a2, 0x2ec
	srl s11, s6, a2
	li t1, 0x309
	srl t2, s11, t1
	li t4, 0x38c
	srl a0, t2, t4
	li s4, 0x4e5
	srl s5, a0, s4
	li t2, 0x54b
	srl a5, s5, t2
	li t2, 0x73f
	srl t4, a5, t2
	li t2, 0x46d
	srl t2, t4, t2
	li a4, 0x450
	srl a2, t2, a4
	li s0, 0x5c0
	srl a0, a2, s0
	li t4, 0x5d
	srl s8, a0, t4
	li a0, 0x50a
	srl a6, s8, a0
	li a2, 0x69a
	srl t5, a6, a2
	li a3, 0x2d9
	srl s0, t5, a3
	li a3, 0x59e
	srl s8, s0, a3
	li s0, 0x48e
	srl t1, s8, s0
	li s9, 0x62d
	srl s2, t1, s9
	li t4, 0x72c
	srl s9, s2, t4
	li s0, 0x148
	srl s4, s9, s0
	li a0, 0x65b
	srl s5, s4, a0
	li a2, 0x366
	srl s1, s5, a2
	li s8, 0x13d
	srl s8, s1, s8
	li a3, 0x5d6
	srl s9, s8, a3
	li t6, 0x3af
	srl s9, s9, t6
	li a6, 0x73c
	srl t5, s9, a6
	li t2, 0x2c8
	srl t3, t5, t2
	li a4, 0x785
	srl a2, t3, a4
	li a5, 0x1d3
	srl s5, a2, a5
	li a6, 0x76a
	srl t2, s5, a6
	li s5, 0x2a0
	srl a0, t2, s5
	li s0, 0x3e7
	srl s11, a0, s0
	li s1, 0xa9
	srl t6, s11, s1
	li s0, 0x6af
	srl s11, t6, s0
	li s8, 0x4ca
	srl t3, s11, s8
	li a3, 0x3a6
	srl a6, t3, a3
	li s2, 0x3a1
	srl s2, a6, s2
	li t1, 0x1b1
	srl t3, s2, t1
	li s8, 0x476
	srl s0, t3, s8
	li s4, 0x386
	srl t6, s0, s4
	li s1, 0x2c9
	srl s6, t6, s1
	li t4, 0x112
	srl a2, s6, t4
	li s0, 0x107
	srl s4, a2, s0
	li t1, 0x38a
	srl a4, s4, t1
	li a0, 0x466
	srl s6, a4, a0
	li s9, 0x2d5
	srl s5, s6, s9
	li s1, 0x4af
	srl s11, s5, s1
	li s6, 0x5dd
	srl s11, s11, s6
	li s5, 0x8a
	srl a3, s11, s5
	li s2, 0x1c4
	srl s0, a3, s2
	li a3, 0x49
	srl s4, s0, a3
	li t4, 0x4aa
	srl a3, s4, t4
	li a4, 0x785
	srl s0, a3, a4
	li t2, 0x634
	srl s2, s0, t2
	li a6, 0x707
	srl t4, s2, a6
	li t2, 0x141
	srl a2, t4, t2
	csrr a4, time
	csrr t5, cycle
	csrr a3, instret
	sub s2, a4, s3
	sub t1, t5, s7
	sub s2, a3, s10
	beq a7, t1, pass_label_41
	li t2, failed_addr
	ld s8, 0(t2)
	jr s8
pass_label_41:
	beq a1, s2, pass_label_42
	li s10, failed_addr
	ld a3, 0(s10)
	jr a3
pass_label_42:
SID_ZKT_05_SRL_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SRA)
SID_ZKT_05_SRA:
	li sp, SID_ZKT_05_SRA_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s5, 0
	csrr s4, time
	csrr s3, cycle
	csrr t4, instret
	li a3, 0x439
	sra t5, s5, a3
	li s5, 0x60c
	sra s9, t5, s5
	li a6, 0x6b4
	sra t1, s9, a6
	li s5, 0x291
	sra s1, t1, s5
	li s10, 0x2f0
	sra a3, s1, s10
	li s10, 0x2da
	sra a4, a3, s10
	li s8, 0x6b
	sra s9, a4, s8
	li s6, 0x5d1
	sra a0, s9, s6
	li a5, 0x470
	sra s0, a0, a5
	li t6, 0x2e6
	sra t1, s0, t6
	li t2, 0x4e4
	sra t6, t1, t2
	li s5, 0x60c
	sra a4, t6, s5
	li s7, 0x72
	sra a2, a4, s7
	li a4, 0x52a
	sra a3, a2, a4
	li s9, 0x63a
	sra s10, a3, s9
	li a7, 0x564
	sra s2, s10, a7
	li s0, 0x9
	sra t6, s2, s0
	li a5, 0x20
	sra a3, t6, a5
	li s0, 0x6fd
	sra s5, a3, s0
	li s1, 0x42d
	sra a7, s5, s1
	li a0, 0x33a
	sra s10, a7, a0
	li a7, 0x3a1
	sra t2, s10, a7
	li t3, 0x614
	sra a2, t2, t3
	li s10, 0x7dd
	sra a0, a2, s10
	li t1, 0x69e
	sra s5, a0, t1
	li t1, 0x39e
	sra t2, s5, t1
	li a1, 0x56
	sra a2, t2, a1
	li s1, 0x641
	sra t6, a2, s1
	li s7, 0x3e1
	sra s11, t6, s7
	li a4, 0x163
	sra s7, s11, a4
	li t5, 0x28
	sra s5, s7, t5
	li a2, 0x2da
	sra a1, s5, a2
	li s2, 0x1ae
	sra a2, a1, s2
	li s9, 0x3e6
	sra a1, a2, s9
	li t2, 0xd5
	sra t5, a1, t2
	li a5, 0x551
	sra s1, t5, a5
	li s10, 0x2cc
	sra s0, s1, s10
	li a2, 0x562
	sra t1, s0, a2
	li a3, 0x111
	sra a5, t1, a3
	li a3, 0x439
	sra a7, a5, a3
	li s10, 0xf4
	sra t2, a7, s10
	li a2, 0x15e
	sra t5, t2, a2
	li a2, 0x4e1
	sra s1, t5, a2
	li a3, 0x2b
	sra s8, s1, a3
	li s5, 0x299
	sra t3, s8, s5
	li s10, 0x52d
	sra s11, t3, s10
	li t5, 0x7b3
	sra s1, s11, t5
	li s7, 0x6f0
	sra t2, s1, s7
	li t1, 0x241
	sra a2, t2, t1
	li s5, 0x67f
	sra t1, a2, s5
	li s1, 0x7da
	sra s9, t1, s1
	li a1, 0x1cc
	sra s6, s9, a1
	li a1, 0x6cc
	sra s6, s6, a1
	li t1, 0x2c7
	sra t3, s6, t1
	li s0, 0x249
	sra a7, t3, s0
	li t6, 0x20a
	sra t1, a7, t6
	li t2, 0x366
	sra a6, t1, t2
	li a7, 0x6d7
	sra s5, a6, a7
	li a7, 0x61c
	sra t2, s5, a7
	li t1, 0x5c4
	sra t2, t2, t1
	li t1, 0x1b1
	sra s0, t2, t1
	li a6, 0x4da
	sra t6, s0, a6
	li a1, 0x534
	sra t2, t6, a1
	li a7, 0x38f
	sra a6, t2, a7
	li a1, 0x5bc
	sra s9, a6, a1
	li s8, 0x20d
	sra t5, s9, s8
	li t6, 0x24a
	sra a3, t5, t6
	li s10, 0x1b2
	sra s11, a3, s10
	li a1, 0x2dc
	sra s8, s11, a1
	li a0, 0x2e9
	sra s6, s8, a0
	li t1, 0x38
	sra s11, s6, t1
	li a6, 0x585
	sra s11, s11, a6
	li t1, 0x128
	sra t2, s11, t1
	li t6, 0x622
	sra t3, t2, t6
	li s10, 0x257
	sra s8, t3, s10
	li s7, 0x600
	sra a7, s8, s7
	li a2, 0x6cb
	sra s8, a7, a2
	li a2, 0x68f
	sra t6, s8, a2
	li s7, 0x274
	sra s8, t6, s7
	li a6, 0x34
	sra a3, s8, a6
	li s6, 0x33a
	sra t2, a3, s6
	li a1, 0x47a
	sra s7, t2, a1
	li s8, 0x419
	sra a1, s7, s8
	li a0, 0x33b
	sra t5, a1, a0
	li s5, 0x758
	sra s2, t5, s5
	li a7, 0x71e
	sra s0, s2, a7
	li t2, 0x31f
	sra t2, s0, t2
	li s5, 0x137
	sra t3, t2, s5
	li a0, 0x765
	sra a6, t3, a0
	li s7, 0x2b1
	sra s11, a6, s7
	li a3, 0xb6
	sra a0, s11, a3
	li s2, 0x74b
	sra s1, a0, s2
	li s6, 0x695
	sra a0, s1, s6
	li a5, 0x624
	sra a1, a0, a5
	li t2, 0x2d2
	sra s7, a1, t2
	li s0, 0x37
	sra s6, s7, s0
	li a0, 0x461
	sra s7, s6, a0
	li s9, 0x710
	sra s9, s7, s9
	li t5, 0x28d
	sra t3, s9, t5
	li s8, 0x251
	sra s9, t3, s8
	csrr t1, time
	csrr t2, cycle
	csrr t6, instret
	sub a0, t1, s4
	sub a6, t2, s3
	sub s9, t6, t4
	li s9, 0
	csrr s11, time
	csrr t6, cycle
	csrr a7, instret
	li a2, 0x56
	sra a4, s9, a2
	li t2, 0x47e
	sra a3, a4, t2
	li t5, 0x535
	sra a4, a3, t5
	li s1, 0xa8
	sra a1, a4, s1
	li a3, 0xea
	sra s5, a1, a3
	li a2, 0x5b8
	sra a3, s5, a2
	li s2, 0x19
	sra s10, a3, s2
	li t4, 0x70e
	sra s5, s10, t4
	li a2, 0x5e
	sra t2, s5, a2
	li t5, 0x3fc
	sra s0, t2, t5
	li s4, 0x5d3
	sra t1, s0, s4
	li a1, 0x453
	sra s10, t1, a1
	li s4, 0xa6
	sra t4, s10, s4
	li a1, 0x5a4
	sra t2, t4, a1
	li a4, 0x91
	sra t3, t2, a4
	li a6, 0x748
	sra s0, t3, a6
	li a1, 0x7c8
	sra s10, s0, a1
	li a4, 0x413
	sra s4, s10, a4
	li s6, 0x534
	sra a6, s4, s6
	li s8, 0x320
	sra s0, a6, s8
	li a1, 0xbe
	sra s6, s0, a1
	li a2, 0x27f
	sra s8, s6, a2
	li t3, 0x1fe
	sra a5, s8, t3
	li t2, 0x506
	sra s5, a5, t2
	li a6, 0x560
	sra s3, s5, a6
	li s9, 0x67d
	sra s6, s3, s9
	li a6, 0x156
	sra a0, s6, a6
	li s1, 0x73c
	sra a6, a0, s1
	li a0, 0x4e5
	sra a6, a6, a0
	li s2, 0x5fd
	sra s4, a6, s2
	li a3, 0x35e
	sra a2, s4, a3
	li a6, 0x38d
	sra s9, a2, a6
	li s1, 0x1bd
	sra a4, s9, s1
	li s6, 0x5ef
	sra a5, a4, s6
	li s9, 0x7e0
	sra t5, a5, s9
	li s0, 0x6c2
	sra s3, t5, s0
	li a2, 0x25d
	sra t4, s3, a2
	li s1, 0x1d6
	sra a2, t4, s1
	li a6, 0x1f9
	sra s3, a2, a6
	li s4, 0x230
	sra t1, s3, s4
	li s9, 0xdc
	sra a5, t1, s9
	li s3, 0x1c5
	sra s1, a5, s3
	li s10, 0x1be
	sra s7, s1, s10
	li s9, 0x69
	sra s9, s7, s9
	li s0, 0x132
	sra t5, s9, s0
	li t3, 0xf6
	sra s9, t5, t3
	li s4, 0x2b1
	sra s10, s9, s4
	li t2, 0x31
	sra s9, s10, t2
	li a2, 0x6f
	sra s4, s9, a2
	li s5, 0x5d0
	sra a3, s4, s5
	li s2, 0x10f
	sra s0, a3, s2
	li s5, 0x420
	sra t5, s0, s5
	li a5, 0x3a0
	sra s9, t5, a5
	li s10, 0x752
	sra t3, s9, s10
	li a3, 0x1ed
	sra s5, t3, a3
	li s1, 0x726
	sra s2, s5, s1
	li s8, 0x65e
	sra a2, s2, s8
	li t3, 0x63f
	sra t5, a2, t3
	li s6, 0x457
	sra s0, t5, s6
	li a4, 0x655
	sra s6, s0, a4
	li a3, 0x4a8
	sra s8, s6, a3
	li s4, 0x1c
	sra a2, s8, s4
	li a6, 0x43c
	sra s7, a2, a6
	li s8, 0x6c4
	sra s1, s7, s8
	li t2, 0x237
	sra t4, s1, t2
	li s5, 0x214
	sra s10, t4, s5
	li t4, 0x234
	sra a3, s10, t4
	li a0, 0x345
	sra s8, a3, a0
	li a5, 0x61d
	sra s0, s8, a5
	li s3, 0x629
	sra a1, s0, s3
	li s9, 0x2bb
	sra a0, a1, s9
	li s4, 0x608
	sra a1, a0, s4
	li s4, 0x387
	sra a1, a1, s4
	li a0, 0x23b
	sra a2, a1, a0
	li a0, 0x58e
	sra s10, a2, a0
	li s2, 0x489
	sra s4, s10, s2
	li a3, 0x6e6
	sra s9, s4, a3
	li s6, 0x6a6
	sra a0, s9, s6
	li s10, 0x5f6
	sra s9, a0, s10
	li t3, 0x57
	sra a4, s9, t3
	li a1, 0x493
	sra t5, a4, a1
	li s3, 0x23f
	sra s3, t5, s3
	li a5, 0x16a
	sra a6, s3, a5
	li s1, 0xc1
	sra s7, a6, s1
	li a3, 0x143
	sra a2, s7, a3
	li a4, 0xa3
	sra t2, a2, a4
	li s4, 0x11e
	sra a3, t2, s4
	li t3, 0x452
	sra s2, a3, t3
	li s5, 0x6a5
	sra a6, s2, s5
	li s10, 0x2ca
	sra s1, a6, s10
	li t5, 0x6e
	sra s10, s1, t5
	li a0, 0x309
	sra t4, s10, a0
	li s4, 0x62
	sra s5, t4, s4
	li a0, 0x3db
	sra s10, s5, a0
	li a2, 0x3dd
	sra t1, s10, a2
	li a2, 0x7c5
	sra s9, t1, a2
	li s2, 0x6c3
	sra s7, s9, s2
	li s10, 0x5e5
	sra t4, s7, s10
	li s2, 0x6bb
	sra a4, t4, s2
	li s8, 0x7ab
	sra s8, a4, s8
	csrr t1, time
	csrr a6, cycle
	csrr a5, instret
	sub s1, t1, s11
	sub t3, a6, t6
	sub s3, a5, a7
	li s2, 0
	csrr s6, time
	csrr a6, cycle
	csrr s8, instret
	li s9, 0x7da
	sra s9, s2, s9
	li t4, 0x768
	sra a5, s9, t4
	li t6, 0x5ca
	sra a0, a5, t6
	li s0, 0x4c7
	sra a2, a0, s0
	li a0, 0x188
	sra a1, a2, a0
	li s4, 0x26c
	sra s11, a1, s4
	li s9, 0x4ea
	sra s9, s11, s9
	li a3, 0x1d2
	sra a7, s9, a3
	li t5, 0x714
	sra s9, a7, t5
	li s5, 0x6aa
	sra t5, s9, s5
	li s7, 0x28
	sra t2, t5, s7
	li s11, 0xc8
	sra s11, t2, s11
	li s4, 0x29
	sra a2, s11, s4
	li a5, 0x93
	sra s5, a2, a5
	li s4, 0x19c
	sra t6, s5, s4
	li a5, 0x14
	sra s9, t6, a5
	li a2, 0x153
	sra t6, s9, a2
	li a4, 0x145
	sra a0, t6, a4
	li a2, 0x20
	sra a1, a0, a2
	li t2, 0x84
	sra a4, a1, t2
	li s10, 0x751
	sra t5, a4, s10
	li a7, 0x203
	sra a3, t5, a7
	li t1, 0x43
	sra t2, a3, t1
	li t6, 0x4c5
	sra t1, t2, t6
	li s11, 0x256
	sra s9, t1, s11
	li a0, 0x238
	sra s5, s9, a0
	li a4, 0x1e6
	sra t1, s5, a4
	li a0, 0xec
	sra a3, t1, a0
	li s1, 0x3d0
	sra a2, a3, s1
	li t1, 0x550
	sra s0, a2, t1
	li s2, 0x777
	sra a1, s0, s2
	li s10, 0x63
	sra s2, a1, s10
	li a2, 0x260
	sra t5, s2, a2
	li a1, 0x2c2
	sra t1, t5, a1
	li a1, 0x758
	sra t4, t1, a1
	li s4, 0x514
	sra a0, t4, s4
	li s10, 0x743
	sra s1, a0, s10
	li s9, 0x106
	sra s11, s1, s9
	li s10, 0x7f5
	sra s10, s11, s10
	li s11, 0x3
	sra a4, s10, s11
	li s5, 0x264
	sra t4, a4, s5
	li s1, 0x11b
	sra a1, t4, s1
	li s7, 0x760
	sra a0, a1, s7
	li s0, 0x107
	sra a1, a0, s0
	li a4, 0x2a0
	sra a5, a1, a4
	li t5, 0x7ab
	sra t1, a5, t5
	li s7, 0x375
	sra s11, t1, s7
	li a7, 0x2c5
	sra a4, s11, a7
	li a7, 0x3e5
	sra a1, a4, a7
	li a3, 0x3c
	sra s7, a1, a3
	li a1, 0x477
	sra t4, s7, a1
	li s1, 0x88
	sra a0, t4, s1
	li a4, 0x63d
	sra a2, a0, a4
	li t2, 0x73c
	sra t2, a2, t2
	li s1, 0x7df
	sra a0, t2, s1
	li s0, 0x488
	sra a0, a0, s0
	li s9, 0x4c2
	sra t1, a0, s9
	li a4, 0x3c8
	sra t4, t1, a4
	li a4, 0x65c
	sra s1, t4, a4
	li s0, 0x67b
	sra t4, s1, s0
	li s0, 0x110
	sra s7, t4, s0
	li t2, 0x71b
	sra t5, s7, t2
	li t1, 0x52a
	sra s0, t5, t1
	li a1, 0xc6
	sra s11, s0, a1
	li a2, 0x263
	sra t6, s11, a2
	li s7, 0x296
	sra s11, t6, s7
	li a0, 0x46e
	sra a2, s11, a0
	li a7, 0x6a6
	sra a1, a2, a7
	li t6, 0x48a
	sra t2, a1, t6
	li t4, 0x17a
	sra a4, t2, t4
	li s10, 0x5e0
	sra s10, a4, s10
	li t4, 0xc4
	sra s7, s10, t4
	li a5, 0x4c
	sra s7, s7, a5
	li s11, 0x27f
	sra a1, s7, s11
	li a3, 0x289
	sra t1, a1, a3
	li s5, 0x26b
	sra a0, t1, s5
	li a3, 0x696
	sra s9, a0, a3
	li t2, 0x58d
	sra t2, s9, t2
	li t4, 0x14a
	sra s9, t2, t4
	li t5, 0x19c
	sra a5, s9, t5
	li s10, 0x87
	sra s0, a5, s10
	li t4, 0x26c
	sra s5, s0, t4
	li t6, 0x707
	sra s7, s5, t6
	li t6, 0x305
	sra t2, s7, t6
	li s0, 0xff
	sra a2, t2, s0
	li t5, 0x309
	sra s5, a2, t5
	li a3, 0x611
	sra a0, s5, a3
	li t6, 0x480
	sra a3, a0, t6
	li t5, 0x5a1
	sra t4, a3, t5
	li s4, 0x104
	sra s11, t4, s4
	li a4, 0x23
	sra s5, s11, a4
	li s7, 0x7e0
	sra s2, s5, s7
	li a2, 0x5da
	sra a0, s2, a2
	li a7, 0x113
	sra a2, a0, a7
	li a1, 0x6ed
	sra s4, a2, a1
	li t4, 0x697
	sra a1, s4, t4
	li s9, 0x640
	sra t1, a1, s9
	li a2, 0x32
	sra s9, t1, a2
	li a7, 0x238
	sra s10, s9, a7
	li t4, 0x266
	sra t1, s10, t4
	csrr s5, time
	csrr a3, cycle
	csrr a2, instret
	sub a1, s5, s6
	sub s11, a3, a6
	sub a2, a2, s8
	beq t3, s11, pass_label_43
	li t6, failed_addr
	ld s4, 0(t6)
	jr s4
pass_label_43:
	beq s3, a2, pass_label_44
	li a4, failed_addr
	ld s3, 0(a4)
	jr s3
pass_label_44:
SID_ZKT_05_SRA_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_OR)
SID_ZKT_05_OR:
	li sp, SID_ZKT_05_OR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a7, 0
	csrr a0, time
	csrr s8, cycle
	csrr t4, instret
	li s9, 0x376
	or a7, a7, s9
	li s2, 0x231
	or s7, a7, s2
	li t2, 0x41d
	or a6, s7, t2
	li s4, 0x7e
	or s3, a6, s4
	li s9, 0x152
	or t6, s3, s9
	li a7, 0x58e
	or a1, t6, a7
	li s0, 0x62b
	or t2, a1, s0
	li s6, 0xf5
	or t6, t2, s6
	li s6, 0x3d5
	or a7, t6, s6
	li s10, 0x3e6
	or a7, a7, s10
	li s1, 0xd0
	or a5, a7, s1
	li t3, 0x3e1
	or s5, a5, t3
	li t6, 0x18d
	or s11, s5, t6
	li t3, 0x2cc
	or t1, s11, t3
	li a5, 0x3c8
	or a4, t1, a5
	li a2, 0x5a8
	or t2, a4, a2
	li s11, 0x1f5
	or t2, t2, s11
	li t6, 0x668
	or s1, t2, t6
	li a7, 0x5f4
	or a2, s1, a7
	li a4, 0x297
	or a7, a2, a4
	li a5, 0x710
	or s2, a7, a5
	li s3, 0x6b7
	or s0, s2, s3
	li s10, 0x3db
	or s7, s0, s10
	li s6, 0x3f4
	or t3, s7, s6
	li a1, 0x5d3
	or a2, t3, a1
	li t2, 0x53c
	or s1, a2, t2
	li t6, 0x21e
	or t5, s1, t6
	li s0, 0x56b
	or a1, t5, s0
	li s11, 0x752
	or s1, a1, s11
	li t2, 0x2a3
	or s6, s1, t2
	li a7, 0xf1
	or s7, s6, a7
	li s0, 0x474
	or t1, s7, s0
	li a2, 0x70a
	or a6, t1, a2
	li s0, 0x722
	or a1, a6, s0
	li a5, 0x96
	or s1, a1, a5
	li a1, 0x144
	or s10, s1, a1
	li a6, 0x1b7
	or s0, s10, a6
	li s11, 0x674
	or t6, s0, s11
	li s5, 0x1a9
	or a5, t6, s5
	li s9, 0x3c1
	or t1, a5, s9
	li s11, 0x612
	or t3, t1, s11
	li s6, 0x494
	or s11, t3, s6
	li a6, 0x228
	or t1, s11, a6
	li s11, 0x1ae
	or a3, t1, s11
	li a2, 0x3d9
	or s5, a3, a2
	li s1, 0x59a
	or s6, s5, s1
	li s5, 0x199
	or a4, s6, s5
	li s6, 0x3fc
	or a2, a4, s6
	li s11, 0x1a8
	or a7, a2, s11
	li t6, 0x375
	or a7, a7, t6
	li a2, 0x441
	or a7, a7, a2
	li s2, 0x129
	or s4, a7, s2
	li s5, 0x54c
	or a1, s4, s5
	li t1, 0x5a1
	or a6, a1, t1
	li t3, 0x55f
	or s3, a6, t3
	li s0, 0x4ce
	or t2, s3, s0
	li s10, 0x7e0
	or s11, t2, s10
	li t3, 0x69
	or a4, s11, t3
	li s5, 0x493
	or t1, a4, s5
	li a5, 0x552
	or s9, t1, a5
	li s7, 0x7ca
	or s6, s9, s7
	li s0, 0x49b
	or a5, s6, s0
	li t3, 0x59e
	or a2, a5, t3
	li a5, 0x50b
	or s5, a2, a5
	li t3, 0x3c4
	or s5, s5, t3
	li s0, 0x3ad
	or t3, s5, s0
	li a6, 0x3d8
	or s9, t3, a6
	li s0, 0x46b
	or s0, s9, s0
	li t6, 0x79a
	or t2, s0, t6
	li a1, 0x2ba
	or s3, t2, a1
	li a5, 0x222
	or a2, s3, a5
	li s1, 0x167
	or s9, a2, s1
	li s5, 0x3fe
	or a6, s9, s5
	li t5, 0x45
	or t1, a6, t5
	li a4, 0x4c8
	or s3, t1, a4
	li a6, 0x28e
	or a6, s3, a6
	li a7, 0x492
	or a2, a6, a7
	li s0, 0xae
	or t2, a2, s0
	li s2, 0x3fa
	or t3, t2, s2
	li a7, 0x6c5
	or s0, t3, a7
	li t1, 0x9f
	or s4, s0, t1
	li a6, 0x417
	or s1, s4, a6
	li a2, 0x3d4
	or s2, s1, a2
	li a6, 0x58a
	or s3, s2, a6
	li a4, 0x373
	or t2, s3, a4
	li s10, 0x3ed
	or s6, t2, s10
	li s4, 0x545
	or a7, s6, s4
	li a2, 0x6a6
	or s0, a7, a2
	li s10, 0x305
	or t6, s0, s10
	li t1, 0x7b6
	or s5, t6, t1
	li a4, 0x6cf
	or s11, s5, a4
	li s0, 0x109
	or s9, s11, s0
	li s11, 0x2c6
	or s3, s9, s11
	li a2, 0x332
	or s11, s3, a2
	li t3, 0x2d7
	or a6, s11, t3
	li a7, 0x421
	or s3, a6, a7
	li a7, 0x772
	or a6, s3, a7
	li s5, 0x4e7
	or s2, a6, s5
	li s4, 0x757
	or s6, s2, s4
	li t6, 0x95
	or a1, s6, t6
	csrr s10, time
	csrr s0, cycle
	csrr a4, instret
	sub t3, s10, a0
	sub a0, s0, s8
	sub s7, a4, t4
	li t1, 0
	csrr s0, time
	csrr s10, cycle
	csrr s4, instret
	li a7, 0x7b3
	or t1, t1, a7
	li t5, 0x251
	or s11, t1, t5
	li s3, 0x48d
	or a3, s11, s3
	li s11, 0x19e
	or a2, a3, s11
	li t1, 0x23e
	or a4, a2, t1
	li s5, 0x7fc
	or a1, a4, s5
	li t1, 0x4b8
	or t2, a1, t1
	li t5, 0x6a0
	or s3, t2, t5
	li t2, 0x5c9
	or a0, s3, t2
	li t3, 0x22b
	or a6, a0, t3
	li s2, 0x53c
	or t3, a6, s2
	li s1, 0x509
	or a7, t3, s1
	li s2, 0x3b0
	or t4, a7, s2
	li a5, 0x1da
	or a4, t4, a5
	li s2, 0x520
	or s5, a4, s2
	li s2, 0x3c2
	or s3, s5, s2
	li s9, 0x62b
	or a0, s3, s9
	li s9, 0x288
	or a6, a0, s9
	li a0, 0x440
	or s3, a6, a0
	li t5, 0x7ff
	or a3, s3, t5
	li a5, 0x1a2
	or s5, a3, a5
	li s8, 0x3d5
	or s5, s5, s8
	li a5, 0x24a
	or a3, s5, a5
	li s1, 0x463
	or a0, a3, s1
	li a3, 0x6e6
	or s2, a0, a3
	li s8, 0x462
	or s3, s2, s8
	li a3, 0x616
	or s6, s3, a3
	li t5, 0x5b6
	or s6, s6, t5
	li t5, 0x1e2
	or a0, s6, t5
	li a2, 0x7
	or t5, a0, a2
	li t3, 0x20b
	or s3, t5, t3
	li s1, 0x5ad
	or s1, s3, s1
	li a4, 0x196
	or t4, s1, a4
	li a1, 0x690
	or a3, t4, a1
	li a1, 0x3fa
	or a2, a3, a1
	li s7, 0x783
	or a5, a2, s7
	li s8, 0xbb
	or s7, a5, s8
	li a2, 0x25e
	or a2, s7, a2
	li a6, 0x133
	or a5, a2, a6
	li a6, 0x706
	or s1, a5, a6
	li a7, 0x303
	or s1, s1, a7
	li a2, 0x55
	or s2, s1, a2
	li t5, 0x1df
	or a0, s2, t5
	li a5, 0x12
	or s6, a0, a5
	li a4, 0x7b3
	or a1, s6, a4
	li t5, 0x2f4
	or s3, a1, t5
	li s1, 0x490
	or t5, s3, s1
	li s3, 0x54d
	or s2, t5, s3
	li a0, 0x61c
	or s3, s2, a0
	li a5, 0x43b
	or s6, s3, a5
	li s2, 0x584
	or s8, s6, s2
	li a3, 0x54e
	or a5, s8, a3
	li s2, 0x5db
	or a3, a5, s2
	li s9, 0x31a
	or t5, a3, s9
	li a7, 0x532
	or s8, t5, a7
	li s3, 0x2b8
	or s9, s8, s3
	li t4, 0x8f
	or t6, s9, t4
	li a3, 0x7ad
	or s6, t6, a3
	li s5, 0x50f
	or t1, s6, s5
	li s2, 0x445
	or s2, t1, s2
	li s6, 0x556
	or a7, s2, s6
	li s2, 0x93
	or a3, a7, s2
	li t6, 0x90
	or s8, a3, t6
	li t1, 0x6c9
	or a0, s8, t1
	li t3, 0x5fd
	or s1, a0, t3
	li s3, 0x36d
	or a6, s1, s3
	li a1, 0x2e4
	or s8, a6, a1
	li t1, 0xd3
	or a2, s8, t1
	li a4, 0x365
	or t6, a2, a4
	li s1, 0x683
	or a5, t6, s1
	li t3, 0x69b
	or a6, a5, t3
	li a0, 0x3b5
	or a7, a6, a0
	li t3, 0x4de
	or s8, a7, t3
	li s1, 0x5a8
	or s11, s8, s1
	li t5, 0x72e
	or t5, s11, t5
	li a4, 0x6c8
	or s9, t5, a4
	li t5, 0x4ac
	or s1, s9, t5
	li s5, 0x5d0
	or t4, s1, s5
	li s9, 0x4e3
	or a7, t4, s9
	li s11, 0x55
	or s3, a7, s11
	li t6, 0x60f
	or a1, s3, t6
	li s1, 0xd8
	or t1, a1, s1
	li t3, 0x606
	or s2, t1, t3
	li t3, 0x644
	or s8, s2, t3
	li t2, 0x1d0
	or a1, s8, t2
	li t2, 0x738
	or s8, a1, t2
	li s6, 0x6e2
	or s11, s8, s6
	li s3, 0x65
	or t4, s11, s3
	li s5, 0x63a
	or a1, t4, s5
	li t1, 0x149
	or s1, a1, t1
	li s11, 0x4bb
	or a4, s1, s11
	li t6, 0x2cc
	or a6, a4, t6
	li t4, 0x586
	or a6, a6, t4
	li s2, 0x26d
	or s1, a6, s2
	li t4, 0x4f2
	or s9, s1, t4
	li a3, 0xe7
	or s6, s9, a3
	li t5, 0x1fd
	or t3, s6, t5
	li t5, 0x373
	or s8, t3, t5
	li t5, 0x54e
	or s3, s8, t5
	li s6, 0x4ee
	or a2, s3, s6
	csrr a1, time
	csrr t4, cycle
	csrr s8, instret
	sub a7, a1, s0
	sub s1, t4, s10
	sub s2, s8, s4
	li t3, 0
	csrr s11, time
	csrr s8, cycle
	csrr t1, instret
	li a2, 0x14c
	or a4, t3, a2
	li t4, 0x545
	or a6, a4, t4
	li a4, 0x6df
	or a2, a6, a4
	li s6, 0x3ce
	or a0, a2, s6
	li t4, 0x6f0
	or t4, a0, t4
	li t2, 0x53e
	or a5, t4, t2
	li a4, 0x77
	or s4, a5, a4
	li a6, 0x138
	or s0, s4, a6
	li s9, 0x307
	or t5, s0, s9
	li a6, 0x4c
	or s4, t5, a6
	li s6, 0x707
	or a7, s4, s6
	li t6, 0x4a0
	or s4, a7, t6
	li t2, 0x505
	or s3, s4, t2
	li a4, 0xb7
	or s3, s3, a4
	li s7, 0x5f6
	or s4, s3, s7
	li a0, 0x7fb
	or a2, s4, a0
	li s10, 0x7da
	or t6, a2, s10
	li s4, 0x96
	or a5, t6, s4
	li a7, 0x2d2
	or a0, a5, a7
	li t5, 0x229
	or s9, a0, t5
	li t2, 0x52e
	or a1, s9, t2
	li a4, 0x2d6
	or s3, a1, a4
	li a2, 0x63a
	or s4, s3, a2
	li a6, 0x63f
	or t6, s4, a6
	li s10, 0x3f2
	or a1, t6, s10
	li a0, 0x66a
	or a1, a1, a0
	li a0, 0x581
	or a5, a1, a0
	li a4, 0x34a
	or s10, a5, a4
	li s6, 0x778
	or s9, s10, s6
	li s4, 0x6e8
	or t6, s9, s4
	li a7, 0x28e
	or t5, t6, a7
	li s0, 0x655
	or s0, t5, s0
	li t2, 0x3fd
	or t6, s0, t2
	li a6, 0xdf
	or s4, t6, a6
	li s0, 0x595
	or s7, s4, s0
	li a5, 0x666
	or s9, s7, a5
	li a2, 0x5e6
	or s7, s9, a2
	li a6, 0x467
	or s9, s7, a6
	li s5, 0x581
	or t5, s9, s5
	li a6, 0x780
	or a0, t5, a6
	li a6, 0x3ef
	or s4, a0, a6
	li a2, 0x4e4
	or t6, s4, a2
	li a4, 0x69f
	or t5, t6, a4
	li a0, 0x4d7
	or a0, t5, a0
	li a4, 0x1bb
	or t4, a0, a4
	li t5, 0x3fd
	or a4, t4, t5
	li s6, 0x55f
	or s7, a4, s6
	li t3, 0x5b
	or a1, s7, t3
	li s0, 0x728
	or a7, a1, s0
	li a3, 0x1de
	or a2, a7, a3
	li s9, 0x3f9
	or t4, a2, s9
	li t2, 0x173
	or a7, t4, t2
	li s9, 0x595
	or t3, a7, s9
	li s6, 0xaf
	or t5, t3, s6
	li a4, 0x619
	or t4, t5, a4
	li s9, 0x71f
	or s6, t4, s9
	li t3, 0x6c7
	or a6, s6, t3
	li s5, 0x27f
	or a4, a6, s5
	li a2, 0x7ff
	or a0, a4, a2
	li t4, 0x440
	or s0, a0, t4
	li a6, 0x2ad
	or t2, s0, a6
	li a4, 0xdf
	or a3, t2, a4
	li s4, 0x4ee
	or t4, a3, s4
	li t2, 0xa1
	or a4, t4, t2
	li s3, 0x36c
	or a6, a4, s3
	li a3, 0x5c
	or s4, a6, a3
	li s10, 0x249
	or a3, s4, s10
	li s10, 0xd6
	or s0, a3, s10
	li a7, 0x147
	or t6, s0, a7
	li s10, 0x116
	or s4, t6, s10
	li a7, 0xcb
	or a0, s4, a7
	li t4, 0x4b2
	or a3, a0, t4
	li a7, 0x57b
	or s10, a3, a7
	li s4, 0x3af
	or a1, s10, s4
	li a4, 0x3f1
	or a1, a1, a4
	li a6, 0x110
	or s5, a1, a6
	li t2, 0x147
	or s5, s5, t2
	li a6, 0x78
	or a2, s5, a6
	li t4, 0x5ce
	or a4, a2, t4
	li s6, 0x504
	or t6, a4, s6
	li a0, 0x1be
	or s4, t6, a0
	li s7, 0x253
	or s3, s4, s7
	li a4, 0x509
	or t5, s3, a4
	li a6, 0x128
	or s0, t5, a6
	li a7, 0x515
	or t2, s0, a7
	li a2, 0x7e6
	or a7, t2, a2
	li s10, 0x2c7
	or t2, a7, s10
	li s9, 0x624
	or a5, t2, s9
	li t6, 0x464
	or s9, a5, t6
	li s0, 0x195
	or a2, s9, s0
	li s3, 0x36f
	or a3, a2, s3
	li t3, 0x78
	or t2, a3, t3
	li s9, 0x125
	or a7, t2, s9
	li t6, 0x1f8
	or s3, a7, t6
	li s5, 0x7a5
	or s0, s3, s5
	li a1, 0x4e5
	or a0, s0, a1
	li a2, 0x5f5
	or s3, a0, a2
	li t6, 0x184
	or a3, s3, t6
	li s4, 0x274
	or a6, a3, s4
	li t2, 0x373
	or t2, a6, t2
	csrr a6, time
	csrr t2, cycle
	csrr s9, instret
	sub t3, a6, s11
	sub s5, t2, s8
	sub a2, s9, t1
	beq s1, s5, pass_label_45
	li t6, failed_addr
	ld t2, 0(t6)
	jr t2
pass_label_45:
	beq s2, a2, pass_label_46
	li t1, failed_addr
	ld s0, 0(t1)
	jr s0
pass_label_46:
SID_ZKT_05_OR_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_AND)
SID_ZKT_05_AND:
	li sp, SID_ZKT_05_AND_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a2, 0
	csrr t2, time
	csrr t1, cycle
	csrr s1, instret
	li s2, 0x5a9
	and t4, a2, s2
	li s8, 0x6d9
	and s2, t4, s8
	li s6, 0x69f
	and t5, s2, s6
	li s10, 0x545
	and s9, t5, s10
	li a6, 0x18a
	and t4, s9, a6
	li s11, 0x50e
	and s6, t4, s11
	li s9, 0x4d0
	and t3, s6, s9
	li a4, 0x33e
	and s4, t3, a4
	li s7, 0x18f
	and a1, s4, s7
	li s2, 0x539
	and s2, a1, s2
	li t4, 0x22a
	and s8, s2, t4
	li s5, 0x7b5
	and a1, s8, s5
	li s10, 0x761
	and s3, a1, s10
	li s2, 0x3f0
	and a6, s3, s2
	li s2, 0x7ee
	and t6, a6, s2
	li s5, 0x283
	and a2, t6, s5
	li a5, 0x104
	and a1, a2, a5
	li s5, 0x1c7
	and s5, a1, s5
	li s2, 0x267
	and s11, s5, s2
	li a6, 0x5c0
	and a6, s11, a6
	li a5, 0x3b1
	and s11, a6, a5
	li a5, 0x299
	and s2, s11, a5
	li s10, 0x5b5
	and s2, s2, s10
	li a6, 0x399
	and a4, s2, a6
	li a3, 0x7e
	and s9, a4, a3
	li s11, 0x451
	and s6, s9, s11
	li s9, 0x289
	and a1, s6, s9
	li s2, 0x4de
	and a1, a1, s2
	li a2, 0x44d
	and s7, a1, a2
	li s4, 0x3d5
	and t3, s7, s4
	li s8, 0x12a
	and s11, t3, s8
	li s7, 0x762
	and s7, s11, s7
	li s8, 0x716
	and s11, s7, s8
	li s3, 0x4d4
	and s2, s11, s3
	li t5, 0xcb
	and s8, s2, t5
	li t6, 0x153
	and s5, s8, t6
	li a1, 0x32
	and a5, s5, a1
	li a3, 0x257
	and a0, a5, a3
	li a6, 0x7e4
	and a3, a0, a6
	li s6, 0x559
	and a6, a3, s6
	li s4, 0x29c
	and s5, a6, s4
	li a0, 0x3f1
	and s7, s5, a0
	li s10, 0x508
	and s0, s7, s10
	li s11, 0x5
	and s10, s0, s11
	li s11, 0x38e
	and a3, s10, s11
	li s8, 0x584
	and s2, a3, s8
	li s6, 0x7dc
	and t4, s2, s6
	li a5, 0x128
	and a4, t4, a5
	li a6, 0x4ab
	and a0, a4, a6
	li a3, 0x66d
	and s4, a0, a3
	li a0, 0x3b5
	and a5, s4, a0
	li a2, 0x2fa
	and s5, a5, a2
	li a3, 0x4f5
	and a0, s5, a3
	li s2, 0x66f
	and s0, a0, s2
	li a2, 0x140
	and s4, s0, a2
	li t5, 0x6a7
	and s2, s4, t5
	li a2, 0x685
	and a3, s2, a2
	li a1, 0x5d1
	and a5, a3, a1
	li s11, 0x3a6
	and a4, a5, s11
	li a7, 0x120
	and a6, a4, a7
	li t4, 0x2d4
	and s5, a6, t4
	li t6, 0x250
	and a6, s5, t6
	li t3, 0x12d
	and t3, a6, t3
	li a2, 0xf1
	and s2, t3, a2
	li s8, 0x4f7
	and s5, s2, s8
	li s3, 0x452
	and s3, s5, s3
	li a2, 0x617
	and s4, s3, a2
	li s7, 0x3fe
	and a7, s4, s7
	li s2, 0x659
	and s6, a7, s2
	li a2, 0x67a
	and s0, s6, a2
	li a5, 0x6fa
	and s9, s0, a5
	li t4, 0xa5
	and t4, s9, t4
	li s8, 0xfb
	and s6, t4, s8
	li t6, 0x4e2
	and s6, s6, t6
	li t5, 0x189
	and s8, s6, t5
	li a6, 0x5bf
	and s5, s8, a6
	li t4, 0x5cb
	and a4, s5, t4
	li a2, 0x277
	and t4, a4, a2
	li s7, 0x747
	and a2, t4, s7
	li t6, 0x325
	and s8, a2, t6
	li a0, 0x1da
	and a7, s8, a0
	li s3, 0x454
	and a6, a7, s3
	li s8, 0x4f3
	and s11, a6, s8
	li s5, 0xb4
	and s3, s11, s5
	li t5, 0x3fb
	and s8, s3, t5
	li s9, 0x80
	and t5, s8, s9
	li a4, 0x498
	and s9, t5, a4
	li a4, 0x6d3
	and s10, s9, a4
	li t3, 0x7e3
	and s3, s10, t3
	li s10, 0x148
	and t3, s3, s10
	li s9, 0x13b
	and s8, t3, s9
	li a5, 0x393
	and a0, s8, a5
	li s5, 0x1d9
	and s7, a0, s5
	li a7, 0x4d7
	and s3, s7, a7
	li a2, 0x400
	and a4, s3, a2
	li s0, 0x4f5
	and t5, a4, s0
	li t3, 0x216
	and t3, t5, t3
	li s8, 0x532
	and a7, t3, s8
	li a5, 0x424
	and s9, a7, a5
	li s4, 0x526
	and t5, s9, s4
	csrr s0, time
	csrr t4, cycle
	csrr s8, instret
	sub a4, s0, t2
	sub s4, t4, t1
	sub t2, s8, s1
	li s10, 0
	csrr t1, time
	csrr t4, cycle
	csrr s9, instret
	li t2, 0x6d5
	and s11, s10, t2
	li t6, 0x77e
	and s0, s11, t6
	li a0, 0x352
	and t2, s0, a0
	li t3, 0x3be
	and s1, t2, t3
	li t6, 0x75b
	and s6, s1, t6
	li t3, 0x148
	and s4, s6, t3
	li s11, 0x26c
	and s10, s4, s11
	li a7, 0xe8
	and s11, s10, a7
	li a3, 0x7dd
	and a5, s11, a3
	li s3, 0x61a
	and a6, a5, s3
	li s6, 0x50e
	and s2, a6, s6
	li t6, 0x660
	and s2, s2, t6
	li a4, 0x4b3
	and t5, s2, a4
	li s3, 0xd4
	and s10, t5, s3
	li s8, 0x7cc
	and s0, s10, s8
	li t3, 0x6ea
	and a1, s0, t3
	li s2, 0xfe
	and s4, a1, s2
	li t6, 0x1e
	and s6, s4, t6
	li s3, 0x642
	and s2, s6, s3
	li t6, 0x1de
	and t3, s2, t6
	li s11, 0x5b8
	and a1, t3, s11
	li a7, 0x20d
	and s5, a1, a7
	li t3, 0x34f
	and s3, s5, t3
	li s8, 0x56e
	and s4, s3, s8
	li s5, 0x39f
	and s0, s4, s5
	li t3, 0x37
	and s7, s0, t3
	li a4, 0x6b6
	and t3, s7, a4
	li s7, 0x26
	and s1, t3, s7
	li s11, 0x3de
	and a6, s1, s11
	li a5, 0xf2
	and s10, a6, a5
	li a6, 0x1a1
	and s5, s10, a6
	li a0, 0x567
	and a0, s5, a0
	li s1, 0x3e6
	and s7, a0, s1
	li a5, 0x219
	and a1, s7, a5
	li t5, 0x4dd
	and a5, a1, t5
	li s5, 0x6d0
	and s2, a5, s5
	li a3, 0x727
	and a1, s2, a3
	li s4, 0x240
	and s4, a1, s4
	li s0, 0x2d3
	and s1, s4, s0
	li t5, 0x7a1
	and a7, s1, t5
	li s11, 0x181
	and a0, a7, s11
	li s10, 0x740
	and s11, a0, s10
	li a5, 0xa4
	and a7, s11, a5
	li s1, 0x620
	and a7, a7, s1
	li a6, 0x4a0
	and s10, a7, a6
	li s7, 0x479
	and a2, s10, s7
	li s5, 0x421
	and t5, a2, s5
	li a7, 0x5b6
	and s8, t5, a7
	li s3, 0x3cc
	and s3, s8, s3
	li t5, 0xb1
	and t3, s3, t5
	li s0, 0x2fa
	and s5, t3, s0
	li a0, 0x83
	and s5, s5, a0
	li s1, 0x500
	and a5, s5, s1
	li t5, 0x331
	and a0, a5, t5
	li a6, 0x694
	and s2, a0, a6
	li s4, 0x42
	and a6, s2, s4
	li a0, 0x236
	and a0, a6, a0
	li s5, 0x66b
	and a5, a0, s5
	li s2, 0x211
	and a2, a5, s2
	li t3, 0x59a
	and s3, a2, t3
	li s1, 0x474
	and s5, s3, s1
	li t5, 0x1d8
	and s5, s5, t5
	li a0, 0x799
	and s1, s5, a0
	li a0, 0x4c7
	and s7, s1, a0
	li s0, 0x160
	and s8, s7, s0
	li t5, 0x164
	and s3, s8, t5
	li a5, 0x3a6
	and s3, s3, a5
	li a1, 0x4ac
	and a4, s3, a1
	li s0, 0x64f
	and s11, a4, s0
	li s5, 0x36a
	and t3, s11, s5
	li a7, 0x14f
	and s6, t3, a7
	li a6, 0x16e
	and a4, s6, a6
	li t2, 0x7b4
	and a0, a4, t2
	li s4, 0x42e
	and s6, a0, s4
	li a4, 0x41f
	and s6, s6, a4
	li a0, 0x6be
	and a2, s6, a0
	li s2, 0x2f2
	and s10, a2, s2
	li a0, 0x528
	and t5, s10, a0
	li s6, 0x1b3
	and s5, t5, s6
	li s6, 0x4e3
	and s7, s5, s6
	li s4, 0x69e
	and s6, s7, s4
	li s10, 0x6fb
	and s0, s6, s10
	li a3, 0x1f6
	and s5, s0, a3
	li a3, 0x684
	and s4, s5, a3
	li s2, 0x3cc
	and a2, s4, s2
	li a6, 0x7a5
	and s1, a2, a6
	li a3, 0x394
	and a3, s1, a3
	li t5, 0x36
	and s7, a3, t5
	li a4, 0x3af
	and a3, s7, a4
	li s10, 0x28
	and a5, a3, s10
	li s8, 0x6e0
	and s5, a5, s8
	li s2, 0x456
	and a2, s5, s2
	li s0, 0x5fd
	and t3, a2, s0
	li a4, 0x3f4
	and s7, t3, a4
	li s1, 0x48
	and a6, s7, s1
	li t5, 0x75b
	and a5, a6, t5
	li a7, 0x168
	and t5, a5, a7
	li s8, 0x4ee
	and a3, t5, s8
	li a0, 0x41e
	and t2, a3, a0
	li a5, 0x154
	and s4, t2, a5
	csrr t3, time
	csrr s3, cycle
	csrr s8, instret
	sub a6, t3, t1
	sub s0, s3, t4
	sub t6, s8, s9
	li a6, 0
	csrr a0, time
	csrr a2, cycle
	csrr a4, instret
	li s2, 0x87
	and s6, a6, s2
	li s1, 0x5d4
	and a3, s6, s1
	li s7, 0x3be
	and s7, a3, s7
	li t2, 0x2ba
	and a1, s7, t2
	li s7, 0x16c
	and s11, a1, s7
	li t3, 0xe6
	and s4, s11, t3
	li a5, 0x34
	and s2, s4, a5
	li a5, 0x21a
	and a7, s2, a5
	li s8, 0x620
	and s4, a7, s8
	li s7, 0x4cc
	and t4, s4, s7
	li s9, 0x31f
	and t3, t4, s9
	li s5, 0x6b2
	and a5, t3, s5
	li s10, 0x7ad
	and a7, a5, s10
	li s3, 0x75d
	and s6, a7, s3
	li s3, 0x5fb
	and t1, s6, s3
	li s2, 0xd6
	and a1, t1, s2
	li s3, 0x16f
	and s8, a1, s3
	li t2, 0x1de
	and a7, s8, t2
	li s1, 0x44f
	and s9, a7, s1
	li a7, 0xbd
	and s11, s9, a7
	li s10, 0x2db
	and s10, s11, s10
	li s4, 0x37
	and s10, s10, s4
	li a5, 0x240
	and a7, s10, a5
	li s11, 0x54d
	and t2, a7, s11
	li t3, 0x372
	and s9, t2, t3
	li t4, 0x68d
	and s11, s9, t4
	li a5, 0x1a5
	and s11, s11, a5
	li t4, 0x50e
	and t1, s11, t4
	li s2, 0x5a8
	and s3, t1, s2
	li a3, 0x1d4
	and s9, s3, a3
	li t2, 0x311
	and a3, s9, t2
	li t3, 0x414
	and s10, a3, t3
	li s11, 0x7a6
	and a6, s10, s11
	li a7, 0x278
	and s3, a6, a7
	li a6, 0x372
	and s6, s3, a6
	li s11, 0x2b2
	and t3, s6, s11
	li s3, 0x741
	and t1, t3, s3
	li a6, 0x637
	and a1, t1, a6
	li t4, 0x5e2
	and t1, a1, t4
	li s2, 0x17c
	and s7, t1, s2
	li s8, 0x4ec
	and s3, s7, s8
	li t3, 0x229
	and t5, s3, t3
	li t4, 0x1fa
	and s5, t5, t4
	li s1, 0x79d
	and s1, s5, s1
	li s4, 0xcb
	and a3, s1, s4
	li t5, 0x6b6
	and s2, a3, t5
	li s7, 0x221
	and s3, s2, s7
	li t2, 0xd8
	and s9, s3, t2
	li t1, 0x71a
	and s7, s9, t1
	li s11, 0x101
	and a7, s7, s11
	li s2, 0xb5
	and a7, a7, s2
	li s8, 0x728
	and t4, a7, s8
	li s4, 0x20d
	and t1, t4, s4
	li a5, 0x458
	and s8, t1, a5
	li t2, 0x293
	and a3, s8, t2
	li s10, 0x2bf
	and s3, a3, s10
	li a1, 0x2ce
	and s10, s3, a1
	li s2, 0x69
	and a3, s10, s2
	li t5, 0x5a4
	and t3, a3, t5
	li s9, 0x5fc
	and t4, t3, s9
	li s11, 0x490
	and t5, t4, s11
	li t3, 0x1ea
	and s2, t5, t3
	li s4, 0x334
	and s4, s2, s4
	li s10, 0x2e
	and s3, s4, s10
	li a1, 0x334
	and t5, s3, a1
	li a5, 0x5f8
	and s7, t5, a5
	li s11, 0x2c4
	and a5, s7, s11
	li s1, 0x711
	and s5, a5, s1
	li s11, 0x25c
	and a7, s5, s11
	li s1, 0x44
	and s4, a7, s1
	li s3, 0x2c1
	and s6, s4, s3
	li s9, 0x661
	and t1, s6, s9
	li t2, 0x484
	and a1, t1, t2
	li s7, 0x72e
	and s1, a1, s7
	li a3, 0x768
	and t4, s1, a3
	li s5, 0x3db
	and s2, t4, s5
	li s4, 0x5be
	and s2, s2, s4
	li s9, 0x14d
	and s2, s2, s9
	li t3, 0x60c
	and t1, s2, t3
	li s3, 0x158
	and a7, t1, s3
	li t2, 0x24a
	and t4, a7, t2
	li s2, 0x542
	and s10, t4, s2
	li s4, 0x757
	and a7, s10, s4
	li a5, 0x501
	and s2, a7, a5
	li s5, 0x45d
	and t3, s2, s5
	li s3, 0x233
	and s8, t3, s3
	li t5, 0x4a5
	and a6, s8, t5
	li s10, 0x14c
	and s4, a6, s10
	li s5, 0x242
	and t2, s4, s5
	li s10, 0x670
	and a1, t2, s10
	li t1, 0x66e
	and s7, a1, t1
	li a3, 0x5d3
	and t1, s7, a3
	li t4, 0x275
	and s10, t1, t4
	li s1, 0x65e
	and a6, s10, s1
	li s2, 0x4c4
	and s2, a6, s2
	li t2, 0x285
	and a1, s2, t2
	li t4, 0x4c4
	and a5, a1, t4
	li s9, 0x426
	and s8, a5, s9
	li s5, 0x362
	and a3, s8, s5
	li s11, 0x1b6
	and t5, a3, s11
	csrr a6, time
	csrr a1, cycle
	csrr s2, instret
	sub s3, a6, a0
	sub t4, a1, a2
	sub s2, s2, a4
	beq s0, t4, pass_label_47
	li s4, failed_addr
	ld s5, 0(s4)
	jr s5
pass_label_47:
	beq t6, s2, pass_label_48
	li t2, failed_addr
	ld a7, 0(t2)
	jr a7
pass_label_48:
SID_ZKT_05_AND_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_ADDW)
SID_ZKT_05_ADDW:
	li sp, SID_ZKT_05_ADDW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s5, 0
	csrr a4, time
	csrr s3, cycle
	csrr t2, instret
	li t3, 0x3bc
	addw t3, s5, t3
	li s9, 0x6b
	addw s9, t3, s9
	li t5, 0x2a6
	addw a6, s9, t5
	li t4, 0x196
	addw s9, a6, t4
	li s1, 0x4a2
	addw s1, s9, s1
	li a7, 0xb3
	addw s8, s1, a7
	li a5, 0x53c
	addw s4, s8, a5
	li a2, 0x9f
	addw s0, s4, a2
	li a2, 0x76e
	addw t5, s0, a2
	li a1, 0xd7
	addw s2, t5, a1
	li s11, 0x38c
	addw t3, s2, s11
	li a0, 0x1bf
	addw a0, t3, a0
	li t6, 0x55a
	addw s6, a0, t6
	li s9, 0x102
	addw s8, s6, s9
	li t6, 0x173
	addw s8, s8, t6
	li s10, 0x320
	addw t6, s8, s10
	li t3, 0x27d
	addw a2, t6, t3
	li s2, 0x5
	addw s1, a2, s2
	li s0, 0x7e4
	addw s6, s1, s0
	li a5, 0x106
	addw s9, s6, a5
	li s10, 0x7d0
	addw s4, s9, s10
	li a5, 0x360
	addw s8, s4, a5
	li t1, 0x163
	addw s9, s8, t1
	li s6, 0x296
	addw t3, s9, s6
	li s4, 0x490
	addw s7, t3, s4
	li s2, 0x114
	addw a5, s7, s2
	li s7, 0x298
	addw s9, a5, s7
	li a5, 0x414
	addw s11, s9, a5
	li s0, 0x4c3
	addw a1, s11, s0
	li t1, 0x35e
	addw t1, a1, t1
	li s7, 0x588
	addw s6, t1, s7
	li s0, 0x374
	addw t6, s6, s0
	li a2, 0x7e5
	addw a0, t6, a2
	li a3, 0x514
	addw s0, a0, a3
	li a6, 0x4a9
	addw s5, s0, a6
	li s2, 0x716
	addw a5, s5, s2
	li a7, 0x2f
	addw s0, a5, a7
	li t1, 0x7a7
	addw s5, s0, t1
	li s4, 0x6dc
	addw a2, s5, s4
	li t1, 0x4ff
	addw a2, a2, t1
	li s1, 0x4d8
	addw s2, a2, s1
	li a5, 0x259
	addw t6, s2, a5
	li s1, 0x63e
	addw s4, t6, s1
	li a5, 0x414
	addw s5, s4, a5
	li s4, 0x5a0
	addw a5, s5, s4
	li s1, 0x6fc
	addw a2, a5, s1
	li a3, 0x3f8
	addw a7, a2, a3
	li a0, 0x784
	addw s5, a7, a0
	li s1, 0x355
	addw s0, s5, s1
	li t3, 0xb5
	addw s6, s0, t3
	li s10, 0xd3
	addw s4, s6, s10
	li s11, 0x657
	addw s2, s4, s11
	li a7, 0x6db
	addw s10, s2, a7
	li s4, 0x382
	addw s7, s10, s4
	li s10, 0x5cc
	addw s1, s7, s10
	li a7, 0x4c9
	addw t6, s1, a7
	li s5, 0x22e
	addw a0, t6, s5
	li s7, 0x242
	addw t5, a0, s7
	li s9, 0x60a
	addw a3, t5, s9
	li s10, 0x78a
	addw s11, a3, s10
	li s1, 0x3ec
	addw a2, s11, s1
	li t3, 0x6c
	addw s7, a2, t3
	li s11, 0x2e3
	addw t1, s7, s11
	li a2, 0x48c
	addw s6, t1, a2
	li a6, 0x55c
	addw s5, s6, a6
	li t1, 0x340
	addw s11, s5, t1
	li s7, 0x293
	addw s10, s11, s7
	li s0, 0x61
	addw s10, s10, s0
	li a7, 0x779
	addw s0, s10, a7
	li s8, 0x2b3
	addw s4, s0, s8
	li a6, 0x6d6
	addw t3, s4, a6
	li a6, 0x135
	addw a1, t3, a6
	li s2, 0x3ec
	addw a6, a1, s2
	li s7, 0x5a3
	addw a1, a6, s7
	li t1, 0x722
	addw s2, a1, t1
	li a2, 0x313
	addw a7, s2, a2
	li a5, 0x7ab
	addw s11, a7, a5
	li a2, 0xba
	addw s7, s11, a2
	li s10, 0x20d
	addw s6, s7, s10
	li a2, 0x1a7
	addw s9, s6, a2
	li a0, 0x3df
	addw s9, s9, a0
	li s8, 0x116
	addw s8, s9, s8
	li a2, 0x642
	addw s2, s8, a2
	li t4, 0x13e
	addw s6, s2, t4
	li a0, 0x24
	addw s8, s6, a0
	li t6, 0x1b2
	addw a5, s8, t6
	li s2, 0x70b
	addw s0, a5, s2
	li t1, 0x746
	addw a5, s0, t1
	li a7, 0x4c9
	addw s4, a5, a7
	li a7, 0x15f
	addw a0, s4, a7
	li t4, 0x666
	addw a3, a0, t4
	li t4, 0x153
	addw s0, a3, t4
	li a7, 0x147
	addw s5, s0, a7
	li a3, 0x37b
	addw a3, s5, a3
	li a2, 0x2af
	addw s4, a3, a2
	li a6, 0x689
	addw a3, s4, a6
	li s4, 0x1f7
	addw s1, a3, s4
	li a2, 0x1d5
	addw t1, s1, a2
	li a6, 0x47e
	addw s0, t1, a6
	li s9, 0x671
	addw s1, s0, s9
	csrr a0, time
	csrr s11, cycle
	csrr s6, instret
	sub t6, a0, a4
	sub a4, s11, s3
	sub a6, s6, t2
	li s7, 0
	csrr a6, time
	csrr t5, cycle
	csrr a3, instret
	li t2, 0x49e
	addw s8, s7, t2
	li s3, 0x11f
	addw a0, s8, s3
	li a4, 0x1f4
	addw a5, a0, a4
	li t3, 0x5db
	addw t3, a5, t3
	li s1, 0x525
	addw t4, t3, s1
	li s3, 0x439
	addw a0, t4, s3
	li s1, 0x440
	addw a4, a0, s1
	li s2, 0x7ed
	addw t4, a4, s2
	li s6, 0x646
	addw s6, t4, s6
	li s7, 0x54e
	addw a5, s6, s7
	li s4, 0x480
	addw s2, a5, s4
	li a7, 0x17c
	addw t1, s2, a7
	li s1, 0x211
	addw t1, t1, s1
	li a1, 0x7c9
	addw s11, t1, a1
	li t3, 0x7ba
	addw s7, s11, t3
	li t6, 0x3f6
	addw s4, s7, t6
	li s11, 0x4f0
	addw t1, s4, s11
	li a4, 0x3ea
	addw a4, t1, a4
	li s11, 0x41a
	addw s0, a4, s11
	li s8, 0x45a
	addw t6, s0, s8
	li t1, 0x1e2
	addw a7, t6, t1
	li s5, 0x332
	addw s1, a7, s5
	li s8, 0x3fb
	addw s10, s1, s8
	li s0, 0x42e
	addw a4, s10, s0
	li a0, 0x17b
	addw s4, a4, a0
	li s11, 0x6e
	addw t4, s4, s11
	li s8, 0x4b3
	addw s10, t4, s8
	li t1, 0xe0
	addw t4, s10, t1
	li s8, 0x18b
	addw t3, t4, s8
	li s7, 0x494
	addw a7, t3, s7
	li a1, 0x572
	addw s0, a7, a1
	li s4, 0x487
	addw t1, s0, s4
	li s0, 0x72c
	addw a2, t1, s0
	li t4, 0x152
	addw s0, a2, t4
	li t1, 0x77e
	addw t6, s0, t1
	li s2, 0x341
	addw a1, t6, s2
	li s9, 0x49c
	addw t1, a1, s9
	li s5, 0x46e
	addw a7, t1, s5
	li s1, 0x671
	addw t6, a7, s1
	li a0, 0x424
	addw a0, t6, a0
	li s5, 0x31a
	addw a0, a0, s5
	li s3, 0x115
	addw a4, a0, s3
	li s9, 0x368
	addw a2, a4, s9
	li a5, 0x33b
	addw a2, a2, a5
	li t6, 0x32a
	addw s1, a2, t6
	li a5, 0x771
	addw s11, s1, a5
	li s10, 0x7de
	addw a1, s11, s10
	li t1, 0x34
	addw s0, a1, t1
	li t3, 0x52f
	addw a5, s0, t3
	li s11, 0x1ee
	addw t6, a5, s11
	li s7, 0x1d6
	addw t4, t6, s7
	li s5, 0x251
	addw a1, t4, s5
	li t4, 0x19b
	addw s2, a1, t4
	li s9, 0x193
	addw s1, s2, s9
	li s9, 0x26b
	addw s11, s1, s9
	li s2, 0x585
	addw s5, s11, s2
	li t1, 0x4df
	addw s9, s5, t1
	li s1, 0x137
	addw s6, s9, s1
	li t6, 0x490
	addw s10, s6, t6
	li s6, 0x1eb
	addw s4, s10, s6
	li s11, 0x621
	addw t1, s4, s11
	li s5, 0x1db
	addw t6, t1, s5
	li s4, 0x9d
	addw s6, t6, s4
	li s9, 0x484
	addw s3, s6, s9
	li a2, 0x75f
	addw t1, s3, a2
	li t3, 0x284
	addw s1, t1, t3
	li a5, 0x6b6
	addw s9, s1, a5
	li t4, 0x334
	addw s10, s9, t4
	li a0, 0x273
	addw a4, s10, a0
	li t3, 0x40c
	addw t3, a4, t3
	li a1, 0x332
	addw s9, t3, a1
	li t2, 0x43
	addw t2, s9, t2
	li s6, 0x307
	addw t3, t2, s6
	li s8, 0x3f8
	addw s5, t3, s8
	li t2, 0x4ea
	addw a0, s5, t2
	li a2, 0x428
	addw t4, a0, a2
	li t2, 0x4bf
	addw t6, t4, t2
	li a7, 0x57c
	addw t1, t6, a7
	li a5, 0x93
	addw a5, t1, a5
	li s11, 0x399
	addw s10, a5, s11
	li a0, 0x1e7
	addw s11, s10, a0
	li s5, 0x6ba
	addw t6, s11, s5
	li s8, 0x6a4
	addw a1, t6, s8
	li a4, 0x713
	addw s5, a1, a4
	li s2, 0x2d3
	addw s5, s5, s2
	li a0, 0x346
	addw s1, s5, a0
	li a0, 0x6e3
	addw a0, s1, a0
	li t1, 0x44f
	addw s6, a0, t1
	li a4, 0x3a9
	addw s9, s6, a4
	li s11, 0x51d
	addw t4, s9, s11
	li a1, 0xda
	addw s0, t4, a1
	li s8, 0xe
	addw t1, s0, s8
	li s2, 0x6e6
	addw s11, t1, s2
	li s6, 0x5ae
	addw s7, s11, s6
	li a4, 0x7c8
	addw a4, s7, a4
	li t4, 0x787
	addw s0, a4, t4
	li s1, 0x3a
	addw t2, s0, s1
	li a7, 0x547
	addw s2, t2, a7
	li s7, 0x68
	addw s4, s2, s7
	li a4, 0x26
	addw a5, s4, a4
	csrr t3, time
	csrr s11, cycle
	csrr a7, instret
	sub s7, t3, a6
	sub t1, s11, t5
	sub a6, a7, a3
	li s0, 0
	csrr t5, time
	csrr a5, cycle
	csrr s2, instret
	li s4, 0x684
	addw s9, s0, s4
	li s10, 0x579
	addw a2, s9, s10
	li t4, 0x460
	addw a4, a2, t4
	li a7, 0xa2
	addw a4, a4, a7
	li s9, 0x74e
	addw s11, a4, s9
	li s6, 0x5bd
	addw s8, s11, s6
	li t2, 0x23f
	addw s10, s8, t2
	li s3, 0x57b
	addw s0, s10, s3
	li a3, 0xb3
	addw s4, s0, a3
	li s9, 0x550
	addw s11, s4, s9
	li t2, 0x5
	addw a2, s11, t2
	li s4, 0x63a
	addw a2, a2, s4
	li t4, 0x4c4
	addw a1, a2, t4
	li a3, 0x47a
	addw t4, a1, a3
	li s10, 0x6d5
	addw s4, t4, s10
	li s5, 0x627
	addw t6, s4, s5
	li a1, 0x487
	addw s11, t6, a1
	li t4, 0x7bd
	addw a2, s11, t4
	li t3, 0x11d
	addw s4, a2, t3
	li s1, 0x4ea
	addw s6, s4, s1
	li s3, 0x5ef
	addw a7, s6, s3
	li t3, 0x3d8
	addw s1, a7, t3
	li s4, 0x7b
	addw s5, s1, s4
	li s4, 0x69
	addw a2, s5, s4
	li a3, 0xaf
	addw a2, a2, a3
	li s6, 0x55a
	addw t2, a2, s6
	li a4, 0xc
	addw a7, t2, a4
	li s5, 0x291
	addw s8, a7, s5
	li a3, 0x20c
	addw t3, s8, a3
	li s9, 0x1c6
	addw t3, t3, s9
	li s9, 0x1a9
	addw a7, t3, s9
	li s0, 0x13e
	addw a0, a7, s0
	li s3, 0x4d1
	addw s3, a0, s3
	li t2, 0x75c
	addw a2, s3, t2
	li t4, 0x72d
	addw s5, a2, t4
	li a2, 0x203
	addw t6, s5, a2
	li a4, 0x252
	addw s6, t6, a4
	li s1, 0xb6
	addw s4, s6, s1
	li t3, 0x2ea
	addw s6, s4, t3
	li s10, 0x1bd
	addw t6, s6, s10
	li a3, 0x4c3
	addw a1, t6, a3
	li t4, 0x294
	addw s0, a1, t4
	li a4, 0x378
	addw s11, s0, a4
	li a2, 0x78d
	addw a1, s11, a2
	li t2, 0x56c
	addw a7, a1, t2
	li t2, 0x14a
	addw s5, a7, t2
	li t6, 0x19b
	addw a2, s5, t6
	li s8, 0x13b
	addw t3, a2, s8
	li s7, 0x63b
	addw s10, t3, s7
	li s1, 0x4c2
	addw s5, s10, s1
	li s0, 0x2a5
	addw t3, s5, s0
	li t2, 0x5bb
	addw s9, t3, t2
	li s11, 0x385
	addw a1, s9, s11
	li t6, 0x4d4
	addw s10, a1, t6
	li s3, 0x4b5
	addw s11, s10, s3
	li s8, 0x666
	addw s11, s11, s8
	li a2, 0x644
	addw s1, s11, a2
	li a4, 0x785
	addw a4, s1, a4
	li t2, 0x7c7
	addw s10, a4, t2
	li s6, 0x60
	addw t3, s10, s6
	li s10, 0x37f
	addw s10, t3, s10
	li s11, 0x410
	addw s6, s10, s11
	li a7, 0x38c
	addw s8, s6, a7
	li a7, 0x67a
	addw s7, s8, a7
	li a3, 0x2cf
	addw t6, s7, a3
	li s8, 0x62d
	addw t2, t6, s8
	li s9, 0x40d
	addw s8, t2, s9
	li s7, 0x42a
	addw a1, s8, s7
	li s3, 0x2c7
	addw s0, a1, s3
	li s8, 0x2aa
	addw t2, s0, s8
	li s1, 0x4a8
	addw a1, t2, s1
	li s3, 0x1c5
	addw a0, a1, s3
	li s7, 0xcd
	addw t2, a0, s7
	li s3, 0x3af
	addw s3, t2, s3
	li s11, 0x612
	addw t4, s3, s11
	li s11, 0x6df
	addw a4, t4, s11
	li t6, 0x41f
	addw s7, a4, t6
	li s6, 0x687
	addw t3, s7, s6
	li s8, 0x6bb
	addw s9, t3, s8
	li a0, 0x6d
	addw a7, s9, a0
	li t2, 0x60d
	addw s5, a7, t2
	li t4, 0x307
	addw s11, s5, t4
	li a4, 0x1bf
	addw a4, s11, a4
	li t2, 0x3be
	addw a4, a4, t2
	li s5, 0x103
	addw a4, a4, s5
	li s4, 0x108
	addw t4, a4, s4
	li s6, 0x176
	addw s4, t4, s6
	li s9, 0x641
	addw s8, s4, s9
	li s1, 0x7a1
	addw t2, s8, s1
	li s4, 0x5be
	addw s11, t2, s4
	li a7, 0x720
	addw t4, s11, a7
	li s4, 0x5f4
	addw s9, t4, s4
	li t4, 0x26f
	addw s5, s9, t4
	li s9, 0x6a5
	addw s9, s5, s9
	li s0, 0x3b3
	addw s9, s9, s0
	li a2, 0x17d
	addw s7, s9, a2
	li s4, 0x6bb
	addw t4, s7, s4
	li s3, 0x7f8
	addw s0, t4, s3
	li t4, 0x7cf
	addw t3, s0, t4
	li a0, 0x293
	addw a4, t3, a0
	csrr a2, time
	csrr a4, cycle
	csrr s8, instret
	sub t2, a2, t5
	sub s10, a4, a5
	sub a0, s8, s2
	beq t1, s10, pass_label_49
	li t2, failed_addr
	ld s2, 0(t2)
	jr s2
pass_label_49:
	beq a6, a0, pass_label_50
	li s4, failed_addr
	ld s6, 0(s4)
	jr s6
pass_label_50:
SID_ZKT_05_ADDW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SUBW)
SID_ZKT_05_SUBW:
	li sp, SID_ZKT_05_SUBW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t6, 0
	csrr s11, time
	csrr t4, cycle
	csrr a1, instret
	li a2, 0x60b
	subw s6, t6, a2
	li a5, 0x351
	subw t3, s6, a5
	li a6, 0x68e
	subw t1, t3, a6
	li a5, 0x235
	subw t2, t1, a5
	li s6, 0x36c
	subw t6, t2, s6
	li t3, 0xd6
	subw t6, t6, t3
	li a7, 0x7c0
	subw t5, t6, a7
	li s8, 0x590
	subw s1, t5, s8
	li s10, 0x705
	subw a7, s1, s10
	li a2, 0x39b
	subw a7, a7, a2
	li s1, 0x632
	subw t3, a7, s1
	li s0, 0x1ba
	subw s1, t3, s0
	li a6, 0x144
	subw a3, s1, a6
	li s10, 0x3ed
	subw t6, a3, s10
	li t2, 0x166
	subw s9, t6, t2
	li s8, 0xab
	subw a3, s9, s8
	li s4, 0xaf
	subw s7, a3, s4
	li t6, 0x1ac
	subw a7, s7, t6
	li s4, 0x55d
	subw s1, a7, s4
	li s3, 0x73b
	subw a0, s1, s3
	li s4, 0x36d
	subw t5, a0, s4
	li a7, 0x488
	subw s8, t5, a7
	li s7, 0x473
	subw s7, s8, s7
	li s4, 0x8d
	subw s5, s7, s4
	li t6, 0x38c
	subw s10, s5, t6
	li s3, 0x6d2
	subw t2, s10, s3
	li t1, 0x345
	subw t1, t2, t1
	li t6, 0x99
	subw s1, t1, t6
	li s3, 0x711
	subw a4, s1, s3
	li a2, 0x140
	subw t1, a4, a2
	li s5, 0x3f
	subw s2, t1, s5
	li a6, 0xf4
	subw s8, s2, a6
	li t6, 0x15d
	subw t3, s8, t6
	li a4, 0x5f
	subw s3, t3, a4
	li s6, 0xb3
	subw a5, s3, s6
	li a2, 0x2e1
	subw s5, a5, a2
	li s8, 0x41b
	subw a6, s5, s8
	li a4, 0x6e4
	subw a6, a6, a4
	li s0, 0x4bf
	subw s1, a6, s0
	li s4, 0x72a
	subw a6, s1, s4
	li t1, 0x723
	subw s2, a6, t1
	li a6, 0x67b
	subw s6, s2, a6
	li s1, 0x726
	subw t6, s6, s1
	li a0, 0x5bc
	subw a4, t6, a0
	li s8, 0x454
	subw s7, a4, s8
	li t3, 0x573
	subw t5, s7, t3
	li s2, 0x6d2
	subw a7, t5, s2
	li a4, 0x109
	subw s7, a7, a4
	li s3, 0x5a4
	subw t5, s7, s3
	li t2, 0xf3
	subw a0, t5, t2
	li a3, 0x39d
	subw s5, a0, a3
	li a4, 0x9e
	subw s4, s5, a4
	li s10, 0x4bc
	subw s0, s4, s10
	li a4, 0x44b
	subw a7, s0, a4
	li s7, 0x46d
	subw s9, a7, s7
	li t2, 0x7e2
	subw t2, s9, t2
	li s1, 0x4f8
	subw t2, t2, s1
	li a7, 0xa6
	subw s0, t2, a7
	li s2, 0x5fe
	subw s7, s0, s2
	li s8, 0x211
	subw a3, s7, s8
	li a2, 0x2f5
	subw s3, a3, a2
	li s4, 0x62a
	subw s2, s3, s4
	li a4, 0x49b
	subw t6, s2, a4
	li a0, 0x3a2
	subw a7, t6, a0
	li a3, 0x11a
	subw a4, a7, a3
	li s7, 0x4c0
	subw t6, a4, s7
	li t1, 0x2e2
	subw s2, t6, t1
	li s6, 0x1d7
	subw s0, s2, s6
	li s8, 0x43b
	subw s6, s0, s8
	li a7, 0x5
	subw a3, s6, a7
	li s8, 0x385
	subw s0, a3, s8
	li s10, 0x228
	subw t3, s0, s10
	li s7, 0x417
	subw s4, t3, s7
	li s2, 0x608
	subw a7, s4, s2
	li s1, 0x6c2
	subw a7, a7, s1
	li s1, 0x5d9
	subw s1, a7, s1
	li a4, 0x25d
	subw a3, s1, a4
	li s1, 0x4df
	subw s6, a3, s1
	li a7, 0x12d
	subw s4, s6, a7
	li a6, 0x6d6
	subw s8, s4, a6
	li s1, 0x61e
	subw s10, s8, s1
	li s0, 0x180
	subw a7, s10, s0
	li s5, 0x76f
	subw a7, a7, s5
	li s4, 0x5c3
	subw a7, a7, s4
	li a3, 0x3cc
	subw t3, a7, a3
	li s3, 0x564
	subw a3, t3, s3
	li t3, 0x748
	subw s10, a3, t3
	li a7, 0x1c8
	subw s8, s10, a7
	li t5, 0x5d
	subw s1, s8, t5
	li s9, 0x279
	subw a7, s1, s9
	li s3, 0x3e0
	subw a7, a7, s3
	li a6, 0x2d7
	subw s10, a7, a6
	li s8, 0x7f8
	subw s4, s10, s8
	li s2, 0x7fe
	subw t2, s4, s2
	li t3, 0x1cf
	subw s6, t2, t3
	li a5, 0x15d
	subw a0, s6, a5
	li s10, 0x677
	subw a5, a0, s10
	li s6, 0x328
	subw t5, a5, s6
	li a3, 0x7db
	subw s4, t5, a3
	li t2, 0x642
	subw s8, s4, t2
	csrr s10, time
	csrr a4, cycle
	csrr t2, instret
	sub s8, s10, s11
	sub t1, a4, t4
	sub a5, t2, a1
	li t2, 0
	csrr a7, time
	csrr a5, cycle
	csrr t3, instret
	li t1, 0x3ae
	subw a2, t2, t1
	li a6, 0x307
	subw a0, a2, a6
	li t5, 0x230
	subw t1, a0, t5
	li t2, 0x27e
	subw s1, t1, t2
	li a6, 0x40f
	subw a0, s1, a6
	li s4, 0x71b
	subw s11, a0, s4
	li a2, 0x5aa
	subw s10, s11, a2
	li t2, 0x34b
	subw s7, s10, t2
	li t1, 0x4d9
	subw s3, s7, t1
	li s6, 0x72f
	subw s7, s3, s6
	li s1, 0x671
	subw a2, s7, s1
	li a3, 0x381
	subw s0, a2, a3
	li s2, 0x392
	subw a1, s0, s2
	li s4, 0x3c2
	subw t4, a1, s4
	li s0, 0x666
	subw s6, t4, s0
	li a1, 0x660
	subw s1, s6, a1
	li s6, 0x7c7
	subw s7, s1, s6
	li t4, 0x436
	subw s6, s7, t4
	li s11, 0x389
	subw s2, s6, s11
	li a0, 0x240
	subw s6, s2, a0
	li a2, 0x23f
	subw s7, s6, a2
	li s3, 0x50a
	subw s6, s7, s3
	li t4, 0x6be
	subw a2, s6, t4
	li t2, 0x42e
	subw s9, a2, t2
	li s0, 0x5aa
	subw s3, s9, s0
	li t5, 0x125
	subw s3, s3, t5
	li a3, 0x66a
	subw s8, s3, a3
	li s5, 0x4f9
	subw a2, s8, s5
	li a6, 0x693
	subw a0, a2, a6
	li s5, 0x268
	subw s6, a0, s5
	li s1, 0x2e5
	subw a6, s6, s1
	li s1, 0x5b2
	subw s9, a6, s1
	li a6, 0x53d
	subw s5, s9, a6
	li t1, 0x19c
	subw t2, s5, t1
	li s0, 0xd9
	subw t4, t2, s0
	li s6, 0x185
	subw s3, t4, s6
	li t5, 0x7ad
	subw t1, s3, t5
	li a2, 0x70c
	subw t5, t1, a2
	li t2, 0x734
	subw t6, t5, t2
	li a3, 0x615
	subw s10, t6, a3
	li s3, 0x440
	subw t5, s10, s3
	li s8, 0x55b
	subw t4, t5, s8
	li s3, 0x3ed
	subw s6, t4, s3
	li t2, 0x6cf
	subw s1, s6, t2
	li s7, 0x5e4
	subw s4, s1, s7
	li a6, 0x3bf
	subw s8, s4, a6
	li a1, 0x46a
	subw s4, s8, a1
	li s7, 0x59e
	subw a0, s4, s7
	li s2, 0x3d2
	subw s6, a0, s2
	li t6, 0x54c
	subw s5, s6, t6
	li a2, 0x748
	subw t6, s5, a2
	li s2, 0x642
	subw a4, t6, s2
	li t1, 0x39e
	subw s10, a4, t1
	li t1, 0x4c3
	subw s0, s10, t1
	li s5, 0x4e0
	subw a0, s0, s5
	li a4, 0x4f4
	subw s11, a0, a4
	li t4, 0x738
	subw s3, s11, t4
	li s0, 0x2d
	subw s1, s3, s0
	li a0, 0x1a3
	subw t2, s1, a0
	li a1, 0x6f7
	subw t6, t2, a1
	li s11, 0x450
	subw t2, t6, s11
	li t5, 0x4ef
	subw s7, t2, t5
	li t6, 0x6a7
	subw s10, s7, t6
	li s7, 0x2b6
	subw s11, s10, s7
	li t4, 0x486
	subw s5, s11, t4
	li s3, 0xbc
	subw s4, s5, s3
	li a6, 0x7a7
	subw s9, s4, a6
	li a3, 0x6c3
	subw a6, s9, a3
	li s4, 0xaf
	subw a4, a6, s4
	li s1, 0x6e8
	subw s3, a4, s1
	li s1, 0x1e5
	subw s5, s3, s1
	li t4, 0x538
	subw s4, s5, t4
	li s0, 0x76c
	subw a1, s4, s0
	li t2, 0x3d3
	subw s9, a1, t2
	li t4, 0x7c7
	subw s11, s9, t4
	li s4, 0x2ce
	subw s5, s11, s4
	li s1, 0x767
	subw s4, s5, s1
	li a1, 0x338
	subw t4, s4, a1
	li s0, 0x7e1
	subw a4, t4, s0
	li s4, 0x41e
	subw s5, a4, s4
	li s1, 0x495
	subw a2, s5, s1
	li t5, 0x75a
	subw a3, a2, t5
	li a4, 0xa9
	subw a3, a3, a4
	li s8, 0x3de
	subw t4, a3, s8
	li s4, 0x7c7
	subw s6, t4, s4
	li s8, 0xcd
	subw s5, s6, s8
	li a0, 0x782
	subw s1, s5, a0
	li s4, 0x610
	subw s4, s1, s4
	li s8, 0x698
	subw s9, s4, s8
	li s11, 0x3e7
	subw t6, s9, s11
	li a0, 0x50a
	subw s11, t6, a0
	li s2, 0x6b0
	subw s6, s11, s2
	li s10, 0x7de
	subw s0, s6, s10
	li t4, 0x74c
	subw t1, s0, t4
	li t5, 0x4fa
	subw a4, t1, t5
	li t2, 0x64
	subw s3, a4, t2
	li a4, 0x69b
	subw t4, s3, a4
	li s9, 0x6e0
	subw s4, t4, s9
	li s8, 0x69
	subw s11, s4, s8
	li s2, 0x343
	subw a3, s11, s2
	csrr s0, time
	csrr t4, cycle
	csrr s7, instret
	sub t1, s0, a7
	sub t5, t4, a5
	sub t3, s7, t3
	li s3, 0
	csrr s5, time
	csrr t4, cycle
	csrr a4, instret
	li s9, 0x57f
	subw s8, s3, s9
	li s2, 0x68b
	subw a2, s8, s2
	li s11, 0x160
	subw a0, a2, s11
	li a5, 0x78b
	subw s1, a0, a5
	li s6, 0x564
	subw a1, s1, s6
	li s2, 0x3cb
	subw t2, a1, s2
	li a5, 0x173
	subw s7, t2, a5
	li s2, 0x79c
	subw a0, s7, s2
	li a6, 0x336
	subw s2, a0, a6
	li a1, 0x4e6
	subw s7, s2, a1
	li a2, 0x6f9
	subw s2, s7, a2
	li s10, 0x15
	subw s10, s2, s10
	li a5, 0x170
	subw s4, s10, a5
	li t1, 0x99
	subw s7, s4, t1
	li a7, 0xac
	subw s2, s7, a7
	li s1, 0x33c
	subw a6, s2, s1
	li t1, 0x3aa
	subw t2, a6, t1
	li a6, 0x570
	subw s6, t2, a6
	li t6, 0x289
	subw a6, s6, t6
	li s10, 0x172
	subw s8, a6, s10
	li s6, 0x20a
	subw s8, s8, s6
	li a7, 0x100
	subw t1, s8, a7
	li s0, 0xf6
	subw t1, t1, s0
	li a7, 0x1e4
	subw s9, t1, a7
	li a5, 0x5f2
	subw s2, s9, a5
	li t6, 0x2ea
	subw s10, s2, t6
	li s1, 0x112
	subw a5, s10, s1
	li s1, 0x311
	subw s3, a5, s1
	li s11, 0x5c0
	subw s11, s3, s11
	li s4, 0x3c9
	subw a2, s11, s4
	li a5, 0xbe
	subw a6, a2, a5
	li t1, 0x3a0
	subw s7, a6, t1
	li a7, 0x1c2
	subw a7, s7, a7
	li a3, 0x615
	subw t2, a7, a3
	li a7, 0x9e
	subw a3, t2, a7
	li s1, 0x13d
	subw s10, a3, s1
	li s11, 0x1f
	subw t2, s10, s11
	li a5, 0x4b3
	subw s8, t2, a5
	li a7, 0x5d1
	subw a3, s8, a7
	li a0, 0x112
	subw t1, a3, a0
	li s0, 0x2c9
	subw s1, t1, s0
	li t1, 0x1ed
	subw s11, s1, t1
	li s9, 0x158
	subw a7, s11, s9
	li s9, 0x327
	subw s2, a7, s9
	li t2, 0x257
	subw s9, s2, t2
	li s2, 0x69e
	subw a1, s9, s2
	li a3, 0x275
	subw a3, a1, a3
	li a2, 0x3f9
	subw t1, a3, a2
	li t6, 0x17
	subw t1, t1, t6
	li a1, 0x3fe
	subw t1, t1, a1
	li s9, 0x3ca
	subw a0, t1, s9
	li s9, 0x6f9
	subw s6, a0, s9
	li s2, 0x4a6
	subw s1, s6, s2
	li t6, 0x389
	subw s3, s1, t6
	li a6, 0xc5
	subw s4, s3, a6
	li s7, 0x77d
	subw a5, s4, s7
	li a6, 0x3e0
	subw s4, a5, a6
	li t6, 0x702
	subw s7, s4, t6
	li t6, 0x202
	subw t1, s7, t6
	li s6, 0x93
	subw a3, t1, s6
	li s4, 0x1bf
	subw t2, a3, s4
	li s10, 0x7fe
	subw s8, t2, s10
	li a7, 0x261
	subw a1, s8, a7
	li s11, 0x6e0
	subw s4, a1, s11
	li a0, 0x5ea
	subw s2, s4, a0
	li s10, 0x7b8
	subw a5, s2, s10
	li t2, 0x231
	subw a0, a5, t2
	li a5, 0x1b0
	subw s3, a0, a5
	li a1, 0x605
	subw s3, s3, a1
	li a6, 0x614
	subw s10, s3, a6
	li t2, 0x705
	subw t6, s10, t2
	li s7, 0x384
	subw a6, t6, s7
	li s1, 0x707
	subw s6, a6, s1
	li s7, 0x78d
	subw t1, s6, s7
	li a6, 0x26c
	subw a3, t1, a6
	li t6, 0x670
	subw a7, a3, t6
	li s0, 0x452
	subw a7, a7, s0
	li a0, 0x37e
	subw s10, a7, a0
	li s9, 0x793
	subw s6, s10, s9
	li a7, 0x295
	subw t6, s6, a7
	li t2, 0x59f
	subw a1, t6, t2
	li s0, 0x329
	subw s9, a1, s0
	li s3, 0x66b
	subw a2, s9, s3
	li a3, 0xd1
	subw s4, a2, a3
	li a1, 0x5fb
	subw a5, s4, a1
	li t2, 0x708
	subw t2, a5, t2
	li s7, 0x79d
	subw a6, t2, s7
	li a3, 0x39c
	subw s2, a6, a3
	li s10, 0x4c8
	subw t6, s2, s10
	li a1, 0x510
	subw s2, t6, a1
	li a2, 0x2a5
	subw s0, s2, a2
	li s6, 0x7ea
	subw a0, s0, s6
	li a1, 0xb4
	subw t2, a0, a1
	li a5, 0x5a2
	subw t6, t2, a5
	li s7, 0xf6
	subw a2, t6, s7
	li s10, 0x53b
	subw a0, a2, s10
	li s4, 0x6da
	subw a7, a0, s4
	li s0, 0x58c
	subw a3, a7, s0
	li s10, 0x33c
	subw t1, a3, s10
	li a1, 0x25f
	subw a1, t1, a1
	csrr s3, time
	csrr t1, cycle
	csrr a1, instret
	sub a3, s3, s5
	sub t2, t1, t4
	sub s1, a1, a4
	beq t5, t2, pass_label_51
	li s10, failed_addr
	ld s10, 0(s10)
	jr s10
pass_label_51:
	beq t3, s1, pass_label_52
	li t4, failed_addr
	ld s4, 0(t4)
	jr s4
pass_label_52:
SID_ZKT_05_SUBW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SLLW)
SID_ZKT_05_SLLW:
	li sp, SID_ZKT_05_SLLW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a3, 0
	csrr a1, time
	csrr s0, cycle
	csrr t3, instret
	li s6, 0x73
	sllw s4, a3, s6
	li s10, 0x3d5
	sllw s9, s4, s10
	li s1, 0x626
	sllw t1, s9, s1
	li a2, 0xd5
	sllw s7, t1, a2
	li a6, 0x5f0
	sllw s6, s7, a6
	li s8, 0xdf
	sllw s4, s6, s8
	li s8, 0x5c9
	sllw t2, s4, s8
	li a4, 0x504
	sllw a5, t2, a4
	li s4, 0x237
	sllw t5, a5, s4
	li a0, 0x717
	sllw s3, t5, a0
	li s11, 0x5b2
	sllw s10, s3, s11
	li a5, 0x6ae
	sllw s1, s10, a5
	li a5, 0x66f
	sllw a5, s1, a5
	li s8, 0x787
	sllw s2, a5, s8
	li a0, 0x84
	sllw s7, s2, a0
	li s9, 0x28b
	sllw a7, s7, s9
	li s3, 0x3e
	sllw s6, a7, s3
	li s11, 0x2c1
	sllw a4, s6, s11
	li a7, 0x1fc
	sllw a0, a4, a7
	li s8, 0x6a4
	sllw t5, a0, s8
	li a4, 0x25e
	sllw a4, t5, a4
	li t5, 0x2a2
	sllw s1, a4, t5
	li t4, 0x26a
	sllw s6, s1, t4
	li s7, 0x229
	sllw s10, s6, s7
	li s3, 0xc7
	sllw s10, s10, s3
	li a2, 0x18f
	sllw s10, s10, a2
	li a4, 0x70c
	sllw t4, s10, a4
	li s9, 0x5eb
	sllw s3, t4, s9
	li a0, 0x442
	sllw s9, s3, a0
	li s5, 0x33f
	sllw t2, s9, s5
	li a6, 0x39e
	sllw s4, t2, a6
	li s8, 0x624
	sllw t1, s4, s8
	li a5, 0x439
	sllw s3, t1, a5
	li a5, 0x439
	sllw a4, s3, a5
	li s6, 0x3c9
	sllw s10, a4, s6
	li s1, 0x362
	sllw a6, s10, s1
	li s2, 0x26c
	sllw t4, a6, s2
	li a3, 0x2d8
	sllw t2, t4, a3
	li s2, 0x51
	sllw s6, t2, s2
	li s7, 0x1e3
	sllw a4, s6, s7
	li s9, 0x6a7
	sllw a2, a4, s9
	li a3, 0x1f6
	sllw a3, a2, a3
	li a6, 0x597
	sllw s1, a3, a6
	li a0, 0x7
	sllw a4, s1, a0
	li s7, 0x420
	sllw a3, a4, s7
	li s9, 0x489
	sllw s1, a3, s9
	li s3, 0x226
	sllw a4, s1, s3
	li s5, 0x623
	sllw a2, a4, s5
	li a7, 0x4d3
	sllw s7, a2, a7
	li s3, 0x76e
	sllw s1, s7, s3
	li t2, 0x2b
	sllw s5, s1, t2
	li a4, 0x6b5
	sllw s11, s5, a4
	li s9, 0x6b
	sllw t4, s11, s9
	li s3, 0x38c
	sllw s9, t4, s3
	li a4, 0x45a
	sllw a6, s9, a4
	li s7, 0x18d
	sllw s2, a6, s7
	li t1, 0x710
	sllw a2, s2, t1
	li a4, 0x261
	sllw s2, a2, a4
	li t5, 0x2c1
	sllw t2, s2, t5
	li a0, 0x9a
	sllw s9, t2, a0
	li a4, 0x191
	sllw s6, s9, a4
	li s10, 0x312
	sllw a6, s6, s10
	li t4, 0x597
	sllw a7, a6, t4
	li s8, 0x61d
	sllw a4, a7, s8
	li s5, 0x47c
	sllw t4, a4, s5
	li s1, 0x2ee
	sllw s5, t4, s1
	li t6, 0x508
	sllw s6, s5, t6
	li a2, 0x66e
	sllw s8, s6, a2
	li s6, 0x540
	sllw s10, s8, s6
	li s4, 0x58d
	sllw s4, s10, s4
	li s10, 0x688
	sllw t2, s4, s10
	li s8, 0x562
	sllw t5, t2, s8
	li a6, 0x139
	sllw a3, t5, a6
	li t4, 0x34c
	sllw s9, a3, t4
	li t1, 0x7b6
	sllw a6, s9, t1
	li a0, 0x312
	sllw a6, a6, a0
	li s10, 0x426
	sllw a5, a6, s10
	li a3, 0x273
	sllw s6, a5, a3
	li s10, 0x67d
	sllw a0, s6, s10
	li t4, 0x91
	sllw s10, a0, t4
	li a6, 0x382
	sllw s5, s10, a6
	li a2, 0x755
	sllw a5, s5, a2
	li t5, 0x201
	sllw s6, a5, t5
	li a7, 0x266
	sllw s6, s6, a7
	li s4, 0x258
	sllw t2, s6, s4
	li s10, 0x1fc
	sllw s9, t2, s10
	li a3, 0x5d0
	sllw s8, s9, a3
	li a0, 0x42b
	sllw s10, s8, a0
	li s3, 0x7f7
	sllw a6, s10, s3
	li s1, 0xc0
	sllw s7, a6, s1
	li s1, 0x203
	sllw t1, s7, s1
	li s5, 0x682
	sllw t4, t1, s5
	li s10, 0x6bf
	sllw a7, t4, s10
	li t6, 0x1a1
	sllw s2, a7, t6
	li s3, 0x7e3
	sllw t2, s2, s3
	li s3, 0x7b8
	sllw s3, t2, s3
	li a4, 0x678
	sllw s7, s3, a4
	li a0, 0x425
	sllw a5, s7, a0
	li a7, 0x1c9
	sllw a6, a5, a7
	li a0, 0x176
	sllw t1, a6, a0
	csrr a7, time
	csrr s4, cycle
	csrr a6, instret
	sub s1, a7, a1
	sub s0, s4, s0
	sub t6, a6, t3
	li s7, 0
	csrr t5, time
	csrr a3, cycle
	csrr s9, instret
	li s2, 0x1ac
	sllw a2, s7, s2
	li s5, 0xc3
	sllw a7, a2, s5
	li s3, 0x35b
	sllw t3, a7, s3
	li s6, 0xfe
	sllw a1, t3, s6
	li a2, 0x7be
	sllw s6, a1, a2
	li a2, 0x72b
	sllw t1, s6, a2
	li s4, 0x38b
	sllw s0, t1, s4
	li t2, 0x2e3
	sllw s3, s0, t2
	li t6, 0x4c9
	sllw a2, s3, t6
	li t1, 0x7f5
	sllw s8, a2, t1
	li s11, 0x124
	sllw s8, s8, s11
	li t2, 0x66d
	sllw a1, s8, t2
	li s4, 0xd1
	sllw t4, a1, s4
	li s0, 0x2b2
	sllw a2, t4, s0
	li s11, 0x349
	sllw s5, a2, s11
	li a5, 0x622
	sllw s0, s5, a5
	li s6, 0x691
	sllw a7, s0, s6
	li s10, 0x3c0
	sllw t2, a7, s10
	li s7, 0x6ec
	sllw a7, t2, s7
	li a6, 0x52d
	sllw a4, a7, a6
	li t4, 0x50
	sllw t6, a4, t4
	li s10, 0x202
	sllw t3, t6, s10
	li a4, 0x796
	sllw s7, t3, a4
	li a7, 0x279
	sllw s3, s7, a7
	li a7, 0x26a
	sllw s0, s3, a7
	li a6, 0x45c
	sllw s0, s0, a6
	li s5, 0x78
	sllw t3, s0, s5
	li s5, 0x409
	sllw t3, t3, s5
	li a5, 0x4e7
	sllw s11, t3, a5
	li a2, 0x2d7
	sllw a2, s11, a2
	li a0, 0x7d3
	sllw s11, a2, a0
	li s3, 0x48b
	sllw s1, s11, s3
	li s11, 0xf0
	sllw s11, s1, s11
	li t2, 0x1ac
	sllw s8, s11, t2
	li t1, 0x7e
	sllw a5, s8, t1
	li s6, 0x407
	sllw s5, a5, s6
	li s7, 0x540
	sllw s1, s5, s7
	li t6, 0x36c
	sllw t4, s1, t6
	li a7, 0x2d6
	sllw t4, t4, a7
	li s8, 0x6e2
	sllw s2, t4, s8
	li s4, 0x4ee
	sllw s10, s2, s4
	li a1, 0x471
	sllw t2, s10, a1
	li a2, 0x1bd
	sllw t6, t2, a2
	li t3, 0x386
	sllw s8, t6, t3
	li a1, 0x44
	sllw t2, s8, a1
	li a0, 0x20a
	sllw s7, t2, a0
	li s11, 0x4cb
	sllw s11, s7, s11
	li a4, 0x3b
	sllw t6, s11, a4
	li a0, 0x6a2
	sllw s1, t6, a0
	li s3, 0x3aa
	sllw t6, s1, s3
	li a2, 0x1f7
	sllw s0, t6, a2
	li a7, 0x456
	sllw a4, s0, a7
	li a6, 0x38b
	sllw a4, a4, a6
	li s4, 0x1a1
	sllw s8, a4, s4
	li s11, 0x3c6
	sllw s11, s8, s11
	li s4, 0x614
	sllw s8, s11, s4
	li a2, 0x1c1
	sllw a5, s8, a2
	li t4, 0x149
	sllw s11, a5, t4
	li s8, 0x2f1
	sllw a5, s11, s8
	li s10, 0x1d5
	sllw s0, a5, s10
	li t3, 0x5ac
	sllw s5, s0, t3
	li s4, 0x38c
	sllw s1, s5, s4
	li t3, 0x404
	sllw s10, s1, t3
	li a5, 0x4a4
	sllw a2, s10, a5
	li s0, 0x4e3
	sllw s8, a2, s0
	li t3, 0x16d
	sllw t3, s8, t3
	li a4, 0x2ca
	sllw a5, t3, a4
	li t4, 0x786
	sllw s2, a5, t4
	li t3, 0x1eb
	sllw a6, s2, t3
	li s6, 0x430
	sllw a6, a6, s6
	li s7, 0x6dd
	sllw s8, a6, s7
	li a7, 0x46a
	sllw s3, s8, a7
	li t2, 0x3c
	sllw s6, s3, t2
	li a7, 0xb2
	sllw s4, s6, a7
	li s3, 0x431
	sllw s5, s4, s3
	li t2, 0x40c
	sllw t1, s5, t2
	li t6, 0x1d0
	sllw s8, t1, t6
	li a0, 0x5fc
	sllw s7, s8, a0
	li s2, 0x2ba
	sllw t4, s7, s2
	li s2, 0x378
	sllw s10, t4, s2
	li s4, 0x77a
	sllw a1, s10, s4
	li t6, 0x5fc
	sllw s10, a1, t6
	li a6, 0x1e8
	sllw a5, s10, a6
	li s3, 0x7fe
	sllw a1, a5, s3
	li s5, 0x6c
	sllw s2, a1, s5
	li t3, 0x70f
	sllw t1, s2, t3
	li a2, 0x4c9
	sllw s11, t1, a2
	li t6, 0x768
	sllw t2, s11, t6
	li t6, 0x8b
	sllw t4, t2, t6
	li a4, 0x3ec
	sllw s0, t4, a4
	li a0, 0x49c
	sllw a2, s0, a0
	li t6, 0xc2
	sllw a4, a2, t6
	li s5, 0x3f1
	sllw s10, a4, s5
	li s5, 0x6f3
	sllw a4, s10, s5
	li s11, 0x6f8
	sllw s10, a4, s11
	li a7, 0x77b
	sllw t3, s10, a7
	li s11, 0x2f3
	sllw s11, t3, s11
	li t4, 0x535
	sllw a7, s11, t4
	li s5, 0x78c
	sllw s6, a7, s5
	li a1, 0x282
	sllw t3, s6, a1
	csrr t6, time
	csrr t4, cycle
	csrr t3, instret
	sub a5, t6, t5
	sub a7, t4, a3
	sub s9, t3, s9
	li s2, 0
	csrr t3, time
	csrr a0, cycle
	csrr s4, instret
	li t6, 0x6ed
	sllw s6, s2, t6
	li s3, 0x5e9
	sllw t6, s6, s3
	li t5, 0x13d
	sllw a4, t6, t5
	li s1, 0x1ca
	sllw s6, a4, s1
	li s10, 0x145
	sllw s1, s6, s10
	li t2, 0x7cb
	sllw s3, s1, t2
	li t1, 0x6d
	sllw s10, s3, t1
	li s8, 0x3d8
	sllw s11, s10, s8
	li t6, 0x97
	sllw s0, s11, t6
	li a6, 0x2e0
	sllw a5, s0, a6
	li s11, 0x199
	sllw t1, a5, s11
	li s5, 0x6ac
	sllw a1, t1, s5
	li t6, 0x3ae
	sllw t5, a1, t6
	li a1, 0x610
	sllw s3, t5, a1
	li s8, 0x52f
	sllw t5, s3, s8
	li t1, 0x733
	sllw t5, t5, t1
	li s6, 0x2c1
	sllw s3, t5, s6
	li s8, 0xe
	sllw s6, s3, s8
	li a5, 0x7a5
	sllw s0, s6, a5
	li s7, 0x83
	sllw a2, s0, s7
	li a3, 0x6e4
	sllw a3, a2, a3
	li s11, 0x745
	sllw t4, a3, s11
	li a4, 0x4bd
	sllw t1, t4, a4
	li s8, 0x4f5
	sllw s1, t1, s8
	li a1, 0x6c7
	sllw t1, s1, a1
	li t2, 0x17f
	sllw a1, t1, t2
	li t2, 0xbf
	sllw a6, a1, t2
	li t4, 0x45f
	sllw s10, a6, t4
	li s6, 0x5f2
	sllw s8, s10, s6
	li s6, 0x345
	sllw s8, s8, s6
	li s7, 0x25d
	sllw a3, s8, s7
	li s7, 0x337
	sllw s10, a3, s7
	li s11, 0x12f
	sllw s0, s10, s11
	li t1, 0x6f6
	sllw s7, s0, t1
	li t4, 0x53a
	sllw s6, s7, t4
	li t4, 0x119
	sllw s5, s6, t4
	li a1, 0x391
	sllw s7, s5, a1
	li s2, 0xfe
	sllw a3, s7, s2
	li s3, 0x6b0
	sllw a5, a3, s3
	li a2, 0xdf
	sllw s1, a5, a2
	li a3, 0x652
	sllw s5, s1, a3
	li a3, 0x24f
	sllw a3, s5, a3
	li t5, 0x460
	sllw s1, a3, t5
	li a2, 0x63
	sllw t4, s1, a2
	li s10, 0x422
	sllw s1, t4, s10
	li a4, 0x101
	sllw s11, s1, a4
	li t4, 0x52f
	sllw s1, s11, t4
	li s8, 0x27a
	sllw s3, s1, s8
	li s0, 0x52
	sllw t4, s3, s0
	li a6, 0x88
	sllw a1, t4, a6
	li s10, 0x79f
	sllw s7, a1, s10
	li s10, 0x2fc
	sllw a6, s7, s10
	li s7, 0x317
	sllw s3, a6, s7
	li t5, 0x77c
	sllw a1, s3, t5
	li s8, 0x333
	sllw a5, a1, s8
	li t5, 0x204
	sllw s1, a5, t5
	li t2, 0x6e8
	sllw s3, s1, t2
	li s8, 0x5a1
	sllw s1, s3, s8
	li t4, 0x37a
	sllw a2, s1, t4
	li a4, 0x43c
	sllw s10, a2, a4
	li t4, 0x5bc
	sllw t5, s10, t4
	li s0, 0x7e0
	sllw s2, t5, s0
	li t4, 0x5ba
	sllw a3, s2, t4
	li s1, 0x4fe
	sllw t6, a3, s1
	li a3, 0x367
	sllw a2, t6, a3
	li s6, 0x35e
	sllw s7, a2, s6
	li s6, 0x269
	sllw a1, s7, s6
	li a3, 0xb9
	sllw s0, a1, a3
	li t1, 0x439
	sllw s1, s0, t1
	li t4, 0xa6
	sllw t4, s1, t4
	li t6, 0x1fe
	sllw s6, t4, t6
	li t1, 0x188
	sllw a5, s6, t1
	li s5, 0x4d6
	sllw t6, a5, s5
	li s2, 0x53e
	sllw s5, t6, s2
	li a2, 0x213
	sllw t1, s5, a2
	li a6, 0x6ec
	sllw s8, t1, a6
	li s5, 0x9e
	sllw t2, s8, s5
	li a5, 0xd1
	sllw t2, t2, a5
	li t5, 0x4ad
	sllw s10, t2, t5
	li a5, 0x64e
	sllw t4, s10, a5
	li s2, 0x673
	sllw s11, t4, s2
	li s6, 0x648
	sllw s11, s11, s6
	li s1, 0x6aa
	sllw s1, s11, s1
	li a4, 0x30d
	sllw a2, s1, a4
	li a3, 0x62e
	sllw a1, a2, a3
	li s0, 0xad
	sllw s6, a1, s0
	li s7, 0x62c
	sllw t2, s6, s7
	li s10, 0x537
	sllw s10, t2, s10
	li s3, 0x350
	sllw t2, s10, s3
	li s10, 0x7c9
	sllw a5, t2, s10
	li s7, 0x1f6
	sllw s2, a5, s7
	li t6, 0x753
	sllw a2, s2, t6
	li t4, 0x627
	sllw s2, a2, t4
	li s7, 0x322
	sllw t4, s2, s7
	li s10, 0x371
	sllw s3, t4, s10
	li a4, 0x69
	sllw a5, s3, a4
	li s5, 0x26
	sllw t5, a5, s5
	li s6, 0x72d
	sllw s10, t5, s6
	li a2, 0x2e0
	sllw s11, s10, a2
	li s7, 0x789
	sllw s3, s11, s7
	csrr t2, time
	csrr a2, cycle
	csrr s0, instret
	sub s2, t2, t3
	sub t3, a2, a0
	sub s5, s0, s4
	beq a7, t3, pass_label_53
	li a1, failed_addr
	ld a4, 0(a1)
	jr a4
pass_label_53:
	beq s9, s5, pass_label_54
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
pass_label_54:
SID_ZKT_05_SLLW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SRLW)
SID_ZKT_05_SRLW:
	li sp, SID_ZKT_05_SRLW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s8, 0
	csrr s1, time
	csrr s9, cycle
	csrr t6, instret
	li a4, 0x2b3
	srlw s8, s8, a4
	li a6, 0x604
	srlw s0, s8, a6
	li t3, 0x6cd
	srlw a1, s0, t3
	li a5, 0x550
	srlw s11, a1, a5
	li a4, 0x36e
	srlw t1, s11, a4
	li t5, 0xfa
	srlw a7, t1, t5
	li a2, 0x238
	srlw t4, a7, a2
	li a3, 0x2ae
	srlw a3, t4, a3
	li a0, 0x747
	srlw t2, a3, a0
	li s11, 0xd3
	srlw s3, t2, s11
	li a4, 0x92
	srlw t3, s3, a4
	li s6, 0x466
	srlw a1, t3, s6
	li a2, 0x349
	srlw s6, a1, a2
	li s8, 0x693
	srlw a3, s6, s8
	li s0, 0x141
	srlw a1, a3, s0
	li s4, 0x6bd
	srlw t2, a1, s4
	li a1, 0x3eb
	srlw s6, t2, a1
	li a6, 0x2b2
	srlw s6, s6, a6
	li a2, 0x3e8
	srlw a1, s6, a2
	li t5, 0x45c
	srlw a5, a1, t5
	li s2, 0x6e0
	srlw s3, a5, s2
	li t2, 0x1e5
	srlw s8, s3, t2
	li a5, 0x301
	srlw a5, s8, a5
	li s5, 0x6f6
	srlw t2, a5, s5
	li s7, 0x1fe
	srlw a1, t2, s7
	li a7, 0x502
	srlw a4, a1, a7
	li t1, 0x4cb
	srlw s8, a4, t1
	li t4, 0x587
	srlw a7, s8, t4
	li a0, 0x2cb
	srlw s6, a7, a0
	li s10, 0x689
	srlw a6, s6, s10
	li a5, 0x209
	srlw t2, a6, a5
	li s0, 0x71a
	srlw a5, t2, s0
	li s3, 0x741
	srlw t4, a5, s3
	li t3, 0x5b8
	srlw a4, t4, t3
	li a6, 0x486
	srlw t3, a4, a6
	li a7, 0x6d6
	srlw a4, t3, a7
	li a6, 0x321
	srlw s2, a4, a6
	li a4, 0x4e
	srlw t2, s2, a4
	li a1, 0x7d3
	srlw a1, t2, a1
	li t5, 0x5c6
	srlw t5, a1, t5
	li t4, 0x4c2
	srlw s5, t5, t4
	li t1, 0x8b
	srlw a1, s5, t1
	li t3, 0x18d
	srlw a2, a1, t3
	li s7, 0x480
	srlw a2, a2, s7
	li s4, 0x540
	srlw s8, a2, s4
	li s7, 0x38f
	srlw s5, s8, s7
	li s10, 0x742
	srlw a7, s5, s10
	li s3, 0xbb
	srlw s11, a7, s3
	li s5, 0x150
	srlw t1, s11, s5
	li a4, 0x6bf
	srlw s11, t1, a4
	li t5, 0x74b
	srlw s11, s11, t5
	li s6, 0x515
	srlw s8, s11, s6
	li a4, 0x66f
	srlw t2, s8, a4
	li a4, 0x3f9
	srlw s7, t2, a4
	li s2, 0x680
	srlw a5, s7, s2
	li t2, 0x739
	srlw a5, a5, t2
	li t3, 0x298
	srlw s2, a5, t3
	li s6, 0x421
	srlw a7, s2, s6
	li a4, 0x2c
	srlw a5, a7, a4
	li a2, 0x3e5
	srlw a3, a5, a2
	li a2, 0x709
	srlw t3, a3, a2
	li s8, 0x5b6
	srlw a3, t3, s8
	li s10, 0x482
	srlw a4, a3, s10
	li s8, 0x317
	srlw s11, a4, s8
	li s6, 0x30
	srlw a5, s11, s6
	li a2, 0x355
	srlw s4, a5, a2
	li a5, 0x3c0
	srlw t3, s4, a5
	li a4, 0x63c
	srlw a0, t3, a4
	li s3, 0x3df
	srlw a7, a0, s3
	li s4, 0x77e
	srlw a7, a7, s4
	li t1, 0x129
	srlw s3, a7, t1
	li a3, 0x1ed
	srlw s5, s3, a3
	li a3, 0x4af
	srlw t2, s5, a3
	li a1, 0x20f
	srlw s3, t2, a1
	li t4, 0x5da
	srlw t5, s3, t4
	li s2, 0x356
	srlw t2, t5, s2
	li t3, 0xe6
	srlw t3, t2, t3
	li t5, 0x129
	srlw s0, t3, t5
	li a4, 0x78c
	srlw a4, s0, a4
	li a3, 0x777
	srlw s4, a4, a3
	li s8, 0x185
	srlw s10, s4, s8
	li s0, 0x780
	srlw s8, s10, s0
	li t4, 0x74f
	srlw t2, s8, t4
	li a0, 0x574
	srlw t5, t2, a0
	li s5, 0x6ac
	srlw s3, t5, s5
	li a4, 0x7e9
	srlw t5, s3, a4
	li t2, 0x51b
	srlw t4, t5, t2
	li s0, 0x75e
	srlw t4, t4, s0
	li s2, 0x7aa
	srlw a1, t4, s2
	li a6, 0x2c4
	srlw s5, a1, a6
	li t3, 0x5e9
	srlw s3, s5, t3
	li s11, 0x54c
	srlw a7, s3, s11
	li a6, 0x33a
	srlw t4, a7, a6
	li t2, 0x469
	srlw t1, t4, t2
	li t3, 0x551
	srlw t2, t1, t3
	li a3, 0x653
	srlw a2, t2, a3
	li s0, 0x30b
	srlw a1, a2, s0
	li s0, 0x35f
	srlw t1, a1, s0
	li a3, 0x32c
	srlw a3, t1, a3
	li s4, 0x51a
	srlw t5, a3, s4
	csrr t1, time
	csrr s11, cycle
	csrr a3, instret
	sub s8, t1, s1
	sub a1, s11, s9
	sub s10, a3, t6
	li s4, 0
	csrr s3, time
	csrr s2, cycle
	csrr a6, instret
	li a1, 0x1c0
	srlw t5, s4, a1
	li a4, 0x232
	srlw a4, t5, a4
	li t2, 0x680
	srlw s4, a4, t2
	li s1, 0x540
	srlw t6, s4, s1
	li t1, 0x45a
	srlw s5, t6, t1
	li s11, 0x6c
	srlw t1, s5, s11
	li s7, 0x445
	srlw s0, t1, s7
	li s9, 0x722
	srlw s7, s0, s9
	li a7, 0x57b
	srlw t5, s7, a7
	li t3, 0x29d
	srlw a4, t5, t3
	li t3, 0x3c8
	srlw s8, a4, t3
	li s1, 0x209
	srlw a1, s8, s1
	li s4, 0x1aa
	srlw s5, a1, s4
	li s10, 0x572
	srlw t5, s5, s10
	li t4, 0x62a
	srlw s9, t5, t4
	li s11, 0x37a
	srlw s10, s9, s11
	li s9, 0x7c1
	srlw s6, s10, s9
	li s11, 0x74f
	srlw a3, s6, s11
	li a4, 0x5fa
	srlw s4, a3, a4
	li a2, 0x681
	srlw s8, s4, a2
	li s7, 0x141
	srlw a7, s8, s7
	li s10, 0x32f
	srlw a5, a7, s10
	li a7, 0x3c9
	srlw s0, a5, a7
	li a5, 0x5d9
	srlw a5, s0, a5
	li t1, 0x520
	srlw s11, a5, t1
	li s4, 0x787
	srlw s1, s11, s4
	li a1, 0x698
	srlw s6, s1, a1
	li a3, 0x2e7
	srlw t1, s6, a3
	li s6, 0x633
	srlw s5, t1, s6
	li s4, 0x79
	srlw t2, s5, s4
	li s4, 0x33f
	srlw s6, t2, s4
	li a7, 0x364
	srlw s8, s6, a7
	li t5, 0x34f
	srlw t2, s8, t5
	li s1, 0x354
	srlw s1, t2, s1
	li t2, 0x692
	srlw s11, s1, t2
	li t6, 0x3c4
	srlw a7, s11, t6
	li s10, 0x1da
	srlw s1, a7, s10
	li a2, 0x62
	srlw s6, s1, a2
	li s10, 0xde
	srlw t2, s6, s10
	li s6, 0x118
	srlw a5, t2, s6
	li s1, 0x49d
	srlw s7, a5, s1
	li a1, 0x738
	srlw a0, s7, a1
	li a5, 0x4c
	srlw a4, a0, a5
	li s11, 0x5d1
	srlw s1, a4, s11
	li s5, 0x641
	srlw s0, s1, s5
	li t5, 0x405
	srlw s1, s0, t5
	li s8, 0x730
	srlw t3, s1, s8
	li s1, 0xc5
	srlw s7, t3, s1
	li t3, 0x9
	srlw t3, s7, t3
	li s7, 0x6a6
	srlw s10, t3, s7
	li a3, 0x697
	srlw s10, s10, a3
	li a1, 0x488
	srlw s8, s10, a1
	li t5, 0x3a1
	srlw s7, s8, t5
	li s4, 0x590
	srlw t5, s7, s4
	li a3, 0x361
	srlw a3, t5, a3
	li t1, 0x2b3
	srlw s4, a3, t1
	li t1, 0xf3
	srlw a1, s4, t1
	li s6, 0x7a0
	srlw s6, a1, s6
	li a4, 0x653
	srlw a7, s6, a4
	li a5, 0x1b4
	srlw a2, a7, a5
	li s5, 0x69a
	srlw t3, a2, s5
	li s11, 0xd9
	srlw a0, t3, s11
	li s4, 0x6d5
	srlw t1, a0, s4
	li s8, 0x39f
	srlw s5, t1, s8
	li a5, 0x353
	srlw a2, s5, a5
	li t1, 0x159
	srlw s5, a2, t1
	li t6, 0x1e3
	srlw s4, s5, t6
	li s1, 0x567
	srlw s11, s4, s1
	li s10, 0x74a
	srlw a3, s11, s10
	li a2, 0x308
	srlw s11, a3, a2
	li t5, 0x503
	srlw t4, s11, t5
	li t1, 0x2d5
	srlw t3, t4, t1
	li s0, 0x43b
	srlw t2, t3, s0
	li s11, 0x4f2
	srlw t2, t2, s11
	li s7, 0x639
	srlw a3, t2, s7
	li a7, 0x364
	srlw a0, a3, a7
	li s9, 0x6af
	srlw s9, a0, s9
	li a0, 0x9e
	srlw s7, s9, a0
	li a7, 0x10a
	srlw a4, s7, a7
	li a0, 0x38b
	srlw s5, a4, a0
	li a5, 0x1d4
	srlw s4, s5, a5
	li a4, 0x3ad
	srlw t2, s4, a4
	li s0, 0x7b5
	srlw s5, t2, s0
	li s11, 0x6c2
	srlw s4, s5, s11
	li s5, 0x6be
	srlw s0, s4, s5
	li t1, 0x612
	srlw a1, s0, t1
	li s7, 0xe3
	srlw a4, a1, s7
	li s5, 0x3e7
	srlw t1, a4, s5
	li t3, 0x253
	srlw a2, t1, t3
	li s1, 0x4e0
	srlw a5, a2, s1
	li a1, 0x3da
	srlw t1, a5, a1
	li s11, 0x31
	srlw s7, t1, s11
	li t2, 0x161
	srlw a2, s7, t2
	li a5, 0x4bd
	srlw s6, a2, a5
	li t6, 0x6ae
	srlw a5, s6, t6
	li s0, 0x7a9
	srlw a1, a5, s0
	li t3, 0x25d
	srlw a0, a1, t3
	li t3, 0x358
	srlw t1, a0, t3
	li t4, 0x6cf
	srlw s8, t1, t4
	li s0, 0x3ba
	srlw t4, s8, s0
	csrr a1, time
	csrr a3, cycle
	csrr t1, instret
	sub s10, a1, s3
	sub s10, a3, s2
	sub s5, t1, a6
	li s6, 0
	csrr a0, time
	csrr s2, cycle
	csrr t2, instret
	li t5, 0x42a
	srlw t6, s6, t5
	li s8, 0x5e0
	srlw a6, t6, s8
	li a5, 0x57b
	srlw a4, a6, a5
	li t5, 0x761
	srlw s0, a4, t5
	li s8, 0xa6
	srlw s4, s0, s8
	li s9, 0x3f2
	srlw a5, s4, s9
	li a3, 0x1a6
	srlw s7, a5, a3
	li a6, 0x68d
	srlw t6, s7, a6
	li a4, 0x50f
	srlw s11, t6, a4
	li s0, 0x702
	srlw a7, s11, s0
	li a5, 0x347
	srlw s9, a7, a5
	li s4, 0x3f1
	srlw t3, s9, s4
	li s8, 0x1f6
	srlw a6, t3, s8
	li t1, 0x5e
	srlw a2, a6, t1
	li t1, 0x1fd
	srlw s0, a2, t1
	li a2, 0x141
	srlw t3, s0, a2
	li s0, 0x2fb
	srlw s4, t3, s0
	li s6, 0x44
	srlw t1, s4, s6
	li s4, 0x15b
	srlw t4, t1, s4
	li a2, 0xac
	srlw a1, t4, a2
	li s8, 0xc8
	srlw s6, a1, s8
	li a6, 0x544
	srlw s9, s6, a6
	li s7, 0x5e
	srlw t4, s9, s7
	li a4, 0x4e6
	srlw t3, t4, a4
	li s3, 0x459
	srlw t3, t3, s3
	li t1, 0x39
	srlw t6, t3, t1
	li a2, 0x57a
	srlw s6, t6, a2
	li s7, 0x26
	srlw s9, s6, s7
	li s6, 0x255
	srlw a2, s9, s6
	li a4, 0x7fb
	srlw t3, a2, a4
	li s11, 0x633
	srlw s0, t3, s11
	li s1, 0x538
	srlw t3, s0, s1
	li a7, 0x48
	srlw a3, t3, a7
	li s0, 0x607
	srlw a3, a3, s0
	li t5, 0x5ec
	srlw a6, a3, t5
	li s0, 0x5cf
	srlw a6, a6, s0
	li t6, 0x479
	srlw a2, a6, t6
	li s3, 0x28a
	srlw a7, a2, s3
	li a3, 0x3a3
	srlw a1, a7, a3
	li t1, 0x231
	srlw s9, a1, t1
	li s1, 0x39c
	srlw s1, s9, s1
	li a4, 0xac
	srlw t3, s1, a4
	li t1, 0x3e
	srlw s6, t3, t1
	li s7, 0x5b0
	srlw a7, s6, s7
	li a3, 0x488
	srlw a1, a7, a3
	li a5, 0x50e
	srlw a5, a1, a5
	li a3, 0x76e
	srlw s8, a5, a3
	li s9, 0x5da
	srlw a6, s8, s9
	li s0, 0x525
	srlw t5, a6, s0
	li s6, 0x6e6
	srlw s11, t5, s6
	li a6, 0x60d
	srlw t3, s11, a6
	li s11, 0x61a
	srlw s11, t3, s11
	li s7, 0x1d
	srlw a6, s11, s7
	li a1, 0x523
	srlw a2, a6, a1
	li s7, 0x122
	srlw a4, a2, s7
	li t4, 0x162
	srlw a2, a4, t4
	li a5, 0x1bc
	srlw t5, a2, a5
	li t1, 0x4b2
	srlw s8, t5, t1
	li a6, 0x64a
	srlw t1, s8, a6
	li a5, 0x753
	srlw s6, t1, a5
	li a2, 0x3ef
	srlw s4, s6, a2
	li s0, 0x216
	srlw a6, s4, s0
	li a2, 0xcf
	srlw s9, a6, a2
	li t1, 0x31b
	srlw a1, s9, t1
	li s0, 0x406
	srlw t6, a1, s0
	li a7, 0x69e
	srlw a1, t6, a7
	li a7, 0x61b
	srlw s9, a1, a7
	li s4, 0x48e
	srlw a5, s9, s4
	li s9, 0x330
	srlw s0, a5, s9
	li a7, 0x5ef
	srlw s8, s0, a7
	li t5, 0x669
	srlw s1, s8, t5
	li t6, 0xf2
	srlw a2, s1, t6
	li t6, 0x3c4
	srlw s1, a2, t6
	li s8, 0x7a8
	srlw t6, s1, s8
	li s9, 0x399
	srlw a5, t6, s9
	li s4, 0x5e1
	srlw s3, a5, s4
	li a2, 0x301
	srlw s3, s3, a2
	li s0, 0x440
	srlw s1, s3, s0
	li s4, 0x3cb
	srlw a7, s1, s4
	li s9, 0x29f
	srlw t6, a7, s9
	li a4, 0x58c
	srlw t1, t6, a4
	li a5, 0x35a
	srlw t1, t1, a5
	li s8, 0x7d9
	srlw t5, t1, s8
	li a5, 0x4d3
	srlw s0, t5, a5
	li t6, 0x7dc
	srlw t6, s0, t6
	li t1, 0x6b7
	srlw a3, t6, t1
	li a2, 0xdc
	srlw a7, a3, a2
	li t3, 0x727
	srlw s7, a7, t3
	li t4, 0x5c3
	srlw a5, s7, t4
	li s6, 0x237
	srlw t1, a5, s6
	li s7, 0x621
	srlw s11, t1, s7
	li s9, 0x693
	srlw t6, s11, s9
	li s6, 0x5b1
	srlw a3, t6, s6
	li t1, 0x7f7
	srlw t3, a3, t1
	li a1, 0x5ca
	srlw t1, t3, a1
	li a3, 0x4a0
	srlw s4, t1, a3
	li a4, 0x1e1
	srlw a6, s4, a4
	li t6, 0x2ca
	srlw t3, a6, t6
	li a6, 0x7ce
	srlw s11, t3, a6
	li s3, 0x5e7
	srlw s8, s11, s3
	csrr s6, time
	csrr s8, cycle
	csrr s11, instret
	sub a4, s6, a0
	sub s2, s8, s2
	sub a4, s11, t2
	beq s10, s2, pass_label_55
	li a3, failed_addr
	ld s0, 0(a3)
	jr s0
pass_label_55:
	beq s5, a4, pass_label_56
	li s7, failed_addr
	ld s3, 0(s7)
	jr s3
pass_label_56:
SID_ZKT_05_SRLW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SRAW)
SID_ZKT_05_SRAW:
	li sp, SID_ZKT_05_SRAW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a0, 0
	csrr s9, time
	csrr s2, cycle
	csrr s7, instret
	li t4, 0x616
	sraw t2, a0, t4
	li s3, 0x321
	sraw s11, t2, s3
	li t1, 0x291
	sraw t3, s11, t1
	li a1, 0x5ed
	sraw s6, t3, a1
	li t4, 0x426
	sraw a2, s6, t4
	li a5, 0xae
	sraw t2, a2, a5
	li a0, 0x334
	sraw s8, t2, a0
	li t3, 0x5a0
	sraw a0, s8, t3
	li s10, 0x430
	sraw t5, a0, s10
	li s3, 0x5ef
	sraw s4, t5, s3
	li s5, 0x30e
	sraw t5, s4, s5
	li s6, 0x477
	sraw a6, t5, s6
	li s4, 0x56d
	sraw t5, a6, s4
	li s1, 0x758
	sraw s6, t5, s1
	li s8, 0x35
	sraw t2, s6, s8
	li a4, 0xf2
	sraw s5, t2, a4
	li s3, 0x4e8
	sraw t5, s5, s3
	li a6, 0x27e
	sraw s11, t5, a6
	li t5, 0x5e8
	sraw a2, s11, t5
	li s6, 0x3f9
	sraw s8, a2, s6
	li a5, 0x5c3
	sraw t4, s8, a5
	li a7, 0x3af
	sraw a2, t4, a7
	li a3, 0x678
	sraw t1, a2, a3
	li t6, 0x439
	sraw s1, t1, t6
	li t5, 0x4fb
	sraw s3, s1, t5
	li s8, 0x4a
	sraw a6, s3, s8
	li a1, 0x1e2
	sraw t4, a6, a1
	li a5, 0x55e
	sraw s1, t4, a5
	li s5, 0x17d
	sraw t6, s1, s5
	li s4, 0x4de
	sraw s3, t6, s4
	li t3, 0x2e5
	sraw a4, s3, t3
	li s6, 0x97
	sraw a7, a4, s6
	li s5, 0x65b
	sraw t2, a7, s5
	li s5, 0x7c3
	sraw t6, t2, s5
	li s5, 0xcc
	sraw s3, t6, s5
	li t6, 0x6e5
	sraw s3, s3, t6
	li a7, 0x4e8
	sraw s11, s3, a7
	li s4, 0x733
	sraw t6, s11, s4
	li s4, 0x194
	sraw s3, t6, s4
	li t3, 0x6c1
	sraw t5, s3, t3
	li s8, 0x299
	sraw s5, t5, s8
	li s1, 0xc8
	sraw a4, s5, s1
	li a2, 0x21e
	sraw s4, a4, a2
	li a7, 0x356
	sraw t6, s4, a7
	li t2, 0xaa
	sraw a6, t6, t2
	li s5, 0x153
	sraw a4, a6, s5
	li a5, 0x583
	sraw s3, a4, a5
	li t5, 0x56
	sraw s11, s3, t5
	li s6, 0x32b
	sraw t3, s11, s6
	li a0, 0x1c6
	sraw s6, t3, a0
	li s5, 0x29a
	sraw s0, s6, s5
	li t6, 0x111
	sraw s8, s0, t6
	li s11, 0x1bb
	sraw s4, s8, s11
	li a3, 0x505
	sraw t1, s4, a3
	li s3, 0x5c3
	sraw t4, t1, s3
	li s3, 0x698
	sraw s3, t4, s3
	li a5, 0x537
	sraw a6, s3, a5
	li s10, 0x1a
	sraw a3, a6, s10
	li s6, 0x3db
	sraw s3, a3, s6
	li a0, 0x2d2
	sraw a1, s3, a0
	li s6, 0x20f
	sraw s4, a1, s6
	li s5, 0x31d
	sraw s8, s4, s5
	li s11, 0x52b
	sraw s6, s8, s11
	li s8, 0x1a3
	sraw s3, s6, s8
	li s10, 0x42e
	sraw a1, s3, s10
	li a2, 0x49f
	sraw a5, a1, a2
	li s3, 0x786
	sraw s3, a5, s3
	li a5, 0x578
	sraw a2, s3, a5
	li s1, 0x6cf
	sraw s4, a2, s1
	li t1, 0x40b
	sraw a7, s4, t1
	li s1, 0x71d
	sraw t3, a7, s1
	li a6, 0x2b5
	sraw a0, t3, a6
	li a2, 0x57e
	sraw t2, a0, a2
	li a7, 0x14d
	sraw a2, t2, a7
	li s0, 0x3b2
	sraw s3, a2, s0
	li t5, 0x600
	sraw a3, s3, t5
	li t4, 0x4f2
	sraw a6, a3, t4
	li a1, 0xca
	sraw a1, a6, a1
	li t3, 0x61c
	sraw a4, a1, t3
	li s8, 0x11a
	sraw s5, a4, s8
	li s11, 0x651
	sraw t1, s5, s11
	li s8, 0x6a7
	sraw a0, t1, s8
	li t2, 0x1b
	sraw s10, a0, t2
	li a7, 0x72b
	sraw a3, s10, a7
	li t5, 0x16f
	sraw s11, a3, t5
	li a4, 0x370
	sraw a2, s11, a4
	li a1, 0x493
	sraw a0, a2, a1
	li s11, 0x606
	sraw s6, a0, s11
	li a6, 0x681
	sraw t1, s6, a6
	li t5, 0x60
	sraw s11, t1, t5
	li s3, 0xc7
	sraw s8, s11, s3
	li s1, 0x347
	sraw t4, s8, s1
	li a3, 0xcc
	sraw a4, t4, a3
	li t6, 0x5f2
	sraw t1, a4, t6
	li s0, 0x356
	sraw s0, t1, s0
	li s6, 0x3b2
	sraw s1, s0, s6
	li s5, 0x43d
	sraw t3, s1, s5
	li s8, 0x31a
	sraw a3, t3, s8
	li s10, 0x710
	sraw s4, a3, s10
	li s0, 0x21a
	sraw s6, s4, s0
	csrr a5, time
	csrr s1, cycle
	csrr s11, instret
	sub s0, a5, s9
	sub s9, s1, s2
	sub s3, s11, s7
	li a4, 0
	csrr s5, time
	csrr t3, cycle
	csrr s11, instret
	li s8, 0x629
	sraw s1, a4, s8
	li s4, 0x65b
	sraw a0, s1, s4
	li a4, 0x11e
	sraw t1, a0, a4
	li s8, 0x49e
	sraw a5, t1, s8
	li t2, 0x7c
	sraw s6, a5, t2
	li t5, 0x665
	sraw s10, s6, t5
	li a5, 0xdb
	sraw a1, s10, a5
	li s7, 0x76d
	sraw a4, a1, s7
	li a3, 0x72d
	sraw s0, a4, a3
	li s6, 0x4cb
	sraw s10, s0, s6
	li s2, 0x5aa
	sraw s4, s10, s2
	li t6, 0x4a8
	sraw t2, s4, t6
	li s10, 0x372
	sraw t4, t2, s10
	li a0, 0x7b6
	sraw s4, t4, a0
	li a7, 0x518
	sraw a3, s4, a7
	li s7, 0x44e
	sraw t5, a3, s7
	li a0, 0x6cb
	sraw t4, t5, a0
	li s10, 0x2d9
	sraw t1, t4, s10
	li a0, 0x57d
	sraw s10, t1, a0
	li t1, 0x7fd
	sraw t5, s10, t1
	li s1, 0x2eb
	sraw a6, t5, s1
	li t2, 0xbe
	sraw s9, a6, t2
	li a1, 0x20
	sraw s4, s9, a1
	li s3, 0x1fd
	sraw s6, s4, s3
	li t1, 0xd
	sraw a6, s6, t1
	li s2, 0x269
	sraw a3, a6, s2
	li a4, 0x9c
	sraw t1, a3, a4
	li a3, 0x5da
	sraw s2, t1, a3
	li s1, 0x6a2
	sraw a0, s2, s1
	li a1, 0x44f
	sraw s4, a0, a1
	li s1, 0x780
	sraw t2, s4, s1
	li a3, 0x163
	sraw s1, t2, a3
	li a2, 0x6cb
	sraw t6, s1, a2
	li s9, 0x7e9
	sraw s2, t6, s9
	li s9, 0x4a4
	sraw s8, s2, s9
	li a5, 0x7f2
	sraw s2, s8, a5
	li a0, 0x792
	sraw s8, s2, a0
	li s0, 0x7e0
	sraw s0, s8, s0
	li s4, 0x412
	sraw s3, s0, s4
	li a5, 0x500
	sraw s0, s3, a5
	li t1, 0x7ff
	sraw s9, s0, t1
	li s4, 0x2e5
	sraw a4, s9, s4
	li s2, 0x1ad
	sraw s4, a4, s2
	li s2, 0x4c1
	sraw t2, s4, s2
	li t4, 0x47c
	sraw t6, t2, t4
	li a2, 0xd9
	sraw s8, t6, a2
	li a5, 0x2f6
	sraw s1, s8, a5
	li s10, 0x60a
	sraw a4, s1, s10
	li t6, 0x16b
	sraw a6, a4, t6
	li s4, 0x61a
	sraw s3, a6, s4
	li a1, 0x5db
	sraw a1, s3, a1
	li t2, 0x485
	sraw a5, a1, t2
	li s9, 0x3d1
	sraw s1, a5, s9
	li a6, 0x7b
	sraw a5, s1, a6
	li s8, 0x440
	sraw s3, a5, s8
	li s8, 0x2f3
	sraw a3, s3, s8
	li t2, 0x429
	sraw s4, a3, t2
	li a0, 0x224
	sraw s7, s4, a0
	li a2, 0x701
	sraw a7, s7, a2
	li t5, 0x65e
	sraw s1, a7, t5
	li a7, 0x576
	sraw a4, s1, a7
	li t4, 0xd2
	sraw t6, a4, t4
	li a6, 0x66a
	sraw s10, t6, a6
	li t5, 0x2ae
	sraw s3, s10, t5
	li t4, 0x558
	sraw a4, s3, t4
	li s7, 0x5b6
	sraw t1, a4, s7
	li t5, 0x299
	sraw t6, t1, t5
	li a4, 0x701
	sraw s7, t6, a4
	li t4, 0x3be
	sraw a5, s7, t4
	li s3, 0x216
	sraw s6, a5, s3
	li s8, 0x2cd
	sraw s8, s6, s8
	li s1, 0x196
	sraw t1, s8, s1
	li s7, 0x214
	sraw s2, t1, s7
	li s9, 0x769
	sraw s0, s2, s9
	li a1, 0x6ee
	sraw a4, s0, a1
	li s10, 0x5f5
	sraw s2, a4, s10
	li s6, 0x3ae
	sraw s1, s2, s6
	li a5, 0x615
	sraw s3, s1, a5
	li a7, 0x47d
	sraw a7, s3, a7
	li a1, 0x1d2
	sraw a2, a7, a1
	li s10, 0x459
	sraw a0, a2, s10
	li a7, 0x414
	sraw t6, a0, a7
	li a0, 0x771
	sraw a7, t6, a0
	li a0, 0xba
	sraw s0, a7, a0
	li s2, 0x459
	sraw t6, s0, s2
	li a2, 0x68e
	sraw a1, t6, a2
	li a6, 0x75
	sraw s1, a1, a6
	li a6, 0x698
	sraw s2, s1, a6
	li a3, 0x63a
	sraw t2, s2, a3
	li s2, 0x7b1
	sraw t6, t2, s2
	li a1, 0x59b
	sraw a6, t6, a1
	li s0, 0x272
	sraw s4, a6, s0
	li s9, 0x693
	sraw a2, s4, s9
	li a7, 0x64
	sraw a1, a2, a7
	li s2, 0x33e
	sraw s0, a1, s2
	li a5, 0x7f1
	sraw a4, s0, a5
	li a0, 0x762
	sraw s7, a4, a0
	li t2, 0x418
	sraw a1, s7, t2
	li a6, 0x16e
	sraw a1, a1, a6
	li a2, 0x72b
	sraw a7, a1, a2
	csrr s0, time
	csrr s6, cycle
	csrr a6, instret
	sub a4, s0, s5
	sub a5, s6, t3
	sub s11, a6, s11
	li s2, 0
	csrr t1, time
	csrr a1, cycle
	csrr s0, instret
	li a7, 0x448
	sraw s5, s2, a7
	li a6, 0x546
	sraw t4, s5, a6
	li t5, 0x2cc
	sraw t2, t4, t5
	li a7, 0x762
	sraw s9, t2, a7
	li s6, 0x6e9
	sraw s5, s9, s6
	li s6, 0x46d
	sraw t6, s5, s6
	li t4, 0x368
	sraw a4, t6, t4
	li s3, 0x45a
	sraw a6, a4, s3
	li s7, 0x48a
	sraw s10, a6, s7
	li a4, 0x44d
	sraw a4, s10, a4
	li s4, 0x195
	sraw a3, a4, s4
	li t4, 0x1c7
	sraw a6, a3, t4
	li a4, 0x7f6
	sraw a2, a6, a4
	li s8, 0x58a
	sraw a3, a2, s8
	li t4, 0x2f7
	sraw s7, a3, t4
	li a2, 0x7ee
	sraw s4, s7, a2
	li a4, 0x6cb
	sraw s3, s4, a4
	li s9, 0x19f
	sraw a0, s3, s9
	li s7, 0x76f
	sraw t5, a0, s7
	li s3, 0x3ed
	sraw t5, t5, s3
	li s7, 0x7eb
	sraw s1, t5, s7
	li s7, 0x174
	sraw t5, s1, s7
	li s5, 0x4ff
	sraw s7, t5, s5
	li t3, 0xa4
	sraw s9, s7, t3
	li s8, 0x703
	sraw s7, s9, s8
	li s4, 0x193
	sraw s1, s7, s4
	li a7, 0x14e
	sraw s9, s1, a7
	li s10, 0x132
	sraw a2, s9, s10
	li a0, 0x6dc
	sraw s6, a2, a0
	li s8, 0x450
	sraw s8, s6, s8
	li a3, 0x6a6
	sraw a2, s8, a3
	li s10, 0x551
	sraw s10, a2, s10
	li a3, 0xcc
	sraw t6, s10, a3
	li s2, 0x688
	sraw a3, t6, s2
	li t2, 0x396
	sraw a3, a3, t2
	li t5, 0x2bc
	sraw s6, a3, t5
	li t5, 0x618
	sraw a7, s6, t5
	li s2, 0x352
	sraw a7, a7, s2
	li s1, 0x34d
	sraw t4, a7, s1
	li t2, 0x1ce
	sraw s2, t4, t2
	li t4, 0x579
	sraw s4, s2, t4
	li s1, 0x1bd
	sraw s4, s4, s1
	li s2, 0x219
	sraw s6, s4, s2
	li a6, 0x4a8
	sraw s9, s6, a6
	li s8, 0x534
	sraw t6, s9, s8
	li s2, 0x6ba
	sraw s3, t6, s2
	li s2, 0xdf
	sraw s1, s3, s2
	li t2, 0x560
	sraw t5, s1, t2
	li s10, 0x7f4
	sraw s6, t5, s10
	li s9, 0xad
	sraw a3, s6, s9
	li t5, 0x6ca
	sraw a0, a3, t5
	li s8, 0x64e
	sraw t4, a0, s8
	li t5, 0x3f6
	sraw s4, t4, t5
	li s5, 0x1b6
	sraw s5, s4, s5
	li s6, 0x627
	sraw s1, s5, s6
	li s10, 0x3f5
	sraw t6, s1, s10
	li s2, 0x1a2
	sraw a4, t6, s2
	li t5, 0x7d9
	sraw s9, a4, t5
	li s6, 0x549
	sraw s2, s9, s6
	li a3, 0x492
	sraw a3, s2, a3
	li s1, 0x1d3
	sraw a6, a3, s1
	li s1, 0x7f2
	sraw t2, a6, s1
	li s2, 0x546
	sraw a6, t2, s2
	li s7, 0x638
	sraw s8, a6, s7
	li s5, 0x2f9
	sraw s7, s8, s5
	li s5, 0x6de
	sraw s5, s7, s5
	li s4, 0x775
	sraw a4, s5, s4
	li s8, 0x7f7
	sraw s10, a4, s8
	li a3, 0x359
	sraw s8, s10, a3
	li s9, 0x1eb
	sraw a2, s8, s9
	li s6, 0x453
	sraw s8, a2, s6
	li s5, 0x169
	sraw s6, s8, s5
	li s3, 0x38a
	sraw t3, s6, s3
	li s6, 0x5f6
	sraw t4, t3, s6
	li s8, 0x322
	sraw a6, t4, s8
	li s10, 0x460
	sraw s5, a6, s10
	li a3, 0x4b6
	sraw t2, s5, a3
	li t5, 0x10b
	sraw a3, t2, t5
	li s8, 0x1ee
	sraw a6, a3, s8
	li s10, 0xf1
	sraw a3, a6, s10
	li a0, 0x6d1
	sraw s8, a3, a0
	li a2, 0x4
	sraw s8, s8, a2
	li t2, 0x3c1
	sraw s8, s8, t2
	li s9, 0x351
	sraw a4, s8, s9
	li a6, 0x680
	sraw s4, a4, a6
	li a4, 0x67f
	sraw s8, s4, a4
	li s5, 0x7fa
	sraw a4, s8, s5
	li t3, 0x2c7
	sraw s7, a4, t3
	li t6, 0x608
	sraw t6, s7, t6
	li s9, 0x713
	sraw t5, t6, s9
	li a4, 0x468
	sraw t3, t5, a4
	li t2, 0x298
	sraw s9, t3, t2
	li t6, 0x480
	sraw t5, s9, t6
	li t4, 0x70a
	sraw a3, t5, t4
	li a0, 0x18c
	sraw a2, a3, a0
	li s3, 0x7bd
	sraw t5, a2, s3
	li t2, 0x6b4
	sraw s7, t5, t2
	li s9, 0x457
	sraw a2, s7, s9
	li s7, 0x2c0
	sraw a7, a2, s7
	li s6, 0xd1
	sraw t4, a7, s6
	csrr s1, time
	csrr s4, cycle
	csrr t3, instret
	sub t6, s1, t1
	sub s6, s4, a1
	sub s7, t3, s0
	beq a5, s6, pass_label_57
	li s1, failed_addr
	ld s9, 0(s1)
	jr s9
pass_label_57:
	beq s11, s7, pass_label_58
	li a1, failed_addr
	ld s2, 0(a1)
	jr s2
pass_label_58:
SID_ZKT_05_SRAW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_06)
SID_ZKT_06:
	li sp, SID_ZKT_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t6, 0
	li t1, 0
	beq t6, t6, pass_label_59
	li a4, failed_addr
	ld a1, 0(a4)
	jr a1
pass_label_59:
SID_ZKT_06_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_07_MUL)
SID_ZKT_07_MUL:
	li sp, SID_ZKT_07_MUL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s0, 0
	csrr s2, time
	csrr a3, cycle
	csrr t5, instret
	li t4, 0
	mul s5, s0, t4
	li a6, 0x5b2
	mul s4, s5, a6
	li s0, 0x5fd
	mul s7, s4, s0
	li a1, 0x28f
	mul t3, s7, a1
	li s4, 0x1f
	mul s11, t3, s4
	li t6, 0x4ac
	mul a1, s11, t6
	li t3, 0
	mul a4, a1, t3
	li s11, 0x3c8
	mul s3, a4, s11
	li s5, 0x580
	mul s8, s3, s5
	li s10, 0x609
	mul s1, s8, s10
	li t3, 0xe1
	mul t2, s1, t3
	li s6, 0x643
	mul t1, t2, s6
	li a7, 0
	mul a0, t1, a7
	li s10, 0x5f9
	mul a5, a0, s10
	li t2, 0x5e3
	mul t1, a5, t2
	li a0, 0x89
	mul a1, t1, a0
	li s6, 0x27b
	mul s11, a1, s6
	li s1, 0x4aa
	mul s4, s11, s1
	li s9, 0
	mul s5, s4, s9
	li s7, 0x63c
	mul t1, s5, s7
	li s9, 0x162
	mul s8, t1, s9
	li a7, 0x31b
	mul t2, s8, a7
	li s9, 0x40d
	mul a2, t2, s9
	li a6, 0x3dd
	mul a5, a2, a6
	li t6, 0
	mul a4, a5, t6
	li a7, 0x7a6
	mul s8, a4, a7
	li s0, 0x4d9
	mul t3, s8, s0
	li t2, 0x522
	mul s5, t3, t2
	li a2, 0x5b8
	mul s6, s5, a2
	li a0, 0xfe
	mul s0, s6, a0
	li a6, 0
	mul a6, s0, a6
	li a1, 0x752
	mul s1, a6, a1
	li t2, 0x491
	mul a4, s1, t2
	li t3, 0x7e5
	mul s0, a4, t3
	li s10, 0x17b
	mul s4, s0, s10
	li s10, 0x63e
	mul a4, s4, s10
	li t4, 0
	mul s4, a4, t4
	li s7, 0x451
	mul a4, s4, s7
	li s11, 0x35f
	mul a4, a4, s11
	li t1, 0x4a5
	mul s9, a4, t1
	li s0, 0x395
	mul s9, s9, s0
	li s0, 0x217
	mul s3, s9, s0
	li a1, 0
	mul a0, s3, a1
	li a5, 0x14f
	mul a4, a0, a5
	li s9, 0x5b4
	mul s8, a4, s9
	li s6, 0x29b
	mul s3, s8, s6
	li s10, 0x3f9
	mul a5, s3, s10
	li t2, 0xf7
	mul t4, a5, t2
	li s11, 0
	mul t2, t4, s11
	li a2, 0x1c6
	mul s7, t2, a2
	li t3, 0x2e6
	mul a0, s7, t3
	li t1, 0x5d0
	mul s9, a0, t1
	li a2, 0x7c0
	mul a7, s9, a2
	li s3, 0x18f
	mul a5, a7, s3
	li s11, 0
	mul a5, a5, s11
	li a6, 0x181
	mul a2, a5, a6
	li s11, 0x52f
	mul t1, a2, s11
	li t2, 0x220
	mul t2, t1, t2
	li t3, 0x61d
	mul t1, t2, t3
	li s7, 0x2bf
	mul s0, t1, s7
	li s3, 0
	mul t4, s0, s3
	li s9, 0x19a
	mul a6, t4, s9
	li t1, 0x71d
	mul s4, a6, t1
	li a7, 0x44c
	mul s6, s4, a7
	li s8, 0x1e3
	mul s6, s6, s8
	li s11, 0x2c1
	mul a0, s6, s11
	li a4, 0
	mul s4, a0, a4
	li s0, 0x1d3
	mul s7, s4, s0
	li s0, 0x251
	mul s6, s7, s0
	li s5, 0x300
	mul s10, s6, s5
	li t4, 0x3eb
	mul s6, s10, t4
	li t1, 0x618
	mul a6, s6, t1
	li s11, 0
	mul a4, a6, s11
	li s10, 0xca
	mul a6, a4, s10
	li s11, 0x62d
	mul t4, a6, s11
	li s11, 0x60f
	mul a4, t4, s11
	li a5, 0x441
	mul a2, a4, a5
	li a5, 0x6b
	mul t2, a2, a5
	li a7, 0
	mul a2, t2, a7
	li a6, 0x95
	mul a6, a2, a6
	li s0, 0x528
	mul t3, a6, s0
	li a5, 0x389
	mul s10, t3, a5
	li a7, 0x54b
	mul a2, s10, a7
	li s3, 0x623
	mul a5, a2, s3
	li s6, 0
	mul s8, a5, s6
	li a5, 0x5be
	mul s3, s8, a5
	li a2, 0x7f7
	mul s7, s3, a2
	li s10, 0x1ee
	mul t2, s7, s10
	li a7, 0xef
	mul t2, t2, a7
	li s7, 0x4e6
	mul s5, t2, s7
	li s4, 0
	mul a7, s5, s4
	li s6, 0x70f
	mul a1, a7, s6
	li s1, 0x7b7
	mul a4, a1, s1
	li a5, 0x1f3
	mul t3, a4, a5
	li a0, 0x332
	mul s8, t3, a0
	li a0, 0x331
	mul a5, s8, a0
	li a4, 0
	mul s3, a5, a4
	li s1, 0x120
	mul t4, s3, s1
	li s0, 0x56f
	mul s1, t4, s0
	li a7, 0x498
	mul s11, s1, a7
	csrr a5, time
	csrr a4, cycle
	csrr a2, instret
	sub a6, a5, s2
	sub t4, a4, a3
	sub s5, a2, t5
	li s7, 0
	csrr s8, time
	csrr t6, cycle
	csrr s2, instret
	li s5, 0
	mul t5, s7, s5
	li s9, 0x22c
	mul s1, t5, s9
	li t4, 0x10d
	mul s5, s1, t4
	li t3, 0x18a
	mul a2, s5, t3
	li a7, 0x6df
	mul a1, a2, a7
	li s4, 0x23
	mul t1, a1, s4
	li t5, 0
	mul a4, t1, t5
	li t1, 0x395
	mul t4, a4, t1
	li s3, 0x684
	mul t2, t4, s3
	li s11, 0xfb
	mul a2, t2, s11
	li s4, 0x282
	mul a1, a2, s4
	li s11, 0x1f3
	mul a0, a1, s11
	li a5, 0
	mul a4, a0, a5
	li a0, 0x37f
	mul a3, a4, a0
	li s6, 0x1bf
	mul a0, a3, s6
	li t1, 0xb9
	mul s9, a0, t1
	li a5, 0x1e5
	mul a2, s9, a5
	li a4, 0x68d
	mul a0, a2, a4
	li a1, 0
	mul t3, a0, a1
	li s1, 0xff
	mul t3, t3, s1
	li s4, 0x13f
	mul s10, t3, s4
	li a1, 0x651
	mul t3, s10, a1
	li a4, 0x35c
	mul s1, t3, a4
	li s6, 0x2a4
	mul s1, s1, s6
	li a2, 0
	mul a3, s1, a2
	li s5, 0x611
	mul t4, a3, s5
	li a2, 0x267
	mul s9, t4, a2
	li s3, 0x43f
	mul a5, s9, s3
	li s1, 0x4ff
	mul s0, a5, s1
	li a1, 0x58d
	mul s3, s0, a1
	li t3, 0
	mul t1, s3, t3
	li s0, 0x3b
	mul t4, t1, s0
	li s9, 0x28c
	mul s6, t4, s9
	li a4, 0x1d4
	mul t3, s6, a4
	li s5, 0x7cf
	mul s6, t3, s5
	li s10, 0x4ce
	mul a3, s6, s10
	li t3, 0
	mul s11, a3, t3
	li s9, 0x68b
	mul t2, s11, s9
	li s4, 0xb8
	mul a0, t2, s4
	li a2, 0x588
	mul s4, a0, a2
	li a0, 0x1bd
	mul s3, s4, a0
	li s5, 0x540
	mul s4, s3, s5
	li t4, 0
	mul t1, s4, t4
	li a5, 0x114
	mul a2, t1, a5
	li a3, 0x2c
	mul a5, a2, a3
	li s3, 0x226
	mul a1, a5, s3
	li a7, 0x5d
	mul s0, a1, a7
	li t1, 0x5b5
	mul s11, s0, t1
	li a5, 0
	mul s10, s11, a5
	li s3, 0x3e5
	mul s1, s10, s3
	li s9, 0x7ea
	mul t4, s1, s9
	li s3, 0x784
	mul s10, t4, s3
	li s4, 0x1b5
	mul s4, s10, s4
	li t1, 0x59a
	mul s9, s4, t1
	li a0, 0
	mul s6, s9, a0
	li a3, 0x482
	mul s9, s6, a3
	li t3, 0x75c
	mul a1, s9, t3
	li a4, 0x1e9
	mul a2, a1, a4
	li a7, 0x643
	mul a4, a2, a7
	li a5, 0x3bf
	mul a2, a4, a5
	li a7, 0
	mul s3, a2, a7
	li a2, 0x2f7
	mul a1, s3, a2
	li t5, 0x713
	mul s1, a1, t5
	li s4, 0x31c
	mul a2, s1, s4
	li s3, 0x1c3
	mul s10, a2, s3
	li t2, 0x17f
	mul s7, s10, t2
	li s3, 0
	mul a2, s7, s3
	li t5, 0x28
	mul t5, a2, t5
	li s6, 0x7d0
	mul a0, t5, s6
	li t5, 0x25c
	mul a0, a0, t5
	li s0, 0x30f
	mul a5, a0, s0
	li s6, 0x38
	mul s0, a5, s6
	li t2, 0
	mul t4, s0, t2
	li s9, 0x658
	mul a4, t4, s9
	li s10, 0x13e
	mul s10, a4, s10
	li s5, 0x356
	mul s9, s10, s5
	li s3, 0x45c
	mul s6, s9, s3
	li a4, 0x3f3
	mul a1, s6, a4
	li s1, 0
	mul s10, a1, s1
	li s3, 0x585
	mul a5, s10, s3
	li a4, 0x2df
	mul t2, a5, a4
	li s0, 0x3a4
	mul a4, t2, s0
	li a3, 0x2a8
	mul s4, a4, a3
	li t4, 0x446
	mul a5, s4, t4
	li t2, 0
	mul s10, a5, t2
	li a3, 0x40e
	mul t1, s10, a3
	li a1, 0x50
	mul s10, t1, a1
	li a2, 0x604
	mul s5, s10, a2
	li s4, 0x4fe
	mul s0, s5, s4
	li a4, 0x307
	mul t1, s0, a4
	li t4, 0
	mul a0, t1, t4
	li a5, 0x31f
	mul t2, a0, a5
	li s7, 0x680
	mul a3, t2, s7
	li a0, 0x35b
	mul s6, a3, a0
	li s10, 0x5a4
	mul t3, s6, s10
	li s9, 0x48
	mul s0, t3, s9
	li a4, 0
	mul s5, s0, a4
	li t5, 0x8f
	mul s5, s5, t5
	li t1, 0x227
	mul s3, s5, t1
	li s0, 0xa8
	mul s6, s3, s0
	csrr a4, time
	csrr s10, cycle
	csrr t1, instret
	sub s7, a4, s8
	sub a3, s10, t6
	sub t4, t1, s2
	li t3, 0
	csrr s3, time
	csrr t6, cycle
	csrr s4, instret
	li a6, 0
	mul s6, t3, a6
	li s5, 0x67b
	mul s10, s6, s5
	li s6, 0x228
	mul s9, s10, s6
	li s8, 0x41b
	mul s10, s9, s8
	li s8, 0x471
	mul s8, s10, s8
	li s0, 0x769
	mul t3, s8, s0
	li a1, 0
	mul s6, t3, a1
	li t3, 0x45a
	mul s1, s6, t3
	li s5, 0x57c
	mul s8, s1, s5
	li a6, 0x574
	mul s1, s8, a6
	li t1, 0x15a
	mul t1, s1, t1
	li s11, 0x6ae
	mul t5, t1, s11
	li a4, 0
	mul s6, t5, a4
	li a6, 0x1f6
	mul s11, s6, a6
	li s2, 0x618
	mul s10, s11, s2
	li s0, 0x134
	mul s1, s10, s0
	li s6, 0x794
	mul s10, s1, s6
	li s0, 0x11b
	mul s8, s10, s0
	li s9, 0
	mul s8, s8, s9
	li a1, 0x433
	mul t5, s8, a1
	li a7, 0x41b
	mul s6, t5, a7
	li s10, 0x525
	mul s1, s6, s10
	li s6, 0x682
	mul s6, s1, s6
	li a2, 0x7bc
	mul t2, s6, a2
	li s2, 0
	mul a6, t2, s2
	li a0, 0x5ef
	mul a7, a6, a0
	li t5, 0x3c2
	mul s7, a7, t5
	li s0, 0x38b
	mul a2, s7, s0
	li t1, 0x545
	mul a2, a2, t1
	li s2, 0x622
	mul s8, a2, s2
	li t5, 0
	mul a7, s8, t5
	li s2, 0x6c3
	mul s7, a7, s2
	li s10, 0x252
	mul a2, s7, s10
	li a6, 0x130
	mul a7, a2, a6
	li s11, 0x24c
	mul s10, a7, s11
	li s8, 0x2f1
	mul t1, s10, s8
	li s0, 0
	mul s2, t1, s0
	li s9, 0x3c6
	mul s10, s2, s9
	li s7, 0x3f
	mul a0, s10, s7
	li t2, 0x764
	mul t3, a0, t2
	li t1, 0x7f4
	mul s8, t3, t1
	li a2, 0x53e
	mul s9, s8, a2
	li s10, 0
	mul a5, s9, s10
	li s0, 0x423
	mul s1, a5, s0
	li s11, 0x147
	mul s10, s1, s11
	li a0, 0x663
	mul a5, s10, a0
	li a0, 0xab
	mul t2, a5, a0
	li s10, 0x2e0
	mul s10, t2, s10
	li a0, 0
	mul t2, s10, a0
	li s11, 0x7cc
	mul s2, t2, s11
	li a5, 0x289
	mul s1, s2, a5
	li s10, 0x282
	mul s9, s1, s10
	li t1, 0x1c
	mul t2, s9, t1
	li s6, 0x6c8
	mul t1, t2, s6
	li s0, 0
	mul s0, t1, s0
	li a5, 0x701
	mul s9, s0, a5
	li a1, 0x58a
	mul t2, s9, a1
	li s7, 0x2ca
	mul a2, t2, s7
	li s9, 0x247
	mul s2, a2, s9
	li s11, 0x99
	mul t5, s2, s11
	li t1, 0
	mul a2, t5, t1
	li s6, 0x16d
	mul s0, a2, s6
	li a7, 0x702
	mul s0, s0, a7
	li a7, 0x8d
	mul s7, s0, a7
	li s11, 0x7a8
	mul s8, s7, s11
	li s6, 0x102
	mul s8, s8, s6
	li a1, 0
	mul s2, s8, a1
	li s5, 0x5d
	mul s10, s2, s5
	li a6, 0x74c
	mul a6, s10, a6
	li a0, 0xd0
	mul s2, a6, a0
	li a5, 0x2e5
	mul s11, s2, a5
	li s10, 0x611
	mul s1, s11, s10
	li a4, 0
	mul s0, s1, a4
	li s1, 0x337
	mul a2, s0, s1
	li a0, 0x5f8
	mul s2, a2, a0
	li t2, 0xca
	mul a4, s2, t2
	li t1, 0x48
	mul s0, a4, t1
	li s10, 0x39d
	mul a4, s0, s10
	li a0, 0
	mul s8, a4, a0
	li t3, 0x5ca
	mul s10, s8, t3
	li t3, 0x78d
	mul a5, s10, t3
	li a0, 0x4af
	mul s8, a5, a0
	li s10, 0x6f
	mul s0, s8, s10
	li a7, 0x6c8
	mul a2, s0, a7
	li s8, 0
	mul s0, a2, s8
	li t2, 0x2cb
	mul a0, s0, t2
	li s11, 0x5b1
	mul s10, a0, s11
	li s5, 0x4f9
	mul s9, s10, s5
	li t5, 0x5a
	mul s2, s9, t5
	li t3, 0x118
	mul t5, s2, t3
	li s5, 0
	mul s2, t5, s5
	li s11, 0x2ad
	mul s8, s2, s11
	li s5, 0x49c
	mul a4, s8, s5
	li a2, 0x16b
	mul a2, a4, a2
	li s1, 0x397
	mul s10, a2, s1
	li s9, 0x16
	mul s2, s10, s9
	li a0, 0
	mul s0, s2, a0
	li s11, 0x3c7
	mul s7, s0, s11
	li s9, 0x70e
	mul a0, s7, s9
	li t2, 0x737
	mul a4, a0, t2
	csrr t3, time
	csrr a5, cycle
	csrr s8, instret
	sub s6, t3, s3
	sub s9, a5, t6
	sub t2, s8, s4
	beq a3, s9, pass_label_60
	li t3, failed_addr
	ld s4, 0(t3)
	jr s4
pass_label_60:
	beq t4, t2, pass_label_61
	li s2, failed_addr
	ld t3, 0(s2)
	jr t3
pass_label_61:
SID_ZKT_07_MUL_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_07_MULH)
SID_ZKT_07_MULH:
	li sp, SID_ZKT_07_MULH_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s1, 0
	csrr a2, time
	csrr s2, cycle
	csrr s11, instret
	li s0, 0
	mulh s3, s1, s0
	li t4, 0x15b
	mulh t2, s3, t4
	li s1, 0x58f
	mulh s5, t2, s1
	li t1, 0x252
	mulh s7, s5, t1
	li a1, 0x4de
	mulh t5, s7, a1
	li s0, 0x21d
	mulh t5, t5, s0
	li a7, 0
	mulh s3, t5, a7
	li s4, 0x548
	mulh s3, s3, s4
	li s10, 0x44c
	mulh a6, s3, s10
	li a3, 0x1a1
	mulh s0, a6, a3
	li s4, 0x771
	mulh s5, s0, s4
	li t1, 0x7c8
	mulh s9, s5, t1
	li s7, 0
	mulh t3, s9, s7
	li a7, 0x4b6
	mulh s6, t3, a7
	li t2, 0x299
	mulh a7, s6, t2
	li s0, 0x1b7
	mulh t5, a7, s0
	li s6, 0x179
	mulh a6, t5, s6
	li a1, 0x8
	mulh a4, a6, a1
	li s9, 0
	mulh t5, a4, s9
	li s7, 0x29f
	mulh a1, t5, s7
	li t6, 0x528
	mulh a1, a1, t6
	li s6, 0x1ff
	mulh a7, a1, s6
	li a4, 0x29
	mulh s1, a7, a4
	li t3, 0x303
	mulh a0, s1, t3
	li s5, 0
	mulh t3, a0, s5
	li s4, 0x2cc
	mulh t2, t3, s4
	li a3, 0x1f3
	mulh s0, t2, a3
	li a6, 0x746
	mulh a6, s0, a6
	li a4, 0x55a
	mulh a0, a6, a4
	li t2, 0x52d
	mulh a0, a0, t2
	li s0, 0
	mulh a5, a0, s0
	li t1, 0x229
	mulh s9, a5, t1
	li t6, 0x50d
	mulh s1, s9, t6
	li a0, 0x16c
	mulh s4, s1, a0
	li a4, 0x302
	mulh t4, s4, a4
	li t1, 0x5b0
	mulh s7, t4, t1
	li s0, 0
	mulh s7, s7, s0
	li t6, 0x159
	mulh s5, s7, t6
	li s9, 0xd7
	mulh s8, s5, s9
	li a1, 0x77c
	mulh t6, s8, a1
	li a1, 0x4e2
	mulh a5, t6, a1
	li a7, 0x76f
	mulh a5, a5, a7
	li s9, 0
	mulh t3, a5, s9
	li s7, 0x30f
	mulh a3, t3, s7
	li a0, 0xb5
	mulh a5, a3, a0
	li t6, 0x653
	mulh s10, a5, t6
	li t4, 0x1a6
	mulh s7, s10, t4
	li s5, 0x27
	mulh s4, s7, s5
	li s3, 0
	mulh s8, s4, s3
	li a3, 0x6fb
	mulh a5, s8, a3
	li t6, 0x318
	mulh s1, a5, t6
	li s3, 0x68b
	mulh a7, s1, s3
	li a0, 0x1ac
	mulh s5, a7, a0
	li s1, 0x7eb
	mulh a6, s5, s1
	li s4, 0
	mulh a5, a6, s4
	li s0, 0x152
	mulh a5, a5, s0
	li t4, 0x2b2
	mulh s5, a5, t4
	li a4, 0x454
	mulh s7, s5, a4
	li a7, 0x2b2
	mulh a7, s7, a7
	li s10, 0x2a9
	mulh a4, a7, s10
	li s10, 0
	mulh t4, a4, s10
	li s5, 0x262
	mulh a1, t4, s5
	li s6, 0x451
	mulh a0, a1, s6
	li s9, 0x7fc
	mulh t6, a0, s9
	li s4, 0x50f
	mulh s5, t6, s4
	li s3, 0x46d
	mulh s5, s5, s3
	li s3, 0
	mulh t6, s5, s3
	li t3, 0x33f
	mulh t6, t6, t3
	li s7, 0x719
	mulh s0, t6, s7
	li s6, 0x5cb
	mulh s1, s0, s6
	li t6, 0x8f
	mulh s8, s1, t6
	li a3, 0x113
	mulh a0, s8, a3
	li t3, 0
	mulh s0, a0, t3
	li a5, 0x5e0
	mulh s3, s0, a5
	li a4, 0x50
	mulh s10, s3, a4
	li t3, 0x556
	mulh s4, s10, t3
	li t5, 0x65c
	mulh t3, s4, t5
	li t4, 0x770
	mulh s3, t3, t4
	li t5, 0
	mulh t6, s3, t5
	li s3, 0x735
	mulh a1, t6, s3
	li s1, 0xf1
	mulh a4, a1, s1
	li a5, 0x1b6
	mulh s10, a4, a5
	li t3, 0x5b7
	mulh t4, s10, t3
	li s3, 0x746
	mulh s1, t4, s3
	li t5, 0
	mulh t3, s1, t5
	li s3, 0x6f3
	mulh s0, t3, s3
	li t6, 0x3a6
	mulh a6, s0, t6
	li a5, 0x549
	mulh s7, a6, a5
	li t6, 0x32e
	mulh s1, s7, t6
	li s7, 0x51b
	mulh s3, s1, s7
	li s9, 0
	mulh s5, s3, s9
	li a3, 0x5a
	mulh t5, s5, a3
	li a6, 0x263
	mulh a1, t5, a6
	li a5, 0x384
	mulh a5, a1, a5
	li t2, 0x2a9
	mulh s6, a5, t2
	li a4, 0x3ef
	mulh a3, s6, a4
	li t1, 0
	mulh a4, a3, t1
	li a1, 0x470
	mulh s8, a4, a1
	li s5, 0x173
	mulh t2, s8, s5
	li a7, 0x7c7
	mulh s0, t2, a7
	csrr a0, time
	csrr t3, cycle
	csrr t5, instret
	sub s7, a0, a2
	sub t3, t3, s2
	sub a2, t5, s11
	li a1, 0
	csrr t6, time
	csrr s1, cycle
	csrr t1, instret
	li s3, 0
	mulh a4, a1, s3
	li s8, 0x4b7
	mulh s2, a4, s8
	li t4, 0x734
	mulh a1, s2, t4
	li s4, 0x59b
	mulh t2, a1, s4
	li a3, 0x6d4
	mulh t5, t2, a3
	li s4, 0x24
	mulh a1, t5, s4
	li s0, 0
	mulh t3, a1, s0
	li a0, 0x34e
	mulh a1, t3, a0
	li a2, 0x10c
	mulh s5, a1, a2
	li a4, 0x6c1
	mulh s11, s5, a4
	li s9, 0x5b9
	mulh a7, s11, s9
	li s5, 0x470
	mulh a2, a7, s5
	li a1, 0
	mulh s7, a2, a1
	li a2, 0x70a
	mulh s3, s7, a2
	li a1, 0x12b
	mulh s2, s3, a1
	li a6, 0x6a
	mulh s11, s2, a6
	li s4, 0x52
	mulh s9, s11, s4
	li s7, 0x233
	mulh a1, s9, s7
	li s9, 0
	mulh a2, a1, s9
	li a5, 0x4c1
	mulh t4, a2, a5
	li a5, 0x36f
	mulh s7, t4, a5
	li s9, 0x31e
	mulh s4, s7, s9
	li s7, 0x5f6
	mulh s4, s4, s7
	li a2, 0x6f6
	mulh s5, s4, a2
	li s4, 0
	mulh t2, s5, s4
	li s3, 0x541
	mulh t2, t2, s3
	li s7, 0x41a
	mulh s7, t2, s7
	li t5, 0x636
	mulh t5, s7, t5
	li t3, 0x223
	mulh s8, t5, t3
	li a5, 0x239
	mulh s3, s8, a5
	li s11, 0
	mulh a1, s3, s11
	li s11, 0x6b4
	mulh s7, a1, s11
	li a4, 0x1bb
	mulh t3, s7, a4
	li s11, 0x6ba
	mulh a4, t3, s11
	li t3, 0x22a
	mulh s0, a4, t3
	li s8, 0x39
	mulh s11, s0, s8
	li s3, 0
	mulh s11, s11, s3
	li a3, 0x532
	mulh s6, s11, a3
	li s2, 0x382
	mulh t3, s6, s2
	li s7, 0x653
	mulh a4, t3, s7
	li s4, 0x574
	mulh a0, a4, s4
	li a7, 0x4e5
	mulh a6, a0, a7
	li s0, 0
	mulh a4, a6, s0
	li s5, 0x770
	mulh a6, a4, s5
	li s2, 0x58d
	mulh s10, a6, s2
	li a6, 0x4ce
	mulh t2, s10, a6
	li s8, 0x372
	mulh a5, t2, s8
	li a3, 0x4c5
	mulh s11, a5, a3
	li t4, 0
	mulh s5, s11, t4
	li s11, 0x35b
	mulh a7, s5, s11
	li a5, 0x446
	mulh a2, a7, a5
	li s4, 0x3d3
	mulh a1, a2, s4
	li s7, 0x4dd
	mulh s4, a1, s7
	li s5, 0x1d5
	mulh a7, s4, s5
	li s9, 0
	mulh a2, a7, s9
	li t3, 0x78
	mulh s8, a2, t3
	li s4, 0xfd
	mulh s10, s8, s4
	li s2, 0x66f
	mulh s0, s10, s2
	li a2, 0x4fd
	mulh s10, s0, a2
	li s4, 0x170
	mulh a4, s10, s4
	li s6, 0
	mulh s7, a4, s6
	li a4, 0x1c0
	mulh s3, s7, a4
	li s9, 0x2a4
	mulh a3, s3, s9
	li s3, 0x58
	mulh t4, a3, s3
	li s11, 0x1d
	mulh s9, t4, s11
	li s3, 0x41
	mulh s10, s9, s3
	li a7, 0
	mulh s2, s10, a7
	li a6, 0x6d6
	mulh s11, s2, a6
	li t2, 0x6bc
	mulh s3, s11, t2
	li s7, 0x5a4
	mulh t3, s3, s7
	li a2, 0x4db
	mulh s6, t3, a2
	li a0, 0x6bb
	mulh s11, s6, a0
	li s3, 0
	mulh t4, s11, s3
	li t2, 0x699
	mulh a7, t4, t2
	li s9, 0x7b4
	mulh s9, a7, s9
	li a3, 0x429
	mulh a2, s9, a3
	li t3, 0x30e
	mulh a7, a2, t3
	li s0, 0x264
	mulh t4, a7, s0
	li t3, 0
	mulh s2, t4, t3
	li s0, 0x24a
	mulh a2, s2, s0
	li t2, 0x1cb
	mulh s9, a2, t2
	li a2, 0x8f
	mulh s9, s9, a2
	li s0, 0x647
	mulh t5, s9, s0
	li a1, 0x1bd
	mulh a7, t5, a1
	li s5, 0
	mulh s8, a7, s5
	li s3, 0x4fd
	mulh s3, s8, s3
	li s6, 0x204
	mulh s10, s3, s6
	li s0, 0x607
	mulh s3, s10, s0
	li a4, 0x6a2
	mulh t4, s3, a4
	li s7, 0x1e6
	mulh s3, t4, s7
	li t4, 0
	mulh s5, s3, t4
	li a2, 0xd9
	mulh t2, s5, a2
	li s11, 0x7b8
	mulh t2, t2, s11
	li s10, 0x339
	mulh a2, t2, s10
	li t2, 0x73e
	mulh t5, a2, t2
	li s4, 0x7a4
	mulh a7, t5, s4
	li s6, 0
	mulh a2, a7, s6
	li s10, 0x365
	mulh s2, a2, s10
	li s6, 0x8
	mulh a1, s2, s6
	li a4, 0x60d
	mulh s4, a1, a4
	csrr t2, time
	csrr t5, cycle
	csrr a4, instret
	sub s7, t2, t6
	sub s6, t5, s1
	sub t4, a4, t1
	li s3, 0
	csrr t5, time
	csrr a3, cycle
	csrr s0, instret
	li s8, 0
	mulh a0, s3, s8
	li s5, 0x4a1
	mulh s4, a0, s5
	li a6, 0x28e
	mulh s4, s4, a6
	li a0, 0x6a9
	mulh a5, s4, a0
	li a7, 0x1b6
	mulh s3, a5, a7
	li s1, 0x248
	mulh s8, s3, s1
	li s2, 0
	mulh a6, s8, s2
	li t6, 0x142
	mulh t6, a6, t6
	li s7, 0x39b
	mulh s9, t6, s7
	li a5, 0x21d
	mulh t1, s9, a5
	li s2, 0x52
	mulh s4, t1, s2
	li s1, 0xf9
	mulh a1, s4, s1
	li s3, 0
	mulh s4, a1, s3
	li a0, 0x7af
	mulh s1, s4, a0
	li s2, 0x6b0
	mulh s8, s1, s2
	li a0, 0x731
	mulh t3, s8, a0
	li s3, 0x42b
	mulh s9, t3, s3
	li s2, 0x142
	mulh s3, s9, s2
	li s7, 0
	mulh s3, s3, s7
	li s8, 0x4e3
	mulh s7, s3, s8
	li a5, 0x721
	mulh s11, s7, a5
	li s5, 0x244
	mulh s8, s11, s5
	li s1, 0x195
	mulh s4, s8, s1
	li a4, 0x2ef
	mulh a0, s4, a4
	li s7, 0
	mulh t6, a0, s7
	li s2, 0x75c
	mulh a2, t6, s2
	li s7, 0x357
	mulh a7, a2, s7
	li a4, 0x796
	mulh a1, a7, a4
	li a7, 0xa1
	mulh a7, a1, a7
	li s5, 0x149
	mulh s3, a7, s5
	li a6, 0
	mulh t3, s3, a6
	li s2, 0x56a
	mulh s1, t3, s2
	li a6, 0x46e
	mulh t3, s1, a6
	li a7, 0x24e
	mulh a1, t3, a7
	li s3, 0x607
	mulh a4, a1, s3
	li t2, 0x509
	mulh a5, a4, t2
	li s1, 0
	mulh a7, a5, s1
	li s11, 0x1b6
	mulh t6, a7, s11
	li s9, 0x293
	mulh s2, t6, s9
	li a0, 0x73e
	mulh s10, s2, a0
	li s3, 0x254
	mulh s1, s10, s3
	li a4, 0x497
	mulh a0, s1, a4
	li s10, 0
	mulh a6, a0, s10
	li a1, 0x322
	mulh a4, a6, a1
	li a7, 0x1f7
	mulh t3, a4, a7
	li a6, 0x193
	mulh t2, t3, a6
	li a5, 0x4fd
	mulh a2, t2, a5
	li s7, 0x3b7
	mulh t2, a2, s7
	li a7, 0
	mulh a4, t2, a7
	li a6, 0x720
	mulh a5, a4, a6
	li s2, 0x3fe
	mulh s10, a5, s2
	li a5, 0x271
	mulh a0, s10, a5
	li s10, 0x175
	mulh a4, a0, s10
	li s1, 0xdf
	mulh s11, a4, s1
	li a6, 0
	mulh a1, s11, a6
	li s1, 0x20
	mulh t3, a1, s1
	li a5, 0x7fe
	mulh a0, t3, a5
	li t3, 0x639
	mulh a6, a0, t3
	li s2, 0x682
	mulh s8, a6, s2
	li s3, 0x205
	mulh a4, s8, s3
	li s10, 0
	mulh s2, a4, s10
	li a6, 0x5a9
	mulh s7, s2, a6
	li s11, 0x554
	mulh t2, s7, s11
	li a4, 0x8
	mulh s3, t2, a4
	li s2, 0x4cd
	mulh s9, s3, s2
	li a0, 0x584
	mulh a7, s9, a0
	li s3, 0
	mulh s9, a7, s3
	li t6, 0x7c8
	mulh s9, s9, t6
	li a7, 0x12b
	mulh t6, s9, a7
	li a0, 0x46d
	mulh s10, t6, a0
	li a5, 0x106
	mulh t6, s10, a5
	li s1, 0x77c
	mulh s4, t6, s1
	li t6, 0
	mulh a7, s4, t6
	li s10, 0x419
	mulh a2, a7, s10
	li s9, 0x76a
	mulh s7, a2, s9
	li s10, 0x33f
	mulh a6, s7, s10
	li s11, 0x603
	mulh t2, a6, s11
	li t3, 0x7ad
	mulh s3, t2, t3
	li s2, 0
	mulh a4, s3, s2
	li t1, 0xfe
	mulh a0, a4, t1
	li a2, 0x491
	mulh s10, a0, a2
	li t6, 0x627
	mulh s10, s10, t6
	li s7, 0x730
	mulh s1, s10, s7
	li s7, 0x628
	mulh s2, s1, s7
	li t2, 0
	mulh s9, s2, t2
	li a1, 0x6b0
	mulh t1, s9, a1
	li s9, 0x23e
	mulh a6, t1, s9
	li s10, 0x4e7
	mulh t6, a6, s10
	li t3, 0x249
	mulh t3, t6, t3
	li s2, 0x147
	mulh s3, t3, s2
	li s11, 0
	mulh s8, s3, s11
	li t1, 0x69
	mulh s1, s8, t1
	li s11, 0x10e
	mulh a2, s1, s11
	li s1, 0x7c5
	mulh s7, a2, s1
	li s8, 0x634
	mulh s2, s7, s8
	li s1, 0x588
	mulh a2, s2, s1
	li s5, 0
	mulh s2, a2, s5
	li s11, 0x406
	mulh a4, s2, s11
	li s4, 0x7d5
	mulh s2, a4, s4
	li a4, 0x417
	mulh a1, s2, a4
	csrr s3, time
	csrr s1, cycle
	csrr t3, instret
	sub s7, s3, t5
	sub t2, s1, a3
	sub a6, t3, s0
	beq s6, t2, pass_label_62
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
pass_label_62:
	beq t4, a6, pass_label_63
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
pass_label_63:
SID_ZKT_07_MULH_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_07_MULHU)
SID_ZKT_07_MULHU:
	li sp, SID_ZKT_07_MULHU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s5, 0
	csrr a4, time
	csrr t3, cycle
	csrr s1, instret
	li s2, 0
	mulhu s0, s5, s2
	li s3, 0x120
	mulhu s6, s0, s3
	li a0, 0x483
	mulhu a3, s6, a0
	li s7, 0x72d
	mulhu s5, a3, s7
	li s3, 0x1a8
	mulhu s8, s5, s3
	li s5, 0x7ee
	mulhu s5, s8, s5
	li s4, 0
	mulhu s10, s5, s4
	li t5, 0x7e
	mulhu s9, s10, t5
	li t6, 0x5bf
	mulhu s11, s9, t6
	li t5, 0x47d
	mulhu t6, s11, t5
	li a5, 0x2f2
	mulhu s6, t6, a5
	li s0, 0x75b
	mulhu a6, s6, s0
	li s0, 0
	mulhu s4, a6, s0
	li s9, 0x32a
	mulhu t1, s4, s9
	li s7, 0x3fd
	mulhu s9, t1, s7
	li a2, 0x558
	mulhu s8, s9, a2
	li t4, 0x64a
	mulhu s5, s8, t4
	li s6, 0x5ea
	mulhu t5, s5, s6
	li s4, 0
	mulhu s3, t5, s4
	li s10, 0x452
	mulhu s0, s3, s10
	li s7, 0x158
	mulhu s2, s0, s7
	li a5, 0xec
	mulhu s9, s2, a5
	li a2, 0x5a3
	mulhu a0, s9, a2
	li t6, 0x6f9
	mulhu t2, a0, t6
	li a7, 0
	mulhu a6, t2, a7
	li s8, 0x489
	mulhu s11, a6, s8
	li a0, 0x120
	mulhu s7, s11, a0
	li a0, 0x145
	mulhu s6, s7, a0
	li a3, 0x7ce
	mulhu t4, s6, a3
	li a5, 0x5da
	mulhu a1, t4, a5
	li a0, 0
	mulhu a5, a1, a0
	li t6, 0x77f
	mulhu s9, a5, t6
	li s11, 0x66e
	mulhu s4, s9, s11
	li t6, 0x419
	mulhu a7, s4, t6
	li s3, 0x674
	mulhu a5, a7, s3
	li s7, 0x7d7
	mulhu s8, a5, s7
	li t5, 0
	mulhu t6, s8, t5
	li s4, 0x300
	mulhu a3, t6, s4
	li s10, 0x300
	mulhu t6, a3, s10
	li s6, 0x3d5
	mulhu a5, t6, s6
	li a3, 0x607
	mulhu a2, a5, a3
	li s4, 0x307
	mulhu a7, a2, s4
	li s3, 0
	mulhu s7, a7, s3
	li a1, 0x64
	mulhu t6, s7, a1
	li a5, 0x25a
	mulhu t4, t6, a5
	li s10, 0x292
	mulhu t5, t4, s10
	li a5, 0x669
	mulhu s5, t5, a5
	li s2, 0x24f
	mulhu t5, s5, s2
	li t1, 0
	mulhu s3, t5, t1
	li s8, 0x30f
	mulhu t6, s3, s8
	li t5, 0x114
	mulhu s5, t6, t5
	li t4, 0x3fc
	mulhu a3, s5, t4
	li a1, 0x65f
	mulhu t6, a3, a1
	li a2, 0x139
	mulhu s2, t6, a2
	li s5, 0
	mulhu a1, s2, s5
	li s0, 0x4c5
	mulhu t1, a1, s0
	li s11, 0x518
	mulhu a3, t1, s11
	li a0, 0xda
	mulhu t4, a3, a0
	li s8, 0x2ae
	mulhu s3, t4, s8
	li s6, 0x65f
	mulhu a5, s3, s6
	li s8, 0
	mulhu s6, a5, s8
	li a2, 0x555
	mulhu s2, s6, a2
	li s3, 0x242
	mulhu a6, s2, s3
	li s4, 0x49
	mulhu s10, a6, s4
	li s2, 0x2d9
	mulhu s10, s10, s2
	li s8, 0x4ad
	mulhu t1, s10, s8
	li s7, 0
	mulhu s11, t1, s7
	li a3, 0x8
	mulhu s4, s11, a3
	li s9, 0x141
	mulhu a2, s4, s9
	li s3, 0x1c6
	mulhu s4, a2, s3
	li t1, 0x722
	mulhu s5, s4, t1
	li a2, 0x7f8
	mulhu s0, s5, a2
	li s6, 0
	mulhu s9, s0, s6
	li a6, 0x2df
	mulhu s0, s9, a6
	li s10, 0x10f
	mulhu a7, s0, s10
	li s0, 0x704
	mulhu t6, a7, s0
	li t2, 0x22a
	mulhu t4, t6, t2
	li s3, 0xca
	mulhu s7, t4, s3
	li a6, 0
	mulhu s6, s7, a6
	li s11, 0x3e0
	mulhu t1, s6, s11
	li a5, 0x352
	mulhu a0, t1, a5
	li s3, 0x626
	mulhu s6, a0, s3
	li a3, 0x391
	mulhu s9, s6, a3
	li t4, 0x75c
	mulhu s3, s9, t4
	li s0, 0
	mulhu a3, s3, s0
	li a6, 0x74b
	mulhu s3, a3, a6
	li t4, 0x6a
	mulhu a1, s3, t4
	li s0, 0x5ba
	mulhu t5, a1, s0
	li s6, 0x1e3
	mulhu s5, t5, s6
	li s10, 0x5f7
	mulhu t6, s5, s10
	li a2, 0
	mulhu s8, t6, a2
	li s4, 0x306
	mulhu a1, s8, s4
	li s10, 0x7b9
	mulhu s2, a1, s10
	li s4, 0xee
	mulhu s10, s2, s4
	li t1, 0xfd
	mulhu a3, s10, t1
	li s4, 0x648
	mulhu s2, a3, s4
	li s9, 0
	mulhu t1, s2, s9
	li s0, 0x4b
	mulhu a7, t1, s0
	li a0, 0x400
	mulhu s0, a7, a0
	li a2, 0x5b7
	mulhu a0, s0, a2
	csrr t5, time
	csrr a0, cycle
	csrr t1, instret
	sub t2, t5, a4
	sub t6, a0, t3
	sub s11, t1, s1
	li a7, 0
	csrr a4, time
	csrr a0, cycle
	csrr s8, instret
	li t1, 0
	mulhu a6, a7, t1
	li a5, 0x66b
	mulhu s0, a6, a5
	li s5, 0x735
	mulhu t4, s0, s5
	li a3, 0x7e8
	mulhu s11, t4, a3
	li t4, 0x293
	mulhu s10, s11, t4
	li t1, 0x37f
	mulhu s6, s10, t1
	li s3, 0
	mulhu s7, s6, s3
	li s1, 0x635
	mulhu t6, s7, s1
	li t2, 0x6fd
	mulhu a2, t6, t2
	li s10, 0x65b
	mulhu a7, a2, s10
	li t2, 0x35b
	mulhu s2, a7, t2
	li a2, 0xd3
	mulhu s11, s2, a2
	li s2, 0
	mulhu t6, s11, s2
	li s6, 0x1e0
	mulhu a6, t6, s6
	li s5, 0x511
	mulhu t2, a6, s5
	li t5, 0x26f
	mulhu s11, t2, t5
	li t5, 0x427
	mulhu s10, s11, t5
	li a6, 0x6de
	mulhu s1, s10, a6
	li s6, 0
	mulhu s3, s1, s6
	li a5, 0x1b6
	mulhu s6, s3, a5
	li a3, 0x154
	mulhu t2, s6, a3
	li a3, 0x4d9
	mulhu s10, t2, a3
	li s3, 0x56c
	mulhu t1, s10, s3
	li s6, 0x744
	mulhu s7, t1, s6
	li a6, 0
	mulhu s4, s7, a6
	li a6, 0x2b2
	mulhu s5, s4, a6
	li a7, 0x5aa
	mulhu s3, s5, a7
	li s6, 0x14e
	mulhu a7, s3, s6
	li t3, 0x5cb
	mulhu s11, a7, t3
	li s10, 0x5e0
	mulhu s1, s11, s10
	li s5, 0
	mulhu t5, s1, s5
	li t4, 0x538
	mulhu s4, t5, t4
	li t5, 0x548
	mulhu t6, s4, t5
	li a7, 0x652
	mulhu t2, t6, a7
	li s6, 0x5e0
	mulhu a1, t2, s6
	li a7, 0x516
	mulhu t6, a1, a7
	li a1, 0
	mulhu t1, t6, a1
	li s10, 0x36f
	mulhu a5, t1, s10
	li s6, 0x40e
	mulhu a2, a5, s6
	li a6, 0x73c
	mulhu t3, a2, a6
	li s7, 0x7e0
	mulhu t4, t3, s7
	li s6, 0x6ad
	mulhu s11, t4, s6
	li a7, 0
	mulhu s5, s11, a7
	li s3, 0x6a0
	mulhu s2, s5, s3
	li s1, 0x5d2
	mulhu s9, s2, s1
	li a1, 0x471
	mulhu s1, s9, a1
	li s6, 0x71c
	mulhu t5, s1, s6
	li s6, 0x71d
	mulhu a2, t5, s6
	li t6, 0
	mulhu a1, a2, t6
	li a6, 0x5ae
	mulhu s3, a1, a6
	li t2, 0x1bb
	mulhu s7, s3, t2
	li a3, 0x1a4
	mulhu t4, s7, a3
	li s4, 0x90
	mulhu s6, t4, s4
	li t2, 0x2e
	mulhu t1, s6, t2
	li t6, 0
	mulhu s0, t1, t6
	li a5, 0x111
	mulhu s7, s0, a5
	li a3, 0x5d9
	mulhu t5, s7, a3
	li s11, 0x34e
	mulhu s10, t5, s11
	li a3, 0x70c
	mulhu s11, s10, a3
	li t3, 0x2d2
	mulhu a3, s11, t3
	li t6, 0
	mulhu t3, a3, t6
	li a7, 0x183
	mulhu a6, t3, a7
	li t1, 0x1d7
	mulhu t5, a6, t1
	li s4, 0x27c
	mulhu s4, t5, s4
	li t2, 0x2fd
	mulhu a2, s4, t2
	li t4, 0x3b9
	mulhu s6, a2, t4
	li s11, 0
	mulhu t4, s6, s11
	li s5, 0x22b
	mulhu s9, t4, s5
	li t5, 0x6df
	mulhu t4, s9, t5
	li s4, 0x682
	mulhu t3, t4, s4
	li t6, 0x37e
	mulhu s5, t3, t6
	li t2, 0x223
	mulhu s10, s5, t2
	li t1, 0
	mulhu t4, s10, t1
	li s3, 0x795
	mulhu s2, t4, s3
	li t3, 0x1b1
	mulhu s5, s2, t3
	li s1, 0x59e
	mulhu s0, s5, s1
	li s3, 0x368
	mulhu s2, s0, s3
	li s9, 0x23c
	mulhu s3, s2, s9
	li a5, 0
	mulhu a7, s3, a5
	li t3, 0x410
	mulhu s1, a7, t3
	li s4, 0x109
	mulhu a5, s1, s4
	li s6, 0x251
	mulhu s2, a5, s6
	li t1, 0x37b
	mulhu s10, s2, t1
	li a3, 0x3ce
	mulhu s9, s10, a3
	li s3, 0
	mulhu a2, s9, s3
	li t4, 0x6e5
	mulhu t4, a2, t4
	li s10, 0x10a
	mulhu s10, t4, s10
	li a3, 0x1f4
	mulhu t6, s10, a3
	li a5, 0x297
	mulhu a5, t6, a5
	li t1, 0x267
	mulhu s10, a5, t1
	li s0, 0
	mulhu s7, s10, s0
	li s10, 0x748
	mulhu a5, s7, s10
	li t3, 0x306
	mulhu a6, a5, t3
	li s9, 0x7de
	mulhu s6, a6, s9
	li a6, 0x1c9
	mulhu s4, s6, a6
	li s11, 0x154
	mulhu t2, s4, s11
	li t1, 0
	mulhu s10, t2, t1
	li t2, 0x7bc
	mulhu s7, s10, t2
	li t2, 0x2aa
	mulhu s6, s7, t2
	li s0, 0x46c
	mulhu s3, s6, s0
	csrr s11, time
	csrr s7, cycle
	csrr s3, instret
	sub a6, s11, a4
	sub a3, s7, a0
	sub s3, s3, s8
	li s11, 0
	csrr s7, time
	csrr s4, cycle
	csrr s6, instret
	li s10, 0
	mulhu s8, s11, s10
	li t6, 0x672
	mulhu a6, s8, t6
	li s2, 0x88
	mulhu s0, a6, s2
	li s5, 0x537
	mulhu a0, s0, s5
	li t3, 0x27f
	mulhu s0, a0, t3
	li t5, 0x1a4
	mulhu t1, s0, t5
	li a7, 0
	mulhu t4, t1, a7
	li t2, 0x31f
	mulhu t3, t4, t2
	li a5, 0x575
	mulhu a4, t3, a5
	li a2, 0x679
	mulhu t1, a4, a2
	li s0, 0x4c7
	mulhu s1, t1, s0
	li a7, 0x10b
	mulhu s0, s1, a7
	li t4, 0
	mulhu s9, s0, t4
	li t4, 0x175
	mulhu a5, s9, t4
	li a2, 0xce
	mulhu t2, a5, a2
	li s9, 0x68
	mulhu s5, t2, s9
	li t6, 0x754
	mulhu s11, s5, t6
	li a7, 0x3d5
	mulhu a4, s11, a7
	li a5, 0
	mulhu a6, a4, a5
	li s2, 0x74d
	mulhu t3, a6, s2
	li a4, 0x67
	mulhu a2, t3, a4
	li a1, 0x1b1
	mulhu a4, a2, a1
	li s9, 0x6f2
	mulhu a7, a4, s9
	li a2, 0x152
	mulhu s5, a7, a2
	li a6, 0
	mulhu t5, s5, a6
	li a6, 0x4aa
	mulhu t2, t5, a6
	li s0, 0x295
	mulhu a1, t2, s0
	li t4, 0x78
	mulhu s11, a1, t4
	li s2, 0x210
	mulhu s11, s11, s2
	li s1, 0xb3
	mulhu a6, s11, s1
	li a7, 0
	mulhu t5, a6, a7
	li s5, 0x42c
	mulhu s10, t5, s5
	li s9, 0x10d
	mulhu t3, s10, s9
	li t4, 0x2a1
	mulhu t4, t3, t4
	li t6, 0x49f
	mulhu t2, t4, t6
	li s0, 0x477
	mulhu t2, t2, s0
	li t6, 0
	mulhu t3, t2, t6
	li a6, 0x1f1
	mulhu s9, t3, a6
	li a1, 0x340
	mulhu a5, s9, a1
	li t6, 0x611
	mulhu s2, a5, t6
	li t4, 0x79c
	mulhu a2, s2, t4
	li s11, 0xd1
	mulhu s8, a2, s11
	li s1, 0
	mulhu s8, s8, s1
	li a2, 0x16f
	mulhu t3, s8, a2
	li a5, 0x71c
	mulhu s5, t3, a5
	li t3, 0xfb
	mulhu a5, s5, t3
	li a0, 0x322
	mulhu t6, a5, a0
	li a5, 0x1c7
	mulhu a5, t6, a5
	li a6, 0
	mulhu a6, a5, a6
	li s11, 0x515
	mulhu a0, a6, s11
	li a7, 0x27
	mulhu a0, a0, a7
	li t5, 0x217
	mulhu s11, a0, t5
	li s1, 0x69f
	mulhu s11, s11, s1
	li a1, 0x558
	mulhu a6, s11, a1
	li a2, 0
	mulhu s2, a6, a2
	li a4, 0x590
	mulhu t1, s2, a4
	li s2, 0x4c2
	mulhu s9, t1, s2
	li s8, 0x57e
	mulhu t6, s9, s8
	li a4, 0x2b9
	mulhu a7, t6, a4
	li a0, 0x427
	mulhu s8, a7, a0
	li s1, 0
	mulhu t5, s8, s1
	li s10, 0x7de
	mulhu t3, t5, s10
	li t6, 0x620
	mulhu a4, t3, t6
	li s9, 0x158
	mulhu a7, a4, s9
	li s9, 0x170
	mulhu a6, a7, s9
	li s1, 0x2cf
	mulhu s11, a6, s1
	li a6, 0
	mulhu s9, s11, a6
	li s10, 0x4dd
	mulhu t3, s9, s10
	li a5, 0x586
	mulhu t2, t3, a5
	li s1, 0x13e
	mulhu t1, t2, s1
	li t5, 0xfc
	mulhu t2, t1, t5
	li a1, 0x172
	mulhu s10, t2, a1
	li t1, 0
	mulhu s0, s10, t1
	li a4, 0x68f
	mulhu t4, s0, a4
	li a7, 0x64f
	mulhu s2, t4, a7
	li a2, 0x1d
	mulhu t6, s2, a2
	li s8, 0x430
	mulhu a6, t6, s8
	li t1, 0x4de
	mulhu a4, a6, t1
	li a7, 0
	mulhu a2, a4, a7
	li t6, 0x89
	mulhu a6, a2, t6
	li s8, 0x21d
	mulhu a6, a6, s8
	li s8, 0x572
	mulhu s2, a6, s8
	li s9, 0x311
	mulhu s8, s2, s9
	li s0, 0x173
	mulhu s8, s8, s0
	li s2, 0
	mulhu t3, s8, s2
	li t6, 0x790
	mulhu a5, t3, t6
	li t5, 0x428
	mulhu s8, a5, t5
	li t2, 0x261
	mulhu t1, s8, t2
	li a5, 0x5eb
	mulhu s5, t1, a5
	li a2, 0x7f
	mulhu s5, s5, a2
	li t3, 0
	mulhu t2, s5, t3
	li a6, 0x764
	mulhu s10, t2, a6
	li t5, 0x554
	mulhu a5, s10, t5
	li t6, 0x5eb
	mulhu a6, a5, t6
	li t3, 0x145
	mulhu t1, a6, t3
	li t4, 0x588
	mulhu s10, t1, t4
	li a0, 0
	mulhu t5, s10, a0
	li t6, 0x651
	mulhu s8, t5, t6
	li t2, 0x29
	mulhu s9, s8, t2
	li s2, 0x561
	mulhu s8, s9, s2
	csrr a4, time
	csrr s10, cycle
	csrr t3, instret
	sub s9, a4, s7
	sub s7, s10, s4
	sub t1, t3, s6
	beq a3, s7, pass_label_64
	li a1, failed_addr
	ld t2, 0(a1)
	jr t2
pass_label_64:
	beq s3, t1, pass_label_65
	li a0, failed_addr
	ld t3, 0(a0)
	jr t3
pass_label_65:
SID_ZKT_07_MULHU_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_07_MULHSU)
SID_ZKT_07_MULHSU:
	li sp, SID_ZKT_07_MULHSU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a6, 0
	csrr s2, time
	csrr s10, cycle
	csrr s3, instret
	li a4, 0
	mulhsu s8, a6, a4
	li s11, 0x200
	mulhsu s0, s8, s11
	li a0, 0x260
	mulhsu a3, s0, a0
	li s9, 0x6d5
	mulhsu s8, a3, s9
	li s9, 0x4a7
	mulhsu s6, s8, s9
	li s7, 0x3d0
	mulhsu s1, s6, s7
	li a0, 0
	mulhsu t1, s1, a0
	li s5, 0x6ae
	mulhsu a7, t1, s5
	li s9, 0x4fa
	mulhsu s4, a7, s9
	li t6, 0x125
	mulhsu t4, s4, t6
	li a4, 0x6a4
	mulhsu a6, t4, a4
	li s9, 0x7d4
	mulhsu t1, a6, s9
	li a0, 0
	mulhsu a3, t1, a0
	li s8, 0xd2
	mulhsu s5, a3, s8
	li a4, 0x731
	mulhsu s11, s5, a4
	li t5, 0x1f2
	mulhsu s0, s11, t5
	li a1, 0x717
	mulhsu t6, s0, a1
	li t2, 0x680
	mulhsu a2, t6, t2
	li s9, 0
	mulhsu t6, a2, s9
	li a6, 0x7b8
	mulhsu s5, t6, a6
	li s11, 0x5ca
	mulhsu a2, s5, s11
	li s7, 0x520
	mulhsu t4, a2, s7
	li a3, 0x262
	mulhsu a7, t4, a3
	li a5, 0x5ec
	mulhsu t1, a7, a5
	li a6, 0
	mulhsu s5, t1, a6
	li s8, 0x205
	mulhsu t1, s5, s8
	li s6, 0x5bc
	mulhsu s8, t1, s6
	li s7, 0x500
	mulhsu a1, s8, s7
	li s11, 0x287
	mulhsu s11, a1, s11
	li t6, 0x132
	mulhsu t6, s11, t6
	li a2, 0
	mulhsu t5, t6, a2
	li s11, 0x68c
	mulhsu a2, t5, s11
	li t2, 0xe2
	mulhsu t5, a2, t2
	li a0, 0x10d
	mulhsu s7, t5, a0
	li t6, 0x4b6
	mulhsu a0, s7, t6
	li t3, 0x491
	mulhsu a0, a0, t3
	li a3, 0
	mulhsu s4, a0, a3
	li s9, 0x6c0
	mulhsu a0, s4, s9
	li s8, 0x195
	mulhsu a3, a0, s8
	li t5, 0x759
	mulhsu a2, a3, t5
	li t4, 0x14a
	mulhsu s1, a2, t4
	li s7, 0x7fc
	mulhsu s6, s1, s7
	li a7, 0
	mulhsu s4, s6, a7
	li t2, 0x5bc
	mulhsu a5, s4, t2
	li t4, 0x678
	mulhsu s4, a5, t4
	li s7, 0x25c
	mulhsu s11, s4, s7
	li s4, 0xdc
	mulhsu t5, s11, s4
	li a2, 0x374
	mulhsu s9, t5, a2
	li a3, 0
	mulhsu a5, s9, a3
	li a0, 0x4a6
	mulhsu s4, a5, a0
	li t4, 0x6ab
	mulhsu s0, s4, t4
	li a1, 0x145
	mulhsu t4, s0, a1
	li a2, 0x550
	mulhsu t4, t4, a2
	li s6, 0x4b
	mulhsu s6, t4, s6
	li s1, 0
	mulhsu a5, s6, s1
	li a1, 0x37c
	mulhsu s9, a5, a1
	li a1, 0x59f
	mulhsu s8, s9, a1
	li s9, 0x3ff
	mulhsu t6, s8, s9
	li a3, 0x3a2
	mulhsu s8, t6, a3
	li s7, 0x64f
	mulhsu t6, s8, s7
	li a3, 0
	mulhsu s6, t6, a3
	li s11, 0x223
	mulhsu a5, s6, s11
	li a6, 0x7c6
	mulhsu a1, a5, a6
	li s0, 0x2b
	mulhsu t4, a1, s0
	li a1, 0x663
	mulhsu s11, t4, a1
	li s6, 0x3ab
	mulhsu a3, s11, s6
	li t1, 0
	mulhsu t5, a3, t1
	li t6, 0x57e
	mulhsu s8, t5, t6
	li a6, 0x172
	mulhsu t6, s8, a6
	li s11, 0x423
	mulhsu t6, t6, s11
	li a4, 0x676
	mulhsu t1, t6, a4
	li s6, 0x516
	mulhsu s7, t1, s6
	li t1, 0
	mulhsu s7, s7, t1
	li t3, 0x1ea
	mulhsu t6, s7, t3
	li a2, 0x64e
	mulhsu s0, t6, a2
	li t4, 0x6e6
	mulhsu a5, s0, t4
	li t5, 0x37e
	mulhsu s4, a5, t5
	li a6, 0x4e1
	mulhsu t4, s4, a6
	li s4, 0
	mulhsu s8, t4, s4
	li a2, 0x7dd
	mulhsu a6, s8, a2
	li t4, 0x63d
	mulhsu s0, a6, t4
	li a4, 0x424
	mulhsu s9, s0, a4
	li t4, 0x46c
	mulhsu t3, s9, t4
	li s6, 0x3d4
	mulhsu s8, t3, s6
	li a2, 0
	mulhsu s9, s8, a2
	li s1, 0x735
	mulhsu s0, s9, s1
	li t4, 0x31c
	mulhsu t2, s0, t4
	li s11, 0x280
	mulhsu t3, t2, s11
	li s0, 0x36e
	mulhsu t5, t3, s0
	li t6, 0x56f
	mulhsu s6, t5, t6
	li t3, 0
	mulhsu t3, s6, t3
	li a4, 0x556
	mulhsu s1, t3, a4
	li a6, 0x643
	mulhsu t6, s1, a6
	li a3, 0x283
	mulhsu t3, t6, a3
	li s6, 0x4fa
	mulhsu a7, t3, s6
	li s7, 0x3cb
	mulhsu s8, a7, s7
	li a7, 0
	mulhsu s4, s8, a7
	li t2, 0x7fd
	mulhsu s6, s4, t2
	li t6, 0x444
	mulhsu s4, s6, t6
	li a4, 0x68e
	mulhsu a0, s4, a4
	csrr t5, time
	csrr a7, cycle
	csrr a1, instret
	sub a2, t5, s2
	sub a6, a7, s10
	sub t4, a1, s3
	li a2, 0
	csrr s2, time
	csrr s11, cycle
	csrr a5, instret
	li a6, 0
	mulhsu a1, a2, a6
	li a3, 0x39b
	mulhsu a7, a1, a3
	li s7, 0x31
	mulhsu a4, a7, s7
	li a3, 0x576
	mulhsu s7, a4, a3
	li s0, 0x279
	mulhsu s0, s7, s0
	li s1, 0x718
	mulhsu a6, s0, s1
	li s7, 0
	mulhsu s3, a6, s7
	li a4, 0x68d
	mulhsu s9, s3, a4
	li a2, 0xde
	mulhsu t3, s9, a2
	li a4, 0x68b
	mulhsu t6, t3, a4
	li t4, 0x7e5
	mulhsu a6, t6, t4
	li a7, 0x615
	mulhsu s10, a6, a7
	li t6, 0
	mulhsu t3, s10, t6
	li s0, 0x302
	mulhsu t3, t3, s0
	li s9, 0x2ae
	mulhsu t1, t3, s9
	li s5, 0xda
	mulhsu s5, t1, s5
	li s6, 0x38f
	mulhsu a6, s5, s6
	li a1, 0x58a
	mulhsu s0, a6, a1
	li s8, 0
	mulhsu s4, s0, s8
	li a4, 0x3f
	mulhsu a7, s4, a4
	li s7, 0x5d1
	mulhsu t1, a7, s7
	li s5, 0x25a
	mulhsu s0, t1, s5
	li a4, 0x5d3
	mulhsu a2, s0, a4
	li a3, 0x3b4
	mulhsu s5, a2, a3
	li s8, 0
	mulhsu a2, s5, s8
	li t3, 0x279
	mulhsu a4, a2, t3
	li s10, 0x693
	mulhsu s6, a4, s10
	li s0, 0x41e
	mulhsu s6, s6, s0
	li a1, 0x73a
	mulhsu t6, s6, a1
	li a2, 0x119
	mulhsu t3, t6, a2
	li a2, 0
	mulhsu a6, t3, a2
	li s7, 0x37f
	mulhsu s6, a6, s7
	li s0, 0x537
	mulhsu s4, s6, s0
	li s5, 0x5be
	mulhsu s6, s4, s5
	li t4, 0x5b5
	mulhsu s5, s6, t4
	li s4, 0x411
	mulhsu a2, s5, s4
	li s8, 0
	mulhsu s8, a2, s8
	li a6, 0x63c
	mulhsu a7, s8, a6
	li a1, 0x676
	mulhsu s6, a7, a1
	li a4, 0x374
	mulhsu a4, s6, a4
	li t1, 0x558
	mulhsu s10, a4, t1
	li a4, 0x4a8
	mulhsu a7, s10, a4
	li t6, 0
	mulhsu a7, a7, t6
	li s4, 0x2be
	mulhsu s7, a7, s4
	li a6, 0x499
	mulhsu t5, s7, a6
	li s4, 0x53c
	mulhsu s4, t5, s4
	li t2, 0x3a8
	mulhsu s9, s4, t2
	li s7, 0x5
	mulhsu a1, s9, s7
	li t4, 0
	mulhsu s3, a1, t4
	li s5, 0x54f
	mulhsu s10, s3, s5
	li t2, 0x7bd
	mulhsu t6, s10, t2
	li s7, 0x2e3
	mulhsu a3, t6, s7
	li t5, 0x7e3
	mulhsu a3, a3, t5
	li s5, 0x634
	mulhsu t6, a3, s5
	li a1, 0
	mulhsu s4, t6, a1
	li s1, 0x456
	mulhsu a1, s4, s1
	li s9, 0x755
	mulhsu s7, a1, s9
	li a2, 0x605
	mulhsu s0, s7, a2
	li a7, 0x215
	mulhsu a3, s0, a7
	li t2, 0x26d
	mulhsu s4, a3, t2
	li a2, 0
	mulhsu s7, s4, a2
	li t6, 0x174
	mulhsu t4, s7, t6
	li t6, 0x358
	mulhsu a1, t4, t6
	li s8, 0x4c6
	mulhsu a1, a1, s8
	li s9, 0x409
	mulhsu s8, a1, s9
	li a6, 0x539
	mulhsu s1, s8, a6
	li s8, 0
	mulhsu a6, s1, s8
	li s8, 0x51
	mulhsu s10, a6, s8
	li s3, 0x738
	mulhsu a4, s10, s3
	li s3, 0x723
	mulhsu t5, a4, s3
	li a0, 0x24b
	mulhsu a7, t5, a0
	li s1, 0x488
	mulhsu s6, a7, s1
	li a6, 0
	mulhsu t6, s6, a6
	li s6, 0x64f
	mulhsu a7, t6, s6
	li t5, 0x2f4
	mulhsu a0, a7, t5
	li t6, 0x357
	mulhsu a6, a0, t6
	li s10, 0x1fe
	mulhsu s7, a6, s10
	li a2, 0x591
	mulhsu t6, s7, a2
	li a1, 0
	mulhsu a4, t6, a1
	li s4, 0x7e3
	mulhsu a2, a4, s4
	li a7, 0x6ec
	mulhsu s9, a2, a7
	li s6, 0x29f
	mulhsu a2, s9, s6
	li s8, 0x1a4
	mulhsu a0, a2, s8
	li s5, 0x3eb
	mulhsu t1, a0, s5
	li s10, 0
	mulhsu s6, t1, s10
	li s1, 0xbf
	mulhsu a2, s6, s1
	li s0, 0x2b
	mulhsu a4, a2, s0
	li s4, 0x4a7
	mulhsu s3, a4, s4
	li s6, 0x80
	mulhsu t1, s3, s6
	li t4, 0x231
	mulhsu t4, t1, t4
	li a7, 0
	mulhsu t4, t4, a7
	li a0, 0x65d
	mulhsu s8, t4, a0
	li a3, 0x2e2
	mulhsu t2, s8, a3
	li a6, 0x191
	mulhsu a1, t2, a6
	li s10, 0x42a
	mulhsu a3, a1, s10
	li a2, 0xb8
	mulhsu s10, a3, a2
	li t5, 0
	mulhsu a7, s10, t5
	li t6, 0x2e0
	mulhsu s5, a7, t6
	li a1, 0x720
	mulhsu a4, s5, a1
	li s9, 0x76a
	mulhsu s10, a4, s9
	csrr s8, time
	csrr s4, cycle
	csrr t1, instret
	sub a1, s8, s2
	sub s1, s4, s11
	sub a5, t1, a5
	li s6, 0
	csrr t4, time
	csrr s4, cycle
	csrr t3, instret
	li a0, 0
	mulhsu s9, s6, a0
	li s2, 0x6a
	mulhsu a4, s9, s2
	li t1, 0x2e6
	mulhsu s10, a4, t1
	li a7, 0x756
	mulhsu s7, s10, a7
	li s9, 0x756
	mulhsu a7, s7, s9
	li t1, 0x6f5
	mulhsu t2, a7, t1
	li t6, 0
	mulhsu t6, t2, t6
	li a4, 0x7c1
	mulhsu s7, t6, a4
	li t6, 0x37b
	mulhsu t2, s7, t6
	li s6, 0x2e2
	mulhsu s6, t2, s6
	li s8, 0x603
	mulhsu a7, s6, s8
	li t1, 0x7e2
	mulhsu a1, a7, t1
	li s2, 0
	mulhsu a0, a1, s2
	li t1, 0x334
	mulhsu t2, a0, t1
	li s8, 0x309
	mulhsu s2, t2, s8
	li s0, 0x726
	mulhsu a2, s2, s0
	li a3, 0x118
	mulhsu s9, a2, a3
	li a2, 0x740
	mulhsu s0, s9, a2
	li a7, 0
	mulhsu a0, s0, a7
	li t6, 0xb2
	mulhsu s10, a0, t6
	li t6, 0x2f7
	mulhsu s8, s10, t6
	li s6, 0x71
	mulhsu a2, s8, s6
	li s0, 0x3d5
	mulhsu a2, a2, s0
	li t1, 0x578
	mulhsu s7, a2, t1
	li s0, 0
	mulhsu a4, s7, s0
	li a3, 0x585
	mulhsu t2, a4, a3
	li s8, 0x76b
	mulhsu a1, t2, s8
	li t6, 0x677
	mulhsu s9, a1, t6
	li s10, 0xfe
	mulhsu a7, s9, s10
	li a0, 0x7f4
	mulhsu a1, a7, a0
	li s10, 0
	mulhsu s7, a1, s10
	li s2, 0x531
	mulhsu a2, s7, s2
	li s8, 0x3d1
	mulhsu a2, a2, s8
	li s3, 0x368
	mulhsu s6, a2, s3
	li a4, 0x17a
	mulhsu s10, s6, a4
	li s2, 0x468
	mulhsu t6, s10, s2
	li t1, 0
	mulhsu s7, t6, t1
	li a7, 0x604
	mulhsu s8, s7, a7
	li t5, 0x703
	mulhsu a3, s8, t5
	li t1, 0xd9
	mulhsu t2, a3, t1
	li s5, 0x6fc
	mulhsu s9, t2, s5
	li s8, 0x7a0
	mulhsu a0, s9, s8
	li s7, 0
	mulhsu s10, a0, s7
	li a7, 0x627
	mulhsu s8, s10, a7
	li t1, 0x10
	mulhsu s6, s8, t1
	li s5, 0xf
	mulhsu a0, s6, s5
	li s11, 0x2f9
	mulhsu a4, a0, s11
	li t6, 0x5d8
	mulhsu t2, a4, t6
	li t6, 0
	mulhsu t2, t2, t6
	li s6, 0x1e2
	mulhsu a2, t2, s6
	li t1, 0x282
	mulhsu s3, a2, t1
	li s11, 0x4f7
	mulhsu s9, s3, s11
	li s3, 0x360
	mulhsu s6, s9, s3
	li s3, 0x684
	mulhsu a7, s6, s3
	li a4, 0
	mulhsu s11, a7, a4
	li a2, 0x489
	mulhsu a3, s11, a2
	li a2, 0x62a
	mulhsu s8, a3, a2
	li a6, 0x55d
	mulhsu s8, s8, a6
	li a7, 0x594
	mulhsu a6, s8, a7
	li t1, 0x5a2
	mulhsu s6, a6, t1
	li t6, 0
	mulhsu s6, s6, t6
	li s5, 0x111
	mulhsu s11, s6, s5
	li a7, 0x217
	mulhsu t1, s11, a7
	li s10, 0x322
	mulhsu a2, t1, s10
	li a4, 0x43a
	mulhsu a6, a2, a4
	li t1, 0x48f
	mulhsu s10, a6, t1
	li t6, 0
	mulhsu s6, s10, t6
	li s10, 0x75e
	mulhsu a7, s6, s10
	li s11, 0x255
	mulhsu s10, a7, s11
	li t6, 0x469
	mulhsu t2, s10, t6
	li s7, 0x373
	mulhsu s2, t2, s7
	li a0, 0x4b6
	mulhsu t2, s2, a0
	li a1, 0
	mulhsu a0, t2, a1
	li t2, 0x2b0
	mulhsu a2, a0, t2
	li t6, 0xd9
	mulhsu t1, a2, t6
	li a1, 0x310
	mulhsu t1, t1, a1
	li t2, 0x561
	mulhsu t1, t1, t2
	li s7, 0x2fb
	mulhsu s11, t1, s7
	li t6, 0
	mulhsu s10, s11, t6
	li t5, 0x10e
	mulhsu t6, s10, t5
	li a2, 0x7cd
	mulhsu s0, t6, a2
	li t6, 0x26a
	mulhsu s10, s0, t6
	li a0, 0x4c6
	mulhsu a1, s10, a0
	li a2, 0x14a
	mulhsu a6, a1, a2
	li a2, 0
	mulhsu a2, a6, a2
	li s10, 0x364
	mulhsu t5, a2, s10
	li a1, 0x2b4
	mulhsu s8, t5, a1
	li s6, 0x3a1
	mulhsu s0, s8, s6
	li a2, 0xd6
	mulhsu a4, s0, a2
	li a6, 0x3df
	mulhsu a7, a4, a6
	li s10, 0
	mulhsu a2, a7, s10
	li s5, 0x7c5
	mulhsu s6, a2, s5
	li t1, 0x680
	mulhsu a6, s6, t1
	li a0, 0xf2
	mulhsu s2, a6, a0
	li a0, 0x737
	mulhsu s9, s2, a0
	li t1, 0x380
	mulhsu s0, s9, t1
	li a3, 0
	mulhsu a6, s0, a3
	li t2, 0x7fc
	mulhsu a6, a6, t2
	li a1, 0x2c4
	mulhsu t5, a6, a1
	li s10, 0x3ed
	mulhsu s2, t5, s10
	csrr a6, time
	csrr s8, cycle
	csrr s5, instret
	sub t5, a6, t4
	sub s9, s8, s4
	sub a3, s5, t3
	beq s1, s9, pass_label_66
	li t5, failed_addr
	ld s7, 0(t5)
	jr s7
pass_label_66:
	beq a5, a3, pass_label_67
	li t4, failed_addr
	ld s11, 0(t4)
	jr s11
pass_label_67:
SID_ZKT_07_MULHSU_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_07_MULW)
SID_ZKT_07_MULW:
	li sp, SID_ZKT_07_MULW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s8, 0
	csrr t3, time
	csrr s6, cycle
	csrr s10, instret
	li s9, 0
	mulw s9, s8, s9
	li t5, 0x2d7
	mulw t1, s9, t5
	li t4, 0x389
	mulw a1, t1, t4
	li t2, 0x7a6
	mulw a0, a1, t2
	li t5, 0x7f8
	mulw t2, a0, t5
	li a4, 0x32
	mulw a4, t2, a4
	li a5, 0
	mulw t4, a4, a5
	li t5, 0x159
	mulw a4, t4, t5
	li t6, 0xae
	mulw t5, a4, t6
	li s0, 0x674
	mulw a7, t5, s0
	li t5, 0x63b
	mulw a7, a7, t5
	li t1, 0x4d9
	mulw s3, a7, t1
	li s8, 0
	mulw a3, s3, s8
	li s7, 0x482
	mulw s8, a3, s7
	li t6, 0x43a
	mulw a0, s8, t6
	li a2, 0x283
	mulw s5, a0, a2
	li s4, 0x6c9
	mulw s2, s5, s4
	li a0, 0x150
	mulw s3, s2, a0
	li s0, 0
	mulw s9, s3, s0
	li a3, 0x4a9
	mulw a3, s9, a3
	li a1, 0x5a7
	mulw a3, a3, a1
	li a4, 0x4e5
	mulw a6, a3, a4
	li s2, 0x383
	mulw s4, a6, s2
	li s3, 0x6be
	mulw t6, s4, s3
	li a6, 0
	mulw a3, t6, a6
	li s5, 0x271
	mulw s0, a3, s5
	li t6, 0x782
	mulw a1, s0, t6
	li t1, 0x327
	mulw s1, a1, t1
	li a0, 0x1de
	mulw t6, s1, a0
	li s1, 0x7c0
	mulw a6, t6, s1
	li a2, 0
	mulw a5, a6, a2
	li t5, 0x756
	mulw s9, a5, t5
	li a0, 0x281
	mulw t2, s9, a0
	li s8, 0x7ce
	mulw s0, t2, s8
	li s1, 0x14e
	mulw a2, s0, s1
	li s7, 0x427
	mulw s7, a2, s7
	li s4, 0
	mulw s9, s7, s4
	li a6, 0x459
	mulw s9, s9, a6
	li t6, 0x5b7
	mulw s9, s9, t6
	li t5, 0x7d2
	mulw s11, s9, t5
	li a1, 0x2d9
	mulw s1, s11, a1
	li t6, 0x303
	mulw t5, s1, t6
	li t6, 0
	mulw t2, t5, t6
	li t5, 0x606
	mulw a2, t2, t5
	li a5, 0x30d
	mulw a0, a2, a5
	li t6, 0x40
	mulw s11, a0, t6
	li a1, 0x6f6
	mulw s7, s11, a1
	li s5, 0x4df
	mulw a6, s7, s5
	li s0, 0
	mulw a5, a6, s0
	li s2, 0x6f4
	mulw a0, a5, s2
	li s5, 0x6a0
	mulw a7, a0, s5
	li a2, 0xe7
	mulw s5, a7, a2
	li a3, 0x650
	mulw a3, s5, a3
	li a4, 0x751
	mulw s4, a3, a4
	li a7, 0
	mulw a6, s4, a7
	li a0, 0x24b
	mulw s2, a6, a0
	li t6, 0x331
	mulw t4, s2, t6
	li s9, 0x400
	mulw s7, t4, s9
	li s3, 0x651
	mulw s0, s7, s3
	li s7, 0x12f
	mulw a4, s0, s7
	li s2, 0
	mulw s9, a4, s2
	li s0, 0x674
	mulw t5, s9, s0
	li a7, 0x57d
	mulw a5, t5, a7
	li t6, 0x101
	mulw a1, a5, t6
	li t2, 0x5d6
	mulw s2, a1, t2
	li t1, 0x401
	mulw a0, s2, t1
	li a4, 0
	mulw a7, a0, a4
	li t5, 0x1d9
	mulw t4, a7, t5
	li t6, 0x335
	mulw s5, t4, t6
	li t6, 0x239
	mulw a7, s5, t6
	li s0, 0xcd
	mulw a2, a7, s0
	li a0, 0x1e0
	mulw t2, a2, a0
	li s5, 0
	mulw s1, t2, s5
	li s4, 0x516
	mulw s11, s1, s4
	li t5, 0x30c
	mulw a2, s11, t5
	li a3, 0x75
	mulw a7, a2, a3
	li s0, 0x401
	mulw s0, a7, s0
	li s1, 0x176
	mulw a2, s0, s1
	li a7, 0
	mulw a4, a2, a7
	li s5, 0x74
	mulw a3, a4, s5
	li s2, 0x164
	mulw s3, a3, s2
	li s8, 0x35b
	mulw s3, s3, s8
	li s7, 0x648
	mulw a3, s3, s7
	li s0, 0x3bf
	mulw t2, a3, s0
	li s4, 0
	mulw s7, t2, s4
	li t4, 0x2e4
	mulw s3, s7, t4
	li a7, 0x140
	mulw a3, s3, a7
	li a6, 0x1da
	mulw a2, a3, a6
	li s4, 0x549
	mulw a6, a2, s4
	li a7, 0x132
	mulw t4, a6, a7
	li s0, 0
	mulw t6, t4, s0
	li t4, 0x618
	mulw a0, t6, t4
	li t6, 0x538
	mulw t2, a0, t6
	li t6, 0x2d5
	mulw a1, t2, t6
	li t2, 0x7f5
	mulw s1, a1, t2
	li a6, 0x17c
	mulw s8, s1, a6
	li a1, 0
	mulw a1, s8, a1
	li a3, 0x72d
	mulw t1, a1, a3
	li s3, 0x304
	mulw s9, t1, s3
	li t5, 0x6ad
	mulw a4, s9, t5
	csrr s0, time
	csrr s2, cycle
	csrr s3, instret
	sub t1, s0, t3
	sub t1, s2, s6
	sub s4, s3, s10
	li t3, 0
	csrr s0, time
	csrr a3, cycle
	csrr s11, instret
	li a6, 0
	mulw a0, t3, a6
	li a2, 0x50e
	mulw t3, a0, a2
	li t4, 0x626
	mulw t3, t3, t4
	li t4, 0x92
	mulw t6, t3, t4
	li t2, 0x385
	mulw s6, t6, t2
	li a5, 0x74d
	mulw a0, s6, a5
	li s10, 0
	mulw t1, a0, s10
	li s5, 0x53b
	mulw s10, t1, s5
	li s5, 0x556
	mulw s8, s10, s5
	li t3, 0x4f9
	mulw t2, s8, t3
	li a4, 0x5ae
	mulw a5, t2, a4
	li s1, 0x615
	mulw t1, a5, s1
	li t4, 0
	mulw s8, t1, t4
	li t4, 0x2ce
	mulw t6, s8, t4
	li a5, 0x68
	mulw s2, t6, a5
	li s4, 0x650
	mulw a6, s2, s4
	li t3, 0x7cf
	mulw t1, a6, t3
	li a0, 0x94
	mulw t4, t1, a0
	li s3, 0
	mulw s7, t4, s3
	li s5, 0x35a
	mulw s3, s7, s5
	li t4, 0x2f5
	mulw a5, s3, t4
	li a0, 0x259
	mulw s6, a5, a0
	li s10, 0x3b0
	mulw a0, s6, s10
	li t5, 0x30d
	mulw s4, a0, t5
	li t4, 0
	mulw a4, s4, t4
	li s1, 0x391
	mulw s6, a4, s1
	li t5, 0x5b9
	mulw t4, s6, t5
	li a2, 0x7b3
	mulw t1, t4, a2
	li t4, 0x62b
	mulw s5, t1, t4
	li t3, 0x2e9
	mulw a5, s5, t3
	li s1, 0
	mulw a1, a5, s1
	li s2, 0x4b0
	mulw t5, a1, s2
	li s7, 0x2b
	mulw a0, t5, s7
	li s2, 0x588
	mulw a2, a0, s2
	li t5, 0x11e
	mulw s7, a2, t5
	li s8, 0x7cc
	mulw s8, s7, s8
	li a2, 0
	mulw s7, s8, a2
	li s3, 0x481
	mulw a6, s7, s3
	li s7, 0x535
	mulw a4, a6, s7
	li s4, 0x708
	mulw a4, a4, s4
	li s6, 0x7c4
	mulw t5, a4, s6
	li t3, 0xd2
	mulw s4, t5, t3
	li s5, 0
	mulw a0, s4, s5
	li s8, 0x604
	mulw a6, a0, s8
	li t6, 0x78c
	mulw a0, a6, t6
	li s10, 0x676
	mulw t6, a0, s10
	li a0, 0x1fc
	mulw a0, t6, a0
	li s6, 0x3ac
	mulw a7, a0, s6
	li s8, 0
	mulw s10, a7, s8
	li s7, 0x70b
	mulw s2, s10, s7
	li t4, 0xf0
	mulw s9, s2, t4
	li s5, 0x178
	mulw a5, s9, s5
	li s4, 0x161
	mulw t6, a5, s4
	li a1, 0x7a3
	mulw s7, t6, a1
	li a7, 0
	mulw s8, s7, a7
	li s3, 0x302
	mulw t3, s8, s3
	li s3, 0x564
	mulw a4, t3, s3
	li s9, 0x4e9
	mulw a7, a4, s9
	li s9, 0x3d3
	mulw s1, a7, s9
	li s9, 0x2f1
	mulw a2, s1, s9
	li s3, 0
	mulw s8, a2, s3
	li a4, 0x2c4
	mulw a7, s8, a4
	li a2, 0x6be
	mulw s5, a7, a2
	li a6, 0x6f0
	mulw s5, s5, a6
	li t2, 0x4b0
	mulw t5, s5, t2
	li a2, 0xee
	mulw s4, t5, a2
	li a1, 0
	mulw s9, s4, a1
	li s4, 0x5b9
	mulw s8, s9, s4
	li t1, 0x605
	mulw a2, s8, t1
	li a7, 0x127
	mulw a2, a2, a7
	li a0, 0x5e3
	mulw s8, a2, a0
	li a7, 0x73e
	mulw t2, s8, a7
	li t5, 0
	mulw t5, t2, t5
	li s1, 0x752
	mulw t3, t5, s1
	li a2, 0x440
	mulw s9, t3, a2
	li a2, 0x1b
	mulw t2, s9, a2
	li s10, 0x31f
	mulw s8, t2, s10
	li s7, 0xe0
	mulw s3, s8, s7
	li s4, 0
	mulw t3, s3, s4
	li t6, 0x5db
	mulw s5, t3, t6
	li s9, 0x283
	mulw a7, s5, s9
	li s6, 0x212
	mulw t5, a7, s6
	li a7, 0x141
	mulw s6, t5, a7
	li t2, 0x19c
	mulw s1, s6, t2
	li t5, 0
	mulw s9, s1, t5
	li s10, 0x327
	mulw a2, s9, s10
	li s7, 0x75b
	mulw s9, a2, s7
	li a7, 0x6a8
	mulw s1, s9, a7
	li a6, 0xb9
	mulw a6, s1, a6
	li t6, 0x15d
	mulw a0, a6, t6
	li t6, 0
	mulw s3, a0, t6
	li s5, 0x47b
	mulw s9, s3, s5
	li a2, 0x36e
	mulw a6, s9, a2
	li a4, 0x6d2
	mulw t3, a6, a4
	li a7, 0x7f0
	mulw s4, t3, a7
	li a4, 0x49c
	mulw t5, s4, a4
	li a2, 0
	mulw s8, t5, a2
	li s7, 0x74b
	mulw s5, s8, s7
	li s6, 0x342
	mulw a5, s5, s6
	li a7, 0x1e6
	mulw s2, a5, a7
	csrr a2, time
	csrr s4, cycle
	csrr a4, instret
	sub t5, a2, s0
	sub t2, s4, a3
	sub a7, a4, s11
	li a0, 0
	csrr a2, time
	csrr s4, cycle
	csrr s10, instret
	li a1, 0
	mulw s7, a0, a1
	li s9, 0x6d4
	mulw a4, s7, s9
	li s8, 0x2f7
	mulw t1, a4, s8
	li s11, 0x277
	mulw s11, t1, s11
	li s9, 0x4b7
	mulw s7, s11, s9
	li s2, 0x69a
	mulw s5, s7, s2
	li a4, 0
	mulw t4, s5, a4
	li a1, 0x730
	mulw s11, t4, a1
	li t4, 0x33e
	mulw t1, s11, t4
	li s2, 0x5db
	mulw s8, t1, s2
	li t6, 0x1fc
	mulw s5, s8, t6
	li a5, 0x5e8
	mulw s3, s5, a5
	li t4, 0
	mulw a3, s3, t4
	li a4, 0x5f
	mulw t6, a3, a4
	li s6, 0x48a
	mulw t1, t6, s6
	li t3, 0x225
	mulw t6, t1, t3
	li s9, 0x2c7
	mulw s1, t6, s9
	li a5, 0x138
	mulw s7, s1, a5
	li s8, 0
	mulw s0, s7, s8
	li a0, 0x6ed
	mulw s3, s0, a0
	li a3, 0x205
	mulw s11, s3, a3
	li a4, 0x2f8
	mulw s5, s11, a4
	li a1, 0x606
	mulw s7, s5, a1
	li t6, 0x3a8
	mulw a3, s7, t6
	li s1, 0
	mulw t5, a3, s1
	li s8, 0x578
	mulw s5, t5, s8
	li a1, 0x67b
	mulw a3, s5, a1
	li s5, 0x43e
	mulw s6, a3, s5
	li t3, 0x68e
	mulw t4, s6, t3
	li s3, 0x183
	mulw s3, t4, s3
	li a5, 0
	mulw a3, s3, a5
	li t1, 0x56f
	mulw a5, a3, t1
	li s6, 0x5db
	mulw t3, a5, s6
	li a0, 0x174
	mulw t3, t3, a0
	li a1, 0x137
	mulw a4, t3, a1
	li s0, 0x23a
	mulw s11, a4, s0
	li s2, 0
	mulw a0, s11, s2
	li t1, 0x2b8
	mulw a4, a0, t1
	li t4, 0x1a3
	mulw s5, a4, t4
	li a1, 0xfe
	mulw s0, s5, a1
	li a6, 0x698
	mulw s11, s0, a6
	li t4, 0x2d8
	mulw s5, s11, t4
	li s11, 0
	mulw a1, s5, s11
	li a4, 0x46c
	mulw t6, a1, a4
	li s1, 0x726
	mulw a0, t6, s1
	li t6, 0x19a
	mulw s0, a0, t6
	li s1, 0x154
	mulw t4, s0, s1
	li t1, 0x1c4
	mulw s8, t4, t1
	li a6, 0
	mulw s9, s8, a6
	li t1, 0x12
	mulw s7, s9, t1
	li a1, 0x7e3
	mulw a5, s7, a1
	li a1, 0x213
	mulw t1, a5, a1
	li t6, 0x701
	mulw a4, t1, t6
	li s3, 0x6d8
	mulw s9, a4, s3
	li a3, 0
	mulw t5, s9, a3
	li s6, 0xc6
	mulw a6, t5, s6
	li a3, 0x3ba
	mulw t6, a6, a3
	li a5, 0x3c3
	mulw s1, t6, a5
	li s7, 0x181
	mulw s2, s1, s7
	li s7, 0x77a
	mulw s7, s2, s7
	li a3, 0
	mulw s3, s7, a3
	li a1, 0x203
	mulw s8, s3, a1
	li s1, 0x251
	mulw s8, s8, s1
	li a3, 0x1b3
	mulw t4, s8, a3
	li s2, 0x769
	mulw s11, t4, s2
	li t5, 0x4e2
	mulw s3, s11, t5
	li s6, 0
	mulw a6, s3, s6
	li s5, 0x4eb
	mulw t5, a6, s5
	li a1, 0x5a8
	mulw t1, t5, a1
	li a1, 0x5b7
	mulw a0, t1, a1
	li t3, 0x593
	mulw t5, a0, t3
	li a3, 0x187
	mulw s11, t5, a3
	li a4, 0
	mulw a0, s11, a4
	li s7, 0x187
	mulw s9, a0, s7
	li a1, 0x405
	mulw t5, s9, a1
	li a3, 0x747
	mulw t1, t5, a3
	li s2, 0x5e7
	mulw t4, t1, s2
	li a0, 0x27c
	mulw s7, t4, a0
	li a6, 0
	mulw a4, s7, a6
	li t3, 0x413
	mulw a6, a4, t3
	li a0, 0x151
	mulw a0, a6, a0
	li t1, 0x397
	mulw a4, a0, t1
	li t1, 0x9e
	mulw a3, a4, t1
	li a0, 0x336
	mulw a6, a3, a0
	li s9, 0
	mulw s11, a6, s9
	li a0, 0x14d
	mulw s0, s11, a0
	li s8, 0x4a
	mulw s5, s0, s8
	li s9, 0x740
	mulw a3, s5, s9
	li s1, 0x238
	mulw a6, a3, s1
	li s1, 0x125
	mulw t6, a6, s1
	li t4, 0
	mulw a6, t6, t4
	li t1, 0x7a2
	mulw s7, a6, t1
	li s8, 0x298
	mulw s8, s7, s8
	li t6, 0x458
	mulw s7, s8, t6
	li s2, 0x7ba
	mulw a4, s7, s2
	li a5, 0x362
	mulw s3, a4, a5
	li t6, 0
	mulw s1, s3, t6
	li s2, 0x9e
	mulw s0, s1, s2
	li a4, 0x4c5
	mulw t4, s0, a4
	li s3, 0x561
	mulw s7, t4, s3
	csrr s11, time
	csrr t4, cycle
	csrr t5, instret
	sub a2, s11, a2
	sub s5, t4, s4
	sub a3, t5, s10
	beq t2, s5, pass_label_68
	li t3, failed_addr
	ld s3, 0(t3)
	jr s3
pass_label_68:
	beq a7, a3, pass_label_69
	li s8, failed_addr
	ld s6, 0(s8)
	jr s6
pass_label_69:
SID_ZKT_07_MULW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_CLMUL)
SID_ZKT_08_CLMUL:
	li sp, SID_ZKT_08_CLMUL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s11, 0
	csrr s5, time
	csrr s0, cycle
	csrr a6, instret
	li s6, 0x22f
	clmul a2, s11, s6
	li s8, 0x60b
	clmul s7, a2, s8
	li t5, 0x3a5
	clmul s9, s7, t5
	li s6, 0x285
	clmul s10, s9, s6
	li a4, 0x5d1
	clmul s6, s10, a4
	li s11, 0x550
	clmul t2, s6, s11
	li s4, 0x76b
	clmul s6, t2, s4
	li s7, 0x227
	clmul a3, s6, s7
	li a5, 0x5c3
	clmul s1, a3, a5
	li s9, 0x5fa
	clmul s7, s1, s9
	li a5, 0x132
	clmul s1, s7, a5
	li s3, 0x3e4
	clmul s11, s1, s3
	li s1, 0x71b
	clmul t2, s11, s1
	li s11, 0x2f9
	clmul t1, t2, s11
	li s4, 0x5c2
	clmul a0, t1, s4
	li a1, 0x31a
	clmul s6, a0, a1
	li t1, 0x69d
	clmul a7, s6, t1
	li s7, 0xaf
	clmul t2, a7, s7
	li a2, 0x724
	clmul a7, t2, a2
	li s1, 0x63c
	clmul s8, a7, s1
	li t3, 0x47e
	clmul t3, s8, t3
	li t5, 0x201
	clmul s4, t3, t5
	li t1, 0x74c
	clmul t4, s4, t1
	li s8, 0x410
	clmul a4, t4, s8
	li s11, 0x593
	clmul t2, a4, s11
	li t1, 0x501
	clmul s2, t2, t1
	li t5, 0x265
	clmul t1, s2, t5
	li t6, 0x23
	clmul t5, t1, t6
	li t1, 0x168
	clmul a3, t5, t1
	li s4, 0x5c5
	clmul s8, a3, s4
	li a2, 0x5aa
	clmul s9, s8, a2
	li t2, 0x670
	clmul a4, s9, t2
	li a5, 0xb6
	clmul a0, a4, a5
	li a3, 0x660
	clmul a7, a0, a3
	li s10, 0x648
	clmul s7, a7, s10
	li t4, 0x2d
	clmul s6, s7, t4
	li a4, 0x14f
	clmul t3, s6, a4
	li s1, 0x47f
	clmul t2, t3, s1
	li t5, 0x656
	clmul s7, t2, t5
	li a7, 0x313
	clmul a3, s7, a7
	li a0, 0x3ba
	clmul t2, a3, a0
	li t4, 0x2de
	clmul a2, t2, t4
	li s7, 0x55b
	clmul a3, a2, s7
	li a2, 0x156
	clmul s4, a3, a2
	li s7, 0x46b
	clmul t2, s4, s7
	li t6, 0x793
	clmul a5, t2, t6
	li s2, 0x7ff
	clmul s8, a5, s2
	li s11, 0x4f0
	clmul t3, s8, s11
	li a1, 0x6fd
	clmul s4, t3, a1
	li t3, 0x7b7
	clmul a0, s4, t3
	li a1, 0x2fc
	clmul t2, a0, a1
	li s3, 0x6fb
	clmul s9, t2, s3
	li a3, 0x23b
	clmul s3, s9, a3
	li t2, 0x423
	clmul a4, s3, t2
	li s10, 0x515
	clmul a0, a4, s10
	li s7, 0x420
	clmul a2, a0, s7
	li t5, 0x15a
	clmul a7, a2, t5
	li t4, 0x127
	clmul a5, a7, t4
	li a7, 0x7
	clmul s4, a5, a7
	li t2, 0x666
	clmul t2, s4, t2
	li t5, 0x570
	clmul t6, t2, t5
	li s3, 0x13c
	clmul t6, t6, s3
	li a3, 0x94
	clmul a7, t6, a3
	li a5, 0x217
	clmul s9, a7, a5
	li s3, 0x61b
	clmul t6, s9, s3
	li s6, 0x4c
	clmul s1, t6, s6
	li a7, 0x170
	clmul a5, s1, a7
	li s1, 0x741
	clmul t1, a5, s1
	li a4, 0x6ba
	clmul s6, t1, a4
	li a0, 0x618
	clmul t3, s6, a0
	li s9, 0x4e9
	clmul s4, t3, s9
	li a5, 0x297
	clmul a2, s4, a5
	li s2, 0x57e
	clmul t2, a2, s2
	li s9, 0x624
	clmul s11, t2, s9
	li s6, 0x746
	clmul s11, s11, s6
	li s2, 0x27a
	clmul t3, s11, s2
	li s6, 0x41c
	clmul t2, t3, s6
	li t5, 0x3d9
	clmul s10, t2, t5
	li t6, 0x4a2
	clmul t6, s10, t6
	li s10, 0x79e
	clmul t3, t6, s10
	li a7, 0x6cc
	clmul a0, t3, a7
	li s3, 0xd9
	clmul s2, a0, s3
	li t3, 0x4e2
	clmul t4, s2, t3
	li s4, 0x2bc
	clmul s10, t4, s4
	li t4, 0xfa
	clmul a1, s10, t4
	li t6, 0x2ef
	clmul t2, a1, t6
	li t4, 0x2de
	clmul a7, t2, t4
	li a4, 0x120
	clmul t1, a7, a4
	li a0, 0x5a7
	clmul s4, t1, a0
	li s9, 0x3a3
	clmul s3, s4, s9
	li a5, 0x4e3
	clmul s9, s3, a5
	li a3, 0x53f
	clmul s10, s9, a3
	li a5, 0x535
	clmul a4, s10, a5
	li a3, 0x752
	clmul a3, a4, a3
	li a4, 0x78b
	clmul a4, a3, a4
	li t1, 0x2a6
	clmul t6, a4, t1
	li s8, 0x3c5
	clmul s11, t6, s8
	li s7, 0x4f1
	clmul a1, s11, s7
	li t2, 0x7d
	clmul s1, a1, t2
	li a7, 0x769
	clmul t6, s1, a7
	csrr s6, time
	csrr t4, cycle
	csrr a7, instret
	sub s7, s6, s5
	sub s1, t4, s0
	sub t6, a7, a6
	li s3, 0
	csrr t1, time
	csrr t2, cycle
	csrr a7, instret
	li a1, 0x467
	clmul s10, s3, a1
	li s8, 0x4b4
	clmul t4, s10, s8
	li s1, 0x376
	clmul a5, t4, s1
	li s0, 0x7c6
	clmul a2, a5, s0
	li s7, 0x76e
	clmul a4, a2, s7
	li s9, 0x710
	clmul s1, a4, s9
	li s6, 0x23
	clmul s8, s1, s6
	li s2, 0x6fe
	clmul s7, s8, s2
	li s9, 0x13c
	clmul s9, s7, s9
	li a0, 0x639
	clmul t5, s9, a0
	li s11, 0x7fc
	clmul s2, t5, s11
	li s3, 0x447
	clmul s3, s2, s3
	li s2, 0x625
	clmul a5, s3, s2
	li s1, 0x246
	clmul a5, a5, s1
	li s6, 0x1c8
	clmul a1, a5, s6
	li s3, 0x57a
	clmul s8, a1, s3
	li s1, 0xb
	clmul s8, s8, s1
	li s5, 0x50a
	clmul a6, s8, s5
	li s5, 0x79d
	clmul t3, a6, s5
	li a5, 0x3fc
	clmul s4, t3, a5
	li t6, 0x666
	clmul a6, s4, t6
	li s9, 0x7d5
	clmul a2, a6, s9
	li s10, 0x10b
	clmul s2, a2, s10
	li s3, 0x3cc
	clmul t4, s2, s3
	li a0, 0x556
	clmul s0, t4, a0
	li a2, 0x5e
	clmul s1, s0, a2
	li a0, 0x3b9
	clmul s2, s1, a0
	li t3, 0x229
	clmul s2, s2, t3
	li a2, 0x4bd
	clmul s6, s2, a2
	li s0, 0x40
	clmul a5, s6, s0
	li t3, 0x7d5
	clmul t6, a5, t3
	li a5, 0x482
	clmul a1, t6, a5
	li s8, 0x4d1
	clmul a3, a1, s8
	li s10, 0x5e
	clmul s10, a3, s10
	li s6, 0x1ed
	clmul s0, s10, s6
	li t5, 0x6b4
	clmul s11, s0, t5
	li t6, 0x20a
	clmul s3, s11, t6
	li s10, 0x50c
	clmul a5, s3, s10
	li s10, 0x6f1
	clmul s8, a5, s10
	li s9, 0x775
	clmul s7, s8, s9
	li s3, 0x399
	clmul s1, s7, s3
	li s5, 0x130
	clmul s4, s1, s5
	li s6, 0x2af
	clmul a3, s4, s6
	li a2, 0x27d
	clmul s4, a3, a2
	li s8, 0x478
	clmul s6, s4, s8
	li a4, 0x306
	clmul t6, s6, a4
	li t4, 0x2ed
	clmul a5, t6, t4
	li s10, 0x506
	clmul t6, a5, s10
	li a3, 0x390
	clmul t5, t6, a3
	li a3, 0x45e
	clmul a3, t5, a3
	li s0, 0x420
	clmul t5, a3, s0
	li s9, 0x1df
	clmul a4, t5, s9
	li s5, 0x2db
	clmul s11, a4, s5
	li s4, 0x2a3
	clmul t6, s11, s4
	li s5, 0x521
	clmul a2, t6, s5
	li t6, 0x5be
	clmul s9, a2, t6
	li t3, 0x294
	clmul t3, s9, t3
	li s4, 0x27c
	clmul a6, t3, s4
	li t3, 0x571
	clmul s11, a6, t3
	li a5, 0x781
	clmul a2, s11, a5
	li a1, 0x651
	clmul a0, a2, a1
	li t6, 0x184
	clmul a5, a0, t6
	li a4, 0x140
	clmul s8, a5, a4
	li t4, 0x2eb
	clmul s5, s8, t4
	li s1, 0x13
	clmul s11, s5, s1
	li a6, 0x5ec
	clmul t5, s11, a6
	li s7, 0x50d
	clmul s6, t5, s7
	li s7, 0x3f4
	clmul a4, s6, s7
	li s1, 0x358
	clmul s0, a4, s1
	li s4, 0x6b2
	clmul s7, s0, s4
	li a5, 0x3d8
	clmul s4, s7, a5
	li s6, 0x198
	clmul s9, s4, s6
	li s5, 0x4ce
	clmul a5, s9, s5
	li t3, 0x206
	clmul s0, a5, t3
	li t5, 0x3e3
	clmul a6, s0, t5
	li s1, 0x2b2
	clmul s5, a6, s1
	li s2, 0x764
	clmul s9, s5, s2
	li a1, 0x58e
	clmul t5, s9, a1
	li t6, 0x2c4
	clmul s0, t5, t6
	li a6, 0x3ee
	clmul t4, s0, a6
	li s5, 0x384
	clmul a5, t4, s5
	li s9, 0x61c
	clmul a3, a5, s9
	li a2, 0x4fe
	clmul s3, a3, a2
	li a0, 0x2ba
	clmul a2, s3, a0
	li s4, 0x285
	clmul a2, a2, s4
	li s0, 0x50f
	clmul s3, a2, s0
	li s0, 0x74f
	clmul t3, s3, s0
	li s0, 0x678
	clmul s7, t3, s0
	li a2, 0x719
	clmul s8, s7, a2
	li s4, 0x701
	clmul a4, s8, s4
	li t4, 0x54f
	clmul s4, a4, t4
	li a2, 0x272
	clmul s4, s4, a2
	li a3, 0x788
	clmul a5, s4, a3
	li s10, 0x73b
	clmul s3, a5, s10
	li s9, 0x1b6
	clmul s9, s3, s9
	li t3, 0x685
	clmul a0, s9, t3
	li s6, 0x56e
	clmul s10, a0, s6
	li s6, 0x238
	clmul a5, s10, s6
	li t6, 0xe5
	clmul t4, a5, t6
	li a0, 0x110
	clmul s3, t4, a0
	csrr t4, time
	csrr a6, cycle
	csrr s10, instret
	sub s1, t4, t1
	sub s2, a6, t2
	sub s1, s10, a7
	li a6, 0
	csrr a2, time
	csrr t5, cycle
	csrr s10, instret
	li s11, 0x3af
	clmul t2, a6, s11
	li a5, 0x36e
	clmul a1, t2, a5
	li a3, 0x1c8
	clmul t1, a1, a3
	li t4, 0x55e
	clmul s9, t1, t4
	li s6, 0x16f
	clmul a5, s9, s6
	li t4, 0x43d
	clmul a7, a5, t4
	li t2, 0x33a
	clmul s11, a7, t2
	li s0, 0x46c
	clmul t6, s11, s0
	li a3, 0x27f
	clmul t1, t6, a3
	li s8, 0x52c
	clmul a6, t1, s8
	li s4, 0x9
	clmul t3, a6, s4
	li s6, 0x4f
	clmul s9, t3, s6
	li s11, 0x521
	clmul s3, s9, s11
	li t6, 0x7e9
	clmul t4, s3, t6
	li s9, 0x6b6
	clmul s0, t4, s9
	li a3, 0x5f0
	clmul a3, s0, a3
	li t2, 0x25b
	clmul t1, a3, t2
	li a4, 0x1a6
	clmul s6, t1, a4
	li a5, 0x5
	clmul s6, s6, a5
	li a0, 0x758
	clmul a5, s6, a0
	li t3, 0x8
	clmul s8, a5, t3
	li t6, 0x57f
	clmul a3, s8, t6
	li a7, 0x5cc
	clmul t4, a3, a7
	li t1, 0x3f3
	clmul a7, t4, t1
	li s7, 0x3
	clmul s11, a7, s7
	li a7, 0x5a3
	clmul t1, s11, a7
	li s7, 0xd5
	clmul a5, t1, s7
	li a4, 0x3e2
	clmul s11, a5, a4
	li s9, 0x792
	clmul a0, s11, s9
	li s7, 0x607
	clmul s8, a0, s7
	li s0, 0x491
	clmul t1, s8, s0
	li a5, 0x6a3
	clmul a6, t1, a5
	li s3, 0x1ff
	clmul t6, a6, s3
	li a1, 0x596
	clmul a0, t6, a1
	li t1, 0x15b
	clmul t4, a0, t1
	li s0, 0x319
	clmul s4, t4, s0
	li s0, 0x57b
	clmul a3, s4, s0
	li a1, 0x5b6
	clmul a6, a3, a1
	li t6, 0x7f1
	clmul s6, a6, t6
	li t6, 0x264
	clmul a3, s6, t6
	li s0, 0x334
	clmul s8, a3, s0
	li a5, 0x1b0
	clmul t6, s8, a5
	li s11, 0x1d4
	clmul t2, t6, s11
	li t3, 0x1c8
	clmul a7, t2, t3
	li a6, 0xd3
	clmul t4, a7, a6
	li s7, 0x4b2
	clmul s9, t4, s7
	li a1, 0x2b0
	clmul s5, s9, a1
	li a4, 0x7b1
	clmul t6, s5, a4
	li s8, 0x6c6
	clmul s4, t6, s8
	li a4, 0x28e
	clmul s11, s4, a4
	li a0, 0x490
	clmul a3, s11, a0
	li s5, 0x5cc
	clmul s7, a3, s5
	li a1, 0x471
	clmul a6, s7, a1
	li s11, 0x4d5
	clmul t4, a6, s11
	li a6, 0x797
	clmul a7, t4, a6
	li a0, 0x39a
	clmul s4, a7, a0
	li s0, 0x605
	clmul t1, s4, s0
	li s7, 0x3ed
	clmul a4, t1, s7
	li a7, 0x212
	clmul a7, a4, a7
	li s9, 0x5c3
	clmul t4, a7, s9
	li a0, 0x36b
	clmul s4, t4, a0
	li a1, 0x739
	clmul s3, s4, a1
	li a1, 0x109
	clmul a1, s3, a1
	li s6, 0x2c7
	clmul s9, a1, s6
	li a1, 0x213
	clmul a5, s9, a1
	li a6, 0x1d0
	clmul t6, a5, a6
	li a1, 0x346
	clmul a7, t6, a1
	li a6, 0x532
	clmul s9, a7, a6
	li a3, 0x2a9
	clmul t4, s9, a3
	li a6, 0x7b
	clmul t4, t4, a6
	li s6, 0x226
	clmul s4, t4, s6
	li a0, 0x2e
	clmul a4, s4, a0
	li a5, 0x3e0
	clmul t6, a4, a5
	li a5, 0x795
	clmul a7, t6, a5
	li a5, 0x80
	clmul a6, a7, a5
	li s9, 0x435
	clmul s7, a6, s9
	li t3, 0x343
	clmul t2, s7, t3
	li t3, 0x65e
	clmul t1, t2, t3
	li t4, 0x2c0
	clmul a1, t1, t4
	li s3, 0x5cf
	clmul a3, a1, s3
	li s5, 0x72
	clmul s5, a3, s5
	li s7, 0x168
	clmul s8, s5, s7
	li a0, 0x4c2
	clmul s5, s8, a0
	li a0, 0x33d
	clmul t3, s5, a0
	li s9, 0x42c
	clmul s4, t3, s9
	li a5, 0xb7
	clmul s8, s4, a5
	li s11, 0x54d
	clmul s4, s8, s11
	li s7, 0x198
	clmul s9, s4, s7
	li t4, 0x165
	clmul s9, s9, t4
	li s6, 0x732
	clmul t1, s9, s6
	li s5, 0x515
	clmul s6, t1, s5
	li a4, 0x1c1
	clmul a7, s6, a4
	li s7, 0x136
	clmul t2, a7, s7
	li t4, 0x27b
	clmul s5, t2, t4
	li t3, 0x77f
	clmul s7, s5, t3
	li a6, 0x5ee
	clmul s5, s7, a6
	li s4, 0x530
	clmul t6, s5, s4
	li s5, 0x794
	clmul t1, t6, s5
	li t6, 0x217
	clmul a1, t1, t6
	li s7, 0x521
	clmul s3, a1, s7
	csrr s11, time
	csrr a1, cycle
	csrr t2, instret
	sub s8, s11, a2
	sub a6, a1, t5
	sub s3, t2, s10
	beq s2, a6, pass_label_70
	li s10, failed_addr
	ld a2, 0(s10)
	jr a2
pass_label_70:
	beq s1, s3, pass_label_71
	li a2, failed_addr
	ld a6, 0(a2)
	jr a6
pass_label_71:
SID_ZKT_08_CLMUL_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_CLMULH)
SID_ZKT_08_CLMULH:
	li sp, SID_ZKT_08_CLMULH_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 0
	csrr t6, time
	csrr s1, cycle
	csrr a7, instret
	li s7, 0x718
	clmulh t1, t2, s7
	li a0, 0x7af
	clmulh t5, t1, a0
	li s11, 0x229
	clmulh a3, t5, s11
	li a4, 0x21b
	clmulh s2, a3, a4
	li a4, 0x465
	clmulh a2, s2, a4
	li s3, 0x37f
	clmulh s2, a2, s3
	li t3, 0x2f5
	clmulh t3, s2, t3
	li s6, 0x524
	clmulh a4, t3, s6
	li t5, 0x35f
	clmulh s5, a4, t5
	li s6, 0x6c
	clmulh t2, s5, s6
	li s3, 0x2d5
	clmulh s6, t2, s3
	li s11, 0x398
	clmulh s5, s6, s11
	li a4, 0x5ce
	clmulh t3, s5, a4
	li a2, 0x67f
	clmulh s7, t3, a2
	li a0, 0x431
	clmulh s8, s7, a0
	li a6, 0x2e5
	clmulh t1, s8, a6
	li s3, 0x14e
	clmulh t2, t1, s3
	li s7, 0x4b9
	clmulh t1, t2, s7
	li s8, 0x208
	clmulh s7, t1, s8
	li s6, 0x268
	clmulh s7, s7, s6
	li a2, 0x2c2
	clmulh a0, s7, a2
	li a4, 0x3b8
	clmulh a1, a0, a4
	li s5, 0x12f
	clmulh s9, a1, s5
	li t1, 0x4c6
	clmulh s10, s9, t1
	li t2, 0x3e
	clmulh s3, s10, t2
	li s4, 0xf8
	clmulh s8, s3, s4
	li s6, 0x75a
	clmulh t1, s8, s6
	li s2, 0x668
	clmulh s4, t1, s2
	li t2, 0x7d6
	clmulh t3, s4, t2
	li s4, 0x5fd
	clmulh s4, t3, s4
	li a5, 0x787
	clmulh s0, s4, a5
	li s7, 0x4ef
	clmulh a1, s0, s7
	li s9, 0x6b3
	clmulh t4, a1, s9
	li s3, 0x33b
	clmulh a1, t4, s3
	li s7, 0x5ef
	clmulh t2, a1, s7
	li t5, 0x3f5
	clmulh a4, t2, t5
	li a0, 0x3eb
	clmulh s9, a4, a0
	li a2, 0x1b8
	clmulh t5, s9, a2
	li s8, 0x207
	clmulh s9, t5, s8
	li s11, 0x5bd
	clmulh s0, s9, s11
	li s3, 0x14d
	clmulh s7, s0, s3
	li s9, 0x86
	clmulh t5, s7, s9
	li t2, 0x2c7
	clmulh a3, t5, t2
	li a5, 0x44b
	clmulh s11, a3, a5
	li t4, 0x4b
	clmulh s10, s11, t4
	li t5, 0x5b6
	clmulh a3, s10, t5
	li a1, 0x334
	clmulh t1, a3, a1
	li s3, 0x106
	clmulh t3, t1, s3
	li s9, 0x3c
	clmulh s2, t3, s9
	li t3, 0x291
	clmulh s5, s2, t3
	li a5, 0x3ad
	clmulh a1, s5, a5
	li s2, 0x254
	clmulh a5, a1, s2
	li s5, 0x405
	clmulh t3, a5, s5
	li a0, 0x7a7
	clmulh s2, t3, a0
	li a2, 0x296
	clmulh s8, s2, a2
	li a5, 0x2b9
	clmulh t1, s8, a5
	li s9, 0x1f4
	clmulh t2, t1, s9
	li a2, 0x4b7
	clmulh t2, t2, a2
	li t3, 0xf3
	clmulh a0, t2, t3
	li t2, 0x165
	clmulh a3, a0, t2
	li a4, 0x11
	clmulh t1, a3, a4
	li s10, 0x7a9
	clmulh s11, t1, s10
	li s3, 0x525
	clmulh t1, s11, s3
	li a1, 0x575
	clmulh s2, t1, a1
	li s6, 0x433
	clmulh a4, s2, s6
	li a1, 0x3f5
	clmulh s3, a4, a1
	li s8, 0x194
	clmulh a3, s3, s8
	li s0, 0x160
	clmulh s3, a3, s0
	li t5, 0x119
	clmulh a3, s3, t5
	li s4, 0x1cb
	clmulh t4, a3, s4
	li s4, 0x578
	clmulh s7, t4, s4
	li a1, 0x1c2
	clmulh a3, s7, a1
	li s2, 0x363
	clmulh s4, a3, s2
	li s9, 0x128
	clmulh s8, s4, s9
	li s10, 0x675
	clmulh t4, s8, s10
	li a0, 0x4ee
	clmulh s9, t4, a0
	li a4, 0x4
	clmulh s2, s9, a4
	li s5, 0x41
	clmulh s3, s2, s5
	li s11, 0x3c9
	clmulh s11, s3, s11
	li a6, 0x5bc
	clmulh s4, s11, a6
	li a3, 0x261
	clmulh s10, s4, a3
	li s4, 0x17e
	clmulh s4, s10, s4
	li s11, 0x13d
	clmulh a4, s4, s11
	li s9, 0x2ef
	clmulh s5, a4, s9
	li s11, 0x222
	clmulh s4, s5, s11
	li s5, 0xbf
	clmulh a0, s4, s5
	li t5, 0x4cf
	clmulh a3, a0, t5
	li s4, 0x537
	clmulh s11, a3, s4
	li s4, 0x250
	clmulh t2, s11, s4
	li a2, 0x711
	clmulh s9, t2, a2
	li s6, 0x2ff
	clmulh s4, s9, s6
	li s11, 0xa4
	clmulh a2, s4, s11
	li s8, 0x718
	clmulh t5, a2, s8
	li s10, 0x514
	clmulh s5, t5, s10
	li a5, 0x6c9
	clmulh s0, s5, a5
	li s9, 0x3a8
	clmulh t4, s0, s9
	li a1, 0x66d
	clmulh a4, t4, a1
	li a3, 0x6c7
	clmulh s8, a4, a3
	li s9, 0x537
	clmulh s6, s8, s9
	li a6, 0x78d
	clmulh t4, s6, a6
	csrr s7, time
	csrr a2, cycle
	csrr t1, instret
	sub t3, s7, t6
	sub t6, a2, s1
	sub t1, t1, a7
	li s5, 0
	csrr a3, time
	csrr s11, cycle
	csrr t5, instret
	li s6, 0x5d6
	clmulh s10, s5, s6
	li s9, 0x5a7
	clmulh s1, s10, s9
	li s2, 0x51d
	clmulh a7, s1, s2
	li t4, 0xd5
	clmulh s10, a7, t4
	li s4, 0x153
	clmulh s5, s10, s4
	li a6, 0x7c4
	clmulh t2, s5, a6
	li s7, 0x695
	clmulh a2, t2, s7
	li s7, 0x4ac
	clmulh s1, a2, s7
	li t3, 0x778
	clmulh s8, s1, t3
	li a6, 0x2b1
	clmulh a7, s8, a6
	li s10, 0x7e2
	clmulh s10, a7, s10
	li t4, 0x223
	clmulh s2, s10, t4
	li s8, 0x66d
	clmulh s4, s2, s8
	li t1, 0x77e
	clmulh s7, s4, t1
	li a0, 0x41a
	clmulh a2, s7, a0
	li s6, 0x3f3
	clmulh s1, a2, s6
	li s9, 0x459
	clmulh a2, s1, s9
	li s4, 0x4b7
	clmulh a4, a2, s4
	li s10, 0x2d7
	clmulh s4, a4, s10
	li a5, 0x355
	clmulh s7, s4, a5
	li s2, 0x1fa
	clmulh a4, s7, s2
	li s6, 0x514
	clmulh a7, a4, s6
	li a4, 0x516
	clmulh a5, a7, a4
	li a7, 0x70e
	clmulh s7, a5, a7
	li s2, 0x3bd
	clmulh a1, s7, s2
	li s6, 0x204
	clmulh t3, a1, s6
	li s0, 0x6ae
	clmulh s8, t3, s0
	li s9, 0x33a
	clmulh s6, s8, s9
	li a1, 0x44
	clmulh s5, s6, a1
	li a6, 0x1c3
	clmulh a7, s5, a6
	li a2, 0x5bf
	clmulh s9, a7, a2
	li s2, 0x188
	clmulh a1, s9, s2
	li a2, 0x5eb
	clmulh t1, a1, a2
	li t6, 0x674
	clmulh t3, t1, t6
	li s8, 0x31d
	clmulh a5, t3, s8
	li a2, 0x195
	clmulh s7, a5, a2
	li s3, 0x793
	clmulh a4, s7, s3
	li s3, 0x3c1
	clmulh s6, a4, s3
	li s5, 0x3f8
	clmulh t2, s6, s5
	li a1, 0x2e7
	clmulh s6, t2, a1
	li s10, 0x2d8
	clmulh a5, s6, s10
	li t3, 0x69e
	clmulh a6, a5, t3
	li t1, 0xf5
	clmulh t1, a6, t1
	li a6, 0x74e
	clmulh t1, t1, a6
	li a7, 0x227
	clmulh a5, t1, a7
	li s2, 0x7b9
	clmulh s10, a5, s2
	li t1, 0x59
	clmulh t2, s10, t1
	li s3, 0x148
	clmulh s2, t2, s3
	li t4, 0x218
	clmulh s9, s2, t4
	li s4, 0x1f
	clmulh s7, s9, s4
	li s6, 0x312
	clmulh a1, s7, s6
	li s2, 0x400
	clmulh a5, a1, s2
	li a4, 0x2c1
	clmulh s9, a5, a4
	li s7, 0x77e
	clmulh s6, s9, s7
	li s7, 0x549
	clmulh a7, s6, s7
	li s8, 0xfa
	clmulh a4, a7, s8
	li s7, 0x5ee
	clmulh a7, a4, s7
	li s8, 0x501
	clmulh s5, a7, s8
	li s7, 0x369
	clmulh s1, s5, s7
	li s9, 0x518
	clmulh s6, s1, s9
	li a1, 0x500
	clmulh s6, s6, a1
	li a7, 0x43f
	clmulh s3, s6, a7
	li s2, 0x4bb
	clmulh s7, s3, s2
	li s6, 0x82
	clmulh a6, s7, s6
	li t3, 0x672
	clmulh a0, a6, t3
	li t2, 0x4c3
	clmulh s4, a0, t2
	li a0, 0x97
	clmulh s7, s4, a0
	li a0, 0x501
	clmulh a2, s7, a0
	li a4, 0x60a
	clmulh a7, a2, a4
	li t4, 0x359
	clmulh a5, a7, t4
	li a0, 0x105
	clmulh s0, a5, a0
	li t6, 0x3ac
	clmulh a1, s0, t6
	li s4, 0x669
	clmulh a5, a1, s4
	li s6, 0x775
	clmulh t4, a5, s6
	li a2, 0x27b
	clmulh s8, t4, a2
	li s0, 0x50e
	clmulh t3, s8, s0
	li s1, 0x53
	clmulh a2, t3, s1
	li t4, 0x12a
	clmulh s7, a2, t4
	li s9, 0x59e
	clmulh a5, s7, s9
	li t4, 0x759
	clmulh s2, a5, t4
	li s8, 0x7a4
	clmulh s4, s2, s8
	li a0, 0x6d0
	clmulh s3, s4, a0
	li s4, 0x623
	clmulh a7, s3, s4
	li t3, 0x778
	clmulh s6, a7, t3
	li t4, 0x3c1
	clmulh a1, s6, t4
	li s9, 0x456
	clmulh s7, a1, s9
	li a4, 0x6d7
	clmulh s5, s7, a4
	li a7, 0x3bf
	clmulh a7, s5, a7
	li t3, 0xb7
	clmulh t1, a7, t3
	li a1, 0x47a
	clmulh s4, t1, a1
	li a0, 0x6d7
	clmulh a5, s4, a0
	li s0, 0x44d
	clmulh s4, a5, s0
	li s1, 0x23e
	clmulh a4, s4, s1
	li s9, 0x58a
	clmulh a4, a4, s9
	li s4, 0x64
	clmulh s3, a4, s4
	li a6, 0x375
	clmulh t2, s3, a6
	li t6, 0x5f5
	clmulh a1, t2, t6
	li t4, 0xb4
	clmulh t1, a1, t4
	li a2, 0x32a
	clmulh t2, t1, a2
	li t6, 0x46e
	clmulh t1, t2, t6
	csrr a1, time
	csrr s2, cycle
	csrr s3, instret
	sub a0, a1, a3
	sub s2, s2, s11
	sub s7, s3, t5
	li a1, 0
	csrr a3, time
	csrr t4, cycle
	csrr t1, instret
	li s11, 0x4bb
	clmulh s6, a1, s11
	li s8, 0x196
	clmulh a5, s6, s8
	li t3, 0x11c
	clmulh a1, a5, t3
	li a6, 0x4f7
	clmulh s11, a1, a6
	li s1, 0x3cf
	clmulh s3, s11, s1
	li a2, 0x404
	clmulh t3, s3, a2
	li a6, 0x5ec
	clmulh a7, t3, a6
	li t2, 0x4a6
	clmulh s4, a7, t2
	li t3, 0x7e2
	clmulh a2, s4, t3
	li a0, 0x638
	clmulh s4, a2, a0
	li a4, 0x382
	clmulh a6, s4, a4
	li t5, 0x4c8
	clmulh s1, a6, t5
	li s11, 0x4c9
	clmulh a5, s1, s11
	li s9, 0x3b7
	clmulh s5, a5, s9
	li a0, 0x4ec
	clmulh a0, s5, a0
	li s10, 0x5bd
	clmulh t2, a0, s10
	li s6, 0x51b
	clmulh s3, t2, s6
	li a5, 0x49a
	clmulh a5, s3, a5
	li a4, 0x329
	clmulh s4, a5, a4
	li s11, 0xdc
	clmulh s11, s4, s11
	li s8, 0x2e4
	clmulh t5, s11, s8
	li a0, 0x124
	clmulh s10, t5, a0
	li a7, 0x17
	clmulh a4, s10, a7
	li s4, 0x304
	clmulh s8, a4, s4
	li s11, 0x7b0
	clmulh s3, s8, s11
	li s4, 0x6aa
	clmulh s0, s3, s4
	li a0, 0x145
	clmulh s10, s0, a0
	li s4, 0x61a
	clmulh s4, s10, s4
	li s11, 0x59a
	clmulh t6, s4, s11
	li s4, 0x94
	clmulh s11, t6, s4
	li s10, 0x5f6
	clmulh a6, s11, s10
	li a0, 0x3a9
	clmulh t5, a6, a0
	li t6, 0x21a
	clmulh s8, t5, t6
	li t6, 0x395
	clmulh t2, s8, t6
	li a7, 0x790
	clmulh a1, t2, a7
	li s9, 0x60c
	clmulh t3, a1, s9
	li a6, 0x114
	clmulh s1, t3, a6
	li s0, 0xbc
	clmulh t5, s1, s0
	li a5, 0x26b
	clmulh s9, t5, a5
	li s1, 0x4af
	clmulh s3, s9, s1
	li a7, 0x68f
	clmulh t6, s3, a7
	li s1, 0x305
	clmulh t2, t6, s1
	li t3, 0x8b
	clmulh s8, t2, t3
	li a1, 0x14d
	clmulh a1, s8, a1
	li a2, 0x2b
	clmulh s8, a1, a2
	li t3, 0xe
	clmulh s4, s8, t3
	li a7, 0x601
	clmulh s1, s4, a7
	li t3, 0x5fe
	clmulh a1, s1, t3
	li s8, 0x4f7
	clmulh s11, a1, s8
	li a0, 0x17
	clmulh a2, s11, a0
	li a4, 0x789
	clmulh s0, a2, a4
	li t2, 0x100
	clmulh a2, s0, t2
	li a4, 0x545
	clmulh s9, a2, a4
	li s3, 0x8c
	clmulh s8, s9, s3
	li a4, 0x3f3
	clmulh t3, s8, a4
	li a4, 0x57b
	clmulh s10, t3, a4
	li s4, 0x2ae
	clmulh a0, s10, s4
	li s0, 0x7f1
	clmulh s1, a0, s0
	li t3, 0x377
	clmulh s0, s1, t3
	li a1, 0x468
	clmulh a1, s0, a1
	li s6, 0x97
	clmulh a5, a1, s6
	li t5, 0x470
	clmulh t5, a5, t5
	li a4, 0x730
	clmulh s6, t5, a4
	li a4, 0x30a
	clmulh a6, s6, a4
	li s0, 0x3ab
	clmulh s8, a6, s0
	li s1, 0x499
	clmulh a4, s8, s1
	li t6, 0x746
	clmulh a2, a4, t6
	li s11, 0x1da
	clmulh s9, a2, s11
	li a2, 0x5c2
	clmulh a1, s9, a2
	li a7, 0x39a
	clmulh s3, a1, a7
	li s10, 0x746
	clmulh a5, s3, s10
	li a2, 0x52c
	clmulh t2, a5, a2
	li t3, 0x425
	clmulh a7, t2, t3
	li a6, 0x7c7
	clmulh s3, a7, a6
	li s6, 0x3a8
	clmulh s0, s3, s6
	li a2, 0x777
	clmulh a7, s0, a2
	li s10, 0x107
	clmulh a2, a7, s10
	li s4, 0x198
	clmulh a1, a2, s4
	li a2, 0x6a1
	clmulh a0, a1, a2
	li s3, 0x718
	clmulh t3, a0, s3
	li s8, 0x43c
	clmulh t5, t3, s8
	li s9, 0x26d
	clmulh a1, t5, s9
	li a4, 0x64
	clmulh t3, a1, a4
	li a2, 0x4f9
	clmulh s0, t3, a2
	li a5, 0x5f3
	clmulh a4, s0, a5
	li s3, 0x69f
	clmulh a5, a4, s3
	li a7, 0x420
	clmulh t3, a5, a7
	li s5, 0x427
	clmulh s8, t3, s5
	li t5, 0x5d1
	clmulh s8, s8, t5
	li s4, 0x721
	clmulh a6, s8, s4
	li s10, 0x13d
	clmulh s6, a6, s10
	li t3, 0x20b
	clmulh a1, s6, t3
	li t2, 0x182
	clmulh s9, a1, t2
	li s0, 0x587
	clmulh t6, s9, s0
	li a2, 0x57a
	clmulh a1, t6, a2
	li s10, 0x50e
	clmulh a7, a1, s10
	li s8, 0x69f
	clmulh a2, a7, s8
	li s1, 0x7c5
	clmulh s10, a2, s1
	li a4, 0x452
	clmulh s0, s10, a4
	li t2, 0x7cb
	clmulh s8, s0, t2
	csrr s11, time
	csrr s9, cycle
	csrr a7, instret
	sub a6, s11, a3
	sub a1, s9, t4
	sub s10, a7, t1
	beq s2, a1, pass_label_72
	li s3, failed_addr
	ld s4, 0(s3)
	jr s4
pass_label_72:
	beq s7, s10, pass_label_73
	li t2, failed_addr
	ld s11, 0(t2)
	jr s11
pass_label_73:
SID_ZKT_08_CLMULH_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_XPERM4)
SID_ZKT_08_XPERM4:
	li sp, SID_ZKT_08_XPERM4_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s4, 0
	csrr s0, time
	csrr t3, cycle
	csrr a7, instret
	li s11, 0x244
	xperm4 a6, s4, s11
	li t6, 0x2bf
	xperm4 t4, a6, t6
	li s2, 0x2cd
	xperm4 a3, t4, s2
	li s6, 0x410
	xperm4 s7, a3, s6
	li s4, 0x295
	xperm4 a2, s7, s4
	li s3, 0x6fa
	xperm4 a0, a2, s3
	li s11, 0x213
	xperm4 s6, a0, s11
	li s9, 0x739
	xperm4 a5, s6, s9
	li s10, 0x14
	xperm4 s6, a5, s10
	li a3, 0x5b2
	xperm4 s1, s6, a3
	li s9, 0x377
	xperm4 s3, s1, s9
	li t1, 0x395
	xperm4 s5, s3, t1
	li a6, 0x221
	xperm4 t1, s5, a6
	li s3, 0x455
	xperm4 a5, t1, s3
	li s5, 0x3da
	xperm4 a1, a5, s5
	li s3, 0x57f
	xperm4 s10, a1, s3
	li s11, 0x627
	xperm4 a2, s10, s11
	li t1, 0x4b7
	xperm4 s1, a2, t1
	li s5, 0x38f
	xperm4 s10, s1, s5
	li t6, 0x1e8
	xperm4 s9, s10, t6
	li a2, 0x6e2
	xperm4 s5, s9, a2
	li t2, 0x71a
	xperm4 a0, s5, t2
	li s2, 0x638
	xperm4 s11, a0, s2
	li s4, 0x30f
	xperm4 s7, s11, s4
	li t4, 0x544
	xperm4 a3, s7, t4
	li s3, 0x692
	xperm4 s2, a3, s3
	li t6, 0x7f7
	xperm4 a3, s2, t6
	li t2, 0xba
	xperm4 s8, a3, t2
	li a4, 0x72b
	xperm4 s5, s8, a4
	li s8, 0x45a
	xperm4 a3, s5, s8
	li a2, 0x78e
	xperm4 s11, a3, a2
	li t1, 0x93
	xperm4 s8, s11, t1
	li s6, 0x7fc
	xperm4 s9, s8, s6
	li s4, 0x63d
	xperm4 s10, s9, s4
	li s7, 0x553
	xperm4 s6, s10, s7
	li s8, 0x71d
	xperm4 s11, s6, s8
	li t6, 0x638
	xperm4 a6, s11, t6
	li s5, 0x326
	xperm4 a1, a6, s5
	li s5, 0xe3
	xperm4 s8, a1, s5
	li s6, 0x344
	xperm4 s6, s8, s6
	li s5, 0x2cb
	xperm4 s3, s6, s5
	li a1, 0xb9
	xperm4 a4, s3, a1
	li a3, 0x7ef
	xperm4 a3, a4, a3
	li a5, 0x1e4
	xperm4 s11, a3, a5
	li s5, 0x202
	xperm4 a1, s11, s5
	li s5, 0x3ad
	xperm4 a0, a1, s5
	li s5, 0x18
	xperm4 a3, a0, s5
	li a1, 0x285
	xperm4 s5, a3, a1
	li t6, 0x12
	xperm4 a2, s5, t6
	li s11, 0x1d3
	xperm4 s2, a2, s11
	li s11, 0x102
	xperm4 a5, s2, s11
	li s8, 0x70a
	xperm4 t5, a5, s8
	li s5, 0xad
	xperm4 a2, t5, s5
	li s6, 0x27c
	xperm4 s7, a2, s6
	li s5, 0x2c7
	xperm4 t6, s7, s5
	li s6, 0x2d2
	xperm4 s2, t6, s6
	li t4, 0x609
	xperm4 s10, s2, t4
	li t4, 0x341
	xperm4 s1, s10, t4
	li a1, 0x615
	xperm4 a0, s1, a1
	li t1, 0x332
	xperm4 a0, a0, t1
	li a5, 0x3b4
	xperm4 a1, a0, a5
	li t6, 0x556
	xperm4 a2, a1, t6
	li s6, 0x308
	xperm4 t4, a2, s6
	li a2, 0x5a2
	xperm4 s6, t4, a2
	li s9, 0x7f2
	xperm4 a3, s6, s9
	li s5, 0x34e
	xperm4 a5, a3, s5
	li s1, 0x6c4
	xperm4 a0, a5, s1
	li s8, 0x6da
	xperm4 t5, a0, s8
	li a4, 0x7d8
	xperm4 a6, t5, a4
	li s9, 0x21d
	xperm4 t2, a6, s9
	li s1, 0x3dd
	xperm4 t6, t2, s1
	li a6, 0x568
	xperm4 s8, t6, a6
	li a2, 0x617
	xperm4 a5, s8, a2
	li a3, 0x753
	xperm4 s4, a5, a3
	li t2, 0x463
	xperm4 s8, s4, t2
	li s1, 0x1ee
	xperm4 s4, s8, s1
	li s9, 0xbf
	xperm4 t6, s4, s9
	li a6, 0x787
	xperm4 t6, t6, a6
	li a2, 0x371
	xperm4 a2, t6, a2
	li t6, 0x7f5
	xperm4 a2, a2, t6
	li a5, 0x66
	xperm4 t6, a2, a5
	li a4, 0x2ce
	xperm4 s4, t6, a4
	li s6, 0x6b1
	xperm4 s7, s4, s6
	li s2, 0x755
	xperm4 a0, s7, s2
	li s1, 0x60
	xperm4 t5, a0, s1
	li a6, 0x1d3
	xperm4 s5, t5, a6
	li a5, 0x675
	xperm4 a5, s5, a5
	li t6, 0x1d
	xperm4 s10, a5, t6
	li a4, 0x661
	xperm4 s6, s10, a4
	li s8, 0x712
	xperm4 a1, s6, s8
	li t4, 0xd7
	xperm4 a0, a1, t4
	li t6, 0x722
	xperm4 a1, a0, t6
	li t1, 0x18b
	xperm4 s11, a1, t1
	li t5, 0x554
	xperm4 t4, s11, t5
	li s9, 0x6aa
	xperm4 s5, t4, s9
	li s6, 0x455
	xperm4 a5, s5, s6
	li a6, 0x382
	xperm4 s1, a5, a6
	li s7, 0x2e3
	xperm4 s10, s1, s7
	li s2, 0x2d8
	xperm4 s10, s10, s2
	li s1, 0x2a5
	xperm4 a3, s10, s1
	csrr a4, time
	csrr a5, cycle
	csrr s5, instret
	sub t1, a4, s0
	sub t5, a5, t3
	sub t1, s5, a7
	li a7, 0
	csrr s1, time
	csrr t3, cycle
	csrr s4, instret
	li s11, 0x8d
	xperm4 s2, a7, s11
	li t1, 0x608
	xperm4 s6, s2, t1
	li a3, 0x60c
	xperm4 a6, s6, a3
	li a7, 0x337
	xperm4 s9, a6, a7
	li s2, 0x648
	xperm4 s2, s9, s2
	li s5, 0x173
	xperm4 a6, s2, s5
	li t4, 0x295
	xperm4 s5, a6, t4
	li t6, 0x65e
	xperm4 a7, s5, t6
	li a1, 0x4db
	xperm4 s6, a7, a1
	li t1, 0x74a
	xperm4 s8, s6, t1
	li a4, 0x15b
	xperm4 t4, s8, a4
	li a7, 0x639
	xperm4 s2, t4, a7
	li s0, 0x10c
	xperm4 a3, s2, s0
	li a1, 0x352
	xperm4 a4, a3, a1
	li a1, 0x468
	xperm4 t4, a4, a1
	li s3, 0x714
	xperm4 s5, t4, s3
	li t2, 0x75c
	xperm4 a4, s5, t2
	li s6, 0x2ad
	xperm4 a6, a4, s6
	li t5, 0x229
	xperm4 s7, a6, t5
	li a2, 0x514
	xperm4 s3, s7, a2
	li a1, 0x7d1
	xperm4 t4, s3, a1
	li t6, 0x3b6
	xperm4 s7, t4, t6
	li s5, 0x1a9
	xperm4 a7, s7, s5
	li a3, 0x70b
	xperm4 t4, a7, a3
	li s11, 0x4cf
	xperm4 t5, t4, s11
	li s3, 0x378
	xperm4 s11, t5, s3
	li a4, 0x60f
	xperm4 s9, s11, a4
	li s11, 0x17c
	xperm4 t4, s9, s11
	li s3, 0x596
	xperm4 s11, t4, s3
	li s6, 0x625
	xperm4 s9, s11, s6
	li a7, 0x7ce
	xperm4 a6, s9, a7
	li s9, 0x789
	xperm4 s0, a6, s9
	li s3, 0x8a
	xperm4 s7, s0, s3
	li s3, 0x5a3
	xperm4 t2, s7, s3
	li t5, 0x387
	xperm4 a3, t2, t5
	li s7, 0x336
	xperm4 a0, a3, s7
	li t6, 0x606
	xperm4 s9, a0, t6
	li s11, 0x3a1
	xperm4 t6, s9, s11
	li s2, 0x792
	xperm4 a6, t6, s2
	li a0, 0x536
	xperm4 t6, a6, a0
	li s0, 0x3ef
	xperm4 a3, t6, s0
	li t4, 0x326
	xperm4 t6, a3, t4
	li s10, 0x4a0
	xperm4 s8, t6, s10
	li s7, 0x66c
	xperm4 a5, s8, s7
	li a1, 0x11b
	xperm4 t2, a5, a1
	li s8, 0x740
	xperm4 t4, t2, s8
	li a5, 0x350
	xperm4 t4, t4, a5
	li a5, 0x362
	xperm4 s5, t4, a5
	li a5, 0xd0
	xperm4 a1, s5, a5
	li a0, 0x648
	xperm4 s7, a1, a0
	li a2, 0x6f5
	xperm4 s3, s7, a2
	li a0, 0x5da
	xperm4 s5, s3, a0
	li a7, 0x231
	xperm4 a6, s5, a7
	li s7, 0x6a3
	xperm4 t1, a6, s7
	li a7, 0x5b2
	xperm4 s5, t1, a7
	li t2, 0x302
	xperm4 a1, s5, t2
	li a0, 0x24d
	xperm4 t5, a1, a0
	li s10, 0x131
	xperm4 a0, t5, s10
	li t1, 0x3fe
	xperm4 a3, a0, t1
	li t5, 0x48b
	xperm4 a7, a3, t5
	li s2, 0x68b
	xperm4 t5, a7, s2
	li a1, 0x581
	xperm4 t4, t5, a1
	li a0, 0x371
	xperm4 s11, t4, a0
	li a1, 0x749
	xperm4 a2, s11, a1
	li a7, 0x527
	xperm4 s5, a2, a7
	li s2, 0x13a
	xperm4 t6, s5, s2
	li a0, 0x56f
	xperm4 a0, t6, a0
	li s5, 0x541
	xperm4 a5, a0, s5
	li s8, 0x7b4
	xperm4 s7, a5, s8
	li a2, 0x306
	xperm4 s2, s7, a2
	li a0, 0x9c
	xperm4 s5, s2, a0
	li s9, 0x7ac
	xperm4 a2, s5, s9
	li a3, 0x621
	xperm4 s9, a2, a3
	li a0, 0x80
	xperm4 a0, s9, a0
	li t5, 0x677
	xperm4 s11, a0, t5
	li a7, 0x5e7
	xperm4 s11, s11, a7
	li a2, 0x5fd
	xperm4 s8, s11, a2
	li a3, 0xa1
	xperm4 s6, s8, a3
	li t2, 0x366
	xperm4 s7, s6, t2
	li a0, 0x51a
	xperm4 s11, s7, a0
	li a2, 0x25d
	xperm4 s11, s11, a2
	li s7, 0x74
	xperm4 t5, s11, s7
	li t4, 0x7b0
	xperm4 s6, t5, t4
	li a3, 0x1a7
	xperm4 s11, s6, a3
	li s2, 0x3a5
	xperm4 s6, s11, s2
	li t1, 0x44c
	xperm4 s8, s6, t1
	li s2, 0x251
	xperm4 s7, s8, s2
	li s9, 0x323
	xperm4 s9, s7, s9
	li s5, 0x6f6
	xperm4 s8, s9, s5
	li a0, 0x20f
	xperm4 s11, s8, a0
	li s0, 0x200
	xperm4 a0, s11, s0
	li s10, 0xb9
	xperm4 s5, a0, s10
	li a4, 0x62b
	xperm4 a6, s5, a4
	li s9, 0xe9
	xperm4 s2, a6, s9
	li s9, 0x66e
	xperm4 a2, s2, s9
	li a5, 0x292
	xperm4 a3, a2, a5
	li a7, 0x553
	xperm4 a1, a3, a7
	li a2, 0x3f6
	xperm4 s7, a1, a2
	li t4, 0x662
	xperm4 a7, s7, t4
	li s10, 0x684
	xperm4 a7, a7, s10
	csrr t6, time
	csrr a3, cycle
	csrr a0, instret
	sub a7, t6, s1
	sub a2, a3, t3
	sub s3, a0, s4
	li s0, 0
	csrr a7, time
	csrr t4, cycle
	csrr s10, instret
	li a5, 0x6cb
	xperm4 a1, s0, a5
	li s9, 0x1e9
	xperm4 a3, a1, s9
	li a0, 0x437
	xperm4 s9, a3, a0
	li s8, 0x611
	xperm4 s9, s9, s8
	li t5, 0x673
	xperm4 t2, s9, t5
	li a1, 0x127
	xperm4 s2, t2, a1
	li s7, 0x642
	xperm4 s8, s2, s7
	li a3, 0x5ad
	xperm4 t3, s8, a3
	li s11, 0x304
	xperm4 a0, t3, s11
	li s5, 0x60c
	xperm4 t1, a0, s5
	li s1, 0x248
	xperm4 s11, t1, s1
	li s6, 0xc9
	xperm4 s0, s11, s6
	li s7, 0x95
	xperm4 t5, s0, s7
	li s7, 0x5bc
	xperm4 s9, t5, s7
	li s7, 0x1be
	xperm4 s0, s9, s7
	li t2, 0x669
	xperm4 t5, s0, t2
	li s0, 0x2bd
	xperm4 a1, t5, s0
	li a5, 0x78a
	xperm4 s8, a1, a5
	li a0, 0x6e4
	xperm4 s7, s8, a0
	li a4, 0x2d
	xperm4 s9, s7, a4
	li s7, 0x2b1
	xperm4 t1, s9, s7
	li a1, 0x52e
	xperm4 s5, t1, a1
	li t1, 0x6b
	xperm4 s6, s5, t1
	li a4, 0x205
	xperm4 a3, s6, a4
	li s6, 0x56a
	xperm4 s11, a3, s6
	li a0, 0xb0
	xperm4 t3, s11, a0
	li s5, 0x689
	xperm4 a6, t3, s5
	li s2, 0x2dd
	xperm4 t3, a6, s2
	li s8, 0x196
	xperm4 s6, t3, s8
	li s11, 0x2ef
	xperm4 s11, s6, s11
	li s0, 0x247
	xperm4 t1, s11, s0
	li s0, 0x3f
	xperm4 s7, t1, s0
	li t6, 0x651
	xperm4 a5, s7, t6
	li s5, 0x5f5
	xperm4 a0, a5, s5
	li a4, 0x2e5
	xperm4 t2, a0, a4
	li s2, 0x575
	xperm4 s6, t2, s2
	li s8, 0x153
	xperm4 s4, s6, s8
	li a4, 0x6b2
	xperm4 t2, s4, a4
	li t6, 0x401
	xperm4 a4, t2, t6
	li s11, 0x4a5
	xperm4 t5, a4, s11
	li s1, 0x16f
	xperm4 a4, t5, s1
	li t5, 0x158
	xperm4 a6, a4, t5
	li t3, 0x663
	xperm4 a6, a6, t3
	li s8, 0x72a
	xperm4 s5, a6, s8
	li t5, 0x305
	xperm4 s2, s5, t5
	li a6, 0x520
	xperm4 s4, s2, a6
	li t6, 0xf3
	xperm4 a5, s4, t6
	li t1, 0x786
	xperm4 s7, a5, t1
	li a0, 0x4f9
	xperm4 a0, s7, a0
	li a4, 0x658
	xperm4 a5, a0, a4
	li t3, 0x51b
	xperm4 t5, a5, t3
	li t2, 0x622
	xperm4 a1, t5, t2
	li a4, 0x198
	xperm4 s2, a1, a4
	li a1, 0x317
	xperm4 a6, s2, a1
	li a0, 0x264
	xperm4 t6, a6, a0
	li s11, 0x7c3
	xperm4 a6, t6, s11
	li s4, 0x100
	xperm4 s7, a6, s4
	li a4, 0x4ba
	xperm4 s0, s7, a4
	li s4, 0x723
	xperm4 t5, s0, s4
	li a5, 0x703
	xperm4 s2, t5, a5
	li s0, 0x4ae
	xperm4 s5, s2, s0
	li a3, 0x434
	xperm4 s1, s5, a3
	li a6, 0x5ca
	xperm4 t3, s1, a6
	li s8, 0x70a
	xperm4 s6, t3, s8
	li s2, 0x69b
	xperm4 t6, s6, s2
	li a1, 0x464
	xperm4 s8, t6, a1
	li t3, 0x564
	xperm4 s5, s8, t3
	li a6, 0x3c2
	xperm4 t5, s5, a6
	li a0, 0x489
	xperm4 t2, t5, a0
	li s11, 0x69
	xperm4 s11, t2, s11
	li t1, 0x7f5
	xperm4 s8, s11, t1
	li s6, 0x6a7
	xperm4 s7, s8, s6
	li t2, 0x2f0
	xperm4 s2, s7, t2
	li s4, 0x1af
	xperm4 a1, s2, s4
	li s8, 0x751
	xperm4 a0, a1, s8
	li s4, 0x36e
	xperm4 s4, a0, s4
	li t2, 0xdc
	xperm4 s0, s4, t2
	li t6, 0x116
	xperm4 a6, s0, t6
	li s4, 0x560
	xperm4 s2, a6, s4
	li a5, 0x4b9
	xperm4 t2, s2, a5
	li s8, 0x670
	xperm4 s11, t2, s8
	li a0, 0x2ce
	xperm4 a0, s11, a0
	li s1, 0xcd
	xperm4 s4, a0, s1
	li t1, 0x628
	xperm4 t3, s4, t1
	li s4, 0x316
	xperm4 t2, t3, s4
	li s11, 0x360
	xperm4 a0, t2, s11
	li s11, 0x7b4
	xperm4 s2, a0, s11
	li t2, 0x20f
	xperm4 a0, s2, t2
	li a5, 0x317
	xperm4 a3, a0, a5
	li t5, 0x1ca
	xperm4 a5, a3, t5
	li t6, 0x6e8
	xperm4 a5, a5, t6
	li s2, 0x4dd
	xperm4 s5, a5, s2
	li a3, 0x2d3
	xperm4 s11, s5, a3
	li t5, 0x461
	xperm4 t6, s11, t5
	li s0, 0x5fe
	xperm4 s2, t6, s0
	li s7, 0x2e9
	xperm4 s1, s2, s7
	li t1, 0x6ae
	xperm4 s1, s1, t1
	li s4, 0x278
	xperm4 s8, s1, s4
	li t5, 0x5a2
	xperm4 s0, s8, t5
	li t5, 0x297
	xperm4 a5, s0, t5
	csrr s9, time
	csrr a5, cycle
	csrr s1, instret
	sub a4, s9, a7
	sub a4, a5, t4
	sub t2, s1, s10
	beq a2, a4, pass_label_74
	li s2, failed_addr
	ld a1, 0(s2)
	jr a1
pass_label_74:
	beq s3, t2, pass_label_75
	li a4, failed_addr
	ld s9, 0(a4)
	jr s9
pass_label_75:
SID_ZKT_08_XPERM4_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_XPERM8)
SID_ZKT_08_XPERM8:
	li sp, SID_ZKT_08_XPERM8_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s6, 0
	csrr s7, time
	csrr a4, cycle
	csrr s8, instret
	li t2, 0x2aa
	xperm8 s9, s6, t2
	li t6, 0x5bc
	xperm8 t3, s9, t6
	li s9, 0x307
	xperm8 a0, t3, s9
	li t3, 0x7a2
	xperm8 a5, a0, t3
	li s9, 0x55d
	xperm8 s5, a5, s9
	li t2, 0xb6
	xperm8 s3, s5, t2
	li a7, 0x662
	xperm8 a1, s3, a7
	li t5, 0x6e6
	xperm8 a5, a1, t5
	li s0, 0xc9
	xperm8 s1, a5, s0
	li t2, 0x423
	xperm8 t3, s1, t2
	li s4, 0x248
	xperm8 s2, t3, s4
	li a1, 0x5fd
	xperm8 a7, s2, a1
	li s11, 0x2a7
	xperm8 t3, a7, s11
	li s10, 0x173
	xperm8 a5, t3, s10
	li s1, 0x369
	xperm8 s0, a5, s1
	li a2, 0x4d2
	xperm8 a6, s0, a2
	li a1, 0x3c2
	xperm8 a7, a6, a1
	li a6, 0x4fc
	xperm8 s4, a7, a6
	li t3, 0x11a
	xperm8 s2, s4, t3
	li s10, 0x382
	xperm8 t3, s2, s10
	li a3, 0x629
	xperm8 s1, t3, a3
	li s0, 0x121
	xperm8 s9, s1, s0
	li s1, 0x8e
	xperm8 a1, s9, s1
	li s0, 0x544
	xperm8 s5, a1, s0
	li a6, 0x4d7
	xperm8 t5, s5, a6
	li t4, 0x620
	xperm8 a6, t5, t4
	li t3, 0x97
	xperm8 s0, a6, t3
	li s11, 0x7ad
	xperm8 t2, s0, s11
	li s2, 0x87
	xperm8 a3, t2, s2
	li s10, 0x500
	xperm8 a7, a3, s10
	li s9, 0x368
	xperm8 t6, a7, s9
	li a7, 0x205
	xperm8 a3, t6, a7
	li a0, 0x3fe
	xperm8 a6, a3, a0
	li t4, 0x611
	xperm8 t3, a6, t4
	li a3, 0x2b2
	xperm8 a1, t3, a3
	li a2, 0x2a4
	xperm8 a2, a1, a2
	li a7, 0x96
	xperm8 s9, a2, a7
	li s10, 0x75f
	xperm8 a1, s9, s10
	li s9, 0x6e
	xperm8 t5, a1, s9
	li a2, 0xcf
	xperm8 t6, t5, a2
	li s11, 0x1c
	xperm8 a0, t6, s11
	li t3, 0x553
	xperm8 s1, a0, t3
	li a6, 0x5d6
	xperm8 s10, s1, a6
	li t2, 0x39a
	xperm8 a1, s10, t2
	li t6, 0x386
	xperm8 a0, a1, t6
	li t1, 0x5ac
	xperm8 s0, a0, t1
	li t6, 0x33a
	xperm8 a6, s0, t6
	li s5, 0x213
	xperm8 t6, a6, s5
	li a2, 0x7af
	xperm8 a7, t6, a2
	li s1, 0x664
	xperm8 t2, a7, s1
	li s0, 0x4fa
	xperm8 s9, t2, s0
	li s2, 0x37c
	xperm8 s5, s9, s2
	li s0, 0x4a
	xperm8 t3, s5, s0
	li s0, 0x7d8
	xperm8 s5, t3, s0
	li s3, 0x651
	xperm8 t5, s5, s3
	li a5, 0x2b0
	xperm8 a1, t5, a5
	li a6, 0x4ae
	xperm8 s3, a1, a6
	li t5, 0x305
	xperm8 a2, s3, t5
	li s10, 0x67d
	xperm8 s9, a2, s10
	li a1, 0x68b
	xperm8 a2, s9, a1
	li s0, 0x135
	xperm8 t6, a2, s0
	li s2, 0x5d2
	xperm8 a2, t6, s2
	li s5, 0x7f7
	xperm8 s3, a2, s5
	li s9, 0x2c1
	xperm8 s0, s3, s9
	li s4, 0x5e3
	xperm8 s9, s0, s4
	li a5, 0x59f
	xperm8 s10, s9, a5
	li s3, 0x6b8
	xperm8 t3, s10, s3
	li t5, 0x64d
	xperm8 a2, t3, t5
	li s2, 0x6c8
	xperm8 s3, a2, s2
	li s0, 0x762
	xperm8 t6, s3, s0
	li s4, 0x10d
	xperm8 t4, t6, s4
	li s11, 0x4cc
	xperm8 t1, t4, s11
	li t5, 0x17e
	xperm8 t2, t1, t5
	li a2, 0x88
	xperm8 t4, t2, a2
	li t5, 0x4eb
	xperm8 s0, t4, t5
	li a5, 0x7e0
	xperm8 s10, s0, a5
	li a3, 0x5a8
	xperm8 a0, s10, a3
	li s1, 0x3ed
	xperm8 a5, a0, s1
	li s0, 0xc4
	xperm8 a2, a5, s0
	li s10, 0x73
	xperm8 t4, a2, s10
	li a0, 0x756
	xperm8 s6, t4, a0
	li t5, 0x26
	xperm8 s9, s6, t5
	li s10, 0x401
	xperm8 t1, s9, s10
	li a6, 0x512
	xperm8 s1, t1, a6
	li t3, 0x4ce
	xperm8 t4, s1, t3
	li s6, 0x422
	xperm8 a6, t4, s6
	li t1, 0x310
	xperm8 s10, a6, t1
	li a1, 0x42
	xperm8 t5, s10, a1
	li t6, 0x158
	xperm8 a1, t5, t6
	li s3, 0x5fb
	xperm8 a2, a1, s3
	li a7, 0x326
	xperm8 s9, a2, a7
	li t3, 0x480
	xperm8 s10, s9, t3
	li a3, 0x64b
	xperm8 s10, s10, a3
	li a1, 0x60e
	xperm8 a7, s10, a1
	li a0, 0x9c
	xperm8 s2, a7, a0
	li t5, 0x659
	xperm8 t4, s2, t5
	li s10, 0x2f1
	xperm8 s1, t4, s10
	li s5, 0x75
	xperm8 a0, s1, s5
	li s3, 0x6a0
	xperm8 a3, a0, s3
	li a5, 0x3c7
	xperm8 a6, a3, a5
	csrr a3, time
	csrr s0, cycle
	csrr a7, instret
	sub s4, a3, s7
	sub t6, s0, a4
	sub s10, a7, s8
	li s4, 0
	csrr s7, time
	csrr a7, cycle
	csrr s1, instret
	li s10, 0x7d2
	xperm8 s10, s4, s10
	li a6, 0x4a
	xperm8 s2, s10, a6
	li t6, 0x363
	xperm8 t2, s2, t6
	li t6, 0x629
	xperm8 a2, t2, t6
	li a0, 0x19
	xperm8 s8, a2, a0
	li a0, 0x367
	xperm8 a3, s8, a0
	li s6, 0x196
	xperm8 s2, a3, s6
	li a3, 0x155
	xperm8 s0, s2, a3
	li s11, 0x5c6
	xperm8 a1, s0, s11
	li s2, 0x775
	xperm8 t1, a1, s2
	li t5, 0x5d8
	xperm8 s10, t1, t5
	li t5, 0x31b
	xperm8 t4, s10, t5
	li a6, 0x500
	xperm8 t4, t4, a6
	li t1, 0x763
	xperm8 t6, t4, t1
	li s4, 0x348
	xperm8 t1, t6, s4
	li s0, 0xea
	xperm8 t2, t1, s0
	li a3, 0x182
	xperm8 s9, t2, a3
	li s6, 0x63d
	xperm8 s5, s9, s6
	li s9, 0x552
	xperm8 s8, s5, s9
	li t3, 0x1bf
	xperm8 t2, s8, t3
	li t4, 0x65a
	xperm8 s8, t2, t4
	li s10, 0x7cc
	xperm8 s6, s8, s10
	li a6, 0x4ed
	xperm8 a3, s6, a6
	li t5, 0x51a
	xperm8 a6, a3, t5
	li t2, 0x1d8
	xperm8 s4, a6, t2
	li a5, 0x43e
	xperm8 s0, s4, a5
	li s3, 0x580
	xperm8 a5, s0, s3
	li s11, 0x64b
	xperm8 t4, a5, s11
	li a1, 0x3e7
	xperm8 s9, t4, a1
	li t4, 0xbe
	xperm8 a4, s9, t4
	li s10, 0x457
	xperm8 t5, a4, s10
	li s0, 0x6b2
	xperm8 a2, t5, s0
	li a0, 0x3bc
	xperm8 s10, a2, a0
	li s9, 0x40c
	xperm8 s11, s10, s9
	li t1, 0x329
	xperm8 s2, s11, t1
	li s10, 0x300
	xperm8 t6, s2, s10
	li s8, 0xbf
	xperm8 a4, t6, s8
	li s6, 0x30a
	xperm8 s8, a4, s6
	li t4, 0x4a7
	xperm8 s10, s8, t4
	li s9, 0x7ff
	xperm8 s0, s10, s9
	li a1, 0x431
	xperm8 a0, s0, a1
	li s5, 0x36d
	xperm8 t5, a0, s5
	li s10, 0x255
	xperm8 s11, t5, s10
	li a3, 0xf1
	xperm8 a5, s11, a3
	li s3, 0x38e
	xperm8 s2, a5, s3
	li a5, 0x5d2
	xperm8 s0, s2, a5
	li s5, 0x474
	xperm8 a4, s0, s5
	li t2, 0xf9
	xperm8 s10, a4, t2
	li a4, 0x195
	xperm8 a3, s10, a4
	li s6, 0xdf
	xperm8 s10, a3, s6
	li s2, 0x3b5
	xperm8 s4, s10, s2
	li t1, 0x592
	xperm8 s4, s4, t1
	li a1, 0x72f
	xperm8 s3, s4, a1
	li a2, 0x73f
	xperm8 a0, s3, a2
	li s5, 0x7b8
	xperm8 s3, a0, s5
	li s8, 0x1a1
	xperm8 a6, s3, s8
	li s2, 0x411
	xperm8 s0, a6, s2
	li s4, 0x746
	xperm8 t3, s0, s4
	li t2, 0x115
	xperm8 s6, t3, t2
	li t6, 0x659
	xperm8 a1, s6, t6
	li a6, 0x301
	xperm8 t1, a1, a6
	li s10, 0x225
	xperm8 a5, t1, s10
	li s11, 0x2f5
	xperm8 s9, a5, s11
	li s8, 0x446
	xperm8 s9, s9, s8
	li t3, 0x51d
	xperm8 s3, s9, t3
	li a2, 0x7a4
	xperm8 s5, s3, a2
	li a6, 0x1a3
	xperm8 s3, s5, a6
	li a1, 0xc0
	xperm8 s4, s3, a1
	li t6, 0x658
	xperm8 t1, s4, t6
	li s0, 0xb
	xperm8 a3, t1, s0
	li t1, 0x1e0
	xperm8 a4, a3, t1
	li a0, 0x70f
	xperm8 s8, a4, a0
	li s11, 0x3fc
	xperm8 t2, s8, s11
	li a3, 0x7e9
	xperm8 s11, t2, a3
	li s8, 0x32b
	xperm8 a1, s11, s8
	li t1, 0x5ec
	xperm8 s4, a1, t1
	li t3, 0xc8
	xperm8 a4, s4, t3
	li a6, 0x4c6
	xperm8 t5, a4, a6
	li a4, 0x71c
	xperm8 t4, t5, a4
	li a4, 0x376
	xperm8 t1, t4, a4
	li a6, 0x58a
	xperm8 s4, t1, a6
	li a5, 0x42d
	xperm8 s9, s4, a5
	li s6, 0x4bf
	xperm8 t2, s9, s6
	li s10, 0x261
	xperm8 s5, t2, s10
	li t1, 0x554
	xperm8 a5, s5, t1
	li a2, 0x484
	xperm8 t1, a5, a2
	li s2, 0x149
	xperm8 a6, t1, s2
	li s0, 0x24f
	xperm8 s5, a6, s0
	li a4, 0x47b
	xperm8 t1, s5, a4
	li a6, 0xad
	xperm8 t1, t1, a6
	li a5, 0x2d4
	xperm8 s4, t1, a5
	li s2, 0xa4
	xperm8 a3, s4, s2
	li s5, 0x58b
	xperm8 a0, a3, s5
	li s3, 0x45
	xperm8 s10, a0, s3
	li s11, 0x69a
	xperm8 s3, s10, s11
	li a0, 0x214
	xperm8 s8, s3, a0
	li s2, 0x5f3
	xperm8 s11, s8, s2
	li s5, 0x3ab
	xperm8 a0, s11, s5
	li t1, 0x6eb
	xperm8 s10, a0, t1
	li s5, 0x285
	xperm8 s10, s10, s5
	csrr a2, time
	csrr t1, cycle
	csrr a1, instret
	sub s0, a2, s7
	sub t4, t1, a7
	sub s11, a1, s1
	li t3, 0
	csrr s0, time
	csrr s3, cycle
	csrr t6, instret
	li s1, 0x2d3
	xperm8 t2, t3, s1
	li s8, 0x7b
	xperm8 a0, t2, s8
	li s6, 0x14a
	xperm8 s6, a0, s6
	li s9, 0x5c1
	xperm8 s8, s6, s9
	li a1, 0x432
	xperm8 a5, s8, a1
	li t2, 0x547
	xperm8 t1, a5, t2
	li a0, 0x521
	xperm8 s2, t1, a0
	li s10, 0x741
	xperm8 t2, s2, s10
	li a3, 0x4d1
	xperm8 s8, t2, a3
	li a1, 0x32a
	xperm8 a6, s8, a1
	li s2, 0x8f
	xperm8 s10, a6, s2
	li a5, 0x6c8
	xperm8 a7, s10, a5
	li a2, 0x5f2
	xperm8 s5, a7, a2
	li a1, 0x387
	xperm8 a6, s5, a1
	li a3, 0x6d2
	xperm8 s6, a6, a3
	li a4, 0x49
	xperm8 t5, s6, a4
	li s1, 0x1ff
	xperm8 s8, t5, s1
	li a6, 0x406
	xperm8 s9, s8, a6
	li t5, 0x335
	xperm8 t5, s9, t5
	li s10, 0x660
	xperm8 s10, t5, s10
	li t5, 0x32c
	xperm8 s8, s10, t5
	li s10, 0x5dc
	xperm8 a0, s8, s10
	li t2, 0x4e9
	xperm8 s1, a0, t2
	li a7, 0x42e
	xperm8 s4, s1, a7
	li a0, 0x6c4
	xperm8 t2, s4, a0
	li t5, 0x120
	xperm8 s9, t2, t5
	li a3, 0x70b
	xperm8 a1, s9, a3
	li t2, 0x267
	xperm8 s4, a1, t2
	li a4, 0x2e8
	xperm8 a2, s4, a4
	li s1, 0x2b2
	xperm8 a6, a2, s1
	li a2, 0x403
	xperm8 t1, a6, a2
	li s7, 0x22e
	xperm8 s6, t1, s7
	li a5, 0x2af
	xperm8 a6, s6, a5
	li s4, 0x754
	xperm8 s10, a6, s4
	li a3, 0x28d
	xperm8 a6, s10, a3
	li t5, 0x4c7
	xperm8 a4, a6, t5
	li t3, 0xf8
	xperm8 a3, a4, t3
	li a4, 0x298
	xperm8 s4, a3, a4
	li a3, 0x5a5
	xperm8 t3, s4, a3
	li a1, 0x4ab
	xperm8 a1, t3, a1
	li a6, 0x6e0
	xperm8 s6, a1, a6
	li s8, 0x37a
	xperm8 a3, s6, s8
	li a5, 0x245
	xperm8 a6, a3, a5
	li s6, 0x129
	xperm8 a5, a6, s6
	li s10, 0x351
	xperm8 s1, a5, s10
	li a5, 0x4aa
	xperm8 t5, s1, a5
	li s5, 0x5c6
	xperm8 s8, t5, s5
	li a4, 0x5b6
	xperm8 a1, s8, a4
	li t5, 0x60c
	xperm8 a3, a1, t5
	li a5, 0x316
	xperm8 s8, a3, a5
	li t1, 0x1eb
	xperm8 a4, s8, t1
	li s6, 0x55b
	xperm8 t3, a4, s6
	li s5, 0x56d
	xperm8 s8, t3, s5
	li t3, 0x237
	xperm8 t3, s8, t3
	li s6, 0x2e8
	xperm8 s8, t3, s6
	li s2, 0x55c
	xperm8 s7, s8, s2
	li s8, 0xe9
	xperm8 s7, s7, s8
	li t2, 0x7d0
	xperm8 s2, s7, t2
	li s10, 0x35d
	xperm8 t3, s2, s10
	li a6, 0x7eb
	xperm8 a3, t3, a6
	li a0, 0x3f1
	xperm8 s10, a3, a0
	li t2, 0x430
	xperm8 a0, s10, t2
	li a5, 0x1eb
	xperm8 t2, a0, a5
	li s7, 0x2c7
	xperm8 a1, t2, s7
	li t1, 0x29e
	xperm8 t5, a1, t1
	li s2, 0xf4
	xperm8 s8, t5, s2
	li a5, 0x249
	xperm8 t2, s8, a5
	li s5, 0x6b6
	xperm8 s9, t2, s5
	li s7, 0x36
	xperm8 a7, s9, s7
	li s7, 0x444
	xperm8 a5, a7, s7
	li s10, 0x7fe
	xperm8 s2, a5, s10
	li a4, 0x7d5
	xperm8 t3, s2, a4
	li t1, 0x277
	xperm8 a6, t3, t1
	li a1, 0x401
	xperm8 t2, a6, a1
	li s1, 0x78b
	xperm8 s10, t2, s1
	li a2, 0xea
	xperm8 t1, s10, a2
	li t5, 0x150
	xperm8 t3, t1, t5
	li s8, 0x464
	xperm8 s2, t3, s8
	li a4, 0x615
	xperm8 s9, s2, a4
	li s1, 0x145
	xperm8 a5, s9, s1
	li s7, 0x132
	xperm8 s5, a5, s7
	li t3, 0xda
	xperm8 a3, s5, t3
	li a5, 0x397
	xperm8 a7, a3, a5
	li a6, 0x11c
	xperm8 s7, a7, a6
	li s1, 0x6db
	xperm8 a3, s7, s1
	li t5, 0x18
	xperm8 s7, a3, t5
	li s5, 0x32f
	xperm8 s9, s7, s5
	li s7, 0x1de
	xperm8 a0, s9, s7
	li s6, 0x780
	xperm8 s2, a0, s6
	li a1, 0x49d
	xperm8 s6, s2, a1
	li s9, 0xfc
	xperm8 t3, s6, s9
	li t2, 0x669
	xperm8 a2, t3, t2
	li s7, 0x4e1
	xperm8 a7, a2, s7
	li a5, 0x4c3
	xperm8 s7, a7, a5
	li t3, 0x29
	xperm8 a0, s7, t3
	li a5, 0x4b2
	xperm8 s6, a0, a5
	li s2, 0x47a
	xperm8 s6, s6, s2
	li t5, 0x33b
	xperm8 s1, s6, t5
	li a7, 0x2ea
	xperm8 s7, s1, a7
	li s8, 0x7b2
	xperm8 a5, s7, s8
	csrr s10, time
	csrr a6, cycle
	csrr a0, instret
	sub a1, s10, s0
	sub s5, a6, s3
	sub s2, a0, t6
	beq t4, s5, pass_label_76
	li a6, failed_addr
	ld a3, 0(a6)
	jr a3
pass_label_76:
	beq s11, s2, pass_label_77
	li a5, failed_addr
	ld a6, 0(a5)
	jr a6
pass_label_77:
SID_ZKT_08_XPERM8_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_ROR)
SID_ZKT_08_ROR:
	li sp, SID_ZKT_08_ROR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a4, 0
	csrr s0, time
	csrr a2, cycle
	csrr t1, instret
	li s7, 0x605
	ror s4, a4, s7
	li t2, 0x4d5
	ror a1, s4, t2
	li a0, 0x3e0
	ror t6, a1, a0
	li a3, 0x6ca
	ror s8, t6, a3
	li a5, 0x50e
	ror a0, s8, a5
	li t6, 0x393
	ror t4, a0, t6
	li s3, 0x785
	ror s2, t4, s3
	li t2, 0x2b9
	ror t4, s2, t2
	li a3, 0x7dd
	ror s2, t4, a3
	li a4, 0x429
	ror s9, s2, a4
	li t3, 0x282
	ror a6, s9, t3
	li a3, 0x330
	ror s5, a6, a3
	li t3, 0x7ce
	ror s5, s5, t3
	li a1, 0x241
	ror t6, s5, a1
	li s8, 0xa4
	ror s7, t6, s8
	li a1, 0x1c6
	ror t3, s7, a1
	li a3, 0x74d
	ror t2, t3, a3
	li a7, 0x248
	ror s3, t2, a7
	li s2, 0x398
	ror s6, s3, s2
	li a1, 0x61b
	ror a4, s6, a1
	li a1, 0x688
	ror t3, a4, a1
	li a0, 0x7e0
	ror s9, t3, a0
	li a0, 0x105
	ror a3, s9, a0
	li s10, 0x7a7
	ror t2, a3, s10
	li s10, 0x633
	ror s8, t2, s10
	li t3, 0x22c
	ror s4, s8, t3
	li a4, 0x309
	ror s1, s4, a4
	li s7, 0x243
	ror t5, s1, s7
	li a1, 0x74a
	ror t2, t5, a1
	li a7, 0x766
	ror a3, t2, a7
	li a1, 0x123
	ror s9, a3, a1
	li a6, 0x6bf
	ror a7, s9, a6
	li t5, 0x6b4
	ror s9, a7, t5
	li t5, 0x278
	ror s4, s9, t5
	li s11, 0x161
	ror s4, s4, s11
	li s2, 0x762
	ror t2, s4, s2
	li s9, 0x78c
	ror s7, t2, s9
	li a5, 0x2d7
	ror s7, s7, a5
	li s2, 0x13
	ror a1, s7, s2
	li t4, 0x37b
	ror a7, a1, t4
	li s5, 0x5ba
	ror t5, a7, s5
	li s6, 0x95
	ror a3, t5, s6
	li a5, 0x2e1
	ror t2, a3, a5
	li s6, 0x75
	ror s4, t2, s6
	li s3, 0x59f
	ror s2, s4, s3
	li a0, 0x32b
	ror a1, s2, a0
	li t4, 0x55c
	ror t4, a1, t4
	li t5, 0x331
	ror t2, t4, t5
	li a1, 0xb5
	ror t6, t2, a1
	li t2, 0x4e0
	ror a5, t6, t2
	li s2, 0x126
	ror a5, a5, s2
	li s8, 0x648
	ror s3, a5, s8
	li a0, 0x1e7
	ror a3, s3, a0
	li s9, 0x7bd
	ror a1, a3, s9
	li s11, 0x20a
	ror s4, a1, s11
	li a0, 0x40b
	ror a6, s4, a0
	li s5, 0x27e
	ror s5, a6, s5
	li t6, 0x43
	ror a1, s5, t6
	li s8, 0x3f
	ror a3, a1, s8
	li s8, 0x674
	ror s4, a3, s8
	li a0, 0x205
	ror a3, s4, a0
	li s5, 0x523
	ror s2, a3, s5
	li t6, 0x9
	ror t5, s2, t6
	li s10, 0x765
	ror s3, t5, s10
	li s2, 0x2b5
	ror s9, s3, s2
	li s8, 0x2b
	ror s5, s9, s8
	li a7, 0x75b
	ror s1, s5, a7
	li a3, 0x447
	ror t3, s1, a3
	li s1, 0x72
	ror a6, t3, s1
	li s6, 0x1c7
	ror s7, a6, s6
	li s5, 0x116
	ror t4, s7, s5
	li s2, 0x304
	ror s3, t4, s2
	li s7, 0x6f3
	ror t6, s3, s7
	li s10, 0x458
	ror s8, t6, s10
	li s10, 0x1d4
	ror t2, s8, s10
	li s6, 0x391
	ror s11, t2, s6
	li t3, 0x2a4
	ror s6, s11, t3
	li s4, 0x5df
	ror t5, s6, s4
	li a0, 0x2b4
	ror s7, t5, a0
	li s2, 0x7ff
	ror t4, s7, s2
	li s3, 0x51
	ror s2, t4, s3
	li t6, 0x270
	ror s1, s2, t6
	li a5, 0x2e6
	ror a5, s1, a5
	li s9, 0x346
	ror s2, a5, s9
	li a0, 0x750
	ror a1, s2, a0
	li t2, 0x38a
	ror s9, a1, t2
	li s1, 0x1f9
	ror t4, s9, s1
	li s1, 0x5ff
	ror s1, t4, s1
	li t2, 0x731
	ror a0, s1, t2
	li s8, 0x34e
	ror t2, a0, s8
	li s5, 0x3f4
	ror a7, t2, s5
	li a4, 0x4de
	ror t2, a7, a4
	li a1, 0x43b
	ror t4, t2, a1
	li s3, 0x1cd
	ror s4, t4, s3
	li s2, 0x345
	ror s7, s4, s2
	li t6, 0x438
	ror s6, s7, t6
	li s11, 0x3c0
	ror s6, s6, s11
	li s8, 0x459
	ror s4, s6, s8
	li s5, 0x4f
	ror t2, s4, s5
	li t4, 0x32f
	ror s1, t2, t4
	csrr a0, time
	csrr s11, cycle
	csrr s5, instret
	sub s9, a0, s0
	sub t2, s11, a2
	sub s5, s5, t1
	li s10, 0
	csrr a2, time
	csrr s11, cycle
	csrr t4, instret
	li s2, 0x7e8
	ror t2, s10, s2
	li s6, 0x6d5
	ror s0, t2, s6
	li s9, 0x5c8
	ror a4, s0, s9
	li a3, 0x745
	ror t1, a4, a3
	li s5, 0x700
	ror a4, t1, s5
	li a7, 0x2f
	ror a5, a4, a7
	li s2, 0x680
	ror t5, a5, s2
	li a4, 0x6ef
	ror s6, t5, a4
	li a6, 0x432
	ror s0, s6, a6
	li s5, 0x62d
	ror a0, s0, s5
	li t5, 0x568
	ror a0, a0, t5
	li s8, 0x74a
	ror s5, a0, s8
	li s0, 0x784
	ror a7, s5, s0
	li a3, 0x272
	ror s7, a7, a3
	li t6, 0x4c7
	ror s8, s7, t6
	li a5, 0x576
	ror t2, s8, a5
	li a7, 0x623
	ror s7, t2, a7
	li a5, 0x23c
	ror a3, s7, a5
	li s3, 0x3b1
	ror s1, a3, s3
	li s9, 0x792
	ror a5, s1, s9
	li s3, 0x263
	ror t2, a5, s3
	li t1, 0x178
	ror a5, t2, t1
	li t6, 0x19e
	ror t1, a5, t6
	li a6, 0x490
	ror a0, t1, a6
	li s8, 0x3b6
	ror t1, a0, s8
	li s4, 0x765
	ror s4, t1, s4
	li s9, 0x1bb
	ror a1, s4, s9
	li s10, 0x3bd
	ror a6, a1, s10
	li s9, 0x771
	ror a0, a6, s9
	li s7, 0x6f2
	ror s2, a0, s7
	li s3, 0xb4
	ror a5, s2, s3
	li t3, 0x7ec
	ror s1, a5, t3
	li a5, 0x3f5
	ror s2, s1, a5
	li a3, 0x548
	ror s2, s2, a3
	li a7, 0x72b
	ror t6, s2, a7
	li a6, 0xfe
	ror s7, t6, a6
	li s3, 0x28
	ror t2, s7, s3
	li t6, 0x1b0
	ror t2, t2, t6
	li t6, 0x131
	ror s6, t2, t6
	li s2, 0x638
	ror s5, s6, s2
	li s1, 0x2c0
	ror s4, s5, s1
	li s3, 0xcf
	ror s8, s4, s3
	li t1, 0x465
	ror s4, s8, t1
	li s6, 0x3cf
	ror a4, s4, s6
	li s1, 0x470
	ror t3, a4, s1
	li s8, 0x3e8
	ror t1, t3, s8
	li a0, 0x5b1
	ror t6, t1, a0
	li s6, 0x641
	ror t3, t6, s6
	li s8, 0x4e
	ror t2, t3, s8
	li s0, 0x354
	ror s9, t2, s0
	li t3, 0x73d
	ror a7, s9, t3
	li t3, 0x7e7
	ror s7, a7, t3
	li t2, 0xf9
	ror s2, s7, t2
	li a5, 0x62c
	ror s5, s2, a5
	li t1, 0x494
	ror t5, s5, t1
	li t6, 0x3a1
	ror s2, t5, t6
	li s5, 0x5f3
	ror a6, s2, s5
	li s3, 0x19b
	ror a7, a6, s3
	li s8, 0x3b3
	ror s2, a7, s8
	li s3, 0x686
	ror s1, s2, s3
	li s5, 0x103
	ror t5, s1, s5
	li t6, 0x349
	ror s9, t5, t6
	li a1, 0x37
	ror s4, s9, a1
	li a6, 0xe1
	ror a6, s4, a6
	li s6, 0x396
	ror s3, a6, s6
	li t6, 0x42b
	ror s5, s3, t6
	li a4, 0x4d4
	ror t6, s5, a4
	li s0, 0x210
	ror s2, t6, s0
	li a0, 0x16
	ror t6, s2, a0
	li s10, 0x3f0
	ror s5, t6, s10
	li t5, 0x3dd
	ror a0, s5, t5
	li s5, 0x6b0
	ror a5, a0, s5
	li s7, 0x215
	ror s5, a5, s7
	li s8, 0x2e0
	ror s6, s5, s8
	li s1, 0x2d1
	ror a6, s6, s1
	li s10, 0x429
	ror s2, a6, s10
	li a5, 0x42f
	ror s3, s2, a5
	li s2, 0x3cc
	ror t5, s3, s2
	li a5, 0x196
	ror s10, t5, a5
	li t1, 0x303
	ror a0, s10, t1
	li a4, 0x61
	ror s0, a0, a4
	li a7, 0x7b1
	ror t3, s0, a7
	li t6, 0x689
	ror s8, t3, t6
	li t5, 0x10
	ror s8, s8, t5
	li s2, 0x53c
	ror s9, s8, s2
	li t5, 0x604
	ror a0, s9, t5
	li t2, 0xe9
	ror a6, a0, t2
	li s8, 0xb6
	ror a7, a6, s8
	li s5, 0x5c8
	ror t5, a7, s5
	li t6, 0x71a
	ror s7, t5, t6
	li a7, 0x5bf
	ror s4, s7, a7
	li t1, 0xcf
	ror s7, s4, t1
	li a3, 0x600
	ror a4, s7, a3
	li a1, 0x226
	ror t2, a4, a1
	li s2, 0x2f2
	ror a1, t2, s2
	li s3, 0x3bd
	ror a1, a1, s3
	li s0, 0x385
	ror t6, a1, s0
	li a0, 0x3c9
	ror a7, t6, a0
	li a5, 0x2da
	ror a4, a7, a5
	li s6, 0x384
	ror s6, a4, s6
	csrr a6, time
	csrr s5, cycle
	csrr s0, instret
	sub a1, a6, a2
	sub s1, s5, s11
	sub s5, s0, t4
	li s6, 0
	csrr t4, time
	csrr s10, cycle
	csrr s9, instret
	li a0, 0x318
	ror s7, s6, a0
	li a4, 0x2b4
	ror a6, s7, a4
	li a5, 0x742
	ror t2, a6, a5
	li s2, 0x677
	ror s4, t2, s2
	li s7, 0x344
	ror t2, s4, s7
	li t5, 0x3ac
	ror t1, t2, t5
	li s7, 0x6ab
	ror t5, t1, s7
	li t1, 0x163
	ror s6, t5, t1
	li a5, 0x236
	ror a6, s6, a5
	li t6, 0x5d3
	ror a7, a6, t6
	li a1, 0x33e
	ror t2, a7, a1
	li a1, 0x438
	ror t6, t2, a1
	li s6, 0x2a5
	ror s11, t6, s6
	li t2, 0x33e
	ror a3, s11, t2
	li t5, 0x28a
	ror s3, a3, t5
	li t6, 0x12a
	ror t1, s3, t6
	li t5, 0x21a
	ror a0, t1, t5
	li a5, 0x1e2
	ror a3, a0, a5
	li s2, 0x5fd
	ror a3, a3, s2
	li s4, 0xda
	ror a3, a3, s4
	li a0, 0x3ae
	ror s8, a3, a0
	li s11, 0x73c
	ror s4, s8, s11
	li a1, 0x7ad
	ror a2, s4, a1
	li a0, 0x762
	ror a2, a2, a0
	li t6, 0x10d
	ror s0, a2, t6
	li s4, 0x3a1
	ror a0, s0, s4
	li a6, 0x11b
	ror s7, a0, a6
	li s6, 0x4a
	ror s6, s7, s6
	li t5, 0x37b
	ror a3, s6, t5
	li a6, 0x6c9
	ror a2, a3, a6
	li t3, 0x3d4
	ror a0, a2, t3
	li a2, 0x136
	ror a2, a0, a2
	li s8, 0x212
	ror a1, a2, s8
	li s7, 0x64d
	ror s11, a1, s7
	li s3, 0x12
	ror s6, s11, s3
	li t5, 0x4ef
	ror a2, s6, t5
	li t1, 0x3aa
	ror t1, a2, t1
	li t5, 0x39d
	ror a5, t1, t5
	li s7, 0x54f
	ror a5, a5, s7
	li a7, 0x10b
	ror t1, a5, a7
	li s2, 0x10e
	ror s4, t1, s2
	li s3, 0x478
	ror s6, s4, s3
	li s11, 0x2e6
	ror t3, s6, s11
	li t1, 0x3c6
	ror s7, t3, t1
	li s6, 0x5d0
	ror s6, s7, s6
	li s0, 0x623
	ror a0, s6, s0
	li a2, 0x276
	ror s4, a0, a2
	li t5, 0x173
	ror a4, s4, t5
	li t1, 0x5df
	ror a0, a4, t1
	li s7, 0xa5
	ror t6, a0, s7
	li a5, 0x66a
	ror t6, t6, a5
	li s2, 0x743
	ror a7, t6, s2
	li a2, 0x5cf
	ror t5, a7, a2
	li a7, 0x6a7
	ror a1, t5, a7
	li a0, 0x5c
	ror t5, a1, a0
	li a2, 0x3ea
	ror s6, t5, a2
	li t1, 0x4d
	ror a7, s6, t1
	li a3, 0x5fe
	ror a7, a7, a3
	li t6, 0x770
	ror a5, a7, t6
	li s7, 0x17f
	ror s6, a5, s7
	li s11, 0x799
	ror s0, s6, s11
	li t6, 0x603
	ror a2, s0, t6
	li s2, 0x308
	ror a4, a2, s2
	li t6, 0x718
	ror s7, a4, t6
	li a1, 0x469
	ror t3, s7, a1
	li a6, 0x64b
	ror s6, t3, a6
	li t3, 0x543
	ror s3, s6, t3
	li a0, 0x69c
	ror s7, s3, a0
	li t2, 0x2f4
	ror s0, s7, t2
	li s8, 0x68d
	ror s4, s0, s8
	li t6, 0x4fa
	ror t5, s4, t6
	li a6, 0x668
	ror a6, t5, a6
	li t1, 0x595
	ror a6, a6, t1
	li s2, 0x32b
	ror t6, a6, s2
	li s4, 0x314
	ror s7, t6, s4
	li t6, 0x53b
	ror s3, s7, t6
	li a7, 0x294
	ror s7, s3, a7
	li s8, 0x528
	ror a7, s7, s8
	li s0, 0x329
	ror s0, a7, s0
	li a2, 0x72b
	ror s0, s0, a2
	li t2, 0x7b9
	ror a2, s0, t2
	li s4, 0x2cd
	ror a4, a2, s4
	li t1, 0x26c
	ror s8, a4, t1
	li a4, 0x235
	ror t1, s8, a4
	li s11, 0x68
	ror a2, t1, s11
	li s4, 0x779
	ror s11, a2, s4
	li t2, 0x60e
	ror s6, s11, t2
	li a3, 0x6fc
	ror t3, s6, a3
	li s6, 0x39a
	ror t1, t3, s6
	li t3, 0x579
	ror t6, t1, t3
	li s2, 0x2ff
	ror s3, t6, s2
	li s6, 0x535
	ror s8, s3, s6
	li a6, 0x427
	ror s4, s8, a6
	li a2, 0x376
	ror s0, s4, a2
	li a4, 0x6f1
	ror s0, s0, a4
	li a0, 0x7c3
	ror s7, s0, a0
	li s6, 0x233
	ror a1, s7, s6
	li s3, 0x3f6
	ror a2, a1, s3
	li s11, 0x5ec
	ror a3, a2, s11
	li s11, 0x5c6
	ror t2, a3, s11
	csrr t2, time
	csrr s8, cycle
	csrr a4, instret
	sub a5, t2, t4
	sub s6, s8, s10
	sub a6, a4, s9
	beq s1, s6, pass_label_78
	li a2, failed_addr
	ld a2, 0(a2)
	jr a2
pass_label_78:
	beq s5, a6, pass_label_79
	li s2, failed_addr
	ld s5, 0(s2)
	jr s5
pass_label_79:
SID_ZKT_08_ROR_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_ROL)
SID_ZKT_08_ROL:
	li sp, SID_ZKT_08_ROL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 0
	csrr t3, time
	csrr a6, cycle
	csrr s4, instret
	li s0, 0x688
	rol s3, t2, s0
	li s11, 0x777
	rol s2, s3, s11
	li t5, 0x3fc
	rol s11, s2, t5
	li s5, 0x3f1
	rol a7, s11, s5
	li s8, 0x24e
	rol s6, a7, s8
	li t4, 0x664
	rol a5, s6, t4
	li t1, 0x6ea
	rol a3, a5, t1
	li t1, 0x5f7
	rol a0, a3, t1
	li s6, 0x52b
	rol t6, a0, s6
	li t4, 0x639
	rol s3, t6, t4
	li s10, 0x192
	rol s8, s3, s10
	li s1, 0x5bb
	rol s3, s8, s1
	li s9, 0xa
	rol s7, s3, s9
	li s2, 0x253
	rol a0, s7, s2
	li s9, 0x3c5
	rol s3, a0, s9
	li t4, 0x7d8
	rol t2, s3, t4
	li s11, 0x88
	rol t5, t2, s11
	li t1, 0x164
	rol a3, t5, t1
	li a1, 0x794
	rol a5, a3, a1
	li t4, 0x1f3
	rol s1, a5, t4
	li s11, 0x7c1
	rol a1, s1, s11
	li s9, 0x4af
	rol t2, a1, s9
	li t4, 0x659
	rol a7, t2, t4
	li t2, 0x4eb
	rol s3, a7, t2
	li s11, 0xdb
	rol s0, s3, s11
	li s1, 0x9c
	rol s0, s0, s1
	li s11, 0x537
	rol s3, s0, s11
	li s0, 0x1be
	rol a4, s3, s0
	li s5, 0x351
	rol a7, a4, s5
	li s10, 0x253
	rol t2, a7, s10
	li a3, 0x6bb
	rol a7, t2, a3
	li s11, 0x441
	rol t6, a7, s11
	li a3, 0x7de
	rol t4, t6, a3
	li a3, 0x565
	rol s6, t4, a3
	li a2, 0x6f1
	rol s11, s6, a2
	li a7, 0x1be
	rol s6, s11, a7
	li s9, 0x7e7
	rol s0, s6, s9
	li t1, 0x66a
	rol t1, s0, t1
	li s7, 0x54e
	rol a1, t1, s7
	li a0, 0x1da
	rol s10, a1, a0
	li s11, 0x665
	rol t1, s10, s11
	li s8, 0x58d
	rol a1, t1, s8
	li s1, 0x11a
	rol t4, a1, s1
	li s9, 0x32a
	rol s7, t4, s9
	li a5, 0x6d2
	rol a0, s7, a5
	li a7, 0x534
	rol t1, a0, a7
	li s3, 0x403
	rol s11, t1, s3
	li s7, 0x3a6
	rol s1, s11, s7
	li s5, 0x7ff
	rol a1, s1, s5
	li a5, 0x358
	rol s11, a1, a5
	li s1, 0x3df
	rol s6, s11, s1
	li t1, 0x192
	rol t5, s6, t1
	li s11, 0x35f
	rol a4, t5, s11
	li a0, 0xd8
	rol a5, a4, a0
	li s7, 0x461
	rol t5, a5, s7
	li t6, 0x58
	rol t2, t5, t6
	li s2, 0x1aa
	rol a3, t2, s2
	li a2, 0x426
	rol t5, a3, a2
	li s3, 0x6e8
	rol a5, t5, s3
	li t6, 0x316
	rol a0, a5, t6
	li s2, 0x277
	rol a0, a0, s2
	li s7, 0x123
	rol a3, a0, s7
	li t6, 0x555
	rol s9, a3, t6
	li t1, 0x6af
	rol a4, s9, t1
	li a7, 0x1d
	rol a2, a4, a7
	li s2, 0x1ed
	rol s0, a2, s2
	li s5, 0x54e
	rol s7, s0, s5
	li s2, 0x2ad
	rol t4, s7, s2
	li s7, 0x3b5
	rol s8, t4, s7
	li s1, 0x438
	rol t4, s8, s1
	li a0, 0x430
	rol s10, t4, a0
	li a5, 0x388
	rol s11, s10, a5
	li t1, 0x17d
	rol a2, s11, t1
	li s6, 0x212
	rol t4, a2, s6
	li s7, 0x447
	rol t4, t4, s7
	li s3, 0x1d9
	rol s7, t4, s3
	li t2, 0x512
	rol t5, s7, t2
	li s1, 0x75d
	rol s8, t5, s1
	li s7, 0x354
	rol t1, s8, s7
	li s0, 0x50c
	rol s7, t1, s0
	li s3, 0x5f2
	rol a3, s7, s3
	li t6, 0x539
	rol s8, a3, t6
	li t6, 0x3b7
	rol t2, s8, t6
	li s8, 0x30a
	rol s8, t2, s8
	li a4, 0x5a7
	rol t1, s8, a4
	li s9, 0x539
	rol s2, t1, s9
	li s6, 0x559
	rol s2, s2, s6
	li t2, 0x1e
	rol t6, s2, t2
	li a5, 0x440
	rol s10, t6, a5
	li s7, 0x3e
	rol s0, s10, s7
	li s2, 0xc1
	rol s1, s0, s2
	li s8, 0x78c
	rol t1, s1, s8
	li a0, 0x1d1
	rol s6, t1, a0
	li s7, 0x673
	rol t4, s6, s7
	li s7, 0x6ed
	rol a3, t4, s7
	li a0, 0x242
	rol s8, a3, a0
	li a7, 0x75a
	rol s11, s8, a7
	li s6, 0x401
	rol s8, s11, s6
	li s10, 0x760
	rol a3, s8, s10
	li s9, 0x54
	rol a1, a3, s9
	csrr a0, time
	csrr a4, cycle
	csrr t4, instret
	sub t5, a0, t3
	sub s8, a4, a6
	sub a5, t4, s4
	li a6, 0
	csrr t2, time
	csrr s11, cycle
	csrr s10, instret
	li a4, 0xf3
	rol t1, a6, a4
	li a6, 0x93
	rol s8, t1, a6
	li s1, 0x5cf
	rol s0, s8, s1
	li s3, 0x5d6
	rol a1, s0, s3
	li s1, 0x69b
	rol s7, a1, s1
	li t3, 0x12d
	rol a6, s7, t3
	li s3, 0x442
	rol s8, a6, s3
	li a3, 0x447
	rol a5, s8, a3
	li s3, 0x301
	rol s3, a5, s3
	li t5, 0x1ad
	rol s2, s3, t5
	li s8, 0x745
	rol s0, s2, s8
	li a6, 0x616
	rol a1, s0, a6
	li s0, 0x3aa
	rol s9, a1, s0
	li s1, 0x2eb
	rol t5, s9, s1
	li s6, 0x3e
	rol a3, t5, s6
	li a6, 0x146
	rol t3, a3, a6
	li a1, 0x358
	rol a4, t3, a1
	li t6, 0x7cc
	rol s6, a4, t6
	li s3, 0x28c
	rol a4, s6, s3
	li s8, 0x2c9
	rol s1, a4, s8
	li a5, 0x400
	rol a1, s1, a5
	li a5, 0x31c
	rol s1, a1, a5
	li t5, 0x159
	rol s3, s1, t5
	li a2, 0x419
	rol a2, s3, a2
	li s1, 0x434
	rol s5, a2, s1
	li s0, 0x5d4
	rol s1, s5, s0
	li s2, 0x355
	rol t1, s1, s2
	li s9, 0x599
	rol a4, t1, s9
	li a2, 0x40b
	rol t3, a4, a2
	li t5, 0x42c
	rol s4, t3, t5
	li s8, 0x16e
	rol s7, s4, s8
	li s6, 0x2d1
	rol s1, s7, s6
	li s5, 0x56e
	rol s9, s1, s5
	li t6, 0x267
	rol a4, s9, t6
	li t6, 0x5de
	rol t3, a4, t6
	li a4, 0x6b9
	rol a1, t3, a4
	li a6, 0x78f
	rol a4, a1, a6
	li a5, 0xef
	rol s3, a4, a5
	li t6, 0x6d0
	rol t6, s3, t6
	li a0, 0x8a
	rol a4, t6, a0
	li s2, 0x2eb
	rol t3, a4, s2
	li a0, 0x58e
	rol a6, t3, a0
	li s8, 0x16c
	rol s8, a6, s8
	li t3, 0x7ff
	rol a5, s8, t3
	li a4, 0x5df
	rol a7, a5, a4
	li s4, 0x39f
	rol a7, a7, s4
	li s4, 0x76b
	rol s3, a7, s4
	li s0, 0x2e9
	rol t5, s3, s0
	li t6, 0x590
	rol a3, t5, t6
	li t6, 0x69f
	rol a7, a3, t6
	li s3, 0x3da
	rol s4, a7, s3
	li a3, 0x43
	rol s8, s4, a3
	li s3, 0x79a
	rol a2, s8, s3
	li s5, 0x45b
	rol s1, a2, s5
	li s2, 0x78f
	rol t5, s1, s2
	li a7, 0x1a3
	rol s2, t5, a7
	li a1, 0x47
	rol s3, s2, a1
	li s6, 0x8a
	rol a0, s3, s6
	li a1, 0x7af
	rol t1, a0, a1
	li a0, 0x104
	rol t1, t1, a0
	li a6, 0x342
	rol s9, t1, a6
	li a3, 0x663
	rol t1, s9, a3
	li t6, 0x533
	rol t3, t1, t6
	li s5, 0x4a9
	rol s5, t3, s5
	li a1, 0x270
	rol a0, s5, a1
	li t5, 0x4ac
	rol s7, a0, t5
	li t1, 0x476
	rol s2, s7, t1
	li t5, 0x3db
	rol t4, s2, t5
	li a0, 0x7ee
	rol s7, t4, a0
	li a4, 0x287
	rol s0, s7, a4
	li t5, 0x267
	rol a4, s0, t5
	li s7, 0xbf
	rol s4, a4, s7
	li t5, 0x13d
	rol a7, s4, t5
	li s2, 0x6dc
	rol t5, a7, s2
	li t3, 0x659
	rol s1, t5, t3
	li s3, 0x796
	rol t6, s1, s3
	li a2, 0x524
	rol s4, t6, a2
	li a0, 0x192
	rol s0, s4, a0
	li s6, 0x449
	rol a6, s0, s6
	li s5, 0x27
	rol a0, a6, s5
	li s9, 0x191
	rol a3, a0, s9
	li a4, 0x43d
	rol s9, a3, a4
	li s1, 0x7ea
	rol s9, s9, s1
	li s1, 0x168
	rol s6, s9, s1
	li s0, 0x45a
	rol s6, s6, s0
	li t3, 0xaf
	rol a1, s6, t3
	li s4, 0x539
	rol a2, a1, s4
	li t1, 0x4f9
	rol s0, a2, t1
	li s7, 0x502
	rol s6, s0, s7
	li t4, 0x1c8
	rol t4, s6, t4
	li a0, 0x2c0
	rol a1, t4, a0
	li t6, 0x682
	rol s4, a1, t6
	li t6, 0x52e
	rol a3, s4, t6
	li t3, 0x228
	rol a7, a3, t3
	li s5, 0x5c5
	rol t1, a7, s5
	li s7, 0xdb
	rol s0, t1, s7
	li s6, 0x285
	rol s5, s0, s6
	li s9, 0x335
	rol a5, s5, s9
	li a0, 0x29c
	rol s3, a5, a0
	li t6, 0x54f
	rol s7, s3, t6
	csrr t4, time
	csrr a5, cycle
	csrr s2, instret
	sub t3, t4, t2
	sub s9, a5, s11
	sub t4, s2, s10
	li s11, 0
	csrr a4, time
	csrr s8, cycle
	csrr s10, instret
	li s7, 0x45e
	rol s1, s11, s7
	li a1, 0xd8
	rol t2, s1, a1
	li a6, 0x2ab
	rol a3, t2, a6
	li a0, 0x7dd
	rol a5, a3, a0
	li t5, 0x704
	rol a6, a5, t5
	li s0, 0x489
	rol s4, a6, s0
	li s0, 0x346
	rol s6, s4, s0
	li t5, 0x62a
	rol t5, s6, t5
	li s0, 0x464
	rol s5, t5, s0
	li a2, 0x63
	rol a1, s5, a2
	li s11, 0x2ce
	rol a3, a1, s11
	li t1, 0x31e
	rol s3, a3, t1
	li a1, 0x1d1
	rol a1, s3, a1
	li a5, 0x482
	rol a1, a1, a5
	li t5, 0x283
	rol s3, a1, t5
	li s6, 0x5b5
	rol a6, s3, s6
	li t6, 0x7a9
	rol t1, a6, t6
	li t6, 0x3e9
	rol a2, t1, t6
	li s4, 0x6a2
	rol t6, a2, s4
	li s3, 0x6ec
	rol a6, t6, s3
	li s4, 0x45a
	rol t2, a6, s4
	li s4, 0x1af
	rol a1, t2, s4
	li t5, 0x3e7
	rol s2, a1, t5
	li a1, 0x60e
	rol s1, s2, a1
	li a3, 0x1c7
	rol t3, s1, a3
	li s4, 0x6ab
	rol s3, t3, s4
	li a1, 0x16f
	rol s5, s3, a1
	li a2, 0x776
	rol t3, s5, a2
	li s11, 0x54f
	rol s3, t3, s11
	li a5, 0x3f3
	rol s6, s3, a5
	li s2, 0x297
	rol s7, s6, s2
	li t6, 0x15b
	rol s5, s7, t6
	li a6, 0x23a
	rol s5, s5, a6
	li a1, 0x2c1
	rol s0, s5, a1
	li s7, 0x287
	rol t5, s0, s7
	li a1, 0x1a7
	rol a0, t5, a1
	li s3, 0x418
	rol a3, a0, s3
	li t5, 0x65c
	rol s11, a3, t5
	li s2, 0x377
	rol s1, s11, s2
	li s7, 0x374
	rol a6, s1, s7
	li t6, 0xdf
	rol a1, a6, t6
	li t6, 0x7ad
	rol s11, a1, t6
	li a0, 0x4f0
	rol s0, s11, a0
	li a6, 0x6c5
	rol s1, s0, a6
	li s0, 0x755
	rol s2, s1, s0
	li t6, 0x7c
	rol a7, s2, t6
	li s2, 0x1ad
	rol a3, a7, s2
	li s1, 0x16b
	rol s0, a3, s1
	li a0, 0x3af
	rol a6, s0, a0
	li s7, 0x4d1
	rol a5, a6, s7
	li a6, 0x21
	rol a5, a5, a6
	li t1, 0x14
	rol s1, a5, t1
	li s5, 0x689
	rol a1, s1, s5
	li s2, 0x651
	rol s7, a1, s2
	li s3, 0x51d
	rol t5, s7, s3
	li a2, 0x66e
	rol a5, t5, a2
	li s0, 0x69d
	rol a6, a5, s0
	li a2, 0x637
	rol t2, a6, a2
	li t6, 0x495
	rol s7, t2, t6
	li a0, 0x50f
	rol t3, s7, a0
	li t6, 0x337
	rol s5, t3, t6
	li t1, 0x7b9
	rol t5, s5, t1
	li t6, 0x4fa
	rol a2, t5, t6
	li s11, 0x3ce
	rol a5, a2, s11
	li s2, 0x4b9
	rol t2, a5, s2
	li t1, 0xcc
	rol a2, t2, t1
	li a1, 0x114
	rol a3, a2, a1
	li a6, 0x4e1
	rol s1, a3, a6
	li t6, 0x59b
	rol s2, s1, t6
	li t5, 0x394
	rol t2, s2, t5
	li s4, 0x571
	rol a1, t2, s4
	li t3, 0x340
	rol t3, a1, t3
	li a0, 0x32
	rol t5, t3, a0
	li s11, 0x28e
	rol t1, t5, s11
	li a5, 0x6d5
	rol t5, t1, a5
	li s11, 0x326
	rol a3, t5, s11
	li t5, 0x6da
	rol s3, a3, t5
	li a7, 0x12b
	rol s11, s3, a7
	li s6, 0x148
	rol s1, s11, s6
	li a5, 0x317
	rol a0, s1, a5
	li a2, 0x712
	rol a6, a0, a2
	li a3, 0x625
	rol s3, a6, a3
	li a0, 0x1eb
	rol a6, s3, a0
	li s2, 0x60c
	rol a5, a6, s2
	li s0, 0x4ce
	rol a5, a5, s0
	li s6, 0x570
	rol s3, a5, s6
	li t2, 0x35
	rol a7, s3, t2
	li t2, 0x734
	rol s2, a7, t2
	li s4, 0x1da
	rol a3, s2, s4
	li s11, 0x672
	rol s5, a3, s11
	li s0, 0x36c
	rol a0, s5, s0
	li s1, 0x6da
	rol a5, a0, s1
	li t1, 0x3b5
	rol a2, a5, t1
	li a5, 0x23e
	rol s11, a2, a5
	li a2, 0x646
	rol s11, s11, a2
	li t5, 0x663
	rol t5, s11, t5
	li s3, 0x727
	rol a1, t5, s3
	li t2, 0x50c
	rol s0, a1, t2
	li a7, 0x7b9
	rol a1, s0, a7
	li s6, 0x683
	rol t6, a1, s6
	csrr t3, time
	csrr a7, cycle
	csrr s7, instret
	sub a0, t3, a4
	sub s11, a7, s8
	sub s6, s7, s10
	beq s9, s11, pass_label_80
	li s7, failed_addr
	ld t2, 0(s7)
	jr t2
pass_label_80:
	beq t4, s6, pass_label_81
	li t6, failed_addr
	ld t3, 0(t6)
	jr t3
pass_label_81:
SID_ZKT_08_ROL_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_RORI)
SID_ZKT_08_RORI:
	li sp, SID_ZKT_08_RORI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s11, 0
	csrr a3, time
	csrr a5, cycle
	csrr t5, instret
	rori t4, s11, 0xf
	rori s9, t4, 0x13
	rori s3, s9, 0x7
	rori s8, s3, 0x1b
	rori a2, s8, 0x1d
	rori t6, a2, 0x13
	rori s6, t6, 0x1d
	rori a4, s6, 0x1d
	rori s11, a4, 0xa
	rori t6, s11, 0x3
	rori s2, t6, 0x13
	rori a7, s2, 0x14
	rori s8, a7, 0x3
	rori t3, s8, 0xe
	rori a6, t3, 0x11
	rori a6, a6, 0xb
	rori s4, a6, 0x14
	rori s8, s4, 0x15
	rori s11, s8, 0x7
	rori t6, s11, 0x12
	rori s8, t6, 0x10
	rori s8, s8, 0xb
	rori s5, s8, 0xd
	rori t1, s5, 0xe
	rori t3, t1, 0x5
	rori a0, t3, 0x1f
	rori s10, a0, 0xc
	rori s0, s10, 0x9
	rori t1, s0, 0x4
	rori s11, t1, 0x1b
	rori s10, s11, 0x1c
	rori t2, s10, 0x4
	rori s0, t2, 0x3
	rori s11, s0, 0x14
	rori s8, s11, 0x3
	rori s4, s8, 0x1e
	rori a2, s4, 0x18
	rori s3, a2, 0x18
	rori t4, s3, 0x1b
	rori s1, t4, 0xd
	rori a4, s1, 0x15
	rori t4, a4, 0x1e
	rori t4, t4, 0x1a
	rori t2, t4, 0x19
	rori a2, t2, 0x6
	rori s6, a2, 0xd
	rori a0, s6, 0x13
	rori t1, a0, 0x10
	rori s4, t1, 0x1d
	rori s7, s4, 0x13
	rori s11, s7, 0x1c
	rori t6, s11, 0x1f
	rori a4, t6, 0x1b
	rori s11, a4, 0x7
	rori a2, s11, 0x1a
	rori s3, a2, 0x3
	rori s11, s3, 0x6
	rori s10, s11, 0x10
	rori s10, s10, 0x18
	rori a0, s10, 0x12
	rori s7, a0, 0x13
	rori t3, s7, 0x3
	rori s9, t3, 0x19
	rori s6, s9, 0x17
	rori s9, s6, 0x9
	rori a0, s9, 0x17
	rori a4, a0, 0x1c
	rori s11, a4, 0xe
	rori s4, s11, 0x14
	rori s6, s4, 0x3
	rori t3, s6, 0xc
	rori a0, t3, 0x10
	rori s1, a0, 0x15
	rori t2, s1, 0x17
	rori s1, t2, 0x3
	rori t6, s1, 0x9
	rori a1, t6, 0x1f
	rori s8, a1, 0x1b
	rori a1, s8, 0xa
	rori s5, a1, 0x1c
	rori s5, s5, 0x1b
	rori t1, s5, 0xc
	rori t4, t1, 0x14
	rori s4, t4, 0x11
	rori s2, s4, 0xd
	rori s8, s2, 0xe
	rori s2, s8, 0x1a
	rori t2, s2, 0x1e
	rori s1, t2, 0xc
	rori s8, s1, 0x1d
	rori s9, s8, 0x3
	rori a0, s9, 0x3
	rori s8, a0, 0x1b
	rori s2, s8, 0xc
	rori s4, s2, 0x5
	rori s6, s4, 0x1a
	rori a1, s6, 0xe
	rori s7, a1, 0x1f
	rori s6, s7, 0x17
	rori t6, s6, 0x1c
	csrr s4, time
	csrr t4, cycle
	csrr t2, instret
	sub a0, s4, a3
	sub t3, t4, a5
	sub s3, t2, t5
	li t5, 0
	csrr a4, time
	csrr s7, cycle
	csrr a2, instret
	rori t2, t5, 0x9
	rori s4, t2, 0x10
	rori s0, s4, 0x5
	rori a5, s0, 0xf
	rori s1, a5, 0x18
	rori a5, s1, 0x16
	rori s5, a5, 0x12
	rori s10, s5, 0x5
	rori s3, s10, 0x4
	rori t1, s3, 0x1e
	rori s6, t1, 0x7
	rori t5, s6, 0x8
	rori t6, t5, 0x11
	rori s5, t6, 0x13
	rori t2, s5, 0x14
	rori a1, t2, 0xe
	rori s5, a1, 0x7
	rori s3, s5, 0x11
	rori s5, s3, 0x1f
	rori a7, s5, 0x13
	rori t6, a7, 0x14
	rori a6, t6, 0x4
	rori t6, a6, 0x15
	rori a0, t6, 0x18
	rori t2, a0, 0x6
	rori s0, t2, 0x15
	rori t5, s0, 0x1d
	rori s4, t5, 0x4
	rori s1, s4, 0x19
	rori s4, s1, 0x1e
	rori t3, s4, 0x7
	rori s3, t3, 0x11
	rori a6, s3, 0x16
	rori s9, a6, 0x13
	rori t5, s9, 0x11
	rori a0, t5, 0x19
	rori s11, a0, 0xd
	rori s3, s11, 0xf
	rori a3, s3, 0x8
	rori s10, a3, 0x1e
	rori a5, s10, 0xb
	rori t6, a5, 0x12
	rori a1, t6, 0x1b
	rori a1, a1, 0x1e
	rori t6, a1, 0x1f
	rori s8, t6, 0x16
	rori t2, s8, 0x10
	rori a0, t2, 0x12
	rori s11, a0, 0x12
	rori s5, s11, 0x18
	rori a1, s5, 0x1f
	rori a7, a1, 0x1c
	rori s11, a7, 0x10
	rori s2, s11, 0x17
	rori s1, s2, 0x14
	rori t2, s1, 0x16
	rori t3, t2, 0x4
	rori s1, t3, 0x1f
	rori t2, s1, 0xa
	rori t3, t2, 0x1a
	rori s1, t3, 0x18
	rori s5, s1, 0x1a
	rori a7, s5, 0xd
	rori s8, a7, 0x19
	rori s3, s8, 0xa
	rori a0, s3, 0x6
	rori t4, a0, 0x6
	rori t2, t4, 0x1f
	rori s5, t2, 0x1a
	rori s4, s5, 0x18
	rori a5, s4, 0x1b
	rori s8, a5, 0x9
	rori s11, s8, 0x10
	rori s11, s11, 0x12
	rori a1, s11, 0xe
	rori s9, a1, 0x7
	rori s5, s9, 0x1d
	rori t5, s5, 0x19
	rori t3, t5, 0xf
	rori t6, t3, 0x4
	rori t2, t6, 0xb
	rori t1, t2, 0x15
	rori t3, t1, 0x18
	rori t2, t3, 0x5
	rori s4, t2, 0x15
	rori s5, s4, 0x6
	rori s5, s5, 0x1e
	rori s9, s5, 0x1d
	rori s9, s9, 0x9
	rori s5, s9, 0xe
	rori t5, s5, 0x17
	rori s2, t5, 0x14
	rori t5, s2, 0x1d
	rori s0, t5, 0x4
	rori s9, s0, 0x3
	rori s4, s9, 0xa
	rori t5, s4, 0x18
	rori s6, t5, 0x13
	rori s2, s6, 0x1f
	rori a6, s2, 0x16
	csrr s10, time
	csrr t6, cycle
	csrr s0, instret
	sub t1, s10, a4
	sub t5, t6, s7
	sub s9, s0, a2
	li s4, 0
	csrr s11, time
	csrr a4, cycle
	csrr t1, instret
	rori t6, s4, 0xc
	rori a2, t6, 0x1b
	rori s2, a2, 0x10
	rori t2, s2, 0x1c
	rori a6, t2, 0x5
	rori s5, a6, 0x1e
	rori t6, s5, 0x11
	rori t6, t6, 0xc
	rori s0, t6, 0x17
	rori a0, s0, 0x7
	rori a7, a0, 0x1b
	rori s0, a7, 0x1b
	rori s3, s0, 0xd
	rori s6, s3, 0x19
	rori s3, s6, 0x18
	rori s3, s3, 0x9
	rori a0, s3, 0x18
	rori a3, a0, 0x13
	rori s2, a3, 0x16
	rori s10, s2, 0x7
	rori a7, s10, 0x1e
	rori s5, a7, 0x14
	rori s2, s5, 0x9
	rori s4, s2, 0xf
	rori a0, s4, 0x5
	rori a3, a0, 0x11
	rori a0, a3, 0x5
	rori a3, a0, 0x1d
	rori t6, a3, 0x1e
	rori s4, t6, 0x17
	rori t2, s4, 0x6
	rori a2, t2, 0x18
	rori a6, a2, 0x1c
	rori s4, a6, 0x1d
	rori s6, s4, 0x8
	rori a0, s6, 0x12
	rori t4, a0, 0x1f
	rori a7, t4, 0xb
	rori s1, a7, 0xa
	rori s7, s1, 0x12
	rori t6, s7, 0x13
	rori s8, t6, 0xf
	rori s0, s8, 0x8
	rori s0, s0, 0x7
	rori a3, s0, 0xd
	rori s5, a3, 0x13
	rori s7, s5, 0xc
	rori a3, s7, 0x3
	rori a0, a3, 0x5
	rori t2, a0, 0x14
	rori s3, t2, 0x1e
	rori a6, s3, 0xc
	rori a0, a6, 0x13
	rori a1, a0, 0x10
	rori t2, a1, 0xa
	rori a5, t2, 0x1f
	rori s4, a5, 0x13
	rori a7, s4, 0x4
	rori s1, a7, 0x11
	rori s7, s1, 0xe
	rori s10, s7, 0x5
	rori s10, s10, 0x13
	rori s7, s10, 0x12
	rori s0, s7, 0x4
	rori t2, s0, 0x16
	rori a2, t2, 0x11
	rori a3, a2, 0x7
	rori s0, a3, 0x1f
	rori a0, s0, 0xf
	rori s6, a0, 0x6
	rori a1, s6, 0x8
	rori s7, a1, 0x19
	rori s3, s7, 0x10
	rori a1, s3, 0x1e
	rori s5, a1, 0xc
	rori a7, s5, 0x1d
	rori s2, a7, 0x15
	rori a6, s2, 0xd
	rori s5, a6, 0x1d
	rori s10, s5, 0x8
	rori s2, s10, 0xf
	rori a1, s2, 0x6
	rori s10, a1, 0x10
	rori s3, s10, 0x4
	rori s0, s3, 0x1b
	rori a3, s0, 0xf
	rori s2, a3, 0x5
	rori s7, s2, 0x19
	rori s4, s7, 0x17
	rori a3, s4, 0x13
	rori t3, a3, 0x13
	rori s8, t3, 0xb
	rori t3, s8, 0x17
	rori s2, t3, 0x13
	rori s6, s2, 0xd
	rori s6, s6, 0x1d
	rori a7, s6, 0xa
	rori s5, a7, 0x14
	rori s10, s5, 0x15
	rori s3, s10, 0x7
	csrr s10, time
	csrr t6, cycle
	csrr t3, instret
	sub s3, s10, s11
	sub s11, t6, a4
	sub a3, t3, t1
	beq t5, s11, pass_label_82
	li a2, failed_addr
	ld s8, 0(a2)
	jr s8
pass_label_82:
	beq s9, a3, pass_label_83
	li a0, failed_addr
	ld t4, 0(a0)
	jr t4
pass_label_83:
SID_ZKT_08_RORI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_RORW)
SID_ZKT_08_RORW:
	li sp, SID_ZKT_08_RORW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a3, 0
	csrr a0, time
	csrr s4, cycle
	csrr a6, instret
	li t6, 0x3e9
	rorw s0, a3, t6
	li s7, 0x733
	rorw s10, s0, s7
	li a7, 0x116
	rorw s10, s10, a7
	li t2, 0x2f7
	rorw s3, s10, t2
	li a7, 0x50c
	rorw s8, s3, a7
	li a7, 0x3ef
	rorw t5, s8, a7
	li a4, 0x4db
	rorw s1, t5, a4
	li a7, 0x4ab
	rorw s8, s1, a7
	li s2, 0x302
	rorw s5, s8, s2
	li s11, 0x5c6
	rorw s8, s5, s11
	li a5, 0x595
	rorw s2, s8, a5
	li a4, 0x755
	rorw s2, s2, a4
	li a2, 0x2fd
	rorw s9, s2, a2
	li a7, 0x201
	rorw s11, s9, a7
	li t6, 0x515
	rorw a3, s11, t6
	li a5, 0x6a
	rorw a3, a3, a5
	li t2, 0x38d
	rorw t3, a3, t2
	li a2, 0x145
	rorw t6, t3, a2
	li s2, 0x1b1
	rorw s10, t6, s2
	li s7, 0x27f
	rorw t5, s10, s7
	li t1, 0x2d9
	rorw a3, t5, t1
	li t3, 0x25a
	rorw s6, a3, t3
	li a3, 0x2b6
	rorw s0, s6, a3
	li a7, 0x110
	rorw s8, s0, a7
	li a7, 0x1ee
	rorw s7, s8, a7
	li a1, 0x28c
	rorw t3, s7, a1
	li t5, 0x680
	rorw a4, t3, t5
	li a3, 0x4cb
	rorw a5, a4, a3
	li t4, 0x5f6
	rorw s1, a5, t4
	li t5, 0x649
	rorw a2, s1, t5
	li a7, 0x212
	rorw a4, a2, a7
	li t6, 0x605
	rorw a5, a4, t6
	li a4, 0x167
	rorw t6, a5, a4
	li t3, 0xa6
	rorw s3, t6, t3
	li s1, 0x548
	rorw t5, s3, s1
	li s9, 0x233
	rorw a4, t5, s9
	li a5, 0x135
	rorw t1, a4, a5
	li t3, 0x44
	rorw t1, t1, t3
	li t6, 0x588
	rorw s11, t1, t6
	li t6, 0xe6
	rorw s6, s11, t6
	li s1, 0x130
	rorw s6, s6, s1
	li s11, 0x242
	rorw s3, s6, s11
	li a3, 0x2d5
	rorw t6, s3, a3
	li s6, 0x5a3
	rorw a7, t6, s6
	li t4, 0x26f
	rorw a5, a7, t4
	li a2, 0x563
	rorw a3, a5, a2
	li s0, 0xea
	rorw s10, a3, s0
	li a7, 0x6ea
	rorw a7, s10, a7
	li s6, 0x567
	rorw s6, a7, s6
	li a4, 0x2ef
	rorw s9, s6, a4
	li a2, 0x441
	rorw a5, s9, a2
	li s0, 0x7f5
	rorw s3, a5, s0
	li s8, 0xc8
	rorw t6, s3, s8
	li s6, 0x4ca
	rorw a7, t6, s6
	li t6, 0x509
	rorw s8, a7, t6
	li s5, 0xd5
	rorw t1, s8, s5
	li t3, 0x686
	rorw s1, t1, t3
	li a3, 0x564
	rorw s6, s1, a3
	li a4, 0x292
	rorw a5, s6, a4
	li t4, 0x52c
	rorw s2, a5, t4
	li s7, 0x697
	rorw s2, s2, s7
	li t1, 0x5a
	rorw s9, s2, t1
	li s1, 0x98
	rorw s0, s9, s1
	li t6, 0x564
	rorw a4, s0, t6
	li s10, 0x57f
	rorw t2, a4, s10
	li a5, 0x4c8
	rorw t2, t2, a5
	li t4, 0x38
	rorw a2, t2, t4
	li s10, 0x2aa
	rorw s5, a2, s10
	li t2, 0x418
	rorw t6, s5, t2
	li a5, 0x475
	rorw t4, t6, a5
	li s2, 0x3b
	rorw s1, t4, s2
	li a2, 0x216
	rorw a2, s1, a2
	li t2, 0x4db
	rorw s7, a2, t2
	li t1, 0xa2
	rorw s8, s7, t1
	li a2, 0x657
	rorw s10, s8, a2
	li a2, 0x1f2
	rorw a7, s10, a2
	li s8, 0x85
	rorw s3, a7, s8
	li s10, 0x187
	rorw s7, s3, s10
	li s2, 0x43
	rorw s5, s7, s2
	li a2, 0x3e5
	rorw t3, s5, a2
	li s6, 0x4e1
	rorw s5, t3, s6
	li s8, 0x4e9
	rorw t4, s5, s8
	li s5, 0xf8
	rorw s8, t4, s5
	li t4, 0xc3
	rorw s2, s8, t4
	li a5, 0x593
	rorw a5, s2, a5
	li s3, 0x24b
	rorw a7, a5, s3
	li s8, 0x2fd
	rorw s10, a7, s8
	li a2, 0x79
	rorw s2, s10, a2
	li t4, 0x6b7
	rorw t5, s2, t4
	li s1, 0x2c
	rorw a7, t5, s1
	li s1, 0x329
	rorw t6, a7, s1
	li s0, 0x6b4
	rorw s8, t6, s0
	li s3, 0x364
	rorw t4, s8, s3
	li a1, 0x201
	rorw s1, t4, a1
	li s0, 0x3a5
	rorw t5, s1, s0
	li a3, 0x55c
	rorw a3, t5, a3
	li s5, 0x73
	rorw s2, a3, s5
	li a5, 0x78b
	rorw s9, s2, a5
	li s1, 0x171
	rorw t1, s9, s1
	li s9, 0x6d
	rorw a5, t1, s9
	csrr a7, time
	csrr s8, cycle
	csrr s2, instret
	sub s10, a7, a0
	sub a4, s8, s4
	sub s2, s2, a6
	li t5, 0
	csrr s9, time
	csrr s5, cycle
	csrr a4, instret
	li a2, 0x6a9
	rorw t1, t5, a2
	li s6, 0x383
	rorw t1, t1, s6
	li a7, 0x53e
	rorw a1, t1, a7
	li s11, 0x11a
	rorw s6, a1, s11
	li s8, 0x79a
	rorw a2, s6, s8
	li a1, 0x238
	rorw s1, a2, a1
	li t3, 0x140
	rorw a7, s1, t3
	li t5, 0xba
	rorw t4, a7, t5
	li a0, 0x3a0
	rorw t6, t4, a0
	li a6, 0x143
	rorw s4, t6, a6
	li a5, 0x2b0
	rorw s2, s4, a5
	li t6, 0x67
	rorw s10, s2, t6
	li a5, 0x5f6
	rorw s1, s10, a5
	li t2, 0x169
	rorw t5, s1, t2
	li a3, 0x6da
	rorw a6, t5, a3
	li s6, 0x635
	rorw s10, a6, s6
	li s3, 0xf5
	rorw s0, s10, s3
	li s3, 0x7af
	rorw s11, s0, s3
	li s10, 0xb5
	rorw s10, s11, s10
	li a6, 0x53b
	rorw a2, s10, a6
	li s1, 0xa3
	rorw s2, a2, s1
	li s6, 0x67f
	rorw t5, s2, s6
	li s7, 0x226
	rorw t4, t5, s7
	li s6, 0x28e
	rorw a5, t4, s6
	li t2, 0x5e7
	rorw a7, a5, t2
	li s1, 0xc4
	rorw a0, a7, s1
	li s4, 0x754
	rorw a6, a0, s4
	li t4, 0x761
	rorw t6, a6, t4
	li t2, 0x214
	rorw s11, t6, t2
	li s8, 0x7a6
	rorw a2, s11, s8
	li s6, 0x74e
	rorw s6, a2, s6
	li a0, 0x559
	rorw s3, s6, a0
	li a6, 0x693
	rorw s3, s3, a6
	li s8, 0x6a9
	rorw t5, s3, s8
	li t1, 0x420
	rorw t3, t5, t1
	li t1, 0x3a7
	rorw t4, t3, t1
	li s10, 0x616
	rorw a3, t4, s10
	li s1, 0x447
	rorw t2, a3, s1
	li s11, 0x3e
	rorw s4, t2, s11
	li s3, 0x12c
	rorw t6, s4, s3
	li s4, 0x76b
	rorw s4, t6, s4
	li s8, 0x42d
	rorw a3, s4, s8
	li s3, 0x3f1
	rorw a0, a3, s3
	li s1, 0x141
	rorw t2, a0, s1
	li a6, 0x73
	rorw s6, t2, a6
	li s7, 0x46e
	rorw s8, s6, s7
	li s4, 0x22a
	rorw s7, s8, s4
	li s10, 0x436
	rorw s8, s7, s10
	li t1, 0x2f
	rorw a7, s8, t1
	li s6, 0x420
	rorw s2, a7, s6
	li s4, 0x328
	rorw s7, s2, s4
	li t3, 0x5fe
	rorw t6, s7, t3
	li s6, 0x26c
	rorw s0, t6, s6
	li s4, 0x1a3
	rorw a0, s0, s4
	li s3, 0x518
	rorw s7, a0, s3
	li s8, 0x61b
	rorw a3, s7, s8
	li t4, 0x3ee
	rorw a5, a3, t4
	li a6, 0x599
	rorw t3, a5, a6
	li s10, 0x358
	rorw s4, t3, s10
	li s1, 0x5ac
	rorw a7, s4, s1
	li s8, 0x63e
	rorw s2, a7, s8
	li a2, 0x388
	rorw a3, s2, a2
	li s6, 0x1d
	rorw a6, a3, s6
	li t5, 0x6fd
	rorw a0, a6, t5
	li s4, 0xc6
	rorw a1, a0, s4
	li s10, 0x70d
	rorw t1, a1, s10
	li s0, 0x32a
	rorw a2, t1, s0
	li a6, 0x1e8
	rorw t1, a2, a6
	li s0, 0x5e1
	rorw s2, t1, s0
	li s8, 0x2c2
	rorw a1, s2, s8
	li a0, 0x2f1
	rorw a1, a1, a0
	li s4, 0x609
	rorw s0, a1, s4
	li s4, 0x97
	rorw t2, s0, s4
	li t5, 0x7a4
	rorw a1, t2, t5
	li s4, 0x6d9
	rorw s2, a1, s4
	li s7, 0x5d0
	rorw t3, s2, s7
	li t6, 0x2b3
	rorw s4, t3, t6
	li s0, 0x72f
	rorw t2, s4, s0
	li a6, 0x7e7
	rorw t6, t2, a6
	li s3, 0x292
	rorw s2, t6, s3
	li a7, 0x510
	rorw s3, s2, a7
	li s7, 0x749
	rorw t4, s3, s7
	li a7, 0x3fd
	rorw s8, t4, a7
	li a2, 0xf9
	rorw a3, s8, a2
	li s11, 0x2da
	rorw a6, a3, s11
	li a5, 0x124
	rorw t3, a6, a5
	li s7, 0x532
	rorw s6, t3, s7
	li s0, 0x53e
	rorw t5, s6, s0
	li s10, 0x346
	rorw s2, t5, s10
	li s1, 0x3b8
	rorw a0, s2, s1
	li s7, 0x76a
	rorw s1, a0, s7
	li t1, 0x530
	rorw t4, s1, t1
	li t5, 0x1c
	rorw a3, t4, t5
	li s1, 0x34e
	rorw s6, a3, s1
	li s3, 0x587
	rorw s2, s6, s3
	li a3, 0x509
	rorw s6, s2, a3
	li s1, 0x569
	rorw s1, s6, s1
	li a0, 0x6a8
	rorw a6, s1, a0
	li a7, 0x42b
	rorw t2, a6, a7
	li s11, 0x1a9
	rorw t6, t2, s11
	csrr s8, time
	csrr t1, cycle
	csrr t5, instret
	sub t3, s8, s9
	sub s5, t1, s5
	sub t1, t5, a4
	li s11, 0
	csrr s6, time
	csrr s0, cycle
	csrr a3, instret
	li s4, 0x2df
	rorw a6, s11, s4
	li s8, 0x279
	rorw s8, a6, s8
	li t3, 0x415
	rorw t6, s8, t3
	li t2, 0x340
	rorw s11, t6, t2
	li t4, 0x617
	rorw s8, s11, t4
	li a0, 0x5d8
	rorw a2, s8, a0
	li s7, 0x83
	rorw s3, a2, s7
	li a2, 0x4bf
	rorw a0, s3, a2
	li t6, 0x17a
	rorw s1, a0, t6
	li s8, 0x18e
	rorw s2, s1, s8
	li a0, 0x60e
	rorw s9, s2, a0
	li s10, 0x3a1
	rorw s11, s9, s10
	li t2, 0x6d0
	rorw s9, s11, t2
	li a5, 0x24f
	rorw a0, s9, a5
	li s3, 0x793
	rorw a2, a0, s3
	li a1, 0x214
	rorw a1, a2, a1
	li s11, 0x368
	rorw t3, a1, s11
	li a5, 0x68c
	rorw s9, t3, a5
	li a5, 0x6aa
	rorw s1, s9, a5
	li a4, 0x5c5
	rorw a6, s1, a4
	li s7, 0x2e5
	rorw a7, a6, s7
	li a6, 0x168
	rorw a5, a7, a6
	li t5, 0x61a
	rorw s4, a5, t5
	li t6, 0x19d
	rorw s7, s4, t6
	li t2, 0x576
	rorw t4, s7, t2
	li t5, 0x6e4
	rorw t5, t4, t5
	li a0, 0x6e5
	rorw a4, t5, a0
	li a5, 0x7c1
	rorw s10, a4, a5
	li a2, 0x3a0
	rorw s10, s10, a2
	li s2, 0x6fd
	rorw s9, s10, s2
	li a4, 0x1cc
	rorw s4, s9, a4
	li a7, 0x3f7
	rorw s3, s4, a7
	li a5, 0x61f
	rorw t2, s3, a5
	li s2, 0x6a2
	rorw s10, t2, s2
	li s9, 0x63e
	rorw a7, s10, s9
	li s11, 0x6a1
	rorw a0, a7, s11
	li t6, 0x68b
	rorw a4, a0, t6
	li s10, 0x7a8
	rorw s1, a4, s10
	li s10, 0x4fc
	rorw t6, s1, s10
	li a4, 0x73e
	rorw a4, t6, a4
	li s3, 0x357
	rorw s2, a4, s3
	li s8, 0x16
	rorw s2, s2, s8
	li s10, 0x573
	rorw s1, s2, s10
	li a7, 0x6f5
	rorw s8, s1, a7
	li s4, 0x30e
	rorw a4, s8, s4
	li s4, 0x4d7
	rorw a5, a4, s4
	li a4, 0x6ae
	rorw t4, a5, a4
	li t6, 0x5d7
	rorw t2, t4, t6
	li a1, 0x195
	rorw s9, t2, a1
	li s2, 0x7a4
	rorw t2, s9, s2
	li t6, 0x3e7
	rorw t5, t2, t6
	li a6, 0x6e2
	rorw s7, t5, a6
	li a6, 0x59a
	rorw a7, s7, a6
	li t3, 0x7da
	rorw s9, a7, t3
	li s2, 0x7f0
	rorw t4, s9, s2
	li s4, 0x20
	rorw a7, t4, s4
	li s9, 0x733
	rorw s2, a7, s9
	li s10, 0x230
	rorw t2, s2, s10
	li s9, 0xa1
	rorw a1, t2, s9
	li s11, 0x78d
	rorw s1, a1, s11
	li a4, 0x44d
	rorw a5, s1, a4
	li a6, 0x7d7
	rorw s7, a5, a6
	li a1, 0xb1
	rorw t6, s7, a1
	li t3, 0x770
	rorw a5, t6, t3
	li s7, 0x10f
	rorw t3, a5, s7
	li s3, 0x540
	rorw s8, t3, s3
	li a0, 0x745
	rorw a0, s8, a0
	li s3, 0x316
	rorw a5, a0, s3
	li s9, 0x257
	rorw s9, a5, s9
	li t3, 0x68d
	rorw a7, s9, t3
	li s7, 0x245
	rorw s2, a7, s7
	li s10, 0x585
	rorw a0, s2, s10
	li s4, 0x726
	rorw s11, a0, s4
	li s3, 0x460
	rorw a5, s11, s3
	li a6, 0x6df
	rorw s2, a5, a6
	li s11, 0x737
	rorw a2, s2, s11
	li t3, 0x403
	rorw s3, a2, t3
	li a5, 0x31
	rorw t4, s3, a5
	li a4, 0x120
	rorw s4, t4, a4
	li a4, 0xe3
	rorw t4, s4, a4
	li s1, 0x5ab
	rorw a7, t4, s1
	li a2, 0x7e5
	rorw t2, a7, a2
	li s3, 0x48f
	rorw s4, t2, s3
	li s7, 0x199
	rorw a1, s4, s7
	li s9, 0x7fa
	rorw a0, a1, s9
	li a5, 0x4d0
	rorw s2, a0, a5
	li t5, 0x415
	rorw s3, s2, t5
	li a2, 0x38e
	rorw a0, s3, a2
	li a4, 0x2ec
	rorw a2, a0, a4
	li s1, 0x5d
	rorw t2, a2, s1
	li a0, 0x56a
	rorw s4, t2, a0
	li t5, 0xc3
	rorw s9, s4, t5
	li s8, 0x30d
	rorw t4, s9, s8
	li a0, 0x291
	rorw a2, t4, a0
	li s4, 0x6a7
	rorw a1, a2, s4
	li a4, 0x6cf
	rorw a5, a1, a4
	li t4, 0x86
	rorw t6, a5, t4
	li t4, 0x2d8
	rorw s10, t6, t4
	li s3, 0x35b
	rorw t5, s10, s3
	li t6, 0x206
	rorw a7, t5, t6
	csrr s7, time
	csrr a1, cycle
	csrr t4, instret
	sub s10, s7, s6
	sub a7, a1, s0
	sub a2, t4, a3
	beq s5, a7, pass_label_84
	li s9, failed_addr
	ld t2, 0(s9)
	jr t2
pass_label_84:
	beq t1, a2, pass_label_85
	li a1, failed_addr
	ld s8, 0(a1)
	jr s8
pass_label_85:
SID_ZKT_08_RORW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_ROLW)
SID_ZKT_08_ROLW:
	li sp, SID_ZKT_08_ROLW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t5, 0
	csrr s3, time
	csrr s0, cycle
	csrr t3, instret
	li s5, 0x1df
	rolw a6, t5, s5
	li s1, 0x27d
	rolw s5, a6, s1
	li a3, 0x685
	rolw s2, s5, a3
	li a3, 0x35c
	rolw s6, s2, a3
	li a1, 0x1ba
	rolw a4, s6, a1
	li s9, 0x92
	rolw a4, a4, s9
	li s2, 0x6f9
	rolw t6, a4, s2
	li s10, 0x2cf
	rolw a0, t6, s10
	li a3, 0x38c
	rolw a1, a0, a3
	li t1, 0x7b3
	rolw a0, a1, t1
	li a2, 0x5d9
	rolw s8, a0, a2
	li a6, 0x18c
	rolw s7, s8, a6
	li s2, 0x43a
	rolw a6, s7, s2
	li t1, 0x1ad
	rolw a2, a6, t1
	li t1, 0x2cd
	rolw t4, a2, t1
	li a1, 0x419
	rolw s11, t4, a1
	li a4, 0x202
	rolw t5, s11, a4
	li a6, 0x16b
	rolw s7, t5, a6
	li s10, 0x12
	rolw s1, s7, s10
	li a2, 0x95
	rolw a2, s1, a2
	li s10, 0x65b
	rolw s11, a2, s10
	li t1, 0x646
	rolw s2, s11, t1
	li s5, 0x30
	rolw s9, s2, s5
	li a4, 0x34e
	rolw s2, s9, a4
	li s10, 0x512
	rolw a4, s2, s10
	li s6, 0x7d
	rolw s4, a4, s6
	li a0, 0x54
	rolw s1, s4, a0
	li t4, 0x5b4
	rolw s10, s1, t4
	li s2, 0x6b
	rolw s8, s10, s2
	li s10, 0x2fc
	rolw a7, s8, s10
	li s11, 0xbb
	rolw t5, a7, s11
	li s10, 0x2bf
	rolw a7, t5, s10
	li t6, 0x500
	rolw s1, a7, t6
	li s11, 0x2d1
	rolw t4, s1, s11
	li s2, 0x6d4
	rolw t2, t4, s2
	li a6, 0x4f6
	rolw s10, t2, a6
	li t5, 0x19e
	rolw a1, s10, t5
	li a3, 0x38d
	rolw a6, a1, a3
	li t2, 0x4f0
	rolw s9, a6, t2
	li s6, 0x582
	rolw s11, s9, s6
	li a1, 0x35c
	rolw a4, s11, a1
	li t1, 0x1c8
	rolw t4, a4, t1
	li a5, 0x5ad
	rolw a0, t4, a5
	li s7, 0x58a
	rolw s11, a0, s7
	li t5, 0x26c
	rolw s4, s11, t5
	li s6, 0x613
	rolw t6, s4, s6
	li a6, 0x632
	rolw a6, t6, a6
	li s11, 0x5ef
	rolw a5, a6, s11
	li s8, 0x14f
	rolw s2, a5, s8
	li s10, 0x4b6
	rolw t4, s2, s10
	li s7, 0x202
	rolw a3, t4, s7
	li t4, 0x5aa
	rolw t5, a3, t4
	li s2, 0x25d
	rolw a1, t5, s2
	li s10, 0x741
	rolw a5, a1, s10
	li a0, 0x1cb
	rolw s2, a5, a0
	li s8, 0x3d5
	rolw a5, s2, s8
	li s9, 0x51a
	rolw s10, a5, s9
	li a7, 0xde
	rolw s11, s10, a7
	li a4, 0x7f9
	rolw a4, s11, a4
	li s4, 0xca
	rolw a5, a4, s4
	li s6, 0x4d7
	rolw s9, a5, s6
	li s7, 0x74b
	rolw s8, s9, s7
	li s4, 0x14c
	rolw a5, s8, s4
	li t1, 0x524
	rolw s10, a5, t1
	li s6, 0x690
	rolw a2, s10, s6
	li s10, 0x6ad
	rolw s4, a2, s10
	li s7, 0x187
	rolw t6, s4, s7
	li t2, 0xac
	rolw s6, t6, t2
	li t4, 0x477
	rolw s4, s6, t4
	li s11, 0x3fa
	rolw a1, s4, s11
	li s7, 0x2a1
	rolw s2, a1, s7
	li a6, 0x3a4
	rolw s11, s2, a6
	li t6, 0x3a4
	rolw a7, s11, t6
	li s5, 0x34e
	rolw s2, a7, s5
	li a3, 0x6ab
	rolw t2, s2, a3
	li a5, 0x4d
	rolw a3, t2, a5
	li s10, 0x9a
	rolw a7, a3, s10
	li s2, 0x4a5
	rolw a6, a7, s2
	li s7, 0x3e4
	rolw a4, a6, s7
	li s8, 0x41e
	rolw t6, a4, s8
	li a6, 0x63
	rolw a4, t6, a6
	li a0, 0x137
	rolw s7, a4, a0
	li t2, 0x242
	rolw a3, s7, t2
	li s11, 0x318
	rolw s6, a3, s11
	li a5, 0x4ee
	rolw s11, s6, a5
	li a3, 0x13d
	rolw a1, s11, a3
	li a0, 0x18c
	rolw a2, a1, a0
	li t1, 0x85
	rolw t4, a2, t1
	li a7, 0x284
	rolw s11, t4, a7
	li a0, 0x631
	rolw s4, s11, a0
	li s7, 0x8a
	rolw a7, s4, s7
	li a1, 0x4d0
	rolw t1, a7, a1
	li s11, 0x73a
	rolw a4, t1, s11
	li a7, 0x5c7
	rolw t1, a4, a7
	li a7, 0x58e
	rolw s1, t1, a7
	li t2, 0x5b8
	rolw s4, s1, t2
	li s2, 0x6f9
	rolw a1, s4, s2
	li a2, 0x253
	rolw a4, a1, a2
	li a1, 0x1e1
	rolw t1, a4, a1
	li s8, 0x5ee
	rolw s8, t1, s8
	csrr t4, time
	csrr s8, cycle
	csrr s4, instret
	sub a3, t4, s3
	sub s11, s8, s0
	sub s3, s4, t3
	li s7, 0
	csrr t6, time
	csrr s6, cycle
	csrr t5, instret
	li a5, 0x746
	rolw a4, s7, a5
	li s7, 0x30f
	rolw s4, a4, s7
	li s10, 0x65a
	rolw s7, s4, s10
	li a2, 0x2e2
	rolw t2, s7, a2
	li t3, 0x5c3
	rolw a7, t2, t3
	li s1, 0x246
	rolw s2, a7, s1
	li t3, 0x521
	rolw s0, s2, t3
	li a5, 0x203
	rolw a2, s0, a5
	li t3, 0x647
	rolw a4, a2, t3
	li s5, 0x786
	rolw s11, a4, s5
	li s8, 0x4d0
	rolw a0, s11, s8
	li s9, 0x38b
	rolw s1, a0, s9
	li a0, 0x4a8
	rolw a6, s1, a0
	li s8, 0x7db
	rolw a3, a6, s8
	li s5, 0xf3
	rolw a0, a3, s5
	li t1, 0x573
	rolw s2, a0, t1
	li a5, 0x4c6
	rolw s8, s2, a5
	li t4, 0x10f
	rolw t2, s8, t4
	li a1, 0x1ad
	rolw a2, t2, a1
	li s1, 0x764
	rolw s2, a2, s1
	li s4, 0x48c
	rolw a3, s2, s4
	li t2, 0x5de
	rolw t4, a3, t2
	li a7, 0x15b
	rolw a7, t4, a7
	li t2, 0x586
	rolw s0, a7, t2
	li t4, 0x3
	rolw s4, s0, t4
	li t4, 0x1c8
	rolw s7, s4, t4
	li a1, 0x5e0
	rolw a0, s7, a1
	li a2, 0x4b7
	rolw s4, a0, a2
	li a7, 0x5e3
	rolw a1, s4, a7
	li a2, 0x5bb
	rolw s2, a1, a2
	li a7, 0x7f4
	rolw a1, s2, a7
	li s8, 0x116
	rolw s4, a1, s8
	li s3, 0x30
	rolw s9, s4, s3
	li a6, 0x3d4
	rolw a1, s9, a6
	li s5, 0x4a2
	rolw s3, a1, s5
	li s0, 0x4a6
	rolw a7, s3, s0
	li s8, 0x5ef
	rolw a5, a7, s8
	li a4, 0x526
	rolw a5, a5, a4
	li s9, 0x241
	rolw s8, a5, s9
	li s9, 0x255
	rolw a4, s8, s9
	li s10, 0x6f7
	rolw s1, a4, s10
	li s3, 0x4c0
	rolw t1, s1, s3
	li a3, 0x361
	rolw a7, t1, a3
	li t2, 0x6c
	rolw s3, a7, t2
	li t4, 0x66
	rolw s7, s3, t4
	li s1, 0x5d
	rolw a7, s7, s1
	li s4, 0x140
	rolw a6, a7, s4
	li a3, 0x6c4
	rolw a0, a6, a3
	li s8, 0xe6
	rolw t4, a0, s8
	li s8, 0x5cb
	rolw a7, t4, s8
	li s1, 0x1e7
	rolw s11, a7, s1
	li a7, 0x1e
	rolw s5, s11, a7
	li t1, 0x59c
	rolw s3, s5, t1
	li s11, 0x4d4
	rolw a7, s3, s11
	li s2, 0x302
	rolw s8, a7, s2
	li a5, 0x140
	rolw s5, s8, a5
	li a0, 0x25f
	rolw s1, s5, a0
	li t3, 0x767
	rolw s2, s1, t3
	li s8, 0x56f
	rolw a6, s2, s8
	li t3, 0xad
	rolw a3, a6, t3
	li s4, 0x81
	rolw a5, a3, s4
	li s0, 0x3cd
	rolw t1, a5, s0
	li a1, 0x649
	rolw s5, t1, a1
	li s3, 0x3ae
	rolw a7, s5, s3
	li a3, 0x610
	rolw s4, a7, a3
	li s2, 0x799
	rolw a5, s4, s2
	li s7, 0x4ff
	rolw a4, a5, s7
	li s0, 0x5d2
	rolw a6, a4, s0
	li t1, 0x610
	rolw s7, a6, t1
	li t2, 0x3d8
	rolw t1, s7, t2
	li t4, 0x624
	rolw s3, t1, t4
	li a3, 0x4e8
	rolw a7, s3, a3
	li t1, 0x7c7
	rolw a5, a7, t1
	li a3, 0x322
	rolw s2, a5, a3
	li s5, 0x7ea
	rolw a7, s2, s5
	li a4, 0x37
	rolw s8, a7, a4
	li a7, 0x3df
	rolw a4, s8, a7
	li a6, 0x52
	rolw s3, a4, a6
	li s1, 0x5ac
	rolw s1, s3, s1
	li s0, 0x81
	rolw s10, s1, s0
	li a3, 0x12e
	rolw s11, s10, a3
	li s4, 0x9b
	rolw s0, s11, s4
	li a7, 0x7
	rolw t3, s0, a7
	li a7, 0x352
	rolw s2, t3, a7
	li a3, 0x62f
	rolw s9, s2, a3
	li s11, 0x7f9
	rolw a1, s9, s11
	li a0, 0x18
	rolw s0, a1, a0
	li a0, 0x481
	rolw s0, s0, a0
	li s11, 0x7b3
	rolw s8, s0, s11
	li a1, 0x16d
	rolw s7, s8, a1
	li s11, 0x451
	rolw s11, s7, s11
	li a3, 0x41c
	rolw s4, s11, a3
	li s5, 0x496
	rolw t4, s4, s5
	li s9, 0x789
	rolw a5, t4, s9
	li a1, 0x7a0
	rolw a5, a5, a1
	li a2, 0x2b5
	rolw a4, a5, a2
	li t4, 0x6aa
	rolw s11, a4, t4
	li t3, 0x4fc
	rolw s4, s11, t3
	li t4, 0x63
	rolw a7, s4, t4
	li a4, 0x4ff
	rolw a7, a7, a4
	csrr s9, time
	csrr t2, cycle
	csrr a7, instret
	sub a2, s9, t6
	sub s8, t2, s6
	sub a0, a7, t5
	li a2, 0
	csrr s3, time
	csrr t2, cycle
	csrr t4, instret
	li s6, 0x7bb
	rolw a6, a2, s6
	li s4, 0x454
	rolw s5, a6, s4
	li t3, 0x304
	rolw s2, s5, t3
	li s5, 0x3b8
	rolw t3, s2, s5
	li s1, 0x369
	rolw t3, t3, s1
	li s2, 0x311
	rolw a5, t3, s2
	li a4, 0x63c
	rolw a3, a5, a4
	li t1, 0x59a
	rolw s7, a3, t1
	li s0, 0xd1
	rolw a1, s7, s0
	li s9, 0x54c
	rolw s5, a1, s9
	li s6, 0x29
	rolw t5, s5, s6
	li s5, 0x149
	rolw s2, t5, s5
	li s9, 0x323
	rolw s2, s2, s9
	li s0, 0x65e
	rolw s2, s2, s0
	li s11, 0x632
	rolw t3, s2, s11
	li s10, 0x79
	rolw t5, t3, s10
	li t1, 0x4bf
	rolw a5, t5, t1
	li s10, 0x4b2
	rolw s11, a5, s10
	li a3, 0x6cd
	rolw a6, s11, a3
	li s1, 0x2f6
	rolw s2, a6, s1
	li s9, 0x3e
	rolw s4, s2, s9
	li a1, 0x578
	rolw s5, s4, a1
	li a7, 0x385
	rolw s0, s5, a7
	li a4, 0x2e7
	rolw t1, s0, a4
	li s10, 0x5fa
	rolw s11, t1, s10
	li a5, 0x493
	rolw s7, s11, a5
	li t5, 0x2c
	rolw s10, s7, t5
	li s0, 0x390
	rolw t5, s10, s0
	li a6, 0x703
	rolw a5, t5, a6
	li t5, 0x658
	rolw a4, a5, t5
	li s7, 0x526
	rolw s7, a4, s7
	li t5, 0x72a
	rolw a7, s7, t5
	li s9, 0x2d9
	rolw s5, a7, s9
	li s11, 0x353
	rolw t1, s5, s11
	li a2, 0x296
	rolw s4, t1, a2
	li s0, 0x6b9
	rolw a3, s4, s0
	li a5, 0x3be
	rolw s4, a3, a5
	li s10, 0x6e6
	rolw s10, s4, s10
	li s9, 0xa6
	rolw s9, s10, s9
	li t3, 0x389
	rolw s7, s9, t3
	li s10, 0x1e2
	rolw a5, s7, s10
	li a7, 0x285
	rolw a4, a5, a7
	li s6, 0x774
	rolw s10, a4, s6
	li a2, 0x724
	rolw s4, s10, a2
	li a1, 0x697
	rolw a6, s4, a1
	li s2, 0x681
	rolw t1, a6, s2
	li s1, 0x672
	rolw s4, t1, s1
	li a1, 0x2ca
	rolw s11, s4, a1
	li a4, 0x44a
	rolw t1, s11, a4
	li s2, 0x149
	rolw s4, t1, s2
	li a7, 0x47d
	rolw a5, s4, a7
	li t6, 0x4ba
	rolw a1, a5, t6
	li s5, 0x5a
	rolw s10, a1, s5
	li s7, 0x42f
	rolw t5, s10, s7
	li s7, 0x10c
	rolw a7, t5, s7
	li t1, 0x3b8
	rolw s6, a7, t1
	li a3, 0x2d
	rolw s7, s6, a3
	li a7, 0x2e1
	rolw s10, s7, a7
	li s5, 0x38d
	rolw t5, s10, s5
	li s2, 0x8
	rolw s7, t5, s2
	li s4, 0x6a3
	rolw a2, s7, s4
	li s5, 0x5e3
	rolw a3, a2, s5
	li s0, 0x270
	rolw t3, a3, s0
	li s11, 0x712
	rolw a2, t3, s11
	li s1, 0x74d
	rolw a7, a2, s1
	li s0, 0x59c
	rolw s7, a7, s0
	li s9, 0x56f
	rolw a1, s7, s9
	li s0, 0x715
	rolw a3, a1, s0
	li t1, 0x221
	rolw a2, a3, t1
	li s10, 0x5c0
	rolw t5, a2, s10
	li s10, 0x464
	rolw s1, t5, s10
	li s10, 0xc8
	rolw s10, s1, s10
	li a2, 0x73d
	rolw a2, s10, a2
	li s4, 0x32e
	rolw t6, a2, s4
	li a3, 0x64b
	rolw a1, t6, a3
	li s0, 0x73
	rolw s1, a1, s0
	li t6, 0x24d
	rolw a7, s1, t6
	li s10, 0x351
	rolw s11, a7, s10
	li s5, 0x47c
	rolw s2, s11, s5
	li s6, 0x36
	rolw s2, s2, s6
	li a7, 0x2db
	rolw s4, s2, a7
	li s7, 0x3dc
	rolw s4, s4, s7
	li t6, 0x7e3
	rolw a5, s4, t6
	li s5, 0x1f
	rolw t5, a5, s5
	li a1, 0x133
	rolw s1, t5, a1
	li t3, 0x60
	rolw t1, s1, t3
	li s6, 0x53e
	rolw s9, t1, s6
	li a6, 0x40c
	rolw a4, s9, a6
	li s6, 0x4cf
	rolw s5, a4, s6
	li a7, 0x448
	rolw s2, s5, a7
	li s6, 0x4f7
	rolw s11, s2, s6
	li s4, 0x2cf
	rolw s0, s11, s4
	li t3, 0x4f2
	rolw s0, s0, t3
	li a2, 0x6ae
	rolw s11, s0, a2
	li s1, 0x3d2
	rolw a6, s11, s1
	li t1, 0x777
	rolw a3, a6, t1
	li t5, 0x79
	rolw s7, a3, t5
	li s0, 0x4ae
	rolw s6, s7, s0
	li t6, 0x679
	rolw a3, s6, t6
	li s7, 0x442
	rolw s4, a3, s7
	csrr a4, time
	csrr s11, cycle
	csrr s5, instret
	sub s3, a4, s3
	sub a7, s11, t2
	sub a1, s5, t4
	beq s8, a7, pass_label_86
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
pass_label_86:
	beq a0, a1, pass_label_87
	li s10, failed_addr
	ld s2, 0(s10)
	jr s2
pass_label_87:
SID_ZKT_08_ROLW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_RORIW)
SID_ZKT_08_RORIW:
	li sp, SID_ZKT_08_RORIW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a0, 0
	csrr t2, time
	csrr a2, cycle
	csrr t1, instret
	roriw s3, a0, 0x10
	roriw s5, s3, 0x12
	roriw s4, s5, 0xc
	roriw s7, s4, 0x7
	roriw a6, s7, 0x7
	roriw s9, a6, 0x12
	roriw t5, s9, 0x15
	roriw a5, t5, 0x6
	roriw a0, a5, 0xd
	roriw a5, a0, 0x8
	roriw s9, a5, 0x18
	roriw s10, s9, 0x7
	roriw a5, s10, 0x4
	roriw s2, a5, 0x18
	roriw a6, s2, 0x16
	roriw s9, a6, 0x5
	roriw t5, s9, 0x12
	roriw a7, t5, 0x8
	roriw a6, a7, 0x7
	roriw t6, a6, 0x19
	roriw s4, t6, 0xb
	roriw s8, s4, 0xc
	roriw a6, s8, 0x1f
	roriw s11, a6, 0x7
	roriw t5, s11, 0x1d
	roriw t3, t5, 0xd
	roriw t5, t3, 0x1b
	roriw s8, t5, 0x9
	roriw a5, s8, 0xf
	roriw s7, a5, 0x19
	roriw s2, s7, 0xd
	roriw s4, s2, 0x1a
	roriw s0, s4, 0x19
	roriw t5, s0, 0x1b
	roriw a6, t5, 0xc
	roriw a3, a6, 0x4
	roriw s2, a3, 0x17
	roriw s0, s2, 0xf
	roriw s8, s0, 0xa
	roriw s0, s8, 0x6
	roriw a4, s0, 0x9
	roriw s0, a4, 0x8
	roriw s10, s0, 0xd
	roriw t5, s10, 0x12
	roriw a4, t5, 0xb
	roriw s10, a4, 0x14
	roriw s0, s10, 0x1d
	roriw a1, s0, 0x12
	roriw s3, a1, 0x19
	roriw s10, s3, 0x12
	roriw t3, s10, 0x5
	roriw t3, t3, 0x6
	roriw s8, t3, 0xe
	roriw s3, s8, 0x4
	roriw a6, s3, 0x16
	roriw s8, a6, 0x11
	roriw s8, s8, 0x1e
	roriw a5, s8, 0x17
	roriw t6, a5, 0x11
	roriw a0, t6, 0x14
	roriw t3, a0, 0x18
	roriw s1, t3, 0x7
	roriw s8, s1, 0x17
	roriw s5, s8, 0xb
	roriw s10, s5, 0x13
	roriw a4, s10, 0x1e
	roriw s9, a4, 0x13
	roriw t4, s9, 0x12
	roriw s10, t4, 0xf
	roriw s2, s10, 0xd
	roriw a4, s2, 0xa
	roriw a3, a4, 0x8
	roriw s3, a3, 0x14
	roriw s3, s3, 0xf
	roriw s10, s3, 0xe
	roriw s6, s10, 0x17
	roriw s5, s6, 0x13
	roriw s9, s5, 0xf
	roriw s4, s9, 0xe
	roriw a1, s4, 0x16
	roriw s5, a1, 0x9
	roriw s7, s5, 0x1a
	roriw a4, s7, 0x17
	roriw s9, a4, 0x17
	roriw a6, s9, 0x15
	roriw t6, a6, 0x7
	roriw s3, t6, 0x1d
	roriw t6, s3, 0x1a
	roriw a1, t6, 0x19
	roriw s3, a1, 0x18
	roriw s9, s3, 0xf
	roriw a6, s9, 0x14
	roriw s8, a6, 0x16
	roriw s9, s8, 0x1a
	roriw t5, s9, 0x1f
	roriw t5, t5, 0x1a
	roriw s7, t5, 0xa
	roriw a3, s7, 0x7
	roriw s5, a3, 0x14
	roriw s7, s5, 0x7
	csrr a1, time
	csrr t4, cycle
	csrr a0, instret
	sub t5, a1, t2
	sub s6, t4, a2
	sub t4, a0, t1
	li s9, 0
	csrr a5, time
	csrr s0, cycle
	csrr s2, instret
	roriw a6, s9, 0xa
	roriw a3, a6, 0x1e
	roriw t5, a3, 0x11
	roriw s8, t5, 0x10
	roriw s4, s8, 0x15
	roriw s4, s4, 0x13
	roriw s10, s4, 0x1a
	roriw s7, s10, 0x13
	roriw s4, s7, 0x1a
	roriw t1, s4, 0x16
	roriw a3, t1, 0xc
	roriw t1, a3, 0x1c
	roriw t3, t1, 0xd
	roriw s4, t3, 0xe
	roriw t3, s4, 0x4
	roriw t5, t3, 0x1f
	roriw a7, t5, 0x13
	roriw t1, a7, 0x8
	roriw s6, t1, 0x6
	roriw t5, s6, 0xa
	roriw s11, t5, 0x1e
	roriw t4, s11, 0x6
	roriw s1, t4, 0x4
	roriw a6, s1, 0x1e
	roriw a7, a6, 0x13
	roriw t2, a7, 0x8
	roriw a2, t2, 0x18
	roriw s6, a2, 0x17
	roriw s5, s6, 0xe
	roriw s1, s5, 0x5
	roriw s4, s1, 0x5
	roriw a6, s4, 0xc
	roriw s7, a6, 0x13
	roriw s8, s7, 0x1e
	roriw s11, s8, 0x15
	roriw a1, s11, 0x11
	roriw a0, a1, 0xe
	roriw s7, a0, 0x5
	roriw t4, s7, 0x7
	roriw a1, t4, 0x12
	roriw t3, a1, 0x6
	roriw s7, t3, 0x17
	roriw s4, s7, 0x15
	roriw s8, s4, 0xa
	roriw t1, s8, 0xa
	roriw a1, t1, 0x13
	roriw s4, a1, 0x1c
	roriw s10, s4, 0x5
	roriw s3, s10, 0x9
	roriw t4, s3, 0x16
	roriw s5, t4, 0x1f
	roriw t5, s5, 0x6
	roriw s8, t5, 0x6
	roriw s1, s8, 0x18
	roriw t6, s1, 0x19
	roriw t4, t6, 0xd
	roriw t6, t4, 0x16
	roriw t1, t6, 0x10
	roriw a0, t1, 0x9
	roriw s9, a0, 0x7
	roriw a3, s9, 0x12
	roriw s1, a3, 0xa
	roriw a7, s1, 0xa
	roriw a2, a7, 0x1c
	roriw s3, a2, 0xb
	roriw s7, s3, 0xf
	roriw s11, s7, 0x1e
	roriw t3, s11, 0x1f
	roriw t1, t3, 0xa
	roriw s9, t1, 0x1c
	roriw a2, s9, 0xd
	roriw t5, a2, 0x12
	roriw s5, t5, 0x15
	roriw s11, s5, 0x11
	roriw t3, s11, 0x4
	roriw s6, t3, 0xb
	roriw s11, s6, 0x8
	roriw s3, s11, 0x1e
	roriw t5, s3, 0x19
	roriw t4, t5, 0x1f
	roriw t5, t4, 0x13
	roriw s5, t5, 0x13
	roriw s7, s5, 0x6
	roriw s4, s7, 0x1a
	roriw t3, s4, 0xd
	roriw a2, t3, 0xc
	roriw t6, a2, 0xb
	roriw a4, t6, 0x10
	roriw s5, a4, 0x1a
	roriw a0, s5, 0x12
	roriw a7, a0, 0x4
	roriw t2, a7, 0x18
	roriw a1, t2, 0x1b
	roriw t1, a1, 0x9
	roriw s11, t1, 0x1f
	roriw a2, s11, 0x1e
	roriw s1, a2, 0xe
	roriw s9, s1, 0x1a
	roriw a2, s9, 0x18
	roriw t2, a2, 0xe
	csrr t1, time
	csrr t6, cycle
	csrr a1, instret
	sub a4, t1, a5
	sub a0, t6, s0
	sub t5, a1, s2
	li s4, 0
	csrr s0, time
	csrr t2, cycle
	csrr s11, instret
	roriw s2, s4, 0x11
	roriw t4, s2, 0x9
	roriw a6, t4, 0x18
	roriw a2, a6, 0x15
	roriw s6, a2, 0x17
	roriw s1, s6, 0x8
	roriw s10, s1, 0xc
	roriw t1, s10, 0x6
	roriw a5, t1, 0xb
	roriw s4, a5, 0x6
	roriw a7, s4, 0x8
	roriw s9, a7, 0xa
	roriw a4, s9, 0x5
	roriw s6, a4, 0x1c
	roriw s3, s6, 0x1f
	roriw s10, s3, 0xf
	roriw s4, s10, 0x7
	roriw a7, s4, 0x7
	roriw s7, a7, 0x6
	roriw s10, s7, 0x12
	roriw s10, s10, 0x15
	roriw s6, s10, 0x1b
	roriw s8, s6, 0xa
	roriw s1, s8, 0xa
	roriw s9, s1, 0x11
	roriw s10, s9, 0x8
	roriw a7, s10, 0x1c
	roriw t4, a7, 0x8
	roriw s9, t4, 0x13
	roriw s10, s9, 0x3
	roriw s5, s10, 0x17
	roriw s1, s5, 0x1f
	roriw s1, s1, 0x19
	roriw s7, s1, 0x4
	roriw s2, s7, 0x12
	roriw s1, s2, 0xe
	roriw a2, s1, 0x19
	roriw a4, a2, 0x3
	roriw a7, a4, 0x1d
	roriw s7, a7, 0x8
	roriw s6, s7, 0x13
	roriw a3, s6, 0xd
	roriw a4, a3, 0x17
	roriw t3, a4, 0x17
	roriw a5, t3, 0x15
	roriw a6, a5, 0x1a
	roriw s2, a6, 0xa
	roriw a1, s2, 0xc
	roriw t1, a1, 0x7
	roriw a5, t1, 0x6
	roriw a1, a5, 0x1e
	roriw s8, a1, 0x10
	roriw s5, s8, 0x16
	roriw s2, s5, 0x1e
	roriw t6, s2, 0xb
	roriw a1, t6, 0x8
	roriw t4, a1, 0x4
	roriw a3, t4, 0x18
	roriw t3, a3, 0x3
	roriw s5, t3, 0x1c
	roriw s10, s5, 0x15
	roriw s7, s10, 0x8
	roriw t4, s7, 0xd
	roriw a6, t4, 0x6
	roriw a5, a6, 0x4
	roriw s10, a5, 0x4
	roriw s7, s10, 0x13
	roriw t4, s7, 0x16
	roriw s9, t4, 0x7
	roriw s7, s9, 0x6
	roriw a3, s7, 0x12
	roriw s10, a3, 0x1d
	roriw s3, s10, 0x8
	roriw t1, s3, 0x8
	roriw a7, t1, 0x1e
	roriw t6, a7, 0x6
	roriw t4, t6, 0x13
	roriw a3, t4, 0x5
	roriw s5, a3, 0x8
	roriw s7, s5, 0x1e
	roriw s1, s7, 0x7
	roriw s1, s1, 0x1d
	roriw s9, s1, 0x1d
	roriw a1, s9, 0x18
	roriw a6, a1, 0x10
	roriw a1, a6, 0xe
	roriw a7, a1, 0x19
	roriw a4, a7, 0xb
	roriw s1, a4, 0x4
	roriw s9, s1, 0x8
	roriw a3, s9, 0x16
	roriw s9, a3, 0x1e
	roriw s9, s9, 0x1d
	roriw s6, s9, 0xf
	roriw a6, s6, 0x1c
	roriw a3, a6, 0x12
	roriw t4, a3, 0xd
	roriw a7, t4, 0xf
	roriw t1, a7, 0x1c
	roriw a3, t1, 0xc
	csrr s9, time
	csrr s8, cycle
	csrr t6, instret
	sub t1, s9, s0
	sub s8, s8, t2
	sub a4, t6, s11
	beq a0, s8, pass_label_88
	li a2, failed_addr
	ld s5, 0(a2)
	jr s5
pass_label_88:
	beq t5, a4, pass_label_89
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
pass_label_89:
SID_ZKT_08_RORIW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_ANDN)
SID_ZKT_08_ANDN:
	li sp, SID_ZKT_08_ANDN_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s6, 0
	csrr s2, time
	csrr s11, cycle
	csrr t5, instret
	li a3, 0x5c5
	andn a6, s6, a3
	li s6, 0x1b7
	andn s4, a6, s6
	li a4, 0x7ed
	andn a1, s4, a4
	li s6, 0x237
	andn t1, a1, s6
	li s6, 0x4e3
	andn s5, t1, s6
	li a7, 0x7cc
	andn t2, s5, a7
	li a3, 0x5ce
	andn a3, t2, a3
	li s8, 0xf
	andn t4, a3, s8
	li s4, 0x20a
	andn t1, t4, s4
	li s10, 0x5ef
	andn t1, t1, s10
	li s8, 0x4c7
	andn s4, t1, s8
	li t6, 0x33
	andn a7, s4, t6
	li a5, 0x391
	andn s6, a7, a5
	li s8, 0x650
	andn a1, s6, s8
	li s1, 0x474
	andn s3, a1, s1
	li s6, 0x7c4
	andn a0, s3, s6
	li s7, 0x64b
	andn s1, a0, s7
	li a5, 0x348
	andn s7, s1, a5
	li t2, 0x5ff
	andn s10, s7, t2
	li s3, 0x775
	andn a0, s10, s3
	li s0, 0x73b
	andn a7, a0, s0
	li a5, 0x760
	andn s10, a7, a5
	li s4, 0x55f
	andn t3, s10, s4
	li a6, 0x68
	andn t2, t3, a6
	li s9, 0x310
	andn s4, t2, s9
	li s5, 0x322
	andn t6, s4, s5
	li s3, 0x1a7
	andn t2, t6, s3
	li a3, 0x17
	andn a3, t2, a3
	li t1, 0x76b
	andn t3, a3, t1
	li a7, 0x637
	andn s9, t3, a7
	li a0, 0x522
	andn a5, s9, a0
	li s5, 0x6b3
	andn t3, a5, s5
	li t4, 0x2e2
	andn a7, t3, t4
	li s3, 0x7d9
	andn a1, a7, s3
	li a0, 0x759
	andn a4, a1, a0
	li a7, 0x3ec
	andn s9, a4, a7
	li a6, 0x3fe
	andn a2, s9, a6
	li s0, 0x221
	andn a0, a2, s0
	li s1, 0x25
	andn s5, a0, s1
	li t2, 0x2e6
	andn t1, s5, t2
	li s3, 0x16a
	andn s5, t1, s3
	li a7, 0x5eb
	andn a3, s5, a7
	li s4, 0x3b5
	andn s3, a3, s4
	li t2, 0x782
	andn t1, s3, t2
	li t2, 0x702
	andn s9, t1, t2
	li a2, 0x5ce
	andn a0, s9, a2
	li s9, 0x434
	andn a7, a0, s9
	li s10, 0x2ec
	andn s4, a7, s10
	li t2, 0x325
	andn t3, s4, t2
	li s0, 0x754
	andn t2, t3, s0
	li s3, 0x573
	andn s8, t2, s3
	li a6, 0x337
	andn a0, s8, a6
	li s8, 0x24c
	andn s5, a0, s8
	li a4, 0x59b
	andn s6, s5, a4
	li t3, 0x74b
	andn a2, s6, t3
	li s4, 0x7d
	andn a3, a2, s4
	li a6, 0x249
	andn s8, a3, a6
	li t1, 0x4bd
	andn s5, s8, t1
	li s6, 0x18a
	andn s9, s5, s6
	li s0, 0x5dd
	andn t1, s9, s0
	li s10, 0x490
	andn a2, t1, s10
	li t6, 0x7af
	andn a0, a2, t6
	li t3, 0x1ce
	andn a3, a0, t3
	li a0, 0x623
	andn a2, a3, a0
	li a5, 0x10b
	andn a1, a2, a5
	li t2, 0x1ce
	andn t6, a1, t2
	li s1, 0x464
	andn a5, t6, s1
	li t1, 0x224
	andn s6, a5, t1
	li s0, 0x4a9
	andn s3, s6, s0
	li s10, 0x62a
	andn t6, s3, s10
	li a0, 0x729
	andn s1, t6, a0
	li s7, 0x1f2
	andn t3, s1, s7
	li a2, 0x4f6
	andn t6, t3, a2
	li a2, 0x195
	andn t2, t6, a2
	li a6, 0x2f7
	andn t6, t2, a6
	li a1, 0x9e
	andn s7, t6, a1
	li s8, 0xce
	andn s9, s7, s8
	li t1, 0x150
	andn s5, s9, t1
	li a6, 0x188
	andn s7, s5, a6
	li s9, 0x410
	andn t1, s7, s9
	li t6, 0x64b
	andn a5, t1, t6
	li s7, 0x66f
	andn t4, a5, s7
	li s3, 0x94
	andn s0, t4, s3
	li s10, 0x4c6
	andn t6, s0, s10
	li s1, 0x551
	andn s9, t6, s1
	li s8, 0x53f
	andn t1, s9, s8
	li s0, 0x6c9
	andn s10, t1, s0
	li s9, 0x30e
	andn s4, s10, s9
	li s1, 0xeb
	andn a6, s4, s1
	li t1, 0x70e
	andn a1, a6, t1
	li a4, 0x373
	andn s0, a1, a4
	li s3, 0x20d
	andn t3, s0, s3
	li s0, 0x44c
	andn a4, t3, s0
	li t1, 0x5
	andn s9, a4, t1
	li s4, 0x408
	andn s0, s9, s4
	li a4, 0x70d
	andn t2, s0, a4
	li s9, 0xb7
	andn s9, t2, s9
	li t1, 0xe2
	andn t4, s9, t1
	li s9, 0x430
	andn s7, t4, s9
	li a7, 0x469
	andn s8, s7, a7
	csrr s0, time
	csrr s5, cycle
	csrr s9, instret
	sub s4, s0, s2
	sub t3, s5, s11
	sub t2, s9, t5
	li s10, 0
	csrr t5, time
	csrr s1, cycle
	csrr t3, instret
	li a5, 0x2fd
	andn a5, s10, a5
	li s5, 0x322
	andn t4, a5, s5
	li a5, 0x522
	andn s0, t4, a5
	li t1, 0x61b
	andn s5, s0, t1
	li t1, 0x751
	andn s6, s5, t1
	li a3, 0x227
	andn a6, s6, a3
	li s11, 0x56c
	andn s11, a6, s11
	li t6, 0x148
	andn s7, s11, t6
	li t4, 0x561
	andn t1, s7, t4
	li s8, 0x799
	andn a2, t1, s8
	li s2, 0x3b4
	andn t1, a2, s2
	li a3, 0x3c5
	andn s6, t1, a3
	li s10, 0x56d
	andn s8, s6, s10
	li s10, 0x46b
	andn s9, s8, s10
	li s0, 0x477
	andn a4, s9, s0
	li a0, 0xd2
	andn s5, a4, a0
	li t6, 0x314
	andn a3, s5, t6
	li s11, 0x439
	andn t2, a3, s11
	li s11, 0x6ca
	andn a7, t2, s11
	li t4, 0x209
	andn s5, a7, t4
	li s11, 0x60a
	andn s11, s5, s11
	li s8, 0x352
	andn a7, s11, s8
	li t1, 0x380
	andn s10, a7, t1
	li s3, 0x49a
	andn s2, s10, s3
	li t2, 0x2f8
	andn a7, s2, t2
	li s4, 0xc3
	andn a7, a7, s4
	li s11, 0x7a4
	andn a5, a7, s11
	li t6, 0x67
	andn s0, a5, t6
	li s7, 0x254
	andn a2, s0, s7
	li a5, 0x37e
	andn s3, a2, a5
	li s7, 0x475
	andn s7, s3, s7
	li a6, 0x29e
	andn a1, s7, a6
	li s7, 0xcc
	andn s8, a1, s7
	li a7, 0x2da
	andn a4, s8, a7
	li a7, 0x767
	andn s7, a4, a7
	li s8, 0x175
	andn s4, s7, s8
	li s3, 0x41f
	andn s9, s4, s3
	li s5, 0xf8
	andn a1, s9, s5
	li s8, 0x96
	andn s0, a1, s8
	li s6, 0x181
	andn s2, s0, s6
	li a6, 0xfe
	andn a7, s2, a6
	li s6, 0x383
	andn a1, a7, s6
	li s9, 0x2c5
	andn a0, a1, s9
	li a3, 0x598
	andn a6, a0, a3
	li t4, 0x96
	andn a2, a6, t4
	li s3, 0x6f7
	andn s4, a2, s3
	li a2, 0x658
	andn s11, s4, a2
	li a2, 0x6e4
	andn a6, s11, a2
	li s9, 0x53f
	andn a4, a6, s9
	li s10, 0x51b
	andn s2, a4, s10
	li a2, 0x682
	andn a4, s2, a2
	li s3, 0x2b7
	andn a4, a4, s3
	li a6, 0x5c1
	andn a5, a4, a6
	li s3, 0x2a1
	andn s8, a5, s3
	li t1, 0x2a0
	andn s11, s8, t1
	li s6, 0x39f
	andn t6, s11, s6
	li s2, 0x281
	andn s5, t6, s2
	li s9, 0x652
	andn s4, s5, s9
	li s7, 0x474
	andn s10, s4, s7
	li s3, 0x242
	andn a3, s10, s3
	li a4, 0x736
	andn a2, a3, a4
	li s3, 0x255
	andn a1, a2, s3
	li a6, 0x6b6
	andn a0, a1, a6
	li s6, 0x31b
	andn a6, a0, s6
	li a5, 0x2bd
	andn s6, a6, a5
	li a1, 0x1a4
	andn s0, s6, a1
	li a3, 0x4a7
	andn s6, s0, a3
	li a7, 0x14e
	andn a2, s6, a7
	li t6, 0x577
	andn a5, a2, t6
	li s7, 0x718
	andn s2, a5, s7
	li s0, 0x45d
	andn a4, s2, s0
	li s4, 0x543
	andn a7, a4, s4
	li s4, 0x7a1
	andn s7, a7, s4
	li t4, 0x489
	andn s6, s7, t4
	li s9, 0x274
	andn s6, s6, s9
	li s4, 0x48d
	andn s8, s6, s4
	li s2, 0x612
	andn s9, s8, s2
	li t1, 0x729
	andn a2, s9, t1
	li t2, 0x97
	andn s9, a2, t2
	li s5, 0x70a
	andn t2, s9, s5
	li s7, 0x105
	andn t1, t2, s7
	li s9, 0x79a
	andn s11, t1, s9
	li t6, 0x7ce
	andn t6, s11, t6
	li t4, 0x626
	andn s10, t6, t4
	li t1, 0x700
	andn s2, s10, t1
	li s8, 0x26
	andn s8, s2, s8
	li s9, 0x2a2
	andn t6, s8, s9
	li s5, 0x13e
	andn a1, t6, s5
	li s9, 0x363
	andn s0, a1, s9
	li a1, 0x656
	andn s9, s0, a1
	li s8, 0xf9
	andn s2, s9, s8
	li a0, 0x6ea
	andn t2, s2, a0
	li s8, 0x1e6
	andn a1, t2, s8
	li t6, 0x5d7
	andn a7, a1, t6
	li s9, 0x8
	andn s10, a7, s9
	li a2, 0x4f9
	andn a4, s10, a2
	li s3, 0x58a
	andn s9, a4, s3
	li s3, 0x60b
	andn a6, s9, s3
	li a4, 0x78f
	andn t6, a6, a4
	li s3, 0x3f1
	andn a3, t6, s3
	csrr s4, time
	csrr s10, cycle
	csrr t6, instret
	sub s0, s4, t5
	sub s7, s10, s1
	sub t6, t6, t3
	li s3, 0
	csrr s8, time
	csrr s1, cycle
	csrr t1, instret
	li t3, 0x3d9
	andn a5, s3, t3
	li a4, 0x685
	andn a6, a5, a4
	li s5, 0x450
	andn s3, a6, s5
	li s2, 0x496
	andn s0, s3, s2
	li s10, 0x4f8
	andn s0, s0, s10
	li a6, 0x312
	andn t4, s0, a6
	li a7, 0x4cd
	andn s3, t4, a7
	li s10, 0x4c6
	andn s2, s3, s10
	li s5, 0x5d0
	andn s5, s2, s5
	li a2, 0x65d
	andn a5, s5, a2
	li a3, 0x4e4
	andn a2, a5, a3
	li t4, 0x64c
	andn s6, a2, t4
	li t3, 0x104
	andn s3, s6, t3
	li s11, 0x151
	andn s9, s3, s11
	li a3, 0x185
	andn a0, s9, a3
	li a5, 0x63a
	andn s11, a0, a5
	li a6, 0x383
	andn s10, s11, a6
	li a6, 0x690
	andn s2, s10, a6
	li a4, 0x1c3
	andn t4, s2, a4
	li s9, 0x39d
	andn a0, t4, s9
	li s2, 0x715
	andn a3, a0, s2
	li a4, 0x60d
	andn s9, a3, a4
	li s11, 0x220
	andn a3, s9, s11
	li s11, 0xbb
	andn a6, a3, s11
	li a4, 0xd9
	andn s5, a6, a4
	li a0, 0x270
	andn t5, s5, a0
	li s10, 0x4aa
	andn s9, t5, s10
	li a1, 0x52f
	andn s9, s9, a1
	li t5, 0x338
	andn s5, s9, t5
	li a4, 0x6af
	andn t5, s5, a4
	li t4, 0x42d
	andn a4, t5, t4
	li a1, 0x30e
	andn s6, a4, a1
	li s2, 0x286
	andn a3, s6, s2
	li a7, 0x2b9
	andn t4, a3, a7
	li a0, 0x67a
	andn a7, t4, a0
	li t3, 0x1d1
	andn s6, a7, t3
	li s2, 0x763
	andn t3, s6, s2
	li a3, 0x2ce
	andn s5, t3, a3
	li a7, 0x3c6
	andn s4, s5, a7
	li s3, 0x29c
	andn s3, s4, s3
	li a4, 0x6b3
	andn s4, s3, a4
	li a3, 0x5e0
	andn s2, s4, a3
	li s3, 0x433
	andn t5, s2, s3
	li a1, 0x174
	andn s11, t5, a1
	li s2, 0x700
	andn s6, s11, s2
	li s4, 0x19c
	andn t2, s6, s4
	li t5, 0x1ee
	andn a4, t2, t5
	li s9, 0x5cf
	andn s10, a4, s9
	li a4, 0x16b
	andn a7, s10, a4
	li a6, 0xb5
	andn t4, a7, a6
	li s2, 0x93
	andn s3, t4, s2
	li a6, 0x403
	andn s2, s3, a6
	li a0, 0xf8
	andn s10, s2, a0
	li t4, 0x36
	andn a5, s10, t4
	li s4, 0x31c
	andn s2, a5, s4
	li s9, 0x15b
	andn a3, s2, s9
	li s6, 0x478
	andn a4, a3, s6
	li a7, 0x6d6
	andn a7, a4, a7
	li s11, 0x49d
	andn s11, a7, s11
	li s6, 0x674
	andn t3, s11, s6
	li s9, 0x567
	andn s9, t3, s9
	li a5, 0x3ee
	andn s3, s9, a5
	li s10, 0xa3
	andn s2, s3, s10
	li s11, 0x27f
	andn t2, s2, s11
	li a1, 0xe8
	andn s11, t2, a1
	li a3, 0x20b
	andn a4, s11, a3
	li s0, 0x3ff
	andn a0, a4, s0
	li a2, 0x38a
	andn s0, a0, a2
	li a5, 0x5ac
	andn s11, s0, a5
	li t2, 0xf9
	andn a6, s11, t2
	li a2, 0x78a
	andn a3, a6, a2
	li a7, 0x59e
	andn s6, a3, a7
	li t2, 0x58e
	andn a2, s6, t2
	li s0, 0x15f
	andn s9, a2, s0
	li a1, 0x79d
	andn t4, s9, a1
	li t3, 0x797
	andn t3, t4, t3
	li a0, 0x9f
	andn s6, t3, a0
	li a6, 0x54c
	andn a2, s6, a6
	li a6, 0x3d3
	andn s3, a2, a6
	li s2, 0x75a
	andn a4, s3, s2
	li a3, 0x1ff
	andn a7, a4, a3
	li s11, 0x672
	andn a3, a7, s11
	li a5, 0x7b8
	andn s9, a3, a5
	li a0, 0x79d
	andn s5, s9, a0
	li s11, 0x395
	andn s9, s5, s11
	li a5, 0x32e
	andn t4, s9, a5
	li a2, 0x79e
	andn s6, t4, a2
	li s2, 0x297
	andn t4, s6, s2
	li s2, 0x7c7
	andn s11, t4, s2
	li a1, 0x25d
	andn a4, s11, a1
	li a0, 0x3bb
	andn s0, a4, a0
	li a4, 0x35a
	andn t3, s0, a4
	li a4, 0x426
	andn a2, t3, a4
	li s9, 0x79a
	andn t4, a2, s9
	li a7, 0x48f
	andn a5, t4, a7
	li s3, 0x494
	andn a1, a5, s3
	li a5, 0x77d
	andn t5, a1, a5
	li a4, 0x6ef
	andn s0, t5, a4
	li s10, 0x3f5
	andn a7, s0, s10
	li t3, 0x43f
	andn s3, a7, t3
	csrr s6, time
	csrr t5, cycle
	csrr a0, instret
	sub a2, s6, s8
	sub a7, t5, s1
	sub a5, a0, t1
	beq s7, a7, pass_label_90
	li t4, failed_addr
	ld s7, 0(t4)
	jr s7
pass_label_90:
	beq t6, a5, pass_label_91
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
pass_label_91:
SID_ZKT_08_ANDN_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_ORN)
SID_ZKT_08_ORN:
	li sp, SID_ZKT_08_ORN_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t1, 0
	csrr s0, time
	csrr a3, cycle
	csrr s1, instret
	li t3, 0x3c5
	orn s7, t1, t3
	li t3, 0x4c
	orn s4, s7, t3
	li a0, 0x782
	orn a4, s4, a0
	li s10, 0x29f
	orn t2, a4, s10
	li t6, 0x4
	orn t1, t2, t6
	li s5, 0x218
	orn s2, t1, s5
	li t1, 0x4be
	orn s4, s2, t1
	li s10, 0x107
	orn s8, s4, s10
	li a4, 0x2f0
	orn t1, s8, a4
	li a0, 0x63e
	orn a0, t1, a0
	li s5, 0x1ea
	orn s11, a0, s5
	li a7, 0x506
	orn s7, s11, a7
	li s2, 0x1b8
	orn t4, s7, s2
	li s6, 0x127
	orn a2, t4, s6
	li a6, 0x6f4
	orn a7, a2, a6
	li s4, 0x454
	orn s7, a7, s4
	li t2, 0x52a
	orn s6, s7, t2
	li t5, 0x218
	orn a0, s6, t5
	li s4, 0x142
	orn s7, a0, s4
	li s9, 0x67
	orn t5, s7, s9
	li t6, 0x5d4
	orn s6, t5, t6
	li t4, 0x716
	orn a2, s6, t4
	li t2, 0x6fb
	orn t4, a2, t2
	li s7, 0x560
	orn s9, t4, s7
	li s11, 0xa7
	orn s6, s9, s11
	li t3, 0x1e5
	orn s4, s6, t3
	li t4, 0x3f5
	orn t3, s4, t4
	li s4, 0x321
	orn a4, t3, s4
	li t6, 0x726
	orn a7, a4, t6
	li t4, 0x350
	orn s9, a7, t4
	li a0, 0x40
	orn s8, s9, a0
	li a0, 0x126
	orn t2, s8, a0
	li s7, 0x702
	orn a0, t2, s7
	li s6, 0x792
	orn s10, a0, s6
	li t6, 0x40b
	orn s10, s10, t6
	li s6, 0x463
	orn a1, s10, s6
	li s6, 0x683
	orn s2, a1, s6
	li t3, 0x157
	orn a4, s2, t3
	li t1, 0x1ef
	orn s6, a4, t1
	li t2, 0x1ca
	orn t3, s6, t2
	li a1, 0x4c8
	orn s2, t3, a1
	li s6, 0x3b8
	orn s10, s2, s6
	li s9, 0x3b6
	orn a0, s10, s9
	li s11, 0x783
	orn a7, a0, s11
	li s5, 0x465
	orn s2, a7, s5
	li s3, 0x634
	orn a5, s2, s3
	li s3, 0x63a
	orn s11, a5, s3
	li a2, 0x792
	orn t3, s11, a2
	li t5, 0x22f
	orn s5, t3, t5
	li t5, 0x1a2
	orn a2, s5, t5
	li a0, 0x739
	orn t5, a2, a0
	li s11, 0x355
	orn s11, t5, s11
	li a0, 0x3dd
	orn s2, s11, a0
	li s7, 0x28f
	orn s3, s2, s7
	li t3, 0xa3
	orn a4, s3, t3
	li s9, 0x7d
	orn s4, a4, s9
	li a4, 0x216
	orn t3, s4, a4
	li a0, 0x7e1
	orn t1, t3, a0
	li s8, 0x503
	orn s3, t1, s8
	li s9, 0x10b
	orn a5, s3, s9
	li s7, 0xea
	orn a5, a5, s7
	li t4, 0x5cd
	orn t4, a5, t4
	li t5, 0x3c0
	orn t6, t4, t5
	li a0, 0x410
	orn s6, t6, a0
	li s10, 0x525
	orn t2, s6, s10
	li s11, 0x165
	orn a2, t2, s11
	li s8, 0x5d6
	orn a4, a2, s8
	li t4, 0x63f
	orn s10, a4, t4
	li t6, 0x7bd
	orn s5, s10, t6
	li t1, 0x738
	orn t2, s5, t1
	li s6, 0x606
	orn a5, t2, s6
	li a4, 0x301
	orn a5, a5, a4
	li a1, 0x6c4
	orn t1, a5, a1
	li s10, 0x648
	orn t1, t1, s10
	li t2, 0x396
	orn t1, t1, t2
	li t2, 0x451
	orn t1, t1, t2
	li a2, 0x4ea
	orn a7, t1, a2
	li t4, 0x466
	orn t3, a7, t4
	li a2, 0x530
	orn s5, t3, a2
	li s3, 0x7f5
	orn s5, s5, s3
	li a0, 0x50f
	orn s6, s5, a0
	li t2, 0x4d3
	orn s9, s6, t2
	li s4, 0x237
	orn s3, s9, s4
	li a4, 0x211
	orn a5, s3, a4
	li a6, 0x7eb
	orn s2, a5, a6
	li t1, 0x6e0
	orn t3, s2, t1
	li s5, 0x6c6
	orn s10, t3, s5
	li a2, 0x2ee
	orn s6, s10, a2
	li a5, 0x2d
	orn s6, s6, a5
	li a4, 0x7e8
	orn a4, s6, a4
	li s5, 0x288
	orn a0, a4, s5
	li t4, 0x2d0
	orn s2, a0, t4
	li a7, 0xd3
	orn t6, s2, a7
	li s9, 0x1e1
	orn s8, t6, s9
	li t1, 0x21f
	orn s7, s8, t1
	li t2, 0x5b
	orn t3, s7, t2
	li a6, 0x468
	orn t3, t3, a6
	li a0, 0x7ec
	orn a4, t3, a0
	li a5, 0x6f7
	orn s3, a4, a5
	li s7, 0x25e
	orn a5, s3, s7
	csrr s6, time
	csrr s9, cycle
	csrr t4, instret
	sub s2, s6, s0
	sub s11, s9, a3
	sub s4, t4, s1
	li a1, 0
	csrr a7, time
	csrr t5, cycle
	csrr s0, instret
	li a6, 0x6b8
	orn a3, a1, a6
	li s1, 0x63d
	orn s3, a3, s1
	li s2, 0x708
	orn s3, s3, s2
	li s10, 0x173
	orn t4, s3, s10
	li a4, 0x445
	orn t4, t4, a4
	li a6, 0x6b7
	orn a1, t4, a6
	li t2, 0x7f1
	orn a3, a1, t2
	li t2, 0x568
	orn a1, a3, t2
	li s4, 0x7d1
	orn a0, a1, s4
	li s6, 0x6df
	orn a1, a0, s6
	li t1, 0x3ed
	orn s5, a1, t1
	li t1, 0x37f
	orn s9, s5, t1
	li t2, 0x139
	orn s2, s9, t2
	li t2, 0x1c2
	orn s3, s2, t2
	li a0, 0x34a
	orn s5, s3, a0
	li s2, 0x667
	orn s9, s5, s2
	li a5, 0x747
	orn t3, s9, a5
	li a4, 0x2a9
	orn t1, t3, a4
	li a4, 0x6b
	orn a1, t1, a4
	li s11, 0x1fb
	orn s5, a1, s11
	li s1, 0x34d
	orn s8, s5, s1
	li t2, 0x355
	orn s4, s8, t2
	li a4, 0x552
	orn s4, s4, a4
	li s11, 0x3c5
	orn a6, s4, s11
	li s9, 0x46b
	orn s7, a6, s9
	li a6, 0x525
	orn a6, s7, a6
	li s1, 0x119
	orn s4, a6, s1
	li a0, 0x4b
	orn s4, s4, a0
	li a3, 0x4a0
	orn s4, s4, a3
	li a5, 0x24f
	orn s10, s4, a5
	li s7, 0xa7
	orn t1, s10, s7
	li a2, 0x158
	orn t3, t1, a2
	li s10, 0x70d
	orn a0, t3, s10
	li t6, 0x738
	orn a5, a0, t6
	li s7, 0x5dc
	orn a6, a5, s7
	li s5, 0x2bd
	orn t6, a6, s5
	li s9, 0x126
	orn s5, t6, s9
	li s6, 0x39a
	orn s4, s5, s6
	li s5, 0x36f
	orn a4, s4, s5
	li s6, 0x503
	orn a1, a4, s6
	li s7, 0xd6
	orn t4, a1, s7
	li t1, 0x587
	orn s7, t4, t1
	li s5, 0x42a
	orn s6, s7, s5
	li a0, 0x1d4
	orn s10, s6, a0
	li s5, 0x85
	orn s10, s10, s5
	li t2, 0x18f
	orn s5, s10, t2
	li t4, 0x7df
	orn s1, s5, t4
	li s5, 0x1a3
	orn a4, s1, s5
	li a3, 0x47e
	orn a1, a4, a3
	li t1, 0x30f
	orn s11, a1, t1
	li s4, 0x55f
	orn s6, s11, s4
	li t3, 0x17b
	orn a0, s6, t3
	li a5, 0x56f
	orn s8, a0, a5
	li s5, 0xbb
	orn a5, s8, s5
	li a2, 0x1a2
	orn s10, a5, a2
	li s5, 0x11b
	orn a6, s10, s5
	li t3, 0x6c5
	orn s10, a6, t3
	li a0, 0x507
	orn a6, s10, a0
	li s3, 0x12b
	orn s1, a6, s3
	li a0, 0x56f
	orn s4, s1, a0
	li t1, 0x169
	orn a2, s4, t1
	li t4, 0x1db
	orn s3, a2, t4
	li s8, 0x10b
	orn s6, s3, s8
	li s3, 0x445
	orn a2, s6, s3
	li s11, 0x6bd
	orn t3, a2, s11
	li s7, 0x658
	orn s4, t3, s7
	li s8, 0x4e3
	orn a2, s4, s8
	li s3, 0x616
	orn s6, a2, s3
	li a5, 0x52f
	orn s6, s6, a5
	li s1, 0x4ee
	orn a1, s6, s1
	li s4, 0x19c
	orn s5, a1, s4
	li t1, 0x659
	orn t1, s5, t1
	li s11, 0x380
	orn s10, t1, s11
	li s8, 0x1b7
	orn a6, s10, s8
	li a3, 0x41a
	orn a4, a6, a3
	li s9, 0x4bf
	orn s1, a4, s9
	li t3, 0x320
	orn a4, s1, t3
	li s11, 0x744
	orn a0, a4, s11
	li a4, 0x4a3
	orn t1, a0, a4
	li a1, 0x74c
	orn t6, t1, a1
	li s10, 0x3e3
	orn s9, t6, s10
	li s8, 0x2b0
	orn a2, s9, s8
	li s9, 0x2b6
	orn t3, a2, s9
	li s8, 0x593
	orn s1, t3, s8
	li s11, 0x1d
	orn a6, s1, s11
	li t3, 0x78d
	orn s6, a6, t3
	li s9, 0x49f
	orn s6, s6, s9
	li a5, 0xee
	orn a2, s6, a5
	li a1, 0x1ea
	orn s6, a2, a1
	li s9, 0x347
	orn a6, s6, s9
	li t1, 0x142
	orn a2, a6, t1
	li t1, 0x2c1
	orn s3, a2, t1
	li s9, 0x40c
	orn s8, s3, s9
	li a1, 0x4c6
	orn s5, s8, a1
	li s3, 0x366
	orn s9, s5, s3
	li a4, 0xb5
	orn a0, s9, a4
	li s5, 0x3e4
	orn a0, a0, s5
	li s5, 0xc8
	orn s11, a0, s5
	li s3, 0x26f
	orn a6, s11, s3
	li s4, 0x275
	orn t2, a6, s4
	csrr a4, time
	csrr t3, cycle
	csrr a1, instret
	sub t6, a4, a7
	sub t5, t3, t5
	sub a2, a1, s0
	li s9, 0
	csrr t6, time
	csrr s6, cycle
	csrr a1, instret
	li t3, 0x2db
	orn s5, s9, t3
	li a4, 0x680
	orn s4, s5, a4
	li t4, 0x32c
	orn a7, s4, t4
	li t2, 0x367
	orn s8, a7, t2
	li s0, 0x79a
	orn a0, s8, s0
	li t4, 0x63c
	orn t4, a0, t4
	li s9, 0x224
	orn s5, t4, s9
	li s11, 0x570
	orn a7, s5, s11
	li a5, 0x79d
	orn s10, a7, a5
	li s5, 0x649
	orn t4, s10, s5
	li s7, 0x5d2
	orn s0, t4, s7
	li t2, 0x680
	orn s11, s0, t2
	li t1, 0x471
	orn t2, s11, t1
	li a4, 0x6be
	orn a7, t2, a4
	li a4, 0x71e
	orn t2, a7, a4
	li s7, 0x284
	orn a7, t2, s7
	li t1, 0x4d9
	orn s1, a7, t1
	li t3, 0x44a
	orn s8, s1, t3
	li s3, 0x1e9
	orn s5, s8, s3
	li t4, 0x6f2
	orn s10, s5, t4
	li s3, 0x1c3
	orn s8, s10, s3
	li s1, 0x56a
	orn s5, s8, s1
	li s4, 0x5b8
	orn s11, s5, s4
	li s3, 0x40c
	orn s3, s11, s3
	li s0, 0x376
	orn s2, s3, s0
	li a0, 0x27f
	orn t2, s2, a0
	li t3, 0x45b
	orn s3, t2, t3
	li s5, 0x2f7
	orn t1, s3, s5
	li s5, 0x499
	orn s0, t1, s5
	li s8, 0x7f3
	orn s0, s0, s8
	li s7, 0x758
	orn t2, s0, s7
	li t3, 0x18b
	orn s5, t2, t3
	li a0, 0x66f
	orn t1, s5, a0
	li s3, 0x65d
	orn t2, t1, s3
	li a3, 0x2e2
	orn a6, t2, a3
	li s8, 0xdf
	orn t1, a6, s8
	li s2, 0x6b4
	orn s2, t1, s2
	li a6, 0x86
	orn s7, s2, a6
	li t2, 0x26d
	orn s2, s7, t2
	li t3, 0x2eb
	orn s1, s2, t3
	li t3, 0x71f
	orn s2, s1, t3
	li a6, 0x5e2
	orn s11, s2, a6
	li a0, 0x5c8
	orn t2, s11, a0
	li s9, 0x3c9
	orn s3, t2, s9
	li s2, 0x7e3
	orn a0, s3, s2
	li a3, 0x408
	orn s11, a0, a3
	li t2, 0x64a
	orn t1, s11, t2
	li a4, 0x6df
	orn a7, t1, a4
	li a5, 0x1ed
	orn a3, a7, a5
	li a4, 0x324
	orn s4, a3, a4
	li a0, 0x6f3
	orn s11, s4, a0
	li s1, 0x26c
	orn s4, s11, s1
	li s1, 0x796
	orn a7, s4, s1
	li s5, 0x462
	orn s3, a7, s5
	li s11, 0x78b
	orn t3, s3, s11
	li a4, 0x5f5
	orn s4, t3, a4
	li s11, 0x270
	orn s5, s4, s11
	li a7, 0x7c6
	orn s11, s5, a7
	li a5, 0x1c6
	orn t1, s11, a5
	li s11, 0x32d
	orn s0, t1, s11
	li s1, 0x6ef
	orn s3, s0, s1
	li s7, 0x5ff
	orn t1, s3, s7
	li a5, 0x6af
	orn s3, t1, a5
	li s8, 0x6e0
	orn s0, s3, s8
	li t1, 0x535
	orn s3, s0, t1
	li a4, 0x92
	orn s9, s3, a4
	li s8, 0x7ac
	orn t3, s9, s8
	li a7, 0x4af
	orn s2, t3, a7
	li s1, 0x475
	orn s11, s2, s1
	li s0, 0x381
	orn s9, s11, s0
	li s7, 0x6cb
	orn t4, s9, s7
	li s5, 0x11f
	orn s4, t4, s5
	li a6, 0x194
	orn s3, s4, a6
	li s9, 0x7e6
	orn s7, s3, s9
	li a3, 0x752
	orn a7, s7, a3
	li s10, 0x74
	orn a7, a7, s10
	li a6, 0x663
	orn s2, a7, a6
	li a7, 0x4
	orn s7, s2, a7
	li s2, 0x4db
	orn s0, s7, s2
	li a7, 0x74f
	orn s2, s0, a7
	li s7, 0x6c1
	orn a3, s2, s7
	li t3, 0x64d
	orn t3, a3, t3
	li s8, 0x257
	orn s11, t3, s8
	li s10, 0x700
	orn s8, s11, s10
	li t3, 0xe0
	orn s2, s8, t3
	li s7, 0x6ed
	orn s11, s2, s7
	li a3, 0x627
	orn s0, s11, a3
	li s2, 0x728
	orn s0, s0, s2
	li s10, 0x4c6
	orn a6, s0, s10
	li s2, 0x3b3
	orn t2, a6, s2
	li t3, 0x4a5
	orn t2, t2, t3
	li s7, 0x7f8
	orn s7, t2, s7
	li s10, 0x285
	orn s8, s7, s10
	li t3, 0x209
	orn a0, s8, t3
	li s3, 0x4cd
	orn s11, a0, s3
	li a5, 0x1c5
	orn s7, s11, a5
	li t1, 0x11e
	orn s0, s7, t1
	li s4, 0x4ed
	orn s11, s0, s4
	li a6, 0x135
	orn t3, s11, a6
	li s8, 0x1dc
	orn a0, t3, s8
	csrr a4, time
	csrr t4, cycle
	csrr s4, instret
	sub s10, a4, t6
	sub s1, t4, s6
	sub s10, s4, a1
	beq t5, s1, pass_label_92
	li t5, failed_addr
	ld t5, 0(t5)
	jr t5
pass_label_92:
	beq a2, s10, pass_label_93
	li s1, failed_addr
	ld a6, 0(s1)
	jr a6
pass_label_93:
SID_ZKT_08_ORN_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_XNOR)
SID_ZKT_08_XNOR:
	li sp, SID_ZKT_08_XNOR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a5, 0
	csrr s0, time
	csrr t3, cycle
	csrr s3, instret
	li a2, 0x3fb
	xnor t1, a5, a2
	li s1, 0x1e8
	xnor t1, t1, s1
	li s6, 0x17
	xnor s7, t1, s6
	li s6, 0x33
	xnor t5, s7, s6
	li t1, 0x7b0
	xnor s6, t5, t1
	li t2, 0x73d
	xnor s11, s6, t2
	li a1, 0x4f0
	xnor a1, s11, a1
	li s9, 0x4af
	xnor s5, a1, s9
	li s8, 0x47d
	xnor s11, s5, s8
	li t1, 0x4ba
	xnor s7, s11, t1
	li s5, 0x3b3
	xnor s4, s7, s5
	li s8, 0x196
	xnor s11, s4, s8
	li s7, 0x5d2
	xnor t6, s11, s7
	li s2, 0x52b
	xnor t5, t6, s2
	li a5, 0x21f
	xnor s8, t5, a5
	li a7, 0x132
	xnor t4, s8, a7
	li s8, 0x7fd
	xnor s10, t4, s8
	li s1, 0x627
	xnor a5, s10, s1
	li t4, 0x5af
	xnor s9, a5, t4
	li s2, 0x7fa
	xnor t5, s9, s2
	li t1, 0x529
	xnor a3, t5, t1
	li a7, 0x7ba
	xnor s5, a3, a7
	li t4, 0x406
	xnor s2, s5, t4
	li a0, 0x430
	xnor s11, s2, a0
	li a6, 0x750
	xnor a3, s11, a6
	li s6, 0x5d0
	xnor a5, a3, s6
	li a3, 0x1ea
	xnor a0, a5, a3
	li s8, 0x65
	xnor a6, a0, s8
	li s5, 0x164
	xnor s11, a6, s5
	li a1, 0x724
	xnor t6, s11, a1
	li s2, 0xac
	xnor s11, t6, s2
	li a4, 0x44d
	xnor a3, s11, a4
	li s9, 0x7eb
	xnor s8, a3, s9
	li s10, 0x83
	xnor t2, s8, s10
	li s4, 0x713
	xnor s11, t2, s4
	li t5, 0x234
	xnor a1, s11, t5
	li t6, 0xd2
	xnor t6, a1, t6
	li s7, 0x53a
	xnor a2, t6, s7
	li t5, 0x15
	xnor s6, a2, t5
	li t4, 0x372
	xnor t1, s6, t4
	li a6, 0xfe
	xnor t6, t1, a6
	li a7, 0x416
	xnor t1, t6, a7
	li t6, 0x25
	xnor a5, t1, t6
	li t5, 0xff
	xnor s7, a5, t5
	li s11, 0x493
	xnor a7, s7, s11
	li s2, 0x6fe
	xnor s1, a7, s2
	li a7, 0x174
	xnor t2, s1, a7
	li a6, 0x511
	xnor s4, t2, a6
	li s6, 0x4a4
	xnor s7, s4, s6
	li a5, 0x5c9
	xnor a5, s7, a5
	li a7, 0x199
	xnor a2, a5, a7
	li a7, 0x1d4
	xnor t4, a2, a7
	li s7, 0x89
	xnor s11, t4, s7
	li t2, 0x48
	xnor t2, s11, t2
	li s9, 0x3c0
	xnor a1, t2, s9
	li a3, 0x134
	xnor t4, a1, a3
	li t1, 0xd1
	xnor s7, t4, t1
	li s1, 0x16e
	xnor a4, s7, s1
	li a2, 0x2c8
	xnor s6, a4, a2
	li a2, 0x78f
	xnor a2, s6, a2
	li s4, 0x6a3
	xnor a7, a2, s4
	li s7, 0x7bb
	xnor s11, a7, s7
	li s7, 0x378
	xnor t2, s11, s7
	li a3, 0x7d5
	xnor a6, t2, a3
	li a2, 0x423
	xnor t5, a6, a2
	li a4, 0x2eb
	xnor s5, t5, a4
	li a5, 0x3e1
	xnor a2, s5, a5
	li a3, 0xdf
	xnor a4, a2, a3
	li a2, 0x568
	xnor s9, a4, a2
	li a5, 0x528
	xnor t2, s9, a5
	li t5, 0x7a6
	xnor t2, t2, t5
	li a3, 0x3c0
	xnor s7, t2, a3
	li a3, 0xda
	xnor s2, s7, a3
	li s10, 0x640
	xnor s2, s2, s10
	li t5, 0x27e
	xnor a4, s2, t5
	li s7, 0xcb
	xnor t4, a4, s7
	li s1, 0x73a
	xnor t5, t4, s1
	li s11, 0x36a
	xnor s7, t5, s11
	li t5, 0x42a
	xnor s9, s7, t5
	li a5, 0x15a
	xnor s7, s9, a5
	li a7, 0x6da
	xnor s5, s7, a7
	li t1, 0x1b0
	xnor a6, s5, t1
	li t4, 0x7a2
	xnor a4, a6, t4
	li s5, 0x7d7
	xnor a4, a4, s5
	li t4, 0x4cf
	xnor t1, a4, t4
	li s1, 0x238
	xnor a5, t1, s1
	li a3, 0x472
	xnor a1, a5, a3
	li a6, 0x572
	xnor t4, a1, a6
	li s7, 0x1d9
	xnor t6, t4, s7
	li t2, 0xd7
	xnor s7, t6, t2
	li t6, 0x1af
	xnor a1, s7, t6
	li a3, 0x22c
	xnor a7, a1, a3
	li t5, 0x43f
	xnor s10, a7, t5
	li s4, 0x126
	xnor s11, s10, s4
	li t6, 0x41
	xnor a3, s11, t6
	li a6, 0x347
	xnor s8, a3, a6
	li a0, 0x58e
	xnor s10, s8, a0
	li a7, 0x2cd
	xnor a5, s10, a7
	li s10, 0x6f2
	xnor a3, a5, s10
	li t2, 0x77c
	xnor a6, a3, t2
	csrr s10, time
	csrr s6, cycle
	csrr a2, instret
	sub s8, s10, s0
	sub a6, s6, t3
	sub s11, a2, s3
	li t5, 0
	csrr a5, time
	csrr a3, cycle
	csrr s5, instret
	li a0, 0x492
	xnor s4, t5, a0
	li t6, 0x329
	xnor s11, s4, t6
	li s6, 0x94
	xnor a4, s11, s6
	li s8, 0x54f
	xnor t4, a4, s8
	li t2, 0x5a3
	xnor a4, t4, t2
	li t1, 0x28
	xnor a7, a4, t1
	li t2, 0xf
	xnor t3, a7, t2
	li a7, 0x1b0
	xnor s3, t3, a7
	li t6, 0x5c2
	xnor s1, s3, t6
	li s2, 0x409
	xnor t3, s1, s2
	li a4, 0x1cd
	xnor s9, t3, a4
	li t3, 0x434
	xnor a7, s9, t3
	li s6, 0x302
	xnor a2, a7, s6
	li s1, 0x3a2
	xnor a4, a2, s1
	li s2, 0x6b2
	xnor t1, a4, s2
	li s11, 0x6c5
	xnor a0, t1, s11
	li t1, 0x444
	xnor s0, a0, t1
	li t3, 0x5d6
	xnor t2, s0, t3
	li s3, 0x71c
	xnor s1, t2, s3
	li s4, 0x780
	xnor a6, s1, s4
	li a0, 0x2ca
	xnor t4, a6, a0
	li a7, 0x36c
	xnor a6, t4, a7
	li t1, 0x248
	xnor a6, a6, t1
	li t5, 0x560
	xnor s10, a6, t5
	li s6, 0x7bd
	xnor a2, s10, s6
	li t1, 0x63b
	xnor a0, a2, t1
	li s3, 0x1e9
	xnor a7, a0, s3
	li s1, 0x30a
	xnor a4, a7, s1
	li t5, 0x3da
	xnor t4, a4, t5
	li s7, 0x596
	xnor t1, t4, s7
	li s4, 0xf1
	xnor s7, t1, s4
	li a6, 0x703
	xnor s9, s7, a6
	li s11, 0x3f9
	xnor a7, s9, s11
	li a0, 0x4da
	xnor a2, a7, a0
	li a1, 0x5e5
	xnor s3, a2, a1
	li s1, 0x4d0
	xnor a2, s3, s1
	li t2, 0x7a2
	xnor a0, a2, t2
	li a4, 0x271
	xnor s9, a0, a4
	li t2, 0xab
	xnor t5, s9, t2
	li s1, 0x45f
	xnor t2, t5, s1
	li t4, 0x2bd
	xnor t4, t2, t4
	li s9, 0x3ce
	xnor t6, t4, s9
	li t3, 0x4c
	xnor a4, t6, t3
	li s2, 0x702
	xnor s3, a4, s2
	li a4, 0x426
	xnor a0, s3, a4
	li t5, 0x788
	xnor a4, a0, t5
	li s10, 0x67c
	xnor a6, a4, s10
	li s6, 0x53
	xnor t1, a6, s6
	li s3, 0xb4
	xnor s0, t1, s3
	li s11, 0x7cc
	xnor t6, s0, s11
	li s7, 0x1c1
	xnor a2, t6, s7
	li s11, 0x30f
	xnor s10, a2, s11
	li t4, 0x61c
	xnor a2, s10, t4
	li a0, 0x56f
	xnor t3, a2, a0
	li s4, 0x69e
	xnor s0, t3, s4
	li a1, 0x3f6
	xnor a2, s0, a1
	li s6, 0x285
	xnor s4, a2, s6
	li t4, 0x5ff
	xnor s9, s4, t4
	li t1, 0x405
	xnor s9, s9, t1
	li s0, 0x69f
	xnor a2, s9, s0
	li s11, 0x6ac
	xnor a0, a2, s11
	li s0, 0x9f
	xnor a2, a0, s0
	li t6, 0x44e
	xnor t4, a2, t6
	li t6, 0x638
	xnor a7, t4, t6
	li a4, 0x70b
	xnor t1, a7, a4
	li s0, 0x687
	xnor a1, t1, s0
	li t4, 0x414
	xnor t6, a1, t4
	li t3, 0x52
	xnor s2, t6, t3
	li a6, 0x2d5
	xnor t4, s2, a6
	li a6, 0x205
	xnor a1, t4, a6
	li a6, 0x6c8
	xnor t1, a1, a6
	li t4, 0x446
	xnor t2, t1, t4
	li s2, 0x3b4
	xnor a1, t2, s2
	li s2, 0x341
	xnor s7, a1, s2
	li a6, 0x7cf
	xnor t5, s7, a6
	li a7, 0x513
	xnor s9, t5, a7
	li s2, 0x242
	xnor s2, s9, s2
	li s4, 0x1a8
	xnor t5, s2, s4
	li t1, 0x6b2
	xnor t5, t5, t1
	li s11, 0x52a
	xnor a2, t5, s11
	li s1, 0x371
	xnor t1, a2, s1
	li s0, 0x35c
	xnor t2, t1, s0
	li t6, 0x714
	xnor s4, t2, t6
	li s3, 0x3c
	xnor s6, s4, s3
	li t1, 0x20e
	xnor s0, s6, t1
	li a4, 0x347
	xnor s7, s0, a4
	li s2, 0x435
	xnor s9, s7, s2
	li a4, 0x4db
	xnor t2, s9, a4
	li t4, 0x1ec
	xnor s1, t2, t4
	li t2, 0x6ff
	xnor t4, s1, t2
	li s7, 0x7e4
	xnor s9, t4, s7
	li t3, 0x622
	xnor t3, s9, t3
	li s10, 0x3d0
	xnor t3, t3, s10
	li a0, 0x4ac
	xnor s9, t3, a0
	li t6, 0xea
	xnor a4, s9, t6
	li s10, 0x11d
	xnor a2, a4, s10
	li s9, 0x4b7
	xnor t6, a2, s9
	li s1, 0x464
	xnor s2, t6, s1
	li s1, 0x639
	xnor s3, s2, s1
	li a4, 0x44d
	xnor s2, s3, a4
	csrr s6, time
	csrr s11, cycle
	csrr a2, instret
	sub a1, s6, a5
	sub s7, s11, a3
	sub a6, a2, s5
	li t4, 0
	csrr s1, time
	csrr s0, cycle
	csrr t1, instret
	li s5, 0x23b
	xnor s2, t4, s5
	li t5, 0xa0
	xnor t6, s2, t5
	li t3, 0x34a
	xnor s11, t6, t3
	li a7, 0x5a9
	xnor s3, s11, a7
	li a7, 0x178
	xnor a5, s3, a7
	li t2, 0x6aa
	xnor s9, a5, t2
	li s4, 0x7f5
	xnor a1, s9, s4
	li t3, 0x439
	xnor t2, a1, t3
	li t5, 0x5a
	xnor a1, t2, t5
	li s3, 0x1cd
	xnor a7, a1, s3
	li s8, 0x510
	xnor a3, a7, s8
	li a2, 0x142
	xnor s8, a3, a2
	li s2, 0x61b
	xnor s4, s8, s2
	li s8, 0x6d
	xnor s5, s4, s8
	li t2, 0x20b
	xnor s11, s5, t2
	li a5, 0x32e
	xnor a0, s11, a5
	li s10, 0x5c7
	xnor a2, a0, s10
	li t6, 0x5ae
	xnor t5, a2, t6
	li s9, 0x2b8
	xnor s11, t5, s9
	li t5, 0x7cf
	xnor s10, s11, t5
	li s5, 0x645
	xnor t2, s10, s5
	li t4, 0x236
	xnor s8, t2, t4
	li t3, 0x6da
	xnor a1, s8, t3
	li s4, 0x65
	xnor a4, a1, s4
	li s11, 0x535
	xnor t4, a4, s11
	li a1, 0x47c
	xnor s2, t4, a1
	li a0, 0x60
	xnor a0, s2, a0
	li s5, 0x464
	xnor s3, a0, s5
	li t2, 0xab
	xnor t2, s3, t2
	li t3, 0x6db
	xnor s10, t2, t3
	li t4, 0x6d3
	xnor a5, s10, t4
	li s11, 0x318
	xnor s8, a5, s11
	li s4, 0x1c2
	xnor a2, s8, s4
	li s8, 0x68c
	xnor s2, a2, s8
	li a2, 0x103
	xnor a0, s2, a2
	li s5, 0x3f3
	xnor s8, a0, s5
	li t3, 0x4de
	xnor t3, s8, t3
	li t5, 0x24a
	xnor s4, t3, t5
	li t4, 0x6a8
	xnor t3, s4, t4
	li a2, 0x4b1
	xnor a2, t3, a2
	li s6, 0x210
	xnor a7, a2, s6
	li s11, 0x37e
	xnor s10, a7, s11
	li s11, 0x1c2
	xnor t6, s10, s11
	li s9, 0x61e
	xnor t2, t6, s9
	li a5, 0x309
	xnor a2, t2, a5
	li t2, 0xa8
	xnor s4, a2, t2
	li s10, 0x385
	xnor a2, s4, s10
	li a0, 0x71b
	xnor s10, a2, a0
	li t2, 0x1d5
	xnor s8, s10, t2
	li s9, 0x7a1
	xnor s2, s8, s9
	li s10, 0x5a8
	xnor a7, s2, s10
	li s3, 0x34d
	xnor s8, a7, s3
	li a2, 0x218
	xnor t3, s8, a2
	li s11, 0x1ad
	xnor t6, t3, s11
	li s2, 0x25a
	xnor a2, t6, s2
	li s5, 0x6e4
	xnor t5, a2, s5
	li s8, 0xc9
	xnor t4, t5, s8
	li t5, 0x6c0
	xnor s10, t4, t5
	li s5, 0x297
	xnor s5, s10, s5
	li s8, 0x595
	xnor a3, s5, s8
	li s4, 0x54e
	xnor s9, a3, s4
	li a2, 0xf
	xnor s5, s9, a2
	li a5, 0xa1
	xnor t2, s5, a5
	li a5, 0x743
	xnor a0, t2, a5
	li t2, 0x13b
	xnor t4, a0, t2
	li s10, 0x1ba
	xnor s2, t4, s10
	li s3, 0x7ba
	xnor t4, s2, s3
	li a0, 0x1f6
	xnor a3, t4, a0
	li s10, 0x2c4
	xnor s3, a3, s10
	li a7, 0x6c5
	xnor a2, s3, a7
	li t5, 0x76b
	xnor s8, a2, t5
	li a7, 0x5e0
	xnor s2, s8, a7
	li a4, 0x376
	xnor a5, s2, a4
	li t5, 0x425
	xnor s3, a5, t5
	li a1, 0x1f
	xnor a3, s3, a1
	li s2, 0x224
	xnor t6, a3, s2
	li a4, 0x3
	xnor s2, t6, a4
	li a2, 0x6ac
	xnor a1, s2, a2
	li a2, 0x726
	xnor s3, a1, a2
	li t5, 0x667
	xnor a1, s3, t5
	li t5, 0x4fc
	xnor t6, a1, t5
	li s3, 0x585
	xnor s11, t6, s3
	li s2, 0x79f
	xnor a5, s11, s2
	li t4, 0x469
	xnor s4, a5, t4
	li a3, 0x225
	xnor a1, s4, a3
	li s9, 0x56c
	xnor a0, a1, s9
	li t2, 0x528
	xnor t3, a0, t2
	li t2, 0x6c2
	xnor a7, t3, t2
	li a1, 0x6d4
	xnor s3, a7, a1
	li a7, 0x27d
	xnor s3, s3, a7
	li s5, 0xcb
	xnor t3, s3, s5
	li a4, 0xb1
	xnor t5, t3, a4
	li s5, 0x4bc
	xnor s6, t5, s5
	li t4, 0x652
	xnor t6, s6, t4
	li s5, 0x633
	xnor s3, t6, s5
	li t4, 0x36c
	xnor a0, s3, t4
	li s10, 0x791
	xnor s8, a0, s10
	li s5, 0x53
	xnor t5, s8, s5
	li s6, 0x247
	xnor s10, t5, s6
	li s6, 0x5ed
	xnor a5, s10, s6
	csrr s10, time
	csrr t6, cycle
	csrr t3, instret
	sub a3, s10, s1
	sub s6, t6, s0
	sub t3, t3, t1
	beq s7, s6, pass_label_94
	li s3, failed_addr
	ld t1, 0(s3)
	jr t1
pass_label_94:
	beq a6, t3, pass_label_95
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
pass_label_95:
SID_ZKT_08_XNOR_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_PACK)
SID_ZKT_08_PACK:
	li sp, SID_ZKT_08_PACK_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a5, 0
	csrr t6, time
	csrr s10, cycle
	csrr t5, instret
	li t1, 0x20d
	pack t2, a5, t1
	li s3, 0x535
	pack a0, t2, s3
	li a1, 0x71a
	pack s8, a0, a1
	li s0, 0x6f3
	pack s0, s8, s0
	li a5, 0x5ec
	pack a3, s0, a5
	li a1, 0x184
	pack t4, a3, a1
	li s0, 0x3f9
	pack s7, t4, s0
	li a5, 0xc7
	pack a4, s7, a5
	li s3, 0x1a8
	pack a1, a4, s3
	li s1, 0x2c8
	pack s11, a1, s1
	li t1, 0x567
	pack t2, s11, t1
	li s2, 0x371
	pack a2, t2, s2
	li s11, 0x7fb
	pack a5, a2, s11
	li a7, 0x25a
	pack s2, a5, a7
	li a3, 0x3a3
	pack s0, s2, a3
	li a5, 0x42e
	pack s6, s0, a5
	li a1, 0x57b
	pack a1, s6, a1
	li s4, 0x264
	pack a6, a1, s4
	li s8, 0x1b0
	pack s1, a6, s8
	li s7, 0x737
	pack a4, s1, s7
	li a3, 0x2f
	pack a0, a4, a3
	li s0, 0x60c
	pack t4, a0, s0
	li a0, 0xf
	pack s1, t4, a0
	li t1, 0x75f
	pack s3, s1, t1
	li s9, 0x396
	pack a5, s3, s9
	li s4, 0x91
	pack a6, a5, s4
	li t4, 0x45e
	pack s1, a6, t4
	li a6, 0x385
	pack a2, s1, a6
	li s9, 0x207
	pack a6, a2, s9
	li a0, 0x163
	pack a7, a6, a0
	li a3, 0x1b6
	pack a4, a7, a3
	li s5, 0x453
	pack s3, a4, s5
	li s8, 0x1b9
	pack s11, s3, s8
	li t2, 0x4da
	pack s8, s11, t2
	li s2, 0x6ce
	pack t2, s8, s2
	li a1, 0x3f9
	pack s1, t2, a1
	li a4, 0x52c
	pack s2, s1, a4
	li a5, 0x4d7
	pack s6, s2, a5
	li s4, 0x238
	pack t2, s6, s4
	li a7, 0x1d4
	pack t3, t2, a7
	li s1, 0x742
	pack a6, t3, s1
	li s2, 0x1d1
	pack a1, a6, s2
	li s0, 0x686
	pack s2, a1, s0
	li a7, 0x58
	pack a4, s2, a7
	li t2, 0x32c
	pack a2, a4, t2
	li a3, 0x419
	pack s2, a2, a3
	li s11, 0x30a
	pack s3, s2, s11
	li s4, 0x6a4
	pack s0, s3, s4
	li t3, 0x42c
	pack s8, s0, t3
	li t1, 0x124
	pack a6, s8, t1
	li a2, 0x356
	pack t3, a6, a2
	li s6, 0x5d8
	pack s7, t3, s6
	li s0, 0x14b
	pack s8, s7, s0
	li s5, 0x287
	pack a4, s8, s5
	li a3, 0x327
	pack a0, a4, a3
	li a6, 0x7b0
	pack t3, a0, a6
	li a1, 0x28b
	pack t2, t3, a1
	li s2, 0x7d9
	pack s3, t2, s2
	li t4, 0x4fa
	pack s1, s3, t4
	li s8, 0xa
	pack s4, s1, s8
	li a3, 0x25f
	pack t2, s4, a3
	li a0, 0x14e
	pack a7, t2, a0
	li s7, 0x33c
	pack s7, a7, s7
	li a2, 0x550
	pack a0, s7, a2
	li a6, 0x352
	pack s5, a0, a6
	li a7, 0x23b
	pack t1, s5, a7
	li t2, 0x631
	pack a1, t1, t2
	li s5, 0x609
	pack s3, a1, s5
	li s1, 0x674
	pack a6, s3, s1
	li a5, 0x737
	pack s2, a6, a5
	li s0, 0x195
	pack s2, s2, s0
	li s5, 0x79a
	pack t2, s2, s5
	li s4, 0x2fe
	pack s9, t2, s4
	li s4, 0x2d5
	pack s3, s9, s4
	li s1, 0x22
	pack s9, s3, s1
	li s5, 0x21e
	pack t1, s9, s5
	li s6, 0x2ca
	pack t1, t1, s6
	li a6, 0x635
	pack a2, t1, a6
	li a1, 0x3e4
	pack t3, a2, a1
	li a2, 0x38d
	pack s1, t3, a2
	li s4, 0x2c0
	pack a6, s1, s4
	li a0, 0x625
	pack a6, a6, a0
	li s11, 0x758
	pack s0, a6, s11
	li a4, 0xda
	pack a0, s0, a4
	li a7, 0x7df
	pack t4, a0, a7
	li s3, 0x1c9
	pack s1, t4, s3
	li a2, 0x336
	pack a7, s1, a2
	li s11, 0x5b1
	pack s6, a7, s11
	li s1, 0x7c6
	pack t4, s6, s1
	li a7, 0x67f
	pack a1, t4, a7
	li t1, 0x23
	pack s9, a1, t1
	li a2, 0x6f8
	pack s0, s9, a2
	li t3, 0x2d
	pack a1, s0, t3
	li t1, 0x426
	pack s6, a1, t1
	li s8, 0x4a8
	pack s1, s6, s8
	li a0, 0x227
	pack s8, s1, a0
	li t2, 0x642
	pack s9, s8, t2
	li t1, 0x389
	pack s9, s9, t1
	li a1, 0x731
	pack t2, s9, a1
	li a4, 0x4f2
	pack a0, t2, a4
	csrr a4, time
	csrr s6, cycle
	csrr t1, instret
	sub t3, a4, t6
	sub a2, s6, s10
	sub s7, t1, t5
	li s0, 0
	csrr a2, time
	csrr s1, cycle
	csrr t4, instret
	li s11, 0x281
	pack t2, s0, s11
	li a5, 0x5ed
	pack s11, t2, a5
	li s2, 0x773
	pack t3, s11, s2
	li s10, 0x40e
	pack t5, t3, s10
	li s10, 0x313
	pack t3, t5, s10
	li s8, 0x779
	pack a4, t3, s8
	li t1, 0x45
	pack s2, a4, t1
	li t6, 0x1a9
	pack s7, s2, t6
	li s3, 0x703
	pack s10, s7, s3
	li s0, 0x7f4
	pack s11, s10, s0
	li s10, 0x7d
	pack a1, s11, s10
	li t6, 0x2f0
	pack t2, a1, t6
	li a5, 0x446
	pack a4, t2, a5
	li s3, 0x512
	pack a3, a4, s3
	li t1, 0x67a
	pack s0, a3, t1
	li t1, 0x586
	pack s7, s0, t1
	li a1, 0x1a1
	pack s10, s7, a1
	li t5, 0x477
	pack s11, s10, t5
	li a3, 0x1e0
	pack s5, s11, a3
	li a4, 0x465
	pack a1, s5, a4
	li a0, 0x35a
	pack t1, a1, a0
	li t6, 0x156
	pack s2, t1, t6
	li s0, 0x7f5
	pack s2, s2, s0
	li s7, 0x437
	pack a1, s2, s7
	li s4, 0x6aa
	pack s8, a1, s4
	li s7, 0x476
	pack a0, s8, s7
	li s6, 0x19e
	pack a1, a0, s6
	li s2, 0x34e
	pack a5, a1, s2
	li s5, 0x73e
	pack s7, a5, s5
	li a0, 0x18b
	pack s5, s7, a0
	li s3, 0x603
	pack s9, s5, s3
	li t3, 0x69d
	pack a6, s9, t3
	li s2, 0x5ce
	pack a6, a6, s2
	li a7, 0x60b
	pack s2, a6, a7
	li a5, 0x69b
	pack s6, s2, a5
	li s2, 0x4d3
	pack s9, s6, s2
	li s5, 0x3d3
	pack s2, s9, s5
	li s3, 0x34
	pack s2, s2, s3
	li a1, 0x6d3
	pack t6, s2, a1
	li t2, 0x65c
	pack a3, t6, t2
	li s8, 0x51b
	pack s3, a3, s8
	li s4, 0x5e8
	pack t5, s3, s4
	li s10, 0x1d0
	pack a5, t5, s10
	li s6, 0x230
	pack a6, a5, s6
	li a3, 0x553
	pack a7, a6, a3
	li s4, 0x1d
	pack a5, a7, s4
	li s0, 0x54f
	pack s10, a5, s0
	li a5, 0x14c
	pack s9, s10, a5
	li s2, 0x5ab
	pack s6, s9, s2
	li t6, 0xf4
	pack s7, s6, t6
	li s8, 0x20b
	pack a4, s7, s8
	li s4, 0x11b
	pack t1, a4, s4
	li s4, 0x6a4
	pack s2, t1, s4
	li a1, 0x2df
	pack s9, s2, a1
	li s6, 0x410
	pack s8, s9, s6
	li a4, 0x75b
	pack s4, s8, a4
	li s8, 0x489
	pack s2, s4, s8
	li a5, 0x2ff
	pack t1, s2, a5
	li s4, 0x185
	pack a7, t1, s4
	li s2, 0xc6
	pack s8, a7, s2
	li t3, 0x4e9
	pack s9, s8, t3
	li s0, 0x749
	pack a1, s9, s0
	li t2, 0x53e
	pack s2, a1, t2
	li a7, 0x2e5
	pack a5, s2, a7
	li s7, 0x211
	pack a7, a5, s7
	li t5, 0x31a
	pack s0, a7, t5
	li t6, 0x35a
	pack s5, s0, t6
	li s9, 0x543
	pack t5, s5, s9
	li a5, 0x285
	pack s5, t5, a5
	li a5, 0x483
	pack a4, s5, a5
	li a6, 0x3fd
	pack a3, a4, a6
	li s9, 0x7ea
	pack t1, a3, s9
	li s3, 0x1ce
	pack a5, t1, s3
	li s7, 0x4c6
	pack s4, a5, s7
	li t2, 0x254
	pack t3, s4, t2
	li t5, 0x758
	pack s7, t3, t5
	li t5, 0xc2
	pack s9, s7, t5
	li s6, 0x55b
	pack t1, s9, s6
	li s11, 0x1cd
	pack t1, t1, s11
	li s3, 0x403
	pack a1, t1, s3
	li a6, 0x52
	pack a4, a1, a6
	li s7, 0x60
	pack a1, a4, s7
	li s9, 0x48c
	pack s10, a1, s9
	li a3, 0x654
	pack a5, s10, a3
	li t2, 0x2ba
	pack s9, a5, t2
	li s6, 0xf5
	pack s6, s9, s6
	li a0, 0x1c0
	pack s10, s6, a0
	li t3, 0x4e8
	pack a1, s10, t3
	li t3, 0x776
	pack a4, a1, t3
	li s2, 0x137
	pack a3, a4, s2
	li s11, 0x66d
	pack a0, a3, s11
	li a4, 0x7d5
	pack s9, a0, a4
	li s10, 0x640
	pack s7, s9, s10
	li t1, 0x10a
	pack a1, s7, t1
	li t3, 0x6fc
	pack s2, a1, t3
	li s7, 0x782
	pack a3, s2, s7
	li s6, 0x154
	pack a0, a3, s6
	li a7, 0x2fc
	pack s9, a0, a7
	li t6, 0x649
	pack t3, s9, t6
	li a1, 0x448
	pack s7, t3, a1
	csrr a7, time
	csrr s5, cycle
	csrr t2, instret
	sub a1, a7, a2
	sub a6, s5, s1
	sub s0, t2, t4
	li a0, 0
	csrr a3, time
	csrr a1, cycle
	csrr s5, instret
	li s3, 0x2c9
	pack s9, a0, s3
	li s1, 0x49
	pack s11, s9, s1
	li t1, 0x5fe
	pack a7, s11, t1
	li t3, 0x5bd
	pack s1, a7, t3
	li a2, 0x746
	pack s4, s1, a2
	li s9, 0x6a9
	pack t2, s4, s9
	li a5, 0x1d7
	pack s11, t2, a5
	li t2, 0x317
	pack a5, s11, t2
	li a0, 0x36f
	pack s6, a5, a0
	li s11, 0x603
	pack s7, s6, s11
	li s1, 0x234
	pack s7, s7, s1
	li t5, 0x173
	pack a0, s7, t5
	li t1, 0x21e
	pack s7, a0, t1
	li t5, 0x308
	pack s11, s7, t5
	li t6, 0x530
	pack a5, s11, t6
	li a2, 0xb6
	pack s11, a5, a2
	li a4, 0x1ad
	pack t1, s11, a4
	li t6, 0x4eb
	pack s2, t1, t6
	li s11, 0x5a4
	pack a4, s2, s11
	li t5, 0x55d
	pack a2, a4, t5
	li s4, 0xfb
	pack s8, a2, s4
	li a0, 0x17b
	pack s6, s8, a0
	li a4, 0x58f
	pack s3, s6, a4
	li a7, 0x1fa
	pack t2, s3, a7
	li a4, 0x12e
	pack s10, t2, a4
	li t2, 0xaf
	pack t4, s10, t2
	li t3, 0x1e2
	pack s2, t4, t3
	li t5, 0x528
	pack s6, s2, t5
	li s3, 0x406
	pack t5, s6, s3
	li t3, 0x601
	pack t3, t5, t3
	li s10, 0x39d
	pack a7, t3, s10
	li s1, 0x2ed
	pack t1, a7, s1
	li s6, 0x350
	pack a0, t1, s6
	li t5, 0x4ed
	pack s8, a0, t5
	li t4, 0xbf
	pack s2, s8, t4
	li t4, 0x226
	pack t4, s2, t4
	li a2, 0x529
	pack t4, t4, a2
	li s6, 0x75a
	pack t1, t4, s6
	li s11, 0x16d
	pack a7, t1, s11
	li a5, 0x635
	pack a0, a7, a5
	li s7, 0x171
	pack t1, a0, s7
	li s8, 0x241
	pack a5, t1, s8
	li s9, 0x524
	pack a0, a5, s9
	li s9, 0x608
	pack s1, a0, s9
	li t6, 0x709
	pack t6, s1, t6
	li a2, 0x1cb
	pack s10, t6, a2
	li t6, 0x79
	pack s2, s10, t6
	li s11, 0x2ed
	pack t1, s2, s11
	li a7, 0x185
	pack s4, t1, a7
	li s8, 0x14e
	pack t4, s4, s8
	li s10, 0x83
	pack a5, t4, s10
	li t3, 0x741
	pack a5, a5, t3
	li s10, 0x7d
	pack t2, a5, s10
	li a7, 0xcd
	pack s6, t2, a7
	li s10, 0x414
	pack a2, s6, s10
	li t4, 0x558
	pack s11, a2, t4
	li s3, 0x756
	pack s9, s11, s3
	li a0, 0x614
	pack s6, s9, a0
	li t4, 0x59b
	pack a5, s6, t4
	li a2, 0x103
	pack s4, a5, a2
	li s1, 0x72e
	pack a4, s4, s1
	li s2, 0x1cc
	pack s2, a4, s2
	li s3, 0xef
	pack s8, s2, s3
	li t5, 0x493
	pack s4, s8, t5
	li t2, 0x237
	pack t3, s4, t2
	li s7, 0x60d
	pack a4, t3, s7
	li s8, 0x7f1
	pack t3, a4, s8
	li a7, 0xe7
	pack s8, t3, a7
	li s2, 0x585
	pack s11, s8, s2
	li t4, 0x392
	pack a7, s11, t4
	li s10, 0x5eb
	pack s4, a7, s10
	li s3, 0x6da
	pack s9, s4, s3
	li a2, 0x10c
	pack a7, s9, a2
	li t3, 0x27f
	pack s8, a7, t3
	li s6, 0x200
	pack s10, s8, s6
	li a5, 0x757
	pack a0, s10, a5
	li s4, 0x548
	pack t1, a0, s4
	li a7, 0x57c
	pack t1, t1, a7
	li t2, 0x53f
	pack t6, t1, t2
	li s10, 0x241
	pack s7, t6, s10
	li s8, 0x3be
	pack t5, s7, s8
	li a4, 0x5a2
	pack a2, t5, a4
	li a4, 0x34
	pack s8, a2, a4
	li t3, 0x12
	pack s11, s8, t3
	li t5, 0x557
	pack a5, s11, t5
	li t5, 0x3d7
	pack t5, a5, t5
	li s6, 0x749
	pack t3, t5, s6
	li s8, 0x7af
	pack s2, t3, s8
	li t6, 0x3ab
	pack a5, s2, t6
	li t5, 0x3b3
	pack t5, a5, t5
	li s4, 0x67
	pack s1, t5, s4
	li s10, 0x622
	pack a4, s1, s10
	li s11, 0x6b1
	pack s10, a4, s11
	li t4, 0x500
	pack a5, s10, t4
	li t6, 0x2b
	pack s7, a5, t6
	li t2, 0x1b2
	pack a2, s7, t2
	li t5, 0x4ce
	pack a2, a2, t5
	li a5, 0x98
	pack s4, a2, a5
	li a7, 0x74d
	pack s9, s4, a7
	li a4, 0x3eb
	pack t2, s9, a4
	csrr s10, time
	csrr s8, cycle
	csrr t6, instret
	sub s2, s10, a3
	sub t5, s8, a1
	sub s2, t6, s5
	beq a6, t5, pass_label_96
	li s8, failed_addr
	ld t5, 0(s8)
	jr t5
pass_label_96:
	beq s0, s2, pass_label_97
	li s8, failed_addr
	ld s11, 0(s8)
	jr s11
pass_label_97:
SID_ZKT_08_PACK_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_PACKH)
SID_ZKT_08_PACKH:
	li sp, SID_ZKT_08_PACKH_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a1, 0
	csrr s4, time
	csrr a6, cycle
	csrr s5, instret
	li t5, 0x473
	packh t2, a1, t5
	li a1, 0x5f2
	packh s10, t2, a1
	li a2, 0x62b
	packh t2, s10, a2
	li a3, 0x110
	packh s2, t2, a3
	li s9, 0x7f4
	packh s3, s2, s9
	li t3, 0xcf
	packh a5, s3, t3
	li a3, 0xd0
	packh s7, a5, a3
	li s10, 0x48f
	packh a2, s7, s10
	li s3, 0x4ec
	packh t2, a2, s3
	li s6, 0x425
	packh s11, t2, s6
	li t2, 0x3a7
	packh t4, s11, t2
	li t1, 0x2a9
	packh s9, t4, t1
	li a1, 0x490
	packh s10, s9, a1
	li s7, 0x550
	packh s0, s10, s7
	li s6, 0x4fc
	packh s9, s0, s6
	li s6, 0x5ed
	packh s7, s9, s6
	li t5, 0x59f
	packh t1, s7, t5
	li t6, 0x33f
	packh s2, t1, t6
	li s0, 0x1ca
	packh t3, s2, s0
	li s3, 0x3f
	packh s6, t3, s3
	li s10, 0x425
	packh s7, s6, s10
	li s1, 0x326
	packh t6, s7, s1
	li t3, 0x7ad
	packh a3, t6, t3
	li s8, 0x7f4
	packh s0, a3, s8
	li t1, 0x5b6
	packh s11, s0, t1
	li s0, 0x463
	packh a1, s11, s0
	li s9, 0x6e9
	packh a7, a1, s9
	li t6, 0x40d
	packh s0, a7, t6
	li s3, 0x740
	packh a0, s0, s3
	li a2, 0x6a0
	packh t5, a0, a2
	li a2, 0x50b
	packh t6, t5, a2
	li a1, 0x754
	packh a1, t6, a1
	li a0, 0x87
	packh s6, a1, a0
	li s8, 0xbe
	packh s11, s6, s8
	li s9, 0x6df
	packh a4, s11, s9
	li s11, 0x77f
	packh s1, a4, s11
	li s3, 0x18a
	packh a5, s1, s3
	li s3, 0x653
	packh a5, a5, s3
	li s0, 0x405
	packh t4, a5, s0
	li s6, 0x362
	packh a2, t4, s6
	li s10, 0x5d9
	packh a3, a2, s10
	li s9, 0x692
	packh a3, a3, s9
	li s8, 0x718
	packh t3, a3, s8
	li a3, 0x3e3
	packh t4, t3, a3
	li a3, 0x3c2
	packh s9, t4, a3
	li s3, 0x3ca
	packh t2, s9, s3
	li a3, 0x7bc
	packh s3, t2, a3
	li t3, 0x1d2
	packh a7, s3, t3
	li t6, 0x11c
	packh s3, a7, t6
	li s6, 0x397
	packh s9, s3, s6
	li t4, 0x187
	packh a4, s9, t4
	li s11, 0x358
	packh t1, a4, s11
	li s11, 0xc7
	packh s9, t1, s11
	li s1, 0x36a
	packh a0, s9, s1
	li s10, 0x1ff
	packh s3, a0, s10
	li t1, 0x317
	packh a2, s3, t1
	li a3, 0xc1
	packh s10, a2, a3
	li a7, 0x2cd
	packh a5, s10, a7
	li s8, 0x283
	packh s9, a5, s8
	li t5, 0x1e6
	packh s8, s9, t5
	li t1, 0x216
	packh s9, s8, t1
	li t2, 0x6dd
	packh t5, s9, t2
	li t6, 0x727
	packh a5, t5, t6
	li s2, 0x4de
	packh t2, a5, s2
	li s0, 0x503
	packh s6, t2, s0
	li a7, 0x50d
	packh s8, s6, a7
	li a7, 0x4dd
	packh t1, s8, a7
	li s2, 0x632
	packh t1, t1, s2
	li a3, 0x6c8
	packh s6, t1, a3
	li a5, 0xbf
	packh s11, s6, a5
	li a4, 0x486
	packh a0, s11, a4
	li a3, 0x517
	packh a7, a0, a3
	li t5, 0x3a6
	packh t5, a7, t5
	li a0, 0x43e
	packh a1, t5, a0
	li a5, 0x544
	packh s10, a1, a5
	li t1, 0x608
	packh s9, s10, t1
	li a7, 0x635
	packh a5, s9, a7
	li s7, 0x427
	packh a3, a5, s7
	li a4, 0x441
	packh s7, a3, a4
	li s2, 0x312
	packh s6, s7, s2
	li s11, 0x5a6
	packh s6, s6, s11
	li a7, 0x45c
	packh a4, s6, a7
	li s7, 0x396
	packh t6, a4, s7
	li t4, 0x6e7
	packh s10, t6, t4
	li t3, 0xa0
	packh t4, s10, t3
	li s3, 0x239
	packh t3, t4, s3
	li t5, 0x37a
	packh a7, t3, t5
	li a2, 0x73a
	packh t6, a7, a2
	li t4, 0x6be
	packh t6, t6, t4
	li s7, 0x662
	packh t1, t6, s7
	li s2, 0x133
	packh a5, t1, s2
	li t6, 0x7ec
	packh a4, a5, t6
	li t1, 0x19a
	packh s10, a4, t1
	li a4, 0x11d
	packh s9, s10, a4
	li s6, 0x673
	packh s11, s9, s6
	li a4, 0xa7
	packh a1, s11, a4
	li a5, 0x78b
	packh t2, a1, a5
	li s6, 0x250
	packh s7, t2, s6
	li t3, 0x26b
	packh t3, s7, t3
	li a7, 0x46b
	packh s8, t3, a7
	csrr s2, time
	csrr a2, cycle
	csrr s8, instret
	sub s11, s2, s4
	sub a1, a2, a6
	sub t6, s8, s5
	li a1, 0
	csrr t6, time
	csrr a4, cycle
	csrr t1, instret
	li s0, 0xfc
	packh a7, a1, s0
	li s4, 0x7a7
	packh t5, a7, s4
	li t3, 0x64b
	packh s5, t5, t3
	li s4, 0x4c3
	packh s5, s5, s4
	li s7, 0x763
	packh t2, s5, s7
	li t4, 0x49a
	packh a1, t2, t4
	li a7, 0x14a
	packh s2, a1, a7
	li a0, 0x21e
	packh a3, s2, a0
	li a0, 0x203
	packh s2, a3, a0
	li s1, 0x506
	packh t4, s2, s1
	li s8, 0x184
	packh t5, t4, s8
	li s4, 0x751
	packh s10, t5, s4
	li a3, 0x41f
	packh a5, s10, a3
	li a0, 0x2f
	packh s0, a5, a0
	li s8, 0x7d0
	packh s6, s0, s8
	li s3, 0x213
	packh t5, s6, s3
	li t3, 0x76
	packh t3, t5, t3
	li s5, 0x61e
	packh a5, t3, s5
	li t5, 0xde
	packh s4, a5, t5
	li s9, 0x5a5
	packh s11, s4, s9
	li s10, 0x746
	packh s5, s11, s10
	li t4, 0x7a2
	packh s4, s5, t4
	li s6, 0x317
	packh s8, s4, s6
	li s5, 0x1b0
	packh s0, s8, s5
	li s1, 0x234
	packh t4, s0, s1
	li t3, 0x570
	packh s9, t4, t3
	li s5, 0x177
	packh s7, s9, s5
	li a5, 0x7b8
	packh s4, s7, a5
	li a1, 0x260
	packh s11, s4, a1
	li t2, 0x711
	packh s8, s11, t2
	li a3, 0x40
	packh s11, s8, a3
	li s10, 0x383
	packh a0, s11, s10
	li t2, 0x280
	packh s0, a0, t2
	li s3, 0x131
	packh a1, s0, s3
	li a3, 0x2df
	packh s7, a1, a3
	li s11, 0x1bf
	packh t3, s7, s11
	li s5, 0x65a
	packh a2, t3, s5
	li a0, 0x447
	packh a2, a2, a0
	li s2, 0x1e7
	packh s8, a2, s2
	li s3, 0xb9
	packh a0, s8, s3
	li a2, 0x747
	packh s8, a0, a2
	li t2, 0x28d
	packh s1, s8, t2
	li t2, 0x2f1
	packh t4, s1, t2
	li s6, 0x2df
	packh t4, t4, s6
	li s4, 0x48c
	packh a7, t4, s4
	li s4, 0x30a
	packh a3, a7, s4
	li s6, 0x628
	packh a2, a3, s6
	li s8, 0x219
	packh t3, a2, s8
	li s6, 0x1c8
	packh a5, t3, s6
	li s5, 0x3c8
	packh s1, a5, s5
	li s0, 0x5b5
	packh a2, s1, s0
	li a3, 0x146
	packh a0, a2, a3
	li s4, 0xa3
	packh a2, a0, s4
	li a5, 0x321
	packh t3, a2, a5
	li s2, 0x553
	packh a6, t3, s2
	li a3, 0x2ca
	packh s9, a6, a3
	li s8, 0x605
	packh s4, s9, s8
	li s6, 0x4d8
	packh t4, s4, s6
	li a0, 0x280
	packh s9, t4, a0
	li a5, 0x56f
	packh a7, s9, a5
	li s10, 0x396
	packh t3, a7, s10
	li s4, 0x1ea
	packh s11, t3, s4
	li a7, 0x2bf
	packh s0, s11, a7
	li t5, 0x537
	packh a2, s0, t5
	li s10, 0x1cf
	packh s4, a2, s10
	li s2, 0x5c3
	packh a7, s4, s2
	li a2, 0x272
	packh s4, a7, a2
	li t2, 0x1ad
	packh a2, s4, t2
	li t4, 0x118
	packh a1, a2, t4
	li a7, 0x3d1
	packh s11, a1, a7
	li s6, 0x308
	packh s8, s11, s6
	li s9, 0x7db
	packh s7, s8, s9
	li a6, 0x54c
	packh a3, s7, a6
	li s0, 0x6e1
	packh t3, a3, s0
	li s8, 0x5bd
	packh s10, t3, s8
	li a3, 0x493
	packh s4, s10, a3
	li s0, 0x20e
	packh s6, s4, s0
	li s1, 0x117
	packh a6, s6, s1
	li s8, 0x25a
	packh a6, a6, s8
	li s10, 0x384
	packh s9, a6, s10
	li s3, 0x1e6
	packh a0, s9, s3
	li s4, 0x65d
	packh a3, a0, s4
	li a1, 0x587
	packh t4, a3, a1
	li a6, 0x219
	packh a1, t4, a6
	li t3, 0x3b9
	packh s9, a1, t3
	li t2, 0x2b4
	packh s2, s9, t2
	li s11, 0x650
	packh s4, s2, s11
	li a0, 0x568
	packh s8, s4, a0
	li s1, 0x16
	packh s10, s8, s1
	li a1, 0x2f7
	packh t4, s10, a1
	li s9, 0x7f8
	packh s0, t4, s9
	li a6, 0x43c
	packh a3, s0, a6
	li s3, 0x37f
	packh a3, a3, s3
	li s3, 0x275
	packh a3, a3, s3
	li a5, 0x37
	packh s0, a3, a5
	li s1, 0x14f
	packh a0, s0, s1
	li a1, 0x752
	packh s1, a0, a1
	li s11, 0x13a
	packh s7, s1, s11
	li s2, 0x3dd
	packh s8, s7, s2
	li a5, 0x70c
	packh a0, s8, a5
	csrr s1, time
	csrr s5, cycle
	csrr s0, instret
	sub s11, s1, t6
	sub t5, s5, a4
	sub s1, s0, t1
	li s8, 0
	csrr s0, time
	csrr a5, cycle
	csrr t4, instret
	li s11, 0x518
	packh s11, s8, s11
	li a1, 0x6d5
	packh a6, s11, a1
	li s4, 0x38b
	packh a1, a6, s4
	li s5, 0xa6
	packh s10, a1, s5
	li t3, 0x344
	packh a6, s10, t3
	li a7, 0x1eb
	packh t1, a6, a7
	li s8, 0x60c
	packh s8, t1, s8
	li a1, 0x767
	packh s6, s8, a1
	li t3, 0x222
	packh s10, s6, t3
	li s5, 0x12a
	packh s4, s10, s5
	li s2, 0x631
	packh a4, s4, s2
	li s5, 0x615
	packh s7, a4, s5
	li a1, 0x577
	packh s3, s7, a1
	li s10, 0x104
	packh s8, s3, s10
	li s9, 0x6a9
	packh s10, s8, s9
	li a4, 0x7e5
	packh s11, s10, a4
	li s6, 0x4bd
	packh t6, s11, s6
	li a0, 0x79b
	packh s5, t6, a0
	li t3, 0x21c
	packh a2, s5, t3
	li s3, 0x1be
	packh s11, a2, s3
	li t2, 0x33e
	packh a7, s11, t2
	li t1, 0x6d2
	packh s5, a7, t1
	li t2, 0x794
	packh s8, s5, t2
	li a0, 0x2d9
	packh s2, s8, a0
	li t2, 0x363
	packh s11, s2, t2
	li s4, 0x28f
	packh s9, s11, s4
	li s10, 0x12d
	packh s10, s9, s10
	li t2, 0x727
	packh s6, s10, t2
	li s5, 0x55c
	packh t3, s6, s5
	li a3, 0x2b3
	packh a6, t3, a3
	li a1, 0x4f6
	packh s10, a6, a1
	li s8, 0x4c4
	packh a2, s10, s8
	li a6, 0x79d
	packh s6, a2, a6
	li s9, 0x337
	packh t6, s6, s9
	li s6, 0x85
	packh s4, t6, s6
	li a0, 0xa7
	packh a7, s4, a0
	li a0, 0x5c8
	packh a2, a7, a0
	li s7, 0x425
	packh s4, a2, s7
	li a1, 0x52e
	packh s6, s4, a1
	li s3, 0x49c
	packh a3, s6, s3
	li s2, 0x435
	packh a4, a3, s2
	li s2, 0x159
	packh a2, a4, s2
	li s11, 0x553
	packh a1, a2, s11
	li a2, 0x64e
	packh t6, a1, a2
	li a0, 0x746
	packh s4, t6, a0
	li s2, 0x117
	packh t3, s4, s2
	li a7, 0x367
	packh s10, t3, a7
	li t2, 0xbf
	packh s11, s10, t2
	li a0, 0x4ef
	packh s2, s11, a0
	li a0, 0x362
	packh a3, s2, a0
	li a0, 0x723
	packh t6, a3, a0
	li t1, 0x5c1
	packh s10, t6, t1
	li s9, 0x6d8
	packh t1, s10, s9
	li s5, 0x7d0
	packh s11, t1, s5
	li t1, 0x18f
	packh s5, s11, t1
	li t1, 0x53f
	packh a6, s5, t1
	li a0, 0x7ae
	packh a1, a6, a0
	li a4, 0x6ab
	packh a6, a1, a4
	li s6, 0x164
	packh s10, a6, s6
	li s5, 0x19b
	packh a0, s10, s5
	li a3, 0x5dc
	packh a2, a0, a3
	li s5, 0x1a6
	packh t6, a2, s5
	li t2, 0x186
	packh s5, t6, t2
	li a0, 0x4f9
	packh a6, s5, a0
	li s8, 0x1eb
	packh a4, a6, s8
	li a3, 0x49
	packh s9, a4, a3
	li t6, 0x711
	packh t1, s9, t6
	li a4, 0x46b
	packh t6, t1, a4
	li a1, 0x522
	packh s7, t6, a1
	li t6, 0x339
	packh t3, s7, t6
	li s3, 0x7a0
	packh s11, t3, s3
	li s6, 0x58b
	packh s9, s11, s6
	li s7, 0x609
	packh s8, s9, s7
	li a2, 0x6db
	packh s4, s8, a2
	li a4, 0x503
	packh s3, s4, a4
	li s4, 0x6ec
	packh a0, s3, s4
	li a2, 0x1d4
	packh s5, a0, a2
	li a0, 0x619
	packh s5, s5, a0
	li s10, 0x12
	packh s6, s5, s10
	li s10, 0x4d
	packh t2, s6, s10
	li s2, 0x18d
	packh a3, t2, s2
	li s5, 0x4d1
	packh s6, a3, s5
	li s2, 0x27c
	packh s7, s6, s2
	li t2, 0x732
	packh s8, s7, t2
	li a1, 0x296
	packh a3, s8, a1
	li a6, 0x628
	packh s6, a3, a6
	li s4, 0x1fa
	packh s5, s6, s4
	li a6, 0x57b
	packh t1, s5, a6
	li a4, 0x262
	packh s2, t1, a4
	li s10, 0x5ef
	packh t3, s2, s10
	li s6, 0x3c5
	packh a4, t3, s6
	li s2, 0x676
	packh a0, a4, s2
	li s9, 0x19d
	packh s4, a0, s9
	li s6, 0x11
	packh a2, s4, s6
	li a3, 0x194
	packh s8, a2, a3
	li a7, 0x291
	packh a0, s8, a7
	li s2, 0x456
	packh t1, a0, s2
	li s4, 0x727
	packh a7, t1, s4
	li a6, 0x32f
	packh t3, a7, a6
	li a1, 0x70b
	packh a1, t3, a1
	csrr s11, time
	csrr a2, cycle
	csrr s8, instret
	sub a6, s11, s0
	sub s6, a2, a5
	sub s4, s8, t4
	beq t5, s6, pass_label_98
	li a7, failed_addr
	ld t5, 0(a7)
	jr t5
pass_label_98:
	beq s1, s4, pass_label_99
	li s6, failed_addr
	ld s2, 0(s6)
	jr s2
pass_label_99:
SID_ZKT_08_PACKH_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_PACKW)
SID_ZKT_08_PACKW:
	li sp, SID_ZKT_08_PACKW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s9, 0
	csrr s11, time
	csrr s6, cycle
	csrr s0, instret
	li s1, 0x4c1
	packw a1, s9, s1
	li s3, 0x475
	packw s1, a1, s3
	li a2, 0x5df
	packw a1, s1, a2
	li s10, 0x30b
	packw s7, a1, s10
	li s1, 0x367
	packw s4, s7, s1
	li t2, 0x6f3
	packw a4, s4, t2
	li s4, 0x52b
	packw s9, a4, s4
	li s8, 0x322
	packw a1, s9, s8
	li t5, 0x553
	packw s10, a1, t5
	li a5, 0x2d5
	packw s3, s10, a5
	li t3, 0x452
	packw a5, s3, t3
	li t3, 0x595
	packw a0, a5, t3
	li t4, 0x52f
	packw s9, a0, t4
	li s7, 0x1ce
	packw t5, s9, s7
	li s10, 0x75e
	packw s4, t5, s10
	li s5, 0x756
	packw s2, s4, s5
	li t6, 0x604
	packw t4, s2, t6
	li a6, 0x9
	packw t4, t4, a6
	li t1, 0x5bb
	packw a4, t4, t1
	li a3, 0x7ba
	packw t4, a4, a3
	li s5, 0x15
	packw s8, t4, s5
	li s4, 0x443
	packw a7, s8, s4
	li a5, 0x43f
	packw a0, a7, a5
	li s7, 0x6e5
	packw a1, a0, s7
	li a2, 0x485
	packw s8, a1, a2
	li a2, 0x5f0
	packw t4, s8, a2
	li s9, 0x3ae
	packw s7, t4, s9
	li t5, 0x3cb
	packw s5, s7, t5
	li s7, 0x55
	packw a6, s5, s7
	li t5, 0x16b
	packw a1, a6, t5
	li a6, 0x92
	packw a3, a1, a6
	li s7, 0x644
	packw s10, a3, s7
	li t4, 0x516
	packw s2, s10, t4
	li t1, 0x6b2
	packw a7, s2, t1
	li t3, 0x77
	packw s2, a7, t3
	li t4, 0x27c
	packw s1, s2, t4
	li s9, 0x56
	packw s2, s1, s9
	li a3, 0x6f5
	packw s8, s2, a3
	li s10, 0x586
	packw t5, s8, s10
	li t6, 0x4c1
	packw t2, t5, t6
	li t3, 0x409
	packw s9, t2, t3
	li t4, 0xd9
	packw t6, s9, t4
	li s5, 0xea
	packw t2, t6, s5
	li t4, 0x168
	packw a3, t2, t4
	li a2, 0x61b
	packw t5, a3, a2
	li t1, 0x1f4
	packw a1, t5, t1
	li a0, 0x3d
	packw a5, a1, a0
	li a4, 0x4f6
	packw s8, a5, a4
	li s3, 0x2a3
	packw a2, s8, s3
	li t5, 0x78
	packw t4, a2, t5
	li a4, 0x19
	packw s2, t4, a4
	li a4, 0x80
	packw s2, s2, a4
	li t6, 0x74b
	packw s4, s2, t6
	li a7, 0x4e6
	packw s5, s4, a7
	li s1, 0x300
	packw s10, s5, s1
	li a0, 0x418
	packw s2, s10, a0
	li a0, 0x230
	packw a1, s2, a0
	li s4, 0x23a
	packw t3, a1, s4
	li a5, 0x29a
	packw a1, t3, a5
	li t3, 0x5e4
	packw s3, a1, t3
	li a6, 0x1fd
	packw a1, s3, a6
	li s1, 0xbe
	packw t3, a1, s1
	li t1, 0x218
	packw s2, t3, t1
	li s7, 0x19a
	packw t2, s2, s7
	li t4, 0x4d
	packw t2, t2, t4
	li s1, 0x6f4
	packw t2, t2, s1
	li s7, 0xb7
	packw s9, t2, s7
	li t4, 0xf7
	packw a7, s9, t4
	li t1, 0x27e
	packw s8, a7, t1
	li s4, 0x494
	packw t5, s8, s4
	li s3, 0x362
	packw s4, t5, s3
	li s2, 0x4f2
	packw a6, s4, s2
	li a3, 0x110
	packw s9, a6, a3
	li a1, 0x139
	packw s5, s9, a1
	li a5, 0x3f3
	packw a4, s5, a5
	li s1, 0x248
	packw s5, a4, s1
	li t4, 0x785
	packw s5, s5, t4
	li a1, 0x4c
	packw a1, s5, a1
	li t5, 0x6d3
	packw a1, a1, t5
	li t4, 0x653
	packw s8, a1, t4
	li a0, 0x3ca
	packw t4, s8, a0
	li s5, 0x3b0
	packw t4, t4, s5
	li s1, 0x514
	packw a2, t4, s1
	li s7, 0x4aa
	packw t3, a2, s7
	li s7, 0x473
	packw s9, t3, s7
	li t5, 0x2a9
	packw s2, s9, t5
	li t2, 0x663
	packw a6, s2, t2
	li a7, 0x6d8
	packw t6, a6, a7
	li t4, 0xbd
	packw s2, t6, t4
	li s4, 0x753
	packw a6, s2, s4
	li s3, 0x504
	packw s1, a6, s3
	li a7, 0x2a4
	packw a6, s1, a7
	li a7, 0x59a
	packw a7, a6, a7
	li t2, 0x608
	packw a4, a7, t2
	li a7, 0x352
	packw s9, a4, a7
	li a6, 0x222
	packw t6, s9, a6
	li s7, 0x10d
	packw a1, t6, s7
	li a0, 0x95
	packw s9, a1, a0
	li a6, 0x7b6
	packw t4, s9, a6
	li s5, 0x43f
	packw s3, t4, s5
	csrr t3, time
	csrr a4, cycle
	csrr s5, instret
	sub t5, t3, s11
	sub t4, a4, s6
	sub t2, s5, s0
	li a7, 0
	csrr t1, time
	csrr a4, cycle
	csrr a1, instret
	li s5, 0x7f9
	packw a5, a7, s5
	li s7, 0x2ab
	packw s1, a5, s7
	li s2, 0x3b
	packw a2, s1, s2
	li s6, 0x326
	packw s7, a2, s6
	li t5, 0x7bc
	packw s7, s7, t5
	li a6, 0x4d7
	packw t2, s7, a6
	li a0, 0x259
	packw s7, t2, a0
	li s8, 0x3ef
	packw a5, s7, s8
	li a3, 0xed
	packw a2, a5, a3
	li t6, 0x24c
	packw a7, a2, t6
	li s6, 0xe1
	packw s6, a7, s6
	li s1, 0x3fe
	packw t6, s6, s1
	li a5, 0x389
	packw s2, t6, a5
	li a7, 0x34
	packw t3, s2, a7
	li s10, 0x512
	packw s10, t3, s10
	li a7, 0x2ca
	packw a0, s10, a7
	li a7, 0x453
	packw s0, a0, a7
	li s10, 0x35c
	packw a6, s0, s10
	li t6, 0x7d5
	packw s5, a6, t6
	li a2, 0x23
	packw s0, s5, a2
	li t6, 0x623
	packw t6, s0, t6
	li t3, 0x1dc
	packw s4, t6, t3
	li s3, 0x72a
	packw s9, s4, s3
	li t4, 0x228
	packw s4, s9, t4
	li s7, 0x730
	packw t3, s4, s7
	li a0, 0x6a6
	packw t5, t3, a0
	li s2, 0x144
	packw a7, t5, s2
	li s3, 0x5cb
	packw a3, a7, s3
	li a7, 0x73b
	packw t3, a3, a7
	li t4, 0x348
	packw t2, t3, t4
	li s3, 0x411
	packw a5, t2, s3
	li s1, 0x22d
	packw a0, a5, s1
	li s11, 0x400
	packw s1, a0, s11
	li t4, 0x7fd
	packw s3, s1, t4
	li s9, 0x797
	packw s5, s3, s9
	li s1, 0x1fa
	packw s2, s5, s1
	li t4, 0x686
	packw s7, s2, t4
	li s10, 0x239
	packw t2, s7, s10
	li s3, 0x3ce
	packw t3, t2, s3
	li t6, 0x585
	packw s7, t3, t6
	li a6, 0x3f5
	packw s11, s7, a6
	li a2, 0x7eb
	packw t2, s11, a2
	li t4, 0x3a9
	packw a5, t2, t4
	li a2, 0x31f
	packw s7, a5, a2
	li a0, 0x30a
	packw s3, s7, a0
	li t3, 0x6f6
	packw s9, s3, t3
	li s8, 0x3b2
	packw s10, s9, s8
	li s5, 0x580
	packw s3, s10, s5
	li t5, 0x406
	packw s9, s3, t5
	li s10, 0x502
	packw s4, s9, s10
	li s1, 0xbc
	packw a2, s4, s1
	li a7, 0x368
	packw s7, a2, a7
	li s0, 0x6fb
	packw a7, s7, s0
	li s4, 0x4db
	packw s11, a7, s4
	li t4, 0x558
	packw s10, s11, t4
	li a5, 0x673
	packw s11, s10, a5
	li s8, 0x1ce
	packw s5, s11, s8
	li s1, 0x6dc
	packw t2, s5, s1
	li s0, 0x4a1
	packw t2, t2, s0
	li t6, 0x7a
	packw a7, t2, t6
	li a6, 0x5b1
	packw s8, a7, a6
	li s7, 0x4d7
	packw t2, s8, s7
	li t3, 0x57e
	packw s6, t2, t3
	li a5, 0x5b2
	packw a3, s6, a5
	li a0, 0x1c8
	packw s5, a3, a0
	li s6, 0x5bb
	packw s9, s5, s6
	li a7, 0x34c
	packw t5, s9, a7
	li s0, 0x66f
	packw s4, t5, s0
	li a0, 0x3b8
	packw s2, s4, a0
	li t4, 0x399
	packw s4, s2, t4
	li t5, 0x7b5
	packw s9, s4, t5
	li t4, 0x70c
	packw a2, s9, t4
	li s6, 0x54c
	packw a0, a2, s6
	li s2, 0x7e3
	packw s7, a0, s2
	li a5, 0x59a
	packw a2, s7, a5
	li s8, 0x343
	packw s2, a2, s8
	li t3, 0x65
	packw t5, s2, t3
	li a5, 0x3ca
	packw a5, t5, a5
	li s4, 0x218
	packw a5, a5, s4
	li a7, 0xd
	packw s11, a5, a7
	li s10, 0x210
	packw s5, s11, s10
	li a3, 0x7ce
	packw s3, s5, a3
	li a2, 0x20d
	packw a2, s3, a2
	li s7, 0x419
	packw t6, a2, s7
	li a0, 0x4f3
	packw t4, t6, a0
	li t3, 0x473
	packw a3, t4, t3
	li s10, 0x2f2
	packw t4, a3, s10
	li a2, 0x701
	packw a3, t4, a2
	li a2, 0x34d
	packw t3, a3, a2
	li a5, 0x228
	packw s9, t3, a5
	li a7, 0x793
	packw s6, s9, a7
	li s1, 0x178
	packw t6, s6, s1
	li a3, 0x64f
	packw a2, t6, a3
	li s10, 0x382
	packw t5, a2, s10
	li a6, 0x459
	packw s2, t5, a6
	li s3, 0x2f
	packw t3, s2, s3
	li t5, 0x526
	packw t4, t3, t5
	li s11, 0x6dc
	packw s10, t4, s11
	li s4, 0x5ee
	packw t4, s10, s4
	li a0, 0x648
	packw s10, t4, a0
	csrr a6, time
	csrr a7, cycle
	csrr s1, instret
	sub a3, a6, t1
	sub s9, a7, a4
	sub t5, s1, a1
	li s6, 0
	csrr t1, time
	csrr a3, cycle
	csrr t3, instret
	li s5, 0x397
	packw s2, s6, s5
	li s3, 0x234
	packw s4, s2, s3
	li s5, 0x627
	packw t6, s4, s5
	li s6, 0x3e0
	packw s4, t6, s6
	li s8, 0x352
	packw a6, s4, s8
	li s5, 0x1b
	packw s8, a6, s5
	li a6, 0x1e2
	packw s4, s8, a6
	li s10, 0x661
	packw a0, s4, s10
	li s2, 0x50c
	packw s0, a0, s2
	li t4, 0x5d3
	packw s4, s0, t4
	li a7, 0x215
	packw s2, s4, a7
	li a5, 0x745
	packw s6, s2, a5
	li a2, 0xaf
	packw a7, s6, a2
	li s0, 0x4cf
	packw s11, a7, s0
	li s7, 0x7ca
	packw s7, s11, s7
	li a4, 0x44f
	packw t4, s7, a4
	li s1, 0x36b
	packw t6, t4, s1
	li s7, 0xa6
	packw s2, t6, s7
	li s0, 0x1d8
	packw a5, s2, s0
	li s0, 0x47b
	packw s7, a5, s0
	li a6, 0x20e
	packw a0, s7, a6
	li s3, 0x761
	packw s2, a0, s3
	li s10, 0x1a7
	packw a7, s2, s10
	li s0, 0x6a5
	packw s1, a7, s0
	li t6, 0x76a
	packw t2, s1, t6
	li a0, 0x234
	packw s2, t2, a0
	li s8, 0x3ae
	packw s3, s2, s8
	li a6, 0x279
	packw s8, s3, a6
	li a7, 0x1e7
	packw s0, s8, a7
	li s5, 0x7e4
	packw s6, s0, s5
	li a6, 0x350
	packw a0, s6, a6
	li s3, 0x2ae
	packw a1, a0, s3
	li a0, 0xe8
	packw s2, a1, a0
	li t2, 0x300
	packw a0, s2, t2
	li a7, 0x60f
	packw s0, a0, a7
	li s1, 0xaa
	packw s5, s0, s1
	li s4, 0x2b9
	packw s5, s5, s4
	li s1, 0x7b2
	packw s10, s5, s1
	li s5, 0x2af
	packw s8, s10, s5
	li a0, 0x370
	packw s2, s8, a0
	li s7, 0x153
	packw t4, s2, s7
	li a6, 0x51f
	packw s4, t4, a6
	li s0, 0x6fc
	packw s2, s4, s0
	li s6, 0x195
	packw s5, s2, s6
	li s11, 0x27d
	packw a1, s5, s11
	li s3, 0x6bf
	packw a4, a1, s3
	li t4, 0x7ac
	packw a7, a4, t4
	li s2, 0x184
	packw s5, a7, s2
	li s1, 0x7d6
	packw a0, s5, s1
	li t4, 0x51
	packw s0, a0, t4
	li a0, 0x231
	packw t4, s0, a0
	li s11, 0x3cf
	packw s8, t4, s11
	li s5, 0x34f
	packw a7, s8, s5
	li t6, 0x254
	packw s3, a7, t6
	li s4, 0x690
	packw a6, s3, s4
	li t4, 0x7a9
	packw a7, a6, t4
	li s3, 0x23d
	packw s6, a7, s3
	li t4, 0x134
	packw s0, s6, t4
	li a5, 0x284
	packw s7, s0, a5
	li a2, 0x55f
	packw t4, s7, a2
	li a4, 0xca
	packw s1, t4, a4
	li s0, 0x1ce
	packw t2, s1, s0
	li a4, 0x54a
	packw a0, t2, a4
	li s3, 0x5e0
	packw a0, a0, s3
	li a6, 0x370
	packw s8, a0, a6
	li a0, 0x365
	packw t2, s8, a0
	li s3, 0x509
	packw s3, t2, s3
	li a7, 0x430
	packw s4, s3, a7
	li s7, 0x412
	packw s6, s4, s7
	li a7, 0x482
	packw s6, s6, a7
	li s4, 0x567
	packw t4, s6, s4
	li a5, 0x766
	packw s3, t4, a5
	li s5, 0x3
	packw s6, s3, s5
	li t2, 0x1d6
	packw s3, s6, t2
	li s2, 0x2ab
	packw s10, s3, s2
	li s5, 0x60b
	packw a7, s10, s5
	li a4, 0x3d6
	packw t6, a7, a4
	li s1, 0x27c
	packw t2, t6, s1
	li s10, 0x70b
	packw a6, t2, s10
	li a0, 0x600
	packw a4, a6, a0
	li s5, 0x6c6
	packw a0, a4, s5
	li s3, 0x22d
	packw s5, a0, s3
	li t6, 0x4a2
	packw s10, s5, t6
	li s5, 0x661
	packw s11, s10, s5
	li s7, 0x2ec
	packw t2, s11, s7
	li a0, 0x3ef
	packw t4, t2, a0
	li s5, 0x6e1
	packw s2, t4, s5
	li t2, 0x70
	packw s8, s2, t2
	li s2, 0x699
	packw s11, s8, s2
	li a1, 0x500
	packw t6, s11, a1
	li s3, 0x1e7
	packw a2, t6, s3
	li s2, 0x6be
	packw a6, a2, s2
	li s1, 0x31c
	packw a0, a6, s1
	li a5, 0x41a
	packw s10, a0, a5
	li a5, 0x478
	packw a0, s10, a5
	li s10, 0x20c
	packw s11, a0, s10
	li s5, 0x4d2
	packw a1, s11, s5
	li a5, 0x1fc
	packw a4, a1, a5
	li s2, 0x12b
	packw a0, a4, s2
	li a2, 0x56b
	packw s5, a0, a2
	csrr s0, time
	csrr t2, cycle
	csrr a5, instret
	sub s7, s0, t1
	sub a6, t2, a3
	sub a7, a5, t3
	beq s9, a6, pass_label_100
	li a6, failed_addr
	ld t3, 0(a6)
	jr t3
pass_label_100:
	beq t5, a7, pass_label_101
	li s10, failed_addr
	ld a6, 0(s10)
	jr a6
pass_label_101:
SID_ZKT_08_PACKW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_BREV8)
SID_ZKT_08_BREV8:
	li sp, SID_ZKT_08_BREV8_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s3, 0
	csrr a3, time
	csrr a7, cycle
	csrr a1, instret
	brev8 t4, s3
	brev8 a4, t4
	brev8 a5, a4
	brev8 a0, a5
	brev8 a4, a0
	brev8 t6, a4
	brev8 s7, t6
	brev8 s2, s7
	brev8 s10, s2
	brev8 s5, s10
	brev8 s10, s5
	brev8 s10, s10
	brev8 a0, s10
	brev8 s6, a0
	brev8 s9, s6
	brev8 s3, s9
	brev8 s2, s3
	brev8 s5, s2
	brev8 s10, s5
	brev8 a4, s10
	brev8 s11, a4
	brev8 a4, s11
	brev8 t4, a4
	brev8 a6, t4
	brev8 a6, a6
	brev8 s5, a6
	brev8 a6, s5
	brev8 s6, a6
	brev8 s9, s6
	brev8 s1, s9
	brev8 a2, s1
	brev8 t4, a2
	brev8 t2, t4
	brev8 s3, t2
	brev8 a5, s3
	brev8 s8, a5
	brev8 t3, s8
	brev8 a5, t3
	brev8 t6, a5
	brev8 t4, t6
	brev8 t6, t4
	brev8 s5, t6
	brev8 t6, s5
	brev8 s1, t6
	brev8 t4, s1
	brev8 s6, t4
	brev8 t1, s6
	brev8 t5, t1
	brev8 t1, t5
	brev8 a5, t1
	brev8 s2, a5
	brev8 s9, s2
	brev8 t5, s9
	brev8 s9, t5
	brev8 t2, s9
	brev8 s10, t2
	brev8 s9, s10
	brev8 t6, s9
	brev8 t6, t6
	brev8 s5, t6
	brev8 t6, s5
	brev8 s0, t6
	brev8 a2, s0
	brev8 s2, a2
	brev8 s9, s2
	brev8 t2, s9
	brev8 s5, t2
	brev8 s7, s5
	brev8 s8, s7
	brev8 s0, s8
	brev8 s9, s0
	brev8 t3, s9
	brev8 a5, t3
	brev8 a5, a5
	brev8 s0, a5
	brev8 a2, s0
	brev8 a2, a2
	brev8 s1, a2
	brev8 s11, s1
	brev8 s11, s11
	brev8 a5, s11
	brev8 s6, a5
	brev8 s5, s6
	brev8 t4, s5
	brev8 s7, t4
	brev8 s4, s7
	brev8 t5, s4
	brev8 s8, t5
	brev8 s4, s8
	brev8 s5, s4
	brev8 t5, s5
	brev8 a6, t5
	brev8 s10, a6
	brev8 s6, s10
	brev8 s5, s6
	brev8 s10, s5
	brev8 s7, s10
	brev8 a2, s7
	brev8 t1, a2
	brev8 s11, t1
	csrr t3, time
	csrr s6, cycle
	csrr s4, instret
	sub s11, t3, a3
	sub s10, s6, a7
	sub s11, s4, a1
	li a6, 0
	csrr a3, time
	csrr a1, cycle
	csrr t3, instret
	brev8 t6, a6
	brev8 a5, t6
	brev8 s3, a5
	brev8 a7, s3
	brev8 s7, a7
	brev8 s6, s7
	brev8 s8, s6
	brev8 s11, s8
	brev8 s7, s11
	brev8 s2, s7
	brev8 a7, s2
	brev8 a6, a7
	brev8 s8, a6
	brev8 a0, s8
	brev8 a0, a0
	brev8 a0, a0
	brev8 t5, a0
	brev8 a6, t5
	brev8 s0, a6
	brev8 s5, s0
	brev8 s6, s5
	brev8 s10, s6
	brev8 t6, s10
	brev8 s9, t6
	brev8 s5, s9
	brev8 s2, s5
	brev8 s6, s2
	brev8 s6, s6
	brev8 s10, s6
	brev8 t6, s10
	brev8 a0, t6
	brev8 s5, a0
	brev8 t2, s5
	brev8 s9, t2
	brev8 a4, s9
	brev8 t6, a4
	brev8 t2, t6
	brev8 a4, t2
	brev8 s11, a4
	brev8 a0, s11
	brev8 a7, a0
	brev8 t4, a7
	brev8 a2, t4
	brev8 t5, a2
	brev8 s7, t5
	brev8 a0, s7
	brev8 a5, a0
	brev8 a0, a5
	brev8 s8, a0
	brev8 s3, s8
	brev8 s3, s3
	brev8 s0, s3
	brev8 s4, s0
	brev8 t2, s4
	brev8 s6, t2
	brev8 s10, s6
	brev8 s11, s10
	brev8 a6, s11
	brev8 a4, a6
	brev8 a7, a4
	brev8 a5, a7
	brev8 t5, a5
	brev8 a2, t5
	brev8 s9, a2
	brev8 s2, s9
	brev8 a2, s2
	brev8 t6, a2
	brev8 s7, t6
	brev8 s3, s7
	brev8 a2, s3
	brev8 s6, a2
	brev8 a2, s6
	brev8 t2, a2
	brev8 s3, t2
	brev8 s4, s3
	brev8 a4, s4
	brev8 a6, a4
	brev8 s9, a6
	brev8 s7, s9
	brev8 t4, s7
	brev8 t4, t4
	brev8 s0, t4
	brev8 t6, s0
	brev8 a2, t6
	brev8 t4, a2
	brev8 s5, t4
	brev8 s3, s5
	brev8 a7, s3
	brev8 t5, a7
	brev8 s9, t5
	brev8 s0, s9
	brev8 a0, s0
	brev8 s4, a0
	brev8 s0, s4
	brev8 s4, s0
	brev8 s10, s4
	brev8 s4, s10
	brev8 s0, s4
	brev8 a6, s0
	brev8 s1, a6
	csrr a7, time
	csrr s5, cycle
	csrr s4, instret
	sub s7, a7, a3
	sub s5, s5, a1
	sub a0, s4, t3
	li a3, 0
	csrr t4, time
	csrr s9, cycle
	csrr s8, instret
	brev8 s1, a3
	brev8 a6, s1
	brev8 s10, a6
	brev8 s1, s10
	brev8 s10, s1
	brev8 s11, s10
	brev8 s2, s11
	brev8 a4, s2
	brev8 s3, a4
	brev8 s4, s3
	brev8 a7, s4
	brev8 a4, a7
	brev8 a7, a4
	brev8 s7, a7
	brev8 s0, s7
	brev8 s10, s0
	brev8 t3, s10
	brev8 t6, t3
	brev8 s1, t6
	brev8 s2, s1
	brev8 s11, s2
	brev8 s2, s11
	brev8 a5, s2
	brev8 t3, a5
	brev8 a5, t3
	brev8 t6, a5
	brev8 s3, t6
	brev8 s7, s3
	brev8 s4, s7
	brev8 a3, s4
	brev8 s6, a3
	brev8 s1, s6
	brev8 s0, s1
	brev8 t2, s0
	brev8 t5, t2
	brev8 a2, t5
	brev8 a4, a2
	brev8 a4, a4
	brev8 a7, a4
	brev8 s11, a7
	brev8 s11, s11
	brev8 t2, s11
	brev8 s3, t2
	brev8 a1, s3
	brev8 s3, a1
	brev8 a6, s3
	brev8 a1, a6
	brev8 a5, a1
	brev8 s7, a5
	brev8 a4, s7
	brev8 a5, a4
	brev8 s4, a5
	brev8 s3, s4
	brev8 a3, s3
	brev8 s1, a3
	brev8 s7, s1
	brev8 s7, s7
	brev8 t5, s7
	brev8 t2, t5
	brev8 s3, t2
	brev8 t6, s3
	brev8 s7, t6
	brev8 t6, s7
	brev8 a3, t6
	brev8 a2, a3
	brev8 s1, a2
	brev8 s7, s1
	brev8 s3, s7
	brev8 t5, s3
	brev8 s7, t5
	brev8 a7, s7
	brev8 t6, a7
	brev8 a5, t6
	brev8 a6, a5
	brev8 a2, a6
	brev8 t5, a2
	brev8 s10, t5
	brev8 a4, s10
	brev8 t6, a4
	brev8 t2, t6
	brev8 t5, t2
	brev8 s1, t5
	brev8 a4, s1
	brev8 a5, a4
	brev8 a1, a5
	brev8 a6, a1
	brev8 t2, a6
	brev8 a3, t2
	brev8 a7, a3
	brev8 s3, a7
	brev8 s2, s3
	brev8 s1, s2
	brev8 a6, s1
	brev8 s7, a6
	brev8 a4, s7
	brev8 a6, a4
	brev8 a1, a6
	brev8 s11, a1
	brev8 s10, s11
	brev8 t3, s10
	csrr s1, time
	csrr s0, cycle
	csrr s4, instret
	sub t2, s1, t4
	sub s7, s0, s9
	sub s8, s4, s8
	beq s5, s7, pass_label_102
	li s5, failed_addr
	ld s2, 0(s5)
	jr s2
pass_label_102:
	beq a0, s8, pass_label_103
	li a4, failed_addr
	ld a7, 0(a4)
	jr a7
pass_label_103:
SID_ZKT_08_BREV8_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_REV8)
SID_ZKT_08_REV8:
	li sp, SID_ZKT_08_REV8_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a1, 0
	csrr s4, time
	csrr t4, cycle
	csrr s1, instret
	rev8 t1, a1
	rev8 a6, t1
	rev8 t5, a6
	rev8 s0, t5
	rev8 a7, s0
	rev8 s2, a7
	rev8 t5, s2
	rev8 a5, t5
	rev8 s7, a5
	rev8 a3, s7
	rev8 s2, a3
	rev8 s9, s2
	rev8 t1, s9
	rev8 t1, t1
	rev8 s8, t1
	rev8 s6, s8
	rev8 a0, s6
	rev8 a4, a0
	rev8 s9, a4
	rev8 s6, s9
	rev8 a2, s6
	rev8 t2, a2
	rev8 a7, t2
	rev8 t3, a7
	rev8 a2, t3
	rev8 s2, a2
	rev8 a3, s2
	rev8 s0, a3
	rev8 a2, s0
	rev8 t3, a2
	rev8 a0, t3
	rev8 s2, a0
	rev8 s9, s2
	rev8 s8, s9
	rev8 a5, s8
	rev8 a6, a5
	rev8 t1, a6
	rev8 s0, t1
	rev8 a0, s0
	rev8 s3, a0
	rev8 t6, s3
	rev8 s0, t6
	rev8 t6, s0
	rev8 s8, t6
	rev8 s6, s8
	rev8 s3, s6
	rev8 t3, s3
	rev8 t6, t3
	rev8 a1, t6
	rev8 a6, a1
	rev8 s0, a6
	rev8 s11, s0
	rev8 a2, s11
	rev8 t1, a2
	rev8 s5, t1
	rev8 a3, s5
	rev8 s7, a3
	rev8 a6, s7
	rev8 t3, a6
	rev8 s3, t3
	rev8 t3, s3
	rev8 a4, t3
	rev8 s7, a4
	rev8 a5, s7
	rev8 a2, a5
	rev8 a1, a2
	rev8 s7, a1
	rev8 s0, s7
	rev8 a4, s0
	rev8 s8, a4
	rev8 s5, s8
	rev8 s2, s5
	rev8 s0, s2
	rev8 t2, s0
	rev8 a4, t2
	rev8 s10, a4
	rev8 s10, s10
	rev8 a2, s10
	rev8 a1, a2
	rev8 s2, a1
	rev8 t5, s2
	rev8 a2, t5
	rev8 a6, a2
	rev8 t5, a6
	rev8 a7, t5
	rev8 a3, a7
	rev8 a4, a3
	rev8 s0, a4
	rev8 s8, s0
	rev8 a7, s8
	rev8 s11, a7
	rev8 t6, s11
	rev8 a5, t6
	rev8 s3, a5
	rev8 s9, s3
	rev8 t1, s9
	rev8 t5, t1
	rev8 s10, t5
	rev8 s8, s10
	rev8 s2, s8
	csrr a3, time
	csrr t1, cycle
	csrr a2, instret
	sub a4, a3, s4
	sub s2, t1, t4
	sub a1, a2, s1
	li t5, 0
	csrr s3, time
	csrr s4, cycle
	csrr s10, instret
	rev8 a3, t5
	rev8 s6, a3
	rev8 a4, s6
	rev8 s6, a4
	rev8 a2, s6
	rev8 a6, a2
	rev8 t5, a6
	rev8 s5, t5
	rev8 s0, s5
	rev8 a2, s0
	rev8 s8, a2
	rev8 a5, s8
	rev8 s11, a5
	rev8 s11, s11
	rev8 t3, s11
	rev8 s8, t3
	rev8 s0, s8
	rev8 s1, s0
	rev8 a5, s1
	rev8 s0, a5
	rev8 s1, s0
	rev8 s5, s1
	rev8 s1, s5
	rev8 t1, s1
	rev8 t5, t1
	rev8 t2, t5
	rev8 s1, t2
	rev8 t1, s1
	rev8 a0, t1
	rev8 s2, a0
	rev8 s9, s2
	rev8 s9, s9
	rev8 t6, s9
	rev8 t4, t6
	rev8 s1, t4
	rev8 t3, s1
	rev8 a5, t3
	rev8 t6, a5
	rev8 s2, t6
	rev8 t2, s2
	rev8 a2, t2
	rev8 s7, a2
	rev8 s6, s7
	rev8 s6, s6
	rev8 t1, s6
	rev8 t4, t1
	rev8 s2, t4
	rev8 s0, s2
	rev8 a6, s0
	rev8 a4, a6
	rev8 t5, a4
	rev8 t3, t5
	rev8 t3, t3
	rev8 a0, t3
	rev8 t5, a0
	rev8 s9, t5
	rev8 a5, s9
	rev8 a5, a5
	rev8 a5, a5
	rev8 t3, a5
	rev8 t2, t3
	rev8 t2, t2
	rev8 t6, t2
	rev8 s2, t6
	rev8 t2, s2
	rev8 s11, t2
	rev8 a7, s11
	rev8 s6, a7
	rev8 s6, s6
	rev8 a3, s6
	rev8 s9, a3
	rev8 s7, s9
	rev8 a0, s7
	rev8 s0, a0
	rev8 t1, s0
	rev8 s11, t1
	rev8 t3, s11
	rev8 a0, t3
	rev8 t5, a0
	rev8 s2, t5
	rev8 s6, s2
	rev8 t3, s6
	rev8 a6, t3
	rev8 a2, a6
	rev8 a6, a2
	rev8 a3, a6
	rev8 s6, a3
	rev8 a2, s6
	rev8 t4, a2
	rev8 t4, t4
	rev8 a0, t4
	rev8 s8, a0
	rev8 t6, s8
	rev8 s11, t6
	rev8 s8, s11
	rev8 t2, s8
	rev8 s9, t2
	rev8 a5, s9
	rev8 a2, a5
	rev8 s1, a2
	csrr a3, time
	csrr t2, cycle
	csrr a6, instret
	sub s3, a3, s3
	sub t4, t2, s4
	sub a5, a6, s10
	li s9, 0
	csrr s10, time
	csrr a6, cycle
	csrr a2, instret
	rev8 t1, s9
	rev8 s9, t1
	rev8 t5, s9
	rev8 s1, t5
	rev8 t1, s1
	rev8 t5, t1
	rev8 a4, t5
	rev8 t5, a4
	rev8 s2, t5
	rev8 s6, s2
	rev8 a0, s6
	rev8 t3, a0
	rev8 s11, t3
	rev8 a4, s11
	rev8 s9, a4
	rev8 t6, s9
	rev8 a1, t6
	rev8 s8, a1
	rev8 a1, s8
	rev8 s6, a1
	rev8 a4, s6
	rev8 s8, a4
	rev8 a4, s8
	rev8 s9, a4
	rev8 t5, s9
	rev8 s11, t5
	rev8 s7, s11
	rev8 t1, s7
	rev8 t1, t1
	rev8 s1, t1
	rev8 a4, s1
	rev8 t2, a4
	rev8 t1, t2
	rev8 a4, t1
	rev8 a0, a4
	rev8 a3, a0
	rev8 s2, a3
	rev8 t2, s2
	rev8 t2, t2
	rev8 s1, t2
	rev8 t3, s1
	rev8 a4, t3
	rev8 t3, a4
	rev8 s11, t3
	rev8 s11, s11
	rev8 t2, s11
	rev8 s1, t2
	rev8 s11, s1
	rev8 s2, s11
	rev8 s6, s2
	rev8 s8, s6
	rev8 t3, s8
	rev8 s11, t3
	rev8 s8, s11
	rev8 a7, s8
	rev8 s4, a7
	rev8 a0, s4
	rev8 a7, a0
	rev8 s6, a7
	rev8 s11, s6
	rev8 t3, s11
	rev8 a3, t3
	rev8 t1, a3
	rev8 s1, t1
	rev8 t2, s1
	rev8 s9, t2
	rev8 s0, s9
	rev8 s8, s0
	rev8 s7, s8
	rev8 s8, s7
	rev8 s8, s8
	rev8 a4, s8
	rev8 t2, a4
	rev8 t2, t2
	rev8 s2, t2
	rev8 t3, s2
	rev8 s0, t3
	rev8 t1, s0
	rev8 s6, t1
	rev8 s6, s6
	rev8 s9, s6
	rev8 a3, s9
	rev8 s8, a3
	rev8 s4, s8
	rev8 s7, s4
	rev8 a3, s7
	rev8 s5, a3
	rev8 t3, s5
	rev8 s3, t3
	rev8 s6, s3
	rev8 a4, s6
	rev8 s2, a4
	rev8 t5, s2
	rev8 a3, t5
	rev8 t1, a3
	rev8 a1, t1
	rev8 a0, a1
	rev8 t1, a0
	rev8 s4, t1
	rev8 s11, s4
	csrr s5, time
	csrr s8, cycle
	csrr s4, instret
	sub t2, s5, s10
	sub s0, s8, a6
	sub s8, s4, a2
	beq t4, s0, pass_label_104
	li t2, failed_addr
	ld t6, 0(t2)
	jr t6
pass_label_104:
	beq a5, s8, pass_label_105
	li a6, failed_addr
	ld a2, 0(a6)
	jr a2
pass_label_105:
SID_ZKT_08_REV8_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_09_CZERO_EQZ)
SID_ZKT_09_CZERO_EQZ:
	li sp, SID_ZKT_09_CZERO_EQZ_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a3, 0
	csrr s1, time
	csrr t3, cycle
	csrr s10, instret
	li t2, 0x521
	czero.eqz s7, a3, t2
	li a0, 0x117
	czero.eqz s8, s7, a0
	li s11, 0x7c1
	czero.eqz a0, s8, s11
	li s5, 0x768
	czero.eqz a4, a0, s5
	li a3, 0x7f1
	czero.eqz a0, a4, a3
	li t5, 0x111
	czero.eqz t2, a0, t5
	li s5, 0xaf
	czero.eqz s8, t2, s5
	li s0, 0x6fa
	czero.eqz a0, s8, s0
	li t1, 0x2cf
	czero.eqz t2, a0, t1
	li t1, 0x9c
	czero.eqz a3, t2, t1
	li s8, 0x7cd
	czero.eqz a4, a3, s8
	li s6, 0x1df
	czero.eqz a2, a4, s6
	li s6, 0x9d
	czero.eqz a5, a2, s6
	li a0, 0x134
	czero.eqz s6, a5, a0
	li s3, 0x43a
	czero.eqz s6, s6, s3
	li a2, 0x432
	czero.eqz t6, s6, a2
	li s11, 0x353
	czero.eqz a0, t6, s11
	li a6, 0x28c
	czero.eqz s6, a0, a6
	li t6, 0x295
	czero.eqz s9, s6, t6
	li a3, 0x7d1
	czero.eqz t4, s9, a3
	li t5, 0x28d
	czero.eqz a4, t4, t5
	li a0, 0x664
	czero.eqz s11, a4, a0
	li t2, 0x353
	czero.eqz s3, s11, t2
	li s9, 0x5f4
	czero.eqz a7, s3, s9
	li s7, 0x5a2
	czero.eqz a2, a7, s7
	li t5, 0x41b
	czero.eqz s8, a2, t5
	li a7, 0x2d2
	czero.eqz a2, s8, a7
	li s2, 0x467
	czero.eqz s9, a2, s2
	li a4, 0xce
	czero.eqz s6, s9, a4
	li s5, 0x1e3
	czero.eqz a1, s6, s5
	li s2, 0x9a
	czero.eqz s8, a1, s2
	li t5, 0x1e7
	czero.eqz a6, s8, t5
	li a5, 0x6bc
	czero.eqz s3, a6, a5
	li s2, 0x31f
	czero.eqz a5, s3, s2
	li t5, 0x267
	czero.eqz s9, a5, t5
	li a7, 0x6fa
	czero.eqz a4, s9, a7
	li a1, 0xa1
	czero.eqz a3, a4, a1
	li t6, 0x10b
	czero.eqz t6, a3, t6
	li s8, 0x102
	czero.eqz s5, t6, s8
	li a5, 0x4ae
	czero.eqz s5, s5, a5
	li s7, 0x1d8
	czero.eqz s3, s5, s7
	li t5, 0x2f
	czero.eqz s7, s3, t5
	li s9, 0xc2
	czero.eqz s2, s7, s9
	li t5, 0x66b
	czero.eqz a1, s2, t5
	li s7, 0x401
	czero.eqz a6, a1, s7
	li s5, 0x7e9
	czero.eqz s3, a6, s5
	li a5, 0x20c
	czero.eqz t6, s3, a5
	li a0, 0x593
	czero.eqz s11, t6, a0
	li a6, 0x556
	czero.eqz a6, s11, a6
	li s9, 0x69d
	czero.eqz t2, a6, s9
	li t4, 0x70a
	czero.eqz a5, t2, t4
	li s3, 0x351
	czero.eqz t4, a5, s3
	li a3, 0x576
	czero.eqz t4, t4, a3
	li t2, 0x2a2
	czero.eqz t5, t4, t2
	li t4, 0x7c9
	czero.eqz s9, t5, t4
	li a7, 0x300
	czero.eqz t1, s9, a7
	li t5, 0x5b5
	czero.eqz t1, t1, t5
	li s9, 0x206
	czero.eqz a2, t1, s9
	li a3, 0x19
	czero.eqz a0, a2, a3
	li s11, 0x26
	czero.eqz a2, a0, s11
	li s3, 0x5ad
	czero.eqz s6, a2, s3
	li s9, 0x7ad
	czero.eqz a7, s6, s9
	li t1, 0x33a
	czero.eqz s9, a7, t1
	li s8, 0x78f
	czero.eqz a0, s9, s8
	li s5, 0x37b
	czero.eqz t5, a0, s5
	li s8, 0xd7
	czero.eqz a6, t5, s8
	li s7, 0x13e
	czero.eqz t4, a6, s7
	li t6, 0x129
	czero.eqz a7, t4, t6
	li t5, 0x5d5
	czero.eqz a2, a7, t5
	li s3, 0x4e2
	czero.eqz t6, a2, s3
	li t1, 0x41a
	czero.eqz t2, t6, t1
	li a1, 0x556
	czero.eqz a3, t2, a1
	li a2, 0x672
	czero.eqz a3, a3, a2
	li t6, 0x785
	czero.eqz a0, a3, t6
	li s4, 0x7c8
	czero.eqz t1, a0, s4
	li a5, 0x398
	czero.eqz s4, t1, a5
	li t4, 0x2a9
	czero.eqz s7, s4, t4
	li s6, 0x22d
	czero.eqz a5, s7, s6
	li s7, 0x770
	czero.eqz t6, a5, s7
	li s2, 0x287
	czero.eqz t1, t6, s2
	li t6, 0x4b4
	czero.eqz a2, t1, t6
	li a4, 0x7a0
	czero.eqz t6, a2, a4
	li a4, 0x765
	czero.eqz s6, t6, a4
	li a0, 0x787
	czero.eqz a7, s6, a0
	li t2, 0x160
	czero.eqz t6, a7, t2
	li s9, 0x98
	czero.eqz a6, t6, s9
	li s9, 0x554
	czero.eqz s8, a6, s9
	li s4, 0x1ed
	czero.eqz s9, s8, s4
	li a7, 0x5fa
	czero.eqz a1, s9, a7
	li t2, 0x405
	czero.eqz t1, a1, t2
	li s0, 0x2cb
	czero.eqz s9, t1, s0
	li t6, 0x76
	czero.eqz s11, s9, t6
	li a6, 0x4d3
	czero.eqz a6, s11, a6
	li s3, 0x33a
	czero.eqz s8, a6, s3
	li s5, 0x523
	czero.eqz t1, s8, s5
	li a2, 0x382
	czero.eqz a4, t1, a2
	li s11, 0x2e6
	czero.eqz s11, a4, s11
	li s5, 0x710
	czero.eqz a5, s11, s5
	li t4, 0x1da
	czero.eqz s8, a5, t4
	li t5, 0x470
	czero.eqz a5, s8, t5
	csrr a7, time
	csrr a4, cycle
	csrr a5, instret
	sub a1, a7, s1
	sub s4, a4, t3
	sub t1, a5, s10
	li s1, 0
	csrr s3, time
	csrr t1, cycle
	csrr s0, instret
	li a3, 0x303
	czero.eqz a7, s1, a3
	li s1, 0xe0
	czero.eqz t3, a7, s1
	li s4, 0x695
	czero.eqz a1, t3, s4
	li a2, 0x36b
	czero.eqz a3, a1, a2
	li a0, 0x211
	czero.eqz s1, a3, a0
	li t4, 0x47e
	czero.eqz a4, s1, t4
	li a1, 0x3a8
	czero.eqz s6, a4, a1
	li t2, 0x2ae
	czero.eqz a5, s6, t2
	li s9, 0x300
	czero.eqz s10, a5, s9
	li s4, 0x493
	czero.eqz a2, s10, s4
	li s5, 0x6d
	czero.eqz s10, a2, s5
	li a6, 0x55f
	czero.eqz t5, s10, a6
	li t6, 0x3d3
	czero.eqz t4, t5, t6
	li a0, 0x79d
	czero.eqz t3, t4, a0
	li s10, 0x9
	czero.eqz a3, t3, s10
	li a0, 0x37d
	czero.eqz s7, a3, a0
	li a5, 0x313
	czero.eqz s1, s7, a5
	li t2, 0x15b
	czero.eqz s4, s1, t2
	li a3, 0xbd
	czero.eqz t2, s4, a3
	li a0, 0x1ad
	czero.eqz s2, t2, a0
	li a3, 0x51
	czero.eqz t3, s2, a3
	li s2, 0x285
	czero.eqz t6, t3, s2
	li a6, 0x3a5
	czero.eqz s2, t6, a6
	li t2, 0x229
	czero.eqz s7, s2, t2
	li t2, 0x143
	czero.eqz s10, s7, t2
	li t4, 0x3fe
	czero.eqz t3, s10, t4
	li s7, 0x7cc
	czero.eqz s7, t3, s7
	li a1, 0x34b
	czero.eqz a5, s7, a1
	li a6, 0x591
	czero.eqz t5, a5, a6
	li s1, 0x6cc
	czero.eqz s4, t5, s1
	li t6, 0x494
	czero.eqz a7, s4, t6
	li s2, 0x706
	czero.eqz s2, a7, s2
	li a5, 0x73d
	czero.eqz s2, s2, a5
	li s5, 0x29a
	czero.eqz s1, s2, s5
	li t6, 0x3c6
	czero.eqz a2, s1, t6
	li a5, 0x7c8
	czero.eqz s1, a2, a5
	li a5, 0xd
	czero.eqz a2, s1, a5
	li a5, 0x469
	czero.eqz a6, a2, a5
	li a7, 0x7f7
	czero.eqz s10, a6, a7
	li t4, 0x640
	czero.eqz a7, s10, t4
	li a3, 0x48d
	czero.eqz a6, a7, a3
	li s8, 0x6df
	czero.eqz s4, a6, s8
	li a6, 0x2db
	czero.eqz s11, s4, a6
	li a6, 0x8b
	czero.eqz s9, s11, a6
	li s5, 0x2c4
	czero.eqz t6, s9, s5
	li a0, 0x612
	czero.eqz t5, t6, a0
	li s2, 0x671
	czero.eqz s7, t5, s2
	li s10, 0x414
	czero.eqz a7, s7, s10
	li s10, 0x724
	czero.eqz a0, a7, s10
	li s5, 0x211
	czero.eqz a6, a0, s5
	li a0, 0x233
	czero.eqz t2, a6, a0
	li s6, 0x5f5
	czero.eqz a6, t2, s6
	li t6, 0x360
	czero.eqz s6, a6, t6
	li a2, 0x792
	czero.eqz a0, s6, a2
	li a7, 0x6cc
	czero.eqz a5, a0, a7
	li s4, 0x7e1
	czero.eqz t5, a5, s4
	li t2, 0x483
	czero.eqz s10, t5, t2
	li a3, 0x646
	czero.eqz t3, s10, a3
	li a6, 0x1a5
	czero.eqz s10, t3, a6
	li s7, 0x7dd
	czero.eqz s6, s10, s7
	li t6, 0x113
	czero.eqz s10, s6, t6
	li s2, 0x684
	czero.eqz a6, s10, s2
	li a7, 0x31b
	czero.eqz s7, a6, a7
	li s9, 0x40e
	czero.eqz a0, s7, s9
	li t2, 0x605
	czero.eqz s9, a0, t2
	li s5, 0x410
	czero.eqz s8, s9, s5
	li a4, 0x5c
	czero.eqz a3, s8, a4
	li a0, 0x26b
	czero.eqz t3, a3, a0
	li s5, 0x479
	czero.eqz t5, t3, s5
	li a5, 0x620
	czero.eqz a5, t5, a5
	li s1, 0x375
	czero.eqz t5, a5, s1
	li s6, 0x52e
	czero.eqz s4, t5, s6
	li s2, 0x735
	czero.eqz a3, s4, s2
	li s7, 0x6e6
	czero.eqz s7, a3, s7
	li a1, 0x646
	czero.eqz t2, s7, a1
	li a1, 0x574
	czero.eqz a1, t2, a1
	li t3, 0x7b
	czero.eqz t3, a1, t3
	li s9, 0x617
	czero.eqz t6, t3, s9
	li s11, 0x716
	czero.eqz s2, t6, s11
	li s11, 0x110
	czero.eqz s11, s2, s11
	li s8, 0x46e
	czero.eqz s4, s11, s8
	li s11, 0xab
	czero.eqz s1, s4, s11
	li t6, 0x67
	czero.eqz s6, s1, t6
	li a2, 0x296
	czero.eqz s6, s6, a2
	li a4, 0x269
	czero.eqz s11, s6, a4
	li a1, 0x68d
	czero.eqz s4, s11, a1
	li s1, 0x567
	czero.eqz a5, s4, s1
	li s10, 0x70d
	czero.eqz a7, a5, s10
	li s2, 0x4f7
	czero.eqz s4, a7, s2
	li a4, 0x51d
	czero.eqz t6, s4, a4
	li s7, 0x180
	czero.eqz s6, t6, s7
	li s9, 0x6bd
	czero.eqz a0, s6, s9
	li a2, 0xdc
	czero.eqz s8, a0, a2
	li a4, 0x108
	czero.eqz s6, s8, a4
	li t6, 0x382
	czero.eqz a5, s6, t6
	li a0, 0x1c9
	czero.eqz s1, a5, a0
	li t5, 0x301
	czero.eqz s7, s1, t5
	li s8, 0xf9
	czero.eqz s4, s7, s8
	li a0, 0x4a9
	czero.eqz t2, s4, a0
	li s4, 0xbd
	czero.eqz a3, t2, s4
	csrr s8, time
	csrr a5, cycle
	csrr a1, instret
	sub s3, s8, s3
	sub s8, a5, t1
	sub a0, a1, s0
	li s4, 0
	csrr t2, time
	csrr s5, cycle
	csrr t4, instret
	li s0, 0x64
	czero.eqz t6, s4, s0
	li t5, 0x55b
	czero.eqz a3, t6, t5
	li s3, 0x132
	czero.eqz a7, a3, s3
	li s2, 0x73a
	czero.eqz a4, a7, s2
	li a1, 0x646
	czero.eqz t5, a4, a1
	li s7, 0x44d
	czero.eqz s7, t5, s7
	li s1, 0x16e
	czero.eqz a7, s7, s1
	li s1, 0x60
	czero.eqz a2, a7, s1
	li s7, 0x4d1
	czero.eqz s2, a2, s7
	li s0, 0x7fd
	czero.eqz t5, s2, s0
	li a2, 0x170
	czero.eqz a6, t5, a2
	li a5, 0x7c9
	czero.eqz s10, a6, a5
	li a7, 0x661
	czero.eqz s4, s10, a7
	li s11, 0x22
	czero.eqz t6, s4, s11
	li a2, 0x7a4
	czero.eqz s1, t6, a2
	li s3, 0x753
	czero.eqz s9, s1, s3
	li a6, 0x700
	czero.eqz s6, s9, a6
	li t5, 0x641
	czero.eqz t1, s6, t5
	li a4, 0x4b1
	czero.eqz a1, t1, a4
	li t1, 0x2de
	czero.eqz s1, a1, t1
	li a3, 0x11a
	czero.eqz a7, s1, a3
	li a3, 0x6e
	czero.eqz t6, a7, a3
	li a4, 0xa3
	czero.eqz t1, t6, a4
	li s9, 0x488
	czero.eqz s3, t1, s9
	li a7, 0xce
	czero.eqz a3, s3, a7
	li s11, 0x7e3
	czero.eqz a2, a3, s11
	li t6, 0x156
	czero.eqz a3, a2, t6
	li s9, 0x240
	czero.eqz s7, a3, s9
	li t6, 0x35c
	czero.eqz a1, s7, t6
	li s0, 0x3d
	czero.eqz s7, a1, s0
	li s0, 0x5de
	czero.eqz s10, s7, s0
	li s9, 0x186
	czero.eqz s0, s10, s9
	li s2, 0x4d9
	czero.eqz a1, s0, s2
	li t1, 0xf3
	czero.eqz a5, a1, t1
	li a3, 0x534
	czero.eqz a6, a5, a3
	li s10, 0x92
	czero.eqz s9, a6, s10
	li a1, 0x336
	czero.eqz t5, s9, a1
	li a1, 0x376
	czero.eqz s11, t5, a1
	li s0, 0x2c
	czero.eqz s4, s11, s0
	li s7, 0x1b8
	czero.eqz t5, s4, s7
	li s10, 0x2cb
	czero.eqz s7, t5, s10
	li s10, 0x52
	czero.eqz s2, s7, s10
	li s1, 0x15a
	czero.eqz s6, s2, s1
	li t3, 0x30d
	czero.eqz a1, s6, t3
	li t3, 0x3d5
	czero.eqz s6, a1, t3
	li a6, 0x406
	czero.eqz s7, s6, a6
	li a3, 0x14a
	czero.eqz s10, s7, a3
	li s0, 0x74f
	czero.eqz t6, s10, s0
	li s9, 0xa9
	czero.eqz s7, t6, s9
	li a6, 0x5bb
	czero.eqz s1, s7, a6
	li a5, 0x539
	czero.eqz t5, s1, a5
	li s4, 0x2ad
	czero.eqz s0, t5, s4
	li s11, 0x42c
	czero.eqz a5, s0, s11
	li a4, 0x288
	czero.eqz t6, a5, a4
	li s3, 0x5ce
	czero.eqz a2, t6, s3
	li a4, 0x2d
	czero.eqz t6, a2, a4
	li s6, 0x2c1
	czero.eqz s3, t6, s6
	li a4, 0x69f
	czero.eqz a4, s3, a4
	li s9, 0x1f6
	czero.eqz s4, a4, s9
	li s11, 0x687
	czero.eqz s3, s4, s11
	li a2, 0x4ce
	czero.eqz s9, s3, a2
	li t3, 0x41b
	czero.eqz s3, s9, t3
	li t6, 0xe0
	czero.eqz t5, s3, t6
	li s10, 0xcd
	czero.eqz s9, t5, s10
	li t1, 0x461
	czero.eqz s6, s9, t1
	li s11, 0x3b8
	czero.eqz t6, s6, s11
	li s11, 0x87
	czero.eqz s3, t6, s11
	li a2, 0x499
	czero.eqz t6, s3, a2
	li a7, 0x2af
	czero.eqz s6, t6, a7
	li s3, 0x544
	czero.eqz s0, s6, s3
	li t3, 0x1af
	czero.eqz t6, s0, t3
	li s4, 0x366
	czero.eqz a6, t6, s4
	li t1, 0x6e7
	czero.eqz a2, a6, t1
	li s11, 0x4e0
	czero.eqz a7, a2, s11
	li s4, 0x3c5
	czero.eqz t6, a7, s4
	li s7, 0x59a
	czero.eqz s2, t6, s7
	li t6, 0x60
	czero.eqz a2, s2, t6
	li s3, 0x2bb
	czero.eqz s0, a2, s3
	li s7, 0x63
	czero.eqz s4, s0, s7
	li s11, 0x4b9
	czero.eqz s11, s4, s11
	li t3, 0x7d1
	czero.eqz a7, s11, t3
	li t1, 0x4a
	czero.eqz s0, a7, t1
	li a1, 0x5f6
	czero.eqz s6, s0, a1
	li s4, 0x1bf
	czero.eqz s2, s6, s4
	li a2, 0x6df
	czero.eqz s10, s2, a2
	li s2, 0x272
	czero.eqz a1, s10, s2
	li s4, 0x429
	czero.eqz a6, a1, s4
	li t5, 0xb4
	czero.eqz s11, a6, t5
	li a3, 0x4c6
	czero.eqz s6, s11, a3
	li a1, 0x138
	czero.eqz t6, s6, a1
	li s7, 0x346
	czero.eqz s10, t6, s7
	li a3, 0x553
	czero.eqz s1, s10, a3
	li s10, 0x409
	czero.eqz t3, s1, s10
	li s7, 0x273
	czero.eqz t3, t3, s7
	li t1, 0x36e
	czero.eqz t5, t3, t1
	li s4, 0x601
	czero.eqz s1, t5, s4
	li s4, 0x44a
	czero.eqz s6, s1, s4
	li a2, 0x3f0
	czero.eqz s1, s6, a2
	li s10, 0x27
	czero.eqz s1, s1, s10
	li a3, 0x3de
	czero.eqz a4, s1, a3
	csrr t1, time
	csrr t6, cycle
	csrr a5, instret
	sub s9, t1, t2
	sub s1, t6, s5
	sub t6, a5, t4
	beq s8, s1, pass_label_106
	li s1, failed_addr
	ld a1, 0(s1)
	jr a1
pass_label_106:
	beq a0, t6, pass_label_107
	li s8, failed_addr
	ld s7, 0(s8)
	jr s7
pass_label_107:
SID_ZKT_09_CZERO_EQZ_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_09_CZERO_NEZ)
SID_ZKT_09_CZERO_NEZ:
	li sp, SID_ZKT_09_CZERO_NEZ_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a1, 0
	csrr a0, time
	csrr s7, cycle
	csrr s4, instret
	li a6, 0x14c
	czero.nez a1, a1, a6
	li s11, 0x3de
	czero.nez s11, a1, s11
	li a7, 0x6e7
	czero.nez a4, s11, a7
	li s5, 0x13f
	czero.nez s8, a4, s5
	li s10, 0x80
	czero.nez a7, s8, s10
	li s8, 0x12b
	czero.nez a2, a7, s8
	li s5, 0x587
	czero.nez t1, a2, s5
	li a5, 0x5d5
	czero.nez s8, t1, a5
	li s1, 0x45a
	czero.nez t3, s8, s1
	li t6, 0x501
	czero.nez s11, t3, t6
	li s0, 0x78f
	czero.nez s9, s11, s0
	li s10, 0x215
	czero.nez s9, s9, s10
	li a2, 0x684
	czero.nez t2, s9, a2
	li a3, 0x73d
	czero.nez t3, t2, a3
	li t6, 0x52c
	czero.nez s0, t3, t6
	li t5, 0x6e
	czero.nez t2, s0, t5
	li s0, 0x205
	czero.nez s6, t2, s0
	li s5, 0x26c
	czero.nez t6, s6, s5
	li t5, 0x712
	czero.nez t3, t6, t5
	li s5, 0x568
	czero.nez a2, t3, s5
	li t4, 0x15e
	czero.nez t5, a2, t4
	li s5, 0x212
	czero.nez s5, t5, s5
	li t4, 0x11a
	czero.nez s1, s5, t4
	li s6, 0x4be
	czero.nez s9, s1, s6
	li s0, 0x70f
	czero.nez a2, s9, s0
	li t2, 0x9c
	czero.nez s3, a2, t2
	li s2, 0x554
	czero.nez a5, s3, s2
	li s0, 0x583
	czero.nez s3, a5, s0
	li s1, 0x69d
	czero.nez a4, s3, s1
	li s10, 0xa8
	czero.nez t2, a4, s10
	li s0, 0x3ac
	czero.nez s0, t2, s0
	li s8, 0x7b7
	czero.nez a5, s0, s8
	li t5, 0x9
	czero.nez t5, a5, t5
	li s10, 0xdc
	czero.nez a5, t5, s10
	li t6, 0x70e
	czero.nez s8, a5, t6
	li s6, 0x722
	czero.nez a6, s8, s6
	li s9, 0x4c8
	czero.nez t6, a6, s9
	li t2, 0x674
	czero.nez t6, t6, t2
	li s9, 0x6f7
	czero.nez a4, t6, s9
	li t3, 0x5c5
	czero.nez s6, a4, t3
	li t4, 0x710
	czero.nez s9, s6, t4
	li t2, 0x256
	czero.nez a2, s9, t2
	li s11, 0x6b0
	czero.nez a1, a2, s11
	li a2, 0x647
	czero.nez s3, a1, a2
	li t6, 0x233
	czero.nez s1, s3, t6
	li a3, 0x15a
	czero.nez a4, s1, a3
	li s10, 0x11d
	czero.nez a3, a4, s10
	li a7, 0x1c
	czero.nez a5, a3, a7
	li s11, 0x2b9
	czero.nez t3, a5, s11
	li t4, 0x35e
	czero.nez a6, t3, t4
	li t4, 0xa6
	czero.nez s10, a6, t4
	li s2, 0x55
	czero.nez t3, s10, s2
	li s2, 0x496
	czero.nez s10, t3, s2
	li t6, 0x5c
	czero.nez a2, s10, t6
	li s2, 0x737
	czero.nez a1, a2, s2
	li s6, 0x213
	czero.nez s10, a1, s6
	li a4, 0x555
	czero.nez t5, s10, a4
	li s9, 0x730
	czero.nez s10, t5, s9
	li s0, 0x249
	czero.nez s0, s10, s0
	li a5, 0x71a
	czero.nez a7, s0, a5
	li s3, 0x6c2
	czero.nez t5, a7, s3
	li a5, 0x6c5
	czero.nez a4, t5, a5
	li a7, 0x4e3
	czero.nez s3, a4, a7
	li s10, 0x63
	czero.nez a5, s3, s10
	li s10, 0x528
	czero.nez a1, a5, s10
	li s11, 0x648
	czero.nez s11, a1, s11
	li s1, 0x51
	czero.nez s0, s11, s1
	li s8, 0x17a
	czero.nez s1, s0, s8
	li s6, 0x2dd
	czero.nez s5, s1, s6
	li a1, 0x471
	czero.nez s2, s5, a1
	li t2, 0x642
	czero.nez t3, s2, t2
	li a5, 0x39c
	czero.nez s10, t3, a5
	li s3, 0x15f
	czero.nez s5, s10, s3
	li a3, 0x2ab
	czero.nez t1, s5, a3
	li s3, 0x4fc
	czero.nez s9, t1, s3
	li a7, 0x3a
	czero.nez a6, s9, a7
	li a3, 0x2ae
	czero.nez t4, a6, a3
	li a2, 0x417
	czero.nez s5, t4, a2
	li s2, 0x5f2
	czero.nez s2, s5, s2
	li a1, 0x399
	czero.nez s3, s2, a1
	li s5, 0x530
	czero.nez s0, s3, s5
	li s8, 0x1ef
	czero.nez s5, s0, s8
	li s9, 0x7b2
	czero.nez t1, s5, s9
	li a6, 0x42d
	czero.nez s10, t1, a6
	li s5, 0x78a
	czero.nez t3, s10, s5
	li s0, 0x2d8
	czero.nez a5, t3, s0
	li t5, 0x60a
	czero.nez s2, a5, t5
	li t2, 0x340
	czero.nez t2, s2, t2
	li t5, 0x6af
	czero.nez a2, t2, t5
	li s0, 0xb2
	czero.nez t6, a2, s0
	li a3, 0x7b5
	czero.nez s5, t6, a3
	li a4, 0xdb
	czero.nez s6, s5, a4
	li s8, 0x795
	czero.nez s6, s6, s8
	li a7, 0x2ce
	czero.nez s8, s6, a7
	li s10, 0x6eb
	czero.nez s11, s8, s10
	li t4, 0x5e
	czero.nez s8, s11, t4
	li a6, 0x39f
	czero.nez a7, s8, a6
	li a5, 0x708
	czero.nez s0, a7, a5
	li s1, 0x375
	czero.nez s6, s0, s1
	li s3, 0x617
	czero.nez s9, s6, s3
	csrr s10, time
	csrr a1, cycle
	csrr t2, instret
	sub s9, s10, a0
	sub s8, a1, s7
	sub a1, t2, s4
	li a6, 0
	csrr s0, time
	csrr t2, cycle
	csrr s6, instret
	li s1, 0x4e8
	czero.nez t6, a6, s1
	li s8, 0x4f0
	czero.nez a6, t6, s8
	li s4, 0x38b
	czero.nez s8, a6, s4
	li a6, 0x69a
	czero.nez a6, s8, a6
	li a5, 0x3c0
	czero.nez s3, a6, a5
	li s9, 0x3d7
	czero.nez t5, s3, s9
	li t4, 0x328
	czero.nez a0, t5, t4
	li t4, 0x257
	czero.nez a1, a0, t4
	li s8, 0x4f9
	czero.nez a3, a1, s8
	li a0, 0x3a3
	czero.nez t5, a3, a0
	li a2, 0x7e3
	czero.nez a6, t5, a2
	li s3, 0x4a4
	czero.nez s3, a6, s3
	li s5, 0x7f6
	czero.nez t4, s3, s5
	li a6, 0xfb
	czero.nez s1, t4, a6
	li a7, 0x52d
	czero.nez t3, s1, a7
	li t4, 0x42e
	czero.nez a0, t3, t4
	li a7, 0x3d1
	czero.nez a4, a0, a7
	li s7, 0x310
	czero.nez s11, a4, s7
	li s4, 0x60a
	czero.nez a4, s11, s4
	li s2, 0x3c6
	czero.nez t3, a4, s2
	li t4, 0x745
	czero.nez a5, t3, t4
	li s8, 0x215
	czero.nez t3, a5, s8
	li a1, 0x372
	czero.nez s10, t3, a1
	li s5, 0x291
	czero.nez s1, s10, s5
	li a0, 0x314
	czero.nez s10, s1, a0
	li t6, 0x194
	czero.nez s4, s10, t6
	li s10, 0x18e
	czero.nez a3, s4, s10
	li a7, 0x8c
	czero.nez a6, a3, a7
	li s11, 0x1a2
	czero.nez s10, a6, s11
	li s7, 0x4d3
	czero.nez s4, s10, s7
	li t6, 0x99
	czero.nez t1, s4, t6
	li t4, 0x6aa
	czero.nez a5, t1, t4
	li a0, 0x339
	czero.nez t4, a5, a0
	li a6, 0x316
	czero.nez s8, t4, a6
	li a5, 0x253
	czero.nez t4, s8, a5
	li t1, 0x26b
	czero.nez a4, t4, t1
	li s11, 0x448
	czero.nez s7, a4, s11
	li s2, 0x5e5
	czero.nez a0, s7, s2
	li t3, 0x7a3
	czero.nez a5, a0, t3
	li s7, 0x43d
	czero.nez a0, a5, s7
	li t1, 0x151
	czero.nez t4, a0, t1
	li t3, 0xee
	czero.nez s11, t4, t3
	li a0, 0x50d
	czero.nez s9, s11, a0
	li t4, 0x5e5
	czero.nez s5, s9, t4
	li s4, 0x4b2
	czero.nez s1, s5, s4
	li s10, 0x36
	czero.nez a4, s1, s10
	li s3, 0x729
	czero.nez s7, a4, s3
	li a3, 0x5cf
	czero.nez s8, s7, a3
	li s2, 0x3ad
	czero.nez a1, s8, s2
	li a4, 0x47b
	czero.nez a1, a1, a4
	li a5, 0x92
	czero.nez a0, a1, a5
	li a1, 0xcf
	czero.nez a5, a0, a1
	li a6, 0x4e5
	czero.nez a1, a5, a6
	li s1, 0x3a9
	czero.nez t6, a1, s1
	li t5, 0x6
	czero.nez s5, t6, t5
	li a6, 0x43c
	czero.nez t6, s5, a6
	li s4, 0x551
	czero.nez a0, t6, s4
	li s3, 0x2dd
	czero.nez s10, a0, s3
	li s11, 0x69d
	czero.nez t6, s10, s11
	li s10, 0x330
	czero.nez t5, t6, s10
	li s4, 0x62a
	czero.nez s8, t5, s4
	li s5, 0x523
	czero.nez a0, s8, s5
	li s8, 0x5ca
	czero.nez t3, a0, s8
	li a6, 0x16e
	czero.nez t1, t3, a6
	li a2, 0x4f2
	czero.nez a0, t1, a2
	li a7, 0x97
	czero.nez t4, a0, a7
	li s2, 0x461
	czero.nez a3, t4, s2
	li a0, 0x4f9
	czero.nez s4, a3, a0
	li a4, 0x4f
	czero.nez s5, s4, a4
	li s4, 0x758
	czero.nez s2, s5, s4
	li a4, 0x6ce
	czero.nez t5, s2, a4
	li t3, 0x55a
	czero.nez t5, t5, t3
	li s2, 0x18d
	czero.nez a4, t5, s2
	li s11, 0x6e8
	czero.nez s1, a4, s11
	li t1, 0x6d8
	czero.nez a2, s1, t1
	li s2, 0x1e3
	czero.nez a0, a2, s2
	li t4, 0x236
	czero.nez s7, a0, t4
	li s3, 0x38c
	czero.nez s2, s7, s3
	li a7, 0x1b
	czero.nez t4, s2, a7
	li s5, 0x72d
	czero.nez s4, t4, s5
	li t1, 0xcc
	czero.nez a0, s4, t1
	li s1, 0x546
	czero.nez s8, a0, s1
	li t6, 0x284
	czero.nez a4, s8, t6
	li t6, 0x585
	czero.nez t6, a4, t6
	li a6, 0x49b
	czero.nez a6, t6, a6
	li s4, 0x37d
	czero.nez s5, a6, s4
	li s1, 0x351
	czero.nez a1, s5, s1
	li t3, 0x795
	czero.nez s2, a1, t3
	li a1, 0x506
	czero.nez t3, s2, a1
	li s10, 0x763
	czero.nez s1, t3, s10
	li t1, 0x1b1
	czero.nez s10, s1, t1
	li s4, 0x373
	czero.nez s3, s10, s4
	li s9, 0x1c8
	czero.nez a7, s3, s9
	li t5, 0x685
	czero.nez s5, a7, t5
	li t3, 0x6cd
	czero.nez s8, s5, t3
	li t5, 0x51
	czero.nez t5, s8, t5
	li a7, 0x49c
	czero.nez s5, t5, a7
	li s4, 0x674
	czero.nez t4, s5, s4
	li a5, 0x111
	czero.nez t4, t4, a5
	li t5, 0x627
	czero.nez t3, t4, t5
	csrr t5, time
	csrr t6, cycle
	csrr s8, instret
	sub t5, t5, s0
	sub a5, t6, t2
	sub a6, s8, s6
	li t1, 0
	csrr a7, time
	csrr s11, cycle
	csrr s9, instret
	li t6, 0x45b
	czero.nez s5, t1, t6
	li t6, 0x29
	czero.nez s1, s5, t6
	li s5, 0x5bc
	czero.nez a4, s1, s5
	li s5, 0x3a5
	czero.nez s10, a4, s5
	li a1, 0x4c7
	czero.nez t2, s10, a1
	li t4, 0x117
	czero.nez t1, t2, t4
	li t4, 0x4c2
	czero.nez t4, t1, t4
	li a3, 0xc5
	czero.nez s1, t4, a3
	li a3, 0x356
	czero.nez t5, s1, a3
	li s1, 0x4c6
	czero.nez s3, t5, s1
	li t1, 0x786
	czero.nez a3, s3, t1
	li s3, 0x1e3
	czero.nez t3, a3, s3
	li s1, 0x28b
	czero.nez a0, t3, s1
	li t6, 0x588
	czero.nez t6, a0, t6
	li s6, 0x31b
	czero.nez s5, t6, s6
	li s8, 0x608
	czero.nez s10, s5, s8
	li a4, 0x419
	czero.nez a3, s10, a4
	li s3, 0x268
	czero.nez t3, a3, s3
	li a2, 0x460
	czero.nez t6, t3, a2
	li a1, 0x3fb
	czero.nez s1, t6, a1
	li t5, 0x397
	czero.nez s5, s1, t5
	li s1, 0x254
	czero.nez a4, s5, s1
	li t4, 0x138
	czero.nez a3, a4, t4
	li s7, 0x79e
	czero.nez a4, a3, s7
	li s1, 0x718
	czero.nez a2, a4, s1
	li t4, 0x4bc
	czero.nez t4, a2, t4
	li s8, 0x373
	czero.nez a2, t4, s8
	li s6, 0xf9
	czero.nez s10, a2, s6
	li s6, 0x7a6
	czero.nez t1, s10, s6
	li s4, 0x14e
	czero.nez s4, t1, s4
	li t3, 0x7f6
	czero.nez s3, s4, t3
	li a2, 0x591
	czero.nez a0, s3, a2
	li t3, 0x717
	czero.nez t2, a0, t3
	li t6, 0xa1
	czero.nez s6, t2, t6
	li s7, 0x5fa
	czero.nez t5, s6, s7
	li a2, 0x401
	czero.nez t5, t5, a2
	li t1, 0x12a
	czero.nez t2, t5, t1
	li s7, 0xad
	czero.nez a0, t2, s7
	li s8, 0x581
	czero.nez s2, a0, s8
	li s0, 0x477
	czero.nez s8, s2, s0
	li t6, 0x477
	czero.nez s4, s8, t6
	li s0, 0x42d
	czero.nez s0, s4, s0
	li s4, 0x22a
	czero.nez a3, s0, s4
	li a4, 0x357
	czero.nez s0, a3, a4
	li a0, 0x246
	czero.nez s2, s0, a0
	li s10, 0x43c
	czero.nez s10, s2, s10
	li s4, 0x27c
	czero.nez s1, s10, s4
	li s7, 0x375
	czero.nez s7, s1, s7
	li a3, 0x31c
	czero.nez s0, s7, a3
	li t4, 0x241
	czero.nez s10, s0, t4
	li s7, 0x2f8
	czero.nez a3, s10, s7
	li t1, 0x549
	czero.nez t4, a3, t1
	li t1, 0x241
	czero.nez a2, t4, t1
	li a3, 0x430
	czero.nez s5, a2, a3
	li a2, 0x30b
	czero.nez t5, s5, a2
	li s1, 0x39e
	czero.nez a4, t5, s1
	li s6, 0x500
	czero.nez t4, a4, s6
	li a2, 0x125
	czero.nez s6, t4, a2
	li s0, 0x2b1
	czero.nez s3, s6, s0
	li t4, 0x2d8
	czero.nez t1, s3, t4
	li s0, 0x58f
	czero.nez a3, t1, s0
	li a2, 0x32f
	czero.nez t4, a3, a2
	li t6, 0x19b
	czero.nez s1, t4, t6
	li s3, 0x44
	czero.nez s0, s1, s3
	li t3, 0x284
	czero.nez s6, s0, t3
	li t2, 0x62c
	czero.nez a0, s6, t2
	li t4, 0x25b
	czero.nez t1, a0, t4
	li t5, 0x490
	czero.nez s6, t1, t5
	li s5, 0x313
	czero.nez s0, s6, s5
	li s4, 0x157
	czero.nez s4, s0, s4
	li a4, 0x6c5
	czero.nez t6, s4, a4
	li s7, 0xfd
	czero.nez a4, t6, s7
	li s8, 0x5b5
	czero.nez a2, a4, s8
	li t3, 0x446
	czero.nez s4, a2, t3
	li a3, 0x454
	czero.nez a3, s4, a3
	li t5, 0x4c4
	czero.nez s1, a3, t5
	li s3, 0x214
	czero.nez s5, s1, s3
	li t5, 0x48f
	czero.nez a0, s5, t5
	li s10, 0x6d3
	czero.nez a0, a0, s10
	li t2, 0x5fb
	czero.nez s1, a0, t2
	li s6, 0x199
	czero.nez s10, s1, s6
	li a3, 0x27c
	czero.nez s8, s10, a3
	li s3, 0x6bc
	czero.nez t6, s8, s3
	li a1, 0x13c
	czero.nez s0, t6, a1
	li a2, 0x226
	czero.nez a0, s0, a2
	li s3, 0x4e0
	czero.nez a4, a0, s3
	li a1, 0x704
	czero.nez s8, a4, a1
	li s0, 0x41d
	czero.nez a3, s8, s0
	li t2, 0x706
	czero.nez t3, a3, t2
	li t5, 0x2fd
	czero.nez s1, t3, t5
	li t2, 0x51a
	czero.nez t3, s1, t2
	li a4, 0x3eb
	czero.nez s6, t3, a4
	li s3, 0x742
	czero.nez t2, s6, s3
	li t5, 0xb2
	czero.nez s2, t2, t5
	li s3, 0x4f9
	czero.nez s4, s2, s3
	li t5, 0x74d
	czero.nez s8, s4, t5
	li s6, 0x66a
	czero.nez s3, s8, s6
	li s1, 0xe
	czero.nez s6, s3, s1
	li a4, 0x605
	czero.nez s6, s6, a4
	li s0, 0x229
	czero.nez s2, s6, s0
	csrr s5, time
	csrr t2, cycle
	csrr s2, instret
	sub a7, s5, a7
	sub s11, t2, s11
	sub s6, s2, s9
	beq a5, s11, pass_label_108
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
pass_label_108:
	beq a6, s6, pass_label_109
	li a7, failed_addr
	ld a2, 0(a7)
	jr a2
pass_label_109:
SID_ZKT_09_CZERO_NEZ_passed:
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

;#random_addr(name=SID_ZKT_02_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_02_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_02_stack, phys_name=SID_ZKT_02_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_02_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_ADDI_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_ADDI_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_ADDI_stack, phys_name=SID_ZKT_03_ADDI_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_ADDI_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_SLTI_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_SLTI_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_SLTI_stack, phys_name=SID_ZKT_03_SLTI_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_SLTI_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_SLTIU_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_SLTIU_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_SLTIU_stack, phys_name=SID_ZKT_03_SLTIU_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_SLTIU_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_XORI_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_XORI_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_XORI_stack, phys_name=SID_ZKT_03_XORI_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_XORI_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_ORI_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_ORI_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_ORI_stack, phys_name=SID_ZKT_03_ORI_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_ORI_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_ANDI_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_ANDI_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_ANDI_stack, phys_name=SID_ZKT_03_ANDI_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_ANDI_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_SLLI_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_SLLI_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_SLLI_stack, phys_name=SID_ZKT_03_SLLI_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_SLLI_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_SRLI_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_SRLI_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_SRLI_stack, phys_name=SID_ZKT_03_SRLI_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_SRLI_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_SRAI_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_SRAI_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_SRAI_stack, phys_name=SID_ZKT_03_SRAI_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_SRAI_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_ADDIW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_ADDIW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_ADDIW_stack, phys_name=SID_ZKT_03_ADDIW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_ADDIW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_SLLIW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_SLLIW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_SLLIW_stack, phys_name=SID_ZKT_03_SLLIW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_SLLIW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_SRLIW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_SRLIW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_SRLIW_stack, phys_name=SID_ZKT_03_SRLIW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_SRLIW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_03_SRAIW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_03_SRAIW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_03_SRAIW_stack, phys_name=SID_ZKT_03_SRAIW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_03_SRAIW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_04_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_04_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_04_stack, phys_name=SID_ZKT_04_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_04_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_ADD_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_ADD_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_ADD_stack, phys_name=SID_ZKT_05_ADD_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_ADD_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_SUB_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_SUB_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_SUB_stack, phys_name=SID_ZKT_05_SUB_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_SUB_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_SLL_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_SLL_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_SLL_stack, phys_name=SID_ZKT_05_SLL_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_SLL_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_SLT_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_SLT_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_SLT_stack, phys_name=SID_ZKT_05_SLT_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_SLT_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_SLTU_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_SLTU_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_SLTU_stack, phys_name=SID_ZKT_05_SLTU_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_SLTU_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_XOR_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_XOR_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_XOR_stack, phys_name=SID_ZKT_05_XOR_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_XOR_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_SRL_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_SRL_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_SRL_stack, phys_name=SID_ZKT_05_SRL_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_SRL_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_SRA_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_SRA_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_SRA_stack, phys_name=SID_ZKT_05_SRA_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_SRA_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_OR_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_OR_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_OR_stack, phys_name=SID_ZKT_05_OR_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_OR_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_AND_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_AND_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_AND_stack, phys_name=SID_ZKT_05_AND_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_AND_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_ADDW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_ADDW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_ADDW_stack, phys_name=SID_ZKT_05_ADDW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_ADDW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_SUBW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_SUBW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_SUBW_stack, phys_name=SID_ZKT_05_SUBW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_SUBW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_SLLW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_SLLW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_SLLW_stack, phys_name=SID_ZKT_05_SLLW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_SLLW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_SRLW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_SRLW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_SRLW_stack, phys_name=SID_ZKT_05_SRLW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_SRLW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_05_SRAW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_05_SRAW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_05_SRAW_stack, phys_name=SID_ZKT_05_SRAW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_05_SRAW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_06_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_06_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_06_stack, phys_name=SID_ZKT_06_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_06_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_07_MUL_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_07_MUL_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_07_MUL_stack, phys_name=SID_ZKT_07_MUL_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_07_MUL_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_07_MULH_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_07_MULH_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_07_MULH_stack, phys_name=SID_ZKT_07_MULH_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_07_MULH_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_07_MULHU_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_07_MULHU_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_07_MULHU_stack, phys_name=SID_ZKT_07_MULHU_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_07_MULHU_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_07_MULHSU_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_07_MULHSU_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_07_MULHSU_stack, phys_name=SID_ZKT_07_MULHSU_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_07_MULHSU_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_07_MULW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_07_MULW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_07_MULW_stack, phys_name=SID_ZKT_07_MULW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_07_MULW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_CLMUL_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_CLMUL_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_CLMUL_stack, phys_name=SID_ZKT_08_CLMUL_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_CLMUL_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_CLMULH_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_CLMULH_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_CLMULH_stack, phys_name=SID_ZKT_08_CLMULH_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_CLMULH_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_XPERM4_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_XPERM4_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_XPERM4_stack, phys_name=SID_ZKT_08_XPERM4_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_XPERM4_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_XPERM8_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_XPERM8_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_XPERM8_stack, phys_name=SID_ZKT_08_XPERM8_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_XPERM8_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_ROR_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_ROR_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_ROR_stack, phys_name=SID_ZKT_08_ROR_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_ROR_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_ROL_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_ROL_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_ROL_stack, phys_name=SID_ZKT_08_ROL_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_ROL_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_RORI_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_RORI_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_RORI_stack, phys_name=SID_ZKT_08_RORI_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_RORI_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_RORW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_RORW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_RORW_stack, phys_name=SID_ZKT_08_RORW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_RORW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_ROLW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_ROLW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_ROLW_stack, phys_name=SID_ZKT_08_ROLW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_ROLW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_RORIW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_RORIW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_RORIW_stack, phys_name=SID_ZKT_08_RORIW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_RORIW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_ANDN_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_ANDN_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_ANDN_stack, phys_name=SID_ZKT_08_ANDN_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_ANDN_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_ORN_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_ORN_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_ORN_stack, phys_name=SID_ZKT_08_ORN_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_ORN_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_XNOR_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_XNOR_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_XNOR_stack, phys_name=SID_ZKT_08_XNOR_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_XNOR_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_PACK_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_PACK_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_PACK_stack, phys_name=SID_ZKT_08_PACK_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_PACK_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_PACKH_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_PACKH_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_PACKH_stack, phys_name=SID_ZKT_08_PACKH_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_PACKH_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_PACKW_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_PACKW_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_PACKW_stack, phys_name=SID_ZKT_08_PACKW_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_PACKW_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_BREV8_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_BREV8_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_BREV8_stack, phys_name=SID_ZKT_08_BREV8_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_BREV8_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_08_REV8_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_08_REV8_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_08_REV8_stack, phys_name=SID_ZKT_08_REV8_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_08_REV8_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_09_CZERO_EQZ_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_09_CZERO_EQZ_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_09_CZERO_EQZ_stack, phys_name=SID_ZKT_09_CZERO_EQZ_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_09_CZERO_EQZ_stack
.dword 0xc001c0de

;#random_addr(name=SID_ZKT_09_CZERO_NEZ_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_ZKT_09_CZERO_NEZ_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_ZKT_09_CZERO_NEZ_stack, phys_name=SID_ZKT_09_CZERO_NEZ_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_ZKT_09_CZERO_NEZ_stack
.dword 0xc001c0de
