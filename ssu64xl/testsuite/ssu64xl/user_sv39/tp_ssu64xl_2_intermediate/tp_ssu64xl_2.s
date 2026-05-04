;#test.name       ssu64xl
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv39
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      ssu64xl
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: ssu64xl

.section .code, "ax"

test_setup:
	;#test_passed()

;#discrete_test(test=SID_SSU64XL_01)
SID_SSU64XL_01:
	li sp, SID_SSU64XL_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read mstatus.UXL field
	;#csr_rw(mstatus, read, false, false)
	mv s0, t2
	# Extract UXL field (bits 33:32)
	# bits 33:32
	li a1, 0x300000000
	and a0, s0, a1
	# Right shift by 32 bits to get UXL value
	li s6, 0x20
	srl a5, a0, s6
	# Expected value is 0b10 (2)
	li s5, 0x2
	beq a5, s5, pass_label_0
	li s3, failed_addr
	ld s0, 0(s3)
	jr s0
pass_label_0:
	# Read sstatus.UXL field
	;#csr_rw(sstatus, read, false, false)
	mv a7, t2
	# Extract UXL field (bits 33:32)
	and s3, a7, a1
	# Right shift by 32 bits
	srl s1, s3, s6
	# Verify it is also 0b10
	beq s1, s5, pass_label_1
	li s0, failed_addr
	ld s6, 0(s0)
	jr s6
pass_label_1:
SID_SSU64XL_01_passed:
	;#test_passed()

;#discrete_test(test=SID_SSU64XL_03)
SID_SSU64XL_03:
	li sp, SID_SSU64XL_03_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load a register with maximum 64-bit value
	li a1, 0xffffffffffffffff
	li s4, 0xffff
	li t3, 0xffff
	# Loop 64 times, shifting right and checking LSB
	# Shift right logical by 0 positions
	li s3, 0
	srl s9, a1, s3
	# Extract LAST TWO BYTES (bit 0)
	and s2, s9, s4
	# Expected value: 1 for all bits 0-63
	beq s2, t3, pass_label_2
	li t4, failed_addr
	ld s8, 0(t4)
	jr s8
pass_label_2:
	# Shift right logical by 1 positions
	li t5, 0x10
	srl a5, a1, t5
	# Extract LAST TWO BYTES (bit 0)
	and t2, a5, s4
	# Expected value: 1 for all bits 0-63
	beq t2, t3, pass_label_3
	li t1, failed_addr
	ld s10, 0(t1)
	jr s10
pass_label_3:
	# Shift right logical by 2 positions
	li s9, 0x20
	srl s7, a1, s9
	# Extract LAST TWO BYTES (bit 0)
	and s3, s7, s4
	# Expected value: 1 for all bits 0-63
	beq s3, t3, pass_label_4
	li t4, failed_addr
	ld t2, 0(t4)
	jr t2
pass_label_4:
SID_SSU64XL_03_passed:
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

;#random_addr(name=SID_SSU64XL_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSU64XL_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSU64XL_01_stack, phys_name=SID_SSU64XL_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSU64XL_01_stack
.dword 0xc001c0de

;#random_addr(name=SID_SSU64XL_03_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSU64XL_03_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSU64XL_03_stack, phys_name=SID_SSU64XL_03_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSU64XL_03_stack
.dword 0xc001c0de
