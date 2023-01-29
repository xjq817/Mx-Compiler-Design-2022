	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-424
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	424
	call	__global_init_0
	addi	t0,	sp,	8
	sw		t0,	20(sp)
	li		t0,	0
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	12
	sw		t0,	28(sp)
	la		t0,	a
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	40(sp)
	li		t0,	-1
	sw		t0,	44(sp)
	li		t0,	4
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t2,	44(sp)
	mul		t0,	t1,	t2
	sw		t0,	48(sp)
	lw		t1,	40(sp)
	lw		t2,	48(sp)
	add		t0,	t1,	t2
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	li		t0,	4
	sw		t0,	60(sp)
	lw		t1,	56(sp)
	lw		t2,	60(sp)
	mul		t0,	t1,	t2
	sw		t0,	64(sp)
	li		t0,	4
	sw		t0,	68(sp)
	lw		t1,	64(sp)
	lw		t2,	68(sp)
	add		t0,	t1,	t2
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	mv		t0,	t1
	sw		t0,	80(sp)
	lw		t1,	56(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	84(sp)
	li		t0,	1
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t2,	84(sp)
	mul		t0,	t1,	t2
	sw		t0,	88(sp)
	lw		t1,	76(sp)
	lw		t2,	88(sp)
	add		t0,	t1,	t2
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	mv		t0,	t1
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	100(sp)
	li		t0,	0
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	li		t0,	0
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	j		.main.0_for_condition
.main.0_for_condition:
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	116(sp)
	la		t0,	a
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	mv		t0,	t1
	sw		t0,	128(sp)
	li		t0,	-1
	sw		t0,	132(sp)
	li		t0,	4
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	lw		t2,	132(sp)
	mul		t0,	t1,	t2
	sw		t0,	136(sp)
	lw		t1,	128(sp)
	lw		t2,	136(sp)
	add		t0,	t1,	t2
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	lw		t0,	0(t1)
	sw		t0,	144(sp)
	lw		t1,	116(sp)
	lw		t2,	144(sp)
	slt		t0,	t1,	t2
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	beqz	t1,	.main.0_for_terminate
.main.0_for_loop:
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	152(sp)
	la		t0,	a
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	li		t0,	4
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t2,	152(sp)
	mul		t0,	t1,	t2
	sw		t0,	164(sp)
	lw		t1,	160(sp)
	lw		t2,	164(sp)
	add		t0,	t1,	t2
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	li		t0,	0
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	lw		t2,	168(sp)
	sw		t1,	0(t2)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	180(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	li		t0,	4
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	lw		t2,	180(sp)
	mul		t0,	t1,	t2
	sw		t0,	188(sp)
	lw		t1,	184(sp)
	lw		t2,	188(sp)
	add		t0,	t1,	t2
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	lw		t0,	0(t1)
	sw		t0,	196(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	lw		t2,	192(sp)
	sw		t1,	0(t2)
	j		.main.0_for_execution
.main.0_for_execution:
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	204(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	li		t0,	1
	sw		t0,	212(sp)
	lw		t1,	204(sp)
	lw		t2,	212(sp)
	add		t0,	t1,	t2
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	j		.main.0_for_condition
.main.0_for_terminate:
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	220(sp)
	li		t0,	0
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	j		.main.1_for_condition
.main.1_for_condition:
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	228(sp)
	la		t0,	a
	sw		t0,	232(sp)
	lw		t1,	232(sp)
	lw		t0,	0(t1)
	sw		t0,	236(sp)
	lw		t1,	236(sp)
	mv		t0,	t1
	sw		t0,	240(sp)
	li		t0,	-1
	sw		t0,	244(sp)
	li		t0,	4
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t2,	244(sp)
	mul		t0,	t1,	t2
	sw		t0,	248(sp)
	lw		t1,	240(sp)
	lw		t2,	248(sp)
	add		t0,	t1,	t2
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	lw		t0,	0(t1)
	sw		t0,	256(sp)
	lw		t1,	228(sp)
	lw		t2,	256(sp)
	slt		t0,	t1,	t2
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	beqz	t1,	.main.1_for_terminate
.main.1_for_loop:
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	264(sp)
	la		t0,	a
	sw		t0,	268(sp)
	lw		t1,	268(sp)
	lw		t0,	0(t1)
	sw		t0,	272(sp)
	li		t0,	4
	sw		t0,	276(sp)
	lw		t1,	276(sp)
	lw		t2,	264(sp)
	mul		t0,	t1,	t2
	sw		t0,	276(sp)
	lw		t1,	272(sp)
	lw		t2,	276(sp)
	add		t0,	t1,	t2
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	lw		t0,	0(t1)
	sw		t0,	284(sp)
	lw		t1,	284(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	288(sp)
	lw		t1,	288(sp)
	mv		a0,	t1
	call	print
	j		.main.1_for_execution
.main.1_for_execution:
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	292(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	296(sp)
	li		t0,	1
	sw		t0,	300(sp)
	lw		t1,	292(sp)
	lw		t2,	300(sp)
	add		t0,	t1,	t2
	sw		t0,	304(sp)
	lw		t1,	304(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	j		.main.1_for_condition
.main.1_for_terminate:
	la		t0,	str.0
	sw		t0,	308(sp)
	lw		t1,	308(sp)
	mv		a0,	t1
	call	println
	la		t0,	a
	sw		t0,	312(sp)
	lw		t1,	312(sp)
	lw		t0,	0(t1)
	sw		t0,	316(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	320(sp)
	la		t0,	a
	sw		t0,	324(sp)
	lw		t1,	320(sp)
	lw		t2,	324(sp)
	sw		t1,	0(t2)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	328(sp)
	li		t0,	0
	sw		t0,	332(sp)
	lw		t1,	332(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	j		.main.2_for_condition
.main.2_for_condition:
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	336(sp)
	la		t0,	a
	sw		t0,	340(sp)
	lw		t1,	340(sp)
	lw		t0,	0(t1)
	sw		t0,	344(sp)
	lw		t1,	344(sp)
	mv		t0,	t1
	sw		t0,	348(sp)
	li		t0,	-1
	sw		t0,	352(sp)
	li		t0,	4
	sw		t0,	356(sp)
	lw		t1,	356(sp)
	lw		t2,	352(sp)
	mul		t0,	t1,	t2
	sw		t0,	356(sp)
	lw		t1,	348(sp)
	lw		t2,	356(sp)
	add		t0,	t1,	t2
	sw		t0,	360(sp)
	lw		t1,	360(sp)
	lw		t0,	0(t1)
	sw		t0,	364(sp)
	lw		t1,	336(sp)
	lw		t2,	364(sp)
	slt		t0,	t1,	t2
	sw		t0,	368(sp)
	lw		t1,	368(sp)
	beqz	t1,	.main.2_for_terminate
.main.2_for_loop:
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	372(sp)
	la		t0,	a
	sw		t0,	376(sp)
	lw		t1,	376(sp)
	lw		t0,	0(t1)
	sw		t0,	380(sp)
	li		t0,	4
	sw		t0,	384(sp)
	lw		t1,	384(sp)
	lw		t2,	372(sp)
	mul		t0,	t1,	t2
	sw		t0,	384(sp)
	lw		t1,	380(sp)
	lw		t2,	384(sp)
	add		t0,	t1,	t2
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	lw		t0,	0(t1)
	sw		t0,	392(sp)
	lw		t1,	392(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	396(sp)
	lw		t1,	396(sp)
	mv		a0,	t1
	call	print
	j		.main.2_for_execution
.main.2_for_execution:
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	400(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	404(sp)
	li		t0,	1
	sw		t0,	408(sp)
	lw		t1,	400(sp)
	lw		t2,	408(sp)
	add		t0,	t1,	t2
	sw		t0,	412(sp)
	lw		t1,	412(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	j		.main.2_for_condition
.main.2_for_terminate:
	li		t0,	0
	sw		t0,	416(sp)
	lw		t1,	416(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
	j		.main.return
.main.return:
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	420(sp)
	lw		t1,	420(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	424
	ret
	.size	main,	.-main

	.globl	__global_init_0
	.p2align	2
	.type	__global_init_0,@function

__global_init_0:
.__global_init_0.entry:
	addi	sp,	sp,	-60
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	60
	li		t0,	4
	sw		t0,	8(sp)
	li		t0,	4
	sw		t0,	12(sp)
	lw		t1,	8(sp)
	lw		t2,	12(sp)
	mul		t0,	t1,	t2
	sw		t0,	16(sp)
	li		t0,	4
	sw		t0,	20(sp)
	lw		t1,	16(sp)
	lw		t2,	20(sp)
	add		t0,	t1,	t2
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	mv		t0,	t1
	sw		t0,	32(sp)
	li		t0,	4
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	40(sp)
	li		t0,	1
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t2,	40(sp)
	mul		t0,	t1,	t2
	sw		t0,	44(sp)
	lw		t1,	28(sp)
	lw		t2,	44(sp)
	add		t0,	t1,	t2
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		t0,	t1
	sw		t0,	52(sp)
	la		t0,	a
	sw		t0,	56(sp)
	lw		t1,	52(sp)
	lw		t2,	56(sp)
	sw		t1,	0(t2)
	j		.__global_init_0.return
.__global_init_0.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	60
	ret
	.size	__global_init_0,	.-__global_init_0

	.section	.bss
	.globl	a
	.type	a,@object
a:
	.word	0
	.size	a,	4

	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	""
	.size	str.0,	1

