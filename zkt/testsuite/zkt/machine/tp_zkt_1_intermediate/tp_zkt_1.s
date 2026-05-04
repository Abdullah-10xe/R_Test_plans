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
	li t1, 0
	csrr s3, time
	csrr a1, cycle
	csrr s0, instret
	auipc a4, 0x6ca
	auipc s9, 0x66e
	auipc s9, 0x61f
	auipc t3, 0x84
	auipc s9, 0x20d
	auipc s8, 0xf4
	auipc t6, 0x3f9
	auipc a7, 0x619
	auipc s8, 0x39b
	auipc s8, 0x3ca
	auipc t1, 0x539
	auipc t4, 0x30c
	auipc s2, 0x652
	auipc s9, 0x1b0
	auipc t4, 0xc3
	auipc t2, 0x3ea
	auipc t5, 0x3d
	auipc t2, 0x728
	auipc s2, 0x6b2
	auipc s10, 0x321
	auipc s2, 0x379
	auipc t2, 0x4df
	auipc t6, 0x61c
	auipc a0, 0x626
	auipc s11, 0x7
	auipc a6, 0x594
	auipc s6, 0x393
	auipc a2, 0x224
	auipc s8, 0x5c8
	auipc a5, 0x66d
	auipc s4, 0x1d7
	auipc t4, 0x4bd
	auipc t5, 0x792
	auipc t3, 0xd4
	auipc s11, 0x739
	auipc s4, 0x28d
	auipc s10, 0x41
	auipc a4, 0x30
	auipc s1, 0x37
	auipc t3, 0x535
	auipc s5, 0x457
	auipc s10, 0x15
	auipc t2, 0x786
	auipc s1, 0x70f
	auipc t5, 0x30f
	auipc s2, 0x580
	auipc s2, 0x1be
	auipc t2, 0x7c3
	auipc t3, 0x363
	auipc s7, 0x5d1
	auipc s11, 0x3e
	auipc a6, 0x43b
	auipc s4, 0x1c9
	auipc s9, 0x61f
	auipc a2, 0x383
	auipc s11, 0x786
	auipc a2, 0x3fa
	auipc t5, 0x46f
	auipc s4, 0x1e0
	auipc s8, 0x2c6
	auipc s7, 0x1db
	auipc t6, 0x56d
	auipc s7, 0x1c3
	auipc t2, 0x619
	auipc s10, 0x3b0
	auipc t5, 0x7a1
	auipc a2, 0x254
	auipc a3, 0x76c
	auipc t3, 0x2f
	auipc t5, 0x357
	auipc s11, 0x6b6
	auipc s2, 0x757
	auipc a7, 0x476
	auipc a4, 0x763
	auipc s1, 0x526
	auipc t6, 0xcf
	auipc s2, 0x17f
	auipc t4, 0x50b
	auipc t2, 0x7f3
	auipc t3, 0x5cd
	auipc s9, 0x6e4
	auipc s7, 0x262
	auipc s9, 0xfa
	auipc a5, 0x5f4
	auipc a7, 0x2ac
	auipc t2, 0x72d
	auipc s11, 0x5c8
	auipc t2, 0x7cc
	auipc s7, 0x5b3
	auipc t4, 0x404
	auipc a5, 0x780
	auipc s10, 0x7bf
	auipc s6, 0x363
	auipc a0, 0x412
	auipc a6, 0x6a6
	auipc a2, 0x74b
	auipc t5, 0x55f
	auipc a4, 0x187
	auipc s6, 0x270
	auipc t6, 0x248
	csrr s9, time
	csrr t2, cycle
	csrr s6, instret
	sub a2, s9, s3
	sub a7, t2, a1
	sub a5, s6, s0
	li t4, 0
	csrr s10, time
	csrr s8, cycle
	csrr a0, instret
	auipc s11, 0x4b6
	auipc s6, 0x7cc
	auipc s6, 0x712
	auipc a1, 0x401
	auipc s1, 0x6c8
	auipc t4, 0x789
	auipc a5, 0x40d
	auipc a3, 0x328
	auipc s3, 0x4b9
	auipc s5, 0x6d6
	auipc s0, 0x49
	auipc s2, 0x3da
	auipc s11, 0x1f4
	auipc a6, 0x5f6
	auipc t5, 0x664
	auipc s6, 0x33e
	auipc s7, 0x353
	auipc a6, 0x554
	auipc s11, 0x165
	auipc a5, 0x2f2
	auipc t3, 0x466
	auipc s7, 0x712
	auipc s6, 0x5a2
	auipc a7, 0x637
	auipc a5, 0x568
	auipc a4, 0x5ea
	auipc t4, 0x302
	auipc s0, 0xb4
	auipc s3, 0x385
	auipc a5, 0x552
	auipc a7, 0x414
	auipc s9, 0xe0
	auipc s7, 0x63d
	auipc s5, 0x152
	auipc a2, 0x42d
	auipc s4, 0x6bb
	auipc s11, 0x328
	auipc t1, 0x2f9
	auipc a2, 0x3ed
	auipc t1, 0x5df
	auipc t6, 0x3f
	auipc s1, 0x3c4
	auipc a7, 0x5c
	auipc s2, 0x27a
	auipc a1, 0x5a3
	auipc a4, 0x6cc
	auipc s0, 0x7e0
	auipc a7, 0x4ee
	auipc s11, 0x4c1
	auipc s6, 0x4a3
	auipc a6, 0x329
	auipc s1, 0x530
	auipc s3, 0x15f
	auipc s1, 0x15c
	auipc s7, 0x407
	auipc a5, 0x1d3
	auipc t3, 0x7de
	auipc s0, 0x1c
	auipc a4, 0x62d
	auipc s1, 0x19b
	auipc t6, 0x454
	auipc a5, 0x75f
	auipc t1, 0x6e4
	auipc t1, 0x465
	auipc s7, 0x1de
	auipc a7, 0x33f
	auipc t4, 0x41f
	auipc a2, 0x2c3
	auipc a7, 0x7a1
	auipc a6, 0x6ca
	auipc a3, 0x4a2
	auipc t2, 0x2d6
	auipc t5, 0x3af
	auipc s0, 0x74a
	auipc a3, 0x22a
	auipc s1, 0x549
	auipc t4, 0x465
	auipc t1, 0x4e2
	auipc t6, 0x7ab
	auipc a2, 0x5d8
	auipc s4, 0xe
	auipc s2, 0x314
	auipc a7, 0x647
	auipc a2, 0x6de
	auipc a3, 0x693
	auipc s11, 0x7a6
	auipc s7, 0x719
	auipc a4, 0x784
	auipc a3, 0x5ef
	auipc a7, 0x41c
	auipc a7, 0x67c
	auipc s4, 0x10b
	auipc a7, 0x429
	auipc s1, 0x63b
	auipc t2, 0x480
	auipc t3, 0x1a7
	auipc a3, 0x36b
	auipc a6, 0x79c
	auipc t1, 0x75
	auipc t5, 0x3dc
	csrr t4, time
	csrr s7, cycle
	csrr a1, instret
	sub a2, t4, s10
	sub s6, s7, s8
	sub a1, a1, a0
	li a3, 0
	csrr s3, time
	csrr s7, cycle
	csrr a2, instret
	auipc a3, 0x6f8
	auipc s1, 0x2ed
	auipc a4, 0x492
	auipc t1, 0x472
	auipc t2, 0x19c
	auipc s5, 0x78a
	auipc t5, 0x40c
	auipc s11, 0x351
	auipc t4, 0x3e4
	auipc t5, 0x684
	auipc s10, 0x2dd
	auipc t3, 0x353
	auipc a3, 0x2c7
	auipc t6, 0x6
	auipc s10, 0x451
	auipc t6, 0x455
	auipc a3, 0x4ff
	auipc t6, 0x64d
	auipc s0, 0x4e9
	auipc a0, 0x2a9
	auipc s1, 0x3ad
	auipc s9, 0x4cf
	auipc t1, 0x3c
	auipc t3, 0x672
	auipc s4, 0x1d9
	auipc s11, 0x518
	auipc t1, 0x16d
	auipc a7, 0x46a
	auipc a6, 0x4af
	auipc a5, 0x175
	auipc a5, 0x6e6
	auipc s2, 0xbe
	auipc s0, 0x666
	auipc s9, 0x46b
	auipc a7, 0x663
	auipc a6, 0x6d2
	auipc t4, 0x68b
	auipc s5, 0x775
	auipc s9, 0x20d
	auipc s4, 0x45
	auipc t2, 0x6be
	auipc t4, 0x78f
	auipc t6, 0x565
	auipc a0, 0x93
	auipc a3, 0xad
	auipc s1, 0x6f4
	auipc a7, 0x25
	auipc s0, 0x3a2
	auipc s10, 0x20
	auipc a3, 0x60b
	auipc s10, 0x60e
	auipc s5, 0x242
	auipc s11, 0x202
	auipc s2, 0x229
	auipc t1, 0xe3
	auipc s5, 0x663
	auipc a4, 0x502
	auipc a0, 0x17d
	auipc a4, 0x2c4
	auipc t1, 0x255
	auipc s4, 0x91
	auipc s9, 0x159
	auipc a7, 0x149
	auipc s2, 0x20d
	auipc s4, 0x43b
	auipc t2, 0x7a0
	auipc t5, 0x15b
	auipc s0, 0x543
	auipc s10, 0x231
	auipc a5, 0x532
	auipc s2, 0x5b4
	auipc a7, 0x25e
	auipc s10, 0x3a6
	auipc s5, 0x5a1
	auipc s2, 0x296
	auipc t5, 0x3fb
	auipc s10, 0x3cd
	auipc s0, 0xec
	auipc s8, 0x33
	auipc t2, 0x281
	auipc s9, 0x31a
	auipc a3, 0x2c2
	auipc t1, 0x361
	auipc s0, 0x661
	auipc t3, 0x184
	auipc t3, 0x214
	auipc s10, 0xe1
	auipc s0, 0x20a
	auipc a6, 0x735
	auipc t6, 0x5da
	auipc s8, 0x417
	auipc a6, 0x7d3
	auipc a4, 0x1af
	auipc s8, 0x7bc
	auipc s4, 0x4db
	auipc a5, 0x377
	auipc t2, 0x68c
	auipc s9, 0x7d0
	auipc s0, 0x2d
	auipc t2, 0x1d0
	csrr t6, time
	csrr s5, cycle
	csrr s11, instret
	sub t1, t6, s3
	sub s0, s5, s7
	sub t4, s11, a2
	beq s6, s0, pass_label_0
	li a3, failed_addr
	ld t1, 0(a3)
	jr t1
pass_label_0:
	beq a1, t4, pass_label_1
	li s4, failed_addr
	ld s5, 0(s4)
	jr s5
pass_label_1:
SID_ZKT_02_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_ADDI)
SID_ZKT_03_ADDI:
	li sp, SID_ZKT_03_ADDI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s0, 0
	csrr s6, time
	csrr t6, cycle
	csrr a4, instret
	addi t4, s0, 0x727
	addi t5, t4, 0x533
	addi a7, t5, 0x760
	addi t4, a7, 0x384
	addi t1, t4, 0x773
	addi s8, t1, 0x580
	addi t4, s8, 0x51f
	addi a2, t4, 0x5dc
	addi s8, a2, 0x1d1
	addi s9, s8, 0x1eb
	addi s3, s9, 0x283
	addi a5, s3, 0x3f8
	addi a0, a5, 0x581
	addi s9, a0, 0x3d7
	addi t2, s9, 0x7a9
	addi s0, t2, 0x1cf
	addi s10, s0, 0x5b6
	addi s10, s10, 0x34f
	addi t4, s10, 0x2b5
	addi s10, t4, 0x47e
	addi a0, s10, 0x4e6
	addi t3, a0, 0x744
	addi s2, t3, 0x5d6
	addi a5, s2, 0x75a
	addi t5, a5, 0x53d
	addi s0, t5, 0x236
	addi s5, s0, 0x7ca
	addi t4, s5, 0x52e
	addi t3, t4, 0x1c4
	addi a1, t3, 0x65
	addi a2, a1, 0x762
	addi t5, a2, 0x95
	addi s4, t5, 0x61e
	addi t3, s4, 0x41a
	addi s2, t3, 0x52c
	addi a6, s2, 0x707
	addi a0, a6, 0x2f6
	addi s7, a0, 0x149
	addi a0, s7, 0x41a
	addi a1, a0, 0x623
	addi s1, a1, 0x659
	addi s3, s1, 0x713
	addi s2, s3, 0x1a4
	addi s2, s2, 0x281
	addi s9, s2, 0x266
	addi s9, s9, 0x58d
	addi a7, s9, 0x268
	addi s4, a7, 0x6cd
	addi s9, s4, 0x46e
	addi s9, s9, 0x2fc
	addi s5, s9, 0x155
	addi a7, s5, 0x59f
	addi a2, a7, 0x59f
	addi a5, a2, 0x5e7
	addi s2, a5, 0x3ba
	addi s0, s2, 0x4c4
	addi t5, s0, 0xb1
	addi a0, t5, 0x6dc
	addi a6, a0, 0xff
	addi t1, a6, 0x72f
	addi s8, t1, 0x4dc
	addi s8, s8, 0x7b1
	addi s2, s8, 0x41f
	addi s8, s2, 0x494
	addi s9, s8, 0x307
	addi a5, s9, 0x16c
	addi a0, a5, 0x142
	addi t1, a0, 0x204
	addi s11, t1, 0x36c
	addi s7, s11, 0x1c0
	addi s5, s7, 0x78b
	addi s11, s5, 0x491
	addi s11, s11, 0x5c4
	addi a5, s11, 0x612
	addi s4, a5, 0x645
	addi t5, s4, 0x6d
	addi s11, t5, 0x3f8
	addi s3, s11, 0x576
	addi s8, s3, 0x329
	addi a5, s8, 0x5bf
	addi s9, a5, 0x51b
	addi a1, s9, 0x2cb
	addi s4, a1, 0x315
	addi s0, s4, 0x421
	addi s9, s0, 0x6c6
	addi a0, s9, 0x154
	addi a0, a0, 0x45d
	addi a2, a0, 0x5d9
	addi s2, a2, 0x7f7
	addi s9, s2, 0x56
	addi s9, s9, 0x434
	addi a6, s9, 0x7dc
	addi s9, a6, 0xbc
	addi a3, s9, 0x679
	addi s2, a3, 0x20d
	addi s8, s2, 0x50a
	addi s11, s8, 0xd1
	addi s4, s11, 0x226
	addi s7, s4, 0x5e8
	addi t5, s7, 0x750
	csrr t1, time
	csrr t4, cycle
	csrr t5, instret
	sub s5, t1, s6
	sub s7, t4, t6
	sub s2, t5, a4
	li t1, 0
	csrr t5, time
	csrr a7, cycle
	csrr t4, instret
	addi a0, t1, 0xae
	addi s4, a0, 0x7af
	addi t6, s4, 0x7cf
	addi a5, t6, 0x11f
	addi s3, a5, 0x7c3
	addi a1, s3, 0x637
	addi a1, a1, 0x4f2
	addi a4, a1, 0x6bf
	addi s6, a4, 0x7bf
	addi s8, s6, 0x54a
	addi s2, s8, 0x581
	addi s9, s2, 0x59d
	addi s1, s9, 0xaa
	addi s1, s1, 0x392
	addi a3, s1, 0x6d1
	addi a3, a3, 0x767
	addi s1, a3, 0x1f0
	addi t1, s1, 0x7c8
	addi t3, t1, 0x6d1
	addi a2, t3, 0x312
	addi a0, a2, 0x788
	addi a4, a0, 0x66e
	addi s3, a4, 0x73d
	addi a3, s3, 0x379
	addi a6, a3, 0x330
	addi s7, a6, 0x154
	addi s10, s7, 0x74a
	addi s0, s10, 0x29d
	addi a6, s0, 0x384
	addi t2, a6, 0x105
	addi s6, t2, 0x4fd
	addi t2, s6, 0x748
	addi s5, t2, 0x3ea
	addi a3, s5, 0x7af
	addi a3, a3, 0x1b5
	addi s10, a3, 0xf7
	addi t2, s10, 0x376
	addi s3, t2, 0x4d1
	addi t3, s3, 0x448
	addi s3, t3, 0x347
	addi s1, s3, 0x749
	addi a5, s1, 0xf4
	addi t3, a5, 0x54b
	addi t3, t3, 0x260
	addi s2, t3, 0x23b
	addi a1, s2, 0x1ff
	addi a0, a1, 0x30a
	addi s5, a0, 0x602
	addi a4, s5, 0x47c
	addi s1, a4, 0xb
	addi s3, s1, 0x7b0
	addi s10, s3, 0x187
	addi t1, s10, 0x43d
	addi s0, t1, 0x385
	addi a6, s0, 0x4a4
	addi t2, a6, 0x2e
	addi s5, t2, 0x42
	addi s10, s5, 0x508
	addi s0, s10, 0x7cb
	addi a1, s0, 0x4db
	addi s7, a1, 0x1f3
	addi s3, s7, 0x6b1
	addi s3, s3, 0x218
	addi a5, s3, 0x1aa
	addi a0, a5, 0x165
	addi s5, a0, 0x24a
	addi s7, s5, 0x132
	addi s8, s7, 0x459
	addi a3, s8, 0x19d
	addi t6, a3, 0x232
	addi s4, t6, 0x280
	addi s11, s4, 0x4b2
	addi s9, s11, 0x612
	addi s5, s9, 0x204
	addi s0, s5, 0x6ab
	addi a5, s0, 0x57a
	addi s11, a5, 0x395
	addi s10, s11, 0x657
	addi t1, s10, 0x6e6
	addi s8, t1, 0x67b
	addi s1, s8, 0x6da
	addi t1, s1, 0x7cc
	addi a4, t1, 0x15b
	addi a2, a4, 0x45f
	addi s6, a2, 0x2de
	addi s5, s6, 0x3f0
	addi a1, s5, 0x35f
	addi s5, a1, 0x6db
	addi t1, s5, 0xfc
	addi s2, t1, 0x62a
	addi s6, s2, 0x1ae
	addi s11, s6, 0x493
	addi s4, s11, 0x70b
	addi a0, s4, 0x313
	addi t2, a0, 0x1a6
	addi a1, t2, 0x248
	addi a0, a1, 0x67f
	addi s10, a0, 0xe0
	addi t3, s10, 0x73e
	addi s3, t3, 0x678
	csrr t2, time
	csrr s7, cycle
	csrr a1, instret
	sub s0, t2, t5
	sub a3, s7, a7
	sub s5, a1, t4
	li a5, 0
	csrr s10, time
	csrr s9, cycle
	csrr t1, instret
	addi a6, a5, 0x34
	addi a7, a6, 0xf4
	addi a7, a7, 0x490
	addi a2, a7, 0x5fd
	addi a0, a2, 0x1e
	addi s11, a0, 0x45f
	addi a1, s11, 0x262
	addi s7, a1, 0x7bb
	addi t2, s7, 0x567
	addi t2, t2, 0x619
	addi s3, t2, 0x5ce
	addi t5, s3, 0x7cc
	addi t5, t5, 0x534
	addi t5, t5, 0x11a
	addi t3, t5, 0x9c
	addi s0, t3, 0x403
	addi s8, s0, 0x300
	addi t3, s8, 0x497
	addi s0, t3, 0x674
	addi s4, s0, 0x280
	addi s11, s4, 0x382
	addi t2, s11, 0x409
	addi s11, t2, 0x56e
	addi s0, s11, 0x2dd
	addi s0, s0, 0x614
	addi t3, s0, 0x43d
	addi s1, t3, 0x299
	addi s7, s1, 0x4
	addi s0, s7, 0x100
	addi s8, s0, 0x38c
	addi s1, s8, 0x5c1
	addi a6, s1, 0x39b
	addi s0, a6, 0x2d0
	addi t2, s0, 0x273
	addi s2, t2, 0x453
	addi a1, s2, 0x334
	addi s2, a1, 0x2ba
	addi s6, s2, 0x646
	addi t5, s6, 0x5dc
	addi a2, t5, 0x57a
	addi a5, a2, 0x495
	addi a0, a5, 0x3f3
	addi a4, a0, 0xea
	addi t3, a4, 0x531
	addi s2, t3, 0x75a
	addi t4, s2, 0x308
	addi a7, t4, 0x312
	addi a7, a7, 0x1a4
	addi s4, a7, 0x477
	addi t3, s4, 0xa
	addi a4, t3, 0x7f8
	addi t4, a4, 0x23b
	addi t5, t4, 0x518
	addi s7, t5, 0x4cc
	addi a2, s7, 0x5ca
	addi s3, a2, 0x710
	addi a6, s3, 0x5eb
	addi s7, a6, 0x6a5
	addi s11, s7, 0x5d6
	addi t4, s11, 0x419
	addi t2, t4, 0x19a
	addi a4, t2, 0x7e8
	addi s3, a4, 0x765
	addi t6, s3, 0x3b4
	addi t4, t6, 0x4d1
	addi a7, t4, 0x6b0
	addi s0, a7, 0x425
	addi t3, s0, 0x348
	addi a6, t3, 0x782
	addi a1, a6, 0x5f8
	addi s7, a1, 0x5b5
	addi s1, s7, 0x7e9
	addi t6, s1, 0x7e9
	addi s6, t6, 0x274
	addi t2, s6, 0x5a2
	addi t4, t2, 0x15f
	addi s4, t4, 0x39b
	addi s3, s4, 0x4f8
	addi a1, s3, 0x55c
	addi s2, a1, 0x442
	addi t3, s2, 0x197
	addi t5, t3, 0x2e3
	addi t2, t5, 0x438
	addi s0, t2, 0xa
	addi s2, s0, 0x570
	addi t5, s2, 0x320
	addi a7, t5, 0x4a5
	addi s6, a7, 0x36b
	addi t4, s6, 0x7c6
	addi s2, t4, 0x340
	addi a1, s2, 0x2b3
	addi t4, a1, 0x6e6
	addi t5, t4, 0x4fc
	addi a2, t5, 0x4af
	addi a4, a2, 0x7ce
	addi a4, a4, 0x5e1
	addi s6, a4, 0x59b
	addi t4, s6, 0x731
	addi a2, t4, 0x7c0
	addi s6, a2, 0x600
	csrr t5, time
	csrr t4, cycle
	csrr s8, instret
	sub t3, t5, s10
	sub s1, t4, s9
	sub s4, s8, t1
	beq a3, s1, pass_label_2
	li a1, failed_addr
	ld a2, 0(a1)
	jr a2
pass_label_2:
	beq s5, s4, pass_label_3
	li s9, failed_addr
	ld s2, 0(s9)
	jr s2
pass_label_3:
SID_ZKT_03_ADDI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SLTI)
SID_ZKT_03_SLTI:
	li sp, SID_ZKT_03_SLTI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t4, 0
	csrr s3, time
	csrr t5, cycle
	csrr a4, instret
	slti s5, t4, 0xca
	slti a7, s5, 0x349
	slti s9, a7, 0x2c6
	slti a2, s9, 0x105
	slti a2, a2, 0x49c
	slti s11, a2, 0x87
	slti s7, s11, 0x5c
	slti s7, s7, 0x26a
	slti s10, s7, 0x688
	slti s0, s10, 0x667
	slti s1, s0, 0x538
	slti a3, s1, 0x447
	slti s2, a3, 0x285
	slti a5, s2, 0x35a
	slti s8, a5, 0x265
	slti t1, s8, 0x28f
	slti a6, t1, 0x2d5
	slti s5, a6, 0x231
	slti s6, s5, 0x29d
	slti a3, s6, 0x600
	slti s4, a3, 0x5ff
	slti s0, s4, 0x42c
	slti a3, s0, 0x405
	slti t4, a3, 0x14
	slti t2, t4, 0x438
	slti t3, t2, 0xfc
	slti t1, t3, 0x133
	slti t4, t1, 0x28c
	slti a1, t4, 0x753
	slti a3, a1, 0x5d3
	slti s7, a3, 0x29d
	slti t3, s7, 0x64a
	slti s6, t3, 0x2a1
	slti a6, s6, 0x498
	slti t6, a6, 0x8f
	slti s6, t6, 0x3a0
	slti a2, s6, 0x7d8
	slti s7, a2, 0x23f
	slti a2, s7, 0x3d9
	slti t1, a2, 0x3a5
	slti a2, t1, 0x750
	slti s11, a2, 0x2ec
	slti s5, s11, 0x76e
	slti s11, s5, 0x5f1
	slti s4, s11, 0x7c5
	slti s2, s4, 0x30e
	slti s6, s2, 0x689
	slti s6, s6, 0x720
	slti a7, s6, 0x76a
	slti s0, a7, 0xa3
	slti a7, s0, 0x763
	slti s6, a7, 0x4a4
	slti s10, s6, 0x66c
	slti s7, s10, 0x75
	slti a5, s7, 0x116
	slti s7, a5, 0x66
	slti s11, s7, 0x433
	slti a6, s11, 0x3f2
	slti s11, a6, 0x49d
	slti a7, s11, 0x6d6
	slti s0, a7, 0x7f3
	slti s5, s0, 0x206
	slti s8, s5, 0x648
	slti a7, s8, 0x1f9
	slti a5, a7, 0x5a2
	slti t2, a5, 0x49a
	slti a1, t2, 0x5fc
	slti s10, a1, 0x2b8
	slti a5, s10, 0x2e7
	slti a5, a5, 0x7ef
	slti t6, a5, 0x78c
	slti t3, t6, 0x663
	slti a7, t3, 0x528
	slti s2, a7, 0x2f9
	slti s5, s2, 0x33b
	slti a5, s5, 0x278
	slti s7, a5, 0x3ba
	slti s10, s7, 0x4cc
	slti a5, s10, 0x7d9
	slti a7, a5, 0x2bc
	slti a2, a7, 0x444
	slti s10, a2, 0x412
	slti s0, s10, 0x15a
	slti s2, s0, 0x3e
	slti t4, s2, 0x132
	slti a0, t4, 0x203
	slti t4, a0, 0x582
	slti t6, t4, 0x1c7
	slti t6, t6, 0x483
	slti s8, t6, 0x114
	slti s1, s8, 0x744
	slti s2, s1, 0xe9
	slti s8, s2, 0x17d
	slti a2, s8, 0x624
	slti t3, a2, 0x34c
	slti s4, t3, 0x786
	slti a1, s4, 0x5d5
	slti s1, a1, 0x4f8
	slti s7, s1, 0x69
	slti a5, s7, 0x681
	csrr a5, time
	csrr s5, cycle
	csrr s2, instret
	sub a6, a5, s3
	sub s11, s5, t5
	sub a0, s2, a4
	li s10, 0
	csrr a1, time
	csrr a6, cycle
	csrr a4, instret
	slti s11, s10, 0xce
	slti a3, s11, 0x7d7
	slti s5, a3, 0x460
	slti s10, s5, 0x576
	slti t5, s10, 0x223
	slti a7, t5, 0x5ba
	slti s3, a7, 0xde
	slti a2, s3, 0x1a5
	slti t3, a2, 0x21a
	slti a3, t3, 0x8b
	slti a3, a3, 0x511
	slti s1, a3, 0x494
	slti s4, s1, 0x439
	slti t5, s4, 0x523
	slti t6, t5, 0xa3
	slti s3, t6, 0x6da
	slti s11, s3, 0x98
	slti t5, s11, 0x65d
	slti t3, t5, 0x6d1
	slti s7, t3, 0x1c0
	slti s5, s7, 0x528
	slti t4, s5, 0x6b7
	slti t3, t4, 0x166
	slti s8, t3, 0x41a
	slti s7, s8, 0x6e8
	slti s7, s7, 0x377
	slti t6, s7, 0x2f
	slti s5, t6, 0x4bc
	slti s0, s5, 0x2f4
	slti t1, s0, 0x736
	slti t3, t1, 0x6ca
	slti s1, t3, 0x3e7
	slti s7, s1, 0x5b1
	slti s7, s7, 0x678
	slti s2, s7, 0x248
	slti s1, s2, 0x1c5
	slti a7, s1, 0x724
	slti s11, a7, 0x19d
	slti s2, s11, 0x4cb
	slti s0, s2, 0x3f5
	slti t1, s0, 0x6ef
	slti t5, t1, 0x733
	slti a5, t5, 0x727
	slti s10, a5, 0x1e4
	slti a2, s10, 0x36a
	slti a2, a2, 0x3a1
	slti s8, a2, 0x56a
	slti t4, s8, 0x2f2
	slti t2, t4, 0x45e
	slti s8, t2, 0x750
	slti a5, s8, 0x791
	slti a5, a5, 0x185
	slti s6, a5, 0x665
	slti t4, s6, 0x3de
	slti t6, t4, 0x5d1
	slti t4, t6, 0x97
	slti s4, t4, 0x686
	slti s1, s4, 0x6bc
	slti s6, s1, 0x7ff
	slti s7, s6, 0x7d2
	slti a5, s7, 0x210
	slti s4, a5, 0x345
	slti a5, s4, 0x19f
	slti s0, a5, 0x13
	slti t2, s0, 0x5fc
	slti t5, t2, 0x444
	slti s9, t5, 0x62c
	slti a0, s9, 0x30e
	slti a2, a0, 0x420
	slti t5, a2, 0x705
	slti t1, t5, 0x3e8
	slti s5, t1, 0x9f
	slti s8, s5, 0x33d
	slti t4, s8, 0x4f0
	slti s8, t4, 0x712
	slti s5, s8, 0x417
	slti s7, s5, 0x661
	slti s1, s7, 0x4a3
	slti s8, s1, 0x4b0
	slti t5, s8, 0x36a
	slti t2, t5, 0x55
	slti a3, t2, 0x2d3
	slti s11, a3, 0x6d2
	slti s9, s11, 0x7ea
	slti a2, s9, 0x3ad
	slti s10, a2, 0x10
	slti s2, s10, 0x187
	slti a0, s2, 0x7b2
	slti s6, a0, 0x268
	slti a0, s6, 0x594
	slti a2, a0, 0x58a
	slti t3, a2, 0x525
	slti s8, t3, 0xe
	slti t6, s8, 0x456
	slti s4, t6, 0xf8
	slti s0, s4, 0x696
	slti t2, s0, 0x26e
	slti s11, t2, 0x41c
	slti s1, s11, 0x71b
	slti a3, s1, 0x7f6
	csrr t6, time
	csrr a7, cycle
	csrr a0, instret
	sub s3, t6, a1
	sub t4, a7, a6
	sub t5, a0, a4
	li s0, 0
	csrr s4, time
	csrr a4, cycle
	csrr s6, instret
	slti s7, s0, 0x5fc
	slti s11, s7, 0x289
	slti s8, s11, 0x7c7
	slti a5, s8, 0x639
	slti s0, a5, 0x45b
	slti a1, s0, 0x52c
	slti s10, a1, 0x496
	slti a6, s10, 0x7f6
	slti a6, a6, 0x46c
	slti a2, a6, 0x245
	slti a6, a2, 0x437
	slti t6, a6, 0x34d
	slti s11, t6, 0x459
	slti s9, s11, 0x787
	slti t6, s9, 0x68f
	slti s9, t6, 0x76d
	slti a2, s9, 0x7a3
	slti s10, a2, 0x427
	slti s9, s10, 0x347
	slti s0, s9, 0x4d5
	slti a2, s0, 0x50d
	slti a5, a2, 0x4a9
	slti a0, a5, 0x279
	slti s3, a0, 0x3a1
	slti s3, s3, 0x26d
	slti s8, s3, 0x10f
	slti a5, s8, 0x40f
	slti t2, a5, 0x390
	slti s5, t2, 0x4b3
	slti t2, s5, 0x122
	slti s3, t2, 0x469
	slti s1, s3, 0x631
	slti s7, s1, 0x7d3
	slti s11, s7, 0x7ce
	slti a6, s11, 0x150
	slti a5, a6, 0x208
	slti s9, a5, 0x51a
	slti s11, s9, 0x16
	slti t1, s11, 0x7f7
	slti a2, t1, 0x367
	slti s9, a2, 0x5e6
	slti a0, s9, 0x54d
	slti s11, a0, 0x489
	slti s8, s11, 0x4d
	slti t1, s8, 0x2f5
	slti a1, t1, 0x360
	slti a6, a1, 0x33a
	slti a7, a6, 0x243
	slti a5, a7, 0x780
	slti a3, a5, 0x548
	slti a3, a3, 0x72c
	slti a6, a3, 0x605
	slti s9, a6, 0x55e
	slti a5, s9, 0x28
	slti a3, a5, 0x733
	slti a7, a3, 0xbc
	slti a5, a7, 0x769
	slti s2, a5, 0xbb
	slti a5, s2, 0x6c8
	slti a2, a5, 0xc
	slti a6, a2, 0x314
	slti s5, a6, 0x229
	slti t2, s5, 0x3ba
	slti s10, t2, 0x22f
	slti s5, s10, 0x661
	slti s1, s5, 0x643
	slti s11, s1, 0x2fe
	slti a6, s11, 0x519
	slti a3, a6, 0x601
	slti s2, a3, 0x6d4
	slti s9, s2, 0x3dc
	slti a0, s9, 0x629
	slti s7, a0, 0x2b4
	slti s5, s7, 0x31e
	slti a6, s5, 0x3a9
	slti s1, a6, 0x670
	slti s3, s1, 0xf1
	slti s1, s3, 0x3e1
	slti t1, s1, 0x2d9
	slti t2, t1, 0x12b
	slti s11, t2, 0x355
	slti s11, s11, 0x132
	slti t2, s11, 0x28
	slti t3, t2, 0x7f8
	slti t1, t3, 0x163
	slti t6, t1, 0x686
	slti t6, t6, 0x217
	slti a5, t6, 0x2f4
	slti a6, a5, 0x6df
	slti t1, a6, 0x107
	slti a7, t1, 0x4ba
	slti t2, a7, 0x64d
	slti s0, t2, 0x24f
	slti t3, s0, 0x79b
	slti s0, t3, 0x7fe
	slti t6, s0, 0x350
	slti s7, t6, 0x213
	slti s11, s7, 0x786
	slti t1, s11, 0x41f
	slti a6, t1, 0x24f
	csrr t1, time
	csrr t3, cycle
	csrr a1, instret
	sub a3, t1, s4
	sub s11, t3, a4
	sub a2, a1, s6
	beq t4, s11, pass_label_4
	li s6, failed_addr
	ld s11, 0(s6)
	jr s11
pass_label_4:
	beq t5, a2, pass_label_5
	li s6, failed_addr
	ld s8, 0(s6)
	jr s8
pass_label_5:
SID_ZKT_03_SLTI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SLTIU)
SID_ZKT_03_SLTIU:
	li sp, SID_ZKT_03_SLTIU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a4, 0
	csrr a3, time
	csrr a2, cycle
	csrr s0, instret
	sltiu t3, a4, 0x682
	sltiu s11, t3, 0x59
	sltiu t6, s11, 0x6aa
	sltiu a6, t6, 0xe6
	sltiu t5, a6, 0x4b5
	sltiu s8, t5, 0x120
	sltiu s8, s8, 0x441
	sltiu s2, s8, 0x413
	sltiu t6, s2, 0x61e
	sltiu a1, t6, 0x2dc
	sltiu a6, a1, 0x46b
	sltiu a4, a6, 0x22d
	sltiu s10, a4, 0x646
	sltiu s10, s10, 0x7e1
	sltiu s3, s10, 0x48e
	sltiu s1, s3, 0x748
	sltiu s10, s1, 0x7c2
	sltiu a0, s10, 0x540
	sltiu s4, a0, 0x2dc
	sltiu a0, s4, 0x66d
	sltiu t2, a0, 0x3cd
	sltiu t1, t2, 0x691
	sltiu t6, t1, 0x597
	sltiu a1, t6, 0x1f9
	sltiu a4, a1, 0x76e
	sltiu a1, a4, 0x67a
	sltiu s7, a1, 0x4fc
	sltiu t1, s7, 0x1ee
	sltiu a4, t1, 0xdb
	sltiu s9, a4, 0x482
	sltiu a4, s9, 0x7a0
	sltiu t6, a4, 0x2df
	sltiu a1, t6, 0x6fc
	sltiu s5, a1, 0x147
	sltiu s8, s5, 0xf1
	sltiu s4, s8, 0x639
	sltiu t3, s4, 0x56
	sltiu s1, t3, 0x757
	sltiu s2, s1, 0x5a4
	sltiu s1, s2, 0x285
	sltiu t1, s1, 0x364
	sltiu s7, t1, 0x70c
	sltiu t5, s7, 0x5d4
	sltiu s10, t5, 0x2c8
	sltiu s9, s10, 0x20a
	sltiu s9, s9, 0x545
	sltiu s11, s9, 0x504
	sltiu s5, s11, 0x7fa
	sltiu s1, s5, 0x732
	sltiu t5, s1, 0x630
	sltiu t6, t5, 0x756
	sltiu s6, t6, 0x75
	sltiu s9, s6, 0x4f2
	sltiu s8, s9, 0x37d
	sltiu t2, s8, 0x354
	sltiu t2, t2, 0x305
	sltiu s11, t2, 0x2e1
	sltiu a5, s11, 0x25c
	sltiu s2, a5, 0x60b
	sltiu t2, s2, 0x68a
	sltiu s8, t2, 0x2bd
	sltiu s3, s8, 0x38a
	sltiu s2, s3, 0x665
	sltiu s5, s2, 0x59b
	sltiu s6, s5, 0x1ea
	sltiu t1, s6, 0x517
	sltiu s2, t1, 0x4e3
	sltiu t4, s2, 0x429
	sltiu a6, t4, 0x12a
	sltiu t6, a6, 0x75
	sltiu t3, t6, 0x2be
	sltiu s4, t3, 0x565
	sltiu t6, s4, 0xeb
	sltiu a1, t6, 0x724
	sltiu s7, a1, 0x41d
	sltiu s6, s7, 0x163
	sltiu a1, s6, 0x45b
	sltiu s4, a1, 0x527
	sltiu s11, s4, 0x504
	sltiu s9, s11, 0x3e9
	sltiu t6, s9, 0x72a
	sltiu s7, t6, 0x2bd
	sltiu s2, s7, 0x612
	sltiu s10, s2, 0x5b1
	sltiu s10, s10, 0xfb
	sltiu t2, s10, 0x7d0
	sltiu t3, t2, 0x4ac
	sltiu t2, t3, 0x2f
	sltiu s9, t2, 0x3da
	sltiu t5, s9, 0x730
	sltiu t5, t5, 0x1af
	sltiu s10, t5, 0x313
	sltiu t1, s10, 0x510
	sltiu a7, t1, 0x6ae
	sltiu a7, a7, 0x7a2
	sltiu a5, a7, 0x168
	sltiu t4, a5, 0x330
	sltiu s10, t4, 0x5be
	sltiu s7, s10, 0x1d5
	sltiu s10, s7, 0xcf
	csrr s9, time
	csrr a7, cycle
	csrr s7, instret
	sub s6, s9, a3
	sub s4, a7, a2
	sub a4, s7, s0
	li a2, 0
	csrr a6, time
	csrr s0, cycle
	csrr s7, instret
	sltiu s9, a2, 0x1ff
	sltiu a3, s9, 0x2b2
	sltiu t6, a3, 0x7cf
	sltiu t4, t6, 0x7c5
	sltiu t3, t4, 0x2a4
	sltiu t4, t3, 0x543
	sltiu s6, t4, 0x1f9
	sltiu s10, s6, 0x649
	sltiu t2, s10, 0x56d
	sltiu s9, t2, 0x3b3
	sltiu s3, s9, 0x5f4
	sltiu s9, s3, 0x3c7
	sltiu a1, s9, 0x2f7
	sltiu s2, a1, 0x3f3
	sltiu s10, s2, 0x539
	sltiu a0, s10, 0x632
	sltiu t4, a0, 0x551
	sltiu s8, t4, 0x5cc
	sltiu s3, s8, 0x781
	sltiu a7, s3, 0x18f
	sltiu s6, a7, 0x377
	sltiu a0, s6, 0x389
	sltiu t6, a0, 0x333
	sltiu a4, t6, 0x459
	sltiu t5, a4, 0xf9
	sltiu s11, t5, 0x495
	sltiu t5, s11, 0x3ea
	sltiu s5, t5, 0x76d
	sltiu s8, s5, 0x224
	sltiu a7, s8, 0x6ba
	sltiu t3, a7, 0x103
	sltiu a3, t3, 0x135
	sltiu s8, a3, 0x1b
	sltiu s11, s8, 0x305
	sltiu s9, s11, 0x354
	sltiu s5, s9, 0xe2
	sltiu a0, s5, 0x667
	sltiu t3, a0, 0x38
	sltiu s6, t3, 0x53b
	sltiu a1, s6, 0x9b
	sltiu s10, a1, 0x78a
	sltiu t5, s10, 0x179
	sltiu s10, t5, 0x3ae
	sltiu t3, s10, 0x623
	sltiu a5, t3, 0x307
	sltiu a7, a5, 0x559
	sltiu t1, a7, 0x407
	sltiu a0, t1, 0x665
	sltiu s4, a0, 0x688
	sltiu a7, s4, 0x251
	sltiu s3, a7, 0x75a
	sltiu t4, s3, 0x141
	sltiu s9, t4, 0x13e
	sltiu a5, s9, 0x7c9
	sltiu a2, a5, 0x435
	sltiu s3, a2, 0x69e
	sltiu s4, s3, 0xdb
	sltiu s2, s4, 0x796
	sltiu a5, s2, 0x20c
	sltiu t3, a5, 0x29
	sltiu t6, t3, 0x3ba
	sltiu a0, t6, 0x32f
	sltiu s3, a0, 0x67f
	sltiu a5, s3, 0x515
	sltiu a0, a5, 0x5a6
	sltiu t5, a0, 0x5e6
	sltiu t4, t5, 0x65a
	sltiu a1, t4, 0x750
	sltiu s9, a1, 0x1d6
	sltiu t6, s9, 0x450
	sltiu t2, t6, 0x593
	sltiu t5, t2, 0x323
	sltiu a5, t5, 0x7f1
	sltiu s1, a5, 0xd
	sltiu s3, s1, 0x45d
	sltiu a2, s3, 0x671
	sltiu t5, a2, 0x201
	sltiu s2, t5, 0x7de
	sltiu s5, s2, 0x365
	sltiu a2, s5, 0x745
	sltiu s3, a2, 0x148
	sltiu s1, s3, 0x54f
	sltiu s4, s1, 0x171
	sltiu s8, s4, 0x2c0
	sltiu s3, s8, 0x54f
	sltiu s9, s3, 0x1ec
	sltiu a5, s9, 0x9e
	sltiu t2, a5, 0x636
	sltiu s1, t2, 0x44d
	sltiu a4, s1, 0x77e
	sltiu s9, a4, 0x479
	sltiu a5, s9, 0x7b1
	sltiu s10, a5, 0x14c
	sltiu s11, s10, 0x16a
	sltiu a4, s11, 0x304
	sltiu t2, a4, 0x4b1
	sltiu a3, t2, 0x2f
	sltiu t3, a3, 0x41d
	sltiu a2, t3, 0x1bf
	sltiu s4, a2, 0x36e
	csrr s3, time
	csrr t2, cycle
	csrr t1, instret
	sub a6, s3, a6
	sub s9, t2, s0
	sub s4, t1, s7
	li a0, 0
	csrr t3, time
	csrr s7, cycle
	csrr t4, instret
	sltiu s0, a0, 0x1e5
	sltiu a2, s0, 0x65d
	sltiu s10, a2, 0x55
	sltiu t1, s10, 0x77f
	sltiu s0, t1, 0x423
	sltiu s6, s0, 0x5cf
	sltiu s5, s6, 0x188
	sltiu a3, s5, 0x59d
	sltiu a6, a3, 0x40b
	sltiu s1, a6, 0x589
	sltiu s2, s1, 0x4e8
	sltiu a6, s2, 0x53d
	sltiu s8, a6, 0x7ff
	sltiu s2, s8, 0x44e
	sltiu t5, s2, 0xa1
	sltiu s0, t5, 0x1fe
	sltiu s10, s0, 0x332
	sltiu s8, s10, 0x63f
	sltiu a3, s8, 0x3bb
	sltiu s6, a3, 0xf6
	sltiu t1, s6, 0x48c
	sltiu a0, t1, 0x529
	sltiu t1, a0, 0x66
	sltiu a6, t1, 0x31b
	sltiu a1, a6, 0xba
	sltiu a5, a1, 0x47d
	sltiu a5, a5, 0xc4
	sltiu s5, a5, 0x524
	sltiu s2, s5, 0x688
	sltiu a3, s2, 0x3d7
	sltiu a5, a3, 0x5f
	sltiu s0, a5, 0x7d6
	sltiu a3, s0, 0x428
	sltiu s0, a3, 0x1ec
	sltiu s11, s0, 0x63b
	sltiu a4, s11, 0x1b
	sltiu s1, a4, 0x2d
	sltiu s6, s1, 0x7a7
	sltiu s2, s6, 0x6e2
	sltiu s3, s2, 0x281
	sltiu t5, s3, 0x3be
	sltiu a1, t5, 0x23c
	sltiu s2, a1, 0x5cb
	sltiu s2, s2, 0x356
	sltiu a6, s2, 0x158
	sltiu t1, a6, 0x4c5
	sltiu a0, t1, 0x113
	sltiu a2, a0, 0x7e6
	sltiu s0, a2, 0x481
	sltiu s2, s0, 0x5ac
	sltiu t6, s2, 0x6a0
	sltiu a0, t6, 0x28e
	sltiu s1, a0, 0x62d
	sltiu a3, s1, 0x44a
	sltiu t6, a3, 0x51a
	sltiu s10, t6, 0x399
	sltiu s1, s10, 0x7f2
	sltiu a1, s1, 0x406
	sltiu a6, a1, 0x66f
	sltiu t5, a6, 0x35a
	sltiu s10, t5, 0x471
	sltiu a5, s10, 0x15a
	sltiu t2, a5, 0x59a
	sltiu s1, t2, 0x32c
	sltiu a0, s1, 0x599
	sltiu s8, a0, 0x31f
	sltiu a7, s8, 0x67a
	sltiu t6, a7, 0x19e
	sltiu s10, t6, 0x3f9
	sltiu t1, s10, 0x68c
	sltiu a7, t1, 0x23d
	sltiu s11, a7, 0x2e4
	sltiu t1, s11, 0x76f
	sltiu t1, t1, 0x139
	sltiu t6, t1, 0x216
	sltiu s1, t6, 0x48b
	sltiu s0, s1, 0x23f
	sltiu a3, s0, 0x6c5
	sltiu a6, a3, 0x169
	sltiu s3, a6, 0x641
	sltiu a3, s3, 0x5c7
	sltiu s2, a3, 0x4fc
	sltiu s3, s2, 0xae
	sltiu s0, s3, 0x5dc
	sltiu a2, s0, 0x2e5
	sltiu s8, a2, 0x2b3
	sltiu a6, s8, 0x770
	sltiu t2, a6, 0x127
	sltiu a4, t2, 0x214
	sltiu s1, a4, 0x20d
	sltiu s0, s1, 0x207
	sltiu t6, s0, 0x2ce
	sltiu s0, t6, 0x315
	sltiu s2, s0, 0x23e
	sltiu a7, s2, 0x489
	sltiu a7, a7, 0x3c0
	sltiu s5, a7, 0x1e
	sltiu s6, s5, 0x134
	sltiu t6, s6, 0x7a4
	sltiu t5, t6, 0x10d
	csrr t1, time
	csrr s8, cycle
	csrr t6, instret
	sub a5, t1, t3
	sub a1, s8, s7
	sub t2, t6, t4
	beq s9, a1, pass_label_6
	li s11, failed_addr
	ld a5, 0(s11)
	jr a5
pass_label_6:
	beq s4, t2, pass_label_7
	li a6, failed_addr
	ld s10, 0(a6)
	jr s10
pass_label_7:
SID_ZKT_03_SLTIU_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_XORI)
SID_ZKT_03_XORI:
	li sp, SID_ZKT_03_XORI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s7, 0
	csrr a2, time
	csrr s6, cycle
	csrr a3, instret
	xori a6, s7, 0x794
	xori s2, a6, 0x43c
	xori t5, s2, 0x19d
	xori t4, t5, 0x1af
	xori t3, t4, 0x38e
	xori a7, t3, 0x252
	xori a5, a7, 0x1f4
	xori a1, a5, 0x3ef
	xori s3, a1, 0x40f
	xori t6, s3, 0x2fb
	xori t2, t6, 0x29c
	xori s8, t2, 0x325
	xori a5, s8, 0x791
	xori a5, a5, 0x53d
	xori t4, a5, 0x99
	xori s0, t4, 0x192
	xori a6, s0, 0x4c4
	xori s2, a6, 0x176
	xori a1, s2, 0x183
	xori a4, a1, 0x57c
	xori t1, a4, 0x4ff
	xori a6, t1, 0x263
	xori s10, a6, 0x7a7
	xori s0, s10, 0x779
	xori a6, s0, 0x4a9
	xori s4, a6, 0x36b
	xori s7, s4, 0x4eb
	xori t3, s7, 0x3cd
	xori s3, t3, 0x2eb
	xori t5, s3, 0x32
	xori a5, t5, 0x3e9
	xori s9, a5, 0x2d
	xori a0, s9, 0x773
	xori a4, a0, 0xd9
	xori t6, a4, 0x548
	xori s11, t6, 0x504
	xori t3, s11, 0x4a2
	xori s8, t3, 0x553
	xori t1, s8, 0x4f8
	xori s5, t1, 0x7a1
	xori s4, s5, 0x6c7
	xori t5, s4, 0x378
	xori a7, t5, 0x6a1
	xori t1, a7, 0x5ac
	xori t4, t1, 0x4ab
	xori s11, t4, 0x2c2
	xori a6, s11, 0x2b9
	xori s3, a6, 0x9a
	xori a6, s3, 0x52f
	xori s0, a6, 0x35f
	xori a1, s0, 0x192
	xori t2, a1, 0x59f
	xori a0, t2, 0x420
	xori s2, a0, 0x672
	xori a5, s2, 0x3f7
	xori s7, a5, 0x7a0
	xori s5, s7, 0x6bf
	xori a7, s5, 0x6ab
	xori a7, a7, 0x4e0
	xori t5, a7, 0x485
	xori a0, t5, 0x54b
	xori s0, a0, 0x46a
	xori s4, s0, 0x787
	xori s10, s4, 0x405
	xori s11, s10, 0x6da
	xori t1, s11, 0x3d5
	xori t2, t1, 0x4cf
	xori a5, t2, 0x574
	xori s7, a5, 0x5eb
	xori a0, s7, 0x49e
	xori s7, a0, 0x740
	xori t2, s7, 0x6de
	xori a7, t2, 0x627
	xori t2, a7, 0x39c
	xori t5, t2, 0x4d7
	xori a4, t5, 0x3c7
	xori s10, a4, 0x155
	xori a6, s10, 0x6ab
	xori a0, a6, 0x228
	xori s0, a0, 0x56a
	xori t4, s0, 0x691
	xori a6, t4, 0x435
	xori s0, a6, 0x26c
	xori t3, s0, 0x484
	xori s5, t3, 0x621
	xori t6, s5, 0x675
	xori t5, t6, 0x32e
	xori t1, t5, 0x4de
	xori s0, t1, 0x454
	xori s7, s0, 0x215
	xori t2, s7, 0x20e
	xori s10, t2, 0x27e
	xori a6, s10, 0x21
	xori s5, a6, 0x4d9
	xori a0, s5, 0x612
	xori t4, a0, 0x60
	xori a4, t4, 0x644
	xori t5, a4, 0x3ac
	xori t2, t5, 0x3ac
	xori a6, t2, 0x725
	csrr s1, time
	csrr t1, cycle
	csrr s2, instret
	sub t6, s1, a2
	sub s11, t1, s6
	sub s7, s2, a3
	li s1, 0
	csrr s4, time
	csrr t6, cycle
	csrr s7, instret
	xori a5, s1, 0x2db
	xori t3, a5, 0x1de
	xori a2, t3, 0x413
	xori a5, a2, 0x390
	xori t3, a5, 0x1af
	xori a7, t3, 0x59b
	xori s0, a7, 0x3d1
	xori s5, s0, 0x76a
	xori s3, s5, 0x2b2
	xori a7, s3, 0x594
	xori t2, a7, 0x7eb
	xori t5, t2, 0x504
	xori a3, t5, 0x12b
	xori t2, a3, 0x315
	xori s11, t2, 0x6e9
	xori t4, s11, 0x382
	xori t1, t4, 0x72
	xori s3, t1, 0x525
	xori s1, s3, 0xe6
	xori a1, s1, 0x2dc
	xori a7, a1, 0x6fb
	xori a4, a7, 0x64a
	xori t1, a4, 0x755
	xori s5, t1, 0x13
	xori s11, s5, 0x20e
	xori a0, s11, 0x605
	xori s6, a0, 0x457
	xori a0, s6, 0x5f2
	xori a3, a0, 0x71
	xori s10, a3, 0x276
	xori a3, s10, 0x30a
	xori a5, a3, 0x21
	xori t1, a5, 0x29b
	xori s6, t1, 0x2b7
	xori s8, s6, 0x27b
	xori a6, s8, 0x4b9
	xori t2, a6, 0x709
	xori s8, t2, 0x64e
	xori a4, s8, 0x69a
	xori s5, a4, 0x6f9
	xori t1, s5, 0x68
	xori s11, t1, 0x1ae
	xori a6, s11, 0x5be
	xori t1, a6, 0xaa
	xori a6, t1, 0x2a4
	xori a0, a6, 0xf8
	xori a7, a0, 0x562
	xori a6, a7, 0x7ec
	xori t3, a6, 0x694
	xori t4, t3, 0x52c
	xori t2, t4, 0x8a
	xori s2, t2, 0x109
	xori a3, s2, 0x642
	xori t4, a3, 0x589
	xori t4, t4, 0x25d
	xori a1, t4, 0x7b0
	xori a2, a1, 0x349
	xori s6, a2, 0x4df
	xori s5, s6, 0x2bc
	xori t1, s5, 0x1df
	xori a1, t1, 0x3a
	xori a6, a1, 0x7b5
	xori s8, a6, 0x52a
	xori t3, s8, 0x59d
	xori s0, t3, 0x587
	xori s11, s0, 0x179
	xori t2, s11, 0x60e
	xori t2, t2, 0x624
	xori s8, t2, 0x610
	xori s9, s8, 0x40b
	xori a0, s9, 0x602
	xori s10, a0, 0x49a
	xori a4, s10, 0x523
	xori t4, a4, 0x2f0
	xori a1, t4, 0x26e
	xori s8, a1, 0x25c
	xori s6, s8, 0x309
	xori a7, s6, 0x360
	xori a3, a7, 0x76d
	xori t1, a3, 0x439
	xori s1, t1, 0x7cb
	xori s11, s1, 0x3b4
	xori a7, s11, 0x67f
	xori s8, a7, 0x6f1
	xori s6, s8, 0x6e0
	xori t1, s6, 0x9a
	xori a7, t1, 0x788
	xori s1, a7, 0x19a
	xori a4, s1, 0x345
	xori a1, a4, 0x783
	xori t1, a1, 0x1dd
	xori s8, t1, 0x4df
	xori s11, s8, 0x59
	xori s5, s11, 0x4f3
	xori s1, s5, 0x1f0
	xori s10, s1, 0x50c
	xori t3, s10, 0x1ce
	xori a7, t3, 0x1f5
	xori a5, a7, 0x5b7
	xori a0, a5, 0x32b
	csrr t2, time
	csrr t4, cycle
	csrr a6, instret
	sub s0, t2, s4
	sub s6, t4, t6
	sub t5, a6, s7
	li a4, 0
	csrr a0, time
	csrr s10, cycle
	csrr a1, instret
	xori s2, a4, 0x30b
	xori a5, s2, 0x1b1
	xori s9, a5, 0x4fc
	xori a5, s9, 0x13a
	xori s1, a5, 0x5c5
	xori s5, s1, 0x7ed
	xori a3, s5, 0x267
	xori a4, a3, 0x5f6
	xori a4, a4, 0x5c3
	xori a4, a4, 0x70b
	xori a7, a4, 0x2e4
	xori a4, a7, 0x5
	xori t4, a4, 0x5b6
	xori t3, t4, 0x5a5
	xori a4, t3, 0x582
	xori s3, a4, 0x278
	xori s0, s3, 0x390
	xori s9, s0, 0x3fe
	xori t4, s9, 0x160
	xori s3, t4, 0x569
	xori t1, s3, 0x12e
	xori s8, t1, 0x42
	xori a3, s8, 0x7f2
	xori s9, a3, 0x2fa
	xori t1, s9, 0x381
	xori a7, t1, 0x471
	xori t6, a7, 0x2bf
	xori s8, t6, 0x701
	xori s4, s8, 0x66b
	xori t1, s4, 0x41e
	xori a4, t1, 0x3ed
	xori s4, a4, 0x28d
	xori t3, s4, 0x786
	xori s4, t3, 0x4d7
	xori t4, s4, 0xe7
	xori t3, t4, 0x4ae
	xori t2, t3, 0x52d
	xori t1, t2, 0x259
	xori a3, t1, 0x67e
	xori s8, a3, 0x465
	xori s7, s8, 0x550
	xori s3, s7, 0x238
	xori a6, s3, 0x372
	xori a6, a6, 0x1a
	xori a4, a6, 0x6bf
	xori a2, a4, 0x27f
	xori s0, a2, 0x607
	xori t3, s0, 0xb4
	xori t6, t3, 0x51f
	xori t1, t6, 0x3f2
	xori t4, t1, 0xee
	xori t2, t4, 0x405
	xori s8, t2, 0x1c6
	xori t3, s8, 0x6f9
	xori a2, t3, 0x4db
	xori s11, a2, 0x5fe
	xori s3, s11, 0x528
	xori a7, s3, 0x601
	xori a7, a7, 0x7cc
	xori a4, a7, 0x7ed
	xori a5, a4, 0x76d
	xori s9, a5, 0x221
	xori t3, s9, 0x381
	xori a2, t3, 0x2fe
	xori t3, a2, 0x649
	xori a6, t3, 0x1db
	xori t1, a6, 0x72
	xori s11, t1, 0xd4
	xori s11, s11, 0x4c9
	xori a6, s11, 0x422
	xori s9, a6, 0x420
	xori s11, s9, 0x41a
	xori t2, s11, 0x150
	xori s11, t2, 0x10c
	xori t4, s11, 0x259
	xori s7, t4, 0x764
	xori a4, s7, 0x65
	xori a3, a4, 0x7d6
	xori t3, a3, 0x716
	xori s4, t3, 0x8e
	xori s9, s4, 0x1c1
	xori a6, s9, 0x9
	xori a3, a6, 0x564
	xori s9, a3, 0x81
	xori s3, s9, 0x365
	xori t4, s3, 0x5dd
	xori t3, t4, 0x5bc
	xori t6, t3, 0x6d4
	xori a3, t6, 0x2e
	xori a2, a3, 0x8a
	xori s1, a2, 0x73
	xori s1, s1, 0x15
	xori t2, s1, 0x4a
	xori s0, t2, 0x450
	xori s8, s0, 0x2b9
	xori s5, s8, 0x2ac
	xori s1, s5, 0x64a
	xori t2, s1, 0x29
	xori a2, t2, 0x4e7
	xori s1, a2, 0x15
	csrr s0, time
	csrr s3, cycle
	csrr t2, instret
	sub s7, s0, a0
	sub s0, s3, s10
	sub t2, t2, a1
	beq s6, s0, pass_label_8
	li a2, failed_addr
	ld a3, 0(a2)
	jr a3
pass_label_8:
	beq t5, t2, pass_label_9
	li s2, failed_addr
	ld s5, 0(s2)
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
	li a6, 0
	csrr s4, time
	csrr t1, cycle
	csrr s3, instret
	ori s5, a6, 0x46e
	ori s6, s5, 0x5ce
	ori t6, s6, 0x482
	ori a6, t6, 0x6a8
	ori t6, a6, 0x5f2
	ori s9, t6, 0x39d
	ori a3, s9, 0x155
	ori s2, a3, 0x4c2
	ori a5, s2, 0x4b8
	ori s10, a5, 0x2ff
	ori t4, s10, 0x6c
	ori t4, t4, 0x6bc
	ori t5, t4, 0x5d1
	ori t4, t5, 0x2f5
	ori a2, t4, 0x695
	ori t2, a2, 0x2d5
	ori a6, t2, 0x383
	ori a2, a6, 0x1e9
	ori s6, a2, 0x583
	ori t2, s6, 0x52b
	ori a6, t2, 0x54f
	ori s8, a6, 0x462
	ori s11, s8, 0x270
	ori a0, s11, 0x6d2
	ori a6, a0, 0xb7
	ori a3, a6, 0x38b
	ori s10, a3, 0x613
	ori t3, s10, 0x6fc
	ori t3, t3, 0x2de
	ori s2, t3, 0x192
	ori a4, s2, 0x14d
	ori t2, a4, 0x116
	ori s0, t2, 0x38c
	ori s6, s0, 0x774
	ori a7, s6, 0x6ac
	ori a6, a7, 0x5f
	ori t6, a6, 0x7a5
	ori s5, t6, 0x2ec
	ori s0, s5, 0x48c
	ori t5, s0, 0x2b5
	ori a3, t5, 0x7c5
	ori a5, a3, 0x67a
	ori a4, a5, 0x166
	ori s6, a4, 0x48f
	ori t3, s6, 0x3ef
	ori t5, t3, 0x3d6
	ori s6, t5, 0x14
	ori s6, s6, 0x49e
	ori s0, s6, 0x1e2
	ori a0, s0, 0x716
	ori s8, a0, 0x706
	ori s11, s8, 0x4e3
	ori a2, s11, 0x7c
	ori s10, a2, 0x390
	ori s0, s10, 0x53f
	ori s2, s0, 0x151
	ori t4, s2, 0x416
	ori s9, t4, 0x1ad
	ori a0, s9, 0x7e9
	ori s0, a0, 0x336
	ori a2, s0, 0x7f5
	ori a7, a2, 0x3bd
	ori s8, a7, 0xff
	ori a6, s8, 0x287
	ori t5, a6, 0x21b
	ori a7, t5, 0x11e
	ori a7, a7, 0x7f1
	ori t5, a7, 0x15d
	ori s6, t5, 0x2a6
	ori a6, s6, 0x110
	ori t6, a6, 0x174
	ori s1, t6, 0x674
	ori t4, s1, 0x74e
	ori a5, t4, 0x5f1
	ori s11, a5, 0x4f3
	ori s10, s11, 0x440
	ori s10, s10, 0x27a
	ori s6, s10, 0x1e2
	ori t4, s6, 0x472
	ori a6, t4, 0x5aa
	ori s7, a6, 0x36e
	ori t4, s7, 0x3c1
	ori s5, t4, 0x3ac
	ori t3, s5, 0x418
	ori s6, t3, 0x46d
	ori s11, s6, 0x280
	ori t4, s11, 0x15e
	ori s2, t4, 0x42b
	ori s0, s2, 0x4ef
	ori s1, s0, 0x411
	ori s1, s1, 0x7a7
	ori s9, s1, 0x27b
	ori t5, s9, 0x4bf
	ori a6, t5, 0x6c0
	ori a3, a6, 0x64f
	ori t3, a3, 0x1aa
	ori s2, t3, 0x245
	ori a1, s2, 0x566
	ori s9, a1, 0x13f
	ori s0, s9, 0x578
	csrr t6, time
	csrr s10, cycle
	csrr a5, instret
	sub t2, t6, s4
	sub s10, s10, t1
	sub t1, a5, s3
	li t4, 0
	csrr a0, time
	csrr s1, cycle
	csrr s4, instret
	ori s6, t4, 0x10
	ori s8, s6, 0x684
	ori s7, s8, 0x7dc
	ori s5, s7, 0x2bc
	ori t6, s5, 0xf6
	ori s9, t6, 0x36a
	ori s11, s9, 0x30d
	ori t1, s11, 0x5b7
	ori t1, t1, 0x53f
	ori s5, t1, 0x41d
	ori s8, s5, 0x5e3
	ori s8, s8, 0x171
	ori t1, s8, 0x4f4
	ori s6, t1, 0x71c
	ori t1, s6, 0x387
	ori a1, t1, 0x39b
	ori a6, a1, 0x687
	ori s7, a6, 0x447
	ori a5, s7, 0x38c
	ori a6, a5, 0x2eb
	ori t4, a6, 0x6b1
	ori s9, t4, 0x1a9
	ori s5, s9, 0x71
	ori s8, s5, 0xb1
	ori t6, s8, 0x5c9
	ori a6, t6, 0xde
	ori s2, a6, 0xca
	ori s0, s2, 0x451
	ori a7, s0, 0x31c
	ori t3, a7, 0x11c
	ori s11, t3, 0x38f
	ori s6, s11, 0x330
	ori a4, s6, 0x177
	ori a1, a4, 0x3cf
	ori a4, a1, 0x39a
	ori s8, a4, 0x42f
	ori s2, s8, 0x6d5
	ori a1, s2, 0x4c2
	ori s0, a1, 0x4d
	ori a4, s0, 0x4b5
	ori t2, a4, 0x190
	ori t5, t2, 0x796
	ori s7, t5, 0x7d1
	ori s2, s7, 0x4bc
	ori a2, s2, 0x39c
	ori s10, a2, 0x3eb
	ori s8, s10, 0x321
	ori a6, s8, 0x256
	ori s0, a6, 0x750
	ori t4, s0, 0x2cd
	ori a7, t4, 0x637
	ori a7, a7, 0x60f
	ori t4, a7, 0x166
	ori a4, t4, 0x6bf
	ori s7, a4, 0x4cb
	ori a1, s7, 0x232
	ori a7, a1, 0x174
	ori s3, a7, 0x708
	ori s0, s3, 0x637
	ori s8, s0, 0x3b
	ori s5, s8, 0x476
	ori s5, s5, 0x7f
	ori s7, s5, 0x666
	ori a2, s7, 0x562
	ori s0, a2, 0x87
	ori t1, s0, 0x7d0
	ori a6, t1, 0x76f
	ori t6, a6, 0x469
	ori t5, t6, 0x1d9
	ori a6, t5, 0x393
	ori t6, a6, 0x6cf
	ori t3, t6, 0x290
	ori s8, t3, 0x38b
	ori s6, s8, 0x2b1
	ori a3, s6, 0x71f
	ori s5, a3, 0x5fa
	ori s2, s5, 0xd3
	ori s10, s2, 0x31e
	ori s7, s10, 0x71
	ori a5, s7, 0x5fd
	ori s8, a5, 0x3c2
	ori s7, s8, 0x23c
	ori s9, s7, 0x774
	ori a3, s9, 0x349
	ori t4, a3, 0x3bb
	ori s8, t4, 0x2a9
	ori s6, s8, 0x412
	ori a4, s6, 0xc7
	ori a5, a4, 0x153
	ori a3, a5, 0x338
	ori s6, a3, 0x457
	ori s9, s6, 0x6f0
	ori a7, s9, 0x36d
	ori a2, a7, 0x714
	ori a5, a2, 0x71d
	ori a2, a5, 0x4eb
	ori a2, a2, 0x5f0
	ori s10, a2, 0x6dc
	ori a5, s10, 0x3d5
	ori a7, a5, 0x40e
	csrr s6, time
	csrr t4, cycle
	csrr a6, instret
	sub a2, s6, a0
	sub s8, t4, s1
	sub s10, a6, s4
	li a6, 0
	csrr s2, time
	csrr a5, cycle
	csrr s3, instret
	ori a1, a6, 0x134
	ori t3, a1, 0x291
	ori a6, t3, 0x12d
	ori t3, a6, 0x2cf
	ori a7, t3, 0x7c8
	ori t1, a7, 0x11c
	ori t5, t1, 0x4e6
	ori a2, t5, 0x18f
	ori t6, a2, 0x1cf
	ori a3, t6, 0x64e
	ori s5, a3, 0x67f
	ori s5, s5, 0x7e1
	ori t6, s5, 0x1bd
	ori s0, t6, 0x71b
	ori s11, s0, 0x3a4
	ori a3, s11, 0x535
	ori t1, a3, 0x707
	ori t4, t1, 0x141
	ori a4, t4, 0xd6
	ori t3, a4, 0x59a
	ori s11, t3, 0xd5
	ori t3, s11, 0x369
	ori s7, t3, 0x6e
	ori s11, s7, 0x3a3
	ori s0, s11, 0x139
	ori t3, s0, 0x7ed
	ori t5, t3, 0x302
	ori a3, t5, 0x47e
	ori a3, a3, 0x295
	ori s9, a3, 0x783
	ori a3, s9, 0x240
	ori t2, a3, 0x332
	ori s5, t2, 0x20
	ori t2, s5, 0x31c
	ori t3, t2, 0x3e8
	ori s0, t3, 0x5be
	ori a2, s0, 0x393
	ori t1, a2, 0x26c
	ori s7, t1, 0x5f0
	ori t2, s7, 0x5b5
	ori s5, t2, 0x26f
	ori t1, s5, 0x529
	ori s6, t1, 0x4a9
	ori a4, s6, 0x31b
	ori t2, a4, 0x284
	ori a7, t2, 0x6ce
	ori s7, a7, 0x609
	ori s5, s7, 0x254
	ori s9, s5, 0x167
	ori s7, s9, 0xd0
	ori s5, s7, 0x3ed
	ori t6, s5, 0x173
	ori s0, t6, 0x393
	ori s9, s0, 0x13d
	ori s6, s9, 0x3ae
	ori t2, s6, 0xdb
	ori s0, t2, 0x451
	ori t2, s0, 0xff
	ori a4, t2, 0x44d
	ori t6, a4, 0x28f
	ori t6, t6, 0x28a
	ori t5, t6, 0x7f8
	ori a2, t5, 0x69a
	ori a0, a2, 0x3f7
	ori a1, a0, 0x79f
	ori s11, a1, 0x56d
	ori t6, s11, 0x47b
	ori t4, t6, 0x77d
	ori s0, t4, 0x518
	ori s5, s0, 0x2bd
	ori s6, s5, 0x5cd
	ori t4, s6, 0x4a9
	ori t2, t4, 0x291
	ori t3, t2, 0x482
	ori a3, t3, 0x4c0
	ori s6, a3, 0x667
	ori a7, s6, 0x3b6
	ori s5, a7, 0x299
	ori s4, s5, 0x3e3
	ori t2, s4, 0x58a
	ori a3, t2, 0x32a
	ori s4, a3, 0x69a
	ori s11, s4, 0x44d
	ori t2, s11, 0x745
	ori s0, t2, 0x1c1
	ori s9, s0, 0x157
	ori s1, s9, 0x1f0
	ori t2, s1, 0x44d
	ori a0, t2, 0x19c
	ori t4, a0, 0x6e1
	ori a0, t4, 0x4c4
	ori s7, a0, 0x77a
	ori s0, s7, 0x1f9
	ori a7, s0, 0x6c
	ori a6, a7, 0x641
	ori a6, a6, 0x294
	ori s5, a6, 0x741
	ori s7, s5, 0x4f8
	ori t1, s7, 0x616
	ori s5, t1, 0x81
	csrr t2, time
	csrr a1, cycle
	csrr t6, instret
	sub t4, t2, s2
	sub t4, a1, a5
	sub a5, t6, s3
	beq s8, t4, pass_label_10
	li s3, failed_addr
	ld t4, 0(s3)
	jr t4
pass_label_10:
	beq s10, a5, pass_label_11
	li s3, failed_addr
	ld t2, 0(s3)
	jr t2
pass_label_11:
SID_ZKT_03_ORI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_ANDI)
SID_ZKT_03_ANDI:
	li sp, SID_ZKT_03_ANDI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s9, 0
	csrr a3, time
	csrr a4, cycle
	csrr t4, instret
	andi s9, s9, 0x76f
	andi a2, s9, 0x71c
	andi s2, a2, 0x397
	andi s3, s2, 0xbe
	andi t5, s3, 0x4e6
	andi s5, t5, 0x3ff
	andi s5, s5, 0x43f
	andi s4, s5, 0x2c2
	andi s2, s4, 0x4b9
	andi t1, s2, 0x700
	andi s2, t1, 0x572
	andi s9, s2, 0x5c
	andi s6, s9, 0x183
	andi s9, s6, 0x15e
	andi a7, s9, 0x74
	andi a1, a7, 0x4f2
	andi s8, a1, 0xf1
	andi a6, s8, 0x676
	andi s1, a6, 0x5a
	andi t6, s1, 0xf3
	andi s4, t6, 0x473
	andi s11, s4, 0x43f
	andi s7, s11, 0x273
	andi t3, s7, 0x609
	andi s1, t3, 0x649
	andi s11, s1, 0x19d
	andi a0, s11, 0x14e
	andi s6, a0, 0x447
	andi a1, s6, 0x136
	andi a1, a1, 0x1d5
	andi t5, a1, 0x6ef
	andi s3, t5, 0x1c0
	andi s0, s3, 0xba
	andi t3, s0, 0x40a
	andi s2, t3, 0x2d5
	andi s7, s2, 0x732
	andi a2, s7, 0x588
	andi a2, a2, 0x6bc
	andi t6, a2, 0x483
	andi s8, t6, 0x37e
	andi a2, s8, 0x225
	andi s1, a2, 0x4ed
	andi t3, s1, 0x116
	andi a2, t3, 0x24c
	andi s3, a2, 0x4a2
	andi a0, s3, 0x682
	andi s10, a0, 0x1ff
	andi s5, s10, 0x91
	andi t1, s5, 0x6dc
	andi s6, t1, 0x4c7
	andi a7, s6, 0x221
	andi s3, a7, 0x77
	andi t3, s3, 0x779
	andi t3, t3, 0x7f1
	andi s5, t3, 0x2f
	andi a2, s5, 0x377
	andi t2, a2, 0x4e6
	andi t3, t2, 0x7bb
	andi a1, t3, 0x245
	andi t1, a1, 0x6c2
	andi s10, t1, 0x3cf
	andi a2, s10, 0x363
	andi s4, a2, 0x380
	andi s2, s4, 0x6bc
	andi a5, s2, 0x67c
	andi s8, a5, 0x8e
	andi s6, s8, 0x17e
	andi t6, s6, 0x1ba
	andi a2, t6, 0x627
	andi s8, a2, 0x571
	andi s3, s8, 0x48
	andi s5, s3, 0x775
	andi a7, s5, 0x51b
	andi t1, a7, 0x7dc
	andi t2, t1, 0x699
	andi a1, t2, 0x612
	andi a6, a1, 0x372
	andi s9, a6, 0x7a3
	andi s11, s9, 0x6cd
	andi a6, s11, 0x353
	andi s3, a6, 0x2d9
	andi s0, s3, 0x789
	andi s4, s0, 0x2d9
	andi s1, s4, 0x41a
	andi s8, s1, 0x74c
	andi a1, s8, 0x132
	andi s8, a1, 0x7ef
	andi a2, s8, 0x171
	andi t3, a2, 0x653
	andi t6, t3, 0x1d1
	andi t3, t6, 0x1d8
	andi s10, t3, 0x67d
	andi s5, s10, 0x78c
	andi t5, s5, 0x7c
	andi t1, t5, 0x2ef
	andi s5, t1, 0x8c
	andi s6, s5, 0x6f3
	andi t5, s6, 0x395
	andi t1, t5, 0x296
	andi t5, t1, 0x686
	csrr t1, time
	csrr s7, cycle
	csrr a2, instret
	sub a0, t1, a3
	sub s6, s7, a4
	sub s3, a2, t4
	li s5, 0
	csrr s11, time
	csrr a0, cycle
	csrr s2, instret
	andi s1, s5, 0x1c0
	andi a6, s1, 0x1c3
	andi t2, a6, 0x212
	andi a5, t2, 0x140
	andi a1, a5, 0x58a
	andi t1, a1, 0x724
	andi a6, t1, 0x7d9
	andi s0, a6, 0x5a6
	andi s1, s0, 0x42d
	andi a5, s1, 0x310
	andi a3, a5, 0xde
	andi s10, a3, 0x3d5
	andi s3, s10, 0x57d
	andi a7, s3, 0x5de
	andi s1, a7, 0x733
	andi s6, s1, 0x773
	andi t2, s6, 0x643
	andi t4, t2, 0x4e8
	andi s3, t4, 0x6
	andi a6, s3, 0x3c9
	andi s0, a6, 0x282
	andi s1, s0, 0x21c
	andi s6, s1, 0x639
	andi t4, s6, 0x65b
	andi s10, t4, 0x59f
	andi a2, s10, 0x257
	andi s8, a2, 0x7fa
	andi a4, s8, 0x7d5
	andi s0, a4, 0x732
	andi s10, s0, 0x1ae
	andi t2, s10, 0x665
	andi t5, t2, 0x112
	andi s0, t5, 0x587
	andi a1, s0, 0x51a
	andi s8, a1, 0x30e
	andi s9, s8, 0x550
	andi s10, s9, 0x4a
	andi t6, s10, 0x64f
	andi s1, t6, 0x628
	andi t1, s1, 0x312
	andi s3, t1, 0x3ab
	andi a2, s3, 0x44b
	andi t5, a2, 0x6ee
	andi t3, t5, 0x34
	andi s8, t3, 0x110
	andi s3, s8, 0x1dd
	andi t6, s3, 0x6de
	andi t1, t6, 0x3f5
	andi s5, t1, 0x52c
	andi s5, s5, 0xcd
	andi s7, s5, 0x719
	andi a6, s7, 0x261
	andi s3, a6, 0x59f
	andi a2, s3, 0x502
	andi t1, a2, 0x380
	andi s1, t1, 0x19e
	andi s7, s1, 0x423
	andi s0, s7, 0x2ae
	andi a2, s0, 0xcc
	andi a5, a2, 0x200
	andi t2, a5, 0x1f3
	andi a1, t2, 0x3f1
	andi t3, a1, 0x49c
	andi t3, t3, 0xf0
	andi a6, t3, 0x16f
	andi s8, a6, 0x3fb
	andi a2, s8, 0x2e1
	andi s4, a2, 0x5aa
	andi t3, s4, 0x528
	andi t6, t3, 0x78d
	andi s10, t6, 0x4c5
	andi s8, s10, 0x516
	andi a6, s8, 0x729
	andi s4, a6, 0x502
	andi s9, s4, 0x37a
	andi s3, s9, 0x336
	andi s6, s3, 0x470
	andi t1, s6, 0x7c9
	andi s10, t1, 0x362
	andi s5, s10, 0x6b5
	andi a7, s5, 0x60c
	andi s5, a7, 0x33
	andi t6, s5, 0x504
	andi a1, t6, 0x334
	andi a3, a1, 0x793
	andi s7, a3, 0x6f6
	andi s1, s7, 0x124
	andi a4, s1, 0x36a
	andi a4, a4, 0x107
	andi a1, a4, 0x7f
	andi t1, a1, 0x259
	andi s5, t1, 0x31e
	andi a2, s5, 0x4f1
	andi s8, a2, 0x373
	andi a1, s8, 0x51e
	andi a3, a1, 0xc6
	andi a1, a3, 0x19f
	andi a5, a1, 0x4cc
	andi a1, a5, 0x22e
	andi t6, a1, 0x3d7
	csrr s9, time
	csrr s0, cycle
	csrr a6, instret
	sub s1, s9, s11
	sub a5, s0, a0
	sub a3, a6, s2
	li a1, 0
	csrr s11, time
	csrr a6, cycle
	csrr t1, instret
	andi s8, a1, 0x4c6
	andi s2, s8, 0x363
	andi s10, s2, 0x220
	andi s1, s10, 0x414
	andi s7, s1, 0x6a6
	andi s9, s7, 0x626
	andi t6, s9, 0xdd
	andi s0, t6, 0x29e
	andi s9, s0, 0x645
	andi a7, s9, 0x78f
	andi s8, a7, 0x13c
	andi a7, s8, 0x480
	andi t3, a7, 0x5b9
	andi s6, t3, 0x450
	andi t3, s6, 0x644
	andi t3, t3, 0x216
	andi s10, t3, 0x78f
	andi t2, s10, 0x563
	andi t4, t2, 0x73a
	andi s9, t4, 0x56e
	andi t2, s9, 0x35
	andi s6, t2, 0x481
	andi s4, s6, 0x54c
	andi t3, s4, 0x5e0
	andi s5, t3, 0x74b
	andi s5, s5, 0xc9
	andi s5, s5, 0x62c
	andi s1, s5, 0x2fa
	andi s9, s1, 0x3a5
	andi a7, s9, 0x221
	andi t3, a7, 0x603
	andi a4, t3, 0xc4
	andi s10, a4, 0x248
	andi s3, s10, 0x11f
	andi s8, s3, 0x66f
	andi s10, s8, 0xb0
	andi t3, s10, 0x343
	andi s10, t3, 0x5a7
	andi s6, s10, 0x7c7
	andi s2, s6, 0x30e
	andi s10, s2, 0x3c
	andi t6, s10, 0x3d7
	andi a4, t6, 0x4ac
	andi s5, a4, 0x5c3
	andi t3, s5, 0x10d
	andi t2, t3, 0x636
	andi s10, t2, 0x624
	andi s8, s10, 0x47e
	andi t5, s8, 0x7c6
	andi t3, t5, 0x324
	andi s9, t3, 0x3f2
	andi s7, s9, 0x66c
	andi s6, s7, 0x6be
	andi s3, s6, 0x62f
	andi a2, s3, 0x1e0
	andi s6, a2, 0x416
	andi s0, s6, 0x3c
	andi t2, s0, 0x305
	andi t2, t2, 0x670
	andi s3, t2, 0x81
	andi a7, s3, 0x34b
	andi a4, a7, 0x4d1
	andi s8, a4, 0xaf
	andi t4, s8, 0x202
	andi t6, t4, 0x564
	andi t2, t6, 0x54
	andi a2, t2, 0x738
	andi s0, a2, 0x3a5
	andi s0, s0, 0xae
	andi a4, s0, 0x25c
	andi t4, a4, 0x4e5
	andi s1, t4, 0x54
	andi a4, s1, 0x2ca
	andi t2, a4, 0x62a
	andi s1, t2, 0x59
	andi s4, s1, 0x8e
	andi a1, s4, 0x98
	andi s2, a1, 0x6a2
	andi a0, s2, 0x5f
	andi a7, a0, 0x4b0
	andi s10, a7, 0x277
	andi t6, s10, 0x2d8
	andi s0, t6, 0x279
	andi s6, s0, 0xbc
	andi s10, s6, 0x44f
	andi a0, s10, 0x3c6
	andi s10, a0, 0x4fa
	andi t2, s10, 0x2df
	andi s5, t2, 0x6d0
	andi t6, s5, 0x2a0
	andi s4, t6, 0x6dc
	andi t4, s4, 0x629
	andi a4, t4, 0x161
	andi s0, a4, 0x71d
	andi t3, s0, 0x508
	andi t5, t3, 0x2da
	andi t6, t5, 0x706
	andi a4, t6, 0x438
	andi a1, a4, 0x202
	andi s5, a1, 0x2a1
	csrr a2, time
	csrr s2, cycle
	csrr a0, instret
	sub s3, a2, s11
	sub t5, s2, a6
	sub s7, a0, t1
	beq a5, t5, pass_label_12
	li s10, failed_addr
	ld t6, 0(s10)
	jr t6
pass_label_12:
	beq a3, s7, pass_label_13
	li s9, failed_addr
	ld s3, 0(s9)
	jr s3
pass_label_13:
SID_ZKT_03_ANDI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SLLI)
SID_ZKT_03_SLLI:
	li sp, SID_ZKT_03_SLLI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t1, 0
	csrr t2, time
	csrr s9, cycle
	csrr t3, instret
	slli s5, t1, 0x14
	slli s3, s5, 0x1d
	slli a3, s3, 0x16
	slli s7, a3, 0x13
	slli s1, s7, 0x8
	slli a4, s1, 0x4
	slli s6, a4, 0x1d
	slli s5, s6, 0x10
	slli s5, s5, 0xa
	slli s1, s5, 0x1d
	slli t5, s1, 0xb
	slli s5, t5, 0x18
	slli a6, s5, 0x13
	slli s6, a6, 0x11
	slli a3, s6, 0x9
	slli s10, a3, 0x1d
	slli s5, s10, 0x4
	slli s6, s5, 0x16
	slli s8, s6, 0x1d
	slli s6, s8, 0x19
	slli a0, s6, 0xf
	slli s7, a0, 0x10
	slli s10, s7, 0xf
	slli s8, s10, 0x13
	slli s1, s8, 0x10
	slli a7, s1, 0xb
	slli s3, a7, 0x11
	slli s4, s3, 0xd
	slli s6, s4, 0x15
	slli a3, s6, 0x3
	slli a7, a3, 0x5
	slli s1, a7, 0x12
	slli a7, s1, 0x1d
	slli s2, a7, 0x1a
	slli s3, s2, 0x1a
	slli a7, s3, 0x10
	slli a2, a7, 0x8
	slli s2, a2, 0x1f
	slli s1, s2, 0x10
	slli a7, s1, 0x8
	slli s7, a7, 0x1d
	slli t5, s7, 0x14
	slli s8, t5, 0x13
	slli s3, s8, 0x1b
	slli a1, s3, 0x13
	slli s8, a1, 0x1a
	slli a0, s8, 0x13
	slli t1, a0, 0x16
	slli s8, t1, 0x8
	slli s10, s8, 0xb
	slli s2, s10, 0x10
	slli s4, s2, 0x1a
	slli t4, s4, 0x12
	slli a3, t4, 0xc
	slli s0, a3, 0xe
	slli a4, s0, 0x19
	slli s0, a4, 0x11
	slli a6, s0, 0x1e
	slli s8, a6, 0xf
	slli s6, s8, 0x14
	slli s2, s6, 0xf
	slli s7, s2, 0xc
	slli t5, s7, 0xa
	slli s11, t5, 0xe
	slli a1, s11, 0x14
	slli s5, a1, 0x14
	slli s1, s5, 0x1c
	slli a7, s1, 0x1f
	slli t6, a7, 0x19
	slli a1, t6, 0x19
	slli t6, a1, 0x13
	slli a0, t6, 0xa
	slli a2, a0, 0xb
	slli s0, a2, 0x3
	slli t5, s0, 0x1e
	slli s4, t5, 0x18
	slli s7, s4, 0x5
	slli s10, s7, 0xb
	slli s3, s10, 0x19
	slli a7, s3, 0x1f
	slli s7, a7, 0xf
	slli s10, s7, 0x8
	slli s6, s10, 0xb
	slli a6, s6, 0x1b
	slli s3, a6, 0x1c
	slli s7, s3, 0x15
	slli t5, s7, 0xb
	slli s8, t5, 0x12
	slli a0, s8, 0x3
	slli s7, a0, 0x8
	slli s0, s7, 0x1d
	slli a6, s0, 0x12
	slli s8, a6, 0x6
	slli a6, s8, 0xa
	slli s2, a6, 0x7
	slli a2, s2, 0x6
	slli a0, a2, 0xf
	slli t4, a0, 0x4
	slli a2, t4, 0x8
	slli t1, a2, 0x5
	csrr a5, time
	csrr a0, cycle
	csrr s10, instret
	sub s5, a5, t2
	sub a6, a0, s9
	sub s11, s10, t3
	li a3, 0
	csrr a6, time
	csrr s1, cycle
	csrr s7, instret
	slli s9, a3, 0x6
	slli s8, s9, 0x11
	slli s10, s8, 0x14
	slli a3, s10, 0x1a
	slli s0, a3, 0x17
	slli s5, s0, 0x11
	slli t2, s5, 0x1c
	slli s4, t2, 0x3
	slli s5, s4, 0x4
	slli s2, s5, 0xb
	slli t1, s2, 0x4
	slli s5, t1, 0x13
	slli t1, s5, 0x12
	slli s6, t1, 0x1f
	slli s0, s6, 0x1a
	slli t2, s0, 0x17
	slli a4, t2, 0x9
	slli s9, a4, 0xe
	slli s9, s9, 0x16
	slli s4, s9, 0x11
	slli s3, s4, 0x6
	slli s2, s3, 0xd
	slli s3, s2, 0x1f
	slli t4, s3, 0xd
	slli s11, t4, 0x1e
	slli t5, s11, 0xf
	slli t1, t5, 0x17
	slli s10, t1, 0xf
	slli t3, s10, 0xc
	slli s0, t3, 0x5
	slli t1, s0, 0xa
	slli a5, t1, 0x1d
	slli t5, a5, 0x1a
	slli s5, t5, 0x11
	slli t1, s5, 0x14
	slli a1, t1, 0xe
	slli t2, a1, 0x10
	slli t2, t2, 0x10
	slli t3, t2, 0x19
	slli s3, t3, 0x1f
	slli t2, s3, 0x1a
	slli s8, t2, 0x1a
	slli s0, s8, 0x10
	slli s8, s0, 0x15
	slli t4, s8, 0xb
	slli t5, t4, 0x8
	slli s0, t5, 0x7
	slli t1, s0, 0x1e
	slli a0, t1, 0x4
	slli s2, a0, 0xd
	slli a7, s2, 0xe
	slli t4, a7, 0xf
	slli a5, t4, 0x5
	slli a5, a5, 0x17
	slli s0, a5, 0x15
	slli a1, s0, 0x1c
	slli s4, a1, 0xd
	slli s11, s4, 0x15
	slli s5, s11, 0x1f
	slli t3, s5, 0x8
	slli a0, t3, 0x7
	slli t1, a0, 0x1b
	slli t2, t1, 0x1a
	slli t6, t2, 0x1d
	slli s4, t6, 0x17
	slli s5, s4, 0x6
	slli s9, s5, 0x14
	slli a1, s9, 0x9
	slli a0, a1, 0x12
	slli s6, a0, 0x19
	slli t6, s6, 0xa
	slli a7, t6, 0xe
	slli s10, a7, 0x16
	slli t4, s10, 0x13
	slli s3, t4, 0x17
	slli s5, s3, 0x19
	slli s4, s5, 0x8
	slli t5, s4, 0x1b
	slli s8, t5, 0x9
	slli t5, s8, 0xc
	slli t6, t5, 0x8
	slli t4, t6, 0x1e
	slli t6, t4, 0x1a
	slli s11, t6, 0x7
	slli s0, s11, 0x17
	slli t1, s0, 0xf
	slli a1, t1, 0x10
	slli s10, a1, 0x12
	slli s10, s10, 0xe
	slli a7, s10, 0x19
	slli s5, a7, 0x1b
	slli a0, s5, 0x4
	slli a1, a0, 0x14
	slli a5, a1, 0x5
	slli a2, a5, 0x3
	slli s3, a2, 0xe
	slli s8, s3, 0xa
	slli a7, s8, 0x7
	slli a2, a7, 0x9
	slli a1, a2, 0xf
	csrr a3, time
	csrr s11, cycle
	csrr a4, instret
	sub s4, a3, a6
	sub s1, s11, s1
	sub t4, a4, s7
	li t1, 0
	csrr s11, time
	csrr s0, cycle
	csrr t2, instret
	slli a2, t1, 0x11
	slli s8, a2, 0x13
	slli a7, s8, 0x15
	slli s10, a7, 0xb
	slli s6, s10, 0x10
	slli s2, s6, 0x16
	slli s7, s2, 0x1e
	slli a3, s7, 0xd
	slli s2, a3, 0x12
	slli s4, s2, 0x1f
	slli s8, s4, 0xd
	slli a4, s8, 0x5
	slli s4, a4, 0x15
	slli a1, s4, 0x16
	slli s10, a1, 0x4
	slli a1, s10, 0x1b
	slli a6, a1, 0x7
	slli s6, a6, 0x1e
	slli a6, s6, 0x14
	slli t5, a6, 0x1a
	slli s8, t5, 0x12
	slli t1, s8, 0x8
	slli s8, t1, 0x5
	slli a1, s8, 0x3
	slli s2, a1, 0x5
	slli s7, s2, 0x3
	slli t3, s7, 0x8
	slli a0, t3, 0xb
	slli t3, a0, 0x9
	slli a1, t3, 0x1a
	slli t6, a1, 0x11
	slli a7, t6, 0xf
	slli t6, a7, 0x19
	slli s4, t6, 0x14
	slli a1, s4, 0x13
	slli s7, a1, 0xb
	slli a6, s7, 0x19
	slli a0, a6, 0x1e
	slli s2, a0, 0x18
	slli a0, s2, 0xb
	slli s9, a0, 0x14
	slli s3, s9, 0xf
	slli t6, s3, 0x1e
	slli a4, t6, 0x6
	slli s3, a4, 0x19
	slli t5, s3, 0xf
	slli a0, t5, 0x11
	slli s7, a0, 0xa
	slli t6, s7, 0x5
	slli a3, t6, 0x1a
	slli s9, a3, 0x1a
	slli s9, s9, 0xd
	slli t1, s9, 0x7
	slli a0, t1, 0x18
	slli t3, a0, 0x16
	slli t3, t3, 0x3
	slli a6, t3, 0x17
	slli t1, a6, 0x19
	slli a5, t1, 0xf
	slli a4, a5, 0x17
	slli s3, a4, 0x4
	slli s8, s3, 0xc
	slli t5, s8, 0xe
	slli t5, t5, 0x1b
	slli a5, t5, 0x18
	slli t6, a5, 0x1e
	slli a4, t6, 0x1f
	slli a7, a4, 0x3
	slli t1, a7, 0x19
	slli a0, t1, 0x16
	slli t6, a0, 0x11
	slli t3, t6, 0xd
	slli s2, t3, 0x15
	slli s9, s2, 0x3
	slli a2, s9, 0x1b
	slli s8, a2, 0x14
	slli t3, s8, 0xd
	slli a2, t3, 0x1f
	slli t5, a2, 0x1a
	slli s2, t5, 0x1c
	slli a5, s2, 0xf
	slli s3, a5, 0x19
	slli s7, s3, 0x1b
	slli t1, s7, 0x1a
	slli a7, t1, 0x4
	slli s9, a7, 0x15
	slli a1, s9, 0x1d
	slli t6, a1, 0x18
	slli s2, t6, 0x11
	slli s7, s2, 0x1e
	slli a7, s7, 0x18
	slli a6, a7, 0x19
	slli s3, a6, 0x17
	slli s10, s3, 0x6
	slli s4, s10, 0x10
	slli s3, s4, 0xf
	slli t3, s3, 0x1a
	slli s9, t3, 0x6
	slli s6, s9, 0x1e
	slli s4, s6, 0x15
	csrr a1, time
	csrr a3, cycle
	csrr s10, instret
	sub s8, a1, s11
	sub s8, a3, s0
	sub a3, s10, t2
	beq s1, s8, pass_label_14
	li s1, failed_addr
	ld a7, 0(s1)
	jr a7
pass_label_14:
	beq t4, a3, pass_label_15
	li t5, failed_addr
	ld s5, 0(t5)
	jr s5
pass_label_15:
SID_ZKT_03_SLLI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SRLI)
SID_ZKT_03_SRLI:
	li sp, SID_ZKT_03_SRLI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s2, 0
	csrr t2, time
	csrr s5, cycle
	csrr t3, instret
	srli a3, s2, 0xe
	srli a0, a3, 0xa
	srli a6, a0, 0x16
	srli a6, a6, 0xe
	srli s11, a6, 0x13
	srli s8, s11, 0x10
	srli a4, s8, 0x19
	srli s8, a4, 0xa
	srli a2, s8, 0x13
	srli s4, a2, 0x5
	srli a4, s4, 0x4
	srli a1, a4, 0xd
	srli a1, a1, 0x3
	srli t5, a1, 0x17
	srli t4, t5, 0x11
	srli s8, t4, 0x3
	srli a6, s8, 0x8
	srli s3, a6, 0x1f
	srli a0, s3, 0x1c
	srli a6, a0, 0x1f
	srli a4, a6, 0x1a
	srli s8, a4, 0xb
	srli s6, s8, 0x1c
	srli s0, s6, 0x18
	srli s3, s0, 0x16
	srli s10, s3, 0x1d
	srli s3, s10, 0x9
	srli s2, s3, 0x1e
	srli s7, s2, 0x1c
	srli a7, s7, 0x10
	srli s4, a7, 0xc
	srli s10, s4, 0x17
	srli t1, s10, 0x8
	srli s1, t1, 0x4
	srli a4, s1, 0x4
	srli a0, a4, 0x12
	srli a1, a0, 0xf
	srli s9, a1, 0x1e
	srli s6, s9, 0x14
	srli s9, s6, 0x18
	srli s6, s9, 0x18
	srli a2, s6, 0x6
	srli t5, a2, 0xf
	srli a3, t5, 0xc
	srli a3, a3, 0x10
	srli s8, a3, 0x4
	srli s6, s8, 0xa
	srli s1, s6, 0xd
	srli s7, s1, 0x10
	srli a6, s7, 0x15
	srli s11, a6, 0x15
	srli a7, s11, 0x12
	srli s2, a7, 0x16
	srli a6, s2, 0x9
	srli t5, a6, 0x15
	srli s10, t5, 0x13
	srli a3, s10, 0x18
	srli a7, a3, 0x5
	srli s7, a7, 0xd
	srli s4, s7, 0x1c
	srli a3, s4, 0x17
	srli t4, a3, 0xf
	srli a6, t4, 0x1e
	srli a1, a6, 0x17
	srli a0, a1, 0x8
	srli s0, a0, 0x1b
	srli a0, s0, 0xa
	srli a4, a0, 0x13
	srli s6, a4, 0x1d
	srli s8, s6, 0x12
	srli a0, s8, 0x1e
	srli a4, a0, 0x5
	srli a4, a4, 0x1c
	srli s9, a4, 0x17
	srli s0, s9, 0x10
	srli t5, s0, 0x18
	srli s3, t5, 0xf
	srli a4, s3, 0x9
	srli a3, a4, 0xb
	srli t1, a3, 0x1b
	srli a6, t1, 0x3
	srli s0, a6, 0xc
	srli s7, s0, 0x4
	srli s2, s7, 0xb
	srli s7, s2, 0x1b
	srli t1, s7, 0x5
	srli s3, t1, 0x8
	srli s9, s3, 0x16
	srli s0, s9, 0xb
	srli s7, s0, 0x1b
	srli s7, s7, 0x11
	srli s2, s7, 0x19
	srli s4, s2, 0x10
	srli s11, s4, 0xc
	srli s9, s11, 0x6
	srli s7, s9, 0xc
	srli s1, s7, 0x1c
	srli a6, s1, 0x4
	srli t1, a6, 0x12
	srli a4, t1, 0x8
	csrr s6, time
	csrr s4, cycle
	csrr s1, instret
	sub s0, s6, t2
	sub a3, s4, s5
	sub s5, s1, t3
	li t2, 0
	csrr t4, time
	csrr t6, cycle
	csrr a2, instret
	srli s7, t2, 0x1d
	srli s1, s7, 0xb
	srli s6, s1, 0x14
	srli a0, s6, 0x9
	srli s6, a0, 0x7
	srli s4, s6, 0x4
	srli s7, s4, 0x18
	srli t1, s7, 0xf
	srli a4, t1, 0x14
	srli s8, a4, 0x3
	srli t2, s8, 0x15
	srli s2, t2, 0x13
	srli s7, s2, 0xc
	srli s6, s7, 0x3
	srli a4, s6, 0x1a
	srli s0, a4, 0xf
	srli s7, s0, 0xd
	srli s11, s7, 0x6
	srli t5, s11, 0xb
	srli s0, t5, 0x8
	srli a3, s0, 0x16
	srli s1, a3, 0x19
	srli a1, s1, 0x9
	srli s1, a1, 0x5
	srli a7, s1, 0x8
	srli a1, a7, 0x1b
	srli a0, a1, 0x19
	srli a4, a0, 0x18
	srli s0, a4, 0x15
	srli s5, s0, 0x17
	srli s0, s5, 0xf
	srli t2, s0, 0x13
	srli s1, t2, 0x15
	srli s1, s1, 0x1a
	srli s10, s1, 0x3
	srli t5, s10, 0xa
	srli t1, t5, 0xf
	srli s10, t1, 0x18
	srli s10, s10, 0x3
	srli s3, s10, 0x18
	srli s11, s3, 0x3
	srli a3, s11, 0x13
	srli s10, a3, 0x10
	srli s2, s10, 0x1b
	srli s0, s2, 0x16
	srli a5, s0, 0x1c
	srli t5, a5, 0x1b
	srli a4, t5, 0x1d
	srli t1, a4, 0x8
	srli a7, t1, 0x4
	srli a4, a7, 0x1a
	srli s4, a4, 0x1b
	srli s7, s4, 0xf
	srli a5, s7, 0x17
	srli a6, a5, 0x10
	srli s10, a6, 0x9
	srli a0, s10, 0x8
	srli s9, a0, 0xa
	srli s4, s9, 0x5
	srli a4, s4, 0x16
	srli s7, a4, 0x11
	srli s0, s7, 0x14
	srli a0, s0, 0x14
	srli a7, a0, 0xd
	srli t3, a7, 0x1e
	srli a0, t3, 0x18
	srli s0, a0, 0x18
	srli a0, s0, 0xb
	srli a6, a0, 0x9
	srli a5, a6, 0x13
	srli s11, a5, 0x16
	srli a7, s11, 0xb
	srli s8, a7, 0x1d
	srli a0, s8, 0xf
	srli a7, a0, 0xa
	srli a1, a7, 0x18
	srli a0, a1, 0xc
	srli s2, a0, 0x16
	srli a1, s2, 0xb
	srli s4, a1, 0x1f
	srli s5, s4, 0x19
	srli a3, s5, 0x7
	srli s11, a3, 0x19
	srli s11, s11, 0x17
	srli t1, s11, 0xb
	srli a7, t1, 0xe
	srli t5, a7, 0x15
	srli s10, t5, 0x1a
	srli s0, s10, 0xb
	srli a3, s0, 0x13
	srli s2, a3, 0x17
	srli s2, s2, 0xa
	srli s1, s2, 0x1b
	srli a7, s1, 0x1e
	srli s9, a7, 0x9
	srli s3, s9, 0x14
	srli s3, s3, 0x18
	srli s11, s3, 0x3
	srli s0, s11, 0x6
	srli s5, s0, 0x9
	csrr a5, time
	csrr t2, cycle
	csrr s9, instret
	sub s2, a5, t4
	sub a1, t2, t6
	sub s11, s9, a2
	li a0, 0
	csrr s8, time
	csrr t5, cycle
	csrr t1, instret
	srli t6, a0, 0xb
	srli s3, t6, 0x8
	srli s3, s3, 0x1a
	srli a7, s3, 0xd
	srli a2, a7, 0xa
	srli a7, a2, 0x8
	srli s3, a7, 0x17
	srli a0, s3, 0x17
	srli a3, a0, 0x4
	srli s10, a3, 0x16
	srli t4, s10, 0xa
	srli t3, t4, 0xf
	srli s10, t3, 0xb
	srli s6, s10, 0xb
	srli s7, s6, 0x9
	srli s6, s7, 0x17
	srli t6, s6, 0xb
	srli s4, t6, 0xf
	srli s10, s4, 0x4
	srli s10, s10, 0x1b
	srli a5, s10, 0x4
	srli t3, a5, 0x1e
	srli s4, t3, 0x7
	srli s1, s4, 0x1a
	srli s7, s1, 0x12
	srli s2, s7, 0x10
	srli s4, s2, 0xc
	srli a6, s4, 0x1e
	srli s9, a6, 0xe
	srli s6, s9, 0xf
	srli s10, s6, 0x1b
	srli s7, s10, 0x1e
	srli s3, s7, 0xe
	srli s1, s3, 0x16
	srli a6, s1, 0x9
	srli s5, a6, 0xc
	srli s4, s5, 0xb
	srli s2, s4, 0x1c
	srli a4, s2, 0x1e
	srli t3, a4, 0xb
	srli t4, t3, 0x12
	srli a4, t4, 0x16
	srli s7, a4, 0x7
	srli s3, s7, 0x1c
	srli s3, s3, 0x15
	srli s0, s3, 0xe
	srli a0, s0, 0x7
	srli t3, a0, 0xf
	srli s4, t3, 0x4
	srli s1, s4, 0x5
	srli a5, s1, 0xb
	srli s5, a5, 0x5
	srli s5, s5, 0x1b
	srli s10, s5, 0x12
	srli a4, s10, 0x9
	srli s7, a4, 0x11
	srli s6, s7, 0x1e
	srli a2, s6, 0xc
	srli a7, a2, 0x4
	srli t2, a7, 0xb
	srli t4, t2, 0xd
	srli t2, t4, 0x1d
	srli a4, t2, 0x3
	srli s1, a4, 0x1d
	srli t6, s1, 0x19
	srli s4, t6, 0x18
	srli s1, s4, 0x16
	srli t2, s1, 0x12
	srli a5, t2, 0x1c
	srli a6, a5, 0x10
	srli a6, a6, 0x1d
	srli s5, a6, 0x1e
	srli a3, s5, 0x10
	srli a0, a3, 0x10
	srli s4, a0, 0x1b
	srli a4, s4, 0xe
	srli a2, a4, 0x16
	srli s5, a2, 0x1a
	srli s2, s5, 0x12
	srli a5, s2, 0x1b
	srli t3, a5, 0x9
	srli s1, t3, 0x1a
	srli s4, s1, 0x10
	srli t4, s4, 0x1e
	srli t6, t4, 0xf
	srli t3, t6, 0xc
	srli t4, t3, 0x1f
	srli s5, t4, 0x6
	srli t3, s5, 0x5
	srli a6, t3, 0x1a
	srli s9, a6, 0x8
	srli s3, s9, 0x19
	srli a7, s3, 0xd
	srli s5, a7, 0xe
	srli t2, s5, 0x15
	srli s4, t2, 0x10
	srli s7, s4, 0x19
	srli s4, s7, 0xf
	srli s2, s4, 0x6
	srli t2, s2, 0x1d
	csrr t2, time
	csrr s7, cycle
	csrr a0, instret
	sub a4, t2, s8
	sub s3, s7, t5
	sub a2, a0, t1
	beq a1, s3, pass_label_16
	li s7, failed_addr
	ld s3, 0(s7)
	jr s3
pass_label_16:
	beq s11, a2, pass_label_17
	li s3, failed_addr
	ld s9, 0(s3)
	jr s9
pass_label_17:
SID_ZKT_03_SRLI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SRAI)
SID_ZKT_03_SRAI:
	li sp, SID_ZKT_03_SRAI_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s7, 0
	csrr s9, time
	csrr t5, cycle
	csrr s6, instret
	srai a2, s7, 0x9
	srai a2, a2, 0x7
	srai s5, a2, 0x7
	srai s3, s5, 0x16
	srai s0, s3, 0x1f
	srai t1, s0, 0x19
	srai a0, t1, 0x1f
	srai s4, a0, 0x6
	srai s0, s4, 0x7
	srai t6, s0, 0x1b
	srai a6, t6, 0x4
	srai s10, a6, 0x16
	srai a2, s10, 0xb
	srai a5, a2, 0xb
	srai s10, a5, 0xe
	srai a6, s10, 0x3
	srai s10, a6, 0x1f
	srai s5, s10, 0x7
	srai s3, s5, 0x19
	srai s4, s3, 0x1d
	srai s8, s4, 0x3
	srai s11, s8, 0x5
	srai a5, s11, 0x1c
	srai t2, a5, 0x11
	srai t1, t2, 0x19
	srai s7, t1, 0x10
	srai s3, s7, 0x19
	srai s4, s3, 0xf
	srai a2, s4, 0xc
	srai a4, a2, 0x18
	srai s7, a4, 0x7
	srai s7, s7, 0xf
	srai a4, s7, 0x10
	srai a7, a4, 0x1b
	srai a0, a7, 0xe
	srai a0, a0, 0x1c
	srai t2, a0, 0x11
	srai s11, t2, 0xe
	srai s0, s11, 0xc
	srai s3, s0, 0x1f
	srai a1, s3, 0x12
	srai t6, a1, 0x8
	srai t6, t6, 0xb
	srai a1, t6, 0x3
	srai a2, a1, 0xc
	srai a4, a2, 0xa
	srai s4, a4, 0x19
	srai s0, s4, 0x1e
	srai t4, s0, 0x4
	srai s2, t4, 0x12
	srai a1, s2, 0x4
	srai a1, a1, 0x1c
	srai s5, a1, 0x3
	srai a3, s5, 0x5
	srai t4, a3, 0x16
	srai t1, t4, 0x11
	srai s0, t1, 0x3
	srai a1, s0, 0x1c
	srai a4, a1, 0x17
	srai s0, a4, 0xa
	srai t2, s0, 0x7
	srai s11, t2, 0x19
	srai a3, s11, 0xf
	srai s8, a3, 0x1c
	srai s1, s8, 0x1a
	srai s1, s1, 0x16
	srai t1, s1, 0xf
	srai t4, t1, 0xa
	srai t1, t4, 0x15
	srai t4, t1, 0x1e
	srai a3, t4, 0x1e
	srai s2, a3, 0x16
	srai a4, s2, 0xb
	srai a4, a4, 0x8
	srai s5, a4, 0x1a
	srai a0, s5, 0x9
	srai a2, a0, 0x8
	srai s3, a2, 0x5
	srai a2, s3, 0x1f
	srai t1, a2, 0x1f
	srai s5, t1, 0xd
	srai a3, s5, 0xe
	srai a1, a3, 0x5
	srai a3, a1, 0x6
	srai t1, a3, 0x1c
	srai t4, t1, 0x1f
	srai t2, t4, 0x14
	srai s0, t2, 0xa
	srai s3, s0, 0x9
	srai s10, s3, 0xd
	srai s7, s10, 0x1c
	srai a4, s7, 0x14
	srai a3, a4, 0x14
	srai a4, a3, 0x11
	srai a3, a4, 0x1c
	srai s2, a3, 0x1b
	srai s0, s2, 0x19
	srai s8, s0, 0x5
	srai s10, s8, 0x10
	srai s5, s10, 0x15
	csrr s1, time
	csrr t6, cycle
	csrr s11, instret
	sub t1, s1, s9
	sub t5, t6, t5
	sub a1, s11, s6
	li s2, 0
	csrr t3, time
	csrr s6, cycle
	csrr s8, instret
	srai s0, s2, 0xe
	srai t2, s0, 0x1f
	srai a0, t2, 0x8
	srai a7, a0, 0x8
	srai s4, a7, 0x16
	srai s7, s4, 0x6
	srai s11, s7, 0xe
	srai a7, s11, 0x1e
	srai t6, a7, 0x8
	srai s10, t6, 0x18
	srai s1, s10, 0x1e
	srai a7, s1, 0x12
	srai s2, a7, 0x16
	srai s9, s2, 0x5
	srai a6, s9, 0x11
	srai a1, a6, 0x10
	srai a4, a1, 0x9
	srai s3, a4, 0x5
	srai t6, s3, 0x5
	srai a0, t6, 0x18
	srai t6, a0, 0x17
	srai s4, t6, 0xb
	srai s4, s4, 0xd
	srai a7, s4, 0xf
	srai a4, a7, 0x1d
	srai a2, a4, 0xe
	srai a4, a2, 0x15
	srai a2, a4, 0xd
	srai t1, a2, 0x10
	srai s5, t1, 0x13
	srai t2, s5, 0x16
	srai s4, t2, 0x16
	srai t6, s4, 0x17
	srai s3, t6, 0x5
	srai t5, s3, 0x9
	srai t4, t5, 0x1f
	srai a0, t4, 0x10
	srai t5, a0, 0xe
	srai a1, t5, 0x13
	srai a6, a1, 0x1a
	srai a3, a6, 0x12
	srai a4, a3, 0xe
	srai t6, a4, 0x19
	srai s0, t6, 0x6
	srai t2, s0, 0x11
	srai t1, t2, 0xd
	srai a3, t1, 0x3
	srai t2, a3, 0xa
	srai s9, t2, 0xc
	srai s5, s9, 0x10
	srai s4, s5, 0x18
	srai s2, s4, 0x18
	srai a0, s2, 0x7
	srai a3, a0, 0x9
	srai a1, a3, 0xb
	srai s5, a1, 0x19
	srai s11, s5, 0x13
	srai s11, s11, 0x16
	srai s7, s11, 0x4
	srai a2, s7, 0x8
	srai s3, a2, 0x1d
	srai s9, s3, 0x15
	srai t1, s9, 0xc
	srai t2, t1, 0x4
	srai s5, t2, 0x18
	srai t5, s5, 0x6
	srai s4, t5, 0xb
	srai a5, s4, 0x17
	srai s2, a5, 0x15
	srai s10, s2, 0x6
	srai s5, s10, 0x8
	srai s2, s5, 0x19
	srai a5, s2, 0x17
	srai s4, a5, 0x14
	srai s1, s4, 0x11
	srai s9, s1, 0x15
	srai s5, s9, 0xa
	srai t2, s5, 0x11
	srai a7, t2, 0x10
	srai s9, a7, 0x4
	srai a5, s9, 0x7
	srai t1, a5, 0x12
	srai t6, t1, 0x1c
	srai s0, t6, 0xe
	srai s9, s0, 0x13
	srai a5, s9, 0xc
	srai t4, a5, 0x1a
	srai s4, t4, 0xf
	srai a0, s4, 0x1f
	srai t1, a0, 0x5
	srai a2, t1, 0x15
	srai s5, a2, 0x10
	srai s4, s5, 0x7
	srai a4, s4, 0x18
	srai s0, a4, 0x19
	srai t4, s0, 0x13
	srai a2, t4, 0xa
	srai t2, a2, 0x10
	srai t5, t2, 0x12
	srai a6, t5, 0x5
	csrr s3, time
	csrr a4, cycle
	csrr s0, instret
	sub t6, s3, t3
	sub s4, a4, s6
	sub t6, s0, s8
	li t5, 0
	csrr s7, time
	csrr a2, cycle
	csrr a6, instret
	srai a4, t5, 0x15
	srai s6, a4, 0x1a
	srai a0, s6, 0x1f
	srai s11, a0, 0x1e
	srai a1, s11, 0xe
	srai s8, a1, 0x14
	srai a7, s8, 0x13
	srai s3, a7, 0x8
	srai t1, s3, 0x4
	srai s2, t1, 0x19
	srai s11, s2, 0x9
	srai a4, s11, 0x9
	srai s9, a4, 0x3
	srai s11, s9, 0xe
	srai s9, s11, 0xa
	srai s6, s9, 0xa
	srai a5, s6, 0x19
	srai t3, a5, 0x13
	srai a5, t3, 0x13
	srai s8, a5, 0x17
	srai t2, s8, 0x10
	srai s0, t2, 0x14
	srai t1, s0, 0x10
	srai s1, t1, 0x8
	srai a1, s1, 0x1c
	srai a4, a1, 0xa
	srai t1, a4, 0x3
	srai a1, t1, 0xa
	srai s5, a1, 0x13
	srai s0, s5, 0x14
	srai a1, s0, 0x4
	srai t2, a1, 0x17
	srai t1, t2, 0x7
	srai s1, t1, 0x1e
	srai a5, s1, 0x14
	srai t3, a5, 0x5
	srai t2, t3, 0x1c
	srai t2, t2, 0x3
	srai t1, t2, 0x7
	srai a1, t1, 0x14
	srai a7, a1, 0xb
	srai a0, a7, 0xa
	srai a3, a0, 0xe
	srai s11, a3, 0xd
	srai s5, s11, 0x1a
	srai s9, s5, 0x7
	srai s9, s9, 0x6
	srai s9, s9, 0xb
	srai s2, s9, 0x1f
	srai a4, s2, 0x10
	srai s6, a4, 0xe
	srai a5, s6, 0x16
	srai s11, a5, 0x1e
	srai s8, s11, 0x4
	srai t5, s8, 0x14
	srai a4, t5, 0x4
	srai a5, a4, 0x1e
	srai s8, a5, 0x18
	srai s5, s8, 0x11
	srai s9, s5, 0x4
	srai s5, s9, 0x1a
	srai s5, s5, 0x17
	srai s6, s5, 0xd
	srai s8, s6, 0xc
	srai s8, s8, 0xc
	srai a5, s8, 0x18
	srai s11, a5, 0x1a
	srai s9, s11, 0x1e
	srai a1, s9, 0xf
	srai s6, a1, 0xc
	srai s1, s6, 0x1c
	srai t1, s1, 0xf
	srai s5, t1, 0x12
	srai t4, s5, 0xc
	srai s2, t4, 0x18
	srai t4, s2, 0x6
	srai t2, t4, 0x15
	srai s6, t2, 0x18
	srai a3, s6, 0x17
	srai a7, a3, 0x3
	srai s1, a7, 0x19
	srai s2, s1, 0x6
	srai s2, s2, 0x10
	srai s3, s2, 0x5
	srai t1, s3, 0x9
	srai a5, t1, 0x6
	srai t5, a5, 0x17
	srai s5, t5, 0x3
	srai a5, s5, 0xa
	srai t5, a5, 0x12
	srai s2, t5, 0x5
	srai t2, s2, 0x9
	srai a4, t2, 0xd
	srai t2, a4, 0x9
	srai t2, t2, 0xc
	srai t3, t2, 0xc
	srai t2, t3, 0x1e
	srai s3, t2, 0x11
	srai a0, s3, 0x11
	srai s8, a0, 0x19
	csrr s10, time
	csrr s0, cycle
	csrr a1, instret
	sub t4, s10, s7
	sub a7, s0, a2
	sub s10, a1, a6
	beq s4, a7, pass_label_18
	li t5, failed_addr
	ld s9, 0(t5)
	jr s9
pass_label_18:
	beq t6, s10, pass_label_19
	li a5, failed_addr
	ld s7, 0(a5)
	jr s7
pass_label_19:
SID_ZKT_03_SRAI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_ADDIW)
SID_ZKT_03_ADDIW:
	li sp, SID_ZKT_03_ADDIW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s0, 0
	csrr t2, time
	csrr s9, cycle
	csrr s6, instret
	addiw t3, s0, 0x2b6
	addiw s3, t3, 0x577
	addiw a7, s3, 0x23d
	addiw a7, a7, 0x54f
	addiw s5, a7, 0x73c
	addiw s4, s5, 0x2da
	addiw s8, s4, 0x19d
	addiw t1, s8, 0x69e
	addiw a2, t1, 0x580
	addiw t5, a2, 0x7bf
	addiw s10, t5, 0x147
	addiw s7, s10, 0x34a
	addiw a0, s7, 0xa7
	addiw s7, a0, 0x2d8
	addiw s8, s7, 0xef
	addiw s4, s8, 0x364
	addiw t4, s4, 0x39e
	addiw a1, t4, 0x6aa
	addiw t5, a1, 0x2ae
	addiw s3, t5, 0x407
	addiw s3, s3, 0x764
	addiw a2, s3, 0xd3
	addiw a0, a2, 0x18
	addiw a1, a0, 0x73f
	addiw t4, a1, 0x54c
	addiw s4, t4, 0x75
	addiw t6, s4, 0x132
	addiw s2, t6, 0x346
	addiw a2, s2, 0x625
	addiw a3, a2, 0x743
	addiw s8, a3, 0x4cf
	addiw s5, s8, 0x5b7
	addiw t3, s5, 0x1b3
	addiw t5, t3, 0x1a0
	addiw a7, t5, 0x8e
	addiw a6, a7, 0x6f3
	addiw t3, a6, 0x55e
	addiw t1, t3, 0x73b
	addiw s2, t1, 0x14b
	addiw a2, s2, 0x3a7
	addiw a6, a2, 0x7db
	addiw a0, a6, 0x71d
	addiw s2, a0, 0x41f
	addiw s0, s2, 0x33
	addiw a5, s0, 0x2a0
	addiw s4, a5, 0x59c
	addiw t4, s4, 0x671
	addiw t4, t4, 0x7fa
	addiw a3, t4, 0x4f3
	addiw s0, a3, 0x25e
	addiw s3, s0, 0x547
	addiw a6, s3, 0x27e
	addiw a2, a6, 0x652
	addiw s1, a2, 0x13d
	addiw a1, s1, 0x3a1
	addiw t3, a1, 0x6e
	addiw s0, t3, 0x5c
	addiw t6, s0, 0x251
	addiw s8, t6, 0x149
	addiw a3, s8, 0x620
	addiw s11, a3, 0x7f1
	addiw a2, s11, 0x34
	addiw t3, a2, 0x500
	addiw a1, t3, 0x289
	addiw t6, a1, 0x33
	addiw s10, t6, 0x6c4
	addiw a6, s10, 0x131
	addiw t5, a6, 0x207
	addiw t5, t5, 0xdd
	addiw t4, t5, 0x1e1
	addiw a3, t4, 0x210
	addiw a2, a3, 0x649
	addiw a7, a2, 0x53e
	addiw a3, a7, 0x7c3
	addiw a6, a3, 0x76e
	addiw t3, a6, 0x6cd
	addiw a1, t3, 0x495
	addiw a4, a1, 0x3f8
	addiw s1, a4, 0x401
	addiw t3, s1, 0x18b
	addiw s5, t3, 0x763
	addiw s11, s5, 0xa1
	addiw s8, s11, 0x10f
	addiw t5, s8, 0x24b
	addiw a4, t5, 0x733
	addiw s7, a4, 0x40
	addiw s4, s7, 0x527
	addiw s11, s4, 0x6c2
	addiw a0, s11, 0x1e6
	addiw s10, a0, 0x145
	addiw a6, s10, 0x627
	addiw s3, a6, 0x571
	addiw t4, s3, 0x169
	addiw s1, t4, 0x1f5
	addiw a4, s1, 0x4bf
	addiw a0, a4, 0x4f2
	addiw t6, a0, 0x3b1
	addiw a5, t6, 0x764
	addiw s3, a5, 0xdf
	addiw a6, s3, 0xa
	csrr s1, time
	csrr s0, cycle
	csrr s10, instret
	sub s4, s1, t2
	sub s1, s0, s9
	sub a3, s10, s6
	li a3, 0
	csrr t6, time
	csrr a4, cycle
	csrr s0, instret
	addiw s11, a3, 0x782
	addiw a3, s11, 0x689
	addiw s7, a3, 0x193
	addiw s4, s7, 0x48d
	addiw s6, s4, 0x2ef
	addiw a2, s6, 0x539
	addiw s10, a2, 0x51b
	addiw t3, s10, 0x160
	addiw t1, t3, 0x22c
	addiw s10, t1, 0x689
	addiw a1, s10, 0xc5
	addiw a0, a1, 0xa8
	addiw t1, a0, 0x26a
	addiw s10, t1, 0x1de
	addiw s10, s10, 0x306
	addiw s1, s10, 0x69e
	addiw s6, s1, 0x677
	addiw t3, s6, 0x264
	addiw t5, t3, 0x45f
	addiw a5, t5, 0x118
	addiw a5, a5, 0x763
	addiw t4, a5, 0x26c
	addiw a1, t4, 0x120
	addiw a7, a1, 0x264
	addiw s8, a7, 0x6a0
	addiw a0, s8, 0x77e
	addiw a7, a0, 0x7e5
	addiw a7, a7, 0x448
	addiw s4, a7, 0x7e0
	addiw a7, s4, 0xf9
	addiw s7, a7, 0x268
	addiw s1, s7, 0x432
	addiw s6, s1, 0xd0
	addiw t1, s6, 0x62f
	addiw t4, t1, 0x61f
	addiw a5, t4, 0x1ae
	addiw s4, a5, 0x388
	addiw a0, s4, 0x335
	addiw t5, a0, 0x521
	addiw t3, t5, 0x609
	addiw s4, t3, 0xcb
	addiw s4, s4, 0x41
	addiw s7, s4, 0x7b9
	addiw t2, s7, 0x682
	addiw s9, t2, 0x32c
	addiw s9, s9, 0x3d3
	addiw a5, s9, 0x7bc
	addiw a1, a5, 0x525
	addiw s9, a1, 0x12
	addiw s9, s9, 0x705
	addiw s8, s9, 0x25c
	addiw a0, s8, 0x590
	addiw a5, a0, 0x3c4
	addiw s4, a5, 0x3c3
	addiw s8, s4, 0x2f6
	addiw s5, s8, 0x173
	addiw s6, s5, 0x1af
	addiw s9, s6, 0x3d4
	addiw a1, s9, 0x7da
	addiw t5, a1, 0x6fb
	addiw a5, t5, 0x465
	addiw a3, a5, 0x6e2
	addiw s4, a3, 0x781
	addiw a2, s4, 0x19b
	addiw a3, a2, 0x429
	addiw a3, a3, 0x5e9
	addiw s6, a3, 0x64d
	addiw s10, s6, 0x449
	addiw t4, s10, 0x525
	addiw a0, t4, 0x1d2
	addiw a6, a0, 0x11d
	addiw a0, a6, 0x379
	addiw a3, a0, 0x599
	addiw s10, a3, 0x732
	addiw t4, s10, 0x5fe
	addiw s9, t4, 0x199
	addiw t1, s9, 0x5bf
	addiw s4, t1, 0x2ed
	addiw s9, s4, 0x3f1
	addiw a2, s9, 0x1d5
	addiw s5, a2, 0x66
	addiw s8, s5, 0x1fa
	addiw t2, s8, 0x6a7
	addiw a2, t2, 0xee
	addiw s2, a2, 0x7c2
	addiw t2, s2, 0x2ea
	addiw t1, t2, 0x8b
	addiw a0, t1, 0x593
	addiw a7, a0, 0x5a
	addiw s6, a7, 0x1b6
	addiw s8, s6, 0x377
	addiw s4, s8, 0x2a9
	addiw a2, s4, 0x5e8
	addiw s11, a2, 0x344
	addiw s2, s11, 0x39b
	addiw a3, s2, 0x38b
	addiw a7, a3, 0x68e
	addiw s8, a7, 0x3b1
	addiw a1, s8, 0x70d
	addiw s5, a1, 0x544
	csrr t5, time
	csrr s10, cycle
	csrr s4, instret
	sub s7, t5, t6
	sub a5, s10, a4
	sub a2, s4, s0
	li t4, 0
	csrr s5, time
	csrr s0, cycle
	csrr t5, instret
	addiw a1, t4, 0x4c6
	addiw a4, a1, 0x5fa
	addiw s9, a4, 0x4f1
	addiw s10, s9, 0x53d
	addiw t2, s10, 0x529
	addiw s1, t2, 0x39a
	addiw s11, s1, 0x2fb
	addiw s4, s11, 0x53
	addiw t6, s4, 0x1a3
	addiw t6, t6, 0x7e5
	addiw a7, t6, 0x74b
	addiw t2, a7, 0x576
	addiw s7, t2, 0x216
	addiw t3, s7, 0x10d
	addiw s1, t3, 0x69f
	addiw t1, s1, 0x775
	addiw s8, t1, 0x428
	addiw s3, s8, 0x613
	addiw t1, s3, 0x5ed
	addiw s11, t1, 0xe0
	addiw a7, s11, 0x64f
	addiw s10, a7, 0x618
	addiw a4, s10, 0x713
	addiw t6, a4, 0x355
	addiw s8, t6, 0x6b7
	addiw t3, s8, 0x19c
	addiw s11, t3, 0x2a1
	addiw s7, s11, 0xd6
	addiw s4, s7, 0x6af
	addiw s2, s4, 0xd
	addiw a7, s2, 0x6f7
	addiw a0, a7, 0x5ea
	addiw t1, a0, 0x525
	addiw t2, t1, 0x1cc
	addiw a0, t2, 0x199
	addiw t4, a0, 0x78a
	addiw a0, t4, 0x7e4
	addiw a4, a0, 0x5c2
	addiw a6, a4, 0x667
	addiw s8, a6, 0x6af
	addiw s7, s8, 0x315
	addiw s9, s7, 0x192
	addiw t1, s9, 0x26f
	addiw a0, t1, 0x7e0
	addiw s4, a0, 0x687
	addiw s9, s4, 0x27b
	addiw s11, s9, 0x549
	addiw t4, s11, 0x63e
	addiw s3, t4, 0x301
	addiw a0, s3, 0x7d2
	addiw a3, a0, 0x744
	addiw s10, a3, 0x1df
	addiw t1, s10, 0x7ee
	addiw s11, t1, 0x3c
	addiw s8, s11, 0x570
	addiw s6, s8, 0x724
	addiw a0, s6, 0x6a9
	addiw a0, a0, 0x202
	addiw a4, a0, 0x4c8
	addiw s2, a4, 0x23b
	addiw t4, s2, 0x273
	addiw a7, t4, 0x176
	addiw s7, a7, 0x666
	addiw a0, s7, 0x556
	addiw a6, a0, 0x59d
	addiw s10, a6, 0xed
	addiw s8, s10, 0x70f
	addiw s3, s8, 0x21
	addiw s3, s3, 0x2cb
	addiw s9, s3, 0x5d7
	addiw s3, s9, 0x785
	addiw s1, s3, 0x13f
	addiw s3, s1, 0x592
	addiw a0, s3, 0x489
	addiw s6, a0, 0x603
	addiw s10, s6, 0x320
	addiw s8, s10, 0x6c0
	addiw s1, s8, 0x3f0
	addiw a7, s1, 0x3a7
	addiw s9, a7, 0x63f
	addiw s3, s9, 0x6b9
	addiw t3, s3, 0x57f
	addiw a4, t3, 0x723
	addiw a0, a4, 0xe9
	addiw t6, a0, 0x7c7
	addiw s6, t6, 0x1d1
	addiw a3, s6, 0x4ce
	addiw a7, a3, 0x2d2
	addiw t6, a7, 0x81
	addiw a4, t6, 0xab
	addiw s8, a4, 0x1f1
	addiw s11, s8, 0x162
	addiw s7, s11, 0x197
	addiw s4, s7, 0x36e
	addiw s9, s4, 0x122
	addiw a4, s9, 0x5fc
	addiw s8, a4, 0x30a
	addiw t6, s8, 0x338
	addiw a0, t6, 0x4b6
	addiw s7, a0, 0x2d4
	csrr s8, time
	csrr t1, cycle
	csrr a4, instret
	sub s8, s8, s5
	sub t3, t1, s0
	sub s5, a4, t5
	beq a5, t3, pass_label_20
	li t5, failed_addr
	ld t4, 0(t5)
	jr t4
pass_label_20:
	beq a2, s5, pass_label_21
	li t5, failed_addr
	ld t1, 0(t5)
	jr t1
pass_label_21:
SID_ZKT_03_ADDIW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SLLIW)
SID_ZKT_03_SLLIW:
	li sp, SID_ZKT_03_SLLIW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s6, 0
	csrr t6, time
	csrr s11, cycle
	csrr s1, instret
	slliw s0, s6, 0x1c
	slliw t4, s0, 0x1d
	slliw a2, t4, 0x7
	slliw a5, a2, 0x1f
	slliw a4, a5, 0x10
	slliw t1, a4, 0x5
	slliw s10, t1, 0x1a
	slliw a7, s10, 0x7
	slliw s2, a7, 0x1f
	slliw s0, s2, 0x1d
	slliw s9, s0, 0xf
	slliw a0, s9, 0x6
	slliw a5, a0, 0x10
	slliw s0, a5, 0x1a
	slliw s10, s0, 0x14
	slliw s6, s10, 0x9
	slliw s6, s6, 0x7
	slliw t3, s6, 0x3
	slliw a5, t3, 0x14
	slliw s3, a5, 0x18
	slliw s0, s3, 0x16
	slliw t3, s0, 0x6
	slliw a0, t3, 0x1d
	slliw a1, a0, 0x6
	slliw t5, a1, 0x5
	slliw s4, t5, 0x17
	slliw s6, s4, 0xd
	slliw s3, s6, 0x6
	slliw a2, s3, 0x18
	slliw a0, a2, 0x15
	slliw s2, a0, 0x14
	slliw s5, s2, 0x17
	slliw s2, s5, 0xe
	slliw s9, s2, 0x10
	slliw s8, s9, 0x18
	slliw s10, s8, 0xf
	slliw s9, s10, 0x5
	slliw s4, s9, 0x10
	slliw a5, s4, 0x1e
	slliw s7, a5, 0x1d
	slliw t2, s7, 0x1e
	slliw a3, t2, 0x1e
	slliw a2, a3, 0x17
	slliw s9, a2, 0x11
	slliw s0, s9, 0xc
	slliw t4, s0, 0x1a
	slliw s5, t4, 0x1b
	slliw a1, s5, 0x10
	slliw a4, a1, 0x11
	slliw t1, a4, 0xf
	slliw a6, t1, 0x16
	slliw s10, a6, 0x14
	slliw s8, s10, 0x16
	slliw a7, s8, 0x7
	slliw t2, a7, 0x11
	slliw a1, t2, 0x16
	slliw s8, a1, 0x12
	slliw t2, s8, 0xf
	slliw a4, t2, 0x1e
	slliw a2, a4, 0x6
	slliw a1, a2, 0xd
	slliw s6, a1, 0xb
	slliw a5, s6, 0x17
	slliw s4, a5, 0x1d
	slliw t1, s4, 0x7
	slliw t1, t1, 0xb
	slliw s3, t1, 0x18
	slliw s10, s3, 0x4
	slliw s7, s10, 0x6
	slliw s8, s7, 0x1b
	slliw s0, s8, 0x8
	slliw s6, s0, 0x1a
	slliw a2, s6, 0x18
	slliw s4, a2, 0x4
	slliw a4, s4, 0x3
	slliw s6, a4, 0x1f
	slliw s0, s6, 0xd
	slliw a0, s0, 0xd
	slliw a6, a0, 0x4
	slliw a7, a6, 0x8
	slliw a3, a7, 0x10
	slliw a1, a3, 0x11
	slliw s2, a1, 0x16
	slliw s10, s2, 0x3
	slliw a0, s10, 0x10
	slliw a2, a0, 0x14
	slliw s9, a2, 0x15
	slliw s5, s9, 0xf
	slliw s10, s5, 0x6
	slliw a2, s10, 0x1e
	slliw s6, a2, 0x18
	slliw s7, s6, 0xf
	slliw s9, s7, 0x4
	slliw a4, s9, 0x3
	slliw s7, a4, 0x7
	slliw s0, s7, 0xa
	slliw t2, s0, 0x1e
	slliw s3, t2, 0x13
	slliw s3, s3, 0x12
	slliw s5, s3, 0x17
	csrr s4, time
	csrr s6, cycle
	csrr t1, instret
	sub a7, s4, t6
	sub t4, s6, s11
	sub s7, t1, s1
	li a5, 0
	csrr s0, time
	csrr a3, cycle
	csrr s6, instret
	slliw s10, a5, 0xf
	slliw a4, s10, 0xd
	slliw s9, a4, 0x7
	slliw a5, s9, 0xc
	slliw s1, a5, 0x16
	slliw s10, s1, 0x7
	slliw t4, s10, 0x15
	slliw s4, t4, 0x15
	slliw a6, s4, 0x1e
	slliw a1, a6, 0x7
	slliw a6, a1, 0x14
	slliw s11, a6, 0x7
	slliw s9, s11, 0x1b
	slliw s1, s9, 0x7
	slliw s9, s1, 0x15
	slliw s7, s9, 0xa
	slliw t2, s7, 0x1a
	slliw s11, t2, 0x1f
	slliw t1, s11, 0x1e
	slliw a0, t1, 0x9
	slliw s11, a0, 0x3
	slliw a7, s11, 0x1d
	slliw s10, a7, 0x9
	slliw s11, s10, 0x12
	slliw s5, s11, 0x14
	slliw a7, s5, 0x11
	slliw t5, a7, 0x1c
	slliw a7, t5, 0xe
	slliw s1, a7, 0x12
	slliw t4, s1, 0x17
	slliw a6, t4, 0x10
	slliw a2, a6, 0x13
	slliw t4, a2, 0x3
	slliw t6, t4, 0x10
	slliw s4, t6, 0x1f
	slliw a0, s4, 0xa
	slliw a7, a0, 0x19
	slliw s4, a7, 0xf
	slliw t1, s4, 0x1d
	slliw t6, t1, 0x1e
	slliw s8, t6, 0xb
	slliw s2, s8, 0x16
	slliw s2, s2, 0x3
	slliw a2, s2, 0x1b
	slliw a1, a2, 0x13
	slliw a0, a1, 0x1e
	slliw s4, a0, 0xd
	slliw t6, s4, 0x6
	slliw t2, t6, 0x1c
	slliw s5, t2, 0x13
	slliw t5, s5, 0x1e
	slliw t6, t5, 0x1d
	slliw s9, t6, 0x1d
	slliw t4, s9, 0x1b
	slliw a5, t4, 0x1d
	slliw s8, a5, 0x1d
	slliw a6, s8, 0xa
	slliw a2, a6, 0x10
	slliw a1, a2, 0xb
	slliw s1, a1, 0x7
	slliw s7, s1, 0x1f
	slliw t6, s7, 0x13
	slliw t1, t6, 0x11
	slliw t4, t1, 0x15
	slliw s11, t4, 0x1e
	slliw a1, s11, 0x1b
	slliw s7, a1, 0x14
	slliw a4, s7, 0xe
	slliw s8, a4, 0xb
	slliw t3, s8, 0x1f
	slliw a2, t3, 0x6
	slliw a0, a2, 0x1f
	slliw t6, a0, 0x1a
	slliw s1, t6, 0x1a
	slliw a2, s1, 0x1a
	slliw a4, a2, 0x5
	slliw t4, a4, 0x19
	slliw s1, t4, 0xe
	slliw s4, s1, 0xf
	slliw s1, s4, 0x11
	slliw a7, s1, 0xe
	slliw s1, a7, 0x10
	slliw t6, s1, 0x18
	slliw a5, t6, 0x13
	slliw s9, a5, 0x11
	slliw a4, s9, 0x12
	slliw t4, a4, 0xf
	slliw t3, t4, 0x14
	slliw t3, t3, 0x3
	slliw s7, t3, 0x1d
	slliw s11, s7, 0x4
	slliw s9, s11, 0x1d
	slliw s3, s9, 0x12
	slliw a4, s3, 0x1e
	slliw t4, a4, 0xd
	slliw t4, t4, 0x1b
	slliw s8, t4, 0xa
	slliw s10, s8, 0x6
	slliw t6, s10, 0x3
	slliw s9, t6, 0xe
	csrr a5, time
	csrr a6, cycle
	csrr a1, instret
	sub s9, a5, s0
	sub a7, a6, a3
	sub t5, a1, s6
	li t4, 0
	csrr t1, time
	csrr s0, cycle
	csrr s8, instret
	slliw t2, t4, 0x5
	slliw a3, t2, 0x19
	slliw a0, a3, 0x8
	slliw t2, a0, 0x19
	slliw a2, t2, 0x12
	slliw s3, a2, 0x6
	slliw a5, s3, 0xa
	slliw s6, a5, 0x7
	slliw a5, s6, 0x11
	slliw s9, a5, 0x1f
	slliw a1, s9, 0x1a
	slliw s10, a1, 0x5
	slliw a4, s10, 0x8
	slliw a2, a4, 0x17
	slliw t3, a2, 0xb
	slliw a6, t3, 0x1b
	slliw s6, a6, 0x12
	slliw a6, s6, 0x1f
	slliw s5, a6, 0x19
	slliw a3, s5, 0xe
	slliw t4, a3, 0x8
	slliw s5, t4, 0xa
	slliw s11, s5, 0x4
	slliw t4, s11, 0xc
	slliw a1, t4, 0x17
	slliw a0, a1, 0x11
	slliw s7, a0, 0x14
	slliw a5, s7, 0x14
	slliw a3, a5, 0x1f
	slliw s4, a3, 0x11
	slliw a0, s4, 0x16
	slliw s6, a0, 0xc
	slliw a3, s6, 0x1d
	slliw s5, a3, 0xa
	slliw s11, s5, 0x3
	slliw s7, s11, 0xc
	slliw a4, s7, 0x12
	slliw a1, a4, 0x7
	slliw s4, a1, 0x9
	slliw t6, s4, 0x9
	slliw t3, t6, 0x8
	slliw s11, t3, 0xc
	slliw s9, s11, 0x5
	slliw a3, s9, 0xb
	slliw a3, a3, 0x8
	slliw s5, a3, 0xf
	slliw t2, s5, 0x17
	slliw t6, t2, 0x1c
	slliw s9, t6, 0x1f
	slliw s4, s9, 0x1b
	slliw a1, s4, 0x15
	slliw a0, a1, 0x1c
	slliw s3, a0, 0x1d
	slliw t2, s3, 0xc
	slliw t6, t2, 0x1a
	slliw a6, t6, 0x1b
	slliw a4, a6, 0x8
	slliw s2, a4, 0x11
	slliw t2, s2, 0x1f
	slliw s9, t2, 0xf
	slliw a0, s9, 0x18
	slliw t3, a0, 0x5
	slliw a1, t3, 0x1f
	slliw a4, a1, 0x1d
	slliw s4, a4, 0x1c
	slliw t2, s4, 0xe
	slliw t3, t2, 0x16
	slliw s1, t3, 0xe
	slliw s6, s1, 0xa
	slliw s5, s6, 0x3
	slliw a5, s5, 0x1c
	slliw t6, a5, 0x1d
	slliw s2, t6, 0x14
	slliw a4, s2, 0x16
	slliw a6, a4, 0x8
	slliw s2, a6, 0x11
	slliw a3, s2, 0x16
	slliw s5, a3, 0x7
	slliw t3, s5, 0xc
	slliw s1, t3, 0xf
	slliw a2, s1, 0x7
	slliw s9, a2, 0xd
	slliw a4, s9, 0xd
	slliw s1, a4, 0xb
	slliw t6, s1, 0x1d
	slliw a6, t6, 0x3
	slliw a4, a6, 0x1f
	slliw t6, a4, 0x7
	slliw s5, t6, 0x9
	slliw s6, s5, 0xb
	slliw a6, s6, 0x9
	slliw t2, a6, 0x17
	slliw s1, t2, 0x3
	slliw s7, s1, 0x4
	slliw t4, s7, 0x17
	slliw a0, t4, 0x4
	slliw s1, a0, 0x1e
	slliw t3, s1, 0x11
	slliw s9, t3, 0xc
	slliw s2, s9, 0xa
	csrr t2, time
	csrr t3, cycle
	csrr s2, instret
	sub a3, t2, t1
	sub a4, t3, s0
	sub s5, s2, s8
	beq a7, a4, pass_label_22
	li s3, failed_addr
	ld s9, 0(s3)
	jr s9
pass_label_22:
	beq t5, s5, pass_label_23
	li s1, failed_addr
	ld s3, 0(s1)
	jr s3
pass_label_23:
SID_ZKT_03_SLLIW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SRLIW)
SID_ZKT_03_SRLIW:
	li sp, SID_ZKT_03_SRLIW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s3, 0
	csrr t5, time
	csrr t4, cycle
	csrr a4, instret
	srliw s3, s3, 0x13
	srliw a3, s3, 0x1e
	srliw s4, a3, 0xc
	srliw s9, s4, 0xc
	srliw s7, s9, 0x16
	srliw a2, s7, 0x12
	srliw s11, a2, 0x1d
	srliw s3, s11, 0x1d
	srliw s11, s3, 0x5
	srliw a3, s11, 0x10
	srliw s5, a3, 0xa
	srliw t2, s5, 0x19
	srliw a7, t2, 0x9
	srliw s2, a7, 0x12
	srliw s11, s2, 0x6
	srliw a1, s11, 0x13
	srliw s7, a1, 0xe
	srliw a0, s7, 0x1e
	srliw a7, a0, 0x15
	srliw s1, a7, 0x1b
	srliw a3, s1, 0x1e
	srliw s5, a3, 0x14
	srliw a1, s5, 0x5
	srliw s3, a1, 0x4
	srliw a3, s3, 0x5
	srliw s11, a3, 0xd
	srliw a6, s11, 0xa
	srliw t3, a6, 0x1e
	srliw s0, t3, 0x11
	srliw a0, s0, 0x5
	srliw s4, a0, 0x9
	srliw s11, s4, 0x1f
	srliw s11, s11, 0x4
	srliw s9, s11, 0x11
	srliw a1, s9, 0x7
	srliw t3, a1, 0x5
	srliw s0, t3, 0x18
	srliw s0, s0, 0x12
	srliw s9, s0, 0x5
	srliw a0, s9, 0x1c
	srliw t3, a0, 0x1f
	srliw a6, t3, 0x4
	srliw s1, a6, 0x7
	srliw t3, s1, 0x12
	srliw s8, t3, 0x7
	srliw a3, s8, 0x19
	srliw t3, a3, 0x12
	srliw a3, t3, 0x10
	srliw a7, a3, 0x12
	srliw a0, a7, 0xc
	srliw s4, a0, 0x3
	srliw s3, s4, 0x16
	srliw a2, s3, 0xb
	srliw a6, a2, 0x14
	srliw a2, a6, 0x17
	srliw a7, a2, 0x6
	srliw s7, a7, 0x16
	srliw s2, s7, 0x1f
	srliw s6, s2, 0x5
	srliw a1, s6, 0x1e
	srliw s10, a1, 0x17
	srliw s1, s10, 0x14
	srliw s10, s1, 0x14
	srliw s3, s10, 0x1d
	srliw s9, s3, 0x16
	srliw s7, s9, 0xe
	srliw s3, s7, 0x4
	srliw t3, s3, 0xa
	srliw a5, t3, 0x14
	srliw a7, a5, 0x18
	srliw a2, a7, 0x14
	srliw s6, a2, 0x7
	srliw s10, s6, 0x1e
	srliw s1, s10, 0x3
	srliw s8, s1, 0x1b
	srliw t6, s8, 0xf
	srliw s2, t6, 0x4
	srliw s4, s2, 0x7
	srliw s0, s4, 0xd
	srliw a3, s0, 0x18
	srliw t3, a3, 0xf
	srliw a3, t3, 0x14
	srliw t3, a3, 0x1c
	srliw t6, t3, 0x1d
	srliw t3, t6, 0x5
	srliw s3, t3, 0x16
	srliw a3, s3, 0x1b
	srliw s0, a3, 0x11
	srliw s1, s0, 0xc
	srliw s10, s1, 0xd
	srliw s1, s10, 0x9
	srliw a5, s1, 0x10
	srliw s6, a5, 0x12
	srliw a2, s6, 0x5
	srliw s7, a2, 0xf
	srliw s9, s7, 0x1b
	srliw a3, s9, 0x1f
	srliw t3, a3, 0xb
	srliw s4, t3, 0x1d
	srliw t2, s4, 0x1c
	csrr s9, time
	csrr a7, cycle
	csrr a0, instret
	sub s9, s9, t5
	sub t5, a7, t4
	sub a1, a0, a4
	li s3, 0
	csrr s6, time
	csrr s8, cycle
	csrr a1, instret
	srliw s9, s3, 0x3
	srliw s4, s9, 0x17
	srliw a3, s4, 0x18
	srliw s1, a3, 0x17
	srliw t1, s1, 0x1e
	srliw a7, t1, 0x6
	srliw t3, a7, 0xc
	srliw t6, t3, 0x1a
	srliw t4, t6, 0x1d
	srliw a6, t4, 0xa
	srliw a2, a6, 0x15
	srliw s9, a2, 0x15
	srliw s7, s9, 0xf
	srliw a3, s7, 0x3
	srliw a2, a3, 0xf
	srliw t6, a2, 0x5
	srliw a6, t6, 0x17
	srliw s2, a6, 0x15
	srliw a6, s2, 0x5
	srliw t6, a6, 0x1d
	srliw t3, t6, 0xa
	srliw t5, t3, 0x5
	srliw s10, t5, 0x10
	srliw t2, s10, 0x1e
	srliw s9, t2, 0x1e
	srliw a5, s9, 0x13
	srliw a3, a5, 0x11
	srliw t3, a3, 0x14
	srliw t2, t3, 0x1e
	srliw s1, t2, 0xc
	srliw t6, s1, 0x13
	srliw s10, t6, 0x1b
	srliw a3, s10, 0x4
	srliw s0, a3, 0x7
	srliw s4, s0, 0x12
	srliw s5, s4, 0x12
	srliw t5, s5, 0x16
	srliw a4, t5, 0xe
	srliw s0, a4, 0x7
	srliw s1, s0, 0x14
	srliw a7, s1, 0x6
	srliw a3, a7, 0x9
	srliw t2, a3, 0xb
	srliw a2, t2, 0x14
	srliw s2, a2, 0x1c
	srliw a3, s2, 0x3
	srliw a0, a3, 0x12
	srliw s10, a0, 0x17
	srliw s9, s10, 0x18
	srliw a7, s9, 0x15
	srliw t6, a7, 0x11
	srliw a6, t6, 0x7
	srliw a0, a6, 0x7
	srliw s2, a0, 0xd
	srliw s10, s2, 0xf
	srliw s9, s10, 0x11
	srliw t2, s9, 0xb
	srliw s3, t2, 0x1d
	srliw a5, s3, 0x16
	srliw s5, a5, 0x11
	srliw s11, s5, 0x15
	srliw a2, s11, 0x1c
	srliw a0, a2, 0x1e
	srliw a0, a0, 0xe
	srliw s7, a0, 0x19
	srliw a4, s7, 0x1f
	srliw a0, a4, 0xf
	srliw t1, a0, 0x1b
	srliw s9, t1, 0x18
	srliw a6, s9, 0x16
	srliw a2, a6, 0x15
	srliw s0, a2, 0x5
	srliw s10, s0, 0x3
	srliw s1, s10, 0x9
	srliw a7, s1, 0x14
	srliw a5, a7, 0xa
	srliw a6, a5, 0xa
	srliw t2, a6, 0x16
	srliw a6, t2, 0x18
	srliw s11, a6, 0xe
	srliw a2, s11, 0x10
	srliw t2, a2, 0x14
	srliw s2, t2, 0x1b
	srliw a7, s2, 0x6
	srliw s3, a7, 0x5
	srliw s3, s3, 0x3
	srliw t3, s3, 0x1b
	srliw s7, t3, 0xa
	srliw a7, s7, 0x1e
	srliw s1, a7, 0x17
	srliw s0, s1, 0xd
	srliw a5, s0, 0xa
	srliw s0, a5, 0x1a
	srliw s11, s0, 0x9
	srliw s4, s11, 0x13
	srliw s11, s4, 0x8
	srliw t2, s11, 0x14
	srliw a3, t2, 0x5
	srliw a0, a3, 0x13
	srliw s1, a0, 0x8
	csrr a4, time
	csrr t3, cycle
	csrr s2, instret
	sub s9, a4, s6
	sub t5, t3, s8
	sub t3, s2, a1
	li a3, 0
	csrr t2, time
	csrr s0, cycle
	csrr s4, instret
	srliw s11, a3, 0x4
	srliw a3, s11, 0xc
	srliw s8, a3, 0x17
	srliw s2, s8, 0xb
	srliw a2, s2, 0x15
	srliw a3, a2, 0x1f
	srliw s10, a3, 0x19
	srliw a7, s10, 0x18
	srliw a1, a7, 0xd
	srliw s5, a1, 0x1e
	srliw a0, s5, 0x1f
	srliw s6, a0, 0xe
	srliw s9, s6, 0x10
	srliw s5, s9, 0xe
	srliw s10, s5, 0x1b
	srliw s8, s10, 0x9
	srliw s8, s8, 0x3
	srliw a1, s8, 0x16
	srliw t4, a1, 0x15
	srliw s9, t4, 0x12
	srliw s5, s9, 0x7
	srliw s7, s5, 0x8
	srliw t6, s7, 0xf
	srliw s10, t6, 0x3
	srliw s6, s10, 0x8
	srliw a4, s6, 0x3
	srliw a7, a4, 0xb
	srliw s10, a7, 0xe
	srliw t4, s10, 0x1d
	srliw s2, t4, 0x1b
	srliw s10, s2, 0x9
	srliw s5, s10, 0x10
	srliw t1, s5, 0x18
	srliw a0, t1, 0x9
	srliw a0, a0, 0x1c
	srliw t4, a0, 0xa
	srliw s7, t4, 0x10
	srliw s6, s7, 0x1f
	srliw s10, s6, 0x18
	srliw s9, s10, 0x15
	srliw a5, s9, 0x9
	srliw s3, a5, 0x10
	srliw s6, s3, 0x15
	srliw s2, s6, 0xf
	srliw s8, s2, 0x4
	srliw a3, s8, 0x8
	srliw s1, a3, 0x15
	srliw s7, s1, 0x1d
	srliw s6, s7, 0x3
	srliw s5, s6, 0x1d
	srliw s6, s5, 0x17
	srliw s6, s6, 0x9
	srliw s11, s6, 0x6
	srliw a2, s11, 0x4
	srliw a6, a2, 0xc
	srliw s7, a6, 0x7
	srliw s1, s7, 0x14
	srliw s5, s1, 0xf
	srliw a3, s5, 0x16
	srliw s10, a3, 0xe
	srliw s6, s10, 0x8
	srliw a0, s6, 0x15
	srliw a7, a0, 0x1b
	srliw s3, a7, 0x18
	srliw s11, s3, 0x8
	srliw a2, s11, 0x8
	srliw s2, a2, 0x1f
	srliw a1, s2, 0x13
	srliw t4, a1, 0x1d
	srliw a6, t4, 0x7
	srliw a7, a6, 0x12
	srliw a3, a7, 0x1e
	srliw s2, a3, 0x17
	srliw s5, s2, 0x5
	srliw s6, s5, 0x11
	srliw s9, s6, 0x8
	srliw s9, s9, 0x1c
	srliw a6, s9, 0x1b
	srliw s8, a6, 0xc
	srliw s3, s8, 0xb
	srliw a1, s3, 0xe
	srliw a2, a1, 0x11
	srliw s3, a2, 0xa
	srliw s8, s3, 0x15
	srliw a7, s8, 0x19
	srliw a4, a7, 0x4
	srliw a3, a4, 0x1a
	srliw a0, a3, 0xa
	srliw s2, a0, 0x17
	srliw s3, s2, 0x9
	srliw a4, s3, 0x1e
	srliw a3, a4, 0x1e
	srliw t4, a3, 0x1c
	srliw t6, t4, 0x1c
	srliw a1, t6, 0xb
	srliw s2, a1, 0xa
	srliw s1, s2, 0x1c
	srliw s7, s1, 0x1a
	srliw a4, s7, 0x19
	srliw a0, a4, 0x1d
	csrr a2, time
	csrr a5, cycle
	csrr s6, instret
	sub a4, a2, t2
	sub a3, a5, s0
	sub a1, s6, s4
	beq t5, a3, pass_label_24
	li t6, failed_addr
	ld s7, 0(t6)
	jr s7
pass_label_24:
	beq t3, a1, pass_label_25
	li a6, failed_addr
	ld a1, 0(a6)
	jr a1
pass_label_25:
SID_ZKT_03_SRLIW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_03_SRAIW)
SID_ZKT_03_SRAIW:
	li sp, SID_ZKT_03_SRAIW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a3, 0
	csrr s8, time
	csrr t3, cycle
	csrr a2, instret
	sraiw s7, a3, 0x4
	sraiw s7, s7, 0x11
	sraiw t4, s7, 0x1d
	sraiw a3, t4, 0xd
	sraiw a0, a3, 0x8
	sraiw a3, a0, 0x16
	sraiw t4, a3, 0xa
	sraiw s1, t4, 0x1d
	sraiw s6, s1, 0x12
	sraiw s11, s6, 0x8
	sraiw s5, s11, 0x16
	sraiw s11, s5, 0x10
	sraiw t1, s11, 0x14
	sraiw s6, t1, 0xf
	sraiw a0, s6, 0x6
	sraiw t1, a0, 0xc
	sraiw a3, t1, 0x1f
	sraiw s0, a3, 0x1b
	sraiw s3, s0, 0x5
	sraiw t1, s3, 0x16
	sraiw s10, t1, 0x11
	sraiw a7, s10, 0x1e
	sraiw a0, a7, 0x8
	sraiw t1, a0, 0x15
	sraiw s6, t1, 0x10
	sraiw a4, s6, 0x12
	sraiw t4, a4, 0x17
	sraiw a5, t4, 0x7
	sraiw s7, a5, 0x1a
	sraiw s7, s7, 0x5
	sraiw a0, s7, 0x3
	sraiw s5, a0, 0x14
	sraiw a0, s5, 0x19
	sraiw s4, a0, 0x14
	sraiw t4, s4, 0x12
	sraiw a0, t4, 0x15
	sraiw a1, a0, 0x16
	sraiw s3, a1, 0x14
	sraiw s2, s3, 0x7
	sraiw t6, s2, 0xa
	sraiw s4, t6, 0x4
	sraiw s4, s4, 0x1f
	sraiw s1, s4, 0x14
	sraiw a3, s1, 0x1c
	sraiw s1, a3, 0xc
	sraiw t2, s1, 0x10
	sraiw s4, t2, 0x1c
	sraiw s2, s4, 0x18
	sraiw a6, s2, 0x15
	sraiw t5, a6, 0x1f
	sraiw s0, t5, 0x11
	sraiw t2, s0, 0xb
	sraiw a0, t2, 0x15
	sraiw s1, a0, 0xe
	sraiw s11, s1, 0x14
	sraiw s1, s11, 0xd
	sraiw a6, s1, 0x13
	sraiw s11, a6, 0xe
	sraiw a6, s11, 0x15
	sraiw s0, a6, 0x4
	sraiw a7, s0, 0x8
	sraiw s2, a7, 0x10
	sraiw t5, s2, 0xa
	sraiw a6, t5, 0x12
	sraiw t5, a6, 0x1d
	sraiw s9, t5, 0x17
	sraiw a1, s9, 0xe
	sraiw s4, a1, 0x18
	sraiw s11, s4, 0xb
	sraiw s6, s11, 0x1a
	sraiw a0, s6, 0x1a
	sraiw a4, a0, 0x1b
	sraiw t4, a4, 0xa
	sraiw s3, t4, 0x5
	sraiw s6, s3, 0x16
	sraiw s10, s6, 0xb
	sraiw a4, s10, 0x1e
	sraiw t5, a4, 0xc
	sraiw t2, t5, 0x13
	sraiw s6, t2, 0x1b
	sraiw t2, s6, 0x4
	sraiw s0, t2, 0xc
	sraiw t6, s0, 0x12
	sraiw s3, t6, 0x12
	sraiw s5, s3, 0x19
	sraiw s11, s5, 0x1e
	sraiw s6, s11, 0x8
	sraiw s11, s6, 0x1e
	sraiw t5, s11, 0x5
	sraiw s5, t5, 0x18
	sraiw a3, s5, 0x15
	sraiw s11, a3, 0x13
	sraiw s3, s11, 0x14
	sraiw s11, s3, 0x9
	sraiw s2, s11, 0x4
	sraiw s6, s2, 0x15
	sraiw a0, s6, 0x15
	sraiw s1, a0, 0x13
	sraiw s10, s1, 0xd
	sraiw s7, s10, 0xc
	csrr a0, time
	csrr a6, cycle
	csrr s1, instret
	sub t6, a0, s8
	sub s10, a6, t3
	sub s11, s1, a2
	li a0, 0
	csrr s1, time
	csrr t6, cycle
	csrr s0, instret
	sraiw s6, a0, 0x5
	sraiw t5, s6, 0x14
	sraiw a6, t5, 0x16
	sraiw s8, a6, 0xa
	sraiw s11, s8, 0x15
	sraiw t3, s11, 0x17
	sraiw t5, t3, 0x8
	sraiw a1, t5, 0x7
	sraiw a3, a1, 0x18
	sraiw s11, a3, 0x1a
	sraiw s5, s11, 0x10
	sraiw a7, s5, 0x17
	sraiw s5, a7, 0x16
	sraiw s7, s5, 0xd
	sraiw a5, s7, 0x17
	sraiw s11, a5, 0x19
	sraiw a6, s11, 0x9
	sraiw a6, a6, 0x16
	sraiw a4, a6, 0x1b
	sraiw a3, a4, 0x11
	sraiw a5, a3, 0x18
	sraiw a4, a5, 0x8
	sraiw a4, a4, 0x1f
	sraiw s6, a4, 0x3
	sraiw a4, s6, 0x1b
	sraiw a2, a4, 0x9
	sraiw t4, a2, 0x4
	sraiw a5, t4, 0x3
	sraiw t3, a5, 0x5
	sraiw s7, t3, 0xf
	sraiw a0, s7, 0x1c
	sraiw s8, a0, 0xe
	sraiw a6, s8, 0x1f
	sraiw a5, a6, 0x10
	sraiw s7, a5, 0x9
	sraiw s4, s7, 0x1d
	sraiw s6, s4, 0x8
	sraiw s4, s6, 0x3
	sraiw s2, s4, 0x1d
	sraiw s5, s2, 0x10
	sraiw s9, s5, 0x4
	sraiw s5, s9, 0xa
	sraiw a3, s5, 0x4
	sraiw s11, a3, 0x1f
	sraiw t3, s11, 0xf
	sraiw s3, t3, 0x6
	sraiw t4, s3, 0xe
	sraiw s7, t4, 0xe
	sraiw t5, s7, 0x14
	sraiw a7, t5, 0x1d
	sraiw s8, a7, 0x1d
	sraiw s11, s8, 0x16
	sraiw s4, s11, 0x7
	sraiw t3, s4, 0x1e
	sraiw a3, t3, 0xf
	sraiw s10, a3, 0x13
	sraiw a7, s10, 0x17
	sraiw s4, a7, 0x6
	sraiw s7, s4, 0x1a
	sraiw t2, s7, 0xd
	sraiw t5, t2, 0x12
	sraiw a5, t5, 0x17
	sraiw s8, a5, 0x3
	sraiw s7, s8, 0x11
	sraiw t2, s7, 0xa
	sraiw s7, t2, 0xf
	sraiw s9, s7, 0x14
	sraiw s8, s9, 0x5
	sraiw t2, s8, 0x10
	sraiw a0, t2, 0x1e
	sraiw a6, a0, 0x16
	sraiw s10, a6, 0x15
	sraiw a1, s10, 0xf
	sraiw t1, a1, 0x3
	sraiw s10, t1, 0xe
	sraiw a2, s10, 0x13
	sraiw s9, a2, 0xc
	sraiw a4, s9, 0xa
	sraiw a5, a4, 0xf
	sraiw a1, a5, 0x12
	sraiw a0, a1, 0xf
	sraiw t5, a0, 0xe
	sraiw s11, t5, 0x4
	sraiw s11, s11, 0x1d
	sraiw t5, s11, 0x4
	sraiw a3, t5, 0x10
	sraiw a2, a3, 0x16
	sraiw s11, a2, 0x10
	sraiw a7, s11, 0x15
	sraiw s11, a7, 0x8
	sraiw s4, s11, 0x19
	sraiw s9, s4, 0x7
	sraiw t1, s9, 0xd
	sraiw t1, t1, 0x9
	sraiw a0, t1, 0x7
	sraiw t2, a0, 0x12
	sraiw a6, t2, 0x10
	sraiw t3, a6, 0xd
	sraiw a5, t3, 0x1b
	sraiw t3, a5, 0x1b
	csrr s5, time
	csrr a6, cycle
	csrr a5, instret
	sub a0, s5, s1
	sub s3, a6, t6
	sub t2, a5, s0
	li a0, 0
	csrr t1, time
	csrr t6, cycle
	csrr a6, instret
	sraiw s5, a0, 0x3
	sraiw a1, s5, 0x1f
	sraiw s7, a1, 0xe
	sraiw s0, s7, 0xe
	sraiw s8, s0, 0xe
	sraiw a5, s8, 0x1a
	sraiw a1, a5, 0x5
	sraiw s0, a1, 0x1c
	sraiw t5, s0, 0x1b
	sraiw s10, t5, 0xf
	sraiw s10, s10, 0x7
	sraiw t3, s10, 0x19
	sraiw a1, t3, 0x17
	sraiw s5, a1, 0x4
	sraiw t3, s5, 0x1e
	sraiw s11, t3, 0x7
	sraiw s10, s11, 0x4
	sraiw a4, s10, 0x1a
	sraiw t5, a4, 0xc
	sraiw s9, t5, 0xb
	sraiw a3, s9, 0xd
	sraiw t4, a3, 0x4
	sraiw s10, t4, 0x5
	sraiw s8, s10, 0x7
	sraiw t4, s8, 0x7
	sraiw s9, t4, 0xa
	sraiw s0, s9, 0xd
	sraiw s6, s0, 0x9
	sraiw t3, s6, 0x1b
	sraiw s6, t3, 0x8
	sraiw t5, s6, 0x11
	sraiw a5, t5, 0x9
	sraiw s8, a5, 0x10
	sraiw s1, s8, 0xe
	sraiw s6, s1, 0x7
	sraiw s8, s6, 0xc
	sraiw s0, s8, 0x1c
	sraiw a7, s0, 0x15
	sraiw a5, a7, 0x8
	sraiw a4, a5, 0x11
	sraiw t5, a4, 0x3
	sraiw a7, t5, 0x15
	sraiw a4, a7, 0x8
	sraiw a5, a4, 0x1a
	sraiw s4, a5, 0x17
	sraiw s7, s4, 0x6
	sraiw s6, s7, 0x4
	sraiw a1, s6, 0x1a
	sraiw s9, a1, 0x7
	sraiw t5, s9, 0x10
	sraiw a2, t5, 0x18
	sraiw s5, a2, 0xc
	sraiw s9, s5, 0x13
	sraiw a4, s9, 0x1b
	sraiw s11, a4, 0x9
	sraiw s7, s11, 0x4
	sraiw a2, s7, 0x1f
	sraiw s5, a2, 0x5
	sraiw s5, s5, 0x16
	sraiw s5, s5, 0x13
	sraiw t3, s5, 0x1b
	sraiw a1, t3, 0x13
	sraiw a0, a1, 0x14
	sraiw a5, a0, 0x19
	sraiw a4, a5, 0x10
	sraiw s11, a4, 0x1a
	sraiw s7, s11, 0xb
	sraiw t3, s7, 0x19
	sraiw s2, t3, 0x12
	sraiw s4, s2, 0x14
	sraiw s7, s4, 0x11
	sraiw s8, s7, 0x11
	sraiw t4, s8, 0x17
	sraiw t3, t4, 0x15
	sraiw a5, t3, 0x16
	sraiw t5, a5, 0x1f
	sraiw s0, t5, 0x5
	sraiw s7, s0, 0x15
	sraiw a2, s7, 0xd
	sraiw s4, a2, 0x6
	sraiw s4, s4, 0x1e
	sraiw s8, s4, 0xc
	sraiw t3, s8, 0xa
	sraiw a3, t3, 0x1b
	sraiw a4, a3, 0x4
	sraiw s10, a4, 0xa
	sraiw a7, s10, 0x6
	sraiw s8, a7, 0x9
	sraiw a2, s8, 0x8
	sraiw a1, a2, 0x17
	sraiw a2, a1, 0x1b
	sraiw s11, a2, 0xf
	sraiw t4, s11, 0x1b
	sraiw s8, t4, 0x1d
	sraiw a3, s8, 0x1f
	sraiw s7, a3, 0xf
	sraiw s9, s7, 0x17
	sraiw s8, s9, 0x7
	sraiw s6, s8, 0x1d
	sraiw a2, s6, 0x15
	csrr a5, time
	csrr a3, cycle
	csrr s0, instret
	sub a7, a5, t1
	sub s5, a3, t6
	sub a3, s0, a6
	beq s3, s5, pass_label_26
	li s11, failed_addr
	ld t6, 0(s11)
	jr t6
pass_label_26:
	beq t2, a3, pass_label_27
	li t4, failed_addr
	ld a0, 0(t4)
	jr a0
pass_label_27:
SID_ZKT_03_SRAIW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_04)
SID_ZKT_04:
	li sp, SID_ZKT_04_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s9, 0
	li s6, 0
	beq s9, s9, pass_label_28
	li a6, failed_addr
	ld a5, 0(a6)
	jr a5
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
	csrr s10, time
	csrr t6, cycle
	csrr a0, instret
	li a5, 0x44
	add a6, a2, a5
	li t3, 0x3e9
	add s5, a6, t3
	li t4, 0xb4
	add t5, s5, t4
	li t1, 0x782
	add t3, t5, t1
	li a5, 0x151
	add a7, t3, a5
	li a2, 0x5ef
	add s0, a7, a2
	li a3, 0x513
	add s3, s0, a3
	li t4, 0x63d
	add s2, s3, t4
	li t4, 0x56e
	add a5, s2, t4
	li a2, 0x607
	add s8, a5, a2
	li s9, 0x4c6
	add s1, s8, s9
	li t3, 0x313
	add s7, s1, t3
	li a2, 0x776
	add s7, s7, a2
	li s11, 0x5a1
	add s2, s7, s11
	li s1, 0x50d
	add t5, s2, s1
	li a7, 0x3f4
	add t4, t5, a7
	li t5, 0x21f
	add s1, t4, t5
	li s11, 0x687
	add s5, s1, s11
	li s3, 0x39a
	add t5, s5, s3
	li s0, 0x644
	add s4, t5, s0
	li s11, 0x31
	add a1, s4, s11
	li a2, 0x35f
	add t3, a1, a2
	li s0, 0x4a
	add a3, t3, s0
	li t1, 0x25f
	add s3, a3, t1
	li t4, 0x632
	add t3, s3, t4
	li a7, 0x70f
	add s3, t3, a7
	li t2, 0x67
	add a7, s3, t2
	li t1, 0x2c9
	add s2, a7, t1
	li a4, 0x19b
	add s11, s2, a4
	li t3, 0x2c0
	add a6, s11, t3
	li s5, 0x175
	add t4, a6, s5
	li s9, 0x1f8
	add t1, t4, s9
	li t4, 0x11e
	add t2, t1, t4
	li s11, 0x78f
	add s5, t2, s11
	li s9, 0xbd
	add s4, s5, s9
	li t3, 0x6b4
	add s7, s4, t3
	li t3, 0x56
	add s4, s7, t3
	li a2, 0xc4
	add t3, s4, a2
	li a1, 0x6b5
	add a2, t3, a1
	li a7, 0x13f
	add t3, a2, a7
	li s2, 0x278
	add s6, t3, s2
	li s1, 0x28a
	add s6, s6, s1
	li s1, 0x3f4
	add s5, s6, s1
	li a5, 0x4c0
	add a6, s5, a5
	li t3, 0x499
	add s9, a6, t3
	li t2, 0x4cd
	add t3, s9, t2
	li a5, 0x3cd
	add t1, t3, a5
	li s1, 0x2e
	add s9, t1, s1
	li s3, 0x317
	add s5, s9, s3
	li t5, 0x4a2
	add s6, s5, t5
	li t1, 0x45d
	add a6, s6, t1
	li t2, 0x30b
	add s0, a6, t2
	li a6, 0x1e3
	add a3, s0, a6
	li s2, 0x5e5
	add s1, a3, s2
	li a2, 0x437
	add a1, s1, a2
	li t1, 0x126
	add a3, a1, t1
	li s0, 0x469
	add a6, a3, s0
	li a4, 0x62a
	add a1, a6, a4
	li t3, 0x758
	add s7, a1, t3
	li s6, 0xd9
	add s6, s7, s6
	li t5, 0x359
	add t1, s6, t5
	li s3, 0x46f
	add s3, t1, s3
	li a5, 0x319
	add s2, s3, a5
	li t5, 0x1cd
	add s1, s2, t5
	li t5, 0x7af
	add t1, s1, t5
	li a5, 0x477
	add a6, t1, a5
	li s4, 0x14
	add a6, a6, s4
	li a1, 0x4c7
	add s6, a6, a1
	li t5, 0x6d9
	add s3, s6, t5
	li s1, 0x6a2
	add a5, s3, s1
	li a2, 0x495
	add a7, a5, a2
	li t2, 0x7de
	add t5, a7, t2
	li a2, 0x482
	add a1, t5, a2
	li t2, 0x7b5
	add s6, a1, t2
	li t4, 0x28a
	add s5, s6, t4
	li s9, 0x34a
	add s1, s5, s9
	li a5, 0x65c
	add t1, s1, a5
	li s7, 0x31e
	add a5, t1, s7
	li s7, 0x713
	add s6, a5, s7
	li s1, 0x479
	add s6, s6, s1
	li s1, 0x6fc
	add t5, s6, s1
	li s7, 0x767
	add a1, t5, s7
	li a5, 0x50b
	add t1, a1, a5
	li s0, 0x556
	add s7, t1, s0
	li s8, 0x1c2
	add s3, s7, s8
	li t5, 0x112
	add s9, s3, t5
	li a2, 0x382
	add s3, s9, a2
	li t2, 0x68f
	add a4, s3, t2
	li a6, 0x16c
	add t1, a4, a6
	li s2, 0xe3
	add a3, t1, s2
	li s6, 0x48d
	add s8, a3, s6
	li s5, 0xe9
	add s1, s8, s5
	li t5, 0x5c8
	add s6, s1, t5
	li a7, 0x685
	add s7, s6, a7
	li s6, 0x265
	add s11, s7, s6
	li s2, 0x16a
	add t2, s11, s2
	li s0, 0x72c
	add a5, t2, s0
	li s11, 0x2d3
	add s9, a5, s11
	li s0, 0x3ca
	add s8, s9, s0
	li t2, 0x3fe
	add a4, s8, t2
	csrr a1, time
	csrr t5, cycle
	csrr s11, instret
	sub t1, a1, s10
	sub a7, t5, t6
	sub a1, s11, a0
	li a7, 0
	csrr s4, time
	csrr s11, cycle
	csrr t6, instret
	li s5, 0x62a
	add a3, a7, s5
	li s9, 0x6fd
	add a3, a3, s9
	li t5, 0x43a
	add s7, a3, t5
	li s6, 0x14b
	add t5, s7, s6
	li t1, 0x713
	add s3, t5, t1
	li a4, 0x4b7
	add s6, s3, a4
	li t5, 0x6e6
	add t5, s6, t5
	li s8, 0x226
	add s2, t5, s8
	li t3, 0x521
	add s8, s2, t3
	li s3, 0x59d
	add a1, s8, s3
	li a3, 0x1ee
	add s2, a1, a3
	li s7, 0x21f
	add t1, s2, s7
	li a6, 0x93
	add s9, t1, a6
	li a4, 0x5be
	add s0, s9, a4
	li s5, 0x6dd
	add s6, s0, s5
	li a4, 0x415
	add s2, s6, a4
	li s10, 0x29d
	add t1, s2, s10
	li a7, 0x1f8
	add s7, t1, a7
	li s5, 0x541
	add s1, s7, s5
	li s6, 0x65e
	add s6, s1, s6
	li t2, 0x4e4
	add a7, s6, t2
	li t3, 0x476
	add a3, a7, t3
	li s9, 0x1c4
	add t1, a3, s9
	li s0, 0x21d
	add a4, t1, s0
	li s3, 0x634
	add s5, a4, s3
	li a4, 0x749
	add a4, s5, a4
	li t5, 0x14d
	add a4, a4, t5
	li s3, 0x51b
	add a6, a4, s3
	li s0, 0x697
	add s3, a6, s0
	li a0, 0x10f
	add a3, s3, a0
	li s10, 0x77
	add s6, a3, s10
	li s0, 0x3b6
	add s3, s6, s0
	li s0, 0x2dd
	add s6, s3, s0
	li s1, 0x10b
	add a1, s6, s1
	li s1, 0x6f0
	add s3, a1, s1
	li s1, 0x72d
	add a5, s3, s1
	li s5, 0x4f5
	add a2, a5, s5
	li s10, 0x1ff
	add t1, a2, s10
	li a2, 0x272
	add a2, t1, a2
	li s8, 0x5e6
	add a2, a2, s8
	li s2, 0x57
	add t1, a2, s2
	li a4, 0x368
	add s7, t1, a4
	li a1, 0x395
	add a7, s7, a1
	li a6, 0x3f4
	add a7, a7, a6
	li a0, 0x7e0
	add s0, a7, a0
	li s6, 0x6f9
	add a0, s0, s6
	li a7, 0x5fb
	add t2, a0, a7
	li a1, 0x6f
	add a0, t2, a1
	li a7, 0x166
	add a7, a0, a7
	li a1, 0x7a4
	add a6, a7, a1
	li t4, 0x47e
	add a6, a6, t4
	li a4, 0x309
	add s6, a6, a4
	li a6, 0x67b
	add s9, s6, a6
	li a1, 0x559
	add s10, s9, a1
	li t4, 0x574
	add s8, s10, t4
	li t4, 0x704
	add s3, s8, t4
	li s0, 0x3ff
	add a4, s3, s0
	li s5, 0x53e
	add t5, a4, s5
	li s8, 0x5cc
	add a4, t5, s8
	li a6, 0x283
	add a0, a4, a6
	li s9, 0x277
	add t3, a0, s9
	li s0, 0x23c
	add a1, t3, s0
	li s3, 0x147
	add s8, a1, s3
	li a6, 0x2df
	add a0, s8, a6
	li t4, 0x55a
	add a6, a0, t4
	li t1, 0x6c8
	add s9, a6, t1
	li s1, 0x441
	add s9, s9, s1
	li s8, 0x5fa
	add t5, s9, s8
	li s10, 0x5d7
	add s1, t5, s10
	li a5, 0x2f5
	add a3, s1, a5
	li a0, 0x694
	add a7, a3, a0
	li s8, 0xc0
	add a4, a7, s8
	li t1, 0x612
	add a3, a4, t1
	li s8, 0x706
	add s10, a3, s8
	li s5, 0x372
	add a1, s10, s5
	li a4, 0x684
	add s2, a1, a4
	li s5, 0x1f3
	add s0, s2, s5
	li a7, 0x7a2
	add a3, s0, a7
	li s2, 0x7d5
	add a7, a3, s2
	li a2, 0x59e
	add a6, a7, a2
	li t2, 0x2eb
	add s2, a6, t2
	li a2, 0xc4
	add s10, s2, a2
	li t3, 0x781
	add t3, s10, t3
	li a7, 0x73d
	add a4, t3, a7
	li s7, 0x2d4
	add t5, a4, s7
	li t1, 0x1f4
	add t1, t5, t1
	li a6, 0x5b7
	add s0, t1, a6
	li a0, 0x8a
	add s9, s0, a0
	li s0, 0x2f1
	add s10, s9, s0
	li s2, 0x79c
	add s3, s10, s2
	li s0, 0x56c
	add s1, s3, s0
	li a3, 0x449
	add s7, s1, a3
	li t5, 0x550
	add t5, s7, t5
	li t4, 0x546
	add s7, t5, t4
	li s9, 0x580
	add a3, s7, s9
	li a4, 0x27f
	add s2, a3, a4
	li t1, 0x5b
	add a4, s2, t1
	li t4, 0x735
	add t2, a4, t4
	li a2, 0x491
	add a3, t2, a2
	li a4, 0x2d8
	add s5, a3, a4
	csrr a4, time
	csrr s6, cycle
	csrr a2, instret
	sub a5, a4, s4
	sub s2, s6, s11
	sub s10, a2, t6
	li s0, 0
	csrr a3, time
	csrr a7, cycle
	csrr s8, instret
	li s4, 0x763
	add s1, s0, s4
	li a2, 0x71e
	add t4, s1, a2
	li s0, 0x428
	add s6, t4, s0
	li t5, 0x1c
	add s6, s6, t5
	li s0, 0x317
	add s11, s6, s0
	li s9, 0x549
	add a4, s11, s9
	li t6, 0xc7
	add a0, a4, t6
	li s3, 0x79b
	add a4, a0, s3
	li s7, 0x7
	add s9, a4, s7
	li t3, 0x69d
	add a4, s9, t3
	li s0, 0x7
	add s6, a4, s0
	li t3, 0x49a
	add a6, s6, t3
	li s5, 0x171
	add s9, a6, s5
	li t5, 0x3b5
	add t1, s9, t5
	li s9, 0xe2
	add s3, t1, s9
	li t3, 0x1be
	add s1, s3, t3
	li s7, 0x2ff
	add t5, s1, s7
	li t2, 0x8b
	add t4, t5, t2
	li s6, 0x41b
	add t5, t4, s6
	li a2, 0x11d
	add s6, t5, a2
	li s11, 0x337
	add s11, s6, s11
	li s4, 0x17c
	add s7, s11, s4
	li t2, 0x383
	add s6, s7, t2
	li t6, 0x6cd
	add t5, s6, t6
	li s1, 0x4dd
	add s6, t5, s1
	li t5, 0xc5
	add a6, s6, t5
	li s6, 0x422
	add t2, a6, s6
	li t6, 0x756
	add t6, t2, t6
	li t2, 0x230
	add t5, t6, t2
	li s4, 0x5a3
	add t3, t5, s4
	li a6, 0x3d8
	add s6, t3, a6
	li s9, 0x675
	add t1, s6, s9
	li s6, 0x178
	add a6, t1, s6
	li s3, 0x301
	add s0, a6, s3
	li a5, 0x547
	add s1, s0, a5
	li a1, 0x138
	add s6, s1, a1
	li a6, 0x7f3
	add s11, s6, a6
	li t6, 0xfa
	add t3, s11, t6
	li a6, 0x532
	add s9, t3, a6
	li a2, 0x114
	add s5, s9, a2
	li t5, 0xa2
	add a6, s5, t5
	li t4, 0x520
	add t1, a6, t4
	li s3, 0x781
	add s9, t1, s3
	li s0, 0x32e
	add s1, s9, s0
	li t5, 0x14d
	add s11, s1, t5
	li a2, 0x178
	add s4, s11, a2
	li t5, 0x1ce
	add t6, s4, t5
	li s9, 0x665
	add t4, t6, s9
	li a0, 0x24f
	add s5, t4, a0
	li s6, 0x688
	add s6, s5, s6
	li s0, 0x6d5
	add s7, s6, s0
	li a1, 0x6dd
	add s1, s7, a1
	li a1, 0x741
	add a4, s1, a1
	li a0, 0xde
	add a1, a4, a0
	li t2, 0x67
	add s1, a1, t2
	li t3, 0x77c
	add a2, s1, t3
	li t3, 0x4d4
	add a5, a2, t3
	li s1, 0x1c0
	add a0, a5, s1
	li a4, 0xf
	add a4, a0, a4
	li s4, 0x4c5
	add s7, a4, s4
	li t2, 0x593
	add t4, s7, t2
	li s7, 0x1bb
	add a0, t4, s7
	li t2, 0x1c
	add t2, a0, t2
	li s6, 0x682
	add s11, t2, s6
	li s7, 0x74f
	add a2, s11, s7
	li a6, 0x519
	add a5, a2, a6
	li s11, 0x38c
	add s3, a5, s11
	li a4, 0x58f
	add t5, s3, a4
	li s9, 0x18b
	add s6, t5, s9
	li s7, 0x4ed
	add s0, s6, s7
	li t5, 0x305
	add s3, s0, t5
	li a0, 0x263
	add t6, s3, a0
	li s5, 0x134
	add s3, t6, s5
	li a6, 0x6cd
	add a4, s3, a6
	li s6, 0x2b9
	add a2, a4, s6
	li s11, 0x2fc
	add s3, a2, s11
	li s9, 0x4f4
	add t3, s3, s9
	li s7, 0x30a
	add a4, t3, s7
	li a6, 0xe0
	add s3, a4, a6
	li t2, 0x716
	add s3, s3, t2
	li s11, 0x681
	add t3, s3, s11
	li s9, 0x4e6
	add t5, t3, s9
	li a6, 0x4f0
	add s11, t5, a6
	li s1, 0x190
	add s9, s11, s1
	li a4, 0x2b9
	add t2, s9, a4
	li a0, 0x13
	add t6, t2, a0
	li a0, 0x364
	add a5, t6, a0
	li a1, 0x395
	add a1, a5, a1
	li s5, 0x5c9
	add a4, a1, s5
	li s11, 0x18e
	add s1, a4, s11
	li s0, 0x155
	add t5, s1, s0
	li t3, 0x30
	add t6, t5, t3
	li t2, 0x405
	add t1, t6, t2
	li a0, 0x21e
	add s1, t1, a0
	li t5, 0x3c2
	add a5, s1, t5
	li a4, 0x1df
	add s6, a5, a4
	li s4, 0x710
	add s11, s6, s4
	li a0, 0x664
	add a6, s11, a0
	li s0, 0xab
	add a6, a6, s0
	li s1, 0x88
	add a6, a6, s1
	csrr a5, time
	csrr t4, cycle
	csrr t6, instret
	sub a6, a5, a3
	sub s5, t4, a7
	sub t1, t6, s8
	beq s2, s5, pass_label_29
	li t6, failed_addr
	ld s9, 0(t6)
	jr s9
pass_label_29:
	beq s10, t1, pass_label_30
	li t5, failed_addr
	ld a1, 0(t5)
	jr a1
pass_label_30:
SID_ZKT_05_ADD_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SUB)
SID_ZKT_05_SUB:
	li sp, SID_ZKT_05_SUB_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a7, 0
	csrr s9, time
	csrr s7, cycle
	csrr s2, instret
	li s11, 0x18e
	sub s5, a7, s11
	li s10, 0x5da
	sub t3, s5, s10
	li s3, 0x50b
	sub s8, t3, s3
	li s1, 0x7ac
	sub s8, s8, s1
	li s0, 0x1db
	sub a1, s8, s0
	li a6, 0x59
	sub t5, a1, a6
	li a5, 0x352
	sub t2, t5, a5
	li a6, 0x70f
	sub a1, t2, a6
	li a0, 0x5dd
	sub a5, a1, a0
	li s10, 0x2bf
	sub t6, a5, s10
	li a0, 0x12a
	sub s8, t6, a0
	li s1, 0x5ca
	sub a2, s8, s1
	li s1, 0x567
	sub a3, a2, s1
	li a6, 0x1c
	sub s8, a3, a6
	li t3, 0x3bd
	sub s8, s8, t3
	li s1, 0x514
	sub t2, s8, s1
	li s4, 0x6a8
	sub t4, t2, s4
	li a5, 0x7de
	sub s5, t4, a5
	li a0, 0x4c9
	sub a3, s5, a0
	li s8, 0x1be
	sub s3, a3, s8
	li s0, 0x6da
	sub t2, s3, s0
	li a5, 0x7f
	sub a1, t2, a5
	li t1, 0x793
	sub s8, a1, t1
	li s10, 0x4f8
	sub a2, s8, s10
	li s10, 0x66b
	sub s8, a2, s10
	li t6, 0x49
	sub s8, s8, t6
	li a7, 0x5b4
	sub s10, s8, a7
	li t6, 0x61a
	sub s8, s10, t6
	li a4, 0xcf
	sub t5, s8, a4
	li t4, 0x4c
	sub t1, t5, t4
	li a3, 0x183
	sub s11, t1, a3
	li a2, 0x2d6
	sub s0, s11, a2
	li t6, 0x83
	sub s3, s0, t6
	li t5, 0x306
	sub s1, s3, t5
	li t3, 0x495
	sub a5, s1, t3
	li a1, 0x4ca
	sub a7, a5, a1
	li s6, 0x1bf
	sub s10, a7, s6
	li t6, 0x573
	sub s6, s10, t6
	li s1, 0x28f
	sub t5, s6, s1
	li s11, 0x7ce
	sub s8, t5, s11
	li s11, 0x324
	sub t4, s8, s11
	li a1, 0x257
	sub s5, t4, a1
	li a7, 0x162
	sub a7, s5, a7
	li a5, 0x4c3
	sub s10, a7, a5
	li a0, 0x259
	sub t4, s10, a0
	li a0, 0x27b
	sub s8, t4, a0
	li s5, 0x23e
	sub s8, s8, s5
	li a5, 0x4ab
	sub a5, s8, a5
	li a6, 0x710
	sub s0, a5, a6
	li t6, 0x2e9
	sub s11, s0, t6
	li a1, 0x1d6
	sub s4, s11, a1
	li t3, 0x1c5
	sub s1, s4, t3
	li s8, 0xf7
	sub t4, s1, s8
	li s5, 0x5e5
	sub t4, t4, s5
	li s1, 0x799
	sub t6, t4, s1
	li s11, 0x308
	sub s11, t6, s11
	li a3, 0x126
	sub s5, s11, a3
	li a4, 0x2e4
	sub a3, s5, a4
	li a7, 0x773
	sub s0, a3, a7
	li a2, 0x248
	sub t4, s0, a2
	li a6, 0x2d3
	sub a6, t4, a6
	li t4, 0x7d8
	sub a5, a6, t4
	li t1, 0x4c9
	sub s8, a5, t1
	li t5, 0x43a
	sub t6, s8, t5
	li a5, 0x4bf
	sub a0, t6, a5
	li s0, 0x2dc
	sub a3, a0, s0
	li s8, 0x739
	sub s6, a3, s8
	li a4, 0x6e
	sub s10, s6, a4
	li t6, 0x434
	sub a0, s10, t6
	li s1, 0x77
	sub a7, a0, s1
	li s10, 0xbc
	sub t2, a7, s10
	li t6, 0x6e2
	sub s3, t2, t6
	li a6, 0x37c
	sub t4, s3, a6
	li a3, 0x718
	sub s3, t4, a3
	li t3, 0x2b9
	sub a6, s3, t3
	li a0, 0x6a0
	sub a7, a6, a0
	li t4, 0x437
	sub a0, a7, t4
	li s1, 0x2dd
	sub a0, a0, s1
	li a6, 0x455
	sub s6, a0, a6
	li t2, 0x1f0
	sub s3, s6, t2
	li s8, 0x7d2
	sub s1, s3, s8
	li t6, 0x273
	sub t5, s1, t6
	li a2, 0x42a
	sub s3, t5, a2
	li t5, 0x6e5
	sub a3, s3, t5
	li s1, 0x24b
	sub s5, a3, s1
	li s8, 0x31a
	sub a0, s5, s8
	li s6, 0x425
	sub s6, a0, s6
	li s0, 0x45f
	sub s6, s6, s0
	li s4, 0x297
	sub t1, s6, s4
	li s1, 0x158
	sub t1, t1, s1
	li s11, 0x133
	sub t5, t1, s11
	li t3, 0x44e
	sub s1, t5, t3
	li a7, 0xd0
	sub a6, s1, a7
	li t1, 0x73d
	sub a4, a6, t1
	li s0, 0x54b
	sub s1, a4, s0
	li a2, 0x4e5
	sub a7, s1, a2
	li s4, 0x139
	sub s6, a7, s4
	li s1, 0x546
	sub t3, s6, s1
	li t6, 0x1ca
	sub t1, t3, t6
	li s6, 0x59a
	sub s8, t1, s6
	csrr s5, time
	csrr t6, cycle
	csrr a4, instret
	sub s8, s5, s9
	sub t3, t6, s7
	sub a1, a4, s2
	li a1, 0
	csrr a4, time
	csrr t3, cycle
	csrr a6, instret
	li s0, 0x26e
	sub s5, a1, s0
	li t5, 0x37d
	sub s3, s5, t5
	li s11, 0x363
	sub s7, s3, s11
	li s10, 0x764
	sub s1, s7, s10
	li a3, 0x742
	sub s1, s1, a3
	li t2, 0x7f5
	sub t4, s1, t2
	li s1, 0x21e
	sub t2, t4, s1
	li a2, 0x40a
	sub s11, t2, a2
	li t1, 0x509
	sub s10, s11, t1
	li s7, 0x6fa
	sub s11, s10, s7
	li t5, 0x501
	sub t6, s11, t5
	li t5, 0x67d
	sub a0, t6, t5
	li s1, 0x6f4
	sub s8, a0, s1
	li a7, 0x553
	sub a3, s8, a7
	li s7, 0x523
	sub s4, a3, s7
	li a1, 0x2f0
	sub s1, s4, a1
	li s4, 0x772
	sub a1, s1, s4
	li s3, 0x27b
	sub t4, a1, s3
	li a1, 0x38d
	sub a1, t4, a1
	li s5, 0x397
	sub a2, a1, s5
	li s0, 0x76
	sub a5, a2, s0
	li a3, 0x3a6
	sub s0, a5, a3
	li s6, 0x47e
	sub s1, s0, s6
	li a3, 0x34b
	sub s7, s1, a3
	li s4, 0x3
	sub a7, s7, s4
	li s10, 0x4a1
	sub t4, a7, s10
	li a1, 0x78c
	sub s7, t4, a1
	li s5, 0x100
	sub a1, s7, s5
	li s2, 0x265
	sub a5, a1, s2
	li s4, 0x4f1
	sub t5, a5, s4
	li t1, 0x405
	sub s9, t5, t1
	li t2, 0x176
	sub a1, s9, t2
	li t2, 0x528
	sub s8, a1, t2
	li s6, 0x98
	sub s5, s8, s6
	li t2, 0xe9
	sub t1, s5, t2
	li a5, 0x1ec
	sub s5, t1, a5
	li s3, 0x2ea
	sub s10, s5, s3
	li s6, 0x398
	sub s9, s10, s6
	li t6, 0x2f1
	sub t2, s9, t6
	li a7, 0x550
	sub a0, t2, a7
	li s6, 0x7a4
	sub s11, a0, s6
	li a1, 0x253
	sub s3, s11, a1
	li s1, 0x136
	sub a5, s3, s1
	li s10, 0x23b
	sub a1, a5, s10
	li t6, 0x68b
	sub s0, a1, t6
	li s10, 0x631
	sub s0, s0, s10
	li t1, 0x55f
	sub s2, s0, t1
	li s8, 0xd4
	sub a2, s2, s8
	li s5, 0x5d6
	sub a1, a2, s5
	li t4, 0x10b
	sub a2, a1, t4
	li s8, 0x679
	sub t6, a2, s8
	li t5, 0x573
	sub a1, t6, t5
	li s7, 0x3ec
	sub t4, a1, s7
	li a0, 0x6ea
	sub a0, t4, a0
	li s7, 0x7b0
	sub a0, a0, s7
	li t4, 0x2a9
	sub s5, a0, t4
	li s9, 0x464
	sub a3, s5, s9
	li s7, 0x1de
	sub s4, a3, s7
	li s3, 0x2d4
	sub s0, s4, s3
	li t2, 0x50
	sub a3, s0, t2
	li s6, 0x75
	sub s7, a3, s6
	li a3, 0x7e3
	sub s0, s7, a3
	li a3, 0xf3
	sub a2, s0, a3
	li s7, 0x17b
	sub s7, a2, s7
	li s5, 0x3fc
	sub s5, s7, s5
	li a5, 0x3a6
	sub t2, s5, a5
	li t4, 0x580
	sub a0, t2, t4
	li s2, 0x414
	sub a0, a0, s2
	li t6, 0xc2
	sub a1, a0, t6
	li s1, 0x342
	sub t6, a1, s1
	li s9, 0x80
	sub t5, t6, s9
	li a3, 0x499
	sub s10, t5, a3
	li t1, 0x5dd
	sub t1, s10, t1
	li s0, 0x136
	sub s3, t1, s0
	li s8, 0x97
	sub t6, s3, s8
	li t2, 0x271
	sub a1, t6, t2
	li a5, 0x19
	sub a2, a1, a5
	li s5, 0x50d
	sub t2, a2, s5
	li a0, 0x4c4
	sub s0, t2, a0
	li s4, 0x3ae
	sub t1, s0, s4
	li a2, 0x7d7
	sub t2, t1, a2
	li s2, 0x1f3
	sub s11, t2, s2
	li s4, 0x4ec
	sub s11, s11, s4
	li s6, 0x649
	sub s3, s11, s6
	li a7, 0x7b3
	sub s2, s3, a7
	li s11, 0x5ea
	sub a2, s2, s11
	li s0, 0x1db
	sub s10, a2, s0
	li s2, 0x1bd
	sub s9, s10, s2
	li t1, 0x5c0
	sub t1, s9, t1
	li a0, 0x10e
	sub a2, t1, a0
	li s0, 0x472
	sub s9, a2, s0
	li a0, 0x4a8
	sub s9, s9, a0
	li a5, 0x342
	sub s8, s9, a5
	li s0, 0x111
	sub s4, s8, s0
	li s6, 0x4aa
	sub a2, s4, s6
	li s9, 0x6ca
	sub a7, a2, s9
	li s8, 0x592
	sub s9, a7, s8
	li a2, 0x134
	sub t1, s9, a2
	li t5, 0x143
	sub t4, t1, t5
	li a3, 0x2d7
	sub t6, t4, a3
	csrr a0, time
	csrr t4, cycle
	csrr a7, instret
	sub a4, a0, a4
	sub s6, t4, t3
	sub s4, a7, a6
	li s0, 0
	csrr a4, time
	csrr a1, cycle
	csrr s3, instret
	li t4, 0x565
	sub a7, s0, t4
	li t6, 0x6cb
	sub a6, a7, t6
	li a3, 0x6c2
	sub a5, a6, a3
	li t6, 0x6c4
	sub s9, a5, t6
	li s0, 0x75
	sub t5, s9, s0
	li t1, 0x2fc
	sub s10, t5, t1
	li s1, 0x3f
	sub s11, s10, s1
	li s2, 0x5e9
	sub s0, s11, s2
	li s8, 0x766
	sub s10, s0, s8
	li t6, 0x577
	sub a6, s10, t6
	li a2, 0x554
	sub t5, a6, a2
	li s11, 0x3fb
	sub a0, t5, s11
	li a7, 0x3a0
	sub a2, a0, a7
	li s11, 0xbf
	sub t6, a2, s11
	li a0, 0x4a
	sub t2, t6, a0
	li a7, 0x583
	sub s0, t2, a7
	li t2, 0x5a6
	sub t4, s0, t2
	li s10, 0x398
	sub a3, t4, s10
	li a5, 0x661
	sub t4, a3, a5
	li s8, 0x11c
	sub t2, t4, s8
	li a6, 0x312
	sub a3, t2, a6
	li t6, 0x791
	sub s5, a3, t6
	li s2, 0x52f
	sub t3, s5, s2
	li s7, 0x223
	sub t2, t3, s7
	li a5, 0x625
	sub s10, t2, a5
	li s7, 0x7e
	sub s10, s10, s7
	li a7, 0x50
	sub a3, s10, a7
	li a2, 0x435
	sub s1, a3, a2
	li t4, 0x50
	sub t1, s1, t4
	li s8, 0x17c
	sub a5, t1, s8
	li a7, 0x1ca
	sub s2, a5, a7
	li t6, 0x4eb
	sub a6, s2, t6
	li t3, 0x5c5
	sub t4, a6, t3
	li s2, 0x244
	sub s5, t4, s2
	li t2, 0x439
	sub a3, s5, t2
	li a6, 0xf6
	sub s0, a3, a6
	li a6, 0x617
	sub s0, s0, a6
	li a6, 0x49e
	sub s8, s0, a6
	li s0, 0x273
	sub a7, s8, s0
	li s10, 0x17d
	sub t3, a7, s10
	li s0, 0x4c
	sub s10, t3, s0
	li s0, 0x4c1
	sub t6, s10, s0
	li t1, 0xde
	sub s1, t6, t1
	li a2, 0x3d6
	sub t2, s1, a2
	li t5, 0x133
	sub a5, t2, t5
	li t4, 0x619
	sub s9, a5, t4
	li t1, 0x736
	sub a0, s9, t1
	li t6, 0x20b
	sub t5, a0, t6
	li a3, 0x723
	sub a5, t5, a3
	li a7, 0x702
	sub s8, a5, a7
	li a3, 0xef
	sub t4, s8, a3
	li t3, 0x473
	sub s2, t4, t3
	li t2, 0x643
	sub t6, s2, t2
	li a0, 0x686
	sub s7, t6, a0
	li s2, 0xaf
	sub t5, s7, s2
	li s0, 0x56e
	sub t5, t5, s0
	li t6, 0x2a4
	sub t6, t5, t6
	li s5, 0x112
	sub a0, t6, s5
	li t2, 0x674
	sub a0, a0, t2
	li s10, 0x1db
	sub s11, a0, s10
	li a6, 0x1d4
	sub a2, s11, a6
	li s1, 0x2b3
	sub s9, a2, s1
	li t3, 0x4be
	sub s5, s9, t3
	li s7, 0x388
	sub a6, s5, s7
	li a5, 0x67d
	sub a7, a6, a5
	li t6, 0x2cc
	sub s10, a7, t6
	li t5, 0x48a
	sub a7, s10, t5
	li s0, 0x624
	sub a0, a7, s0
	li a7, 0x7b1
	sub s11, a0, a7
	li s7, 0x5ba
	sub a0, s11, s7
	li a2, 0x55d
	sub s2, a0, a2
	li a0, 0x1a
	sub t4, s2, a0
	li t6, 0x48e
	sub s9, t4, t6
	li a0, 0x761
	sub a0, s9, a0
	li s7, 0x89
	sub s2, a0, s7
	li t1, 0x5de
	sub a0, s2, t1
	li t6, 0x232
	sub t2, a0, t6
	li s8, 0x494
	sub s7, t2, s8
	li s11, 0x469
	sub s8, s7, s11
	li t4, 0x6be
	sub s9, s8, t4
	li a0, 0x17d
	sub a6, s9, a0
	li s5, 0x20
	sub a5, a6, s5
	li s8, 0x5fd
	sub t6, a5, s8
	li s0, 0x462
	sub s0, t6, s0
	li t3, 0x541
	sub s9, s0, t3
	li a3, 0x607
	sub t6, s9, a3
	li a5, 0x2f8
	sub s1, t6, a5
	li a5, 0x72c
	sub s2, s1, a5
	li a0, 0x4c6
	sub t4, s2, a0
	li s5, 0x25d
	sub t5, t4, s5
	li a5, 0x47b
	sub s2, t5, a5
	li a7, 0x79e
	sub a5, s2, a7
	li s7, 0x15f
	sub s10, a5, s7
	li t5, 0x503
	sub s10, s10, t5
	li t4, 0x1a
	sub t1, s10, t4
	li s9, 0x7e6
	sub a6, t1, s9
	li a7, 0x3ef
	sub t1, a6, a7
	li t4, 0x46c
	sub a2, t1, t4
	li t1, 0x15a
	sub s5, a2, t1
	li t2, 0x73c
	sub s11, s5, t2
	csrr s2, time
	csrr t1, cycle
	csrr a6, instret
	sub s7, s2, a4
	sub a1, t1, a1
	sub a7, a6, s3
	beq s6, a1, pass_label_31
	li a1, failed_addr
	ld s8, 0(a1)
	jr s8
pass_label_31:
	beq s4, a7, pass_label_32
	li a5, failed_addr
	ld a6, 0(a5)
	jr a6
pass_label_32:
SID_ZKT_05_SUB_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SLL)
SID_ZKT_05_SLL:
	li sp, SID_ZKT_05_SLL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a2, 0
	csrr s11, time
	csrr a4, cycle
	csrr s7, instret
	li a7, 0x738
	sll a6, a2, a7
	li t5, 0x5c7
	sll a7, a6, t5
	li t3, 0x371
	sll t4, a7, t3
	li a6, 0x1b8
	sll t6, t4, a6
	li s10, 0x5c9
	sll a5, t6, s10
	li a1, 0x3a1
	sll a1, a5, a1
	li s0, 0x407
	sll t6, a1, s0
	li s4, 0x629
	sll t3, t6, s4
	li a3, 0x68
	sll a7, t3, a3
	li s3, 0x70b
	sll t1, a7, s3
	li s2, 0x10b
	sll s1, t1, s2
	li a0, 0x6ef
	sll a7, s1, a0
	li s5, 0x67b
	sll s1, a7, s5
	li a3, 0x457
	sll t3, s1, a3
	li t2, 0x501
	sll s2, t3, t2
	li a5, 0x22c
	sll s0, s2, a5
	li a1, 0x529
	sll a0, s0, a1
	li a3, 0x48
	sll a2, a0, a3
	li s9, 0x781
	sll t1, a2, s9
	li a2, 0x6cc
	sll t3, t1, a2
	li s2, 0x6d4
	sll t6, t3, s2
	li s3, 0xc9
	sll s9, t6, s3
	li a6, 0x32e
	sll t5, s9, a6
	li a5, 0xc6
	sll s5, t5, a5
	li s10, 0x793
	sll t1, s5, s10
	li a1, 0x65
	sll a7, t1, a1
	li a0, 0x3f8
	sll t6, a7, a0
	li s3, 0x781
	sll t2, t6, s3
	li s4, 0x4cd
	sll s1, t2, s4
	li t3, 0x3ee
	sll t5, s1, t3
	li s9, 0x135
	sll t3, t5, s9
	li t4, 0xe7
	sll s8, t3, t4
	li a1, 0x59c
	sll t3, s8, a1
	li t6, 0x3eb
	sll a5, t3, t6
	li s3, 0x204
	sll t3, a5, s3
	li s3, 0x178
	sll s3, t3, s3
	li a3, 0x7e
	sll s9, s3, a3
	li t4, 0xe0
	sll t2, s9, t4
	li t4, 0x445
	sll a0, t2, t4
	li s1, 0x3ba
	sll a0, a0, s1
	li s3, 0x95
	sll s6, a0, s3
	li s9, 0x17a
	sll s2, s6, s9
	li s10, 0x781
	sll a7, s2, s10
	li s0, 0x2b5
	sll a2, a7, s0
	li t6, 0x7d2
	sll a1, a2, t6
	li t6, 0x3bd
	sll s3, a1, t6
	li t2, 0x605
	sll t6, s3, t2
	li s8, 0x44a
	sll s4, t6, s8
	li s2, 0x144
	sll a1, s4, s2
	li s3, 0x5b1
	sll a6, a1, s3
	li s2, 0x3e9
	sll t4, a6, s2
	li t5, 0x5e3
	sll a0, t4, t5
	li s1, 0x301
	sll a2, a0, s1
	li s9, 0x211
	sll t6, a2, s9
	li a7, 0x71d
	sll t2, t6, a7
	li s3, 0x585
	sll s2, t2, s3
	li a1, 0x61e
	sll t1, s2, a1
	li a2, 0x71f
	sll s0, t1, a2
	li a2, 0x264
	sll a3, s0, a2
	li a7, 0x73e
	sll s10, a3, a7
	li t6, 0x6df
	sll t2, s10, t6
	li a6, 0x3e2
	sll s9, t2, a6
	li s3, 0x163
	sll t5, s9, s3
	li a7, 0x54b
	sll a3, t5, a7
	li s0, 0x26d
	sll s5, a3, s0
	li t2, 0x431
	sll a2, s5, t2
	li s5, 0x3e
	sll t2, a2, s5
	li s3, 0x16c
	sll t1, t2, s3
	li t3, 0x1f5
	sll a7, t1, t3
	li s9, 0xd9
	sll a7, a7, s9
	li t1, 0x5ef
	sll t1, a7, t1
	li s3, 0x31f
	sll t1, t1, s3
	li a2, 0xa0
	sll s5, t1, a2
	li a2, 0xfb
	sll s10, s5, a2
	li s6, 0x25f
	sll a7, s10, s6
	li t3, 0x65a
	sll a1, a7, t3
	li s4, 0x681
	sll t3, a1, s4
	li a3, 0x59d
	sll s4, t3, a3
	li s2, 0xcd
	sll a2, s4, s2
	li a6, 0x20a
	sll t2, a2, a6
	li t6, 0x782
	sll s4, t2, t6
	li t1, 0x54f
	sll a7, s4, t1
	li a5, 0x1c7
	sll s9, a7, a5
	li s4, 0x166
	sll a7, s9, s4
	li a6, 0x61c
	sll s8, a7, a6
	li a1, 0x581
	sll a6, s8, a1
	li s6, 0x2e7
	sll s4, a6, s6
	li t3, 0xde
	sll s1, s4, t3
	li t1, 0x39b
	sll a0, s1, t1
	li s4, 0xce
	sll s6, a0, s4
	li t5, 0x298
	sll s2, s6, t5
	li t3, 0x42c
	sll a2, s2, t3
	li a1, 0x461
	sll a7, a2, a1
	li s9, 0x8a
	sll s6, a7, s9
	li a1, 0x395
	sll s2, s6, a1
	li a5, 0x4ac
	sll a5, s2, a5
	li s8, 0x37c
	sll a1, a5, s8
	li a3, 0xb5
	sll t5, a1, a3
	li t3, 0x437
	sll s6, t5, t3
	li s8, 0x4d2
	sll a6, s6, s8
	csrr s1, time
	csrr s2, cycle
	csrr s8, instret
	sub a1, s1, s11
	sub s3, s2, a4
	sub s2, s8, s7
	li s8, 0
	csrr a5, time
	csrr s0, cycle
	csrr t4, instret
	li s4, 0xe8
	sll t3, s8, s4
	li a2, 0x3c1
	sll t6, t3, a2
	li s10, 0x4cd
	sll s7, t6, s10
	li a3, 0x3ca
	sll t2, s7, a3
	li a3, 0x210
	sll t5, t2, a3
	li a4, 0x30f
	sll t1, t5, a4
	li a4, 0x3bb
	sll s10, t1, a4
	li a1, 0x3cb
	sll s11, s10, a1
	li s1, 0x30b
	sll s7, s11, s1
	li t1, 0x314
	sll a7, s7, t1
	li s11, 0xca
	sll s3, a7, s11
	li t3, 0x305
	sll a0, s3, t3
	li s2, 0x2ae
	sll s5, a0, s2
	li s6, 0x648
	sll t3, s5, s6
	li s3, 0x503
	sll t2, t3, s3
	li t6, 0x5a0
	sll s1, t2, t6
	li a2, 0x18
	sll t5, s1, a2
	li a0, 0x90
	sll t6, t5, a0
	li s9, 0x166
	sll a6, t6, s9
	li t5, 0x68b
	sll s2, a6, t5
	li a2, 0x759
	sll t5, s2, a2
	li s8, 0x3f3
	sll t1, t5, s8
	li a4, 0x374
	sll s9, t1, a4
	li t6, 0x6f8
	sll s10, s9, t6
	li s11, 0x40
	sll s3, s10, s11
	li t1, 0xb2
	sll s4, s3, t1
	li t5, 0x5dd
	sll a0, s4, t5
	li s3, 0x31e
	sll s11, a0, s3
	li s4, 0x57f
	sll t3, s11, s4
	li s6, 0x411
	sll s8, t3, s6
	li a7, 0x4cc
	sll s4, s8, a7
	li a4, 0x2a7
	sll a4, s4, a4
	li s9, 0x54
	sll a6, a4, s9
	li a7, 0x6cb
	sll s6, a6, a7
	li s5, 0x61d
	sll a3, s6, s5
	li t1, 0x3a
	sll t6, a3, t1
	li s10, 0x40b
	sll a0, t6, s10
	li s5, 0x53c
	sll t5, a0, s5
	li s6, 0x4
	sll s4, t5, s6
	li a6, 0x39e
	sll t5, s4, a6
	li t6, 0x5ff
	sll s1, t5, t6
	li a7, 0x6bf
	sll t2, s1, a7
	li s5, 0x6e0
	sll a4, t2, s5
	li a6, 0x440
	sll s7, a4, a6
	li a1, 0x169
	sll a0, s7, a1
	li a7, 0x3a1
	sll a7, a0, a7
	li s2, 0x26e
	sll t1, a7, s2
	li s7, 0x5b9
	sll s8, t1, s7
	li s3, 0x343
	sll s5, s8, s3
	li s9, 0xa1
	sll t5, s5, s9
	li s11, 0x410
	sll a4, t5, s11
	li s9, 0x5d1
	sll a0, a4, s9
	li s10, 0x4f0
	sll s6, a0, s10
	li a1, 0x74d
	sll a7, s6, a1
	li t6, 0x1a5
	sll s2, a7, t6
	li s10, 0x36d
	sll a7, s2, s10
	li s1, 0x28e
	sll a0, a7, s1
	li t3, 0x3f2
	sll s9, a0, t3
	li a1, 0x638
	sll a1, s9, a1
	li a2, 0x372
	sll a3, a1, a2
	li a4, 0x52d
	sll a2, a3, a4
	li s10, 0x324
	sll s11, a2, s10
	li t3, 0x555
	sll t2, s11, t3
	li s9, 0x507
	sll s2, t2, s9
	li a1, 0x42
	sll s9, s2, a1
	li s4, 0x492
	sll s5, s9, s4
	li a7, 0x5ad
	sll a4, s5, a7
	li t6, 0x5cb
	sll s7, a4, t6
	li t5, 0x43e
	sll a4, s7, t5
	li s11, 0x523
	sll s2, a4, s11
	li t6, 0x479
	sll s7, s2, t6
	li a4, 0xd4
	sll a4, s7, a4
	li s10, 0x161
	sll t5, a4, s10
	li t2, 0x623
	sll s9, t5, t2
	li s2, 0x340
	sll s6, s9, s2
	li t2, 0x460
	sll a3, s6, t2
	li t6, 0x64c
	sll a2, a3, t6
	li s3, 0x140
	sll s8, a2, s3
	li a1, 0x79f
	sll a6, s8, a1
	li s8, 0x77d
	sll t1, a6, s8
	li t3, 0x20c
	sll a3, t1, t3
	li s3, 0x1bb
	sll s8, a3, s3
	li s4, 0x3f8
	sll s7, s8, s4
	li t2, 0x5f4
	sll t3, s7, t2
	li s3, 0x11c
	sll t2, t3, s3
	li a4, 0x2c2
	sll s10, t2, a4
	li t1, 0x5cd
	sll s5, s10, t1
	li s4, 0x5d4
	sll s11, s5, s4
	li s1, 0x466
	sll t2, s11, s1
	li s11, 0x51e
	sll s8, t2, s11
	li t3, 0x7a0
	sll s2, s8, t3
	li t2, 0xd6
	sll s3, s2, t2
	li s6, 0x146
	sll s2, s3, s6
	li a6, 0x4c7
	sll s5, s2, a6
	li s10, 0x5a8
	sll a1, s5, s10
	li s3, 0x52f
	sll s10, a1, s3
	li s2, 0x677
	sll s9, s10, s2
	li s4, 0x3f4
	sll s6, s9, s4
	li s7, 0x2a
	sll s2, s6, s7
	li s7, 0x780
	sll s5, s2, s7
	csrr a2, time
	csrr s11, cycle
	csrr a7, instret
	sub t1, a2, a5
	sub s8, s11, s0
	sub s11, a7, t4
	li s2, 0
	csrr a5, time
	csrr t3, cycle
	csrr t5, instret
	li s6, 0x280
	sll s6, s2, s6
	li s4, 0x50
	sll s0, s6, s4
	li a7, 0x71e
	sll a2, s0, a7
	li a1, 0x54c
	sll a6, a2, a1
	li a3, 0x461
	sll a0, a6, a3
	li s3, 0xca
	sll a2, a0, s3
	li s3, 0x22a
	sll s7, a2, s3
	li a6, 0x3f4
	sll t4, s7, a6
	li a7, 0x5c5
	sll t2, t4, a7
	li s7, 0x144
	sll s1, t2, s7
	li s9, 0x34c
	sll a0, s1, s9
	li s2, 0x6e6
	sll s4, a0, s2
	li a7, 0x205
	sll a2, s4, a7
	li s7, 0x2d3
	sll a3, a2, s7
	li s4, 0x25e
	sll s4, a3, s4
	li a1, 0x29a
	sll s9, s4, a1
	li s2, 0x209
	sll a4, s9, s2
	li s10, 0x17f
	sll a6, a4, s10
	li a2, 0x434
	sll a3, a6, a2
	li a7, 0x4bc
	sll s9, a3, a7
	li s1, 0x7a7
	sll s10, s9, s1
	li s2, 0x1b9
	sll s3, s10, s2
	li s0, 0x6dc
	sll a3, s3, s0
	li a6, 0x500
	sll a2, a3, a6
	li a3, 0x4f7
	sll a7, a2, a3
	li s0, 0x454
	sll s10, a7, s0
	li s5, 0x78a
	sll s1, s10, s5
	li t4, 0xe1
	sll s2, s1, t4
	li t1, 0x4d7
	sll a1, s2, t1
	li t1, 0x143
	sll a3, a1, t1
	li s4, 0x207
	sll a1, a3, s4
	li a3, 0xfa
	sll a2, a1, a3
	li s2, 0x1a1
	sll a1, a2, s2
	li a4, 0x5d
	sll t4, a1, a4
	li s5, 0x57e
	sll s1, t4, s5
	li t6, 0x582
	sll s3, s1, t6
	li a6, 0x11c
	sll s3, s3, a6
	li a2, 0x42d
	sll s5, s3, a2
	li t4, 0x603
	sll s3, s5, t4
	li s0, 0x50d
	sll s7, s3, s0
	li a1, 0x7c7
	sll a1, s7, a1
	li s6, 0x4ac
	sll a2, a1, s6
	li a3, 0x746
	sll s3, a2, a3
	li s1, 0x69f
	sll s0, s3, s1
	li a4, 0x61b
	sll s9, s0, a4
	li s1, 0x576
	sll s2, s9, s1
	li a3, 0x510
	sll s10, s2, a3
	li a0, 0x78b
	sll t2, s10, a0
	li a3, 0x5c4
	sll a0, t2, a3
	li s7, 0x56e
	sll a1, a0, s7
	li t1, 0x3a3
	sll a1, a1, t1
	li t2, 0x5e7
	sll a4, a1, t2
	li s6, 0x524
	sll a2, a4, s6
	li a6, 0x476
	sll a7, a2, a6
	li s10, 0x757
	sll s10, a7, s10
	li s2, 0xee
	sll t4, s10, s2
	li s0, 0x454
	sll t2, t4, s0
	li a6, 0x47b
	sll a2, t2, a6
	li a1, 0x615
	sll t6, a2, a1
	li t2, 0x1fd
	sll a4, t6, t2
	li s3, 0x16e
	sll a6, a4, s3
	li t1, 0x35a
	sll a0, a6, t1
	li a6, 0x362
	sll t1, a0, a6
	li a0, 0x4cf
	sll s6, t1, a0
	li s3, 0x625
	sll t4, s6, s3
	li s6, 0x156
	sll s6, t4, s6
	li s3, 0x54
	sll a6, s6, s3
	li s0, 0x2a3
	sll s2, a6, s0
	li s1, 0x589
	sll a6, s2, s1
	li a1, 0x664
	sll a7, a6, a1
	li s10, 0x1c
	sll s1, a7, s10
	li s10, 0x6e5
	sll a2, s1, s10
	li s0, 0x293
	sll a0, a2, s0
	li s2, 0x60d
	sll a6, a0, s2
	li a4, 0x5b1
	sll t6, a6, a4
	li s10, 0x15f
	sll t2, t6, s10
	li a4, 0x131
	sll t6, t2, a4
	li a7, 0x2f5
	sll s6, t6, a7
	li t4, 0x69d
	sll s7, s6, t4
	li s0, 0x6de
	sll s9, s7, s0
	li a3, 0x1fc
	sll a0, s9, a3
	li s3, 0x6d9
	sll s3, a0, s3
	li t2, 0x6f4
	sll s4, s3, t2
	li a2, 0x54c
	sll s7, s4, a2
	li s0, 0x4ac
	sll s0, s7, s0
	li t1, 0x73a
	sll s2, s0, t1
	li t1, 0x59
	sll a1, s2, t1
	li a4, 0x736
	sll a2, a1, a4
	li t2, 0x5b8
	sll a3, a2, t2
	li t4, 0x657
	sll a7, a3, t4
	li a4, 0x5d6
	sll a0, a7, a4
	li a7, 0x76d
	sll s3, a0, a7
	li a7, 0x6a8
	sll s7, s3, a7
	li a4, 0x35c
	sll t2, s7, a4
	li t4, 0x6d1
	sll a4, t2, t4
	li t2, 0x70c
	sll s2, a4, t2
	li t6, 0x542
	sll t6, s2, t6
	li t4, 0x143
	sll s6, t6, t4
	li s1, 0x29f
	sll s4, s6, s1
	li t4, 0x4b3
	sll s0, s4, t4
	csrr s4, time
	csrr s5, cycle
	csrr s1, instret
	sub s3, s4, a5
	sub a5, s5, t3
	sub s4, s1, t5
	beq s8, a5, pass_label_33
	li a2, failed_addr
	ld a5, 0(a2)
	jr a5
pass_label_33:
	beq s11, s4, pass_label_34
	li s10, failed_addr
	ld t6, 0(s10)
	jr t6
pass_label_34:
SID_ZKT_05_SLL_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SLT)
SID_ZKT_05_SLT:
	li sp, SID_ZKT_05_SLT_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s9, 0
	csrr s10, time
	csrr s7, cycle
	csrr t2, instret
	li a6, 0x700
	slt s6, s9, a6
	li t3, 0x3db
	slt t3, s6, t3
	li s3, 0x460
	slt s6, t3, s3
	li t1, 0x67b
	slt a2, s6, t1
	li t6, 0x4e8
	slt s9, a2, t6
	li s0, 0x180
	slt a0, s9, s0
	li t5, 0x7f9
	slt s0, a0, t5
	li t3, 0x1dd
	slt a4, s0, t3
	li s4, 0x29d
	slt a4, a4, s4
	li t1, 0x535
	slt s3, a4, t1
	li t6, 0x71b
	slt a0, s3, t6
	li a2, 0x60f
	slt t5, a0, a2
	li a3, 0x515
	slt a4, t5, a3
	li s5, 0x17c
	slt t6, a4, s5
	li s5, 0x5aa
	slt s11, t6, s5
	li s8, 0x1b3
	slt a7, s11, s8
	li a0, 0x569
	slt t1, a7, a0
	li s9, 0x164
	slt a6, t1, s9
	li a3, 0x700
	slt a3, a6, a3
	li a0, 0x66f
	slt t5, a3, a0
	li a6, 0x489
	slt a4, t5, a6
	li t4, 0x3f4
	slt a3, a4, t4
	li t4, 0x551
	slt s0, a3, t4
	li s3, 0x7d9
	slt t6, s0, s3
	li a4, 0x5e9
	slt a2, t6, a4
	li t6, 0x1fd
	slt a5, a2, t6
	li s2, 0x103
	slt s11, a5, s2
	li a2, 0x1ae
	slt a3, s11, a2
	li s3, 0x62
	slt a1, a3, s3
	li t5, 0x420
	slt t1, a1, t5
	li t3, 0x2b0
	slt a5, t1, t3
	li s4, 0x67b
	slt a4, a5, s4
	li s9, 0x1fc
	slt a1, a4, s9
	li t4, 0x33f
	slt a2, a1, t4
	li a4, 0x3ab
	slt s9, a2, a4
	li a6, 0x5c1
	slt s11, s9, a6
	li a0, 0x221
	slt s4, s11, a0
	li s8, 0x6d8
	slt s4, s4, s8
	li s1, 0x5b6
	slt s0, s4, s1
	li t1, 0x178
	slt a0, s0, t1
	li a5, 0xf2
	slt t6, a0, a5
	li t4, 0x5d
	slt t5, t6, t4
	li s4, 0xb5
	slt a1, t5, s4
	li s6, 0x4d
	slt s0, a1, s6
	li s2, 0x24d
	slt s8, s0, s2
	li t6, 0x3ff
	slt t4, s8, t6
	li t5, 0x6a
	slt s0, t4, t5
	li t4, 0xf9
	slt s9, s0, t4
	li s4, 0x50d
	slt s11, s9, s4
	li a1, 0x282
	slt s9, s11, a1
	li a3, 0x67e
	slt s4, s9, a3
	li s2, 0x6df
	slt s4, s4, s2
	li s8, 0x7ea
	slt t3, s4, s8
	li a2, 0x4d3
	slt t5, t3, a2
	li s0, 0x2fa
	slt t4, t5, s0
	li a1, 0x666
	slt s4, t4, a1
	li s8, 0x77b
	slt t1, s4, s8
	li s4, 0x2c7
	slt a0, t1, s4
	li a6, 0x1ec
	slt s6, a0, a6
	li a4, 0x1b4
	slt s5, s6, a4
	li a0, 0x210
	slt a0, s5, a0
	li s11, 0x74c
	slt t1, a0, s11
	li t5, 0x188
	slt t3, t1, t5
	li s0, 0x14f
	slt s1, t3, s0
	li s2, 0x2ba
	slt s2, s1, s2
	li t3, 0x23e
	slt t1, s2, t3
	li s9, 0x6ea
	slt t1, t1, s9
	li s8, 0x6f2
	slt s8, t1, s8
	li a1, 0x549
	slt t6, s8, a1
	li s9, 0x5ea
	slt a4, t6, s9
	li t3, 0x298
	slt s0, a4, t3
	li a0, 0x2e9
	slt s9, s0, a0
	li t6, 0x759
	slt t5, s9, t6
	li a2, 0x4e
	slt t3, t5, a2
	li a1, 0xa2
	slt a0, t3, a1
	li s6, 0x1b7
	slt a1, a0, s6
	li s2, 0x6c5
	slt a6, a1, s2
	li t3, 0x166
	slt s8, a6, t3
	li t4, 0x329
	slt a1, s8, t4
	li s4, 0x52d
	slt t5, a1, s4
	li s0, 0x3ac
	slt s3, t5, s0
	li a7, 0x1b0
	slt a7, s3, a7
	li a3, 0x4fa
	slt t3, a7, a3
	li s2, 0x1c
	slt s5, t3, s2
	li s0, 0x3b7
	slt s4, s5, s0
	li t3, 0x32f
	slt s4, s4, t3
	li t5, 0x309
	slt t3, s4, t5
	li a3, 0x7a5
	slt s6, t3, a3
	li s0, 0x2cc
	slt a1, s6, s0
	li s3, 0x582
	slt a1, a1, s3
	li s8, 0x2fa
	slt a0, a1, s8
	li t3, 0x71b
	slt s1, a0, t3
	li a5, 0x3f3
	slt t6, s1, a5
	li s4, 0x6b9
	slt a4, t6, s4
	li t6, 0x4cf
	slt s6, a4, t6
	li t1, 0x4d4
	slt s9, s6, t1
	li s6, 0x14
	slt s8, s9, s6
	li s3, 0x531
	slt s5, s8, s3
	li a7, 0x207
	slt s4, s5, a7
	li s0, 0x602
	slt t3, s4, s0
	csrr a5, time
	csrr s11, cycle
	csrr a0, instret
	sub a1, a5, s10
	sub t6, s11, s7
	sub s3, a0, t2
	li s9, 0
	csrr t3, time
	csrr a7, cycle
	csrr a5, instret
	li t2, 0xa1
	slt s10, s9, t2
	li t1, 0x67f
	slt a2, s10, t1
	li s11, 0x550
	slt t6, a2, s11
	li a0, 0x6ce
	slt t2, t6, a0
	li s7, 0x7a
	slt t6, t2, s7
	li a4, 0x758
	slt t2, t6, a4
	li a1, 0x33f
	slt a4, t2, a1
	li s10, 0x344
	slt s1, a4, s10
	li s6, 0x78e
	slt s1, s1, s6
	li a1, 0x300
	slt a0, s1, a1
	li a4, 0x663
	slt t1, a0, a4
	li a1, 0x5a8
	slt s10, t1, a1
	li a6, 0x338
	slt s4, s10, a6
	li a3, 0x17d
	slt t6, s4, a3
	li s2, 0x272
	slt a3, t6, s2
	li a4, 0x51e
	slt s8, a3, a4
	li s6, 0x193
	slt a4, s8, s6
	li s0, 0x628
	slt s5, a4, s0
	li s2, 0x4ec
	slt a1, s5, s2
	li t2, 0xba
	slt t2, a1, t2
	li s3, 0x6d1
	slt a6, t2, s3
	li s11, 0x271
	slt t1, a6, s11
	li s8, 0x3f
	slt s10, t1, s8
	li t6, 0x368
	slt s4, s10, t6
	li a6, 0x52
	slt s2, s4, a6
	li s10, 0x697
	slt t5, s2, s10
	li t4, 0x3ac
	slt s0, t5, t4
	li s5, 0xe
	slt s4, s0, s5
	li s1, 0x33d
	slt s2, s4, s1
	li s1, 0x1a2
	slt t6, s2, s1
	li t2, 0x45f
	slt a0, t6, t2
	li a2, 0x4ec
	slt s10, a0, a2
	li s4, 0x6ad
	slt t5, s10, s4
	li t2, 0x3d1
	slt s10, t5, t2
	li t1, 0x64f
	slt s3, s10, t1
	li s1, 0x20f
	slt s2, s3, s1
	li a1, 0x6a4
	slt t1, s2, a1
	li s2, 0x33
	slt t6, t1, s2
	li a3, 0x4cc
	slt s1, t6, a3
	li t2, 0x592
	slt s5, s1, t2
	li a1, 0x5f9
	slt s4, s5, a1
	li a6, 0x1af
	slt t5, s4, a6
	li t1, 0x758
	slt s3, t5, t1
	li s8, 0x1cc
	slt t2, s3, s8
	li t6, 0x57c
	slt a2, t2, t6
	li t1, 0x53c
	slt s11, a2, t1
	li s10, 0x11f
	slt s0, s11, s10
	li a1, 0x7a1
	slt s0, s0, a1
	li s9, 0x61f
	slt t4, s0, s9
	li s2, 0x4cc
	slt s5, t4, s2
	li a3, 0x5a0
	slt s0, s5, a3
	li a1, 0x2a9
	slt s6, s0, a1
	li t1, 0x649
	slt s4, s6, t1
	li a6, 0x1ed
	slt s11, s4, a6
	li a3, 0x50b
	slt s5, s11, a3
	li s1, 0x21e
	slt s7, s5, s1
	li s0, 0x2a9
	slt s8, s7, s0
	li s6, 0x4c
	slt t5, s8, s6
	li s0, 0x317
	slt t6, t5, s0
	li s3, 0x254
	slt s7, t6, s3
	li a1, 0x26
	slt s4, s7, a1
	li s10, 0x510
	slt s3, s4, s10
	li a3, 0x3c1
	slt s3, s3, a3
	li a2, 0x37
	slt s4, s3, a2
	li s0, 0x7b6
	slt t2, s4, s0
	li s10, 0x369
	slt s0, t2, s10
	li a4, 0x23
	slt s11, s0, a4
	li a2, 0xe2
	slt t6, s11, a2
	li s3, 0x6af
	slt s2, t6, s3
	li s1, 0x165
	slt a0, s2, s1
	li t6, 0x77f
	slt s9, a0, t6
	li t6, 0x54f
	slt s3, s9, t6
	li s5, 0x1ff
	slt s4, s3, s5
	li s3, 0x29
	slt s4, s4, s3
	li t4, 0x33f
	slt a2, s4, t4
	li s4, 0x75d
	slt t6, a2, s4
	li s7, 0x6b3
	slt s3, t6, s7
	li s4, 0x7fd
	slt t6, s3, s4
	li s10, 0x4de
	slt a1, t6, s10
	li a6, 0x392
	slt t1, a1, a6
	li t6, 0x13d
	slt a4, t1, t6
	li s11, 0x63b
	slt s0, a4, s11
	li a3, 0xa0
	slt s11, s0, a3
	li s7, 0x1ba
	slt s6, s11, s7
	li s7, 0x18a
	slt s7, s6, s7
	li s6, 0x617
	slt s7, s7, s6
	li a2, 0x6a5
	slt s2, s7, a2
	li s6, 0x358
	slt s9, s2, s6
	li t4, 0x483
	slt s8, s9, t4
	li t2, 0x772
	slt a1, s8, t2
	li s4, 0x773
	slt s7, a1, s4
	li s8, 0x49e
	slt t1, s7, s8
	li s3, 0x592
	slt t5, t1, s3
	li a1, 0x2e0
	slt t4, t5, a1
	li s4, 0x6d0
	slt a0, t4, s4
	li t6, 0x720
	slt t1, a0, t6
	li a2, 0x2f3
	slt s3, t1, a2
	li s4, 0x83
	slt s4, s3, s4
	li t2, 0x5c8
	slt t1, s4, t2
	li s9, 0x648
	slt s4, t1, s9
	csrr s9, time
	csrr t4, cycle
	csrr a1, instret
	sub s11, s9, t3
	sub t4, t4, a7
	sub t5, a1, a5
	li s3, 0
	csrr t1, time
	csrr s4, cycle
	csrr s1, instret
	li s2, 0x1c6
	slt t6, s3, s2
	li s6, 0x195
	slt a4, t6, s6
	li t3, 0xc3
	slt a1, a4, t3
	li s10, 0x108
	slt s8, a1, s10
	li s9, 0x4d5
	slt a1, s8, s9
	li t2, 0x773
	slt a4, a1, t2
	li s6, 0x6da
	slt s7, a4, s6
	li a2, 0x239
	slt s6, s7, a2
	li a6, 0x7fd
	slt a4, s6, a6
	li s6, 0x7dd
	slt t3, a4, s6
	li s7, 0x2c9
	slt t6, t3, s7
	li s6, 0x5a9
	slt s2, t6, s6
	li s10, 0x769
	slt s7, s2, s10
	li t6, 0x600
	slt a2, s7, t6
	li s3, 0x2a1
	slt s10, a2, s3
	li s8, 0x368
	slt a6, s10, s8
	li t2, 0x21f
	slt a1, a6, t2
	li a6, 0x34f
	slt s6, a1, a6
	li a1, 0x2da
	slt t6, s6, a1
	li a4, 0x54b
	slt s9, t6, a4
	li a4, 0x1d5
	slt s9, s9, a4
	li a3, 0x9c
	slt a3, s9, a3
	li s6, 0x3a5
	slt a5, a3, s6
	li s8, 0x67c
	slt a3, a5, s8
	li a5, 0x1c3
	slt t3, a3, a5
	li s8, 0x50d
	slt t3, t3, s8
	li a0, 0x239
	slt s9, t3, a0
	li a3, 0x513
	slt a1, s9, a3
	li a6, 0x18
	slt s11, a1, a6
	li a3, 0x6f7
	slt s9, s11, a3
	li s3, 0x415
	slt t2, s9, s3
	li s7, 0x4ce
	slt t3, t2, s7
	li s8, 0x6e6
	slt t2, t3, s8
	li s3, 0x28f
	slt s7, t2, s3
	li s8, 0x77c
	slt s10, s7, s8
	li t6, 0x186
	slt t6, s10, t6
	li s6, 0x790
	slt s10, t6, s6
	li a5, 0x7b7
	slt a0, s10, a5
	li s6, 0x765
	slt s0, a0, s6
	li a0, 0x2e2
	slt a0, s0, a0
	li s7, 0x49a
	slt a6, a0, s7
	li s10, 0x56c
	slt t6, a6, s10
	li t2, 0x272
	slt s5, t6, t2
	li s8, 0x301
	slt s11, s5, s8
	li a1, 0x59e
	slt s3, s11, a1
	li s10, 0x196
	slt s11, s3, s10
	li s5, 0x54d
	slt s9, s11, s5
	li s3, 0x7d2
	slt a4, s9, s3
	li a3, 0x2d1
	slt s3, a4, a3
	li t3, 0x297
	slt a7, s3, t3
	li t3, 0x72a
	slt s5, a7, t3
	li a0, 0x46f
	slt a5, s5, a0
	li t3, 0x466
	slt s6, a5, t3
	li a6, 0x756
	slt s2, s6, a6
	li a7, 0x227
	slt s11, s2, a7
	li a1, 0x79a
	slt s5, s11, a1
	li s6, 0x344
	slt s6, s5, s6
	li s2, 0xba
	slt a6, s6, s2
	li s2, 0x307
	slt s11, a6, s2
	li a7, 0x189
	slt a7, s11, a7
	li s2, 0x5e8
	slt a4, a7, s2
	li t6, 0x39a
	slt a5, a4, t6
	li t3, 0x5d5
	slt s7, a5, t3
	li a7, 0x4a1
	slt t3, s7, a7
	li a6, 0x689
	slt a0, t3, a6
	li s2, 0x196
	slt s6, a0, s2
	li t2, 0x1be
	slt s11, s6, t2
	li s9, 0x29d
	slt a4, s11, s9
	li a2, 0x3d8
	slt s3, a4, a2
	li s5, 0x386
	slt t6, s3, s5
	li s5, 0xd
	slt s6, t6, s5
	li a3, 0x6a3
	slt t3, s6, a3
	li s9, 0x65
	slt s7, t3, s9
	li t2, 0x268
	slt a2, s7, t2
	li t2, 0x105
	slt t3, a2, t2
	li a5, 0x418
	slt s5, t3, a5
	li a1, 0x320
	slt s5, s5, a1
	li a3, 0x94
	slt s6, s5, a3
	li s11, 0x25c
	slt s0, s6, s11
	li a6, 0x471
	slt s3, s0, a6
	li a5, 0x4aa
	slt a7, s3, a5
	li s8, 0x109
	slt a5, a7, s8
	li s5, 0x297
	slt a3, a5, s5
	li s11, 0x296
	slt a4, a3, s11
	li s9, 0x706
	slt a4, a4, s9
	li a2, 0x319
	slt t3, a4, a2
	li a1, 0x3d1
	slt a3, t3, a1
	li s0, 0x748
	slt a2, a3, s0
	li t2, 0x50d
	slt a4, a2, t2
	li a7, 0x55e
	slt a3, a4, a7
	li s3, 0x486
	slt t3, a3, s3
	li s10, 0x12e
	slt a0, t3, s10
	li s6, 0x68b
	slt a5, a0, s6
	li t6, 0x211
	slt a1, a5, t6
	li a4, 0x1c5
	slt a7, a1, a4
	li s8, 0x1fb
	slt a0, a7, s8
	li t6, 0x307
	slt s11, a0, t6
	li s7, 0x5b3
	slt s3, s11, s7
	li s11, 0x492
	slt a5, s3, s11
	li t2, 0x2f5
	slt s3, a5, t2
	csrr a1, time
	csrr s7, cycle
	csrr s0, instret
	sub a4, a1, t1
	sub a7, s7, s4
	sub s2, s0, s1
	beq t4, a7, pass_label_35
	li s11, failed_addr
	ld a1, 0(s11)
	jr a1
pass_label_35:
	beq t5, s2, pass_label_36
	li a6, failed_addr
	ld s2, 0(a6)
	jr s2
pass_label_36:
SID_ZKT_05_SLT_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SLTU)
SID_ZKT_05_SLTU:
	li sp, SID_ZKT_05_SLTU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s4, 0
	csrr s1, time
	csrr t6, cycle
	csrr s7, instret
	li a5, 0x7e4
	sltu a3, s4, a5
	li s6, 0x4d1
	sltu a2, a3, s6
	li s10, 0x64f
	sltu a7, a2, s10
	li s9, 0x1de
	sltu t3, a7, s9
	li a0, 0x1de
	sltu a0, t3, a0
	li a3, 0x7eb
	sltu s9, a0, a3
	li t5, 0x69
	sltu s11, s9, t5
	li s9, 0x47c
	sltu t5, s11, s9
	li s9, 0x54b
	sltu s3, t5, s9
	li t2, 0x462
	sltu a1, s3, t2
	li s4, 0x25d
	sltu s0, a1, s4
	li s3, 0x174
	sltu t4, s0, s3
	li a3, 0x688
	sltu a5, t4, a3
	li s4, 0x3e3
	sltu t4, a5, s4
	li s6, 0x25d
	sltu a4, t4, s6
	li s2, 0x468
	sltu s11, a4, s2
	li a4, 0x8f
	sltu s5, s11, a4
	li s2, 0x18b
	sltu t1, s5, s2
	li t4, 0xff
	sltu t1, t1, t4
	li a6, 0x17d
	sltu t1, t1, a6
	li t3, 0x71e
	sltu s6, t1, t3
	li t5, 0x48d
	sltu a2, s6, t5
	li s6, 0xe
	sltu s10, a2, s6
	li a2, 0x293
	sltu s3, s10, a2
	li a3, 0x111
	sltu s0, s3, a3
	li s6, 0x40d
	sltu s8, s0, s6
	li t3, 0x730
	sltu s11, s8, t3
	li t5, 0x5f6
	sltu a4, s11, t5
	li s11, 0x132
	sltu a1, a4, s11
	li s10, 0x5f8
	sltu a0, a1, s10
	li t3, 0x6b
	sltu a4, a0, t3
	li s3, 0x194
	sltu s6, a4, s3
	li s9, 0x15b
	sltu s0, s6, s9
	li a7, 0x6be
	sltu t1, s0, a7
	li t3, 0x1ce
	sltu s9, t1, t3
	li a1, 0x69a
	sltu a6, s9, a1
	li s6, 0x137
	sltu s8, a6, s6
	li t4, 0x6fd
	sltu a4, s8, t4
	li s8, 0x546
	sltu s10, a4, s8
	li s5, 0x1cd
	sltu t2, s10, s5
	li a4, 0x448
	sltu s6, t2, a4
	li s8, 0x52e
	sltu t3, s6, s8
	li s5, 0x746
	sltu s9, t3, s5
	li s8, 0x1f3
	sltu s6, s9, s8
	li t3, 0x202
	sltu s8, s6, t3
	li a2, 0x5c1
	sltu t5, s8, a2
	li a0, 0x5f2
	sltu t1, t5, a0
	li t5, 0x496
	sltu s10, t1, t5
	li s4, 0x24e
	sltu t4, s10, s4
	li a7, 0x749
	sltu s6, t4, a7
	li t4, 0x425
	sltu a7, s6, t4
	li a3, 0x4f0
	sltu a0, a7, a3
	li s2, 0x785
	sltu a1, a0, s2
	li s2, 0x366
	sltu s11, a1, s2
	li t2, 0x1e1
	sltu a4, s11, t2
	li t4, 0x6c0
	sltu s9, a4, t4
	li s5, 0x5c5
	sltu s8, s9, s5
	li a4, 0x48a
	sltu t3, s8, a4
	li a7, 0x134
	sltu s5, t3, a7
	li s10, 0x30a
	sltu t3, s5, s10
	li a6, 0x4b4
	sltu s2, t3, a6
	li a3, 0x554
	sltu a2, s2, a3
	li s3, 0x56d
	sltu s6, a2, s3
	li t5, 0x5c5
	sltu s0, s6, t5
	li s3, 0x4b1
	sltu s3, s0, s3
	li t4, 0x618
	sltu t1, s3, t4
	li a7, 0x104
	sltu s11, t1, a7
	li s0, 0x765
	sltu a5, s11, s0
	li s0, 0x54d
	sltu s8, a5, s0
	li t5, 0x16a
	sltu a0, s8, t5
	li s3, 0x31a
	sltu s4, a0, s3
	li a4, 0x315
	sltu t3, s4, a4
	li s9, 0x409
	sltu t2, t3, s9
	li s5, 0x141
	sltu s11, t2, s5
	li s3, 0x7c0
	sltu t2, s11, s3
	li a0, 0x75f
	sltu t1, t2, a0
	li t3, 0x54a
	sltu s11, t1, t3
	li s2, 0xef
	sltu s3, s11, s2
	li s2, 0x490
	sltu a0, s3, s2
	li s11, 0x43d
	sltu a7, a0, s11
	li a5, 0x108
	sltu t5, a7, a5
	li s2, 0x458
	sltu t2, t5, s2
	li s3, 0x18d
	sltu a1, t2, s3
	li a4, 0x551
	sltu s2, a1, a4
	li a7, 0x715
	sltu s11, s2, a7
	li s0, 0x157
	sltu s11, s11, s0
	li a0, 0x3e2
	sltu s6, s11, a0
	li s8, 0x1dc
	sltu s4, s6, s8
	li a3, 0x3c4
	sltu t2, s4, a3
	li t1, 0x8a
	sltu s11, t2, t1
	li s10, 0x7b8
	sltu s9, s11, s10
	li s2, 0x299
	sltu a6, s9, s2
	li t2, 0x731
	sltu s0, a6, t2
	li s2, 0x7c
	sltu s0, s0, s2
	li a1, 0x3fb
	sltu a5, s0, a1
	li a4, 0x103
	sltu s0, a5, a4
	li a6, 0x394
	sltu a3, s0, a6
	li a7, 0x129
	sltu t1, a3, a7
	li s3, 0x40d
	sltu s2, t1, s3
	li a5, 0x6d9
	sltu a5, s2, a5
	csrr a0, time
	csrr a1, cycle
	csrr t2, instret
	sub a4, a0, s1
	sub s10, a1, t6
	sub s11, t2, s7
	li s8, 0
	csrr a7, time
	csrr t3, cycle
	csrr s3, instret
	li s7, 0x6c8
	sltu s8, s8, s7
	li s4, 0x62a
	sltu t2, s8, s4
	li s6, 0x44b
	sltu t1, t2, s6
	li s0, 0x330
	sltu s7, t1, s0
	li s8, 0x6b1
	sltu a5, s7, s8
	li t1, 0x325
	sltu s2, a5, t1
	li s1, 0xe7
	sltu t1, s2, s1
	li t2, 0x778
	sltu a3, t1, t2
	li t1, 0x660
	sltu a3, a3, t1
	li t6, 0x7f5
	sltu a3, a3, t6
	li a1, 0x7c6
	sltu t6, a3, a1
	li a1, 0x715
	sltu a5, t6, a1
	li s4, 0x42
	sltu a6, a5, s4
	li s7, 0x153
	sltu s6, a6, s7
	li a2, 0x710
	sltu s7, s6, a2
	li t4, 0x192
	sltu a5, s7, t4
	li a2, 0x4e7
	sltu t1, a5, a2
	li t6, 0x487
	sltu s2, t1, t6
	li a3, 0x1ff
	sltu a4, s2, a3
	li s10, 0x226
	sltu a4, a4, s10
	li t6, 0x501
	sltu a0, a4, t6
	li s9, 0x30e
	sltu s10, a0, s9
	li a4, 0x23e
	sltu a0, s10, a4
	li s11, 0x5a
	sltu s8, a0, s11
	li a1, 0x4d
	sltu s6, s8, a1
	li t1, 0x3dc
	sltu t5, s6, t1
	li t4, 0x393
	sltu t6, t5, t4
	li a4, 0x7bf
	sltu a0, t6, a4
	li t1, 0x524
	sltu a2, a0, t1
	li a1, 0xa8
	sltu s11, a2, a1
	li a2, 0x637
	sltu s5, s11, a2
	li a0, 0x613
	sltu s5, s5, a0
	li s8, 0x377
	sltu t6, s5, s8
	li a2, 0x718
	sltu t5, t6, a2
	li t2, 0x112
	sltu t4, t5, t2
	li t6, 0x6ee
	sltu t2, t4, t6
	li a6, 0x37e
	sltu t1, t2, a6
	li s5, 0x1b5
	sltu s6, t1, s5
	li s7, 0x6c5
	sltu a2, s6, s7
	li a1, 0x4f9
	sltu a2, a2, a1
	li t2, 0x28
	sltu t4, a2, t2
	li a6, 0x5
	sltu s2, t4, a6
	li s10, 0x228
	sltu t6, s2, s10
	li a6, 0x5ff
	sltu a4, t6, a6
	li s6, 0x31
	sltu a3, a4, s6
	li s2, 0x1e8
	sltu s5, a3, s2
	li s1, 0x139
	sltu a0, s5, s1
	li a4, 0x5c0
	sltu s9, a0, a4
	li a5, 0x6de
	sltu a4, s9, a5
	li a0, 0x1a5
	sltu a0, a4, a0
	li s7, 0x566
	sltu s0, a0, s7
	li a0, 0x3c9
	sltu s5, s0, a0
	li t6, 0x498
	sltu s9, s5, t6
	li s2, 0x224
	sltu a1, s9, s2
	li t6, 0x52a
	sltu s6, a1, t6
	li t4, 0x149
	sltu s11, s6, t4
	li s1, 0x406
	sltu t5, s11, s1
	li s4, 0x5f2
	sltu t1, t5, s4
	li s8, 0x18b
	sltu t1, t1, s8
	li t6, 0x238
	sltu s7, t1, t6
	li s8, 0x2fd
	sltu s9, s7, s8
	li s2, 0x320
	sltu s7, s9, s2
	li a1, 0x4f9
	sltu a6, s7, a1
	li a5, 0x7ee
	sltu t4, a6, a5
	li s6, 0x24
	sltu a5, t4, s6
	li s7, 0x676
	sltu s10, a5, s7
	li s6, 0x63f
	sltu t6, s10, s6
	li s4, 0x304
	sltu a6, t6, s4
	li t6, 0x624
	sltu t1, a6, t6
	li a0, 0x96
	sltu s4, t1, a0
	li s8, 0x703
	sltu t2, s4, s8
	li s2, 0x45c
	sltu s10, t2, s2
	li a2, 0x5e8
	sltu s4, s10, a2
	li s8, 0x37b
	sltu s10, s4, s8
	li t5, 0x260
	sltu s11, s10, t5
	li t5, 0x5
	sltu s5, s11, t5
	li s4, 0x267
	sltu s10, s5, s4
	li t2, 0xf6
	sltu s7, s10, t2
	li t6, 0x7c7
	sltu s1, s7, t6
	li s9, 0x194
	sltu a2, s1, s9
	li t5, 0x3cc
	sltu s9, a2, t5
	li s4, 0x100
	sltu s5, s9, s4
	li s11, 0x2e2
	sltu a4, s5, s11
	li s4, 0x535
	sltu t5, a4, s4
	li s8, 0x1ca
	sltu a3, t5, s8
	li a5, 0x545
	sltu a0, a3, a5
	li a2, 0x725
	sltu s10, a0, a2
	li t6, 0x4f1
	sltu t5, s10, t6
	li a4, 0x6f0
	sltu t5, t5, a4
	li s5, 0x153
	sltu s4, t5, s5
	li a5, 0x4e5
	sltu a0, s4, a5
	li a3, 0x13
	sltu t4, a0, a3
	li s4, 0x7ba
	sltu s9, t4, s4
	li t5, 0x525
	sltu s11, s9, t5
	li a5, 0x317
	sltu s6, s11, a5
	li s2, 0x305
	sltu s6, s6, s2
	li a6, 0x4a2
	sltu t2, s6, a6
	li a6, 0x60
	sltu s6, t2, a6
	li t5, 0x147
	sltu a3, s6, t5
	li s8, 0x517
	sltu t4, a3, s8
	csrr a2, time
	csrr t1, cycle
	csrr s2, instret
	sub t5, a2, a7
	sub s0, t1, t3
	sub a0, s2, s3
	li s6, 0
	csrr t5, time
	csrr a4, cycle
	csrr a2, instret
	li s1, 0x6ff
	sltu a7, s6, s1
	li s7, 0x455
	sltu s11, a7, s7
	li t4, 0x73f
	sltu s8, s11, t4
	li s5, 0x13d
	sltu s9, s8, s5
	li a3, 0x7e4
	sltu a3, s9, a3
	li a1, 0x511
	sltu t4, a3, a1
	li a6, 0x20a
	sltu s5, t4, a6
	li s6, 0x3da
	sltu t1, s5, s6
	li s5, 0x4d9
	sltu s1, t1, s5
	li s5, 0x7a5
	sltu t1, s1, s5
	li a7, 0x7c5
	sltu t4, t1, a7
	li t6, 0x7f8
	sltu s8, t4, t6
	li a3, 0x5c9
	sltu a5, s8, a3
	li a7, 0x329
	sltu t1, a5, a7
	li t6, 0x119
	sltu s4, t1, t6
	li s1, 0xcd
	sltu a3, s4, s1
	li a7, 0x2e4
	sltu s5, a3, a7
	li s10, 0x7e8
	sltu s8, s5, s10
	li s9, 0x600
	sltu s7, s8, s9
	li s3, 0x396
	sltu s2, s7, s3
	li t6, 0x4e7
	sltu s5, s2, t6
	li s10, 0x1f9
	sltu s1, s5, s10
	li t1, 0x242
	sltu t6, s1, t1
	li s4, 0x4da
	sltu a1, t6, s4
	li s3, 0x17f
	sltu a3, a1, s3
	li s11, 0x15a
	sltu t6, a3, s11
	li t4, 0x39a
	sltu a7, t6, t4
	li s11, 0x77e
	sltu a3, a7, s11
	li t4, 0x52d
	sltu s1, a3, t4
	li s7, 0x392
	sltu s10, s1, s7
	li a6, 0x191
	sltu s9, s10, a6
	li a3, 0x7cd
	sltu t6, s9, a3
	li s1, 0x32b
	sltu s5, t6, s1
	li t4, 0x521
	sltu t3, s5, t4
	li a7, 0x92
	sltu s3, t3, a7
	li t2, 0x18c
	sltu a6, s3, t2
	li s4, 0x5a1
	sltu s9, a6, s4
	li s4, 0x712
	sltu s5, s9, s4
	li a3, 0x679
	sltu s11, s5, a3
	li s1, 0x372
	sltu a7, s11, s1
	li s4, 0x17f
	sltu t4, a7, s4
	li t6, 0x384
	sltu a3, t4, t6
	li s7, 0x6c
	sltu s10, a3, s7
	li t3, 0x9c
	sltu s9, s10, t3
	li a7, 0x66
	sltu a5, s9, a7
	li s6, 0x54d
	sltu s9, a5, s6
	li a1, 0x6f9
	sltu t6, s9, a1
	li s7, 0x13e
	sltu a3, t6, s7
	li s11, 0x72d
	sltu t1, a3, s11
	li s2, 0x6b6
	sltu t4, t1, s2
	li a3, 0x127
	sltu a3, t4, a3
	li t1, 0x379
	sltu s6, a3, t1
	li t6, 0x7e5
	sltu a5, s6, t6
	li s9, 0x187
	sltu s6, a5, s9
	li a7, 0x4d7
	sltu s3, s6, a7
	li a1, 0x323
	sltu s7, s3, a1
	li a5, 0x43a
	sltu a5, s7, a5
	li t1, 0xce
	sltu a5, a5, t1
	li s7, 0x293
	sltu t6, a5, s7
	li t2, 0x380
	sltu a5, t6, t2
	li t2, 0x756
	sltu s2, a5, t2
	li a6, 0x645
	sltu t6, s2, a6
	li t4, 0x54f
	sltu s9, t6, t4
	li s5, 0x697
	sltu s7, s9, s5
	li a3, 0x649
	sltu t1, s7, a3
	li t6, 0x7c8
	sltu s3, t1, t6
	li a6, 0x67b
	sltu a5, s3, a6
	li s10, 0x611
	sltu s3, a5, s10
	li t6, 0x72f
	sltu a7, s3, t6
	li s6, 0x4a3
	sltu s10, a7, s6
	li a6, 0x316
	sltu t4, s10, a6
	li s8, 0x248
	sltu s3, t4, s8
	li a6, 0x583
	sltu s4, s3, a6
	li t1, 0x187
	sltu s2, s4, t1
	li t6, 0x35f
	sltu t3, s2, t6
	li s7, 0x5c
	sltu s3, t3, s7
	li t1, 0x46
	sltu a5, s3, t1
	li t6, 0x610
	sltu s3, a5, t6
	li a1, 0x2a0
	sltu a6, s3, a1
	li t3, 0x205
	sltu a3, a6, t3
	li a6, 0x308
	sltu a1, a3, a6
	li s2, 0x3fb
	sltu s9, a1, s2
	li s7, 0x25c
	sltu t2, s9, s7
	li t4, 0xb4
	sltu s11, t2, t4
	li s6, 0x29c
	sltu s8, s11, s6
	li s10, 0x695
	sltu t6, s8, s10
	li s6, 0x637
	sltu a1, t6, s6
	li s6, 0x653
	sltu t1, a1, s6
	li s11, 0x48a
	sltu t2, t1, s11
	li s2, 0x124
	sltu s1, t2, s2
	li a1, 0x6f
	sltu s3, s1, a1
	li s10, 0xae
	sltu t2, s3, s10
	li a1, 0x78
	sltu s11, t2, a1
	li s1, 0x179
	sltu s2, s11, s1
	li s6, 0x693
	sltu s4, s2, s6
	li a7, 0x3f1
	sltu s2, s4, a7
	li s6, 0x2b7
	sltu s3, s2, s6
	li a6, 0x365
	sltu s10, s3, a6
	li a7, 0x5e6
	sltu s1, s10, a7
	li s5, 0x57
	sltu s11, s1, s5
	csrr s9, time
	csrr t3, cycle
	csrr s6, instret
	sub t2, s9, t5
	sub t1, t3, a4
	sub a2, s6, a2
	beq s0, t1, pass_label_37
	li a3, failed_addr
	ld a3, 0(a3)
	jr a3
pass_label_37:
	beq a0, a2, pass_label_38
	li s6, failed_addr
	ld s1, 0(s6)
	jr s1
pass_label_38:
SID_ZKT_05_SLTU_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_XOR)
SID_ZKT_05_XOR:
	li sp, SID_ZKT_05_XOR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a5, 0
	csrr t2, time
	csrr s10, cycle
	csrr t3, instret
	li s0, 0x258
	xor s4, a5, s0
	li a3, 0x5e6
	xor s5, s4, a3
	li s11, 0x439
	xor s6, s5, s11
	li t1, 0x5ea
	xor s11, s6, t1
	li t6, 0x33e
	xor a0, s11, t6
	li a3, 0x539
	xor s5, a0, a3
	li a0, 0x79a
	xor a3, s5, a0
	li s5, 0x57a
	xor a1, a3, s5
	li a5, 0x59
	xor a6, a1, a5
	li s6, 0x118
	xor a5, a6, s6
	li s6, 0x62
	xor a0, a5, s6
	li a7, 0x7f1
	xor a0, a0, a7
	li s4, 0x6f8
	xor s11, a0, s4
	li a3, 0x6b3
	xor s2, s11, a3
	li s7, 0x621
	xor t1, s2, s7
	li a6, 0x1b2
	xor t5, t1, a6
	li s6, 0x6da
	xor s4, t5, s6
	li a6, 0x750
	xor s6, s4, a6
	li a6, 0x5bc
	xor t1, s6, a6
	li s6, 0x1d0
	xor a7, t1, s6
	li t5, 0x4c2
	xor s2, a7, t5
	li s11, 0x720
	xor s9, s2, s11
	li s3, 0x31a
	xor s11, s9, s3
	li s3, 0x5f2
	xor a2, s11, s3
	li a1, 0x4f6
	xor t4, a2, a1
	li a4, 0x295
	xor s2, t4, a4
	li t1, 0x2c9
	xor a5, s2, t1
	li s7, 0x7cb
	xor a4, a5, s7
	li a5, 0x39b
	xor s7, a4, a5
	li a2, 0x4d8
	xor t1, s7, a2
	li s8, 0x2f3
	xor s3, t1, s8
	li t4, 0x4f
	xor s9, s3, t4
	li t1, 0x67b
	xor s8, s9, t1
	li s6, 0x56
	xor s6, s8, s6
	li a3, 0xfe
	xor a6, s6, a3
	li s8, 0xae
	xor s3, a6, s8
	li t5, 0x6f5
	xor t4, s3, t5
	li a4, 0x5f8
	xor a7, t4, a4
	li s5, 0x67f
	xor s11, a7, s5
	li a1, 0x4c1
	xor s0, s11, a1
	li s4, 0x8f
	xor s4, s0, s4
	li s3, 0x138
	xor a7, s4, s3
	li s2, 0x72
	xor a7, a7, s2
	li s9, 0x7b0
	xor s3, a7, s9
	li s2, 0x39
	xor t4, s3, s2
	li s6, 0x653
	xor s5, t4, s6
	li a0, 0xcc
	xor s0, s5, a0
	li s11, 0x18
	xor s9, s0, s11
	li s3, 0x7b2
	xor s9, s9, s3
	li s5, 0x689
	xor a7, s9, s5
	li s3, 0x347
	xor s7, a7, s3
	li s6, 0x62d
	xor s1, s7, s6
	li s5, 0x726
	xor s1, s1, s5
	li a0, 0x28c
	xor a5, s1, a0
	li a2, 0x4b4
	xor s11, a5, a2
	li a2, 0x55a
	xor t1, s11, a2
	li s11, 0x1f5
	xor s7, t1, s11
	li s3, 0x466
	xor s0, s7, s3
	li a3, 0x436
	xor s11, s0, a3
	li s3, 0x752
	xor a0, s11, s3
	li a2, 0x1e3
	xor t4, a0, a2
	li a2, 0x197
	xor a5, t4, a2
	li a2, 0x7f4
	xor s0, a5, a2
	li a1, 0x3b7
	xor t4, s0, a1
	li a5, 0x3a0
	xor s8, t4, a5
	li s4, 0x4f9
	xor t1, s8, s4
	li s4, 0x386
	xor t5, t1, s4
	li s3, 0x334
	xor s5, t5, s3
	li a6, 0x1e
	xor s7, s5, a6
	li a2, 0x72
	xor s5, s7, a2
	li a0, 0x62e
	xor s5, s5, a0
	li s1, 0x72b
	xor a5, s5, s1
	li t5, 0x649
	xor a5, a5, t5
	li a3, 0x269
	xor a2, a5, a3
	li s11, 0x1a6
	xor s9, a2, s11
	li a7, 0x252
	xor t1, s9, a7
	li s5, 0x587
	xor a7, t1, s5
	li s1, 0x1f8
	xor s5, a7, s1
	li s1, 0x6e8
	xor s3, s5, s1
	li s8, 0x231
	xor s0, s3, s8
	li s7, 0x28f
	xor a0, s0, s7
	li a6, 0x6f1
	xor t6, a0, a6
	li a1, 0x20a
	xor t6, t6, a1
	li s2, 0x4b0
	xor t6, t6, s2
	li t1, 0x6d0
	xor s7, t6, t1
	li t5, 0x483
	xor s4, s7, t5
	li t1, 0x550
	xor s4, s4, t1
	li a0, 0x671
	xor t5, s4, a0
	li s1, 0x7e1
	xor t1, t5, s1
	li a7, 0x614
	xor t4, t1, a7
	li s1, 0x5aa
	xor s5, t4, s1
	li s0, 0x2ca
	xor s5, s5, s0
	li s7, 0x98
	xor a6, s5, s7
	li s11, 0x21d
	xor s9, a6, s11
	li a6, 0x451
	xor t6, s9, a6
	li a1, 0x19d
	xor s3, t6, a1
	li a2, 0x686
	xor a0, s3, a2
	li s7, 0x353
	xor a0, a0, s7
	li s9, 0x148
	xor s1, a0, s9
	li s9, 0x4a9
	xor a4, s1, s9
	csrr s7, time
	csrr s0, cycle
	csrr a6, instret
	sub a5, s7, t2
	sub t6, s0, s10
	sub t6, a6, t3
	li a7, 0
	csrr a1, time
	csrr a4, cycle
	csrr s6, instret
	li s7, 0x373
	xor a0, a7, s7
	li s0, 0x12e
	xor s2, a0, s0
	li s4, 0x7e8
	xor t4, s2, s4
	li s8, 0x487
	xor t6, t4, s8
	li t1, 0x1ca
	xor t3, t6, t1
	li t2, 0x320
	xor s9, t3, t2
	li s3, 0x19
	xor a6, s9, s3
	li t6, 0x29b
	xor s3, a6, t6
	li s0, 0x30b
	xor s4, s3, s0
	li t3, 0x7db
	xor s0, s4, t3
	li s1, 0x8e
	xor s9, s0, s1
	li s2, 0x584
	xor s4, s9, s2
	li t2, 0x37e
	xor s10, s4, t2
	li a0, 0x724
	xor s2, s10, a0
	li t6, 0x532
	xor s0, s2, t6
	li t2, 0x4a6
	xor s5, s0, t2
	li a3, 0xf5
	xor t4, s5, a3
	li s1, 0x41b
	xor s5, t4, s1
	li a2, 0x3fc
	xor s11, s5, a2
	li t1, 0x1e7
	xor s5, s11, t1
	li t2, 0x3d9
	xor s11, s5, t2
	li a3, 0x89
	xor s2, s11, a3
	li s11, 0x739
	xor t3, s2, s11
	li t4, 0x60b
	xor t1, t3, t4
	li t6, 0x167
	xor s5, t1, t6
	li s9, 0x27f
	xor t5, s5, s9
	li t3, 0x48b
	xor s3, t5, t3
	li t5, 0x554
	xor s4, s3, t5
	li t4, 0x6ec
	xor s10, s4, t4
	li s3, 0x5a4
	xor s1, s10, s3
	li s8, 0x21d
	xor a7, s1, s8
	li s5, 0x491
	xor s8, a7, s5
	li t4, 0x284
	xor s7, s8, t4
	li a3, 0x2c4
	xor s9, s7, a3
	li a2, 0x748
	xor t4, s9, a2
	li s11, 0x5c0
	xor t4, t4, s11
	li t2, 0x57a
	xor s9, t4, t2
	li s1, 0x722
	xor a0, s9, s1
	li t1, 0x1d3
	xor a3, a0, t1
	li t1, 0x477
	xor s10, a3, t1
	li t4, 0x7b5
	xor s8, s10, t4
	li a0, 0x621
	xor a0, s8, a0
	li a3, 0x4cb
	xor s4, a0, a3
	li a6, 0x316
	xor t5, s4, a6
	li t2, 0x78c
	xor s7, t5, t2
	li a3, 0xe8
	xor t3, s7, a3
	li s4, 0x246
	xor s1, t3, s4
	li s2, 0x1d5
	xor t2, s1, s2
	li t5, 0x594
	xor a7, t2, t5
	li s9, 0x210
	xor t1, a7, s9
	li s11, 0x339
	xor s7, t1, s11
	li t4, 0x6db
	xor t1, s7, t4
	li s11, 0x460
	xor s11, t1, s11
	li a3, 0x48c
	xor s3, s11, a3
	li s4, 0x3bd
	xor s11, s3, s4
	li a2, 0x67a
	xor t4, s11, a2
	li t3, 0x698
	xor s10, t4, t3
	li t1, 0x23b
	xor a7, s10, t1
	li s2, 0x474
	xor a3, a7, s2
	li s0, 0x18c
	xor a2, a3, s0
	li s10, 0x1a9
	xor t5, a2, s10
	li t4, 0x7ec
	xor a2, t5, t4
	li s3, 0x6f9
	xor t6, a2, s3
	li s3, 0x5e5
	xor a2, t6, s3
	li t3, 0x7b4
	xor s4, a2, t3
	li s9, 0x16c
	xor s5, s4, s9
	li s4, 0x6a1
	xor s8, s5, s4
	li s3, 0x453
	xor s8, s8, s3
	li s11, 0x191
	xor s3, s8, s11
	li s2, 0x1e5
	xor t1, s3, s2
	li s1, 0x27c
	xor t6, t1, s1
	li s4, 0x505
	xor s2, t6, s4
	li t2, 0x64e
	xor t1, s2, t2
	li a5, 0x77c
	xor s10, t1, a5
	li t5, 0x9b
	xor s8, s10, t5
	li s3, 0x6c8
	xor a7, s8, s3
	li a2, 0x88
	xor s9, a7, a2
	li s3, 0x5ff
	xor t4, s9, s3
	li a3, 0x21b
	xor s10, t4, a3
	li s1, 0x1db
	xor t6, s10, s1
	li t4, 0x1b1
	xor a0, t6, t4
	li t5, 0x4a8
	xor a6, a0, t5
	li a7, 0x2ef
	xor s0, a6, a7
	li s2, 0x197
	xor s5, s0, s2
	li t4, 0x6ce
	xor a5, s5, t4
	li a7, 0x137
	xor s3, a5, a7
	li t3, 0x535
	xor a3, s3, t3
	li t3, 0x13c
	xor s0, a3, t3
	li s7, 0x7be
	xor a3, s0, s7
	li s10, 0x322
	xor a2, a3, s10
	li s3, 0x3aa
	xor s8, a2, s3
	li a5, 0x715
	xor s5, s8, a5
	li a2, 0x84
	xor s1, s5, a2
	li s5, 0x438
	xor a3, s1, s5
	li s7, 0x4be
	xor t4, a3, s7
	li s5, 0x13e
	xor t2, t4, s5
	li s9, 0x1b2
	xor t4, t2, s9
	li s7, 0x192
	xor t2, t4, s7
	li s3, 0x3cf
	xor s4, t2, s3
	li s8, 0x3af
	xor a0, s4, s8
	csrr a7, time
	csrr s9, cycle
	csrr s5, instret
	sub t4, a7, a1
	sub t4, s9, a4
	sub t3, s5, s6
	li s9, 0
	csrr t1, time
	csrr a7, cycle
	csrr t2, instret
	li s2, 0x126
	xor a2, s9, s2
	li s4, 0x2bd
	xor s4, a2, s4
	li t6, 0x742
	xor a0, s4, t6
	li s8, 0x7e4
	xor s3, a0, s8
	li s1, 0x73
	xor t5, s3, s1
	li s5, 0x54
	xor t6, t5, s5
	li s7, 0x677
	xor s9, t6, s7
	li s11, 0x561
	xor t5, s9, s11
	li s0, 0x1ac
	xor s1, t5, s0
	li s10, 0x40f
	xor s3, s1, s10
	li s0, 0x6e0
	xor a0, s3, s0
	li s9, 0x5b2
	xor s8, a0, s9
	li t5, 0x6cb
	xor s0, s8, t5
	li s4, 0x135
	xor a5, s0, s4
	li s10, 0x1ad
	xor s10, a5, s10
	li a2, 0x678
	xor a2, s10, a2
	li a3, 0x544
	xor t6, a2, a3
	li s6, 0x4c0
	xor s2, t6, s6
	li a1, 0x616
	xor t5, s2, a1
	li s3, 0x71a
	xor s0, t5, s3
	li a3, 0x110
	xor s3, s0, a3
	li s2, 0x4dd
	xor a4, s3, s2
	li s10, 0x654
	xor s10, a4, s10
	li s11, 0x62f
	xor s7, s10, s11
	li s11, 0x3ad
	xor s10, s7, s11
	li a6, 0x689
	xor t5, s10, a6
	li s11, 0x6a9
	xor s0, t5, s11
	li s1, 0x5e
	xor s4, s0, s1
	li s7, 0x4af
	xor a2, s4, s7
	li s8, 0x288
	xor s3, a2, s8
	li s11, 0x3a8
	xor t6, s3, s11
	li s5, 0x1db
	xor s2, t6, s5
	li t6, 0x19b
	xor s7, s2, t6
	li a2, 0xb6
	xor t5, s7, a2
	li s1, 0x31f
	xor s11, t5, s1
	li a3, 0x233
	xor t5, s11, a3
	li s0, 0xbb
	xor t5, t5, s0
	li s6, 0x32
	xor a4, t5, s6
	li s9, 0x2da
	xor a5, a4, s9
	li a3, 0x42a
	xor s10, a5, a3
	li a4, 0x5a4
	xor a5, s10, a4
	li t6, 0x14d
	xor a2, a5, t6
	li t6, 0x2a1
	xor a4, a2, t6
	li s3, 0x279
	xor s10, a4, s3
	li s7, 0x3cd
	xor s5, s10, s7
	li a0, 0x3c5
	xor s6, s5, a0
	li s7, 0x215
	xor t5, s6, s7
	li s8, 0xda
	xor a6, t5, s8
	li t5, 0x3b3
	xor s0, a6, t5
	li s7, 0x725
	xor a1, s0, s7
	li s10, 0x70e
	xor s10, a1, s10
	li s0, 0x265
	xor s1, s10, s0
	li s0, 0x2e4
	xor s1, s1, s0
	li s10, 0x43d
	xor s0, s1, s10
	li s10, 0x1be
	xor s4, s0, s10
	li s6, 0x356
	xor s1, s4, s6
	li a5, 0xc1
	xor s10, s1, a5
	li s2, 0x5c5
	xor s6, s10, s2
	li a4, 0x6e3
	xor s0, s6, a4
	li a1, 0x60c
	xor a5, s0, a1
	li s11, 0x744
	xor s10, a5, s11
	li s0, 0x6bd
	xor a2, s10, s0
	li t6, 0x6d3
	xor s9, a2, t6
	li a6, 0x256
	xor s6, s9, a6
	li a2, 0x624
	xor a5, s6, a2
	li s2, 0x1d3
	xor t5, a5, s2
	li s1, 0x60c
	xor a3, t5, s1
	li s6, 0x5e4
	xor s3, a3, s6
	li a1, 0x34a
	xor s10, s3, a1
	li a3, 0x61a
	xor s4, s10, a3
	li s10, 0x240
	xor a0, s4, s10
	li s7, 0x7bb
	xor a0, a0, s7
	li a5, 0x75f
	xor s9, a0, a5
	li a4, 0xe3
	xor s1, s9, a4
	li s0, 0x1bd
	xor a1, s1, s0
	li a5, 0x6cf
	xor s11, a1, a5
	li s8, 0x48b
	xor s11, s11, s8
	li s5, 0x1a9
	xor a5, s11, s5
	li a4, 0x239
	xor t6, a5, a4
	li s3, 0x370
	xor s3, t6, s3
	li s6, 0x2d1
	xor a4, s3, s6
	li t6, 0x79a
	xor t5, a4, t6
	li s1, 0x15
	xor s11, t5, s1
	li s4, 0x9
	xor s7, s11, s4
	li s8, 0x525
	xor s6, s7, s8
	li a0, 0x3d3
	xor s10, s6, a0
	li s3, 0x290
	xor t6, s10, s3
	li s6, 0xfc
	xor s11, t6, s6
	li s6, 0x768
	xor s11, s11, s6
	li a0, 0x2fe
	xor a5, s11, a0
	li t6, 0x5b4
	xor t5, a5, t6
	li s3, 0x1e6
	xor s1, t5, s3
	li a6, 0x46f
	xor a2, s1, a6
	li s6, 0x5c1
	xor s7, a2, s6
	li s5, 0x9b
	xor t6, s7, s5
	li s3, 0xc8
	xor s1, t6, s3
	li s6, 0xe2
	xor s7, s1, s6
	li t6, 0x48
	xor a3, s7, t6
	li s6, 0x34f
	xor s10, a3, s6
	li s11, 0x744
	xor s1, s10, s11
	csrr a0, time
	csrr s9, cycle
	csrr a4, instret
	sub s6, a0, t1
	sub a0, s9, a7
	sub a3, a4, t2
	beq t4, a0, pass_label_39
	li s10, failed_addr
	ld a7, 0(s10)
	jr a7
pass_label_39:
	beq t3, a3, pass_label_40
	li t4, failed_addr
	ld s10, 0(t4)
	jr s10
pass_label_40:
SID_ZKT_05_XOR_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SRL)
SID_ZKT_05_SRL:
	li sp, SID_ZKT_05_SRL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s6, 0
	csrr a2, time
	csrr s8, cycle
	csrr s9, instret
	li t2, 0x2e1
	srl a6, s6, t2
	li s11, 0x227
	srl a0, a6, s11
	li s2, 0x55c
	srl s5, a0, s2
	li s4, 0x73
	srl s3, s5, s4
	li t4, 0x744
	srl s4, s3, t4
	li a7, 0x2d6
	srl s4, s4, a7
	li s2, 0x44e
	srl a5, s4, s2
	li a7, 0x36f
	srl s11, a5, a7
	li s1, 0x2ad
	srl s4, s11, s1
	li a5, 0x30b
	srl a5, s4, a5
	li s4, 0x525
	srl t5, a5, s4
	li a0, 0x63c
	srl a4, t5, a0
	li s1, 0x330
	srl s7, a4, s1
	li a3, 0x1c
	srl s3, s7, a3
	li s7, 0x49d
	srl s10, s3, s7
	li t4, 0x3fb
	srl t6, s10, t4
	li s0, 0x66
	srl t2, t6, s0
	li t6, 0x7fc
	srl s10, t2, t6
	li t1, 0x11e
	srl t1, s10, t1
	li t6, 0x526
	srl s1, t1, t6
	li s2, 0x4ad
	srl a5, s1, s2
	li s6, 0x2bd
	srl s4, a5, s6
	li a4, 0x6aa
	srl s10, s4, a4
	li a7, 0x282
	srl s1, s10, a7
	li t5, 0x3d
	srl t6, s1, t5
	li t2, 0x5ae
	srl t4, t6, t2
	li a1, 0x797
	srl s6, t4, a1
	li s5, 0x323
	srl t1, s6, s5
	li a3, 0x668
	srl a1, t1, a3
	li t6, 0x6d9
	srl t3, a1, t6
	li a4, 0xa3
	srl t3, t3, a4
	li s0, 0x352
	srl t5, t3, s0
	li s2, 0x53c
	srl a0, t5, s2
	li s1, 0x64f
	srl a6, a0, s1
	li s4, 0x430
	srl t1, a6, s4
	li s4, 0x762
	srl a1, t1, s4
	li s2, 0x316
	srl s1, a1, s2
	li a1, 0x556
	srl s1, s1, a1
	li s10, 0x5fa
	srl a5, s1, s10
	li s6, 0x90
	srl a6, a5, s6
	li t6, 0x5d9
	srl a6, a6, t6
	li s6, 0x18e
	srl s5, a6, s6
	li a3, 0x7f4
	srl a1, s5, a3
	li a4, 0x2ae
	srl t6, a1, a4
	li s7, 0x9d
	srl a7, t6, s7
	li a5, 0xa9
	srl a6, a7, a5
	li s6, 0x67
	srl a7, a6, s6
	li t6, 0x46c
	srl a7, a7, t6
	li a3, 0x42f
	srl s0, a7, a3
	li s7, 0x5bf
	srl t6, s0, s7
	li s4, 0x60
	srl t4, t6, s4
	li t1, 0x5fe
	srl s5, t4, t1
	li t3, 0x25d
	srl t1, s5, t3
	li a6, 0x295
	srl a4, t1, a6
	li a7, 0x87
	srl t2, a4, a7
	li s11, 0x579
	srl a1, t2, s11
	li s7, 0x6ee
	srl s2, a1, s7
	li s11, 0x78a
	srl s6, s2, s11
	li a6, 0x5c0
	srl s6, s6, a6
	li t3, 0x222
	srl t1, s6, t3
	li s2, 0x673
	srl a3, t1, s2
	li t6, 0x7c7
	srl a1, a3, t6
	li s7, 0xa4
	srl s10, a1, s7
	li t2, 0xf9
	srl s5, s10, t2
	li s10, 0x522
	srl a6, s5, s10
	li s1, 0x747
	srl t5, a6, s1
	li a6, 0x16
	srl s2, t5, a6
	li t1, 0x181
	srl t2, s2, t1
	li t5, 0x224
	srl t4, t2, t5
	li a3, 0x466
	srl a5, t4, a3
	li t5, 0x4de
	srl s1, a5, t5
	li s6, 0x6ac
	srl a1, s1, s6
	li a3, 0x676
	srl s2, a1, a3
	li t5, 0x57
	srl s6, s2, t5
	li a3, 0x7d5
	srl a1, s6, a3
	li s1, 0x42e
	srl a6, a1, s1
	li t1, 0x432
	srl a4, a6, t1
	li t3, 0x7c
	srl t6, a4, t3
	li s3, 0x736
	srl s7, t6, s3
	li t5, 0x482
	srl s11, s7, t5
	li s2, 0x2ad
	srl a3, s11, s2
	li s4, 0x152
	srl a3, a3, s4
	li a0, 0x486
	srl a7, a3, a0
	li s5, 0x1a5
	srl s5, a7, s5
	li a6, 0x31
	srl s2, s5, a6
	li a1, 0x205
	srl s1, s2, a1
	li a7, 0x4c5
	srl a4, s1, a7
	li s7, 0x345
	srl a6, a4, s7
	li s1, 0x355
	srl s4, a6, s1
	li t1, 0x7aa
	srl t2, s4, t1
	li s11, 0x5c3
	srl a5, t2, s11
	li s3, 0x341
	srl s6, a5, s3
	li s5, 0x6d3
	srl a4, s6, s5
	li a5, 0x358
	srl s11, a4, a5
	li s3, 0x1ae
	srl t6, s11, s3
	li a1, 0x4e6
	srl t4, t6, a1
	li s2, 0x156
	srl t4, t4, s2
	li s4, 0x651
	srl s0, t4, s4
	li s6, 0x3fb
	srl a5, s0, s6
	li t5, 0x170
	srl a6, a5, t5
	csrr t5, time
	csrr s0, cycle
	csrr t3, instret
	sub s10, t5, a2
	sub t4, s0, s8
	sub s9, t3, s9
	li s11, 0
	csrr a2, time
	csrr s5, cycle
	csrr t5, instret
	li a3, 0xb5
	srl s6, s11, a3
	li s10, 0x195
	srl t2, s6, s10
	li s0, 0x6de
	srl s11, t2, s0
	li a7, 0x484
	srl a0, s11, a7
	li s3, 0x1cf
	srl a6, a0, s3
	li s10, 0x409
	srl a0, a6, s10
	li t2, 0x27
	srl s10, a0, t2
	li a0, 0x540
	srl t2, s10, a0
	li a7, 0x47b
	srl a7, t2, a7
	li s1, 0x6fa
	srl s0, a7, s1
	li a5, 0x1b2
	srl s4, s0, a5
	li a4, 0x1d5
	srl s7, s4, a4
	li s10, 0x727
	srl s8, s7, s10
	li t1, 0x6ce
	srl a1, s8, t1
	li a4, 0x38a
	srl s3, a1, a4
	li t2, 0x7b1
	srl t4, s3, t2
	li a6, 0x556
	srl t6, t4, a6
	li a4, 0x4b0
	srl s6, t6, a4
	li a3, 0x421
	srl s10, s6, a3
	li s6, 0x63a
	srl s1, s10, s6
	li s4, 0x144
	srl a6, s1, s4
	li a7, 0x766
	srl a6, a6, a7
	li t6, 0x3d2
	srl s4, a6, t6
	li a0, 0x1df
	srl s1, s4, a0
	li s3, 0x47e
	srl a5, s1, s3
	li a3, 0x403
	srl a0, a5, a3
	li s8, 0x3ae
	srl t4, a0, s8
	li a3, 0xa8
	srl t4, t4, a3
	li a3, 0x5f7
	srl t2, t4, a3
	li s4, 0x168
	srl s1, t2, s4
	li s0, 0x2e3
	srl t1, s1, s0
	li a1, 0x7b2
	srl a4, t1, a1
	li a3, 0x2b2
	srl s8, a4, a3
	li s3, 0x3b4
	srl s10, s8, s3
	li a3, 0x184
	srl s7, s10, a3
	li a5, 0x98
	srl s8, s7, a5
	li s7, 0x4a5
	srl s8, s8, s7
	li a5, 0x3ba
	srl s2, s8, a5
	li s0, 0xd6
	srl a3, s2, s0
	li t4, 0x56
	srl s0, a3, t4
	li a6, 0x564
	srl a5, s0, a6
	li a1, 0x73b
	srl s6, a5, a1
	li t4, 0x4c3
	srl s1, s6, t4
	li s9, 0x60
	srl t2, s1, s9
	li s1, 0x639
	srl s1, t2, s1
	li a3, 0x497
	srl t3, s1, a3
	li t6, 0x2f3
	srl a3, t3, t6
	li s11, 0xf1
	srl s1, a3, s11
	li t2, 0x260
	srl a7, s1, t2
	li t4, 0x114
	srl a3, a7, t4
	li s6, 0x2a8
	srl a5, a3, s6
	li t4, 0x2fd
	srl s3, a5, t4
	li s7, 0x1fb
	srl s4, s3, s7
	li a0, 0x156
	srl s11, s4, a0
	li s3, 0x646
	srl a0, s11, s3
	li s10, 0xe7
	srl a4, a0, s10
	li s0, 0xbc
	srl a1, a4, s0
	li s9, 0x2c2
	srl t1, a1, s9
	li a3, 0x199
	srl a7, t1, a3
	li a1, 0xb0
	srl s9, a7, a1
	li t2, 0x565
	srl s9, s9, t2
	li a6, 0x13e
	srl s3, s9, a6
	li a4, 0x2ef
	srl a0, s3, a4
	li a7, 0x15c
	srl s0, a0, a7
	li s9, 0x697
	srl a5, s0, s9
	li s4, 0x710
	srl a0, a5, s4
	li t4, 0x538
	srl a6, a0, t4
	li s11, 0x7aa
	srl s3, a6, s11
	li s7, 0xef
	srl t6, s3, s7
	li a4, 0x7ea
	srl s10, t6, a4
	li a5, 0x1f0
	srl s10, s10, a5
	li a1, 0x5bb
	srl s9, s10, a1
	li t6, 0x3c5
	srl a0, s9, t6
	li s2, 0x60d
	srl t2, a0, s2
	li a3, 0x3a6
	srl s11, t2, a3
	li a6, 0x6ab
	srl t2, s11, a6
	li a1, 0x6b2
	srl s6, t2, a1
	li s8, 0x152
	srl s4, s6, s8
	li a6, 0x3d5
	srl s9, s4, a6
	li s3, 0x7dc
	srl t4, s9, s3
	li s10, 0x517
	srl s7, t4, s10
	li a7, 0xe3
	srl t6, s7, a7
	li s6, 0x91
	srl t4, t6, s6
	li s4, 0x3c7
	srl s11, t4, s4
	li a0, 0xda
	srl t1, s11, a0
	li s8, 0x433
	srl t6, t1, s8
	li t4, 0x54a
	srl a7, t6, t4
	li t2, 0x2d3
	srl t6, a7, t2
	li s1, 0x567
	srl s9, t6, s1
	li s7, 0x356
	srl s11, s9, s7
	li t6, 0x353
	srl s2, s11, t6
	li s11, 0x29f
	srl s4, s2, s11
	li a0, 0x696
	srl t2, s4, a0
	li a1, 0x2ce
	srl t6, t2, a1
	li a5, 0x49
	srl s7, t6, a5
	li a6, 0x2e7
	srl s3, s7, a6
	li t3, 0x413
	srl s11, s3, t3
	li t1, 0x2aa
	srl s6, s11, t1
	li s10, 0x396
	srl s3, s6, s10
	li s6, 0x49
	srl s1, s3, s6
	csrr s3, time
	csrr s8, cycle
	csrr a4, instret
	sub s6, s3, a2
	sub s11, s8, s5
	sub a0, a4, t5
	li a2, 0
	csrr a6, time
	csrr s7, cycle
	csrr t6, instret
	li t4, 0x7a6
	srl a1, a2, t4
	li s1, 0x144
	srl s0, a1, s1
	li s2, 0x150
	srl s10, s0, s2
	li s3, 0x115
	srl s5, s10, s3
	li s2, 0xda
	srl s8, s5, s2
	li a5, 0x152
	srl s1, s8, a5
	li s3, 0x26e
	srl a2, s1, s3
	li s0, 0x508
	srl t5, a2, s0
	li s3, 0x57b
	srl s5, t5, s3
	li t1, 0x2d0
	srl a5, s5, t1
	li s2, 0x78f
	srl s9, a5, s2
	li t1, 0x1e4
	srl t5, s9, t1
	li s10, 0x553
	srl s8, t5, s10
	li s3, 0x513
	srl s0, s8, s3
	li a3, 0x709
	srl a2, s0, a3
	li s6, 0x1de
	srl t3, a2, s6
	li s9, 0x7be
	srl s5, t3, s9
	li a5, 0x4d3
	srl s6, s5, a5
	li s5, 0x2c5
	srl s10, s6, s5
	li t4, 0x3e
	srl s10, s10, t4
	li s4, 0x4ad
	srl a3, s10, s4
	li s2, 0x2a8
	srl s4, a3, s2
	li s3, 0x783
	srl s10, s4, s3
	li a5, 0x7bb
	srl t2, s10, a5
	li a5, 0x6bd
	srl s0, t2, a5
	li s9, 0x609
	srl s5, s0, s9
	li t4, 0x6af
	srl a5, s5, t4
	li t4, 0x4a5
	srl a4, a5, t4
	li a7, 0x13b
	srl t2, a4, a7
	li s2, 0x607
	srl a1, t2, s2
	li s8, 0x96
	srl t3, a1, s8
	li a1, 0xad
	srl s0, t3, a1
	li a2, 0x2f4
	srl t1, s0, a2
	li s5, 0x48f
	srl t5, t1, s5
	li s5, 0x524
	srl a1, t5, s5
	li s0, 0x674
	srl s6, a1, s0
	li a5, 0x441
	srl t4, s6, a5
	li a3, 0x2cd
	srl a2, t4, a3
	li s2, 0x784
	srl t5, a2, s2
	li t4, 0x3cd
	srl t2, t5, t4
	li s5, 0x3be
	srl a1, t2, s5
	li s2, 0x7ab
	srl s4, a1, s2
	li a1, 0x655
	srl a1, s4, a1
	li a4, 0x2d2
	srl a7, a1, a4
	li a1, 0x63e
	srl t1, a7, a1
	li s6, 0x520
	srl s3, t1, s6
	li s9, 0xb8
	srl s10, s3, s9
	li s8, 0x666
	srl t5, s10, s8
	li a4, 0x3a9
	srl t1, t5, a4
	li a2, 0x503
	srl t2, t1, a2
	li s5, 0x5ff
	srl s3, t2, s5
	li s4, 0x35d
	srl a7, s3, s4
	li s1, 0x781
	srl t1, a7, s1
	li s8, 0x7f
	srl a7, t1, s8
	li a2, 0x314
	srl t4, a7, a2
	li a4, 0x19a
	srl a4, t4, a4
	li s2, 0x5fe
	srl a3, a4, s2
	li s8, 0x47b
	srl s5, a3, s8
	li t1, 0x25d
	srl a7, s5, t1
	li t1, 0x50
	srl a1, a7, t1
	li t5, 0x2a0
	srl t5, a1, t5
	li a2, 0x1c9
	srl a1, t5, a2
	li a4, 0x547
	srl a3, a1, a4
	li s8, 0x32b
	srl t1, a3, s8
	li s1, 0x5da
	srl a5, t1, s1
	li a4, 0x6e1
	srl s0, a5, a4
	li s8, 0x26
	srl s10, s0, s8
	li t5, 0x6d8
	srl s4, s10, t5
	li t4, 0x329
	srl a3, s4, t4
	li a4, 0x3f3
	srl s3, a3, a4
	li a3, 0x380
	srl s5, s3, a3
	li a7, 0x268
	srl s5, s5, a7
	li s8, 0x38f
	srl t5, s5, s8
	li s9, 0x1b6
	srl t5, t5, s9
	li t1, 0x748
	srl t5, t5, t1
	li t1, 0x50a
	srl t5, t5, t1
	li a2, 0x314
	srl s5, t5, a2
	li a4, 0x7ae
	srl s10, s5, a4
	li s1, 0x493
	srl s3, s10, s1
	li a2, 0x228
	srl s6, s3, a2
	li t1, 0xb9
	srl a5, s6, t1
	li t1, 0x131
	srl s10, a5, t1
	li s8, 0x682
	srl t5, s10, s8
	li s8, 0xf
	srl s10, t5, s8
	li a1, 0x1f3
	srl s1, s10, a1
	li s6, 0x6db
	srl a7, s1, s6
	li s0, 0x7b9
	srl t3, a7, s0
	li s10, 0x3e9
	srl t4, t3, s10
	li t1, 0x283
	srl t4, t4, t1
	li a7, 0x28a
	srl t4, t4, a7
	li a4, 0xad
	srl a3, t4, a4
	li t1, 0x275
	srl t2, a3, t1
	li a4, 0x7b9
	srl a1, t2, a4
	li s10, 0x75e
	srl a5, a1, s10
	li s0, 0x7a3
	srl a3, a5, s0
	li s0, 0x552
	srl t5, a3, s0
	li a2, 0x12a
	srl s8, t5, a2
	li s4, 0x72a
	srl a3, s8, s4
	li s10, 0x164
	srl s3, a3, s10
	li t3, 0x6
	srl s2, s3, t3
	csrr s3, time
	csrr s5, cycle
	csrr s6, instret
	sub a3, s3, a6
	sub s3, s5, s7
	sub s4, s6, t6
	beq s11, s3, pass_label_41
	li a2, failed_addr
	ld a4, 0(a2)
	jr a4
pass_label_41:
	beq a0, s4, pass_label_42
	li s7, failed_addr
	ld s1, 0(s7)
	jr s1
pass_label_42:
SID_ZKT_05_SRL_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SRA)
SID_ZKT_05_SRA:
	li sp, SID_ZKT_05_SRA_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a1, 0
	csrr s10, time
	csrr t1, cycle
	csrr t3, instret
	li t2, 0x2dd
	sra s6, a1, t2
	li s5, 0x7de
	sra s3, s6, s5
	li t5, 0x3d0
	sra t4, s3, t5
	li s5, 0x67f
	sra s6, t4, s5
	li s2, 0x610
	sra s0, s6, s2
	li s1, 0x74e
	sra a0, s0, s1
	li a4, 0xc0
	sra a7, a0, a4
	li s9, 0x2f1
	sra s9, a7, s9
	li s6, 0x176
	sra s8, s9, s6
	li a6, 0x639
	sra a5, s8, a6
	li s3, 0x651
	sra s7, a5, s3
	li t2, 0x312
	sra t6, s7, t2
	li s0, 0x6ca
	sra a1, t6, s0
	li a4, 0x1f2
	sra t5, a1, a4
	li t2, 0x5a7
	sra t4, t5, t2
	li s11, 0xa7
	sra a4, t4, s11
	li a5, 0x42e
	sra s0, a4, a5
	li a7, 0x213
	sra a3, s0, a7
	li t5, 0x471
	sra s6, a3, t5
	li a5, 0x4bc
	sra s0, s6, a5
	li a4, 0x44
	sra s11, s0, a4
	li s6, 0x483
	sra s9, s11, s6
	li s7, 0x34a
	sra s8, s9, s7
	li t4, 0x12c
	sra a1, s8, t4
	li a2, 0x627
	sra t4, a1, a2
	li s8, 0x41b
	sra s11, t4, s8
	li s9, 0x225
	sra a6, s11, s9
	li s11, 0x37e
	sra s0, a6, s11
	li s8, 0x1c5
	sra s0, s0, s8
	li s8, 0x2a2
	sra a7, s0, s8
	li a0, 0x377
	sra a7, a7, a0
	li t5, 0x1c1
	sra t4, a7, t5
	li a1, 0x47b
	sra t6, t4, a1
	li a7, 0xd3
	sra t4, t6, a7
	li s4, 0x1bd
	sra s0, t4, s4
	li s7, 0x2e5
	sra s8, s0, s7
	li a0, 0x45f
	sra s4, s8, a0
	li t5, 0x3ff
	sra a1, s4, t5
	li s11, 0x463
	sra a3, a1, s11
	li a0, 0x14b
	sra a1, a3, a0
	li a7, 0x615
	sra a4, a1, a7
	li s6, 0x69a
	sra s1, a4, s6
	li a4, 0x284
	sra t5, s1, a4
	li a4, 0x310
	sra t5, t5, a4
	li a0, 0x6ac
	sra s6, t5, a0
	li s0, 0xe7
	sra a6, s6, s0
	li s11, 0x1de
	sra s3, a6, s11
	li s8, 0x5f6
	sra a5, s3, s8
	li a2, 0x336
	sra a4, a5, a2
	li s5, 0x71a
	sra s4, a4, s5
	li a2, 0x75d
	sra s6, s4, a2
	li a5, 0x370
	sra s11, s6, a5
	li s0, 0x6a3
	sra a7, s11, s0
	li s9, 0x727
	sra s1, a7, s9
	li a4, 0x3b7
	sra t4, s1, a4
	li s11, 0x7e5
	sra s3, t4, s11
	li a5, 0x77c
	sra s3, s3, a5
	li s8, 0x32c
	sra a6, s3, s8
	li a7, 0x4f3
	sra t4, a6, a7
	li s1, 0x24e
	sra a0, t4, s1
	li s0, 0x595
	sra s6, a0, s0
	li s5, 0x103
	sra s11, s6, s5
	li s5, 0x688
	sra s2, s11, s5
	li s9, 0x1b3
	sra s5, s2, s9
	li a0, 0x6b9
	sra a3, s5, a0
	li s0, 0x29d
	sra a3, a3, s0
	li s8, 0x34
	sra s3, a3, s8
	li t6, 0x459
	sra s7, s3, t6
	li a7, 0x96
	sra a3, s7, a7
	li s2, 0x7bf
	sra s9, a3, s2
	li a4, 0x738
	sra a7, s9, a4
	li t5, 0x510
	sra s5, a7, t5
	li s6, 0xa5
	sra t2, s5, s6
	li s8, 0x28e
	sra s0, t2, s8
	li s11, 0x71b
	sra t5, s0, s11
	li a5, 0x365
	sra s9, t5, a5
	li s5, 0x745
	sra s9, s9, s5
	li s8, 0x7ec
	sra s2, s9, s8
	li a3, 0x73
	sra t6, s2, a3
	li t5, 0x3e3
	sra a0, t6, t5
	li s9, 0x4e6
	sra t5, a0, s9
	li t2, 0x5a5
	sra s4, t5, t2
	li a5, 0x42f
	sra s8, s4, a5
	li s9, 0xf1
	sra s8, s8, s9
	li s0, 0x22
	sra a0, s8, s0
	li a1, 0x52e
	sra s1, a0, a1
	li s2, 0x6ef
	sra a0, s1, s2
	li s4, 0x3b5
	sra a5, a0, s4
	li a0, 0x563
	sra s0, a5, a0
	li s3, 0x1f4
	sra s5, s0, s3
	li a4, 0x3c4
	sra s11, s5, a4
	li a2, 0x561
	sra s11, s11, a2
	li a2, 0x4fb
	sra s11, s11, a2
	li s4, 0x74b
	sra s3, s11, s4
	li a6, 0x724
	sra a7, s3, a6
	li t6, 0x254
	sra t4, a7, t6
	li s4, 0x6f6
	sra t4, t4, s4
	li s6, 0x30b
	sra s7, t4, s6
	li s4, 0x2d2
	sra t2, s7, s4
	li s7, 0x216
	sra s3, t2, s7
	csrr a7, time
	csrr a2, cycle
	csrr a4, instret
	sub t6, a7, s10
	sub a3, a2, t1
	sub a5, a4, t3
	li s2, 0
	csrr t5, time
	csrr a0, cycle
	csrr a2, instret
	li a1, 0x649
	sra a6, s2, a1
	li t4, 0x45f
	sra s4, a6, t4
	li s9, 0x63b
	sra a4, s4, s9
	li a7, 0x62f
	sra s7, a4, a7
	li s4, 0x66d
	sra s11, s7, s4
	li s2, 0x6b4
	sra a5, s11, s2
	li a4, 0x1ac
	sra a5, a5, a4
	li s9, 0x5ab
	sra s3, a5, s9
	li a6, 0x590
	sra t1, s3, a6
	li s2, 0x584
	sra a6, t1, s2
	li t3, 0x448
	sra t6, a6, t3
	li t2, 0x81
	sra s4, t6, t2
	li s8, 0x59c
	sra s9, s4, s8
	li a7, 0x7bc
	sra a5, s9, a7
	li s6, 0x762
	sra s6, a5, s6
	li t1, 0x443
	sra s2, s6, t1
	li a1, 0x52d
	sra t2, s2, a1
	li s5, 0x100
	sra s10, t2, s5
	li s3, 0x551
	sra a6, s10, s3
	li s10, 0xd6
	sra s3, a6, s10
	li s0, 0x47b
	sra t3, s3, s0
	li s8, 0x76e
	sra s11, t3, s8
	li s6, 0x44d
	sra t3, s11, s6
	li s4, 0x629
	sra t3, t3, s4
	li s4, 0xfc
	sra a3, t3, s4
	li s3, 0x685
	sra a7, a3, s3
	li s4, 0x61
	sra s4, a7, s4
	li a4, 0x7a5
	sra s2, s4, a4
	li s1, 0xa8
	sra a3, s2, s1
	li a7, 0x16b
	sra a7, a3, a7
	li s5, 0x5eb
	sra t4, a7, s5
	li s9, 0x255
	sra a4, t4, s9
	li t6, 0x344
	sra a3, a4, t6
	li s3, 0x692
	sra a1, a3, s3
	li a3, 0x671
	sra s1, a1, a3
	li s2, 0x742
	sra a7, s1, s2
	li a1, 0x82
	sra s4, a7, a1
	li t6, 0xae
	sra s5, s4, t6
	li t6, 0xed
	sra t3, s5, t6
	li a3, 0x708
	sra t6, t3, a3
	li s11, 0x18c
	sra a1, t6, s11
	li a6, 0x4d4
	sra t3, a1, a6
	li s0, 0x12d
	sra t2, t3, s0
	li s4, 0x7a6
	sra s8, t2, s4
	li t1, 0x3a1
	sra a4, s8, t1
	li t6, 0x14
	sra a1, a4, t6
	li s8, 0x17e
	sra a7, a1, s8
	li s4, 0x194
	sra a7, a7, s4
	li s0, 0x7e8
	sra a5, a7, s0
	li s11, 0x1bc
	sra s3, a5, s11
	li a7, 0x1b9
	sra s2, s3, a7
	li a5, 0x7b5
	sra t2, s2, a5
	li t6, 0x150
	sra a6, t2, t6
	li s0, 0x777
	sra t2, a6, s0
	li s9, 0x5da
	sra a5, t2, s9
	li s4, 0x8
	sra t3, a5, s4
	li s1, 0x2ea
	sra s1, t3, s1
	li s11, 0x409
	sra a5, s1, s11
	li t1, 0x614
	sra a1, a5, t1
	li a6, 0x526
	sra a6, a1, a6
	li s7, 0x33
	sra t3, a6, s7
	li s7, 0x1e0
	sra s2, t3, s7
	li a3, 0x5f
	sra s2, s2, a3
	li a6, 0x6c8
	sra s3, s2, a6
	li s9, 0x7d3
	sra s4, s3, s9
	li s0, 0x4ff
	sra s6, s4, s0
	li s10, 0x123
	sra a6, s6, s10
	li a4, 0x157
	sra s11, a6, a4
	li a3, 0x65d
	sra s10, s11, a3
	li t2, 0x75d
	sra s6, s10, t2
	li s11, 0x699
	sra a4, s6, s11
	li s5, 0xec
	sra a3, a4, s5
	li t1, 0x1e9
	sra s5, a3, t1
	li t3, 0x67a
	sra s7, s5, t3
	li s11, 0x6e9
	sra s4, s7, s11
	li t2, 0x349
	sra s0, s4, t2
	li s8, 0x12b
	sra s8, s0, s8
	li t2, 0x1ad
	sra t4, s8, t2
	li s11, 0x533
	sra t2, t4, s11
	li s8, 0x2c8
	sra s5, t2, s8
	li s6, 0x6c
	sra a4, s5, s6
	li s2, 0x93
	sra a6, a4, s2
	li s11, 0x7f6
	sra a7, a6, s11
	li s0, 0x56e
	sra s1, a7, s0
	li s7, 0x301
	sra a6, s1, s7
	li s5, 0x24a
	sra t6, a6, s5
	li t4, 0x273
	sra s10, t6, t4
	li a3, 0x66
	sra t4, s10, a3
	li s11, 0x1bb
	sra a5, t4, s11
	li s1, 0x672
	sra s5, a5, s1
	li s11, 0x3c8
	sra s11, s5, s11
	li t3, 0x3d
	sra s8, s11, t3
	li t1, 0xaa
	sra s7, s8, t1
	li s8, 0x42c
	sra a5, s7, s8
	li a3, 0x61
	sra s9, a5, a3
	li t6, 0x65d
	sra t4, s9, t6
	li s2, 0xb6
	sra s4, t4, s2
	li s0, 0x3ff
	sra t4, s4, s0
	li s7, 0x1b9
	sra s6, t4, s7
	li s4, 0xed
	sra a5, s6, s4
	csrr s0, time
	csrr a7, cycle
	csrr t4, instret
	sub a3, s0, t5
	sub t6, a7, a0
	sub s2, t4, a2
	li s6, 0
	csrr a5, time
	csrr a7, cycle
	csrr s5, instret
	li t4, 0x50a
	sra s4, s6, t4
	li s6, 0xec
	sra s11, s4, s6
	li t2, 0x28
	sra a1, s11, t2
	li t5, 0x7ec
	sra a3, a1, t5
	li s8, 0x722
	sra s7, a3, s8
	li s6, 0x44
	sra a2, s7, s6
	li t3, 0x521
	sra s11, a2, t3
	li s0, 0x344
	sra s9, s11, s0
	li s11, 0x62a
	sra s1, s9, s11
	li a2, 0x6bf
	sra a0, s1, a2
	li t4, 0x62c
	sra t1, a0, t4
	li t5, 0x38f
	sra a0, t1, t5
	li a4, 0xed
	sra s9, a0, a4
	li s0, 0x5f
	sra t3, s9, s0
	li t5, 0x24
	sra s9, t3, t5
	li s1, 0x464
	sra a2, s9, s1
	li s8, 0x4
	sra t3, a2, s8
	li a4, 0x4c9
	sra t5, t3, a4
	li s7, 0x210
	sra s8, t5, s7
	li s4, 0x7ea
	sra a1, s8, s4
	li s11, 0xd2
	sra a3, a1, s11
	li s11, 0x56a
	sra a1, a3, s11
	li a0, 0x206
	sra s6, a1, a0
	li t3, 0x274
	sra s8, s6, t3
	li a3, 0x14e
	sra a3, s8, a3
	li s11, 0x611
	sra a1, a3, s11
	li t2, 0x2fc
	sra s9, a1, t2
	li s3, 0x71
	sra s8, s9, s3
	li s6, 0xcf
	sra a1, s8, s6
	li a2, 0x44f
	sra s6, a1, a2
	li a2, 0x2bc
	sra t2, s6, a2
	li t4, 0x2b3
	sra a2, t2, t4
	li a4, 0x139
	sra s8, a2, a4
	li t3, 0x413
	sra s10, s8, t3
	li a1, 0x470
	sra s10, s10, a1
	li s11, 0x34f
	sra s7, s10, s11
	li s4, 0xbe
	sra s8, s7, s4
	li s6, 0x45e
	sra t2, s8, s6
	li a6, 0x23e
	sra s7, t2, a6
	li s4, 0x44e
	sra a2, s7, s4
	li a1, 0x4e3
	sra s7, a2, a1
	li t2, 0xb6
	sra t3, s7, t2
	li s1, 0x6a9
	sra t5, t3, s1
	li a1, 0x383
	sra t3, t5, a1
	li s3, 0xcc
	sra s7, t3, s3
	li a2, 0xf3
	sra a4, s7, a2
	li a6, 0x6e
	sra s8, a4, a6
	li s9, 0x58e
	sra s4, s8, s9
	li t3, 0x69
	sra t5, s4, t3
	li t1, 0x70f
	sra t5, t5, t1
	li a3, 0x96
	sra s8, t5, a3
	li t1, 0x521
	sra s9, s8, t1
	li a2, 0x51
	sra t5, s9, a2
	li s3, 0x124
	sra s4, t5, s3
	li s7, 0x691
	sra s10, s4, s7
	li s0, 0x19d
	sra t4, s10, s0
	li a0, 0x355
	sra a1, t4, a0
	li s11, 0x573
	sra t1, a1, s11
	li t3, 0x272
	sra t2, t1, t3
	li a0, 0x507
	sra s0, t2, a0
	li t2, 0x443
	sra t4, s0, t2
	li s4, 0x47b
	sra a1, t4, s4
	li s0, 0x63b
	sra s9, a1, s0
	li a3, 0x5fb
	sra s9, s9, a3
	li s0, 0x1c3
	sra s6, s9, s0
	li t2, 0x248
	sra t2, s6, t2
	li t1, 0x52c
	sra s9, t2, t1
	li t4, 0xa7
	sra t4, s9, t4
	li s7, 0x437
	sra s10, t4, s7
	li s3, 0x94
	sra a2, s10, s3
	li s9, 0x4f4
	sra t3, a2, s9
	li a2, 0x222
	sra s0, t3, a2
	li a4, 0x41c
	sra a0, s0, a4
	li s8, 0x278
	sra a1, a0, s8
	li s1, 0x635
	sra t3, a1, s1
	li s7, 0x39d
	sra t5, t3, s7
	li a4, 0x627
	sra t5, t5, a4
	li t1, 0x3f8
	sra t4, t5, t1
	li t3, 0x4ec
	sra a6, t4, t3
	li t5, 0x22f
	sra a6, a6, t5
	li t1, 0x373
	sra t5, a6, t1
	li s0, 0x78f
	sra s0, t5, s0
	li t5, 0x365
	sra s9, s0, t5
	li s6, 0x1fe
	sra s1, s9, s6
	li s11, 0x6c0
	sra s0, s1, s11
	li a6, 0x3f
	sra a0, s0, a6
	li a1, 0x2f1
	sra s6, a0, a1
	li a2, 0xde
	sra s8, s6, a2
	li s3, 0x5f8
	sra s6, s8, s3
	li a4, 0x15f
	sra a0, s6, a4
	li s11, 0x571
	sra s10, a0, s11
	li t5, 0x55d
	sra s0, s10, t5
	li t5, 0x4f3
	sra s3, s0, t5
	li s6, 0x677
	sra a0, s3, s6
	li s4, 0x5af
	sra a4, a0, s4
	li t3, 0x13a
	sra s0, a4, t3
	li a0, 0x407
	sra a1, s0, a0
	li t5, 0x590
	sra a1, a1, t5
	li s10, 0x138
	sra s8, a1, s10
	li a4, 0x3a3
	sra a0, s8, a4
	csrr a4, time
	csrr s8, cycle
	csrr t4, instret
	sub s6, a4, a5
	sub t1, s8, a7
	sub a6, t4, s5
	beq t6, t1, pass_label_43
	li s1, failed_addr
	ld s0, 0(s1)
	jr s0
pass_label_43:
	beq s2, a6, pass_label_44
	li s1, failed_addr
	ld t1, 0(s1)
	jr t1
pass_label_44:
SID_ZKT_05_SRA_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_OR)
SID_ZKT_05_OR:
	li sp, SID_ZKT_05_OR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t6, 0
	csrr a7, time
	csrr s9, cycle
	csrr s6, instret
	li s4, 0x42f
	or t4, t6, s4
	li a4, 0x42f
	or s0, t4, a4
	li t4, 0x5b9
	or s2, s0, t4
	li t3, 0x5be
	or s2, s2, t3
	li t5, 0x73c
	or s4, s2, t5
	li t4, 0x173
	or s2, s4, t4
	li t4, 0xb5
	or t3, s2, t4
	li s2, 0x797
	or s11, t3, s2
	li a5, 0x614
	or a4, s11, a5
	li s5, 0x39c
	or s7, a4, s5
	li a1, 0x3fd
	or s5, s7, a1
	li s11, 0x344
	or t5, s5, s11
	li t2, 0x4d9
	or a2, t5, t2
	li s8, 0x796
	or s7, a2, s8
	li t6, 0x69a
	or s8, s7, t6
	li t1, 0xd0
	or a1, s8, t1
	li t3, 0x425
	or a1, a1, t3
	li s10, 0x452
	or s3, a1, s10
	li s5, 0x6fa
	or s10, s3, s5
	li a0, 0x51d
	or a5, s10, a0
	li s10, 0x3d4
	or a2, a5, s10
	li s5, 0x629
	or s7, a2, s5
	li a5, 0x317
	or s0, s7, a5
	li a5, 0x470
	or t5, s0, a5
	li s8, 0x303
	or s3, t5, s8
	li a3, 0x2e9
	or t5, s3, a3
	li s3, 0x27d
	or t4, t5, s3
	li a5, 0x269
	or a3, t4, a5
	li t6, 0x398
	or s11, a3, t6
	li t4, 0x3cc
	or a5, s11, t4
	li s5, 0x61b
	or s1, a5, s5
	li t3, 0x5e3
	or s0, s1, t3
	li a0, 0x604
	or s2, s0, a0
	li a5, 0x3bb
	or s10, s2, a5
	li t3, 0x26b
	or a2, s10, t3
	li a5, 0x21c
	or s0, a2, a5
	li t3, 0x3d1
	or a5, s0, t3
	li s1, 0x611
	or t1, a5, s1
	li s5, 0x1fa
	or s0, t1, s5
	li a6, 0x2a6
	or t4, s0, a6
	li s10, 0x1c2
	or a1, t4, s10
	li s8, 0x73e
	or t1, a1, s8
	li a5, 0x54a
	or s2, t1, a5
	li s7, 0x430
	or a5, s2, s7
	li a6, 0x44f
	or s8, a5, a6
	li s0, 0x477
	or a0, s8, s0
	li s4, 0x36f
	or t1, a0, s4
	li t4, 0x26f
	or a4, t1, t4
	li s5, 0x692
	or a1, a4, s5
	li t6, 0xee
	or a6, a1, t6
	li s7, 0x466
	or a4, a6, s7
	li t1, 0x60
	or t1, a4, t1
	li s3, 0x2a4
	or s8, t1, s3
	li t6, 0x318
	or s4, s8, t6
	li t5, 0x7a8
	or t1, s4, t5
	li t2, 0x6ee
	or s3, t1, t2
	li s7, 0x55b
	or s8, s3, s7
	li s7, 0x3c8
	or s1, s8, s7
	li s0, 0xdb
	or s3, s1, s0
	li t3, 0x67f
	or a6, s3, t3
	li s10, 0x98
	or t4, a6, s10
	li a6, 0x100
	or a5, t4, a6
	li a4, 0x7bc
	or a5, a5, a4
	li t2, 0x7c4
	or s4, a5, t2
	li a5, 0x3be
	or a0, s4, a5
	li s11, 0x2af
	or t3, a0, s11
	li s7, 0x24a
	or s1, t3, s7
	li s8, 0x318
	or a4, s1, s8
	li s2, 0x83
	or s11, a4, s2
	li a3, 0x2f5
	or s10, s11, a3
	li t6, 0x1a2
	or t2, s10, t6
	li s5, 0x3ef
	or s10, t2, s5
	li s5, 0x7ab
	or t4, s10, s5
	li a5, 0x8a
	or s5, t4, a5
	li a1, 0xa5
	or s0, s5, a1
	li t6, 0x3a2
	or a0, s0, t6
	li a2, 0x2ed
	or s1, a0, a2
	li t5, 0x7e0
	or a5, s1, t5
	li s5, 0x6d2
	or s8, a5, s5
	li s1, 0x62a
	or t6, s8, s1
	li t3, 0x2aa
	or t4, t6, t3
	li a5, 0x552
	or s3, t4, a5
	li s0, 0x26d
	or s3, s3, s0
	li a4, 0x6be
	or s7, s3, a4
	li s10, 0xf9
	or a0, s7, s10
	li s7, 0x777
	or s3, a0, s7
	li a1, 0x765
	or s4, s3, a1
	li a6, 0x608
	or a0, s4, a6
	li s0, 0x316
	or a2, a0, s0
	li a3, 0x667
	or t5, a2, a3
	li t1, 0x74
	or s1, t5, t1
	li s4, 0x6d4
	or s4, s1, s4
	li t5, 0x1c2
	or s8, s4, t5
	li s2, 0x61c
	or t2, s8, s2
	li a0, 0x574
	or t6, t2, a0
	li a1, 0x3b8
	or a3, t6, a1
	li s2, 0x5cc
	or a6, a3, s2
	li s0, 0x7c1
	or a0, a6, s0
	li s1, 0x3cf
	or s1, a0, s1
	li t3, 0x752
	or t3, s1, t3
	csrr s3, time
	csrr s1, cycle
	csrr s5, instret
	sub s11, s3, a7
	sub t5, s1, s9
	sub a4, s5, s6
	li s3, 0
	csrr t2, time
	csrr s2, cycle
	csrr t3, instret
	li s6, 0xf5
	or s9, s3, s6
	li t6, 0x24f
	or t1, s9, t6
	li s8, 0x2e1
	or s3, t1, s8
	li a5, 0x6dc
	or a3, s3, a5
	li t6, 0x1fa
	or s3, a3, t6
	li a5, 0xe8
	or s9, s3, a5
	li a3, 0x3da
	or s5, s9, a3
	li a0, 0x142
	or a4, s5, a0
	li a5, 0x37f
	or a5, a4, a5
	li s0, 0x6f
	or s1, a5, s0
	li t1, 0x5e
	or a2, s1, t1
	li s11, 0x36
	or s6, a2, s11
	li s4, 0x4c
	or a5, s6, s4
	li a0, 0xc5
	or s5, a5, a0
	li s4, 0x239
	or a3, s5, s4
	li s6, 0x589
	or a4, a3, s6
	li s5, 0x4ec
	or a2, a4, s5
	li s5, 0xd7
	or t6, a2, s5
	li s11, 0x1ac
	or s8, t6, s11
	li s6, 0x715
	or t1, s8, s6
	li t6, 0xcc
	or s8, t1, t6
	li s11, 0x65b
	or a7, s8, s11
	li t5, 0x763
	or s3, a7, t5
	li a6, 0x218
	or s7, s3, a6
	li a2, 0x49d
	or a5, s7, a2
	li a0, 0x25
	or s8, a5, a0
	li a0, 0x7ed
	or a0, s8, a0
	li a1, 0x4ff
	or s0, a0, a1
	li t6, 0x41e
	or a4, s0, t6
	li a2, 0x690
	or s3, a4, a2
	li a6, 0x453
	or a3, s3, a6
	li s0, 0x403
	or a6, a3, s0
	li s11, 0xb1
	or s8, a6, s11
	li a3, 0x254
	or a5, s8, a3
	li t1, 0x4ec
	or s5, a5, t1
	li a2, 0x750
	or s1, s5, a2
	li s4, 0x158
	or a6, s1, s4
	li s0, 0x5e1
	or s11, a6, s0
	li s9, 0x59b
	or s1, s11, s9
	li a3, 0x3b3
	or t5, s1, a3
	li a6, 0x116
	or a0, t5, a6
	li s6, 0x17f
	or s6, a0, s6
	li s0, 0x5e9
	or a7, s6, s0
	li s3, 0x5e9
	or a4, a7, s3
	li s9, 0x4cc
	or s5, a4, s9
	li t6, 0x50b
	or a7, s5, t6
	li s8, 0x570
	or a4, a7, s8
	li s9, 0x19f
	or a3, a4, s9
	li t5, 0x188
	or a4, a3, t5
	li s11, 0x7e6
	or s11, a4, s11
	li a5, 0x64d
	or a1, s11, a5
	li s3, 0x32d
	or s3, a1, s3
	li a6, 0x487
	or s4, s3, a6
	li s10, 0x3a6
	or s5, s4, s10
	li a0, 0x541
	or s1, s5, a0
	li t6, 0x7f6
	or s0, s1, t6
	li s10, 0x4ef
	or t4, s0, s10
	li s5, 0x570
	or a0, t4, s5
	li a6, 0xbc
	or t1, a0, a6
	li s10, 0x90
	or s11, t1, s10
	li a1, 0x562
	or a3, s11, a1
	li a0, 0x10a
	or s4, a3, a0
	li s9, 0x3d7
	or t1, s4, s9
	li a0, 0x759
	or s5, t1, a0
	li a4, 0x2c5
	or a3, s5, a4
	li s5, 0x7c9
	or a2, a3, s5
	li s11, 0x219
	or s1, a2, s11
	li s10, 0x45
	or a4, s1, s10
	li s0, 0x21a
	or s7, a4, s0
	li a2, 0x187
	or s9, s7, a2
	li a4, 0x731
	or t5, s9, a4
	li a6, 0x4f5
	or a7, t5, a6
	li s0, 0x439
	or a7, a7, s0
	li a0, 0x16d
	or a6, a7, a0
	li s8, 0x42d
	or s9, a6, s8
	li s0, 0x482
	or s9, s9, s0
	li s10, 0x416
	or s10, s9, s10
	li s7, 0x14e
	or s9, s10, s7
	li a0, 0x3b9
	or a2, s9, a0
	li s0, 0x144
	or s8, a2, s0
	li s1, 0x472
	or a5, s8, s1
	li s5, 0x6c9
	or a4, a5, s5
	li s0, 0x377
	or s9, a4, s0
	li t1, 0x58c
	or s6, s9, t1
	li s11, 0x357
	or s6, s6, s11
	li s0, 0x133
	or s10, s6, s0
	li a3, 0x49a
	or a4, s10, a3
	li s6, 0x778
	or s7, a4, s6
	li a2, 0x71b
	or a4, s7, a2
	li a5, 0x1e3
	or a2, a4, a5
	li s8, 0x3
	or a2, a2, s8
	li a5, 0x257
	or s7, a2, a5
	li s6, 0x48f
	or s0, s7, s6
	li s1, 0x568
	or s8, s0, s1
	li a2, 0x47
	or s6, s8, a2
	li t4, 0x4d6
	or t5, s6, t4
	li s11, 0x7b
	or t1, t5, s11
	li a3, 0x164
	or a7, t1, a3
	li s3, 0x33a
	or s10, a7, s3
	li t5, 0x391
	or s7, s10, t5
	csrr a3, time
	csrr s5, cycle
	csrr s4, instret
	sub a0, a3, t2
	sub t5, s5, s2
	sub s4, s4, t3
	li t3, 0
	csrr s7, time
	csrr a3, cycle
	csrr s2, instret
	li a7, 0x129
	or a5, t3, a7
	li s3, 0x54f
	or s0, a5, s3
	li s8, 0x787
	or s11, s0, s8
	li a2, 0x423
	or a2, s11, a2
	li s11, 0x4fe
	or t2, a2, s11
	li a5, 0x1c1
	or s3, t2, a5
	li a6, 0x5d8
	or t3, s3, a6
	li s10, 0x471
	or s10, t3, s10
	li s6, 0x6ed
	or s9, s10, s6
	li s8, 0x3c0
	or a0, s9, s8
	li s11, 0x198
	or s0, a0, s11
	li a6, 0xd7
	or a5, s0, a6
	li s5, 0x106
	or a6, a5, s5
	li s11, 0x464
	or s6, a6, s11
	li a7, 0x704
	or s11, s6, a7
	li a0, 0xe0
	or a7, s11, a0
	li s9, 0x54f
	or s8, a7, s9
	li s11, 0x212
	or s1, s8, s11
	li s0, 0x262
	or t6, s1, s0
	li s6, 0x798
	or s10, t6, s6
	li s5, 0x66f
	or s11, s10, s5
	li a6, 0x38
	or s6, s11, a6
	li t2, 0x787
	or a2, s6, t2
	li s5, 0x463
	or s8, a2, s5
	li a4, 0x562
	or s0, s8, a4
	li s6, 0x4a5
	or a7, s0, s6
	li t2, 0x2dc
	or t4, a7, t2
	li s8, 0x65a
	or a7, t4, s8
	li s8, 0x28a
	or a0, a7, s8
	li t6, 0x565
	or t6, a0, t6
	li s10, 0x5dd
	or t6, t6, s10
	li s0, 0x248
	or t3, t6, s0
	li s9, 0x6e1
	or a2, t3, s9
	li t4, 0x753
	or a1, a2, t4
	li s10, 0x732
	or s0, a1, s10
	li t3, 0x42c
	or t4, s0, t3
	li s11, 0x435
	or a1, t4, s11
	li t3, 0x46
	or s5, a1, t3
	li t1, 0x780
	or a2, s5, t1
	li a0, 0x2a0
	or s5, a2, a0
	li a1, 0x29
	or s3, s5, a1
	li s1, 0xd
	or s11, s3, s1
	li s10, 0x318
	or a4, s11, s10
	li a2, 0x3b0
	or a2, a4, a2
	li s8, 0x169
	or a7, a2, s8
	li a6, 0x56e
	or a2, a7, a6
	li t3, 0x4f3
	or s0, a2, t3
	li a5, 0x4d7
	or t1, s0, a5
	li s8, 0x30b
	or s11, t1, s8
	li t4, 0x1bc
	or s1, s11, t4
	li s6, 0x48d
	or s11, s1, s6
	li a6, 0x10
	or s9, s11, a6
	li t2, 0x5c3
	or t3, s9, t2
	li a4, 0x7d1
	or s3, t3, a4
	li s8, 0x611
	or t3, s3, s8
	li s1, 0x19a
	or s0, t3, s1
	li a5, 0x5f4
	or a7, s0, a5
	li s11, 0x573
	or s9, a7, s11
	li a6, 0x12f
	or a0, s9, a6
	li s10, 0x3ea
	or t3, a0, s10
	li s3, 0x779
	or s5, t3, s3
	li a6, 0x532
	or a2, s5, a6
	li s10, 0x71
	or t3, a2, s10
	li s8, 0x2ef
	or t2, t3, s8
	li s11, 0x322
	or a5, t2, s11
	li a0, 0x34c
	or a4, a5, a0
	li s8, 0x164
	or t1, a4, s8
	li a5, 0x7b0
	or s8, t1, a5
	li s11, 0x3d6
	or a6, s8, s11
	li s0, 0x61a
	or s6, a6, s0
	li a0, 0x583
	or a1, s6, a0
	li a2, 0x149
	or t4, a1, a2
	li a6, 0x167
	or s5, t4, a6
	li a2, 0x437
	or a2, s5, a2
	li a6, 0x4f1
	or a1, a2, a6
	li s1, 0x785
	or a4, a1, s1
	li a7, 0x684
	or s1, a4, a7
	li a6, 0x6b0
	or s6, s1, a6
	li s9, 0x16b
	or s6, s6, s9
	li t4, 0x3b9
	or s6, s6, t4
	li a6, 0x727
	or t2, s6, a6
	li s11, 0x5a5
	or s0, t2, s11
	li a2, 0x73a
	or s9, s0, a2
	li s3, 0xf0
	or a7, s9, s3
	li a5, 0x4f4
	or a2, a7, a5
	li t1, 0x472
	or a4, a2, t1
	li a7, 0x79f
	or s1, a4, a7
	li a4, 0x51e
	or t3, s1, a4
	li s0, 0x1b3
	or s5, t3, s0
	li a6, 0x2b
	or s11, s5, a6
	li t3, 0x48f
	or a4, s11, t3
	li s5, 0x214
	or a4, a4, s5
	li t3, 0x3b
	or s3, a4, t3
	li t6, 0x2eb
	or t4, s3, t6
	li a7, 0x7ee
	or s5, t4, a7
	li s11, 0x521
	or s5, s5, s11
	li s1, 0x752
	or s5, s5, s1
	li a1, 0xb5
	or t2, s5, a1
	li a2, 0x285
	or s1, t2, a2
	li s3, 0x35e
	or a2, s1, s3
	csrr a5, time
	csrr s5, cycle
	csrr a1, instret
	sub t4, a5, s7
	sub t2, s5, a3
	sub s6, a1, s2
	beq t5, t2, pass_label_45
	li a2, failed_addr
	ld s3, 0(a2)
	jr s3
pass_label_45:
	beq s4, s6, pass_label_46
	li a1, failed_addr
	ld t3, 0(a1)
	jr t3
pass_label_46:
SID_ZKT_05_OR_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_AND)
SID_ZKT_05_AND:
	li sp, SID_ZKT_05_AND_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t6, 0
	csrr t1, time
	csrr a7, cycle
	csrr a3, instret
	li s3, 0x4d5
	and s8, t6, s3
	li s4, 0x7b4
	and t5, s8, s4
	li s11, 0x677
	and s1, t5, s11
	li s8, 0x41f
	and a6, s1, s8
	li s2, 0x7a4
	and t6, a6, s2
	li a0, 0x55
	and t6, t6, a0
	li a6, 0x12
	and s9, t6, a6
	li a0, 0x2d5
	and s6, s9, a0
	li s4, 0x304
	and s0, s6, s4
	li t4, 0xcd
	and s9, s0, t4
	li s0, 0x192
	and s1, s9, s0
	li a4, 0x2cc
	and t6, s1, a4
	li t2, 0x17e
	and t4, t6, t2
	li a4, 0x59
	and t6, t4, a4
	li s11, 0xd4
	and s1, t6, s11
	li s11, 0x490
	and a1, s1, s11
	li s8, 0x23
	and a5, a1, s8
	li a6, 0x528
	and t5, a5, a6
	li t2, 0x442
	and a5, t5, t2
	li t4, 0x609
	and t6, a5, t4
	li a0, 0x3d0
	and a4, t6, a0
	li s6, 0x61e
	and s7, a4, s6
	li a2, 0x630
	and s3, s7, a2
	li s8, 0x667
	and s0, s3, s8
	li s1, 0x7b0
	and s3, s0, s1
	li s9, 0x556
	and a4, s3, s9
	li t4, 0x766
	and t2, a4, t4
	li s0, 0x29
	and s7, t2, s0
	li a0, 0x76c
	and s8, s7, a0
	li s5, 0x686
	and s7, s8, s5
	li s3, 0x61e
	and s0, s7, s3
	li s5, 0x45a
	and t3, s0, s5
	li s11, 0x1d0
	and s0, t3, s11
	li s11, 0x3a7
	and a4, s0, s11
	li s8, 0x7e3
	and a0, a4, s8
	li s10, 0x530
	and a1, a0, s10
	li s4, 0x157
	and a0, a1, s4
	li s11, 0x22b
	and a0, a0, s11
	li t2, 0x316
	and t6, a0, t2
	li s10, 0xc8
	and s3, t6, s10
	li a2, 0xc9
	and s4, s3, a2
	li a6, 0x7b5
	and t6, s4, a6
	li s0, 0x67
	and t4, t6, s0
	li s6, 0x4bf
	and s6, t4, s6
	li s9, 0xf4
	and s0, s6, s9
	li a6, 0x47c
	and a4, s0, a6
	li t2, 0x289
	and s5, a4, t2
	li a5, 0x1ef
	and t4, s5, a5
	li s4, 0x408
	and a4, t4, s4
	li a2, 0x1c2
	and s4, a4, a2
	li t2, 0x773
	and t4, s4, t2
	li s3, 0x3b0
	and s10, t4, s3
	li a2, 0x6ce
	and s3, s10, a2
	li t6, 0x3c2
	and a5, s3, t6
	li t3, 0x134
	and t6, a5, t3
	li s11, 0x2b0
	and s10, t6, s11
	li s9, 0x704
	and s10, s10, s9
	li s5, 0x71
	and a4, s10, s5
	li s4, 0x7c7
	and s11, a4, s4
	li s0, 0x377
	and s1, s11, s0
	li s10, 0xe5
	and a6, s1, s10
	li t5, 0x7ca
	and s8, a6, t5
	li s7, 0x1c3
	and a4, s8, s7
	li s5, 0xd4
	and t3, a4, s5
	li a1, 0x5bd
	and a1, t3, a1
	li s9, 0x28a
	and t5, a1, s9
	li s10, 0x7ef
	and s11, t5, s10
	li a4, 0x715
	and t3, s11, a4
	li s5, 0x105
	and a1, t3, s5
	li s10, 0x319
	and t2, a1, s10
	li t5, 0x52d
	and t6, t2, t5
	li t2, 0x5df
	and s6, t6, t2
	li t2, 0x5a7
	and s5, s6, t2
	li s7, 0x7ca
	and s1, s5, s7
	li s3, 0x3dc
	and t3, s1, s3
	li s8, 0x53
	and t4, t3, s8
	li t3, 0x23c
	and t3, t4, t3
	li t5, 0x78a
	and s6, t3, t5
	li s11, 0xa0
	and a4, s6, s11
	li s3, 0x641
	and a1, a4, s3
	li s6, 0x1c6
	and a6, a1, s6
	li s7, 0xce
	and s5, a6, s7
	li s8, 0x25f
	and a2, s5, s8
	li s9, 0x172
	and a2, a2, s9
	li a1, 0x7c2
	and t3, a2, a1
	li s2, 0x6bc
	and s11, t3, s2
	li s2, 0x89
	and a4, s11, s2
	li t5, 0x50e
	and a4, a4, t5
	li s2, 0x46
	and s7, a4, s2
	li s4, 0x42d
	and s1, s7, s4
	li s11, 0x72
	and s11, s1, s11
	li s5, 0x19a
	and t3, s11, s5
	li s11, 0x2c6
	and a4, t3, s11
	li s1, 0x8e
	and a2, a4, s1
	li s4, 0x4a6
	and s1, a2, s4
	li s10, 0x37f
	and t3, s1, s10
	li a0, 0x607
	and s4, t3, a0
	li t3, 0x58f
	and s6, s4, t3
	li s4, 0x72c
	and a6, s6, s4
	li s1, 0x77f
	and s8, a6, s1
	csrr s7, time
	csrr t6, cycle
	csrr s0, instret
	sub t5, s7, t1
	sub t5, t6, a7
	sub a4, s0, a3
	li a1, 0
	csrr s2, time
	csrr t6, cycle
	csrr a0, instret
	li a5, 0x470
	and a4, a1, a5
	li s5, 0x675
	and s6, a4, s5
	li s5, 0x44a
	and t4, s6, s5
	li s4, 0x3aa
	and t2, t4, s4
	li a4, 0x1d8
	and t1, t2, a4
	li s11, 0x7e6
	and a2, t1, s11
	li a4, 0x4b1
	and t5, a2, a4
	li s7, 0x524
	and t4, t5, s7
	li a6, 0x84
	and t2, t4, a6
	li s5, 0x3e
	and t3, t2, s5
	li s1, 0x282
	and s10, t3, s1
	li t3, 0x6c4
	and s3, s10, t3
	li s9, 0x48
	and t2, s3, s9
	li s11, 0x667
	and a3, t2, s11
	li a2, 0x519
	and t2, a3, a2
	li s1, 0x5d3
	and s11, t2, s1
	li t2, 0x21b
	and a1, s11, t2
	li t4, 0xa6
	and s1, a1, t4
	li t5, 0x1d9
	and a3, s1, t5
	li s11, 0x64d
	and s11, a3, s11
	li s5, 0x5e3
	and a5, s11, s5
	li s1, 0x39f
	and s0, a5, s1
	li a7, 0x2cc
	and s10, s0, a7
	li a3, 0x24b
	and s11, s10, a3
	li a6, 0x799
	and t4, s11, a6
	li s10, 0x499
	and s1, t4, s10
	li a1, 0x5a9
	and s8, s1, a1
	li s11, 0x268
	and s5, s8, s11
	li a2, 0x599
	and s1, s5, a2
	li s3, 0x227
	and t5, s1, s3
	li s5, 0x4aa
	and s3, t5, s5
	li t3, 0x3df
	and t5, s3, t3
	li a2, 0x4a9
	and s11, t5, a2
	li t2, 0x42e
	and a3, s11, t2
	li a2, 0x4c3
	and s6, a3, a2
	li a6, 0x240
	and a7, s6, a6
	li s11, 0x78d
	and s7, a7, s11
	li s3, 0x42d
	and t5, s7, s3
	li a5, 0xab
	and a1, t5, a5
	li t2, 0x552
	and s10, a1, t2
	li a7, 0x2c9
	and t3, s10, a7
	li a1, 0x290
	and s0, t3, a1
	li a7, 0x790
	and t2, s0, a7
	li s0, 0x5ee
	and a7, t2, s0
	li a1, 0x67b
	and s3, a7, a1
	li s11, 0x508
	and a5, s3, s11
	li a1, 0x328
	and s11, a5, a1
	li s4, 0x86
	and s10, s11, s4
	li t4, 0x4b8
	and s3, s10, t4
	li s9, 0x1b
	and s0, s3, s9
	li t3, 0x170
	and s0, s0, t3
	li t1, 0x49
	and a5, s0, t1
	li s9, 0xa2
	and a5, a5, s9
	li t4, 0x113
	and a3, a5, t4
	li s7, 0x326
	and a5, a3, s7
	li t1, 0x398
	and s1, a5, t1
	li a1, 0x6af
	and a3, s1, a1
	li a1, 0x66f
	and s5, a3, a1
	li s1, 0x2b7
	and a4, s5, s1
	li a3, 0x6f4
	and s0, a4, a3
	li s1, 0x1c6
	and a3, s0, s1
	li a1, 0xd5
	and t3, a3, a1
	li t4, 0x656
	and a1, t3, t4
	li a3, 0x72f
	and s0, a1, a3
	li s5, 0x1d5
	and s5, s0, s5
	li s6, 0x128
	and t2, s5, s6
	li s6, 0x4a2
	and s7, t2, s6
	li a6, 0x521
	and s7, s7, a6
	li t1, 0x5e
	and s0, s7, t1
	li s11, 0x2ae
	and a5, s0, s11
	li a6, 0x7b9
	and s10, a5, a6
	li a6, 0x1d6
	and s7, s10, a6
	li s11, 0x7a0
	and s3, s7, s11
	li s11, 0x590
	and s7, s3, s11
	li s1, 0x7be
	and s11, s7, s1
	li s8, 0x328
	and s9, s11, s8
	li s1, 0xf0
	and a3, s9, s1
	li a5, 0x37c
	and a1, a3, a5
	li a3, 0x293
	and a2, a1, a3
	li s10, 0x78
	and s1, a2, s10
	li a6, 0x212
	and t3, s1, a6
	li s3, 0x796
	and s6, t3, s3
	li s4, 0x431
	and t2, s6, s4
	li a2, 0xec
	and a1, t2, a2
	li a6, 0x192
	and s0, a1, a6
	li s1, 0x13f
	and t3, s0, s1
	li s9, 0x50
	and s6, t3, s9
	li s4, 0x7d3
	and t4, s6, s4
	li s3, 0x33c
	and s8, t4, s3
	li s9, 0x206
	and s5, s8, s9
	li a7, 0x574
	and s6, s5, a7
	li t2, 0x35f
	and t4, s6, t2
	li s5, 0x4d3
	and t3, t4, s5
	li a3, 0x686
	and a2, t3, a3
	li a5, 0x14a
	and a1, a2, a5
	li a2, 0x482
	and s10, a1, a2
	li t4, 0x108
	and s10, s10, t4
	li t3, 0x67e
	and s5, s10, t3
	li t4, 0x226
	and a6, s5, t4
	li t1, 0x493
	and t1, a6, t1
	csrr t2, time
	csrr s9, cycle
	csrr s5, instret
	sub s11, t2, s2
	sub a2, s9, t6
	sub t6, s5, a0
	li t3, 0
	csrr t5, time
	csrr s6, cycle
	csrr a0, instret
	li s10, 0x29
	and a7, t3, s10
	li t1, 0x428
	and a4, a7, t1
	li s3, 0x2dc
	and a7, a4, s3
	li t3, 0x2ea
	and a7, a7, t3
	li s0, 0x97
	and t2, a7, s0
	li s10, 0x3a1
	and s9, t2, s10
	li s5, 0x77b
	and a5, s9, s5
	li s4, 0x177
	and s3, a5, s4
	li s8, 0x4fd
	and s1, s3, s8
	li a3, 0x31f
	and s2, s1, a3
	li s0, 0x7f9
	and s0, s2, s0
	li t1, 0x750
	and t3, s0, t1
	li a7, 0x213
	and s11, t3, a7
	li t1, 0x23e
	and s8, s11, t1
	li s1, 0x7c6
	and s4, s8, s1
	li s11, 0x6ca
	and s0, s4, s11
	li t4, 0x29a
	and s11, s0, t4
	li t3, 0x53e
	and s2, s11, t3
	li t2, 0x6ab
	and s10, s2, t2
	li a4, 0x3c0
	and a3, s10, a4
	li s1, 0x1b0
	and s1, a3, s1
	li t3, 0x5a7
	and s10, s1, t3
	li t4, 0xbb
	and s0, s10, t4
	li a7, 0x2d6
	and t3, s0, a7
	li s5, 0x3c6
	and s3, t3, s5
	li t1, 0x58b
	and s2, s3, t1
	li a4, 0x6aa
	and s11, s2, a4
	li t2, 0x2fe
	and s3, s11, t2
	li a5, 0x243
	and s4, s3, a5
	li t3, 0x799
	and s8, s4, t3
	li s4, 0x4e2
	and s0, s8, s4
	li s4, 0x111
	and t2, s0, s4
	li s5, 0x269
	and a3, t2, s5
	li a1, 0x582
	and s2, a3, a1
	li s11, 0x58e
	and s3, s2, s11
	li t1, 0x17
	and s1, s3, t1
	li s3, 0x35a
	and s0, s1, s3
	li t4, 0x77c
	and s9, s0, t4
	li t2, 0xd0
	and s9, s9, t2
	li s5, 0x5dc
	and s4, s9, s5
	li s0, 0x70b
	and s2, s4, s0
	li s11, 0x7ab
	and t4, s2, s11
	li s9, 0x4b5
	and s7, t4, s9
	li s10, 0x5e0
	and s1, s7, s10
	li a7, 0x756
	and s0, s1, a7
	li s11, 0x684
	and s8, s0, s11
	li s1, 0x8f
	and s5, s8, s1
	li t3, 0x53e
	and t3, s5, t3
	li s10, 0x4dd
	and s11, t3, s10
	li s7, 0x7ee
	and a3, s11, s7
	li s5, 0x397
	and a1, a3, s5
	li a5, 0x733
	and s5, a1, a5
	li t3, 0x406
	and s11, s5, t3
	li a7, 0x49b
	and a7, s11, a7
	li t4, 0x6b0
	and t3, a7, t4
	li t4, 0x3a1
	and s0, t3, t4
	li a6, 0x74c
	and s1, s0, a6
	li s4, 0x76c
	and a3, s1, s4
	li t3, 0x19c
	and s2, a3, t3
	li a5, 0x776
	and a5, s2, a5
	li a6, 0x76f
	and s8, a5, a6
	li s1, 0x232
	and s11, s8, s1
	li s5, 0x414
	and s7, s11, s5
	li s10, 0x237
	and t4, s7, s10
	li t2, 0x7b1
	and a6, t4, t2
	li a4, 0x604
	and s7, a6, a4
	li a6, 0x418
	and a7, s7, a6
	li s11, 0x384
	and a5, a7, s11
	li t3, 0x19a
	and s10, a5, t3
	li s0, 0x214
	and a3, s10, s0
	li t3, 0x7b0
	and a6, a3, t3
	li s11, 0x3ca
	and a4, a6, s11
	li s4, 0x565
	and a6, a4, s4
	li a3, 0xbc
	and t2, a6, a3
	li t4, 0x118
	and t3, t2, t4
	li t4, 0x179
	and a3, t3, t4
	li a4, 0x466
	and s11, a3, a4
	li a5, 0x1ec
	and s2, s11, a5
	li a5, 0x2bc
	and s4, s2, a5
	li t1, 0x525
	and s11, s4, t1
	li t1, 0x231
	and s0, s11, t1
	li s8, 0x112
	and t3, s0, s8
	li s10, 0x6a9
	and s2, t3, s10
	li s3, 0x88
	and t2, s2, s3
	li a4, 0x7f6
	and t2, t2, a4
	li s7, 0x40c
	and s11, t2, s7
	li a6, 0x637
	and t3, s11, a6
	li a4, 0x11a
	and t4, t3, a4
	li s5, 0x740
	and s7, t4, s5
	li s4, 0x6db
	and s4, s7, s4
	li t3, 0x530
	and a7, s4, t3
	li s1, 0x13f
	and a3, a7, s1
	li s1, 0x480
	and a6, a3, s1
	li s4, 0x700
	and s1, a6, s4
	li s11, 0x35b
	and a6, s1, s11
	li t3, 0x686
	and s7, a6, t3
	li t4, 0x3b
	and s8, s7, t4
	li s2, 0x117
	and s4, s8, s2
	li t3, 0x10d
	and a5, s4, t3
	li s2, 0x56a
	and t4, a5, s2
	csrr a3, time
	csrr a5, cycle
	csrr s9, instret
	sub s11, a3, t5
	sub a5, a5, s6
	sub s4, s9, a0
	beq a2, a5, pass_label_47
	li s0, failed_addr
	ld a5, 0(s0)
	jr a5
pass_label_47:
	beq t6, s4, pass_label_48
	li s8, failed_addr
	ld a2, 0(s8)
	jr a2
pass_label_48:
SID_ZKT_05_AND_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_ADDW)
SID_ZKT_05_ADDW:
	li sp, SID_ZKT_05_ADDW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t3, 0
	csrr s1, time
	csrr s6, cycle
	csrr a4, instret
	li a2, 0x2fe
	addw s5, t3, a2
	li s7, 0x58f
	addw a5, s5, s7
	li a0, 0x103
	addw a3, a5, a0
	li s9, 0x768
	addw a0, a3, s9
	li s5, 0xed
	addw a2, a0, s5
	li t1, 0x23c
	addw a2, a2, t1
	li s3, 0x429
	addw t1, a2, s3
	li a6, 0x64a
	addw a0, t1, a6
	li t4, 0x1a4
	addw s2, a0, t4
	li t1, 0x340
	addw s10, s2, t1
	li s2, 0x116
	addw s3, s10, s2
	li a0, 0x46c
	addw a3, s3, a0
	li a2, 0x601
	addw s0, a3, a2
	li s3, 0x271
	addw s10, s0, s3
	li a3, 0x28e
	addw s5, s10, a3
	li a6, 0x7e4
	addw t4, s5, a6
	li s0, 0x7db
	addw a0, t4, s0
	li s8, 0x43a
	addw s5, a0, s8
	li t6, 0x487
	addw a5, s5, t6
	li s2, 0x625
	addw s9, a5, s2
	li s2, 0x72b
	addw s2, s9, s2
	li a1, 0x11e
	addw s10, s2, a1
	li a1, 0x4c1
	addw t4, s10, a1
	li t6, 0x8e
	addw a1, t4, t6
	li a7, 0x1b0
	addw s9, a1, a7
	li t4, 0x2f4
	addw a5, s9, t4
	li t5, 0x782
	addw s3, a5, t5
	li a2, 0x6cb
	addw s7, s3, a2
	li t2, 0x3cd
	addw a6, s7, t2
	li s4, 0x5cb
	addw s9, a6, s4
	li s7, 0x551
	addw s2, s9, s7
	li s10, 0xc4
	addw s11, s2, s10
	li s0, 0x597
	addw s11, s11, s0
	li t1, 0x64
	addw s10, s11, t1
	li s2, 0x7b5
	addw a2, s10, s2
	li t6, 0x4e5
	addw s11, a2, t6
	li a5, 0x79
	addw s11, s11, a5
	li t3, 0x559
	addw s7, s11, t3
	li s10, 0x7b7
	addw a7, s7, s10
	li a6, 0x30a
	addw t2, a7, a6
	li a6, 0x166
	addw t4, t2, a6
	li s11, 0x204
	addw s2, t4, s11
	li s4, 0x404
	addw s0, s2, s4
	li s9, 0x620
	addw a5, s0, s9
	li s3, 0x3ff
	addw a6, a5, s3
	li a0, 0x431
	addw t3, a6, a0
	li t2, 0x6f7
	addw s0, t3, t2
	li t2, 0x5cd
	addw a2, s0, t2
	li t6, 0x702
	addw s9, a2, t6
	li t1, 0x4b1
	addw s2, s9, t1
	li t3, 0x7bb
	addw a3, s2, t3
	li s0, 0x15e
	addw s9, a3, s0
	li a0, 0x7a0
	addw s11, s9, a0
	li a7, 0x308
	addw a3, s11, a7
	li a6, 0x541
	addw s10, a3, a6
	li t3, 0x6b4
	addw a7, s10, t3
	li t2, 0x6b2
	addw t4, a7, t2
	li a7, 0x455
	addw s9, t4, a7
	li a5, 0x771
	addw s3, s9, a5
	li s5, 0x11d
	addw t5, s3, s5
	li s3, 0x647
	addw t1, t5, s3
	li t6, 0x679
	addw s10, t1, t6
	li t4, 0x6de
	addw a0, s10, t4
	li t4, 0xfa
	addw s0, a0, t4
	li s8, 0x385
	addw t5, s0, s8
	li s9, 0x106
	addw s10, t5, s9
	li s0, 0x796
	addw s7, s10, s0
	li a7, 0x7db
	addw s8, s7, a7
	li s0, 0x70f
	addw t5, s8, s0
	li s11, 0x70
	addw s2, t5, s11
	li a5, 0xa1
	addw s11, s2, a5
	li a7, 0x5fb
	addw a2, s11, a7
	li s11, 0x3b6
	addw t2, a2, s11
	li s7, 0x120
	addw s0, t2, s7
	li a6, 0x1bc
	addw s11, s0, a6
	li s9, 0x45b
	addw a1, s11, s9
	li t2, 0x15f
	addw s9, a1, t2
	li s10, 0xbb
	addw a3, s9, s10
	li a2, 0x179
	addw s2, a3, a2
	li a1, 0x27b
	addw s10, s2, a1
	li s2, 0x207
	addw s8, s10, s2
	li a2, 0x69b
	addw t1, s8, a2
	li a6, 0x58e
	addw t1, t1, a6
	li a0, 0x5d3
	addw s11, t1, a0
	li s0, 0x5e6
	addw t6, s11, s0
	li t4, 0x388
	addw t1, t6, t4
	li a2, 0x3ba
	addw t4, t1, a2
	li a6, 0x4bb
	addw t1, t4, a6
	li s10, 0x78c
	addw s2, t1, s10
	li a5, 0x402
	addw s9, s2, a5
	li t6, 0x4fc
	addw s11, s9, t6
	li s8, 0x70
	addw s9, s11, s8
	li t5, 0x4e9
	addw a2, s9, t5
	li s5, 0x402
	addw s9, a2, s5
	li s7, 0x257
	addw s4, s9, s7
	li t2, 0x29b
	addw t5, s4, t2
	li t4, 0x142
	addw t1, t5, t4
	li t4, 0x50c
	addw s2, t1, t4
	li s0, 0x3d9
	addw s0, s2, s0
	li t3, 0x20c
	addw t1, s0, t3
	csrr s3, time
	csrr s9, cycle
	csrr a3, instret
	sub t5, s3, s1
	sub a0, s9, s6
	sub s2, a3, a4
	li a5, 0
	csrr s7, time
	csrr t5, cycle
	csrr a0, instret
	li s10, 0x1de
	addw a5, a5, s10
	li s8, 0x399
	addw a2, a5, s8
	li a6, 0x5d2
	addw a3, a2, a6
	li a2, 0x2c7
	addw s11, a3, a2
	li s5, 0x59
	addw t2, s11, s5
	li s8, 0x539
	addw a7, t2, s8
	li a6, 0x329
	addw s5, a7, a6
	li t4, 0x279
	addw t4, s5, t4
	li s2, 0x248
	addw a6, t4, s2
	li t3, 0x427
	addw a6, a6, t3
	li a1, 0x327
	addw a7, a6, a1
	li t6, 0x49a
	addw a3, a7, t6
	li t4, 0x73e
	addw a1, a3, t4
	li s6, 0x2ba
	addw a3, a1, s6
	li s9, 0x3f0
	addw a6, a3, s9
	li s9, 0x777
	addw s1, a6, s9
	li s11, 0x1d3
	addw s10, s1, s11
	li s2, 0x398
	addw s11, s10, s2
	li a7, 0x1b7
	addw t2, s11, a7
	li s9, 0x216
	addw s3, t2, s9
	li s4, 0x5f1
	addw s10, s3, s4
	li s8, 0x2d0
	addw t4, s10, s8
	li t1, 0x71a
	addw s10, t4, t1
	li s3, 0x5e8
	addw a2, s10, s3
	li t4, 0x1de
	addw s8, a2, t4
	li a3, 0x13d
	addw s2, s8, a3
	li s1, 0x1df
	addw a7, s2, s1
	li s9, 0x5a2
	addw a6, a7, s9
	li t6, 0x576
	addw s4, a6, t6
	li s9, 0x4a1
	addw a6, s4, s9
	li a2, 0x79a
	addw t4, a6, a2
	li s6, 0x7cc
	addw a2, t4, s6
	li s8, 0x180
	addw s8, a2, s8
	li a5, 0x3e7
	addw a2, s8, a5
	li t6, 0x71c
	addw s0, a2, t6
	li s9, 0x10a
	addw s0, s0, s9
	li a3, 0x687
	addw t3, s0, a3
	li a2, 0x67c
	addw a6, t3, a2
	li s2, 0x247
	addw a2, a6, s2
	li s9, 0x5ce
	addw s1, a2, s9
	li s10, 0x59d
	addw s0, s1, s10
	li a3, 0x45c
	addw a7, s0, a3
	li a3, 0x110
	addw a6, a7, a3
	li a4, 0x4d7
	addw s2, a6, a4
	li s8, 0x2e6
	addw a4, s2, s8
	li s6, 0x426
	addw a1, a4, s6
	li s11, 0x4af
	addw a5, a1, s11
	li a7, 0x164
	addw a2, a5, a7
	li t3, 0x69a
	addw a2, a2, t3
	li s8, 0x261
	addw a3, a2, s8
	li s0, 0x6ac
	addw s6, a3, s0
	li s10, 0x41a
	addw t3, s6, s10
	li s10, 0x514
	addw s5, t3, s10
	li a6, 0x564
	addw t6, s5, a6
	li a4, 0x6db
	addw t2, t6, a4
	li a4, 0x6a6
	addw s4, t2, a4
	li s1, 0x759
	addw a4, s4, s1
	li a1, 0x360
	addw s5, a4, a1
	li s4, 0x34
	addw a4, s5, s4
	li s9, 0x369
	addw a3, a4, s9
	li s8, 0x79a
	addw a6, a3, s8
	li s9, 0x2bb
	addw t3, a6, s9
	li s2, 0x29b
	addw t4, t3, s2
	li a6, 0x606
	addw s2, t4, a6
	li a5, 0x387
	addw a2, s2, a5
	li s5, 0x24a
	addw s11, a2, s5
	li s0, 0x585
	addw s1, s11, s0
	li a5, 0x72e
	addw s11, s1, a5
	li s0, 0x59c
	addw s1, s11, s0
	li a3, 0x76f
	addw s0, s1, a3
	li s11, 0x242
	addw a5, s0, s11
	li a3, 0x24d
	addw s3, a5, a3
	li a1, 0x4ed
	addw a4, s3, a1
	li a6, 0x421
	addw t6, a4, a6
	li s6, 0x269
	addw s4, t6, s6
	li s3, 0x579
	addw t2, s4, s3
	li s2, 0x85
	addw s9, t2, s2
	li a2, 0x79
	addw t6, s9, a2
	li s0, 0x7b8
	addw a4, t6, s0
	li a1, 0x6d2
	addw s0, a4, a1
	li s2, 0x4ec
	addw s8, s0, s2
	li a6, 0x69f
	addw a6, s8, a6
	li a1, 0x57d
	addw t1, a6, a1
	li s11, 0x405
	addw s11, t1, s11
	li a5, 0xdb
	addw s4, s11, a5
	li s8, 0x3df
	addw s1, s4, s8
	li t3, 0x9c
	addw s1, s1, t3
	li a1, 0x2b7
	addw s5, s1, a1
	li a7, 0x5aa
	addw a7, s5, a7
	li s3, 0x3f7
	addw a7, a7, s3
	li t1, 0x40e
	addw s0, a7, t1
	li a4, 0x156
	addw s0, s0, a4
	li a7, 0x2de
	addw t4, s0, a7
	li t2, 0x12f
	addw a6, t4, t2
	li s4, 0x4c0
	addw s10, a6, s4
	li t2, 0x39f
	addw s1, s10, t2
	li a3, 0x623
	addw a7, s1, a3
	li s11, 0x434
	addw s8, a7, s11
	li s11, 0x59a
	addw s8, s8, s11
	li a7, 0x108
	addw s8, s8, a7
	csrr a5, time
	csrr a6, cycle
	csrr s2, instret
	sub t2, a5, s7
	sub s1, a6, t5
	sub t3, s2, a0
	li s4, 0
	csrr t6, time
	csrr s9, cycle
	csrr s2, instret
	li a2, 0x84
	addw s4, s4, a2
	li t1, 0x53e
	addw a2, s4, t1
	li s8, 0x21e
	addw a5, a2, s8
	li s5, 0x113
	addw s7, a5, s5
	li t2, 0x750
	addw t2, s7, t2
	li a6, 0x4d4
	addw s3, t2, a6
	li a1, 0x56f
	addw t5, s3, a1
	li s10, 0x56
	addw s3, t5, s10
	li t2, 0x116
	addw s4, s3, t2
	li t1, 0x72c
	addw s3, s4, t1
	li s0, 0xfe
	addw s11, s3, s0
	li s7, 0x5ab
	addw a7, s11, s7
	li a5, 0x166
	addw t1, a7, a5
	li s4, 0x6e8
	addw a5, t1, s4
	li s4, 0x208
	addw a7, a5, s4
	li t4, 0x6
	addw a6, a7, t4
	li t5, 0x114
	addw a5, a6, t5
	li t4, 0x4a9
	addw s11, a5, t4
	li a1, 0x64b
	addw s6, s11, a1
	li t2, 0x4dd
	addw a1, s6, t2
	li a6, 0x6b4
	addw t5, a1, a6
	li t1, 0x68
	addw a3, t5, t1
	li s8, 0x466
	addw a4, a3, s8
	li a0, 0x45d
	addw a5, a4, a0
	li a1, 0x7c
	addw s3, a5, a1
	li a6, 0x15d
	addw a7, s3, a6
	li s8, 0x65e
	addw s10, a7, s8
	li s3, 0x1b2
	addw a1, s10, s3
	li s3, 0x7d1
	addw a1, a1, s3
	li s4, 0x5e8
	addw s6, a1, s4
	li s5, 0x47c
	addw t4, s6, s5
	li s4, 0x531
	addw t4, t4, s4
	li s6, 0x1fb
	addw a6, t4, s6
	li a7, 0x521
	addw s11, a6, a7
	li s4, 0x225
	addw a5, s11, s4
	li s10, 0x307
	addw a2, a5, s10
	li a6, 0x648
	addw s0, a2, a6
	li a4, 0x12e
	addw s7, s0, a4
	li t5, 0x2b0
	addw a4, s7, t5
	li s0, 0x1ea
	addw t1, a4, s0
	li t5, 0x565
	addw s0, t1, t5
	li s6, 0x37d
	addw t4, s0, s6
	li a1, 0x488
	addw s6, t4, a1
	li a3, 0x3ac
	addw a4, s6, a3
	li a1, 0x5d2
	addw a0, a4, a1
	li s6, 0x6d5
	addw a2, a0, s6
	li s7, 0x770
	addw a2, a2, s7
	li a0, 0x6f2
	addw s4, a2, a0
	li t2, 0x4ba
	addw a3, s4, t2
	li a0, 0x72
	addw a4, a3, a0
	li a7, 0x3e5
	addw t2, a4, a7
	li s3, 0x276
	addw t2, t2, s3
	li s3, 0x76b
	addw a0, t2, s3
	li a2, 0x1b0
	addw s6, a0, a2
	li a0, 0xcc
	addw s8, s6, a0
	li t5, 0x153
	addw a3, s8, t5
	li s3, 0x297
	addw s5, a3, s3
	li t1, 0x588
	addw a2, s5, t1
	li s5, 0x65d
	addw t5, a2, s5
	li s6, 0x488
	addw a6, t5, s6
	li t2, 0x442
	addw s11, a6, t2
	li t2, 0x100
	addw s4, s11, t2
	li t4, 0x62b
	addw a3, s4, t4
	li s10, 0x4c5
	addw a6, a3, s10
	li a4, 0xc6
	addw a5, a6, a4
	li s10, 0x341
	addw a6, a5, s10
	li s4, 0x285
	addw s4, a6, s4
	li s7, 0x2ea
	addw s3, s4, s7
	li t4, 0x72c
	addw t4, s3, t4
	li s4, 0x715
	addw s10, t4, s4
	li s4, 0x8e
	addw s6, s10, s4
	li s5, 0x61e
	addw a3, s6, s5
	li t1, 0x538
	addw s7, a3, t1
	li a4, 0x106
	addw a4, s7, a4
	li t1, 0x166
	addw s8, a4, t1
	li t2, 0x736
	addw t4, s8, t2
	li a7, 0x68c
	addw a4, t4, a7
	li s10, 0x6dd
	addw a2, a4, s10
	li s7, 0x94
	addw s8, a2, s7
	li s3, 0x302
	addw s4, s8, s3
	li s6, 0x3a
	addw s10, s4, s6
	li s5, 0x732
	addw t4, s10, s5
	li a2, 0x171
	addw t4, t4, a2
	li s3, 0x221
	addw t4, t4, s3
	li s6, 0x90
	addw a6, t4, s6
	li a0, 0x6c1
	addw a5, a6, a0
	li s6, 0x515
	addw a6, a5, s6
	li s4, 0x45e
	addw s0, a6, s4
	li t2, 0x6aa
	addw a4, s0, t2
	li s0, 0x299
	addw t5, a4, s0
	li t1, 0x7f5
	addw t1, t5, t1
	li s5, 0x756
	addw s11, t1, s5
	li t2, 0x34c
	addw a5, s11, t2
	li t1, 0x11a
	addw a0, a5, t1
	li a2, 0x702
	addw a1, a0, a2
	li t4, 0x581
	addw a2, a1, t4
	li t5, 0x165
	addw s0, a2, t5
	li a0, 0x583
	addw t5, s0, a0
	li s11, 0x703
	addw s8, t5, s11
	li s0, 0x3c5
	addw a7, s8, s0
	csrr s3, time
	csrr a2, cycle
	csrr a0, instret
	sub a3, s3, t6
	sub s5, a2, s9
	sub s11, a0, s2
	beq s1, s5, pass_label_49
	li s6, failed_addr
	ld s9, 0(s6)
	jr s9
pass_label_49:
	beq t3, s11, pass_label_50
	li a2, failed_addr
	ld t6, 0(a2)
	jr t6
pass_label_50:
SID_ZKT_05_ADDW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SUBW)
SID_ZKT_05_SUBW:
	li sp, SID_ZKT_05_SUBW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s5, 0
	csrr s10, time
	csrr a5, cycle
	csrr s4, instret
	li t4, 0x37c
	subw a6, s5, t4
	li t1, 0xf1
	subw t6, a6, t1
	li s7, 0x50e
	subw s6, t6, s7
	li t5, 0x1a8
	subw a7, s6, t5
	li a4, 0x5b2
	subw t1, a7, a4
	li s9, 0x90
	subw t3, t1, s9
	li a2, 0x20c
	subw a2, t3, a2
	li t2, 0xc3
	subw a0, a2, t2
	li s7, 0x55b
	subw t6, a0, s7
	li s5, 0x4a6
	subw t1, t6, s5
	li a7, 0x586
	subw s11, t1, a7
	li t5, 0x6b7
	subw t4, s11, t5
	li t2, 0x167
	subw s3, t4, t2
	li a3, 0x64
	subw a6, s3, a3
	li t4, 0x114
	subw s2, a6, t4
	li a7, 0x5b7
	subw a4, s2, a7
	li s6, 0x1c7
	subw s0, a4, s6
	li s6, 0x6ba
	subw t1, s0, s6
	li a0, 0x48d
	subw s1, t1, a0
	li t5, 0xd9
	subw s9, s1, t5
	li s5, 0x732
	subw t1, s9, s5
	li t5, 0x7b4
	subw s8, t1, t5
	li s11, 0x480
	subw t1, s8, s11
	li s2, 0x18c
	subw a6, t1, s2
	li s11, 0x6ba
	subw a1, a6, s11
	li s0, 0x24c
	subw a1, a1, s0
	li t5, 0x7db
	subw s6, a1, t5
	li s1, 0x5b2
	subw s7, s6, s1
	li a1, 0x67f
	subw s5, s7, a1
	li a4, 0x1a8
	subw t5, s5, a4
	li s7, 0x24e
	subw a3, t5, s7
	li t1, 0x483
	subw a2, a3, t1
	li s9, 0x4d5
	subw t2, a2, s9
	li s11, 0x57c
	subw a3, t2, s11
	li t4, 0x372
	subw s7, a3, t4
	li t1, 0x578
	subw a1, s7, t1
	li s2, 0x4ca
	subw t4, a1, s2
	li a2, 0x727
	subw a6, t4, a2
	li s6, 0x7ca
	subw a2, a6, s6
	li s2, 0x21a
	subw s2, a2, s2
	li s8, 0x6b1
	subw s5, s2, s8
	li t1, 0x164
	subw s1, s5, t1
	li t6, 0x334
	subw s8, s1, t6
	li t6, 0x284
	subw s1, s8, t6
	li t5, 0x8
	subw t6, s1, t5
	li s8, 0x2f6
	subw a1, t6, s8
	li t2, 0x32b
	subw s9, a1, t2
	li s1, 0xf5
	subw s0, s9, s1
	li a3, 0x687
	subw t2, s0, a3
	li a3, 0x606
	subw t3, t2, a3
	li s6, 0x43
	subw a0, t3, s6
	li s3, 0x5de
	subw s3, a0, s3
	li t2, 0x1fe
	subw t2, s3, t2
	li s6, 0x180
	subw t3, t2, s6
	li t6, 0x64a
	subw a3, t3, t6
	li a7, 0x168
	subw a7, a3, a7
	li a4, 0x6c0
	subw t4, a7, a4
	li s8, 0x242
	subw s5, t4, s8
	li a3, 0x264
	subw a2, s5, a3
	li s6, 0x433
	subw a1, a2, s6
	li a0, 0x5e3
	subw t6, a1, a0
	li s5, 0x559
	subw s3, t6, s5
	li a0, 0x10a
	subw s7, s3, a0
	li s8, 0x5b0
	subw a3, s7, s8
	li s9, 0x41e
	subw a1, a3, s9
	li s8, 0x2f7
	subw s3, a1, s8
	li t3, 0x130
	subw t3, s3, t3
	li t5, 0x3a5
	subw s11, t3, t5
	li t4, 0x3a9
	subw t1, s11, t4
	li s9, 0x5ad
	subw a4, t1, s9
	li a1, 0x7ec
	subw a3, a4, a1
	li t6, 0x765
	subw s0, a3, t6
	li s6, 0x2d0
	subw a2, s0, s6
	li t3, 0x6d9
	subw s1, a2, t3
	li a6, 0x3c8
	subw s7, s1, a6
	li a2, 0x7ec
	subw a7, s7, a2
	li s11, 0x504
	subw a0, a7, s11
	li a4, 0x5bd
	subw t6, a0, a4
	li s8, 0x1d7
	subw s5, t6, s8
	li s6, 0x511
	subw s2, s5, s6
	li a1, 0x5bb
	subw a3, s2, a1
	li a2, 0x568
	subw s8, a3, a2
	li t2, 0x666
	subw a0, s8, t2
	li s7, 0x716
	subw a6, a0, s7
	li a1, 0x210
	subw s9, a6, a1
	li t5, 0x67a
	subw a6, s9, t5
	li s2, 0x16f
	subw t2, a6, s2
	li a0, 0x284
	subw s3, t2, a0
	li t5, 0x3f3
	subw s11, s3, t5
	li t3, 0x2d
	subw s2, s11, t3
	li t3, 0x588
	subw s6, s2, t3
	li a6, 0x4ee
	subw a7, s6, a6
	li t6, 0x3a4
	subw t5, a7, t6
	li a2, 0x33c
	subw s1, t5, a2
	li a7, 0x5d3
	subw s5, s1, a7
	li s1, 0x13a
	subw a7, s5, s1
	li t6, 0x37d
	subw a0, a7, t6
	li s7, 0x45f
	subw s3, a0, s7
	li a6, 0x51c
	subw t5, s3, a6
	li a2, 0x2b4
	subw a6, t5, a2
	csrr s8, time
	csrr s7, cycle
	csrr a7, instret
	sub t2, s8, s10
	sub t2, s7, a5
	sub t4, a7, s4
	li t6, 0
	csrr t1, time
	csrr t4, cycle
	csrr s2, instret
	li s11, 0x6db
	subw t6, t6, s11
	li s9, 0x639
	subw s8, t6, s9
	li t6, 0x157
	subw a7, s8, t6
	li t2, 0x4
	subw s5, a7, t2
	li t5, 0x41e
	subw s4, s5, t5
	li t6, 0x6ae
	subw s6, s4, t6
	li a7, 0x5d1
	subw a0, s6, a7
	li a6, 0x4b9
	subw s1, a0, a6
	li s3, 0x41a
	subw t6, s1, s3
	li s6, 0x34e
	subw a3, t6, s6
	li s0, 0xa7
	subw a6, a3, s0
	li t5, 0x531
	subw s9, a6, t5
	li a4, 0x698
	subw s7, s9, a4
	li s4, 0x63d
	subw s0, s7, s4
	li s5, 0x1a8
	subw s7, s0, s5
	li s6, 0xd
	subw s4, s7, s6
	li a2, 0x77
	subw t6, s4, a2
	li t3, 0x795
	subw s5, t6, t3
	li t3, 0x798
	subw a6, s5, t3
	li a4, 0xcc
	subw s11, a6, a4
	li s6, 0x103
	subw a4, s11, s6
	li s9, 0xe1
	subw a2, a4, s9
	li s0, 0x1fd
	subw s9, a2, s0
	li t6, 0x182
	subw t6, s9, t6
	li a5, 0x444
	subw t6, t6, a5
	li s9, 0x351
	subw s10, t6, s9
	li s4, 0x4e8
	subw s9, s10, s4
	li a5, 0x7db
	subw a5, s9, a5
	li s1, 0x760
	subw s5, a5, s1
	li t5, 0x20c
	subw t5, s5, t5
	li a0, 0x6f
	subw s3, t5, a0
	li a1, 0x569
	subw a5, s3, a1
	li t5, 0x5d2
	subw s4, a5, t5
	li a1, 0x21c
	subw s8, s4, a1
	li a1, 0x79
	subw s11, s8, a1
	li s1, 0x17b
	subw a6, s11, s1
	li a5, 0x70d
	subw s7, a6, a5
	li s1, 0x6c3
	subw t3, s7, s1
	li s10, 0x68f
	subw t5, t3, s10
	li s0, 0x511
	subw t5, t5, s0
	li s11, 0x2f5
	subw a3, t5, s11
	li a6, 0x682
	subw a1, a3, a6
	li s7, 0x292
	subw s3, a1, s7
	li s0, 0x40b
	subw s10, s3, s0
	li s3, 0x56c
	subw s1, s10, s3
	li s7, 0x146
	subw s7, s1, s7
	li a1, 0x4a3
	subw s10, s7, a1
	li s7, 0x3d8
	subw a4, s10, s7
	li t3, 0x614
	subw a7, a4, t3
	li s3, 0x2b6
	subw s4, a7, s3
	li a3, 0x13d
	subw a0, s4, a3
	li t6, 0x530
	subw a1, a0, t6
	li s10, 0x577
	subw a0, a1, s10
	li s9, 0x76
	subw a4, a0, s9
	li a7, 0x419
	subw t5, a4, a7
	li a5, 0x9c
	subw s6, t5, a5
	li s5, 0x54f
	subw a1, s6, s5
	li a2, 0x54d
	subw t6, a1, a2
	li a0, 0x750
	subw s1, t6, a0
	li s11, 0x2f1
	subw a0, s1, s11
	li s7, 0x4b4
	subw s11, a0, s7
	li a1, 0x256
	subw a1, s11, a1
	li t3, 0x3c8
	subw s3, a1, t3
	li s4, 0x25e
	subw s5, s3, s4
	li t3, 0x39f
	subw s1, s5, t3
	li s7, 0x1bf
	subw a0, s1, s7
	li s5, 0x642
	subw s6, a0, s5
	li a7, 0x8a
	subw s8, s6, a7
	li t3, 0x54e
	subw a1, s8, t3
	li s3, 0x4f9
	subw t3, a1, s3
	li s4, 0x4c8
	subw s6, t3, s4
	li t3, 0x115
	subw a3, s6, t3
	li s6, 0x1aa
	subw s0, a3, s6
	li s8, 0x3e0
	subw s8, s0, s8
	li s11, 0x698
	subw a6, s8, s11
	li s0, 0x236
	subw s0, a6, s0
	li s3, 0x7d7
	subw a4, s0, s3
	li s7, 0x247
	subw a6, a4, s7
	li a2, 0x74f
	subw t2, a6, a2
	li s11, 0x6b1
	subw s9, t2, s11
	li t2, 0x705
	subw s5, s9, t2
	li a4, 0x4ac
	subw s10, s5, a4
	li s11, 0x527
	subw a6, s10, s11
	li s6, 0x4f5
	subw s9, a6, s6
	li a3, 0x53
	subw t2, s9, a3
	li s10, 0x421
	subw s3, t2, s10
	li a7, 0xef
	subw s7, s3, a7
	li a2, 0x17c
	subw s11, s7, a2
	li s0, 0x2ef
	subw a5, s11, s0
	li a7, 0x26a
	subw t5, a5, a7
	li a6, 0x13e
	subw a6, t5, a6
	li s7, 0x5c7
	subw s11, a6, s7
	li s6, 0x1c1
	subw s8, s11, s6
	li s3, 0x21
	subw s1, s8, s3
	li s10, 0x21e
	subw a7, s1, s10
	li s8, 0x6c3
	subw s8, a7, s8
	li s6, 0x497
	subw t3, s8, s6
	li s6, 0x330
	subw s1, t3, s6
	li s3, 0x37f
	subw s5, s1, s3
	li a4, 0x2c4
	subw a6, s5, a4
	csrr a1, time
	csrr a4, cycle
	csrr s3, instret
	sub s1, a1, t1
	sub a0, a4, t4
	sub s8, s3, s2
	li s6, 0
	csrr s5, time
	csrr s1, cycle
	csrr t4, instret
	li t3, 0x397
	subw s2, s6, t3
	li s9, 0x317
	subw s6, s2, s9
	li s2, 0x728
	subw t6, s6, s2
	li s4, 0x103
	subw s11, t6, s4
	li s7, 0x59b
	subw s0, s11, s7
	li a4, 0x31c
	subw t3, s0, a4
	li s7, 0x19e
	subw s7, t3, s7
	li t3, 0x39c
	subw s11, s7, t3
	li s9, 0x79
	subw a1, s11, s9
	li a2, 0x5cd
	subw t6, a1, a2
	li s10, 0x24a
	subw s9, t6, s10
	li t2, 0x222
	subw t5, s9, t2
	li a1, 0x215
	subw s9, t5, a1
	li s10, 0x53
	subw s4, s9, s10
	li t3, 0x553
	subw s4, s4, t3
	li s6, 0x493
	subw s3, s4, s6
	li a4, 0x614
	subw t1, s3, a4
	li s10, 0x195
	subw t3, t1, s10
	li a3, 0x30b
	subw t5, t3, a3
	li s4, 0x3b9
	subw s3, t5, s4
	li a6, 0x1df
	subw s10, s3, a6
	li t1, 0x452
	subw t3, s10, t1
	li s3, 0x5ad
	subw a7, t3, s3
	li s3, 0x1dc
	subw t6, a7, s3
	li a7, 0x209
	subw t6, t6, a7
	li s11, 0x6b1
	subw s4, t6, s11
	li s2, 0x110
	subw t1, s4, s2
	li s0, 0x481
	subw a1, t1, s0
	li t1, 0x5ef
	subw a7, a1, t1
	li s4, 0x7c9
	subw t5, a7, s4
	li s11, 0x2b4
	subw s7, t5, s11
	li a1, 0x743
	subw a2, s7, a1
	li s0, 0x5b
	subw s9, a2, s0
	li a2, 0x713
	subw s6, s9, a2
	li s0, 0x7c5
	subw a2, s6, s0
	li t5, 0x67c
	subw t1, a2, t5
	li a6, 0x18
	subw a3, t1, a6
	li s4, 0x712
	subw s11, a3, s4
	li a7, 0x3f0
	subw s2, s11, a7
	li a5, 0xf8
	subw s3, s2, a5
	li a6, 0x139
	subw s0, s3, a6
	li s10, 0x124
	subw s3, s0, s10
	li a3, 0x705
	subw t1, s3, a3
	li s7, 0x48
	subw t6, t1, s7
	li a4, 0x506
	subw a1, t6, a4
	li s3, 0x412
	subw s7, a1, s3
	li s0, 0x23f
	subw s4, s7, s0
	li s7, 0x6ac
	subw a4, s4, s7
	li a2, 0x5ef
	subw t2, a4, a2
	li a7, 0x67f
	subw t3, t2, a7
	li t6, 0x26d
	subw s0, t3, t6
	li a1, 0x623
	subw s7, s0, a1
	li s4, 0x10
	subw a2, s7, s4
	li s4, 0x42d
	subw s0, a2, s4
	li a3, 0x16
	subw s0, s0, a3
	li a5, 0x4fe
	subw a1, s0, a5
	li a5, 0x4f8
	subw t3, a1, a5
	li a4, 0x4e5
	subw t2, t3, a4
	li s7, 0x6e2
	subw t1, t2, s7
	li s6, 0x1bd
	subw t1, t1, s6
	li s0, 0x57e
	subw t1, t1, s0
	li t6, 0x6a5
	subw s11, t1, t6
	li s10, 0x33c
	subw s0, s11, s10
	li t1, 0x6fd
	subw s4, s0, t1
	li a4, 0x4a5
	subw s10, s4, a4
	li a1, 0xe3
	subw s0, s10, a1
	li s7, 0x5df
	subw a6, s0, s7
	li t6, 0x2db
	subw t5, a6, t6
	li s9, 0x58e
	subw t3, t5, s9
	li a4, 0x36e
	subw s9, t3, a4
	li a1, 0x413
	subw s2, s9, a1
	li a5, 0x108
	subw t3, s2, a5
	li a7, 0x1b6
	subw s0, t3, a7
	li a7, 0xa3
	subw s0, s0, a7
	li t2, 0x571
	subw s0, s0, t2
	li s7, 0xcd
	subw s9, s0, s7
	li a4, 0x4dd
	subw s7, s9, a4
	li a6, 0x396
	subw s2, s7, a6
	li a4, 0x4e9
	subw s0, s2, a4
	li a5, 0x6a1
	subw t2, s0, a5
	li s10, 0x384
	subw t2, t2, s10
	li s4, 0x632
	subw a5, t2, s4
	li s4, 0xa1
	subw t6, a5, s4
	li a1, 0x426
	subw s3, t6, a1
	li a4, 0x27
	subw s6, s3, a4
	li t3, 0x41a
	subw s9, s6, t3
	li a4, 0x684
	subw a2, s9, a4
	li s0, 0x71a
	subw s0, a2, s0
	li a7, 0x1c1
	subw s6, s0, a7
	li a2, 0xe0
	subw t2, s6, a2
	li t1, 0x4e
	subw a6, t2, t1
	li s4, 0x549
	subw t1, a6, s4
	li a1, 0x10
	subw s10, t1, a1
	li t5, 0x166
	subw t1, s10, t5
	li a4, 0x3ea
	subw t2, t1, a4
	li t5, 0x66b
	subw t3, t2, t5
	li s0, 0x3e1
	subw s9, t3, s0
	li s3, 0x21f
	subw s7, s9, s3
	li a3, 0x56b
	subw a6, s7, a3
	li a7, 0x4ec
	subw s2, a6, a7
	csrr s2, time
	csrr s10, cycle
	csrr a1, instret
	sub s6, s2, s5
	sub t2, s10, s1
	sub a7, a1, t4
	beq a0, t2, pass_label_51
	li t4, failed_addr
	ld t6, 0(t4)
	jr t6
pass_label_51:
	beq s8, a7, pass_label_52
	li s9, failed_addr
	ld s2, 0(s9)
	jr s2
pass_label_52:
SID_ZKT_05_SUBW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SLLW)
SID_ZKT_05_SLLW:
	li sp, SID_ZKT_05_SLLW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s0, 0
	csrr a5, time
	csrr t6, cycle
	csrr s4, instret
	li s7, 0x4d0
	sllw t5, s0, s7
	li t2, 0x44b
	sllw s7, t5, t2
	li s10, 0x3be
	sllw t1, s7, s10
	li s7, 0x383
	sllw a3, t1, s7
	li s2, 0x44b
	sllw s6, a3, s2
	li a4, 0x599
	sllw s1, s6, a4
	li s0, 0x4ae
	sllw t1, s1, s0
	li a0, 0x397
	sllw s9, t1, a0
	li a3, 0x4da
	sllw s5, s9, a3
	li s10, 0x11f
	sllw a2, s5, s10
	li a0, 0x615
	sllw s3, a2, a0
	li t1, 0x584
	sllw s6, s3, t1
	li s11, 0x2bf
	sllw s1, s6, s11
	li a2, 0x576
	sllw s0, s1, a2
	li s9, 0x27d
	sllw t5, s0, s9
	li a7, 0x617
	sllw t2, t5, a7
	li s10, 0x108
	sllw s0, t2, s10
	li s11, 0xda
	sllw t4, s0, s11
	li s5, 0x11b
	sllw a1, t4, s5
	li s5, 0x106
	sllw a7, a1, s5
	li s7, 0x7d8
	sllw t1, a7, s7
	li s10, 0x5c8
	sllw a0, t1, s10
	li s7, 0x5a9
	sllw t3, a0, s7
	li a6, 0x597
	sllw s1, t3, a6
	li a0, 0x54d
	sllw s11, s1, a0
	li s6, 0x25a
	sllw a1, s11, s6
	li s7, 0x420
	sllw s10, a1, s7
	li t1, 0x6f8
	sllw s3, s10, t1
	li s5, 0x1d0
	sllw s11, s3, s5
	li a6, 0x36c
	sllw t5, s11, a6
	li a3, 0x546
	sllw s2, t5, a3
	li s6, 0x30d
	sllw s10, s2, s6
	li a2, 0x16b
	sllw s1, s10, a2
	li a3, 0x502
	sllw s6, s1, a3
	li s7, 0x4db
	sllw s8, s6, s7
	li s5, 0x733
	sllw a4, s8, s5
	li t4, 0x722
	sllw a0, a4, t4
	li s3, 0x7ca
	sllw s5, a0, s3
	li t2, 0x34b
	sllw a1, s5, t2
	li s6, 0x163
	sllw a0, a1, s6
	li s3, 0x3dd
	sllw t1, a0, s3
	li s8, 0x73
	sllw a3, t1, s8
	li a1, 0x608
	sllw a2, a3, a1
	li a6, 0xa8
	sllw s1, a2, a6
	li s0, 0x73a
	sllw s5, s1, s0
	li a0, 0x37e
	sllw s6, s5, a0
	li a7, 0x34c
	sllw a0, s6, a7
	li t3, 0xd2
	sllw a0, a0, t3
	li s9, 0x763
	sllw s8, a0, s9
	li a6, 0x64b
	sllw s8, s8, a6
	li s10, 0x504
	sllw s10, s8, s10
	li t4, 0x5e3
	sllw a7, s10, t4
	li s11, 0x249
	sllw s1, a7, s11
	li t4, 0x4b
	sllw a4, s1, t4
	li s6, 0x651
	sllw s11, a4, s6
	li s5, 0x572
	sllw s3, s11, s5
	li a3, 0x1bf
	sllw s2, s3, a3
	li a2, 0x6c6
	sllw a6, s2, a2
	li s6, 0x6e
	sllw a4, a6, s6
	li a1, 0x73b
	sllw s3, a4, a1
	li s6, 0x4b2
	sllw s7, s3, s6
	li t4, 0x4b
	sllw s11, s7, t4
	li s1, 0x4fe
	sllw s5, s11, s1
	li t2, 0x167
	sllw t3, s5, t2
	li a4, 0x473
	sllw s3, t3, a4
	li t4, 0x324
	sllw s7, s3, t4
	li s3, 0x2a1
	sllw s10, s7, s3
	li a7, 0x1ed
	sllw a0, s10, a7
	li t1, 0x3eb
	sllw s7, a0, t1
	li s0, 0x755
	sllw t4, s7, s0
	li s6, 0x405
	sllw s7, t4, s6
	li a1, 0x1f1
	sllw a0, s7, a1
	li s0, 0x2ee
	sllw s8, a0, s0
	li s3, 0x3b8
	sllw s7, s8, s3
	li s6, 0x766
	sllw t3, s7, s6
	li s2, 0x2a3
	sllw s8, t3, s2
	li s5, 0x5ec
	sllw t4, s8, s5
	li s10, 0x535
	sllw s8, t4, s10
	li t4, 0x4a9
	sllw a1, s8, t4
	li s3, 0x1c1
	sllw t5, a1, s3
	li s3, 0x5b7
	sllw a3, t5, s3
	li t1, 0x590
	sllw s11, a3, t1
	li s6, 0x169
	sllw a1, s11, s6
	li t2, 0x4b7
	sllw s2, a1, t2
	li a2, 0x117
	sllw s6, s2, a2
	li a4, 0x464
	sllw t4, s6, a4
	li s8, 0xec
	sllw a2, t4, s8
	li a1, 0x382
	sllw s5, a2, a1
	li a2, 0x7a8
	sllw s10, s5, a2
	li s0, 0x299
	sllw a4, s10, s0
	li a3, 0x7a
	sllw s7, a4, a3
	li s9, 0x786
	sllw s3, s7, s9
	li t5, 0xde
	sllw s3, s3, t5
	li t3, 0x3cf
	sllw s6, s3, t3
	li s3, 0x7a7
	sllw a4, s6, s3
	li a0, 0x159
	sllw t3, a4, a0
	li s7, 0x31f
	sllw s8, t3, s7
	li s11, 0x226
	sllw s2, s8, s11
	li a6, 0x2c5
	sllw a7, s2, a6
	li s11, 0x32c
	sllw t1, a7, s11
	csrr t3, time
	csrr a2, cycle
	csrr s3, instret
	sub a3, t3, a5
	sub s11, a2, t6
	sub s0, s3, s4
	li s1, 0
	csrr t3, time
	csrr a3, cycle
	csrr t6, instret
	li a4, 0x8
	sllw s4, s1, a4
	li s6, 0x347
	sllw a2, s4, s6
	li s1, 0x3f8
	sllw s0, a2, s1
	li t4, 0x3d4
	sllw s10, s0, t4
	li s5, 0x629
	sllw t1, s10, s5
	li s4, 0x588
	sllw a2, t1, s4
	li s2, 0x4ab
	sllw s6, a2, s2
	li s8, 0x2d7
	sllw t2, s6, s8
	li s7, 0x1ff
	sllw s7, t2, s7
	li a5, 0x58a
	sllw a7, s7, a5
	li s1, 0x186
	sllw a1, a7, s1
	li t1, 0x3ec
	sllw s6, a1, t1
	li s10, 0x42c
	sllw s5, s6, s10
	li s6, 0x278
	sllw s2, s5, s6
	li s11, 0x6ea
	sllw s1, s2, s11
	li s8, 0x717
	sllw a1, s1, s8
	li s7, 0xf6
	sllw s9, a1, s7
	li s0, 0x158
	sllw a0, s9, s0
	li s1, 0x3c7
	sllw a0, a0, s1
	li a4, 0x631
	sllw s2, a0, a4
	li s4, 0x7aa
	sllw s8, s2, s4
	li s5, 0x205
	sllw s10, s8, s5
	li s8, 0xaa
	sllw s2, s10, s8
	li t2, 0xcf
	sllw a5, s2, t2
	li a4, 0x30c
	sllw s1, a5, a4
	li a6, 0x729
	sllw t1, s1, a6
	li s1, 0x28b
	sllw a7, t1, s1
	li s4, 0x2e
	sllw a2, a7, s4
	li s8, 0xb0
	sllw t2, a2, s8
	li a0, 0x2bc
	sllw s4, t2, a0
	li s10, 0x52
	sllw a1, s4, s10
	li a6, 0x473
	sllw s5, a1, a6
	li s8, 0x7b5
	sllw a7, s5, s8
	li s0, 0x1a2
	sllw s2, a7, s0
	li t2, 0x46b
	sllw s8, s2, t2
	li a5, 0xa9
	sllw s11, s8, a5
	li s8, 0x34d
	sllw t4, s11, s8
	li a5, 0x198
	sllw s10, t4, a5
	li s8, 0xd4
	sllw s5, s10, s8
	li s2, 0x698
	sllw t1, s5, s2
	li a5, 0x283
	sllw s4, t1, a5
	li a5, 0x3b2
	sllw s5, s4, a5
	li a5, 0x605
	sllw a2, s5, a5
	li s8, 0x3db
	sllw s2, a2, s8
	li s0, 0xcd
	sllw s6, s2, s0
	li a0, 0x4b0
	sllw s3, s6, a0
	li s1, 0x382
	sllw s5, s3, s1
	li a6, 0x412
	sllw a0, s5, a6
	li s3, 0x2bb
	sllw s2, a0, s3
	li s8, 0xbd
	sllw a0, s2, s8
	li a4, 0x798
	sllw s6, a0, a4
	li t2, 0x1b7
	sllw s10, s6, t2
	li s8, 0x6d2
	sllw a2, s10, s8
	li t2, 0x456
	sllw a4, a2, t2
	li t2, 0x56c
	sllw a0, a4, t2
	li t4, 0x5ed
	sllw a1, a0, t4
	li t4, 0x491
	sllw s1, a1, t4
	li s8, 0x31b
	sllw s1, s1, s8
	li a5, 0x64e
	sllw t5, s1, a5
	li s3, 0x66c
	sllw s6, t5, s3
	li t5, 0x16e
	sllw s2, s6, t5
	li s0, 0x469
	sllw s4, s2, s0
	li s1, 0x2df
	sllw a0, s4, s1
	li s10, 0x146
	sllw s3, a0, s10
	li s5, 0x723
	sllw s2, s3, s5
	li s6, 0x6c
	sllw t5, s2, s6
	li a7, 0x3ad
	sllw s4, t5, a7
	li s9, 0x9b
	sllw s6, s4, s9
	li a7, 0x167
	sllw a2, s6, a7
	li s5, 0x547
	sllw a6, a2, s5
	li s0, 0x1d3
	sllw s1, a6, s0
	li s3, 0x734
	sllw s4, s1, s3
	li s9, 0x18a
	sllw a0, s4, s9
	li s6, 0x21f
	sllw s6, a0, s6
	li a6, 0x5
	sllw s0, s6, a6
	li t2, 0x384
	sllw s10, s0, t2
	li a6, 0x693
	sllw t2, s10, a6
	li a2, 0x757
	sllw s1, t2, a2
	li s11, 0x417
	sllw a7, s1, s11
	li t4, 0x538
	sllw s3, a7, t4
	li s4, 0x425
	sllw a5, s3, s4
	li t1, 0x1cd
	sllw a5, a5, t1
	li a6, 0x7ef
	sllw a1, a5, a6
	li s3, 0x2b0
	sllw t1, a1, s3
	li s6, 0x2cb
	sllw s4, t1, s6
	li s5, 0x3d3
	sllw a7, s4, s5
	li s11, 0x303
	sllw a4, a7, s11
	li s5, 0x75
	sllw s6, a4, s5
	li a1, 0x1d6
	sllw a0, s6, a1
	li t1, 0x789
	sllw s11, a0, t1
	li a7, 0x744
	sllw s8, s11, a7
	li t4, 0x175
	sllw s6, s8, t4
	li s9, 0x229
	sllw s8, s6, s9
	li t5, 0x661
	sllw s9, s8, t5
	li s5, 0x7b7
	sllw s5, s9, s5
	li s0, 0x7d6
	sllw s11, s5, s0
	li a1, 0xab
	sllw a6, s11, a1
	li t4, 0x5b0
	sllw a0, a6, t4
	li s10, 0x5a7
	sllw a0, a0, s10
	li s10, 0x5ef
	sllw s8, a0, s10
	csrr s6, time
	csrr a1, cycle
	csrr t2, instret
	sub t4, s6, t3
	sub a1, a1, a3
	sub s2, t2, t6
	li t1, 0
	csrr a6, time
	csrr s1, cycle
	csrr t4, instret
	li a2, 0x260
	sllw a7, t1, a2
	li s9, 0x34c
	sllw s6, a7, s9
	li s4, 0x478
	sllw a3, s6, s4
	li s0, 0x327
	sllw s11, a3, s0
	li a2, 0x1e1
	sllw a3, s11, a2
	li s9, 0xf
	sllw s0, a3, s9
	li t6, 0x73b
	sllw s10, s0, t6
	li a7, 0x78d
	sllw a5, s10, a7
	li a3, 0x51f
	sllw s10, a5, a3
	li s3, 0x42e
	sllw s6, s10, s3
	li t6, 0x18e
	sllw s10, s6, t6
	li t3, 0x762
	sllw a2, s10, t3
	li t6, 0x4b7
	sllw s4, a2, t6
	li s9, 0x144
	sllw s7, s4, s9
	li a5, 0xfc
	sllw s3, s7, a5
	li s4, 0x7e5
	sllw a3, s3, s4
	li s9, 0x2f
	sllw s11, a3, s9
	li s10, 0x3a4
	sllw t1, s11, s10
	li t3, 0x5c6
	sllw t6, t1, t3
	li t1, 0x280
	sllw s3, t6, t1
	li s11, 0x480
	sllw t2, s3, s11
	li s6, 0x9e
	sllw t6, t2, s6
	li t2, 0x647
	sllw s10, t6, t2
	li t6, 0x25c
	sllw s4, s10, t6
	li s11, 0x72
	sllw a3, s4, s11
	li t5, 0x1c6
	sllw s0, a3, t5
	li s10, 0x4ac
	sllw t2, s0, s10
	li t5, 0x739
	sllw s5, t2, t5
	li t2, 0x63d
	sllw a2, s5, t2
	li t6, 0x19
	sllw a3, a2, t6
	li t1, 0xa6
	sllw t3, a3, t1
	li a4, 0xe3
	sllw s5, t3, a4
	li s9, 0x91
	sllw s5, s5, s9
	li s3, 0x664
	sllw s11, s5, s3
	li t3, 0x436
	sllw s4, s11, t3
	li a5, 0x5ea
	sllw s11, s4, a5
	li s0, 0x1dc
	sllw s0, s11, s0
	li s3, 0x406
	sllw s6, s0, s3
	li a0, 0x62e
	sllw s3, s6, a0
	li a7, 0x7b1
	sllw s11, s3, a7
	li t2, 0xe5
	sllw a3, s11, t2
	li s0, 0x3af
	sllw a4, a3, s0
	li s3, 0x7ad
	sllw s3, a4, s3
	li a2, 0x6d9
	sllw t3, s3, a2
	li a7, 0x2f2
	sllw s5, t3, a7
	li t6, 0x7da
	sllw t1, s5, t6
	li t5, 0x5d1
	sllw t3, t1, t5
	li s11, 0x5bb
	sllw t3, t3, s11
	li s5, 0x5bf
	sllw t1, t3, s5
	li t6, 0x64d
	sllw s4, t1, t6
	li t5, 0x686
	sllw t1, s4, t5
	li s10, 0x204
	sllw s6, t1, s10
	li a2, 0x483
	sllw s10, s6, a2
	li s8, 0x425
	sllw a5, s10, s8
	li s8, 0x686
	sllw s4, a5, s8
	li t6, 0x625
	sllw s8, s4, t6
	li s7, 0x15e
	sllw a5, s8, s7
	li t5, 0x681
	sllw t3, a5, t5
	li t5, 0xc1
	sllw t1, t3, t5
	li a5, 0x6cb
	sllw a0, t1, a5
	li a5, 0x74b
	sllw s3, a0, a5
	li s5, 0x787
	sllw a4, s3, s5
	li t5, 0x232
	sllw s9, a4, t5
	li s10, 0xb2
	sllw a5, s9, s10
	li t3, 0x56d
	sllw s0, a5, t3
	li a3, 0x440
	sllw s3, s0, a3
	li t2, 0xa
	sllw s7, s3, t2
	li t2, 0x5fa
	sllw t5, s7, t2
	li a2, 0x6af
	sllw a2, t5, a2
	li s0, 0x84
	sllw s7, a2, s0
	li a5, 0x337
	sllw a4, s7, a5
	li t5, 0x516
	sllw t2, a4, t5
	li t6, 0x6f
	sllw a3, t2, t6
	li a0, 0x6db
	sllw s11, a3, a0
	li s5, 0x3c0
	sllw a5, s11, s5
	li a4, 0x529
	sllw t5, a5, a4
	li s8, 0x398
	sllw t2, t5, s8
	li a3, 0x3e8
	sllw s9, t2, a3
	li t5, 0x7fb
	sllw a7, s9, t5
	li a4, 0x5f
	sllw t5, a7, a4
	li s10, 0x753
	sllw s8, t5, s10
	li t6, 0x6e
	sllw s4, s8, t6
	li a3, 0x776
	sllw a7, s4, a3
	li s5, 0x6d1
	sllw t1, a7, s5
	li s10, 0x133
	sllw a4, t1, s10
	li a5, 0x57b
	sllw s6, a4, a5
	li s9, 0x3a
	sllw s10, s6, s9
	li a0, 0x74c
	sllw s3, s10, a0
	li t5, 0xd7
	sllw s5, s3, t5
	li t3, 0x567
	sllw s7, s5, t3
	li s9, 0x607
	sllw t1, s7, s9
	li a3, 0x5f2
	sllw a2, t1, a3
	li a4, 0x73b
	sllw t3, a2, a4
	li s8, 0x62d
	sllw s3, t3, s8
	li t5, 0x72a
	sllw s8, s3, t5
	li a4, 0x7fb
	sllw t3, s8, a4
	li a7, 0x6ef
	sllw t3, t3, a7
	li s11, 0x61a
	sllw a4, t3, s11
	li s7, 0x325
	sllw a0, a4, s7
	li s11, 0x148
	sllw t1, a0, s11
	csrr s6, time
	csrr a3, cycle
	csrr a0, instret
	sub t1, s6, a6
	sub s8, a3, s1
	sub s5, a0, t4
	beq a1, s8, pass_label_53
	li s9, failed_addr
	ld s0, 0(s9)
	jr s0
pass_label_53:
	beq s2, s5, pass_label_54
	li s7, failed_addr
	ld t2, 0(s7)
	jr t2
pass_label_54:
SID_ZKT_05_SLLW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SRLW)
SID_ZKT_05_SRLW:
	li sp, SID_ZKT_05_SRLW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a5, 0
	csrr a1, time
	csrr s2, cycle
	csrr s11, instret
	li a6, 0x299
	srlw t5, a5, a6
	li s7, 0x42e
	srlw s10, t5, s7
	li a7, 0x514
	srlw a6, s10, a7
	li t3, 0x732
	srlw a3, a6, t3
	li a2, 0x4e5
	srlw t4, a3, a2
	li t3, 0x357
	srlw s10, t4, t3
	li a2, 0x1c2
	srlw t1, s10, a2
	li s10, 0x651
	srlw s10, t1, s10
	li a7, 0x315
	srlw s6, s10, a7
	li t5, 0x21e
	srlw t3, s6, t5
	li t2, 0x57d
	srlw t6, t3, t2
	li a3, 0x728
	srlw a4, t6, a3
	li s7, 0x659
	srlw t2, a4, s7
	li a3, 0x6dc
	srlw s0, t2, a3
	li t6, 0xa7
	srlw s8, s0, t6
	li a2, 0x2f4
	srlw a0, s8, a2
	li s0, 0x31d
	srlw s3, a0, s0
	li a7, 0x1d5
	srlw t5, s3, a7
	li s7, 0x372
	srlw t4, t5, s7
	li a4, 0x8b
	srlw s1, t4, a4
	li a2, 0x1be
	srlw a3, s1, a2
	li a4, 0x423
	srlw t5, a3, a4
	li s8, 0x7eb
	srlw t6, t5, s8
	li a4, 0x584
	srlw s6, t6, a4
	li a7, 0x656
	srlw s0, s6, a7
	li t5, 0x1e0
	srlw a6, s0, t5
	li s9, 0x181
	srlw s5, a6, s9
	li a2, 0x68a
	srlw s6, s5, a2
	li s1, 0x187
	srlw s3, s6, s1
	li t2, 0x1e
	srlw s1, s3, t2
	li t1, 0x479
	srlw a7, s1, t1
	li a0, 0x2e
	srlw a0, a7, a0
	li t1, 0x43b
	srlw a0, a0, t1
	li t2, 0x67f
	srlw s1, a0, t2
	li s7, 0x4a
	srlw t3, s1, s7
	li s3, 0x85
	srlw s7, t3, s3
	li t4, 0x2fe
	srlw s8, s7, t4
	li a0, 0x3cf
	srlw a5, s8, a0
	li t5, 0x374
	srlw s9, a5, t5
	li s6, 0x1c1
	srlw t6, s9, s6
	li s0, 0x7e1
	srlw a5, t6, s0
	li a3, 0x3e6
	srlw a6, a5, a3
	li t2, 0x2a3
	srlw s6, a6, t2
	li t6, 0x16a
	srlw s4, s6, t6
	li t1, 0x15c
	srlw a2, s4, t1
	li s0, 0x7eb
	srlw a7, a2, s0
	li a0, 0x65e
	srlw t5, a7, a0
	li a0, 0x6a9
	srlw s9, t5, a0
	li s5, 0x4a8
	srlw t1, s9, s5
	li s9, 0x537
	srlw s7, t1, s9
	li a2, 0x193
	srlw a0, s7, a2
	li s6, 0x2c5
	srlw s3, a0, s6
	li s4, 0x2b4
	srlw s4, s3, s4
	li t4, 0x7f0
	srlw s7, s4, t4
	li t5, 0xae
	srlw s4, s7, t5
	li t1, 0x120
	srlw s9, s4, t1
	li a0, 0x3ed
	srlw s8, s9, a0
	li t1, 0x7d2
	srlw s5, s8, t1
	li s7, 0x37
	srlw a5, s5, s7
	li a6, 0x5ea
	srlw a7, a5, a6
	li t6, 0xc1
	srlw s4, a7, t6
	li s5, 0x1aa
	srlw s4, s4, s5
	li a3, 0x4fa
	srlw a6, s4, a3
	li t4, 0x2e2
	srlw s0, a6, t4
	li a3, 0x7dc
	srlw t3, s0, a3
	li s10, 0x79d
	srlw s9, t3, s10
	li t4, 0x591
	srlw s3, s9, t4
	li t3, 0x197
	srlw t3, s3, t3
	li t5, 0x7af
	srlw t4, t3, t5
	li t3, 0x281
	srlw t1, t4, t3
	li s3, 0x1e9
	srlw s0, t1, s3
	li s3, 0x702
	srlw t4, s0, s3
	li s10, 0x617
	srlw a0, t4, s10
	li s0, 0x1a
	srlw t3, a0, s0
	li s0, 0x58c
	srlw a2, t3, s0
	li a7, 0x7b5
	srlw a0, a2, a7
	li a5, 0x780
	srlw s9, a0, a5
	li a3, 0x42b
	srlw a0, s9, a3
	li s3, 0x141
	srlw t4, a0, s3
	li t5, 0x1b5
	srlw a7, t4, t5
	li s8, 0x274
	srlw t1, a7, s8
	li a2, 0x61c
	srlw t2, t1, a2
	li a7, 0x599
	srlw a3, t2, a7
	li s8, 0x350
	srlw t5, a3, s8
	li s5, 0x278
	srlw a2, t5, s5
	li t3, 0x16d
	srlw t5, a2, t3
	li a7, 0x5e
	srlw s10, t5, a7
	li t4, 0x2bd
	srlw t4, s10, t4
	li t5, 0x1b4
	srlw a7, t4, t5
	li a3, 0x624
	srlw s4, a7, a3
	li t3, 0x1dd
	srlw t4, s4, t3
	li s10, 0x4a8
	srlw s5, t4, s10
	li a5, 0x3c9
	srlw s9, s5, a5
	li a3, 0x529
	srlw a6, s9, a3
	li t5, 0x49a
	srlw s8, a6, t5
	li t2, 0x155
	srlw t5, s8, t2
	li s6, 0x463
	srlw a6, t5, s6
	li a5, 0x7f
	srlw s1, a6, a5
	li a7, 0x7d0
	srlw a6, s1, a7
	li a0, 0x51a
	srlw t3, a6, a0
	csrr s5, time
	csrr a5, cycle
	csrr s1, instret
	sub s8, s5, a1
	sub a6, a5, s2
	sub a2, s1, s11
	li a4, 0
	csrr s6, time
	csrr s3, cycle
	csrr a1, instret
	li a5, 0x716
	srlw s8, a4, a5
	li t1, 0x40f
	srlw t5, s8, t1
	li t3, 0x483
	srlw s4, t5, t3
	li t3, 0x3b9
	srlw a6, s4, t3
	li a5, 0x6a0
	srlw s2, a6, a5
	li a0, 0x506
	srlw a5, s2, a0
	li t1, 0x341
	srlw s2, a5, t1
	li t3, 0x4e1
	srlw s9, s2, t3
	li s10, 0x6eb
	srlw s5, s9, s10
	li t3, 0x325
	srlw t1, s5, t3
	li a6, 0x5c
	srlw a3, t1, a6
	li t3, 0x5a4
	srlw s5, a3, t3
	li a0, 0x22e
	srlw s10, s5, a0
	li s1, 0xb4
	srlw s0, s10, s1
	li a7, 0x4a9
	srlw t1, s0, a7
	li s2, 0x5a7
	srlw t6, t1, s2
	li a2, 0xd6
	srlw s8, t6, a2
	li s5, 0x2b5
	srlw a7, s8, s5
	li s8, 0x4a0
	srlw s8, a7, s8
	li s4, 0x42a
	srlw s1, s8, s4
	li s5, 0x32b
	srlw s10, s1, s5
	li s8, 0x56b
	srlw s0, s10, s8
	li s1, 0x5fb
	srlw s4, s0, s1
	li t5, 0x6d7
	srlw s4, s4, t5
	li s9, 0x794
	srlw t6, s4, s9
	li a7, 0x269
	srlw a7, t6, a7
	li t1, 0x361
	srlw a4, a7, t1
	li t3, 0x457
	srlw t3, a4, t3
	li s9, 0x3fd
	srlw s9, t3, s9
	li t5, 0x500
	srlw s5, s9, t5
	li t3, 0x3bc
	srlw s1, s5, t3
	li a6, 0x665
	srlw s1, s1, a6
	li t3, 0x737
	srlw t5, s1, t3
	li s7, 0x286
	srlw a5, t5, s7
	li a2, 0x5b4
	srlw t1, a5, a2
	li s9, 0x30e
	srlw a5, t1, s9
	li t4, 0x53e
	srlw s8, a5, t4
	li s11, 0x6fc
	srlw s4, s8, s11
	li s9, 0x36
	srlw a2, s4, s9
	li s2, 0x7b6
	srlw s7, a2, s2
	li s10, 0x1d0
	srlw a4, s7, s10
	li t5, 0x64d
	srlw a5, a4, t5
	li t5, 0x63
	srlw a2, a5, t5
	li t4, 0x3e3
	srlw t3, a2, t4
	li s2, 0x3e8
	srlw s10, t3, s2
	li t3, 0x2c7
	srlw s11, s10, t3
	li t3, 0x24b
	srlw s2, s11, t3
	li t6, 0x1e4
	srlw a7, s2, t6
	li t5, 0x4e7
	srlw t2, a7, t5
	li a4, 0x191
	srlw s7, t2, a4
	li t1, 0xe5
	srlw t5, s7, t1
	li a0, 0x17f
	srlw a5, t5, a0
	li a6, 0x5bf
	srlw s2, a5, a6
	li s8, 0x34a
	srlw s8, s2, s8
	li t5, 0x29
	srlw t3, s8, t5
	li a3, 0x138
	srlw t1, t3, a3
	li s9, 0x439
	srlw t5, t1, s9
	li t1, 0x50f
	srlw s2, t5, t1
	li a2, 0x1bc
	srlw s10, s2, a2
	li a0, 0x586
	srlw s11, s10, a0
	li t6, 0x3e3
	srlw s8, s11, t6
	li a7, 0x637
	srlw a7, s8, a7
	li s8, 0x423
	srlw a7, a7, s8
	li s10, 0x4e2
	srlw t1, a7, s10
	li a2, 0x35d
	srlw a3, t1, a2
	li s4, 0x78e
	srlw s5, a3, s4
	li s11, 0x17d
	srlw s9, s5, s11
	li t6, 0x27e
	srlw a5, s9, t6
	li a3, 0x1d6
	srlw t5, a5, a3
	li t3, 0x43b
	srlw t4, t5, t3
	li s9, 0x791
	srlw s5, t4, s9
	li t6, 0x389
	srlw s1, s5, t6
	li a5, 0x17b
	srlw a7, s1, a5
	li a3, 0x32e
	srlw a4, a7, a3
	li s0, 0x13f
	srlw t4, a4, s0
	li s9, 0x346
	srlw t3, t4, s9
	li s7, 0x50
	srlw a6, t3, s7
	li s4, 0x3ce
	srlw t5, a6, s4
	li s8, 0x6d7
	srlw t4, t5, s8
	li s4, 0xa6
	srlw a5, t4, s4
	li t6, 0x669
	srlw s5, a5, t6
	li a5, 0x1c0
	srlw s8, s5, a5
	li t1, 0x105
	srlw t4, s8, t1
	li a6, 0x43d
	srlw a0, t4, a6
	li t4, 0x7c4
	srlw t6, a0, t4
	li t2, 0x30b
	srlw s5, t6, t2
	li a6, 0x1f7
	srlw s4, s5, a6
	li a5, 0x525
	srlw t4, s4, a5
	li a0, 0x1c2
	srlw t1, t4, a0
	li t2, 0x62b
	srlw s8, t1, t2
	li s10, 0x79a
	srlw s2, s8, s10
	li s5, 0x73b
	srlw s1, s2, s5
	li a2, 0x176
	srlw a7, s1, a2
	li t3, 0x3b0
	srlw s10, a7, t3
	li s0, 0x4dd
	srlw s10, s10, s0
	li s11, 0x72d
	srlw s11, s10, s11
	li s1, 0x216
	srlw s2, s11, s1
	li a6, 0x6a7
	srlw t6, s2, a6
	li a0, 0x46b
	srlw a6, t6, a0
	li s11, 0x430
	srlw a6, a6, s11
	csrr s1, time
	csrr t3, cycle
	csrr a0, instret
	sub a3, s1, s6
	sub s2, t3, s3
	sub t2, a0, a1
	li s6, 0
	csrr a7, time
	csrr a3, cycle
	csrr t5, instret
	li s11, 0x394
	srlw a4, s6, s11
	li a0, 0x213
	srlw s11, a4, a0
	li a1, 0x413
	srlw a4, s11, a1
	li s1, 0x2b9
	srlw s3, a4, s1
	li a4, 0x775
	srlw a6, s3, a4
	li a1, 0x1f3
	srlw a6, a6, a1
	li a5, 0x19f
	srlw t3, a6, a5
	li s0, 0x37f
	srlw s3, t3, s0
	li a6, 0xbb
	srlw t4, s3, a6
	li t3, 0x4af
	srlw a1, t4, t3
	li t3, 0x49c
	srlw s6, a1, t3
	li a2, 0x7ae
	srlw a2, s6, a2
	li s0, 0x323
	srlw a0, a2, s0
	li t1, 0x5c4
	srlw t4, a0, t1
	li s6, 0x55
	srlw s4, t4, s6
	li t6, 0x6f
	srlw a1, s4, t6
	li s6, 0x70e
	srlw s3, a1, s6
	li a0, 0x13e
	srlw s4, s3, a0
	li a1, 0x1f1
	srlw a0, s4, a1
	li s3, 0x33d
	srlw a6, a0, s3
	li t1, 0x1ab
	srlw t3, a6, t1
	li s8, 0x231
	srlw a1, t3, s8
	li a6, 0x612
	srlw s7, a1, a6
	li s8, 0x444
	srlw a0, s7, s8
	li a5, 0x259
	srlw s3, a0, a5
	li t4, 0x77c
	srlw a2, s3, t4
	li s9, 0x261
	srlw a1, a2, s9
	li a0, 0x5ef
	srlw s8, a1, a0
	li t1, 0x5ad
	srlw a6, s8, t1
	li a5, 0x513
	srlw s0, a6, a5
	li s7, 0x76b
	srlw a5, s0, s7
	li s8, 0x38f
	srlw t6, a5, s8
	li s5, 0x197
	srlw t1, t6, s5
	li t6, 0x26c
	srlw s8, t1, t6
	li s3, 0x178
	srlw a1, s8, s3
	li a4, 0x5f1
	srlw s0, a1, a4
	li a6, 0x428
	srlw a4, s0, a6
	li a2, 0x4db
	srlw s5, a4, a2
	li s6, 0xa2
	srlw s6, s5, s6
	li s10, 0x319
	srlw a5, s6, s10
	li s5, 0x430
	srlw a6, a5, s5
	li a1, 0x350
	srlw s6, a6, a1
	li s11, 0x271
	srlw s3, s6, s11
	li t6, 0x572
	srlw s8, s3, t6
	li t4, 0x3a4
	srlw a2, s8, t4
	li a5, 0x109
	srlw a5, a2, a5
	li s5, 0x6ec
	srlw a6, a5, s5
	li a4, 0x4c3
	srlw a2, a6, a4
	li a4, 0x748
	srlw t1, a2, a4
	li s8, 0x37c
	srlw s5, t1, s8
	li t3, 0x552
	srlw s10, s5, t3
	li t1, 0x502
	srlw s0, s10, t1
	li s10, 0x5ca
	srlw a6, s0, s10
	li t4, 0x711
	srlw s7, a6, t4
	li s11, 0x477
	srlw s10, s7, s11
	li t6, 0x323
	srlw t6, s10, t6
	li a1, 0x553
	srlw s9, t6, a1
	li s1, 0x54d
	srlw s3, s9, s1
	li s11, 0x39d
	srlw t6, s3, s11
	li a4, 0x26e
	srlw s4, t6, a4
	li t6, 0x418
	srlw t6, s4, t6
	li s9, 0x3b8
	srlw s0, t6, s9
	li s11, 0x264
	srlw s9, s0, s11
	li a2, 0x1d7
	srlw a0, s9, a2
	li s7, 0x100
	srlw t3, a0, s7
	li s10, 0x348
	srlw s11, t3, s10
	li s7, 0x7a5
	srlw a1, s11, s7
	li s8, 0x616
	srlw s4, a1, s8
	li t4, 0x173
	srlw a5, s4, t4
	li t3, 0x5df
	srlw s1, a5, t3
	li s3, 0x208
	srlw s11, s1, s3
	li s8, 0x6c8
	srlw a0, s11, s8
	li t4, 0x83
	srlw t1, a0, t4
	li a6, 0x426
	srlw s11, t1, a6
	li s5, 0x589
	srlw t1, s11, s5
	li t4, 0x55b
	srlw t1, t1, t4
	li s3, 0x52b
	srlw s11, t1, s3
	li t3, 0x572
	srlw s9, s11, t3
	li t1, 0x566
	srlw a0, s9, t1
	li s0, 0x3ad
	srlw s1, a0, s0
	li s5, 0x75d
	srlw t1, s1, s5
	li a4, 0x6f0
	srlw a1, t1, a4
	li a5, 0x36c
	srlw a1, a1, a5
	li a5, 0x5d7
	srlw s6, a1, a5
	li s0, 0x3ca
	srlw s3, s6, s0
	li s1, 0x25e
	srlw t1, s3, s1
	li s0, 0x36f
	srlw a4, t1, s0
	li a1, 0x3e3
	srlw t1, a4, a1
	li a4, 0x5d8
	srlw s5, t1, a4
	li s6, 0x7ec
	srlw a0, s5, s6
	li s7, 0x5c3
	srlw a0, a0, s7
	li s0, 0x7b4
	srlw s3, a0, s0
	li t6, 0xee
	srlw a6, s3, t6
	li t3, 0x76c
	srlw t4, a6, t3
	li a1, 0x392
	srlw s9, t4, a1
	li s7, 0x665
	srlw s7, s9, s7
	li a2, 0x512
	srlw t6, s7, a2
	li s7, 0x7ef
	srlw s3, t6, s7
	li a0, 0x366
	srlw s5, s3, a0
	li s8, 0x6ed
	srlw s11, s5, s8
	csrr s6, time
	csrr a2, cycle
	csrr t3, instret
	sub t6, s6, a7
	sub s0, a2, a3
	sub t1, t3, t5
	beq s2, s0, pass_label_55
	li t6, failed_addr
	ld a5, 0(t6)
	jr a5
pass_label_55:
	beq t2, t1, pass_label_56
	li s4, failed_addr
	ld a4, 0(s4)
	jr a4
pass_label_56:
SID_ZKT_05_SRLW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_05_SRAW)
SID_ZKT_05_SRAW:
	li sp, SID_ZKT_05_SRAW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s3, 0
	csrr a4, time
	csrr a2, cycle
	csrr s0, instret
	li s6, 0x231
	sraw s5, s3, s6
	li t5, 0x30b
	sraw a3, s5, t5
	li t6, 0x32b
	sraw s7, a3, t6
	li t1, 0x7a1
	sraw t1, s7, t1
	li s10, 0x66a
	sraw a5, t1, s10
	li a1, 0x4e8
	sraw s1, a5, a1
	li s8, 0x77c
	sraw t1, s1, s8
	li a6, 0x4ff
	sraw t4, t1, a6
	li s2, 0x599
	sraw a7, t4, s2
	li t2, 0x19d
	sraw t4, a7, t2
	li a5, 0xfb
	sraw t6, t4, a5
	li t3, 0x18
	sraw s10, t6, t3
	li t6, 0x5d8
	sraw a7, s10, t6
	li s1, 0x6
	sraw s2, a7, s1
	li s8, 0x317
	sraw t2, s2, s8
	li t4, 0x629
	sraw a7, t2, t4
	li t1, 0x765
	sraw s5, a7, t1
	li t6, 0x53e
	sraw s1, s5, t6
	li a3, 0xb5
	sraw a3, s1, a3
	li s1, 0x634
	sraw s4, a3, s1
	li s2, 0x24f
	sraw s6, s4, s2
	li s4, 0x19b
	sraw s2, s6, s4
	li s7, 0x2eb
	sraw s5, s2, s7
	li s3, 0x155
	sraw t2, s5, s3
	li a1, 0x12a
	sraw t2, t2, a1
	li s3, 0x5c8
	sraw a0, t2, s3
	li s8, 0x29f
	sraw t1, a0, s8
	li s2, 0x2a2
	sraw a1, t1, s2
	li t1, 0x28e
	sraw s8, a1, t1
	li s3, 0x151
	sraw s3, s8, s3
	li s7, 0x537
	sraw t1, s3, s7
	li s8, 0x602
	sraw a6, t1, s8
	li t1, 0x16f
	sraw t4, a6, t1
	li a3, 0x26a
	sraw a3, t4, a3
	li s2, 0x47e
	sraw s1, a3, s2
	li a6, 0x422
	sraw s11, s1, a6
	li s4, 0x219
	sraw s6, s11, s4
	li t5, 0x2f
	sraw s10, s6, t5
	li s9, 0x1d6
	sraw s9, s10, s9
	li s10, 0xa4
	sraw s9, s9, s10
	li s1, 0x441
	sraw s11, s9, s1
	li a3, 0x638
	sraw t2, s11, a3
	li t4, 0x607
	sraw t6, t2, t4
	li s8, 0x3e1
	sraw t5, t6, s8
	li s7, 0x6c6
	sraw t1, t5, s7
	li s6, 0x6cc
	sraw s2, t1, s6
	li t6, 0x6c3
	sraw s8, s2, t6
	li s9, 0x714
	sraw t6, s8, s9
	li a6, 0x2c6
	sraw s8, t6, a6
	li s6, 0x3b4
	sraw t6, s8, s6
	li s5, 0x2b2
	sraw s5, t6, s5
	li s3, 0x2f1
	sraw s10, s5, s3
	li a6, 0x7a2
	sraw t5, s10, a6
	li s9, 0x7a
	sraw a3, t5, s9
	li a5, 0xcf
	sraw a3, a3, a5
	li s5, 0x52e
	sraw t3, a3, s5
	li a7, 0x32b
	sraw a3, t3, a7
	li s6, 0x7dc
	sraw t2, a3, s6
	li s3, 0x5b8
	sraw s1, t2, s3
	li t6, 0x667
	sraw t1, s1, t6
	li t6, 0x347
	sraw s10, t1, t6
	li t1, 0x118
	sraw t3, s10, t1
	li a0, 0xe4
	sraw s3, t3, a0
	li s11, 0x251
	sraw a1, s3, s11
	li t1, 0x54
	sraw s7, a1, t1
	li a7, 0x784
	sraw a0, s7, a7
	li s9, 0x55f
	sraw t5, a0, s9
	li a6, 0x448
	sraw s10, t5, a6
	li s7, 0x337
	sraw s10, s10, s7
	li s6, 0x4a2
	sraw a7, s10, s6
	li s6, 0x2d7
	sraw t1, a7, s6
	li s5, 0x21f
	sraw s8, t1, s5
	li t4, 0x656
	sraw s8, s8, t4
	li s11, 0x531
	sraw s5, s8, s11
	li t5, 0x769
	sraw t3, s5, t5
	li s4, 0x32d
	sraw a3, t3, s4
	li a5, 0x207
	sraw s2, a3, a5
	li a0, 0x37f
	sraw a7, s2, a0
	li t5, 0x4cf
	sraw s10, a7, t5
	li s1, 0xd
	sraw a0, s10, s1
	li a1, 0x542
	sraw s9, a0, a1
	li a5, 0x57f
	sraw s6, s9, a5
	li s9, 0x1d
	sraw s3, s6, s9
	li s4, 0x75e
	sraw t6, s3, s4
	li t4, 0xaa
	sraw t1, t6, t4
	li s1, 0x3d1
	sraw t6, t1, s1
	li a3, 0x747
	sraw s6, t6, a3
	li t1, 0x274
	sraw t5, s6, t1
	li s7, 0x257
	sraw s2, t5, s7
	li s6, 0x2aa
	sraw s10, s2, s6
	li a7, 0x279
	sraw t4, s10, a7
	li t2, 0x1cd
	sraw s1, t4, t2
	li a0, 0x45e
	sraw s10, s1, a0
	li t2, 0x718
	sraw t3, s10, t2
	li s6, 0x3ee
	sraw s6, t3, s6
	li s1, 0x534
	sraw s4, s6, s1
	li s2, 0x2fc
	sraw t1, s4, s2
	li t6, 0x4d3
	sraw t2, t1, t6
	li s4, 0x436
	sraw s7, t2, s4
	li s10, 0x7c2
	sraw s2, s7, s10
	csrr s2, time
	csrr a5, cycle
	csrr s11, instret
	sub a3, s2, a4
	sub s9, a5, a2
	sub a6, s11, s0
	li a6, 0
	csrr s8, time
	csrr a1, cycle
	csrr s7, instret
	li s10, 0x77a
	sraw a6, a6, s10
	li s6, 0x4de
	sraw a4, a6, s6
	li s6, 0x4c7
	sraw a3, a4, s6
	li s9, 0x2a5
	sraw a7, a3, s9
	li a4, 0x11e
	sraw a2, a7, a4
	li t6, 0x8e
	sraw a6, a2, t6
	li s6, 0x5a2
	sraw s1, a6, s6
	li a5, 0xac
	sraw a0, s1, a5
	li a3, 0x9e
	sraw a3, a0, a3
	li a0, 0x6c6
	sraw s4, a3, a0
	li t6, 0x7a
	sraw a6, s4, t6
	li t5, 0x174
	sraw a0, a6, t5
	li s9, 0x36b
	sraw t1, a0, s9
	li t2, 0x499
	sraw a6, t1, t2
	li t4, 0x63e
	sraw a6, a6, t4
	li t6, 0x35c
	sraw s0, a6, t6
	li a2, 0x3fa
	sraw s0, s0, a2
	li s6, 0x472
	sraw t1, s0, s6
	li s4, 0x321
	sraw s6, t1, s4
	li s3, 0x75d
	sraw a6, s6, s3
	li s3, 0x4c4
	sraw t4, a6, s3
	li t5, 0x16d
	sraw a4, t4, t5
	li s5, 0x583
	sraw s3, a4, s5
	li t6, 0x515
	sraw a4, s3, t6
	li s10, 0x54a
	sraw a2, a4, s10
	li t1, 0xd9
	sraw a4, a2, t1
	li s1, 0x33a
	sraw a4, a4, s1
	li s10, 0x461
	sraw s11, a4, s10
	li s2, 0x6c3
	sraw a7, s11, s2
	li a0, 0x1d0
	sraw a0, a7, a0
	li a6, 0x2fe
	sraw s5, a0, a6
	li a5, 0x93
	sraw a4, s5, a5
	li t6, 0x31a
	sraw s5, a4, t6
	li s0, 0x5c5
	sraw t1, s5, s0
	li s2, 0x73c
	sraw s11, t1, s2
	li t5, 0x31
	sraw a3, s11, t5
	li a0, 0x267
	sraw t4, a3, a0
	li s1, 0x40d
	sraw s5, t4, s1
	li a0, 0x1be
	sraw s0, s5, a0
	li s1, 0x515
	sraw t5, s0, s1
	li s0, 0x211
	sraw t3, t5, s0
	li s10, 0xd5
	sraw s5, t3, s10
	li s1, 0x36f
	sraw t4, s5, s1
	li a5, 0x288
	sraw s9, t4, a5
	li a6, 0x47d
	sraw a7, s9, a6
	li t3, 0x57d
	sraw a0, a7, t3
	li s10, 0x149
	sraw t1, a0, s10
	li t4, 0x1bc
	sraw a6, t1, t4
	li a7, 0x10a
	sraw t1, a6, a7
	li s10, 0x4ce
	sraw s10, t1, s10
	li s2, 0x48d
	sraw s4, s10, s2
	li a4, 0x3
	sraw a0, s4, a4
	li t6, 0x743
	sraw a5, a0, t6
	li s0, 0x20c
	sraw a3, a5, s0
	li t6, 0x39d
	sraw a6, a3, t6
	li s9, 0x7b2
	sraw a2, a6, s9
	li s11, 0x7b5
	sraw s0, a2, s11
	li a2, 0x213
	sraw s1, s0, a2
	li t2, 0x4ca
	sraw s0, s1, t2
	li a2, 0xcc
	sraw t3, s0, a2
	li s2, 0x211
	sraw a6, t3, s2
	li s4, 0x6a
	sraw t4, a6, s4
	li a2, 0x7e7
	sraw s9, t4, a2
	li t4, 0x60a
	sraw a6, s9, t4
	li s1, 0x158
	sraw s9, a6, s1
	li a4, 0x35a
	sraw s4, s9, a4
	li t1, 0x569
	sraw s10, s4, t1
	li t2, 0x9
	sraw s0, s10, t2
	li a5, 0x222
	sraw t2, s0, a5
	li s6, 0xe3
	sraw s2, t2, s6
	li t2, 0x74a
	sraw s0, s2, t2
	li s5, 0x416
	sraw s0, s0, s5
	li s1, 0x1d0
	sraw a3, s0, s1
	li t6, 0x6ef
	sraw a7, a3, t6
	li t5, 0x1bd
	sraw s5, a7, t5
	li a2, 0x25f
	sraw s5, s5, a2
	li a0, 0x646
	sraw s5, s5, a0
	li t4, 0x3f8
	sraw s1, s5, t4
	li a7, 0x70f
	sraw t2, s1, a7
	li s11, 0x17a
	sraw a6, t2, s11
	li s4, 0x78f
	sraw s6, a6, s4
	li s5, 0x2eb
	sraw s1, s6, s5
	li t2, 0x6f0
	sraw a0, s1, t2
	li s4, 0x7f4
	sraw a4, a0, s4
	li s2, 0x4f7
	sraw a7, a4, s2
	li t1, 0x18b
	sraw s9, a7, t1
	li s11, 0x420
	sraw t4, s9, s11
	li a2, 0x272
	sraw t2, t4, a2
	li s5, 0x4f1
	sraw t3, t2, s5
	li s10, 0x374
	sraw a3, t3, s10
	li s1, 0x8f
	sraw a5, a3, s1
	li s3, 0x1a7
	sraw a6, a5, s3
	li t2, 0x2ab
	sraw t5, a6, t2
	li t6, 0x1ee
	sraw t3, t5, t6
	li a6, 0x467
	sraw s2, t3, a6
	li a3, 0x54b
	sraw a0, s2, a3
	li s3, 0x228
	sraw s3, a0, s3
	li a0, 0x356
	sraw t6, s3, a0
	li s11, 0x512
	sraw a4, t6, s11
	li a7, 0x146
	sraw a2, a4, a7
	csrr s1, time
	csrr a2, cycle
	csrr s10, instret
	sub t2, s1, s8
	sub a6, a2, a1
	sub s7, s10, s7
	li s0, 0
	csrr t4, time
	csrr t5, cycle
	csrr a7, instret
	li s11, 0x4ba
	sraw a4, s0, s11
	li t6, 0x231
	sraw a3, a4, t6
	li s11, 0x7d1
	sraw s9, a3, s11
	li s0, 0x6bc
	sraw t6, s9, s0
	li t3, 0x1e5
	sraw s8, t6, t3
	li t3, 0x266
	sraw s1, s8, t3
	li s11, 0x628
	sraw s1, s1, s11
	li t3, 0x2c2
	sraw s4, s1, t3
	li t3, 0x7ec
	sraw s3, s4, t3
	li s2, 0x314
	sraw s9, s3, s2
	li t2, 0xbe
	sraw s0, s9, t2
	li s1, 0x7ab
	sraw s3, s0, s1
	li t2, 0x330
	sraw s6, s3, t2
	li s4, 0x663
	sraw s11, s6, s4
	li s8, 0x40f
	sraw s10, s11, s8
	li t1, 0x4aa
	sraw t2, s10, t1
	li a2, 0x685
	sraw s1, t2, a2
	li s0, 0x7c4
	sraw a0, s1, s0
	li s3, 0x5eb
	sraw s5, a0, s3
	li s4, 0x4da
	sraw s1, s5, s4
	li a3, 0x113
	sraw s2, s1, a3
	li a4, 0x4cd
	sraw s3, s2, a4
	li s8, 0x2c3
	sraw s10, s3, s8
	li a2, 0x25e
	sraw a5, s10, a2
	li t2, 0xed
	sraw a3, a5, t2
	li t6, 0x1d6
	sraw t3, a3, t6
	li s10, 0x331
	sraw a2, t3, s10
	li s1, 0x2ac
	sraw t1, a2, s1
	li s1, 0x6ff
	sraw a4, t1, s1
	li t3, 0x65f
	sraw s2, a4, t3
	li s6, 0x149
	sraw a0, s2, s6
	li s8, 0x145
	sraw s8, a0, s8
	li s11, 0x100
	sraw a2, s8, s11
	li t2, 0xb8
	sraw s4, a2, t2
	li s5, 0xfc
	sraw a1, s4, s5
	li s9, 0x45c
	sraw s3, a1, s9
	li t1, 0x148
	sraw t6, s3, t1
	li a5, 0x23b
	sraw t1, t6, a5
	li a5, 0x2af
	sraw s1, t1, a5
	li t2, 0x211
	sraw t2, s1, t2
	li s1, 0x552
	sraw s10, t2, s1
	li t3, 0x3cf
	sraw s1, s10, t3
	li s11, 0x7f0
	sraw a5, s1, s11
	li a4, 0x71c
	sraw a3, a5, a4
	li s5, 0x6e1
	sraw s0, a3, s5
	li s11, 0x170
	sraw t6, s0, s11
	li a3, 0x6ec
	sraw s9, t6, a3
	li a2, 0x623
	sraw t3, s9, a2
	li a4, 0x320
	sraw s8, t3, a4
	li s9, 0x5e2
	sraw t2, s8, s9
	li a2, 0x5f8
	sraw s4, t2, a2
	li s10, 0x55b
	sraw a0, s4, s10
	li a5, 0xf
	sraw s3, a0, a5
	li s5, 0x33e
	sraw a3, s3, s5
	li s1, 0x779
	sraw t6, a3, s1
	li t3, 0x27
	sraw s3, t6, t3
	li s8, 0x536
	sraw s3, s3, s8
	li a5, 0x60d
	sraw s8, s3, a5
	li a1, 0x549
	sraw t3, s8, a1
	li s11, 0x3bd
	sraw t3, t3, s11
	li s0, 0xd1
	sraw a0, t3, s0
	li t1, 0xe2
	sraw s9, a0, t1
	li s4, 0x613
	sraw s0, s9, s4
	li a4, 0x7c0
	sraw s4, s0, a4
	li a2, 0x272
	sraw s4, s4, a2
	li s2, 0x7fe
	sraw s11, s4, s2
	li s0, 0x462
	sraw s0, s11, s0
	li t1, 0x76d
	sraw a0, s0, t1
	li a1, 0x4dc
	sraw s9, a0, a1
	li s0, 0x209
	sraw t1, s9, s0
	li t3, 0x1dd
	sraw s11, t1, t3
	li s6, 0x16a
	sraw s5, s11, s6
	li t1, 0x1c0
	sraw s8, s5, t1
	li s4, 0x142
	sraw a2, s8, s4
	li s0, 0x53a
	sraw s3, a2, s0
	li a5, 0x279
	sraw s1, s3, a5
	li s11, 0x3ed
	sraw s9, s1, s11
	li t2, 0x69c
	sraw t6, s9, t2
	li t2, 0x564
	sraw s5, t6, t2
	li s2, 0x595
	sraw s6, s5, s2
	li t2, 0x18d
	sraw s1, s6, t2
	li t6, 0xfe
	sraw s5, s1, t6
	li s2, 0x568
	sraw a3, s5, s2
	li s2, 0x162
	sraw t3, a3, s2
	li s2, 0x3dc
	sraw a5, t3, s2
	li s0, 0x3c4
	sraw a4, a5, s0
	li s1, 0x61d
	sraw a1, a4, s1
	li t1, 0x35d
	sraw a4, a1, t1
	li s5, 0x6c6
	sraw s10, a4, s5
	li a3, 0x654
	sraw s9, s10, a3
	li s11, 0x17b
	sraw s5, s9, s11
	li s0, 0x371
	sraw t1, s5, s0
	li s9, 0xca
	sraw t6, t1, s9
	li a5, 0x7b
	sraw a5, t6, a5
	li a3, 0x640
	sraw t6, a5, a3
	li s10, 0x68f
	sraw s10, t6, s10
	li a0, 0x490
	sraw a0, s10, a0
	li s1, 0x214
	sraw a5, a0, s1
	li s3, 0x71e
	sraw a0, a5, s3
	li s6, 0x29d
	sraw s11, a0, s6
	csrr s9, time
	csrr t3, cycle
	csrr s10, instret
	sub s0, s9, t4
	sub a2, t3, t5
	sub t6, s10, a7
	beq a6, a2, pass_label_57
	li s10, failed_addr
	ld s9, 0(s10)
	jr s9
pass_label_57:
	beq s7, t6, pass_label_58
	li t4, failed_addr
	ld s3, 0(t4)
	jr s3
pass_label_58:
SID_ZKT_05_SRAW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_06)
SID_ZKT_06:
	li sp, SID_ZKT_06_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a3, 0
	li s4, 0
	beq a3, a3, pass_label_59
	li a5, failed_addr
	ld a2, 0(a5)
	jr a2
pass_label_59:
SID_ZKT_06_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_07_MUL)
SID_ZKT_07_MUL:
	li sp, SID_ZKT_07_MUL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s8, 0
	csrr t1, time
	csrr a3, cycle
	csrr s3, instret
	li s11, 0
	mul t2, s8, s11
	li s7, 0x4b4
	mul s8, t2, s7
	li a4, 0x737
	mul s2, s8, a4
	li s8, 0x76f
	mul t4, s2, s8
	li a6, 0x397
	mul a0, t4, a6
	li a7, 0x2e7
	mul s5, a0, a7
	li a2, 0
	mul a1, s5, a2
	li t5, 0x3d8
	mul s1, a1, t5
	li a0, 0x78e
	mul a0, s1, a0
	li s0, 0x7ef
	mul a6, a0, s0
	li a1, 0x1e3
	mul s9, a6, a1
	li t3, 0x27a
	mul a6, s9, t3
	li s6, 0
	mul s9, a6, s6
	li s10, 0x188
	mul s2, s9, s10
	li a4, 0x5b8
	mul s4, s2, a4
	li a6, 0x4aa
	mul a0, s4, a6
	li s2, 0xb1
	mul a2, a0, s2
	li s8, 0x3bd
	mul s10, a2, s8
	li t3, 0
	mul s0, s10, t3
	li a0, 0x6c
	mul a6, s0, a0
	li a0, 0x539
	mul a4, a6, a0
	li a6, 0x362
	mul s1, a4, a6
	li s11, 0x697
	mul a7, s1, s11
	li t3, 0xac
	mul s2, a7, t3
	li s6, 0
	mul s2, s2, s6
	li s5, 0x94
	mul a0, s2, s5
	li s7, 0x3eb
	mul s1, a0, s7
	li a0, 0x7bf
	mul a7, s1, a0
	li s1, 0x5a1
	mul s4, a7, s1
	li a4, 0x4c0
	mul s10, s4, a4
	li s6, 0
	mul t4, s10, s6
	li t2, 0x7a5
	mul t5, t4, t2
	li s5, 0x242
	mul t3, t5, s5
	li a4, 0x2cb
	mul s0, t3, a4
	li a6, 0x6d6
	mul s4, s0, a6
	li a0, 0x5bc
	mul s6, s4, a0
	li t3, 0
	mul s7, s6, t3
	li s0, 0x66d
	mul s8, s7, s0
	li s2, 0x696
	mul a6, s8, s2
	li t6, 0x7a1
	mul t3, a6, t6
	li s4, 0x362
	mul s5, t3, s4
	li s1, 0x318
	mul t6, s5, s1
	li a6, 0
	mul t6, t6, a6
	li s1, 0x3b6
	mul s5, t6, s1
	li t4, 0x44b
	mul s6, s5, t4
	li a0, 0x420
	mul s5, s6, a0
	li s7, 0x2c6
	mul s2, s5, s7
	li s6, 0x672
	mul t3, s2, s6
	li t2, 0
	mul a7, t3, t2
	li s2, 0x474
	mul a1, a7, s2
	li a0, 0x65d
	mul a5, a1, a0
	li a7, 0x51
	mul s1, a5, a7
	li a5, 0x39d
	mul a2, s1, a5
	li s1, 0x350
	mul s10, a2, s1
	li a7, 0
	mul s9, s10, a7
	li s2, 0x2d3
	mul s1, s9, s2
	li s9, 0x21e
	mul a1, s1, s9
	li t5, 0x6e9
	mul t2, a1, t5
	li a0, 0xde
	mul s10, t2, a0
	li s4, 0x5e3
	mul t6, s10, s4
	li s9, 0
	mul s10, t6, s9
	li t4, 0x15e
	mul s2, s10, t4
	li t4, 0x6b7
	mul s5, s2, t4
	li s0, 0x1f1
	mul s1, s5, s0
	li t3, 0x21e
	mul s6, s1, t3
	li a5, 0x239
	mul t6, s6, a5
	li s2, 0
	mul a2, t6, s2
	li s1, 0x62c
	mul a1, a2, s1
	li t3, 0x334
	mul s0, a1, t3
	li s4, 0x482
	mul s7, s0, s4
	li a5, 0xf5
	mul a0, s7, a5
	li s1, 0x11e
	mul t6, a0, s1
	li a7, 0
	mul a2, t6, a7
	li s0, 0x665
	mul a7, a2, s0
	li t2, 0x7d7
	mul s6, a7, t2
	li s8, 0x339
	mul a1, s6, s8
	li s2, 0x57d
	mul a2, a1, s2
	li s8, 0x233
	mul s6, a2, s8
	li t4, 0
	mul t3, s6, t4
	li s9, 0x18a
	mul a5, t3, s9
	li s11, 0x5fc
	mul s5, a5, s11
	li a6, 0x675
	mul t4, s5, a6
	li a6, 0x50c
	mul s2, t4, a6
	li a2, 0xac
	mul a7, s2, a2
	li s4, 0
	mul a1, a7, s4
	li s10, 0x35b
	mul t3, a1, s10
	li s2, 0xb0
	mul t6, t3, s2
	li s1, 0x3e6
	mul s7, t6, s1
	li t5, 0x606
	mul s11, s7, t5
	li s9, 0x327
	mul s4, s11, s9
	li s0, 0
	mul s11, s4, s0
	li t3, 0x6f
	mul s2, s11, t3
	li s4, 0xd4
	mul s2, s2, s4
	li a2, 0x741
	mul a0, s2, a2
	li s8, 0x6e6
	mul a7, a0, s8
	li s11, 0x1aa
	mul s1, a7, s11
	li a0, 0
	mul s1, s1, a0
	li a4, 0x4ef
	mul s9, s1, a4
	li a1, 0x38a
	mul s5, s9, a1
	li a0, 0x386
	mul s10, s5, a0
	csrr t5, time
	csrr s11, cycle
	csrr s2, instret
	sub s4, t5, t1
	sub t3, s11, a3
	sub s6, s2, s3
	li s8, 0
	csrr s4, time
	csrr s6, cycle
	csrr t1, instret
	li s1, 0
	mul s7, s8, s1
	li t4, 0x291
	mul t2, s7, t4
	li a5, 0x442
	mul s0, t2, a5
	li a7, 0x75b
	mul a6, s0, a7
	li s3, 0x2aa
	mul t3, a6, s3
	li s11, 0x1a3
	mul s3, t3, s11
	li a3, 0
	mul t5, s3, a3
	li s9, 0x7ac
	mul s9, t5, s9
	li a1, 0x393
	mul s8, s9, a1
	li a5, 0x600
	mul a6, s8, a5
	li s10, 0x651
	mul t2, a6, s10
	li t6, 0x23d
	mul a0, t2, t6
	li a2, 0
	mul a5, a0, a2
	li t6, 0x7f6
	mul t2, a5, t6
	li s0, 0x32b
	mul s7, t2, s0
	li s1, 0x87
	mul a5, s7, s1
	li s10, 0x18f
	mul s11, a5, s10
	li a3, 0x1f7
	mul s9, s11, a3
	li s11, 0
	mul a7, s9, s11
	li s5, 0x53a
	mul s2, a7, s5
	li a7, 0xb3
	mul a6, s2, a7
	li s8, 0x5b8
	mul s1, a6, s8
	li s8, 0x459
	mul a5, s1, s8
	li a6, 0x510
	mul s11, a5, a6
	li a5, 0
	mul s7, s11, a5
	li a2, 0x6c3
	mul t3, s7, a2
	li t4, 0xb8
	mul s8, t3, t4
	li a1, 0x643
	mul a7, s8, a1
	li a2, 0x418
	mul s0, a7, a2
	li s11, 0x6d3
	mul s2, s0, s11
	li s8, 0
	mul t5, s2, s8
	li a1, 0x3ed
	mul s8, t5, a1
	li t3, 0x353
	mul a7, s8, t3
	li a4, 0x155
	mul t6, a7, a4
	li a6, 0x22e
	mul s11, t6, a6
	li a3, 0xc9
	mul a4, s11, a3
	li s3, 0
	mul s0, a4, s3
	li a5, 0x611
	mul s8, s0, a5
	li s1, 0x633
	mul s5, s8, s1
	li a6, 0x769
	mul a3, s5, a6
	li s3, 0x13
	mul s3, a3, s3
	li a0, 0xf5
	mul s2, s3, a0
	li a3, 0
	mul s11, s2, a3
	li a3, 0x21f
	mul t6, s11, a3
	li s5, 0x31f
	mul t2, t6, s5
	li s7, 0x3b1
	mul t3, t2, s7
	li a4, 0x4f3
	mul t4, t3, a4
	li a1, 0x4d3
	mul s8, t4, a1
	li s1, 0
	mul s7, s8, s1
	li t4, 0x4e2
	mul t3, s7, t4
	li s11, 0x63d
	mul a3, t3, s11
	li t5, 0x3a2
	mul s0, a3, t5
	li a5, 0x53c
	mul s7, s0, a5
	li t3, 0x6e4
	mul s0, s7, t3
	li t4, 0
	mul s2, s0, t4
	li s11, 0x194
	mul s3, s2, s11
	li a0, 0x2dc
	mul a6, s3, a0
	li t6, 0x52
	mul s9, a6, t6
	li s8, 0x33
	mul a0, s9, s8
	li a2, 0x63f
	mul t3, a0, a2
	li a1, 0
	mul s5, t3, a1
	li a5, 0x30c
	mul a7, s5, a5
	li a3, 0x38c
	mul t4, a7, a3
	li a2, 0x4ce
	mul a1, t4, a2
	li s8, 0x658
	mul t4, a1, s8
	li s2, 0x245
	mul a4, t4, s2
	li s1, 0
	mul s0, a4, s1
	li a5, 0x350
	mul a1, s0, a5
	li t4, 0x2e0
	mul t5, a1, t4
	li s1, 0x6ee
	mul t4, t5, s1
	li a1, 0x1dc
	mul a4, t4, a1
	li s11, 0x50d
	mul a3, a4, s11
	li t2, 0
	mul s9, a3, t2
	li t4, 0x28c
	mul t6, s9, t4
	li s0, 0x7a7
	mul a4, t6, s0
	li a7, 0x108
	mul s1, a4, a7
	li t4, 0x5ed
	mul t6, s1, t4
	li s1, 0x1d8
	mul t4, t6, s1
	li s11, 0
	mul s3, t4, s11
	li t3, 0x593
	mul s0, s3, t3
	li t6, 0x6e5
	mul s8, s0, t6
	li a6, 0x1c1
	mul t5, s8, a6
	li t3, 0x51f
	mul a1, t5, t3
	li s11, 0x604
	mul s3, a1, s11
	li s9, 0
	mul s3, s3, s9
	li s10, 0x6cd
	mul a2, s3, s10
	li t2, 0x5b1
	mul s10, a2, t2
	li s7, 0x570
	mul a3, s10, s7
	li s7, 0x787
	mul s9, a3, s7
	li t6, 0x3b9
	mul t6, s9, t6
	li a6, 0
	mul a6, t6, a6
	li t5, 0xa7
	mul a4, a6, t5
	li t5, 0x6a5
	mul a0, a4, t5
	li a4, 0x4b3
	mul a7, a0, a4
	li a1, 0x3c4
	mul t2, a7, a1
	li s3, 0x764
	mul t4, t2, s3
	li s9, 0
	mul t5, t4, s9
	li a7, 0x541
	mul a3, t5, a7
	li s0, 0x294
	mul t3, a3, s0
	li a6, 0x1da
	mul a2, t3, a6
	csrr s10, time
	csrr s11, cycle
	csrr s9, instret
	sub a4, s10, s4
	sub s3, s11, s6
	sub s10, s9, t1
	li a0, 0
	csrr s9, time
	csrr a4, cycle
	csrr t5, instret
	li s11, 0
	mul s5, a0, s11
	li a3, 0x5
	mul t3, s5, a3
	li a3, 0x57e
	mul t3, t3, a3
	li t1, 0x231
	mul s0, t3, t1
	li t3, 0x41e
	mul a2, s0, t3
	li s2, 0x371
	mul t1, a2, s2
	li a5, 0
	mul s0, t1, a5
	li a7, 0x1fa
	mul t3, s0, a7
	li s0, 0x528
	mul t3, t3, s0
	li a2, 0x6a9
	mul s5, t3, a2
	li a6, 0x422
	mul a3, s5, a6
	li a6, 0x39f
	mul t4, a3, a6
	li t1, 0
	mul a3, t4, t1
	li t4, 0x1cd
	mul a1, a3, t4
	li a3, 0x466
	mul a7, a1, a3
	li s6, 0x7fe
	mul s6, a7, s6
	li s2, 0x586
	mul a2, s6, s2
	li s6, 0x155
	mul t3, a2, s6
	li a6, 0
	mul a7, t3, a6
	li s8, 0x72f
	mul t1, a7, s8
	li s2, 0x71d
	mul a3, t1, s2
	li t3, 0x687
	mul a5, a3, t3
	li s0, 0x26c
	mul a7, a5, s0
	li t6, 0x323
	mul s5, a7, t6
	li s6, 0
	mul s8, s5, s6
	li t3, 0x185
	mul t1, s8, t3
	li a2, 0x3de
	mul s1, t1, a2
	li s6, 0x92
	mul a2, s1, s6
	li t3, 0x1a
	mul s4, a2, t3
	li a7, 0x76a
	mul s1, s4, a7
	li a1, 0
	mul a6, s1, a1
	li a2, 0x3c3
	mul s0, a6, a2
	li s8, 0x3e1
	mul s2, s0, s8
	li a0, 0x3bb
	mul s6, s2, a0
	li a1, 0x772
	mul t4, s6, a1
	li s6, 0x7f3
	mul s1, t4, s6
	li a2, 0
	mul a7, s1, a2
	li t6, 0x5c0
	mul s8, a7, t6
	li t6, 0x4a1
	mul a7, s8, t6
	li s7, 0x531
	mul s11, a7, s7
	li a1, 0x376
	mul s7, s11, a1
	li s2, 0x5a3
	mul s7, s7, s2
	li a0, 0
	mul s5, s7, a0
	li t4, 0xc9
	mul a7, s5, t4
	li s2, 0x499
	mul a5, a7, s2
	li a7, 0x2e8
	mul a1, a5, a7
	li s6, 0x2fa
	mul a2, a1, s6
	li s2, 0x4c8
	mul t3, a2, s2
	li s8, 0
	mul t2, t3, s8
	li s4, 0x208
	mul t6, t2, s4
	li s11, 0x264
	mul s5, t6, s11
	li a3, 0x23f
	mul s4, s5, a3
	li s7, 0x6ad
	mul s2, s4, s7
	li s0, 0x3a8
	mul a1, s2, s0
	li t4, 0
	mul t6, a1, t4
	li t4, 0x48b
	mul a1, t6, t4
	li t6, 0xde
	mul s1, a1, t6
	li t1, 0x5f0
	mul a1, s1, t1
	li s5, 0x692
	mul s1, a1, s5
	li s5, 0x227
	mul s4, s1, s5
	li s7, 0
	mul t2, s4, s7
	li a1, 0xca
	mul s4, t2, a1
	li a3, 0x3f5
	mul a5, s4, a3
	li s8, 0xd
	mul a3, a5, s8
	li t2, 0x288
	mul a0, a3, t2
	li t6, 0x3e9
	mul t3, a0, t6
	li t4, 0
	mul t4, t3, t4
	li t2, 0x587
	mul a5, t4, t2
	li s6, 0x5d4
	mul s1, a5, s6
	li a1, 0x4f6
	mul a5, s1, a1
	li t6, 0x20b
	mul t3, a5, t6
	li s4, 0x3f4
	mul t2, t3, s4
	li s11, 0
	mul s7, t2, s11
	li a1, 0x3ab
	mul a7, s7, a1
	li s11, 0x191
	mul s8, a7, s11
	li a3, 0x537
	mul a1, s8, a3
	li a7, 0x611
	mul s7, a1, a7
	li a7, 0xed
	mul s11, s7, a7
	li s8, 0
	mul t3, s11, s8
	li s0, 0x336
	mul a5, t3, s0
	li s11, 0xbf
	mul a3, a5, s11
	li s8, 0x216
	mul t6, a3, s8
	li a5, 0x2c2
	mul a3, t6, a5
	li a5, 0x4b9
	mul a1, a3, a5
	li t2, 0
	mul t1, a1, t2
	li t6, 0x52c
	mul s11, t1, t6
	li s2, 0x6e8
	mul a2, s11, s2
	li t1, 0x124
	mul t2, a2, t1
	li a1, 0xc1
	mul t4, t2, a1
	li a7, 0x6a8
	mul s7, t4, a7
	li s11, 0
	mul t1, s7, s11
	li s0, 0x447
	mul s6, t1, s0
	li s11, 0x1be
	mul a2, s6, s11
	li s0, 0x2ed
	mul a6, a2, s0
	li t6, 0x751
	mul a0, a6, t6
	li a5, 0x256
	mul t3, a0, a5
	li a2, 0
	mul s2, t3, a2
	li t6, 0x22c
	mul a6, s2, t6
	li a0, 0x3af
	mul t4, a6, a0
	li s8, 0x187
	mul a5, t4, s8
	csrr s1, time
	csrr t3, cycle
	csrr a1, instret
	sub s9, s1, s9
	sub t2, t3, a4
	sub s5, a1, t5
	beq s3, t2, pass_label_60
	li s7, failed_addr
	ld a7, 0(s7)
	jr a7
pass_label_60:
	beq s10, s5, pass_label_61
	li a1, failed_addr
	ld a3, 0(a1)
	jr a3
pass_label_61:
SID_ZKT_07_MUL_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_07_MULH)
SID_ZKT_07_MULH:
	li sp, SID_ZKT_07_MULH_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t5, 0
	csrr s4, time
	csrr s5, cycle
	csrr t2, instret
	li a3, 0
	mulh s7, t5, a3
	li a6, 0x3e7
	mulh s3, s7, a6
	li s6, 0x498
	mulh a2, s3, s6
	li a4, 0x27a
	mulh s11, a2, a4
	li t6, 0x389
	mulh a3, s11, t6
	li t1, 0x35d
	mulh t5, a3, t1
	li a3, 0
	mulh a2, t5, a3
	li a6, 0x237
	mulh s3, a2, a6
	li a4, 0x6d4
	mulh s7, s3, a4
	li s1, 0x1c1
	mulh a7, s7, s1
	li t6, 0x2b1
	mulh t3, a7, t6
	li s3, 0x2fa
	mulh s11, t3, s3
	li t5, 0
	mulh s0, s11, t5
	li a3, 0xde
	mulh t4, s0, a3
	li s0, 0x5a0
	mulh s0, t4, s0
	li a0, 0xce
	mulh s11, s0, a0
	li s0, 0x6c9
	mulh a1, s11, s0
	li t4, 0x3a7
	mulh s0, a1, t4
	li a3, 0
	mulh s2, s0, a3
	li s6, 0x734
	mulh t3, s2, s6
	li s1, 0x400
	mulh a3, t3, s1
	li s8, 0xd4
	mulh s8, a3, s8
	li a2, 0x6cd
	mulh s0, s8, a2
	li t3, 0x7c8
	mulh a3, s0, t3
	li t1, 0
	mulh s6, a3, t1
	li t6, 0x7fe
	mulh a4, s6, t6
	li t3, 0x1f5
	mulh t1, a4, t3
	li a4, 0x53
	mulh s8, t1, a4
	li s3, 0x3d7
	mulh a4, s8, s3
	li t5, 0x4ac
	mulh t6, a4, t5
	li t1, 0
	mulh a0, t6, t1
	li s2, 0x1df
	mulh a2, a0, s2
	li a4, 0x2b2
	mulh a2, a2, a4
	li a3, 0x690
	mulh a6, a2, a3
	li s9, 0xb3
	mulh a0, a6, s9
	li a6, 0x6bd
	mulh s6, a0, a6
	li t5, 0
	mulh a3, s6, t5
	li t1, 0x696
	mulh s6, a3, t1
	li s10, 0x4ab
	mulh a3, s6, s10
	li s2, 0x2ee
	mulh a0, a3, s2
	li a7, 0x5bb
	mulh s7, a0, a7
	li s3, 0x516
	mulh s1, s7, s3
	li a5, 0
	mulh s6, s1, a5
	li a6, 0x44
	mulh t4, s6, a6
	li s3, 0x224
	mulh t4, t4, s3
	li a6, 0x3e6
	mulh t6, t4, a6
	li s8, 0x1ea
	mulh s2, t6, s8
	li s9, 0x57e
	mulh s10, s2, s9
	li t6, 0
	mulh s11, s10, t6
	li a2, 0x444
	mulh s9, s11, a2
	li s8, 0x781
	mulh s3, s9, s8
	li a5, 0x273
	mulh t3, s3, a5
	li s11, 0xd0
	mulh a2, t3, s11
	li a1, 0x1d2
	mulh a2, a2, a1
	li s1, 0
	mulh a7, a2, s1
	li t1, 0x91
	mulh t3, a7, t1
	li s11, 0x282
	mulh a2, t3, s11
	li a3, 0x738
	mulh s11, a2, a3
	li t3, 0x4f5
	mulh a7, s11, t3
	li s1, 0x3cf
	mulh t3, a7, s1
	li a0, 0
	mulh s3, t3, a0
	li t1, 0x76a
	mulh a7, s3, t1
	li t5, 0x1eb
	mulh a4, a7, t5
	li t5, 0x37f
	mulh a1, a4, t5
	li s3, 0x697
	mulh a3, a1, s3
	li t4, 0x3ed
	mulh s10, a3, t4
	li a5, 0
	mulh a0, s10, a5
	li a1, 0x371
	mulh t1, a0, a1
	li s10, 0x6c7
	mulh a7, t1, s10
	li a0, 0x5e0
	mulh a0, a7, a0
	li t4, 0x172
	mulh s11, a0, t4
	li s9, 0x3b
	mulh t3, s11, s9
	li s0, 0
	mulh s6, t3, s0
	li s2, 0x30f
	mulh s9, s6, s2
	li s3, 0x8a
	mulh a5, s9, s3
	li s2, 0x123
	mulh a4, a5, s2
	li s10, 0x3c5
	mulh s0, a4, s10
	li t1, 0x2d6
	mulh s7, s0, t1
	li s1, 0
	mulh a2, s7, s1
	li s10, 0x2d
	mulh s3, a2, s10
	li a3, 0x4f2
	mulh a0, s3, a3
	li s11, 0x38a
	mulh t1, a0, s11
	li a5, 0x3cf
	mulh t6, t1, a5
	li a6, 0x753
	mulh a2, t6, a6
	li s3, 0
	mulh s6, a2, s3
	li a2, 0x751
	mulh a6, s6, a2
	li a1, 0x7d9
	mulh s8, a6, a1
	li a7, 0x524
	mulh s11, s8, a7
	li s1, 0x3fb
	mulh s9, s11, s1
	li s1, 0x14e
	mulh a4, s9, s1
	li t3, 0
	mulh a4, a4, t3
	li t3, 0x588
	mulh a7, a4, t3
	li t3, 0x7e7
	mulh a1, a7, t3
	li s8, 0x121
	mulh s9, a1, s8
	li s0, 0x3ff
	mulh t4, s9, s0
	li a5, 0x11f
	mulh s2, t4, a5
	li t1, 0
	mulh t6, s2, t1
	li a0, 0x39c
	mulh s9, t6, a0
	li a7, 0x184
	mulh s9, s9, a7
	li t6, 0x576
	mulh s6, s9, t6
	csrr s9, time
	csrr s2, cycle
	csrr a6, instret
	sub a3, s9, s4
	sub a4, s2, s5
	sub t6, a6, t2
	li s5, 0
	csrr t6, time
	csrr s3, cycle
	csrr a6, instret
	li s2, 0
	mulh s5, s5, s2
	li s9, 0x4aa
	mulh a4, s5, s9
	li t5, 0x380
	mulh s8, a4, t5
	li a0, 0x74d
	mulh t2, s8, a0
	li s9, 0x587
	mulh a2, t2, s9
	li a1, 0x507
	mulh a1, a2, a1
	li s8, 0
	mulh s6, a1, s8
	li t1, 0x7ab
	mulh s0, s6, t1
	li a5, 0x445
	mulh t1, s0, a5
	li a7, 0x73a
	mulh s11, t1, a7
	li s8, 0x440
	mulh a2, s11, s8
	li s2, 0x505
	mulh s4, a2, s2
	li a3, 0
	mulh s1, s4, a3
	li s5, 0x326
	mulh s5, s1, s5
	li s6, 0x92
	mulh a0, s5, s6
	li a1, 0x451
	mulh a2, a0, a1
	li s8, 0x197
	mulh s8, a2, s8
	li t4, 0x196
	mulh s5, s8, t4
	li a7, 0
	mulh s5, s5, a7
	li s10, 0x295
	mulh t3, s5, s10
	li s9, 0x686
	mulh a2, t3, s9
	li a7, 0x55b
	mulh s4, a2, a7
	li a4, 0x1c3
	mulh s8, s4, a4
	li s0, 0x764
	mulh t1, s8, s0
	li s4, 0
	mulh s5, t1, s4
	li s10, 0x24f
	mulh a4, s5, s10
	li s0, 0x581
	mulh s6, a4, s0
	li s10, 0x685
	mulh s7, s6, s10
	li s1, 0x647
	mulh s2, s7, s1
	li s5, 0x7b5
	mulh s5, s2, s5
	li s2, 0
	mulh a4, s5, s2
	li s6, 0x6d8
	mulh s1, a4, s6
	li t3, 0x3d0
	mulh t2, s1, t3
	li t1, 0x24b
	mulh s9, t2, t1
	li s2, 0x74d
	mulh s11, s9, s2
	li s8, 0x433
	mulh a3, s11, s8
	li t5, 0
	mulh a2, a3, t5
	li s6, 0x26a
	mulh s2, a2, s6
	li a1, 0x374
	mulh s8, s2, a1
	li s11, 0x786
	mulh a3, s8, s11
	li s5, 0x371
	mulh s11, a3, s5
	li a3, 0x7b5
	mulh a1, s11, a3
	li s8, 0
	mulh s8, a1, s8
	li s7, 0x252
	mulh s10, s8, s7
	li s11, 0x7e6
	mulh s8, s10, s11
	li a4, 0x28a
	mulh a3, s8, a4
	li s7, 0x5b9
	mulh s9, a3, s7
	li s1, 0x653
	mulh a5, s9, s1
	li t4, 0
	mulh t5, a5, t4
	li s2, 0x50b
	mulh a2, t5, s2
	li s7, 0x3c7
	mulh a5, a2, s7
	li a0, 0x3af
	mulh a5, a5, a0
	li s5, 0x58c
	mulh s9, a5, s5
	li a1, 0x506
	mulh a1, s9, a1
	li s6, 0
	mulh s2, a1, s6
	li s9, 0x4c9
	mulh s5, s2, s9
	li s0, 0x69b
	mulh t3, s5, s0
	li a7, 0x5be
	mulh s10, t3, a7
	li t5, 0x367
	mulh t3, s10, t5
	li t1, 0x30b
	mulh a2, t3, t1
	li s11, 0
	mulh s7, a2, s11
	li s10, 0x3ab
	mulh s11, s7, s10
	li a5, 0x5da
	mulh s2, s11, a5
	li t1, 0x6a0
	mulh a1, s2, t1
	li s5, 0x63e
	mulh s8, a1, s5
	li t1, 0x1a0
	mulh s9, s8, t1
	li s5, 0
	mulh s7, s9, s5
	li s10, 0x189
	mulh s4, s7, s10
	li a5, 0x17b
	mulh s8, s4, a5
	li a3, 0x6db
	mulh s9, s8, a3
	li a4, 0x1b5
	mulh a3, s9, a4
	li s10, 0x662
	mulh s6, a3, s10
	li a5, 0
	mulh t5, s6, a5
	li t1, 0x2c5
	mulh t3, t5, t1
	li s4, 0x7ce
	mulh s4, t3, s4
	li s2, 0x1ab
	mulh a0, s4, s2
	li t3, 0x399
	mulh s8, a0, t3
	li s9, 0x34c
	mulh a0, s8, s9
	li a3, 0
	mulh a2, a0, a3
	li a5, 0x479
	mulh a5, a2, a5
	li s7, 0x673
	mulh a1, a5, s7
	li s7, 0x659
	mulh t5, a1, s7
	li a0, 0x5e6
	mulh s4, t5, a0
	li s5, 0x498
	mulh s0, s4, s5
	li a4, 0
	mulh s1, s0, a4
	li a5, 0x66d
	mulh a7, s1, a5
	li s8, 0x1c
	mulh s0, a7, s8
	li s2, 0x351
	mulh a4, s0, s2
	li s5, 0x282
	mulh a3, a4, s5
	li s0, 0x649
	mulh s11, a3, s0
	li t5, 0
	mulh s9, s11, t5
	li s11, 0x6eb
	mulh t3, s9, s11
	li s1, 0x1d1
	mulh s1, t3, s1
	li s7, 0x6ca
	mulh s7, s1, s7
	li a1, 0x665
	mulh s4, s7, a1
	li s7, 0x506
	mulh s0, s4, s7
	li s1, 0
	mulh s5, s0, s1
	li a4, 0xb6
	mulh s0, s5, a4
	li t4, 0x3b2
	mulh s10, s0, t4
	li a4, 0x40f
	mulh a0, s10, a4
	csrr s9, time
	csrr s1, cycle
	csrr s6, instret
	sub a1, s9, t6
	sub s5, s1, s3
	sub s0, s6, a6
	li a1, 0
	csrr s6, time
	csrr t2, cycle
	csrr a7, instret
	li s2, 0
	mulh s1, a1, s2
	li t1, 0x444
	mulh a1, s1, t1
	li t5, 0x524
	mulh t6, a1, t5
	li s3, 0x394
	mulh s10, t6, s3
	li t5, 0x244
	mulh s10, s10, t5
	li a5, 0x41c
	mulh a3, s10, a5
	li s7, 0
	mulh a0, a3, s7
	li s10, 0x17a
	mulh t4, a0, s10
	li s2, 0x770
	mulh t5, t4, s2
	li a3, 0x432
	mulh t1, t5, a3
	li s11, 0x1b8
	mulh s2, t1, s11
	li s3, 0x776
	mulh t6, s2, s3
	li s4, 0
	mulh a4, t6, s4
	li t4, 0x2cb
	mulh s4, a4, t4
	li a3, 0x3c5
	mulh s2, s4, a3
	li s1, 0x728
	mulh s1, s2, s1
	li a4, 0x7c9
	mulh t3, s1, a4
	li s3, 0x7a2
	mulh s10, t3, s3
	li a2, 0
	mulh a1, s10, a2
	li s9, 0x64e
	mulh a5, a1, s9
	li s9, 0x600
	mulh s9, a5, s9
	li s3, 0x35a
	mulh t1, s9, s3
	li a4, 0x229
	mulh s1, t1, a4
	li a2, 0x5de
	mulh s3, s1, a2
	li t1, 0
	mulh a3, s3, t1
	li a0, 0x661
	mulh t1, a3, a0
	li a2, 0x23e
	mulh a0, t1, a2
	li s2, 0x3c7
	mulh t3, a0, s2
	li s3, 0x4f6
	mulh s9, t3, s3
	li a5, 0x353
	mulh s3, s9, a5
	li a3, 0
	mulh s1, s3, a3
	li a5, 0x20b
	mulh t6, s1, a5
	li t4, 0x5fb
	mulh a6, t6, t4
	li t4, 0x72b
	mulh t3, a6, t4
	li a4, 0x112
	mulh t1, t3, a4
	li t4, 0x72
	mulh t3, t1, t4
	li a4, 0
	mulh a1, t3, a4
	li t4, 0x518
	mulh t5, a1, t4
	li s2, 0x633
	mulh s3, t5, s2
	li a2, 0x51f
	mulh t1, s3, a2
	li s2, 0x693
	mulh s4, t1, s2
	li s7, 0x114
	mulh s7, s4, s7
	li s3, 0
	mulh a0, s7, s3
	li a2, 0x523
	mulh t4, a0, a2
	li s1, 0x605
	mulh s1, t4, s1
	li a6, 0x311
	mulh t4, s1, a6
	li s10, 0x5a0
	mulh t6, t4, s10
	li s1, 0x2c9
	mulh s4, t6, s1
	li a0, 0
	mulh s3, s4, a0
	li a0, 0x1cd
	mulh t6, s3, a0
	li s7, 0x1eb
	mulh a0, t6, s7
	li t5, 0x52e
	mulh a3, a0, t5
	li s1, 0x23f
	mulh s7, a3, s1
	li t6, 0x1c4
	mulh a1, s7, t6
	li s7, 0
	mulh a2, a1, s7
	li s7, 0x322
	mulh a0, a2, s7
	li a6, 0x5cd
	mulh a3, a0, a6
	li a4, 0x7fb
	mulh t4, a3, a4
	li s8, 0x1ce
	mulh s10, t4, s8
	li s1, 0x24
	mulh s8, s10, s1
	li a3, 0
	mulh s10, s8, a3
	li t3, 0x5d8
	mulh s3, s10, t3
	li a3, 0x772
	mulh t1, s3, a3
	li s9, 0xb3
	mulh a0, t1, s9
	li a2, 0x536
	mulh t5, a0, a2
	li s11, 0x48b
	mulh s8, t5, s11
	li s11, 0
	mulh s9, s8, s11
	li s1, 0x3f2
	mulh s2, s9, s1
	li s3, 0x4d4
	mulh a4, s2, s3
	li s2, 0x3bc
	mulh t4, a4, s2
	li s11, 0x2c5
	mulh a5, t4, s11
	li t3, 0x32a
	mulh a0, a5, t3
	li s11, 0
	mulh s1, a0, s11
	li s4, 0x520
	mulh s4, s1, s4
	li s11, 0x36c
	mulh s11, s4, s11
	li s7, 0x3d9
	mulh t3, s11, s7
	li a3, 0x1f3
	mulh s4, t3, a3
	li s10, 0x2eb
	mulh t3, s4, s10
	li a1, 0
	mulh a0, t3, a1
	li a2, 0x60d
	mulh s4, a0, a2
	li t1, 0x79f
	mulh a6, s4, t1
	li s4, 0x62c
	mulh a4, a6, s4
	li s1, 0x2b0
	mulh a2, a4, s1
	li a1, 0x74
	mulh a1, a2, a1
	li t5, 0
	mulh s9, a1, t5
	li a5, 0x59f
	mulh s11, s9, a5
	li s7, 0x3ff
	mulh a5, s11, s7
	li t6, 0x2fc
	mulh a1, a5, t6
	li a3, 0x16c
	mulh a0, a1, a3
	li s8, 0x720
	mulh a2, a0, s8
	li a5, 0
	mulh s3, a2, a5
	li t5, 0x54f
	mulh a5, s3, t5
	li t3, 0x6e5
	mulh s2, a5, t3
	li s8, 0x582
	mulh a6, s2, s8
	li t3, 0x78a
	mulh a5, a6, t3
	li s8, 0x6e0
	mulh s3, a5, s8
	li t3, 0
	mulh t1, s3, t3
	li t6, 0x1bf
	mulh t3, t1, t6
	li a6, 0x293
	mulh a2, t3, a6
	li t1, 0x6f6
	mulh a3, a2, t1
	csrr a0, time
	csrr a3, cycle
	csrr s3, instret
	sub a2, a0, s6
	sub t3, a3, t2
	sub s1, s3, a7
	beq s5, t3, pass_label_62
	li a0, failed_addr
	ld t6, 0(a0)
	jr t6
pass_label_62:
	beq s0, s1, pass_label_63
	li a5, failed_addr
	ld a5, 0(a5)
	jr a5
pass_label_63:
SID_ZKT_07_MULH_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_07_MULHU)
SID_ZKT_07_MULHU:
	li sp, SID_ZKT_07_MULHU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t1, 0
	csrr t3, time
	csrr s2, cycle
	csrr t4, instret
	li a7, 0
	mulhu a0, t1, a7
	li s9, 0x5d3
	mulhu s3, a0, s9
	li a0, 0x6fa
	mulhu t1, s3, a0
	li a5, 0x21
	mulhu a1, t1, a5
	li s8, 0x549
	mulhu s11, a1, s8
	li s4, 0x7cc
	mulhu a0, s11, s4
	li a3, 0
	mulhu s9, a0, a3
	li s7, 0xae
	mulhu a4, s9, s7
	li s5, 0x580
	mulhu s1, a4, s5
	li s8, 0x676
	mulhu s3, s1, s8
	li a2, 0x22c
	mulhu a6, s3, a2
	li s0, 0x1b7
	mulhu t6, a6, s0
	li t5, 0
	mulhu t1, t6, t5
	li a1, 0x7f
	mulhu a3, t1, a1
	li t5, 0x4fe
	mulhu a3, a3, t5
	li s9, 0xf1
	mulhu s8, a3, s9
	li s1, 0x12b
	mulhu s6, s8, s1
	li a3, 0x39e
	mulhu a1, s6, a3
	li t5, 0
	mulhu a0, a1, t5
	li s8, 0x510
	mulhu a0, a0, s8
	li s7, 0x3cc
	mulhu s3, a0, s7
	li s6, 0x10c
	mulhu s4, s3, s6
	li s8, 0x28
	mulhu s11, s4, s8
	li a3, 0x5e2
	mulhu s4, s11, a3
	li s8, 0
	mulhu a7, s4, s8
	li s4, 0x474
	mulhu s7, a7, s4
	li a7, 0x7c3
	mulhu t6, s7, a7
	li s10, 0x59b
	mulhu t6, t6, s10
	li a3, 0x55b
	mulhu s4, t6, a3
	li t5, 0x6b5
	mulhu t5, s4, t5
	li a0, 0
	mulhu a3, t5, a0
	li a1, 0x70c
	mulhu s9, a3, a1
	li a5, 0x303
	mulhu a7, s9, a5
	li s7, 0x589
	mulhu a6, a7, s7
	li a3, 0x335
	mulhu t6, a6, a3
	li t2, 0x283
	mulhu a3, t6, t2
	li t1, 0
	mulhu s10, a3, t1
	li s4, 0x36
	mulhu a2, s10, s4
	li t1, 0x296
	mulhu t1, a2, t1
	li a7, 0x4b1
	mulhu t6, t1, a7
	li a0, 0x490
	mulhu s8, t6, a0
	li s6, 0x61b
	mulhu s10, s8, s6
	li s9, 0
	mulhu a1, s10, s9
	li s11, 0x1c
	mulhu s8, a1, s11
	li t5, 0x382
	mulhu s6, s8, t5
	li a5, 0x4fe
	mulhu s4, s6, a5
	li s7, 0x2a6
	mulhu t1, s4, s7
	li s6, 0x696
	mulhu s9, t1, s6
	li a1, 0
	mulhu s9, s9, a1
	li a5, 0x153
	mulhu a2, s9, a5
	li a7, 0x343
	mulhu a7, a2, a7
	li s6, 0x78d
	mulhu a6, a7, s6
	li s8, 0xba
	mulhu s7, a6, s8
	li t5, 0x6e1
	mulhu a3, s7, t5
	li s10, 0
	mulhu s5, a3, s10
	li s8, 0x1b4
	mulhu t2, s5, s8
	li t5, 0x621
	mulhu s4, t2, t5
	li s1, 0x610
	mulhu a6, s4, s1
	li t1, 0x789
	mulhu s3, a6, t1
	li s8, 0x315
	mulhu a5, s3, s8
	li s10, 0
	mulhu s7, a5, s10
	li a5, 0x27c
	mulhu s6, s7, a5
	li s8, 0x4b3
	mulhu t2, s6, s8
	li s8, 0x5cc
	mulhu a4, t2, s8
	li s9, 0x72a
	mulhu a5, a4, s9
	li s7, 0x677
	mulhu a7, a5, s7
	li a5, 0
	mulhu s11, a7, a5
	li a7, 0x777
	mulhu s0, s11, a7
	li s1, 0xe7
	mulhu s1, s0, s1
	li a4, 0x187
	mulhu t2, s1, a4
	li s1, 0x798
	mulhu s7, t2, s1
	li t1, 0xdd
	mulhu s11, s7, t1
	li t2, 0
	mulhu s11, s11, t2
	li s1, 0x331
	mulhu s8, s11, s1
	li s5, 0x17f
	mulhu s9, s8, s5
	li a2, 0x22e
	mulhu s1, s9, a2
	li s10, 0x238
	mulhu a0, s1, s10
	li s6, 0x56c
	mulhu a5, a0, s6
	li s8, 0
	mulhu s11, a5, s8
	li s5, 0x735
	mulhu t2, s11, s5
	li s11, 0x206
	mulhu s0, t2, s11
	li a0, 0x57c
	mulhu s7, s0, a0
	li a0, 0xc4
	mulhu a4, s7, a0
	li a3, 0x3d1
	mulhu s7, a4, a3
	li t6, 0
	mulhu t6, s7, t6
	li s9, 0x1d3
	mulhu s3, t6, s9
	li s1, 0x195
	mulhu s6, s3, s1
	li s3, 0x62b
	mulhu s10, s6, s3
	li s11, 0x64c
	mulhu a1, s10, s11
	li a6, 0x14b
	mulhu s4, a1, a6
	li a7, 0
	mulhu t2, s4, a7
	li a0, 0x5e8
	mulhu a2, t2, a0
	li s4, 0x682
	mulhu a2, a2, s4
	li a7, 0x651
	mulhu a0, a2, a7
	li t6, 0x4f
	mulhu a1, a0, t6
	li t2, 0x3a8
	mulhu a7, a1, t2
	li s7, 0
	mulhu t6, a7, s7
	li a1, 0x1c7
	mulhu a1, t6, a1
	li s11, 0x82
	mulhu t5, a1, s11
	li a0, 0x3b0
	mulhu a3, t5, a0
	csrr a2, time
	csrr t5, cycle
	csrr a0, instret
	sub s4, a2, t3
	sub t1, t5, s2
	sub t6, a0, t4
	li a3, 0
	csrr s3, time
	csrr t5, cycle
	csrr t2, instret
	li s0, 0
	mulhu t1, a3, s0
	li a4, 0x688
	mulhu s1, t1, a4
	li a0, 0x413
	mulhu t1, s1, a0
	li a5, 0x6d7
	mulhu a1, t1, a5
	li s11, 0x7e1
	mulhu s9, a1, s11
	li s1, 0x204
	mulhu s6, s9, s1
	li t1, 0
	mulhu s1, s6, t1
	li a5, 0x363
	mulhu s6, s1, a5
	li s10, 0x7f1
	mulhu s6, s6, s10
	li s9, 0x5f5
	mulhu t3, s6, s9
	li s5, 0x29b
	mulhu a4, t3, s5
	li s9, 0x518
	mulhu s2, a4, s9
	li s8, 0
	mulhu t1, s2, s8
	li a2, 0x39
	mulhu a0, t1, a2
	li s8, 0x28a
	mulhu s8, a0, s8
	li t1, 0x5a
	mulhu s1, s8, t1
	li s10, 0x7e4
	mulhu t3, s1, s10
	li a2, 0x14a
	mulhu s8, t3, a2
	li t1, 0
	mulhu t1, s8, t1
	li t6, 0x689
	mulhu a0, t1, t6
	li t1, 0x7f2
	mulhu a6, a0, t1
	li a1, 0x322
	mulhu s9, a6, a1
	li a3, 0x57
	mulhu a4, s9, a3
	li t6, 0x2bc
	mulhu a3, a4, t6
	li a6, 0
	mulhu t3, a3, a6
	li s8, 0x706
	mulhu t1, t3, s8
	li s4, 0x26b
	mulhu t3, t1, s4
	li t6, 0x29a
	mulhu a0, t3, t6
	li s10, 0x97
	mulhu s1, a0, s10
	li a4, 0x7ba
	mulhu s0, s1, a4
	li s8, 0
	mulhu a0, s0, s8
	li s11, 0x33b
	mulhu s1, a0, s11
	li a4, 0x742
	mulhu a0, s1, a4
	li a5, 0x35b
	mulhu a3, a0, a5
	li s5, 0x6e9
	mulhu s8, a3, s5
	li s5, 0xdd
	mulhu a5, s8, s5
	li s11, 0
	mulhu a6, a5, s11
	li s7, 0x15f
	mulhu a4, a6, s7
	li t3, 0x56e
	mulhu t3, a4, t3
	li s2, 0x1e2
	mulhu s1, t3, s2
	li s6, 0x9f
	mulhu t4, s1, s6
	li s11, 0x72
	mulhu s10, t4, s11
	li s7, 0
	mulhu t4, s10, s7
	li a0, 0x285
	mulhu t6, t4, a0
	li t3, 0x10a
	mulhu s9, t6, t3
	li s6, 0x761
	mulhu s6, s9, s6
	li s5, 0x26d
	mulhu s10, s6, s5
	li s6, 0xf0
	mulhu a3, s10, s6
	li a6, 0
	mulhu s2, a3, a6
	li s0, 0x14f
	mulhu a0, s2, s0
	li s0, 0x13c
	mulhu s4, a0, s0
	li s10, 0x4c
	mulhu a4, s4, s10
	li a1, 0x4fe
	mulhu a2, a4, a1
	li s10, 0x6b6
	mulhu a4, a2, s10
	li a6, 0
	mulhu a3, a4, a6
	li s10, 0x1c3
	mulhu a1, a3, s10
	li a2, 0x24f
	mulhu s10, a1, a2
	li a7, 0x250
	mulhu s0, s10, a7
	li t4, 0x3f5
	mulhu s5, s0, t4
	li s7, 0x338
	mulhu t4, s5, s7
	li s10, 0
	mulhu s4, t4, s10
	li a6, 0x78d
	mulhu a2, s4, a6
	li s0, 0x1f0
	mulhu a4, a2, s0
	li s8, 0x1d7
	mulhu s2, a4, s8
	li s6, 0x309
	mulhu a5, s2, s6
	li s5, 0x438
	mulhu a4, a5, s5
	li s5, 0
	mulhu a0, a4, s5
	li a2, 0x193
	mulhu a1, a0, a2
	li s5, 0x2e6
	mulhu s0, a1, s5
	li t6, 0x2d8
	mulhu s2, s0, t6
	li s0, 0x399
	mulhu a2, s2, s0
	li t6, 0x422
	mulhu s5, a2, t6
	li a0, 0
	mulhu s6, s5, a0
	li s11, 0x6c7
	mulhu t3, s6, s11
	li s11, 0x325
	mulhu t6, t3, s11
	li s9, 0x1b5
	mulhu s1, t6, s9
	li s5, 0x47
	mulhu s11, s1, s5
	li a1, 0x38a
	mulhu s10, s11, a1
	li s0, 0
	mulhu a4, s10, s0
	li s8, 0x1c4
	mulhu s2, a4, s8
	li a5, 0x63e
	mulhu s8, s2, a5
	li s7, 0x5cf
	mulhu a6, s8, s7
	li s5, 0x72f
	mulhu t6, a6, s5
	li s7, 0x70
	mulhu t6, t6, s7
	li s2, 0
	mulhu a5, t6, s2
	li t4, 0x64f
	mulhu a4, a5, t4
	li s1, 0x3ba
	mulhu s1, a4, s1
	li t4, 0xb
	mulhu a7, s1, t4
	li a6, 0x703
	mulhu s2, a7, a6
	li a4, 0x407
	mulhu a0, s2, a4
	li t4, 0
	mulhu s10, a0, t4
	li t3, 0x54e
	mulhu a1, s10, t3
	li a5, 0x1df
	mulhu a2, a1, a5
	li s4, 0x27e
	mulhu s11, a2, s4
	li a1, 0x162
	mulhu s11, s11, a1
	li a4, 0x34b
	mulhu s4, s11, a4
	li a7, 0
	mulhu t3, s4, a7
	li s4, 0x5b5
	mulhu t4, t3, s4
	li t1, 0x680
	mulhu a3, t4, t1
	li s1, 0x76c
	mulhu s4, a3, s1
	csrr t6, time
	csrr a3, cycle
	csrr a5, instret
	sub s0, t6, s3
	sub a1, a3, t5
	sub a3, a5, t2
	li s1, 0
	csrr a4, time
	csrr s5, cycle
	csrr s4, instret
	li t5, 0
	mulhu t5, s1, t5
	li a2, 0x64a
	mulhu a0, t5, a2
	li t2, 0x2a3
	mulhu t6, a0, t2
	li t2, 0x10c
	mulhu s11, t6, t2
	li t5, 0x6db
	mulhu s6, s11, t5
	li t5, 0x2c2
	mulhu s9, s6, t5
	li s10, 0
	mulhu s1, s9, s10
	li s8, 0x61c
	mulhu a7, s1, s8
	li t3, 0x6af
	mulhu s3, a7, t3
	li s1, 0x7b5
	mulhu s7, s3, s1
	li a7, 0x7a9
	mulhu t2, s7, a7
	li s1, 0x467
	mulhu s1, t2, s1
	li a2, 0
	mulhu s7, s1, a2
	li s3, 0x1e8
	mulhu t6, s7, s3
	li s6, 0x4e0
	mulhu t1, t6, s6
	li s8, 0x392
	mulhu s2, t1, s8
	li a2, 0x6ff
	mulhu s2, s2, a2
	li a5, 0x540
	mulhu s6, s2, a5
	li s10, 0
	mulhu t3, s6, s10
	li a7, 0x282
	mulhu s6, t3, a7
	li s1, 0x50d
	mulhu a0, s6, s1
	li s8, 0x279
	mulhu a2, a0, s8
	li t3, 0x742
	mulhu s1, a2, t3
	li s11, 0x255
	mulhu t3, s1, s11
	li a2, 0
	mulhu a5, t3, a2
	li t3, 0x220
	mulhu s2, a5, t3
	li a7, 0x410
	mulhu t6, s2, a7
	li s1, 0x209
	mulhu s2, t6, s1
	li a0, 0x65
	mulhu s2, s2, a0
	li t6, 0x55e
	mulhu s7, s2, t6
	li a0, 0
	mulhu a2, s7, a0
	li s7, 0x395
	mulhu t6, a2, s7
	li t3, 0x433
	mulhu a2, t6, t3
	li s0, 0x6da
	mulhu t5, a2, s0
	li s7, 0x228
	mulhu s2, t5, s7
	li s0, 0x791
	mulhu t1, s2, s0
	li s2, 0
	mulhu s2, t1, s2
	li t4, 0x70b
	mulhu t1, s2, t4
	li s1, 0x6a0
	mulhu a7, t1, s1
	li s3, 0x57c
	mulhu a5, a7, s3
	li a6, 0x70e
	mulhu t5, a5, a6
	li s11, 0x1fb
	mulhu t1, t5, s11
	li t3, 0
	mulhu s2, t1, t3
	li s0, 0x517
	mulhu s8, s2, s0
	li s10, 0x3bc
	mulhu t6, s8, s10
	li s11, 0x24
	mulhu s10, t6, s11
	li t3, 0x4a8
	mulhu a0, s10, t3
	li s0, 0x66d
	mulhu s1, a0, s0
	li t4, 0
	mulhu a0, s1, t4
	li t2, 0x53e
	mulhu s7, a0, t2
	li s6, 0x392
	mulhu a2, s7, s6
	li t4, 0x3b6
	mulhu s7, a2, t4
	li t5, 0x74b
	mulhu s7, s7, t5
	li a6, 0xe8
	mulhu a5, s7, a6
	li a6, 0
	mulhu a5, a5, a6
	li a6, 0x290
	mulhu t4, a5, a6
	li a0, 0x376
	mulhu s7, t4, a0
	li t2, 0x788
	mulhu t2, s7, t2
	li a7, 0x5dd
	mulhu s7, t2, a7
	li a7, 0x1bf
	mulhu a2, s7, a7
	li s3, 0
	mulhu s1, a2, s3
	li s2, 0xe9
	mulhu t4, s1, s2
	li s9, 0x67f
	mulhu t4, t4, s9
	li a6, 0x660
	mulhu t4, t4, a6
	li s8, 0x367
	mulhu s8, t4, s8
	li t3, 0x4c3
	mulhu s8, s8, t3
	li s11, 0
	mulhu s2, s8, s11
	li a0, 0xa0
	mulhu a2, s2, a0
	li s1, 0x282
	mulhu s6, a2, s1
	li t1, 0x596
	mulhu a0, s6, t1
	li s10, 0x774
	mulhu s10, a0, s10
	li s7, 0x10a
	mulhu t3, s10, s7
	li t1, 0
	mulhu t4, t3, t1
	li s0, 0x212
	mulhu s3, t4, s0
	li t6, 0x3c3
	mulhu s0, s3, t6
	li t3, 0x1ef
	mulhu t1, s0, t3
	li s10, 0x7e
	mulhu t5, t1, s10
	li t4, 0x7c5
	mulhu s9, t5, t4
	li t5, 0
	mulhu s2, s9, t5
	li a2, 0x79c
	mulhu s3, s2, a2
	li s2, 0x58
	mulhu t1, s3, s2
	li s1, 0x4a7
	mulhu s11, t1, s1
	li a7, 0x2a8
	mulhu s6, s11, a7
	li a0, 0x80
	mulhu t2, s6, a0
	li s3, 0
	mulhu s8, t2, s3
	li a7, 0x414
	mulhu t2, s8, a7
	li s10, 0x4cd
	mulhu s8, t2, s10
	li a5, 0x61d
	mulhu s8, s8, a5
	li a0, 0x5da
	mulhu a6, s8, a0
	li s2, 0x286
	mulhu s11, a6, s2
	li s6, 0
	mulhu s7, s11, s6
	li s6, 0x7e
	mulhu s6, s7, s6
	li s7, 0x39e
	mulhu s6, s6, s7
	li t1, 0x95
	mulhu a0, s6, t1
	li s1, 0x381
	mulhu s2, a0, s1
	li t3, 0x11e
	mulhu s3, s2, t3
	li t5, 0
	mulhu t5, s3, t5
	li s8, 0x79e
	mulhu s0, t5, s8
	li s6, 0x49a
	mulhu s3, s0, s6
	li t5, 0x598
	mulhu s10, s3, t5
	csrr s2, time
	csrr t2, cycle
	csrr a2, instret
	sub s1, s2, a4
	sub t4, t2, s5
	sub t2, a2, s4
	beq a1, t4, pass_label_64
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
pass_label_64:
	beq a3, t2, pass_label_65
	li s8, failed_addr
	ld s4, 0(s8)
	jr s4
pass_label_65:
SID_ZKT_07_MULHU_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_07_MULHSU)
SID_ZKT_07_MULHSU:
	li sp, SID_ZKT_07_MULHSU_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s4, 0
	csrr s11, time
	csrr a6, cycle
	csrr s8, instret
	li s0, 0
	mulhsu t5, s4, s0
	li t2, 0x666
	mulhsu s7, t5, t2
	li s10, 0x729
	mulhsu t5, s7, s10
	li s6, 0x643
	mulhsu s0, t5, s6
	li s3, 0x5c8
	mulhsu t4, s0, s3
	li t1, 0x61
	mulhsu s2, t4, t1
	li a2, 0
	mulhsu s5, s2, a2
	li a0, 0x4ab
	mulhsu s4, s5, a0
	li s0, 0x4aa
	mulhsu a2, s4, s0
	li a3, 0x11b
	mulhsu a2, a2, a3
	li t4, 0x20e
	mulhsu t1, a2, t4
	li a0, 0x5df
	mulhsu t3, t1, a0
	li s10, 0
	mulhsu t1, t3, s10
	li s6, 0x387
	mulhsu a3, t1, s6
	li a1, 0x7d6
	mulhsu s2, a3, a1
	li s10, 0x21b
	mulhsu t4, s2, s10
	li a2, 0x7e
	mulhsu a1, t4, a2
	li a4, 0x225
	mulhsu s7, a1, a4
	li a3, 0
	mulhsu a3, s7, a3
	li s2, 0x33c
	mulhsu t6, a3, s2
	li s1, 0x694
	mulhsu t2, t6, s1
	li a5, 0x361
	mulhsu t3, t2, a5
	li s4, 0x291
	mulhsu t4, t3, s4
	li t3, 0x5d1
	mulhsu a5, t4, t3
	li s4, 0
	mulhsu s3, a5, s4
	li t5, 0xd
	mulhsu s4, s3, t5
	li s5, 0x562
	mulhsu t5, s4, s5
	li a0, 0x1e0
	mulhsu s5, t5, a0
	li a7, 0x635
	mulhsu s0, s5, a7
	li s5, 0x3ee
	mulhsu t1, s0, s5
	li t6, 0
	mulhsu a4, t1, t6
	li t1, 0x169
	mulhsu s3, a4, t1
	li s2, 0x48
	mulhsu a2, s3, s2
	li a3, 0x261
	mulhsu s2, a2, a3
	li t6, 0x7c7
	mulhsu t1, s2, t6
	li a7, 0x20b
	mulhsu s9, t1, a7
	li s5, 0
	mulhsu s0, s9, s5
	li a5, 0x664
	mulhsu a1, s0, a5
	li s0, 0x7aa
	mulhsu a7, a1, s0
	li s6, 0x1f0
	mulhsu t4, a7, s6
	li s6, 0x190
	mulhsu a3, t4, s6
	li s9, 0xe1
	mulhsu a5, a3, s9
	li s6, 0
	mulhsu t4, a5, s6
	li a3, 0x59
	mulhsu s0, t4, a3
	li s3, 0x35b
	mulhsu a0, s0, s3
	li s6, 0x619
	mulhsu s5, a0, s6
	li s1, 0x389
	mulhsu s5, s5, s1
	li a7, 0x151
	mulhsu s10, s5, a7
	li s4, 0
	mulhsu a3, s10, s4
	li a5, 0x2e7
	mulhsu t5, a3, a5
	li t2, 0x3fa
	mulhsu a2, t5, t2
	li t6, 0x759
	mulhsu t3, a2, t6
	li a2, 0x726
	mulhsu a0, t3, a2
	li a2, 0x2d6
	mulhsu a5, a0, a2
	li t2, 0
	mulhsu t6, a5, t2
	li s6, 0x4bd
	mulhsu t1, t6, s6
	li s7, 0x2a8
	mulhsu a2, t1, s7
	li s9, 0xb1
	mulhsu t5, a2, s9
	li s10, 0x16f
	mulhsu a5, t5, s10
	li t3, 0x16c
	mulhsu a7, a5, t3
	li s4, 0
	mulhsu s4, a7, s4
	li a4, 0x34c
	mulhsu a1, s4, a4
	li s0, 0x223
	mulhsu t5, a1, s0
	li a5, 0x3f9
	mulhsu s5, t5, a5
	li a1, 0x7b0
	mulhsu a5, s5, a1
	li a4, 0x5f1
	mulhsu s4, a5, a4
	li s10, 0
	mulhsu s9, s4, s10
	li s10, 0x6e8
	mulhsu t1, s9, s10
	li a5, 0x663
	mulhsu s5, t1, a5
	li a3, 0x709
	mulhsu a5, s5, a3
	li s1, 0x673
	mulhsu s0, a5, s1
	li a0, 0x16e
	mulhsu s6, s0, a0
	li s0, 0
	mulhsu a7, s6, s0
	li t6, 0x6a1
	mulhsu a2, a7, t6
	li a4, 0x377
	mulhsu a0, a2, a4
	li s3, 0x252
	mulhsu a2, a0, s3
	li a0, 0x7c6
	mulhsu a0, a2, a0
	li a5, 0x5c4
	mulhsu t2, a0, a5
	li t6, 0
	mulhsu s3, t2, t6
	li t2, 0x1ea
	mulhsu s2, s3, t2
	li t1, 0x312
	mulhsu s4, s2, t1
	li s10, 0x7b2
	mulhsu s7, s4, s10
	li a4, 0x4e6
	mulhsu t5, s7, a4
	li s1, 0x20c
	mulhsu s0, t5, s1
	li a2, 0
	mulhsu t6, s0, a2
	li t4, 0x197
	mulhsu t6, t6, t4
	li a7, 0x312
	mulhsu a2, t6, a7
	li s1, 0x2f2
	mulhsu a1, a2, s1
	li s5, 0x556
	mulhsu a7, a1, s5
	li s9, 0x16e
	mulhsu s4, a7, s9
	li t2, 0
	mulhsu s3, s4, t2
	li s0, 0x260
	mulhsu s0, s3, s0
	li s9, 0xa5
	mulhsu a7, s0, s9
	li s10, 0x3c5
	mulhsu a2, a7, s10
	li t1, 0x564
	mulhsu a2, a2, t1
	li s4, 0x6d2
	mulhsu t3, a2, s4
	li s6, 0
	mulhsu a0, t3, s6
	li s6, 0x340
	mulhsu s0, a0, s6
	li s7, 0x695
	mulhsu t1, s0, s7
	li t4, 0x2b9
	mulhsu s7, t1, t4
	csrr s0, time
	csrr t3, cycle
	csrr a2, instret
	sub a0, s0, s11
	sub s3, t3, a6
	sub s6, a2, s8
	li a1, 0
	csrr s11, time
	csrr a4, cycle
	csrr t4, instret
	li s2, 0
	mulhsu s9, a1, s2
	li a2, 0x528
	mulhsu t1, s9, a2
	li a0, 0x733
	mulhsu a6, t1, a0
	li t2, 0x7fb
	mulhsu s9, a6, t2
	li t5, 0x18b
	mulhsu t5, s9, t5
	li s1, 0x1be
	mulhsu t3, t5, s1
	li a0, 0
	mulhsu a6, t3, a0
	li a2, 0x38
	mulhsu s0, a6, a2
	li s2, 0xb7
	mulhsu a2, s0, s2
	li t6, 0x11c
	mulhsu t6, a2, t6
	li s7, 0x239
	mulhsu s5, t6, s7
	li s9, 0x24d
	mulhsu a5, s5, s9
	li s5, 0
	mulhsu t3, a5, s5
	li s1, 0x7df
	mulhsu s5, t3, s1
	li a3, 0x157
	mulhsu s7, s5, a3
	li a3, 0xed
	mulhsu a6, s7, a3
	li s9, 0x20a
	mulhsu a6, a6, s9
	li s4, 0x6b3
	mulhsu t6, a6, s4
	li t2, 0
	mulhsu a7, t6, t2
	li s9, 0x618
	mulhsu s1, a7, s9
	li a7, 0x1a2
	mulhsu s0, s1, a7
	li a0, 0x7f9
	mulhsu s5, s0, a0
	li a0, 0x1a
	mulhsu s2, s5, a0
	li s9, 0x30e
	mulhsu t6, s2, s9
	li s8, 0
	mulhsu s10, t6, s8
	li a6, 0x491
	mulhsu s1, s10, a6
	li s10, 0x402
	mulhsu a0, s1, s10
	li s2, 0x8
	mulhsu t3, a0, s2
	li s5, 0x52
	mulhsu s2, t3, s5
	li s1, 0x2ca
	mulhsu a5, s2, s1
	li s7, 0
	mulhsu t3, a5, s7
	li s1, 0x80
	mulhsu s9, t3, s1
	li s2, 0x128
	mulhsu s10, s9, s2
	li a2, 0x588
	mulhsu t6, s10, a2
	li a3, 0x34b
	mulhsu a6, t6, a3
	li a3, 0x3c8
	mulhsu t6, a6, a3
	li a5, 0
	mulhsu s8, t6, a5
	li s7, 0x7c9
	mulhsu t5, s8, s7
	li t1, 0x46e
	mulhsu a1, t5, t1
	li s6, 0x6b8
	mulhsu t2, a1, s6
	li t5, 0x1af
	mulhsu s0, t2, t5
	li a5, 0x3e5
	mulhsu a3, s0, a5
	li a6, 0
	mulhsu s8, a3, a6
	li a5, 0x7f8
	mulhsu s1, s8, a5
	li a7, 0x1d9
	mulhsu s5, s1, a7
	li t5, 0x5d9
	mulhsu s0, s5, t5
	li s3, 0x227
	mulhsu s3, s0, s3
	li t3, 0x781
	mulhsu s1, s3, t3
	li s3, 0
	mulhsu a0, s1, s3
	li s0, 0x59e
	mulhsu s6, a0, s0
	li s1, 0x4d8
	mulhsu s7, s6, s1
	li a5, 0x47f
	mulhsu s8, s7, a5
	li s3, 0x273
	mulhsu s1, s8, s3
	li a6, 0x151
	mulhsu a6, s1, a6
	li t3, 0
	mulhsu t5, a6, t3
	li s9, 0x35
	mulhsu s5, t5, s9
	li a3, 0x8d
	mulhsu t6, s5, a3
	li s0, 0x338
	mulhsu t3, t6, s0
	li a6, 0x7d3
	mulhsu s6, t3, a6
	li s2, 0x191
	mulhsu s0, s6, s2
	li a2, 0
	mulhsu a1, s0, a2
	li s0, 0x749
	mulhsu s9, a1, s0
	li t5, 0x160
	mulhsu s1, s9, t5
	li s7, 0x63e
	mulhsu a5, s1, s7
	li a0, 0x7b4
	mulhsu s7, a5, a0
	li s10, 0x8a
	mulhsu s3, s7, s10
	li s10, 0
	mulhsu t2, s3, s10
	li s8, 0x3e5
	mulhsu s4, t2, s8
	li a2, 0x31b
	mulhsu s6, s4, a2
	li a5, 0x4f1
	mulhsu t2, s6, a5
	li s10, 0x222
	mulhsu t6, t2, s10
	li s7, 0x382
	mulhsu s4, t6, s7
	li s10, 0
	mulhsu a3, s4, s10
	li a0, 0x419
	mulhsu a0, a3, a0
	li s1, 0x4f0
	mulhsu t6, a0, s1
	li a5, 0x61f
	mulhsu t5, t6, a5
	li a3, 0x2ef
	mulhsu t6, t5, a3
	li a5, 0x4f5
	mulhsu a5, t6, a5
	li a1, 0
	mulhsu t2, a5, a1
	li s2, 0x140
	mulhsu s5, t2, s2
	li s0, 0xfa
	mulhsu s6, s5, s0
	li t1, 0x227
	mulhsu a0, s6, t1
	li a3, 0x1ec
	mulhsu t5, a0, a3
	li t2, 0x4a0
	mulhsu s1, t5, t2
	li a3, 0
	mulhsu s4, s1, a3
	li s2, 0x161
	mulhsu t2, s4, s2
	li s7, 0x680
	mulhsu a1, t2, s7
	li s2, 0x460
	mulhsu a6, a1, s2
	li t5, 0x2eb
	mulhsu a6, a6, t5
	li s1, 0x402
	mulhsu t6, a6, s1
	li s7, 0
	mulhsu a5, t6, s7
	li s6, 0xda
	mulhsu s6, a5, s6
	li s9, 0x1e1
	mulhsu t6, s6, s9
	li s4, 0x3fc
	mulhsu t6, t6, s4
	li a6, 0x205
	mulhsu s10, t6, a6
	li t2, 0x5ff
	mulhsu s4, s10, t2
	li t2, 0
	mulhsu t6, s4, t2
	li s10, 0x7be
	mulhsu s4, t6, s10
	li s0, 0x480
	mulhsu s7, s4, s0
	li a5, 0x6b0
	mulhsu a7, s7, a5
	csrr t6, time
	csrr a5, cycle
	csrr s6, instret
	sub a0, t6, s11
	sub s10, a5, a4
	sub a6, s6, t4
	li s11, 0
	csrr a4, time
	csrr t1, cycle
	csrr s3, instret
	li s8, 0
	mulhsu t3, s11, s8
	li s0, 0x130
	mulhsu s8, t3, s0
	li a3, 0x6a0
	mulhsu t6, s8, a3
	li a3, 0x6c0
	mulhsu a5, t6, a3
	li s9, 0x670
	mulhsu a5, a5, s9
	li t4, 0x3eb
	mulhsu s0, a5, t4
	li a7, 0
	mulhsu a1, s0, a7
	li a0, 0x350
	mulhsu s2, a1, a0
	li a5, 0x6d4
	mulhsu a1, s2, a5
	li s4, 0x174
	mulhsu t4, a1, s4
	li t5, 0x7a3
	mulhsu a2, t4, t5
	li s2, 0x3da
	mulhsu s7, a2, s2
	li a7, 0
	mulhsu t4, s7, a7
	li t5, 0x644
	mulhsu s7, t4, t5
	li s1, 0x95
	mulhsu t6, s7, s1
	li s6, 0x700
	mulhsu s9, t6, s6
	li a0, 0x1f6
	mulhsu a1, s9, a0
	li t6, 0x7d8
	mulhsu s11, a1, t6
	li s0, 0
	mulhsu a1, s11, s0
	li t4, 0x497
	mulhsu t6, a1, t4
	li a5, 0x2fa
	mulhsu t2, t6, a5
	li t4, 0x6e6
	mulhsu t4, t2, t4
	li s5, 0x5d4
	mulhsu a0, t4, s5
	li s4, 0x4e0
	mulhsu s11, a0, s4
	li s4, 0
	mulhsu t6, s11, s4
	li a2, 0x6a3
	mulhsu s7, t6, a2
	li t6, 0x62
	mulhsu s5, s7, t6
	li t6, 0x2f3
	mulhsu s1, s5, t6
	li s4, 0x17c
	mulhsu s5, s1, s4
	li a1, 0x183
	mulhsu t2, s5, a1
	li a0, 0
	mulhsu s11, t2, a0
	li s0, 0x8e
	mulhsu t3, s11, s0
	li s7, 0xb2
	mulhsu s7, t3, s7
	li t3, 0x1e4
	mulhsu t4, s7, t3
	li t5, 0x30e
	mulhsu s11, t4, t5
	li s1, 0x46b
	mulhsu a2, s11, s1
	li s2, 0
	mulhsu a1, a2, s2
	li s0, 0x56
	mulhsu s1, a1, s0
	li a0, 0x3f9
	mulhsu t6, s1, a0
	li t5, 0x40
	mulhsu s11, t6, t5
	li s5, 0x5fe
	mulhsu a5, s11, s5
	li s11, 0x585
	mulhsu a3, a5, s11
	li s0, 0
	mulhsu t4, a3, s0
	li t5, 0x688
	mulhsu a7, t4, t5
	li t6, 0x144
	mulhsu s5, a7, t6
	li s8, 0x1a5
	mulhsu a2, s5, s8
	li s8, 0x684
	mulhsu s5, a2, s8
	li t5, 0xae
	mulhsu s11, s5, t5
	li a2, 0
	mulhsu s5, s11, a2
	li t6, 0x663
	mulhsu t6, s5, t6
	li a1, 0x110
	mulhsu a1, t6, a1
	li s4, 0x32
	mulhsu s11, a1, s4
	li t3, 0x731
	mulhsu s8, s11, t3
	li a1, 0x3b9
	mulhsu a3, s8, a1
	li s1, 0
	mulhsu s6, a3, s1
	li a1, 0x66c
	mulhsu s9, s6, a1
	li s7, 0x2a
	mulhsu s7, s9, s7
	li s5, 0x7f4
	mulhsu s5, s7, s5
	li t3, 0x40e
	mulhsu t6, s5, t3
	li s5, 0x7de
	mulhsu s0, t6, s5
	li s6, 0
	mulhsu s6, s0, s6
	li s4, 0x704
	mulhsu a1, s6, s4
	li s7, 0xfc
	mulhsu a1, a1, s7
	li s1, 0x92
	mulhsu s8, a1, s1
	li s1, 0xc2
	mulhsu s6, s8, s1
	li a3, 0x4c5
	mulhsu a2, s6, a3
	li s4, 0
	mulhsu s4, a2, s4
	li t3, 0x4dc
	mulhsu s6, s4, t3
	li s4, 0x717
	mulhsu s4, s6, s4
	li t6, 0x22b
	mulhsu a1, s4, t6
	li t2, 0x10b
	mulhsu s8, a1, t2
	li s4, 0x66e
	mulhsu s11, s8, s4
	li s1, 0
	mulhsu s4, s11, s1
	li a3, 0x3c1
	mulhsu s4, s4, a3
	li t6, 0x12b
	mulhsu a3, s4, t6
	li s6, 0x78d
	mulhsu a0, a3, s6
	li t6, 0x3dd
	mulhsu a2, a0, t6
	li s9, 0x231
	mulhsu s11, a2, s9
	li a5, 0
	mulhsu s2, s11, a5
	li s6, 0x585
	mulhsu a7, s2, s6
	li s1, 0x7da
	mulhsu s4, a7, s1
	li s9, 0x29b
	mulhsu a5, s4, s9
	li t5, 0x2ce
	mulhsu a2, a5, t5
	li t3, 0x44d
	mulhsu a3, a2, t3
	li t4, 0
	mulhsu a3, a3, t4
	li s0, 0x5d6
	mulhsu s5, a3, s0
	li s11, 0x794
	mulhsu s7, s5, s11
	li s1, 0x101
	mulhsu a0, s7, s1
	li a5, 0x651
	mulhsu s1, a0, a5
	li s5, 0x4f6
	mulhsu a1, s1, s5
	li s5, 0
	mulhsu s4, a1, s5
	li s5, 0x4e3
	mulhsu s11, s4, s5
	li a0, 0x6e2
	mulhsu s9, s11, a0
	li s2, 0x436
	mulhsu s1, s9, s2
	li s4, 0x142
	mulhsu t3, s1, s4
	li s11, 0x44d
	mulhsu a3, t3, s11
	li s7, 0
	mulhsu s11, a3, s7
	li s0, 0x6b2
	mulhsu s7, s11, s0
	li a3, 0x6fe
	mulhsu a1, s7, a3
	li t2, 0x65
	mulhsu a2, a1, t2
	csrr a0, time
	csrr a1, cycle
	csrr a2, instret
	sub a3, a0, a4
	sub t6, a1, t1
	sub s4, a2, s3
	beq s10, t6, pass_label_66
	li s1, failed_addr
	ld a5, 0(s1)
	jr a5
pass_label_66:
	beq a6, s4, pass_label_67
	li s9, failed_addr
	ld a1, 0(s9)
	jr a1
pass_label_67:
SID_ZKT_07_MULHSU_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_07_MULW)
SID_ZKT_07_MULW:
	li sp, SID_ZKT_07_MULW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a1, 0
	csrr s10, time
	csrr s9, cycle
	csrr s2, instret
	li a5, 0
	mulw s1, a1, a5
	li t3, 0xf4
	mulw t4, s1, t3
	li s6, 0x129
	mulw a2, t4, s6
	li s11, 0x540
	mulw t1, a2, s11
	li s4, 0x4ff
	mulw s3, t1, s4
	li a1, 0x66c
	mulw a4, s3, a1
	li t3, 0
	mulw a0, a4, t3
	li s6, 0x6f7
	mulw s5, a0, s6
	li a5, 0x3ba
	mulw t1, s5, a5
	li a4, 0x39d
	mulw s11, t1, a4
	li s0, 0x3de
	mulw a7, s11, s0
	li s3, 0x45d
	mulw a2, a7, s3
	li a1, 0
	mulw a6, a2, a1
	li t4, 0x481
	mulw a3, a6, t4
	li s3, 0x58d
	mulw s1, a3, s3
	li a7, 0x655
	mulw t3, s1, a7
	li s5, 0x718
	mulw s0, t3, s5
	li a6, 0x29f
	mulw s1, s0, a6
	li t1, 0
	mulw s8, s1, t1
	li a6, 0x20d
	mulw s3, s8, a6
	li a1, 0x6c4
	mulw a4, s3, a1
	li t1, 0xb9
	mulw s11, a4, t1
	li a5, 0x351
	mulw s11, s11, a5
	li a1, 0x281
	mulw t6, s11, a1
	li s4, 0
	mulw a5, t6, s4
	li a3, 0x26c
	mulw t3, a5, a3
	li a2, 0x8d
	mulw s11, t3, a2
	li s7, 0x331
	mulw a0, s11, s7
	li t5, 0x1da
	mulw s6, a0, t5
	li a2, 0x799
	mulw t3, s6, a2
	li s6, 0
	mulw s3, t3, s6
	li s0, 0x3cb
	mulw a5, s3, s0
	li s6, 0x1ff
	mulw s0, a5, s6
	li t5, 0x2a7
	mulw s1, s0, t5
	li t6, 0x621
	mulw a3, s1, t6
	li s11, 0x1aa
	mulw s8, a3, s11
	li a7, 0
	mulw s8, s8, a7
	li s0, 0x3a5
	mulw a2, s8, s0
	li s6, 0x682
	mulw s7, a2, s6
	li a3, 0x4f3
	mulw s3, s7, a3
	li s11, 0x517
	mulw s3, s3, s11
	li t5, 0x734
	mulw s11, s3, t5
	li s1, 0
	mulw s7, s11, s1
	li s11, 0x5f1
	mulw t1, s7, s11
	li s7, 0x24c
	mulw s4, t1, s7
	li t6, 0x7b2
	mulw a4, s4, t6
	li a2, 0x720
	mulw t6, a4, a2
	li s5, 0x403
	mulw t4, t6, s5
	li s1, 0
	mulw t5, t4, s1
	li t1, 0x59c
	mulw s1, t5, t1
	li s5, 0x18a
	mulw t5, s1, s5
	li a4, 0xc1
	mulw s3, t5, a4
	li s6, 0x3c1
	mulw s8, s3, s6
	li a1, 0x7b6
	mulw t3, s8, a1
	li s0, 0
	mulw s3, t3, s0
	li a6, 0x2a6
	mulw a5, s3, a6
	li t4, 0x2d4
	mulw a3, a5, t4
	li s8, 0x223
	mulw a1, a3, s8
	li a5, 0x3ae
	mulw t5, a1, a5
	li a6, 0x4be
	mulw t3, t5, a6
	li a4, 0
	mulw s3, t3, a4
	li s4, 0x150
	mulw s6, s3, s4
	li s8, 0x2c
	mulw t3, s6, s8
	li a2, 0x707
	mulw t2, t3, a2
	li s4, 0x10b
	mulw s5, t2, s4
	li s11, 0x368
	mulw s5, s5, s11
	li a1, 0
	mulw s11, s5, a1
	li a0, 0x355
	mulw a4, s11, a0
	li s11, 0x724
	mulw s1, a4, s11
	li a5, 0x343
	mulw s1, s1, a5
	li a2, 0x733
	mulw s4, s1, a2
	li s11, 0x671
	mulw t2, s4, s11
	li s0, 0
	mulw a2, t2, s0
	li a1, 0xa0
	mulw a0, a2, a1
	li a1, 0x331
	mulw s5, a0, a1
	li s4, 0x143
	mulw s6, s5, s4
	li t1, 0x120
	mulw a5, s6, t1
	li s3, 0x2bf
	mulw t6, a5, s3
	li a5, 0
	mulw t3, t6, a5
	li a4, 0x76f
	mulw t1, t3, a4
	li s3, 0x197
	mulw s1, t1, s3
	li t1, 0x3e1
	mulw s11, s1, t1
	li t6, 0xbb
	mulw t1, s11, t6
	li a7, 0x74a
	mulw a3, t1, a7
	li s3, 0
	mulw a5, a3, s3
	li s6, 0x281
	mulw a6, a5, s6
	li t5, 0x254
	mulw s1, a6, t5
	li s4, 0x48e
	mulw t4, s1, s4
	li t5, 0x1eb
	mulw s11, t4, t5
	li s1, 0x2fd
	mulw a4, s11, s1
	li s0, 0
	mulw t4, a4, s0
	li s5, 0x5b3
	mulw s11, t4, s5
	li t5, 0x1cc
	mulw s6, s11, t5
	li a6, 0x122
	mulw s6, s6, a6
	li t5, 0x74c
	mulw a3, s6, t5
	li a2, 0x14f
	mulw t1, a3, a2
	li s8, 0
	mulw s0, t1, s8
	li a0, 0x67d
	mulw s8, s0, a0
	li a5, 0x68f
	mulw s11, s8, a5
	li s1, 0x511
	mulw s11, s11, s1
	csrr a4, time
	csrr s7, cycle
	csrr a2, instret
	sub s10, a4, s10
	sub a3, s7, s9
	sub s9, a2, s2
	li a6, 0
	csrr s3, time
	csrr s0, cycle
	csrr s11, instret
	li s8, 0
	mulw t4, a6, s8
	li a6, 0x2be
	mulw t2, t4, a6
	li s5, 0x3e2
	mulw s7, t2, s5
	li s9, 0x441
	mulw s4, s7, s9
	li a6, 0x539
	mulw a4, s4, a6
	li a5, 0x83
	mulw s5, a4, a5
	li s4, 0
	mulw s8, s5, s4
	li s9, 0x298
	mulw a3, s8, s9
	li a0, 0x777
	mulw s1, a3, a0
	li t4, 0x25e
	mulw s8, s1, t4
	li a5, 0x7e3
	mulw s5, s8, a5
	li s10, 0x561
	mulw s8, s5, s10
	li s5, 0
	mulw a0, s8, s5
	li s9, 0x697
	mulw s4, a0, s9
	li s10, 0x2c0
	mulw s2, s4, s10
	li a0, 0x431
	mulw t4, s2, a0
	li t5, 0x755
	mulw t6, t4, t5
	li a0, 0x298
	mulw a1, t6, a0
	li a3, 0
	mulw a4, a1, a3
	li s10, 0x198
	mulw s1, a4, s10
	li a5, 0x72
	mulw a0, s1, a5
	li t6, 0x31f
	mulw s1, a0, t6
	li a2, 0x775
	mulw t4, s1, a2
	li a5, 0xe2
	mulw t3, t4, a5
	li s2, 0
	mulw a4, t3, s2
	li s5, 0x745
	mulw t1, a4, s5
	li a6, 0x56f
	mulw a1, t1, a6
	li a4, 0xe5
	mulw s10, a1, a4
	li a4, 0x57b
	mulw a1, s10, a4
	li t2, 0x2d3
	mulw t1, a1, t2
	li a6, 0
	mulw a3, t1, a6
	li a1, 0x7b9
	mulw s4, a3, a1
	li s2, 0x68d
	mulw s9, s4, s2
	li t2, 0x674
	mulw a2, s9, t2
	li s10, 0x190
	mulw a0, a2, s10
	li t2, 0x2a7
	mulw t1, a0, t2
	li s9, 0
	mulw s7, t1, s9
	li s6, 0x696
	mulw s9, s7, s6
	li a6, 0xb1
	mulw s9, s9, a6
	li s1, 0x413
	mulw s5, s9, s1
	li s8, 0x739
	mulw t3, s5, s8
	li t5, 0x6cb
	mulw t4, t3, t5
	li a0, 0
	mulw a0, t4, a0
	li s2, 0x660
	mulw a5, a0, s2
	li s5, 0x235
	mulw a6, a5, s5
	li a1, 0xda
	mulw t6, a6, a1
	li t4, 0x69e
	mulw t1, t6, t4
	li t6, 0x470
	mulw a1, t1, t6
	li a4, 0
	mulw t5, a1, a4
	li a4, 0x226
	mulw s5, t5, a4
	li s9, 0x1c0
	mulw a2, s5, s9
	li s8, 0x6bd
	mulw a5, a2, s8
	li t4, 0x699
	mulw s2, a5, t4
	li a3, 0x69d
	mulw t4, s2, a3
	li t2, 0
	mulw s6, t4, t2
	li s2, 0x522
	mulw t3, s6, s2
	li t6, 0x61c
	mulw s8, t3, t6
	li s10, 0x679
	mulw s7, s8, s10
	li s6, 0x4ec
	mulw t6, s7, s6
	li s4, 0x665
	mulw t2, t6, s4
	li t5, 0
	mulw s7, t2, t5
	li a0, 0x543
	mulw s10, s7, a0
	li t5, 0x335
	mulw a2, s10, t5
	li a3, 0x598
	mulw s8, a2, a3
	li a4, 0x397
	mulw t5, s8, a4
	li t4, 0x3b8
	mulw s5, t5, t4
	li a1, 0
	mulw s6, s5, a1
	li s5, 0x45f
	mulw s6, s6, s5
	li s1, 0x324
	mulw s4, s6, s1
	li a3, 0x56a
	mulw a5, s4, a3
	li s4, 0x456
	mulw s5, a5, s4
	li a2, 0x423
	mulw s7, s5, a2
	li a6, 0
	mulw s8, s7, a6
	li a7, 0x14f
	mulw s7, s8, a7
	li a3, 0x234
	mulw a5, s7, a3
	li a4, 0x714
	mulw a1, a5, a4
	li a3, 0x445
	mulw s7, a1, a3
	li s2, 0x430
	mulw a4, s7, s2
	li a2, 0
	mulw a3, a4, a2
	li t3, 0x75c
	mulw t3, a3, t3
	li s8, 0x36c
	mulw a2, t3, s8
	li s10, 0x6be
	mulw t4, a2, s10
	li a6, 0x3d7
	mulw t3, t4, a6
	li a0, 0x326
	mulw s1, t3, a0
	li t3, 0
	mulw a3, s1, t3
	li a2, 0x711
	mulw t6, a3, a2
	li s10, 0x5c4
	mulw a3, t6, s10
	li t1, 0x4c9
	mulw a5, a3, t1
	li s4, 0x283
	mulw s8, a5, s4
	li s10, 0xcd
	mulw s5, s8, s10
	li t4, 0
	mulw s1, s5, t4
	li s7, 0x3ce
	mulw t6, s1, s7
	li a2, 0x6be
	mulw a2, t6, a2
	li a0, 0x3a3
	mulw a6, a2, a0
	li s10, 0x135
	mulw a1, a6, s10
	li s9, 0x7cd
	mulw s10, a1, s9
	li a6, 0
	mulw s7, s10, a6
	li a2, 0x7cb
	mulw t4, s7, a2
	li a6, 0x6b
	mulw s10, t4, a6
	li a4, 0x21c
	mulw t6, s10, a4
	csrr a2, time
	csrr s8, cycle
	csrr s9, instret
	sub t6, a2, s3
	sub s6, s8, s0
	sub s0, s9, s11
	li s1, 0
	csrr s11, time
	csrr a0, cycle
	csrr a4, instret
	li a6, 0
	mulw s3, s1, a6
	li s8, 0x602
	mulw t1, s3, s8
	li s5, 0x179
	mulw s10, t1, s5
	li a1, 0x46d
	mulw s7, s10, a1
	li t3, 0x276
	mulw t4, s7, t3
	li s9, 0x71
	mulw t3, t4, s9
	li a1, 0
	mulw s1, t3, a1
	li a7, 0x312
	mulw t5, s1, a7
	li s3, 0x25f
	mulw a7, t5, s3
	li a3, 0x6eb
	mulw t5, a7, a3
	li t1, 0x61c
	mulw a3, t5, t1
	li s10, 0x734
	mulw s3, a3, s10
	li s9, 0
	mulw s5, s3, s9
	li a3, 0x682
	mulw t1, s5, a3
	li t3, 0x72f
	mulw s9, t1, t3
	li a5, 0xc6
	mulw t6, s9, a5
	li a1, 0x1b5
	mulw a2, t6, a1
	li s9, 0x33
	mulw s3, a2, s9
	li s1, 0
	mulw s5, s3, s1
	li t3, 0x172
	mulw a6, s5, t3
	li s8, 0x697
	mulw s3, a6, s8
	li s9, 0x53c
	mulw s5, s3, s9
	li s3, 0x6e3
	mulw a3, s5, s3
	li s4, 0xb8
	mulw a7, a3, s4
	li a6, 0
	mulw a6, a7, a6
	li t1, 0x374
	mulw s9, a6, t1
	li t5, 0x65d
	mulw a7, s9, t5
	li a3, 0x1e8
	mulw s3, a7, a3
	li a1, 0x18d
	mulw t4, s3, a1
	li s8, 0x40d
	mulw s9, t4, s8
	li t5, 0
	mulw s2, s9, t5
	li s8, 0x7bb
	mulw s7, s2, s8
	li t5, 0x1db
	mulw a1, s7, t5
	li s10, 0x1b8
	mulw t5, a1, s10
	li s10, 0x501
	mulw a3, t5, s10
	li s8, 0x739
	mulw a3, a3, s8
	li s7, 0
	mulw t4, a3, s7
	li t1, 0x305
	mulw a2, t4, t1
	li a7, 0x143
	mulw s2, a2, a7
	li a7, 0x15e
	mulw a1, s2, a7
	li t5, 0x7aa
	mulw t2, a1, t5
	li a7, 0x25b
	mulw a2, t2, a7
	li t1, 0
	mulw a7, a2, t1
	li s5, 0x68a
	mulw a7, a7, s5
	li s7, 0x26a
	mulw a2, a7, s7
	li a6, 0x32c
	mulw t6, a2, a6
	li a2, 0x726
	mulw s3, t6, a2
	li s10, 0x1f
	mulw a7, s3, s10
	li t1, 0
	mulw a2, a7, t1
	li a7, 0x6fd
	mulw t5, a2, a7
	li a2, 0x46e
	mulw s8, t5, a2
	li a1, 0x6d4
	mulw a5, s8, a1
	li a1, 0x4ec
	mulw s7, a5, a1
	li s3, 0x545
	mulw s2, s7, s3
	li s10, 0
	mulw a7, s2, s10
	li t2, 0x6f5
	mulw a6, a7, t2
	li s2, 0x112
	mulw a6, a6, s2
	li t5, 0x47d
	mulw s2, a6, t5
	li t2, 0x57b
	mulw s9, s2, t2
	li s5, 0x78d
	mulw s8, s9, s5
	li a7, 0
	mulw t6, s8, a7
	li s10, 0x107
	mulw t6, t6, s10
	li s3, 0x26b
	mulw a2, t6, s3
	li a5, 0x46d
	mulw a3, a2, a5
	li s10, 0x345
	mulw a6, a3, s10
	li a5, 0x102
	mulw a2, a6, a5
	li a3, 0
	mulw t2, a2, a3
	li s2, 0x356
	mulw s7, t2, s2
	li s1, 0x56f
	mulw a3, s7, s1
	li a6, 0x7d7
	mulw s8, a3, a6
	li a2, 0x63b
	mulw a3, s8, a2
	li t6, 0x416
	mulw s5, a3, t6
	li s9, 0
	mulw t4, s5, s9
	li s8, 0x5b5
	mulw s8, t4, s8
	li s7, 0x545
	mulw s2, s8, s7
	li a6, 0x466
	mulw t5, s2, a6
	li s1, 0x4a0
	mulw t3, t5, s1
	li s5, 0x3a3
	mulw s10, t3, s5
	li s3, 0
	mulw a3, s10, s3
	li t1, 0x6e1
	mulw t6, a3, t1
	li a5, 0x4c1
	mulw t5, t6, a5
	li a7, 0x4b8
	mulw s9, t5, a7
	li a5, 0xe3
	mulw t6, s9, a5
	li s4, 0x5ca
	mulw s9, t6, s4
	li t4, 0
	mulw s9, s9, t4
	li t6, 0x61d
	mulw a1, s9, t6
	li s4, 0x10e
	mulw t5, a1, s4
	li t2, 0xce
	mulw t2, t5, t2
	li a3, 0x3b4
	mulw s4, t2, a3
	li a6, 0x1d0
	mulw t6, s4, a6
	li s10, 0
	mulw a7, t6, s10
	li a2, 0x3a9
	mulw t6, a7, a2
	li a5, 0x79d
	mulw t5, t6, a5
	li s5, 0x5c7
	mulw t1, t5, s5
	li s4, 0x269
	mulw t5, t1, s4
	li a6, 0x3cc
	mulw t5, t5, a6
	li a6, 0
	mulw a6, t5, a6
	li a2, 0x9f
	mulw t2, a6, a2
	li s2, 0x52d
	mulw s5, t2, s2
	li a1, 0x4b6
	mulw s4, s5, a1
	csrr s1, time
	csrr a5, cycle
	csrr s10, instret
	sub s7, s1, s11
	sub s7, a5, a0
	sub s9, s10, a4
	beq s6, s7, pass_label_68
	li s10, failed_addr
	ld a4, 0(s10)
	jr a4
pass_label_68:
	beq s0, s9, pass_label_69
	li t1, failed_addr
	ld s3, 0(t1)
	jr s3
pass_label_69:
SID_ZKT_07_MULW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_CLMUL)
SID_ZKT_08_CLMUL:
	li sp, SID_ZKT_08_CLMUL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a1, 0
	csrr t4, time
	csrr s4, cycle
	csrr a4, instret
	li s11, 0x3bb
	clmul a6, a1, s11
	li a2, 0x48f
	clmul s9, a6, a2
	li t1, 0x7bf
	clmul a7, s9, t1
	li s10, 0x50a
	clmul s6, a7, s10
	li s2, 0x489
	clmul s6, s6, s2
	li s1, 0x3dd
	clmul t3, s6, s1
	li s2, 0x65f
	clmul s6, t3, s2
	li s0, 0x60d
	clmul s8, s6, s0
	li s11, 0x5ce
	clmul a5, s8, s11
	li s1, 0x378
	clmul a2, a5, s1
	li a3, 0x742
	clmul s6, a2, a3
	li a7, 0x1d0
	clmul s1, s6, a7
	li t1, 0x246
	clmul a0, s1, t1
	li t2, 0x158
	clmul s8, a0, t2
	li s10, 0x635
	clmul a3, s8, s10
	li t3, 0x52e
	clmul t5, a3, t3
	li s2, 0x1ff
	clmul a3, t5, s2
	li t5, 0x326
	clmul s11, a3, t5
	li s1, 0x50f
	clmul t1, s11, s1
	li t5, 0x87
	clmul t1, t1, t5
	li s1, 0x661
	clmul t3, t1, s1
	li a6, 0xbc
	clmul s8, t3, a6
	li a1, 0x6b2
	clmul s9, s8, a1
	li s3, 0x7ef
	clmul a7, s9, s3
	li s7, 0x1b7
	clmul s10, a7, s7
	li s9, 0x32c
	clmul a0, s10, s9
	li s8, 0x520
	clmul a5, a0, s8
	li s10, 0x212
	clmul s3, a5, s10
	li a7, 0x58d
	clmul a6, s3, a7
	li s2, 0xd8
	clmul a2, a6, s2
	li s10, 0x581
	clmul a3, a2, s10
	li s1, 0x7d1
	clmul s5, a3, s1
	li s0, 0x2aa
	clmul t5, s5, s0
	li t2, 0x399
	clmul t6, t5, t2
	li s2, 0xde
	clmul t5, t6, s2
	li s3, 0x16c
	clmul s9, t5, s3
	li s11, 0x5f6
	clmul a7, s9, s11
	li t1, 0x4a2
	clmul t3, a7, t1
	li a2, 0x3c
	clmul t3, t3, a2
	li a6, 0x8a
	clmul t2, t3, a6
	li s0, 0x1c1
	clmul a0, t2, s0
	li a1, 0x232
	clmul a2, a0, a1
	li s10, 0x29d
	clmul t2, a2, s10
	li s0, 0x5a1
	clmul t5, t2, s0
	li s1, 0x4b3
	clmul a6, t5, s1
	li s6, 0x2f7
	clmul a5, a6, s6
	li t2, 0x329
	clmul s2, a5, t2
	li s1, 0x68
	clmul s7, s2, s1
	li s8, 0x36
	clmul s1, s7, s8
	li s5, 0x7de
	clmul t5, s1, s5
	li s6, 0x2a1
	clmul a2, t5, s6
	li a1, 0x6b7
	clmul s7, a2, a1
	li s0, 0x6e5
	clmul a3, s7, s0
	li a5, 0xfd
	clmul a2, a3, a5
	li t2, 0x57a
	clmul s8, a2, t2
	li s10, 0x64
	clmul a3, s8, s10
	li s2, 0x531
	clmul a3, a3, s2
	li s2, 0x144
	clmul s2, a3, s2
	li s6, 0x300
	clmul a0, s2, s6
	li t5, 0x20b
	clmul s11, a0, t5
	li s0, 0x222
	clmul a1, s11, s0
	li s6, 0x3e7
	clmul a3, a1, s6
	li s0, 0x416
	clmul s0, a3, s0
	li t5, 0x6e3
	clmul s2, s0, t5
	li s0, 0x69d
	clmul a2, s2, s0
	li s6, 0x7a4
	clmul t3, a2, s6
	li s8, 0x492
	clmul t2, t3, s8
	li a1, 0x6a4
	clmul s6, t2, a1
	li s7, 0x264
	clmul a3, s6, s7
	li a7, 0x4cc
	clmul s11, a3, a7
	li t6, 0x17f
	clmul a5, s11, t6
	li s2, 0x580
	clmul s2, a5, s2
	li t1, 0x45c
	clmul a1, s2, t1
	li s2, 0x51f
	clmul s5, a1, s2
	li t1, 0x6b
	clmul a6, s5, t1
	li a2, 0x3a5
	clmul s10, a6, a2
	li a5, 0xcf
	clmul s8, s10, a5
	li a2, 0x4ab
	clmul s9, s8, a2
	li s7, 0x3d0
	clmul t1, s9, s7
	li a5, 0x446
	clmul a5, t1, a5
	li s1, 0x251
	clmul a0, a5, s1
	li s9, 0x1b9
	clmul a6, a0, s9
	li s7, 0x711
	clmul s8, a6, s7
	li a6, 0x453
	clmul s9, s8, a6
	li s5, 0x5ec
	clmul a5, s9, s5
	li s10, 0x10a
	clmul t3, a5, s10
	li s1, 0xc5
	clmul s8, t3, s1
	li a1, 0x711
	clmul s11, s8, a1
	li s8, 0x55b
	clmul s7, s11, s8
	li a7, 0x293
	clmul a2, s7, a7
	li t3, 0x2b6
	clmul a6, a2, t3
	li t5, 0x115
	clmul s6, a6, t5
	li a3, 0x3c5
	clmul s9, s6, a3
	li t5, 0x299
	clmul a2, s9, t5
	li a0, 0x457
	clmul s10, a2, a0
	li s1, 0x1f4
	clmul s6, s10, s1
	li s8, 0x49c
	clmul a7, s6, s8
	li a0, 0x1c3
	clmul t2, a7, a0
	li t5, 0x5a3
	clmul a3, t2, t5
	li t5, 0x682
	clmul s11, a3, t5
	csrr a6, time
	csrr s8, cycle
	csrr t3, instret
	sub a0, a6, t4
	sub s8, s8, s4
	sub s9, t3, a4
	li t2, 0
	csrr t4, time
	csrr a1, cycle
	csrr s1, instret
	li s4, 0x330
	clmul s6, t2, s4
	li a5, 0x15e
	clmul t5, s6, a5
	li a4, 0x668
	clmul t2, t5, a4
	li s9, 0x6d5
	clmul s7, t2, s9
	li a5, 0x590
	clmul s5, s7, a5
	li s0, 0x422
	clmul s8, s5, s0
	li a6, 0x3ce
	clmul a3, s8, a6
	li s5, 0x205
	clmul a0, a3, s5
	li a7, 0x5e4
	clmul s6, a0, a7
	li a5, 0x33d
	clmul s4, s6, a5
	li a5, 0x16c
	clmul t6, s4, a5
	li s10, 0x4c0
	clmul a6, t6, s10
	li a2, 0x73d
	clmul s9, a6, a2
	li s6, 0x48f
	clmul t2, s9, s6
	li s8, 0x197
	clmul a6, t2, s8
	li a4, 0x311
	clmul a7, a6, a4
	li a3, 0x41
	clmul s5, a7, a3
	li t1, 0x40a
	clmul s2, s5, t1
	li s5, 0x198
	clmul a3, s2, s5
	li a6, 0x6cf
	clmul t5, a3, a6
	li a6, 0x28d
	clmul t1, t5, a6
	li t2, 0x2ae
	clmul a2, t1, t2
	li s0, 0xa5
	clmul s3, a2, s0
	li t5, 0x2b0
	clmul t2, s3, t5
	li a0, 0x328
	clmul s7, t2, a0
	li a7, 0x9f
	clmul a2, s7, a7
	li s6, 0x1b3
	clmul s2, a2, s6
	li s3, 0x2ae
	clmul a2, s2, s3
	li a7, 0x4dc
	clmul a7, a2, a7
	li s9, 0x65e
	clmul a0, a7, s9
	li s11, 0x67a
	clmul s10, a0, s11
	li s4, 0x20d
	clmul t2, s10, s4
	li a3, 0x1b9
	clmul a0, t2, a3
	li t6, 0x5db
	clmul s0, a0, t6
	li t5, 0x26a
	clmul s11, s0, t5
	li a3, 0x185
	clmul s8, s11, a3
	li a4, 0x5a9
	clmul t3, s8, a4
	li s5, 0x755
	clmul s0, t3, s5
	li s6, 0x77b
	clmul t1, s0, s6
	li s4, 0x19
	clmul a3, t1, s4
	li a5, 0x400
	clmul a5, a3, a5
	li s6, 0x26a
	clmul a3, a5, s6
	li s4, 0x36d
	clmul s10, a3, s4
	li t6, 0x14a
	clmul a6, s10, t6
	li s0, 0x1c7
	clmul t1, a6, s0
	li s6, 0x7b1
	clmul s10, t1, s6
	li s6, 0x70f
	clmul s7, s10, s6
	li s2, 0x48
	clmul t5, s7, s2
	li s11, 0xd1
	clmul s5, t5, s11
	li a6, 0x7fa
	clmul a2, s5, a6
	li s2, 0x3d0
	clmul s4, a2, s2
	li t6, 0x743
	clmul a4, s4, t6
	li t1, 0x6b2
	clmul s3, a4, t1
	li a4, 0x690
	clmul t6, s3, a4
	li a7, 0x1d5
	clmul a7, t6, a7
	li s8, 0x276
	clmul s9, a7, s8
	li s0, 0x7df
	clmul t1, s9, s0
	li a5, 0x7e8
	clmul t6, t1, a5
	li s11, 0x132
	clmul a4, t6, s11
	li t6, 0x61a
	clmul a6, a4, t6
	li s6, 0x123
	clmul s0, a6, s6
	li a4, 0x40d
	clmul s4, s0, a4
	li a7, 0x617
	clmul s9, s4, a7
	li a2, 0x412
	clmul s4, s9, a2
	li a4, 0x95
	clmul a2, s4, a4
	li s10, 0x45b
	clmul s8, a2, s10
	li t1, 0x65a
	clmul t5, s8, t1
	li s8, 0x63b
	clmul s4, t5, s8
	li s9, 0x3d5
	clmul a6, s4, s9
	li s11, 0x798
	clmul a4, a6, s11
	li s4, 0xfa
	clmul a3, a4, s4
	li s3, 0x69a
	clmul t3, a3, s3
	li s5, 0x7e6
	clmul a7, t3, s5
	li a3, 0x554
	clmul s10, a7, a3
	li s8, 0x76f
	clmul a7, s10, s8
	li t3, 0x296
	clmul s10, a7, t3
	li a4, 0x555
	clmul s6, s10, a4
	li a0, 0x5e
	clmul s8, s6, a0
	li a6, 0x790
	clmul s11, s8, a6
	li s2, 0x66b
	clmul a5, s11, s2
	li a3, 0x7c7
	clmul s0, a5, a3
	li a2, 0x341
	clmul a4, s0, a2
	li a5, 0x76a
	clmul s7, a4, a5
	li a2, 0x61c
	clmul a6, s7, a2
	li t5, 0x775
	clmul t6, a6, t5
	li s9, 0x66f
	clmul s10, t6, s9
	li t6, 0x171
	clmul s4, s10, t6
	li s10, 0x643
	clmul s11, s4, s10
	li s10, 0x641
	clmul t1, s11, s10
	li a2, 0x7f1
	clmul a7, t1, a2
	li s9, 0x47b
	clmul t3, a7, s9
	li s3, 0x295
	clmul a3, t3, s3
	li a5, 0x24b
	clmul a4, a3, a5
	li a2, 0xc0
	clmul s5, a4, a2
	li s11, 0x686
	clmul s11, s5, s11
	li a4, 0x441
	clmul a7, s11, a4
	li s10, 0x192
	clmul s4, a7, s10
	li a4, 0x41b
	clmul a6, s4, a4
	li t6, 0x1a6
	clmul a6, a6, t6
	li a0, 0x4e0
	clmul a7, a6, a0
	csrr s5, time
	csrr s8, cycle
	csrr s3, instret
	sub t2, s5, t4
	sub s7, s8, a1
	sub s11, s3, s1
	li t3, 0
	csrr a5, time
	csrr s10, cycle
	csrr t1, instret
	li t4, 0x4ff
	clmul a3, t3, t4
	li a1, 0x1a7
	clmul s2, a3, a1
	li t3, 0x3cc
	clmul s5, s2, t3
	li a7, 0x19e
	clmul s4, s5, a7
	li a3, 0x5e0
	clmul s5, s4, a3
	li a4, 0x43d
	clmul a3, s5, a4
	li t2, 0x7b0
	clmul t3, a3, t2
	li t2, 0x7e
	clmul s4, t3, t2
	li a0, 0x17b
	clmul s8, s4, a0
	li s3, 0x3a1
	clmul t6, s8, s3
	li a7, 0xfc
	clmul t2, t6, a7
	li s3, 0x670
	clmul s3, t2, s3
	li t6, 0x571
	clmul s0, s3, t6
	li s6, 0x708
	clmul t4, s0, s6
	li s4, 0x6b3
	clmul a4, t4, s4
	li a2, 0xe5
	clmul a0, a4, a2
	li s9, 0x2be
	clmul t3, a0, s9
	li a1, 0x5e1
	clmul s0, t3, a1
	li a0, 0x2a4
	clmul t2, s0, a0
	li s6, 0x53b
	clmul s9, t2, s6
	li t6, 0x52c
	clmul t4, s9, t6
	li a2, 0x7b3
	clmul t2, t4, a2
	li s1, 0x22f
	clmul a3, t2, s1
	li s0, 0x19b
	clmul a0, a3, s0
	li a7, 0x706
	clmul s2, a0, a7
	li s4, 0x33d
	clmul s2, s2, s4
	li t4, 0x6c4
	clmul t3, s2, t4
	li a4, 0x492
	clmul t5, t3, a4
	li a0, 0x7b
	clmul t5, t5, a0
	li a0, 0xcd
	clmul a4, t5, a0
	li s1, 0x4f
	clmul t5, a4, s1
	li t4, 0x677
	clmul a7, t5, t4
	li t6, 0x34
	clmul s0, a7, t6
	li a4, 0x1b4
	clmul t5, s0, a4
	li a6, 0x6b8
	clmul a2, t5, a6
	li t6, 0x85
	clmul t5, a2, t6
	li a1, 0x7f3
	clmul t2, t5, a1
	li s1, 0xee
	clmul a6, t2, s1
	li s1, 0x72
	clmul s9, a6, s1
	li s6, 0x5f6
	clmul t2, s9, s6
	li a6, 0x2f2
	clmul a2, t2, a6
	li a6, 0x9e
	clmul s9, a2, a6
	li t5, 0x197
	clmul s2, s9, t5
	li a7, 0x763
	clmul s5, s2, a7
	li a3, 0x18
	clmul t3, s5, a3
	li s8, 0x730
	clmul t3, t3, s8
	li a1, 0x3b0
	clmul s3, t3, a1
	li s8, 0x1c
	clmul s6, s3, s8
	li s2, 0x1ca
	clmul s9, s6, s2
	li s6, 0x8c
	clmul a6, s9, s6
	li t5, 0x62c
	clmul s0, a6, t5
	li s4, 0x1b0
	clmul s6, s0, s4
	li t2, 0x7bc
	clmul s1, s6, t2
	li a7, 0xcc
	clmul s3, s1, a7
	li t2, 0x2e0
	clmul s0, s3, t2
	li s6, 0xfb
	clmul s0, s0, s6
	li s6, 0x7b7
	clmul t3, s0, s6
	li t4, 0x7d
	clmul s1, t3, t4
	li s6, 0x115
	clmul s9, s1, s6
	li a6, 0x75a
	clmul a1, s9, a6
	li a0, 0x424
	clmul s4, a1, a0
	li a3, 0x258
	clmul s9, s4, a3
	li t2, 0x4e
	clmul t3, s9, t2
	li s5, 0x7e4
	clmul s6, t3, s5
	li a7, 0x6ae
	clmul a6, s6, a7
	li t2, 0x36d
	clmul t5, a6, t2
	li s5, 0x41f
	clmul s4, t5, s5
	li a3, 0x1a0
	clmul a2, s4, a3
	li a3, 0x420
	clmul s1, a2, a3
	li t3, 0x14f
	clmul a0, s1, t3
	li s6, 0x148
	clmul a6, a0, s6
	li s4, 0x673
	clmul a6, a6, s4
	li s4, 0x9e
	clmul s8, a6, s4
	li t4, 0x4e1
	clmul a1, s8, t4
	li s8, 0xea
	clmul a1, a1, s8
	li s2, 0x28a
	clmul t5, a1, s2
	li s6, 0x7f7
	clmul s8, t5, s6
	li a3, 0x515
	clmul s8, s8, a3
	li t5, 0x65d
	clmul s6, s8, t5
	li t3, 0x1e2
	clmul s6, s6, t3
	li a1, 0x543
	clmul s5, s6, a1
	li t6, 0x695
	clmul t6, s5, t6
	li a2, 0x541
	clmul t4, t6, a2
	li s4, 0x4fa
	clmul s8, t4, s4
	li a3, 0x792
	clmul s9, s8, a3
	li a4, 0x7c5
	clmul a2, s9, a4
	li s4, 0x365
	clmul a3, a2, s4
	li t4, 0x737
	clmul s4, a3, t4
	li a1, 0x1ea
	clmul t6, s4, a1
	li s1, 0x3b5
	clmul s4, t6, s1
	li s5, 0x4d9
	clmul a2, s4, s5
	li t5, 0x71c
	clmul s0, a2, t5
	li a3, 0x588
	clmul t5, s0, a3
	li a3, 0x58d
	clmul a0, t5, a3
	li s0, 0x513
	clmul a3, a0, s0
	li t3, 0x35
	clmul s8, a3, t3
	li a0, 0x19a
	clmul s8, s8, a0
	li a3, 0xb
	clmul s4, s8, a3
	li t6, 0x281
	clmul s6, s4, t6
	li s2, 0x4e4
	clmul a4, s6, s2
	csrr s5, time
	csrr s9, cycle
	csrr a4, instret
	sub t2, s5, a5
	sub t5, s9, s10
	sub s4, a4, t1
	beq s7, t5, pass_label_70
	li a7, failed_addr
	ld s6, 0(a7)
	jr s6
pass_label_70:
	beq s11, s4, pass_label_71
	li a0, failed_addr
	ld a1, 0(a0)
	jr a1
pass_label_71:
SID_ZKT_08_CLMUL_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_CLMULH)
SID_ZKT_08_CLMULH:
	li sp, SID_ZKT_08_CLMULH_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s0, 0
	csrr s6, time
	csrr t6, cycle
	csrr a7, instret
	li t2, 0x4e5
	clmulh s4, s0, t2
	li s11, 0x388
	clmulh s9, s4, s11
	li a3, 0x6aa
	clmulh s2, s9, a3
	li s0, 0x516
	clmulh s7, s2, s0
	li s3, 0x52a
	clmulh a2, s7, s3
	li s1, 0x281
	clmulh s1, a2, s1
	li a1, 0x3eb
	clmulh s10, s1, a1
	li s4, 0x277
	clmulh t4, s10, s4
	li a3, 0x478
	clmulh a3, t4, a3
	li s2, 0x6a0
	clmulh s2, a3, s2
	li s3, 0x68e
	clmulh t4, s2, s3
	li s3, 0x1e9
	clmulh s10, t4, s3
	li a3, 0x77d
	clmulh a2, s10, a3
	li s2, 0x1cd
	clmulh a6, a2, s2
	li s2, 0x78b
	clmulh t3, a6, s2
	li a4, 0x66
	clmulh t3, t3, a4
	li s5, 0x4d5
	clmulh a6, t3, s5
	li s3, 0x5bc
	clmulh s2, a6, s3
	li a3, 0x65f
	clmulh s4, s2, a3
	li t5, 0x43
	clmulh s5, s4, t5
	li s4, 0x4e4
	clmulh s9, s5, s4
	li a0, 0x403
	clmulh s2, s9, a0
	li t2, 0x559
	clmulh t4, s2, t2
	li s4, 0x4c8
	clmulh t3, t4, s4
	li s11, 0xfc
	clmulh a4, t3, s11
	li s8, 0x687
	clmulh s0, a4, s8
	li a1, 0x3ee
	clmulh t4, s0, a1
	li s4, 0x533
	clmulh s2, t4, s4
	li s4, 0x1b7
	clmulh a2, s2, s4
	li s2, 0x396
	clmulh t4, a2, s2
	li a5, 0x11
	clmulh a3, t4, a5
	li s5, 0x518
	clmulh s4, a3, s5
	li t3, 0x6e2
	clmulh t4, s4, t3
	li a5, 0x2c8
	clmulh a2, t4, a5
	li s9, 0x2b1
	clmulh t1, a2, s9
	li s0, 0x4ba
	clmulh s7, t1, s0
	li a0, 0x596
	clmulh a1, s7, a0
	li t5, 0x19
	clmulh s2, a1, t5
	li a3, 0x83
	clmulh s0, s2, a3
	li s9, 0x79c
	clmulh t4, s0, s9
	li a2, 0x22
	clmulh a2, t4, a2
	li s7, 0x5e0
	clmulh a6, a2, s7
	li a4, 0x4dc
	clmulh s2, a6, a4
	li s5, 0x3ff
	clmulh t1, s2, s5
	li s1, 0x39d
	clmulh s7, t1, s1
	li a6, 0x2b4
	clmulh s7, s7, a6
	li a5, 0x489
	clmulh s8, s7, a5
	li s9, 0x37e
	clmulh a2, s8, s9
	li s2, 0x3ab
	clmulh s4, a2, s2
	li t4, 0x518
	clmulh s1, s4, t4
	li t4, 0x4c1
	clmulh t4, s1, t4
	li a3, 0x19f
	clmulh a6, t4, a3
	li t4, 0x262
	clmulh t5, a6, t4
	li t1, 0x19b
	clmulh a1, t5, t1
	li s4, 0x375
	clmulh t1, a1, s4
	li a2, 0x795
	clmulh s8, t1, a2
	li s3, 0x148
	clmulh s5, s8, s3
	li s3, 0x56e
	clmulh s7, s5, s3
	li a4, 0x516
	clmulh t5, s7, a4
	li s7, 0x49d
	clmulh t4, t5, s7
	li a0, 0x341
	clmulh s4, t4, a0
	li s11, 0x297
	clmulh a3, s4, s11
	li a0, 0x10e
	clmulh s7, a3, a0
	li s8, 0x142
	clmulh t3, s7, s8
	li s8, 0x3be
	clmulh a2, t3, s8
	li s10, 0x414
	clmulh s3, a2, s10
	li s8, 0xa9
	clmulh t4, s3, s8
	li s5, 0x12e
	clmulh s0, t4, s5
	li s8, 0x3e
	clmulh t1, s0, s8
	li t2, 0x7f1
	clmulh s11, t1, t2
	li t4, 0x7db
	clmulh s7, s11, t4
	li s8, 0xe2
	clmulh s10, s7, s8
	li t4, 0x1f
	clmulh s3, s10, t4
	li a0, 0x3c3
	clmulh a1, s3, a0
	li t2, 0x26d
	clmulh a0, a1, t2
	li s4, 0x41c
	clmulh t3, a0, s4
	li s8, 0x797
	clmulh a1, t3, s8
	li a5, 0x4e0
	clmulh t3, a1, a5
	li s3, 0x1ec
	clmulh t2, t3, s3
	li a6, 0x794
	clmulh s10, t2, a6
	li s4, 0x426
	clmulh t4, s10, s4
	li s1, 0x28c
	clmulh s4, t4, s1
	li s2, 0x206
	clmulh s5, s4, s2
	li a5, 0xbd
	clmulh a4, s5, a5
	li s1, 0x4cd
	clmulh t4, a4, s1
	li a2, 0xd
	clmulh a6, t4, a2
	li s1, 0x63b
	clmulh t3, a6, s1
	li s11, 0x4e9
	clmulh s11, t3, s11
	li t2, 0x4df
	clmulh s8, s11, t2
	li t1, 0x695
	clmulh t4, s8, t1
	li s5, 0x1ed
	clmulh t3, t4, s5
	li a6, 0x3f9
	clmulh s9, t3, a6
	li s4, 0x2af
	clmulh t3, s9, s4
	li s10, 0x1b6
	clmulh s7, t3, s10
	li s11, 0x7be
	clmulh s0, s7, s11
	li t3, 0x2d
	clmulh s1, s0, t3
	li a4, 0x1cf
	clmulh a3, s1, a4
	li s5, 0x58d
	clmulh s0, a3, s5
	li s1, 0x145
	clmulh a3, s0, s1
	li a5, 0x4b8
	clmulh a4, a3, a5
	csrr s10, time
	csrr s7, cycle
	csrr s8, instret
	sub s0, s10, s6
	sub s5, s7, t6
	sub s9, s8, a7
	li s2, 0
	csrr a5, time
	csrr t6, cycle
	csrr a0, instret
	li s1, 0x13c
	clmulh a6, s2, s1
	li s8, 0x310
	clmulh t5, a6, s8
	li t1, 0x6eb
	clmulh a1, t5, t1
	li s4, 0x6cb
	clmulh t4, a1, s4
	li s7, 0x369
	clmulh a7, t4, s7
	li s0, 0x712
	clmulh s1, a7, s0
	li a3, 0x527
	clmulh s9, s1, a3
	li s6, 0x354
	clmulh s2, s9, s6
	li s11, 0x2fb
	clmulh s9, s2, s11
	li s8, 0x461
	clmulh s0, s9, s8
	li s1, 0x5b0
	clmulh a4, s0, s1
	li s11, 0x49f
	clmulh s4, a4, s11
	li t4, 0x235
	clmulh a1, s4, t4
	li t2, 0x5dc
	clmulh t5, a1, t2
	li s0, 0x5f1
	clmulh t5, t5, s0
	li t3, 0xdb
	clmulh s8, t5, t3
	li s5, 0x1b0
	clmulh t2, s8, s5
	li t4, 0xec
	clmulh t3, t2, t4
	li s10, 0x17
	clmulh a1, t3, s10
	li s7, 0x5ff
	clmulh t1, a1, s7
	li a2, 0x5ed
	clmulh t4, t1, a2
	li s8, 0x31d
	clmulh a1, t4, s8
	li s1, 0x365
	clmulh t4, a1, s1
	li a1, 0x6a4
	clmulh s2, t4, a1
	li t1, 0x699
	clmulh a2, s2, t1
	li s7, 0x220
	clmulh a2, a2, s7
	li s9, 0x779
	clmulh s8, a2, s9
	li a3, 0x49d
	clmulh t5, s8, a3
	li s1, 0x24a
	clmulh s6, t5, s1
	li a4, 0x49d
	clmulh t1, s6, a4
	li a7, 0x524
	clmulh s1, t1, a7
	li s2, 0x6c7
	clmulh t2, s1, s2
	li s8, 0x506
	clmulh t5, t2, s8
	li t2, 0x528
	clmulh s1, t5, t2
	li s8, 0x48
	clmulh t2, s1, s8
	li t4, 0x487
	clmulh a4, t2, t4
	li a6, 0x767
	clmulh a7, a4, a6
	li s9, 0x68a
	clmulh s11, a7, s9
	li t5, 0x736
	clmulh t5, s11, t5
	li a1, 0x459
	clmulh s11, t5, a1
	li t5, 0xff
	clmulh t5, s11, t5
	li s2, 0x297
	clmulh s11, t5, s2
	li a6, 0x785
	clmulh t1, s11, a6
	li a2, 0x104
	clmulh s1, t1, a2
	li a4, 0x499
	clmulh s11, s1, a4
	li a2, 0x569
	clmulh s9, s11, a2
	li s10, 0x1f1
	clmulh s1, s9, s10
	li s3, 0x5da
	clmulh s9, s1, s3
	li a3, 0x6e5
	clmulh s0, s9, a3
	li s1, 0x5ef
	clmulh s5, s0, s1
	li s1, 0x245
	clmulh t4, s5, s1
	li a3, 0x239
	clmulh s8, t4, a3
	li a6, 0x54
	clmulh s2, s8, a6
	li s1, 0x2aa
	clmulh t3, s2, s1
	li s7, 0x5e8
	clmulh s11, t3, s7
	li s7, 0x61c
	clmulh s2, s11, s7
	li t2, 0x4f
	clmulh s1, s2, t2
	li s6, 0x5ee
	clmulh s0, s1, s6
	li a2, 0x46b
	clmulh s0, s0, a2
	li a1, 0x2a5
	clmulh s7, s0, a1
	li a7, 0x758
	clmulh s8, s7, a7
	li t4, 0xf
	clmulh a1, s8, t4
	li a2, 0x178
	clmulh a1, a1, a2
	li a4, 0xeb
	clmulh a1, a1, a4
	li s6, 0x154
	clmulh a1, a1, s6
	li s11, 0x783
	clmulh s9, a1, s11
	li a6, 0x15c
	clmulh a3, s9, a6
	li t1, 0x300
	clmulh s6, a3, t1
	li t2, 0x5
	clmulh t2, s6, t2
	li s2, 0x27e
	clmulh s3, t2, s2
	li t3, 0x5bc
	clmulh a6, s3, t3
	li s7, 0x4dc
	clmulh s8, a6, s7
	li s11, 0x4a7
	clmulh s10, s8, s11
	li s2, 0x7c2
	clmulh s1, s10, s2
	li a7, 0x3a3
	clmulh s10, s1, a7
	li t4, 0x50d
	clmulh s6, s10, t4
	li s1, 0x35f
	clmulh a6, s6, s1
	li s0, 0x5cc
	clmulh s5, a6, s0
	li a7, 0x215
	clmulh s2, s5, a7
	li s8, 0x425
	clmulh s5, s2, s8
	li a4, 0x3be
	clmulh t4, s5, a4
	li s0, 0x520
	clmulh a6, t4, s0
	li a2, 0x7f1
	clmulh s3, a6, a2
	li s6, 0x2d6
	clmulh s9, s3, s6
	li s8, 0x6cf
	clmulh a4, s9, s8
	li t1, 0x15
	clmulh t3, a4, t1
	li s3, 0x17d
	clmulh a4, t3, s3
	li t1, 0x290
	clmulh t2, a4, t1
	li s1, 0x50e
	clmulh a6, t2, s1
	li s8, 0x6cb
	clmulh a2, a6, s8
	li s6, 0x193
	clmulh s9, a2, s6
	li s0, 0x77e
	clmulh s11, s9, s0
	li t2, 0x4b4
	clmulh s4, s11, t2
	li s10, 0x320
	clmulh t5, s4, s10
	li a2, 0x7e8
	clmulh t4, t5, a2
	li s4, 0x398
	clmulh a6, t4, s4
	li t5, 0x39c
	clmulh s9, a6, t5
	li t5, 0x5d4
	clmulh t2, s9, t5
	li t3, 0x687
	clmulh a3, t2, t3
	li t2, 0x289
	clmulh s5, a3, t2
	csrr a4, time
	csrr s9, cycle
	csrr s7, instret
	sub a7, a4, a5
	sub a6, s9, t6
	sub s8, s7, a0
	li s3, 0
	csrr s10, time
	csrr t6, cycle
	csrr s1, instret
	li t4, 0x231
	clmulh s7, s3, t4
	li s4, 0x775
	clmulh a3, s7, s4
	li t5, 0x612
	clmulh t1, a3, t5
	li t5, 0x2e7
	clmulh a7, t1, t5
	li t4, 0x431
	clmulh a5, a7, t4
	li a2, 0x19a
	clmulh s2, a5, a2
	li s7, 0x449
	clmulh s3, s2, s7
	li t1, 0x6b7
	clmulh a3, s3, t1
	li s5, 0x1ac
	clmulh a1, a3, s5
	li s11, 0x3f5
	clmulh s5, a1, s11
	li s2, 0x280
	clmulh s3, s5, s2
	li s11, 0x181
	clmulh a0, s3, s11
	li a5, 0x5fd
	clmulh a0, a0, a5
	li a1, 0x564
	clmulh s0, a0, a1
	li s9, 0x4b0
	clmulh t4, s0, s9
	li s6, 0x5f5
	clmulh t4, t4, s6
	li s6, 0x5f0
	clmulh t5, t4, s6
	li s6, 0x404
	clmulh t2, t5, s6
	li a2, 0x483
	clmulh a2, t2, a2
	li a3, 0x4ac
	clmulh s9, a2, a3
	li t3, 0x359
	clmulh s9, s9, t3
	li t3, 0x63b
	clmulh t1, s9, t3
	li t4, 0x434
	clmulh a4, t1, t4
	li a0, 0x620
	clmulh a4, a4, a0
	li s7, 0x1d0
	clmulh s2, a4, s7
	li t5, 0x33c
	clmulh s5, s2, t5
	li s7, 0x691
	clmulh a3, s5, s7
	li t4, 0x60f
	clmulh s3, a3, t4
	li a3, 0xcc
	clmulh a0, s3, a3
	li t5, 0x33
	clmulh s0, a0, t5
	li s4, 0x627
	clmulh s2, s0, s4
	li t4, 0xd9
	clmulh a4, s2, t4
	li a1, 0x79e
	clmulh a4, a4, a1
	li s9, 0x6a2
	clmulh s9, a4, s9
	li t4, 0x1fa
	clmulh t5, s9, t4
	li s5, 0x1fc
	clmulh s11, t5, s5
	li t1, 0x139
	clmulh a2, s11, t1
	li a7, 0x377
	clmulh s9, a2, a7
	li t4, 0x292
	clmulh a1, s9, t4
	li a2, 0x3ff
	clmulh a0, a1, a2
	li t1, 0x2f2
	clmulh s4, a0, t1
	li a3, 0x61a
	clmulh t2, s4, a3
	li s4, 0x138
	clmulh s4, t2, s4
	li t4, 0x517
	clmulh s11, s4, t4
	li a3, 0x661
	clmulh s11, s11, a3
	li s0, 0xb5
	clmulh s3, s11, s0
	li s2, 0x1f
	clmulh s11, s3, s2
	li t1, 0x7d1
	clmulh s2, s11, t1
	li t2, 0xa0
	clmulh s6, s2, t2
	li a5, 0x598
	clmulh t4, s6, a5
	li t1, 0x6a4
	clmulh s3, t4, t1
	li a7, 0x18c
	clmulh a5, s3, a7
	li a0, 0x752
	clmulh t2, a5, a0
	li a3, 0x77d
	clmulh s5, t2, a3
	li a0, 0x74d
	clmulh s9, s5, a0
	li a1, 0x64c
	clmulh s7, s9, a1
	li s3, 0x478
	clmulh t1, s7, s3
	li t5, 0x5fd
	clmulh a2, t1, t5
	li a1, 0x796
	clmulh t3, a2, a1
	li s2, 0x15
	clmulh t2, t3, s2
	li s9, 0x1d6
	clmulh s2, t2, s9
	li s7, 0x127
	clmulh a4, s2, s7
	li s6, 0x623
	clmulh a2, a4, s6
	li s4, 0x1ef
	clmulh a7, a2, s4
	li t5, 0x666
	clmulh a1, a7, t5
	li t3, 0x239
	clmulh s5, a1, t3
	li t4, 0xf4
	clmulh s0, s5, t4
	li s9, 0xfc
	clmulh a0, s0, s9
	li a5, 0x7d1
	clmulh a5, a0, a5
	li t2, 0x70f
	clmulh s9, a5, t2
	li t4, 0x69e
	clmulh a4, s9, t4
	li a0, 0xeb
	clmulh t3, a4, a0
	li s3, 0x205
	clmulh a0, t3, s3
	li a4, 0x2b9
	clmulh s11, a0, a4
	li a4, 0x2f4
	clmulh s11, s11, a4
	li a4, 0x549
	clmulh a7, s11, a4
	li a0, 0x62c
	clmulh s7, a7, a0
	li s2, 0x490
	clmulh a3, s7, s2
	li t4, 0x1b6
	clmulh t2, a3, t4
	li t4, 0x5a6
	clmulh s4, t2, t4
	li s3, 0x1a2
	clmulh t4, s4, s3
	li s3, 0x296
	clmulh t4, t4, s3
	li s11, 0x1ac
	clmulh s5, t4, s11
	li s7, 0x7ce
	clmulh s7, s5, s7
	li a2, 0x27b
	clmulh s2, s7, a2
	li t4, 0x3da
	clmulh a2, s2, t4
	li s4, 0x1b8
	clmulh a0, a2, s4
	li s5, 0x49c
	clmulh a5, a0, s5
	li s2, 0x20d
	clmulh a0, a5, s2
	li t3, 0x2f9
	clmulh s0, a0, t3
	li a1, 0x66a
	clmulh s7, s0, a1
	li s5, 0x620
	clmulh t5, s7, s5
	li s2, 0x403
	clmulh t2, t5, s2
	li a0, 0x170
	clmulh a2, t2, a0
	li t5, 0x28f
	clmulh a4, a2, t5
	li s3, 0x649
	clmulh s2, a4, s3
	li s4, 0x589
	clmulh s2, s2, s4
	li a3, 0xf5
	clmulh s11, s2, a3
	li s7, 0x463
	clmulh t4, s11, s7
	li t5, 0x1a4
	clmulh s9, t4, t5
	csrr s9, time
	csrr a7, cycle
	csrr t2, instret
	sub a2, s9, s10
	sub a0, a7, t6
	sub t3, t2, s1
	beq a6, a0, pass_label_72
	li a7, failed_addr
	ld s3, 0(a7)
	jr s3
pass_label_72:
	beq s8, t3, pass_label_73
	li a6, failed_addr
	ld s3, 0(a6)
	jr s3
pass_label_73:
SID_ZKT_08_CLMULH_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_XPERM4)
SID_ZKT_08_XPERM4:
	li sp, SID_ZKT_08_XPERM4_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a5, 0
	csrr a3, time
	csrr s3, cycle
	csrr s9, instret
	li a2, 0x5d5
	xperm4 a6, a5, a2
	li s8, 0x353
	xperm4 s1, a6, s8
	li s4, 0x472
	xperm4 s0, s1, s4
	li a4, 0x7dc
	xperm4 t6, s0, a4
	li s2, 0x739
	xperm4 s4, t6, s2
	li s1, 0xd
	xperm4 t4, s4, s1
	li a0, 0x3e5
	xperm4 a7, t4, a0
	li s0, 0x4a7
	xperm4 s2, a7, s0
	li t4, 0x20b
	xperm4 t4, s2, t4
	li a7, 0x300
	xperm4 s4, t4, a7
	li s6, 0x5a8
	xperm4 s8, s4, s6
	li t3, 0x616
	xperm4 t2, s8, t3
	li s6, 0x523
	xperm4 t3, t2, s6
	li s11, 0x20
	xperm4 s6, t3, s11
	li t1, 0x12f
	xperm4 s4, s6, t1
	li a7, 0x57
	xperm4 t5, s4, a7
	li s6, 0x57a
	xperm4 a1, t5, s6
	li a2, 0x734
	xperm4 s4, a1, a2
	li s5, 0x3ac
	xperm4 s6, s4, s5
	li a6, 0x7f
	xperm4 s5, s6, a6
	li s6, 0x67c
	xperm4 s8, s5, s6
	li a0, 0x313
	xperm4 t2, s8, a0
	li t3, 0x7e8
	xperm4 s7, t2, t3
	li t2, 0x254
	xperm4 s7, s7, t2
	li s5, 0x12c
	xperm4 a4, s7, s5
	li t1, 0x2f9
	xperm4 t4, a4, t1
	li s1, 0x50d
	xperm4 t6, t4, s1
	li t2, 0x37a
	xperm4 a5, t6, t2
	li s8, 0xe0
	xperm4 a6, a5, s8
	li a2, 0x130
	xperm4 t4, a6, a2
	li a7, 0x392
	xperm4 a2, t4, a7
	li a6, 0x34a
	xperm4 t4, a2, a6
	li s1, 0xda
	xperm4 s0, t4, s1
	li t3, 0x4e7
	xperm4 s2, s0, t3
	li s0, 0x70a
	xperm4 t5, s2, s0
	li t1, 0x7ba
	xperm4 a2, t5, t1
	li t1, 0x6e1
	xperm4 t3, a2, t1
	li a0, 0x8b
	xperm4 a7, t3, a0
	li a6, 0x5c1
	xperm4 a6, a7, a6
	li s10, 0x6db
	xperm4 s7, a6, s10
	li t4, 0x7cf
	xperm4 s6, s7, t4
	li s8, 0x2dd
	xperm4 t6, s6, s8
	li t2, 0x489
	xperm4 a5, t6, t2
	li s4, 0x5a8
	xperm4 a6, a5, s4
	li s5, 0x618
	xperm4 s8, a6, s5
	li s6, 0x57c
	xperm4 s8, s8, s6
	li s4, 0xc5
	xperm4 a0, s8, s4
	li s2, 0x5da
	xperm4 s10, a0, s2
	li s5, 0x7f9
	xperm4 s5, s10, s5
	li s4, 0x270
	xperm4 a1, s5, s4
	li s7, 0x6c1
	xperm4 t1, a1, s7
	li s5, 0x7bd
	xperm4 t5, t1, s5
	li t3, 0x129
	xperm4 s6, t5, t3
	li t5, 0x78
	xperm4 s2, s6, t5
	li a7, 0x62a
	xperm4 s2, s2, a7
	li t6, 0x63f
	xperm4 a7, s2, t6
	li s11, 0x7a2
	xperm4 t1, a7, s11
	li a7, 0x11d
	xperm4 a1, t1, a7
	li s7, 0x540
	xperm4 t1, a1, s7
	li s2, 0x709
	xperm4 s8, t1, s2
	li t5, 0x108
	xperm4 t4, s8, t5
	li a7, 0x61f
	xperm4 a2, t4, a7
	li s0, 0x3a5
	xperm4 a1, a2, s0
	li s8, 0x6d
	xperm4 t3, a1, s8
	li s0, 0x46f
	xperm4 t2, t3, s0
	li s2, 0x17e
	xperm4 t6, t2, s2
	li a4, 0x455
	xperm4 t5, t6, a4
	li s11, 0x66
	xperm4 s5, t5, s11
	li s4, 0x476
	xperm4 s10, s5, s4
	li a2, 0x6e9
	xperm4 t4, s10, a2
	li s2, 0x46e
	xperm4 s6, t4, s2
	li s2, 0x49d
	xperm4 a0, s6, s2
	li a7, 0x537
	xperm4 t5, a0, a7
	li s8, 0x243
	xperm4 s11, t5, s8
	li s1, 0x372
	xperm4 s8, s11, s1
	li s7, 0x277
	xperm4 t4, s8, s7
	li t2, 0x68e
	xperm4 a7, t4, t2
	li t2, 0x7ae
	xperm4 a5, a7, t2
	li t1, 0x611
	xperm4 s2, a5, t1
	li t4, 0x5b8
	xperm4 a1, s2, t4
	li s4, 0x37b
	xperm4 a4, a1, s4
	li s0, 0x601
	xperm4 a0, a4, s0
	li a1, 0xab
	xperm4 a0, a0, a1
	li s0, 0x36
	xperm4 s5, a0, s0
	li s7, 0x3c4
	xperm4 s6, s5, s7
	li t1, 0x6a1
	xperm4 a2, s6, t1
	li a5, 0x6e0
	xperm4 a4, a2, a5
	li a0, 0x248
	xperm4 t2, a4, a0
	li t1, 0x65c
	xperm4 t5, t2, t1
	li t2, 0x346
	xperm4 t2, t5, t2
	li s2, 0x64f
	xperm4 s11, t2, s2
	li t1, 0x216
	xperm4 s11, s11, t1
	li a4, 0x1d7
	xperm4 s6, s11, a4
	li s5, 0x19
	xperm4 t4, s6, s5
	li a0, 0x121
	xperm4 a2, t4, a0
	li t3, 0x68f
	xperm4 a7, a2, t3
	li t5, 0x31
	xperm4 t2, a7, t5
	li a2, 0x10d
	xperm4 s2, t2, a2
	li s10, 0x536
	xperm4 t5, s2, s10
	li a2, 0x72c
	xperm4 a4, t5, a2
	csrr s1, time
	csrr s0, cycle
	csrr a5, instret
	sub s8, s1, a3
	sub s5, s0, s3
	sub s10, a5, s9
	li s10, 0
	csrr t6, time
	csrr a6, cycle
	csrr t5, instret
	li s6, 0x350
	xperm4 a1, s10, s6
	li s3, 0x227
	xperm4 s2, a1, s3
	li a3, 0xeb
	xperm4 a3, s2, a3
	li a5, 0x671
	xperm4 s3, a3, a5
	li s0, 0x6d7
	xperm4 s8, s3, s0
	li s4, 0x3db
	xperm4 s3, s8, s4
	li t3, 0x2db
	xperm4 s1, s3, t3
	li s4, 0x7e0
	xperm4 a7, s1, s4
	li a5, 0x659
	xperm4 s2, a7, a5
	li s0, 0x216
	xperm4 s3, s2, s0
	li t4, 0x10e
	xperm4 s4, s3, t4
	li a4, 0x5a8
	xperm4 a0, s4, a4
	li s2, 0x72e
	xperm4 s4, a0, s2
	li a1, 0x6c8
	xperm4 s5, s4, a1
	li a0, 0x563
	xperm4 a7, s5, a0
	li a5, 0x69
	xperm4 s3, a7, a5
	li a5, 0x5c3
	xperm4 a5, s3, a5
	li s4, 0x7c5
	xperm4 s5, a5, s4
	li a1, 0x45e
	xperm4 a5, s5, a1
	li s5, 0x469
	xperm4 s6, a5, s5
	li a1, 0x48d
	xperm4 s1, s6, a1
	li s10, 0x702
	xperm4 s11, s1, s10
	li a3, 0x20c
	xperm4 t3, s11, a3
	li a7, 0x33a
	xperm4 a2, t3, a7
	li t4, 0x82
	xperm4 t4, a2, t4
	li a3, 0x591
	xperm4 s10, t4, a3
	li s0, 0x44f
	xperm4 s8, s10, s0
	li a1, 0x2f2
	xperm4 s4, s8, a1
	li a0, 0x1d2
	xperm4 s8, s4, a0
	li a7, 0x328
	xperm4 t3, s8, a7
	li t4, 0x4ce
	xperm4 s8, t3, t4
	li a3, 0x3a9
	xperm4 a5, s8, a3
	li a2, 0x417
	xperm4 a2, a5, a2
	li s4, 0x775
	xperm4 s9, a2, s4
	li s8, 0x7aa
	xperm4 a2, s9, s8
	li a0, 0x2e
	xperm4 a0, a2, a0
	li t4, 0x475
	xperm4 t4, a0, t4
	li s3, 0x3df
	xperm4 a0, t4, s3
	li t1, 0x795
	xperm4 t1, a0, t1
	li s2, 0x59e
	xperm4 s8, t1, s2
	li a0, 0x61e
	xperm4 t4, s8, a0
	li a4, 0x469
	xperm4 s7, t4, a4
	li t4, 0x718
	xperm4 s3, s7, t4
	li a5, 0x132
	xperm4 s6, s3, a5
	li s11, 0x43c
	xperm4 s2, s6, s11
	li s6, 0x4dc
	xperm4 t3, s2, s6
	li s1, 0x4f6
	xperm4 s5, t3, s1
	li a5, 0x1a5
	xperm4 s10, s5, a5
	li a7, 0x22a
	xperm4 s0, s10, a7
	li s9, 0x42f
	xperm4 s3, s0, s9
	li s6, 0x4cc
	xperm4 a5, s3, s6
	li a1, 0x42
	xperm4 a0, a5, a1
	li a5, 0x10d
	xperm4 a3, a0, a5
	li s9, 0x4a
	xperm4 s11, a3, s9
	li s0, 0x18c
	xperm4 s0, s11, s0
	li s5, 0x26e
	xperm4 s9, s0, s5
	li a7, 0x5fa
	xperm4 s3, s9, a7
	li t4, 0x38e
	xperm4 s0, s3, t4
	li t1, 0x4f1
	xperm4 a7, s0, t1
	li s4, 0x4ea
	xperm4 a1, a7, s4
	li s2, 0x5ac
	xperm4 t2, a1, s2
	li a7, 0x208
	xperm4 s3, t2, a7
	li s1, 0x4fe
	xperm4 a4, s3, s1
	li t3, 0x766
	xperm4 s1, a4, t3
	li t3, 0x415
	xperm4 t1, s1, t3
	li s0, 0x5b1
	xperm4 t4, t1, s0
	li t2, 0x22a
	xperm4 s6, t4, t2
	li t2, 0x7d3
	xperm4 s4, s6, t2
	li s11, 0x6f
	xperm4 t4, s4, s11
	li t1, 0x65e
	xperm4 a1, t4, t1
	li t3, 0x7fa
	xperm4 t4, a1, t3
	li s1, 0x35f
	xperm4 s0, t4, s1
	li s3, 0x303
	xperm4 t3, s0, s3
	li a5, 0x38b
	xperm4 s2, t3, a5
	li s3, 0x7a8
	xperm4 a0, s2, s3
	li s0, 0x266
	xperm4 s3, a0, s0
	li t2, 0x7eb
	xperm4 a7, s3, t2
	li t2, 0x6c9
	xperm4 s7, a7, t2
	li a3, 0x6e6
	xperm4 s5, s7, a3
	li s11, 0x512
	xperm4 s6, s5, s11
	li s7, 0x40a
	xperm4 t3, s6, s7
	li s0, 0x7ad
	xperm4 s7, t3, s0
	li a7, 0x51e
	xperm4 s9, s7, a7
	li s5, 0x2a0
	xperm4 s4, s9, s5
	li a5, 0x457
	xperm4 s6, s4, a5
	li a3, 0x42c
	xperm4 s4, s6, a3
	li s9, 0x7a6
	xperm4 s2, s4, s9
	li s5, 0x5f7
	xperm4 s0, s2, s5
	li s7, 0x45a
	xperm4 a4, s0, s7
	li a3, 0x6c4
	xperm4 s5, a4, a3
	li s8, 0x473
	xperm4 s2, s5, s8
	li s6, 0x35e
	xperm4 s3, s2, s6
	li s5, 0x505
	xperm4 a5, s3, s5
	li s2, 0x64a
	xperm4 a5, a5, s2
	li s2, 0x11f
	xperm4 a0, a5, s2
	li s7, 0x1c5
	xperm4 a0, a0, s7
	li t4, 0x577
	xperm4 s8, a0, t4
	li s2, 0x720
	xperm4 t3, s8, s2
	li s6, 0x50e
	xperm4 a4, t3, s6
	li s8, 0x5dd
	xperm4 a4, a4, s8
	csrr t3, time
	csrr a5, cycle
	csrr a4, instret
	sub s2, t3, t6
	sub s7, a5, a6
	sub s4, a4, t5
	li t1, 0
	csrr a6, time
	csrr s11, cycle
	csrr a7, instret
	li a4, 0x7b
	xperm4 s0, t1, a4
	li s2, 0x7f0
	xperm4 a5, s0, s2
	li t5, 0x401
	xperm4 a4, a5, t5
	li a5, 0x331
	xperm4 a5, a4, a5
	li a3, 0x69a
	xperm4 a5, a5, a3
	li t6, 0x70c
	xperm4 s9, a5, t6
	li t2, 0x1f7
	xperm4 s6, s9, t2
	li a2, 0xad
	xperm4 a3, s6, a2
	li s6, 0x795
	xperm4 a4, a3, s6
	li a2, 0x688
	xperm4 a4, a4, a2
	li s5, 0x6e9
	xperm4 s2, a4, s5
	li s10, 0x387
	xperm4 s8, s2, s10
	li t2, 0x51b
	xperm4 a3, s8, t2
	li s10, 0x614
	xperm4 s8, a3, s10
	li s5, 0x41a
	xperm4 s10, s8, s5
	li t5, 0x250
	xperm4 a0, s10, t5
	li s0, 0x466
	xperm4 a1, a0, s0
	li t4, 0x558
	xperm4 s0, a1, t4
	li a3, 0x691
	xperm4 a0, s0, a3
	li s0, 0x230
	xperm4 a0, a0, s0
	li t1, 0x6fc
	xperm4 a4, a0, t1
	li s10, 0x533
	xperm4 a4, a4, s10
	li s10, 0x516
	xperm4 a4, a4, s10
	li a0, 0x31e
	xperm4 t5, a4, a0
	li s6, 0x405
	xperm4 a0, t5, s6
	li a4, 0x36
	xperm4 s8, a0, a4
	li s9, 0x700
	xperm4 s6, s8, s9
	li s5, 0x12f
	xperm4 s2, s6, s5
	li s8, 0x3b2
	xperm4 s8, s2, s8
	li t6, 0x1c7
	xperm4 s9, s8, t6
	li s3, 0x59e
	xperm4 t1, s9, s3
	li a1, 0x43c
	xperm4 a2, t1, a1
	li t5, 0x3ab
	xperm4 t3, a2, t5
	li s9, 0x39a
	xperm4 a2, t3, s9
	li t1, 0x51e
	xperm4 a5, a2, t1
	li a3, 0x2bf
	xperm4 t6, a5, a3
	li t1, 0x4e4
	xperm4 t6, t6, t1
	li s10, 0x196
	xperm4 t1, t6, s10
	li s9, 0x7ce
	xperm4 t4, t1, s9
	li s8, 0x1c5
	xperm4 a2, t4, s8
	li s8, 0x787
	xperm4 a2, a2, s8
	li s9, 0x4e7
	xperm4 a1, a2, s9
	li s1, 0x32d
	xperm4 a3, a1, s1
	li s1, 0x127
	xperm4 s6, a3, s1
	li t4, 0x52f
	xperm4 t4, s6, t4
	li a3, 0xd9
	xperm4 s0, t4, a3
	li s6, 0x5ba
	xperm4 s10, s0, s6
	li t4, 0x3d3
	xperm4 s5, s10, t4
	li a3, 0x226
	xperm4 t5, s5, a3
	li s8, 0x200
	xperm4 t4, t5, s8
	li s1, 0x1a6
	xperm4 s10, t4, s1
	li s2, 0x4ff
	xperm4 a1, s10, s2
	li s2, 0x258
	xperm4 a0, a1, s2
	li s5, 0x5ec
	xperm4 t3, a0, s5
	li s3, 0x571
	xperm4 s6, t3, s3
	li a4, 0x693
	xperm4 s2, s6, a4
	li s6, 0x4de
	xperm4 s8, s2, s6
	li a2, 0x330
	xperm4 t2, s8, a2
	li a5, 0x4e8
	xperm4 s5, t2, a5
	li s9, 0x25a
	xperm4 t5, s5, s9
	li s10, 0x5f8
	xperm4 a0, t5, s10
	li s0, 0x39c
	xperm4 a1, a0, s0
	li s2, 0x390
	xperm4 a2, a1, s2
	li t2, 0x7a9
	xperm4 s5, a2, t2
	li s6, 0x7fa
	xperm4 s8, s5, s6
	li t2, 0x36d
	xperm4 a4, s8, t2
	li a3, 0x36c
	xperm4 s9, a4, a3
	li a0, 0x1b7
	xperm4 s9, s9, a0
	li t6, 0x55a
	xperm4 t6, s9, t6
	li a5, 0x131
	xperm4 t6, t6, a5
	li t3, 0x31e
	xperm4 s3, t6, t3
	li s8, 0x33a
	xperm4 s10, s3, s8
	li a0, 0x3a7
	xperm4 t3, s10, a0
	li t6, 0x45a
	xperm4 s1, t3, t6
	li s8, 0xa4
	xperm4 s8, s1, s8
	li t1, 0x458
	xperm4 t2, s8, t1
	li s0, 0x44f
	xperm4 a1, t2, s0
	li t3, 0x2a0
	xperm4 s1, a1, t3
	li t3, 0x94
	xperm4 a1, s1, t3
	li s5, 0x2a1
	xperm4 a0, a1, s5
	li s3, 0x706
	xperm4 t6, a0, s3
	li a5, 0x5a8
	xperm4 s9, t6, a5
	li a2, 0x382
	xperm4 s8, s9, a2
	li a0, 0x624
	xperm4 s6, s8, a0
	li a2, 0x7e0
	xperm4 s10, s6, a2
	li t4, 0x4ca
	xperm4 a0, s10, t4
	li s8, 0x2dd
	xperm4 s2, a0, s8
	li a1, 0x128
	xperm4 a0, s2, a1
	li s0, 0x479
	xperm4 s9, a0, s0
	li s2, 0x6cc
	xperm4 a4, s9, s2
	li s0, 0x33c
	xperm4 s10, a4, s0
	li s8, 0x287
	xperm4 s5, s10, s8
	li s6, 0x5e3
	xperm4 s5, s5, s6
	li s3, 0x656
	xperm4 s9, s5, s3
	li a5, 0x537
	xperm4 a5, s9, a5
	li s10, 0x15e
	xperm4 a3, a5, s10
	li a5, 0x14e
	xperm4 a0, a3, a5
	li a2, 0x616
	xperm4 s9, a0, a2
	li a2, 0x1a6
	xperm4 s5, s9, a2
	li t6, 0x2e4
	xperm4 s10, s5, t6
	csrr a2, time
	csrr a5, cycle
	csrr s8, instret
	sub s1, a2, a6
	sub t2, a5, s11
	sub a5, s8, a7
	beq s7, t2, pass_label_74
	li a3, failed_addr
	ld a7, 0(a3)
	jr a7
pass_label_74:
	beq s4, a5, pass_label_75
	li a0, failed_addr
	ld s2, 0(a0)
	jr s2
pass_label_75:
SID_ZKT_08_XPERM4_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_XPERM8)
SID_ZKT_08_XPERM8:
	li sp, SID_ZKT_08_XPERM8_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a3, 0
	csrr a0, time
	csrr s6, cycle
	csrr t4, instret
	li a5, 0x6ff
	xperm8 t6, a3, a5
	li s1, 0x452
	xperm8 t2, t6, s1
	li s1, 0x2c7
	xperm8 a4, t2, s1
	li s7, 0x229
	xperm8 s11, a4, s7
	li s7, 0xec
	xperm8 t2, s11, s7
	li s10, 0x749
	xperm8 a2, t2, s10
	li a3, 0x51c
	xperm8 a1, a2, a3
	li s7, 0x63
	xperm8 t1, a1, s7
	li s5, 0x454
	xperm8 a4, t1, s5
	li s9, 0x40b
	xperm8 s7, a4, s9
	li t1, 0x24b
	xperm8 a5, s7, t1
	li t3, 0x157
	xperm8 a4, a5, t3
	li a5, 0x7ed
	xperm8 t6, a4, a5
	li a7, 0x31c
	xperm8 t1, t6, a7
	li s5, 0xbb
	xperm8 s2, t1, s5
	li s8, 0x46d
	xperm8 s1, s2, s8
	li a5, 0x2d4
	xperm8 a5, s1, a5
	li s9, 0x2a8
	xperm8 a4, a5, s9
	li s9, 0x374
	xperm8 s5, a4, s9
	li a3, 0x158
	xperm8 s1, s5, a3
	li s4, 0x574
	xperm8 t3, s1, s4
	li a6, 0x584
	xperm8 a7, t3, a6
	li t2, 0x24b
	xperm8 t6, a7, t2
	li a1, 0x333
	xperm8 a3, t6, a1
	li s5, 0x5c
	xperm8 s10, a3, s5
	li a4, 0x5ae
	xperm8 t5, s10, a4
	li s0, 0x3b3
	xperm8 s1, t5, s0
	li s7, 0x265
	xperm8 s9, s1, s7
	li s5, 0x162
	xperm8 a4, s9, s5
	li a1, 0x570
	xperm8 t1, a4, a1
	li t2, 0x10c
	xperm8 t3, t1, t2
	li s3, 0x4b2
	xperm8 s9, t3, s3
	li t6, 0x12a
	xperm8 s9, s9, t6
	li a3, 0x52f
	xperm8 s4, s9, a3
	li s10, 0x335
	xperm8 s4, s4, s10
	li s8, 0x71c
	xperm8 s4, s4, s8
	li s3, 0x2bb
	xperm8 s8, s4, s3
	li t3, 0x60b
	xperm8 s11, s8, t3
	li t3, 0xc3
	xperm8 s10, s11, t3
	li s8, 0x68e
	xperm8 a5, s10, s8
	li s10, 0x360
	xperm8 s10, a5, s10
	li a7, 0x7e1
	xperm8 a5, s10, a7
	li s4, 0x169
	xperm8 s0, a5, s4
	li s5, 0x4a6
	xperm8 s8, s0, s5
	li s3, 0x7ba
	xperm8 s8, s8, s3
	li t5, 0x31
	xperm8 s4, s8, t5
	li t3, 0x731
	xperm8 s9, s4, t3
	li s2, 0x661
	xperm8 s10, s9, s2
	li s11, 0x490
	xperm8 s7, s10, s11
	li a2, 0x1e0
	xperm8 a3, s7, a2
	li a2, 0x125
	xperm8 t2, a3, a2
	li s1, 0x438
	xperm8 s5, t2, s1
	li t5, 0x71e
	xperm8 t3, s5, t5
	li s2, 0x23b
	xperm8 t5, t3, s2
	li s11, 0x297
	xperm8 s5, t5, s11
	li t3, 0x45a
	xperm8 s8, s5, t3
	li a6, 0x42e
	xperm8 t5, s8, a6
	li a7, 0x4fe
	xperm8 a7, t5, a7
	li t2, 0x3dc
	xperm8 t2, a7, t2
	li a1, 0x47e
	xperm8 a1, t2, a1
	li s1, 0x476
	xperm8 s3, a1, s1
	li a6, 0x276
	xperm8 t1, s3, a6
	li s0, 0x121
	xperm8 a5, t1, s0
	li s10, 0x1e9
	xperm8 s0, a5, s10
	li s9, 0x552
	xperm8 s8, s0, s9
	li s9, 0x94
	xperm8 a6, s8, s9
	li a5, 0x165
	xperm8 s11, a6, a5
	li s5, 0x619
	xperm8 a3, s11, s5
	li s2, 0xcd
	xperm8 s2, a3, s2
	li t3, 0x61c
	xperm8 s9, s2, t3
	li t5, 0x7f9
	xperm8 s5, s9, t5
	li a1, 0x745
	xperm8 s3, s5, a1
	li s10, 0x317
	xperm8 t3, s3, s10
	li s10, 0x90
	xperm8 s2, t3, s10
	li s10, 0x479
	xperm8 s8, s2, s10
	li a7, 0x5d8
	xperm8 t5, s8, a7
	li s0, 0xa0
	xperm8 a4, t5, s0
	li s9, 0x3db
	xperm8 s10, a4, s9
	li a4, 0x1ba
	xperm8 s0, s10, a4
	li a2, 0x3fa
	xperm8 s4, s0, a2
	li a4, 0x3fb
	xperm8 a1, s4, a4
	li t1, 0x1e
	xperm8 t1, a1, t1
	li t5, 0x219
	xperm8 a5, t1, t5
	li a2, 0xe3
	xperm8 t5, a5, a2
	li s2, 0x69
	xperm8 s5, t5, s2
	li a5, 0x187
	xperm8 a7, s5, a5
	li a3, 0x29f
	xperm8 a4, a7, a3
	li a5, 0x45a
	xperm8 s2, a4, a5
	li s0, 0x2e1
	xperm8 s10, s2, s0
	li s1, 0x5f4
	xperm8 a6, s10, s1
	li t2, 0x4fc
	xperm8 s2, a6, t2
	li a5, 0x80
	xperm8 s9, s2, a5
	li a3, 0x470
	xperm8 s7, s9, a3
	li s0, 0x521
	xperm8 s3, s7, s0
	li s4, 0x3d5
	xperm8 t5, s3, s4
	li t2, 0x2cd
	xperm8 a1, t5, t2
	li s7, 0x109
	xperm8 t1, a1, s7
	li a1, 0x21b
	xperm8 a3, t1, a1
	li a2, 0x26d
	xperm8 a2, a3, a2
	li s5, 0x4c8
	xperm8 s1, a2, s5
	csrr t1, time
	csrr a7, cycle
	csrr s4, instret
	sub s2, t1, a0
	sub s1, a7, s6
	sub s5, s4, t4
	li a6, 0
	csrr s11, time
	csrr a2, cycle
	csrr t2, instret
	li t6, 0x6de
	xperm8 a6, a6, t6
	li s8, 0x2ce
	xperm8 s10, a6, s8
	li a4, 0x9
	xperm8 s1, s10, a4
	li s7, 0x458
	xperm8 t1, s1, s7
	li a5, 0x56
	xperm8 t1, t1, a5
	li s8, 0x163
	xperm8 a4, t1, s8
	li t3, 0x57d
	xperm8 a5, a4, t3
	li a1, 0x313
	xperm8 a4, a5, a1
	li s5, 0x6f8
	xperm8 a3, a4, s5
	li t1, 0x717
	xperm8 s5, a3, t1
	li a0, 0x78c
	xperm8 a3, s5, a0
	li t5, 0x15
	xperm8 s9, a3, t5
	li a7, 0x3ab
	xperm8 t1, s9, a7
	li t3, 0x2a7
	xperm8 s7, t1, t3
	li t3, 0x269
	xperm8 a6, s7, t3
	li a7, 0x5c4
	xperm8 s3, a6, a7
	li t3, 0x61a
	xperm8 s0, s3, t3
	li s3, 0x69a
	xperm8 s6, s0, s3
	li a3, 0x7b6
	xperm8 t1, s6, a3
	li a4, 0x192
	xperm8 a4, t1, a4
	li t6, 0x78f
	xperm8 a1, a4, t6
	li s0, 0x2c9
	xperm8 t5, a1, s0
	li s3, 0x4ca
	xperm8 a3, t5, s3
	li s2, 0x74
	xperm8 s6, a3, s2
	li s7, 0x675
	xperm8 a0, s6, s7
	li a1, 0x513
	xperm8 s1, a0, a1
	li a0, 0x586
	xperm8 s9, s1, a0
	li a6, 0x7ed
	xperm8 s1, s9, a6
	li s5, 0x59b
	xperm8 a7, s1, s5
	li s9, 0x502
	xperm8 a0, a7, s9
	li s5, 0x78d
	xperm8 s4, a0, s5
	li s1, 0x1c4
	xperm8 a6, s4, s1
	li s10, 0x264
	xperm8 s7, a6, s10
	li a7, 0xb7
	xperm8 s3, s7, a7
	li a1, 0x10c
	xperm8 s10, s3, a1
	li a3, 0x57b
	xperm8 s6, s10, a3
	li t1, 0x7c9
	xperm8 t4, s6, t1
	li s2, 0x1a2
	xperm8 s3, t4, s2
	li a3, 0x5f8
	xperm8 t5, s3, a3
	li t6, 0x4b
	xperm8 a6, t5, t6
	li t5, 0x5f9
	xperm8 t5, a6, t5
	li s9, 0xb1
	xperm8 s1, t5, s9
	li s6, 0x10e
	xperm8 t1, s1, s6
	li a1, 0x469
	xperm8 t3, t1, a1
	li a6, 0x1b2
	xperm8 s4, t3, a6
	li t5, 0x13d
	xperm8 s3, s4, t5
	li t3, 0x698
	xperm8 s6, s3, t3
	li t6, 0x72b
	xperm8 s5, s6, t6
	li a0, 0x734
	xperm8 s9, s5, a0
	li s6, 0x34d
	xperm8 a4, s9, s6
	li s8, 0x57b
	xperm8 a4, a4, s8
	li s3, 0x1bf
	xperm8 s4, a4, s3
	li s9, 0x45f
	xperm8 s0, s4, s9
	li a4, 0x61e
	xperm8 a1, s0, a4
	li t6, 0x322
	xperm8 s9, a1, t6
	li t4, 0x45
	xperm8 s0, s9, t4
	li s9, 0x3a4
	xperm8 s5, s0, s9
	li s0, 0x44a
	xperm8 s9, s5, s0
	li s2, 0x1b8
	xperm8 s0, s9, s2
	li t1, 0x42f
	xperm8 a0, s0, t1
	li s0, 0x40a
	xperm8 s2, a0, s0
	li a1, 0x459
	xperm8 s9, s2, a1
	li s0, 0x3f6
	xperm8 t6, s9, s0
	li a3, 0x46b
	xperm8 a4, t6, a3
	li s2, 0x173
	xperm8 a1, a4, s2
	li s3, 0x268
	xperm8 a4, a1, s3
	li a5, 0x2fa
	xperm8 t4, a4, a5
	li s5, 0x276
	xperm8 s2, t4, s5
	li s6, 0x2a8
	xperm8 s6, s2, s6
	li s9, 0x11f
	xperm8 s4, s6, s9
	li s0, 0x2b1
	xperm8 a0, s4, s0
	li a6, 0x1b4
	xperm8 t3, a0, a6
	li s10, 0x3ab
	xperm8 s2, t3, s10
	li s10, 0x8a
	xperm8 t1, s2, s10
	li t3, 0x7aa
	xperm8 a1, t1, t3
	li s6, 0x41d
	xperm8 s10, a1, s6
	li t6, 0x738
	xperm8 s7, s10, t6
	li t1, 0x373
	xperm8 a5, s7, t1
	li s2, 0x6df
	xperm8 a5, a5, s2
	li t1, 0x395
	xperm8 t5, a5, t1
	li s5, 0x5a
	xperm8 t1, t5, s5
	li s8, 0xb6
	xperm8 s10, t1, s8
	li t1, 0x49c
	xperm8 s1, s10, t1
	li a4, 0x2bf
	xperm8 t4, s1, a4
	li t5, 0x156
	xperm8 a5, t4, t5
	li t4, 0x52b
	xperm8 t1, a5, t4
	li a5, 0x105
	xperm8 s6, t1, a5
	li a1, 0x720
	xperm8 t1, s6, a1
	li a3, 0x4a9
	xperm8 a7, t1, a3
	li a5, 0xe9
	xperm8 s9, a7, a5
	li a3, 0x1e7
	xperm8 a3, s9, a3
	li t6, 0x420
	xperm8 t4, a3, t6
	li t6, 0x623
	xperm8 s4, t4, t6
	li s2, 0x261
	xperm8 t5, s4, s2
	li s1, 0x28f
	xperm8 t6, t5, s1
	li t3, 0x478
	xperm8 a3, t6, t3
	li s4, 0x19a
	xperm8 a7, a3, s4
	li s5, 0x2e1
	xperm8 a6, a7, s5
	li s4, 0x4b
	xperm8 a6, a6, s4
	li s1, 0x464
	xperm8 s4, a6, s1
	csrr t4, time
	csrr a5, cycle
	csrr s10, instret
	sub s5, t4, s11
	sub t4, a5, a2
	sub s7, s10, t2
	li s9, 0
	csrr s4, time
	csrr s8, cycle
	csrr t5, instret
	li a4, 0x3aa
	xperm8 t3, s9, a4
	li a4, 0x60c
	xperm8 a5, t3, a4
	li a0, 0x617
	xperm8 a5, a5, a0
	li t6, 0x362
	xperm8 a5, a5, t6
	li a2, 0x459
	xperm8 a4, a5, a2
	li a2, 0x742
	xperm8 s0, a4, a2
	li s6, 0xa3
	xperm8 a0, s0, s6
	li s10, 0x438
	xperm8 s11, a0, s10
	li t1, 0x3df
	xperm8 s9, s11, t1
	li t3, 0x320
	xperm8 s1, s9, t3
	li a4, 0x52
	xperm8 s0, s1, a4
	li t6, 0x148
	xperm8 s10, s0, t6
	li s6, 0x3f3
	xperm8 s0, s10, s6
	li a0, 0x48b
	xperm8 a4, s0, a0
	li t1, 0x413
	xperm8 t1, a4, t1
	li t6, 0x6ef
	xperm8 t3, t1, t6
	li a0, 0x176
	xperm8 a6, t3, a0
	li a0, 0x29c
	xperm8 t2, a6, a0
	li a2, 0x412
	xperm8 s9, t2, a2
	li s10, 0x8a
	xperm8 s9, s9, s10
	li t3, 0x76f
	xperm8 a7, s9, t3
	li s6, 0x179
	xperm8 s6, a7, s6
	li t1, 0x147
	xperm8 s6, s6, t1
	li s9, 0x55e
	xperm8 a7, s6, s9
	li s2, 0x1fc
	xperm8 a5, a7, s2
	li s11, 0x3bc
	xperm8 a4, a5, s11
	li a0, 0x3e6
	xperm8 t1, a4, a0
	li s2, 0x41b
	xperm8 t6, t1, s2
	li a5, 0x15a
	xperm8 t2, t6, a5
	li a4, 0x41f
	xperm8 s10, t2, a4
	li s2, 0x65f
	xperm8 s9, s10, s2
	li t3, 0x466
	xperm8 s5, s9, t3
	li t2, 0x3e7
	xperm8 a0, s5, t2
	li t1, 0x6ac
	xperm8 t3, a0, t1
	li a5, 0x8d
	xperm8 s3, t3, a5
	li s1, 0x62f
	xperm8 s3, s3, s1
	li t3, 0x5ff
	xperm8 s10, s3, t3
	li a0, 0x7a9
	xperm8 s2, s10, a0
	li s1, 0x2ff
	xperm8 a1, s2, s1
	li a0, 0x439
	xperm8 s5, a1, a0
	li s3, 0x799
	xperm8 s11, s5, s3
	li t3, 0x232
	xperm8 t6, s11, t3
	li s10, 0x62
	xperm8 s3, t6, s10
	li s0, 0x237
	xperm8 s1, s3, s0
	li t1, 0x462
	xperm8 a1, s1, t1
	li a4, 0x2b6
	xperm8 a3, a1, a4
	li a1, 0x214
	xperm8 a0, a3, a1
	li t1, 0x22c
	xperm8 s10, a0, t1
	li t3, 0x20d
	xperm8 a6, s10, t3
	li s10, 0x2f6
	xperm8 t2, a6, s10
	li a4, 0x89
	xperm8 s6, t2, a4
	li s0, 0x4cb
	xperm8 s2, s6, s0
	li t1, 0x6f0
	xperm8 t3, s2, t1
	li t2, 0x382
	xperm8 s5, t3, t2
	li a0, 0xed
	xperm8 s6, s5, a0
	li t3, 0x1a4
	xperm8 a3, s6, t3
	li s0, 0xea
	xperm8 s9, a3, s0
	li t3, 0x198
	xperm8 t3, s9, t3
	li a6, 0x44b
	xperm8 s5, t3, a6
	li a4, 0x6e2
	xperm8 a2, s5, a4
	li s11, 0x6d7
	xperm8 s9, a2, s11
	li a1, 0x2b
	xperm8 s3, s9, a1
	li s9, 0xca
	xperm8 s2, s3, s9
	li s0, 0x1df
	xperm8 t1, s2, s0
	li s9, 0x556
	xperm8 s2, t1, s9
	li t2, 0x201
	xperm8 s9, s2, t2
	li t3, 0x434
	xperm8 t2, s9, t3
	li a5, 0x609
	xperm8 a5, t2, a5
	li s11, 0x223
	xperm8 a4, a5, s11
	li a5, 0x3d0
	xperm8 a5, a4, a5
	li a4, 0x221
	xperm8 s5, a5, a4
	li s1, 0x775
	xperm8 s9, s5, s1
	li a1, 0x708
	xperm8 s10, s9, a1
	li a3, 0x61c
	xperm8 t3, s10, a3
	li s5, 0x285
	xperm8 a3, t3, s5
	li s5, 0x7ff
	xperm8 a6, a3, s5
	li t1, 0x76d
	xperm8 s6, a6, t1
	li a1, 0x108
	xperm8 s10, s6, a1
	li a1, 0x5b4
	xperm8 t6, s10, a1
	li a4, 0x6c7
	xperm8 s6, t6, a4
	li t1, 0xdf
	xperm8 s0, s6, t1
	li a0, 0x1da
	xperm8 s0, s0, a0
	li t3, 0x6ed
	xperm8 s10, s0, t3
	li t3, 0x221
	xperm8 a7, s10, t3
	li t1, 0x258
	xperm8 t1, a7, t1
	li s6, 0x636
	xperm8 s3, t1, s6
	li a7, 0x4a2
	xperm8 a4, s3, a7
	li t1, 0x130
	xperm8 s3, a4, t1
	li t1, 0x9c
	xperm8 a1, s3, t1
	li s1, 0x76a
	xperm8 t1, a1, s1
	li a4, 0x208
	xperm8 s6, t1, a4
	li a0, 0x1da
	xperm8 a0, s6, a0
	li s1, 0x645
	xperm8 a4, a0, s1
	li s6, 0x59c
	xperm8 a7, a4, s6
	li a1, 0x13a
	xperm8 s1, a7, a1
	li t6, 0x17
	xperm8 a5, s1, t6
	li a2, 0x6
	xperm8 s5, a5, a2
	li a1, 0x327
	xperm8 s3, s5, a1
	li a6, 0x651
	xperm8 t2, s3, a6
	li s9, 0x255
	xperm8 s11, t2, s9
	csrr a5, time
	csrr a4, cycle
	csrr s3, instret
	sub s5, a5, s4
	sub s1, a4, s8
	sub s0, s3, t5
	beq t4, s1, pass_label_76
	li a4, failed_addr
	ld t3, 0(a4)
	jr t3
pass_label_76:
	beq s7, s0, pass_label_77
	li s3, failed_addr
	ld a6, 0(s3)
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
	li s0, 0
	csrr a0, time
	csrr t6, cycle
	csrr s10, instret
	li s5, 0x2fb
	ror t4, s0, s5
	li t2, 0x31b
	ror s0, t4, t2
	li t3, 0x49
	ror s3, s0, t3
	li a6, 0x70a
	ror a1, s3, a6
	li a2, 0x44
	ror s7, a1, a2
	li s9, 0x1ab
	ror s9, s7, s9
	li a7, 0x167
	ror a6, s9, a7
	li s5, 0x479
	ror a6, a6, s5
	li s8, 0x6f8
	ror s8, a6, s8
	li a5, 0x6c4
	ror s3, s8, a5
	li s6, 0x137
	ror a5, s3, s6
	li s2, 0x458
	ror t4, a5, s2
	li s0, 0x13d
	ror a4, t4, s0
	li s8, 0x70c
	ror t5, a4, s8
	li t3, 0x61d
	ror s11, t5, t3
	li s6, 0x7ab
	ror t3, s11, s6
	li a4, 0x7aa
	ror s7, t3, a4
	li s4, 0x67
	ror s9, s7, s4
	li a1, 0x3b
	ror s5, s9, a1
	li s0, 0x245
	ror s3, s5, s0
	li a3, 0x74f
	ror s8, s3, a3
	li s2, 0x1b7
	ror a3, s8, s2
	li a7, 0x160
	ror t5, a3, a7
	li s11, 0xfa
	ror t3, t5, s11
	li t2, 0x7c
	ror s7, t3, t2
	li t4, 0x1c1
	ror a1, s7, t4
	li s1, 0x7c9
	ror s9, a1, s1
	li s5, 0x5d0
	ror s3, s9, s5
	li t4, 0x182
	ror a5, s3, t4
	li a3, 0x7fe
	ror a6, a5, a3
	li s5, 0x294
	ror s4, a6, s5
	li a5, 0x451
	ror s7, s4, a5
	li s8, 0x2d5
	ror s6, s7, s8
	li t4, 0x570
	ror t3, s6, t4
	li a7, 0x386
	ror a4, t3, a7
	li a2, 0x11a
	ror t2, a4, a2
	li s3, 0x4eb
	ror s11, t2, s3
	li s9, 0x41b
	ror a2, s11, s9
	li s3, 0x7c1
	ror s7, a2, s3
	li t2, 0x74
	ror a2, s7, t2
	li s2, 0x7d6
	ror t3, a2, s2
	li s9, 0x44c
	ror s7, t3, s9
	li s11, 0x28
	ror s2, s7, s11
	li a2, 0x446
	ror a5, s2, a2
	li a4, 0x4f1
	ror s4, a5, a4
	li t2, 0x7b0
	ror s7, s4, t2
	li s6, 0x685
	ror s4, s7, s6
	li a2, 0x1dd
	ror t4, s4, a2
	li s1, 0x637
	ror s5, t4, s1
	li s11, 0x4d3
	ror s3, s5, s11
	li s6, 0xfc
	ror a4, s3, s6
	li s6, 0x429
	ror s5, a4, s6
	li s11, 0x248
	ror s6, s5, s11
	li t4, 0x793
	ror t2, s6, t4
	li t1, 0x3d8
	ror s5, t2, t1
	li s4, 0x31
	ror s11, s5, s4
	li t1, 0x42b
	ror t4, s11, t1
	li a4, 0x476
	ror a7, t4, a4
	li s6, 0x1fa
	ror s7, a7, s6
	li s0, 0x10f
	ror s4, s7, s0
	li t5, 0x480
	ror s11, s4, t5
	li a1, 0x65b
	ror s5, s11, a1
	li a4, 0x2d5
	ror s3, s5, a4
	li t1, 0x4ff
	ror s6, s3, t1
	li s3, 0x3d1
	ror s7, s6, s3
	li s11, 0x45e
	ror a5, s7, s11
	li s9, 0x4df
	ror a7, a5, s9
	li s11, 0x7c2
	ror a1, a7, s11
	li s7, 0x73e
	ror a4, a1, s7
	li a6, 0x78
	ror a7, a4, a6
	li s1, 0x125
	ror s11, a7, s1
	li s8, 0x60f
	ror s8, s11, s8
	li a3, 0x511
	ror t2, s8, a3
	li s1, 0xf1
	ror s5, t2, s1
	li s1, 0x29
	ror a1, s5, s1
	li s7, 0x2c1
	ror s11, a1, s7
	li s6, 0x4b
	ror s5, s11, s6
	li s6, 0x61d
	ror s4, s5, s6
	li a1, 0x49c
	ror s0, s4, a1
	li s9, 0x468
	ror s6, s0, s9
	li t2, 0x2cd
	ror a7, s6, t2
	li a4, 0x68d
	ror s8, a7, a4
	li s1, 0x13f
	ror s8, s8, s1
	li a7, 0x3d
	ror a3, s8, a7
	li a5, 0x48
	ror a2, a3, a5
	li t5, 0x456
	ror a1, a2, t5
	li t2, 0x5e0
	ror s6, a1, t2
	li a5, 0x137
	ror t3, s6, a5
	li t5, 0x135
	ror s0, t3, t5
	li a6, 0x5b6
	ror a4, s0, a6
	li t1, 0x7c6
	ror s1, a4, t1
	li t1, 0x5e4
	ror s3, s1, t1
	li a1, 0x559
	ror s5, s3, a1
	li t3, 0x586
	ror s7, s5, t3
	li a1, 0xcc
	ror t5, s7, a1
	li s9, 0xbe
	ror a4, t5, s9
	li s8, 0x10c
	ror a4, a4, s8
	li s5, 0x149
	ror t2, a4, s5
	li s3, 0x476
	ror s5, t2, s3
	li s2, 0x78e
	ror s4, s5, s2
	csrr s6, time
	csrr s8, cycle
	csrr s0, instret
	sub t4, s6, a0
	sub s4, s8, t6
	sub a4, s0, s10
	li t1, 0
	csrr s3, time
	csrr s1, cycle
	csrr s0, instret
	li a0, 0x65e
	ror t5, t1, a0
	li a2, 0x304
	ror s11, t5, a2
	li t5, 0x2d7
	ror t4, s11, t5
	li s6, 0x2ae
	ror a7, t4, s6
	li t5, 0x132
	ror s11, a7, t5
	li a1, 0x3f
	ror a6, s11, a1
	li a2, 0x665
	ror a1, a6, a2
	li s11, 0x35e
	ror t2, a1, s11
	li s11, 0x3d6
	ror a6, t2, s11
	li s9, 0x751
	ror a7, a6, s9
	li t3, 0x33a
	ror t4, a7, t3
	li s11, 0x69a
	ror a1, t4, s11
	li a5, 0xfa
	ror s7, a1, a5
	li s6, 0x176
	ror t4, s7, s6
	li s9, 0x164
	ror a1, t4, s9
	li a7, 0x4d9
	ror t5, a1, a7
	li s8, 0xc0
	ror a0, t5, s8
	li a7, 0x601
	ror a1, a0, a7
	li s5, 0x786
	ror t5, a1, s5
	li a2, 0x8c
	ror a5, t5, a2
	li s10, 0x1a7
	ror t1, a5, s10
	li t4, 0x679
	ror a3, t1, t4
	li a2, 0x254
	ror t5, a3, a2
	li a7, 0x784
	ror s11, t5, a7
	li t6, 0x4aa
	ror t2, s11, t6
	li a1, 0x45d
	ror t1, t2, a1
	li s4, 0xd6
	ror s11, t1, s4
	li t1, 0x391
	ror s4, s11, t1
	li a5, 0xc7
	ror s6, s4, a5
	li a0, 0x792
	ror s4, s6, a0
	li t1, 0x3cd
	ror a4, s4, t1
	li t4, 0x6d7
	ror s8, a4, t4
	li s4, 0x722
	ror s7, s8, s4
	li a3, 0x54b
	ror s9, s7, a3
	li s10, 0x3d1
	ror s9, s9, s10
	li t1, 0x6e5
	ror s11, s9, t1
	li s5, 0x4a4
	ror t2, s11, s5
	li s9, 0x9d
	ror t2, t2, s9
	li s4, 0x181
	ror a3, t2, s4
	li s8, 0x108
	ror s4, a3, s8
	li t3, 0x570
	ror s2, s4, t3
	li t4, 0x6bd
	ror a1, s2, t4
	li t6, 0x615
	ror a4, a1, t6
	li s9, 0x222
	ror a5, a4, s9
	li a0, 0x739
	ror a7, a5, a0
	li s5, 0x385
	ror s8, a7, s5
	li t1, 0x1e8
	ror a2, s8, t1
	li a1, 0x6ba
	ror s4, a2, a1
	li a1, 0x340
	ror s10, s4, a1
	li t5, 0x538
	ror s11, s10, t5
	li a7, 0x407
	ror s10, s11, a7
	li t3, 0x58c
	ror a5, s10, t3
	li s7, 0x796
	ror a6, a5, s7
	li a3, 0x5a0
	ror s2, a6, a3
	li s8, 0x7b8
	ror a5, s2, s8
	li t2, 0x1d6
	ror s11, a5, t2
	li a0, 0x7fd
	ror t6, s11, a0
	li t3, 0x7db
	ror s8, t6, t3
	li a7, 0x5bb
	ror t4, s8, a7
	li a6, 0x3f6
	ror a2, t4, a6
	li a4, 0x671
	ror s6, a2, a4
	li s5, 0x6c4
	ror t5, s6, s5
	li a3, 0x615
	ror t6, t5, a3
	li t2, 0x4cd
	ror s9, t6, t2
	li s10, 0x724
	ror a2, s9, s10
	li t6, 0x42
	ror s10, a2, t6
	li s8, 0x36
	ror s2, s10, s8
	li s9, 0x292
	ror s7, s2, s9
	li a4, 0x1f7
	ror t3, s7, a4
	li s10, 0x21d
	ror s2, t3, s10
	li t1, 0x95
	ror s2, s2, t1
	li a4, 0x4aa
	ror t1, s2, a4
	li s11, 0x576
	ror t5, t1, s11
	li s7, 0x31d
	ror s6, t5, s7
	li s9, 0xcc
	ror t4, s6, s9
	li s6, 0x29a
	ror a4, t4, s6
	li t6, 0x764
	ror a2, a4, t6
	li t1, 0x7a6
	ror a0, a2, t1
	li t2, 0x4a7
	ror a4, a0, t2
	li s4, 0x1b0
	ror s8, a4, s4
	li a4, 0x7e2
	ror a2, s8, a4
	li a0, 0x5aa
	ror s7, a2, a0
	li s2, 0xcc
	ror s10, s7, s2
	li t3, 0x4f5
	ror s10, s10, t3
	li a6, 0xc2
	ror t2, s10, a6
	li t5, 0xa7
	ror t6, t2, t5
	li s9, 0x7cc
	ror s8, t6, s9
	li s4, 0x78d
	ror s4, s8, s4
	li a3, 0x6b6
	ror s8, s4, a3
	li s2, 0x7d0
	ror s10, s8, s2
	li s5, 0x1f0
	ror a3, s10, s5
	li s5, 0x6db
	ror t1, a3, s5
	li s6, 0x48b
	ror a1, t1, s6
	li a6, 0x414
	ror a3, a1, a6
	li s10, 0x50c
	ror s10, a3, s10
	li a6, 0xf3
	ror a4, s10, a6
	li a0, 0x4d9
	ror t6, a4, a0
	li a6, 0x3b5
	ror t1, t6, a6
	li s11, 0x496
	ror a5, t1, s11
	li s4, 0x63b
	ror s11, a5, s4
	csrr a0, time
	csrr t2, cycle
	csrr s8, instret
	sub a2, a0, s3
	sub t1, t2, s1
	sub a3, s8, s0
	li s8, 0
	csrr s3, time
	csrr t3, cycle
	csrr t4, instret
	li t6, 0x17d
	ror s6, s8, t6
	li s11, 0x58d
	ror a7, s6, s11
	li s8, 0x41a
	ror s10, a7, s8
	li s0, 0x4f9
	ror s5, s10, s0
	li s7, 0x579
	ror s4, s5, s7
	li s8, 0x317
	ror t6, s4, s8
	li t2, 0x542
	ror s10, t6, t2
	li a7, 0x111
	ror s11, s10, a7
	li s7, 0xcb
	ror a6, s11, s7
	li t2, 0x7e6
	ror a4, a6, t2
	li s9, 0x5b6
	ror s6, a4, s9
	li a0, 0x1fd
	ror t6, s6, a0
	li a4, 0x3fe
	ror s0, t6, a4
	li t5, 0x598
	ror t2, s0, t5
	li a6, 0x699
	ror s11, t2, a6
	li s9, 0x2ff
	ror s2, s11, s9
	li s1, 0x3e3
	ror a5, s2, s1
	li a7, 0x3a2
	ror s6, a5, a7
	li t5, 0x2b7
	ror a0, s6, t5
	li a2, 0x2f4
	ror t5, a0, a2
	li t2, 0x282
	ror s7, t5, t2
	li s11, 0x652
	ror s5, s7, s11
	li a5, 0x452
	ror s9, s5, a5
	li a0, 0xfa
	ror s6, s9, a0
	li a5, 0x2c1
	ror s4, s6, a5
	li a6, 0x32f
	ror s1, s4, a6
	li s4, 0x6de
	ror a2, s1, s4
	li t2, 0x6d3
	ror t5, a2, t2
	li s2, 0x5cc
	ror s4, t5, s2
	li a4, 0x146
	ror s5, s4, a4
	li s7, 0x144
	ror s2, s5, s7
	li s4, 0x30f
	ror s8, s2, s4
	li a1, 0x2f7
	ror a5, s8, a1
	li s7, 0x4c2
	ror s8, a5, s7
	li s6, 0x322
	ror a1, s8, s6
	li s9, 0x24b
	ror t5, a1, s9
	li s5, 0x5c1
	ror s9, t5, s5
	li t2, 0x60f
	ror s9, s9, t2
	li a0, 0x5d1
	ror s8, s9, a0
	li s2, 0x368
	ror s5, s8, s2
	li s4, 0x4a4
	ror s4, s5, s4
	li t5, 0x19d
	ror s6, s4, t5
	li a6, 0x671
	ror s7, s6, a6
	li s2, 0x26c
	ror s7, s7, s2
	li s9, 0x10
	ror s4, s7, s9
	li s10, 0x21e
	ror s10, s4, s10
	li t2, 0x1b8
	ror t5, s10, t2
	li a0, 0x617
	ror a7, t5, a0
	li a0, 0x599
	ror a6, a7, a0
	li s4, 0x25f
	ror a1, a6, s4
	li t5, 0x6b4
	ror s6, a1, t5
	li a6, 0x536
	ror s7, s6, a6
	li t2, 0x325
	ror a2, s7, t2
	li a0, 0x555
	ror t6, a2, a0
	li s6, 0x474
	ror t6, t6, s6
	li a5, 0x8
	ror s1, t6, a5
	li a1, 0x350
	ror a6, s1, a1
	li t5, 0xfb
	ror t2, a6, t5
	li a7, 0x311
	ror s4, t2, a7
	li s7, 0x23c
	ror a2, s4, s7
	li t5, 0x458
	ror t5, a2, t5
	li s1, 0x5e8
	ror a1, t5, s1
	li a5, 0x7f8
	ror s2, a1, a5
	li t5, 0x118
	ror s11, s2, t5
	li s10, 0x410
	ror s9, s11, s10
	li s7, 0x24f
	ror s10, s9, s7
	li s8, 0x326
	ror a4, s10, s8
	li s11, 0x30
	ror s4, a4, s11
	li a2, 0x149
	ror t6, s4, a2
	li a6, 0x5e5
	ror s4, t6, a6
	li s9, 0x733
	ror s1, s4, s9
	li s6, 0x27a
	ror t6, s1, s6
	li a0, 0x428
	ror t6, t6, a0
	li t5, 0x6f1
	ror a1, t6, t5
	li a2, 0x51f
	ror s8, a1, a2
	li a4, 0x6f
	ror s8, s8, a4
	li s5, 0x298
	ror a0, s8, s5
	li s1, 0x631
	ror s0, a0, s1
	li s6, 0x259
	ror s5, s0, s6
	li s10, 0x2e5
	ror s4, s5, s10
	li s11, 0x458
	ror s1, s4, s11
	li a5, 0x4d6
	ror s1, s1, a5
	li t2, 0x1b6
	ror s8, s1, t2
	li a7, 0x5d1
	ror s7, s8, a7
	li s10, 0x9d
	ror a0, s7, s10
	li s6, 0x607
	ror a5, a0, s6
	li s8, 0x38e
	ror s6, a5, s8
	li s5, 0x43b
	ror s1, s6, s5
	li a0, 0x9f
	ror s7, s1, a0
	li s1, 0x15
	ror s0, s7, s1
	li s4, 0xad
	ror a1, s0, s4
	li s5, 0x182
	ror s8, a1, s5
	li a5, 0x457
	ror a5, s8, a5
	li t2, 0x269
	ror s2, a5, t2
	li a0, 0x20f
	ror a0, s2, a0
	li s8, 0x30a
	ror a7, a0, s8
	li s11, 0x580
	ror s0, a7, s11
	li s2, 0x33a
	ror a1, s0, s2
	li s6, 0x135
	ror a2, a1, s6
	li s10, 0x7d5
	ror a0, a2, s10
	csrr s5, time
	csrr s9, cycle
	csrr s8, instret
	sub s5, s5, s3
	sub a2, s9, t3
	sub a5, s8, t4
	beq t1, a2, pass_label_78
	li a2, failed_addr
	ld t1, 0(a2)
	jr t1
pass_label_78:
	beq a3, a5, pass_label_79
	li s9, failed_addr
	ld a0, 0(s9)
	jr a0
pass_label_79:
SID_ZKT_08_ROR_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_ROL)
SID_ZKT_08_ROL:
	li sp, SID_ZKT_08_ROL_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s6, 0
	csrr a6, time
	csrr s3, cycle
	csrr a5, instret
	li s5, 0x176
	rol s6, s6, s5
	li a3, 0x59a
	rol s2, s6, a3
	li a1, 0x334
	rol s11, s2, a1
	li t5, 0x10d
	rol a2, s11, t5
	li s11, 0x397
	rol s5, a2, s11
	li t4, 0x29a
	rol t6, s5, t4
	li s9, 0xfb
	rol t3, t6, s9
	li s0, 0xe6
	rol s10, t3, s0
	li t3, 0x7e2
	rol s8, s10, t3
	li s1, 0x65c
	rol s6, s8, s1
	li a7, 0x634
	rol t6, s6, a7
	li s4, 0x63f
	rol s9, t6, s4
	li s11, 0x17b
	rol s11, s9, s11
	li s10, 0x6a8
	rol s5, s11, s10
	li a3, 0x29
	rol t5, s5, a3
	li a1, 0x65d
	rol t3, t5, a1
	li s10, 0x550
	rol t6, t3, s10
	li a4, 0x799
	rol a1, t6, a4
	li a7, 0x7c0
	rol a4, a1, a7
	li s6, 0x3ad
	rol t5, a4, s6
	li a4, 0x7c1
	rol s5, t5, a4
	li a4, 0x795
	rol s4, s5, a4
	li t1, 0x1c0
	rol s11, s4, t1
	li s2, 0x51a
	rol s10, s11, s2
	li t2, 0x2f5
	rol s4, s10, t2
	li t5, 0x57
	rol t3, s4, t5
	li s4, 0x3f7
	rol s10, t3, s4
	li a3, 0x5f6
	rol s6, s10, a3
	li s5, 0x244
	rol a3, s6, s5
	li s6, 0x788
	rol t3, a3, s6
	li s7, 0x465
	rol t4, t3, s7
	li a0, 0x339
	rol s11, t4, a0
	li t2, 0x7dd
	rol s4, s11, t2
	li t4, 0x240
	rol s11, s4, t4
	li a3, 0x5ee
	rol a1, s11, a3
	li t2, 0x4ea
	rol s11, a1, t2
	li a7, 0x12b
	rol s10, s11, a7
	li t2, 0x30e
	rol s0, s10, t2
	li t1, 0x416
	rol a4, s0, t1
	li s0, 0x1fc
	rol s11, a4, s0
	li a3, 0x6fa
	rol t1, s11, a3
	li t2, 0x72e
	rol a4, t1, t2
	li s4, 0x50d
	rol t5, a4, s4
	li s11, 0x2d
	rol t3, t5, s11
	li t5, 0x736
	rol a1, t3, t5
	li a7, 0x159
	rol t3, a1, a7
	li t4, 0x635
	rol t1, t3, t4
	li s5, 0x78d
	rol t4, t1, s5
	li a2, 0x4a4
	rol a2, t4, a2
	li s8, 0x4f5
	rol s6, a2, s8
	li a2, 0x574
	rol s11, s6, a2
	li s9, 0x222
	rol s5, s11, s9
	li s7, 0x231
	rol a7, s5, s7
	li s4, 0x3a7
	rol a7, a7, s4
	li t6, 0x27b
	rol s1, a7, t6
	li s5, 0x579
	rol s6, s1, s5
	li s9, 0x724
	rol a0, s6, s9
	li a2, 0x7b6
	rol s6, a0, a2
	li t1, 0x5d7
	rol s5, s6, t1
	li a3, 0x694
	rol s6, s5, a3
	li a7, 0x56d
	rol s0, s6, a7
	li s5, 0x379
	rol t2, s0, s5
	li a4, 0x7f6
	rol s8, t2, a4
	li t6, 0x56e
	rol a4, s8, t6
	li a1, 0x131
	rol t5, a4, a1
	li s10, 0x5
	rol a0, t5, s10
	li a4, 0x6f3
	rol t1, a0, a4
	li t6, 0x70b
	rol a1, t1, t6
	li a2, 0x1ba
	rol a4, a1, a2
	li s6, 0x713
	rol a0, a4, s6
	li s6, 0x218
	rol a0, a0, s6
	li t2, 0x18f
	rol a1, a0, t2
	li t2, 0x776
	rol s1, a1, t2
	li s0, 0x4c0
	rol t4, s1, s0
	li s9, 0x5eb
	rol s10, t4, s9
	li s2, 0x7c4
	rol a4, s10, s2
	li t4, 0x567
	rol s2, a4, t4
	li a7, 0x53e
	rol s1, s2, a7
	li t1, 0x7d2
	rol s4, s1, t1
	li s8, 0x3
	rol a3, s4, s8
	li t2, 0x6ea
	rol t5, a3, t2
	li a4, 0x405
	rol a2, t5, a4
	li s4, 0x14e
	rol s5, a2, s4
	li t6, 0x7e
	rol t2, s5, t6
	li s4, 0x6b0
	rol a1, t2, s4
	li t6, 0x33
	rol a2, a1, t6
	li s1, 0x639
	rol s6, a2, s1
	li s0, 0x263
	rol s8, s6, s0
	li a4, 0x3fa
	rol t1, s8, a4
	li s9, 0x17e
	rol a2, t1, s9
	li s0, 0x1ae
	rol t2, a2, s0
	li s7, 0x15d
	rol s5, t2, s7
	li a1, 0x86
	rol t5, s5, a1
	li s10, 0x25d
	rol a3, t5, s10
	li s7, 0x13b
	rol s6, a3, s7
	li a3, 0x180
	rol a4, s6, a3
	li a2, 0x248
	rol s6, a4, a2
	li t3, 0x6f1
	rol a3, s6, t3
	li t2, 0x2d9
	rol s4, a3, t2
	li a4, 0x35d
	rol a4, s4, a4
	csrr a7, time
	csrr t1, cycle
	csrr t6, instret
	sub s9, a7, a6
	sub t3, t1, s3
	sub a5, t6, a5
	li a7, 0
	csrr s3, time
	csrr s0, cycle
	csrr s1, instret
	li a2, 0x2b6
	rol s11, a7, a2
	li s4, 0x2c4
	rol s8, s11, s4
	li s9, 0x53e
	rol s10, s8, s9
	li t2, 0x19f
	rol a2, s10, t2
	li a4, 0x609
	rol a5, a2, a4
	li s7, 0x7c
	rol a4, a5, s7
	li a6, 0x240
	rol a2, a4, a6
	li t3, 0x7c8
	rol t1, a2, t3
	li s4, 0x35d
	rol a1, t1, s4
	li a2, 0x5ab
	rol a7, a1, a2
	li t3, 0x501
	rol t4, a7, t3
	li s9, 0x1df
	rol s10, t4, s9
	li a6, 0x770
	rol s8, s10, a6
	li s7, 0x10a
	rol t6, s8, s7
	li a3, 0x384
	rol s5, t6, a3
	li a6, 0x321
	rol s2, s5, a6
	li s6, 0x691
	rol s8, s2, s6
	li t4, 0x661
	rol t5, s8, t4
	li s6, 0x171
	rol s4, t5, s6
	li a4, 0x22
	rol a5, s4, a4
	li a2, 0x650
	rol t3, a5, a2
	li a5, 0x139
	rol t3, t3, a5
	li t6, 0x7fb
	rol a6, t3, t6
	li s7, 0x4ff
	rol a1, a6, s7
	li s7, 0x4a5
	rol a3, a1, s7
	li a2, 0xba
	rol t2, a3, a2
	li t4, 0x1c2
	rol a5, t2, t4
	li s9, 0x671
	rol a1, a5, s9
	li a3, 0x52a
	rol t2, a1, a3
	li a2, 0x3d1
	rol a3, t2, a2
	li t2, 0x3a
	rol s6, a3, t2
	li t4, 0x38
	rol s5, s6, t4
	li t2, 0x5b6
	rol s2, s5, t2
	li s9, 0x3de
	rol t6, s2, s9
	li a1, 0x2f6
	rol s2, t6, a1
	li a5, 0x601
	rol t3, s2, a5
	li a2, 0x349
	rol s2, t3, a2
	li a3, 0x48e
	rol a5, s2, a3
	li a1, 0x2dd
	rol t6, a5, a1
	li t2, 0x588
	rol t5, t6, t2
	li t2, 0x371
	rol t4, t5, t2
	li a2, 0x6a
	rol t1, t4, a2
	li a3, 0x6a1
	rol a6, t1, a3
	li s10, 0x26c
	rol a5, a6, s10
	li s9, 0x490
	rol a3, a5, s9
	li s5, 0x7ac
	rol a4, a3, s5
	li s2, 0xd1
	rol a1, a4, s2
	li s4, 0x333
	rol a1, a1, s4
	li a2, 0x2af
	rol a3, a1, a2
	li s4, 0x672
	rol a3, a3, s4
	li s6, 0x158
	rol a1, a3, s6
	li a4, 0x9e
	rol a1, a1, a4
	li t5, 0x5e8
	rol a0, a1, t5
	li s2, 0xe9
	rol s2, a0, s2
	li a6, 0x6d8
	rol a7, s2, a6
	li s5, 0x227
	rol t4, a7, s5
	li s4, 0x694
	rol s8, t4, s4
	li t2, 0x535
	rol s9, s8, t2
	li s7, 0x681
	rol a3, s9, s7
	li s6, 0x11a
	rol s5, a3, s6
	li t4, 0x499
	rol s7, s5, t4
	li t6, 0x6f6
	rol a6, s7, t6
	li a0, 0x489
	rol a2, a6, a0
	li a4, 0x1e6
	rol a4, a2, a4
	li s6, 0x7c5
	rol s7, a4, s6
	li a2, 0x7bd
	rol a7, s7, a2
	li s9, 0xdf
	rol s9, a7, s9
	li a6, 0xaa
	rol s2, s9, a6
	li a4, 0x5fb
	rol t1, s2, a4
	li s8, 0x7c0
	rol a5, t1, s8
	li t2, 0x72d
	rol t2, a5, t2
	li s10, 0x8b
	rol a7, t2, s10
	li a6, 0x393
	rol a3, a7, a6
	li a1, 0x77e
	rol a1, a3, a1
	li a7, 0x22
	rol t3, a1, a7
	li a1, 0x19b
	rol t4, t3, a1
	li a2, 0x3
	rol a6, t4, a2
	li a0, 0x6a9
	rol t3, a6, a0
	li t1, 0x29b
	rol a4, t3, t1
	li a0, 0x51a
	rol s6, a4, a0
	li s8, 0x4c3
	rol t3, s6, s8
	li a4, 0x499
	rol a2, t3, a4
	li a7, 0x24f
	rol s2, a2, a7
	li a0, 0x550
	rol a7, s2, a0
	li t3, 0x362
	rol t3, a7, t3
	li a3, 0x5e0
	rol s5, t3, a3
	li t2, 0xfb
	rol t3, s5, t2
	li s4, 0x7cb
	rol a1, t3, s4
	li t2, 0x2f0
	rol s8, a1, t2
	li t1, 0x11a
	rol t5, s8, t1
	li t4, 0x439
	rol s5, t5, t4
	li s11, 0x2ef
	rol s11, s5, s11
	li t5, 0x69f
	rol s9, s11, t5
	li t2, 0x4ca
	rol s10, s9, t2
	li s4, 0x1ad
	rol t6, s10, s4
	li s2, 0x230
	rol t1, t6, s2
	li a1, 0x424
	rol t4, t1, a1
	li s9, 0x542
	rol s4, t4, s9
	li a7, 0x6d
	rol s8, s4, a7
	li s11, 0x38
	rol s10, s8, s11
	csrr a2, time
	csrr t3, cycle
	csrr s9, instret
	sub a2, a2, s3
	sub a0, t3, s0
	sub t5, s9, s1
	li s4, 0
	csrr a3, time
	csrr s5, cycle
	csrr s1, instret
	li t2, 0xd1
	rol s10, s4, t2
	li s11, 0x737
	rol a1, s10, s11
	li s0, 0x178
	rol s8, a1, s0
	li a1, 0x2d1
	rol a1, s8, a1
	li s9, 0x6d4
	rol t1, a1, s9
	li a7, 0x4b0
	rol a4, t1, a7
	li s11, 0x415
	rol s9, a4, s11
	li t1, 0x578
	rol s2, s9, t1
	li a5, 0x7ef
	rol s6, s2, a5
	li a2, 0x7df
	rol a2, s6, a2
	li a5, 0xd1
	rol a2, a2, a5
	li s2, 0x4ff
	rol a4, a2, s2
	li a2, 0x78d
	rol s3, a4, a2
	li t4, 0x7cc
	rol t2, s3, t4
	li s3, 0x7f6
	rol a6, t2, s3
	li s2, 0x1c
	rol a2, a6, s2
	li s10, 0x441
	rol a1, a2, s10
	li t6, 0x108
	rol s7, a1, t6
	li s8, 0x280
	rol a1, s7, s8
	li s11, 0x531
	rol a5, a1, s11
	li t4, 0xc0
	rol a5, a5, t4
	li s4, 0x375
	rol a5, a5, s4
	li s8, 0x32
	rol t1, a5, s8
	li s6, 0x92
	rol s9, t1, s6
	li a7, 0x5cd
	rol s0, s9, a7
	li s11, 0x736
	rol s9, s0, s11
	li s3, 0x208
	rol a7, s9, s3
	li a2, 0x501
	rol s3, a7, a2
	li a4, 0x5c2
	rol a6, s3, a4
	li a7, 0x413
	rol s11, a6, a7
	li a4, 0x6c8
	rol s0, s11, a4
	li t2, 0x4d4
	rol a2, s0, t2
	li a4, 0x4e5
	rol t4, a2, a4
	li a4, 0x661
	rol s4, t4, a4
	li s6, 0x667
	rol s6, s4, s6
	li s2, 0x3eb
	rol s9, s6, s2
	li s7, 0x1d9
	rol s2, s9, s7
	li t6, 0x77f
	rol s7, s2, t6
	li s4, 0x485
	rol s8, s7, s4
	li t1, 0x496
	rol s2, s8, t1
	li a2, 0x76b
	rol t1, s2, a2
	li s3, 0x45a
	rol a2, t1, s3
	li s9, 0x55d
	rol a7, a2, s9
	li t1, 0x2b8
	rol a2, a7, t1
	li a6, 0x7b2
	rol a5, a2, a6
	li s3, 0x2c7
	rol t2, a5, s3
	li a5, 0x644
	rol s10, t2, a5
	li s6, 0x5ba
	rol t6, s10, s6
	li a1, 0x1ee
	rol s6, t6, a1
	li a4, 0x6a4
	rol t3, s6, a4
	li s9, 0x5b2
	rol s7, t3, s9
	li t3, 0x63
	rol s2, s7, t3
	li s7, 0x216
	rol a7, s2, s7
	li a6, 0x76d
	rol s11, a7, a6
	li s2, 0x59a
	rol s7, s11, s2
	li s9, 0x239
	rol s0, s7, s9
	li s4, 0x5d1
	rol a6, s0, s4
	li s8, 0xbd
	rol a7, a6, s8
	li s6, 0x347
	rol a5, a7, s6
	li s8, 0x701
	rol t2, a5, s8
	li s11, 0x78a
	rol s9, t2, s11
	li t2, 0x433
	rol a7, s9, t2
	li s3, 0x73e
	rol t1, a7, s3
	li a4, 0x78e
	rol a7, t1, a4
	li a6, 0x2fa
	rol s11, a7, a6
	li a5, 0x1cd
	rol t2, s11, a5
	li a7, 0xf6
	rol t4, t2, a7
	li a7, 0x30d
	rol s3, t4, a7
	li s9, 0x54d
	rol s11, s3, s9
	li t4, 0x507
	rol a1, s11, t4
	li s7, 0x638
	rol s8, a1, s7
	li a5, 0x487
	rol s3, s8, a5
	li t6, 0x642
	rol s2, s3, t6
	li s6, 0x5a0
	rol s0, s2, s6
	li s11, 0x33e
	rol t6, s0, s11
	li s0, 0x69a
	rol s6, t6, s0
	li t6, 0x23e
	rol s10, s6, t6
	li s0, 0x433
	rol s0, s10, s0
	li a2, 0x515
	rol a7, s0, a2
	li a2, 0x20c
	rol a2, a7, a2
	li s11, 0x2fd
	rol s0, a2, s11
	li s11, 0x54b
	rol s4, s0, s11
	li a6, 0x46
	rol s0, s4, a6
	li a2, 0x9
	rol s11, s0, a2
	li s10, 0x5b5
	rol a7, s11, s10
	li s10, 0x56c
	rol s8, a7, s10
	li s6, 0x785
	rol t2, s8, s6
	li s11, 0x4b4
	rol t3, t2, s11
	li s8, 0x5d5
	rol s8, t3, s8
	li s0, 0x610
	rol a4, s8, s0
	li t4, 0xa6
	rol s8, a4, t4
	li s11, 0x5f4
	rol a7, s8, s11
	li a4, 0x7ac
	rol s2, a7, a4
	li s10, 0x77b
	rol s7, s2, s10
	li s0, 0x292
	rol t1, s7, s0
	li s0, 0x18f
	rol t4, t1, s0
	li s6, 0x19d
	rol t2, t4, s6
	li s0, 0x152
	rol s2, t2, s0
	li s4, 0x27e
	rol s4, s2, s4
	li s8, 0x1a2
	rol s0, s4, s8
	csrr s6, time
	csrr a1, cycle
	csrr s8, instret
	sub s2, s6, a3
	sub s7, a1, s5
	sub s0, s8, s1
	beq a0, s7, pass_label_80
	li s1, failed_addr
	ld s7, 0(s1)
	jr s7
pass_label_80:
	beq t5, s0, pass_label_81
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
	li s3, 0
	csrr t5, time
	csrr s0, cycle
	csrr a5, instret
	rori t6, s3, 0x13
	rori s10, t6, 0x1c
	rori s11, s10, 0xd
	rori a0, s11, 0x9
	rori a3, a0, 0x1c
	rori t2, a3, 0x1e
	rori t3, t2, 0x8
	rori s10, t3, 0xc
	rori a2, s10, 0x14
	rori a3, a2, 0x9
	rori s5, a3, 0x5
	rori s3, s5, 0x4
	rori s4, s3, 0x1f
	rori s11, s4, 0x16
	rori s9, s11, 0x3
	rori a2, s9, 0x1b
	rori t1, a2, 0xe
	rori s4, t1, 0x10
	rori t1, s4, 0x3
	rori t2, t1, 0x1b
	rori a2, t2, 0xd
	rori s8, a2, 0xf
	rori t4, s8, 0xe
	rori a0, t4, 0xa
	rori a3, a0, 0x11
	rori a6, a3, 0x1a
	rori t4, a6, 0x1f
	rori t1, t4, 0xa
	rori t3, t1, 0x1c
	rori a2, t3, 0x5
	rori s2, a2, 0x16
	rori a7, s2, 0xf
	rori a2, a7, 0xe
	rori s8, a2, 0x14
	rori a6, s8, 0x4
	rori s11, a6, 0x8
	rori s1, s11, 0x1d
	rori a7, s1, 0x1a
	rori a2, a7, 0x8
	rori s7, a2, 0x11
	rori t1, s7, 0xe
	rori s4, t1, 0x11
	rori a3, s4, 0x15
	rori a7, a3, 0x11
	rori s1, a7, 0xd
	rori a6, s1, 0x13
	rori a7, a6, 0x13
	rori s5, a7, 0x1b
	rori a1, s5, 0x10
	rori t3, a1, 0x5
	rori s11, t3, 0x6
	rori s11, s11, 0xf
	rori s4, s11, 0x1d
	rori t6, s4, 0x15
	rori s2, t6, 0x15
	rori s9, s2, 0x3
	rori s1, s9, 0xc
	rori s2, s1, 0x12
	rori t2, s2, 0x14
	rori a4, t2, 0x1f
	rori a3, a4, 0x6
	rori a4, a3, 0xb
	rori a0, a4, 0x1a
	rori t2, a0, 0x19
	rori a3, t2, 0x13
	rori s6, a3, 0x5
	rori a1, s6, 0x4
	rori s8, a1, 0x9
	rori s4, s8, 0x1e
	rori s11, s4, 0x8
	rori s10, s11, 0x14
	rori s1, s10, 0x1a
	rori s6, s1, 0x10
	rori a2, s6, 0xa
	rori a2, a2, 0x8
	rori a6, a2, 0x11
	rori s3, a6, 0xb
	rori s4, s3, 0x7
	rori a3, s4, 0x15
	rori s9, a3, 0x3
	rori a3, s9, 0x19
	rori t3, a3, 0x1c
	rori a3, t3, 0xf
	rori a1, a3, 0x1b
	rori t4, a1, 0x5
	rori t4, t4, 0x16
	rori t4, t4, 0x10
	rori s7, t4, 0x18
	rori s8, s7, 0x1b
	rori s4, s8, 0x12
	rori a2, s4, 0x1c
	rori t2, a2, 0x1e
	rori t2, t2, 0x1a
	rori t1, t2, 0x13
	rori s9, t1, 0x1c
	rori t6, s9, 0x1c
	rori t1, t6, 0xd
	rori a0, t1, 0x9
	rori s11, a0, 0x12
	rori s7, s11, 0x13
	csrr t2, time
	csrr s5, cycle
	csrr a7, instret
	sub t1, t2, t5
	sub s8, s5, s0
	sub a7, a7, a5
	li a6, 0
	csrr s4, time
	csrr a1, cycle
	csrr s3, instret
	rori s11, a6, 0xe
	rori s8, s11, 0x1a
	rori s7, s8, 0x4
	rori s8, s7, 0x1f
	rori t6, s8, 0x17
	rori a4, t6, 0x15
	rori s10, a4, 0x11
	rori s10, s10, 0xa
	rori t5, s10, 0x1a
	rori a6, t5, 0x6
	rori s5, a6, 0x10
	rori s8, s5, 0xd
	rori a6, s8, 0x7
	rori s0, a6, 0x16
	rori s6, s0, 0x13
	rori a7, s6, 0x12
	rori a5, a7, 0xf
	rori s0, a5, 0xa
	rori t6, s0, 0x8
	rori s6, t6, 0xe
	rori s9, s6, 0x3
	rori a0, s9, 0x1d
	rori a5, a0, 0x17
	rori a4, a5, 0x1d
	rori t2, a4, 0x1e
	rori t6, t2, 0x8
	rori t1, t6, 0x1f
	rori t1, t1, 0x17
	rori s9, t1, 0x16
	rori s6, s9, 0x14
	rori t5, s6, 0x1c
	rori a5, t5, 0x1d
	rori a4, a5, 0x6
	rori a6, a4, 0x1e
	rori a7, a6, 0x7
	rori t1, a7, 0x8
	rori t4, t1, 0xc
	rori s10, t4, 0x1f
	rori t1, s10, 0x9
	rori s7, t1, 0x8
	rori t5, s7, 0x18
	rori t2, t5, 0x11
	rori s1, t2, 0x5
	rori t5, s1, 0xe
	rori s10, t5, 0xd
	rori t4, s10, 0x8
	rori t4, t4, 0x10
	rori a4, t4, 0x1a
	rori t2, a4, 0xa
	rori s6, t2, 0x1b
	rori s2, s6, 0x18
	rori a0, s2, 0x1a
	rori a6, a0, 0x16
	rori s11, a6, 0x12
	rori t5, s11, 0x16
	rori s1, t5, 0xa
	rori s5, s1, 0xe
	rori s9, s5, 0x18
	rori a3, s9, 0xa
	rori t4, a3, 0x10
	rori s8, t4, 0xd
	rori a7, s8, 0x1d
	rori s10, a7, 0x4
	rori a0, s10, 0x1f
	rori a6, a0, 0x1b
	rori a0, a6, 0x1b
	rori s0, a0, 0x1c
	rori a5, s0, 0x1f
	rori a6, a5, 0xc
	rori a2, a6, 0x11
	rori a2, a2, 0x1d
	rori a5, a2, 0x6
	rori t3, a5, 0x1d
	rori s1, t3, 0x18
	rori t4, s1, 0x1c
	rori s8, t4, 0x6
	rori t5, s8, 0x13
	rori s6, t5, 0x1b
	rori t5, s6, 0xf
	rori t3, t5, 0x1a
	rori a4, t3, 0x7
	rori a6, a4, 0xf
	rori s10, a6, 0x1b
	rori a3, s10, 0x1b
	rori s9, a3, 0xc
	rori a2, s9, 0x1c
	rori a5, a2, 0x1b
	rori s1, a5, 0x1b
	rori s1, s1, 0x13
	rori a0, s1, 0x12
	rori t5, a0, 0x18
	rori t6, t5, 0x5
	rori s9, t6, 0x13
	rori a5, s9, 0x13
	rori t5, a5, 0x1b
	rori s6, t5, 0x14
	rori s7, s6, 0x1c
	rori a3, s7, 0x1b
	rori s1, a3, 0x13
	rori t5, s1, 0xb
	csrr s1, time
	csrr s2, cycle
	csrr t4, instret
	sub s7, s1, s4
	sub s4, s2, a1
	sub a3, t4, s3
	li t4, 0
	csrr a2, time
	csrr a6, cycle
	csrr s0, instret
	rori a4, t4, 0x6
	rori s9, a4, 0x1a
	rori a0, s9, 0x11
	rori s5, a0, 0x17
	rori s7, s5, 0x6
	rori t4, s7, 0x17
	rori a1, t4, 0x12
	rori a4, a1, 0x8
	rori s1, a4, 0x1d
	rori a1, s1, 0x1f
	rori a5, a1, 0x3
	rori s5, a5, 0x19
	rori a4, s5, 0x19
	rori s6, a4, 0x1d
	rori a7, s6, 0xa
	rori s7, a7, 0x17
	rori t5, s7, 0x6
	rori a5, t5, 0x16
	rori s6, a5, 0x13
	rori a7, s6, 0x12
	rori a5, a7, 0x15
	rori s9, a5, 0x3
	rori s7, s9, 0x4
	rori t5, s7, 0x19
	rori s10, t5, 0x1a
	rori a4, s10, 0xb
	rori a5, a4, 0x10
	rori s7, a5, 0x17
	rori s10, s7, 0x5
	rori a5, s10, 0x6
	rori s10, a5, 0xb
	rori t3, s10, 0xf
	rori s6, t3, 0x1e
	rori t1, s6, 0x8
	rori t4, t1, 0x8
	rori s5, t4, 0x10
	rori t2, s5, 0x1d
	rori s6, t2, 0x1f
	rori t6, s6, 0x18
	rori s6, t6, 0x11
	rori s7, s6, 0x5
	rori s10, s7, 0x16
	rori s1, s10, 0x1c
	rori s5, s1, 0xf
	rori a0, s5, 0x19
	rori t3, a0, 0x3
	rori s9, t3, 0x13
	rori a1, s9, 0xb
	rori t4, a1, 0x5
	rori s10, t4, 0x18
	rori a0, s10, 0x11
	rori t4, a0, 0xa
	rori t6, t4, 0xd
	rori a4, t6, 0xb
	rori a7, a4, 0x18
	rori s2, a7, 0x15
	rori s11, s2, 0x1d
	rori t5, s11, 0x5
	rori a4, t5, 0x16
	rori s2, a4, 0x12
	rori a0, s2, 0x4
	rori s2, a0, 0x1e
	rori t3, s2, 0xe
	rori t5, t3, 0x14
	rori t6, t5, 0xa
	rori t2, t6, 0x3
	rori s5, t2, 0x13
	rori t4, s5, 0x8
	rori a4, t4, 0x15
	rori t5, a4, 0x3
	rori s5, t5, 0x4
	rori s5, s5, 0x1e
	rori t1, s5, 0x4
	rori t6, t1, 0xb
	rori a4, t6, 0x4
	rori s9, a4, 0x1e
	rori t6, s9, 0xb
	rori t2, t6, 0x17
	rori a5, t2, 0xf
	rori s5, a5, 0x13
	rori s1, s5, 0xe
	rori a4, s1, 0x1c
	rori t1, a4, 0x14
	rori s9, t1, 0xd
	rori s1, s9, 0x12
	rori s7, s1, 0x5
	rori a1, s7, 0x1c
	rori s1, a1, 0x10
	rori t5, s1, 0x1d
	rori t6, t5, 0xc
	rori s3, t6, 0x12
	rori s6, s3, 0xe
	rori t5, s6, 0xa
	rori t1, t5, 0x10
	rori a0, t1, 0x1e
	rori s10, a0, 0x1a
	rori s8, s10, 0x15
	rori a1, s8, 0xa
	rori s11, a1, 0x15
	rori s11, s11, 0xd
	csrr s1, time
	csrr s5, cycle
	csrr s2, instret
	sub a4, s1, a2
	sub a5, s5, a6
	sub s8, s2, s0
	beq s4, a5, pass_label_82
	li s5, failed_addr
	ld s10, 0(s5)
	jr s10
pass_label_82:
	beq a3, s8, pass_label_83
	li s1, failed_addr
	ld a5, 0(s1)
	jr a5
pass_label_83:
SID_ZKT_08_RORI_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_RORW)
SID_ZKT_08_RORW:
	li sp, SID_ZKT_08_RORW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 0
	csrr t4, time
	csrr s5, cycle
	csrr a4, instret
	li a6, 0x58c
	rorw s7, t2, a6
	li a2, 0x5dc
	rorw t3, s7, a2
	li t1, 0x3e5
	rorw a6, t3, t1
	li t1, 0x624
	rorw t3, a6, t1
	li s6, 0x615
	rorw a5, t3, s6
	li s0, 0x552
	rorw s0, a5, s0
	li t5, 0x4bb
	rorw a1, s0, t5
	li s11, 0x266
	rorw a5, a1, s11
	li a7, 0x424
	rorw a7, a5, a7
	li s0, 0x251
	rorw a0, a7, s0
	li t2, 0x27a
	rorw a6, a0, t2
	li s3, 0x63d
	rorw s4, a6, s3
	li s8, 0x459
	rorw a6, s4, s8
	li s7, 0x778
	rorw t2, a6, s7
	li t1, 0x48f
	rorw a3, t2, t1
	li s1, 0x4c8
	rorw s10, a3, s1
	li s2, 0x52c
	rorw s6, s10, s2
	li a5, 0x171
	rorw s2, s6, a5
	li a2, 0x393
	rorw a0, s2, a2
	li a1, 0x4d9
	rorw a0, a0, a1
	li s4, 0x7eb
	rorw t5, a0, s4
	li s4, 0x53
	rorw s4, t5, s4
	li a2, 0x5d0
	rorw t1, s4, a2
	li a2, 0x69f
	rorw s7, t1, a2
	li s9, 0x62c
	rorw s1, s7, s9
	li s2, 0x249
	rorw a2, s1, s2
	li s10, 0x491
	rorw t1, a2, s10
	li s4, 0x2dc
	rorw t1, t1, s4
	li a2, 0x3d4
	rorw a5, t1, a2
	li s10, 0x56
	rorw s8, a5, s10
	li s4, 0x3f1
	rorw a3, s8, s4
	li s10, 0x360
	rorw a3, a3, s10
	li s0, 0x283
	rorw t1, a3, s0
	li s2, 0x7e5
	rorw a3, t1, s2
	li a0, 0x1c2
	rorw t6, a3, a0
	li t5, 0x7c7
	rorw s2, t6, t5
	li s9, 0xfe
	rorw s4, s2, s9
	li s10, 0x1a6
	rorw s8, s4, s10
	li a6, 0x69f
	rorw s7, s8, a6
	li s2, 0x730
	rorw s10, s7, s2
	li a5, 0x624
	rorw s1, s10, a5
	li t2, 0x76a
	rorw s11, s1, t2
	li a0, 0x602
	rorw s0, s11, a0
	li s8, 0x3f7
	rorw s4, s0, s8
	li s10, 0x3a9
	rorw a1, s4, s10
	li s3, 0x14b
	rorw a6, a1, s3
	li a0, 0x34d
	rorw t2, a6, a0
	li s9, 0x6f5
	rorw a6, t2, s9
	li t2, 0x4a8
	rorw t5, a6, t2
	li a2, 0x4be
	rorw a0, t5, a2
	li t5, 0x6ce
	rorw a1, a0, t5
	li s7, 0xdc
	rorw s6, a1, s7
	li a2, 0xe6
	rorw s9, s6, a2
	li a5, 0xa7
	rorw t3, s9, a5
	li s11, 0x8c
	rorw t2, t3, s11
	li s8, 0x6ae
	rorw s2, t2, s8
	li t1, 0x1e2
	rorw a0, s2, t1
	li s11, 0x7e2
	rorw a0, a0, s11
	li s10, 0x3e5
	rorw a1, a0, s10
	li s6, 0x446
	rorw s0, a1, s6
	li a5, 0x5b9
	rorw a3, s0, a5
	li a5, 0x7ad
	rorw s10, a3, a5
	li a3, 0x2de
	rorw t2, s10, a3
	li s3, 0x1a4
	rorw t2, t2, s3
	li s0, 0x430
	rorw a0, t2, s0
	li s0, 0x581
	rorw a1, a0, s0
	li s4, 0x16d
	rorw s1, a1, s4
	li a5, 0x659
	rorw s1, s1, a5
	li a2, 0x14a
	rorw s11, s1, a2
	li s10, 0x676
	rorw a5, s11, s10
	li s4, 0xa8
	rorw a0, a5, s4
	li t5, 0x1f4
	rorw s2, a0, t5
	li s9, 0x89
	rorw s6, s2, s9
	li t1, 0x23a
	rorw a6, s6, t1
	li s7, 0x4d
	rorw a0, a6, s7
	li a2, 0x382
	rorw s0, a0, a2
	li s4, 0x7cb
	rorw s4, s0, s4
	li t5, 0x561
	rorw a0, s4, t5
	li a5, 0x216
	rorw s9, a0, a5
	li a7, 0x317
	rorw s1, s9, a7
	li a6, 0x6cb
	rorw t3, s1, a6
	li a1, 0x5a9
	rorw s0, t3, a1
	li s10, 0x3d0
	rorw s3, s0, s10
	li t5, 0x31d
	rorw t6, s3, t5
	li a5, 0x757
	rorw a3, t6, a5
	li s6, 0x83
	rorw s0, a3, s6
	li s11, 0x532
	rorw s6, s0, s11
	li s8, 0x481
	rorw s6, s6, s8
	li s7, 0x3ec
	rorw a3, s6, s7
	li s10, 0x43f
	rorw s0, a3, s10
	li t2, 0x380
	rorw a1, s0, t2
	li s10, 0x300
	rorw s10, a1, s10
	li s6, 0x266
	rorw t3, s10, s6
	li t1, 0x7cb
	rorw s1, t3, t1
	li t3, 0x58e
	rorw s10, s1, t3
	li a2, 0x69c
	rorw s4, s10, a2
	li s11, 0x7fc
	rorw t2, s4, s11
	li a6, 0x5d8
	rorw s8, t2, a6
	li s2, 0x270
	rorw t5, s8, s2
	li s0, 0x41d
	rorw a5, t5, s0
	csrr s8, time
	csrr s0, cycle
	csrr a5, instret
	sub s1, s8, t4
	sub s5, s0, s5
	sub a6, a5, a4
	li s11, 0
	csrr t3, time
	csrr s1, cycle
	csrr s8, instret
	li a2, 0x621
	rorw s11, s11, a2
	li a0, 0x6c2
	rorw a6, s11, a0
	li t5, 0x686
	rorw a6, a6, t5
	li s6, 0x3fb
	rorw s6, a6, s6
	li a4, 0x35a
	rorw a6, s6, a4
	li s9, 0x3e6
	rorw a2, a6, s9
	li t2, 0x6bd
	rorw s2, a2, t2
	li t4, 0x7aa
	rorw s3, s2, t4
	li a5, 0x50
	rorw s3, s3, a5
	li a1, 0x2c6
	rorw a1, s3, a1
	li a0, 0x3c
	rorw a1, a1, a0
	li t5, 0x7ed
	rorw s11, a1, t5
	li t5, 0x28e
	rorw s11, s11, t5
	li a6, 0x742
	rorw s11, s11, a6
	li a7, 0x3ac
	rorw s4, s11, a7
	li a5, 0x4b5
	rorw t2, s4, a5
	li s9, 0x3c8
	rorw s5, t2, s9
	li s9, 0x50c
	rorw a1, s5, s9
	li a6, 0x357
	rorw t6, a1, a6
	li s2, 0x267
	rorw s0, t6, s2
	li t5, 0x7e4
	rorw s5, s0, t5
	li a3, 0x2ed
	rorw a4, s5, a3
	li s0, 0x6e6
	rorw t2, a4, s0
	li a5, 0x5fd
	rorw a1, t2, a5
	li a3, 0x3d8
	rorw t5, a1, a3
	li a0, 0x419
	rorw s11, t5, a0
	li s7, 0xbc
	rorw s7, s11, s7
	li t2, 0x15b
	rorw a3, s7, t2
	li a6, 0x538
	rorw a6, a3, a6
	li a3, 0x25c
	rorw a3, a6, a3
	li a1, 0x36d
	rorw a2, a3, a1
	li a7, 0x463
	rorw t2, a2, a7
	li s9, 0x1f2
	rorw s11, t2, s9
	li s10, 0x7ab
	rorw a5, s11, s10
	li s6, 0x7f9
	rorw a6, a5, s6
	li s2, 0x171
	rorw s4, a6, s2
	li t5, 0x679
	rorw s9, s4, t5
	li t5, 0x397
	rorw s10, s9, t5
	li a0, 0x776
	rorw t1, s10, a0
	li t2, 0x4a2
	rorw a2, t1, t2
	li s7, 0xee
	rorw s3, a2, s7
	li t4, 0x2ef
	rorw s9, s3, t4
	li t6, 0x4e8
	rorw t6, s9, t6
	li t1, 0x781
	rorw a7, t6, t1
	li s10, 0x2e4
	rorw s6, a7, s10
	li a0, 0x7fd
	rorw t2, s6, a0
	li t1, 0x3a2
	rorw s7, t2, t1
	li a6, 0x2f8
	rorw t6, s7, a6
	li s6, 0x7c2
	rorw a1, t6, s6
	li a5, 0x545
	rorw s9, a1, a5
	li s11, 0x3a8
	rorw a7, s9, s11
	li s6, 0x4d
	rorw s9, a7, s6
	li a5, 0x20d
	rorw t5, s9, a5
	li t1, 0x389
	rorw a5, t5, t1
	li t1, 0x141
	rorw t2, a5, t1
	li s3, 0x5e9
	rorw s11, t2, s3
	li s0, 0x238
	rorw a7, s11, s0
	li t6, 0x83
	rorw a5, a7, t6
	li a2, 0x1ec
	rorw s6, a5, a2
	li s2, 0x45
	rorw s0, s6, s2
	li a6, 0x1b7
	rorw a0, s0, a6
	li t5, 0x109
	rorw s3, a0, t5
	li a3, 0x76e
	rorw s10, s3, a3
	li a0, 0x356
	rorw s4, s10, a0
	li a7, 0xd9
	rorw s11, s4, a7
	li s6, 0x7b2
	rorw a5, s11, s6
	li a3, 0x531
	rorw s2, a5, a3
	li a1, 0x35b
	rorw a0, s2, a1
	li s6, 0x7e0
	rorw s10, a0, s6
	li s4, 0x159
	rorw s6, s10, s4
	li a0, 0xba
	rorw s5, s6, a0
	li a5, 0x7af
	rorw s11, s5, a5
	li a4, 0x324
	rorw s11, s11, a4
	li a6, 0x34d
	rorw t5, s11, a6
	li s5, 0x1d
	rorw a5, t5, s5
	li s9, 0x122
	rorw s10, a5, s9
	li a7, 0x17d
	rorw a2, s10, a7
	li s5, 0x4cd
	rorw a1, a2, s5
	li a6, 0x6b2
	rorw s2, a1, a6
	li s10, 0x395
	rorw s10, s2, s10
	li t1, 0x6e1
	rorw t1, s10, t1
	li t4, 0xa0
	rorw s7, t1, t4
	li s3, 0x6b9
	rorw s11, s7, s3
	li s3, 0x168
	rorw s7, s11, s3
	li a6, 0x304
	rorw a2, s7, a6
	li s11, 0x31
	rorw s6, a2, s11
	li s7, 0x4ec
	rorw s6, s6, s7
	li t1, 0x5ae
	rorw a4, s6, t1
	li a7, 0x3c5
	rorw a1, a4, a7
	li s3, 0x722
	rorw s4, a1, s3
	li s0, 0x57a
	rorw t4, s4, s0
	li a2, 0x7a8
	rorw a5, t4, a2
	li s7, 0x7e6
	rorw s6, a5, s7
	li t6, 0x51
	rorw t4, s6, t6
	li s0, 0x5c4
	rorw s4, t4, s0
	li t2, 0x21f
	rorw a2, s4, t2
	li a4, 0x24f
	rorw a7, a2, a4
	li a6, 0x10
	rorw a6, a7, a6
	li s7, 0x60a
	rorw s9, a6, s7
	li a1, 0x646
	rorw s4, s9, a1
	csrr a6, time
	csrr s11, cycle
	csrr s4, instret
	sub a1, a6, t3
	sub s5, s11, s1
	sub a5, s4, s8
	li a0, 0
	csrr a3, time
	csrr a4, cycle
	csrr t5, instret
	li s1, 0x21
	rorw s7, a0, s1
	li s1, 0x6a4
	rorw s10, s7, s1
	li a7, 0x6be
	rorw t2, s10, a7
	li t1, 0x7bd
	rorw s10, t2, t1
	li s11, 0xad
	rorw s7, s10, s11
	li t1, 0x4c3
	rorw s9, s7, t1
	li s6, 0x214
	rorw t4, s9, s6
	li s9, 0xb4
	rorw t6, t4, s9
	li s11, 0x39c
	rorw t3, t6, s11
	li s0, 0x4f1
	rorw a7, t3, s0
	li a1, 0x580
	rorw a0, a7, a1
	li s1, 0x7e7
	rorw t2, a0, s1
	li t3, 0x36
	rorw t4, t2, t3
	li a1, 0x2cc
	rorw t3, t4, a1
	li t6, 0x6c5
	rorw a2, t3, t6
	li s11, 0x4d4
	rorw t2, a2, s11
	li a2, 0xaf
	rorw s8, t2, a2
	li s11, 0x2f4
	rorw t1, s8, s11
	li s3, 0x339
	rorw s8, t1, s3
	li s4, 0x569
	rorw t2, s8, s4
	li s10, 0x3e4
	rorw s4, t2, s10
	li s7, 0x774
	rorw s11, s4, s7
	li t1, 0x5c
	rorw t3, s11, t1
	li s4, 0x247
	rorw s11, t3, s4
	li s8, 0x507
	rorw a6, s11, s8
	li s9, 0x3cd
	rorw t4, a6, s9
	li s9, 0x16d
	rorw s3, t4, s9
	li a1, 0x493
	rorw s10, s3, a1
	li s9, 0x40c
	rorw a2, s10, s9
	li s0, 0x56d
	rorw s6, a2, s0
	li t3, 0x754
	rorw s10, s6, t3
	li s8, 0x766
	rorw t3, s10, s8
	li s1, 0x2aa
	rorw a7, t3, s1
	li s2, 0xbc
	rorw a7, a7, s2
	li a0, 0x425
	rorw t6, a7, a0
	li s2, 0x289
	rorw t2, t6, s2
	li s6, 0x6fb
	rorw a0, t2, s6
	li a7, 0x5
	rorw s2, a0, a7
	li s10, 0x259
	rorw a1, s2, s10
	li s1, 0x11c
	rorw a1, a1, s1
	li t2, 0x14f
	rorw t2, a1, t2
	li a0, 0x5b1
	rorw a6, t2, a0
	li t6, 0x545
	rorw t6, a6, t6
	li s10, 0x24f
	rorw a7, t6, s10
	li s9, 0x6be
	rorw s7, a7, s9
	li t2, 0x25c
	rorw s11, s7, t2
	li a6, 0x483
	rorw s2, s11, a6
	li s0, 0x6b8
	rorw t6, s2, s0
	li t4, 0x3d4
	rorw s3, t6, t4
	li s0, 0x6db
	rorw t4, s3, s0
	li t1, 0x42f
	rorw t1, t4, t1
	li s4, 0x796
	rorw s10, t1, s4
	li t3, 0x79f
	rorw t2, s10, t3
	li t3, 0x20
	rorw s2, t2, t3
	li a0, 0x23
	rorw t3, s2, a0
	li t6, 0xb3
	rorw s8, t3, t6
	li a7, 0x525
	rorw a6, s8, a7
	li t1, 0x78
	rorw s4, a6, t1
	li a2, 0x67c
	rorw a6, s4, a2
	li t1, 0xbd
	rorw s1, a6, t1
	li s2, 0x2a5
	rorw s8, s1, s2
	li a0, 0x733
	rorw t3, s8, a0
	li s9, 0x3bf
	rorw a0, t3, s9
	li t3, 0x118
	rorw s3, a0, t3
	li s2, 0x6f9
	rorw s7, s3, s2
	li s8, 0x46f
	rorw s10, s7, s8
	li a1, 0x72d
	rorw s10, s10, a1
	li s0, 0x1dc
	rorw t4, s10, s0
	li a2, 0x149
	rorw a7, t4, a2
	li s1, 0xb6
	rorw s9, a7, s1
	li s3, 0x12a
	rorw s9, s9, s3
	li s2, 0x139
	rorw s8, s9, s2
	li s4, 0x207
	rorw a6, s8, s4
	li a1, 0xc1
	rorw t4, a6, a1
	li s6, 0x406
	rorw t2, t4, s6
	li s8, 0x68a
	rorw t3, t2, s8
	li t6, 0x51a
	rorw s4, t3, t6
	li s8, 0x2c8
	rorw s11, s4, s8
	li s8, 0x1e3
	rorw s3, s11, s8
	li t3, 0x4f4
	rorw s8, s3, t3
	li s10, 0xaf
	rorw s0, s8, s10
	li a7, 0xc8
	rorw s6, s0, a7
	li a7, 0x1f3
	rorw a1, s6, a7
	li t4, 0x7eb
	rorw a2, a1, t4
	li a0, 0x302
	rorw s3, a2, a0
	li a0, 0x24d
	rorw s1, s3, a0
	li s2, 0x1b3
	rorw s3, s1, s2
	li s0, 0x2ae
	rorw s1, s3, s0
	li a1, 0x505
	rorw t2, s1, a1
	li a7, 0x256
	rorw s0, t2, a7
	li t1, 0x71f
	rorw s3, s0, t1
	li s2, 0xcd
	rorw a7, s3, s2
	li s2, 0x208
	rorw s4, a7, s2
	li s6, 0x4a
	rorw s9, s4, s6
	li s3, 0x5d7
	rorw s8, s9, s3
	li t6, 0x1c1
	rorw s9, s8, t6
	li s1, 0x304
	rorw s10, s9, s1
	li a0, 0xd3
	rorw t4, s10, a0
	li s7, 0x6f8
	rorw t4, t4, s7
	li a1, 0x794
	rorw s10, t4, a1
	csrr s9, time
	csrr s8, cycle
	csrr s0, instret
	sub a1, s9, a3
	sub s1, s8, a4
	sub t6, s0, t5
	beq s5, s1, pass_label_84
	li t1, failed_addr
	ld a2, 0(t1)
	jr a2
pass_label_84:
	beq a5, t6, pass_label_85
	li a1, failed_addr
	ld t5, 0(a1)
	jr t5
pass_label_85:
SID_ZKT_08_RORW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_ROLW)
SID_ZKT_08_ROLW:
	li sp, SID_ZKT_08_ROLW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s5, 0
	csrr s10, time
	csrr s2, cycle
	csrr t2, instret
	li s7, 0x50
	rolw s5, s5, s7
	li s4, 0x6ef
	rolw s4, s5, s4
	li s11, 0x68d
	rolw a0, s4, s11
	li t4, 0x64d
	rolw s7, a0, t4
	li s9, 0x2d
	rolw s5, s7, s9
	li s0, 0x339
	rolw a7, s5, s0
	li s4, 0x547
	rolw s5, a7, s4
	li s11, 0x697
	rolw t1, s5, s11
	li s7, 0x742
	rolw a0, t1, s7
	li t6, 0x4e8
	rolw s11, a0, t6
	li s4, 0x25e
	rolw s9, s11, s4
	li s11, 0x7cf
	rolw a1, s9, s11
	li s11, 0x516
	rolw a0, a1, s11
	li a6, 0x700
	rolw t5, a0, a6
	li a5, 0x590
	rolw a4, t5, a5
	li s1, 0x523
	rolw s1, a4, s1
	li s8, 0x7d5
	rolw s1, s1, s8
	li t1, 0xf4
	rolw s7, s1, t1
	li t1, 0x69e
	rolw s1, s7, t1
	li a5, 0x176
	rolw t1, s1, a5
	li s11, 0x22b
	rolw s11, t1, s11
	li t5, 0x5f2
	rolw a3, s11, t5
	li s3, 0xb9
	rolw a7, a3, s3
	li s0, 0x5d0
	rolw t3, a7, s0
	li a3, 0x7a2
	rolw a5, t3, a3
	li a1, 0x12
	rolw s4, a5, a1
	li s9, 0x99
	rolw s5, s4, s9
	li s8, 0x293
	rolw t5, s5, s8
	li a3, 0x338
	rolw s3, t5, a3
	li s5, 0x687
	rolw s5, s3, s5
	li s4, 0x672
	rolw s11, s5, s4
	li s4, 0x6f
	rolw t3, s11, s4
	li a7, 0x56a
	rolw a2, t3, a7
	li a7, 0x559
	rolw s9, a2, a7
	li t5, 0x242
	rolw a3, s9, t5
	li s3, 0x20d
	rolw s1, a3, s3
	li s11, 0x13b
	rolw s3, s1, s11
	li t1, 0x304
	rolw a4, s3, t1
	li a0, 0xba
	rolw s4, a4, a0
	li s6, 0x6ad
	rolw s3, s4, s6
	li s9, 0x473
	rolw t4, s3, s9
	li a0, 0x3cb
	rolw a7, t4, a0
	li s4, 0x267
	rolw s6, a7, s4
	li s1, 0x3ff
	rolw t3, s6, s1
	li a4, 0x127
	rolw t6, t3, a4
	li s6, 0x6a1
	rolw t6, t6, s6
	li t1, 0x6bd
	rolw s1, t6, t1
	li a6, 0x1b9
	rolw s7, s1, a6
	li s4, 0x77d
	rolw s3, s7, s4
	li a7, 0x7a9
	rolw a2, s3, a7
	li a3, 0x649
	rolw a5, a2, a3
	li t3, 0x606
	rolw s8, a5, t3
	li t3, 0x643
	rolw s9, s8, t3
	li s11, 0x418
	rolw a2, s9, s11
	li s8, 0x196
	rolw a0, a2, s8
	li a6, 0x547
	rolw s7, a0, a6
	li s4, 0x4db
	rolw s4, s7, s4
	li a3, 0x540
	rolw s7, s4, a3
	li a4, 0x29a
	rolw s0, s7, a4
	li s7, 0x1a7
	rolw t6, s0, s7
	li s5, 0x2d2
	rolw a3, t6, s5
	li s9, 0x580
	rolw s0, a3, s9
	li s8, 0x642
	rolw s5, s0, s8
	li s0, 0x35c
	rolw s6, s5, s0
	li a5, 0x554
	rolw s3, s6, a5
	li a2, 0x6cf
	rolw t5, s3, a2
	li s9, 0x532
	rolw s1, t5, s9
	li a6, 0x575
	rolw s3, s1, a6
	li s4, 0xf2
	rolw s11, s3, s4
	li a1, 0x3b1
	rolw s11, s11, a1
	li t4, 0x3ce
	rolw s5, s11, t4
	li a5, 0x560
	rolw s3, s5, a5
	li s0, 0x1ac
	rolw a7, s3, s0
	li s0, 0x1d4
	rolw s3, a7, s0
	li a5, 0x5e1
	rolw s8, s3, a5
	li a5, 0x41f
	rolw a0, s8, a5
	li t3, 0x11c
	rolw s9, a0, t3
	li t3, 0x2f6
	rolw a6, s9, t3
	li s5, 0x755
	rolw s8, a6, s5
	li a7, 0x576
	rolw s8, s8, a7
	li a6, 0x575
	rolw a4, s8, a6
	li t5, 0x39d
	rolw s4, a4, t5
	li a0, 0x1d4
	rolw s1, s4, a0
	li a0, 0x400
	rolw s0, s1, a0
	li s6, 0x61
	rolw a1, s0, s6
	li a2, 0x5c5
	rolw t6, a1, a2
	li t1, 0x2d8
	rolw s0, t6, t1
	li s3, 0x4b5
	rolw s4, s0, s3
	li s6, 0x466
	rolw a0, s4, s6
	li s4, 0x408
	rolw t1, a0, s4
	li s6, 0x45b
	rolw s6, t1, s6
	li a5, 0x646
	rolw s0, s6, a5
	li t4, 0x5f2
	rolw t5, s0, t4
	li s7, 0x73
	rolw s7, t5, s7
	li t6, 0x240
	rolw t3, s7, t6
	li s7, 0x2bd
	rolw t4, t3, s7
	li a7, 0x274
	rolw s1, t4, a7
	li a4, 0x3f6
	rolw s1, s1, a4
	li s6, 0x406
	rolw s3, s1, s6
	li s11, 0x6b1
	rolw t5, s3, s11
	csrr s0, time
	csrr a0, cycle
	csrr a4, instret
	sub s7, s0, s10
	sub s3, a0, s2
	sub t5, a4, t2
	li a7, 0
	csrr a4, time
	csrr s1, cycle
	csrr t6, instret
	li a2, 0x4ac
	rolw s0, a7, a2
	li s11, 0x2e7
	rolw a5, s0, s11
	li t2, 0x505
	rolw a6, a5, t2
	li s9, 0x558
	rolw a7, a6, s9
	li a3, 0x434
	rolw s3, a7, a3
	li a0, 0x7de
	rolw t2, s3, a0
	li a6, 0x13d
	rolw a1, t2, a6
	li t4, 0x13b
	rolw s10, a1, t4
	li s5, 0x51f
	rolw s8, s10, s5
	li a7, 0x245
	rolw a0, s8, a7
	li s2, 0x4c8
	rolw t3, a0, s2
	li t5, 0x3cd
	rolw s2, t3, t5
	li s3, 0x468
	rolw s3, s2, s3
	li a1, 0x762
	rolw t1, s3, a1
	li s8, 0x2b1
	rolw t1, t1, s8
	li s7, 0x7d9
	rolw s9, t1, s7
	li s0, 0x171
	rolw a1, s9, s0
	li t5, 0x2f9
	rolw a7, a1, t5
	li t4, 0x191
	rolw s7, a7, t4
	li a2, 0x6c5
	rolw s0, s7, a2
	li s11, 0x646
	rolw s0, s0, s11
	li a2, 0x43
	rolw s0, s0, a2
	li s10, 0x2de
	rolw s6, s0, s10
	li t5, 0x4b3
	rolw t3, s6, t5
	li t2, 0x436
	rolw s5, t3, t2
	li s9, 0x494
	rolw s6, s5, s9
	li a1, 0x525
	rolw s2, s6, a1
	li s4, 0x122
	rolw s3, s2, s4
	li t3, 0x58b
	rolw t5, s3, t3
	li s10, 0xe7
	rolw a0, t5, s10
	li a3, 0x504
	rolw s4, a0, a3
	li s9, 0x3c4
	rolw a1, s4, s9
	li a3, 0x1ae
	rolw s8, a1, a3
	li t1, 0xd
	rolw a6, s8, t1
	li t5, 0xeb
	rolw t2, a6, t5
	li s2, 0x53c
	rolw a5, t2, s2
	li a6, 0x587
	rolw s6, a5, a6
	li s4, 0x522
	rolw t1, s6, s4
	li t2, 0x7cc
	rolw s3, t1, t2
	li a3, 0x4cc
	rolw a0, s3, a3
	li t4, 0x271
	rolw s5, a0, t4
	li a0, 0x6fb
	rolw s11, s5, a0
	li t4, 0x430
	rolw t4, s11, t4
	li s0, 0x2bf
	rolw s0, t4, s0
	li s4, 0x11b
	rolw a2, s0, s4
	li a6, 0x4bd
	rolw t3, a2, a6
	li s0, 0x4e6
	rolw t5, t3, s0
	li s4, 0x21b
	rolw s0, t5, s4
	li s6, 0x4e3
	rolw s2, s0, s6
	li s5, 0x46
	rolw s3, s2, s5
	li s6, 0x3aa
	rolw a2, s3, s6
	li a3, 0x292
	rolw a5, a2, a3
	li s2, 0x424
	rolw s5, a5, s2
	li t3, 0x4b7
	rolw a1, s5, t3
	li s6, 0x5c5
	rolw a5, a1, s6
	li s5, 0x777
	rolw t5, a5, s5
	li a3, 0xf2
	rolw s2, t5, a3
	li a5, 0x745
	rolw a1, s2, a5
	li a3, 0x18b
	rolw a2, a1, a3
	li s3, 0x58e
	rolw a6, a2, s3
	li s4, 0x81
	rolw t4, a6, s4
	li s9, 0x1bf
	rolw s8, t4, s9
	li s6, 0x20d
	rolw a0, s8, s6
	li a7, 0x218
	rolw t4, a0, a7
	li a5, 0x21b
	rolw s2, t4, a5
	li a1, 0x18c
	rolw s9, s2, a1
	li s7, 0xbd
	rolw a3, s9, s7
	li s10, 0x2b1
	rolw s8, a3, s10
	li a6, 0x5a5
	rolw s8, s8, a6
	li a6, 0x3d9
	rolw s11, s8, a6
	li t3, 0x48f
	rolw s5, s11, t3
	li a3, 0x7d2
	rolw t1, s5, a3
	li a6, 0x326
	rolw t4, t1, a6
	li s3, 0x5a1
	rolw s4, t4, s3
	li s0, 0xbc
	rolw s4, s4, s0
	li t2, 0x733
	rolw s9, s4, t2
	li s6, 0x698
	rolw s7, s9, s6
	li a3, 0x31f
	rolw a0, s7, a3
	li s3, 0x147
	rolw s5, a0, s3
	li s11, 0x57a
	rolw s3, s5, s11
	li a2, 0x2b6
	rolw s11, s3, a2
	li s5, 0x5e6
	rolw a7, s11, s5
	li a1, 0x1bd
	rolw s3, a7, a1
	li t1, 0x2f2
	rolw t3, s3, t1
	li a3, 0x57d
	rolw a7, t3, a3
	li s10, 0x738
	rolw s8, a7, s10
	li a1, 0x54a
	rolw t3, s8, a1
	li s2, 0x644
	rolw t1, t3, s2
	li s4, 0xb8
	rolw t4, t1, s4
	li t5, 0x5c3
	rolw t4, t4, t5
	li a7, 0x2b5
	rolw s5, t4, a7
	li s4, 0x175
	rolw s6, s5, s4
	li a7, 0x32f
	rolw a7, s6, a7
	li s7, 0x3a5
	rolw s6, a7, s7
	li a0, 0xa
	rolw s4, s6, a0
	li a3, 0x2aa
	rolw s5, s4, a3
	li s8, 0x1f8
	rolw s0, s5, s8
	li a6, 0x7da
	rolw s5, s0, a6
	li a0, 0x21e
	rolw s11, s5, a0
	li s3, 0x521
	rolw s7, s11, s3
	csrr a7, time
	csrr a2, cycle
	csrr s0, instret
	sub s10, a7, a4
	sub a2, a2, s1
	sub a4, s0, t6
	li t1, 0
	csrr s8, time
	csrr s3, cycle
	csrr s11, instret
	li s10, 0x5d1
	rolw t2, t1, s10
	li a0, 0x54f
	rolw t1, t2, a0
	li t6, 0x55d
	rolw a7, t1, t6
	li s5, 0x338
	rolw a3, a7, s5
	li a7, 0x621
	rolw t5, a3, a7
	li a0, 0x7e5
	rolw a3, t5, a0
	li s2, 0x5f4
	rolw a7, a3, s2
	li t1, 0x9c
	rolw t5, a7, t1
	li s0, 0x154
	rolw s7, t5, s0
	li a1, 0x31b
	rolw a1, s7, a1
	li t2, 0x2d5
	rolw t5, a1, t2
	li t3, 0xbd
	rolw s0, t5, t3
	li t4, 0x32
	rolw t3, s0, t4
	li s1, 0x67a
	rolw s1, t3, s1
	li t1, 0x4c2
	rolw s6, s1, t1
	li s0, 0x3fb
	rolw t1, s6, s0
	li a7, 0x7ef
	rolw a1, t1, a7
	li t1, 0x1d6
	rolw s9, a1, t1
	li t3, 0x8a
	rolw s6, s9, t3
	li a1, 0x36
	rolw t3, s6, a1
	li t1, 0x362
	rolw t4, t3, t1
	li t5, 0xa
	rolw s0, t4, t5
	li a7, 0xb0
	rolw s5, s0, a7
	li a7, 0x741
	rolw s9, s5, a7
	li t2, 0x4b9
	rolw t3, s9, t2
	li t2, 0x521
	rolw a7, t3, t2
	li s0, 0x7e2
	rolw s0, a7, s0
	li a0, 0x714
	rolw s9, s0, a0
	li s0, 0x36c
	rolw s5, s9, s0
	li s9, 0x691
	rolw s2, s5, s9
	li a0, 0x67a
	rolw a1, s2, a0
	li t1, 0x5a5
	rolw s0, a1, t1
	li s9, 0x371
	rolw a1, s0, s9
	li t6, 0x6de
	rolw s2, a1, t6
	li s1, 0x4bb
	rolw s5, s2, s1
	li t2, 0x725
	rolw t2, s5, t2
	li t3, 0x3f7
	rolw s7, t2, t3
	li s4, 0x30b
	rolw s2, s7, s4
	li s0, 0x75d
	rolw t1, s2, s0
	li t6, 0x6d1
	rolw t5, t1, t6
	li s2, 0x2b9
	rolw s7, t5, s2
	li s9, 0x4d7
	rolw a5, s7, s9
	li t3, 0x306
	rolw t3, a5, t3
	li a0, 0x43e
	rolw s2, t3, a0
	li t5, 0x6fa
	rolw t4, s2, t5
	li a7, 0x340
	rolw s6, t4, a7
	li t6, 0x635
	rolw a1, s6, t6
	li a5, 0x70a
	rolw a1, a1, a5
	li s6, 0x5ba
	rolw s9, a1, s6
	li a5, 0x4e5
	rolw s1, s9, a5
	li s7, 0x1fb
	rolw s2, s1, s7
	li t2, 0x5ab
	rolw s1, s2, t2
	li a7, 0x227
	rolw s0, s1, a7
	li a1, 0x30
	rolw s4, s0, a1
	li a0, 0x479
	rolw s9, s4, a0
	li a0, 0x4c9
	rolw s10, s9, a0
	li a5, 0x27f
	rolw t2, s10, a5
	li s9, 0x485
	rolw a6, t2, s9
	li a7, 0xb0
	rolw s0, a6, a7
	li a7, 0x4dd
	rolw a7, s0, a7
	li s0, 0x290
	rolw a1, a7, s0
	li s6, 0x57a
	rolw a1, a1, s6
	li t6, 0x2a1
	rolw a6, a1, t6
	li s1, 0x23e
	rolw t5, a6, s1
	li a6, 0x17d
	rolw a3, t5, a6
	li a0, 0x7c1
	rolw s4, a3, a0
	li a0, 0x626
	rolw s10, s4, a0
	li a5, 0x6b
	rolw t6, s10, a5
	li a5, 0x68c
	rolw t3, t6, a5
	li t6, 0x51d
	rolw s5, t3, t6
	li s0, 0xdb
	rolw s0, s5, s0
	li s7, 0x46d
	rolw a0, s0, s7
	li t4, 0x775
	rolw t6, a0, t4
	li s0, 0x498
	rolw a1, t6, s0
	li t2, 0x30
	rolw t4, a1, t2
	li t3, 0x236
	rolw a1, t4, t3
	li s4, 0x2f8
	rolw s5, a1, s4
	li s9, 0x1d4
	rolw a6, s5, s9
	li s5, 0x285
	rolw s2, a6, s5
	li t5, 0xe3
	rolw s2, s2, t5
	li t2, 0x3c6
	rolw a1, s2, t2
	li s1, 0x78d
	rolw t5, a1, s1
	li a6, 0x600
	rolw a3, t5, a6
	li a5, 0x1c8
	rolw a0, a3, a5
	li t5, 0x78d
	rolw t1, a0, t5
	li a1, 0x2fe
	rolw t2, t1, a1
	li a5, 0x104
	rolw t6, t2, a5
	li a0, 0x42a
	rolw a5, t6, a0
	li s7, 0x3f9
	rolw a5, a5, s7
	li s1, 0x41b
	rolw s9, a5, s1
	li a5, 0x709
	rolw s0, s9, a5
	li s7, 0x2bb
	rolw s6, s0, s7
	li a3, 0x103
	rolw t3, s6, a3
	li s1, 0x6e8
	rolw s0, t3, s1
	li s5, 0x7c0
	rolw s10, s0, s5
	li t6, 0x3f3
	rolw s5, s10, t6
	li t3, 0x71a
	rolw s10, s5, t3
	li t1, 0x5d7
	rolw s1, s10, t1
	li a7, 0x27d
	rolw s9, s1, a7
	li s4, 0x373
	rolw a1, s9, s4
	csrr t4, time
	csrr s0, cycle
	csrr t1, instret
	sub s8, t4, s8
	sub a5, s0, s3
	sub a0, t1, s11
	beq a2, a5, pass_label_86
	li a6, failed_addr
	ld t6, 0(a6)
	jr t6
pass_label_86:
	beq a4, a0, pass_label_87
	li t2, failed_addr
	ld s5, 0(t2)
	jr s5
pass_label_87:
SID_ZKT_08_ROLW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_RORIW)
SID_ZKT_08_RORIW:
	li sp, SID_ZKT_08_RORIW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a7, 0
	csrr a3, time
	csrr a6, cycle
	csrr t4, instret
	roriw t3, a7, 0x8
	roriw s6, t3, 0x7
	roriw a2, s6, 0xd
	roriw a2, a2, 0x12
	roriw a5, a2, 0x14
	roriw a5, a5, 0x13
	roriw a5, a5, 0xe
	roriw s4, a5, 0x11
	roriw s9, s4, 0x13
	roriw s9, s9, 0x11
	roriw s4, s9, 0xa
	roriw a0, s4, 0x16
	roriw a0, a0, 0xd
	roriw t3, a0, 0x12
	roriw s6, t3, 0x14
	roriw s8, s6, 0x14
	roriw t3, s8, 0xf
	roriw a0, t3, 0xb
	roriw s7, a0, 0x7
	roriw s11, s7, 0x19
	roriw a4, s11, 0x16
	roriw a0, a4, 0x11
	roriw s10, a0, 0x18
	roriw t6, s10, 0x1e
	roriw s4, t6, 0xb
	roriw s2, s4, 0x1e
	roriw s11, s2, 0x14
	roriw s11, s11, 0xe
	roriw s0, s11, 0x16
	roriw s1, s0, 0x13
	roriw s4, s1, 0xb
	roriw s3, s4, 0x13
	roriw t1, s3, 0xe
	roriw a1, t1, 0x1a
	roriw t6, a1, 0x10
	roriw s7, t6, 0x7
	roriw t6, s7, 0x1b
	roriw s8, t6, 0x16
	roriw a2, s8, 0x1d
	roriw t3, a2, 0x13
	roriw a1, t3, 0x4
	roriw t5, a1, 0xc
	roriw t1, t5, 0x11
	roriw s9, t1, 0x4
	roriw s2, s9, 0x1f
	roriw s5, s2, 0x11
	roriw s6, s5, 0x15
	roriw a5, s6, 0x5
	roriw s7, a5, 0x1f
	roriw s4, s7, 0x7
	roriw s6, s4, 0x14
	roriw s5, s6, 0x8
	roriw t1, s5, 0x1c
	roriw s4, t1, 0x18
	roriw a1, s4, 0x7
	roriw a0, a1, 0xf
	roriw a7, a0, 0x18
	roriw t3, a7, 0xa
	roriw t1, t3, 0x14
	roriw s0, t1, 0xf
	roriw a0, s0, 0x16
	roriw s6, a0, 0xa
	roriw s9, s6, 0xc
	roriw a5, s9, 0x17
	roriw a0, a5, 0x17
	roriw a1, a0, 0x1a
	roriw t2, a1, 0x14
	roriw t2, t2, 0xa
	roriw a0, t2, 0x8
	roriw s7, a0, 0x19
	roriw a0, s7, 0x7
	roriw s4, a0, 0x1f
	roriw t5, s4, 0x16
	roriw s9, t5, 0x14
	roriw s8, s9, 0x10
	roriw s5, s8, 0x4
	roriw t6, s5, 0x1c
	roriw t1, t6, 0xf
	roriw a0, t1, 0x1e
	roriw s10, a0, 0x1a
	roriw s6, s10, 0x3
	roriw s3, s6, 0x9
	roriw t3, s3, 0x14
	roriw s8, t3, 0x12
	roriw t6, s8, 0xb
	roriw s11, t6, 0x6
	roriw a2, s11, 0xe
	roriw a1, a2, 0x16
	roriw s4, a1, 0x15
	roriw s10, s4, 0x8
	roriw t5, s10, 0x17
	roriw s7, t5, 0x1c
	roriw s1, s7, 0xb
	roriw s11, s1, 0x8
	roriw s9, s11, 0x14
	roriw s0, s9, 0x1f
	roriw a7, s0, 0x1a
	roriw t5, a7, 0x8
	roriw s11, t5, 0x18
	roriw s11, s11, 0x1a
	csrr s4, time
	csrr a1, cycle
	csrr t3, instret
	sub a5, s4, a3
	sub t2, a1, a6
	sub s0, t3, t4
	li s7, 0
	csrr t3, time
	csrr a4, cycle
	csrr s9, instret
	roriw t6, s7, 0x1f
	roriw t2, t6, 0xc
	roriw a7, t2, 0x14
	roriw t5, a7, 0x19
	roriw a7, t5, 0x1a
	roriw s4, a7, 0x13
	roriw s4, s4, 0x12
	roriw a0, s4, 0xc
	roriw a7, a0, 0xc
	roriw s10, a7, 0x9
	roriw a3, s10, 0xe
	roriw a1, a3, 0x15
	roriw s6, a1, 0x13
	roriw s2, s6, 0x12
	roriw a3, s2, 0xb
	roriw s1, a3, 0x1c
	roriw a0, s1, 0x13
	roriw a2, a0, 0x1c
	roriw a0, a2, 0x17
	roriw t2, a0, 0x19
	roriw s10, t2, 0xb
	roriw a3, s10, 0x1d
	roriw s1, a3, 0x8
	roriw s1, s1, 0x8
	roriw a5, s1, 0x11
	roriw t5, a5, 0x8
	roriw a2, t5, 0x1d
	roriw a0, a2, 0x9
	roriw s2, a0, 0x8
	roriw s6, s2, 0x18
	roriw s10, s6, 0x7
	roriw t6, s10, 0x9
	roriw a6, t6, 0x4
	roriw s1, a6, 0x7
	roriw t4, s1, 0x18
	roriw t5, t4, 0x12
	roriw t2, t5, 0x11
	roriw a5, t2, 0x1d
	roriw s11, a5, 0x1b
	roriw a2, s11, 0x5
	roriw s0, a2, 0xf
	roriw s5, s0, 0x14
	roriw s7, s5, 0x1f
	roriw s1, s7, 0x15
	roriw s10, s1, 0x19
	roriw s10, s10, 0x4
	roriw t1, s10, 0x16
	roriw a2, t1, 0x3
	roriw s1, a2, 0x11
	roriw s11, s1, 0x16
	roriw a5, s11, 0x11
	roriw s6, a5, 0x6
	roriw a0, s6, 0x1c
	roriw s2, a0, 0x18
	roriw s3, s2, 0x11
	roriw a6, s3, 0x1a
	roriw s5, a6, 0x10
	roriw s6, s5, 0x15
	roriw s2, s6, 0x11
	roriw s11, s2, 0xd
	roriw a0, s11, 0xd
	roriw t5, a0, 0x4
	roriw s4, t5, 0x1b
	roriw s7, s4, 0x1f
	roriw s10, s7, 0x6
	roriw s3, s10, 0x1a
	roriw s8, s3, 0x1c
	roriw t4, s8, 0x5
	roriw s5, t4, 0xb
	roriw t5, s5, 0x16
	roriw s5, t5, 0x1c
	roriw t5, s5, 0x1c
	roriw s11, t5, 0xe
	roriw t2, s11, 0x4
	roriw t4, t2, 0x15
	roriw s3, t4, 0x1b
	roriw s3, s3, 0xc
	roriw s4, s3, 0xb
	roriw t4, s4, 0xa
	roriw a7, t4, 0xe
	roriw s1, a7, 0xa
	roriw s2, s1, 0xf
	roriw s10, s2, 0x9
	roriw s11, s10, 0x1d
	roriw a7, s11, 0x8
	roriw t4, a7, 0x6
	roriw t4, t4, 0x4
	roriw s6, t4, 0x17
	roriw a1, s6, 0x18
	roriw a5, a1, 0x11
	roriw t4, a5, 0x8
	roriw t5, t4, 0x3
	roriw a2, t5, 0x7
	roriw a0, a2, 0x19
	roriw a2, a0, 0x1a
	roriw a5, a2, 0x3
	roriw t5, a5, 0x19
	roriw s4, t5, 0x1c
	roriw s5, s4, 0x12
	roriw s3, s5, 0x18
	csrr a5, time
	csrr s10, cycle
	csrr s2, instret
	sub a1, a5, t3
	sub a4, s10, a4
	sub s4, s2, s9
	li s11, 0
	csrr s1, time
	csrr a3, cycle
	csrr s3, instret
	roriw s11, s11, 0x1d
	roriw a2, s11, 0x14
	roriw a7, a2, 0x3
	roriw t4, a7, 0x4
	roriw s8, t4, 0x11
	roriw s10, s8, 0x13
	roriw t4, s10, 0x1d
	roriw t3, t4, 0x1a
	roriw a5, t3, 0x14
	roriw s2, a5, 0xa
	roriw t2, s2, 0xa
	roriw a2, t2, 0xb
	roriw s5, a2, 0x1b
	roriw a1, s5, 0xd
	roriw s9, a1, 0x10
	roriw s10, s9, 0x13
	roriw a7, s10, 0xa
	roriw s7, a7, 0x3
	roriw s5, s7, 0xd
	roriw s10, s5, 0x1f
	roriw s10, s10, 0x14
	roriw s7, s10, 0x11
	roriw t3, s7, 0xc
	roriw s2, t3, 0x10
	roriw a6, s2, 0xa
	roriw t1, a6, 0xc
	roriw a5, t1, 0x9
	roriw a5, a5, 0xf
	roriw a5, a5, 0x1f
	roriw s8, a5, 0x8
	roriw s7, s8, 0x1c
	roriw s8, s7, 0x9
	roriw s8, s8, 0x3
	roriw t4, s8, 0x6
	roriw s10, t4, 0x5
	roriw s10, s10, 0x1d
	roriw a6, s10, 0xc
	roriw t3, a6, 0x10
	roriw a5, t3, 0x1a
	roriw s2, a5, 0x8
	roriw t6, s2, 0x10
	roriw a6, t6, 0x10
	roriw a1, a6, 0x9
	roriw s0, a1, 0x8
	roriw s10, s0, 0x13
	roriw s0, s10, 0x13
	roriw s2, s0, 0x10
	roriw t3, s2, 0x10
	roriw t6, t3, 0x16
	roriw t1, t6, 0x1c
	roriw s10, t1, 0xc
	roriw s8, s10, 0x1f
	roriw t4, s8, 0x15
	roriw s2, t4, 0x15
	roriw s9, s2, 0xe
	roriw t6, s9, 0x5
	roriw a0, t6, 0x9
	roriw s6, a0, 0xf
	roriw t5, s6, 0x16
	roriw a6, t5, 0x11
	roriw a6, a6, 0x1a
	roriw t6, a6, 0x9
	roriw t2, t6, 0x13
	roriw a5, t2, 0x1a
	roriw t3, a5, 0x5
	roriw s5, t3, 0x18
	roriw t1, s5, 0xd
	roriw a1, t1, 0x19
	roriw s9, a1, 0x9
	roriw a1, s9, 0x1f
	roriw t5, a1, 0xe
	roriw a6, t5, 0x1f
	roriw t6, a6, 0x18
	roriw s9, t6, 0x4
	roriw t4, s9, 0x11
	roriw a1, t4, 0x18
	roriw a5, a1, 0x1f
	roriw s8, a5, 0xd
	roriw s10, s8, 0x5
	roriw a0, s10, 0x18
	roriw s5, a0, 0x4
	roriw t2, s5, 0x12
	roriw s0, t2, 0x16
	roriw a2, s0, 0xc
	roriw a0, a2, 0xd
	roriw t4, a0, 0x14
	roriw t6, t4, 0x1e
	roriw t6, t6, 0x1d
	roriw t6, t6, 0x4
	roriw s2, t6, 0x15
	roriw t3, s2, 0x6
	roriw s7, t3, 0xe
	roriw s0, s7, 0x10
	roriw a1, s0, 0x14
	roriw s2, a1, 0x16
	roriw s8, s2, 0x1f
	roriw s0, s8, 0x13
	roriw s6, s0, 0x13
	roriw s11, s6, 0x1d
	roriw a7, s11, 0x19
	csrr s8, time
	csrr s5, cycle
	csrr a6, instret
	sub a7, s8, s1
	sub s1, s5, a3
	sub s0, a6, s3
	beq a4, s1, pass_label_88
	li s9, failed_addr
	ld t3, 0(s9)
	jr t3
pass_label_88:
	beq s4, s0, pass_label_89
	li s11, failed_addr
	ld a0, 0(s11)
	jr a0
pass_label_89:
SID_ZKT_08_RORIW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_ANDN)
SID_ZKT_08_ANDN:
	li sp, SID_ZKT_08_ANDN_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s4, 0
	csrr t6, time
	csrr a3, cycle
	csrr s6, instret
	li s11, 0x7fc
	andn a6, s4, s11
	li s7, 0x4c5
	andn a1, a6, s7
	li s1, 0x1d8
	andn s0, a1, s1
	li t1, 0x245
	andn a0, s0, t1
	li s8, 0x5de
	andn s11, a0, s8
	li a7, 0x7b6
	andn s7, s11, a7
	li s4, 0x7b3
	andn t4, s7, s4
	li s9, 0x14a
	andn a4, t4, s9
	li a5, 0x760
	andn s1, a4, a5
	li a2, 0x8f
	andn a7, s1, a2
	li s0, 0x40b
	andn s2, a7, s0
	li a4, 0x4ce
	andn s10, s2, a4
	li t3, 0x49d
	andn t1, s10, t3
	li a5, 0x518
	andn s1, t1, a5
	li a0, 0x574
	andn a7, s1, a0
	li t4, 0x466
	andn s5, a7, t4
	li s3, 0x2f9
	andn s5, s5, s3
	li t5, 0x7ce
	andn a7, s5, t5
	li t1, 0xa2
	andn t5, a7, t1
	li a5, 0xc8
	andn s3, t5, a5
	li s8, 0x39f
	andn s0, s3, s8
	li a6, 0x66d
	andn t3, s0, a6
	li s7, 0x24f
	andn t2, t3, s7
	li a0, 0x6db
	andn t2, t2, a0
	li a4, 0x675
	andn s1, t2, a4
	li a0, 0x3f3
	andn s1, s1, a0
	li a2, 0x648
	andn t4, s1, a2
	li s8, 0x2c6
	andn s8, t4, s8
	li s2, 0x2ed
	andn s2, s8, s2
	li a7, 0x3c1
	andn s7, s2, a7
	li s3, 0x124
	andn s0, s7, s3
	li t2, 0x25a
	andn a2, s0, t2
	li s3, 0x4e3
	andn s2, a2, s3
	li a1, 0x3d6
	andn a2, s2, a1
	li s5, 0x35d
	andn s9, a2, s5
	li s8, 0x49a
	andn s2, s9, s8
	li a7, 0x42b
	andn t3, s2, a7
	li s0, 0x56d
	andn t3, t3, s0
	li a7, 0x771
	andn s1, t3, a7
	li t5, 0x6e9
	andn t3, s1, t5
	li s11, 0x182
	andn s10, t3, s11
	li s9, 0x583
	andn s11, s10, s9
	li a5, 0xdc
	andn a2, s11, a5
	li s5, 0x626
	andn a7, a2, s5
	li s2, 0x3d9
	andn s1, a7, s2
	li s7, 0x37a
	andn t2, s1, s7
	li s9, 0xfa
	andn t4, t2, s9
	li a6, 0x646
	andn a1, t4, a6
	li a6, 0x4b7
	andn a5, a1, a6
	li s9, 0x7ee
	andn s4, a5, s9
	li a4, 0x223
	andn t1, s4, a4
	li a4, 0x6c8
	andn a0, t1, a4
	li s1, 0x662
	andn s4, a0, s1
	li t1, 0x5ca
	andn a5, s4, t1
	li s8, 0x6c7
	andn t4, a5, s8
	li a6, 0x5d4
	andn t1, t4, a6
	li s1, 0x1a9
	andn a1, t1, s1
	li t4, 0x7f8
	andn a5, a1, t4
	li a4, 0x73e
	andn s4, a5, a4
	li s11, 0x2e1
	andn s0, s4, s11
	li a2, 0x27c
	andn s3, s0, a2
	li a2, 0x634
	andn s3, s3, a2
	li s8, 0x4dc
	andn a1, s3, s8
	li s7, 0x667
	andn s7, a1, s7
	li a7, 0x242
	andn a1, s7, a7
	li s11, 0x4dc
	andn s9, a1, s11
	li s4, 0x3dc
	andn a6, s9, s4
	li a0, 0x16f
	andn t2, a6, a0
	li s3, 0x276
	andn s3, t2, s3
	li s9, 0x5
	andn t2, s3, s9
	li a0, 0x38a
	andn s4, t2, a0
	li t2, 0x68b
	andn t5, s4, t2
	li s10, 0x23f
	andn s1, t5, s10
	li t5, 0x7b8
	andn t4, s1, t5
	li s3, 0x31f
	andn s5, t4, s3
	li s3, 0x4bc
	andn a1, s5, s3
	li s0, 0x179
	andn a2, a1, s0
	li t2, 0x7de
	andn s1, a2, t2
	li t4, 0x3bf
	andn t3, s1, t4
	li a6, 0x3f6
	andn a7, t3, a6
	li s0, 0x66e
	andn s3, a7, s0
	li s1, 0x12d
	andn s9, s3, s1
	li s1, 0x58f
	andn t5, s9, s1
	li a0, 0x22a
	andn s5, t5, a0
	li a4, 0x7f9
	andn a1, s5, a4
	li s11, 0x13c
	andn s2, a1, s11
	li s3, 0xb4
	andn t1, s2, s3
	li s10, 0x37e
	andn t5, t1, s10
	li a2, 0x3df
	andn a0, t5, a2
	li t4, 0x7f9
	andn s11, a0, t4
	li s10, 0x10f
	andn s0, s11, s10
	li s5, 0x571
	andn s0, s0, s5
	li t4, 0x7d0
	andn s7, s0, t4
	li t1, 0x46f
	andn s10, s7, t1
	li t4, 0x685
	andn s5, s10, t4
	li s2, 0x74e
	andn s7, s5, s2
	li a7, 0x26f
	andn s1, s7, a7
	li s0, 0x4b1
	andn s7, s1, s0
	li s1, 0x5cf
	andn a5, s7, s1
	li s10, 0x261
	andn a7, a5, s10
	csrr a0, time
	csrr t1, cycle
	csrr a2, instret
	sub a4, a0, t6
	sub s9, t1, a3
	sub a7, a2, s6
	li a6, 0
	csrr t3, time
	csrr s6, cycle
	csrr a7, instret
	li s8, 0x5df
	andn t2, a6, s8
	li s3, 0x65b
	andn s10, t2, s3
	li a0, 0x7f3
	andn s0, s10, a0
	li s3, 0x2f0
	andn t1, s0, s3
	li s1, 0x31e
	andn t6, t1, s1
	li t4, 0x9b
	andn a4, t6, t4
	li s0, 0x3b
	andn s11, a4, s0
	li a2, 0x20f
	andn a6, s11, a2
	li s11, 0x2c1
	andn a5, a6, s11
	li s0, 0x5d
	andn s11, a5, s0
	li s9, 0x7cb
	andn s9, s11, s9
	li a5, 0x334
	andn s10, s9, a5
	li t2, 0x473
	andn a0, s10, t2
	li a5, 0x775
	andn t4, a0, a5
	li t5, 0x7b5
	andn a3, t4, t5
	li s1, 0x234
	andn a4, a3, s1
	li a6, 0x6dc
	andn t6, a4, a6
	li s10, 0x6e6
	andn t1, t6, s10
	li s8, 0x376
	andn a4, t1, s8
	li a1, 0x149
	andn s10, a4, a1
	li a0, 0x32a
	andn s10, s10, a0
	li s1, 0x16
	andn s10, s10, s1
	li a4, 0x284
	andn a6, s10, a4
	li s3, 0x4f1
	andn t1, a6, s3
	li s0, 0x593
	andn s7, t1, s0
	li a3, 0x5f3
	andn s0, s7, a3
	li s3, 0x47c
	andn s5, s0, s3
	li a6, 0x4ee
	andn a5, s5, a6
	li s5, 0x663
	andn s3, a5, s5
	li s0, 0x366
	andn s3, s3, s0
	li s2, 0x51e
	andn s11, s3, s2
	li t4, 0x713
	andn s8, s11, t4
	li t2, 0x730
	andn s8, s8, t2
	li s0, 0x6d8
	andn a2, s8, s0
	li t6, 0x509
	andn s7, a2, t6
	li t1, 0x4bc
	andn s5, s7, t1
	li t4, 0xb2
	andn s7, s5, t4
	li s8, 0x2ac
	andn a5, s7, s8
	li a3, 0x3bd
	andn s11, a5, a3
	li a1, 0x752
	andn t5, s11, a1
	li s0, 0x45d
	andn s7, t5, s0
	li s4, 0x2ab
	andn s9, s7, s4
	li s2, 0x3f2
	andn s4, s9, s2
	li a1, 0x1ee
	andn s10, s4, a1
	li t2, 0x79f
	andn t4, s10, t2
	li s4, 0x39e
	andn a3, t4, s4
	li a2, 0x625
	andn a3, a3, a2
	li s10, 0x19f
	andn s2, a3, s10
	li t5, 0x489
	andn s4, s2, t5
	li s5, 0x179
	andn s8, s4, s5
	li s11, 0x34c
	andn s3, s8, s11
	li s5, 0xfd
	andn a4, s3, s5
	li s10, 0x41e
	andn a0, a4, s10
	li a2, 0x4f9
	andn s7, a0, a2
	li s11, 0x594
	andn s11, s7, s11
	li a4, 0x100
	andn a1, s11, a4
	li a6, 0x20d
	andn a4, a1, a6
	li t1, 0x3c9
	andn a5, a4, t1
	li s4, 0x463
	andn s8, a5, s4
	li a5, 0x8d
	andn t4, s8, a5
	li s5, 0x1ae
	andn t6, t4, s5
	li s11, 0x3ec
	andn s10, t6, s11
	li a4, 0x33c
	andn a0, s10, a4
	li t5, 0x44e
	andn t5, a0, t5
	li s4, 0x3da
	andn a3, t5, s4
	li t2, 0x10a
	andn s9, a3, t2
	li a1, 0x4a0
	andn s8, s9, a1
	li a6, 0x21c
	andn s8, s8, a6
	li t2, 0x2c3
	andn s1, s8, t2
	li s8, 0x7c5
	andn s5, s1, s8
	li t6, 0x632
	andn t5, s5, t6
	li s5, 0x33b
	andn s9, t5, s5
	li s3, 0x4c3
	andn t5, s9, s3
	li s8, 0x515
	andn s10, t5, s8
	li s9, 0x423
	andn s0, s10, s9
	li t4, 0x34f
	andn s10, s0, t4
	li t1, 0xe
	andn s2, s10, t1
	li a4, 0x21c
	andn a5, s2, a4
	li t2, 0x686
	andn a1, a5, t2
	li a2, 0x369
	andn t1, a1, a2
	li s3, 0x20c
	andn s9, t1, s3
	li t2, 0x17f
	andn s9, s9, t2
	li a1, 0x1d3
	andn s0, s9, a1
	li s7, 0x303
	andn s8, s0, s7
	li s2, 0x178
	andn s5, s8, s2
	li a2, 0x455
	andn t4, s5, a2
	li s11, 0x413
	andn s5, t4, s11
	li t1, 0x7a0
	andn a3, s5, t1
	li t4, 0x237
	andn a0, a3, t4
	li s2, 0x95
	andn s5, a0, s2
	li s7, 0x318
	andn s2, s5, s7
	li t1, 0x77e
	andn a0, s2, t1
	li t5, 0x2e2
	andn a2, a0, t5
	li s0, 0x481
	andn t2, a2, s0
	li s1, 0x259
	andn t1, t2, s1
	li a1, 0x62c
	andn t5, t1, a1
	li a3, 0x5ea
	andn s2, t5, a3
	li t5, 0x7b6
	andn t4, s2, t5
	li a1, 0x56b
	andn t5, t4, a1
	li s0, 0x167
	andn t6, t5, s0
	csrr s11, time
	csrr a6, cycle
	csrr s3, instret
	sub t3, s11, t3
	sub s7, a6, s6
	sub t5, s3, a7
	li a7, 0
	csrr s4, time
	csrr t6, cycle
	csrr a2, instret
	li a4, 0x19d
	andn s10, a7, a4
	li t3, 0x337
	andn s10, s10, t3
	li s3, 0x68
	andn s1, s10, s3
	li s2, 0x7c8
	andn a6, s1, s2
	li s9, 0x378
	andn s9, a6, s9
	li a6, 0x34d
	andn a1, s9, a6
	li a0, 0xac
	andn s0, a1, a0
	li t4, 0x737
	andn s5, s0, t4
	li a7, 0x4f3
	andn s6, s5, a7
	li a7, 0x27b
	andn s5, s6, a7
	li a1, 0x14d
	andn s9, s5, a1
	li s11, 0x372
	andn t3, s9, s11
	li a7, 0xe5
	andn s1, t3, a7
	li s11, 0x22
	andn a4, s1, s11
	li s9, 0x7e8
	andn t1, a4, s9
	li a4, 0x2ff
	andn s1, t1, a4
	li s6, 0x95
	andn a5, s1, s6
	li t3, 0x7d
	andn a1, a5, t3
	li a6, 0x569
	andn s3, a1, a6
	li t4, 0x1b5
	andn a7, s3, t4
	li t2, 0x3f
	andn t1, a7, t2
	li s1, 0x207
	andn s1, t1, s1
	li a1, 0x8f
	andn s10, s1, a1
	li a4, 0x44d
	andn s1, s10, a4
	li t2, 0x2b5
	andn s5, s1, t2
	li s0, 0x554
	andn s1, s5, s0
	li s8, 0x31
	andn a6, s1, s8
	li s8, 0x106
	andn a4, a6, s8
	li s2, 0x4e5
	andn a4, a4, s2
	li s10, 0x412
	andn s0, a4, s10
	li t3, 0x755
	andn s1, s0, t3
	li a7, 0x18a
	andn s6, s1, a7
	li a0, 0x46d
	andn s11, s6, a0
	li t2, 0x5a3
	andn s3, s11, t2
	li a7, 0x3d
	andn a1, s3, a7
	li t2, 0x193
	andn s1, a1, t2
	li s3, 0x60a
	andn s6, s1, s3
	li a3, 0x1e4
	andn s9, s6, a3
	li t4, 0x577
	andn t3, s9, t4
	li a5, 0x654
	andn s3, t3, a5
	li t4, 0x6dd
	andn s0, s3, t4
	li t1, 0x344
	andn t3, s0, t1
	li t1, 0x3ae
	andn s5, t3, t1
	li t1, 0x634
	andn t4, s5, t1
	li a6, 0x6a9
	andn s2, t4, a6
	li s11, 0x430
	andn t1, s2, s11
	li s0, 0x43c
	andn a4, t1, s0
	li t3, 0x72c
	andn s1, a4, t3
	li t3, 0x473
	andn t2, s1, t3
	li s1, 0x72b
	andn s1, t2, s1
	li s3, 0x47f
	andn s6, s1, s3
	li s1, 0x6e8
	andn a6, s6, s1
	li a1, 0x39b
	andn a1, a6, a1
	li s3, 0x741
	andn t2, a1, s3
	li s3, 0x2a9
	andn a5, t2, s3
	li t4, 0x328
	andn s9, a5, t4
	li a6, 0xf0
	andn t3, s9, a6
	li t2, 0x5af
	andn t2, t3, t2
	li s8, 0x4ee
	andn s0, t2, s8
	li t1, 0x282
	andn s10, s0, t1
	li s1, 0x3d6
	andn s1, s10, s1
	li a5, 0x654
	andn s0, s1, a5
	li s1, 0x30
	andn s11, s0, s1
	li a6, 0xdf
	andn t1, s11, a6
	li a1, 0x300
	andn s3, t1, a1
	li t4, 0x4b6
	andn s6, s3, t4
	li a5, 0x742
	andn s9, s6, a5
	li s10, 0x206
	andn t2, s9, s10
	li a1, 0x36d
	andn a0, t2, a1
	li s5, 0x737
	andn a4, a0, s5
	li s2, 0x364
	andn s11, a4, s2
	li t3, 0x78d
	andn t2, s11, t3
	li s11, 0x725
	andn a4, t2, s11
	li a0, 0x28f
	andn t1, a4, a0
	li s9, 0x380
	andn a4, t1, s9
	li a0, 0x78a
	andn t4, a4, a0
	li t1, 0x3ec
	andn a1, t4, t1
	li s2, 0xe5
	andn t2, a1, s2
	li a0, 0x3f8
	andn a3, t2, a0
	li t2, 0x740
	andn s2, a3, t2
	li s0, 0x58b
	andn s6, s2, s0
	li s2, 0x5f6
	andn t1, s6, s2
	li s3, 0x5f2
	andn a0, t1, s3
	li s1, 0x6d3
	andn s2, a0, s1
	li a5, 0x6f4
	andn a0, s2, a5
	li a7, 0x763
	andn s11, a0, a7
	li s9, 0x652
	andn s11, s11, s9
	li a3, 0x31d
	andn t3, s11, a3
	li a0, 0x717
	andn s10, t3, a0
	li s8, 0x4b5
	andn s5, s10, s8
	li s10, 0x399
	andn t2, s5, s10
	li s11, 0x319
	andn s10, t2, s11
	li a6, 0x5af
	andn s0, s10, a6
	li a7, 0x400
	andn s10, s0, a7
	li s2, 0xe8
	andn s0, s10, s2
	li a0, 0x1a4
	andn s11, s0, a0
	li s2, 0x5bf
	andn s6, s11, s2
	li s9, 0x29f
	andn s10, s6, s9
	li t2, 0x417
	andn t2, s10, t2
	li s5, 0x34f
	andn s11, t2, s5
	csrr s6, time
	csrr a1, cycle
	csrr s8, instret
	sub s4, s6, s4
	sub s0, a1, t6
	sub s11, s8, a2
	beq s7, s0, pass_label_90
	li s8, failed_addr
	ld s0, 0(s8)
	jr s0
pass_label_90:
	beq t5, s11, pass_label_91
	li a5, failed_addr
	ld a5, 0(a5)
	jr a5
pass_label_91:
SID_ZKT_08_ANDN_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_ORN)
SID_ZKT_08_ORN:
	li sp, SID_ZKT_08_ORN_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s0, 0
	csrr a0, time
	csrr s10, cycle
	csrr a7, instret
	li t4, 0xa
	orn s8, s0, t4
	li t3, 0x511
	orn t2, s8, t3
	li s7, 0x486
	orn a2, t2, s7
	li t2, 0x3e5
	orn a5, a2, t2
	li s11, 0x31a
	orn t2, a5, s11
	li s9, 0x40
	orn t1, t2, s9
	li t3, 0x52f
	orn s5, t1, t3
	li t5, 0x547
	orn t6, s5, t5
	li s7, 0x62
	orn a4, t6, s7
	li s6, 0xdd
	orn a6, a4, s6
	li t1, 0x61d
	orn s0, a6, t1
	li t1, 0x4e1
	orn a2, s0, t1
	li s1, 0xca
	orn a6, a2, s1
	li a5, 0x338
	orn s5, a6, a5
	li s3, 0x73f
	orn t2, s5, s3
	li t1, 0x1f4
	orn s11, t2, t1
	li a6, 0x306
	orn a4, s11, a6
	li a1, 0x37e
	orn t1, a4, a1
	li t3, 0x52a
	orn s7, t1, t3
	li s9, 0x1bf
	orn s7, s7, s9
	li s4, 0x3c4
	orn s8, s7, s4
	li a1, 0x24b
	orn s0, s8, a1
	li s1, 0x6a6
	orn a6, s0, s1
	li t3, 0x121
	orn s7, a6, t3
	li t3, 0x1fe
	orn s6, s7, t3
	li s11, 0x2ee
	orn s11, s6, s11
	li a6, 0x37e
	orn s4, s11, a6
	li t2, 0x314
	orn a2, s4, t2
	li a4, 0x68c
	orn t1, a2, a4
	li s9, 0x43c
	orn a2, t1, s9
	li a5, 0x558
	orn t6, a2, a5
	li s3, 0x1df
	orn t2, t6, s3
	li s8, 0x104
	orn t4, t2, s8
	li t6, 0x7e7
	orn s5, t4, t6
	li a5, 0x363
	orn s5, s5, a5
	li s8, 0x55
	orn t2, s5, s8
	li a3, 0x187
	orn s11, t2, a3
	li s5, 0x206
	orn t1, s11, s5
	li s5, 0x41
	orn s7, t1, s5
	li s2, 0x320
	orn s1, s7, s2
	li s6, 0x180
	orn a4, s1, s6
	li t6, 0x7bd
	orn s11, a4, t6
	li t6, 0x2a5
	orn s8, s11, t6
	li t1, 0x3bc
	orn s0, s8, t1
	li s4, 0x47f
	orn s0, s0, s4
	li a5, 0x3d0
	orn t3, s0, a5
	li s2, 0x7d2
	orn s5, t3, s2
	li s2, 0x1c
	orn s4, s5, s2
	li a6, 0x6be
	orn a3, s4, a6
	li a5, 0xe8
	orn t5, a3, a5
	li s3, 0x25a
	orn t6, t5, s3
	li a1, 0x1bf
	orn s5, t6, a1
	li s6, 0x34e
	orn a2, s5, s6
	li s1, 0x9c
	orn t6, a2, s1
	li s1, 0x1a4
	orn s1, t6, s1
	li a3, 0x10c
	orn a6, s1, a3
	li s1, 0x733
	orn s8, a6, s1
	li t5, 0x243
	orn a3, s8, t5
	li s8, 0xdc
	orn a4, a3, s8
	li s7, 0x6f2
	orn t1, a4, s7
	li s9, 0x351
	orn a3, t1, s9
	li t2, 0x7e7
	orn t3, a3, t2
	li a3, 0x651
	orn s2, t3, a3
	li t1, 0x383
	orn t3, s2, t1
	li t4, 0xa8
	orn s1, t3, t4
	li s6, 0xa2
	orn s6, s1, s6
	li s4, 0x731
	orn s11, s6, s4
	li s2, 0x6a8
	orn s6, s11, s2
	li a1, 0xc9
	orn s8, s6, a1
	li a6, 0x1c3
	orn s2, s8, a6
	li t2, 0x217
	orn a5, s2, t2
	li s5, 0x40
	orn a4, a5, s5
	li t2, 0x40b
	orn s5, a4, t2
	li t4, 0x64c
	orn t6, s5, t4
	li t4, 0x22f
	orn t2, t6, t4
	li t1, 0x4f7
	orn s1, t2, t1
	li t4, 0x6fc
	orn s1, s1, t4
	li t2, 0x6a4
	orn a1, s1, t2
	li s8, 0x10f
	orn a5, a1, s8
	li t2, 0x7fc
	orn a5, a5, t2
	li s9, 0x3dc
	orn s3, a5, s9
	li t2, 0x577
	orn s0, s3, t2
	li a6, 0x7ed
	orn s8, s0, a6
	li a5, 0x22a
	orn s2, s8, a5
	li a6, 0x49f
	orn t3, s2, a6
	li a5, 0x87
	orn t4, t3, a5
	li s7, 0x73c
	orn s3, t4, s7
	li a4, 0x3d8
	orn a1, s3, a4
	li s7, 0x40f
	orn a6, a1, s7
	li s3, 0x6c8
	orn s1, a6, s3
	li s2, 0x2c2
	orn s9, s1, s2
	li t1, 0x1fc
	orn a3, s9, t1
	li a4, 0x49c
	orn t6, a3, a4
	li t5, 0x424
	orn s8, t6, t5
	li t3, 0x3bd
	orn a2, s8, t3
	li t3, 0x77e
	orn t3, a2, t3
	li a2, 0x5
	orn t1, t3, a2
	li s4, 0x647
	orn t4, t1, s4
	li s9, 0x241
	orn s0, t4, s9
	li t5, 0x48c
	orn s5, s0, t5
	csrr s2, time
	csrr s11, cycle
	csrr s8, instret
	sub s6, s2, a0
	sub s5, s11, s10
	sub s11, s8, a7
	li s4, 0
	csrr s5, time
	csrr a7, cycle
	csrr a2, instret
	li s11, 0x5d
	orn s2, s4, s11
	li s0, 0x6c
	orn s2, s2, s0
	li a4, 0x7
	orn t2, s2, a4
	li t5, 0x61c
	orn s9, t2, t5
	li s6, 0x47a
	orn t3, s9, s6
	li a4, 0x744
	orn t6, t3, a4
	li t4, 0x58a
	orn s11, t6, t4
	li s3, 0xa4
	orn t4, s11, s3
	li s1, 0x1f1
	orn s7, t4, s1
	li s9, 0x7b5
	orn t4, s7, s9
	li t3, 0x112
	orn s8, t4, t3
	li t1, 0x7cf
	orn a5, s8, t1
	li a1, 0x385
	orn s9, a5, a1
	li s6, 0x198
	orn s0, s9, s6
	li a5, 0x1df
	orn a1, s0, a5
	li s9, 0x1b1
	orn a3, a1, s9
	li a6, 0xdf
	orn t6, a3, a6
	li s0, 0x3c8
	orn s3, t6, s0
	li s2, 0x179
	orn s8, s3, s2
	li t1, 0x6f3
	orn a4, s8, t1
	li a0, 0x1d1
	orn a3, a4, a0
	li s3, 0x31a
	orn a3, a3, s3
	li s10, 0x24c
	orn s10, a3, s10
	li s1, 0x2a8
	orn s4, s10, s1
	li t3, 0x194
	orn s1, s4, t3
	li s10, 0x670
	orn a3, s1, s10
	li s9, 0x5f6
	orn s0, a3, s9
	li a4, 0x486
	orn t6, s0, a4
	li a3, 0x686
	orn s10, t6, a3
	li s6, 0xb8
	orn t1, s10, s6
	li t6, 0x2a9
	orn t1, t1, t6
	li a1, 0x550
	orn s0, t1, a1
	li a6, 0x239
	orn s0, s0, a6
	li s9, 0x7ef
	orn s3, s0, s9
	li a6, 0x7ab
	orn s4, s3, a6
	li s3, 0x365
	orn s8, s4, s3
	li a3, 0x3b
	orn t5, s8, a3
	li s9, 0x225
	orn a3, t5, s9
	li s11, 0x6a3
	orn t6, a3, s11
	li a4, 0xe2
	orn a0, t6, a4
	li s7, 0x217
	orn s6, a0, s7
	li t1, 0x34b
	orn t2, s6, t1
	li s0, 0x37d
	orn a3, t2, s0
	li a0, 0x42d
	orn t4, a3, a0
	li s1, 0x33d
	orn t6, t4, s1
	li s10, 0x527
	orn s11, t6, s10
	li s8, 0x405
	orn s2, s11, s8
	li s1, 0x467
	orn s4, s2, s1
	li s9, 0x7dc
	orn t4, s4, s9
	li s7, 0x22f
	orn s3, t4, s7
	li s0, 0x1ac
	orn s3, s3, s0
	li s2, 0x4e2
	orn t5, s3, s2
	li t3, 0x553
	orn s7, t5, t3
	li s0, 0x637
	orn a0, s7, s0
	li s9, 0x2f5
	orn a0, a0, s9
	li s0, 0x5ca
	orn s10, a0, s0
	li s7, 0x3e9
	orn t5, s10, s7
	li s9, 0x657
	orn a1, t5, s9
	li s3, 0x56e
	orn s3, a1, s3
	li s9, 0x285
	orn s11, s3, s9
	li a1, 0x282
	orn a3, s11, a1
	li s4, 0x6bd
	orn s2, a3, s4
	li a0, 0x671
	orn s8, s2, a0
	li t3, 0x1a4
	orn t1, s8, t3
	li t2, 0x699
	orn t4, t1, t2
	li a6, 0x29f
	orn a0, t4, a6
	li s6, 0x75
	orn s9, a0, s6
	li t6, 0x719
	orn s6, s9, t6
	li a6, 0x3f
	orn s4, s6, a6
	li s0, 0x368
	orn s1, s4, s0
	li a1, 0x129
	orn s1, s1, a1
	li t5, 0x461
	orn s4, s1, t5
	li s3, 0x1a9
	orn s2, s4, s3
	li s10, 0x329
	orn t5, s2, s10
	li s10, 0x3eb
	orn t2, t5, s10
	li s2, 0x7c2
	orn s1, t2, s2
	li t6, 0x54f
	orn s0, s1, t6
	li s2, 0x2d2
	orn s2, s0, s2
	li s10, 0x32c
	orn a1, s2, s10
	li s9, 0x4a2
	orn t3, a1, s9
	li s10, 0x40
	orn a4, t3, s10
	li a5, 0x5d3
	orn t6, a4, a5
	li s7, 0x469
	orn s10, t6, s7
	li s11, 0x4d2
	orn s1, s10, s11
	li s8, 0x8e
	orn t3, s1, s8
	li a5, 0x284
	orn s1, t3, a5
	li a6, 0x2bb
	orn s1, s1, a6
	li s2, 0x696
	orn a4, s1, s2
	li s9, 0x301
	orn s2, a4, s9
	li t5, 0x5e5
	orn a6, s2, t5
	li s4, 0x32b
	orn a4, a6, s4
	li s11, 0x2a
	orn s7, a4, s11
	li t6, 0x7e0
	orn a6, s7, t6
	li s1, 0x148
	orn s7, a6, s1
	li t1, 0x72f
	orn s6, s7, t1
	li s1, 0x469
	orn s8, s6, s1
	li s3, 0x3ed
	orn t1, s8, s3
	li t6, 0x1a5
	orn t4, t1, t6
	li s0, 0x49b
	orn t5, t4, s0
	li s9, 0x2f6
	orn s3, t5, s9
	csrr t3, time
	csrr s4, cycle
	csrr s0, instret
	sub s8, t3, s5
	sub s8, s4, a7
	sub a1, s0, a2
	li a2, 0
	csrr s3, time
	csrr a6, cycle
	csrr a0, instret
	li a4, 0x487
	orn a5, a2, a4
	li t4, 0x153
	orn t4, a5, t4
	li s11, 0x6f6
	orn a3, t4, s11
	li a7, 0x1b3
	orn t1, a3, a7
	li a2, 0x44e
	orn a7, t1, a2
	li t5, 0x480
	orn s10, a7, t5
	li s7, 0x384
	orn s1, s10, s7
	li s2, 0x586
	orn s6, s1, s2
	li t2, 0x36c
	orn t5, s6, t2
	li t3, 0x33
	orn a2, t5, t3
	li a5, 0x461
	orn a7, a2, a5
	li t3, 0x77c
	orn a4, a7, t3
	li s5, 0x337
	orn t3, a4, s5
	li s7, 0x4d5
	orn s9, t3, s7
	li s11, 0x36
	orn s0, s9, s11
	li a7, 0x5f0
	orn s10, s0, a7
	li t2, 0x4ae
	orn t3, s10, t2
	li t6, 0x5a5
	orn t2, t3, t6
	li t5, 0x128
	orn a5, t2, t5
	li s1, 0x65d
	orn a7, a5, s1
	li t6, 0x4f0
	orn t2, a7, t6
	li t4, 0x77b
	orn t5, t2, t4
	li t6, 0x5a8
	orn t2, t5, t6
	li a2, 0x2f7
	orn a5, t2, a2
	li s9, 0x185
	orn s9, a5, s9
	li t3, 0xef
	orn s7, s9, t3
	li s6, 0x236
	orn a5, s7, s6
	li s2, 0x57e
	orn a7, a5, s2
	li s4, 0x359
	orn t4, a7, s4
	li s4, 0x1fe
	orn s2, t4, s4
	li t4, 0x214
	orn a5, s2, t4
	li t3, 0x4b
	orn s10, a5, t3
	li a4, 0x54f
	orn a4, s10, a4
	li t3, 0xde
	orn t1, a4, t3
	li s2, 0x55f
	orn s4, t1, s2
	li s11, 0x27
	orn s11, s4, s11
	li t4, 0x50b
	orn s9, s11, t4
	li t4, 0x71a
	orn s5, s9, t4
	li a5, 0x2ab
	orn s4, s5, a5
	li s7, 0x582
	orn t1, s4, s7
	li s1, 0x71c
	orn s6, t1, s1
	li s7, 0x6bf
	orn a7, s6, s7
	li s5, 0x406
	orn s6, a7, s5
	li s0, 0x58e
	orn t3, s6, s0
	li s4, 0x361
	orn a7, t3, s4
	li s4, 0x158
	orn s10, a7, s4
	li s9, 0x5e8
	orn t6, s10, s9
	li t1, 0xab
	orn s11, t6, t1
	li s10, 0x442
	orn t2, s11, s10
	li t4, 0x304
	orn s6, t2, t4
	li s10, 0x6c4
	orn t3, s6, s10
	li s11, 0x451
	orn t6, t3, s11
	li a2, 0x68c
	orn s4, t6, a2
	li a5, 0x114
	orn a3, s4, a5
	li t3, 0x15a
	orn t1, a3, t3
	li t2, 0x95
	orn s10, t1, t2
	li s11, 0x7d1
	orn s11, s10, s11
	li a4, 0x148
	orn t2, s11, a4
	li s7, 0x392
	orn t5, t2, s7
	li t2, 0x616
	orn t2, t5, t2
	li a5, 0x1e7
	orn a2, t2, a5
	li t3, 0x64a
	orn a3, a2, t3
	li s9, 0x2ac
	orn t1, a3, s9
	li s0, 0x7fb
	orn t4, t1, s0
	li s7, 0x2d0
	orn s6, t4, s7
	li s0, 0x640
	orn s0, s6, s0
	li s4, 0x28c
	orn s2, s0, s4
	li t1, 0x30f
	orn s0, s2, t1
	li s4, 0x1b4
	orn s5, s0, s4
	li s9, 0x15f
	orn s1, s5, s9
	li t4, 0x77
	orn s11, s1, t4
	li s0, 0x2a7
	orn t5, s11, s0
	li s5, 0x3d6
	orn s7, t5, s5
	li s9, 0x344
	orn a7, s7, s9
	li t2, 0x438
	orn a2, a7, t2
	li s1, 0x506
	orn s7, a2, s1
	li s4, 0x1d1
	orn s11, s7, s4
	li s4, 0x698
	orn s5, s11, s4
	li a2, 0x1c7
	orn s6, s5, a2
	li a2, 0x245
	orn t1, s6, a2
	li s2, 0x82
	orn t3, t1, s2
	li t4, 0xcc
	orn s5, t3, t4
	li t6, 0x362
	orn s6, s5, t6
	li s1, 0x617
	orn t2, s6, s1
	li a7, 0x605
	orn a2, t2, a7
	li s5, 0xe0
	orn t4, a2, s5
	li s11, 0x42c
	orn s7, t4, s11
	li a7, 0x598
	orn s4, s7, a7
	li a7, 0x9a
	orn t2, s4, a7
	li s1, 0x3bd
	orn s2, t2, s1
	li s6, 0x1d7
	orn t4, s2, s6
	li a5, 0x28c
	orn s10, t4, a5
	li s5, 0x6d9
	orn s0, s10, s5
	li s4, 0x53
	orn t6, s0, s4
	li t5, 0x6e4
	orn s10, t6, t5
	li t1, 0x3c2
	orn a5, s10, t1
	li s11, 0x5d3
	orn s6, a5, s11
	li s4, 0x3d5
	orn s11, s6, s4
	li s10, 0x4df
	orn s5, s11, s10
	li t4, 0x4ac
	orn s11, s5, t4
	csrr t6, time
	csrr t1, cycle
	csrr s7, instret
	sub t6, t6, s3
	sub a5, t1, a6
	sub a7, s7, a0
	beq s8, a5, pass_label_92
	li t1, failed_addr
	ld s8, 0(t1)
	jr s8
pass_label_92:
	beq a1, a7, pass_label_93
	li a6, failed_addr
	ld t2, 0(a6)
	jr t2
pass_label_93:
SID_ZKT_08_ORN_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_XNOR)
SID_ZKT_08_XNOR:
	li sp, SID_ZKT_08_XNOR_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s7, 0
	csrr a1, time
	csrr t5, cycle
	csrr s11, instret
	li t1, 0x7a
	xnor s7, s7, t1
	li t3, 0x4d6
	xnor a5, s7, t3
	li s10, 0x690
	xnor a0, a5, s10
	li t2, 0x6f8
	xnor a5, a0, t2
	li s7, 0x601
	xnor s0, a5, s7
	li s2, 0x39
	xnor s9, s0, s2
	li s6, 0x5b0
	xnor s8, s9, s6
	li t3, 0x7a6
	xnor s9, s8, t3
	li s3, 0x556
	xnor s6, s9, s3
	li s2, 0x13
	xnor a2, s6, s2
	li s3, 0x459
	xnor t3, a2, s3
	li s9, 0x196
	xnor a4, t3, s9
	li t6, 0x2b8
	xnor t6, a4, t6
	li a2, 0x5b7
	xnor s1, t6, a2
	li a3, 0x1f2
	xnor s9, s1, a3
	li s5, 0x4a7
	xnor t6, s9, s5
	li s0, 0x212
	xnor a5, t6, s0
	li s1, 0x227
	xnor s0, a5, s1
	li a3, 0x36e
	xnor s6, s0, a3
	li a7, 0x2db
	xnor a5, s6, a7
	li t2, 0x7d6
	xnor s8, a5, t2
	li t2, 0x675
	xnor a6, s8, t2
	li s2, 0x4e5
	xnor a3, a6, s2
	li s4, 0x36a
	xnor s5, a3, s4
	li t3, 0x5b2
	xnor s5, s5, t3
	li t4, 0x535
	xnor s10, s5, t4
	li a3, 0x3c0
	xnor t3, s10, a3
	li t4, 0x765
	xnor t6, t3, t4
	li s5, 0x6cf
	xnor s0, t6, s5
	li a6, 0x78b
	xnor s3, s0, a6
	li t4, 0x48f
	xnor s0, s3, t4
	li t2, 0x67e
	xnor a2, s0, t2
	li s9, 0xfc
	xnor s10, a2, s9
	li a6, 0x124
	xnor s7, s10, a6
	li s10, 0x7c7
	xnor t3, s7, s10
	li a2, 0x1dd
	xnor t1, t3, a2
	li s0, 0x279
	xnor a3, t1, s0
	li a6, 0x540
	xnor s6, a3, a6
	li a7, 0x16a
	xnor s3, s6, a7
	li a0, 0x72d
	xnor a3, s3, a0
	li s4, 0x44b
	xnor s10, a3, s4
	li s3, 0x61
	xnor s6, s10, s3
	li a4, 0x576
	xnor a3, s6, a4
	li s7, 0x55c
	xnor s5, a3, s7
	li s6, 0x1d5
	xnor s2, s5, s6
	li s9, 0x792
	xnor s10, s2, s9
	li a3, 0x7f5
	xnor t1, s10, a3
	li s9, 0x572
	xnor t3, t1, s9
	li a7, 0xf7
	xnor s9, t3, a7
	li a4, 0x165
	xnor s7, s9, a4
	li s2, 0x723
	xnor s1, s7, s2
	li a0, 0x69a
	xnor s10, s1, a0
	li a4, 0x2cc
	xnor s5, s10, a4
	li s3, 0x1e1
	xnor t1, s5, s3
	li t4, 0x71f
	xnor s9, t1, t4
	li a0, 0x4de
	xnor a4, s9, a0
	li a7, 0x466
	xnor a5, a4, a7
	li a4, 0x190
	xnor t2, a5, a4
	li a4, 0x47e
	xnor a6, t2, a4
	li s5, 0x100
	xnor s5, a6, s5
	li s1, 0x554
	xnor t3, s5, s1
	li s4, 0x31c
	xnor s1, t3, s4
	li s5, 0x2a4
	xnor s9, s1, s5
	li s8, 0x47f
	xnor s2, s9, s8
	li s5, 0x7fa
	xnor t6, s2, s5
	li a7, 0x602
	xnor a2, t6, a7
	li a6, 0x71f
	xnor t1, a2, a6
	li t4, 0x4b0
	xnor a3, t1, t4
	li s6, 0x7e1
	xnor t1, a3, s6
	li t4, 0x3b5
	xnor s4, t1, t4
	li s2, 0x54c
	xnor a5, s4, s2
	li t1, 0x6c0
	xnor a2, a5, t1
	li s5, 0x51b
	xnor a7, a2, s5
	li a2, 0x545
	xnor t2, a7, a2
	li s6, 0x5af
	xnor s1, t2, s6
	li s2, 0x672
	xnor s2, s1, s2
	li s4, 0x43a
	xnor s10, s2, s4
	li s6, 0x74b
	xnor s3, s10, s6
	li s4, 0x485
	xnor s9, s3, s4
	li t3, 0x229
	xnor a7, s9, t3
	li a2, 0x6d8
	xnor a0, a7, a2
	li t6, 0x3a7
	xnor a5, a0, t6
	li a2, 0xfe
	xnor a7, a5, a2
	li a6, 0x77b
	xnor t6, a7, a6
	li s0, 0x236
	xnor s8, t6, s0
	li a7, 0x445
	xnor a2, s8, a7
	li a7, 0x12f
	xnor a6, a2, a7
	li a0, 0x2bf
	xnor a0, a6, a0
	li s3, 0xbe
	xnor s6, a0, s3
	li a4, 0x49e
	xnor s4, s6, a4
	li t4, 0x63
	xnor t1, s4, t4
	li s10, 0x46a
	xnor s9, t1, s10
	li s2, 0x702
	xnor s9, s9, s2
	li s6, 0x2dd
	xnor s9, s9, s6
	li s3, 0x635
	xnor a4, s9, s3
	li s7, 0x7ef
	xnor s2, a4, s7
	li a5, 0x39a
	xnor s8, s2, a5
	li a7, 0x56
	xnor s5, s8, a7
	li t6, 0x403
	xnor t2, s5, t6
	li a6, 0x10
	xnor s8, t2, a6
	csrr a7, time
	csrr t1, cycle
	csrr t6, instret
	sub a5, a7, a1
	sub t1, t1, t5
	sub t4, t6, s11
	li a1, 0
	csrr t4, time
	csrr a5, cycle
	csrr t6, instret
	li a2, 0x5cf
	xnor a7, a1, a2
	li a3, 0x3b7
	xnor s2, a7, a3
	li t5, 0x695
	xnor s7, s2, t5
	li s3, 0x712
	xnor a3, s7, s3
	li s0, 0x4f0
	xnor s6, a3, s0
	li s1, 0x35a
	xnor s7, s6, s1
	li a7, 0x285
	xnor a1, s7, a7
	li s2, 0x68b
	xnor a6, a1, s2
	li a1, 0x413
	xnor s10, a6, a1
	li a4, 0x6e3
	xnor s8, s10, a4
	li a2, 0x64c
	xnor t3, s8, a2
	li s7, 0x321
	xnor a3, t3, s7
	li t1, 0x4f8
	xnor s5, a3, t1
	li s4, 0x2da
	xnor s6, s5, s4
	li t5, 0x7fe
	xnor a2, s6, t5
	li a3, 0x18f
	xnor s2, a2, a3
	li s8, 0x342
	xnor s0, s2, s8
	li s8, 0x4ef
	xnor t2, s0, s8
	li s7, 0x56e
	xnor s1, t2, s7
	li s5, 0x701
	xnor s4, s1, s5
	li a3, 0x65f
	xnor s5, s4, a3
	li s11, 0x66
	xnor a3, s5, s11
	li t2, 0x430
	xnor s0, a3, t2
	li a6, 0x634
	xnor a7, s0, a6
	li s2, 0x268
	xnor s3, a7, s2
	li a1, 0x6cd
	xnor s3, s3, a1
	li a4, 0x7bc
	xnor s9, s3, a4
	li t1, 0x2a3
	xnor a3, s9, t1
	li s7, 0x3be
	xnor a7, a3, s7
	li s6, 0x6a
	xnor s7, a7, s6
	li s10, 0x27c
	xnor a1, s7, s10
	li s7, 0x61f
	xnor s4, a1, s7
	li t3, 0x551
	xnor s10, s4, t3
	li s8, 0x7ef
	xnor t3, s10, s8
	li s3, 0x287
	xnor a6, t3, s3
	li s8, 0x227
	xnor s10, a6, s8
	li s5, 0x6ba
	xnor s2, s10, s5
	li s7, 0x435
	xnor a1, s2, s7
	li t1, 0x1aa
	xnor a0, a1, t1
	li s7, 0x543
	xnor s4, a0, s7
	li s6, 0x78e
	xnor s9, s4, s6
	li s3, 0x2fa
	xnor a1, s9, s3
	li s3, 0x265
	xnor a1, a1, s3
	li s1, 0xce
	xnor s11, a1, s1
	li t1, 0x627
	xnor s3, s11, t1
	li s1, 0x706
	xnor s2, s3, s1
	li s11, 0x262
	xnor t5, s2, s11
	li a2, 0x3f5
	xnor a0, t5, a2
	li s2, 0x7cb
	xnor s6, a0, s2
	li s0, 0x7be
	xnor s6, s6, s0
	li a3, 0x58c
	xnor s8, s6, a3
	li s7, 0x192
	xnor a4, s8, s7
	li s11, 0x508
	xnor s9, a4, s11
	li s2, 0xb8
	xnor s0, s9, s2
	li s6, 0x11c
	xnor t3, s0, s6
	li t5, 0x250
	xnor s10, t3, t5
	li s3, 0x4ce
	xnor t2, s10, s3
	li s5, 0x40f
	xnor s5, t2, s5
	li s7, 0x725
	xnor t3, s5, s7
	li t1, 0x7f3
	xnor a6, t3, t1
	li s1, 0x790
	xnor t1, a6, s1
	li s11, 0x678
	xnor s5, t1, s11
	li s8, 0x3b3
	xnor t3, s5, s8
	li t2, 0x393
	xnor s9, t3, t2
	li t5, 0x796
	xnor s10, s9, t5
	li t2, 0x2e8
	xnor s0, s10, t2
	li s6, 0x4a3
	xnor s10, s0, s6
	li a0, 0x16a
	xnor s11, s10, a0
	li s7, 0x15a
	xnor s10, s11, s7
	li t1, 0x7a1
	xnor s3, s10, t1
	li s1, 0x2fb
	xnor s6, s3, s1
	li a3, 0x130
	xnor s1, s6, a3
	li t1, 0x69
	xnor s6, s1, t1
	li t1, 0x53d
	xnor a3, s6, t1
	li s11, 0x9a
	xnor s2, a3, s11
	li s0, 0x7e6
	xnor a1, s2, s0
	li a3, 0x6f5
	xnor s8, a1, a3
	li s2, 0x266
	xnor a7, s8, s2
	li s10, 0x236
	xnor s3, a7, s10
	li s1, 0x22d
	xnor s8, s3, s1
	li s3, 0x3cf
	xnor t5, s8, s3
	li s1, 0x657
	xnor a2, t5, s1
	li t1, 0x449
	xnor s7, a2, t1
	li s3, 0x290
	xnor t2, s7, s3
	li t3, 0x26d
	xnor t5, t2, t3
	li a6, 0x68f
	xnor s2, t5, a6
	li s3, 0x383
	xnor a7, s2, s3
	li s7, 0x373
	xnor s5, a7, s7
	li t5, 0x99
	xnor a3, s5, t5
	li s2, 0x687
	xnor a1, a3, s2
	li a6, 0x3ca
	xnor s5, a1, a6
	li a6, 0x47f
	xnor a4, s5, a6
	li t5, 0x7e3
	xnor t5, a4, t5
	li a2, 0x6af
	xnor a4, t5, a2
	li s1, 0x4a2
	xnor t2, a4, s1
	li a3, 0x2b0
	xnor s3, t2, a3
	li s7, 0x21d
	xnor a2, s3, s7
	li s8, 0x729
	xnor t1, a2, s8
	li s7, 0x44d
	xnor s5, t1, s7
	li s11, 0x3dd
	xnor s0, s5, s11
	csrr s1, time
	csrr s7, cycle
	csrr s6, instret
	sub a7, s1, t4
	sub a1, s7, a5
	sub s11, s6, t6
	li t2, 0
	csrr s10, time
	csrr a5, cycle
	csrr s4, instret
	li s1, 0x7d4
	xnor a7, t2, s1
	li s3, 0x23f
	xnor t5, a7, s3
	li s6, 0x7d3
	xnor s7, t5, s6
	li t1, 0x580
	xnor s1, s7, t1
	li s2, 0x96
	xnor s2, s1, s2
	li s5, 0x295
	xnor t4, s2, s5
	li a7, 0x395
	xnor a2, t4, a7
	li s2, 0x2b5
	xnor t6, a2, s2
	li a3, 0x16a
	xnor s7, t6, a3
	li s8, 0x5d3
	xnor t3, s7, s8
	li a6, 0x5bb
	xnor t5, t3, a6
	li t2, 0x201
	xnor s5, t5, t2
	li s3, 0x386
	xnor a4, s5, s3
	li a7, 0x408
	xnor s1, a4, a7
	li s0, 0x64b
	xnor a3, s1, s0
	li a7, 0x6fe
	xnor s0, a3, a7
	li a3, 0x6c0
	xnor a6, s0, a3
	li t4, 0x562
	xnor a7, a6, t4
	li a4, 0x2f9
	xnor a2, a7, a4
	li s2, 0xbb
	xnor s1, a2, s2
	li t1, 0x4d3
	xnor s6, s1, t1
	li s7, 0x39b
	xnor t1, s6, s7
	li s2, 0x45f
	xnor s5, t1, s2
	li t2, 0x3ef
	xnor a3, s5, t2
	li a7, 0x5dd
	xnor a0, a3, a7
	li a6, 0x4bf
	xnor s8, a0, a6
	li s5, 0x68d
	xnor t1, s8, s5
	li s0, 0x49f
	xnor s7, t1, s0
	li t6, 0x37
	xnor s7, s7, t6
	li a7, 0xa9
	xnor t4, s7, a7
	li a6, 0x598
	xnor a7, t4, a6
	li t2, 0x31e
	xnor t1, a7, t2
	li t3, 0x6d7
	xnor a2, t1, t3
	li a0, 0x12e
	xnor t2, a2, a0
	li t5, 0x339
	xnor s8, t2, t5
	li t2, 0x4f1
	xnor s8, s8, t2
	li a3, 0x684
	xnor s1, s8, a3
	li t2, 0x33d
	xnor t2, s1, t2
	li t5, 0x371
	xnor t6, t2, t5
	li s0, 0x331
	xnor t1, t6, s0
	li a4, 0x6d0
	xnor a3, t1, a4
	li a4, 0x2e6
	xnor a0, a3, a4
	li a7, 0x5f2
	xnor s9, a0, a7
	li t2, 0x27
	xnor s7, s9, t2
	li s1, 0x15c
	xnor a2, s7, s1
	li s1, 0x398
	xnor s2, a2, s1
	li a3, 0x142
	xnor a2, s2, a3
	li a7, 0x63e
	xnor t5, a2, a7
	li a6, 0x6f3
	xnor s0, t5, a6
	li a2, 0x60e
	xnor t3, s0, a2
	li s8, 0x757
	xnor s5, t3, s8
	li t2, 0x574
	xnor s2, s5, t2
	li a0, 0x602
	xnor s1, s2, a0
	li t5, 0x48b
	xnor a2, s1, t5
	li s9, 0x2c7
	xnor s7, a2, s9
	li t1, 0x130
	xnor s6, s7, t1
	li a7, 0x368
	xnor s9, s6, a7
	li a2, 0x111
	xnor t4, s9, a2
	li t5, 0x3f
	xnor s9, t4, t5
	li a0, 0x71
	xnor a6, s9, a0
	li t3, 0x6d7
	xnor s9, a6, t3
	li s6, 0x5db
	xnor t3, s9, s6
	li a3, 0x311
	xnor s8, t3, a3
	li a0, 0x4c1
	xnor a0, s8, a0
	li t1, 0x7dd
	xnor s3, a0, t1
	li a4, 0x194
	xnor t4, s3, a4
	li s9, 0x560
	xnor a2, t4, s9
	li s1, 0x3ac
	xnor a3, a2, s1
	li a4, 0x366
	xnor a4, a3, a4
	li s0, 0x30f
	xnor s2, a4, s0
	li s6, 0x254
	xnor s1, s2, s6
	li s3, 0x4da
	xnor t3, s1, s3
	li t4, 0x555
	xnor a4, t3, t4
	li t4, 0x75
	xnor s7, a4, t4
	li s9, 0x188
	xnor t4, s7, s9
	li s9, 0x7f4
	xnor t4, t4, s9
	li a2, 0x24c
	xnor s7, t4, a2
	li t3, 0x22c
	xnor a6, s7, t3
	li t5, 0x362
	xnor a3, a6, t5
	li t3, 0x1b6
	xnor s5, a3, t3
	li t2, 0x179
	xnor s1, s5, t2
	li a6, 0xa
	xnor t2, s1, a6
	li t1, 0x3d6
	xnor s9, t2, t1
	li s7, 0x41b
	xnor a2, s9, s7
	li a4, 0x61
	xnor s8, a2, a4
	li s0, 0x134
	xnor s7, s8, s0
	li a6, 0x46d
	xnor a2, s7, a6
	li s0, 0x333
	xnor a3, a2, s0
	li a4, 0x2df
	xnor t5, a3, a4
	li s3, 0x6d5
	xnor a4, t5, s3
	li t3, 0x5ae
	xnor t2, a4, t3
	li a3, 0x577
	xnor a2, t2, a3
	li s9, 0x54
	xnor s5, a2, s9
	li s3, 0x602
	xnor a4, s5, s3
	li s0, 0x703
	xnor t1, a4, s0
	li a7, 0x18f
	xnor t1, t1, a7
	li a3, 0x378
	xnor a7, t1, a3
	li t3, 0x265
	xnor a7, a7, t3
	li s0, 0x1dd
	xnor a4, a7, s0
	li t5, 0x6ea
	xnor s7, a4, t5
	csrr t2, time
	csrr a0, cycle
	csrr s2, instret
	sub t3, t2, s10
	sub s3, a0, a5
	sub t4, s2, s4
	beq a1, s3, pass_label_94
	li a2, failed_addr
	ld s4, 0(a2)
	jr s4
pass_label_94:
	beq s11, t4, pass_label_95
	li s1, failed_addr
	ld s1, 0(s1)
	jr s1
pass_label_95:
SID_ZKT_08_XNOR_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_PACK)
SID_ZKT_08_PACK:
	li sp, SID_ZKT_08_PACK_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s2, 0
	csrr t5, time
	csrr t3, cycle
	csrr s11, instret
	li a6, 0x661
	pack s2, s2, a6
	li s10, 0x2a9
	pack a5, s2, s10
	li s4, 0x29c
	pack a2, a5, s4
	li a7, 0x779
	pack s4, a2, a7
	li s8, 0x485
	pack t4, s4, s8
	li s0, 0x5a7
	pack s9, t4, s0
	li a4, 0x739
	pack s8, s9, a4
	li a3, 0xb7
	pack t2, s8, a3
	li t1, 0x6c0
	pack t6, t2, t1
	li s0, 0x644
	pack s3, t6, s0
	li s8, 0x671
	pack s10, s3, s8
	li s8, 0x4e8
	pack a6, s10, s8
	li s4, 0x2d7
	pack s2, a6, s4
	li t6, 0x136
	pack a0, s2, t6
	li t6, 0x224
	pack t1, a0, t6
	li a2, 0x714
	pack a5, t1, a2
	li a3, 0x7ff
	pack a0, a5, a3
	li t6, 0x298
	pack s2, a0, t6
	li a3, 0x221
	pack t4, s2, a3
	li s6, 0x5e4
	pack s7, t4, s6
	li s3, 0x133
	pack a3, s7, s3
	li t6, 0x572
	pack a5, a3, t6
	li a2, 0x450
	pack s7, a5, a2
	li s9, 0x7a1
	pack s3, s7, s9
	li t6, 0x4ed
	pack s3, s3, t6
	li s2, 0x3
	pack s5, s3, s2
	li a2, 0x47
	pack s3, s5, a2
	li t2, 0x378
	pack t6, s3, t2
	li s5, 0x50d
	pack s1, t6, s5
	li a7, 0x592
	pack a6, s1, a7
	li t4, 0x753
	pack s9, a6, t4
	li a5, 0x4a3
	pack s3, s9, a5
	li t2, 0x41
	pack s4, s3, t2
	li a6, 0x141
	pack t4, s4, a6
	li a3, 0x225
	pack a7, t4, a3
	li a0, 0x23f
	pack s8, a7, a0
	li s2, 0x6c2
	pack a3, s8, s2
	li t6, 0x525
	pack t4, a3, t6
	li s6, 0xb4
	pack s0, t4, s6
	li s9, 0x55b
	pack s0, s0, s9
	li a1, 0x70f
	pack t1, s0, a1
	li s0, 0x2a6
	pack s2, t1, s0
	li t2, 0x135
	pack s4, s2, t2
	li t6, 0x664
	pack t6, s4, t6
	li a4, 0x71a
	pack s9, t6, a4
	li a6, 0x712
	pack a3, s9, a6
	li s2, 0x75c
	pack a6, a3, s2
	li a2, 0x55b
	pack s0, a6, a2
	li s8, 0x2d5
	pack t6, s0, s8
	li s4, 0x42d
	pack s5, t6, s4
	li a4, 0x2c7
	pack a4, s5, a4
	li a6, 0x7b7
	pack s5, a4, a6
	li s2, 0x33e
	pack t6, s5, s2
	li s8, 0x4fb
	pack a6, t6, s8
	li s9, 0x212
	pack s10, a6, s9
	li s9, 0xdd
	pack s7, s10, s9
	li s8, 0x222
	pack a4, s7, s8
	li t6, 0x6cf
	pack s9, a4, t6
	li s1, 0x721
	pack s10, s9, s1
	li s7, 0x439
	pack t2, s10, s7
	li s6, 0xc4
	pack t4, t2, s6
	li a5, 0x7a1
	pack a6, t4, a5
	li a4, 0x3f0
	pack a5, a6, a4
	li a6, 0xa1
	pack a7, a5, a6
	li t1, 0x3c4
	pack a1, a7, t1
	li t1, 0x4fe
	pack s0, a1, t1
	li t4, 0x31e
	pack s3, s0, t4
	li a7, 0x2b1
	pack t6, s3, a7
	li t2, 0x2a8
	pack s4, t6, t2
	li t6, 0x2e3
	pack s2, s4, t6
	li a0, 0x3b2
	pack a5, s2, a0
	li s1, 0x40a
	pack t2, a5, s1
	li t4, 0x262
	pack t2, t2, t4
	li t6, 0x61
	pack s2, t2, t6
	li s0, 0x3a0
	pack a0, s2, s0
	li a3, 0x68d
	pack t6, a0, a3
	li t4, 0x46
	pack s1, t6, t4
	li s2, 0x17d
	pack s6, s1, s2
	li a7, 0x170
	pack t4, s6, a7
	li t1, 0x504
	pack s8, t4, t1
	li t4, 0x123
	pack a5, s8, t4
	li s0, 0xa5
	pack s8, a5, s0
	li a3, 0xe2
	pack s8, s8, a3
	li a2, 0x391
	pack a3, s8, a2
	li s4, 0xfe
	pack s0, a3, s4
	li s7, 0x7e3
	pack s3, s0, s7
	li s5, 0x4c0
	pack t1, s3, s5
	li t4, 0x564
	pack t2, t1, t4
	li s0, 0x51b
	pack s7, t2, s0
	li s0, 0x294
	pack a4, s7, s0
	li s9, 0x6eb
	pack t2, a4, s9
	li s1, 0x296
	pack a7, t2, s1
	li s8, 0x1da
	pack s3, a7, s8
	li a5, 0x7e4
	pack a5, s3, a5
	li s2, 0x6de
	pack s9, a5, s2
	li s1, 0x4d5
	pack s8, s9, s1
	li t2, 0x2cb
	pack t2, s8, t2
	li t1, 0x5cc
	pack s10, t2, t1
	li s7, 0x495
	pack s9, s10, s7
	li t6, 0x2cc
	pack t2, s9, t6
	csrr a0, time
	csrr s1, cycle
	csrr t6, instret
	sub s4, a0, t5
	sub s9, s1, t3
	sub t6, t6, s11
	li t5, 0
	csrr a0, time
	csrr a2, cycle
	csrr t3, instret
	li s3, 0x1e9
	pack s10, t5, s3
	li s8, 0x347
	pack s9, s10, s8
	li t1, 0x308
	pack s5, s9, t1
	li s10, 0x2d5
	pack s2, s5, s10
	li a3, 0x723
	pack s6, s2, a3
	li t6, 0x3e5
	pack s10, s6, t6
	li s4, 0x667
	pack t4, s10, s4
	li t6, 0xd5
	pack s4, t4, t6
	li s5, 0x32b
	pack s9, s4, s5
	li s11, 0x13a
	pack s5, s9, s11
	li s7, 0x223
	pack a6, s5, s7
	li t2, 0x529
	pack a1, a6, t2
	li s5, 0x9a
	pack s2, a1, s5
	li t6, 0x356
	pack s9, s2, t6
	li a6, 0x4a
	pack a6, s9, a6
	li a1, 0x505
	pack s5, a6, a1
	li s4, 0x7a2
	pack s8, s5, s4
	li s10, 0x3fb
	pack s6, s8, s10
	li a1, 0x5f2
	pack s1, s6, a1
	li a3, 0x503
	pack s11, s1, a3
	li s8, 0x5e6
	pack s11, s11, s8
	li a7, 0xb6
	pack s1, s11, a7
	li a3, 0x3c1
	pack a5, s1, a3
	li s3, 0x7ac
	pack a3, a5, s3
	li s0, 0x678
	pack s5, a3, s0
	li t5, 0x4f2
	pack t4, s5, t5
	li t1, 0x41
	pack s8, t4, t1
	li t6, 0x106
	pack s8, s8, t6
	li s3, 0xdf
	pack t2, s8, s3
	li s1, 0x4dc
	pack s1, t2, s1
	li s11, 0x696
	pack s9, s1, s11
	li s5, 0x112
	pack t6, s9, s5
	li s5, 0x20
	pack a7, t6, s5
	li a1, 0x4e2
	pack s6, a7, a1
	li t1, 0x249
	pack a1, s6, t1
	li s7, 0x71
	pack s2, a1, s7
	li s9, 0x2d6
	pack s9, s2, s9
	li s2, 0x78b
	pack s0, s9, s2
	li s2, 0x63d
	pack s7, s0, s2
	li a4, 0x52
	pack t6, s7, a4
	li s6, 0x19a
	pack s8, t6, s6
	li s0, 0x477
	pack a1, s8, s0
	li s7, 0x9a
	pack s1, a1, s7
	li s5, 0x6e
	pack s10, s1, s5
	li t4, 0x6d1
	pack s4, s10, t4
	li s3, 0x26
	pack s6, s4, s3
	li s7, 0x644
	pack a6, s6, s7
	li s10, 0x21
	pack a6, a6, s10
	li s3, 0x1a
	pack s0, a6, s3
	li s3, 0x416
	pack s1, s0, s3
	li a6, 0x18d
	pack s4, s1, a6
	li s0, 0x7d
	pack s2, s4, s0
	li s6, 0x308
	pack s4, s2, s6
	li a5, 0x7c5
	pack s7, s4, a5
	li a1, 0x180
	pack s11, s7, a1
	li s3, 0x57b
	pack t4, s11, s3
	li s6, 0x453
	pack s11, t4, s6
	li s1, 0x152
	pack s1, s11, s1
	li s6, 0x11b
	pack s6, s1, s6
	li t2, 0x741
	pack s10, s6, t2
	li t4, 0x4fa
	pack a7, s10, t4
	li s0, 0x446
	pack s3, a7, s0
	li a6, 0xa5
	pack a7, s3, a6
	li s0, 0x4a
	pack s11, a7, s0
	li s8, 0x20e
	pack a6, s11, s8
	li s7, 0x1d3
	pack s11, a6, s7
	li a5, 0x76c
	pack s1, s11, a5
	li s5, 0x278
	pack a5, s1, s5
	li a6, 0x32
	pack t4, a5, a6
	li a1, 0x7c4
	pack s8, t4, a1
	li a3, 0x3a6
	pack s5, s8, a3
	li s9, 0x67e
	pack a4, s5, s9
	li a3, 0x9a
	pack t4, a4, a3
	li s3, 0x1c3
	pack t4, t4, s3
	li s0, 0x52a
	pack s0, t4, s0
	li s3, 0xd8
	pack s2, s0, s3
	li a7, 0x5f1
	pack s6, s2, a7
	li s4, 0x162
	pack a1, s6, s4
	li s8, 0x726
	pack s2, a1, s8
	li a1, 0x3f0
	pack t4, s2, a1
	li s0, 0x36
	pack s8, t4, s0
	li a3, 0x736
	pack s5, s8, a3
	li t5, 0xeb
	pack a3, s5, t5
	li s3, 0x4cd
	pack a3, a3, s3
	li t6, 0x71d
	pack t4, a3, t6
	li s6, 0x6d0
	pack t2, t4, s6
	li s4, 0x766
	pack s4, t2, s4
	li a4, 0x3da
	pack a3, s4, a4
	li s2, 0x7c0
	pack s1, a3, s2
	li s3, 0x7ee
	pack a1, s1, s3
	li t6, 0x2c1
	pack s8, a1, t6
	li t4, 0x5b8
	pack s5, s8, t4
	li s0, 0x269
	pack a6, s5, s0
	li a1, 0x5fc
	pack a3, a6, a1
	li a6, 0x21d
	pack a7, a3, a6
	li s8, 0x382
	pack s10, a7, s8
	li s8, 0x323
	pack a3, s10, s8
	li s5, 0x5ec
	pack t5, a3, s5
	li a1, 0x2b9
	pack t6, t5, a1
	li t2, 0xca
	pack a3, t6, t2
	csrr s3, time
	csrr a4, cycle
	csrr s6, instret
	sub t4, s3, a0
	sub t1, a4, a2
	sub a0, s6, t3
	li s11, 0
	csrr t3, time
	csrr s2, cycle
	csrr s1, instret
	li t4, 0x4b2
	pack t6, s11, t4
	li s4, 0x667
	pack s4, t6, s4
	li a6, 0x118
	pack t4, s4, a6
	li a5, 0x7bf
	pack a5, t4, a5
	li a6, 0x2c9
	pack t4, a5, a6
	li a5, 0x58d
	pack t6, t4, a5
	li a2, 0x70f
	pack s10, t6, a2
	li a4, 0x67b
	pack s7, s10, a4
	li t4, 0x702
	pack s7, s7, t4
	li s0, 0x730
	pack a4, s7, s0
	li s10, 0x7ae
	pack a5, a4, s10
	li s3, 0x3c1
	pack a4, a5, s3
	li s10, 0x37a
	pack s11, a4, s10
	li a7, 0x590
	pack s9, s11, a7
	li a1, 0x458
	pack t6, s9, a1
	li t2, 0x46d
	pack a2, t6, t2
	li s6, 0x424
	pack a1, a2, s6
	li s10, 0x695
	pack a5, a1, s10
	li t4, 0x729
	pack a3, a5, t4
	li s10, 0x6b6
	pack a6, a3, s10
	li a5, 0xcf
	pack t4, a6, a5
	li s8, 0x5e
	pack t4, t4, s8
	li a4, 0x3ea
	pack a7, t4, a4
	li a1, 0x49e
	pack a7, a7, a1
	li s11, 0x248
	pack s0, a7, s11
	li t5, 0x45e
	pack a5, s0, t5
	li s10, 0x62d
	pack t4, a5, s10
	li s0, 0xfe
	pack s10, t4, s0
	li a3, 0x13a
	pack a7, s10, a3
	li s4, 0x551
	pack s6, a7, s4
	li s8, 0x538
	pack s7, s6, s8
	li s9, 0x7c8
	pack a7, s7, s9
	li s6, 0x351
	pack t5, a7, s6
	li a2, 0x4fc
	pack s8, t5, a2
	li t5, 0xbe
	pack s5, s8, t5
	li s4, 0x764
	pack s6, s5, s4
	li s11, 0x742
	pack s10, s6, s11
	li s4, 0x39e
	pack a5, s10, s4
	li t5, 0x5ee
	pack t6, a5, t5
	li s9, 0x50a
	pack t6, t6, s9
	li t4, 0x6e
	pack s3, t6, t4
	li t2, 0xea
	pack s3, s3, t2
	li a5, 0x2cb
	pack a1, s3, a5
	li a7, 0x468
	pack s7, a1, a7
	li s3, 0x63
	pack a7, s7, s3
	li a1, 0x166
	pack s4, a7, a1
	li a1, 0x1be
	pack a3, s4, a1
	li a5, 0x66b
	pack s5, a3, a5
	li s4, 0x7be
	pack a7, s5, s4
	li s5, 0x3ea
	pack s7, a7, s5
	li t5, 0x3c4
	pack a2, s7, t5
	li s7, 0x228
	pack t6, a2, s7
	li s11, 0x16b
	pack a1, t6, s11
	li s5, 0x695
	pack a6, a1, s5
	li s9, 0x7ac
	pack s6, a6, s9
	li t2, 0x481
	pack a1, s6, t2
	li a6, 0x2e4
	pack a7, a1, a6
	li a5, 0xb6
	pack s7, a7, a5
	li t2, 0x34a
	pack s8, s7, t2
	li t5, 0x1ec
	pack s0, s8, t5
	li a7, 0x609
	pack s3, s0, a7
	li s5, 0x6d7
	pack s9, s3, s5
	li s7, 0x730
	pack s6, s9, s7
	li s8, 0x60b
	pack a3, s6, s8
	li a1, 0x137
	pack s10, a3, a1
	li s11, 0x16a
	pack t2, s10, s11
	li s0, 0x736
	pack a2, t2, s0
	li a1, 0x6a0
	pack t5, a2, a1
	li s7, 0x216
	pack s3, t5, s7
	li a2, 0xf1
	pack a4, s3, a2
	li a3, 0x47b
	pack s10, a4, a3
	li t4, 0x643
	pack a1, s10, t4
	li t4, 0x18d
	pack t6, a1, t4
	li a6, 0x19c
	pack s5, t6, a6
	li t2, 0x64d
	pack a6, s5, t2
	li a4, 0x459
	pack s5, a6, a4
	li s6, 0x35e
	pack a6, s5, s6
	li t2, 0x7f
	pack s8, a6, t2
	li a3, 0x54f
	pack a4, s8, a3
	li a7, 0x75e
	pack a5, a4, a7
	li t2, 0x7
	pack s0, a5, t2
	li s6, 0xc4
	pack s6, s0, s6
	li s8, 0x3e9
	pack a3, s6, s8
	li a1, 0x7ad
	pack a6, a3, a1
	li t5, 0x4c2
	pack a1, a6, t5
	li s8, 0x30b
	pack a5, a1, s8
	li a4, 0x5e6
	pack t5, a5, a4
	li a1, 0x737
	pack s3, t5, a1
	li s0, 0x3b0
	pack s5, s3, s0
	li t4, 0x115
	pack s7, s5, t4
	li a7, 0x31b
	pack a2, s7, a7
	li s11, 0x6dd
	pack s4, a2, s11
	li a7, 0x3f3
	pack a6, s4, a7
	li a1, 0x5a
	pack s5, a6, a1
	li t4, 0x558
	pack s6, s5, t4
	li a4, 0x11c
	pack a7, s6, a4
	li a5, 0x427
	pack a4, a7, a5
	li t6, 0x60b
	pack a6, a4, t6
	li s9, 0x48b
	pack s0, a6, s9
	li a1, 0x55a
	pack a2, s0, a1
	csrr a6, time
	csrr a7, cycle
	csrr s8, instret
	sub s9, a6, t3
	sub a1, a7, s2
	sub s10, s8, s1
	beq t1, a1, pass_label_96
	li t2, failed_addr
	ld t4, 0(t2)
	jr t4
pass_label_96:
	beq a0, s10, pass_label_97
	li s9, failed_addr
	ld s5, 0(s9)
	jr s5
pass_label_97:
SID_ZKT_08_PACK_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_PACKH)
SID_ZKT_08_PACKH:
	li sp, SID_ZKT_08_PACKH_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s4, 0
	csrr a0, time
	csrr t5, cycle
	csrr s8, instret
	li a5, 0x528
	packh a5, s4, a5
	li t2, 0x30e
	packh t6, a5, t2
	li t3, 0x63d
	packh t4, t6, t3
	li s0, 0x717
	packh t2, t4, s0
	li t1, 0x484
	packh t6, t2, t1
	li s9, 0x53b
	packh a5, t6, s9
	li s10, 0x12f
	packh s4, a5, s10
	li s6, 0x5f4
	packh s3, s4, s6
	li t6, 0x56b
	packh s11, s3, t6
	li a7, 0x592
	packh s4, s11, a7
	li s9, 0x6ab
	packh a6, s4, s9
	li s3, 0x63c
	packh s3, a6, s3
	li s9, 0x398
	packh a6, s3, s9
	li s4, 0x531
	packh a7, a6, s4
	li s3, 0x2ea
	packh s5, a7, s3
	li s1, 0x2ef
	packh s3, s5, s1
	li s10, 0x231
	packh s11, s3, s10
	li a1, 0x38c
	packh s4, s11, a1
	li a7, 0x472
	packh a5, s4, a7
	li s10, 0x177
	packh a6, a5, s10
	li a5, 0x694
	packh s2, a6, a5
	li t3, 0x3c0
	packh s11, s2, t3
	li t4, 0x5ef
	packh a2, s11, t4
	li t3, 0x7f4
	packh s9, a2, t3
	li a5, 0x9c
	packh s2, s9, a5
	li t3, 0xfc
	packh s3, s2, t3
	li t4, 0x5f1
	packh s1, s3, t4
	li t4, 0x6a2
	packh s0, s1, t4
	li s1, 0xce
	packh a2, s0, s1
	li s5, 0x629
	packh t2, a2, s5
	li s3, 0x603
	packh a6, t2, s3
	li t4, 0x6a9
	packh s0, a6, t4
	li t2, 0x708
	packh t3, s0, t2
	li s2, 0x1bd
	packh s9, t3, s2
	li s10, 0x4e2
	packh a7, s9, s10
	li s10, 0x4d9
	packh a5, a7, s10
	li s7, 0x2f6
	packh a2, a5, s7
	li a4, 0x16f
	packh s2, a2, a4
	li a3, 0x348
	packh t6, s2, a3
	li s3, 0x392
	packh t1, t6, s3
	li s1, 0x260
	packh s2, t1, s1
	li t4, 0x4db
	packh t1, s2, t4
	li s11, 0x1fd
	packh t6, t1, s11
	li a5, 0x251
	packh a4, t6, a5
	li t6, 0x7
	packh a7, a4, t6
	li a1, 0x713
	packh a5, a7, a1
	li s9, 0x18c
	packh a3, a5, s9
	li a5, 0x7e8
	packh a1, a3, a5
	li s1, 0xd
	packh s6, a1, s1
	li t3, 0x1ba
	packh a6, s6, t3
	li a1, 0x52b
	packh s2, a6, a1
	li s4, 0x36d
	packh s9, s2, s4
	li a1, 0x1f0
	packh a5, s9, a1
	li a7, 0x583
	packh t4, a5, a7
	li t1, 0x29a
	packh a7, t4, t1
	li t3, 0x236
	packh t1, a7, t3
	li a6, 0x280
	packh a3, t1, a6
	li s5, 0x5dd
	packh s3, a3, s5
	li s10, 0xaf
	packh a7, s3, s10
	li t3, 0x65c
	packh s11, a7, t3
	li s10, 0x5cb
	packh s4, s11, s10
	li a5, 0x2e7
	packh t2, s4, a5
	li a6, 0x3c4
	packh s2, t2, a6
	li s5, 0x468
	packh s4, s2, s5
	li a7, 0x17b
	packh s10, s4, a7
	li a1, 0x68c
	packh s7, s10, a1
	li t4, 0x5b3
	packh s5, s7, t4
	li s4, 0x760
	packh t2, s5, s4
	li t3, 0x166
	packh t3, t2, t3
	li a3, 0x444
	packh s11, t3, a3
	li s1, 0x359
	packh s11, s11, s1
	li s6, 0x4bf
	packh s0, s11, s6
	li s9, 0x7e8
	packh a6, s0, s9
	li s11, 0x2f8
	packh a7, a6, s11
	li s10, 0x640
	packh a2, a7, s10
	li s6, 0xb7
	packh s6, a2, s6
	li s2, 0x7d1
	packh t6, s6, s2
	li t1, 0x274
	packh a3, t6, t1
	li a5, 0x31
	packh s3, a3, a5
	li s0, 0x145
	packh t4, s3, s0
	li a6, 0x50d
	packh a6, t4, a6
	li s10, 0x216
	packh a4, a6, s10
	li s0, 0x9a
	packh a1, a4, s0
	li s9, 0x7f5
	packh s0, a1, s9
	li a4, 0x3db
	packh s7, s0, a4
	li s2, 0x2b1
	packh t1, s7, s2
	li s5, 0x7e6
	packh t4, t1, s5
	li s1, 0x6d9
	packh a4, t4, s1
	li t4, 0x780
	packh a4, a4, t4
	li a6, 0x527
	packh t3, a4, a6
	li t4, 0x490
	packh t6, t3, t4
	li a7, 0x458
	packh a3, t6, a7
	li t1, 0x42c
	packh a7, a3, t1
	li a1, 0x173
	packh a6, a7, a1
	li a1, 0x14c
	packh s1, a6, a1
	li a5, 0x7db
	packh s9, s1, a5
	li a6, 0xf4
	packh t4, s9, a6
	li s9, 0x546
	packh t4, t4, s9
	li a7, 0x7bb
	packh s2, t4, a7
	li s0, 0x3f6
	packh s7, s2, s0
	csrr s10, time
	csrr a1, cycle
	csrr s5, instret
	sub s0, s10, a0
	sub t1, a1, t5
	sub s0, s5, s8
	li s8, 0
	csrr s10, time
	csrr t4, cycle
	csrr s5, instret
	li s0, 0x3d3
	packh s2, s8, s0
	li s0, 0x733
	packh s8, s2, s0
	li a6, 0x368
	packh s9, s8, a6
	li s1, 0xba
	packh t3, s9, s1
	li a6, 0x743
	packh s6, t3, a6
	li a2, 0x58e
	packh a3, s6, a2
	li a0, 0x42a
	packh s4, a3, a0
	li s1, 0x353
	packh t5, s4, s1
	li t6, 0x1ba
	packh s6, t5, t6
	li s2, 0x27c
	packh a1, s6, s2
	li a4, 0x488
	packh s11, a1, a4
	li s0, 0x2de
	packh a2, s11, s0
	li a4, 0x25e
	packh s6, a2, a4
	li s0, 0x5df
	packh s7, s6, s0
	li t2, 0x384
	packh s2, s7, t2
	li a6, 0x22b
	packh s2, s2, a6
	li s8, 0x728
	packh s4, s2, s8
	li s6, 0x547
	packh a5, s4, s6
	li s6, 0x236
	packh s8, a5, s6
	li a1, 0x339
	packh t6, s8, a1
	li s2, 0x387
	packh s9, t6, s2
	li s7, 0x497
	packh t6, s9, s7
	li s11, 0x1b6
	packh s2, t6, s11
	li s6, 0x112
	packh s8, s2, s6
	li a4, 0x4a7
	packh a5, s8, a4
	li a2, 0x287
	packh s8, a5, a2
	li s4, 0x6b6
	packh s3, s8, s4
	li s0, 0x11c
	packh t6, s3, s0
	li s8, 0x32a
	packh a0, t6, s8
	li s1, 0x74
	packh a5, a0, s1
	li s8, 0x409
	packh a1, a5, s8
	li s9, 0x62b
	packh s11, a1, s9
	li a5, 0x21
	packh t3, s11, a5
	li a4, 0x7ad
	packh t5, t3, a4
	li a5, 0x460
	packh s1, t5, a5
	li t5, 0x7e6
	packh s9, s1, t5
	li t3, 0x1a8
	packh s8, s9, t3
	li t6, 0x1e1
	packh a2, s8, t6
	li t3, 0x2eb
	packh s1, a2, t3
	li s4, 0x436
	packh t1, s1, s4
	li t2, 0x690
	packh a1, t1, t2
	li s8, 0x143
	packh s2, a1, s8
	li t3, 0x59c
	packh s11, s2, t3
	li t5, 0x1fa
	packh a7, s11, t5
	li a3, 0x355
	packh s11, a7, a3
	li t6, 0x38e
	packh a1, s11, t6
	li a0, 0xcb
	packh a7, a1, a0
	li s9, 0x7f8
	packh s0, a7, s9
	li a7, 0x20a
	packh a3, s0, a7
	li t3, 0x3e9
	packh s7, a3, t3
	li s0, 0x686
	packh a1, s7, s0
	li a2, 0x30f
	packh s1, a1, a2
	li s7, 0x5d5
	packh s2, s1, s7
	li s3, 0x4b0
	packh s2, s2, s3
	li a7, 0x27d
	packh a6, s2, a7
	li a2, 0x4f1
	packh t1, a6, a2
	li s2, 0x62e
	packh a3, t1, s2
	li a6, 0x100
	packh s7, a3, a6
	li s2, 0x7c1
	packh s7, s7, s2
	li a6, 0x1a7
	packh t5, s7, a6
	li t3, 0x655
	packh s6, t5, t3
	li a0, 0x56c
	packh t6, s6, a0
	li a1, 0x398
	packh s0, t6, a1
	li s4, 0x6cc
	packh s9, s0, s4
	li s1, 0x186
	packh s0, s9, s1
	li a7, 0x41
	packh a3, s0, a7
	li a0, 0x445
	packh t1, a3, a0
	li a3, 0x492
	packh s1, t1, a3
	li t5, 0x1de
	packh s0, s1, t5
	li a7, 0x4
	packh a6, s0, a7
	li s0, 0x236
	packh a1, a6, s0
	li t5, 0x36d
	packh a5, a1, t5
	li a7, 0x41f
	packh t6, a5, a7
	li a6, 0x2f4
	packh a0, t6, a6
	li t3, 0x27a
	packh s0, a0, t3
	li s6, 0x508
	packh a6, s0, s6
	li s4, 0x743
	packh s8, a6, s4
	li s3, 0xfd
	packh a6, s8, s3
	li t2, 0x760
	packh s1, a6, t2
	li t3, 0x6d3
	packh a0, s1, t3
	li s1, 0x757
	packh s9, a0, s1
	li a6, 0x642
	packh a4, s9, a6
	li s2, 0x43e
	packh a4, a4, s2
	li a3, 0x338
	packh t1, a4, a3
	li a5, 0x7f7
	packh a1, t1, a5
	li s4, 0x6e8
	packh t1, a1, s4
	li t2, 0xf
	packh t2, t1, t2
	li s2, 0x420
	packh t1, t2, s2
	li t2, 0x270
	packh a0, t1, t2
	li a4, 0x6f4
	packh s2, a0, a4
	li a3, 0x232
	packh s3, s2, a3
	li a7, 0x543
	packh a5, s3, a7
	li a2, 0x3b4
	packh s0, a5, a2
	li s9, 0x1a
	packh s6, s0, s9
	li s9, 0x94
	packh s7, s6, s9
	li s0, 0x667
	packh t3, s7, s0
	li s0, 0xdb
	packh s3, t3, s0
	li s6, 0x11a
	packh s1, s3, s6
	li s2, 0xb1
	packh t1, s1, s2
	li a2, 0x6d2
	packh s2, t1, a2
	csrr a0, time
	csrr a4, cycle
	csrr s9, instret
	sub t2, a0, s10
	sub s4, a4, t4
	sub a5, s9, s5
	li s6, 0
	csrr s10, time
	csrr s0, cycle
	csrr s1, instret
	li t1, 0x411
	packh s11, s6, t1
	li t6, 0x22e
	packh t5, s11, t6
	li s6, 0x24c
	packh s8, t5, s6
	li a3, 0x37c
	packh s2, s8, a3
	li a4, 0x699
	packh a2, s2, a4
	li s2, 0x7d0
	packh t5, a2, s2
	li t1, 0x24a
	packh t1, t5, t1
	li s7, 0x5ce
	packh a7, t1, s7
	li a6, 0xa3
	packh s7, a7, a6
	li s6, 0x606
	packh t6, s7, s6
	li t2, 0x1a6
	packh a0, t6, t2
	li s9, 0x230
	packh t6, a0, s9
	li s8, 0x5c4
	packh a2, t6, s8
	li a0, 0x16b
	packh t2, a2, a0
	li a4, 0x425
	packh s8, t2, a4
	li s2, 0x1ca
	packh t6, s8, s2
	li s11, 0x3ca
	packh a1, t6, s11
	li t1, 0x468
	packh a6, a1, t1
	li t1, 0x624
	packh a1, a6, t1
	li s7, 0x1ac
	packh s6, a1, s7
	li t1, 0x13f
	packh t6, s6, t1
	li s2, 0x2ab
	packh a0, t6, s2
	li s8, 0xd7
	packh a0, a0, s8
	li t2, 0x2d5
	packh a3, a0, t2
	li s6, 0x683
	packh s7, a3, s6
	li a3, 0xcc
	packh s8, s7, a3
	li a7, 0x5d3
	packh a3, s8, a7
	li s3, 0x2e9
	packh a3, a3, s3
	li s8, 0x10a
	packh s9, a3, s8
	li a4, 0x3f5
	packh t4, s9, a4
	li s3, 0x438
	packh s3, t4, s3
	li a6, 0x71e
	packh s11, s3, a6
	li s3, 0x5e5
	packh t3, s11, s3
	li s7, 0x668
	packh s9, t3, s7
	li a3, 0x456
	packh s11, s9, a3
	li a0, 0x655
	packh a2, s11, a0
	li t2, 0x245
	packh t3, a2, t2
	li s3, 0x1a6
	packh t6, t3, s3
	li s9, 0x633
	packh t5, t6, s9
	li s6, 0x5fe
	packh t3, t5, s6
	li a3, 0x5d3
	packh t4, t3, a3
	li s7, 0x1e8
	packh s8, t4, s7
	li t2, 0x79e
	packh t2, s8, t2
	li a6, 0x33a
	packh a3, t2, a6
	li s2, 0x703
	packh a4, a3, s2
	li s6, 0x6a1
	packh a2, a4, s6
	li t6, 0x8
	packh s2, a2, t6
	li t6, 0x55a
	packh s3, s2, t6
	li s6, 0x338
	packh a4, s3, s6
	li t5, 0x6dd
	packh a6, a4, t5
	li a3, 0x51a
	packh t5, a6, a3
	li s11, 0x2e2
	packh t1, t5, s11
	li s6, 0x109
	packh t3, t1, s6
	li a4, 0x46f
	packh t5, t3, a4
	li s7, 0x468
	packh a4, t5, s7
	li t3, 0x19e
	packh t3, a4, t3
	li t6, 0x683
	packh t2, t3, t6
	li a4, 0x88
	packh t4, t2, a4
	li a6, 0x3ce
	packh a6, t4, a6
	li s8, 0x516
	packh t3, a6, s8
	li t1, 0x715
	packh t4, t3, t1
	li s11, 0x27c
	packh a2, t4, s11
	li s2, 0x4b3
	packh a2, a2, s2
	li a4, 0x74d
	packh a6, a2, a4
	li a3, 0x50b
	packh s5, a6, a3
	li a4, 0x4bc
	packh a0, s5, a4
	li a2, 0xae
	packh s6, a0, a2
	li a2, 0x528
	packh t3, s6, a2
	li s8, 0x533
	packh t1, t3, s8
	li a6, 0x213
	packh a3, t1, a6
	li t5, 0x53e
	packh s2, a3, t5
	li a0, 0x130
	packh a1, s2, a0
	li t2, 0x33c
	packh a0, a1, t2
	li s3, 0x1e4
	packh s6, a0, s3
	li a2, 0x6b
	packh t6, s6, a2
	li t4, 0x1e8
	packh s2, t6, t4
	li t6, 0x128
	packh t2, s2, t6
	li a2, 0x547
	packh t2, t2, a2
	li s11, 0x78f
	packh s2, t2, s11
	li a0, 0x268
	packh t6, s2, a0
	li s11, 0x169
	packh a1, t6, s11
	li t4, 0x9b
	packh s5, a1, t4
	li t3, 0x4ad
	packh a3, s5, t3
	li s2, 0x181
	packh a2, a3, s2
	li s7, 0x150
	packh s2, a2, s7
	li a0, 0x180
	packh s2, s2, a0
	li a1, 0x185
	packh a2, s2, a1
	li t1, 0x6ad
	packh a4, a2, t1
	li a0, 0x55f
	packh s2, a4, a0
	li t1, 0x14c
	packh a1, s2, t1
	li a6, 0x368
	packh s5, a1, a6
	li t3, 0x7c2
	packh t3, s5, t3
	li a3, 0x4b
	packh t2, t3, a3
	li s3, 0x3af
	packh a2, t2, s3
	li t6, 0x223
	packh s5, a2, t6
	li s8, 0x2f
	packh a3, s5, s8
	li t6, 0x20d
	packh t3, a3, t6
	li a1, 0x209
	packh a3, t3, a1
	li t1, 0x75a
	packh s8, a3, t1
	li s2, 0x357
	packh a3, s8, s2
	csrr s3, time
	csrr s6, cycle
	csrr s2, instret
	sub t5, s3, s10
	sub a1, s6, s0
	sub s6, s2, s1
	beq s4, a1, pass_label_98
	li s5, failed_addr
	ld s3, 0(s5)
	jr s3
pass_label_98:
	beq a5, s6, pass_label_99
	li t6, failed_addr
	ld a7, 0(t6)
	jr a7
pass_label_99:
SID_ZKT_08_PACKH_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_PACKW)
SID_ZKT_08_PACKW:
	li sp, SID_ZKT_08_PACKW_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s3, 0
	csrr s1, time
	csrr t3, cycle
	csrr s9, instret
	li s2, 0x38d
	packw t5, s3, s2
	li a3, 0x6b0
	packw s8, t5, a3
	li t5, 0x50c
	packw s5, s8, t5
	li t4, 0x244
	packw a0, s5, t4
	li a5, 0x16a
	packw a6, a0, a5
	li s10, 0x101
	packw a1, a6, s10
	li s10, 0x1c3
	packw a6, a1, s10
	li s4, 0x358
	packw s5, a6, s4
	li t1, 0x341
	packw s10, s5, t1
	li a6, 0x4d4
	packw t5, s10, a6
	li a3, 0x35d
	packw s10, t5, a3
	li t4, 0x5ab
	packw a1, s10, t4
	li t6, 0x55c
	packw a2, a1, t6
	li t6, 0x6c2
	packw s5, a2, t6
	li s0, 0x74e
	packw a7, s5, s0
	li a6, 0x92
	packw a3, a7, a6
	li a4, 0x579
	packw a3, a3, a4
	li a7, 0x45b
	packw t6, a3, a7
	li s11, 0x746
	packw a4, t6, s11
	li s11, 0x14f
	packw t4, a4, s11
	li a3, 0x1c7
	packw t6, t4, a3
	li a0, 0x520
	packw t1, t6, a0
	li s5, 0x143
	packw s0, t1, s5
	li a3, 0xa1
	packw t2, s0, a3
	li a3, 0x7c9
	packw s10, t2, a3
	li s6, 0x21c
	packw a2, s10, s6
	li a7, 0x4fe
	packw a5, a2, a7
	li s3, 0x3bb
	packw t4, a5, s3
	li s8, 0xb5
	packw s11, t4, s8
	li t6, 0x56b
	packw t5, s11, t6
	li a1, 0xcb
	packw s0, t5, a1
	li t6, 0xcd
	packw t1, s0, t6
	li s4, 0x486
	packw s3, t1, s4
	li s8, 0x7d7
	packw s5, s3, s8
	li s6, 0x6eb
	packw s3, s5, s6
	li s8, 0x763
	packw s11, s3, s8
	li s10, 0x292
	packw s6, s11, s10
	li t1, 0x6e
	packw a2, s6, t1
	li t6, 0x37b
	packw t5, a2, t6
	li s11, 0x2da
	packw s8, t5, s11
	li a1, 0x3ac
	packw s5, s8, a1
	li t6, 0x144
	packw s2, s5, t6
	li a7, 0x32
	packw a5, s2, a7
	li s0, 0x6ed
	packw s0, a5, s0
	li a6, 0x1ac
	packw s10, s0, a6
	li t2, 0x359
	packw a5, s10, t2
	li t6, 0x76b
	packw a7, a5, t6
	li a1, 0x2f5
	packw s5, a7, a1
	li t6, 0x74a
	packw a5, s5, t6
	li a0, 0x46b
	packw s3, a5, a0
	li a3, 0x33f
	packw a1, s3, a3
	li t5, 0x7ff
	packw s6, a1, t5
	li s8, 0x277
	packw s5, s6, s8
	li s4, 0x699
	packw t4, s5, s4
	li a0, 0x635
	packw a6, t4, a0
	li s10, 0x6c3
	packw a4, a6, s10
	li t5, 0x4c0
	packw a6, a4, t5
	li s4, 0x7d8
	packw a1, a6, s4
	li a2, 0x1cd
	packw a7, a1, a2
	li a0, 0x19b
	packw a0, a7, a0
	li s8, 0x6ca
	packw s2, a0, s8
	li a3, 0x3cf
	packw a6, s2, a3
	li a4, 0xab
	packw t4, a6, a4
	li s5, 0x3a7
	packw t2, t4, s5
	li s8, 0x3ee
	packw s2, t2, s8
	li a2, 0xb1
	packw a6, s2, a2
	li s6, 0x273
	packw a2, a6, s6
	li s5, 0x58f
	packw s4, a2, s5
	li t4, 0x39b
	packw a1, s4, t4
	li s6, 0x2e8
	packw a0, a1, s6
	li t4, 0x3a7
	packw s6, a0, t4
	li a4, 0x86
	packw s7, s6, a4
	li s6, 0x3f9
	packw a7, s7, s6
	li s8, 0x3aa
	packw a5, a7, s8
	li s3, 0x406
	packw a2, a5, s3
	li s8, 0x317
	packw s8, a2, s8
	li s0, 0x38b
	packw s7, s8, s0
	li t6, 0x428
	packw s3, s7, t6
	li s8, 0x2fe
	packw a4, s3, s8
	li s0, 0x690
	packw s0, a4, s0
	li a0, 0x10
	packw s5, s0, a0
	li s2, 0x79b
	packw s3, s5, s2
	li a3, 0x61d
	packw a6, s3, a3
	li t5, 0x718
	packw a2, a6, t5
	li a7, 0x407
	packw a4, a2, a7
	li s10, 0x21f
	packw s10, a4, s10
	li t2, 0x279
	packw s7, s10, t2
	li a0, 0xe1
	packw t4, s7, a0
	li a0, 0x7c3
	packw t2, t4, a0
	li t4, 0x7da
	packw s6, t2, t4
	li s2, 0x7b2
	packw t6, s6, s2
	li a3, 0xfb
	packw s8, t6, a3
	li s4, 0x77e
	packw t1, s8, s4
	li t4, 0x5f3
	packw a0, t1, t4
	li a1, 0x7a8
	packw t1, a0, a1
	li a2, 0xf3
	packw s0, t1, a2
	li a0, 0x400
	packw t2, s0, a0
	li a6, 0x498
	packw t1, t2, a6
	li a6, 0x60b
	packw s2, t1, a6
	li s4, 0x4a3
	packw s2, s2, s4
	csrr a4, time
	csrr s2, cycle
	csrr a7, instret
	sub a3, a4, s1
	sub t5, s2, t3
	sub t3, a7, s9
	li t5, 0
	csrr a1, time
	csrr s9, cycle
	csrr s11, instret
	li a6, 0x48c
	packw s4, t5, a6
	li s6, 0x7af
	packw s0, s4, s6
	li a5, 0x109
	packw t3, s0, a5
	li a6, 0x55c
	packw s2, t3, a6
	li a0, 0x4a8
	packw a3, s2, a0
	li t5, 0x242
	packw a4, a3, t5
	li t3, 0x5fa
	packw s10, a4, t3
	li s6, 0x14e
	packw t4, s10, s6
	li s5, 0x41d
	packw a7, t4, s5
	li a2, 0x3b3
	packw s6, a7, a2
	li t3, 0x5fc
	packw a3, s6, t3
	li s10, 0x14d
	packw a4, a3, s10
	li a3, 0x2a
	packw a6, a4, a3
	li s7, 0x75e
	packw s4, a6, s7
	li a7, 0x3f1
	packw t5, s4, a7
	li a3, 0x18f
	packw t4, t5, a3
	li s0, 0x1d2
	packw t4, t4, s0
	li s8, 0x737
	packw a2, t4, s8
	li s8, 0x42c
	packw s2, a2, s8
	li s8, 0x446
	packw t3, s2, s8
	li a3, 0x262
	packw a7, t3, a3
	li s6, 0x433
	packw a2, a7, s6
	li t1, 0x481
	packw t3, a2, t1
	li a5, 0x275
	packw a4, t3, a5
	li a2, 0x7e1
	packw t3, a4, a2
	li s0, 0x568
	packw t6, t3, s0
	li a3, 0x3de
	packw t1, t6, a3
	li t4, 0x325
	packw t5, t1, t4
	li s10, 0x5f8
	packw s7, t5, s10
	li s0, 0x2ee
	packw a5, s7, s0
	li s4, 0x5e8
	packw s8, a5, s4
	li s1, 0x76a
	packw a3, s8, s1
	li s10, 0x381
	packw s1, a3, s10
	li t4, 0x7ea
	packw s2, s1, t4
	li s1, 0x658
	packw s10, s2, s1
	li a6, 0x429
	packw t6, s10, a6
	li a4, 0x72b
	packw t1, t6, a4
	li a4, 0x3b6
	packw s1, t1, a4
	li t6, 0x459
	packw t3, s1, t6
	li s4, 0x344
	packw s7, t3, s4
	li t1, 0xe7
	packw a3, s7, t1
	li s4, 0xcc
	packw a3, a3, s4
	li s6, 0x73a
	packw t1, a3, s6
	li a3, 0x5cc
	packw s10, t1, a3
	li t1, 0x577
	packw s2, s10, t1
	li s6, 0x366
	packw s10, s2, s6
	li s4, 0xff
	packw a2, s10, s4
	li s1, 0x5c6
	packw a3, a2, s1
	li t1, 0x12f
	packw s6, a3, t1
	li s8, 0x3d8
	packw s7, s6, s8
	li s3, 0x45
	packw a4, s7, s3
	li a6, 0x33d
	packw s5, a4, a6
	li s1, 0x164
	packw a4, s5, s1
	li a0, 0x579
	packw s2, a4, a0
	li s7, 0xbe
	packw a5, s2, s7
	li t4, 0x154
	packw s6, a5, t4
	li a4, 0x3f4
	packw s1, s6, a4
	li a2, 0x76c
	packw t4, s1, a2
	li s8, 0x2a2
	packw t1, t4, s8
	li a7, 0x688
	packw t6, t1, a7
	li s8, 0x121
	packw a5, t6, s8
	li t2, 0x603
	packw s8, a5, t2
	li a6, 0x3b0
	packw s4, s8, a6
	li t5, 0x58b
	packw s0, s4, t5
	li t4, 0x1b3
	packw t1, s0, t4
	li s0, 0x44a
	packw s5, t1, s0
	li s4, 0x4fa
	packw s4, s5, s4
	li s3, 0x26d
	packw a2, s4, s3
	li s10, 0x16b
	packw a4, a2, s10
	li t3, 0x335
	packw t1, a4, t3
	li s0, 0x77a
	packw s6, t1, s0
	li t2, 0x205
	packw s10, s6, t2
	li t2, 0x29e
	packw a0, s10, t2
	li s4, 0x6b0
	packw s10, a0, s4
	li a3, 0x285
	packw a0, s10, a3
	li s8, 0x268
	packw t3, a0, s8
	li s0, 0x6f2
	packw a5, t3, s0
	li s0, 0xfa
	packw s5, a5, s0
	li s10, 0x100
	packw s10, s5, s10
	li a6, 0x4d
	packw t3, s10, a6
	li s5, 0x3d7
	packw a2, t3, s5
	li a4, 0x2f4
	packw t3, a2, a4
	li s2, 0xc7
	packw t5, t3, s2
	li s7, 0x3a
	packw a4, t5, s7
	li t5, 0x3a4
	packw a6, a4, t5
	li t6, 0x47
	packw t5, a6, t6
	li t1, 0x3d2
	packw s1, t5, t1
	li s2, 0x4d1
	packw s7, s1, s2
	li s2, 0x5fd
	packw s2, s7, s2
	li s3, 0xf5
	packw a0, s2, s3
	li a5, 0x652
	packw t2, a0, a5
	li s3, 0x266
	packw s5, t2, s3
	li s10, 0x4e8
	packw s10, s5, s10
	li s7, 0x5a3
	packw t6, s10, s7
	li a0, 0x260
	packw s2, t6, a0
	li s6, 0x38a
	packw s1, s2, s6
	li s8, 0x7ec
	packw s8, s1, s8
	li s1, 0x477
	packw a0, s8, s1
	li s3, 0x21a
	packw t2, a0, s3
	li t6, 0x244
	packw a3, t2, t6
	csrr a2, time
	csrr s3, cycle
	csrr a0, instret
	sub a5, a2, a1
	sub s6, s3, s9
	sub a4, a0, s11
	li a5, 0
	csrr a6, time
	csrr s2, cycle
	csrr t5, instret
	li s4, 0x478
	packw s4, a5, s4
	li s11, 0x72f
	packw s4, s4, s11
	li s7, 0x65f
	packw t6, s4, s7
	li t2, 0x12
	packw s9, t6, t2
	li t2, 0x724
	packw a0, s9, t2
	li s8, 0x5bd
	packw s1, a0, s8
	li t1, 0x280
	packw a5, s1, t1
	li s7, 0x15
	packw t3, a5, s7
	li s0, 0x67d
	packw t2, t3, s0
	li s0, 0x1f2
	packw s8, t2, s0
	li s10, 0x347
	packw s11, s8, s10
	li a2, 0x61a
	packw s8, s11, a2
	li s0, 0x2f5
	packw t3, s8, s0
	li s0, 0x345
	packw t2, t3, s0
	li a3, 0x2c0
	packw s11, t2, a3
	li t2, 0x5be
	packw a2, s11, t2
	li s8, 0x311
	packw t2, a2, s8
	li t6, 0x7ef
	packw a7, t2, t6
	li s5, 0x749
	packw t3, a7, s5
	li s3, 0x35e
	packw s8, t3, s3
	li s5, 0x18f
	packw a3, s8, s5
	li a2, 0x3d5
	packw s8, a3, a2
	li a1, 0xbc
	packw a3, s8, a1
	li t4, 0x166
	packw t3, a3, t4
	li a5, 0xf4
	packw s10, t3, a5
	li a5, 0x37c
	packw t4, s10, a5
	li s9, 0x295
	packw a1, t4, s9
	li t6, 0x4a6
	packw a2, a1, t6
	li s11, 0x1b4
	packw s1, a2, s11
	li s8, 0x790
	packw s11, s1, s8
	li a3, 0x7da
	packw s0, s11, a3
	li a7, 0x303
	packw t1, s0, a7
	li s3, 0x2f2
	packw s7, t1, s3
	li s10, 0x5b7
	packw t6, s7, s10
	li t4, 0x61b
	packw a5, t6, t4
	li a1, 0x599
	packw a3, a5, a1
	li t6, 0x14d
	packw s9, a3, t6
	li s4, 0xc6
	packw t2, s9, s4
	li a0, 0x2d5
	packw t2, t2, a0
	li t6, 0x65b
	packw t1, t2, t6
	li a0, 0x7ca
	packw s8, t1, a0
	li a1, 0x3e6
	packw t6, s8, a1
	li s9, 0x233
	packw s7, t6, s9
	li a1, 0x39
	packw s1, s7, a1
	li s4, 0x1cc
	packw s3, s1, s4
	li t6, 0x229
	packw s1, s3, t6
	li a2, 0x6e1
	packw s3, s1, a2
	li t2, 0x42f
	packw a7, s3, t2
	li a3, 0x365
	packw s3, a7, a3
	li a5, 0x704
	packw s9, s3, a5
	li s4, 0x664
	packw s4, s9, s4
	li s3, 0x46a
	packw a1, s4, s3
	li s3, 0x29d
	packw t2, a1, s3
	li a7, 0xa1
	packw s10, t2, a7
	li t3, 0x6c6
	packw t2, s10, t3
	li s11, 0x30b
	packw s5, t2, s11
	li t1, 0x151
	packw a7, s5, t1
	li s10, 0x394
	packw s8, a7, s10
	li s0, 0x2f6
	packw s4, s8, s0
	li a2, 0x43c
	packw s9, s4, a2
	li a3, 0x6c6
	packw a5, s9, a3
	li s3, 0x464
	packw s10, a5, s3
	li t1, 0x704
	packw s1, s10, t1
	li t6, 0x5db
	packw a5, s1, t6
	li s1, 0x741
	packw s5, a5, s1
	li t1, 0x68
	packw s1, s5, t1
	li a5, 0x2dd
	packw s10, s1, a5
	li s7, 0x6fa
	packw s11, s10, s7
	li t1, 0x6d8
	packw s0, s11, t1
	li a7, 0x29c
	packw s4, s0, a7
	li s9, 0x63a
	packw s5, s4, s9
	li s8, 0x125
	packw t6, s5, s8
	li a3, 0x30a
	packw s11, t6, a3
	li a5, 0x1ce
	packw s7, s11, a5
	li a2, 0x70a
	packw s11, s7, a2
	li t4, 0xa2
	packw a0, s11, t4
	li a7, 0x1af
	packw a7, a0, a7
	li s11, 0x3fb
	packw a0, a7, s11
	li a1, 0x381
	packw s1, a0, a1
	li s7, 0x64d
	packw s5, s1, s7
	li a3, 0x13b
	packw a1, s5, a3
	li s11, 0x7d7
	packw s9, a1, s11
	li s7, 0x69e
	packw s1, s9, s7
	li s3, 0x453
	packw a0, s1, s3
	li a3, 0x1b
	packw t3, a0, a3
	li t2, 0x664
	packw a1, t3, t2
	li s11, 0x346
	packw t1, a1, s11
	li s5, 0x47f
	packw s5, t1, s5
	li t4, 0x2b3
	packw s8, s5, t4
	li t4, 0x97
	packw t3, s8, t4
	li t4, 0x313
	packw s7, t3, t4
	li a5, 0x503
	packw s4, s7, a5
	li t3, 0x7e1
	packw t6, s4, t3
	li t3, 0x3e4
	packw s11, t6, t3
	li a7, 0x4b
	packw a7, s11, a7
	li t3, 0x346
	packw a5, a7, t3
	li s5, 0x27a
	packw t6, a5, s5
	li t4, 0x3f3
	packw a1, t6, t4
	li s1, 0x31
	packw s3, a1, s1
	li t6, 0x63a
	packw a7, s3, t6
	csrr t2, time
	csrr s3, cycle
	csrr s1, instret
	sub a0, t2, a6
	sub t4, s3, s2
	sub a3, s1, t5
	beq s6, t4, pass_label_100
	li s11, failed_addr
	ld s0, 0(s11)
	jr s0
pass_label_100:
	beq a4, a3, pass_label_101
	li s3, failed_addr
	ld a5, 0(s3)
	jr a5
pass_label_101:
SID_ZKT_08_PACKW_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_BREV8)
SID_ZKT_08_BREV8:
	li sp, SID_ZKT_08_BREV8_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a5, 0
	csrr s8, time
	csrr a4, cycle
	csrr a6, instret
	brev8 a7, a5
	brev8 s5, a7
	brev8 a3, s5
	brev8 s0, a3
	brev8 t2, s0
	brev8 s6, t2
	brev8 t4, s6
	brev8 t5, t4
	brev8 s9, t5
	brev8 s6, s9
	brev8 t5, s6
	brev8 t4, t5
	brev8 s2, t4
	brev8 s10, s2
	brev8 s4, s10
	brev8 a5, s4
	brev8 a3, a5
	brev8 t2, a3
	brev8 s10, t2
	brev8 s2, s10
	brev8 t3, s2
	brev8 s3, t3
	brev8 s11, s3
	brev8 t5, s11
	brev8 s7, t5
	brev8 t5, s7
	brev8 s1, t5
	brev8 a2, s1
	brev8 t2, a2
	brev8 a7, t2
	brev8 a1, a7
	brev8 a2, a1
	brev8 t2, a2
	brev8 s0, t2
	brev8 a0, s0
	brev8 s6, a0
	brev8 s3, s6
	brev8 t2, s3
	brev8 a2, t2
	brev8 s5, a2
	brev8 a2, s5
	brev8 t2, a2
	brev8 a3, t2
	brev8 s0, a3
	brev8 s0, s0
	brev8 t6, s0
	brev8 t6, t6
	brev8 t6, t6
	brev8 t4, t6
	brev8 s11, t4
	brev8 t2, s11
	brev8 a7, t2
	brev8 a0, a7
	brev8 a0, a0
	brev8 s7, a0
	brev8 a5, s7
	brev8 t6, a5
	brev8 s7, t6
	brev8 t4, s7
	brev8 a1, t4
	brev8 t2, a1
	brev8 s2, t2
	brev8 s3, s2
	brev8 t2, s3
	brev8 a5, t2
	brev8 t6, a5
	brev8 t2, t6
	brev8 t6, t2
	brev8 s5, t6
	brev8 s2, s5
	brev8 s4, s2
	brev8 s10, s4
	brev8 s5, s10
	brev8 t4, s5
	brev8 s5, t4
	brev8 s9, s5
	brev8 a3, s9
	brev8 a3, a3
	brev8 a1, a3
	brev8 a2, a1
	brev8 s11, a2
	brev8 a3, s11
	brev8 s4, a3
	brev8 s9, s4
	brev8 a0, s9
	brev8 s0, a0
	brev8 s5, s0
	brev8 a3, s5
	brev8 s4, a3
	brev8 s7, s4
	brev8 a1, s7
	brev8 t2, a1
	brev8 a5, t2
	brev8 a3, a5
	brev8 s9, a3
	brev8 a3, s9
	brev8 s2, a3
	brev8 s6, s2
	brev8 s3, s6
	brev8 t1, s3
	csrr s6, time
	csrr s7, cycle
	csrr a1, instret
	sub t6, s6, s8
	sub s7, s7, a4
	sub s3, a1, a6
	li a1, 0
	csrr s5, time
	csrr a2, cycle
	csrr a0, instret
	brev8 t1, a1
	brev8 s2, t1
	brev8 t5, s2
	brev8 s4, t5
	brev8 s11, s4
	brev8 a4, s11
	brev8 a7, a4
	brev8 s1, a7
	brev8 s11, s1
	brev8 s3, s11
	brev8 s8, s3
	brev8 a6, s8
	brev8 s10, a6
	brev8 s10, s10
	brev8 t2, s10
	brev8 t3, t2
	brev8 a6, t3
	brev8 a4, a6
	brev8 s10, a4
	brev8 s8, s10
	brev8 a7, s8
	brev8 a6, a7
	brev8 a4, a6
	brev8 s9, a4
	brev8 s10, s9
	brev8 s10, s10
	brev8 a3, s10
	brev8 a5, a3
	brev8 s1, a5
	brev8 a5, s1
	brev8 a1, a5
	brev8 t2, a1
	brev8 s4, t2
	brev8 a7, s4
	brev8 s10, a7
	brev8 t6, s10
	brev8 s2, t6
	brev8 s11, s2
	brev8 s9, s11
	brev8 s4, s9
	brev8 t4, s4
	brev8 a5, t4
	brev8 s8, a5
	brev8 a6, s8
	brev8 s10, a6
	brev8 s4, s10
	brev8 a5, s4
	brev8 a5, a5
	brev8 t3, a5
	brev8 s4, t3
	brev8 s7, s4
	brev8 s6, s7
	brev8 a5, s6
	brev8 s1, a5
	brev8 t6, s1
	brev8 a4, t6
	brev8 a4, a4
	brev8 s9, a4
	brev8 t5, s9
	brev8 s0, t5
	brev8 a4, s0
	brev8 t1, a4
	brev8 t4, t1
	brev8 s4, t4
	brev8 a4, s4
	brev8 a1, a4
	brev8 s8, a1
	brev8 s6, s8
	brev8 s6, s6
	brev8 t2, s6
	brev8 s1, t2
	brev8 a3, s1
	brev8 s4, a3
	brev8 a4, s4
	brev8 a3, a4
	brev8 t6, a3
	brev8 s3, t6
	brev8 t1, s3
	brev8 a4, t1
	brev8 s10, a4
	brev8 a4, s10
	brev8 s3, a4
	brev8 a1, s3
	brev8 a6, a1
	brev8 t1, a6
	brev8 a5, t1
	brev8 s4, a5
	brev8 t6, s4
	brev8 a4, t6
	brev8 a3, a4
	brev8 t6, a3
	brev8 t6, t6
	brev8 s9, t6
	brev8 a5, s9
	brev8 s0, a5
	brev8 s4, s0
	brev8 a3, s4
	brev8 t1, a3
	brev8 a5, t1
	brev8 a3, a5
	csrr a3, time
	csrr s11, cycle
	csrr a5, instret
	sub t1, a3, s5
	sub s3, s11, a2
	sub s5, a5, a0
	li t4, 0
	csrr a7, time
	csrr s0, cycle
	csrr s9, instret
	brev8 s4, t4
	brev8 s8, s4
	brev8 s1, s8
	brev8 s2, s1
	brev8 t1, s2
	brev8 t2, t1
	brev8 a0, t2
	brev8 t4, a0
	brev8 a0, t4
	brev8 a1, a0
	brev8 a6, a1
	brev8 s6, a6
	brev8 a3, s6
	brev8 s8, a3
	brev8 a5, s8
	brev8 s6, a5
	brev8 t3, s6
	brev8 s8, t3
	brev8 s6, s8
	brev8 s8, s6
	brev8 s11, s8
	brev8 s2, s11
	brev8 t4, s2
	brev8 t2, t4
	brev8 s6, t2
	brev8 a0, s6
	brev8 t6, a0
	brev8 t6, t6
	brev8 t3, t6
	brev8 a1, t3
	brev8 a3, a1
	brev8 s4, a3
	brev8 a2, s4
	brev8 a5, a2
	brev8 a3, a5
	brev8 s11, a3
	brev8 a2, s11
	brev8 t6, a2
	brev8 s7, t6
	brev8 s11, s7
	brev8 a2, s11
	brev8 t6, a2
	brev8 s1, t6
	brev8 a0, s1
	brev8 s10, a0
	brev8 t4, s10
	brev8 a1, t4
	brev8 a3, a1
	brev8 s10, a3
	brev8 a1, s10
	brev8 t3, a1
	brev8 t2, t3
	brev8 t5, t2
	brev8 t4, t5
	brev8 s2, t4
	brev8 t3, s2
	brev8 a4, t3
	brev8 t1, a4
	brev8 s10, t1
	brev8 a1, s10
	brev8 t2, a1
	brev8 t2, t2
	brev8 a3, t2
	brev8 t6, a3
	brev8 t4, t6
	brev8 s4, t4
	brev8 t5, s4
	brev8 a1, t5
	brev8 s8, a1
	brev8 a4, s8
	brev8 a0, a4
	brev8 s11, a0
	brev8 t2, s11
	brev8 t1, t2
	brev8 a1, t1
	brev8 t4, a1
	brev8 s1, t4
	brev8 s8, s1
	brev8 s4, s8
	brev8 a1, s4
	brev8 t6, a1
	brev8 t5, t6
	brev8 t2, t5
	brev8 a2, t2
	brev8 s11, a2
	brev8 s11, s11
	brev8 t1, s11
	brev8 s4, t1
	brev8 s10, s4
	brev8 s1, s10
	brev8 t5, s1
	brev8 t4, t5
	brev8 t3, t4
	brev8 t4, t3
	brev8 a1, t4
	brev8 a3, a1
	brev8 s1, a3
	brev8 s7, s1
	brev8 t6, s7
	brev8 a0, t6
	csrr s8, time
	csrr t1, cycle
	csrr a0, instret
	sub t3, s8, a7
	sub t2, t1, s0
	sub s0, a0, s9
	beq s3, t2, pass_label_102
	li t5, failed_addr
	ld a7, 0(t5)
	jr a7
pass_label_102:
	beq s5, s0, pass_label_103
	li s6, failed_addr
	ld s6, 0(s6)
	jr s6
pass_label_103:
SID_ZKT_08_BREV8_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_08_REV8)
SID_ZKT_08_REV8:
	li sp, SID_ZKT_08_REV8_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a2, 0
	csrr s11, time
	csrr s8, cycle
	csrr s3, instret
	rev8 s1, a2
	rev8 a7, s1
	rev8 s1, a7
	rev8 t5, s1
	rev8 a0, t5
	rev8 a7, a0
	rev8 s6, a7
	rev8 s2, s6
	rev8 t1, s2
	rev8 s1, t1
	rev8 t4, s1
	rev8 t5, t4
	rev8 a7, t5
	rev8 t2, a7
	rev8 s6, t2
	rev8 s6, s6
	rev8 s5, s6
	rev8 a5, s5
	rev8 t4, a5
	rev8 t4, t4
	rev8 t2, t4
	rev8 a5, t2
	rev8 a7, a5
	rev8 t5, a7
	rev8 a2, t5
	rev8 s9, a2
	rev8 t3, s9
	rev8 t2, t3
	rev8 a0, t2
	rev8 s1, a0
	rev8 a5, s1
	rev8 s5, a5
	rev8 t5, s5
	rev8 a2, t5
	rev8 s9, a2
	rev8 s0, s9
	rev8 t4, s0
	rev8 a5, t4
	rev8 a3, a5
	rev8 a7, a3
	rev8 a4, a7
	rev8 s6, a4
	rev8 s9, s6
	rev8 s2, s9
	rev8 s7, s2
	rev8 s6, s7
	rev8 t6, s6
	rev8 t1, t6
	rev8 a0, t1
	rev8 a1, a0
	rev8 a0, a1
	rev8 s1, a0
	rev8 t2, s1
	rev8 s6, t2
	rev8 t6, s6
	rev8 t1, t6
	rev8 s2, t1
	rev8 a7, s2
	rev8 a3, a7
	rev8 s0, a3
	rev8 a3, s0
	rev8 a3, a3
	rev8 t6, a3
	rev8 s4, t6
	rev8 t6, s4
	rev8 t2, t6
	rev8 s1, t2
	rev8 s6, s1
	rev8 s2, s6
	rev8 a1, s2
	rev8 a1, a1
	rev8 s6, a1
	rev8 a0, s6
	rev8 s5, a0
	rev8 t3, s5
	rev8 t4, t3
	rev8 a0, t4
	rev8 s10, a0
	rev8 a1, s10
	rev8 s1, a1
	rev8 a6, s1
	rev8 s2, a6
	rev8 t2, s2
	rev8 a1, t2
	rev8 a6, a1
	rev8 t3, a6
	rev8 s9, t3
	rev8 s10, s9
	rev8 t6, s10
	rev8 s4, t6
	rev8 a3, s4
	rev8 s0, a3
	rev8 t6, s0
	rev8 t5, t6
	rev8 t1, t5
	rev8 s5, t1
	rev8 t4, s5
	rev8 t6, t4
	rev8 s2, t6
	rev8 s2, s2
	csrr t4, time
	csrr t2, cycle
	csrr s0, instret
	sub s2, t4, s11
	sub t3, t2, s8
	sub s1, s0, s3
	li s4, 0
	csrr t1, time
	csrr a3, cycle
	csrr a5, instret
	rev8 s10, s4
	rev8 s8, s10
	rev8 s6, s8
	rev8 s5, s6
	rev8 a6, s5
	rev8 s1, a6
	rev8 s10, s1
	rev8 a0, s10
	rev8 s8, a0
	rev8 a4, s8
	rev8 s11, a4
	rev8 s7, s11
	rev8 a7, s7
	rev8 s10, a7
	rev8 s6, s10
	rev8 s1, s6
	rev8 s7, s1
	rev8 a6, s7
	rev8 t2, a6
	rev8 s0, t2
	rev8 s1, s0
	rev8 s0, s1
	rev8 s8, s0
	rev8 t5, s8
	rev8 t6, t5
	rev8 a2, t6
	rev8 a0, a2
	rev8 s4, a0
	rev8 a1, s4
	rev8 a4, a1
	rev8 s2, a4
	rev8 a0, s2
	rev8 s3, a0
	rev8 a1, s3
	rev8 s5, a1
	rev8 s11, s5
	rev8 t4, s11
	rev8 s5, t4
	rev8 s4, s5
	rev8 s10, s4
	rev8 a2, s10
	rev8 s9, a2
	rev8 a7, s9
	rev8 s4, a7
	rev8 s7, s4
	rev8 a7, s7
	rev8 a4, a7
	rev8 s0, a4
	rev8 a7, s0
	rev8 s4, a7
	rev8 t2, s4
	rev8 a7, t2
	rev8 a2, a7
	rev8 t5, a2
	rev8 a4, t5
	rev8 a2, a4
	rev8 a1, a2
	rev8 s3, a1
	rev8 a4, s3
	rev8 a2, a4
	rev8 s3, a2
	rev8 s11, s3
	rev8 s4, s11
	rev8 s7, s4
	rev8 s0, s7
	rev8 a1, s0
	rev8 a4, a1
	rev8 a0, a4
	rev8 t3, a0
	rev8 s2, t3
	rev8 s3, s2
	rev8 a7, s3
	rev8 a7, a7
	rev8 a4, a7
	rev8 s9, a4
	rev8 a4, s9
	rev8 t5, a4
	rev8 a4, t5
	rev8 s0, a4
	rev8 s3, s0
	rev8 s9, s3
	rev8 a7, s9
	rev8 s8, a7
	rev8 s11, s8
	rev8 t2, s11
	rev8 a6, t2
	rev8 a2, a6
	rev8 s0, a2
	rev8 a4, s0
	rev8 s0, a4
	rev8 s0, s0
	rev8 t3, s0
	rev8 s3, t3
	rev8 s4, s3
	rev8 a4, s4
	rev8 s5, a4
	rev8 t6, s5
	rev8 a0, t6
	rev8 s5, a0
	rev8 s8, s5
	csrr a6, time
	csrr t3, cycle
	csrr t4, instret
	sub a1, a6, t1
	sub a6, t3, a3
	sub t3, t4, a5
	li s6, 0
	csrr s8, time
	csrr s0, cycle
	csrr t5, instret
	rev8 s10, s6
	rev8 s5, s10
	rev8 a7, s5
	rev8 s4, a7
	rev8 a5, s4
	rev8 t2, a5
	rev8 s3, t2
	rev8 s10, s3
	rev8 t6, s10
	rev8 t6, t6
	rev8 s1, t6
	rev8 s1, s1
	rev8 t4, s1
	rev8 t2, t4
	rev8 s1, t2
	rev8 s3, s1
	rev8 a5, s3
	rev8 s7, a5
	rev8 a4, s7
	rev8 s6, a4
	rev8 t4, s6
	rev8 a3, t4
	rev8 s9, a3
	rev8 s3, s9
	rev8 s10, s3
	rev8 a0, s10
	rev8 s4, a0
	rev8 s3, s4
	rev8 s7, s3
	rev8 s6, s7
	rev8 s5, s6
	rev8 s6, s5
	rev8 a2, s6
	rev8 s1, a2
	rev8 a4, s1
	rev8 t2, a4
	rev8 s11, t2
	rev8 s5, s11
	rev8 a4, s5
	rev8 t2, a4
	rev8 t1, t2
	rev8 a0, t1
	rev8 t6, a0
	rev8 a7, t6
	rev8 a5, a7
	rev8 a3, a5
	rev8 a1, a3
	rev8 t4, a1
	rev8 s5, t4
	rev8 a0, s5
	rev8 s9, a0
	rev8 a2, s9
	rev8 s3, a2
	rev8 s9, s3
	rev8 a3, s9
	rev8 s9, a3
	rev8 a7, s9
	rev8 s5, a7
	rev8 s6, s5
	rev8 s10, s6
	rev8 a1, s10
	rev8 s6, a1
	rev8 a3, s6
	rev8 a5, a3
	rev8 s5, a5
	rev8 a7, s5
	rev8 s5, a7
	rev8 s11, s5
	rev8 s10, s11
	rev8 s6, s10
	rev8 s2, s6
	rev8 a1, s2
	rev8 s7, a1
	rev8 t1, s7
	rev8 t4, t1
	rev8 s6, t4
	rev8 t4, s6
	rev8 s7, t4
	rev8 a7, s7
	rev8 t1, a7
	rev8 s2, t1
	rev8 a0, s2
	rev8 s5, a0
	rev8 a5, s5
	rev8 s9, a5
	rev8 s9, s9
	rev8 a5, s9
	rev8 s7, a5
	rev8 s6, s7
	rev8 s5, s6
	rev8 s10, s5
	rev8 s9, s10
	rev8 s3, s9
	rev8 t2, s3
	rev8 s9, t2
	rev8 a1, s9
	rev8 t2, a1
	rev8 s4, t2
	rev8 a7, s4
	rev8 a3, a7
	csrr t4, time
	csrr s6, cycle
	csrr a7, instret
	sub a3, t4, s8
	sub a5, s6, s0
	sub s11, a7, t5
	beq a6, a5, pass_label_104
	li t5, failed_addr
	ld t1, 0(t5)
	jr t1
pass_label_104:
	beq t3, s11, pass_label_105
	li s11, failed_addr
	ld s5, 0(s11)
	jr s5
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
	csrr a7, time
	csrr s7, cycle
	csrr t1, instret
	li s8, 0x68
	czero.eqz t5, a3, s8
	li s9, 0x52
	czero.eqz a4, t5, s9
	li a1, 0x709
	czero.eqz t3, a4, a1
	li a2, 0x1e9
	czero.eqz s11, t3, a2
	li s6, 0x143
	czero.eqz s4, s11, s6
	li s3, 0x623
	czero.eqz s10, s4, s3
	li a4, 0x227
	czero.eqz s4, s10, a4
	li t5, 0x2c
	czero.eqz s0, s4, t5
	li t6, 0x3c9
	czero.eqz s1, s0, t6
	li t3, 0x70c
	czero.eqz s11, s1, t3
	li s6, 0x3b2
	czero.eqz a1, s11, s6
	li a6, 0x81
	czero.eqz s1, a1, a6
	li a2, 0x3db
	czero.eqz s9, s1, a2
	li a1, 0x2c1
	czero.eqz t3, s9, a1
	li s8, 0x317
	czero.eqz s11, t3, s8
	li a6, 0x445
	czero.eqz t5, s11, a6
	li t6, 0x5cd
	czero.eqz s3, t5, t6
	li s11, 0x738
	czero.eqz a5, s3, s11
	li t2, 0x312
	czero.eqz t5, a5, t2
	li a0, 0x1ab
	czero.eqz s11, t5, a0
	li a0, 0x773
	czero.eqz a5, s11, a0
	li t5, 0x274
	czero.eqz t5, a5, t5
	li s4, 0x4a0
	czero.eqz a4, t5, s4
	li t6, 0x7a4
	czero.eqz s10, a4, t6
	li s11, 0x64b
	czero.eqz s4, s10, s11
	li s10, 0x794
	czero.eqz s3, s4, s10
	li s10, 0x661
	czero.eqz a1, s3, s10
	li s6, 0x2ff
	czero.eqz a0, a1, s6
	li a1, 0x13c
	czero.eqz s3, a0, a1
	li t3, 0x3e4
	czero.eqz a0, s3, t3
	li s2, 0x6f9
	czero.eqz s0, a0, s2
	li s3, 0x468
	czero.eqz s11, s0, s3
	li s4, 0x341
	czero.eqz a1, s11, s4
	li t6, 0x775
	czero.eqz a1, a1, t6
	li s10, 0x10c
	czero.eqz s1, a1, s10
	li a5, 0x380
	czero.eqz s0, s1, a5
	li s5, 0x5be
	czero.eqz t3, s0, s5
	li s1, 0x3f2
	czero.eqz a4, t3, s1
	li s11, 0x64b
	czero.eqz t2, a4, s11
	li a0, 0x121
	czero.eqz a1, t2, a0
	li s1, 0x622
	czero.eqz s10, a1, s1
	li s5, 0x168
	czero.eqz t2, s10, s5
	li a0, 0x25c
	czero.eqz t4, t2, a0
	li s3, 0x7cf
	czero.eqz s10, t4, s3
	li s5, 0x1d6
	czero.eqz s10, s10, s5
	li a2, 0x6fe
	czero.eqz a5, s10, a2
	li a6, 0x249
	czero.eqz s9, a5, a6
	li t4, 0x38c
	czero.eqz t4, s9, t4
	li t5, 0x1b6
	czero.eqz t6, t4, t5
	li t5, 0xe4
	czero.eqz a2, t6, t5
	li t3, 0x788
	czero.eqz t2, a2, t3
	li s3, 0x19e
	czero.eqz s1, t2, s3
	li s11, 0x680
	czero.eqz a0, s1, s11
	li a2, 0x719
	czero.eqz s0, a0, a2
	li t4, 0x661
	czero.eqz a5, s0, t4
	li s11, 0xb
	czero.eqz s0, a5, s11
	li s2, 0x701
	czero.eqz s1, s0, s2
	li a1, 0x52b
	czero.eqz t6, s1, a1
	li s11, 0x6b9
	czero.eqz s6, t6, s11
	li a6, 0x5c0
	czero.eqz t3, s6, a6
	li s6, 0x772
	czero.eqz a1, t3, s6
	li t2, 0x2d6
	czero.eqz a2, a1, t2
	li s5, 0x4e6
	czero.eqz s1, a2, s5
	li t6, 0x72f
	czero.eqz s6, s1, t6
	li s8, 0x487
	czero.eqz t3, s6, s8
	li s10, 0x1c2
	czero.eqz s4, t3, s10
	li a2, 0x6dd
	czero.eqz a4, s4, a2
	li s0, 0x174
	czero.eqz s8, a4, s0
	li s11, 0x406
	czero.eqz a0, s8, s11
	li s3, 0x380
	czero.eqz s3, a0, s3
	li s9, 0x7fb
	czero.eqz a5, s3, s9
	li a4, 0x3fc
	czero.eqz s8, a5, a4
	li a1, 0x656
	czero.eqz s1, s8, a1
	li s9, 0x5b8
	czero.eqz t3, s1, s9
	li t6, 0x419
	czero.eqz s1, t3, t6
	li s0, 0x6e7
	czero.eqz a2, s1, s0
	li s11, 0x688
	czero.eqz a6, a2, s11
	li a3, 0x5f6
	czero.eqz s8, a6, a3
	li t6, 0x423
	czero.eqz a6, s8, t6
	li s0, 0x70a
	czero.eqz s5, a6, s0
	li s9, 0x6b
	czero.eqz s4, s5, s9
	li s0, 0x3d2
	czero.eqz a6, s4, s0
	li t2, 0x1f7
	czero.eqz t6, a6, t2
	li s8, 0x3eb
	czero.eqz a3, t6, s8
	li a5, 0x7f5
	czero.eqz t5, a3, a5
	li t6, 0x345
	czero.eqz a3, t5, t6
	li s9, 0x2a5
	czero.eqz s11, a3, s9
	li a0, 0x5d2
	czero.eqz t3, s11, a0
	li s2, 0x13
	czero.eqz s5, t3, s2
	li a1, 0x232
	czero.eqz t4, s5, a1
	li s5, 0x5e7
	czero.eqz a0, t4, s5
	li s1, 0x771
	czero.eqz s1, a0, s1
	li t6, 0x2b6
	czero.eqz s10, s1, t6
	li a2, 0x504
	czero.eqz t5, s10, a2
	li s1, 0x2d
	czero.eqz t5, t5, s1
	li t3, 0x6d6
	czero.eqz t4, t5, t3
	li t3, 0x690
	czero.eqz s8, t4, t3
	li s9, 0x66c
	czero.eqz s2, s8, s9
	li s5, 0x6f9
	czero.eqz s8, s2, s5
	li s2, 0x7db
	czero.eqz s2, s8, s2
	csrr t4, time
	csrr s5, cycle
	csrr s10, instret
	sub t5, t4, a7
	sub t5, s5, s7
	sub a5, s10, t1
	li a3, 0
	csrr a5, time
	csrr t3, cycle
	csrr s11, instret
	li a4, 0x720
	czero.eqz s2, a3, a4
	li s3, 0x352
	czero.eqz a6, s2, s3
	li t6, 0x213
	czero.eqz s1, a6, t6
	li s3, 0x394
	czero.eqz a4, s1, s3
	li s4, 0x3b0
	czero.eqz a6, a4, s4
	li t1, 0x3be
	czero.eqz t4, a6, t1
	li s5, 0x5c9
	czero.eqz a6, t4, s5
	li s8, 0x53c
	czero.eqz s9, a6, s8
	li a7, 0x6e7
	czero.eqz t5, s9, a7
	li a4, 0x5dc
	czero.eqz s9, t5, a4
	li a4, 0x148
	czero.eqz a0, s9, a4
	li a7, 0x677
	czero.eqz s9, a0, a7
	li s8, 0x4bf
	czero.eqz a3, s9, s8
	li t5, 0x626
	czero.eqz s10, a3, t5
	li s8, 0x178
	czero.eqz s10, s10, s8
	li s0, 0x82
	czero.eqz a6, s10, s0
	li t2, 0x562
	czero.eqz t6, a6, t2
	li s10, 0x77a
	czero.eqz s7, t6, s10
	li a4, 0x35b
	czero.eqz s6, s7, a4
	li a2, 0x202
	czero.eqz a4, s6, a2
	li s5, 0xb9
	czero.eqz t2, a4, s5
	li s6, 0x474
	czero.eqz s3, t2, s6
	li a1, 0x136
	czero.eqz t2, s3, a1
	li a6, 0x18d
	czero.eqz s3, t2, a6
	li a4, 0x3a5
	czero.eqz s8, s3, a4
	li a7, 0x792
	czero.eqz t6, s8, a7
	li t5, 0x450
	czero.eqz a1, t6, t5
	li t2, 0x260
	czero.eqz t6, a1, t2
	li s0, 0x78d
	czero.eqz a7, t6, s0
	li s9, 0x4e5
	czero.eqz s3, a7, s9
	li t4, 0x2f2
	czero.eqz s0, s3, t4
	li s8, 0x15f
	czero.eqz t2, s0, s8
	li a3, 0x3a4
	czero.eqz a0, t2, a3
	li s9, 0x7f1
	czero.eqz t2, a0, s9
	li s1, 0x3a8
	czero.eqz s1, t2, s1
	li a1, 0x456
	czero.eqz a4, s1, a1
	li s0, 0x70f
	czero.eqz s3, a4, s0
	li s5, 0x7cc
	czero.eqz a0, s3, s5
	li s6, 0x363
	czero.eqz s4, a0, s6
	li s1, 0x6ff
	czero.eqz t4, s4, s1
	li t1, 0x15d
	czero.eqz s1, t4, t1
	li a6, 0x213
	czero.eqz s4, s1, a6
	li a1, 0x5af
	czero.eqz a7, s4, a1
	li t6, 0x72d
	czero.eqz s8, a7, t6
	li a3, 0x145
	czero.eqz s8, s8, a3
	li a1, 0x13b
	czero.eqz t2, s8, a1
	li a6, 0x1b5
	czero.eqz s4, t2, a6
	li a7, 0x1d1
	czero.eqz a3, s4, a7
	li t2, 0x652
	czero.eqz t2, a3, t2
	li t1, 0x30
	czero.eqz t1, t2, t1
	li s5, 0x318
	czero.eqz s7, t1, s5
	li s1, 0x7a9
	czero.eqz s4, s7, s1
	li s9, 0x6f3
	czero.eqz s6, s4, s9
	li a6, 0x68d
	czero.eqz s4, s6, a6
	li s5, 0xc2
	czero.eqz s3, s4, s5
	li s7, 0x61e
	czero.eqz s0, s3, s7
	li a2, 0x70f
	czero.eqz s9, s0, a2
	li t4, 0x3bb
	czero.eqz s3, s9, t4
	li t2, 0x601
	czero.eqz s2, s3, t2
	li a7, 0x24a
	czero.eqz t1, s2, a7
	li s10, 0x328
	czero.eqz t6, t1, s10
	li a6, 0x30e
	czero.eqz s4, t6, a6
	li a2, 0x366
	czero.eqz a4, s4, a2
	li s9, 0x6b8
	czero.eqz s3, a4, s9
	li a7, 0x7aa
	czero.eqz s3, s3, a7
	li a4, 0x6b8
	czero.eqz a7, s3, a4
	li t1, 0x4b5
	czero.eqz a7, a7, t1
	li s1, 0x4e2
	czero.eqz t6, a7, s1
	li s6, 0x189
	czero.eqz a6, t6, s6
	li t6, 0x29d
	czero.eqz s7, a6, t6
	li s9, 0x557
	czero.eqz a2, s7, s9
	li s5, 0x3a2
	czero.eqz s6, a2, s5
	li s2, 0x17e
	czero.eqz s0, s6, s2
	li t1, 0x720
	czero.eqz s2, s0, t1
	li s0, 0x531
	czero.eqz a4, s2, s0
	li t6, 0x19a
	czero.eqz s3, a4, t6
	li t1, 0x7cd
	czero.eqz s2, s3, t1
	li s3, 0x22
	czero.eqz s7, s2, s3
	li t1, 0x722
	czero.eqz s1, s7, t1
	li s3, 0x679
	czero.eqz s10, s1, s3
	li a7, 0x739
	czero.eqz s1, s10, a7
	li a4, 0x5d6
	czero.eqz s8, s1, a4
	li s7, 0x7ff
	czero.eqz t5, s8, s7
	li s9, 0x32e
	czero.eqz s4, t5, s9
	li s7, 0x593
	czero.eqz s7, s4, s7
	li a1, 0x29f
	czero.eqz s0, s7, a1
	li s10, 0x200
	czero.eqz a7, s0, s10
	li a6, 0x42f
	czero.eqz a6, a7, a6
	li t2, 0x155
	czero.eqz a2, a6, t2
	li s2, 0x41d
	czero.eqz a2, a2, s2
	li a7, 0x7d
	czero.eqz a2, a2, a7
	li s1, 0x692
	czero.eqz s5, a2, s1
	li s7, 0x4bf
	czero.eqz a3, s5, s7
	li t2, 0x3b5
	czero.eqz t5, a3, t2
	li s2, 0x684
	czero.eqz a3, t5, s2
	li s3, 0x95
	czero.eqz t5, a3, s3
	li t2, 0x158
	czero.eqz t5, t5, t2
	li t6, 0x6ad
	czero.eqz a1, t5, t6
	li a2, 0x6ea
	czero.eqz s2, a1, a2
	li s9, 0x7dc
	czero.eqz s10, s2, s9
	csrr a0, time
	csrr s7, cycle
	csrr a7, instret
	sub t2, a0, a5
	sub s3, s7, t3
	sub s11, a7, s11
	li s2, 0
	csrr t4, time
	csrr t6, cycle
	csrr s8, instret
	li a6, 0xb1
	czero.eqz a2, s2, a6
	li s4, 0x24f
	czero.eqz s4, a2, s4
	li s10, 0x5be
	czero.eqz a4, s4, s10
	li s4, 0x15b
	czero.eqz t3, a4, s4
	li s5, 0x61e
	czero.eqz a7, t3, s5
	li t3, 0x745
	czero.eqz s7, a7, t3
	li s0, 0x289
	czero.eqz s0, s7, s0
	li a7, 0x716
	czero.eqz a1, s0, a7
	li t5, 0x3d9
	czero.eqz s1, a1, t5
	li a0, 0x74a
	czero.eqz a4, s1, a0
	li s0, 0x297
	czero.eqz a1, a4, s0
	li a0, 0x14e
	czero.eqz s1, a1, a0
	li s9, 0x297
	czero.eqz a3, s1, s9
	li a0, 0x3f5
	czero.eqz a4, a3, a0
	li a1, 0x47f
	czero.eqz t5, a4, a1
	li s9, 0x284
	czero.eqz t3, t5, s9
	li s1, 0x5e4
	czero.eqz s1, t3, s1
	li a3, 0x6d
	czero.eqz a2, s1, a3
	li s5, 0x468
	czero.eqz s2, a2, s5
	li t5, 0x1b2
	czero.eqz s9, s2, t5
	li s6, 0x6e3
	czero.eqz a5, s9, s6
	li s7, 0x4d9
	czero.eqz a7, a5, s7
	li s9, 0x466
	czero.eqz a2, a7, s9
	li a4, 0x57e
	czero.eqz t1, a2, a4
	li s9, 0x11c
	czero.eqz a7, t1, s9
	li s10, 0x401
	czero.eqz a4, a7, s10
	li s0, 0x490
	czero.eqz a1, a4, s0
	li a0, 0x165
	czero.eqz t1, a1, a0
	li t5, 0x1a0
	czero.eqz s5, t1, t5
	li s10, 0x2e1
	czero.eqz a3, s5, s10
	li a1, 0x629
	czero.eqz s1, a3, a1
	li s2, 0x72c
	czero.eqz t1, s1, s2
	li t3, 0x26a
	czero.eqz a4, t1, t3
	li a0, 0x31
	czero.eqz t3, a4, a0
	li s5, 0xfb
	czero.eqz a7, t3, s5
	li a6, 0x499
	czero.eqz a5, a7, a6
	li a0, 0x430
	czero.eqz s2, a5, a0
	li a3, 0x321
	czero.eqz a0, s2, a3
	li t2, 0x62c
	czero.eqz s9, a0, t2
	li s2, 0x633
	czero.eqz t5, s9, s2
	li t2, 0x620
	czero.eqz a1, t5, t2
	li s2, 0x363
	czero.eqz s7, a1, s2
	li a0, 0x2e0
	czero.eqz t1, s7, a0
	li a2, 0x6ee
	czero.eqz a3, t1, a2
	li t2, 0x5ba
	czero.eqz a6, a3, t2
	li s9, 0x1aa
	czero.eqz s1, a6, s9
	li s9, 0x23c
	czero.eqz s2, s1, s9
	li s4, 0x515
	czero.eqz s2, s2, s4
	li t3, 0x77d
	czero.eqz s2, s2, t3
	li s5, 0x72f
	czero.eqz s1, s2, s5
	li a7, 0x5d8
	czero.eqz t3, s1, a7
	li s9, 0x74c
	czero.eqz s5, t3, s9
	li t1, 0xb
	czero.eqz s2, s5, t1
	li s7, 0x502
	czero.eqz s4, s2, s7
	li s2, 0x7c2
	czero.eqz t2, s4, s2
	li t1, 0x2d3
	czero.eqz t1, t2, t1
	li a6, 0x7a
	czero.eqz s0, t1, a6
	li a4, 0x22e
	czero.eqz a1, s0, a4
	li a7, 0x17e
	czero.eqz a2, a1, a7
	li a3, 0x1b6
	czero.eqz s4, a2, a3
	li s5, 0x7b3
	czero.eqz t5, s4, s5
	li s1, 0x237
	czero.eqz s9, t5, s1
	li s0, 0x539
	czero.eqz a7, s9, s0
	li s1, 0x2ce
	czero.eqz a5, a7, s1
	li a7, 0x41
	czero.eqz a2, a5, a7
	li s4, 0x295
	czero.eqz a6, a2, s4
	li a2, 0x7c3
	czero.eqz s0, a6, a2
	li s6, 0x6cc
	czero.eqz a5, s0, s6
	li t2, 0x68a
	czero.eqz a6, a5, t2
	li a3, 0x2de
	czero.eqz a1, a6, a3
	li a4, 0x119
	czero.eqz a4, a1, a4
	li a7, 0x33
	czero.eqz s2, a4, a7
	li t2, 0x109
	czero.eqz s6, s2, t2
	li t5, 0xf2
	czero.eqz t2, s6, t5
	li a1, 0x3d2
	czero.eqz s2, t2, a1
	li s0, 0x1f4
	czero.eqz s7, s2, s0
	li s6, 0x447
	czero.eqz a5, s7, s6
	li s9, 0x545
	czero.eqz t5, a5, s9
	li a6, 0x349
	czero.eqz a1, t5, a6
	li s7, 0x529
	czero.eqz s6, a1, s7
	li t1, 0x666
	czero.eqz s7, s6, t1
	li a7, 0x94
	czero.eqz s10, s7, a7
	li a2, 0x476
	czero.eqz s6, s10, a2
	li a2, 0x77f
	czero.eqz a7, s6, a2
	li t5, 0x1e
	czero.eqz s6, a7, t5
	li s4, 0x147
	czero.eqz a0, s6, s4
	li s0, 0x1e6
	czero.eqz s5, a0, s0
	li a2, 0x265
	czero.eqz a1, s5, a2
	li a4, 0x62f
	czero.eqz s6, a1, a4
	li s0, 0x6e0
	czero.eqz s10, s6, s0
	li a1, 0x353
	czero.eqz t5, s10, a1
	li s1, 0x460
	czero.eqz s5, t5, s1
	li a5, 0x1c7
	czero.eqz t3, s5, a5
	li a2, 0x713
	czero.eqz a6, t3, a2
	li a1, 0x390
	czero.eqz a3, a6, a1
	li t1, 0x4b3
	czero.eqz a7, a3, t1
	li t5, 0x7cb
	czero.eqz s5, a7, t5
	li s4, 0x2ee
	czero.eqz s10, s5, s4
	li a5, 0x467
	czero.eqz s7, s10, a5
	li a1, 0x642
	czero.eqz a3, s7, a1
	csrr s1, time
	csrr s10, cycle
	csrr a6, instret
	sub s0, s1, t4
	sub s4, s10, t6
	sub a0, a6, s8
	beq s3, s4, pass_label_106
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
pass_label_106:
	beq s11, a0, pass_label_107
	li s11, failed_addr
	ld s2, 0(s11)
	jr s2
pass_label_107:
SID_ZKT_09_CZERO_EQZ_passed:
	;#test_passed()

;#discrete_test(test=SID_ZKT_09_CZERO_NEZ)
SID_ZKT_09_CZERO_NEZ:
	li sp, SID_ZKT_09_CZERO_NEZ_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t2, 0
	csrr s5, time
	csrr s0, cycle
	csrr a4, instret
	li a2, 0x2d8
	czero.nez s9, t2, a2
	li s1, 0x156
	czero.nez a5, s9, s1
	li s9, 0x20d
	czero.nez a0, a5, s9
	li s11, 0x7bb
	czero.nez t4, a0, s11
	li a6, 0x50d
	czero.nez a1, t4, a6
	li a3, 0x4d9
	czero.nez s8, a1, a3
	li s9, 0x7d2
	czero.nez a1, s8, s9
	li a0, 0x3ba
	czero.nez s10, a1, a0
	li t1, 0x13a
	czero.nez s4, s10, t1
	li a0, 0x704
	czero.nez s9, s4, a0
	li a1, 0x657
	czero.nez s6, s9, a1
	li t6, 0x76
	czero.nez t2, s6, t6
	li s3, 0x53f
	czero.nez t2, t2, s3
	li s9, 0x619
	czero.nez s9, t2, s9
	li s11, 0x6f0
	czero.nez s8, s9, s11
	li s4, 0x7ea
	czero.nez a1, s8, s4
	li a2, 0x3b8
	czero.nez s11, a1, a2
	li s3, 0x345
	czero.nez s11, s11, s3
	li s1, 0x50a
	czero.nez a1, s11, s1
	li t1, 0x683
	czero.nez s1, a1, t1
	li a7, 0x5f
	czero.nez s8, s1, a7
	li a5, 0x71c
	czero.nez a1, s8, a5
	li t3, 0x4ab
	czero.nez a0, a1, t3
	li t6, 0x75a
	czero.nez t3, a0, t6
	li a7, 0x7df
	czero.nez a1, t3, a7
	li s6, 0x446
	czero.nez t1, a1, s6
	li s2, 0x55a
	czero.nez s7, t1, s2
	li a0, 0x168
	czero.nez s6, s7, a0
	li s3, 0x4ee
	czero.nez a0, s6, s3
	li s8, 0x75f
	czero.nez s1, a0, s8
	li t1, 0x5ab
	czero.nez s11, s1, t1
	li s1, 0x22
	czero.nez a2, s11, s1
	li t6, 0x22c
	czero.nez t3, a2, t6
	li s7, 0x55c
	czero.nez s2, t3, s7
	li s6, 0x7ea
	czero.nez s2, s2, s6
	li s11, 0x6d
	czero.nez t3, s2, s11
	li s10, 0x23a
	czero.nez t1, t3, s10
	li s9, 0x13d
	czero.nez s6, t1, s9
	li t2, 0x69
	czero.nez t4, s6, t2
	li s3, 0x3f1
	czero.nez s2, t4, s3
	li t1, 0x4c6
	czero.nez a3, s2, t1
	li s3, 0x3e8
	czero.nez s6, a3, s3
	li t1, 0x29b
	czero.nez t5, s6, t1
	li s7, 0x12b
	czero.nez s6, t5, s7
	li s4, 0x67a
	czero.nez s3, s6, s4
	li a1, 0x2bd
	czero.nez a3, s3, a1
	li t3, 0x3b4
	czero.nez s6, a3, t3
	li s1, 0x7be
	czero.nez a6, s6, s1
	li a5, 0x395
	czero.nez s9, a6, a5
	li t4, 0x3cf
	czero.nez t1, s9, t4
	li a1, 0x1cd
	czero.nez a0, t1, a1
	li t6, 0x6be
	czero.nez a7, a0, t6
	li s9, 0x43f
	czero.nez s6, a7, s9
	li a1, 0x3cf
	czero.nez s6, s6, a1
	li s2, 0x45a
	czero.nez t4, s6, s2
	li s3, 0x145
	czero.nez a1, t4, s3
	li a5, 0xef
	czero.nez s11, a1, a5
	li a0, 0x13c
	czero.nez t5, s11, a0
	li s4, 0x6b4
	czero.nez a5, t5, s4
	li a6, 0x7b7
	czero.nez s9, a5, a6
	li a1, 0x6f0
	czero.nez a1, s9, a1
	li t6, 0x36a
	czero.nez t3, a1, t6
	li t1, 0x456
	czero.nez t2, t3, t1
	li t5, 0x262
	czero.nez s1, t2, t5
	li s7, 0x724
	czero.nez t2, s1, s7
	li s2, 0x70d
	czero.nez a1, t2, s2
	li t3, 0x3bd
	czero.nez s9, a1, t3
	li t3, 0x14d
	czero.nez s1, s9, t3
	li s10, 0x312
	czero.nez s1, s1, s10
	li s8, 0x5c2
	czero.nez a7, s1, s8
	li s9, 0x254
	czero.nez a6, a7, s9
	li t4, 0x224
	czero.nez a1, a6, t4
	li t4, 0x6f6
	czero.nez t2, a1, t4
	li s6, 0x1d9
	czero.nez s2, t2, s6
	li t1, 0x2e
	czero.nez a2, s2, t1
	li t2, 0x41c
	czero.nez s11, a2, t2
	li s10, 0x46f
	czero.nez s2, s11, s10
	li s7, 0xde
	czero.nez t2, s2, s7
	li a7, 0x4a9
	czero.nez s10, t2, a7
	li t3, 0x150
	czero.nez s2, s10, t3
	li a2, 0x227
	czero.nez t4, s2, a2
	li s7, 0x383
	czero.nez a5, t4, s7
	li s8, 0x7cd
	czero.nez s10, a5, s8
	li a7, 0xa
	czero.nez s4, s10, a7
	li t4, 0x530
	czero.nez s8, s4, t4
	li t3, 0x1e3
	czero.nez a6, s8, t3
	li a0, 0x403
	czero.nez s8, a6, a0
	li s2, 0x587
	czero.nez s3, s8, s2
	li s11, 0xff
	czero.nez s4, s3, s11
	li a1, 0x791
	czero.nez s7, s4, a1
	li s8, 0x3c6
	czero.nez s10, s7, s8
	li s3, 0x42a
	czero.nez t1, s10, s3
	li s10, 0x1aa
	czero.nez s11, t1, s10
	li s9, 0x755
	czero.nez s11, s11, s9
	li s8, 0x300
	czero.nez s10, s11, s8
	li s9, 0x2b8
	czero.nez a0, s10, s9
	li t4, 0x11
	czero.nez s3, a0, t4
	li t3, 0x2d8
	czero.nez s6, s3, t3
	li s10, 0x451
	czero.nez a1, s6, s10
	li t3, 0x6
	czero.nez s7, a1, t3
	csrr a0, time
	csrr t2, cycle
	csrr s7, instret
	sub t3, a0, s5
	sub t2, t2, s0
	sub s7, s7, a4
	li t2, 0
	csrr t4, time
	csrr s0, cycle
	csrr a6, instret
	li s1, 0xe8
	czero.nez a3, t2, s1
	li a0, 0x6fb
	czero.nez a0, a3, a0
	li s2, 0x5b3
	czero.nez s5, a0, s2
	li s10, 0x3f5
	czero.nez a5, s5, s10
	li s2, 0x1e5
	czero.nez a2, a5, s2
	li t6, 0x7bd
	czero.nez a7, a2, t6
	li s10, 0x99
	czero.nez t1, a7, s10
	li a4, 0x631
	czero.nez a5, t1, a4
	li s6, 0x74a
	czero.nez s4, a5, s6
	li t5, 0x65f
	czero.nez s3, s4, t5
	li a4, 0x15d
	czero.nez t1, s3, a4
	li s2, 0x242
	czero.nez t5, t1, s2
	li s6, 0x26
	czero.nez a1, t5, s6
	li t6, 0xf1
	czero.nez t3, a1, t6
	li s7, 0x410
	czero.nez a4, t3, s7
	li s2, 0x4cb
	czero.nez s7, a4, s2
	li s1, 0x57
	czero.nez s1, s7, s1
	li a4, 0x430
	czero.nez s1, s1, a4
	li s5, 0x18c
	czero.nez a5, s1, s5
	li s3, 0x43c
	czero.nez a1, a5, s3
	li t6, 0x556
	czero.nez a0, a1, t6
	li s7, 0x38b
	czero.nez s4, a0, s7
	li a4, 0x7b1
	czero.nez s9, s4, a4
	li s6, 0x56d
	czero.nez t2, s9, s6
	li s8, 0xee
	czero.nez s6, t2, s8
	li s8, 0xf6
	czero.nez t5, s6, s8
	li s8, 0x517
	czero.nez a2, t5, s8
	li s3, 0x65c
	czero.nez a2, a2, s3
	li s5, 0x1c2
	czero.nez a3, a2, s5
	li s5, 0x3b3
	czero.nez t1, a3, s5
	li a5, 0x36
	czero.nez a1, t1, a5
	li s6, 0x5e1
	czero.nez a0, a1, s6
	li t5, 0x794
	czero.nez s7, a0, t5
	li a3, 0x524
	czero.nez t2, s7, a3
	li t5, 0x41b
	czero.nez a0, t2, t5
	li t2, 0x20f
	czero.nez t1, a0, t2
	li s11, 0x6e2
	czero.nez a3, t1, s11
	li s8, 0x7d5
	czero.nez s11, a3, s8
	li s9, 0x41a
	czero.nez t5, s11, s9
	li a7, 0x74d
	czero.nez s6, t5, a7
	li s4, 0x215
	czero.nez s3, s6, s4
	li s5, 0x374
	czero.nez t3, s3, s5
	li s8, 0x601
	czero.nez t6, t3, s8
	li s3, 0x7fc
	czero.nez s4, t6, s3
	li s9, 0x2ec
	czero.nez s9, s4, s9
	li s7, 0x66d
	czero.nez t6, s9, s7
	li s1, 0x185
	czero.nez a3, t6, s1
	li a5, 0x6cc
	czero.nez s8, a3, a5
	li s10, 0x5ba
	czero.nez a0, s8, s10
	li a7, 0x5fc
	czero.nez s5, a0, a7
	li s4, 0x13b
	czero.nez s4, s5, s4
	li s7, 0x601
	czero.nez s2, s4, s7
	li s8, 0x69c
	czero.nez a1, s2, s8
	li s5, 0xd9
	czero.nez t2, a1, s5
	li t1, 0x23e
	czero.nez s6, t2, t1
	li s10, 0x79b
	czero.nez a2, s6, s10
	li s1, 0x150
	czero.nez t5, a2, s1
	li a4, 0x661
	czero.nez a1, t5, a4
	li s4, 0x716
	czero.nez s5, a1, s4
	li a4, 0x402
	czero.nez t3, s5, a4
	li t2, 0x45f
	czero.nez t5, t3, t2
	li s1, 0x73
	czero.nez a0, t5, s1
	li a2, 0x22c
	czero.nez s4, a0, a2
	li s9, 0x54
	czero.nez s5, s4, s9
	li a7, 0x136
	czero.nez s2, s5, a7
	li t6, 0x3a3
	czero.nez a5, s2, t6
	li s9, 0x598
	czero.nez s5, a5, s9
	li a7, 0x6ac
	czero.nez a0, s5, a7
	li s10, 0x5fa
	czero.nez s8, a0, s10
	li t2, 0xa2
	czero.nez a7, s8, t2
	li a1, 0x4d9
	czero.nez s8, a7, a1
	li s2, 0x72a
	czero.nez t1, s8, s2
	li t6, 0x7d6
	czero.nez a1, t1, t6
	li a5, 0x6f6
	czero.nez a7, a1, a5
	li s9, 0x1cc
	czero.nez t5, a7, s9
	li s9, 0x513
	czero.nez s7, t5, s9
	li t2, 0x7c3
	czero.nez t3, s7, t2
	li s11, 0x2e8
	czero.nez s5, t3, s11
	li t6, 0x633
	czero.nez s10, s5, t6
	li a0, 0x461
	czero.nez t6, s10, a0
	li t5, 0x7e4
	czero.nez a0, t6, t5
	li t5, 0x521
	czero.nez s4, a0, t5
	li a3, 0x4a5
	czero.nez s9, s4, a3
	li a2, 0x5b1
	czero.nez s10, s9, a2
	li t2, 0x727
	czero.nez s11, s10, t2
	li s9, 0x47b
	czero.nez t3, s11, s9
	li a4, 0x439
	czero.nez s4, t3, a4
	li t2, 0x1e2
	czero.nez s3, s4, t2
	li t3, 0x7ab
	czero.nez a7, s3, t3
	li a5, 0x606
	czero.nez s2, a7, a5
	li s5, 0x68
	czero.nez s11, s2, s5
	li a2, 0x6a3
	czero.nez s1, s11, a2
	li t1, 0x29a
	czero.nez s8, s1, t1
	li a5, 0x29c
	czero.nez a0, s8, a5
	li s9, 0x1fe
	czero.nez s3, a0, s9
	li s1, 0x16f
	czero.nez t1, s3, s1
	li a7, 0x5d9
	czero.nez t2, t1, a7
	li s9, 0x393
	czero.nez t1, t2, s9
	li s8, 0x785
	czero.nez a0, t1, s8
	li a7, 0x4ce
	czero.nez t2, a0, a7
	csrr s10, time
	csrr s3, cycle
	csrr a1, instret
	sub t3, s10, t4
	sub s10, s3, s0
	sub s6, a1, a6
	li s8, 0
	csrr a2, time
	csrr a0, cycle
	csrr s3, instret
	li a1, 0x215
	czero.nez s4, s8, a1
	li s1, 0x7ea
	czero.nez a1, s4, s1
	li a6, 0x6a5
	czero.nez s2, a1, a6
	li s5, 0x85
	czero.nez a1, s2, s5
	li s2, 0x4ae
	czero.nez a7, a1, s2
	li s9, 0x508
	czero.nez a1, a7, s9
	li a6, 0x5c5
	czero.nez a4, a1, a6
	li s8, 0x162
	czero.nez t4, a4, s8
	li t6, 0xf2
	czero.nez a1, t4, t6
	li s9, 0x2f6
	czero.nez a7, a1, s9
	li s5, 0x717
	czero.nez t6, a7, s5
	li a3, 0xb8
	czero.nez s5, t6, a3
	li a4, 0x622
	czero.nez t6, s5, a4
	li a1, 0x51d
	czero.nez a1, t6, a1
	li s8, 0x580
	czero.nez t3, a1, s8
	li t5, 0x665
	czero.nez a6, t3, t5
	li s1, 0x1e1
	czero.nez s1, a6, s1
	li s8, 0x65a
	czero.nez s7, s1, s8
	li s2, 0x488
	czero.nez s4, s7, s2
	li s2, 0x331
	czero.nez a7, s4, s2
	li a6, 0x6d7
	czero.nez t4, a7, a6
	li a3, 0x377
	czero.nez a7, t4, a3
	li t1, 0xe
	czero.nez s0, a7, t1
	li a7, 0x75
	czero.nez a7, s0, a7
	li t1, 0x337
	czero.nez s11, a7, t1
	li s9, 0x366
	czero.nez t6, s11, s9
	li s8, 0x7
	czero.nez t4, t6, s8
	li a5, 0x58e
	czero.nez s2, t4, a5
	li s7, 0x6ed
	czero.nez a3, s2, s7
	li s8, 0x299
	czero.nez a4, a3, s8
	li a1, 0x336
	czero.nez a3, a4, a1
	li s7, 0xde
	czero.nez t6, a3, s7
	li a6, 0x4d0
	czero.nez t2, t6, a6
	li a5, 0x397
	czero.nez a6, t2, a5
	li a7, 0x1b4
	czero.nez s1, a6, a7
	li a6, 0x2e5
	czero.nez t1, s1, a6
	li s0, 0x2a6
	czero.nez a4, t1, s0
	li s2, 0x77
	czero.nez s11, a4, s2
	li a5, 0x2d4
	czero.nez t3, s11, a5
	li s8, 0xf4
	czero.nez a4, t3, s8
	li t5, 0x27b
	czero.nez a7, a4, t5
	li s11, 0x5f3
	czero.nez s0, a7, s11
	li t3, 0x7cb
	czero.nez s9, s0, t3
	li t6, 0x4d4
	czero.nez s7, s9, t6
	li a5, 0x572
	czero.nez s2, s7, a5
	li s5, 0x51
	czero.nez t3, s2, s5
	li s1, 0x1e4
	czero.nez a5, t3, s1
	li s11, 0x658
	czero.nez t2, a5, s11
	li t6, 0x3b1
	czero.nez s5, t2, t6
	li t2, 0x485
	czero.nez s4, s5, t2
	li a3, 0x651
	czero.nez s1, s4, a3
	li s5, 0x7ac
	czero.nez s1, s1, s5
	li t3, 0x392
	czero.nez s11, s1, t3
	li s5, 0x6f5
	czero.nez t5, s11, s5
	li s9, 0x71e
	czero.nez t1, t5, s9
	li a7, 0x4db
	czero.nez a6, t1, a7
	li t2, 0x41f
	czero.nez s2, a6, t2
	li s4, 0x12f
	czero.nez a5, s2, s4
	li t2, 0x3de
	czero.nez s8, a5, t2
	li a6, 0x406
	czero.nez a1, s8, a6
	li s9, 0x470
	czero.nez t2, a1, s9
	li a1, 0x54e
	czero.nez a1, t2, a1
	li t6, 0x1bd
	czero.nez s1, a1, t6
	li s7, 0x6b5
	czero.nez t3, s1, s7
	li s9, 0x91
	czero.nez t4, t3, s9
	li t5, 0xcc
	czero.nez a4, t4, t5
	li a1, 0xd7
	czero.nez s11, a4, a1
	li t2, 0x7f1
	czero.nez s9, s11, t2
	li a1, 0x76
	czero.nez s1, s9, a1
	li s5, 0x3ea
	czero.nez t5, s1, s5
	li t4, 0x3b6
	czero.nez s9, t5, t4
	li t1, 0x574
	czero.nez a7, s9, t1
	li a3, 0x686
	czero.nez t6, a7, a3
	li s9, 0x654
	czero.nez s4, t6, s9
	li s5, 0x20
	czero.nez a7, s4, s5
	li s8, 0x623
	czero.nez s0, a7, s8
	li s4, 0x36
	czero.nez a7, s0, s4
	li t5, 0x677
	czero.nez s4, a7, t5
	li s5, 0x703
	czero.nez a7, s4, s5
	li t4, 0x4ba
	czero.nez s2, a7, t4
	li t6, 0x6f2
	czero.nez s0, s2, t6
	li t3, 0x617
	czero.nez t6, s0, t3
	li t3, 0x154
	czero.nez s11, t6, t3
	li s7, 0x84
	czero.nez s2, s11, s7
	li a6, 0x69d
	czero.nez s5, s2, a6
	li s7, 0x223
	czero.nez t5, s5, s7
	li s8, 0xd
	czero.nez a1, t5, s8
	li a5, 0x54e
	czero.nez s1, a1, a5
	li a1, 0x143
	czero.nez s5, s1, a1
	li a6, 0x5f
	czero.nez a3, s5, a6
	li s9, 0x323
	czero.nez s7, a3, s9
	li a6, 0x6df
	czero.nez t5, s7, a6
	li s2, 0x4c
	czero.nez a3, t5, s2
	li t3, 0x7d4
	czero.nez t6, a3, t3
	li s11, 0x105
	czero.nez a5, t6, s11
	li s11, 0x67e
	czero.nez t5, a5, s11
	li s7, 0x792
	czero.nez s1, t5, s7
	li s0, 0x15a
	czero.nez s2, s1, s0
	li t6, 0x695
	czero.nez a6, s2, t6
	li s5, 0x550
	czero.nez a5, a6, s5
	csrr t6, time
	csrr s2, cycle
	csrr s11, instret
	sub a3, t6, a2
	sub t4, s2, a0
	sub s5, s11, s3
	beq s10, t4, pass_label_108
	li t6, failed_addr
	ld s2, 0(t6)
	jr s2
pass_label_108:
	beq s6, s5, pass_label_109
	li a0, failed_addr
	ld t2, 0(a0)
	jr t2
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
