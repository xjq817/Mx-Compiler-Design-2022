	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-164
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	164
	addi	t0,	sp,	8
	sw		t0,	16(sp)
	addi	t0,	sp,	12
	sw		t0,	20(sp)
	li		t0,	0
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	lw		t2,	16(sp)
	sw		t1,	0(t2)
	la		t0,	n
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	32(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	36(sp)
	la		t0,	n
	sw		t0,	40(sp)
	lw		t1,	36(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	la		t0,	a
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	la		t0,	n
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	la		t0,	n
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	li		t0,	4
	sw		t0,	68(sp)
	lw		t1,	56(sp)
	lw		t2,	68(sp)
	mul		t0,	t1,	t2
	sw		t0,	72(sp)
	li		t0,	4
	sw		t0,	76(sp)
	lw		t1,	72(sp)
	lw		t2,	76(sp)
	add		t0,	t1,	t2
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	mv		t0,	t1
	sw		t0,	88(sp)
	lw		t1,	56(sp)
	lw		t2,	88(sp)
	sw		t1,	0(t2)
	lw		t1,	84(sp)
	addi	t0,	t1,	4
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	mv		t0,	t1
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t2,	56(sp)
	mul		t0,	t1,	t2
	sw		t0,	100(sp)
	lw		t1,	96(sp)
	lw		t2,	100(sp)
	add		t0,	t1,	t2
	sw		t0,	104(sp)
	j		.main.0_get_new_array_condition
.main.0_get_new_array_condition:
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t2,	104(sp)
	xor		t0,	t1,	t2
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	snez	t0,	t1
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	beqz	t1,	.main.0_get_new_array_terminate
.main.0_get_new_array_loop:
	li		t0,	4
	sw		t0,	116(sp)
	lw		t1,	64(sp)
	lw		t2,	116(sp)
	mul		t0,	t1,	t2
	sw		t0,	120(sp)
	li		t0,	4
	sw		t0,	124(sp)
	lw		t1,	120(sp)
	lw		t2,	124(sp)
	add		t0,	t1,	t2
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	mv		t0,	t1
	sw		t0,	136(sp)
	lw		t1,	64(sp)
	lw		t2,	136(sp)
	sw		t1,	0(t2)
	lw		t1,	132(sp)
	addi	t0,	t1,	4
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	mv		t0,	t1
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t2,	108(sp)
	sw		t1,	0(t2)
	lw		t1,	108(sp)
	addi	t0,	t1,	4
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
	j		.main.0_get_new_array_condition
.main.0_get_new_array_terminate:
	la		t0,	a
	sw		t0,	152(sp)
	lw		t1,	96(sp)
	lw		t2,	152(sp)
	sw		t1,	0(t2)
	li		t0,	0
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t2,	16(sp)
	sw		t1,	0(t2)
	j		.main.return
.main.return:
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	164
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
