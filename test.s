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
	mv		a4,	zero
	mv		a7,	zero
	mv		a5,	zero
	mv		t2,	zero
	mv		t3,	zero
	mv		a6,	zero
	mv		s1,	zero
	mv		t1,	zero
	mv		s4,	zero
	mv		a1,	zero
	mv		a2,	zero
	j		.test_foo.0_for_condition
.test_foo.0_for_condition:
	slt		a3,	a2,	a0
	beqz	a3,	.test_foo.0_for_terminate
	j		.test_foo.0_for_loop
.test_foo.0_for_loop:
	mv		s10,	zero
	j		.test_foo.1_for_condition
.test_foo.1_for_condition:
	mv		a3,	s10
	slt		a3,	a3,	a0
	beqz	a3,	.test_foo.1_for_terminate
	j		.test_foo.1_for_loop
.test_foo.1_for_loop:
	mv		s6,	zero
	j		.test_foo.2_for_condition
.test_foo.2_for_condition:
	mv		a3,	s6
	slt		a3,	a3,	a0
	beqz	a3,	.test_foo.2_for_terminate
	j		.test_foo.2_for_loop
.test_foo.2_for_loop:
	mv		a3,	zero
	j		.test_foo.3_for_condition
.test_foo.3_for_condition:
	slt		t4,	a3,	a0
	beqz	t4,	.test_foo.3_for_terminate
	j		.test_foo.3_for_loop
.test_foo.3_for_loop:
	addi	t0,	t0,	1
	li		t4,	1000000
	slt		t4,	t4,	t0
	beqz	t4,	.test_foo.4_if_terminate
	j		.test_foo.4_if_true
.test_foo.4_if_true:
	li		t4,	1000000
	sub		t0,	t0,	t4
	j		.test_foo.4_if_terminate
.test_foo.4_if_terminate:
	li		t4,	1000000
	slt		a6,	t4,	a6
	beqz	a6,	.test_foo.5_if_terminate
	j		.test_foo.5_if_true
.test_foo.5_if_true:
	j		.test_foo.5_if_terminate
.test_foo.5_if_terminate:
	li		a6,	1000000
	slt		a6,	a6,	a4
	beqz	a6,	.test_foo.6_if_terminate
	j		.test_foo.6_if_true
.test_foo.6_if_true:
	li		a6,	1000000
	sub		a4,	a4,	a6
	j		.test_foo.6_if_terminate
.test_foo.6_if_terminate:
	li		a6,	1000000
	slt		a6,	a6,	a7
	beqz	a6,	.test_foo.7_if_terminate
	j		.test_foo.7_if_true
.test_foo.7_if_true:
	mv		a6,	a7
	li		a7,	1000000
	sub		a6,	a6,	a7
	mv		a7,	a6
	j		.test_foo.7_if_terminate
.test_foo.7_if_terminate:
	mv		a6,	t3
	li		t3,	1000000
	slt		a6,	t3,	a6
	beqz	a6,	.test_foo.8_if_terminate
	j		.test_foo.8_if_true
.test_foo.8_if_true:
	j		.test_foo.8_if_terminate
.test_foo.8_if_terminate:
	addi	a4,	a4,	2
	li		a6,	3
	slt		a6,	a6,	t0
	beqz	a6,	.test_foo.9_if_terminate
	j		.test_foo.9_if_true
.test_foo.9_if_true:
	mv		a6,	a7
	add		a6,	a6,	t0
	addi	a6,	a6,	-10
	mv		a7,	a6
	j		.test_foo.9_if_terminate
.test_foo.9_if_terminate:
	mv		a6,	a7
	addi	a6,	a6,	1
	mv		a7,	a6
	mv		a6,	a7
	add		a6,	a6,	t0
	mv		t3,	a6
	mv		a6,	t3
	add		a5,	a6,	a5
	add		a6,	t0,	a4
	add		a6,	a6,	a7
	add		a6,	a6,	a5
	add		a6,	a6,	t2
	add		a6,	a6,	t3
	li		t4,	10
	slt		t4,	t4,	a6
	beqz	t4,	.test_foo.10_if_false
	j		.test_foo.10_if_true
.test_foo.10_if_true:
	addi	s1,	s1,	1
	addi	s4,	s4,	1
	addi	a1,	a1,	1
	j		.test_foo.10_if_terminate
.test_foo.10_if_false:
	addi	t0,	t0,	1
	addi	s4,	s4,	1
	addi	t1,	t1,	1
	j		.test_foo.10_if_terminate
.test_foo.10_if_terminate:
	j		.test_foo.3_for_execution
.test_foo.3_for_execution:
	addi	a3,	a3,	1
	j		.test_foo.3_for_condition
.test_foo.3_for_terminate:
	j		.test_foo.2_for_execution
.test_foo.2_for_execution:
	mv		a3,	s6
	addi	a3,	a3,	1
	mv		s6,	a3
	j		.test_foo.2_for_condition
.test_foo.2_for_terminate:
	j		.test_foo.1_for_execution
.test_foo.1_for_execution:
	mv		a3,	s10
	addi	a3,	a3,	1
	mv		s10,	a3
	j		.test_foo.1_for_condition
.test_foo.1_for_terminate:
	j		.test_foo.0_for_execution
.test_foo.0_for_execution:
	addi	a2,	a2,	1
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
	sw		s2,	8(sp)
	mv		s2,	zero
	li		a0,	60
	call	test_foo
	call	printInt
	j		.main.return
.main.return:
	mv		a0,	s2
	lw		s2,	8(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	12
	ret
	.size	main,	.-main

	.section	.bss
	.section	.rodata
