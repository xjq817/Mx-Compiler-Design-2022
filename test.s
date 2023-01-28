	.section	.text
	.globl	point.__cons
	.p2align	2
	.type	point.__cons,@function

point.__cons:
.point.__cons.entry:
	addi	sp,	sp,	-92
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	92
	mv		t0,	a0
	sw		t0,	12(sp)
	addi	t0,	sp,	8
	sw		t0,	16(sp)
	lw		t1,	12(sp)
	lw		t2,	16(sp)
	sw		t1,	0(t2)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	20(sp)
	lw		t1,	20(sp)
	addi	t0,	t1,	0
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	28(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	addi	t0,	t1,	0
	sw		t0,	36(sp)
	li		t0,	0
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	addi	t0,	t1,	4
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	addi	t0,	t1,	4
	sw		t0,	60(sp)
	li		t0,	0
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t2,	60(sp)
	sw		t1,	0(t2)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	addi	t0,	t1,	8
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	addi	t0,	t1,	8
	sw		t0,	84(sp)
	li		t0,	0
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t2,	84(sp)
	sw		t1,	0(t2)
	j		.point.__cons.return
.point.__cons.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	92
	ret
	.size	point.__cons,	.-point.__cons

	.globl	point.set
	.p2align	2
	.type	point.set,@function

point.set:
.point.set.entry:
	addi	sp,	sp,	-128
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	128
	mv		t0,	a0
	sw		t0,	24(sp)
	mv		t0,	a1
	sw		t0,	28(sp)
	mv		t0,	a2
	sw		t0,	32(sp)
	mv		t0,	a3
	sw		t0,	36(sp)
	addi	t0,	sp,	8
	sw		t0,	40(sp)
	addi	t0,	sp,	12
	sw		t0,	44(sp)
	addi	t0,	sp,	16
	sw		t0,	48(sp)
	addi	t0,	sp,	20
	sw		t0,	52(sp)
	lw		t1,	24(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t2,	44(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	lw		t1,	36(sp)
	lw		t2,	52(sp)
	sw		t1,	0(t2)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	addi	t0,	t1,	0
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	addi	t0,	t1,	0
	sw		t0,	76(sp)
	lw		t1,	68(sp)
	lw		t2,	76(sp)
	sw		t1,	0(t2)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	addi	t0,	t1,	4
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	addi	t0,	t1,	4
	sw		t0,	100(sp)
	lw		t1,	92(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	addi	t0,	t1,	8
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	116(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	addi	t0,	t1,	8
	sw		t0,	124(sp)
	lw		t1,	116(sp)
	lw		t2,	124(sp)
	sw		t1,	0(t2)
	j		.point.set.return
.point.set.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	128
	ret
	.size	point.set,	.-point.set

	.globl	point.sqrLen
	.p2align	2
	.type	point.sqrLen,@function

point.sqrLen:
.point.sqrLen.entry:
	addi	sp,	sp,	-124
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	124
	mv		t0,	a0
	sw		t0,	16(sp)
	addi	t0,	sp,	8
	sw		t0,	20(sp)
	lw		t1,	16(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	12
	sw		t0,	24(sp)
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	addi	t0,	t1,	0
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	addi	t0,	t1,	0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	36(sp)
	lw		t2,	48(sp)
	mul		t0,	t1,	t2
	sw		t0,	52(sp)
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	addi	t0,	t1,	4
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	addi	t0,	t1,	4
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	64(sp)
	lw		t2,	76(sp)
	mul		t0,	t1,	t2
	sw		t0,	80(sp)
	lw		t1,	52(sp)
	lw		t2,	80(sp)
	add		t0,	t1,	t2
	sw		t0,	84(sp)
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	addi	t0,	t1,	8
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	addi	t0,	t1,	8
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	lw		t1,	96(sp)
	lw		t2,	108(sp)
	mul		t0,	t1,	t2
	sw		t0,	112(sp)
	lw		t1,	84(sp)
	lw		t2,	112(sp)
	add		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.point.sqrLen.return
.point.sqrLen.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	124
	ret
	.size	point.sqrLen,	.-point.sqrLen

	.globl	point.sqrDis
	.p2align	2
	.type	point.sqrDis,@function

point.sqrDis:
.point.sqrDis.entry:
	addi	sp,	sp,	-232
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	232
	mv		t0,	a0
	sw		t0,	20(sp)
	mv		t0,	a1
	sw		t0,	24(sp)
	addi	t0,	sp,	8
	sw		t0,	28(sp)
	addi	t0,	sp,	12
	sw		t0,	32(sp)
	lw		t1,	20(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	36(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	addi	t0,	t1,	0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	addi	t0,	t1,	0
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	48(sp)
	lw		t2,	60(sp)
	sub		t0,	t1,	t2
	sw		t0,	64(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	addi	t0,	t1,	0
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	addi	t0,	t1,	0
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	76(sp)
	lw		t2,	88(sp)
	sub		t0,	t1,	t2
	sw		t0,	92(sp)
	lw		t1,	64(sp)
	lw		t2,	92(sp)
	mul		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	addi	t0,	t1,	4
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	addi	t0,	t1,	4
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	108(sp)
	lw		t2,	120(sp)
	sub		t0,	t1,	t2
	sw		t0,	124(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	addi	t0,	t1,	4
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	addi	t0,	t1,	4
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	lw		t1,	136(sp)
	lw		t2,	148(sp)
	sub		t0,	t1,	t2
	sw		t0,	152(sp)
	lw		t1,	124(sp)
	lw		t2,	152(sp)
	mul		t0,	t1,	t2
	sw		t0,	156(sp)
	lw		t1,	96(sp)
	lw		t2,	156(sp)
	add		t0,	t1,	t2
	sw		t0,	160(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	addi	t0,	t1,	8
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	addi	t0,	t1,	8
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	lw		t1,	172(sp)
	lw		t2,	184(sp)
	sub		t0,	t1,	t2
	sw		t0,	188(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	addi	t0,	t1,	8
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t0,	0(t1)
	sw		t0,	200(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	addi	t0,	t1,	8
	sw		t0,	208(sp)
	lw		t1,	208(sp)
	lw		t0,	0(t1)
	sw		t0,	212(sp)
	lw		t1,	200(sp)
	lw		t2,	212(sp)
	sub		t0,	t1,	t2
	sw		t0,	216(sp)
	lw		t1,	188(sp)
	lw		t2,	216(sp)
	mul		t0,	t1,	t2
	sw		t0,	220(sp)
	lw		t1,	160(sp)
	lw		t2,	220(sp)
	add		t0,	t1,	t2
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.point.sqrDis.return
.point.sqrDis.return:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	232
	ret
	.size	point.sqrDis,	.-point.sqrDis

	.globl	point.dot
	.p2align	2
	.type	point.dot,@function

point.dot:
.point.dot.entry:
	addi	sp,	sp,	-136
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	136
	mv		t0,	a0
	sw		t0,	20(sp)
	mv		t0,	a1
	sw		t0,	24(sp)
	addi	t0,	sp,	8
	sw		t0,	28(sp)
	addi	t0,	sp,	12
	sw		t0,	32(sp)
	lw		t1,	20(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	36(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	addi	t0,	t1,	0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	addi	t0,	t1,	0
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	48(sp)
	lw		t2,	60(sp)
	mul		t0,	t1,	t2
	sw		t0,	64(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	addi	t0,	t1,	4
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	addi	t0,	t1,	4
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	76(sp)
	lw		t2,	88(sp)
	mul		t0,	t1,	t2
	sw		t0,	92(sp)
	lw		t1,	64(sp)
	lw		t2,	92(sp)
	add		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	addi	t0,	t1,	8
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	addi	t0,	t1,	8
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	108(sp)
	lw		t2,	120(sp)
	mul		t0,	t1,	t2
	sw		t0,	124(sp)
	lw		t1,	96(sp)
	lw		t2,	124(sp)
	add		t0,	t1,	t2
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.point.dot.return
.point.dot.return:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	136
	ret
	.size	point.dot,	.-point.dot

	.globl	point.cross
	.p2align	2
	.type	point.cross,@function

point.cross:
.point.cross.entry:
	addi	sp,	sp,	-252
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	252
	mv		t0,	a0
	sw		t0,	24(sp)
	mv		t0,	a1
	sw		t0,	28(sp)
	addi	t0,	sp,	8
	sw		t0,	32(sp)
	addi	t0,	sp,	12
	sw		t0,	36(sp)
	lw		t1,	24(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	40(sp)
	addi	t0,	sp,	20
	sw		t0,	44(sp)
	li		t0,	16
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	mv		t0,	t1
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	mv		a0,	t1
	call	point.__cons
	lw		t1,	56(sp)
	lw		t2,	44(sp)
	sw		t1,	0(t2)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	addi	t0,	t1,	4
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	addi	t0,	t1,	8
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	lw		t1,	72(sp)
	lw		t2,	84(sp)
	mul		t0,	t1,	t2
	sw		t0,	88(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	addi	t0,	t1,	8
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	addi	t0,	t1,	4
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	100(sp)
	lw		t2,	112(sp)
	mul		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	88(sp)
	lw		t2,	116(sp)
	sub		t0,	t1,	t2
	sw		t0,	120(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	addi	t0,	t1,	8
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	addi	t0,	t1,	0
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	lw		t0,	0(t1)
	sw		t0,	144(sp)
	lw		t1,	132(sp)
	lw		t2,	144(sp)
	mul		t0,	t1,	t2
	sw		t0,	148(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	addi	t0,	t1,	0
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	addi	t0,	t1,	8
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	lw		t1,	160(sp)
	lw		t2,	172(sp)
	mul		t0,	t1,	t2
	sw		t0,	176(sp)
	lw		t1,	148(sp)
	lw		t2,	176(sp)
	sub		t0,	t1,	t2
	sw		t0,	180(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	addi	t0,	t1,	0
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	lw		t0,	0(t1)
	sw		t0,	192(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	addi	t0,	t1,	4
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	lw		t0,	0(t1)
	sw		t0,	204(sp)
	lw		t1,	192(sp)
	lw		t2,	204(sp)
	mul		t0,	t1,	t2
	sw		t0,	208(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	addi	t0,	t1,	4
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	lw		t0,	0(t1)
	sw		t0,	220(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	addi	t0,	t1,	0
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	lw		t1,	220(sp)
	lw		t2,	232(sp)
	mul		t0,	t1,	t2
	sw		t0,	236(sp)
	lw		t1,	208(sp)
	lw		t2,	236(sp)
	sub		t0,	t1,	t2
	sw		t0,	240(sp)
	lw		t1,	60(sp)
	mv		a0,	t1
	lw		t1,	120(sp)
	mv		a1,	t1
	lw		t1,	180(sp)
	mv		a2,	t1
	lw		t1,	240(sp)
	mv		a3,	t1
	call	point.set
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	244(sp)
	lw		t1,	244(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	j		.point.cross.return
.point.cross.return:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	252
	ret
	.size	point.cross,	.-point.cross

	.globl	point.add
	.p2align	2
	.type	point.add,@function

point.add:
.point.add.entry:
	addi	sp,	sp,	-192
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	192
	mv		t0,	a0
	sw		t0,	20(sp)
	mv		t0,	a1
	sw		t0,	24(sp)
	addi	t0,	sp,	8
	sw		t0,	28(sp)
	addi	t0,	sp,	12
	sw		t0,	32(sp)
	lw		t1,	20(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	36(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	addi	t0,	t1,	0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	addi	t0,	t1,	0
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	addi	t0,	t1,	0
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	60(sp)
	lw		t2,	72(sp)
	add		t0,	t1,	t2
	sw		t0,	76(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	addi	t0,	t1,	0
	sw		t0,	84(sp)
	lw		t1,	76(sp)
	lw		t2,	84(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	addi	t0,	t1,	4
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	addi	t0,	t1,	4
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	addi	t0,	t1,	4
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	108(sp)
	lw		t2,	120(sp)
	add		t0,	t1,	t2
	sw		t0,	124(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	addi	t0,	t1,	4
	sw		t0,	132(sp)
	lw		t1,	124(sp)
	lw		t2,	132(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	addi	t0,	t1,	8
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	lw		t0,	0(t1)
	sw		t0,	144(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	addi	t0,	t1,	8
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t0,	0(t1)
	sw		t0,	156(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	addi	t0,	t1,	8
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	156(sp)
	lw		t2,	168(sp)
	add		t0,	t1,	t2
	sw		t0,	172(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	addi	t0,	t1,	8
	sw		t0,	180(sp)
	lw		t1,	172(sp)
	lw		t2,	180(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.point.add.return
.point.add.return:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	192
	ret
	.size	point.add,	.-point.add

	.globl	point.sub
	.p2align	2
	.type	point.sub,@function

point.sub:
.point.sub.entry:
	addi	sp,	sp,	-192
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	192
	mv		t0,	a0
	sw		t0,	20(sp)
	mv		t0,	a1
	sw		t0,	24(sp)
	addi	t0,	sp,	8
	sw		t0,	28(sp)
	addi	t0,	sp,	12
	sw		t0,	32(sp)
	lw		t1,	20(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	36(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	addi	t0,	t1,	0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	addi	t0,	t1,	0
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	addi	t0,	t1,	0
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	60(sp)
	lw		t2,	72(sp)
	sub		t0,	t1,	t2
	sw		t0,	76(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	addi	t0,	t1,	0
	sw		t0,	84(sp)
	lw		t1,	76(sp)
	lw		t2,	84(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	addi	t0,	t1,	4
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	addi	t0,	t1,	4
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	addi	t0,	t1,	4
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	108(sp)
	lw		t2,	120(sp)
	sub		t0,	t1,	t2
	sw		t0,	124(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	addi	t0,	t1,	4
	sw		t0,	132(sp)
	lw		t1,	124(sp)
	lw		t2,	132(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	addi	t0,	t1,	8
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	lw		t0,	0(t1)
	sw		t0,	144(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	addi	t0,	t1,	8
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t0,	0(t1)
	sw		t0,	156(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	addi	t0,	t1,	8
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	156(sp)
	lw		t2,	168(sp)
	sub		t0,	t1,	t2
	sw		t0,	172(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	addi	t0,	t1,	8
	sw		t0,	180(sp)
	lw		t1,	172(sp)
	lw		t2,	180(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.point.sub.return
.point.sub.return:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	192
	ret
	.size	point.sub,	.-point.sub

	.globl	point.printPoint
	.p2align	2
	.type	point.printPoint,@function

point.printPoint:
.point.printPoint.entry:
	addi	sp,	sp,	-108
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	108
	mv		t0,	a0
	sw		t0,	12(sp)
	addi	t0,	sp,	8
	sw		t0,	16(sp)
	lw		t1,	12(sp)
	lw		t2,	16(sp)
	sw		t1,	0(t2)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	20(sp)
	lw		t1,	20(sp)
	addi	t0,	t1,	0
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	32(sp)
	la		t0,	str.0
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	mv		a0,	t1
	lw		t1,	32(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		a0,	t1
	la		t0,	str.1
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	48(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	addi	t0,	t1,	4
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	64(sp)
	lw		t1,	48(sp)
	mv		a0,	t1
	lw		t1,	64(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	mv		a0,	t1
	la		t0,	str.1
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	76(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	addi	t0,	t1,	8
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	92(sp)
	lw		t1,	76(sp)
	mv		a0,	t1
	lw		t1,	92(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	mv		a0,	t1
	la		t0,	str.2
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	mv		a0,	t1
	call	println
	j		.point.printPoint.return
.point.printPoint.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	108
	ret
	.size	point.printPoint,	.-point.printPoint

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-496
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	496
	addi	t0,	sp,	8
	sw		t0,	28(sp)
	li		t0,	0
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	12
	sw		t0,	36(sp)
	li		t0,	16
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		t0,	t1
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		a0,	t1
	call	point.__cons
	lw		t1,	48(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	52(sp)
	li		t0,	16
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	mv		t0,	t1
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	mv		a0,	t1
	call	point.__cons
	lw		t1,	64(sp)
	lw		t2,	52(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	20
	sw		t0,	68(sp)
	li		t0,	16
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	mv		t0,	t1
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	mv		a0,	t1
	call	point.__cons
	lw		t1,	80(sp)
	lw		t2,	68(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	24
	sw		t0,	84(sp)
	li		t0,	16
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	mv		t0,	t1
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	mv		a0,	t1
	call	point.__cons
	lw		t1,	96(sp)
	lw		t2,	84(sp)
	sw		t1,	0(t2)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	mv		a0,	t1
	call	point.printPoint
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	li		t0,	0
	sw		t0,	108(sp)
	li		t0,	463
	sw		t0,	112(sp)
	lw		t1,	108(sp)
	lw		t2,	112(sp)
	sub		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	104(sp)
	mv		a0,	t1
	li		t0,	849
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	mv		a1,	t1
	lw		t1,	116(sp)
	mv		a2,	t1
	li		t0,	480
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	mv		a3,	t1
	call	point.set
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	li		t0,	0
	sw		t0,	132(sp)
	li		t0,	208
	sw		t0,	136(sp)
	lw		t1,	132(sp)
	lw		t2,	136(sp)
	sub		t0,	t1,	t2
	sw		t0,	140(sp)
	li		t0,	0
	sw		t0,	144(sp)
	li		t0,	150
	sw		t0,	148(sp)
	lw		t1,	144(sp)
	lw		t2,	148(sp)
	sub		t0,	t1,	t2
	sw		t0,	152(sp)
	lw		t1,	128(sp)
	mv		a0,	t1
	lw		t1,	140(sp)
	mv		a1,	t1
	li		t0,	585
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	mv		a2,	t1
	lw		t1,	152(sp)
	mv		a3,	t1
	call	point.set
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	li		t0,	0
	sw		t0,	164(sp)
	li		t0,	670
	sw		t0,	168(sp)
	lw		t1,	164(sp)
	lw		t2,	168(sp)
	sub		t0,	t1,	t2
	sw		t0,	172(sp)
	li		t0,	0
	sw		t0,	176(sp)
	li		t0,	742
	sw		t0,	180(sp)
	lw		t1,	176(sp)
	lw		t2,	180(sp)
	sub		t0,	t1,	t2
	sw		t0,	184(sp)
	lw		t1,	160(sp)
	mv		a0,	t1
	li		t0,	360
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	mv		a1,	t1
	lw		t1,	172(sp)
	mv		a2,	t1
	lw		t1,	184(sp)
	mv		a3,	t1
	call	point.set
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	192(sp)
	li		t0,	0
	sw		t0,	196(sp)
	li		t0,	29
	sw		t0,	200(sp)
	lw		t1,	196(sp)
	lw		t2,	200(sp)
	sub		t0,	t1,	t2
	sw		t0,	204(sp)
	li		t0,	0
	sw		t0,	208(sp)
	li		t0,	591
	sw		t0,	212(sp)
	lw		t1,	208(sp)
	lw		t2,	212(sp)
	sub		t0,	t1,	t2
	sw		t0,	216(sp)
	li		t0,	0
	sw		t0,	220(sp)
	li		t0,	960
	sw		t0,	224(sp)
	lw		t1,	220(sp)
	lw		t2,	224(sp)
	sub		t0,	t1,	t2
	sw		t0,	228(sp)
	lw		t1,	192(sp)
	mv		a0,	t1
	lw		t1,	204(sp)
	mv		a1,	t1
	lw		t1,	216(sp)
	mv		a2,	t1
	lw		t1,	228(sp)
	mv		a3,	t1
	call	point.set
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	236(sp)
	lw		t1,	232(sp)
	mv		a0,	t1
	lw		t1,	236(sp)
	mv		a1,	t1
	call	point.add
	mv		t0,	a0
	sw		t0,	240(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	244(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	248(sp)
	lw		t1,	244(sp)
	mv		a0,	t1
	lw		t1,	248(sp)
	mv		a1,	t1
	call	point.add
	mv		t0,	a0
	sw		t0,	252(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	256(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	lw		t1,	256(sp)
	mv		a0,	t1
	lw		t1,	260(sp)
	mv		a1,	t1
	call	point.add
	mv		t0,	a0
	sw		t0,	264(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	272(sp)
	lw		t1,	268(sp)
	mv		a0,	t1
	lw		t1,	272(sp)
	mv		a1,	t1
	call	point.sub
	mv		t0,	a0
	sw		t0,	276(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	280(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	284(sp)
	lw		t1,	280(sp)
	mv		a0,	t1
	lw		t1,	284(sp)
	mv		a1,	t1
	call	point.sub
	mv		t0,	a0
	sw		t0,	288(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	292(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	296(sp)
	lw		t1,	292(sp)
	mv		a0,	t1
	lw		t1,	296(sp)
	mv		a1,	t1
	call	point.sub
	mv		t0,	a0
	sw		t0,	300(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	304(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	308(sp)
	lw		t1,	304(sp)
	mv		a0,	t1
	lw		t1,	308(sp)
	mv		a1,	t1
	call	point.add
	mv		t0,	a0
	sw		t0,	312(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	316(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	320(sp)
	lw		t1,	316(sp)
	mv		a0,	t1
	lw		t1,	320(sp)
	mv		a1,	t1
	call	point.add
	mv		t0,	a0
	sw		t0,	324(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	328(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	332(sp)
	lw		t1,	328(sp)
	mv		a0,	t1
	lw		t1,	332(sp)
	mv		a1,	t1
	call	point.add
	mv		t0,	a0
	sw		t0,	336(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	340(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	344(sp)
	lw		t1,	340(sp)
	mv		a0,	t1
	lw		t1,	344(sp)
	mv		a1,	t1
	call	point.add
	mv		t0,	a0
	sw		t0,	348(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	352(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	356(sp)
	lw		t1,	352(sp)
	mv		a0,	t1
	lw		t1,	356(sp)
	mv		a1,	t1
	call	point.sub
	mv		t0,	a0
	sw		t0,	360(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	364(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	368(sp)
	lw		t1,	364(sp)
	mv		a0,	t1
	lw		t1,	368(sp)
	mv		a1,	t1
	call	point.add
	mv		t0,	a0
	sw		t0,	372(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	376(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	380(sp)
	lw		t1,	376(sp)
	mv		a0,	t1
	lw		t1,	380(sp)
	mv		a1,	t1
	call	point.sub
	mv		t0,	a0
	sw		t0,	384(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	mv		a0,	t1
	call	point.sqrLen
	mv		t0,	a0
	sw		t0,	392(sp)
	lw		t1,	392(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	396(sp)
	lw		t1,	396(sp)
	mv		a0,	t1
	call	println
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	400(sp)
	lw		t1,	400(sp)
	mv		a0,	t1
	call	point.sqrLen
	mv		t0,	a0
	sw		t0,	404(sp)
	lw		t1,	404(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	408(sp)
	lw		t1,	408(sp)
	mv		a0,	t1
	call	println
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	412(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	416(sp)
	lw		t1,	412(sp)
	mv		a0,	t1
	lw		t1,	416(sp)
	mv		a1,	t1
	call	point.sqrDis
	mv		t0,	a0
	sw		t0,	420(sp)
	lw		t1,	420(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	424(sp)
	lw		t1,	424(sp)
	mv		a0,	t1
	call	println
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	428(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	432(sp)
	lw		t1,	428(sp)
	mv		a0,	t1
	lw		t1,	432(sp)
	mv		a1,	t1
	call	point.sqrDis
	mv		t0,	a0
	sw		t0,	436(sp)
	lw		t1,	436(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	440(sp)
	lw		t1,	440(sp)
	mv		a0,	t1
	call	println
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	444(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	448(sp)
	lw		t1,	444(sp)
	mv		a0,	t1
	lw		t1,	448(sp)
	mv		a1,	t1
	call	point.dot
	mv		t0,	a0
	sw		t0,	452(sp)
	lw		t1,	452(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	456(sp)
	lw		t1,	456(sp)
	mv		a0,	t1
	call	println
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	460(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	464(sp)
	lw		t1,	460(sp)
	mv		a0,	t1
	lw		t1,	464(sp)
	mv		a1,	t1
	call	point.cross
	mv		t0,	a0
	sw		t0,	468(sp)
	lw		t1,	468(sp)
	mv		a0,	t1
	call	point.printPoint
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	472(sp)
	lw		t1,	472(sp)
	mv		a0,	t1
	call	point.printPoint
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	476(sp)
	lw		t1,	476(sp)
	mv		a0,	t1
	call	point.printPoint
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	480(sp)
	lw		t1,	480(sp)
	mv		a0,	t1
	call	point.printPoint
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	484(sp)
	lw		t1,	484(sp)
	mv		a0,	t1
	call	point.printPoint
	li		t0,	0
	sw		t0,	488(sp)
	lw		t1,	488(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.main.return
.main.return:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	492(sp)
	lw		t1,	492(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	496
	ret
	.size	main,	.-main

	.section	.bss
	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	"("
	.size	str.0,	2

	.globl	str.1
	.type	str.1,@object
str.1:
	.string	", "
	.size	str.1,	3

	.globl	str.2
	.type	str.2,@object
str.2:
	.string	")"
	.size	str.2,	2

