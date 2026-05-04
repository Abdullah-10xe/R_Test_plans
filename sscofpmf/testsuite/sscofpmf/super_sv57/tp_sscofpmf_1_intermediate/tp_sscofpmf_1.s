;#test.name       sscofpmf
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv57
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      sscofpmf
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: sscofpmf

.section .code, "ax"

test_setup:
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
	li a0, 0
	li a7, 0x8
	li a2, 0x8000000000000000
	# Counter 3 bit position in scountovf (bit 3)
	# Enable counter 3 in both mcounteren and scounteren
	li t2, 8
	;#csr_rw(mcounteren, set, false, false)
	csrrsi s9, scounteren, 0x8
	# Clear OF bit in mhpmevent3 first
	li t2, 0
	;#csr_rw(mhpmevent3, write, false, false)
	# Read scountovf and verify bit 3 is clear
	csrr s8, scountovf
	and s11, s8, a7
	beq s11, a0, pass_label_0
	li t2, failed_addr
	ld s6, 0(t2)
	jr s6
pass_label_0:
	# Set OF bit in mhpmevent3
	li t2, 9223372036854775808
	;#csr_rw(mhpmevent3, write, false, false)
	# Read mhpmevent3 to verify OF bit is set
	;#csr_rw(mhpmevent3, read, false, false)
	mv a5, t2
	and a1, a5, a2
	beq a1, a2, pass_label_1
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
pass_label_1:
	# Read scountovf and verify bit 3 reflects the OF bit
	csrr t4, scountovf
	and s9, t4, a7
	beq s9, a7, pass_label_2
	li a2, failed_addr
	ld s9, 0(a2)
	jr s9
pass_label_2:
	# Cleanup: clear mhpmevent3 and restore counteren registers
	li t2, 0
	;#csr_rw(mhpmevent3, write, false, false)
	li t2, 0
	;#csr_rw(mcounteren, write, false, false)
	csrrwi s9, scounteren, 0
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mhpmevent3, write, false, true)
	ld t2, 0x10(sp)
	;#csr_rw(scounteren, write, false, true)
SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_passed:
	;#test_passed()

;#discrete_test(test=SID_SSCOFPMF_08B_SCOUNTOVF_READ_ONLY_ZERO_DISABLED)
SID_SSCOFPMF_08B_SCOUNTOVF_READ_ONLY_ZERO_DISABLED:
	li sp, tp_csr_storage
	;#csr_rw(mcounteren, read, false, true)
	sd t2, 0(sp)
	;#csr_rw(mhpmevent3, read, false, true)
	sd t2, 0x8(sp)
	li sp, SID_SSCOFPMF_08B_SCOUNTOVF_READ_ONLY_ZERO_DISABLED_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	li s0, 0
	li s7, 0x8
	li a7, 0x8000000000000000
	# Counter 3 bit position in scountovf (bit 3)
	# Disable counter 3 in mcounteren and scounteren
	li t2, 0
	;#csr_rw(mcounteren, write, false, false)
	csrrwi a5, scounteren, 0
	# Set OF bit in mhpmevent3 (bit 63)
	li t2, 9223372036854775808
	;#csr_rw(mhpmevent3, write, false, false)
	# Read mhpmevent3 to verify OF bit is set
	;#csr_rw(mhpmevent3, read, false, false)
	mv t4, t2
	and a1, t4, a7
	beq a1, a7, pass_label_3
	li s5, failed_addr
	ld t1, 0(s5)
	jr t1
pass_label_3:
	# Read scountovf - bit 3 should be ZERO (counteren is disabled)
	csrr s1, scountovf
	and a0, s1, s7
	beq a0, s0, pass_label_4
	li s5, failed_addr
	ld t4, 0(s5)
	jr t4
pass_label_4:
	# Cleanup: clear mhpmevent3
	li t2, 0
	;#csr_rw(mhpmevent3, write, false, false)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mcounteren, write, false, true)
	ld t2, 0x8(sp)
	;#csr_rw(mhpmevent3, write, false, true)
SID_SSCOFPMF_08B_SCOUNTOVF_READ_ONLY_ZERO_DISABLED_passed:
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

;#random_addr(name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack, phys_name=SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_08A_SCOUNTOVF_SHADOW_COPY_ENABLED_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSCOFPMF_08B_SCOUNTOVF_READ_ONLY_ZERO_DISABLED_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSCOFPMF_08B_SCOUNTOVF_READ_ONLY_ZERO_DISABLED_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSCOFPMF_08B_SCOUNTOVF_READ_ONLY_ZERO_DISABLED_stack, phys_name=SID_SSCOFPMF_08B_SCOUNTOVF_READ_ONLY_ZERO_DISABLED_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSCOFPMF_08B_SCOUNTOVF_READ_ONLY_ZERO_DISABLED_stack
.dword 0xc001c0de
