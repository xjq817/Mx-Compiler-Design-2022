	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	li		a0,	0
	la		t0,	w
	lw		t0,	0(t0)
	call	getInt
	la		t0,	w
	sw		a0,	0(t0)
	la		t0,	w
	lw		t1,	0(t0)
	li		t0,	2
	rem		t0,	t1,	t0
	li		t1,	0
	xor		t0,	t0,	t1
	seqz	t0,	t0
	beqz	t0,	.main.0_and_terminate_block
	j		.main.0_and_rhs_block
.main.0_and_rhs_block:
	la		t1,	w
	lw		t1,	0(t1)
	li		t2,	2
	slt		t1,	t2,	t1
	and		t0,	t0,	t1
	j		.main.0_and_terminate_block
.main.0_and_terminate_block:
	beqz	t0,	.main.1_if_false
	j		.main.1_if_true
.main.1_if_true:
	la		a0,	str.0
	la		a0,	str.0
	call	print
	j		.main.1_if_terminate
.main.1_if_false:
	la		a0,	str.1
	la		a0,	str.1
	call	print
	j		.main.1_if_terminate
.main.1_if_terminate:
	li		a0,	0
	j		.main.return
.main.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	main,	.-main

	.section	.bss
	.globl	w
	.type	w,@object
w:
	.word	0
	.size	w,	4

	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	"YES"
	.size	str.0,	4

	.globl	str.1
	.type	str.1,@object
str.1:
	.string	"NO"
	.size	str.1,	3

