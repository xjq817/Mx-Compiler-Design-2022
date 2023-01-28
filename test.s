	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-404
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	404
	call	__global_init_0
	call	__global_init_1
	call	__global_init_2
	addi	t0,	sp,	8
	sw		t0,	24(sp)
	li		t0,	0
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	12
	sw		t0,	32(sp)
	li		t0,	0
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	li		t0,	1
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.main.0_for_condition
.main.0_for_condition:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	la		t0,	N
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t2,	48(sp)
	slt		t0,	t1,	t2
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	seqz	t0,	t1
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	beqz	t1,	.main.0_for_terminate
.main.0_for_loop:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	la		t0,	b
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	li		t0,	4
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	lw		t2,	64(sp)
	mul		t0,	t1,	t2
	sw		t0,	76(sp)
	lw		t1,	72(sp)
	lw		t2,	76(sp)
	add		t0,	t1,	t2
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	li		t0,	1
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.main.0_for_execution
.main.0_for_execution:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	li		t0,	1
	sw		t0,	100(sp)
	lw		t1,	92(sp)
	lw		t2,	100(sp)
	add		t0,	t1,	t2
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.main.0_for_condition
.main.0_for_terminate:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	li		t0,	2
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.main.1_for_condition
.main.1_for_condition:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	116(sp)
	la		t0,	N
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	lw		t2,	116(sp)
	slt		t0,	t1,	t2
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	seqz	t0,	t1
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	beqz	t1,	.main.1_for_terminate
.main.1_for_loop:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	la		t0,	b
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	li		t0,	4
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t2,	132(sp)
	mul		t0,	t1,	t2
	sw		t0,	144(sp)
	lw		t1,	140(sp)
	lw		t2,	144(sp)
	add		t0,	t1,	t2
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	lw		t0,	0(t1)
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	beqz	t1,	.main.2_if_terminate
.main.2_if_true:
	addi	t0,	sp,	16
	sw		t0,	156(sp)
	li		t0,	2
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	lw		t2,	156(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	20
	sw		t0,	164(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	li		t0,	3
	sw		t0,	172(sp)
	lw		t1,	172(sp)
	lw		t2,	168(sp)
	slt		t0,	t1,	t2
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	lw		t2,	164(sp)
	sw		t1,	0(t2)
	lw		t1,	176(sp)
	beqz	t1,	.main.3_and_terminate_block
.main.3_and_rhs_block:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	180(sp)
	li		t0,	2
	sw		t0,	184(sp)
	lw		t1,	180(sp)
	lw		t2,	184(sp)
	sub		t0,	t1,	t2
	sw		t0,	188(sp)
	la		t0,	b
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	lw		t0,	0(t1)
	sw		t0,	196(sp)
	li		t0,	4
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	lw		t2,	188(sp)
	mul		t0,	t1,	t2
	sw		t0,	200(sp)
	lw		t1,	196(sp)
	lw		t2,	200(sp)
	add		t0,	t1,	t2
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	lw		t1,	176(sp)
	lw		t2,	208(sp)
	and		t0,	t1,	t2
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	lw		t2,	164(sp)
	sw		t1,	0(t2)
	j		.main.3_and_terminate_block
.main.3_and_terminate_block:
	lw		t1,	164(sp)
	lw		t0,	0(t1)
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	beqz	t1,	.main.4_if_terminate
.main.4_if_true:
	la		t0,	resultCount
	sw		t0,	220(sp)
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	224(sp)
	la		t0,	resultCount
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	li		t0,	1
	sw		t0,	236(sp)
	lw		t1,	224(sp)
	lw		t2,	236(sp)
	add		t0,	t1,	t2
	sw		t0,	240(sp)
	la		t0,	resultCount
	sw		t0,	244(sp)
	lw		t1,	240(sp)
	lw		t2,	244(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	248(sp)
	li		t0,	2
	sw		t0,	252(sp)
	lw		t1,	248(sp)
	lw		t2,	252(sp)
	sub		t0,	t1,	t2
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	mv		a0,	t1
	la		t0,	str.0
	sw		t0,	264(sp)
	lw		t1,	264(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	268(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	276(sp)
	lw		t1,	268(sp)
	mv		a0,	t1
	lw		t1,	276(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	mv		a0,	t1
	call	println
	j		.main.4_if_terminate
.main.4_if_terminate:
	j		.main.5_while_condition
.main.5_while_condition:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	284(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	288(sp)
	lw		t1,	284(sp)
	lw		t2,	288(sp)
	mul		t0,	t1,	t2
	sw		t0,	292(sp)
	la		t0,	N
	sw		t0,	296(sp)
	lw		t1,	296(sp)
	lw		t0,	0(t1)
	sw		t0,	300(sp)
	lw		t1,	300(sp)
	lw		t2,	292(sp)
	slt		t0,	t1,	t2
	sw		t0,	304(sp)
	lw		t1,	304(sp)
	seqz	t0,	t1
	sw		t0,	304(sp)
	lw		t1,	304(sp)
	beqz	t1,	.main.5_while_terminate
.main.5_while_loop:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	308(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	312(sp)
	lw		t1,	308(sp)
	lw		t2,	312(sp)
	mul		t0,	t1,	t2
	sw		t0,	316(sp)
	la		t0,	b
	sw		t0,	320(sp)
	lw		t1,	320(sp)
	lw		t0,	0(t1)
	sw		t0,	324(sp)
	li		t0,	4
	sw		t0,	328(sp)
	lw		t1,	328(sp)
	lw		t2,	316(sp)
	mul		t0,	t1,	t2
	sw		t0,	328(sp)
	lw		t1,	324(sp)
	lw		t2,	328(sp)
	add		t0,	t1,	t2
	sw		t0,	332(sp)
	lw		t1,	332(sp)
	lw		t0,	0(t1)
	sw		t0,	336(sp)
	li		t0,	0
	sw		t0,	340(sp)
	lw		t1,	340(sp)
	lw		t2,	332(sp)
	sw		t1,	0(t2)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	344(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	348(sp)
	li		t0,	1
	sw		t0,	352(sp)
	lw		t1,	344(sp)
	lw		t2,	352(sp)
	add		t0,	t1,	t2
	sw		t0,	356(sp)
	lw		t1,	356(sp)
	lw		t2,	156(sp)
	sw		t1,	0(t2)
	j		.main.5_while_condition
.main.5_while_terminate:
	j		.main.2_if_terminate
.main.2_if_terminate:
	j		.main.1_for_execution
.main.1_for_execution:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	360(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	364(sp)
	li		t0,	1
	sw		t0,	368(sp)
	lw		t1,	360(sp)
	lw		t2,	368(sp)
	add		t0,	t1,	t2
	sw		t0,	372(sp)
	lw		t1,	372(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.main.1_for_condition
.main.1_for_terminate:
	la		t0,	resultCount
	sw		t0,	376(sp)
	lw		t1,	376(sp)
	lw		t0,	0(t1)
	sw		t0,	380(sp)
	lw		t1,	380(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	384(sp)
	la		t0,	str.1
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	mv		a0,	t1
	lw		t1,	384(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	392(sp)
	lw		t1,	392(sp)
	mv		a0,	t1
	call	println
	li		t0,	0
	sw		t0,	396(sp)
	lw		t1,	396(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.main.return
.main.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	400(sp)
	lw		t1,	400(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	404
	ret
	.size	main,	.-main

	.globl	__global_init_0
	.p2align	2
	.type	__global_init_0,@function

__global_init_0:
.__global_init_0.entry:
	addi	sp,	sp,	-16
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	li		t0,	15000
	sw		t0,	8(sp)
	la		t0,	N
	sw		t0,	12(sp)
	lw		t1,	8(sp)
	lw		t2,	12(sp)
	sw		t1,	0(t2)
	j		.__global_init_0.return
.__global_init_0.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	16
	ret
	.size	__global_init_0,	.-__global_init_0

	.globl	__global_init_1
	.p2align	2
	.type	__global_init_1,@function

__global_init_1:
.__global_init_1.entry:
	addi	sp,	sp,	-60
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	60
	li		t0,	15001
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
	li		t0,	15001
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	40(sp)
	li		t0,	4
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
	la		t0,	b
	sw		t0,	56(sp)
	lw		t1,	52(sp)
	lw		t2,	56(sp)
	sw		t1,	0(t2)
	j		.__global_init_1.return
.__global_init_1.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	60
	ret
	.size	__global_init_1,	.-__global_init_1

	.globl	__global_init_2
	.p2align	2
	.type	__global_init_2,@function

__global_init_2:
.__global_init_2.entry:
	addi	sp,	sp,	-16
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	li		t0,	0
	sw		t0,	8(sp)
	la		t0,	resultCount
	sw		t0,	12(sp)
	lw		t1,	8(sp)
	lw		t2,	12(sp)
	sw		t1,	0(t2)
	j		.__global_init_2.return
.__global_init_2.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	16
	ret
	.size	__global_init_2,	.-__global_init_2

	.section	.bss
	.globl	N
	.type	N,@object
N:
	.word	0
	.size	N,	4

	.globl	b
	.type	b,@object
b:
	.word	0
	.size	b,	4

	.globl	resultCount
	.type	resultCount,@object
resultCount:
	.word	0
	.size	resultCount,	4

	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	" "
	.size	str.0,	2

	.globl	str.1
	.type	str.1,@object
str.1:
	.string	"Total: "
	.size	str.1,	8

