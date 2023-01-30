	.section	.text
	.globl	origin
	.p2align	2
	.type	origin,@function

origin:
.origin.entry:
	addi	sp,	sp,	-304
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	304
	mv		t0,	a0
	sw		t0,	12(sp)
	addi	t0,	sp,	8
	sw		t0,	16(sp)
	lw		t1,	12(sp)
	lw		t2,	16(sp)
	sw		t1,	0(t2)
	la		t0,	make
	sw		t0,	20(sp)
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	24(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	28(sp)
	li		t0,	4
	sw		t0,	32(sp)
	lw		t1,	28(sp)
	lw		t2,	32(sp)
	mul		t0,	t1,	t2
	sw		t0,	36(sp)
	li		t0,	4
	sw		t0,	40(sp)
	lw		t1,	36(sp)
	lw		t2,	40(sp)
	add		t0,	t1,	t2
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		t0,	t1
	sw		t0,	52(sp)
	lw		t1,	28(sp)
	lw		t2,	52(sp)
	sw		t1,	0(t2)
	lw		t1,	48(sp)
	addi	t0,	t1,	4
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	mv		t0,	t1
	sw		t0,	60(sp)
	la		t0,	make
	sw		t0,	64(sp)
	lw		t1,	60(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	la		t0,	i
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	li		t0,	0
	sw		t0,	76(sp)
	la		t0,	i
	sw		t0,	80(sp)
	lw		t1,	76(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.origin.0_for_condition
.origin.0_for_condition:
	la		t0,	i
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	88(sp)
	lw		t2,	92(sp)
	slt		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	beqz	t1,	.origin.0_for_terminate
.origin.0_for_loop:
	la		t0,	i
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	la		t0,	make
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	li		t0,	4
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t2,	104(sp)
	mul		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	112(sp)
	lw		t2,	116(sp)
	add		t0,	t1,	t2
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	li		t0,	4
	sw		t0,	132(sp)
	lw		t1,	128(sp)
	lw		t2,	132(sp)
	mul		t0,	t1,	t2
	sw		t0,	136(sp)
	li		t0,	4
	sw		t0,	140(sp)
	lw		t1,	136(sp)
	lw		t2,	140(sp)
	add		t0,	t1,	t2
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	mv		t0,	t1
	sw		t0,	152(sp)
	lw		t1,	128(sp)
	lw		t2,	152(sp)
	sw		t1,	0(t2)
	lw		t1,	148(sp)
	addi	t0,	t1,	4
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	mv		t0,	t1
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	lw		t2,	120(sp)
	sw		t1,	0(t2)
	la		t0,	j
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	li		t0,	0
	sw		t0,	172(sp)
	la		t0,	j
	sw		t0,	176(sp)
	lw		t1,	172(sp)
	lw		t2,	176(sp)
	sw		t1,	0(t2)
	j		.origin.1_for_condition
.origin.1_for_condition:
	la		t0,	j
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	lw		t1,	184(sp)
	lw		t2,	188(sp)
	slt		t0,	t1,	t2
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	beqz	t1,	.origin.1_for_terminate
.origin.1_for_loop:
	la		t0,	j
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t0,	0(t1)
	sw		t0,	200(sp)
	la		t0,	i
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	la		t0,	make
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	lw		t0,	0(t1)
	sw		t0,	216(sp)
	li		t0,	4
	sw		t0,	220(sp)
	lw		t1,	220(sp)
	lw		t2,	208(sp)
	mul		t0,	t1,	t2
	sw		t0,	220(sp)
	lw		t1,	216(sp)
	lw		t2,	220(sp)
	add		t0,	t1,	t2
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	lw		t0,	0(t1)
	sw		t0,	228(sp)
	li		t0,	4
	sw		t0,	232(sp)
	lw		t1,	232(sp)
	lw		t2,	200(sp)
	mul		t0,	t1,	t2
	sw		t0,	232(sp)
	lw		t1,	228(sp)
	lw		t2,	232(sp)
	add		t0,	t1,	t2
	sw		t0,	236(sp)
	lw		t1,	236(sp)
	lw		t0,	0(t1)
	sw		t0,	240(sp)
	li		t0,	0
	sw		t0,	244(sp)
	lw		t1,	244(sp)
	lw		t2,	236(sp)
	sw		t1,	0(t2)
	j		.origin.1_for_execution
.origin.1_for_execution:
	la		t0,	j
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t0,	0(t1)
	sw		t0,	252(sp)
	la		t0,	j
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	li		t0,	1
	sw		t0,	264(sp)
	lw		t1,	252(sp)
	lw		t2,	264(sp)
	add		t0,	t1,	t2
	sw		t0,	268(sp)
	la		t0,	j
	sw		t0,	272(sp)
	lw		t1,	268(sp)
	lw		t2,	272(sp)
	sw		t1,	0(t2)
	j		.origin.1_for_condition
.origin.1_for_terminate:
	j		.origin.0_for_execution
.origin.0_for_execution:
	la		t0,	i
	sw		t0,	276(sp)
	lw		t1,	276(sp)
	lw		t0,	0(t1)
	sw		t0,	280(sp)
	la		t0,	i
	sw		t0,	284(sp)
	lw		t1,	284(sp)
	lw		t0,	0(t1)
	sw		t0,	288(sp)
	li		t0,	1
	sw		t0,	292(sp)
	lw		t1,	280(sp)
	lw		t2,	292(sp)
	add		t0,	t1,	t2
	sw		t0,	296(sp)
	la		t0,	i
	sw		t0,	300(sp)
	lw		t1,	296(sp)
	lw		t2,	300(sp)
	sw		t1,	0(t2)
	j		.origin.0_for_condition
.origin.0_for_terminate:
	j		.origin.return
.origin.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	304
	ret
	.size	origin,	.-origin

	.globl	search
	.p2align	2
	.type	search,@function

search:
.search.entry:
	li		t0,	-2208
	add		sp,	sp,	t0
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	li		t0,	2208
	add		s0,	sp,	t0
	mv		t0,	a0
	sw		t0,	80(sp)
	mv		t0,	a1
	sw		t0,	84(sp)
	mv		t0,	a2
	sw		t0,	88(sp)
	addi	t0,	sp,	8
	sw		t0,	92(sp)
	addi	t0,	sp,	12
	sw		t0,	96(sp)
	addi	t0,	sp,	16
	sw		t0,	100(sp)
	lw		t1,	80(sp)
	lw		t2,	92(sp)
	sw		t1,	0(t2)
	lw		t1,	84(sp)
	lw		t2,	96(sp)
	sw		t1,	0(t2)
	lw		t1,	88(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	20
	sw		t0,	104(sp)
	li		t0,	0
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t2,	104(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	24
	sw		t0,	112(sp)
	li		t0,	0
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t2,	112(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	28
	sw		t0,	120(sp)
	li		t0,	0
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	lw		t2,	120(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	32
	sw		t0,	128(sp)
	addi	t0,	sp,	36
	sw		t0,	132(sp)
	addi	t0,	sp,	40
	sw		t0,	136(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	li		t0,	0
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t2,	140(sp)
	slt		t0,	t1,	t2
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	lw		t2,	136(sp)
	sw		t1,	0(t2)
	lw		t1,	148(sp)
	beqz	t1,	.search.2_or_rhs_block
.search.2_or_rhs_block:
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	152(sp)
	li		t0,	0
	sw		t0,	156(sp)
	lw		t1,	152(sp)
	lw		t2,	156(sp)
	slt		t0,	t1,	t2
	sw		t0,	160(sp)
	lw		t1,	148(sp)
	lw		t2,	160(sp)
	or		t0,	t1,	t2
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t2,	136(sp)
	sw		t1,	0(t2)
	j		.search.2_or_terminate_block
.search.2_or_terminate_block:
	lw		t1,	136(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	lw		t2,	132(sp)
	sw		t1,	0(t2)
	lw		t1,	168(sp)
	beqz	t1,	.search.3_or_rhs_block
.search.3_or_rhs_block:
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	li		t0,	0
	sw		t0,	176(sp)
	lw		t1,	172(sp)
	lw		t2,	176(sp)
	xor		t0,	t1,	t2
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	seqz	t0,	t1
	sw		t0,	180(sp)
	lw		t1,	168(sp)
	lw		t2,	180(sp)
	or		t0,	t1,	t2
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t2,	132(sp)
	sw		t1,	0(t2)
	j		.search.3_or_terminate_block
.search.3_or_terminate_block:
	lw		t1,	132(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	lw		t2,	128(sp)
	sw		t1,	0(t2)
	lw		t1,	188(sp)
	beqz	t1,	.search.4_or_rhs_block
.search.4_or_rhs_block:
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	192(sp)
	li		t0,	1
	sw		t0,	196(sp)
	lw		t1,	192(sp)
	lw		t2,	196(sp)
	sub		t0,	t1,	t2
	sw		t0,	200(sp)
	la		t0,	make
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	li		t0,	4
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	lw		t2,	200(sp)
	mul		t0,	t1,	t2
	sw		t0,	212(sp)
	lw		t1,	208(sp)
	lw		t2,	212(sp)
	add		t0,	t1,	t2
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	lw		t0,	0(t1)
	sw		t0,	220(sp)
	lw		t1,	220(sp)
	addi	t0,	t1,	0
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	lw		t0,	0(t1)
	sw		t0,	228(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	li		t0,	1
	sw		t0,	236(sp)
	lw		t1,	232(sp)
	lw		t2,	236(sp)
	sub		t0,	t1,	t2
	sw		t0,	240(sp)
	la		t0,	make
	sw		t0,	244(sp)
	lw		t1,	244(sp)
	lw		t0,	0(t1)
	sw		t0,	248(sp)
	li		t0,	4
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	lw		t2,	240(sp)
	mul		t0,	t1,	t2
	sw		t0,	252(sp)
	lw		t1,	248(sp)
	lw		t2,	252(sp)
	add		t0,	t1,	t2
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	addi	t0,	t1,	4
	sw		t0,	264(sp)
	lw		t1,	264(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	lw		t1,	228(sp)
	lw		t2,	268(sp)
	add		t0,	t1,	t2
	sw		t0,	272(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	276(sp)
	li		t0,	1
	sw		t0,	280(sp)
	lw		t1,	276(sp)
	lw		t2,	280(sp)
	sub		t0,	t1,	t2
	sw		t0,	284(sp)
	la		t0,	make
	sw		t0,	288(sp)
	lw		t1,	288(sp)
	lw		t0,	0(t1)
	sw		t0,	292(sp)
	li		t0,	4
	sw		t0,	296(sp)
	lw		t1,	296(sp)
	lw		t2,	284(sp)
	mul		t0,	t1,	t2
	sw		t0,	296(sp)
	lw		t1,	292(sp)
	lw		t2,	296(sp)
	add		t0,	t1,	t2
	sw		t0,	300(sp)
	lw		t1,	300(sp)
	lw		t0,	0(t1)
	sw		t0,	304(sp)
	lw		t1,	304(sp)
	addi	t0,	t1,	8
	sw		t0,	308(sp)
	lw		t1,	308(sp)
	lw		t0,	0(t1)
	sw		t0,	312(sp)
	lw		t1,	272(sp)
	lw		t2,	312(sp)
	add		t0,	t1,	t2
	sw		t0,	316(sp)
	li		t0,	15
	sw		t0,	320(sp)
	lw		t1,	316(sp)
	lw		t2,	320(sp)
	xor		t0,	t1,	t2
	sw		t0,	324(sp)
	lw		t1,	324(sp)
	seqz	t0,	t1
	sw		t0,	324(sp)
	lw		t1,	188(sp)
	lw		t2,	324(sp)
	or		t0,	t1,	t2
	sw		t0,	328(sp)
	lw		t1,	328(sp)
	lw		t2,	128(sp)
	sw		t1,	0(t2)
	j		.search.4_or_terminate_block
.search.4_or_terminate_block:
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	332(sp)
	lw		t1,	332(sp)
	beqz	t1,	.search.5_if_terminate
.search.5_if_true:
	addi	t0,	sp,	44
	sw		t0,	336(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	340(sp)
	li		t0,	2
	sw		t0,	344(sp)
	lw		t1,	340(sp)
	lw		t2,	344(sp)
	xor		t0,	t1,	t2
	sw		t0,	348(sp)
	lw		t1,	348(sp)
	seqz	t0,	t1
	sw		t0,	348(sp)
	lw		t1,	348(sp)
	lw		t2,	336(sp)
	sw		t1,	0(t2)
	lw		t1,	348(sp)
	beqz	t1,	.search.6_and_terminate_block
.search.6_and_rhs_block:
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	352(sp)
	li		t0,	2
	sw		t0,	356(sp)
	lw		t1,	352(sp)
	lw		t2,	356(sp)
	xor		t0,	t1,	t2
	sw		t0,	360(sp)
	lw		t1,	360(sp)
	seqz	t0,	t1
	sw		t0,	360(sp)
	lw		t1,	348(sp)
	lw		t2,	360(sp)
	and		t0,	t1,	t2
	sw		t0,	364(sp)
	lw		t1,	364(sp)
	lw		t2,	336(sp)
	sw		t1,	0(t2)
	j		.search.6_and_terminate_block
.search.6_and_terminate_block:
	lw		t1,	336(sp)
	lw		t0,	0(t1)
	sw		t0,	368(sp)
	lw		t1,	368(sp)
	beqz	t1,	.search.7_if_false
.search.7_if_true:
	la		t0,	make
	sw		t0,	372(sp)
	lw		t1,	372(sp)
	lw		t0,	0(t1)
	sw		t0,	376(sp)
	lw		t1,	376(sp)
	addi	t0,	t1,	8
	sw		t0,	380(sp)
	lw		t1,	380(sp)
	lw		t0,	0(t1)
	sw		t0,	384(sp)
	lw		t1,	384(sp)
	addi	t0,	t1,	8
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	lw		t0,	0(t1)
	sw		t0,	392(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	396(sp)
	li		t0,	45
	sw		t0,	400(sp)
	lw		t1,	400(sp)
	lw		t2,	396(sp)
	sub		t0,	t1,	t2
	sw		t0,	404(sp)
	lw		t1,	404(sp)
	lw		t2,	388(sp)
	sw		t1,	0(t2)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	408(sp)
	la		t0,	make
	sw		t0,	412(sp)
	lw		t1,	412(sp)
	lw		t0,	0(t1)
	sw		t0,	416(sp)
	lw		t1,	416(sp)
	addi	t0,	t1,	0
	sw		t0,	420(sp)
	lw		t1,	420(sp)
	lw		t0,	0(t1)
	sw		t0,	424(sp)
	lw		t1,	424(sp)
	addi	t0,	t1,	0
	sw		t0,	428(sp)
	lw		t1,	428(sp)
	lw		t0,	0(t1)
	sw		t0,	432(sp)
	la		t0,	make
	sw		t0,	436(sp)
	lw		t1,	436(sp)
	lw		t0,	0(t1)
	sw		t0,	440(sp)
	lw		t1,	440(sp)
	addi	t0,	t1,	0
	sw		t0,	444(sp)
	lw		t1,	444(sp)
	lw		t0,	0(t1)
	sw		t0,	448(sp)
	lw		t1,	448(sp)
	addi	t0,	t1,	4
	sw		t0,	452(sp)
	lw		t1,	452(sp)
	lw		t0,	0(t1)
	sw		t0,	456(sp)
	lw		t1,	432(sp)
	lw		t2,	456(sp)
	add		t0,	t1,	t2
	sw		t0,	460(sp)
	la		t0,	make
	sw		t0,	464(sp)
	lw		t1,	464(sp)
	lw		t0,	0(t1)
	sw		t0,	468(sp)
	lw		t1,	468(sp)
	addi	t0,	t1,	0
	sw		t0,	472(sp)
	lw		t1,	472(sp)
	lw		t0,	0(t1)
	sw		t0,	476(sp)
	lw		t1,	476(sp)
	addi	t0,	t1,	8
	sw		t0,	480(sp)
	lw		t1,	480(sp)
	lw		t0,	0(t1)
	sw		t0,	484(sp)
	lw		t1,	460(sp)
	lw		t2,	484(sp)
	add		t0,	t1,	t2
	sw		t0,	488(sp)
	lw		t1,	488(sp)
	lw		t2,	104(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	48
	sw		t0,	492(sp)
	addi	t0,	sp,	52
	sw		t0,	496(sp)
	addi	t0,	sp,	56
	sw		t0,	500(sp)
	addi	t0,	sp,	60
	sw		t0,	504(sp)
	addi	t0,	sp,	64
	sw		t0,	508(sp)
	addi	t0,	sp,	68
	sw		t0,	512(sp)
	la		t0,	make
	sw		t0,	516(sp)
	lw		t1,	516(sp)
	lw		t0,	0(t1)
	sw		t0,	520(sp)
	lw		t1,	520(sp)
	addi	t0,	t1,	4
	sw		t0,	524(sp)
	lw		t1,	524(sp)
	lw		t0,	0(t1)
	sw		t0,	528(sp)
	lw		t1,	528(sp)
	addi	t0,	t1,	0
	sw		t0,	532(sp)
	lw		t1,	532(sp)
	lw		t0,	0(t1)
	sw		t0,	536(sp)
	la		t0,	make
	sw		t0,	540(sp)
	lw		t1,	540(sp)
	lw		t0,	0(t1)
	sw		t0,	544(sp)
	lw		t1,	544(sp)
	addi	t0,	t1,	4
	sw		t0,	548(sp)
	lw		t1,	548(sp)
	lw		t0,	0(t1)
	sw		t0,	552(sp)
	lw		t1,	552(sp)
	addi	t0,	t1,	4
	sw		t0,	556(sp)
	lw		t1,	556(sp)
	lw		t0,	0(t1)
	sw		t0,	560(sp)
	lw		t1,	536(sp)
	lw		t2,	560(sp)
	add		t0,	t1,	t2
	sw		t0,	564(sp)
	la		t0,	make
	sw		t0,	568(sp)
	lw		t1,	568(sp)
	lw		t0,	0(t1)
	sw		t0,	572(sp)
	lw		t1,	572(sp)
	addi	t0,	t1,	4
	sw		t0,	576(sp)
	lw		t1,	576(sp)
	lw		t0,	0(t1)
	sw		t0,	580(sp)
	lw		t1,	580(sp)
	addi	t0,	t1,	8
	sw		t0,	584(sp)
	lw		t1,	584(sp)
	lw		t0,	0(t1)
	sw		t0,	588(sp)
	lw		t1,	564(sp)
	lw		t2,	588(sp)
	add		t0,	t1,	t2
	sw		t0,	592(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	596(sp)
	lw		t1,	592(sp)
	lw		t2,	596(sp)
	xor		t0,	t1,	t2
	sw		t0,	600(sp)
	lw		t1,	600(sp)
	seqz	t0,	t1
	sw		t0,	600(sp)
	lw		t1,	600(sp)
	lw		t2,	512(sp)
	sw		t1,	0(t2)
	lw		t1,	600(sp)
	beqz	t1,	.search.8_and_terminate_block
.search.8_and_rhs_block:
	la		t0,	make
	sw		t0,	604(sp)
	lw		t1,	604(sp)
	lw		t0,	0(t1)
	sw		t0,	608(sp)
	lw		t1,	608(sp)
	addi	t0,	t1,	8
	sw		t0,	612(sp)
	lw		t1,	612(sp)
	lw		t0,	0(t1)
	sw		t0,	616(sp)
	lw		t1,	616(sp)
	addi	t0,	t1,	0
	sw		t0,	620(sp)
	lw		t1,	620(sp)
	lw		t0,	0(t1)
	sw		t0,	624(sp)
	la		t0,	make
	sw		t0,	628(sp)
	lw		t1,	628(sp)
	lw		t0,	0(t1)
	sw		t0,	632(sp)
	lw		t1,	632(sp)
	addi	t0,	t1,	8
	sw		t0,	636(sp)
	lw		t1,	636(sp)
	lw		t0,	0(t1)
	sw		t0,	640(sp)
	lw		t1,	640(sp)
	addi	t0,	t1,	4
	sw		t0,	644(sp)
	lw		t1,	644(sp)
	lw		t0,	0(t1)
	sw		t0,	648(sp)
	lw		t1,	624(sp)
	lw		t2,	648(sp)
	add		t0,	t1,	t2
	sw		t0,	652(sp)
	la		t0,	make
	sw		t0,	656(sp)
	lw		t1,	656(sp)
	lw		t0,	0(t1)
	sw		t0,	660(sp)
	lw		t1,	660(sp)
	addi	t0,	t1,	8
	sw		t0,	664(sp)
	lw		t1,	664(sp)
	lw		t0,	0(t1)
	sw		t0,	668(sp)
	lw		t1,	668(sp)
	addi	t0,	t1,	8
	sw		t0,	672(sp)
	lw		t1,	672(sp)
	lw		t0,	0(t1)
	sw		t0,	676(sp)
	lw		t1,	652(sp)
	lw		t2,	676(sp)
	add		t0,	t1,	t2
	sw		t0,	680(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	684(sp)
	lw		t1,	680(sp)
	lw		t2,	684(sp)
	xor		t0,	t1,	t2
	sw		t0,	688(sp)
	lw		t1,	688(sp)
	seqz	t0,	t1
	sw		t0,	688(sp)
	lw		t1,	600(sp)
	lw		t2,	688(sp)
	and		t0,	t1,	t2
	sw		t0,	692(sp)
	lw		t1,	692(sp)
	lw		t2,	512(sp)
	sw		t1,	0(t2)
	j		.search.8_and_terminate_block
.search.8_and_terminate_block:
	lw		t1,	512(sp)
	lw		t0,	0(t1)
	sw		t0,	696(sp)
	lw		t1,	696(sp)
	lw		t2,	508(sp)
	sw		t1,	0(t2)
	lw		t1,	696(sp)
	beqz	t1,	.search.9_and_terminate_block
.search.9_and_rhs_block:
	la		t0,	make
	sw		t0,	700(sp)
	lw		t1,	700(sp)
	lw		t0,	0(t1)
	sw		t0,	704(sp)
	lw		t1,	704(sp)
	addi	t0,	t1,	0
	sw		t0,	708(sp)
	lw		t1,	708(sp)
	lw		t0,	0(t1)
	sw		t0,	712(sp)
	lw		t1,	712(sp)
	addi	t0,	t1,	0
	sw		t0,	716(sp)
	lw		t1,	716(sp)
	lw		t0,	0(t1)
	sw		t0,	720(sp)
	la		t0,	make
	sw		t0,	724(sp)
	lw		t1,	724(sp)
	lw		t0,	0(t1)
	sw		t0,	728(sp)
	lw		t1,	728(sp)
	addi	t0,	t1,	4
	sw		t0,	732(sp)
	lw		t1,	732(sp)
	lw		t0,	0(t1)
	sw		t0,	736(sp)
	lw		t1,	736(sp)
	addi	t0,	t1,	0
	sw		t0,	740(sp)
	lw		t1,	740(sp)
	lw		t0,	0(t1)
	sw		t0,	744(sp)
	lw		t1,	720(sp)
	lw		t2,	744(sp)
	add		t0,	t1,	t2
	sw		t0,	748(sp)
	la		t0,	make
	sw		t0,	752(sp)
	lw		t1,	752(sp)
	lw		t0,	0(t1)
	sw		t0,	756(sp)
	lw		t1,	756(sp)
	addi	t0,	t1,	8
	sw		t0,	760(sp)
	lw		t1,	760(sp)
	lw		t0,	0(t1)
	sw		t0,	764(sp)
	lw		t1,	764(sp)
	addi	t0,	t1,	0
	sw		t0,	768(sp)
	lw		t1,	768(sp)
	lw		t0,	0(t1)
	sw		t0,	772(sp)
	lw		t1,	748(sp)
	lw		t2,	772(sp)
	add		t0,	t1,	t2
	sw		t0,	776(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	780(sp)
	lw		t1,	776(sp)
	lw		t2,	780(sp)
	xor		t0,	t1,	t2
	sw		t0,	784(sp)
	lw		t1,	784(sp)
	seqz	t0,	t1
	sw		t0,	784(sp)
	lw		t1,	696(sp)
	lw		t2,	784(sp)
	and		t0,	t1,	t2
	sw		t0,	788(sp)
	lw		t1,	788(sp)
	lw		t2,	508(sp)
	sw		t1,	0(t2)
	j		.search.9_and_terminate_block
.search.9_and_terminate_block:
	lw		t1,	508(sp)
	lw		t0,	0(t1)
	sw		t0,	792(sp)
	lw		t1,	792(sp)
	lw		t2,	504(sp)
	sw		t1,	0(t2)
	lw		t1,	792(sp)
	beqz	t1,	.search.10_and_terminate_block
.search.10_and_rhs_block:
	la		t0,	make
	sw		t0,	796(sp)
	lw		t1,	796(sp)
	lw		t0,	0(t1)
	sw		t0,	800(sp)
	lw		t1,	800(sp)
	addi	t0,	t1,	0
	sw		t0,	804(sp)
	lw		t1,	804(sp)
	lw		t0,	0(t1)
	sw		t0,	808(sp)
	lw		t1,	808(sp)
	addi	t0,	t1,	4
	sw		t0,	812(sp)
	lw		t1,	812(sp)
	lw		t0,	0(t1)
	sw		t0,	816(sp)
	la		t0,	make
	sw		t0,	820(sp)
	lw		t1,	820(sp)
	lw		t0,	0(t1)
	sw		t0,	824(sp)
	lw		t1,	824(sp)
	addi	t0,	t1,	4
	sw		t0,	828(sp)
	lw		t1,	828(sp)
	lw		t0,	0(t1)
	sw		t0,	832(sp)
	lw		t1,	832(sp)
	addi	t0,	t1,	4
	sw		t0,	836(sp)
	lw		t1,	836(sp)
	lw		t0,	0(t1)
	sw		t0,	840(sp)
	lw		t1,	816(sp)
	lw		t2,	840(sp)
	add		t0,	t1,	t2
	sw		t0,	844(sp)
	la		t0,	make
	sw		t0,	848(sp)
	lw		t1,	848(sp)
	lw		t0,	0(t1)
	sw		t0,	852(sp)
	lw		t1,	852(sp)
	addi	t0,	t1,	8
	sw		t0,	856(sp)
	lw		t1,	856(sp)
	lw		t0,	0(t1)
	sw		t0,	860(sp)
	lw		t1,	860(sp)
	addi	t0,	t1,	4
	sw		t0,	864(sp)
	lw		t1,	864(sp)
	lw		t0,	0(t1)
	sw		t0,	868(sp)
	lw		t1,	844(sp)
	lw		t2,	868(sp)
	add		t0,	t1,	t2
	sw		t0,	872(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	876(sp)
	lw		t1,	872(sp)
	lw		t2,	876(sp)
	xor		t0,	t1,	t2
	sw		t0,	880(sp)
	lw		t1,	880(sp)
	seqz	t0,	t1
	sw		t0,	880(sp)
	lw		t1,	792(sp)
	lw		t2,	880(sp)
	and		t0,	t1,	t2
	sw		t0,	884(sp)
	lw		t1,	884(sp)
	lw		t2,	504(sp)
	sw		t1,	0(t2)
	j		.search.10_and_terminate_block
.search.10_and_terminate_block:
	lw		t1,	504(sp)
	lw		t0,	0(t1)
	sw		t0,	888(sp)
	lw		t1,	888(sp)
	lw		t2,	500(sp)
	sw		t1,	0(t2)
	lw		t1,	888(sp)
	beqz	t1,	.search.11_and_terminate_block
.search.11_and_rhs_block:
	la		t0,	make
	sw		t0,	892(sp)
	lw		t1,	892(sp)
	lw		t0,	0(t1)
	sw		t0,	896(sp)
	lw		t1,	896(sp)
	addi	t0,	t1,	0
	sw		t0,	900(sp)
	lw		t1,	900(sp)
	lw		t0,	0(t1)
	sw		t0,	904(sp)
	lw		t1,	904(sp)
	addi	t0,	t1,	8
	sw		t0,	908(sp)
	lw		t1,	908(sp)
	lw		t0,	0(t1)
	sw		t0,	912(sp)
	la		t0,	make
	sw		t0,	916(sp)
	lw		t1,	916(sp)
	lw		t0,	0(t1)
	sw		t0,	920(sp)
	lw		t1,	920(sp)
	addi	t0,	t1,	4
	sw		t0,	924(sp)
	lw		t1,	924(sp)
	lw		t0,	0(t1)
	sw		t0,	928(sp)
	lw		t1,	928(sp)
	addi	t0,	t1,	8
	sw		t0,	932(sp)
	lw		t1,	932(sp)
	lw		t0,	0(t1)
	sw		t0,	936(sp)
	lw		t1,	912(sp)
	lw		t2,	936(sp)
	add		t0,	t1,	t2
	sw		t0,	940(sp)
	la		t0,	make
	sw		t0,	944(sp)
	lw		t1,	944(sp)
	lw		t0,	0(t1)
	sw		t0,	948(sp)
	lw		t1,	948(sp)
	addi	t0,	t1,	8
	sw		t0,	952(sp)
	lw		t1,	952(sp)
	lw		t0,	0(t1)
	sw		t0,	956(sp)
	lw		t1,	956(sp)
	addi	t0,	t1,	8
	sw		t0,	960(sp)
	lw		t1,	960(sp)
	lw		t0,	0(t1)
	sw		t0,	964(sp)
	lw		t1,	940(sp)
	lw		t2,	964(sp)
	add		t0,	t1,	t2
	sw		t0,	968(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	972(sp)
	lw		t1,	968(sp)
	lw		t2,	972(sp)
	xor		t0,	t1,	t2
	sw		t0,	976(sp)
	lw		t1,	976(sp)
	seqz	t0,	t1
	sw		t0,	976(sp)
	lw		t1,	888(sp)
	lw		t2,	976(sp)
	and		t0,	t1,	t2
	sw		t0,	980(sp)
	lw		t1,	980(sp)
	lw		t2,	500(sp)
	sw		t1,	0(t2)
	j		.search.11_and_terminate_block
.search.11_and_terminate_block:
	lw		t1,	500(sp)
	lw		t0,	0(t1)
	sw		t0,	984(sp)
	lw		t1,	984(sp)
	lw		t2,	496(sp)
	sw		t1,	0(t2)
	lw		t1,	984(sp)
	beqz	t1,	.search.12_and_terminate_block
.search.12_and_rhs_block:
	la		t0,	make
	sw		t0,	988(sp)
	lw		t1,	988(sp)
	lw		t0,	0(t1)
	sw		t0,	992(sp)
	lw		t1,	992(sp)
	addi	t0,	t1,	0
	sw		t0,	996(sp)
	lw		t1,	996(sp)
	lw		t0,	0(t1)
	sw		t0,	1000(sp)
	lw		t1,	1000(sp)
	addi	t0,	t1,	0
	sw		t0,	1004(sp)
	lw		t1,	1004(sp)
	lw		t0,	0(t1)
	sw		t0,	1008(sp)
	la		t0,	make
	sw		t0,	1012(sp)
	lw		t1,	1012(sp)
	lw		t0,	0(t1)
	sw		t0,	1016(sp)
	lw		t1,	1016(sp)
	addi	t0,	t1,	4
	sw		t0,	1020(sp)
	lw		t1,	1020(sp)
	lw		t0,	0(t1)
	sw		t0,	1024(sp)
	lw		t1,	1024(sp)
	addi	t0,	t1,	4
	sw		t0,	1028(sp)
	lw		t1,	1028(sp)
	lw		t0,	0(t1)
	sw		t0,	1032(sp)
	lw		t1,	1008(sp)
	lw		t2,	1032(sp)
	add		t0,	t1,	t2
	sw		t0,	1036(sp)
	la		t0,	make
	sw		t0,	1040(sp)
	lw		t1,	1040(sp)
	lw		t0,	0(t1)
	sw		t0,	1044(sp)
	lw		t1,	1044(sp)
	addi	t0,	t1,	8
	sw		t0,	1048(sp)
	lw		t1,	1048(sp)
	lw		t0,	0(t1)
	sw		t0,	1052(sp)
	lw		t1,	1052(sp)
	addi	t0,	t1,	8
	sw		t0,	1056(sp)
	lw		t1,	1056(sp)
	lw		t0,	0(t1)
	sw		t0,	1060(sp)
	lw		t1,	1036(sp)
	lw		t2,	1060(sp)
	add		t0,	t1,	t2
	sw		t0,	1064(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	1068(sp)
	lw		t1,	1064(sp)
	lw		t2,	1068(sp)
	xor		t0,	t1,	t2
	sw		t0,	1072(sp)
	lw		t1,	1072(sp)
	seqz	t0,	t1
	sw		t0,	1072(sp)
	lw		t1,	984(sp)
	lw		t2,	1072(sp)
	and		t0,	t1,	t2
	sw		t0,	1076(sp)
	lw		t1,	1076(sp)
	lw		t2,	496(sp)
	sw		t1,	0(t2)
	j		.search.12_and_terminate_block
.search.12_and_terminate_block:
	lw		t1,	496(sp)
	lw		t0,	0(t1)
	sw		t0,	1080(sp)
	lw		t1,	1080(sp)
	lw		t2,	492(sp)
	sw		t1,	0(t2)
	lw		t1,	1080(sp)
	beqz	t1,	.search.13_and_terminate_block
.search.13_and_rhs_block:
	la		t0,	make
	sw		t0,	1084(sp)
	lw		t1,	1084(sp)
	lw		t0,	0(t1)
	sw		t0,	1088(sp)
	lw		t1,	1088(sp)
	addi	t0,	t1,	8
	sw		t0,	1092(sp)
	lw		t1,	1092(sp)
	lw		t0,	0(t1)
	sw		t0,	1096(sp)
	lw		t1,	1096(sp)
	addi	t0,	t1,	0
	sw		t0,	1100(sp)
	lw		t1,	1100(sp)
	lw		t0,	0(t1)
	sw		t0,	1104(sp)
	la		t0,	make
	sw		t0,	1108(sp)
	lw		t1,	1108(sp)
	lw		t0,	0(t1)
	sw		t0,	1112(sp)
	lw		t1,	1112(sp)
	addi	t0,	t1,	4
	sw		t0,	1116(sp)
	lw		t1,	1116(sp)
	lw		t0,	0(t1)
	sw		t0,	1120(sp)
	lw		t1,	1120(sp)
	addi	t0,	t1,	4
	sw		t0,	1124(sp)
	lw		t1,	1124(sp)
	lw		t0,	0(t1)
	sw		t0,	1128(sp)
	lw		t1,	1104(sp)
	lw		t2,	1128(sp)
	add		t0,	t1,	t2
	sw		t0,	1132(sp)
	la		t0,	make
	sw		t0,	1136(sp)
	lw		t1,	1136(sp)
	lw		t0,	0(t1)
	sw		t0,	1140(sp)
	lw		t1,	1140(sp)
	addi	t0,	t1,	0
	sw		t0,	1144(sp)
	lw		t1,	1144(sp)
	lw		t0,	0(t1)
	sw		t0,	1148(sp)
	lw		t1,	1148(sp)
	addi	t0,	t1,	8
	sw		t0,	1152(sp)
	lw		t1,	1152(sp)
	lw		t0,	0(t1)
	sw		t0,	1156(sp)
	lw		t1,	1132(sp)
	lw		t2,	1156(sp)
	add		t0,	t1,	t2
	sw		t0,	1160(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	1164(sp)
	lw		t1,	1160(sp)
	lw		t2,	1164(sp)
	xor		t0,	t1,	t2
	sw		t0,	1168(sp)
	lw		t1,	1168(sp)
	seqz	t0,	t1
	sw		t0,	1168(sp)
	lw		t1,	1080(sp)
	lw		t2,	1168(sp)
	and		t0,	t1,	t2
	sw		t0,	1172(sp)
	lw		t1,	1172(sp)
	lw		t2,	492(sp)
	sw		t1,	0(t2)
	j		.search.13_and_terminate_block
.search.13_and_terminate_block:
	lw		t1,	492(sp)
	lw		t0,	0(t1)
	sw		t0,	1176(sp)
	lw		t1,	1176(sp)
	beqz	t1,	.search.14_if_terminate
.search.14_if_true:
	la		t0,	count
	sw		t0,	1180(sp)
	lw		t1,	1180(sp)
	lw		t0,	0(t1)
	sw		t0,	1184(sp)
	lw		t1,	1184(sp)
	addi	t0,	t1,	0
	sw		t0,	1188(sp)
	lw		t1,	1188(sp)
	lw		t0,	0(t1)
	sw		t0,	1192(sp)
	la		t0,	count
	sw		t0,	1196(sp)
	lw		t1,	1196(sp)
	lw		t0,	0(t1)
	sw		t0,	1200(sp)
	lw		t1,	1200(sp)
	addi	t0,	t1,	0
	sw		t0,	1204(sp)
	lw		t1,	1204(sp)
	lw		t0,	0(t1)
	sw		t0,	1208(sp)
	li		t0,	1
	sw		t0,	1212(sp)
	lw		t1,	1208(sp)
	lw		t2,	1212(sp)
	add		t0,	t1,	t2
	sw		t0,	1216(sp)
	lw		t1,	1216(sp)
	lw		t2,	1188(sp)
	sw		t1,	0(t2)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	1220(sp)
	li		t0,	0
	sw		t0,	1224(sp)
	lw		t1,	1224(sp)
	lw		t2,	112(sp)
	sw		t1,	0(t2)
	j		.search.15_for_condition
.search.15_for_condition:
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	1228(sp)
	li		t0,	2
	sw		t0,	1232(sp)
	lw		t1,	1232(sp)
	lw		t2,	1228(sp)
	slt		t0,	t1,	t2
	sw		t0,	1236(sp)
	lw		t1,	1236(sp)
	seqz	t0,	t1
	sw		t0,	1236(sp)
	lw		t1,	1236(sp)
	beqz	t1,	.search.15_for_terminate
.search.15_for_loop:
	lw		t1,	120(sp)
	lw		t0,	0(t1)
	sw		t0,	1240(sp)
	li		t0,	0
	sw		t0,	1244(sp)
	lw		t1,	1244(sp)
	lw		t2,	120(sp)
	sw		t1,	0(t2)
	j		.search.16_for_condition
.search.16_for_condition:
	lw		t1,	120(sp)
	lw		t0,	0(t1)
	sw		t0,	1248(sp)
	li		t0,	2
	sw		t0,	1252(sp)
	lw		t1,	1252(sp)
	lw		t2,	1248(sp)
	slt		t0,	t1,	t2
	sw		t0,	1256(sp)
	lw		t1,	1256(sp)
	seqz	t0,	t1
	sw		t0,	1256(sp)
	lw		t1,	1256(sp)
	beqz	t1,	.search.16_for_terminate
.search.16_for_loop:
	lw		t1,	120(sp)
	lw		t0,	0(t1)
	sw		t0,	1260(sp)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	1264(sp)
	la		t0,	make
	sw		t0,	1268(sp)
	lw		t1,	1268(sp)
	lw		t0,	0(t1)
	sw		t0,	1272(sp)
	li		t0,	4
	sw		t0,	1276(sp)
	lw		t1,	1276(sp)
	lw		t2,	1264(sp)
	mul		t0,	t1,	t2
	sw		t0,	1276(sp)
	lw		t1,	1272(sp)
	lw		t2,	1276(sp)
	add		t0,	t1,	t2
	sw		t0,	1280(sp)
	lw		t1,	1280(sp)
	lw		t0,	0(t1)
	sw		t0,	1284(sp)
	li		t0,	4
	sw		t0,	1288(sp)
	lw		t1,	1288(sp)
	lw		t2,	1260(sp)
	mul		t0,	t1,	t2
	sw		t0,	1288(sp)
	lw		t1,	1284(sp)
	lw		t2,	1288(sp)
	add		t0,	t1,	t2
	sw		t0,	1292(sp)
	lw		t1,	1292(sp)
	lw		t0,	0(t1)
	sw		t0,	1296(sp)
	lw		t1,	1296(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	1300(sp)
	lw		t1,	1300(sp)
	mv		a0,	t1
	call	print
	la		t0,	str.0
	sw		t0,	1304(sp)
	lw		t1,	1304(sp)
	mv		a0,	t1
	call	print
	j		.search.16_for_execution
.search.16_for_execution:
	lw		t1,	120(sp)
	lw		t0,	0(t1)
	sw		t0,	1308(sp)
	lw		t1,	120(sp)
	lw		t0,	0(t1)
	sw		t0,	1312(sp)
	li		t0,	1
	sw		t0,	1316(sp)
	lw		t1,	1308(sp)
	lw		t2,	1316(sp)
	add		t0,	t1,	t2
	sw		t0,	1320(sp)
	lw		t1,	1320(sp)
	lw		t2,	120(sp)
	sw		t1,	0(t2)
	j		.search.16_for_condition
.search.16_for_terminate:
	la		t0,	str.1
	sw		t0,	1324(sp)
	lw		t1,	1324(sp)
	mv		a0,	t1
	call	print
	j		.search.15_for_execution
.search.15_for_execution:
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	1328(sp)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	1332(sp)
	li		t0,	1
	sw		t0,	1336(sp)
	lw		t1,	1328(sp)
	lw		t2,	1336(sp)
	add		t0,	t1,	t2
	sw		t0,	1340(sp)
	lw		t1,	1340(sp)
	lw		t2,	112(sp)
	sw		t1,	0(t2)
	j		.search.15_for_condition
.search.15_for_terminate:
	lw		t1,	1324(sp)
	mv		a0,	t1
	call	print
	j		.search.14_if_terminate
.search.14_if_terminate:
	j		.search.7_if_terminate
.search.7_if_false:
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1344(sp)
	li		t0,	2
	sw		t0,	1348(sp)
	lw		t1,	1344(sp)
	lw		t2,	1348(sp)
	xor		t0,	t1,	t2
	sw		t0,	1352(sp)
	lw		t1,	1352(sp)
	seqz	t0,	t1
	sw		t0,	1352(sp)
	lw		t1,	1352(sp)
	beqz	t1,	.search.17_if_false
.search.17_if_true:
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1356(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1360(sp)
	la		t0,	make
	sw		t0,	1364(sp)
	lw		t1,	1364(sp)
	lw		t0,	0(t1)
	sw		t0,	1368(sp)
	li		t0,	4
	sw		t0,	1372(sp)
	lw		t1,	1372(sp)
	lw		t2,	1360(sp)
	mul		t0,	t1,	t2
	sw		t0,	1372(sp)
	lw		t1,	1368(sp)
	lw		t2,	1372(sp)
	add		t0,	t1,	t2
	sw		t0,	1376(sp)
	lw		t1,	1376(sp)
	lw		t0,	0(t1)
	sw		t0,	1380(sp)
	li		t0,	4
	sw		t0,	1384(sp)
	lw		t1,	1384(sp)
	lw		t2,	1356(sp)
	mul		t0,	t1,	t2
	sw		t0,	1384(sp)
	lw		t1,	1380(sp)
	lw		t2,	1384(sp)
	add		t0,	t1,	t2
	sw		t0,	1388(sp)
	lw		t1,	1388(sp)
	lw		t0,	0(t1)
	sw		t0,	1392(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1396(sp)
	la		t0,	make
	sw		t0,	1400(sp)
	lw		t1,	1400(sp)
	lw		t0,	0(t1)
	sw		t0,	1404(sp)
	li		t0,	4
	sw		t0,	1408(sp)
	lw		t1,	1408(sp)
	lw		t2,	1396(sp)
	mul		t0,	t1,	t2
	sw		t0,	1408(sp)
	lw		t1,	1404(sp)
	lw		t2,	1408(sp)
	add		t0,	t1,	t2
	sw		t0,	1412(sp)
	lw		t1,	1412(sp)
	lw		t0,	0(t1)
	sw		t0,	1416(sp)
	lw		t1,	1416(sp)
	addi	t0,	t1,	0
	sw		t0,	1420(sp)
	lw		t1,	1420(sp)
	lw		t0,	0(t1)
	sw		t0,	1424(sp)
	li		t0,	15
	sw		t0,	1428(sp)
	lw		t1,	1428(sp)
	lw		t2,	1424(sp)
	sub		t0,	t1,	t2
	sw		t0,	1432(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1436(sp)
	la		t0,	make
	sw		t0,	1440(sp)
	lw		t1,	1440(sp)
	lw		t0,	0(t1)
	sw		t0,	1444(sp)
	li		t0,	4
	sw		t0,	1448(sp)
	lw		t1,	1448(sp)
	lw		t2,	1436(sp)
	mul		t0,	t1,	t2
	sw		t0,	1448(sp)
	lw		t1,	1444(sp)
	lw		t2,	1448(sp)
	add		t0,	t1,	t2
	sw		t0,	1452(sp)
	lw		t1,	1452(sp)
	lw		t0,	0(t1)
	sw		t0,	1456(sp)
	lw		t1,	1456(sp)
	addi	t0,	t1,	4
	sw		t0,	1460(sp)
	lw		t1,	1460(sp)
	lw		t0,	0(t1)
	sw		t0,	1464(sp)
	lw		t1,	1432(sp)
	lw		t2,	1464(sp)
	sub		t0,	t1,	t2
	sw		t0,	1468(sp)
	lw		t1,	1468(sp)
	lw		t2,	1388(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	72
	sw		t0,	1472(sp)
	addi	t0,	sp,	76
	sw		t0,	1476(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1480(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1484(sp)
	la		t0,	make
	sw		t0,	1488(sp)
	lw		t1,	1488(sp)
	lw		t0,	0(t1)
	sw		t0,	1492(sp)
	li		t0,	4
	sw		t0,	1496(sp)
	lw		t1,	1496(sp)
	lw		t2,	1484(sp)
	mul		t0,	t1,	t2
	sw		t0,	1496(sp)
	lw		t1,	1492(sp)
	lw		t2,	1496(sp)
	add		t0,	t1,	t2
	sw		t0,	1500(sp)
	lw		t1,	1500(sp)
	lw		t0,	0(t1)
	sw		t0,	1504(sp)
	li		t0,	4
	sw		t0,	1508(sp)
	lw		t1,	1508(sp)
	lw		t2,	1480(sp)
	mul		t0,	t1,	t2
	sw		t0,	1508(sp)
	lw		t1,	1504(sp)
	lw		t2,	1508(sp)
	add		t0,	t1,	t2
	sw		t0,	1512(sp)
	lw		t1,	1512(sp)
	lw		t0,	0(t1)
	sw		t0,	1516(sp)
	li		t0,	0
	sw		t0,	1520(sp)
	lw		t1,	1520(sp)
	lw		t2,	1516(sp)
	slt		t0,	t1,	t2
	sw		t0,	1524(sp)
	lw		t1,	1524(sp)
	lw		t2,	1476(sp)
	sw		t1,	0(t2)
	lw		t1,	1524(sp)
	beqz	t1,	.search.18_and_terminate_block
.search.18_and_rhs_block:
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1528(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1532(sp)
	la		t0,	make
	sw		t0,	1536(sp)
	lw		t1,	1536(sp)
	lw		t0,	0(t1)
	sw		t0,	1540(sp)
	li		t0,	4
	sw		t0,	1544(sp)
	lw		t1,	1544(sp)
	lw		t2,	1532(sp)
	mul		t0,	t1,	t2
	sw		t0,	1544(sp)
	lw		t1,	1540(sp)
	lw		t2,	1544(sp)
	add		t0,	t1,	t2
	sw		t0,	1548(sp)
	lw		t1,	1548(sp)
	lw		t0,	0(t1)
	sw		t0,	1552(sp)
	li		t0,	4
	sw		t0,	1556(sp)
	lw		t1,	1556(sp)
	lw		t2,	1528(sp)
	mul		t0,	t1,	t2
	sw		t0,	1556(sp)
	lw		t1,	1552(sp)
	lw		t2,	1556(sp)
	add		t0,	t1,	t2
	sw		t0,	1560(sp)
	lw		t1,	1560(sp)
	lw		t0,	0(t1)
	sw		t0,	1564(sp)
	li		t0,	10
	sw		t0,	1568(sp)
	lw		t1,	1564(sp)
	lw		t2,	1568(sp)
	slt		t0,	t1,	t2
	sw		t0,	1572(sp)
	lw		t1,	1524(sp)
	lw		t2,	1572(sp)
	and		t0,	t1,	t2
	sw		t0,	1576(sp)
	lw		t1,	1576(sp)
	lw		t2,	1476(sp)
	sw		t1,	0(t2)
	j		.search.18_and_terminate_block
.search.18_and_terminate_block:
	lw		t1,	1476(sp)
	lw		t0,	0(t1)
	sw		t0,	1580(sp)
	lw		t1,	1580(sp)
	lw		t2,	1472(sp)
	sw		t1,	0(t2)
	lw		t1,	1580(sp)
	beqz	t1,	.search.19_and_terminate_block
.search.19_and_rhs_block:
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1584(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1588(sp)
	la		t0,	make
	sw		t0,	1592(sp)
	lw		t1,	1592(sp)
	lw		t0,	0(t1)
	sw		t0,	1596(sp)
	li		t0,	4
	sw		t0,	1600(sp)
	lw		t1,	1600(sp)
	lw		t2,	1588(sp)
	mul		t0,	t1,	t2
	sw		t0,	1600(sp)
	lw		t1,	1596(sp)
	lw		t2,	1600(sp)
	add		t0,	t1,	t2
	sw		t0,	1604(sp)
	lw		t1,	1604(sp)
	lw		t0,	0(t1)
	sw		t0,	1608(sp)
	li		t0,	4
	sw		t0,	1612(sp)
	lw		t1,	1612(sp)
	lw		t2,	1584(sp)
	mul		t0,	t1,	t2
	sw		t0,	1612(sp)
	lw		t1,	1608(sp)
	lw		t2,	1612(sp)
	add		t0,	t1,	t2
	sw		t0,	1616(sp)
	lw		t1,	1616(sp)
	lw		t0,	0(t1)
	sw		t0,	1620(sp)
	la		t0,	color
	sw		t0,	1624(sp)
	lw		t1,	1624(sp)
	lw		t0,	0(t1)
	sw		t0,	1628(sp)
	li		t0,	4
	sw		t0,	1632(sp)
	lw		t1,	1632(sp)
	lw		t2,	1620(sp)
	mul		t0,	t1,	t2
	sw		t0,	1632(sp)
	lw		t1,	1628(sp)
	lw		t2,	1632(sp)
	add		t0,	t1,	t2
	sw		t0,	1636(sp)
	lw		t1,	1636(sp)
	lw		t0,	0(t1)
	sw		t0,	1640(sp)
	li		t0,	0
	sw		t0,	1644(sp)
	lw		t1,	1640(sp)
	lw		t2,	1644(sp)
	xor		t0,	t1,	t2
	sw		t0,	1648(sp)
	lw		t1,	1648(sp)
	seqz	t0,	t1
	sw		t0,	1648(sp)
	lw		t1,	1580(sp)
	lw		t2,	1648(sp)
	and		t0,	t1,	t2
	sw		t0,	1652(sp)
	lw		t1,	1652(sp)
	lw		t2,	1472(sp)
	sw		t1,	0(t2)
	j		.search.19_and_terminate_block
.search.19_and_terminate_block:
	lw		t1,	1472(sp)
	lw		t0,	0(t1)
	sw		t0,	1656(sp)
	lw		t1,	1656(sp)
	beqz	t1,	.search.20_if_terminate
.search.20_if_true:
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1660(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1664(sp)
	la		t0,	make
	sw		t0,	1668(sp)
	lw		t1,	1668(sp)
	lw		t0,	0(t1)
	sw		t0,	1672(sp)
	li		t0,	4
	sw		t0,	1676(sp)
	lw		t1,	1676(sp)
	lw		t2,	1664(sp)
	mul		t0,	t1,	t2
	sw		t0,	1676(sp)
	lw		t1,	1672(sp)
	lw		t2,	1676(sp)
	add		t0,	t1,	t2
	sw		t0,	1680(sp)
	lw		t1,	1680(sp)
	lw		t0,	0(t1)
	sw		t0,	1684(sp)
	li		t0,	4
	sw		t0,	1688(sp)
	lw		t1,	1688(sp)
	lw		t2,	1660(sp)
	mul		t0,	t1,	t2
	sw		t0,	1688(sp)
	lw		t1,	1684(sp)
	lw		t2,	1688(sp)
	add		t0,	t1,	t2
	sw		t0,	1692(sp)
	lw		t1,	1692(sp)
	lw		t0,	0(t1)
	sw		t0,	1696(sp)
	la		t0,	color
	sw		t0,	1700(sp)
	lw		t1,	1700(sp)
	lw		t0,	0(t1)
	sw		t0,	1704(sp)
	li		t0,	4
	sw		t0,	1708(sp)
	lw		t1,	1708(sp)
	lw		t2,	1696(sp)
	mul		t0,	t1,	t2
	sw		t0,	1708(sp)
	lw		t1,	1704(sp)
	lw		t2,	1708(sp)
	add		t0,	t1,	t2
	sw		t0,	1712(sp)
	lw		t1,	1712(sp)
	lw		t0,	0(t1)
	sw		t0,	1716(sp)
	li		t0,	1
	sw		t0,	1720(sp)
	lw		t1,	1720(sp)
	lw		t2,	1712(sp)
	sw		t1,	0(t2)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1724(sp)
	li		t0,	2
	sw		t0,	1728(sp)
	lw		t1,	1724(sp)
	lw		t2,	1728(sp)
	xor		t0,	t1,	t2
	sw		t0,	1732(sp)
	lw		t1,	1732(sp)
	seqz	t0,	t1
	sw		t0,	1732(sp)
	lw		t1,	1732(sp)
	beqz	t1,	.search.21_if_false
.search.21_if_true:
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1736(sp)
	li		t0,	1
	sw		t0,	1740(sp)
	lw		t1,	1736(sp)
	lw		t2,	1740(sp)
	add		t0,	t1,	t2
	sw		t0,	1744(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	1748(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1752(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1756(sp)
	la		t0,	make
	sw		t0,	1760(sp)
	lw		t1,	1760(sp)
	lw		t0,	0(t1)
	sw		t0,	1764(sp)
	li		t0,	4
	sw		t0,	1768(sp)
	lw		t1,	1768(sp)
	lw		t2,	1756(sp)
	mul		t0,	t1,	t2
	sw		t0,	1768(sp)
	lw		t1,	1764(sp)
	lw		t2,	1768(sp)
	add		t0,	t1,	t2
	sw		t0,	1772(sp)
	lw		t1,	1772(sp)
	lw		t0,	0(t1)
	sw		t0,	1776(sp)
	li		t0,	4
	sw		t0,	1780(sp)
	lw		t1,	1780(sp)
	lw		t2,	1752(sp)
	mul		t0,	t1,	t2
	sw		t0,	1780(sp)
	lw		t1,	1776(sp)
	lw		t2,	1780(sp)
	add		t0,	t1,	t2
	sw		t0,	1784(sp)
	lw		t1,	1784(sp)
	lw		t0,	0(t1)
	sw		t0,	1788(sp)
	lw		t1,	1748(sp)
	lw		t2,	1788(sp)
	add		t0,	t1,	t2
	sw		t0,	1792(sp)
	lw		t1,	1744(sp)
	mv		a0,	t1
	li		t0,	0
	sw		t0,	1796(sp)
	lw		t1,	1796(sp)
	mv		a1,	t1
	lw		t1,	1792(sp)
	mv		a2,	t1
	call	search
	j		.search.21_if_terminate
.search.21_if_false:
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1800(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1804(sp)
	li		t0,	1
	sw		t0,	1808(sp)
	lw		t1,	1804(sp)
	lw		t2,	1808(sp)
	add		t0,	t1,	t2
	sw		t0,	1812(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	1816(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1820(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1824(sp)
	la		t0,	make
	sw		t0,	1828(sp)
	lw		t1,	1828(sp)
	lw		t0,	0(t1)
	sw		t0,	1832(sp)
	li		t0,	4
	sw		t0,	1836(sp)
	lw		t1,	1836(sp)
	lw		t2,	1824(sp)
	mul		t0,	t1,	t2
	sw		t0,	1836(sp)
	lw		t1,	1832(sp)
	lw		t2,	1836(sp)
	add		t0,	t1,	t2
	sw		t0,	1840(sp)
	lw		t1,	1840(sp)
	lw		t0,	0(t1)
	sw		t0,	1844(sp)
	li		t0,	4
	sw		t0,	1848(sp)
	lw		t1,	1848(sp)
	lw		t2,	1820(sp)
	mul		t0,	t1,	t2
	sw		t0,	1848(sp)
	lw		t1,	1844(sp)
	lw		t2,	1848(sp)
	add		t0,	t1,	t2
	sw		t0,	1852(sp)
	lw		t1,	1852(sp)
	lw		t0,	0(t1)
	sw		t0,	1856(sp)
	lw		t1,	1816(sp)
	lw		t2,	1856(sp)
	add		t0,	t1,	t2
	sw		t0,	1860(sp)
	lw		t1,	1800(sp)
	mv		a0,	t1
	lw		t1,	1812(sp)
	mv		a1,	t1
	lw		t1,	1860(sp)
	mv		a2,	t1
	call	search
	j		.search.21_if_terminate
.search.21_if_terminate:
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	1864(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	1868(sp)
	la		t0,	make
	sw		t0,	1872(sp)
	lw		t1,	1872(sp)
	lw		t0,	0(t1)
	sw		t0,	1876(sp)
	li		t0,	4
	sw		t0,	1880(sp)
	lw		t1,	1880(sp)
	lw		t2,	1868(sp)
	mul		t0,	t1,	t2
	sw		t0,	1880(sp)
	lw		t1,	1876(sp)
	lw		t2,	1880(sp)
	add		t0,	t1,	t2
	sw		t0,	1884(sp)
	lw		t1,	1884(sp)
	lw		t0,	0(t1)
	sw		t0,	1888(sp)
	li		t0,	4
	sw		t0,	1892(sp)
	lw		t1,	1892(sp)
	lw		t2,	1864(sp)
	mul		t0,	t1,	t2
	sw		t0,	1892(sp)
	lw		t1,	1888(sp)
	lw		t2,	1892(sp)
	add		t0,	t1,	t2
	sw		t0,	1896(sp)
	lw		t1,	1896(sp)
	lw		t0,	0(t1)
	sw		t0,	1900(sp)
	la		t0,	color
	sw		t0,	1904(sp)
	lw		t1,	1904(sp)
	lw		t0,	0(t1)
	sw		t0,	1908(sp)
	li		t0,	4
	sw		t0,	1912(sp)
	lw		t1,	1912(sp)
	lw		t2,	1900(sp)
	mul		t0,	t1,	t2
	sw		t0,	1912(sp)
	lw		t1,	1908(sp)
	lw		t2,	1912(sp)
	add		t0,	t1,	t2
	sw		t0,	1916(sp)
	lw		t1,	1916(sp)
	lw		t0,	0(t1)
	sw		t0,	1920(sp)
	li		t0,	0
	sw		t0,	1924(sp)
	lw		t1,	1924(sp)
	lw		t2,	1916(sp)
	sw		t1,	0(t2)
	j		.search.20_if_terminate
.search.20_if_terminate:
	j		.search.17_if_terminate
.search.17_if_false:
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	1928(sp)
	li		t0,	1
	sw		t0,	1932(sp)
	lw		t1,	1932(sp)
	lw		t2,	112(sp)
	sw		t1,	0(t2)
	j		.search.22_for_condition
.search.22_for_condition:
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	1936(sp)
	li		t0,	9
	sw		t0,	1940(sp)
	lw		t1,	1940(sp)
	lw		t2,	1936(sp)
	slt		t0,	t1,	t2
	sw		t0,	1944(sp)
	lw		t1,	1944(sp)
	seqz	t0,	t1
	sw		t0,	1944(sp)
	lw		t1,	1944(sp)
	beqz	t1,	.search.22_for_terminate
.search.22_for_loop:
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	1948(sp)
	la		t0,	color
	sw		t0,	1952(sp)
	lw		t1,	1952(sp)
	lw		t0,	0(t1)
	sw		t0,	1956(sp)
	li		t0,	4
	sw		t0,	1960(sp)
	lw		t1,	1960(sp)
	lw		t2,	1948(sp)
	mul		t0,	t1,	t2
	sw		t0,	1960(sp)
	lw		t1,	1956(sp)
	lw		t2,	1960(sp)
	add		t0,	t1,	t2
	sw		t0,	1964(sp)
	lw		t1,	1964(sp)
	lw		t0,	0(t1)
	sw		t0,	1968(sp)
	li		t0,	0
	sw		t0,	1972(sp)
	lw		t1,	1968(sp)
	lw		t2,	1972(sp)
	xor		t0,	t1,	t2
	sw		t0,	1976(sp)
	lw		t1,	1976(sp)
	seqz	t0,	t1
	sw		t0,	1976(sp)
	lw		t1,	1976(sp)
	beqz	t1,	.search.23_if_terminate
.search.23_if_true:
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	1980(sp)
	la		t0,	color
	sw		t0,	1984(sp)
	lw		t1,	1984(sp)
	lw		t0,	0(t1)
	sw		t0,	1988(sp)
	li		t0,	4
	sw		t0,	1992(sp)
	lw		t1,	1992(sp)
	lw		t2,	1980(sp)
	mul		t0,	t1,	t2
	sw		t0,	1992(sp)
	lw		t1,	1988(sp)
	lw		t2,	1992(sp)
	add		t0,	t1,	t2
	sw		t0,	1996(sp)
	lw		t1,	1996(sp)
	lw		t0,	0(t1)
	sw		t0,	2000(sp)
	li		t0,	1
	sw		t0,	2004(sp)
	lw		t1,	2004(sp)
	lw		t2,	1996(sp)
	sw		t1,	0(t2)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	2008(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	2012(sp)
	la		t0,	make
	sw		t0,	2016(sp)
	lw		t1,	2016(sp)
	lw		t0,	0(t1)
	sw		t0,	2020(sp)
	li		t0,	4
	sw		t0,	2024(sp)
	lw		t1,	2024(sp)
	lw		t2,	2012(sp)
	mul		t0,	t1,	t2
	sw		t0,	2024(sp)
	lw		t1,	2020(sp)
	lw		t2,	2024(sp)
	add		t0,	t1,	t2
	sw		t0,	2028(sp)
	lw		t1,	2028(sp)
	lw		t0,	0(t1)
	sw		t0,	2032(sp)
	li		t0,	4
	sw		t0,	2036(sp)
	lw		t1,	2036(sp)
	lw		t2,	2008(sp)
	mul		t0,	t1,	t2
	sw		t0,	2036(sp)
	lw		t1,	2032(sp)
	lw		t2,	2036(sp)
	add		t0,	t1,	t2
	sw		t0,	2040(sp)
	lw		t1,	2040(sp)
	lw		t0,	0(t1)
	sw		t0,	2044(sp)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	li		t3,	2048
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2048
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	lw		t2,	2040(sp)
	sw		t1,	0(t2)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	li		t3,	2052
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t0,	2
	li		t3,	2056
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2052
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2056
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	xor		t0,	t1,	t2
	li		t3,	2060
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2060
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	seqz	t0,	t1
	li		t3,	2060
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2060
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	beqz	t1,	.search.24_if_false
.search.24_if_true:
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	li		t3,	2064
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t0,	1
	li		t3,	2068
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2064
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2068
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	add		t0,	t1,	t2
	li		t3,	2072
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	li		t3,	2076
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	li		t3,	2080
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2076
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2080
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	add		t0,	t1,	t2
	li		t3,	2084
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2072
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t0,	0
	li		t3,	2088
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2088
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	mv		a1,	t1
	li		t3,	2084
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	mv		a2,	t1
	call	search
	j		.search.24_if_terminate
.search.24_if_false:
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	li		t3,	2092
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	li		t3,	2096
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t0,	1
	li		t3,	2100
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2096
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2100
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	add		t0,	t1,	t2
	li		t3,	2104
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	li		t3,	2108
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	li		t3,	2112
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2108
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2112
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	add		t0,	t1,	t2
	li		t3,	2116
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2092
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	mv		a0,	t1
	li		t3,	2104
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	mv		a1,	t1
	li		t3,	2116
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	mv		a2,	t1
	call	search
	j		.search.24_if_terminate
.search.24_if_terminate:
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	li		t3,	2120
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	li		t3,	2124
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	la		t0,	make
	li		t3,	2128
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2128
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2132
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t0,	4
	li		t3,	2136
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2136
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2124
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	mul		t0,	t1,	t2
	li		t3,	2136
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2132
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2136
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	add		t0,	t1,	t2
	li		t3,	2140
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2140
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2144
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t0,	4
	li		t3,	2148
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2148
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2120
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	mul		t0,	t1,	t2
	li		t3,	2148
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2144
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2148
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	add		t0,	t1,	t2
	li		t3,	2152
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2152
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2156
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t0,	0
	li		t3,	2160
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2160
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2152
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	li		t3,	2164
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	la		t0,	color
	li		t3,	2168
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2168
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2172
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t0,	4
	li		t3,	2176
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2176
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2164
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	mul		t0,	t1,	t2
	li		t3,	2176
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2172
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2176
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	add		t0,	t1,	t2
	li		t3,	2180
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2180
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	lw		t0,	0(t1)
	li		t3,	2184
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t0,	0
	li		t3,	2188
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2188
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2180
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	sw		t1,	0(t2)
	j		.search.23_if_terminate
.search.23_if_terminate:
	j		.search.22_for_execution
.search.22_for_execution:
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	li		t3,	2192
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	li		t3,	2196
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t0,	1
	li		t3,	2200
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2192
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	li		t3,	2200
	add		t3,	t3,	sp
	lw		t2,	0(t3)
	add		t0,	t1,	t2
	li		t3,	2204
	add		t3,	t3,	sp
	sw		t0,	0(t3)
	li		t3,	2204
	add		t3,	t3,	sp
	lw		t1,	0(t3)
	lw		t2,	112(sp)
	sw		t1,	0(t2)
	j		.search.22_for_condition
.search.22_for_terminate:
	j		.search.17_if_terminate
.search.17_if_terminate:
	j		.search.7_if_terminate
.search.7_if_terminate:
	j		.search.5_if_terminate
.search.5_if_terminate:
	j		.search.return
.search.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	li		t0,	2208
	add		sp,	sp,	t0
	ret
	.size	search,	.-search

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-84
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	84
	call	__global_init_0
	call	__global_init_1
	addi	t0,	sp,	8
	sw		t0,	12(sp)
	li		t0,	0
	sw		t0,	16(sp)
	lw		t1,	16(sp)
	lw		t2,	12(sp)
	sw		t1,	0(t2)
	la		t0,	count
	sw		t0,	20(sp)
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	addi	t0,	t1,	0
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	32(sp)
	li		t0,	0
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	li		t0,	3
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		a0,	t1
	call	origin
	li		t0,	0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		a0,	t1
	li		t0,	0
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		a1,	t1
	li		t0,	0
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	mv		a2,	t1
	call	search
	la		t0,	count
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	addi	t0,	t1,	0
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		a0,	t1
	call	println
	li		t0,	0
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	lw		t2,	12(sp)
	sw		t1,	0(t2)
	j		.main.return
.main.return:
	lw		t1,	12(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	84
	ret
	.size	main,	.-main

	.globl	__global_init_0
	.p2align	2
	.type	__global_init_0,@function

__global_init_0:
.__global_init_0.entry:
	addi	sp,	sp,	-52
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	52
	li		t0,	10
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
	li		t0,	10
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	addi	t0,	t1,	4
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		t0,	t1
	sw		t0,	44(sp)
	la		t0,	color
	sw		t0,	48(sp)
	lw		t1,	44(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	j		.__global_init_0.return
.__global_init_0.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	52
	ret
	.size	__global_init_0,	.-__global_init_0

	.globl	__global_init_1
	.p2align	2
	.type	__global_init_1,@function

__global_init_1:
.__global_init_1.entry:
	addi	sp,	sp,	-52
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	52
	li		t0,	1
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
	li		t0,	1
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	addi	t0,	t1,	4
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		t0,	t1
	sw		t0,	44(sp)
	la		t0,	count
	sw		t0,	48(sp)
	lw		t1,	44(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	j		.__global_init_1.return
.__global_init_1.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	52
	ret
	.size	__global_init_1,	.-__global_init_1

	.section	.bss
	.globl	make
	.type	make,@object
make:
	.word	0
	.size	make,	4

	.globl	color
	.type	color,@object
color:
	.word	0
	.size	color,	4

	.globl	count
	.type	count,@object
count:
	.word	0
	.size	count,	4

	.globl	i
	.type	i,@object
i:
	.word	0
	.size	i,	4

	.globl	j
	.type	j,@object
j:
	.word	0
	.size	j,	4

	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	" "
	.size	str.0,	2

	.globl	str.1
	.type	str.1,@object
str.1:
	.string	"\n"
	.size	str.1,	2

