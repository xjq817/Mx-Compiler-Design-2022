	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	0
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	0
	mv		ASM.Operand.ASMVirtualRegister@617c74e5,	s0
	mv		ASM.Operand.ASMVirtualRegister@6537cf78,	s1
	mv		ASM.Operand.ASMVirtualRegister@67b6d4ae,	s2
	mv		ASM.Operand.ASMVirtualRegister@34b7bfc0,	s3
	mv		ASM.Operand.ASMVirtualRegister@366e2eef,	s4
	mv		ASM.Operand.ASMVirtualRegister@6df97b55,	s5
	mv		ASM.Operand.ASMVirtualRegister@3cbbc1e0,	s6
	mv		ASM.Operand.ASMVirtualRegister@35fb3008,	s7
	mv		ASM.Operand.ASMVirtualRegister@7225790e,	s8
	mv		ASM.Operand.ASMVirtualRegister@54a097cc,	s9
	mv		ASM.Operand.ASMVirtualRegister@36f6e879,	s10
	mv		ASM.Operand.ASMVirtualRegister@5a61f5df,	s11
	li		ASM.Operand.ASMVirtualRegister@52af6cff,	0
	mv		ASM.Operand.ASMVirtualRegister@735b478,	ASM.Operand.ASMVirtualRegister@52af6cff
	li		ASM.Operand.ASMVirtualRegister@2c9f9fb0,	0
	mv		ASM.Operand.ASMVirtualRegister@2096442d,	ASM.Operand.ASMVirtualRegister@2c9f9fb0
	li		ASM.Operand.ASMVirtualRegister@9f70c54,	0
	mv		ASM.Operand.ASMVirtualRegister@234bef66,	ASM.Operand.ASMVirtualRegister@9f70c54
	j		.main.0_for_condition
.main.0_for_condition:
	mv		ASM.Operand.ASMVirtualRegister@61dc03ce,	ASM.Operand.ASMVirtualRegister@234bef66
	li		ASM.Operand.ASMVirtualRegister@50f8360d,	10
	slt		ASM.Operand.ASMVirtualRegister@13c78c0b,	ASM.Operand.ASMVirtualRegister@61dc03ce,	ASM.Operand.ASMVirtualRegister@50f8360d
	beqz	ASM.Operand.ASMVirtualRegister@13c78c0b,	.main.0_for_terminate
	j		.main.0_for_loop
.main.0_for_loop:
	li		ASM.Operand.ASMVirtualRegister@12843fce,	0
	mv		ASM.Operand.ASMVirtualRegister@3dd3bcd,	ASM.Operand.ASMVirtualRegister@12843fce
	j		.main.1_for_condition
.main.1_for_condition:
	mv		ASM.Operand.ASMVirtualRegister@97e1986,	ASM.Operand.ASMVirtualRegister@3dd3bcd
	li		ASM.Operand.ASMVirtualRegister@26f67b76,	10
	slt		ASM.Operand.ASMVirtualRegister@153f5a29,	ASM.Operand.ASMVirtualRegister@97e1986,	ASM.Operand.ASMVirtualRegister@26f67b76
	beqz	ASM.Operand.ASMVirtualRegister@153f5a29,	.main.1_for_terminate
	j		.main.1_for_loop
.main.1_for_loop:
	mv		ASM.Operand.ASMVirtualRegister@7f560810,	ASM.Operand.ASMVirtualRegister@2096442d
	mv		ASM.Operand.ASMVirtualRegister@69d9c55,	ASM.Operand.ASMVirtualRegister@2096442d
	li		ASM.Operand.ASMVirtualRegister@13a57a3b,	1
	add		ASM.Operand.ASMVirtualRegister@7ca48474,	ASM.Operand.ASMVirtualRegister@7f560810,	ASM.Operand.ASMVirtualRegister@13a57a3b
	mv		ASM.Operand.ASMVirtualRegister@2096442d,	ASM.Operand.ASMVirtualRegister@7ca48474
	j		.main.1_for_execution
.main.1_for_execution:
	mv		ASM.Operand.ASMVirtualRegister@337d0578,	ASM.Operand.ASMVirtualRegister@3dd3bcd
	mv		ASM.Operand.ASMVirtualRegister@59e84876,	ASM.Operand.ASMVirtualRegister@3dd3bcd
	li		ASM.Operand.ASMVirtualRegister@61a485d2,	1
	add		ASM.Operand.ASMVirtualRegister@39fb3ab6,	ASM.Operand.ASMVirtualRegister@337d0578,	ASM.Operand.ASMVirtualRegister@61a485d2
	mv		ASM.Operand.ASMVirtualRegister@3dd3bcd,	ASM.Operand.ASMVirtualRegister@39fb3ab6
	j		.main.1_for_condition
.main.1_for_terminate:
	j		.main.0_for_execution
.main.0_for_execution:
	mv		ASM.Operand.ASMVirtualRegister@6276ae34,	ASM.Operand.ASMVirtualRegister@234bef66
	mv		ASM.Operand.ASMVirtualRegister@7946e1f4,	ASM.Operand.ASMVirtualRegister@234bef66
	li		ASM.Operand.ASMVirtualRegister@3c09711b,	1
	add		ASM.Operand.ASMVirtualRegister@5cc7c2a6,	ASM.Operand.ASMVirtualRegister@6276ae34,	ASM.Operand.ASMVirtualRegister@3c09711b
	mv		ASM.Operand.ASMVirtualRegister@234bef66,	ASM.Operand.ASMVirtualRegister@5cc7c2a6
	j		.main.0_for_condition
.main.0_for_terminate:
	mv		ASM.Operand.ASMVirtualRegister@b97c004,	ASM.Operand.ASMVirtualRegister@2096442d
	mv		a0,	ASM.Operand.ASMVirtualRegister@b97c004
	call	printlnInt
	li		ASM.Operand.ASMVirtualRegister@32e6e9c3,	0
	mv		ASM.Operand.ASMVirtualRegister@735b478,	ASM.Operand.ASMVirtualRegister@32e6e9c3
	j		.main.return
.main.return:
	mv		ASM.Operand.ASMVirtualRegister@5056dfcb,	ASM.Operand.ASMVirtualRegister@735b478
	mv		s0,	ASM.Operand.ASMVirtualRegister@617c74e5
	mv		s1,	ASM.Operand.ASMVirtualRegister@6537cf78
	mv		s2,	ASM.Operand.ASMVirtualRegister@67b6d4ae
	mv		s3,	ASM.Operand.ASMVirtualRegister@34b7bfc0
	mv		s4,	ASM.Operand.ASMVirtualRegister@366e2eef
	mv		s5,	ASM.Operand.ASMVirtualRegister@6df97b55
	mv		s6,	ASM.Operand.ASMVirtualRegister@3cbbc1e0
	mv		s7,	ASM.Operand.ASMVirtualRegister@35fb3008
	mv		s8,	ASM.Operand.ASMVirtualRegister@7225790e
	mv		s9,	ASM.Operand.ASMVirtualRegister@54a097cc
	mv		s10,	ASM.Operand.ASMVirtualRegister@36f6e879
	mv		s11,	ASM.Operand.ASMVirtualRegister@5a61f5df
	mv		a0,	ASM.Operand.ASMVirtualRegister@5056dfcb
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	0
	ret
	.size	main,	.-main

	.section	.bss
	.section	.rodata