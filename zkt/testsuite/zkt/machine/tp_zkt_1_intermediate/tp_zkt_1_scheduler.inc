
.section .runtime, "ax"

# Scheduler initialization; only ran once
scheduler__init:

# Setup scheduler panic handler before running test_setup
	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec

	li t0, 169 # setting num_runs to 169
	sd t0, 400(tp)                     # num_runs
	li t0, 0xFFFFFFFE  # test_setup special index
	sd t0, 392(tp)           # current_test_index

	la t1, scheduler__test_setup_ptr
	ld t1, (t1)
	j scheduler__execute_test


# Entry point for scheduling next test
scheduler__dispatch:

# Setup scheduler panic handler before dispatching

# Save MIE to MPIE, then clear MIE to prevent interrupts
# while mtvec points at scheduler__panic.
	csrrci t0, mstatus, (1 << 3)  # Read old mstatus, clear MIE
	andi t0, t0, (1 << 3)         # Extract old MIE
	slli t0, t0, 4                # Shift to MPIE position (bit 7)
	csrs mstatus, t0              # Set MPIE = old MIE

	la t0, scheduler__panic
	csrrw t0, mtvec, t0
	sd t0, 384(tp)       # scheduler__saved_stvec


scheduler__csr_read_randomization:
	csrr t0, stval
	csrr t0, stvec
	csrr t0, sip
	csrr t0, mscratch
	csrr t0, mconfigptr
	csrr t0, stvec
	csrr t0, stval


# (num_runs == 0) goto scheduler__finished
scheduler__load_num_runs:
	ld t1, 400(tp)                     # num_runs
	beqz t1, scheduler__finished

scheduler__decrement_num_runs:
	addi t2, t1, -1
	sd t2, 400(tp)                     # num_runs

# Store current test index for RVCP messages
# Look up discrete test index from dtest_index_map[t2]
	la t3, dtest_index_map
	slli t4, t2, 2  # t4 = t2 * 4 (word size)
	add t3, t3, t4
	lw t3, 0(t3)   # t3 = dtest_index_map[t2]
	sd t3, 392(tp)           # current_test_index

scheduler__calc_test_pointer:
	slli t0, t2, 3

# t1 = os_test_sequence[(--num_runs) * 8]
scheduler__load_test_addr:
	la t1, os_test_sequence
	add t0, t0, t1
	ld t1, 0(t0)


# Jump to test. Test address should be loaded into t1 before running
scheduler__execute_test:

	ld t0, 384(tp)       # scheduler__saved_stvec
	csrw mtvec, t0

# Exit hart context
	csrrw tp, mscratch, tp
	li tp, 0


# Restore MIE from MPIE
	csrr t0, mstatus              # Read mstatus
	andi t0, t0, (1 << 7)         # Extract MPIE
	srli t0, t0, 4                # Shift to MIE position (bit 3)
	csrs mstatus, t0              # Set MIE = old MPIE
	jr t1


# Exit point for scheduler; only ran when all tests are finished
scheduler__finished:

	li gp, 1
	j eot__end_test


# Panic point for scheduler; If an exception occurs during scheduling, it causes the test to end immediately. Only internal errors should happen here.
# Interrupts are disabled during scheduling and resumed when the scheduler is fininished.

scheduler__panic:
	li gp, 0
	j eot__end_test


# Additional scheduler routines


# scheduler-local variables

	.balign 8, 0
num_runs:
	.dword 169

	.balign 8, 0
os_test_sequence:
	.dword test_cleanup
	.dword SID_ZKT_07_MULH
	.dword SID_ZKT_05_SRLW
	.dword SID_ZKT_08_PACKH
	.dword SID_ZKT_03_ANDI
	.dword SID_ZKT_08_REV8
	.dword SID_ZKT_09_CZERO_NEZ
	.dword SID_ZKT_08_XNOR
	.dword SID_ZKT_03_SLTIU
	.dword SID_ZKT_08_PACK
	.dword SID_ZKT_03_SRAIW
	.dword SID_ZKT_08_XPERM4
	.dword SID_ZKT_05_SRA
	.dword SID_ZKT_05_OR
	.dword SID_ZKT_07_MULHU
	.dword SID_ZKT_08_ROLW
	.dword SID_ZKT_05_SUB
	.dword SID_ZKT_08_ORN
	.dword SID_ZKT_09_CZERO_NEZ
	.dword SID_ZKT_03_SRAI
	.dword SID_ZKT_08_RORI
	.dword SID_ZKT_08_ORN
	.dword SID_ZKT_03_SRAIW
	.dword SID_ZKT_05_AND
	.dword SID_ZKT_03_XORI
	.dword SID_ZKT_03_SLTIU
	.dword SID_ZKT_04
	.dword SID_ZKT_08_ROR
	.dword SID_ZKT_03_ANDI
	.dword SID_ZKT_08_PACK
	.dword SID_ZKT_05_SLTU
	.dword SID_ZKT_05_SLL
	.dword SID_ZKT_08_CLMULH
	.dword SID_ZKT_08_CLMULH
	.dword SID_ZKT_08_RORW
	.dword SID_ZKT_07_MUL
	.dword SID_ZKT_08_PACK
	.dword SID_ZKT_05_SUB
	.dword SID_ZKT_08_REV8
	.dword SID_ZKT_05_ADD
	.dword SID_ZKT_05_ADDW
	.dword SID_ZKT_08_XPERM8
	.dword SID_ZKT_09_CZERO_EQZ
	.dword SID_ZKT_05_ADDW
	.dword SID_ZKT_03_SRAI
	.dword SID_ZKT_08_ROR
	.dword SID_ZKT_08_ANDN
	.dword SID_ZKT_03_SLLIW
	.dword SID_ZKT_03_SLTI
	.dword SID_ZKT_03_ADDIW
	.dword SID_ZKT_05_SUBW
	.dword SID_ZKT_05_AND
	.dword SID_ZKT_07_MULHSU
	.dword SID_ZKT_08_PACKH
	.dword SID_ZKT_05_SRAW
	.dword SID_ZKT_07_MULHSU
	.dword SID_ZKT_03_SLLIW
	.dword SID_ZKT_08_RORIW
	.dword SID_ZKT_03_ORI
	.dword SID_ZKT_05_SLLW
	.dword SID_ZKT_06
	.dword SID_ZKT_07_MULHSU
	.dword SID_ZKT_08_ANDN
	.dword SID_ZKT_08_ORN
	.dword SID_ZKT_04
	.dword SID_ZKT_07_MUL
	.dword SID_ZKT_08_PACKH
	.dword SID_ZKT_03_SRLI
	.dword SID_ZKT_02
	.dword SID_ZKT_03_SRAI
	.dword SID_ZKT_08_PACKW
	.dword SID_ZKT_08_ROL
	.dword SID_ZKT_03_SLLI
	.dword SID_ZKT_05_SUBW
	.dword SID_ZKT_03_SRAIW
	.dword SID_ZKT_08_RORI
	.dword SID_ZKT_05_XOR
	.dword SID_ZKT_03_ADDI
	.dword SID_ZKT_05_XOR
	.dword SID_ZKT_05_SRAW
	.dword SID_ZKT_07_MULH
	.dword SID_ZKT_05_SRA
	.dword SID_ZKT_03_ANDI
	.dword SID_ZKT_03_XORI
	.dword SID_ZKT_09_CZERO_EQZ
	.dword SID_ZKT_08_RORW
	.dword SID_ZKT_03_SLTIU
	.dword SID_ZKT_05_ADD
	.dword SID_ZKT_05_SRLW
	.dword SID_ZKT_05_OR
	.dword SID_ZKT_05_ADD
	.dword SID_ZKT_03_SLLI
	.dword SID_ZKT_07_MULW
	.dword SID_ZKT_08_ROLW
	.dword SID_ZKT_05_SLL
	.dword SID_ZKT_03_ADDIW
	.dword SID_ZKT_05_XOR
	.dword SID_ZKT_03_ADDI
	.dword SID_ZKT_07_MULHU
	.dword SID_ZKT_05_SUB
	.dword SID_ZKT_08_ROL
	.dword SID_ZKT_05_SRL
	.dword SID_ZKT_05_ADDW
	.dword SID_ZKT_03_SRLIW
	.dword SID_ZKT_03_SRLIW
	.dword SID_ZKT_08_BREV8
	.dword SID_ZKT_05_SRLW
	.dword SID_ZKT_07_MULW
	.dword SID_ZKT_08_CLMUL
	.dword SID_ZKT_05_SLT
	.dword SID_ZKT_05_SRL
	.dword SID_ZKT_06
	.dword SID_ZKT_08_BREV8
	.dword SID_ZKT_04
	.dword SID_ZKT_07_MUL
	.dword SID_ZKT_03_ORI
	.dword SID_ZKT_03_SRLIW
	.dword SID_ZKT_08_PACKW
	.dword SID_ZKT_06
	.dword SID_ZKT_05_SUBW
	.dword SID_ZKT_03_SLLI
	.dword SID_ZKT_03_XORI
	.dword SID_ZKT_05_SLLW
	.dword SID_ZKT_08_XPERM8
	.dword SID_ZKT_05_OR
	.dword SID_ZKT_08_RORW
	.dword SID_ZKT_07_MULW
	.dword SID_ZKT_08_BREV8
	.dword SID_ZKT_09_CZERO_NEZ
	.dword SID_ZKT_05_AND
	.dword SID_ZKT_08_XPERM8
	.dword SID_ZKT_08_RORIW
	.dword SID_ZKT_08_ROLW
	.dword SID_ZKT_05_SRAW
	.dword SID_ZKT_05_SLTU
	.dword SID_ZKT_09_CZERO_EQZ
	.dword SID_ZKT_08_CLMULH
	.dword SID_ZKT_05_SLT
	.dword SID_ZKT_08_RORIW
	.dword SID_ZKT_08_XNOR
	.dword SID_ZKT_08_CLMUL
	.dword SID_ZKT_05_SLT
	.dword SID_ZKT_08_REV8
	.dword SID_ZKT_02
	.dword SID_ZKT_08_ANDN
	.dword SID_ZKT_03_SLTI
	.dword SID_ZKT_03_ADDI
	.dword SID_ZKT_08_PACKW
	.dword SID_ZKT_05_SLLW
	.dword SID_ZKT_03_SRLI
	.dword SID_ZKT_05_SLTU
	.dword SID_ZKT_05_SRA
	.dword SID_ZKT_08_XPERM4
	.dword SID_ZKT_02
	.dword SID_ZKT_08_CLMUL
	.dword SID_ZKT_07_MULHU
	.dword SID_ZKT_03_SLTI
	.dword SID_ZKT_08_ROL
	.dword SID_ZKT_03_SRLI
	.dword SID_ZKT_05_SLL
	.dword SID_ZKT_07_MULH
	.dword SID_ZKT_08_ROR
	.dword SID_ZKT_08_XPERM4
	.dword SID_ZKT_08_RORI
	.dword SID_ZKT_03_ADDIW
	.dword SID_ZKT_05_SRL
	.dword SID_ZKT_03_ORI
	.dword SID_ZKT_08_XNOR
	.dword SID_ZKT_03_SLLIW

	.balign 8, 0
dtest_descriptor_table:
	.dword dtest_name_0
	.dword dtest_name_1
	.dword dtest_name_2
	.dword dtest_name_3
	.dword dtest_name_4
	.dword dtest_name_5
	.dword dtest_name_6
	.dword dtest_name_7
	.dword dtest_name_8
	.dword dtest_name_9
	.dword dtest_name_10
	.dword dtest_name_11
	.dword dtest_name_12
	.dword dtest_name_13
	.dword dtest_name_14
	.dword dtest_name_15
	.dword dtest_name_16
	.dword dtest_name_17
	.dword dtest_name_18
	.dword dtest_name_19
	.dword dtest_name_20
	.dword dtest_name_21
	.dword dtest_name_22
	.dword dtest_name_23
	.dword dtest_name_24
	.dword dtest_name_25
	.dword dtest_name_26
	.dword dtest_name_27
	.dword dtest_name_28
	.dword dtest_name_29
	.dword dtest_name_30
	.dword dtest_name_31
	.dword dtest_name_32
	.dword dtest_name_33
	.dword dtest_name_34
	.dword dtest_name_35
	.dword dtest_name_36
	.dword dtest_name_37
	.dword dtest_name_38
	.dword dtest_name_39
	.dword dtest_name_40
	.dword dtest_name_41
	.dword dtest_name_42
	.dword dtest_name_43
	.dword dtest_name_44
	.dword dtest_name_45
	.dword dtest_name_46
	.dword dtest_name_47
	.dword dtest_name_48
	.dword dtest_name_49
	.dword dtest_name_50
	.dword dtest_name_51
	.dword dtest_name_52
	.dword dtest_name_53
	.dword dtest_name_54
	.dword dtest_name_55

# Test name strings
	dtest_name_0: .asciz "SID_ZKT_02"
	dtest_name_1: .asciz "SID_ZKT_03_ADDI"
	dtest_name_2: .asciz "SID_ZKT_03_SLTI"
	dtest_name_3: .asciz "SID_ZKT_03_SLTIU"
	dtest_name_4: .asciz "SID_ZKT_03_XORI"
	dtest_name_5: .asciz "SID_ZKT_03_ORI"
	dtest_name_6: .asciz "SID_ZKT_03_ANDI"
	dtest_name_7: .asciz "SID_ZKT_03_SLLI"
	dtest_name_8: .asciz "SID_ZKT_03_SRLI"
	dtest_name_9: .asciz "SID_ZKT_03_SRAI"
	dtest_name_10: .asciz "SID_ZKT_03_ADDIW"
	dtest_name_11: .asciz "SID_ZKT_03_SLLIW"
	dtest_name_12: .asciz "SID_ZKT_03_SRLIW"
	dtest_name_13: .asciz "SID_ZKT_03_SRAIW"
	dtest_name_14: .asciz "SID_ZKT_04"
	dtest_name_15: .asciz "SID_ZKT_05_ADD"
	dtest_name_16: .asciz "SID_ZKT_05_SUB"
	dtest_name_17: .asciz "SID_ZKT_05_SLL"
	dtest_name_18: .asciz "SID_ZKT_05_SLT"
	dtest_name_19: .asciz "SID_ZKT_05_SLTU"
	dtest_name_20: .asciz "SID_ZKT_05_XOR"
	dtest_name_21: .asciz "SID_ZKT_05_SRL"
	dtest_name_22: .asciz "SID_ZKT_05_SRA"
	dtest_name_23: .asciz "SID_ZKT_05_OR"
	dtest_name_24: .asciz "SID_ZKT_05_AND"
	dtest_name_25: .asciz "SID_ZKT_05_ADDW"
	dtest_name_26: .asciz "SID_ZKT_05_SUBW"
	dtest_name_27: .asciz "SID_ZKT_05_SLLW"
	dtest_name_28: .asciz "SID_ZKT_05_SRLW"
	dtest_name_29: .asciz "SID_ZKT_05_SRAW"
	dtest_name_30: .asciz "SID_ZKT_06"
	dtest_name_31: .asciz "SID_ZKT_07_MUL"
	dtest_name_32: .asciz "SID_ZKT_07_MULH"
	dtest_name_33: .asciz "SID_ZKT_07_MULHU"
	dtest_name_34: .asciz "SID_ZKT_07_MULHSU"
	dtest_name_35: .asciz "SID_ZKT_07_MULW"
	dtest_name_36: .asciz "SID_ZKT_08_CLMUL"
	dtest_name_37: .asciz "SID_ZKT_08_CLMULH"
	dtest_name_38: .asciz "SID_ZKT_08_XPERM4"
	dtest_name_39: .asciz "SID_ZKT_08_XPERM8"
	dtest_name_40: .asciz "SID_ZKT_08_ROR"
	dtest_name_41: .asciz "SID_ZKT_08_ROL"
	dtest_name_42: .asciz "SID_ZKT_08_RORI"
	dtest_name_43: .asciz "SID_ZKT_08_RORW"
	dtest_name_44: .asciz "SID_ZKT_08_ROLW"
	dtest_name_45: .asciz "SID_ZKT_08_RORIW"
	dtest_name_46: .asciz "SID_ZKT_08_ANDN"
	dtest_name_47: .asciz "SID_ZKT_08_ORN"
	dtest_name_48: .asciz "SID_ZKT_08_XNOR"
	dtest_name_49: .asciz "SID_ZKT_08_PACK"
	dtest_name_50: .asciz "SID_ZKT_08_PACKH"
	dtest_name_51: .asciz "SID_ZKT_08_PACKW"
	dtest_name_52: .asciz "SID_ZKT_08_BREV8"
	dtest_name_53: .asciz "SID_ZKT_08_REV8"
	dtest_name_54: .asciz "SID_ZKT_09_CZERO_EQZ"
	dtest_name_55: .asciz "SID_ZKT_09_CZERO_NEZ"

# Lookup table: os_test_sequence position -> discrete test index
	.balign 4, 0
dtest_index_map:
	.word 0xFFFFFFFF  # Position 0 = test_cleanup
	.word 32  # SID_ZKT_07_MULH
	.word 28  # SID_ZKT_05_SRLW
	.word 50  # SID_ZKT_08_PACKH
	.word 6  # SID_ZKT_03_ANDI
	.word 53  # SID_ZKT_08_REV8
	.word 55  # SID_ZKT_09_CZERO_NEZ
	.word 48  # SID_ZKT_08_XNOR
	.word 3  # SID_ZKT_03_SLTIU
	.word 49  # SID_ZKT_08_PACK
	.word 13  # SID_ZKT_03_SRAIW
	.word 38  # SID_ZKT_08_XPERM4
	.word 22  # SID_ZKT_05_SRA
	.word 23  # SID_ZKT_05_OR
	.word 33  # SID_ZKT_07_MULHU
	.word 44  # SID_ZKT_08_ROLW
	.word 16  # SID_ZKT_05_SUB
	.word 47  # SID_ZKT_08_ORN
	.word 55  # SID_ZKT_09_CZERO_NEZ
	.word 9  # SID_ZKT_03_SRAI
	.word 42  # SID_ZKT_08_RORI
	.word 47  # SID_ZKT_08_ORN
	.word 13  # SID_ZKT_03_SRAIW
	.word 24  # SID_ZKT_05_AND
	.word 4  # SID_ZKT_03_XORI
	.word 3  # SID_ZKT_03_SLTIU
	.word 14  # SID_ZKT_04
	.word 40  # SID_ZKT_08_ROR
	.word 6  # SID_ZKT_03_ANDI
	.word 49  # SID_ZKT_08_PACK
	.word 19  # SID_ZKT_05_SLTU
	.word 17  # SID_ZKT_05_SLL
	.word 37  # SID_ZKT_08_CLMULH
	.word 37  # SID_ZKT_08_CLMULH
	.word 43  # SID_ZKT_08_RORW
	.word 31  # SID_ZKT_07_MUL
	.word 49  # SID_ZKT_08_PACK
	.word 16  # SID_ZKT_05_SUB
	.word 53  # SID_ZKT_08_REV8
	.word 15  # SID_ZKT_05_ADD
	.word 25  # SID_ZKT_05_ADDW
	.word 39  # SID_ZKT_08_XPERM8
	.word 54  # SID_ZKT_09_CZERO_EQZ
	.word 25  # SID_ZKT_05_ADDW
	.word 9  # SID_ZKT_03_SRAI
	.word 40  # SID_ZKT_08_ROR
	.word 46  # SID_ZKT_08_ANDN
	.word 11  # SID_ZKT_03_SLLIW
	.word 2  # SID_ZKT_03_SLTI
	.word 10  # SID_ZKT_03_ADDIW
	.word 26  # SID_ZKT_05_SUBW
	.word 24  # SID_ZKT_05_AND
	.word 34  # SID_ZKT_07_MULHSU
	.word 50  # SID_ZKT_08_PACKH
	.word 29  # SID_ZKT_05_SRAW
	.word 34  # SID_ZKT_07_MULHSU
	.word 11  # SID_ZKT_03_SLLIW
	.word 45  # SID_ZKT_08_RORIW
	.word 5  # SID_ZKT_03_ORI
	.word 27  # SID_ZKT_05_SLLW
	.word 30  # SID_ZKT_06
	.word 34  # SID_ZKT_07_MULHSU
	.word 46  # SID_ZKT_08_ANDN
	.word 47  # SID_ZKT_08_ORN
	.word 14  # SID_ZKT_04
	.word 31  # SID_ZKT_07_MUL
	.word 50  # SID_ZKT_08_PACKH
	.word 8  # SID_ZKT_03_SRLI
	.word 0  # SID_ZKT_02
	.word 9  # SID_ZKT_03_SRAI
	.word 51  # SID_ZKT_08_PACKW
	.word 41  # SID_ZKT_08_ROL
	.word 7  # SID_ZKT_03_SLLI
	.word 26  # SID_ZKT_05_SUBW
	.word 13  # SID_ZKT_03_SRAIW
	.word 42  # SID_ZKT_08_RORI
	.word 20  # SID_ZKT_05_XOR
	.word 1  # SID_ZKT_03_ADDI
	.word 20  # SID_ZKT_05_XOR
	.word 29  # SID_ZKT_05_SRAW
	.word 32  # SID_ZKT_07_MULH
	.word 22  # SID_ZKT_05_SRA
	.word 6  # SID_ZKT_03_ANDI
	.word 4  # SID_ZKT_03_XORI
	.word 54  # SID_ZKT_09_CZERO_EQZ
	.word 43  # SID_ZKT_08_RORW
	.word 3  # SID_ZKT_03_SLTIU
	.word 15  # SID_ZKT_05_ADD
	.word 28  # SID_ZKT_05_SRLW
	.word 23  # SID_ZKT_05_OR
	.word 15  # SID_ZKT_05_ADD
	.word 7  # SID_ZKT_03_SLLI
	.word 35  # SID_ZKT_07_MULW
	.word 44  # SID_ZKT_08_ROLW
	.word 17  # SID_ZKT_05_SLL
	.word 10  # SID_ZKT_03_ADDIW
	.word 20  # SID_ZKT_05_XOR
	.word 1  # SID_ZKT_03_ADDI
	.word 33  # SID_ZKT_07_MULHU
	.word 16  # SID_ZKT_05_SUB
	.word 41  # SID_ZKT_08_ROL
	.word 21  # SID_ZKT_05_SRL
	.word 25  # SID_ZKT_05_ADDW
	.word 12  # SID_ZKT_03_SRLIW
	.word 12  # SID_ZKT_03_SRLIW
	.word 52  # SID_ZKT_08_BREV8
	.word 28  # SID_ZKT_05_SRLW
	.word 35  # SID_ZKT_07_MULW
	.word 36  # SID_ZKT_08_CLMUL
	.word 18  # SID_ZKT_05_SLT
	.word 21  # SID_ZKT_05_SRL
	.word 30  # SID_ZKT_06
	.word 52  # SID_ZKT_08_BREV8
	.word 14  # SID_ZKT_04
	.word 31  # SID_ZKT_07_MUL
	.word 5  # SID_ZKT_03_ORI
	.word 12  # SID_ZKT_03_SRLIW
	.word 51  # SID_ZKT_08_PACKW
	.word 30  # SID_ZKT_06
	.word 26  # SID_ZKT_05_SUBW
	.word 7  # SID_ZKT_03_SLLI
	.word 4  # SID_ZKT_03_XORI
	.word 27  # SID_ZKT_05_SLLW
	.word 39  # SID_ZKT_08_XPERM8
	.word 23  # SID_ZKT_05_OR
	.word 43  # SID_ZKT_08_RORW
	.word 35  # SID_ZKT_07_MULW
	.word 52  # SID_ZKT_08_BREV8
	.word 55  # SID_ZKT_09_CZERO_NEZ
	.word 24  # SID_ZKT_05_AND
	.word 39  # SID_ZKT_08_XPERM8
	.word 45  # SID_ZKT_08_RORIW
	.word 44  # SID_ZKT_08_ROLW
	.word 29  # SID_ZKT_05_SRAW
	.word 19  # SID_ZKT_05_SLTU
	.word 54  # SID_ZKT_09_CZERO_EQZ
	.word 37  # SID_ZKT_08_CLMULH
	.word 18  # SID_ZKT_05_SLT
	.word 45  # SID_ZKT_08_RORIW
	.word 48  # SID_ZKT_08_XNOR
	.word 36  # SID_ZKT_08_CLMUL
	.word 18  # SID_ZKT_05_SLT
	.word 53  # SID_ZKT_08_REV8
	.word 0  # SID_ZKT_02
	.word 46  # SID_ZKT_08_ANDN
	.word 2  # SID_ZKT_03_SLTI
	.word 1  # SID_ZKT_03_ADDI
	.word 51  # SID_ZKT_08_PACKW
	.word 27  # SID_ZKT_05_SLLW
	.word 8  # SID_ZKT_03_SRLI
	.word 19  # SID_ZKT_05_SLTU
	.word 22  # SID_ZKT_05_SRA
	.word 38  # SID_ZKT_08_XPERM4
	.word 0  # SID_ZKT_02
	.word 36  # SID_ZKT_08_CLMUL
	.word 33  # SID_ZKT_07_MULHU
	.word 2  # SID_ZKT_03_SLTI
	.word 41  # SID_ZKT_08_ROL
	.word 8  # SID_ZKT_03_SRLI
	.word 17  # SID_ZKT_05_SLL
	.word 32  # SID_ZKT_07_MULH
	.word 40  # SID_ZKT_08_ROR
	.word 38  # SID_ZKT_08_XPERM4
	.word 42  # SID_ZKT_08_RORI
	.word 10  # SID_ZKT_03_ADDIW
	.word 21  # SID_ZKT_05_SRL
	.word 5  # SID_ZKT_03_ORI
	.word 48  # SID_ZKT_08_XNOR
	.word 11  # SID_ZKT_03_SLLIW


# test pointers
	.balign 8, 0
scheduler__test_setup_ptr:
	.dword test_setup
scheduler__test_cleanup_ptr:
	.dword test_cleanup


