
.section .runtime, "ax"
	.globl _start
	.option norvc

_start:
loader__init_int_register:
	li x1, 0x0
	li x2, 0x0
	li x3, 0x0
	li x4, 0x0
	li x5, 0x0
	li x6, 0x0
	li x7, 0x0
	li x8, 0x0
	li x9, 0x0
	li x10, 0x0
	li x11, 0x0
	li x12, 0x0
	li x13, 0x0
	li x14, 0x0
	li x15, 0x0
	li x16, 0x0
	li x17, 0x0
	li x18, 0x0
	li x19, 0x0
	li x20, 0x0
	li x21, 0x0
	li x22, 0x0
	li x23, 0x0
	li x24, 0x0
	li x25, 0x0
	li x26, 0x0
	li x27, 0x0
	li x28, 0x0
	li x29, 0x0
	li x30, 0x0
	li x31, 0x0


loader__load_panic_address:
	la t0, eot__failed
	csrw mtvec, t0


loader__initialize_runtime:


loader__set_misa_bits:
	li t0, 0x40000000002011ad # OR in new MISA bits with existing value
	csrrs t0, misa, t0

# Set mstatus.SUM=1, enables accessing user pages from supervisor
# Set mstatus.FS = 01
# Set mstatus.VS = 01
# Interrupts enabled
# Supervisor interrupts enabled
loader__set_mstatus:
	li t0, 0x4220a
	csrrs t0, mstatus, t0

# Initialize FP and Vector registers if supported
loader__init_fp_registers:
	li t0, zero_data_pa
	fld   f0, 0(t0)
	fld   f1, 0(t0)
	fld   f2, 0(t0)
	fld   f3, 0(t0)
	fld   f4, 0(t0)
	fld   f5, 0(t0)
	fld   f6, 0(t0)
	fld   f7, 0(t0)
	fld   f8, 0(t0)
	fld   f9, 0(t0)
	fld   f10, 0(t0)
	fld   f11, 0(t0)
	fld   f12, 0(t0)
	fld   f13, 0(t0)
	fld   f14, 0(t0)
	fld   f15, 0(t0)
	fld   f16, 0(t0)
	fld   f17, 0(t0)
	fld   f18, 0(t0)
	fld   f19, 0(t0)
	fld   f20, 0(t0)
	fld   f21, 0(t0)
	fld   f22, 0(t0)
	fld   f23, 0(t0)
	fld   f24, 0(t0)
	fld   f25, 0(t0)
	fld   f26, 0(t0)
	fld   f27, 0(t0)
	fld   f28, 0(t0)
	fld   f29, 0(t0)
	fld   f30, 0(t0)
	fld   f31, 0(t0)

# Initialize Vector Registers
loader__init_vector_registers:
	li x4, 0x0
	li x5, 0x4
	li x6, 0xd8
	vsetvl x4,x5,x6
	vmv.v.x v0,  x0
	vmv.v.x v1,  x0
	vmv.v.x v2,  x0
	vmv.v.x v3,  x0
	vmv.v.x v4,  x0
	vmv.v.x v5,  x0
	vmv.v.x v6,  x0
	vmv.v.x v7,  x0
	vmv.v.x v8,  x0
	vmv.v.x v9,  x0
	vmv.v.x v10,  x0
	vmv.v.x v11,  x0
	vmv.v.x v12,  x0
	vmv.v.x v13,  x0
	vmv.v.x v14,  x0
	vmv.v.x v15,  x0
	vmv.v.x v16,  x0
	vmv.v.x v17,  x0
	vmv.v.x v18,  x0
	vmv.v.x v19,  x0
	vmv.v.x v20,  x0
	vmv.v.x v21,  x0
	vmv.v.x v22,  x0
	vmv.v.x v23,  x0
	vmv.v.x v24,  x0
	vmv.v.x v25,  x0
	vmv.v.x v26,  x0
	vmv.v.x v27,  x0
	vmv.v.x v28,  x0
	vmv.v.x v29,  x0
	vmv.v.x v30,  x0
	vmv.v.x v31,  x0


	li tp, hart_context_pa
	csrw mscratch, tp

	li tp, hart_context
	csrw sscratch, tp
	li tp, hart_context_pa


loader__setup_menvcfg:
loader__setup_medeleg:
	li t0, 0x925e4749b5750d1
	csrw medeleg, t0

loader__setup_mideleg:
	li t0, 0x280
	csrw mideleg, t0

loader__setup_tvec:
	la t0, trap_handler_m__trap_entry
	csrw mtvec, t0
	la t0, trap_handler_s__trap_entry
	csrw stvec, t0

loader__enable_paging:
# Enable paging by writing CSR SATP.MODE = Sv48 (1)
;os_sptbr = 0x16b415a7da000
	li x1, 0x90172016b415a7da
	csrw satp, x1
	RVMODEL_IO_INIT(t0, t1, t2)


loader__done:

	j scheduler__init

loader__panic:
	j eot__failed


