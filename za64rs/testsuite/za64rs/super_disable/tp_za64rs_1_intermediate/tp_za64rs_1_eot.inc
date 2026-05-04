

.section .runtime, "ax"
# End of test data
	.balign 8, 0
tohost_mutex:
	.dword 0;
tohost_addr_mem:
	.dword tohost

# End of Test
eot__end_test:

	li t0, 0x1
	beq t0, gp, eot__passed
	j eot__failed


eot__passed:

	fence iorw, iorw
	ld t0, tohost_addr_mem
	li t1, 0x1
	sw t1, 0(t0)

	j eot__halt


eot__failed:

# RVCP fail message (only for discrete tests)
	li a0, 1  # 1 = FAIL
	call rvcp_print_test_result

	fence iorw, iorw
	ld t0, tohost_addr_mem
	li t1, 0x3
	sw t1, 0(t0)

	j eot__halt


# Halt the test, all harts enter here into a wfi j loop.
eot__halt:

eot__halt_loop:
	wfi
	j eot__halt_loop


.section .io_htif, "aw"
	.balign 64, 0; .global tohost; tohost: .dword 0;
	.balign 64, 0; .global fromhost; fromhost: .dword 0;

