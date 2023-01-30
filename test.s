	.section	.text
	.globl	getHash
	.p2align	2
	.type	getHash,@function

getHash:
.getHash.entry:
	addi	sp,	sp,	-48
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	48
	mv		t0,	a0
	sw		t0,	8(sp)
	lw		t1,	8(sp)
	mv		t0,	t1
	sw		t0,	12(sp)
	lw		t1,	12(sp)
	mv		t0,	t1
	sw		t0,	16(sp)
	li		t0,	237
	sw		t0,	20(sp)
	lw		t1,	16(sp)
	lw		t2,	20(sp)
	mul		t0,	t1,	t2
	sw		t0,	24(sp)
	la		t0,	hashsize
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	32(sp)
	lw		t1,	24(sp)
	lw		t2,	32(sp)
	rem		t0,	t1,	t2
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	40(sp)
	j		.getHash.return
.getHash.return:
	lw		t1,	40(sp)
	mv		t0,	t1
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	48
	ret
	.size	getHash,	.-getHash

	.globl	put
	.p2align	2
	.type	put,@function

put:
.put.entry:
	addi	sp,	sp,	-400
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	400
	mv		t0,	a0
	sw		t0,	8(sp)
	mv		t0,	a1
	sw		t0,	12(sp)
	lw		t1,	8(sp)
	mv		t0,	t1
	sw		t0,	16(sp)
	lw		t1,	12(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	li		t0,	0
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	mv		t0,	t1
	sw		t0,	28(sp)
	li		t0,	0
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	mv		t0,	t1
	sw		t0,	36(sp)
	lw		t1,	28(sp)
	mv		t0,	t1
	sw		t0,	40(sp)
	lw		t1,	16(sp)
	mv		t0,	t1
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		a0,	t1
	call	getHash
	mv		t0,	a0
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		t0,	t1
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	mv		t0,	t1
	sw		t0,	52(sp)
	la		t0,	table
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	li		t0,	4
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t2,	52(sp)
	mul		t0,	t1,	t2
	sw		t0,	64(sp)
	lw		t1,	60(sp)
	lw		t2,	64(sp)
	add		t0,	t1,	t2
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	li		t0,	0
	sw		t0,	76(sp)
	lw		t1,	72(sp)
	lw		t2,	76(sp)
	xor		t0,	t1,	t2
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	seqz	t0,	t1
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	beqz	t1,	.put.0_if_terminate
.put.0_if_true:
	lw		t1,	28(sp)
	mv		t0,	t1
	sw		t0,	84(sp)
	la		t0,	table
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	li		t0,	4
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t2,	84(sp)
	mul		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	92(sp)
	lw		t2,	96(sp)
	add		t0,	t1,	t2
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	li		t0,	12
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	mv		t0,	t1
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	mv		t0,	t1
	sw		t0,	120(sp)
	la		t0,	table
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	li		t0,	4
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	lw		t2,	120(sp)
	mul		t0,	t1,	t2
	sw		t0,	132(sp)
	lw		t1,	128(sp)
	lw		t2,	132(sp)
	add		t0,	t1,	t2
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	addi	t0,	t1,	0
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	lw		t1,	16(sp)
	mv		t0,	t1
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t2,	144(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	mv		t0,	t1
	sw		t0,	156(sp)
	la		t0,	table
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	li		t0,	4
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	lw		t2,	156(sp)
	mul		t0,	t1,	t2
	sw		t0,	168(sp)
	lw		t1,	164(sp)
	lw		t2,	168(sp)
	add		t0,	t1,	t2
	sw		t0,	172(sp)
	lw		t1,	172(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	addi	t0,	t1,	4
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	lw		t2,	180(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	mv		t0,	t1
	sw		t0,	192(sp)
	la		t0,	table
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t0,	0(t1)
	sw		t0,	200(sp)
	li		t0,	4
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	lw		t2,	192(sp)
	mul		t0,	t1,	t2
	sw		t0,	204(sp)
	lw		t1,	200(sp)
	lw		t2,	204(sp)
	add		t0,	t1,	t2
	sw		t0,	208(sp)
	lw		t1,	208(sp)
	lw		t0,	0(t1)
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	addi	t0,	t1,	8
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	lw		t0,	0(t1)
	sw		t0,	220(sp)
	li		t0,	0
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	mv		t0,	t1
	sw		t0,	216(sp)
	j		.put.return
.put.0_if_terminate:
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	228(sp)
	lw		t1,	28(sp)
	mv		t0,	t1
	sw		t0,	232(sp)
	la		t0,	table
	sw		t0,	236(sp)
	lw		t1,	236(sp)
	lw		t0,	0(t1)
	sw		t0,	240(sp)
	li		t0,	4
	sw		t0,	244(sp)
	lw		t1,	244(sp)
	lw		t2,	232(sp)
	mul		t0,	t1,	t2
	sw		t0,	244(sp)
	lw		t1,	240(sp)
	lw		t2,	244(sp)
	add		t0,	t1,	t2
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t0,	0(t1)
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	mv		t0,	t1
	sw		t0,	36(sp)
	j		.put.1_while_condition
.put.1_while_condition:
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	addi	t0,	t1,	0
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	lw		t0,	0(t1)
	sw		t0,	264(sp)
	lw		t1,	16(sp)
	mv		t0,	t1
	sw		t0,	268(sp)
	lw		t1,	264(sp)
	lw		t2,	268(sp)
	xor		t0,	t1,	t2
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	snez	t0,	t1
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	beqz	t1,	.put.1_while_terminate
.put.1_while_loop:
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	276(sp)
	lw		t1,	276(sp)
	addi	t0,	t1,	8
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	lw		t0,	0(t1)
	sw		t0,	284(sp)
	li		t0,	0
	sw		t0,	288(sp)
	lw		t1,	284(sp)
	lw		t2,	288(sp)
	xor		t0,	t1,	t2
	sw		t0,	292(sp)
	lw		t1,	292(sp)
	seqz	t0,	t1
	sw		t0,	292(sp)
	lw		t1,	292(sp)
	beqz	t1,	.put.2_if_terminate
.put.2_if_true:
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	296(sp)
	lw		t1,	296(sp)
	addi	t0,	t1,	8
	sw		t0,	300(sp)
	lw		t1,	300(sp)
	lw		t0,	0(t1)
	sw		t0,	304(sp)
	li		t0,	12
	sw		t0,	308(sp)
	lw		t1,	308(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	312(sp)
	lw		t1,	312(sp)
	mv		t0,	t1
	sw		t0,	316(sp)
	lw		t1,	316(sp)
	lw		t2,	300(sp)
	sw		t1,	0(t2)
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	320(sp)
	lw		t1,	320(sp)
	addi	t0,	t1,	8
	sw		t0,	324(sp)
	lw		t1,	324(sp)
	lw		t0,	0(t1)
	sw		t0,	328(sp)
	lw		t1,	328(sp)
	addi	t0,	t1,	0
	sw		t0,	332(sp)
	lw		t1,	332(sp)
	lw		t0,	0(t1)
	sw		t0,	336(sp)
	lw		t1,	16(sp)
	mv		t0,	t1
	sw		t0,	340(sp)
	lw		t1,	340(sp)
	lw		t2,	332(sp)
	sw		t1,	0(t2)
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	344(sp)
	lw		t1,	344(sp)
	addi	t0,	t1,	8
	sw		t0,	348(sp)
	lw		t1,	348(sp)
	lw		t0,	0(t1)
	sw		t0,	352(sp)
	lw		t1,	352(sp)
	addi	t0,	t1,	8
	sw		t0,	356(sp)
	lw		t1,	356(sp)
	lw		t0,	0(t1)
	sw		t0,	360(sp)
	li		t0,	0
	sw		t0,	364(sp)
	lw		t1,	364(sp)
	mv		t0,	t1
	sw		t0,	356(sp)
	j		.put.2_if_terminate
.put.2_if_terminate:
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	368(sp)
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	372(sp)
	lw		t1,	372(sp)
	addi	t0,	t1,	8
	sw		t0,	376(sp)
	lw		t1,	376(sp)
	lw		t0,	0(t1)
	sw		t0,	380(sp)
	lw		t1,	380(sp)
	mv		t0,	t1
	sw		t0,	36(sp)
	j		.put.1_while_condition
.put.1_while_terminate:
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	384(sp)
	lw		t1,	384(sp)
	addi	t0,	t1,	4
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	lw		t0,	0(t1)
	sw		t0,	392(sp)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	396(sp)
	lw		t1,	396(sp)
	lw		t2,	388(sp)
	sw		t1,	0(t2)
	j		.put.return
.put.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	400
	ret
	.size	put,	.-put

	.globl	get
	.p2align	2
	.type	get,@function

get:
.get.entry:
	addi	sp,	sp,	-112
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	112
	mv		t0,	a0
	sw		t0,	8(sp)
	lw		t1,	8(sp)
	mv		t0,	t1
	sw		t0,	12(sp)
	li		t0,	0
	sw		t0,	16(sp)
	lw		t1,	16(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	24(sp)
	lw		t1,	12(sp)
	mv		t0,	t1
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	mv		a0,	t1
	call	getHash
	mv		t0,	a0
	sw		t0,	32(sp)
	la		t0,	table
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	li		t0,	4
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t2,	32(sp)
	mul		t0,	t1,	t2
	sw		t0,	44(sp)
	lw		t1,	40(sp)
	lw		t2,	44(sp)
	add		t0,	t1,	t2
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	j		.get.3_while_condition
.get.3_while_condition:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	addi	t0,	t1,	0
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	12(sp)
	mv		t0,	t1
	sw		t0,	68(sp)
	lw		t1,	64(sp)
	lw		t2,	68(sp)
	xor		t0,	t1,	t2
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	snez	t0,	t1
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	beqz	t1,	.get.3_while_terminate
.get.3_while_loop:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	76(sp)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	addi	t0,	t1,	8
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	j		.get.3_while_condition
.get.3_while_terminate:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	addi	t0,	t1,	4
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	mv		t0,	t1
	sw		t0,	104(sp)
	j		.get.return
.get.return:
	lw		t1,	104(sp)
	mv		t0,	t1
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	112
	ret
	.size	get,	.-get

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-264
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	264
	call	__global_init_0
	li		t0,	0
	sw		t0,	8(sp)
	lw		t1,	8(sp)
	mv		t0,	t1
	sw		t0,	12(sp)
	li		t0,	0
	sw		t0,	16(sp)
	lw		t1,	16(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	la		t0,	table
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	28(sp)
	li		t0,	100
	sw		t0,	32(sp)
	li		t0,	4
	sw		t0,	36(sp)
	lw		t1,	32(sp)
	lw		t2,	36(sp)
	mul		t0,	t1,	t2
	sw		t0,	40(sp)
	li		t0,	4
	sw		t0,	44(sp)
	lw		t1,	40(sp)
	lw		t2,	44(sp)
	add		t0,	t1,	t2
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	mv		t0,	t1
	sw		t0,	56(sp)
	li		t0,	100
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t2,	56(sp)
	sw		t1,	0(t2)
	lw		t1,	52(sp)
	addi	t0,	t1,	4
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	mv		t0,	t1
	sw		t0,	68(sp)
	la		t0,	table
	sw		t0,	72(sp)
	lw		t1,	68(sp)
	lw		t2,	72(sp)
	sw		t1,	0(t2)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	76(sp)
	li		t0,	0
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	j		.main.4_for_condition
.main.4_for_condition:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	84(sp)
	la		t0,	hashsize
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	84(sp)
	lw		t2,	92(sp)
	slt		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	beqz	t1,	.main.4_for_terminate
.main.4_for_loop:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	100(sp)
	la		t0,	table
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	li		t0,	4
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	lw		t2,	100(sp)
	mul		t0,	t1,	t2
	sw		t0,	112(sp)
	lw		t1,	108(sp)
	lw		t2,	112(sp)
	add		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	li		t0,	0
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	mv		t0,	t1
	sw		t0,	116(sp)
	j		.main.4_for_execution
.main.4_for_execution:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	128(sp)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	132(sp)
	li		t0,	1
	sw		t0,	136(sp)
	lw		t1,	128(sp)
	lw		t2,	136(sp)
	add		t0,	t1,	t2
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	j		.main.4_for_condition
.main.4_for_terminate:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	144(sp)
	li		t0,	0
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	j		.main.5_for_condition
.main.5_for_condition:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	152(sp)
	li		t0,	1000
	sw		t0,	156(sp)
	lw		t1,	152(sp)
	lw		t2,	156(sp)
	slt		t0,	t1,	t2
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	beqz	t1,	.main.5_for_terminate
.main.5_for_loop:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	164(sp)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	168(sp)
	lw		t1,	164(sp)
	mv		a0,	t1
	lw		t1,	168(sp)
	mv		a1,	t1
	call	put
	j		.main.5_for_execution
.main.5_for_execution:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	172(sp)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	176(sp)
	li		t0,	1
	sw		t0,	180(sp)
	lw		t1,	172(sp)
	lw		t2,	180(sp)
	add		t0,	t1,	t2
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	j		.main.5_for_condition
.main.5_for_terminate:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	188(sp)
	li		t0,	0
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	j		.main.6_for_condition
.main.6_for_condition:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	196(sp)
	li		t0,	1000
	sw		t0,	200(sp)
	lw		t1,	196(sp)
	lw		t2,	200(sp)
	slt		t0,	t1,	t2
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	beqz	t1,	.main.6_for_terminate
.main.6_for_loop:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	208(sp)
	lw		t1,	208(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	mv		a0,	t1
	la		t0,	str.0
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	220(sp)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	mv		a0,	t1
	call	get
	mv		t0,	a0
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	232(sp)
	lw		t1,	220(sp)
	mv		a0,	t1
	lw		t1,	232(sp)
	mv		a1,	t1
	call	__merge_string
	mv		t0,	a0
	sw		t0,	236(sp)
	lw		t1,	236(sp)
	mv		a0,	t1
	call	println
	j		.main.6_for_execution
.main.6_for_execution:
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	240(sp)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	244(sp)
	li		t0,	1
	sw		t0,	248(sp)
	lw		t1,	240(sp)
	lw		t2,	248(sp)
	add		t0,	t1,	t2
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	mv		t0,	t1
	sw		t0,	20(sp)
	j		.main.6_for_condition
.main.6_for_terminate:
	li		t0,	0
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	mv		t0,	t1
	sw		t0,	12(sp)
	j		.main.return
.main.return:
	lw		t1,	12(sp)
	mv		t0,	t1
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	264
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
	li		t0,	100
	sw		t0,	8(sp)
	la		t0,	hashsize
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

	.section	.bss
	.globl	hashsize
	.type	hashsize,@object
hashsize:
	.word	0
	.size	hashsize,	4

	.globl	table
	.type	table,@object
table:
	.word	0
	.size	table,	4

	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	" "
	.size	str.0,	2

