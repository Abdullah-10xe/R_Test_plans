;#test.name       zjpm
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       machine
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     disabled
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zjpm
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zjpm

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_03_menvcfg_pmm_warl)
SID_03_menvcfg_pmm_warl:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_03_menvcfg_pmm_warl_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test WARL behavior for menvcfg.PMM field
	# Read current menvcfg value
	csrr t2, menvcfg
	# Attempt to write reserved value 01 to menvcfg.PMM[33:32]
	li s1, 0x100000000
	csrrw a0, menvcfg, s1
	# Read back menvcfg to verify WARL behavior
	csrr s4, menvcfg
	srli a4, s4, 0x20
	andi a0, a4, 0x3
	# Verify menvcfg.PMM is not reserved value 01
	li t2, 0x1
	bne a0, t2, pass_label_0
	li s3, failed_addr
	ld s2, 0(s3)
	jr s2
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
SID_03_menvcfg_pmm_warl_passed:
	;#test_passed()

;#discrete_test(test=SID_04_mseccfg_pmm_warl)
SID_04_mseccfg_pmm_warl:
	li sp, tp_csr_storage
	;#csr_rw(mseccfg, read, false, true)
	sd t2, 0(sp)
	li sp, SID_04_mseccfg_pmm_warl_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test WARL behavior for mseccfg.PMM field
	# Read current mseccfg value
	csrr s9, mseccfg
	# Attempt to write reserved value 01 to mseccfg.PMM[33:32]
	li a2, 0x100000000
	csrrw s11, mseccfg, a2
	# Read back mseccfg to verify WARL behavior
	csrr t2, mseccfg
	srli t3, t2, 0x20
	andi s9, t3, 0x3
	# Verify mseccfg.PMM is not reserved value 01
	li a3, 0x1
	bne s9, a3, pass_label_1
	li s6, failed_addr
	ld s11, 0(s6)
	jr s11
pass_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mseccfg, write, false, true)
SID_04_mseccfg_pmm_warl_passed:
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

;#random_addr(name=SID_03_menvcfg_pmm_warl_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_03_menvcfg_pmm_warl_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_03_menvcfg_pmm_warl_stack, phys_name=SID_03_menvcfg_pmm_warl_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_03_menvcfg_pmm_warl_stack
.dword 0xc001c0de

;#random_addr(name=SID_04_mseccfg_pmm_warl_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_04_mseccfg_pmm_warl_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_04_mseccfg_pmm_warl_stack, phys_name=SID_04_mseccfg_pmm_warl_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_04_mseccfg_pmm_warl_stack
.dword 0xc001c0de
