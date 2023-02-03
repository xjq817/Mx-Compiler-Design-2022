	.section	.text
	.globl	loop
	.p2align	2
	.type	loop,@function

loop:
.loop.entry:
	addi	sp,	sp,	-16
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	sw		s0,	12(sp)
	sw		s4,	8(sp)
	li		s0,	10000
	li		t0,	4
	mul		t0,	s0,	t0
	addi	a0,	t0,	4
	call	__malloc
	sw		s0,	0(a0)
	addi	t0,	a0,	4
	mv		t2,	zero
	j		.loop.0_for_condition
.loop.0_for_condition:
	li		t1,	10
	slt		t1,	t2,	t1
	beqz	t1,	.loop.0_for_terminate
	j		.loop.0_for_loop
.loop.0_for_loop:
	mv		a1,	zero
	j		.loop.1_for_condition
.loop.1_for_condition:
	li		t1,	10
	slt		t1,	a1,	t1
	beqz	t1,	.loop.1_for_terminate
	j		.loop.1_for_loop
.loop.1_for_loop:
	mv		s0,	zero
	j		.loop.2_for_condition
.loop.2_for_condition:
	li		t1,	10
	slt		t1,	s0,	t1
	beqz	t1,	.loop.2_for_terminate
	j		.loop.2_for_loop
.loop.2_for_loop:
	mv		t1,	zero
	j		.loop.3_for_condition
.loop.3_for_condition:
	li		a0,	10
	slt		a0,	t1,	a0
	beqz	a0,	.loop.3_for_terminate
	j		.loop.3_for_loop
.loop.3_for_loop:
	li		a0,	1000
	mul		a2,	t2,	a0
	li		a0,	100
	mul		a0,	a1,	a0
	add		a2,	a2,	a0
	li		a0,	10
	mul		a3,	s0,	a0
	add		a2,	a2,	a3
	add		a3,	a2,	t1
	li		a2,	4
	mul		a2,	a2,	a3
	add		a2,	t0,	a2
	add		a3,	t2,	t1
	sw		a3,	0(a2)
	mul		a4,	t2,	a0
	li		a3,	5
	mul		a2,	a1,	a3
	add		a4,	a4,	a2
	li		a2,	4
	mul		a2,	a2,	a4
	add		a2,	t0,	a2
	mul		a4,	t2,	a0
	mul		a0,	a1,	a3
	add		a3,	a4,	a0
	li		a0,	4
	mul		a0,	a0,	a3
	add		a0,	t0,	a0
	lw		a0,	0(a0)
	sw		a0,	0(a2)
	j		.loop.3_for_execution
.loop.3_for_execution:
	addi	t1,	t1,	1
	j		.loop.3_for_condition
.loop.3_for_terminate:
	j		.loop.2_for_execution
.loop.2_for_execution:
	addi	s0,	s0,	1
	j		.loop.2_for_condition
.loop.2_for_terminate:
	j		.loop.1_for_execution
.loop.1_for_execution:
	addi	a1,	a1,	1
	j		.loop.1_for_condition
.loop.1_for_terminate:
	j		.loop.0_for_execution
.loop.0_for_execution:
	addi	t2,	t2,	1
	j		.loop.0_for_condition
.loop.0_for_terminate:
	mv		a0,	zero
	mv		t2,	zero
	j		.loop.4_for_condition
.loop.4_for_condition:
	li		t1,	10
	slt		t1,	t2,	t1
	beqz	t1,	.loop.4_for_terminate
	j		.loop.4_for_loop
.loop.4_for_loop:
	mv		a1,	zero
	j		.loop.5_for_condition
.loop.5_for_condition:
	li		t1,	10
	slt		t1,	a1,	t1
	beqz	t1,	.loop.5_for_terminate
	j		.loop.5_for_loop
.loop.5_for_loop:
	mv		s0,	zero
	j		.loop.6_for_condition
.loop.6_for_condition:
	li		t1,	10
	slt		t1,	s0,	t1
	beqz	t1,	.loop.6_for_terminate
	j		.loop.6_for_loop
.loop.6_for_loop:
	mv		t1,	zero
	j		.loop.7_for_condition
.loop.7_for_condition:
	li		a2,	10
	slt		a2,	t1,	a2
	beqz	a2,	.loop.7_for_terminate
	j		.loop.7_for_loop
.loop.7_for_loop:
	andi	a2,	t1,	1
	li		a3,	1
	xor		a2,	a2,	a3
	seqz	a2,	a2
	beqz	a2,	.loop.8_if_false
	j		.loop.8_if_true
.loop.8_if_true:
	li		a2,	1000
	mul		a3,	t2,	a2
	li		a2,	100
	mul		a2,	a1,	a2
	add		a3,	a3,	a2
	li		a2,	10
	mul		a2,	s0,	a2
	add		a2,	a3,	a2
	add		a3,	a2,	t1
	li		a2,	4
	mul		a2,	a2,	a3
	add		a2,	t0,	a2
	lw		a2,	0(a2)
	add		a0,	a0,	a2
	j		.loop.8_if_terminate
.loop.8_if_false:
	li		a2,	1000
	mul		a3,	t2,	a2
	li		a2,	100
	mul		a2,	a1,	a2
	add		a3,	a3,	a2
	li		a2,	10
	mul		a2,	s0,	a2
	add		a2,	a3,	a2
	add		a2,	a2,	t1
	li		a3,	4
	mul		a3,	a3,	a2
	add		a2,	t0,	a3
	lw		a2,	0(a2)
	sub		a0,	a0,	a2
	j		.loop.8_if_terminate
.loop.8_if_terminate:
	j		.loop.7_for_execution
.loop.7_for_execution:
	addi	t1,	t1,	1
	j		.loop.7_for_condition
.loop.7_for_terminate:
	j		.loop.6_for_execution
.loop.6_for_execution:
	addi	s0,	s0,	1
	j		.loop.6_for_condition
.loop.6_for_terminate:
	j		.loop.5_for_execution
.loop.5_for_execution:
	addi	a1,	a1,	1
	j		.loop.5_for_condition
.loop.5_for_terminate:
	j		.loop.4_for_execution
.loop.4_for_execution:
	addi	t2,	t2,	1
	j		.loop.4_for_condition
.loop.4_for_terminate:
	j		.loop.return
.loop.return:
	lw		s0,	12(sp)
	lw		s4,	8(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	16
	ret
	.size	loop,	.-loop

	.globl	compute
	.p2align	2
	.type	compute,@function

compute:
.compute.entry:
	addi	sp,	sp,	-12
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		s1,	8(sp)
	mv		t0,	zero
	mv		s1,	zero
	slt		t0,	a0,	t0
	seqz	t0,	t0
	beqz	t0,	.compute.9_if_terminate
	j		.compute.9_if_true
.compute.9_if_true:
	call	loop
	li		t0,	5000
	slt		t0,	t0,	a0
	beqz	t0,	.compute.10_if_terminate
	j		.compute.10_if_true
.compute.10_if_true:
	li		t0,	-5000
	add		a0,	a0,	t0
	j		.compute.10_if_terminate
.compute.10_if_terminate:
	mv		t0,	s1
	add		t0,	t0,	a0
	mv		s1,	t0
	mv		t0,	s1
	li		t1,	5000
	slt		t0,	t1,	t0
	beqz	t0,	.compute.11_if_terminate
	j		.compute.11_if_true
.compute.11_if_true:
	mv		t0,	s1
	li		t0,	-5000
	add		t0,	t0,	t0
	mv		s1,	t0
	j		.compute.11_if_terminate
.compute.11_if_terminate:
	j		.compute.9_if_terminate
.compute.9_if_terminate:
	mv		a0,	s1
	j		.compute.return
.compute.return:
	lw		s1,	8(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	12
	ret
	.size	compute,	.-compute

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-12
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		s0,	8(sp)
	mv		s0,	zero
	li		a0,	20
	call	compute
	call	printInt
	j		.main.return
.main.return:
	mv		a0,	s0
	lw		s0,	8(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	12
	ret
	.size	main,	.-main

	.section	.bss
	.section	.rodata
