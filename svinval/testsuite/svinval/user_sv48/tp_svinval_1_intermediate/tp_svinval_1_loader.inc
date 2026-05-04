
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
	li t0, 0x0 # OR in new MISA bits with existing value
	csrrs t0, misa, t0

# Set mstatus.SUM=1, enables accessing user pages from supervisor
# Interrupts enabled
# Supervisor interrupts enabled
loader__set_mstatus:
	li t0, 0x4000a
	csrrs t0, mstatus, t0


	li tp, hart_context_pa
	csrw mscratch, tp


loader__setup_menvcfg:
loader__setup_tvec:
	la t0, trap_handler_m__trap_entry
	csrw mtvec, t0

loader__enable_paging:
# Enable paging by writing CSR SATP.MODE = Sv48 (1)
;os_sptbr = 0x44dde000
	li x1, 0x9000800000044dde
	csrw satp, x1
	RVMODEL_IO_INIT(t0, t1, t2)


loader__done:

	j scheduler__init

loader__panic:
	j eot__failed


