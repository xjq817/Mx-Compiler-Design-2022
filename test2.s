	.section	.text
	.globl	test_foo
	.p2align	2
	.type	test_foo,@function

test_foo:
.test_foo.entry:
	addi	sp,	sp,	-16
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	mv		t5,	s1
	sw		s4,	8(sp)
	mv		t6,	s6
	sw		s10,	12(sp)
	mv		t0,	zero
	mv		a3,	zero
	mv		a6,	zero
	mv		a4,	zero
	mv		t2,	zero
	mv		t4,	zero
	mv		a7,	zero
	mv		s1,	zero
	mv		t1,	zero
	mv		s4,	zero
	mv		a5,	zero
	mv		a1,	zero
	j		.test_foo.0_for_condition
.test_foo.0_for_condition:
	slt		a2,	a1,	a0
	beqz	a2,	.test_foo.0_for_terminate
	j		.test_foo.0_for_loop
.test_foo.0_for_loop:
	mv		t3,	zero
	j		.test_foo.1_for_condition
.test_foo.1_for_condition:
	mv		a2,	t3
	slt		a2,	a2,	a0
	beqz	a2,	.test_foo.1_for_terminate
	j		.test_foo.1_for_loop
.test_foo.1_for_loop:
	mv		s10,	zero
	j		.test_foo.2_for_condition
.test_foo.2_for_condition:
	mv		a2,	s10
	slt		a2,	a2,	a0
	beqz	a2,	.test_foo.2_for_terminate
	j		.test_foo.2_for_loop
.test_foo.2_for_loop:
	mv		a2,	zero
	j		.test_foo.3_for_condition
.test_foo.3_for_condition:
	slt		s6,	a2,	a0
	beqz	s6,	.test_foo.3_for_terminate
	j		.test_foo.3_for_loop
.test_foo.3_for_loop:
	li		s6,	1
	add		t0,	t0,	s6
	li		s6,	1000000
	slt		s6,	s6,	t0
	beqz	s6,	.test_foo.4_if_terminate
	j		.test_foo.4_if_true
.test_foo.4_if_true:
	li		s6,	1000000
	sub		t0,	t0,	s6
	j		.test_foo.4_if_terminate
.test_foo.4_if_terminate:
	li		s6,	1000000
	slt		a7,	s6,	a7
	beqz	a7,	.test_foo.5_if_terminate
	j		.test_foo.5_if_true
.test_foo.5_if_true:
	j		.test_foo.5_if_terminate
.test_foo.5_if_terminate:
	li		a7,	1000000
	slt		a7,	a7,	a3
	beqz	a7,	.test_foo.6_if_terminate
	j		.test_foo.6_if_true
.test_foo.6_if_true:
	li		a7,	1000000
	sub		a3,	a3,	a7
	j		.test_foo.6_if_terminate
.test_foo.6_if_terminate:
	li		a7,	1000000
	slt		a7,	a7,	a6
	beqz	a7,	.test_foo.7_if_terminate
	j		.test_foo.7_if_true
.test_foo.7_if_true:
	li		a7,	1000000
	sub		a6,	a6,	a7
	j		.test_foo.7_if_terminate
.test_foo.7_if_terminate:
	mv		a7,	t4
	li		s6,	1000000
	slt		a7,	s6,	a7
	beqz	a7,	.test_foo.8_if_terminate
	j		.test_foo.8_if_true
.test_foo.8_if_true:
	j		.test_foo.8_if_terminate
.test_foo.8_if_terminate:
	li		a7,	2
	add		a3,	a3,	a7
	li		a7,	3
	slt		a7,	a7,	t0
	beqz	a7,	.test_foo.9_if_terminate
	j		.test_foo.9_if_true
.test_foo.9_if_true:
	add		a6,	a6,	t0
	li		a7,	10
	sub		a6,	a6,	a7
	j		.test_foo.9_if_terminate
.test_foo.9_if_terminate:
	li		a7,	1
	add		a6,	a6,	a7
	add		a7,	a6,	t0
	mv		t4,	a7
	mv		a7,	t4
	add		a4,	a7,	a4
	add		a7,	t0,	a3
	add		a7,	a7,	a6
	add		a7,	a7,	a4
	add		a7,	a7,	t2
	mv		s6,	t4
	add		a7,	a7,	s6
	li		s6,	10
	slt		s6,	s6,	a7
	beqz	s6,	.test_foo.10_if_false
	j		.test_foo.10_if_true
.test_foo.10_if_true:
	li		s6,	1
	add		s1,	s1,	s6
	add		s4,	s4,	s6
	add		a5,	a5,	s6
	j		.test_foo.10_if_terminate
.test_foo.10_if_false:
	li		s6,	1
	add		t0,	t0,	s6
	add		s4,	s4,	s6
	add		t1,	t1,	s6
	j		.test_foo.10_if_terminate
.test_foo.10_if_terminate:
	j		.test_foo.3_for_execution
.test_foo.3_for_execution:
	li		s6,	1
	add		a2,	a2,	s6
	j		.test_foo.3_for_condition
.test_foo.3_for_terminate:
	j		.test_foo.2_for_execution
.test_foo.2_for_execution:
	mv		a2,	s10
	li		s6,	1
	add		a2,	a2,	s6
	mv		s10,	a2
	j		.test_foo.2_for_condition
.test_foo.2_for_terminate:
	j		.test_foo.1_for_execution
.test_foo.1_for_execution:
	mv		a2,	t3
	li		s6,	1
	add		a2,	a2,	s6
	mv		t3,	a2
	j		.test_foo.1_for_condition
.test_foo.1_for_terminate:
	j		.test_foo.0_for_execution
.test_foo.0_for_execution:
	li		a2,	1
	add		a1,	a1,	a2
	j		.test_foo.0_for_condition
.test_foo.0_for_terminate:
	mv		a0,	t0
	j		.test_foo.return
.test_foo.return:
	mv		s1,	t5
	lw		s4,	8(sp)
	mv		s6,	t6
	lw		s10,	12(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	16
	ret
	.size	test_foo,	.-test_foo

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-12
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		s1,	8(sp)
	mv		s1,	zero
	li		a0,	60
	call	test_foo
	call	printInt
	j		.main.return
.main.return:
	mv		a0,	s1
	lw		s1,	8(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	12
	ret
	.size	main,	.-main

	.section	.bss
	.section	.rodata
