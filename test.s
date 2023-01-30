	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-332
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	332
	li		t0,	0
	sw		t0,	8(sp)
	lw		t1,	8(sp)
	mv		t0,	t1
	sw		t0,	12(sp)
	la		t0,	n
	sw		t0,	16(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	20(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	24(sp)
	la		t0,	n
	sw		t0,	28(sp)
	lw		t1,	24(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	la		t0,	p
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	40(sp)
	la		t0,	p
	sw		t0,	44(sp)
	lw		t1,	40(sp)
	lw		t2,	44(sp)
	sw		t1,	0(t2)
	la		t0,	k
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	56(sp)
	la		t0,	k
	sw		t0,	60(sp)
	lw		t1,	56(sp)
	lw		t2,	60(sp)
	sw		t1,	0(t2)
	la		t0,	p
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	la		t0,	k
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	68(sp)
	lw		t2,	76(sp)
	sub		t0,	t1,	t2
	sw		t0,	80(sp)
	li		t0,	1
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t2,	80(sp)
	slt		t0,	t1,	t2
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	beqz	t1,	.main.0_if_terminate
.main.0_if_true:
	la		t0,	str.0
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	mv		a0,	t1
	call	print
	j		.main.0_if_terminate
.main.0_if_terminate:
	la		t0,	i
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	la		t0,	p
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	la		t0,	k
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	116(sp)
	lw		t1,	108(sp)
	lw		t2,	116(sp)
	sub		t0,	t1,	t2
	sw		t0,	120(sp)
	la		t0,	i
	sw		t0,	124(sp)
	lw		t1,	120(sp)
	lw		t2,	124(sp)
	sw		t1,	0(t2)
	j		.main.1_for_condition
.main.1_for_condition:
	la		t0,	i
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	la		t0,	p
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	la		t0,	k
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	lw		t1,	140(sp)
	lw		t2,	148(sp)
	add		t0,	t1,	t2
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t2,	132(sp)
	slt		t0,	t1,	t2
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	seqz	t0,	t1
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	beqz	t1,	.main.1_for_terminate
.main.1_for_loop:
	la		t0,	i
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	li		t0,	1
	sw		t0,	168(sp)
	lw		t1,	164(sp)
	lw		t2,	168(sp)
	slt		t0,	t1,	t2
	sw		t0,	172(sp)
	lw		t1,	172(sp)
	seqz	t0,	t1
	sw		t0,	172(sp)
	lw		t1,	172(sp)
	mv		t0,	t1
	sw		t0,	176(sp)
	lw		t1,	172(sp)
	beqz	t1,	.main.2_and_terminate_block
.main.2_and_rhs_block:
	la		t0,	i
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	la		t0,	n
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	lw		t0,	0(t1)
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	lw		t2,	184(sp)
	slt		t0,	t1,	t2
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	seqz	t0,	t1
	sw		t0,	196(sp)
	lw		t1,	172(sp)
	lw		t2,	196(sp)
	and		t0,	t1,	t2
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	mv		t0,	t1
	sw		t0,	176(sp)
	j		.main.2_and_terminate_block
.main.2_and_terminate_block:
	lw		t1,	176(sp)
	mv		t0,	t1
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	beqz	t1,	.main.3_if_terminate
.main.3_if_true:
	la		t0,	i
	sw		t0,	208(sp)
	lw		t1,	208(sp)
	lw		t0,	0(t1)
	sw		t0,	212(sp)
	la		t0,	p
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	lw		t0,	0(t1)
	sw		t0,	220(sp)
	lw		t1,	212(sp)
	lw		t2,	220(sp)
	xor		t0,	t1,	t2
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	seqz	t0,	t1
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	beqz	t1,	.main.4_if_false
.main.4_if_true:
	la		t0,	str.1
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	mv		a0,	t1
	call	print
	la		t0,	i
	sw		t0,	232(sp)
	lw		t1,	232(sp)
	lw		t0,	0(t1)
	sw		t0,	236(sp)
	lw		t1,	236(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	240(sp)
	lw		t1,	240(sp)
	mv		a0,	t1
	call	print
	la		t0,	str.2
	sw		t0,	244(sp)
	lw		t1,	244(sp)
	mv		a0,	t1
	call	print
	j		.main.4_if_terminate
.main.4_if_false:
	la		t0,	i
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t0,	0(t1)
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	mv		a0,	t1
	call	printInt
	la		t0,	str.3
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	mv		a0,	t1
	call	print
	j		.main.4_if_terminate
.main.4_if_terminate:
	j		.main.3_if_terminate
.main.3_if_terminate:
	j		.main.1_for_execution
.main.1_for_execution:
	la		t0,	i
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	lw		t0,	0(t1)
	sw		t0,	264(sp)
	la		t0,	i
	sw		t0,	268(sp)
	lw		t1,	268(sp)
	lw		t0,	0(t1)
	sw		t0,	272(sp)
	li		t0,	1
	sw		t0,	276(sp)
	lw		t1,	264(sp)
	lw		t2,	276(sp)
	add		t0,	t1,	t2
	sw		t0,	280(sp)
	la		t0,	i
	sw		t0,	284(sp)
	lw		t1,	280(sp)
	lw		t2,	284(sp)
	sw		t1,	0(t2)
	j		.main.1_for_condition
.main.1_for_terminate:
	la		t0,	p
	sw		t0,	288(sp)
	lw		t1,	288(sp)
	lw		t0,	0(t1)
	sw		t0,	292(sp)
	la		t0,	k
	sw		t0,	296(sp)
	lw		t1,	296(sp)
	lw		t0,	0(t1)
	sw		t0,	300(sp)
	lw		t1,	292(sp)
	lw		t2,	300(sp)
	add		t0,	t1,	t2
	sw		t0,	304(sp)
	la		t0,	n
	sw		t0,	308(sp)
	lw		t1,	308(sp)
	lw		t0,	0(t1)
	sw		t0,	312(sp)
	lw		t1,	304(sp)
	lw		t2,	312(sp)
	slt		t0,	t1,	t2
	sw		t0,	316(sp)
	lw		t1,	316(sp)
	beqz	t1,	.main.5_if_terminate
.main.5_if_true:
	la		t0,	str.4
	sw		t0,	320(sp)
	lw		t1,	320(sp)
	mv		a0,	t1
	call	print
	j		.main.5_if_terminate
.main.5_if_terminate:
	li		t0,	0
	sw		t0,	324(sp)
	lw		t1,	324(sp)
	mv		t0,	t1
	sw		t0,	12(sp)
	j		.main.return
.main.return:
	lw		t1,	12(sp)
	mv		t0,	t1
	sw		t0,	328(sp)
	lw		t1,	328(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	332
	ret
	.size	main,	.-main

	.section	.bss
	.globl	n
	.type	n,@object
n:
	.word	0
	.size	n,	4

	.globl	p
	.type	p,@object
p:
	.word	0
	.size	p,	4

	.globl	k
	.type	k,@object
k:
	.word	0
	.size	k,	4

	.globl	i
	.type	i,@object
i:
	.word	0
	.size	i,	4

	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	"<< "
	.size	str.0,	4

	.globl	str.1
	.type	str.1,@object
str.1:
	.string	"("
	.size	str.1,	2

	.globl	str.2
	.type	str.2,@object
str.2:
	.string	") "
	.size	str.2,	3

	.globl	str.3
	.type	str.3,@object
str.3:
	.string	" "
	.size	str.3,	2

	.globl	str.4
	.type	str.4,@object
str.4:
	.string	">> "
	.size	str.4,	4

