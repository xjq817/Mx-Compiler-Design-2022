	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-156
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	156
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
	la		t0,	a
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	la		t0,	n
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	la		t0,	n
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	li		t0,	4
	sw		t0,	56(sp)
	lw		t1,	44(sp)
	lw		t2,	56(sp)
	mul		t0,	t1,	t2
	sw		t0,	60(sp)
	li		t0,	4
	sw		t0,	64(sp)
	lw		t1,	60(sp)
	lw		t2,	64(sp)
	add		t0,	t1,	t2
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		t0,	t1
	sw		t0,	76(sp)
	lw		t1,	44(sp)
	lw		t2,	76(sp)
	sw		t1,	0(t2)
	lw		t1,	72(sp)
	addi	t0,	t1,	4
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	mv		t0,	t1
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	mv		t0,	t1
	sw		t0,	88(sp)
	li		t0,	4
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t2,	44(sp)
	mul		t0,	t1,	t2
	sw		t0,	92(sp)
	lw		t1,	84(sp)
	lw		t2,	92(sp)
	add		t0,	t1,	t2
	sw		t0,	96(sp)
	j		.main.0_get_new_array_condition
.main.0_get_new_array_condition:
	lw		t1,	88(sp)
	mv		t0,	t1
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t2,	96(sp)
	xor		t0,	t1,	t2
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	snez	t0,	t1
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	beqz	t1,	.main.0_get_new_array_terminate
.main.0_get_new_array_loop:
	li		t0,	4
	sw		t0,	108(sp)
	lw		t1,	52(sp)
	lw		t2,	108(sp)
	mul		t0,	t1,	t2
	sw		t0,	112(sp)
	li		t0,	4
	sw		t0,	116(sp)
	lw		t1,	112(sp)
	lw		t2,	116(sp)
	add		t0,	t1,	t2
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	mv		t0,	t1
	sw		t0,	128(sp)
	lw		t1,	52(sp)
	lw		t2,	128(sp)
	sw		t1,	0(t2)
	lw		t1,	124(sp)
	addi	t0,	t1,	4
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	mv		t0,	t1
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	lw		t1,	100(sp)
	addi	t0,	t1,	4
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	mv		t0,	t1
	sw		t0,	88(sp)
	j		.main.0_get_new_array_condition
.main.0_get_new_array_terminate:
	la		t0,	a
	sw		t0,	144(sp)
	lw		t1,	84(sp)
	lw		t2,	144(sp)
	sw		t1,	0(t2)
	li		t0,	0
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	mv		t0,	t1
	sw		t0,	12(sp)
	j		.main.return
.main.return:
	lw		t1,	12(sp)
	mv		t0,	t1
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	156
	ret
	.size	main,	.-main

	.section	.bss
	.globl	n
	.type	n,@object
n:
	.word	0
	.size	n,	4

	.globl	a
	.type	a,@object
a:
	.word	0
	.size	a,	4

	.section	.rodata
