;#test.name       zicntr_zihpm_sscounterenw
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zicntr_zihpm_sscounterenw
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zicntr_zihpm_sscounterenw

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_01_M)
SID_XCOUNTEREN_01_M:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_01_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t6, 0xffffffff
	csrrs t5, mcounteren, t6
	li s0, 0xffffffff
	csrrs a5, scounteren, s0
	# Test each CSR in M mode - all should succeed
	csrr a0, cycle
	csrr s8, time
	csrr a0, instret
	csrr s7, hpmcounter3
	csrr s10, hpmcounter4
	csrr s0, hpmcounter5
	csrr s5, hpmcounter6
	csrr s5, hpmcounter7
	csrr a4, hpmcounter8
	csrr a1, hpmcounter9
	csrr t6, hpmcounter10
	csrr t1, hpmcounter11
	csrr t3, hpmcounter12
	csrr t5, hpmcounter13
	csrr s5, hpmcounter14
	csrr t5, hpmcounter15
	csrr s5, hpmcounter16
	csrr t2, hpmcounter17
	csrr t3, hpmcounter18
	csrr a0, hpmcounter19
	csrr s6, hpmcounter20
	csrr t3, hpmcounter21
	csrr t3, hpmcounter22
	csrr s4, hpmcounter23
	csrr t1, hpmcounter24
	csrr a6, hpmcounter25
	csrr s8, hpmcounter26
	csrr s1, hpmcounter27
	csrr a2, hpmcounter28
	csrr a3, hpmcounter29
	csrr t1, hpmcounter30
	csrr s6, hpmcounter31
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_XCOUNTEREN_01_M_passed:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_02_M)
SID_XCOUNTEREN_02_M:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_02_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li t1, 0xffffffff
	csrrs s3, mcounteren, t1
	li t4, 0xffffffff
	csrrc a3, scounteren, t4
	# Test each CSR in M mode - all should succeed
	csrr s6, cycle
	csrr t4, time
	csrr t2, instret
	csrr s11, hpmcounter3
	csrr a6, hpmcounter4
	csrr s11, hpmcounter5
	csrr s10, hpmcounter6
	csrr t5, hpmcounter7
	csrr s3, hpmcounter8
	csrr a7, hpmcounter9
	csrr s8, hpmcounter10
	csrr s2, hpmcounter11
	csrr t5, hpmcounter12
	csrr s4, hpmcounter13
	csrr t5, hpmcounter14
	csrr s6, hpmcounter15
	csrr s9, hpmcounter16
	csrr s0, hpmcounter17
	csrr t2, hpmcounter18
	csrr a7, hpmcounter19
	csrr t5, hpmcounter20
	csrr a2, hpmcounter21
	csrr s5, hpmcounter22
	csrr s0, hpmcounter23
	csrr a2, hpmcounter24
	csrr a3, hpmcounter25
	csrr a4, hpmcounter26
	csrr a2, hpmcounter27
	csrr s11, hpmcounter28
	csrr a4, hpmcounter29
	csrr a3, hpmcounter30
	csrr s9, hpmcounter31
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_XCOUNTEREN_02_M_passed:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_03_M)
SID_XCOUNTEREN_03_M:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_03_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s3, 0xffffffff
	csrrc s7, mcounteren, s3
	li t4, 0xffffffff
	csrrs a2, scounteren, t4
	# Test each CSR in M mode - all should succeed
	csrr a6, cycle
	csrr a7, time
	csrr t5, instret
	csrr s10, hpmcounter3
	csrr t3, hpmcounter4
	csrr s6, hpmcounter5
	csrr t4, hpmcounter6
	csrr t2, hpmcounter7
	csrr s3, hpmcounter8
	csrr a5, hpmcounter9
	csrr t2, hpmcounter10
	csrr t2, hpmcounter11
	csrr s11, hpmcounter12
	csrr s7, hpmcounter13
	csrr s3, hpmcounter14
	csrr a3, hpmcounter15
	csrr t6, hpmcounter16
	csrr s6, hpmcounter17
	csrr s3, hpmcounter18
	csrr s6, hpmcounter19
	csrr s7, hpmcounter20
	csrr s3, hpmcounter21
	csrr a2, hpmcounter22
	csrr s1, hpmcounter23
	csrr t3, hpmcounter24
	csrr s7, hpmcounter25
	csrr t2, hpmcounter26
	csrr a1, hpmcounter27
	csrr t2, hpmcounter28
	csrr s4, hpmcounter29
	csrr t6, hpmcounter30
	csrr t4, hpmcounter31
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_XCOUNTEREN_03_M_passed:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_04_M)
SID_XCOUNTEREN_04_M:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_04_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li a7, 0xffffffff
	csrrc s6, mcounteren, a7
	li t6, 0xffffffff
	csrrc t1, scounteren, t6
	# Test each CSR in M mode - all should succeed
	csrr s8, cycle
	csrr s0, time
	csrr s2, instret
	csrr t1, hpmcounter3
	csrr a7, hpmcounter4
	csrr t5, hpmcounter5
	csrr s6, hpmcounter6
	csrr s7, hpmcounter7
	csrr s2, hpmcounter8
	csrr a3, hpmcounter9
	csrr a4, hpmcounter10
	csrr s8, hpmcounter11
	csrr s3, hpmcounter12
	csrr t2, hpmcounter13
	csrr s3, hpmcounter14
	csrr s4, hpmcounter15
	csrr s6, hpmcounter16
	csrr s7, hpmcounter17
	csrr s9, hpmcounter18
	csrr s0, hpmcounter19
	csrr a3, hpmcounter20
	csrr t6, hpmcounter21
	csrr s3, hpmcounter22
	csrr t1, hpmcounter23
	csrr a4, hpmcounter24
	csrr s11, hpmcounter25
	csrr t6, hpmcounter26
	csrr s7, hpmcounter27
	csrr a3, hpmcounter28
	csrr t6, hpmcounter29
	csrr s1, hpmcounter30
	csrr s8, hpmcounter31
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_XCOUNTEREN_04_M_passed:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_05_M)
SID_XCOUNTEREN_05_M:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	li sp, SID_XCOUNTEREN_05_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	csrrwi t6, scounteren, 0
	# Set only this field in mcounteren, clear all others
	csrrwi t4, mcounteren, 0x1
	# Test the enabled CSR in M mode - should succeed
	csrr s6, cycle
	# Test other CSRs in M mode - should also succeed
	csrr s6, time
	csrr a0, instret
	csrr s8, hpmcounter3
	csrr a0, hpmcounter4
	csrr s10, hpmcounter5
	csrr a3, hpmcounter6
	csrr s5, hpmcounter7
	csrr t2, hpmcounter8
	csrr t3, hpmcounter9
	csrr s4, hpmcounter10
	csrr s8, hpmcounter11
	csrr s6, hpmcounter12
	csrr a5, hpmcounter13
	csrr a0, hpmcounter14
	csrr t5, hpmcounter15
	csrr s10, hpmcounter16
	csrr s9, hpmcounter17
	csrr t4, hpmcounter18
	csrr s11, hpmcounter19
	csrr t1, hpmcounter20
	csrr s6, hpmcounter21
	csrr a5, hpmcounter22
	csrr s10, hpmcounter23
	csrr s10, hpmcounter24
	csrr s9, hpmcounter25
	csrr t6, hpmcounter26
	csrr s4, hpmcounter27
	csrr t1, hpmcounter28
	csrr s0, hpmcounter29
	csrr s0, hpmcounter30
	csrr s3, hpmcounter31
	# Set only this field in mcounteren, clear all others
	csrrwi s9, mcounteren, 0x2
	# Test the enabled CSR in M mode - should succeed
	csrr a7, time
	# Test other CSRs in M mode - should also succeed
	csrr a5, cycle
	csrr t6, instret
	csrr s2, hpmcounter3
	csrr a2, hpmcounter4
	csrr a2, hpmcounter5
	csrr t1, hpmcounter6
	csrr t1, hpmcounter7
	csrr t3, hpmcounter8
	csrr a1, hpmcounter9
	csrr s2, hpmcounter10
	csrr a6, hpmcounter11
	csrr s7, hpmcounter12
	csrr s1, hpmcounter13
	csrr s9, hpmcounter14
	csrr a4, hpmcounter15
	csrr s9, hpmcounter16
	csrr a4, hpmcounter17
	csrr s6, hpmcounter18
	csrr s11, hpmcounter19
	csrr s4, hpmcounter20
	csrr s8, hpmcounter21
	csrr s8, hpmcounter22
	csrr s1, hpmcounter23
	csrr t4, hpmcounter24
	csrr a2, hpmcounter25
	csrr a5, hpmcounter26
	csrr t2, hpmcounter27
	csrr s0, hpmcounter28
	csrr s3, hpmcounter29
	csrr t3, hpmcounter30
	csrr s4, hpmcounter31
	# Set only this field in mcounteren, clear all others
	csrrwi a7, mcounteren, 0x4
	# Test the enabled CSR in M mode - should succeed
	csrr s0, instret
	# Test other CSRs in M mode - should also succeed
	csrr s2, cycle
	csrr s3, time
	csrr a7, hpmcounter3
	csrr s7, hpmcounter4
	csrr s1, hpmcounter5
	csrr s3, hpmcounter6
	csrr a4, hpmcounter7
	csrr a5, hpmcounter8
	csrr t2, hpmcounter9
	csrr t5, hpmcounter10
	csrr a3, hpmcounter11
	csrr s11, hpmcounter12
	csrr t3, hpmcounter13
	csrr t4, hpmcounter14
	csrr s2, hpmcounter15
	csrr s2, hpmcounter16
	csrr a6, hpmcounter17
	csrr s8, hpmcounter18
	csrr t6, hpmcounter19
	csrr s4, hpmcounter20
	csrr s8, hpmcounter21
	csrr t5, hpmcounter22
	csrr s6, hpmcounter23
	csrr s2, hpmcounter24
	csrr a5, hpmcounter25
	csrr s5, hpmcounter26
	csrr a7, hpmcounter27
	csrr a0, hpmcounter28
	csrr s11, hpmcounter29
	csrr a2, hpmcounter30
	csrr t1, hpmcounter31
	# Set only this field in mcounteren, clear all others
	csrrwi s11, mcounteren, 0x8
	# Test the enabled CSR in M mode - should succeed
	csrr s1, hpmcounter3
	# Test other CSRs in M mode - should also succeed
	csrr s8, cycle
	csrr t1, time
	csrr s2, instret
	csrr s11, hpmcounter4
	csrr s4, hpmcounter5
	csrr a7, hpmcounter6
	csrr t2, hpmcounter7
	csrr t1, hpmcounter8
	csrr t1, hpmcounter9
	csrr s4, hpmcounter10
	csrr a0, hpmcounter11
	csrr a5, hpmcounter12
	csrr a3, hpmcounter13
	csrr s8, hpmcounter14
	csrr t1, hpmcounter15
	csrr s10, hpmcounter16
	csrr s5, hpmcounter17
	csrr a3, hpmcounter18
	csrr s4, hpmcounter19
	csrr s4, hpmcounter20
	csrr t5, hpmcounter21
	csrr s10, hpmcounter22
	csrr t1, hpmcounter23
	csrr s2, hpmcounter24
	csrr s9, hpmcounter25
	csrr t1, hpmcounter26
	csrr s6, hpmcounter27
	csrr a4, hpmcounter28
	csrr a6, hpmcounter29
	csrr s0, hpmcounter30
	csrr a7, hpmcounter31
	# Set only this field in mcounteren, clear all others
	csrrwi s3, mcounteren, 0x10
	# Test the enabled CSR in M mode - should succeed
	csrr t3, hpmcounter4
	# Test other CSRs in M mode - should also succeed
	csrr a5, cycle
	csrr s8, time
	csrr t3, instret
	csrr s1, hpmcounter3
	csrr s2, hpmcounter5
	csrr s0, hpmcounter6
	csrr s5, hpmcounter7
	csrr a2, hpmcounter8
	csrr a1, hpmcounter9
	csrr a5, hpmcounter10
	csrr t4, hpmcounter11
	csrr s1, hpmcounter12
	csrr s4, hpmcounter13
	csrr s0, hpmcounter14
	csrr s3, hpmcounter15
	csrr a3, hpmcounter16
	csrr s3, hpmcounter17
	csrr s4, hpmcounter18
	csrr a5, hpmcounter19
	csrr s5, hpmcounter20
	csrr t6, hpmcounter21
	csrr s8, hpmcounter22
	csrr s9, hpmcounter23
	csrr t3, hpmcounter24
	csrr a0, hpmcounter25
	csrr s6, hpmcounter26
	csrr a5, hpmcounter27
	csrr s9, hpmcounter28
	csrr s1, hpmcounter29
	csrr t6, hpmcounter30
	csrr a4, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s4, 0x20
	csrrw t5, mcounteren, s4
	# Test the enabled CSR in M mode - should succeed
	csrr s1, hpmcounter5
	# Test other CSRs in M mode - should also succeed
	csrr a3, cycle
	csrr a1, time
	csrr s6, instret
	csrr a0, hpmcounter3
	csrr s7, hpmcounter4
	csrr s3, hpmcounter6
	csrr s1, hpmcounter7
	csrr t3, hpmcounter8
	csrr s0, hpmcounter9
	csrr s11, hpmcounter10
	csrr s2, hpmcounter11
	csrr t4, hpmcounter12
	csrr t6, hpmcounter13
	csrr t6, hpmcounter14
	csrr s3, hpmcounter15
	csrr s3, hpmcounter16
	csrr a7, hpmcounter17
	csrr s4, hpmcounter18
	csrr s6, hpmcounter19
	csrr s8, hpmcounter20
	csrr a4, hpmcounter21
	csrr a7, hpmcounter22
	csrr a6, hpmcounter23
	csrr s1, hpmcounter24
	csrr t6, hpmcounter25
	csrr s7, hpmcounter26
	csrr a7, hpmcounter27
	csrr s4, hpmcounter28
	csrr t4, hpmcounter29
	csrr s4, hpmcounter30
	csrr s8, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li t5, 0x40
	csrrw t1, mcounteren, t5
	# Test the enabled CSR in M mode - should succeed
	csrr s8, hpmcounter6
	# Test other CSRs in M mode - should also succeed
	csrr s10, cycle
	csrr s5, time
	csrr a3, instret
	csrr a0, hpmcounter3
	csrr t3, hpmcounter4
	csrr s4, hpmcounter5
	csrr s11, hpmcounter7
	csrr s6, hpmcounter8
	csrr s11, hpmcounter9
	csrr s1, hpmcounter10
	csrr a3, hpmcounter11
	csrr s8, hpmcounter12
	csrr a4, hpmcounter13
	csrr a7, hpmcounter14
	csrr s7, hpmcounter15
	csrr t4, hpmcounter16
	csrr s9, hpmcounter17
	csrr t5, hpmcounter18
	csrr a6, hpmcounter19
	csrr a4, hpmcounter20
	csrr a6, hpmcounter21
	csrr s9, hpmcounter22
	csrr s11, hpmcounter23
	csrr s0, hpmcounter24
	csrr s7, hpmcounter25
	csrr a7, hpmcounter26
	csrr s7, hpmcounter27
	csrr a1, hpmcounter28
	csrr t3, hpmcounter29
	csrr a2, hpmcounter30
	csrr s8, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s2, 0x80
	csrrw t4, mcounteren, s2
	# Test the enabled CSR in M mode - should succeed
	csrr t4, hpmcounter7
	# Test other CSRs in M mode - should also succeed
	csrr t1, cycle
	csrr s10, time
	csrr t5, instret
	csrr t6, hpmcounter3
	csrr s8, hpmcounter4
	csrr a2, hpmcounter5
	csrr a2, hpmcounter6
	csrr s11, hpmcounter8
	csrr s3, hpmcounter9
	csrr t1, hpmcounter10
	csrr t4, hpmcounter11
	csrr a3, hpmcounter12
	csrr t6, hpmcounter13
	csrr s5, hpmcounter14
	csrr s9, hpmcounter15
	csrr a1, hpmcounter16
	csrr a7, hpmcounter17
	csrr t1, hpmcounter18
	csrr s3, hpmcounter19
	csrr s4, hpmcounter20
	csrr a2, hpmcounter21
	csrr s7, hpmcounter22
	csrr s6, hpmcounter23
	csrr s6, hpmcounter24
	csrr a5, hpmcounter25
	csrr t5, hpmcounter26
	csrr t2, hpmcounter27
	csrr s4, hpmcounter28
	csrr s6, hpmcounter29
	csrr a0, hpmcounter30
	csrr a6, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li a1, 0x100
	csrrw t3, mcounteren, a1
	# Test the enabled CSR in M mode - should succeed
	csrr t3, hpmcounter8
	# Test other CSRs in M mode - should also succeed
	csrr a4, cycle
	csrr t4, time
	csrr t6, instret
	csrr t6, hpmcounter3
	csrr s6, hpmcounter4
	csrr s7, hpmcounter5
	csrr s11, hpmcounter6
	csrr s10, hpmcounter7
	csrr s4, hpmcounter9
	csrr s5, hpmcounter10
	csrr s7, hpmcounter11
	csrr t1, hpmcounter12
	csrr s9, hpmcounter13
	csrr s7, hpmcounter14
	csrr s8, hpmcounter15
	csrr t3, hpmcounter16
	csrr a1, hpmcounter17
	csrr a1, hpmcounter18
	csrr s10, hpmcounter19
	csrr t2, hpmcounter20
	csrr s5, hpmcounter21
	csrr t5, hpmcounter22
	csrr s10, hpmcounter23
	csrr s4, hpmcounter24
	csrr a4, hpmcounter25
	csrr a3, hpmcounter26
	csrr a5, hpmcounter27
	csrr t5, hpmcounter28
	csrr s6, hpmcounter29
	csrr s0, hpmcounter30
	csrr s1, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s2, 0x200
	csrrw s2, mcounteren, s2
	# Test the enabled CSR in M mode - should succeed
	csrr s9, hpmcounter9
	# Test other CSRs in M mode - should also succeed
	csrr s1, cycle
	csrr a5, time
	csrr s8, instret
	csrr s10, hpmcounter3
	csrr t2, hpmcounter4
	csrr t3, hpmcounter5
	csrr s4, hpmcounter6
	csrr a2, hpmcounter7
	csrr a0, hpmcounter8
	csrr a4, hpmcounter10
	csrr s10, hpmcounter11
	csrr s2, hpmcounter12
	csrr t4, hpmcounter13
	csrr s5, hpmcounter14
	csrr s7, hpmcounter15
	csrr s7, hpmcounter16
	csrr a0, hpmcounter17
	csrr s7, hpmcounter18
	csrr s4, hpmcounter19
	csrr s5, hpmcounter20
	csrr t2, hpmcounter21
	csrr a0, hpmcounter22
	csrr s9, hpmcounter23
	csrr t5, hpmcounter24
	csrr t1, hpmcounter25
	csrr t4, hpmcounter26
	csrr a3, hpmcounter27
	csrr a5, hpmcounter28
	csrr s6, hpmcounter29
	csrr s1, hpmcounter30
	csrr s10, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li a6, 0x400
	csrrw a2, mcounteren, a6
	# Test the enabled CSR in M mode - should succeed
	csrr t6, hpmcounter10
	# Test other CSRs in M mode - should also succeed
	csrr a2, cycle
	csrr s9, time
	csrr s11, instret
	csrr s10, hpmcounter3
	csrr s6, hpmcounter4
	csrr t6, hpmcounter5
	csrr s5, hpmcounter6
	csrr s2, hpmcounter7
	csrr t1, hpmcounter8
	csrr t2, hpmcounter9
	csrr s3, hpmcounter11
	csrr t4, hpmcounter12
	csrr a4, hpmcounter13
	csrr a5, hpmcounter14
	csrr a5, hpmcounter15
	csrr s5, hpmcounter16
	csrr a3, hpmcounter17
	csrr a0, hpmcounter18
	csrr a2, hpmcounter19
	csrr s8, hpmcounter20
	csrr s3, hpmcounter21
	csrr a5, hpmcounter22
	csrr a4, hpmcounter23
	csrr a4, hpmcounter24
	csrr a3, hpmcounter25
	csrr s0, hpmcounter26
	csrr a6, hpmcounter27
	csrr s9, hpmcounter28
	csrr a7, hpmcounter29
	csrr a7, hpmcounter30
	csrr s10, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li t4, 0x800
	csrrw s7, mcounteren, t4
	# Test the enabled CSR in M mode - should succeed
	csrr s2, hpmcounter11
	# Test other CSRs in M mode - should also succeed
	csrr a3, cycle
	csrr s4, time
	csrr s2, instret
	csrr t5, hpmcounter3
	csrr a1, hpmcounter4
	csrr s7, hpmcounter5
	csrr t3, hpmcounter6
	csrr s8, hpmcounter7
	csrr t3, hpmcounter8
	csrr t3, hpmcounter9
	csrr a4, hpmcounter10
	csrr s10, hpmcounter12
	csrr t4, hpmcounter13
	csrr t1, hpmcounter14
	csrr t6, hpmcounter15
	csrr t5, hpmcounter16
	csrr t6, hpmcounter17
	csrr t6, hpmcounter18
	csrr a6, hpmcounter19
	csrr s6, hpmcounter20
	csrr s8, hpmcounter21
	csrr t5, hpmcounter22
	csrr a2, hpmcounter23
	csrr s3, hpmcounter24
	csrr a2, hpmcounter25
	csrr a0, hpmcounter26
	csrr a5, hpmcounter27
	csrr a1, hpmcounter28
	csrr s2, hpmcounter29
	csrr s5, hpmcounter30
	csrr a5, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s6, 0x1000
	csrrw a2, mcounteren, s6
	# Test the enabled CSR in M mode - should succeed
	csrr t3, hpmcounter12
	# Test other CSRs in M mode - should also succeed
	csrr s9, cycle
	csrr s4, time
	csrr a7, instret
	csrr s2, hpmcounter3
	csrr s4, hpmcounter4
	csrr s11, hpmcounter5
	csrr s4, hpmcounter6
	csrr a6, hpmcounter7
	csrr t3, hpmcounter8
	csrr t3, hpmcounter9
	csrr s2, hpmcounter10
	csrr s6, hpmcounter11
	csrr t3, hpmcounter13
	csrr a6, hpmcounter14
	csrr s10, hpmcounter15
	csrr a4, hpmcounter16
	csrr t5, hpmcounter17
	csrr a5, hpmcounter18
	csrr s4, hpmcounter19
	csrr t4, hpmcounter20
	csrr t2, hpmcounter21
	csrr a5, hpmcounter22
	csrr t5, hpmcounter23
	csrr s3, hpmcounter24
	csrr a1, hpmcounter25
	csrr s3, hpmcounter26
	csrr a3, hpmcounter27
	csrr a5, hpmcounter28
	csrr t3, hpmcounter29
	csrr t3, hpmcounter30
	csrr s6, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li t4, 0x2000
	csrrw a2, mcounteren, t4
	# Test the enabled CSR in M mode - should succeed
	csrr t5, hpmcounter13
	# Test other CSRs in M mode - should also succeed
	csrr a4, cycle
	csrr s3, time
	csrr s4, instret
	csrr s1, hpmcounter3
	csrr s10, hpmcounter4
	csrr s2, hpmcounter5
	csrr a0, hpmcounter6
	csrr s11, hpmcounter7
	csrr t4, hpmcounter8
	csrr s0, hpmcounter9
	csrr s0, hpmcounter10
	csrr s10, hpmcounter11
	csrr s6, hpmcounter12
	csrr s1, hpmcounter14
	csrr s7, hpmcounter15
	csrr t6, hpmcounter16
	csrr s6, hpmcounter17
	csrr a2, hpmcounter18
	csrr t4, hpmcounter19
	csrr a7, hpmcounter20
	csrr s10, hpmcounter21
	csrr a6, hpmcounter22
	csrr t2, hpmcounter23
	csrr t5, hpmcounter24
	csrr a4, hpmcounter25
	csrr s11, hpmcounter26
	csrr t4, hpmcounter27
	csrr s0, hpmcounter28
	csrr a3, hpmcounter29
	csrr t2, hpmcounter30
	csrr s5, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s4, 0x4000
	csrrw s10, mcounteren, s4
	# Test the enabled CSR in M mode - should succeed
	csrr t1, hpmcounter14
	# Test other CSRs in M mode - should also succeed
	csrr s3, cycle
	csrr s11, time
	csrr s6, instret
	csrr s0, hpmcounter3
	csrr s10, hpmcounter4
	csrr a4, hpmcounter5
	csrr s11, hpmcounter6
	csrr s3, hpmcounter7
	csrr a4, hpmcounter8
	csrr s1, hpmcounter9
	csrr s7, hpmcounter10
	csrr a6, hpmcounter11
	csrr s4, hpmcounter12
	csrr a4, hpmcounter13
	csrr t1, hpmcounter15
	csrr t6, hpmcounter16
	csrr s4, hpmcounter17
	csrr s5, hpmcounter18
	csrr t4, hpmcounter19
	csrr s1, hpmcounter20
	csrr a4, hpmcounter21
	csrr t4, hpmcounter22
	csrr t6, hpmcounter23
	csrr a7, hpmcounter24
	csrr s5, hpmcounter25
	csrr a2, hpmcounter26
	csrr s9, hpmcounter27
	csrr a5, hpmcounter28
	csrr s9, hpmcounter29
	csrr s4, hpmcounter30
	csrr a7, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s11, 0x8000
	csrrw t5, mcounteren, s11
	# Test the enabled CSR in M mode - should succeed
	csrr t4, hpmcounter15
	# Test other CSRs in M mode - should also succeed
	csrr t5, cycle
	csrr t5, time
	csrr t2, instret
	csrr s3, hpmcounter3
	csrr s7, hpmcounter4
	csrr t5, hpmcounter5
	csrr a6, hpmcounter6
	csrr s4, hpmcounter7
	csrr a4, hpmcounter8
	csrr a3, hpmcounter9
	csrr a6, hpmcounter10
	csrr s4, hpmcounter11
	csrr a3, hpmcounter12
	csrr s9, hpmcounter13
	csrr s7, hpmcounter14
	csrr t3, hpmcounter16
	csrr a0, hpmcounter17
	csrr a6, hpmcounter18
	csrr s3, hpmcounter19
	csrr s4, hpmcounter20
	csrr a7, hpmcounter21
	csrr s10, hpmcounter22
	csrr s0, hpmcounter23
	csrr a2, hpmcounter24
	csrr a4, hpmcounter25
	csrr t6, hpmcounter26
	csrr s3, hpmcounter27
	csrr a4, hpmcounter28
	csrr s3, hpmcounter29
	csrr s3, hpmcounter30
	csrr a1, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li a0, 0x10000
	csrrw t6, mcounteren, a0
	# Test the enabled CSR in M mode - should succeed
	csrr s9, hpmcounter16
	# Test other CSRs in M mode - should also succeed
	csrr a1, cycle
	csrr a4, time
	csrr a3, instret
	csrr t3, hpmcounter3
	csrr s0, hpmcounter4
	csrr s5, hpmcounter5
	csrr a0, hpmcounter6
	csrr s0, hpmcounter7
	csrr s2, hpmcounter8
	csrr t6, hpmcounter9
	csrr t1, hpmcounter10
	csrr t1, hpmcounter11
	csrr s7, hpmcounter12
	csrr a0, hpmcounter13
	csrr a5, hpmcounter14
	csrr s4, hpmcounter15
	csrr a0, hpmcounter17
	csrr s1, hpmcounter18
	csrr t2, hpmcounter19
	csrr s1, hpmcounter20
	csrr t1, hpmcounter21
	csrr s4, hpmcounter22
	csrr a0, hpmcounter23
	csrr s1, hpmcounter24
	csrr s11, hpmcounter25
	csrr s5, hpmcounter26
	csrr a2, hpmcounter27
	csrr t3, hpmcounter28
	csrr t3, hpmcounter29
	csrr s2, hpmcounter30
	csrr s0, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li a7, 0x20000
	csrrw a3, mcounteren, a7
	# Test the enabled CSR in M mode - should succeed
	csrr t1, hpmcounter17
	# Test other CSRs in M mode - should also succeed
	csrr a6, cycle
	csrr t3, time
	csrr s1, instret
	csrr s9, hpmcounter3
	csrr t5, hpmcounter4
	csrr s11, hpmcounter5
	csrr t1, hpmcounter6
	csrr a7, hpmcounter7
	csrr s5, hpmcounter8
	csrr s10, hpmcounter9
	csrr s11, hpmcounter10
	csrr t2, hpmcounter11
	csrr a5, hpmcounter12
	csrr s7, hpmcounter13
	csrr a3, hpmcounter14
	csrr a5, hpmcounter15
	csrr t1, hpmcounter16
	csrr s8, hpmcounter18
	csrr s4, hpmcounter19
	csrr s5, hpmcounter20
	csrr t5, hpmcounter21
	csrr s7, hpmcounter22
	csrr s6, hpmcounter23
	csrr t4, hpmcounter24
	csrr s4, hpmcounter25
	csrr s8, hpmcounter26
	csrr s0, hpmcounter27
	csrr t3, hpmcounter28
	csrr s2, hpmcounter29
	csrr a2, hpmcounter30
	csrr s10, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li a0, 0x40000
	csrrw t4, mcounteren, a0
	# Test the enabled CSR in M mode - should succeed
	csrr s9, hpmcounter18
	# Test other CSRs in M mode - should also succeed
	csrr t2, cycle
	csrr a5, time
	csrr s2, instret
	csrr a5, hpmcounter3
	csrr a3, hpmcounter4
	csrr s9, hpmcounter5
	csrr s8, hpmcounter6
	csrr s8, hpmcounter7
	csrr s8, hpmcounter8
	csrr s1, hpmcounter9
	csrr a0, hpmcounter10
	csrr s6, hpmcounter11
	csrr s10, hpmcounter12
	csrr t3, hpmcounter13
	csrr t6, hpmcounter14
	csrr t3, hpmcounter15
	csrr t1, hpmcounter16
	csrr s8, hpmcounter17
	csrr t4, hpmcounter19
	csrr s5, hpmcounter20
	csrr s0, hpmcounter21
	csrr s0, hpmcounter22
	csrr a6, hpmcounter23
	csrr a6, hpmcounter24
	csrr s3, hpmcounter25
	csrr s11, hpmcounter26
	csrr t1, hpmcounter27
	csrr s3, hpmcounter28
	csrr a1, hpmcounter29
	csrr s8, hpmcounter30
	csrr a3, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li t1, 0x80000
	csrrw a3, mcounteren, t1
	# Test the enabled CSR in M mode - should succeed
	csrr s8, hpmcounter19
	# Test other CSRs in M mode - should also succeed
	csrr s11, cycle
	csrr s4, time
	csrr t5, instret
	csrr s0, hpmcounter3
	csrr s10, hpmcounter4
	csrr t1, hpmcounter5
	csrr t1, hpmcounter6
	csrr a0, hpmcounter7
	csrr s5, hpmcounter8
	csrr a3, hpmcounter9
	csrr s10, hpmcounter10
	csrr t3, hpmcounter11
	csrr s10, hpmcounter12
	csrr s11, hpmcounter13
	csrr t6, hpmcounter14
	csrr a4, hpmcounter15
	csrr t2, hpmcounter16
	csrr t5, hpmcounter17
	csrr t6, hpmcounter18
	csrr s0, hpmcounter20
	csrr a1, hpmcounter21
	csrr a6, hpmcounter22
	csrr s10, hpmcounter23
	csrr t1, hpmcounter24
	csrr s8, hpmcounter25
	csrr s8, hpmcounter26
	csrr s10, hpmcounter27
	csrr a1, hpmcounter28
	csrr t5, hpmcounter29
	csrr s11, hpmcounter30
	csrr s2, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s8, 0x100000
	csrrw a3, mcounteren, s8
	# Test the enabled CSR in M mode - should succeed
	csrr t3, hpmcounter20
	# Test other CSRs in M mode - should also succeed
	csrr s6, cycle
	csrr s10, time
	csrr a7, instret
	csrr a0, hpmcounter3
	csrr a3, hpmcounter4
	csrr s8, hpmcounter5
	csrr a0, hpmcounter6
	csrr a3, hpmcounter7
	csrr s8, hpmcounter8
	csrr t5, hpmcounter9
	csrr s3, hpmcounter10
	csrr a1, hpmcounter11
	csrr a7, hpmcounter12
	csrr t3, hpmcounter13
	csrr t1, hpmcounter14
	csrr a7, hpmcounter15
	csrr a1, hpmcounter16
	csrr t2, hpmcounter17
	csrr t1, hpmcounter18
	csrr t4, hpmcounter19
	csrr s10, hpmcounter21
	csrr t3, hpmcounter22
	csrr t2, hpmcounter23
	csrr s8, hpmcounter24
	csrr s5, hpmcounter25
	csrr s2, hpmcounter26
	csrr a7, hpmcounter27
	csrr s7, hpmcounter28
	csrr s8, hpmcounter29
	csrr a3, hpmcounter30
	csrr t3, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s3, 0x200000
	csrrw t5, mcounteren, s3
	# Test the enabled CSR in M mode - should succeed
	csrr s6, hpmcounter21
	# Test other CSRs in M mode - should also succeed
	csrr s7, cycle
	csrr a7, time
	csrr s6, instret
	csrr t5, hpmcounter3
	csrr a7, hpmcounter4
	csrr s9, hpmcounter5
	csrr s5, hpmcounter6
	csrr a7, hpmcounter7
	csrr a6, hpmcounter8
	csrr s6, hpmcounter9
	csrr t5, hpmcounter10
	csrr a1, hpmcounter11
	csrr s5, hpmcounter12
	csrr a2, hpmcounter13
	csrr s8, hpmcounter14
	csrr s5, hpmcounter15
	csrr s6, hpmcounter16
	csrr t6, hpmcounter17
	csrr a1, hpmcounter18
	csrr t6, hpmcounter19
	csrr a3, hpmcounter20
	csrr a3, hpmcounter22
	csrr t4, hpmcounter23
	csrr s11, hpmcounter24
	csrr t4, hpmcounter25
	csrr s4, hpmcounter26
	csrr t4, hpmcounter27
	csrr s6, hpmcounter28
	csrr a5, hpmcounter29
	csrr s9, hpmcounter30
	csrr t3, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li t3, 0x400000
	csrrw s6, mcounteren, t3
	# Test the enabled CSR in M mode - should succeed
	csrr a2, hpmcounter22
	# Test other CSRs in M mode - should also succeed
	csrr a5, cycle
	csrr a3, time
	csrr s7, instret
	csrr t1, hpmcounter3
	csrr t6, hpmcounter4
	csrr a7, hpmcounter5
	csrr t4, hpmcounter6
	csrr t2, hpmcounter7
	csrr s9, hpmcounter8
	csrr a2, hpmcounter9
	csrr a4, hpmcounter10
	csrr s8, hpmcounter11
	csrr s7, hpmcounter12
	csrr s10, hpmcounter13
	csrr s8, hpmcounter14
	csrr t4, hpmcounter15
	csrr a5, hpmcounter16
	csrr a0, hpmcounter17
	csrr s6, hpmcounter18
	csrr s2, hpmcounter19
	csrr t4, hpmcounter20
	csrr t2, hpmcounter21
	csrr s1, hpmcounter23
	csrr a1, hpmcounter24
	csrr s10, hpmcounter25
	csrr t2, hpmcounter26
	csrr s11, hpmcounter27
	csrr a1, hpmcounter28
	csrr a6, hpmcounter29
	csrr a4, hpmcounter30
	csrr s10, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li a1, 0x800000
	csrrw t6, mcounteren, a1
	# Test the enabled CSR in M mode - should succeed
	csrr t2, hpmcounter23
	# Test other CSRs in M mode - should also succeed
	csrr s9, cycle
	csrr a3, time
	csrr s1, instret
	csrr t1, hpmcounter3
	csrr a2, hpmcounter4
	csrr a0, hpmcounter5
	csrr s8, hpmcounter6
	csrr t5, hpmcounter7
	csrr s5, hpmcounter8
	csrr a0, hpmcounter9
	csrr t2, hpmcounter10
	csrr s8, hpmcounter11
	csrr a6, hpmcounter12
	csrr t6, hpmcounter13
	csrr s1, hpmcounter14
	csrr a2, hpmcounter15
	csrr t6, hpmcounter16
	csrr s3, hpmcounter17
	csrr a5, hpmcounter18
	csrr a4, hpmcounter19
	csrr s1, hpmcounter20
	csrr a5, hpmcounter21
	csrr s3, hpmcounter22
	csrr t2, hpmcounter24
	csrr s11, hpmcounter25
	csrr a3, hpmcounter26
	csrr a4, hpmcounter27
	csrr s11, hpmcounter28
	csrr t4, hpmcounter29
	csrr s5, hpmcounter30
	csrr s1, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li a0, 0x1000000
	csrrw s6, mcounteren, a0
	# Test the enabled CSR in M mode - should succeed
	csrr a5, hpmcounter24
	# Test other CSRs in M mode - should also succeed
	csrr a5, cycle
	csrr s9, time
	csrr t4, instret
	csrr s8, hpmcounter3
	csrr a5, hpmcounter4
	csrr a1, hpmcounter5
	csrr t5, hpmcounter6
	csrr s6, hpmcounter7
	csrr a5, hpmcounter8
	csrr t1, hpmcounter9
	csrr a1, hpmcounter10
	csrr s0, hpmcounter11
	csrr s8, hpmcounter12
	csrr a4, hpmcounter13
	csrr t2, hpmcounter14
	csrr s1, hpmcounter15
	csrr t2, hpmcounter16
	csrr a2, hpmcounter17
	csrr a2, hpmcounter18
	csrr s3, hpmcounter19
	csrr a6, hpmcounter20
	csrr a7, hpmcounter21
	csrr s1, hpmcounter22
	csrr a6, hpmcounter23
	csrr t6, hpmcounter25
	csrr a4, hpmcounter26
	csrr t1, hpmcounter27
	csrr a2, hpmcounter28
	csrr a4, hpmcounter29
	csrr s10, hpmcounter30
	csrr s1, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s9, 0x2000000
	csrrw s8, mcounteren, s9
	# Test the enabled CSR in M mode - should succeed
	csrr a7, hpmcounter25
	# Test other CSRs in M mode - should also succeed
	csrr s11, cycle
	csrr a3, time
	csrr s11, instret
	csrr s5, hpmcounter3
	csrr a7, hpmcounter4
	csrr t6, hpmcounter5
	csrr t2, hpmcounter6
	csrr a1, hpmcounter7
	csrr t2, hpmcounter8
	csrr t1, hpmcounter9
	csrr s6, hpmcounter10
	csrr s2, hpmcounter11
	csrr t2, hpmcounter12
	csrr a5, hpmcounter13
	csrr s6, hpmcounter14
	csrr t1, hpmcounter15
	csrr a2, hpmcounter16
	csrr s7, hpmcounter17
	csrr t4, hpmcounter18
	csrr a4, hpmcounter19
	csrr s11, hpmcounter20
	csrr s8, hpmcounter21
	csrr s2, hpmcounter22
	csrr t5, hpmcounter23
	csrr a6, hpmcounter24
	csrr t3, hpmcounter26
	csrr a0, hpmcounter27
	csrr a0, hpmcounter28
	csrr s11, hpmcounter29
	csrr s4, hpmcounter30
	csrr s11, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s5, 0x4000000
	csrrw t3, mcounteren, s5
	# Test the enabled CSR in M mode - should succeed
	csrr s3, hpmcounter26
	# Test other CSRs in M mode - should also succeed
	csrr a4, cycle
	csrr s5, time
	csrr s2, instret
	csrr a4, hpmcounter3
	csrr s4, hpmcounter4
	csrr t4, hpmcounter5
	csrr s6, hpmcounter6
	csrr s2, hpmcounter7
	csrr t2, hpmcounter8
	csrr s9, hpmcounter9
	csrr a4, hpmcounter10
	csrr s2, hpmcounter11
	csrr t6, hpmcounter12
	csrr a3, hpmcounter13
	csrr a2, hpmcounter14
	csrr s11, hpmcounter15
	csrr s7, hpmcounter16
	csrr t4, hpmcounter17
	csrr s4, hpmcounter18
	csrr s3, hpmcounter19
	csrr s4, hpmcounter20
	csrr a5, hpmcounter21
	csrr t5, hpmcounter22
	csrr a6, hpmcounter23
	csrr s5, hpmcounter24
	csrr t6, hpmcounter25
	csrr s7, hpmcounter27
	csrr s3, hpmcounter28
	csrr a4, hpmcounter29
	csrr s8, hpmcounter30
	csrr s11, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s3, 0x8000000
	csrrw s6, mcounteren, s3
	# Test the enabled CSR in M mode - should succeed
	csrr s2, hpmcounter27
	# Test other CSRs in M mode - should also succeed
	csrr t5, cycle
	csrr s7, time
	csrr a7, instret
	csrr t3, hpmcounter3
	csrr s1, hpmcounter4
	csrr s10, hpmcounter5
	csrr s0, hpmcounter6
	csrr s0, hpmcounter7
	csrr a1, hpmcounter8
	csrr s3, hpmcounter9
	csrr s5, hpmcounter10
	csrr s8, hpmcounter11
	csrr t3, hpmcounter12
	csrr a6, hpmcounter13
	csrr t4, hpmcounter14
	csrr s2, hpmcounter15
	csrr a2, hpmcounter16
	csrr s2, hpmcounter17
	csrr s8, hpmcounter18
	csrr a3, hpmcounter19
	csrr a3, hpmcounter20
	csrr t1, hpmcounter21
	csrr a0, hpmcounter22
	csrr s10, hpmcounter23
	csrr t6, hpmcounter24
	csrr a3, hpmcounter25
	csrr t4, hpmcounter26
	csrr s9, hpmcounter28
	csrr s8, hpmcounter29
	csrr s3, hpmcounter30
	csrr a7, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s11, 0x10000000
	csrrw a5, mcounteren, s11
	# Test the enabled CSR in M mode - should succeed
	csrr t1, hpmcounter28
	# Test other CSRs in M mode - should also succeed
	csrr s8, cycle
	csrr s5, time
	csrr t2, instret
	csrr a4, hpmcounter3
	csrr s3, hpmcounter4
	csrr s6, hpmcounter5
	csrr a7, hpmcounter6
	csrr s0, hpmcounter7
	csrr t5, hpmcounter8
	csrr a0, hpmcounter9
	csrr t5, hpmcounter10
	csrr a1, hpmcounter11
	csrr a5, hpmcounter12
	csrr s1, hpmcounter13
	csrr s10, hpmcounter14
	csrr s4, hpmcounter15
	csrr s3, hpmcounter16
	csrr a1, hpmcounter17
	csrr s2, hpmcounter18
	csrr s3, hpmcounter19
	csrr s11, hpmcounter20
	csrr s4, hpmcounter21
	csrr t4, hpmcounter22
	csrr s2, hpmcounter23
	csrr s0, hpmcounter24
	csrr s6, hpmcounter25
	csrr t2, hpmcounter26
	csrr s4, hpmcounter27
	csrr s8, hpmcounter29
	csrr s5, hpmcounter30
	csrr s0, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s6, 0x20000000
	csrrw t1, mcounteren, s6
	# Test the enabled CSR in M mode - should succeed
	csrr a4, hpmcounter29
	# Test other CSRs in M mode - should also succeed
	csrr t3, cycle
	csrr s4, time
	csrr s4, instret
	csrr s8, hpmcounter3
	csrr s9, hpmcounter4
	csrr a1, hpmcounter5
	csrr t4, hpmcounter6
	csrr a4, hpmcounter7
	csrr s9, hpmcounter8
	csrr s6, hpmcounter9
	csrr s8, hpmcounter10
	csrr s0, hpmcounter11
	csrr a6, hpmcounter12
	csrr s11, hpmcounter13
	csrr a1, hpmcounter14
	csrr s5, hpmcounter15
	csrr a4, hpmcounter16
	csrr t5, hpmcounter17
	csrr a1, hpmcounter18
	csrr s6, hpmcounter19
	csrr t3, hpmcounter20
	csrr a4, hpmcounter21
	csrr t6, hpmcounter22
	csrr s6, hpmcounter23
	csrr s3, hpmcounter24
	csrr t6, hpmcounter25
	csrr t5, hpmcounter26
	csrr s3, hpmcounter27
	csrr t5, hpmcounter28
	csrr a3, hpmcounter30
	csrr t2, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li s1, 0x40000000
	csrrw a0, mcounteren, s1
	# Test the enabled CSR in M mode - should succeed
	csrr s10, hpmcounter30
	# Test other CSRs in M mode - should also succeed
	csrr a2, cycle
	csrr t4, time
	csrr t3, instret
	csrr a7, hpmcounter3
	csrr a5, hpmcounter4
	csrr s10, hpmcounter5
	csrr t1, hpmcounter6
	csrr t2, hpmcounter7
	csrr a3, hpmcounter8
	csrr a0, hpmcounter9
	csrr s6, hpmcounter10
	csrr s9, hpmcounter11
	csrr t6, hpmcounter12
	csrr s2, hpmcounter13
	csrr a6, hpmcounter14
	csrr t1, hpmcounter15
	csrr s4, hpmcounter16
	csrr a5, hpmcounter17
	csrr s2, hpmcounter18
	csrr s5, hpmcounter19
	csrr a7, hpmcounter20
	csrr s5, hpmcounter21
	csrr a5, hpmcounter22
	csrr a3, hpmcounter23
	csrr s7, hpmcounter24
	csrr a5, hpmcounter25
	csrr t6, hpmcounter26
	csrr a2, hpmcounter27
	csrr s11, hpmcounter28
	csrr t3, hpmcounter29
	csrr t3, hpmcounter31
	# Set only this field in mcounteren, clear all others
	li a0, 0x80000000
	csrrw a1, mcounteren, a0
	# Test the enabled CSR in M mode - should succeed
	csrr s6, hpmcounter31
	# Test other CSRs in M mode - should also succeed
	csrr s0, cycle
	csrr s2, time
	csrr a4, instret
	csrr s0, hpmcounter3
	csrr a6, hpmcounter4
	csrr a7, hpmcounter5
	csrr s0, hpmcounter6
	csrr t4, hpmcounter7
	csrr s4, hpmcounter8
	csrr s4, hpmcounter9
	csrr t6, hpmcounter10
	csrr t6, hpmcounter11
	csrr s1, hpmcounter12
	csrr s0, hpmcounter13
	csrr s7, hpmcounter14
	csrr s10, hpmcounter15
	csrr a1, hpmcounter16
	csrr a3, hpmcounter17
	csrr a7, hpmcounter18
	csrr s4, hpmcounter19
	csrr s5, hpmcounter20
	csrr a0, hpmcounter21
	csrr s6, hpmcounter22
	csrr s0, hpmcounter23
	csrr s0, hpmcounter24
	csrr a6, hpmcounter25
	csrr a3, hpmcounter26
	csrr s7, hpmcounter27
	csrr t2, hpmcounter28
	csrr t1, hpmcounter29
	csrr s0, hpmcounter30
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
SID_XCOUNTEREN_05_M_passed:
	;#test_passed()

;#discrete_test(test=SID_XCOUNTEREN_06_M)
SID_XCOUNTEREN_06_M:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(scounteren, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_XCOUNTEREN_06_M_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Set only this field in both registers, clear all others
	csrrwi s4, mcounteren, 0x1
	csrrwi s7, scounteren, 0x1
	# Test the enabled CSR in M mode - should succeed
	csrr s9, cycle
	# Test other CSRs in M mode - should also succeed
	csrr s4, time
	csrr s11, instret
	csrr s7, hpmcounter3
	csrr s8, hpmcounter4
	csrr t3, hpmcounter5
	csrr t1, hpmcounter6
	csrr a6, hpmcounter7
	csrr t3, hpmcounter8
	csrr a2, hpmcounter9
	csrr a4, hpmcounter10
	csrr s6, hpmcounter11
	csrr t4, hpmcounter12
	csrr s11, hpmcounter13
	csrr s5, hpmcounter14
	csrr a0, hpmcounter15
	csrr s4, hpmcounter16
	csrr t6, hpmcounter17
	csrr a3, hpmcounter18
	csrr s6, hpmcounter19
	csrr s1, hpmcounter20
	csrr s0, hpmcounter21
	csrr s7, hpmcounter22
	csrr s7, hpmcounter23
	csrr t6, hpmcounter24
	csrr s5, hpmcounter25
	csrr t1, hpmcounter26
	csrr a4, hpmcounter27
	csrr s8, hpmcounter28
	csrr t3, hpmcounter29
	csrr t4, hpmcounter30
	csrr s9, hpmcounter31
	# Set only this field in both registers, clear all others
	csrrwi s11, mcounteren, 0x2
	csrrwi t4, scounteren, 0x2
	# Test the enabled CSR in M mode - should succeed
	csrr s9, time
	# Test other CSRs in M mode - should also succeed
	csrr s7, cycle
	csrr t6, instret
	csrr t2, hpmcounter3
	csrr t1, hpmcounter4
	csrr s2, hpmcounter5
	csrr s10, hpmcounter6
	csrr s6, hpmcounter7
	csrr s2, hpmcounter8
	csrr s1, hpmcounter9
	csrr s1, hpmcounter10
	csrr s0, hpmcounter11
	csrr t6, hpmcounter12
	csrr a7, hpmcounter13
	csrr t4, hpmcounter14
	csrr a3, hpmcounter15
	csrr t2, hpmcounter16
	csrr s7, hpmcounter17
	csrr t3, hpmcounter18
	csrr t2, hpmcounter19
	csrr s9, hpmcounter20
	csrr s3, hpmcounter21
	csrr a7, hpmcounter22
	csrr a7, hpmcounter23
	csrr a5, hpmcounter24
	csrr a0, hpmcounter25
	csrr t5, hpmcounter26
	csrr a3, hpmcounter27
	csrr t4, hpmcounter28
	csrr s9, hpmcounter29
	csrr t1, hpmcounter30
	csrr t1, hpmcounter31
	# Set only this field in both registers, clear all others
	csrrwi s11, mcounteren, 0x4
	csrrwi t4, scounteren, 0x4
	# Test the enabled CSR in M mode - should succeed
	csrr a5, instret
	# Test other CSRs in M mode - should also succeed
	csrr s11, cycle
	csrr s1, time
	csrr t6, hpmcounter3
	csrr t6, hpmcounter4
	csrr t1, hpmcounter5
	csrr s7, hpmcounter6
	csrr t2, hpmcounter7
	csrr s2, hpmcounter8
	csrr t5, hpmcounter9
	csrr s1, hpmcounter10
	csrr t3, hpmcounter11
	csrr s11, hpmcounter12
	csrr a5, hpmcounter13
	csrr a4, hpmcounter14
	csrr a1, hpmcounter15
	csrr s8, hpmcounter16
	csrr a7, hpmcounter17
	csrr a5, hpmcounter18
	csrr s3, hpmcounter19
	csrr t3, hpmcounter20
	csrr s10, hpmcounter21
	csrr s5, hpmcounter22
	csrr a0, hpmcounter23
	csrr s5, hpmcounter24
	csrr t5, hpmcounter25
	csrr a0, hpmcounter26
	csrr a5, hpmcounter27
	csrr a2, hpmcounter28
	csrr a2, hpmcounter29
	csrr s0, hpmcounter30
	csrr s3, hpmcounter31
	# Set only this field in both registers, clear all others
	csrrwi a0, mcounteren, 0x8
	csrrwi s7, scounteren, 0x8
	# Test the enabled CSR in M mode - should succeed
	csrr s0, hpmcounter3
	# Test other CSRs in M mode - should also succeed
	csrr a3, cycle
	csrr t1, time
	csrr s1, instret
	csrr s6, hpmcounter4
	csrr s7, hpmcounter5
	csrr s3, hpmcounter6
	csrr a5, hpmcounter7
	csrr t1, hpmcounter8
	csrr s9, hpmcounter9
	csrr t4, hpmcounter10
	csrr t4, hpmcounter11
	csrr a4, hpmcounter12
	csrr s3, hpmcounter13
	csrr s11, hpmcounter14
	csrr s1, hpmcounter15
	csrr a0, hpmcounter16
	csrr a6, hpmcounter17
	csrr s9, hpmcounter18
	csrr a2, hpmcounter19
	csrr a5, hpmcounter20
	csrr a6, hpmcounter21
	csrr a6, hpmcounter22
	csrr s5, hpmcounter23
	csrr t3, hpmcounter24
	csrr a7, hpmcounter25
	csrr s9, hpmcounter26
	csrr s3, hpmcounter27
	csrr t5, hpmcounter28
	csrr a4, hpmcounter29
	csrr s1, hpmcounter30
	csrr s9, hpmcounter31
	# Set only this field in both registers, clear all others
	csrrwi t1, mcounteren, 0x10
	csrrwi s5, scounteren, 0x10
	# Test the enabled CSR in M mode - should succeed
	csrr s10, hpmcounter4
	# Test other CSRs in M mode - should also succeed
	csrr s10, cycle
	csrr a6, time
	csrr s5, instret
	csrr t2, hpmcounter3
	csrr s7, hpmcounter5
	csrr t3, hpmcounter6
	csrr a3, hpmcounter7
	csrr s4, hpmcounter8
	csrr t3, hpmcounter9
	csrr t1, hpmcounter10
	csrr t3, hpmcounter11
	csrr s3, hpmcounter12
	csrr s10, hpmcounter13
	csrr s9, hpmcounter14
	csrr a1, hpmcounter15
	csrr a4, hpmcounter16
	csrr t1, hpmcounter17
	csrr s7, hpmcounter18
	csrr s7, hpmcounter19
	csrr t3, hpmcounter20
	csrr s3, hpmcounter21
	csrr a6, hpmcounter22
	csrr s2, hpmcounter23
	csrr s1, hpmcounter24
	csrr s4, hpmcounter25
	csrr t6, hpmcounter26
	csrr a2, hpmcounter27
	csrr s5, hpmcounter28
	csrr s4, hpmcounter29
	csrr t6, hpmcounter30
	csrr s2, hpmcounter31
	# Set only this field in both registers, clear all others
	li s8, 0x20
	csrrw s3, mcounteren, s8
	li s11, 0x20
	csrrw s10, scounteren, s11
	# Test the enabled CSR in M mode - should succeed
	csrr s1, hpmcounter5
	# Test other CSRs in M mode - should also succeed
	csrr s11, cycle
	csrr a1, time
	csrr s11, instret
	csrr s4, hpmcounter3
	csrr s3, hpmcounter4
	csrr s2, hpmcounter6
	csrr t6, hpmcounter7
	csrr s9, hpmcounter8
	csrr s8, hpmcounter9
	csrr a6, hpmcounter10
	csrr a1, hpmcounter11
	csrr s1, hpmcounter12
	csrr a2, hpmcounter13
	csrr t6, hpmcounter14
	csrr s8, hpmcounter15
	csrr s2, hpmcounter16
	csrr a4, hpmcounter17
	csrr s11, hpmcounter18
	csrr t1, hpmcounter19
	csrr a5, hpmcounter20
	csrr a1, hpmcounter21
	csrr s9, hpmcounter22
	csrr s8, hpmcounter23
	csrr a7, hpmcounter24
	csrr s2, hpmcounter25
	csrr a7, hpmcounter26
	csrr t2, hpmcounter27
	csrr s5, hpmcounter28
	csrr s9, hpmcounter29
	csrr s0, hpmcounter30
	csrr t6, hpmcounter31
	# Set only this field in both registers, clear all others
	li s9, 0x40
	csrrw t2, mcounteren, s9
	li s8, 0x40
	csrrw t4, scounteren, s8
	# Test the enabled CSR in M mode - should succeed
	csrr a2, hpmcounter6
	# Test other CSRs in M mode - should also succeed
	csrr t1, cycle
	csrr s11, time
	csrr a6, instret
	csrr t4, hpmcounter3
	csrr a6, hpmcounter4
	csrr a2, hpmcounter5
	csrr s6, hpmcounter7
	csrr a3, hpmcounter8
	csrr s7, hpmcounter9
	csrr a0, hpmcounter10
	csrr s0, hpmcounter11
	csrr a1, hpmcounter12
	csrr s8, hpmcounter13
	csrr s2, hpmcounter14
	csrr s2, hpmcounter15
	csrr s2, hpmcounter16
	csrr s9, hpmcounter17
	csrr a0, hpmcounter18
	csrr s2, hpmcounter19
	csrr a6, hpmcounter20
	csrr s2, hpmcounter21
	csrr t6, hpmcounter22
	csrr s11, hpmcounter23
	csrr s6, hpmcounter24
	csrr s6, hpmcounter25
	csrr s4, hpmcounter26
	csrr s0, hpmcounter27
	csrr t4, hpmcounter28
	csrr s1, hpmcounter29
	csrr a1, hpmcounter30
	csrr a4, hpmcounter31
	# Set only this field in both registers, clear all others
	li t5, 0x80
	csrrw s5, mcounteren, t5
	li a3, 0x80
	csrrw a0, scounteren, a3
	# Test the enabled CSR in M mode - should succeed
	csrr a7, hpmcounter7
	# Test other CSRs in M mode - should also succeed
	csrr s1, cycle
	csrr s1, time
	csrr s9, instret
	csrr s6, hpmcounter3
	csrr s8, hpmcounter4
	csrr a4, hpmcounter5
	csrr s2, hpmcounter6
	csrr s8, hpmcounter8
	csrr t4, hpmcounter9
	csrr a4, hpmcounter10
	csrr a6, hpmcounter11
	csrr t5, hpmcounter12
	csrr s4, hpmcounter13
	csrr t5, hpmcounter14
	csrr a7, hpmcounter15
	csrr a2, hpmcounter16
	csrr s4, hpmcounter17
	csrr s9, hpmcounter18
	csrr a3, hpmcounter19
	csrr a2, hpmcounter20
	csrr s1, hpmcounter21
	csrr s3, hpmcounter22
	csrr a5, hpmcounter23
	csrr s7, hpmcounter24
	csrr s0, hpmcounter25
	csrr t6, hpmcounter26
	csrr a0, hpmcounter27
	csrr s0, hpmcounter28
	csrr t3, hpmcounter29
	csrr s11, hpmcounter30
	csrr t4, hpmcounter31
	# Set only this field in both registers, clear all others
	li s5, 0x100
	csrrw s1, mcounteren, s5
	li s5, 0x100
	csrrw a1, scounteren, s5
	# Test the enabled CSR in M mode - should succeed
	csrr a3, hpmcounter8
	# Test other CSRs in M mode - should also succeed
	csrr s11, cycle
	csrr a1, time
	csrr s8, instret
	csrr s10, hpmcounter3
	csrr s6, hpmcounter4
	csrr t6, hpmcounter5
	csrr a3, hpmcounter6
	csrr t1, hpmcounter7
	csrr s5, hpmcounter9
	csrr s4, hpmcounter10
	csrr a1, hpmcounter11
	csrr t3, hpmcounter12
	csrr a0, hpmcounter13
	csrr s2, hpmcounter14
	csrr s5, hpmcounter15
	csrr t5, hpmcounter16
	csrr s2, hpmcounter17
	csrr a3, hpmcounter18
	csrr a0, hpmcounter19
	csrr s8, hpmcounter20
	csrr t5, hpmcounter21
	csrr a0, hpmcounter22
	csrr a7, hpmcounter23
	csrr s0, hpmcounter24
	csrr s8, hpmcounter25
	csrr t4, hpmcounter26
	csrr s3, hpmcounter27
	csrr t3, hpmcounter28
	csrr t3, hpmcounter29
	csrr t3, hpmcounter30
	csrr s8, hpmcounter31
	# Set only this field in both registers, clear all others
	li a4, 0x200
	csrrw a4, mcounteren, a4
	li s1, 0x200
	csrrw s3, scounteren, s1
	# Test the enabled CSR in M mode - should succeed
	csrr t4, hpmcounter9
	# Test other CSRs in M mode - should also succeed
	csrr s9, cycle
	csrr s5, time
	csrr a5, instret
	csrr s3, hpmcounter3
	csrr a0, hpmcounter4
	csrr s4, hpmcounter5
	csrr s5, hpmcounter6
	csrr s8, hpmcounter7
	csrr t3, hpmcounter8
	csrr t5, hpmcounter10
	csrr s7, hpmcounter11
	csrr a0, hpmcounter12
	csrr t4, hpmcounter13
	csrr s11, hpmcounter14
	csrr s6, hpmcounter15
	csrr s1, hpmcounter16
	csrr t5, hpmcounter17
	csrr s11, hpmcounter18
	csrr a1, hpmcounter19
	csrr t1, hpmcounter20
	csrr t3, hpmcounter21
	csrr s0, hpmcounter22
	csrr s5, hpmcounter23
	csrr t3, hpmcounter24
	csrr s6, hpmcounter25
	csrr s9, hpmcounter26
	csrr t4, hpmcounter27
	csrr s0, hpmcounter28
	csrr s0, hpmcounter29
	csrr s11, hpmcounter30
	csrr a3, hpmcounter31
	# Set only this field in both registers, clear all others
	li a3, 0x400
	csrrw s11, mcounteren, a3
	li t3, 0x400
	csrrw s4, scounteren, t3
	# Test the enabled CSR in M mode - should succeed
	csrr a1, hpmcounter10
	# Test other CSRs in M mode - should also succeed
	csrr s10, cycle
	csrr t2, time
	csrr s10, instret
	csrr a1, hpmcounter3
	csrr t3, hpmcounter4
	csrr s1, hpmcounter5
	csrr s10, hpmcounter6
	csrr s8, hpmcounter7
	csrr a2, hpmcounter8
	csrr s11, hpmcounter9
	csrr t3, hpmcounter11
	csrr t4, hpmcounter12
	csrr t5, hpmcounter13
	csrr t4, hpmcounter14
	csrr a7, hpmcounter15
	csrr a0, hpmcounter16
	csrr s1, hpmcounter17
	csrr s5, hpmcounter18
	csrr s6, hpmcounter19
	csrr a0, hpmcounter20
	csrr t1, hpmcounter21
	csrr s10, hpmcounter22
	csrr a5, hpmcounter23
	csrr s3, hpmcounter24
	csrr s4, hpmcounter25
	csrr s0, hpmcounter26
	csrr t5, hpmcounter27
	csrr s6, hpmcounter28
	csrr a5, hpmcounter29
	csrr s10, hpmcounter30
	csrr t6, hpmcounter31
	# Set only this field in both registers, clear all others
	li t1, 0x800
	csrrw s0, mcounteren, t1
	li a0, 0x800
	csrrw s9, scounteren, a0
	# Test the enabled CSR in M mode - should succeed
	csrr s1, hpmcounter11
	# Test other CSRs in M mode - should also succeed
	csrr a2, cycle
	csrr s11, time
	csrr s6, instret
	csrr s1, hpmcounter3
	csrr t4, hpmcounter4
	csrr t3, hpmcounter5
	csrr t6, hpmcounter6
	csrr a1, hpmcounter7
	csrr s0, hpmcounter8
	csrr t5, hpmcounter9
	csrr s1, hpmcounter10
	csrr s9, hpmcounter12
	csrr a7, hpmcounter13
	csrr a5, hpmcounter14
	csrr t2, hpmcounter15
	csrr s0, hpmcounter16
	csrr t2, hpmcounter17
	csrr s8, hpmcounter18
	csrr s0, hpmcounter19
	csrr t5, hpmcounter20
	csrr t2, hpmcounter21
	csrr t4, hpmcounter22
	csrr s1, hpmcounter23
	csrr a3, hpmcounter24
	csrr s2, hpmcounter25
	csrr a7, hpmcounter26
	csrr s11, hpmcounter27
	csrr s8, hpmcounter28
	csrr s2, hpmcounter29
	csrr s3, hpmcounter30
	csrr a3, hpmcounter31
	# Set only this field in both registers, clear all others
	li s3, 0x1000
	csrrw s3, mcounteren, s3
	li t1, 0x1000
	csrrw t6, scounteren, t1
	# Test the enabled CSR in M mode - should succeed
	csrr s11, hpmcounter12
	# Test other CSRs in M mode - should also succeed
	csrr t2, cycle
	csrr t4, time
	csrr a1, instret
	csrr s5, hpmcounter3
	csrr s10, hpmcounter4
	csrr a0, hpmcounter5
	csrr a1, hpmcounter6
	csrr a5, hpmcounter7
	csrr s9, hpmcounter8
	csrr s7, hpmcounter9
	csrr s10, hpmcounter10
	csrr t2, hpmcounter11
	csrr s9, hpmcounter13
	csrr a4, hpmcounter14
	csrr a0, hpmcounter15
	csrr s0, hpmcounter16
	csrr t2, hpmcounter17
	csrr s6, hpmcounter18
	csrr s8, hpmcounter19
	csrr s10, hpmcounter20
	csrr a7, hpmcounter21
	csrr s7, hpmcounter22
	csrr a0, hpmcounter23
	csrr s8, hpmcounter24
	csrr t1, hpmcounter25
	csrr a1, hpmcounter26
	csrr s11, hpmcounter27
	csrr a6, hpmcounter28
	csrr s11, hpmcounter29
	csrr s4, hpmcounter30
	csrr s5, hpmcounter31
	# Set only this field in both registers, clear all others
	li s8, 0x2000
	csrrw t6, mcounteren, s8
	li t5, 0x2000
	csrrw s8, scounteren, t5
	# Test the enabled CSR in M mode - should succeed
	csrr a5, hpmcounter13
	# Test other CSRs in M mode - should also succeed
	csrr a4, cycle
	csrr t6, time
	csrr s5, instret
	csrr s6, hpmcounter3
	csrr s0, hpmcounter4
	csrr s8, hpmcounter5
	csrr s6, hpmcounter6
	csrr s11, hpmcounter7
	csrr a0, hpmcounter8
	csrr a2, hpmcounter9
	csrr a3, hpmcounter10
	csrr t1, hpmcounter11
	csrr a6, hpmcounter12
	csrr t4, hpmcounter14
	csrr s3, hpmcounter15
	csrr a1, hpmcounter16
	csrr s3, hpmcounter17
	csrr t2, hpmcounter18
	csrr a6, hpmcounter19
	csrr a2, hpmcounter20
	csrr s1, hpmcounter21
	csrr s5, hpmcounter22
	csrr s9, hpmcounter23
	csrr s10, hpmcounter24
	csrr s5, hpmcounter25
	csrr s7, hpmcounter26
	csrr s8, hpmcounter27
	csrr s11, hpmcounter28
	csrr t6, hpmcounter29
	csrr s6, hpmcounter30
	csrr a2, hpmcounter31
	# Set only this field in both registers, clear all others
	li s2, 0x4000
	csrrw a1, mcounteren, s2
	li t3, 0x4000
	csrrw t5, scounteren, t3
	# Test the enabled CSR in M mode - should succeed
	csrr s0, hpmcounter14
	# Test other CSRs in M mode - should also succeed
	csrr s9, cycle
	csrr s1, time
	csrr s0, instret
	csrr a1, hpmcounter3
	csrr s9, hpmcounter4
	csrr t4, hpmcounter5
	csrr a4, hpmcounter6
	csrr s0, hpmcounter7
	csrr s5, hpmcounter8
	csrr a6, hpmcounter9
	csrr a7, hpmcounter10
	csrr t5, hpmcounter11
	csrr s11, hpmcounter12
	csrr a3, hpmcounter13
	csrr a2, hpmcounter15
	csrr a2, hpmcounter16
	csrr a2, hpmcounter17
	csrr a6, hpmcounter18
	csrr a3, hpmcounter19
	csrr s3, hpmcounter20
	csrr a7, hpmcounter21
	csrr t6, hpmcounter22
	csrr a1, hpmcounter23
	csrr a0, hpmcounter24
	csrr s3, hpmcounter25
	csrr a2, hpmcounter26
	csrr a3, hpmcounter27
	csrr s3, hpmcounter28
	csrr t5, hpmcounter29
	csrr s5, hpmcounter30
	csrr t6, hpmcounter31
	# Set only this field in both registers, clear all others
	li a4, 0x8000
	csrrw a1, mcounteren, a4
	li t4, 0x8000
	csrrw t3, scounteren, t4
	# Test the enabled CSR in M mode - should succeed
	csrr s6, hpmcounter15
	# Test other CSRs in M mode - should also succeed
	csrr t6, cycle
	csrr s9, time
	csrr t5, instret
	csrr s10, hpmcounter3
	csrr a5, hpmcounter4
	csrr t3, hpmcounter5
	csrr a4, hpmcounter6
	csrr s7, hpmcounter7
	csrr s1, hpmcounter8
	csrr a6, hpmcounter9
	csrr s11, hpmcounter10
	csrr t4, hpmcounter11
	csrr a2, hpmcounter12
	csrr a5, hpmcounter13
	csrr s4, hpmcounter14
	csrr s3, hpmcounter16
	csrr s7, hpmcounter17
	csrr s5, hpmcounter18
	csrr s1, hpmcounter19
	csrr a1, hpmcounter20
	csrr a6, hpmcounter21
	csrr s0, hpmcounter22
	csrr t3, hpmcounter23
	csrr a1, hpmcounter24
	csrr s2, hpmcounter25
	csrr t3, hpmcounter26
	csrr a4, hpmcounter27
	csrr s8, hpmcounter28
	csrr s0, hpmcounter29
	csrr s5, hpmcounter30
	csrr t4, hpmcounter31
	# Set only this field in both registers, clear all others
	li a6, 0x10000
	csrrw a1, mcounteren, a6
	li a1, 0x10000
	csrrw t4, scounteren, a1
	# Test the enabled CSR in M mode - should succeed
	csrr s1, hpmcounter16
	# Test other CSRs in M mode - should also succeed
	csrr s5, cycle
	csrr a4, time
	csrr t1, instret
	csrr a6, hpmcounter3
	csrr s11, hpmcounter4
	csrr s2, hpmcounter5
	csrr a4, hpmcounter6
	csrr s6, hpmcounter7
	csrr t6, hpmcounter8
	csrr a0, hpmcounter9
	csrr t1, hpmcounter10
	csrr t5, hpmcounter11
	csrr s6, hpmcounter12
	csrr a5, hpmcounter13
	csrr s5, hpmcounter14
	csrr s5, hpmcounter15
	csrr a5, hpmcounter17
	csrr s8, hpmcounter18
	csrr a1, hpmcounter19
	csrr t3, hpmcounter20
	csrr a2, hpmcounter21
	csrr s10, hpmcounter22
	csrr s10, hpmcounter23
	csrr s2, hpmcounter24
	csrr a0, hpmcounter25
	csrr a4, hpmcounter26
	csrr s9, hpmcounter27
	csrr t3, hpmcounter28
	csrr s3, hpmcounter29
	csrr a6, hpmcounter30
	csrr t6, hpmcounter31
	# Set only this field in both registers, clear all others
	li s9, 0x20000
	csrrw t3, mcounteren, s9
	li t3, 0x20000
	csrrw a4, scounteren, t3
	# Test the enabled CSR in M mode - should succeed
	csrr a0, hpmcounter17
	# Test other CSRs in M mode - should also succeed
	csrr t2, cycle
	csrr s2, time
	csrr a7, instret
	csrr t3, hpmcounter3
	csrr t4, hpmcounter4
	csrr a1, hpmcounter5
	csrr t3, hpmcounter6
	csrr s9, hpmcounter7
	csrr s0, hpmcounter8
	csrr a6, hpmcounter9
	csrr a3, hpmcounter10
	csrr a6, hpmcounter11
	csrr t6, hpmcounter12
	csrr a1, hpmcounter13
	csrr s0, hpmcounter14
	csrr a4, hpmcounter15
	csrr a5, hpmcounter16
	csrr s3, hpmcounter18
	csrr s2, hpmcounter19
	csrr t2, hpmcounter20
	csrr a1, hpmcounter21
	csrr t3, hpmcounter22
	csrr s7, hpmcounter23
	csrr t1, hpmcounter24
	csrr t6, hpmcounter25
	csrr t1, hpmcounter26
	csrr s1, hpmcounter27
	csrr a1, hpmcounter28
	csrr t6, hpmcounter29
	csrr t1, hpmcounter30
	csrr s4, hpmcounter31
	# Set only this field in both registers, clear all others
	li s4, 0x40000
	csrrw t5, mcounteren, s4
	li s8, 0x40000
	csrrw s7, scounteren, s8
	# Test the enabled CSR in M mode - should succeed
	csrr s10, hpmcounter18
	# Test other CSRs in M mode - should also succeed
	csrr t3, cycle
	csrr s1, time
	csrr t3, instret
	csrr a4, hpmcounter3
	csrr t1, hpmcounter4
	csrr a3, hpmcounter5
	csrr a3, hpmcounter6
	csrr s8, hpmcounter7
	csrr s1, hpmcounter8
	csrr s3, hpmcounter9
	csrr s3, hpmcounter10
	csrr s4, hpmcounter11
	csrr s8, hpmcounter12
	csrr s9, hpmcounter13
	csrr s9, hpmcounter14
	csrr t1, hpmcounter15
	csrr a6, hpmcounter16
	csrr a2, hpmcounter17
	csrr a3, hpmcounter19
	csrr t6, hpmcounter20
	csrr t4, hpmcounter21
	csrr a0, hpmcounter22
	csrr t4, hpmcounter23
	csrr s6, hpmcounter24
	csrr t6, hpmcounter25
	csrr s10, hpmcounter26
	csrr s3, hpmcounter27
	csrr t6, hpmcounter28
	csrr a4, hpmcounter29
	csrr t5, hpmcounter30
	csrr s10, hpmcounter31
	# Set only this field in both registers, clear all others
	li s6, 0x80000
	csrrw s10, mcounteren, s6
	li s5, 0x80000
	csrrw s3, scounteren, s5
	# Test the enabled CSR in M mode - should succeed
	csrr t1, hpmcounter19
	# Test other CSRs in M mode - should also succeed
	csrr a6, cycle
	csrr s9, time
	csrr s8, instret
	csrr s1, hpmcounter3
	csrr s8, hpmcounter4
	csrr a2, hpmcounter5
	csrr a4, hpmcounter6
	csrr a4, hpmcounter7
	csrr s1, hpmcounter8
	csrr s7, hpmcounter9
	csrr s9, hpmcounter10
	csrr a6, hpmcounter11
	csrr s5, hpmcounter12
	csrr s2, hpmcounter13
	csrr a7, hpmcounter14
	csrr t6, hpmcounter15
	csrr a6, hpmcounter16
	csrr t2, hpmcounter17
	csrr a4, hpmcounter18
	csrr s4, hpmcounter20
	csrr s9, hpmcounter21
	csrr t6, hpmcounter22
	csrr a6, hpmcounter23
	csrr s1, hpmcounter24
	csrr s10, hpmcounter25
	csrr s1, hpmcounter26
	csrr t6, hpmcounter27
	csrr a1, hpmcounter28
	csrr a4, hpmcounter29
	csrr s11, hpmcounter30
	csrr a7, hpmcounter31
	# Set only this field in both registers, clear all others
	li t5, 0x100000
	csrrw s5, mcounteren, t5
	li a1, 0x100000
	csrrw t4, scounteren, a1
	# Test the enabled CSR in M mode - should succeed
	csrr t2, hpmcounter20
	# Test other CSRs in M mode - should also succeed
	csrr s5, cycle
	csrr t1, time
	csrr a3, instret
	csrr a2, hpmcounter3
	csrr s9, hpmcounter4
	csrr a6, hpmcounter5
	csrr t1, hpmcounter6
	csrr s7, hpmcounter7
	csrr s7, hpmcounter8
	csrr a2, hpmcounter9
	csrr a7, hpmcounter10
	csrr s7, hpmcounter11
	csrr a1, hpmcounter12
	csrr t6, hpmcounter13
	csrr t2, hpmcounter14
	csrr a2, hpmcounter15
	csrr t2, hpmcounter16
	csrr s7, hpmcounter17
	csrr a2, hpmcounter18
	csrr s8, hpmcounter19
	csrr t4, hpmcounter21
	csrr a3, hpmcounter22
	csrr t5, hpmcounter23
	csrr a1, hpmcounter24
	csrr a0, hpmcounter25
	csrr s7, hpmcounter26
	csrr a7, hpmcounter27
	csrr s1, hpmcounter28
	csrr s3, hpmcounter29
	csrr s2, hpmcounter30
	csrr s0, hpmcounter31
	# Set only this field in both registers, clear all others
	li t2, 0x200000
	csrrw s8, mcounteren, t2
	li s4, 0x200000
	csrrw s4, scounteren, s4
	# Test the enabled CSR in M mode - should succeed
	csrr a5, hpmcounter21
	# Test other CSRs in M mode - should also succeed
	csrr s2, cycle
	csrr s10, time
	csrr s9, instret
	csrr s7, hpmcounter3
	csrr s9, hpmcounter4
	csrr a1, hpmcounter5
	csrr s2, hpmcounter6
	csrr s0, hpmcounter7
	csrr s0, hpmcounter8
	csrr t4, hpmcounter9
	csrr s5, hpmcounter10
	csrr a6, hpmcounter11
	csrr a5, hpmcounter12
	csrr s11, hpmcounter13
	csrr a0, hpmcounter14
	csrr t3, hpmcounter15
	csrr s7, hpmcounter16
	csrr s4, hpmcounter17
	csrr s4, hpmcounter18
	csrr a5, hpmcounter19
	csrr t3, hpmcounter20
	csrr s4, hpmcounter22
	csrr s4, hpmcounter23
	csrr a7, hpmcounter24
	csrr s5, hpmcounter25
	csrr t3, hpmcounter26
	csrr s9, hpmcounter27
	csrr s6, hpmcounter28
	csrr a0, hpmcounter29
	csrr a0, hpmcounter30
	csrr s3, hpmcounter31
	# Set only this field in both registers, clear all others
	li t4, 0x400000
	csrrw t5, mcounteren, t4
	li s6, 0x400000
	csrrw s1, scounteren, s6
	# Test the enabled CSR in M mode - should succeed
	csrr s0, hpmcounter22
	# Test other CSRs in M mode - should also succeed
	csrr t4, cycle
	csrr s10, time
	csrr t6, instret
	csrr s10, hpmcounter3
	csrr a0, hpmcounter4
	csrr s3, hpmcounter5
	csrr s8, hpmcounter6
	csrr a1, hpmcounter7
	csrr s5, hpmcounter8
	csrr t4, hpmcounter9
	csrr a4, hpmcounter10
	csrr s0, hpmcounter11
	csrr s11, hpmcounter12
	csrr s6, hpmcounter13
	csrr a5, hpmcounter14
	csrr a5, hpmcounter15
	csrr a2, hpmcounter16
	csrr s8, hpmcounter17
	csrr a5, hpmcounter18
	csrr s4, hpmcounter19
	csrr a2, hpmcounter20
	csrr s5, hpmcounter21
	csrr a5, hpmcounter23
	csrr s11, hpmcounter24
	csrr s8, hpmcounter25
	csrr a4, hpmcounter26
	csrr t2, hpmcounter27
	csrr s9, hpmcounter28
	csrr s3, hpmcounter29
	csrr s9, hpmcounter30
	csrr s0, hpmcounter31
	# Set only this field in both registers, clear all others
	li a6, 0x800000
	csrrw s11, mcounteren, a6
	li t2, 0x800000
	csrrw a3, scounteren, t2
	# Test the enabled CSR in M mode - should succeed
	csrr s6, hpmcounter23
	# Test other CSRs in M mode - should also succeed
	csrr s7, cycle
	csrr s3, time
	csrr t3, instret
	csrr t2, hpmcounter3
	csrr a4, hpmcounter4
	csrr s2, hpmcounter5
	csrr a6, hpmcounter6
	csrr a1, hpmcounter7
	csrr a6, hpmcounter8
	csrr t1, hpmcounter9
	csrr a7, hpmcounter10
	csrr a5, hpmcounter11
	csrr s6, hpmcounter12
	csrr s5, hpmcounter13
	csrr a5, hpmcounter14
	csrr s7, hpmcounter15
	csrr t4, hpmcounter16
	csrr t1, hpmcounter17
	csrr a0, hpmcounter18
	csrr a6, hpmcounter19
	csrr t4, hpmcounter20
	csrr a3, hpmcounter21
	csrr t4, hpmcounter22
	csrr s6, hpmcounter24
	csrr t1, hpmcounter25
	csrr s2, hpmcounter26
	csrr s5, hpmcounter27
	csrr s5, hpmcounter28
	csrr a4, hpmcounter29
	csrr a0, hpmcounter30
	csrr a2, hpmcounter31
	# Set only this field in both registers, clear all others
	li s5, 0x1000000
	csrrw a1, mcounteren, s5
	li a0, 0x1000000
	csrrw a7, scounteren, a0
	# Test the enabled CSR in M mode - should succeed
	csrr a7, hpmcounter24
	# Test other CSRs in M mode - should also succeed
	csrr s9, cycle
	csrr t4, time
	csrr s3, instret
	csrr s7, hpmcounter3
	csrr s4, hpmcounter4
	csrr t2, hpmcounter5
	csrr a0, hpmcounter6
	csrr a5, hpmcounter7
	csrr s0, hpmcounter8
	csrr a5, hpmcounter9
	csrr a0, hpmcounter10
	csrr s3, hpmcounter11
	csrr t6, hpmcounter12
	csrr a0, hpmcounter13
	csrr a4, hpmcounter14
	csrr s2, hpmcounter15
	csrr s11, hpmcounter16
	csrr t1, hpmcounter17
	csrr a2, hpmcounter18
	csrr s5, hpmcounter19
	csrr t4, hpmcounter20
	csrr s4, hpmcounter21
	csrr a1, hpmcounter22
	csrr s2, hpmcounter23
	csrr s3, hpmcounter25
	csrr t5, hpmcounter26
	csrr a6, hpmcounter27
	csrr a3, hpmcounter28
	csrr t2, hpmcounter29
	csrr s7, hpmcounter30
	csrr s9, hpmcounter31
	# Set only this field in both registers, clear all others
	li s8, 0x2000000
	csrrw s8, mcounteren, s8
	li s3, 0x2000000
	csrrw s2, scounteren, s3
	# Test the enabled CSR in M mode - should succeed
	csrr a3, hpmcounter25
	# Test other CSRs in M mode - should also succeed
	csrr a5, cycle
	csrr a6, time
	csrr t4, instret
	csrr a3, hpmcounter3
	csrr a0, hpmcounter4
	csrr s8, hpmcounter5
	csrr a7, hpmcounter6
	csrr s3, hpmcounter7
	csrr t2, hpmcounter8
	csrr a1, hpmcounter9
	csrr a7, hpmcounter10
	csrr a4, hpmcounter11
	csrr t3, hpmcounter12
	csrr s3, hpmcounter13
	csrr s6, hpmcounter14
	csrr s11, hpmcounter15
	csrr s11, hpmcounter16
	csrr a4, hpmcounter17
	csrr s10, hpmcounter18
	csrr s1, hpmcounter19
	csrr a4, hpmcounter20
	csrr t4, hpmcounter21
	csrr a3, hpmcounter22
	csrr s8, hpmcounter23
	csrr s1, hpmcounter24
	csrr s5, hpmcounter26
	csrr s11, hpmcounter27
	csrr a4, hpmcounter28
	csrr s4, hpmcounter29
	csrr s1, hpmcounter30
	csrr s10, hpmcounter31
	# Set only this field in both registers, clear all others
	li t4, 0x4000000
	csrrw t1, mcounteren, t4
	li a5, 0x4000000
	csrrw t3, scounteren, a5
	# Test the enabled CSR in M mode - should succeed
	csrr s7, hpmcounter26
	# Test other CSRs in M mode - should also succeed
	csrr a1, cycle
	csrr a6, time
	csrr a5, instret
	csrr a1, hpmcounter3
	csrr s8, hpmcounter4
	csrr a3, hpmcounter5
	csrr a1, hpmcounter6
	csrr s2, hpmcounter7
	csrr a7, hpmcounter8
	csrr s5, hpmcounter9
	csrr a1, hpmcounter10
	csrr s9, hpmcounter11
	csrr s1, hpmcounter12
	csrr s7, hpmcounter13
	csrr s8, hpmcounter14
	csrr a4, hpmcounter15
	csrr a2, hpmcounter16
	csrr s2, hpmcounter17
	csrr s10, hpmcounter18
	csrr s6, hpmcounter19
	csrr a2, hpmcounter20
	csrr a7, hpmcounter21
	csrr s0, hpmcounter22
	csrr t3, hpmcounter23
	csrr t3, hpmcounter24
	csrr t3, hpmcounter25
	csrr s2, hpmcounter27
	csrr a4, hpmcounter28
	csrr t2, hpmcounter29
	csrr a2, hpmcounter30
	csrr s5, hpmcounter31
	# Set only this field in both registers, clear all others
	li a2, 0x8000000
	csrrw s7, mcounteren, a2
	li a6, 0x8000000
	csrrw s2, scounteren, a6
	# Test the enabled CSR in M mode - should succeed
	csrr t5, hpmcounter27
	# Test other CSRs in M mode - should also succeed
	csrr a0, cycle
	csrr a0, time
	csrr s1, instret
	csrr t1, hpmcounter3
	csrr t1, hpmcounter4
	csrr t4, hpmcounter5
	csrr s2, hpmcounter6
	csrr s4, hpmcounter7
	csrr a5, hpmcounter8
	csrr t2, hpmcounter9
	csrr t1, hpmcounter10
	csrr a0, hpmcounter11
	csrr s10, hpmcounter12
	csrr t1, hpmcounter13
	csrr s8, hpmcounter14
	csrr s1, hpmcounter15
	csrr t4, hpmcounter16
	csrr a2, hpmcounter17
	csrr a3, hpmcounter18
	csrr s1, hpmcounter19
	csrr a7, hpmcounter20
	csrr t5, hpmcounter21
	csrr a2, hpmcounter22
	csrr a0, hpmcounter23
	csrr s9, hpmcounter24
	csrr t5, hpmcounter25
	csrr t4, hpmcounter26
	csrr s5, hpmcounter28
	csrr t5, hpmcounter29
	csrr t6, hpmcounter30
	csrr t4, hpmcounter31
	# Set only this field in both registers, clear all others
	li s6, 0x10000000
	csrrw s6, mcounteren, s6
	li s7, 0x10000000
	csrrw s6, scounteren, s7
	# Test the enabled CSR in M mode - should succeed
	csrr a0, hpmcounter28
	# Test other CSRs in M mode - should also succeed
	csrr t1, cycle
	csrr t4, time
	csrr a7, instret
	csrr s5, hpmcounter3
	csrr s7, hpmcounter4
	csrr s2, hpmcounter5
	csrr a5, hpmcounter6
	csrr s11, hpmcounter7
	csrr a7, hpmcounter8
	csrr a6, hpmcounter9
	csrr s2, hpmcounter10
	csrr a5, hpmcounter11
	csrr t1, hpmcounter12
	csrr a0, hpmcounter13
	csrr s10, hpmcounter14
	csrr t6, hpmcounter15
	csrr a3, hpmcounter16
	csrr t6, hpmcounter17
	csrr t1, hpmcounter18
	csrr t4, hpmcounter19
	csrr s6, hpmcounter20
	csrr s1, hpmcounter21
	csrr a6, hpmcounter22
	csrr t3, hpmcounter23
	csrr t4, hpmcounter24
	csrr s4, hpmcounter25
	csrr s8, hpmcounter26
	csrr t6, hpmcounter27
	csrr s3, hpmcounter29
	csrr s10, hpmcounter30
	csrr s3, hpmcounter31
	# Set only this field in both registers, clear all others
	li s0, 0x20000000
	csrrw s6, mcounteren, s0
	li s5, 0x20000000
	csrrw a3, scounteren, s5
	# Test the enabled CSR in M mode - should succeed
	csrr s6, hpmcounter29
	# Test other CSRs in M mode - should also succeed
	csrr s4, cycle
	csrr a5, time
	csrr s11, instret
	csrr a2, hpmcounter3
	csrr t2, hpmcounter4
	csrr s4, hpmcounter5
	csrr a2, hpmcounter6
	csrr a4, hpmcounter7
	csrr t6, hpmcounter8
	csrr s3, hpmcounter9
	csrr a0, hpmcounter10
	csrr s2, hpmcounter11
	csrr s4, hpmcounter12
	csrr a5, hpmcounter13
	csrr s1, hpmcounter14
	csrr t2, hpmcounter15
	csrr s5, hpmcounter16
	csrr a4, hpmcounter17
	csrr s0, hpmcounter18
	csrr a6, hpmcounter19
	csrr t4, hpmcounter20
	csrr s11, hpmcounter21
	csrr a4, hpmcounter22
	csrr s1, hpmcounter23
	csrr a4, hpmcounter24
	csrr s1, hpmcounter25
	csrr t5, hpmcounter26
	csrr a2, hpmcounter27
	csrr s9, hpmcounter28
	csrr a5, hpmcounter30
	csrr s7, hpmcounter31
	# Set only this field in both registers, clear all others
	li a4, 0x40000000
	csrrw s10, mcounteren, a4
	li s8, 0x40000000
	csrrw s2, scounteren, s8
	# Test the enabled CSR in M mode - should succeed
	csrr s11, hpmcounter30
	# Test other CSRs in M mode - should also succeed
	csrr a7, cycle
	csrr a5, time
	csrr a2, instret
	csrr t3, hpmcounter3
	csrr s10, hpmcounter4
	csrr t4, hpmcounter5
	csrr a3, hpmcounter6
	csrr t5, hpmcounter7
	csrr t5, hpmcounter8
	csrr s2, hpmcounter9
	csrr a5, hpmcounter10
	csrr s10, hpmcounter11
	csrr s0, hpmcounter12
	csrr s7, hpmcounter13
	csrr s5, hpmcounter14
	csrr a4, hpmcounter15
	csrr t3, hpmcounter16
	csrr t1, hpmcounter17
	csrr s2, hpmcounter18
	csrr a3, hpmcounter19
	csrr a1, hpmcounter20
	csrr t4, hpmcounter21
	csrr s8, hpmcounter22
	csrr a4, hpmcounter23
	csrr t4, hpmcounter24
	csrr a7, hpmcounter25
	csrr a7, hpmcounter26
	csrr s4, hpmcounter27
	csrr a3, hpmcounter28
	csrr s2, hpmcounter29
	csrr t1, hpmcounter31
	# Set only this field in both registers, clear all others
	li s11, 0x80000000
	csrrw s3, mcounteren, s11
	li a7, 0x80000000
	csrrw a7, scounteren, a7
	# Test the enabled CSR in M mode - should succeed
	csrr a7, hpmcounter31
	# Test other CSRs in M mode - should also succeed
	csrr s3, cycle
	csrr s0, time
	csrr t3, instret
	csrr s5, hpmcounter3
	csrr s4, hpmcounter4
	csrr s4, hpmcounter5
	csrr s6, hpmcounter6
	csrr s11, hpmcounter7
	csrr a7, hpmcounter8
	csrr a6, hpmcounter9
	csrr a0, hpmcounter10
	csrr t3, hpmcounter11
	csrr s3, hpmcounter12
	csrr t6, hpmcounter13
	csrr a2, hpmcounter14
	csrr t4, hpmcounter15
	csrr a3, hpmcounter16
	csrr t1, hpmcounter17
	csrr a3, hpmcounter18
	csrr a6, hpmcounter19
	csrr s1, hpmcounter20
	csrr a2, hpmcounter21
	csrr s5, hpmcounter22
	csrr t6, hpmcounter23
	csrr t5, hpmcounter24
	csrr t3, hpmcounter25
	csrr s1, hpmcounter26
	csrr a5, hpmcounter27
	csrr a3, hpmcounter28
	csrr s3, hpmcounter29
	csrr s6, hpmcounter30
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(scounteren, write, false, true)
SID_XCOUNTEREN_06_M_passed:
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

;#random_addr(name=SID_XCOUNTEREN_01_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_01_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_01_M_stack, phys_name=SID_XCOUNTEREN_01_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_01_M_stack
.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_02_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_02_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_02_M_stack, phys_name=SID_XCOUNTEREN_02_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_02_M_stack
.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_03_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_03_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_03_M_stack, phys_name=SID_XCOUNTEREN_03_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_03_M_stack
.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_04_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_04_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_04_M_stack, phys_name=SID_XCOUNTEREN_04_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_04_M_stack
.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_05_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_05_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_05_M_stack, phys_name=SID_XCOUNTEREN_05_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_05_M_stack
.dword 0xc001c0de

;#random_addr(name=SID_XCOUNTEREN_06_M_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_XCOUNTEREN_06_M_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_XCOUNTEREN_06_M_stack, phys_name=SID_XCOUNTEREN_06_M_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_XCOUNTEREN_06_M_stack
.dword 0xc001c0de
