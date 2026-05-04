;#test.name       zjpm
;#test.author     abdullah
;#test.arch       rv64
;#test.priv       user
;#test.env        bare_metal
;#test.cpus       1
;#test.paging     sv48
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

;#discrete_test(test=SID_05_pm_disabled_u_vu_mode)
SID_05_pm_disabled_u_vu_mode:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_05_pm_disabled_u_vu_mode_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM disabled in U/VU mode - non-canonical addresses should fault
	# Set senvcfg.PMM[33:32] = 00 to disable PM
	li t2, 12884901888
	;#csr_rw(senvcfg, clear, true, false)
csrrc t2, senvcfg, t2

	# Create memory region for testing
	# Store value at canonical address
	li s10, 0xdeadbeef
	li a3, mem0
	fcvt.s.l fs4, s10
	fsw fs4, 0(a3)
	# Get address and XOR upper bits to make non-canonical
	li s0, mem0
	li t3, 0xfe00000000000000
	xor a3, s0, t3
	# Load from non-canonical address with PM disabled - expect page fault
	OS_SETUP_CHECK_EXCP 0xd, fault_label_0, excp_return_label_0, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
fault_label_0:
	fld ft6, 0(a3)
	li s6, failed_addr
	ld t2, 0(s6)
	jr t2
	# assert_exception block end
excp_return_label_0:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_05_pm_disabled_u_vu_mode_passed:
	;#test_passed()
	li x31, 0xf0000001  # Test Passed; Schedule test
	ecall

;#discrete_test(test=SID_13_pm_enabled_u_vu_mode)
SID_13_pm_enabled_u_vu_mode:
	li sp, tp_csr_storage
	;#csr_rw(senvcfg, read, false, true)
li x31, machine_csr_jump_table_flags
li t5, 1
sd t5, 0(x31)
li x31, 0xf0001005
ecall

	sd t2, 0(sp)
	li sp, SID_13_pm_enabled_u_vu_mode_stack
	li t0, 0x1000
	add sp, sp, t0
	andi sp, sp, -16
	# Test PM enabled in U/VU mode - tagged addresses should work
	# Set senvcfg.PMM[33:32] = 10 for PMLEN=7
	li t2, 8589934592
	;#csr_rw(senvcfg, set, true, false)
csrrs t2, senvcfg, t2

	# Create memory region for testing
	# Store value at canonical address
	li s0, 0xabcd1234
	li t1, mem1
	sw s0, 0(t1)
	# Create tagged address by XORing upper 7 bits (PMLEN=7)
	li s4, mem1
	li s8, 0xfe00000000000000
	xor s3, s4, s8
	# Load via tagged address - PM should mask upper bits and access same memory
	fld ft10, 0(s3)
	# Store via tagged address - should also succeed
	li s7, 0xcafebabe
	fcvt.s.l fa4, s7
	fsd fa4, 0(s3)
	# Load from canonical address - should see value stored via tagged address
	li t4, mem1
	fld ft6, 0(t4)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_13_pm_enabled_u_vu_mode_passed:
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
	li t2, 8589934592
	;#csr_rw(senvcfg, set, true, false)
csrrs t2, senvcfg, t2

	# Test base load/store with PM - pointer masking should work
	li a4, 0x11223344
	li t1, mem2
	fcvt.d.wu ft6, a4
	fsd ft6, 0(t1)
	li s3, mem2
	ld a3, 0(s3)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
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
	li t2, 12884901888
	;#csr_rw(senvcfg, set, true, false)
csrrs t2, senvcfg, t2

	# Create misaligned access - pointer masking should still work
	li s7, 0x55667788
	li t4, mem3
	sd s7, 0(t4)
	li s9, mem3
	fld ft6, 0(s9)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
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
	li t2, 12884901888
	;#csr_rw(senvcfg, set, true, false)
csrrs t2, senvcfg, t2

	# Access with tag1
	li t2, 0x11111111
	li s9, mem4
	sw t2, 0(s9)
	# Access with tag2 to same base address
	li s2, 0x22222222
	li s3, mem4
	sw s2, 0(s3)
	# Load from same address - pointer masking allows this
	li s7, mem4
	fld ft6, 0(s7)
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
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
	li t2, 8589934592
	;#csr_rw(senvcfg, set, true, false)
csrrs t2, senvcfg, t2

	# Create executable memory for instruction fetch testing
	# Explicit memory access - PM applies here
	li s11, 0xfeedc0de
	li s7, mem5
	sw s11, 0(s7)
	li a4, mem5
	fld fa6, 0(a4)
	# Code execution - instruction fetch does NOT use PM
	li a6, code_mem6
	jalr a6
	# Page table walks during address translation do NOT use PM
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
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
	li t2, 8589934592
	;#csr_rw(senvcfg, set, true, false)
csrrs t2, senvcfg, t2

	# Create memory with limited permissions to trigger fault
	# Attempt store to read-only page to trigger page fault
	li s8, 0xbadf00d
	# Expect store page fault when writing to read-only page
	OS_SETUP_CHECK_EXCP 0xf, fault_label_1, excp_return_label_1, 0, 0, 0, 0, 0, 0, 0
	# assert_exception block start
	li s7, mem7
fault_label_1:
	sw s8, 0(s7)
	li s7, failed_addr
	ld s2, 0(s7)
	jr s2
	# assert_exception block end
excp_return_label_1:
	li sp, tp_csr_storage
	ld t2, 0(sp)
	;#csr_rw(senvcfg, write, false, true)
li x31, machine_csr_jump_table_flags
li t5, 3
sd t5, 0(x31)
li x31, 0xf0001005
ecall

SID_28_pm_faults_trap_values_passed:
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
;#random_addr(name=code_mem6,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=code_mem6_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=code_mem6, phys_name=code_mem6_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @code_mem6
.section .code_mem6, "ax"

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
;#page_mapping(lin_name=mem5, phys_name=mem5_phys, pagesize=['4kb'], v=1, r=1, w=1, x=1)
;#init_memory @mem5
.section .mem5, "ax"

.dword 0xc001c0de

;#random_addr(name=mem7,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=mem7_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=mem7, phys_name=mem7_phys, pagesize=['4kb'], v=1, r=1, w=0, x=0)
;#init_memory @mem7
.section .mem7, "aw"

.dword 0xc001c0de

;#random_addr(name=tp_csr_storage,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=tp_csr_storage_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=tp_csr_storage, phys_name=tp_csr_storage_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @tp_csr_storage
.section .tp_csr_storage, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_05_pm_disabled_u_vu_mode_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_05_pm_disabled_u_vu_mode_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_05_pm_disabled_u_vu_mode_stack, phys_name=SID_05_pm_disabled_u_vu_mode_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_05_pm_disabled_u_vu_mode_stack
.section .SID_05_pm_disabled_u_vu_mode_stack, "aw"

.dword 0xc001c0de

;#random_addr(name=SID_13_pm_enabled_u_vu_mode_stack,  type=linear, size=0x2000, and_mask=0xfffffffffffff000)
;#random_addr(name=SID_13_pm_enabled_u_vu_mode_stack_phys,  type=physical, size=0x1000, and_mask=0xfffffffffffff000)
;#page_mapping(lin_name=SID_13_pm_enabled_u_vu_mode_stack, phys_name=SID_13_pm_enabled_u_vu_mode_stack_phys, pagesize=['4kb'], v=1, r=1, w=1, x=0, a=1, d=1)
;#init_memory @SID_13_pm_enabled_u_vu_mode_stack
.section .SID_13_pm_enabled_u_vu_mode_stack, "aw"

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
