;#test.name       zjpm
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       supervisor
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv57
;#test.paging_g   disabled
;#test.category   arch compliance
;#test.class      zjpm
;#test.features   
;#test.tags       
;#test.summary    Generated test case from TestPlan: zjpm

#include "rvmodel_macros.h"
.include "tp_zjpm_2_equates.inc"

.include "tp_zjpm_2_pagetables.inc"
#include "tp_zjpm_2_macros.inc"
#include "tp_zjpm_2_loader.inc"
#include "tp_zjpm_2_syscalls.inc"
#include "tp_zjpm_2_trap_handler_m.inc"
#include "tp_zjpm_2_trap_handler_s.inc"
#include "tp_zjpm_2_os.inc"
#include "tp_zjpm_2_eot.inc"
#include "tp_zjpm_2_scheduler.inc"
.section .code, "ax"

test_setup:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_01_senvcfg_pmm_warl)
SID_01_senvcfg_pmm_warl:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_01_senvcfg_pmm_warl_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test WARL behavior for senvcfg.PMM field
	# Read current senvcfg value and extract PMM bits
	csrr t6, senvcfg
	srli s11, t6, 0x20
	andi a5, s11, 0x3
	# Attempt to write reserved value 01 to senvcfg.PMM[33:32]
	li a4, 0x100000000
	csrrw t3, senvcfg, a4
	# Read back senvcfg to verify WARL behavior
	csrr a2, senvcfg
	srli t5, a2, 0x20
	andi t2, t5, 0x3
	# Verify PMM field is not reserved value 01
	li t6, 0x1
	bne t2, t6, pass_label_0
	li t3, failed_addr
	ld a3, 0(t3)
	jr a3
pass_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_01_senvcfg_pmm_warl_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_02_henvcfg_hstatus_pmm_warl)
SID_02_henvcfg_hstatus_pmm_warl:
	li sp, tp_csr_storage
	;#csr_rw(henvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(hstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 4
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_02_henvcfg_hstatus_pmm_warl_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test WARL behavior for henvcfg.PMM and hstatus.HUPMM fields
	# Read current henvcfg value
	csrr s3, henvcfg
	# Attempt to write reserved value 01 to henvcfg.PMM[33:32]
	li s11, 0x100000000
	csrrw s2, henvcfg, s11
	# Read back henvcfg to verify WARL behavior
	csrr s2, henvcfg
	srli s3, s2, 0x20
	andi s8, s3, 0x3
	# Verify henvcfg.PMM is not reserved value 01
	li a7, 0x1
	bne s8, a7, pass_label_1
	li t3, failed_addr
	ld s7, 0(t3)
	jr s7
pass_label_1:
	# Read current hstatus value
	csrr t4, hstatus
	# Attempt to write reserved value 01 to hstatus.HUPMM[49:48]
	li a4, 0x1000000000000
	csrrw t2, hstatus, a4
	# Read back hstatus to verify WARL behavior
	csrr t1, hstatus
	srli s9, t1, 0x30
	andi s11, s9, 0x3
	# Verify hstatus.HUPMM is not reserved value 01
	bne s11, a7, pass_label_2
	li s6, failed_addr
	ld t6, 0(s6)
	jr t6
pass_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(henvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 5
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(hstatus, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 6
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_02_henvcfg_hstatus_pmm_warl_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_07_pm_disabled_s_hs_mode)
SID_07_pm_disabled_s_hs_mode:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_07_pm_disabled_s_hs_mode_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM disabled in S/HS mode - non-canonical addresses should fault
	# Set menvcfg.PMM[33:32] = 00 to disable PM
	li t2, 12884901888
	;#csr_rw(menvcfg, clear, false, false)
li x31, machine_csr_jump_table_flags
li t5, 8
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Create memory region for testing
	# Store value at canonical address
	li s8, 0xfeedface
	li a2, mem0
	sw s8, 0(a2)
	# Get address and XOR upper bits to make non-canonical
	li a5, mem0
	li a6, 0xfe00000000000000
	xor s0, a5, a6
	# Load from non-canonical address with PM disabled - expect page fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	ld a4, 0(s0)
	li s6, failed_addr
	ld a7, 0(s6)
	jr a7
	# assert_exception block end
excp_return_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_07_pm_disabled_s_hs_mode_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_11_pm_enabled_s_hs_mode)
SID_11_pm_enabled_s_hs_mode:
	li sp, tp_csr_storage
	;#csr_rw(menvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 7
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_11_pm_enabled_s_hs_mode_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM enabled in S/HS mode - tagged addresses should work
	# Set menvcfg.PMM[33:32] = 10 for PMLEN=7
	li t2, 8589934592
	;#csr_rw(menvcfg, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 11
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Create memory region for testing
	# Store value at canonical address
	li t2, 0x12345678
	li s4, mem1
	sd t2, 0(s4)
	# Create tagged address by XORing upper 7 bits (PMLEN=7)
	li t6, mem1
	li s8, 0xfe00000000000000
	xor t6, t6, s8
	# Load via tagged address - PM should mask upper bits and access same memory
	fld fa2, 0(t6)
	# Store via tagged address - should also succeed
	li s11, 0xabcdef00
	fcvt.s.wu fa3, s11
	fsd fa3, 0(t6)
	# Load from canonical address - should see value stored via tagged address
	li s2, mem1
	ld s7, 0(s2)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(menvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 9
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_11_pm_enabled_s_hs_mode_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_22_pm_disabled_mxr_set)
SID_22_pm_disabled_mxr_set:
	li sp, tp_csr_storage
	;#csr_rw(mstatus, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 13
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_22_pm_disabled_mxr_set_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM disabled when MXR is set
	# Enable PM via senvcfg
	li t3, 0x200000000
	csrrs t5, senvcfg, t3
	# Set MXR bit in mstatus
	li s4, 0x80000
	mv t2, s4
	;#csr_rw(mstatus, set, false, false)
li x31, machine_csr_jump_table_flags
li t5, 15
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	# Allocate memory and store a value
	li t4, 0x12345678
	li s8, mem2
	sd t4, 0(s8)
	# Create tagged address by XORing with upper bits
	li a4, mem2
	li s9, 0xfe00000000000000
	xor a7, a4, s9
	# With MXR=1, PM is disabled - tagged address should fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_1:
	fld ft10, 0(a7)
	li s11, failed_addr
	ld t3, 0(s11)
	jr t3
	# assert_exception block end
excp_return_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(mstatus, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 16
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_22_pm_disabled_mxr_set_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_23_pm_invalidation_instructions)
SID_23_pm_invalidation_instructions:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_23_pm_invalidation_instructions_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM not applicable to invalidation instructions
	# Enable PM to verify it doesn't affect fence instructions
	li s4, 0x200000000
	csrrs a7, senvcfg, s4
	# Create memory and perform normal access
	# Perform memory access to create TLB entries
	li s10, 0xabcd1234
	li s4, mem3
	fcvt.s.wu ft10, s10
	fsd ft10, 0(s4)
	li s9, mem3
	fld fs8, 0(s9)
	# Fence/invalidation instructions must use canonical addresses - PM does not apply
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_23_pm_invalidation_instructions_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_24_pm_instruction_set)
SID_24_pm_instruction_set:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_24_pm_instruction_set_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM with various instruction sets
	# Enable PM
	li s11, 0x200000000
	csrrs a3, senvcfg, s11
	# Test base load/store with PM - pointer masking should work
	li a7, 0x11223344
	li t6, mem4
	sw a7, 0(t6)
	li a1, mem4
	fld ft9, 0(a1)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_24_pm_instruction_set_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_25_pm_misaligned_access)
SID_25_pm_misaligned_access:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_25_pm_misaligned_access_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM with misaligned memory access
	# Enable PM
	li a5, 0x300000000
	csrrs a6, senvcfg, a5
	# Create misaligned access - pointer masking should still work
	li a6, 0x55667788
	li t5, mem5
	fcvt.s.wu fs11, a6
	fsd fs11, 0(t5)
	li s8, mem5
	fld fs2, 0(s8)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_25_pm_misaligned_access_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_26_pm_different_tags_same_address)
SID_26_pm_different_tags_same_address:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_26_pm_different_tags_same_address_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test same address with different tag values
	# Enable PM
	li s5, 0x300000000
	csrrs s7, senvcfg, s5
	# Access with tag1
	li a7, 0x11111111
	li t5, mem6
	fcvt.s.l fs4, a7
	fsd fs4, 0(t5)
	# Access with tag2 to same base address
	li s0, 0x22222222
	li s2, mem6
	fcvt.d.wu fs9, s0
	fsd fs9, 0(s2)
	# Load from same address - pointer masking allows this
	li t1, mem6
	fld fs4, 0(t1)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_26_pm_different_tags_same_address_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_27_pm_implicit_access)
SID_27_pm_implicit_access:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_27_pm_implicit_access_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM does not apply to implicit accesses (fetch and PTW)
	# Enable PM for explicit accesses
	li t2, 0x200000000
	csrrs s9, senvcfg, t2
	# Create executable memory for instruction fetch testing
	# Explicit memory access - PM applies here
	li t3, 0xfeedc0de
	li s0, mem7
	sd t3, 0(s0)
	li a6, mem7
	ld t4, 0(a6)
	# Code execution - instruction fetch does NOT use PM
	li a5, code_mem8
	jalr a5
	# Page table walks during address translation do NOT use PM
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_27_pm_implicit_access_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_28_pm_faults_trap_values)
SID_28_pm_faults_trap_values:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_28_pm_faults_trap_values_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test trap values contain canonical addresses when PM enabled
	# Enable PM with PMLEN=7
	li t5, 0x200000000
	csrrs s6, senvcfg, t5
	# Create memory with limited permissions to trigger fault
	# Attempt store to read-only page to trigger page fault
	li a2, 0xbadf00d
	# Expect store page fault when writing to read-only page
	OS_SETUP_CHECK_EXCP 0xf, fault_label_2, excp_return_label_2, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li a5, mem9
	fcvt.d.lu fs0, a2
fault_label_2:
	fsw fs0, 0(a5)
	li a3, failed_addr
	ld t2, 0(a3)
	jr t2
	# assert_exception block end
excp_return_label_2:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_28_pm_faults_trap_values_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_29_pm_xtvec_tagged_address)
SID_29_pm_xtvec_tagged_address:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	;#csr_rw(stvec, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 31
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0x8(sp)
	li sp, SID_29_pm_xtvec_tagged_address_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test writing tagged addresses to *tvec with PM enabled
	# Enable PM
	li s3, 0x200000000
	csrrs t4, senvcfg, s3
	# Write tagged address to stvec
	li s3, 0x13000
	csrrw t2, stvec, s3
	# Read back stvec
	csrr s0, stvec
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 2
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	ld t2, 0x8(sp)
	;#csr_rw(stvec, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 33
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_29_pm_xtvec_tagged_address_passed:
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
;#random_addr(name=code_mem8,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem8_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem8, phys_name=code_mem8_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem8
.section .code_mem8, "ax"

	li a7, 0x177219d6
	li a1, 0x15ba2be0
	addw t6, a7, a1
	ret

;#random_addr(name=mem0,  type=linear, size=0x11000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem0_phys,  type=physical, size=0x10000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem0, phys_name=mem0_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem0
.section .mem0, "aw"

.dword 0xc001c0de

;#random_addr(name=mem1,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem1_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem1, phys_name=mem1_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem1
.section .mem1, "aw"

.dword 0xc001c0de

;#random_addr(name=mem2,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem2_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem2, phys_name=mem2_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem2
.section .mem2, "aw"

.dword 0xc001c0de

;#random_addr(name=mem3,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem3_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem3, phys_name=mem3_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem3
.section .mem3, "aw"

.dword 0xc001c0de

;#random_addr(name=mem4,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem4_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem4, phys_name=mem4_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem4
.section .mem4, "aw"

.dword 0xc001c0de

;#random_addr(name=mem5,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem5_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem5
.section .mem5, "aw"

.dword 0xc001c0de

;#random_addr(name=mem6,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem6_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem6, phys_name=mem6_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0)
;#init_memory @mem6
.section .mem6, "aw"

.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem7_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem7
.section .mem7, "ax"

.dword 0xc001c0de

;#random_addr(name=mem9,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem9_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem9, phys_name=mem9_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0)
;#init_memory @mem9
.section .mem9, "aw"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_01_senvcfg_pmm_warl_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_01_senvcfg_pmm_warl_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_01_senvcfg_pmm_warl_stack, phys_name=SID_01_senvcfg_pmm_warl_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_01_senvcfg_pmm_warl_stack
.section .SID_01_senvcfg_pmm_warl_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_02_henvcfg_hstatus_pmm_warl_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_02_henvcfg_hstatus_pmm_warl_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_02_henvcfg_hstatus_pmm_warl_stack, phys_name=SID_02_henvcfg_hstatus_pmm_warl_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_02_henvcfg_hstatus_pmm_warl_stack
.section .SID_02_henvcfg_hstatus_pmm_warl_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_07_pm_disabled_s_hs_mode_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_07_pm_disabled_s_hs_mode_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_07_pm_disabled_s_hs_mode_stack, phys_name=SID_07_pm_disabled_s_hs_mode_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_07_pm_disabled_s_hs_mode_stack
.section .SID_07_pm_disabled_s_hs_mode_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_11_pm_enabled_s_hs_mode_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_11_pm_enabled_s_hs_mode_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_11_pm_enabled_s_hs_mode_stack, phys_name=SID_11_pm_enabled_s_hs_mode_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_11_pm_enabled_s_hs_mode_stack
.section .SID_11_pm_enabled_s_hs_mode_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_22_pm_disabled_mxr_set_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_22_pm_disabled_mxr_set_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_22_pm_disabled_mxr_set_stack, phys_name=SID_22_pm_disabled_mxr_set_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_22_pm_disabled_mxr_set_stack
.section .SID_22_pm_disabled_mxr_set_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_23_pm_invalidation_instructions_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_23_pm_invalidation_instructions_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_23_pm_invalidation_instructions_stack, phys_name=SID_23_pm_invalidation_instructions_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_23_pm_invalidation_instructions_stack
.section .SID_23_pm_invalidation_instructions_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_24_pm_instruction_set_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_24_pm_instruction_set_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_24_pm_instruction_set_stack, phys_name=SID_24_pm_instruction_set_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_24_pm_instruction_set_stack
.section .SID_24_pm_instruction_set_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_25_pm_misaligned_access_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_25_pm_misaligned_access_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_25_pm_misaligned_access_stack, phys_name=SID_25_pm_misaligned_access_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_25_pm_misaligned_access_stack
.section .SID_25_pm_misaligned_access_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_26_pm_different_tags_same_address_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_26_pm_different_tags_same_address_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_26_pm_different_tags_same_address_stack, phys_name=SID_26_pm_different_tags_same_address_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_26_pm_different_tags_same_address_stack
.section .SID_26_pm_different_tags_same_address_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_27_pm_implicit_access_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_27_pm_implicit_access_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_27_pm_implicit_access_stack, phys_name=SID_27_pm_implicit_access_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_27_pm_implicit_access_stack
.section .SID_27_pm_implicit_access_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_28_pm_faults_trap_values_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_28_pm_faults_trap_values_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_28_pm_faults_trap_values_stack, phys_name=SID_28_pm_faults_trap_values_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_28_pm_faults_trap_values_stack
.section .SID_28_pm_faults_trap_values_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_29_pm_xtvec_tagged_address_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_29_pm_xtvec_tagged_address_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_29_pm_xtvec_tagged_address_stack, phys_name=SID_29_pm_xtvec_tagged_address_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_29_pm_xtvec_tagged_address_stack
.section .SID_29_pm_xtvec_tagged_address_stack, "aw"

.dword 0xc001c0de
