;#test.name       ssu64xl
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      ssu64xl
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: ssu64xl

#include "rvmodel_macros.h"
.include "tp_ssu64xl_1_equates.inc"

.include "tp_ssu64xl_1_pagetables.inc"
#include "tp_ssu64xl_1_macros.inc"
#include "tp_ssu64xl_1_loader.inc"
#include "tp_ssu64xl_1_syscalls.inc"
#include "tp_ssu64xl_1_trap_handler_m.inc"
#include "tp_ssu64xl_1_trap_handler_s.inc"
#include "tp_ssu64xl_1_os.inc"
#include "tp_ssu64xl_1_eot.inc"
#include "tp_ssu64xl_1_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSU64XL_01)
SID_SSU64XL_01:
	li sp, SID_SSU64XL_01_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Read mstatus.UXL field
	;#csr_rw(mstatus, read, false, false)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	mv t2, t2
	# Extract UXL field (bits 33:32)
	# bits 33:32
	li a0, 0x300000000
	and a6, t2, a0
	# Right shift by 32 bits to get UXL value
	li a2, 0x20
	srl s9, a6, a2
	# Expected value is 0b10 (2)
	li s10, 0x2
	beq s9, s10, pass_label_0
	li s11, failed_addr
	ld a6, 0(s11)
	jr a6
pass_label_0:
	# Read sstatus.UXL field
	;#csr_rw(sstatus, read, false, false)
li x31, super_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001006
ecall

	mv s6, t2
	# Extract UXL field (bits 33:32)
	and a5, s6, a0
	# Right shift by 32 bits
	srl a1, a5, a2
	# Verify it is also 0b10
	beq a1, s10, pass_label_1
	li t6, failed_addr
	ld t1, 0(t6)
	jr t1
pass_label_1:
SID_SSU64XL_01_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_SSU64XL_03)
SID_SSU64XL_03:
	li sp, SID_SSU64XL_03_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Load a register with maximum 64-bit value
	li s2, 0xffffffffffffffff
	li s4, 0xffff
	li s11, 0xffff
	# Loop 64 times, shifting right and checking LSB
	# Shift right logical by 0 positions
	li t1, 0
	srl t1, s2, t1
	# Extract LAST TWO BYTES (bit 0)
	and s7, t1, s4
	# Expected value: 1 for all bits 0-63
	beq s7, s11, pass_label_2
	li a5, failed_addr
	ld a4, 0(a5)
	jr a4
pass_label_2:
	# Shift right logical by 1 positions
	li t6, 0x10
	srl a0, s2, t6
	# Extract LAST TWO BYTES (bit 0)
	and s6, a0, s4
	# Expected value: 1 for all bits 0-63
	beq s6, s11, pass_label_3
	li t2, failed_addr
	ld s0, 0(t2)
	jr s0
pass_label_3:
	# Shift right logical by 2 positions
	li s1, 0x20
	srl t2, s2, s1
	# Extract LAST TWO BYTES (bit 0)
	and t6, t2, s4
	# Expected value: 1 for all bits 0-63
	beq t6, s11, pass_label_4
	li a1, failed_addr
	ld t1, 0(a1)
	jr t1
pass_label_4:
SID_SSU64XL_03_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

test_cleanup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall
local_test_failed:
	;#test_failed()
	li x31, 0xf0000002  # Test Failed; End test with fail
	ecall

.section .data
;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSU64XL_01_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSU64XL_01_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSU64XL_01_stack, phys_name=SID_SSU64XL_01_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSU64XL_01_stack
.section .SID_SSU64XL_01_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_SSU64XL_03_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_SSU64XL_03_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_SSU64XL_03_stack, phys_name=SID_SSU64XL_03_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_SSU64XL_03_stack
.section .SID_SSU64XL_03_stack, "aw"

.dword 0xc001c0de
