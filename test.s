	.section	.text
	.globl	EdgeList.init
	.p2align	2
	.type	EdgeList.init,@function

EdgeList.init:
.EdgeList.init.entry:
	addi	sp,	sp,	-416
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	416
	mv		t0,	a0
	sw		t0,	24(sp)
	mv		t0,	a1
	sw		t0,	28(sp)
	mv		t0,	a2
	sw		t0,	32(sp)
	addi	t0,	sp,	8
	sw		t0,	36(sp)
	addi	t0,	sp,	12
	sw		t0,	40(sp)
	addi	t0,	sp,	16
	sw		t0,	44(sp)
	lw		t1,	24(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t2,	44(sp)
	sw		t1,	0(t2)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	addi	t0,	t1,	0
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	li		t0,	4
	sw		t0,	64(sp)
	lw		t1,	60(sp)
	lw		t2,	64(sp)
	mul		t0,	t1,	t2
	sw		t0,	68(sp)
	li		t0,	4
	sw		t0,	72(sp)
	lw		t1,	68(sp)
	lw		t2,	72(sp)
	add		t0,	t1,	t2
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	mv		t0,	t1
	sw		t0,	84(sp)
	lw		t1,	60(sp)
	lw		t2,	84(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	88(sp)
	li		t0,	1
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t2,	88(sp)
	mul		t0,	t1,	t2
	sw		t0,	92(sp)
	lw		t1,	80(sp)
	lw		t2,	92(sp)
	add		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	mv		t0,	t1
	sw		t0,	100(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	addi	t0,	t1,	0
	sw		t0,	108(sp)
	lw		t1,	100(sp)
	lw		t2,	108(sp)
	sw		t1,	0(t2)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	addi	t0,	t1,	4
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	li		t0,	4
	sw		t0,	128(sp)
	lw		t1,	124(sp)
	lw		t2,	128(sp)
	mul		t0,	t1,	t2
	sw		t0,	132(sp)
	li		t0,	4
	sw		t0,	136(sp)
	lw		t1,	132(sp)
	lw		t2,	136(sp)
	add		t0,	t1,	t2
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	mv		t0,	t1
	sw		t0,	148(sp)
	lw		t1,	124(sp)
	lw		t2,	148(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	152(sp)
	li		t0,	1
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t2,	152(sp)
	mul		t0,	t1,	t2
	sw		t0,	156(sp)
	lw		t1,	144(sp)
	lw		t2,	156(sp)
	add		t0,	t1,	t2
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	mv		t0,	t1
	sw		t0,	164(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	addi	t0,	t1,	4
	sw		t0,	172(sp)
	lw		t1,	164(sp)
	lw		t2,	172(sp)
	sw		t1,	0(t2)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	addi	t0,	t1,	8
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	li		t0,	4
	sw		t0,	192(sp)
	lw		t1,	188(sp)
	lw		t2,	192(sp)
	mul		t0,	t1,	t2
	sw		t0,	196(sp)
	li		t0,	4
	sw		t0,	200(sp)
	lw		t1,	196(sp)
	lw		t2,	200(sp)
	add		t0,	t1,	t2
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	208(sp)
	lw		t1,	208(sp)
	mv		t0,	t1
	sw		t0,	212(sp)
	lw		t1,	188(sp)
	lw		t2,	212(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	216(sp)
	li		t0,	1
	sw		t0,	220(sp)
	lw		t1,	220(sp)
	lw		t2,	216(sp)
	mul		t0,	t1,	t2
	sw		t0,	220(sp)
	lw		t1,	208(sp)
	lw		t2,	220(sp)
	add		t0,	t1,	t2
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	mv		t0,	t1
	sw		t0,	228(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	lw		t1,	232(sp)
	addi	t0,	t1,	8
	sw		t0,	236(sp)
	lw		t1,	228(sp)
	lw		t2,	236(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	20
	sw		t0,	240(sp)
	li		t0,	0
	sw		t0,	244(sp)
	lw		t1,	244(sp)
	lw		t2,	240(sp)
	sw		t1,	0(t2)
	lw		t1,	240(sp)
	lw		t0,	0(t1)
	sw		t0,	248(sp)
	li		t0,	0
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	lw		t2,	240(sp)
	sw		t1,	0(t2)
	j		.EdgeList.init.0_for_condition
.EdgeList.init.0_for_condition:
	lw		t1,	240(sp)
	lw		t0,	0(t1)
	sw		t0,	256(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	lw		t1,	256(sp)
	lw		t2,	260(sp)
	slt		t0,	t1,	t2
	sw		t0,	264(sp)
	lw		t1,	264(sp)
	beqz	t1,	.EdgeList.init.0_for_terminate
.EdgeList.init.0_for_loop:
	lw		t1,	240(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	addi	t0,	t1,	4
	sw		t0,	276(sp)
	lw		t1,	276(sp)
	lw		t0,	0(t1)
	sw		t0,	280(sp)
	li		t0,	4
	sw		t0,	284(sp)
	lw		t1,	284(sp)
	lw		t2,	268(sp)
	mul		t0,	t1,	t2
	sw		t0,	284(sp)
	lw		t1,	280(sp)
	lw		t2,	284(sp)
	add		t0,	t1,	t2
	sw		t0,	288(sp)
	lw		t1,	288(sp)
	lw		t0,	0(t1)
	sw		t0,	292(sp)
	li		t0,	0
	sw		t0,	296(sp)
	li		t0,	1
	sw		t0,	300(sp)
	lw		t1,	296(sp)
	lw		t2,	300(sp)
	sub		t0,	t1,	t2
	sw		t0,	304(sp)
	lw		t1,	304(sp)
	lw		t2,	288(sp)
	sw		t1,	0(t2)
	j		.EdgeList.init.0_for_execution
.EdgeList.init.0_for_execution:
	lw		t1,	240(sp)
	lw		t0,	0(t1)
	sw		t0,	308(sp)
	li		t0,	1
	sw		t0,	312(sp)
	lw		t1,	308(sp)
	lw		t2,	312(sp)
	add		t0,	t1,	t2
	sw		t0,	316(sp)
	lw		t1,	316(sp)
	lw		t2,	240(sp)
	sw		t1,	0(t2)
	j		.EdgeList.init.0_for_condition
.EdgeList.init.0_for_terminate:
	lw		t1,	240(sp)
	lw		t0,	0(t1)
	sw		t0,	320(sp)
	li		t0,	0
	sw		t0,	324(sp)
	lw		t1,	324(sp)
	lw		t2,	240(sp)
	sw		t1,	0(t2)
	j		.EdgeList.init.1_for_condition
.EdgeList.init.1_for_condition:
	lw		t1,	240(sp)
	lw		t0,	0(t1)
	sw		t0,	328(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	332(sp)
	lw		t1,	328(sp)
	lw		t2,	332(sp)
	slt		t0,	t1,	t2
	sw		t0,	336(sp)
	lw		t1,	336(sp)
	beqz	t1,	.EdgeList.init.1_for_terminate
.EdgeList.init.1_for_loop:
	lw		t1,	240(sp)
	lw		t0,	0(t1)
	sw		t0,	340(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	344(sp)
	lw		t1,	344(sp)
	addi	t0,	t1,	8
	sw		t0,	348(sp)
	lw		t1,	348(sp)
	lw		t0,	0(t1)
	sw		t0,	352(sp)
	li		t0,	4
	sw		t0,	356(sp)
	lw		t1,	356(sp)
	lw		t2,	340(sp)
	mul		t0,	t1,	t2
	sw		t0,	356(sp)
	lw		t1,	352(sp)
	lw		t2,	356(sp)
	add		t0,	t1,	t2
	sw		t0,	360(sp)
	lw		t1,	360(sp)
	lw		t0,	0(t1)
	sw		t0,	364(sp)
	li		t0,	0
	sw		t0,	368(sp)
	li		t0,	1
	sw		t0,	372(sp)
	lw		t1,	368(sp)
	lw		t2,	372(sp)
	sub		t0,	t1,	t2
	sw		t0,	376(sp)
	lw		t1,	376(sp)
	lw		t2,	360(sp)
	sw		t1,	0(t2)
	j		.EdgeList.init.1_for_execution
.EdgeList.init.1_for_execution:
	lw		t1,	240(sp)
	lw		t0,	0(t1)
	sw		t0,	380(sp)
	li		t0,	1
	sw		t0,	384(sp)
	lw		t1,	380(sp)
	lw		t2,	384(sp)
	add		t0,	t1,	t2
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	lw		t2,	240(sp)
	sw		t1,	0(t2)
	j		.EdgeList.init.1_for_condition
.EdgeList.init.1_for_terminate:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	392(sp)
	lw		t1,	392(sp)
	addi	t0,	t1,	12
	sw		t0,	396(sp)
	lw		t1,	396(sp)
	lw		t0,	0(t1)
	sw		t0,	400(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	404(sp)
	lw		t1,	404(sp)
	addi	t0,	t1,	12
	sw		t0,	408(sp)
	li		t0,	0
	sw		t0,	412(sp)
	lw		t1,	412(sp)
	lw		t2,	408(sp)
	sw		t1,	0(t2)
	j		.EdgeList.init.return
.EdgeList.init.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	416
	ret
	.size	EdgeList.init,	.-EdgeList.init

	.globl	EdgeList.addEdge
	.p2align	2
	.type	EdgeList.addEdge,@function

EdgeList.addEdge:
.EdgeList.addEdge.entry:
	addi	sp,	sp,	-300
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	300
	mv		t0,	a0
	sw		t0,	28(sp)
	mv		t0,	a1
	sw		t0,	32(sp)
	mv		t0,	a2
	sw		t0,	36(sp)
	lw		t0,	0(sp)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	lw		t0,	-4(t1)
	sw		t0,	44(sp)
	addi	t0,	sp,	8
	sw		t0,	48(sp)
	addi	t0,	sp,	12
	sw		t0,	52(sp)
	addi	t0,	sp,	16
	sw		t0,	56(sp)
	addi	t0,	sp,	20
	sw		t0,	60(sp)
	lw		t1,	28(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t2,	52(sp)
	sw		t1,	0(t2)
	lw		t1,	36(sp)
	lw		t2,	56(sp)
	sw		t1,	0(t2)
	lw		t1,	44(sp)
	lw		t2,	60(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	24
	sw		t0,	64(sp)
	li		t0,	12
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		t0,	t1
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	addi	t0,	t1,	0
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t2,	84(sp)
	sw		t1,	0(t2)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	addi	t0,	t1,	4
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	addi	t0,	t1,	8
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	lw		t2,	116(sp)
	sw		t1,	0(t2)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	addi	t0,	t1,	12
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	addi	t0,	t1,	0
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	li		t0,	4
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t2,	136(sp)
	mul		t0,	t1,	t2
	sw		t0,	152(sp)
	lw		t1,	148(sp)
	lw		t2,	152(sp)
	add		t0,	t1,	t2
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t2,	156(sp)
	sw		t1,	0(t2)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	addi	t0,	t1,	12
	sw		t0,	172(sp)
	lw		t1,	172(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	addi	t0,	t1,	4
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	li		t0,	4
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	lw		t2,	176(sp)
	mul		t0,	t1,	t2
	sw		t0,	192(sp)
	lw		t1,	188(sp)
	lw		t2,	192(sp)
	add		t0,	t1,	t2
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t0,	0(t1)
	sw		t0,	200(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	204(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	lw		t1,	208(sp)
	addi	t0,	t1,	8
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	lw		t0,	0(t1)
	sw		t0,	216(sp)
	li		t0,	4
	sw		t0,	220(sp)
	lw		t1,	220(sp)
	lw		t2,	204(sp)
	mul		t0,	t1,	t2
	sw		t0,	220(sp)
	lw		t1,	216(sp)
	lw		t2,	220(sp)
	add		t0,	t1,	t2
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	lw		t0,	0(t1)
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	lw		t2,	196(sp)
	sw		t1,	0(t2)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	236(sp)
	lw		t1,	236(sp)
	addi	t0,	t1,	8
	sw		t0,	240(sp)
	lw		t1,	240(sp)
	lw		t0,	0(t1)
	sw		t0,	244(sp)
	li		t0,	4
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t2,	232(sp)
	mul		t0,	t1,	t2
	sw		t0,	248(sp)
	lw		t1,	244(sp)
	lw		t2,	248(sp)
	add		t0,	t1,	t2
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	lw		t0,	0(t1)
	sw		t0,	256(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	addi	t0,	t1,	12
	sw		t0,	264(sp)
	lw		t1,	264(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	lw		t1,	268(sp)
	lw		t2,	252(sp)
	sw		t1,	0(t2)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	addi	t0,	t1,	12
	sw		t0,	276(sp)
	lw		t1,	276(sp)
	lw		t0,	0(t1)
	sw		t0,	280(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	284(sp)
	lw		t1,	284(sp)
	addi	t0,	t1,	12
	sw		t0,	288(sp)
	li		t0,	1
	sw		t0,	292(sp)
	lw		t1,	280(sp)
	lw		t2,	292(sp)
	add		t0,	t1,	t2
	sw		t0,	296(sp)
	lw		t1,	296(sp)
	lw		t2,	288(sp)
	sw		t1,	0(t2)
	j		.EdgeList.addEdge.return
.EdgeList.addEdge.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	300
	ret
	.size	EdgeList.addEdge,	.-EdgeList.addEdge

	.globl	EdgeList.nVertices
	.p2align	2
	.type	EdgeList.nVertices,@function

EdgeList.nVertices:
.EdgeList.nVertices.entry:
	addi	sp,	sp,	-64
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	64
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
	addi	t0,	t1,	8
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	40(sp)
	li		t0,	-1
	sw		t0,	44(sp)
	li		t0,	4
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t2,	44(sp)
	mul		t0,	t1,	t2
	sw		t0,	48(sp)
	lw		t1,	40(sp)
	lw		t2,	48(sp)
	add		t0,	t1,	t2
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.EdgeList.nVertices.return
.EdgeList.nVertices.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	64
	ret
	.size	EdgeList.nVertices,	.-EdgeList.nVertices

	.globl	EdgeList.nEdges
	.p2align	2
	.type	EdgeList.nEdges,@function

EdgeList.nEdges:
.EdgeList.nEdges.entry:
	addi	sp,	sp,	-64
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	64
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
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	40(sp)
	li		t0,	-1
	sw		t0,	44(sp)
	li		t0,	4
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t2,	44(sp)
	mul		t0,	t1,	t2
	sw		t0,	48(sp)
	lw		t1,	40(sp)
	lw		t2,	48(sp)
	add		t0,	t1,	t2
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.EdgeList.nEdges.return
.EdgeList.nEdges.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	64
	ret
	.size	EdgeList.nEdges,	.-EdgeList.nEdges

	.globl	Array_Node.__cons
	.p2align	2
	.type	Array_Node.__cons,@function

Array_Node.__cons:
.Array_Node.__cons.entry:
	addi	sp,	sp,	-112
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	112
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
	addi	t0,	t1,	4
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	28(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	addi	t0,	t1,	4
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
	addi	t0,	t1,	0
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	li		t0,	16
	sw		t0,	56(sp)
	li		t0,	4
	sw		t0,	60(sp)
	lw		t1,	56(sp)
	lw		t2,	60(sp)
	mul		t0,	t1,	t2
	sw		t0,	64(sp)
	li		t0,	4
	sw		t0,	68(sp)
	lw		t1,	64(sp)
	lw		t2,	68(sp)
	add		t0,	t1,	t2
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	mv		t0,	t1
	sw		t0,	80(sp)
	li		t0,	16
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	88(sp)
	li		t0,	1
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t2,	88(sp)
	mul		t0,	t1,	t2
	sw		t0,	92(sp)
	lw		t1,	76(sp)
	lw		t2,	92(sp)
	add		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	mv		t0,	t1
	sw		t0,	100(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	addi	t0,	t1,	0
	sw		t0,	108(sp)
	lw		t1,	100(sp)
	lw		t2,	108(sp)
	sw		t1,	0(t2)
	j		.Array_Node.__cons.return
.Array_Node.__cons.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	112
	ret
	.size	Array_Node.__cons,	.-Array_Node.__cons

	.globl	Array_Node.push_back
	.p2align	2
	.type	Array_Node.push_back,@function

Array_Node.push_back:
.Array_Node.push_back.entry:
	addi	sp,	sp,	-148
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	148
	mv		t0,	a0
	sw		t0,	16(sp)
	mv		t0,	a1
	sw		t0,	20(sp)
	addi	t0,	sp,	8
	sw		t0,	24(sp)
	addi	t0,	sp,	12
	sw		t0,	28(sp)
	lw		t1,	16(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	lw		t1,	20(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	mv		a0,	t1
	call	Array_Node.size
	mv		t0,	a0
	sw		t0,	36(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	addi	t0,	t1,	0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		t0,	t1
	sw		t0,	52(sp)
	li		t0,	-1
	sw		t0,	56(sp)
	li		t0,	4
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t2,	56(sp)
	mul		t0,	t1,	t2
	sw		t0,	60(sp)
	lw		t1,	52(sp)
	lw		t2,	60(sp)
	add		t0,	t1,	t2
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	36(sp)
	lw		t2,	68(sp)
	xor		t0,	t1,	t2
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	seqz	t0,	t1
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	beqz	t1,	.Array_Node.push_back.2_if_terminate
.Array_Node.push_back.2_if_true:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	mv		a0,	t1
	call	Array_Node.doubleStorage
	j		.Array_Node.push_back.2_if_terminate
.Array_Node.push_back.2_if_terminate:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	addi	t0,	t1,	4
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	addi	t0,	t1,	0
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	li		t0,	4
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	lw		t2,	88(sp)
	mul		t0,	t1,	t2
	sw		t0,	104(sp)
	lw		t1,	100(sp)
	lw		t2,	104(sp)
	add		t0,	t1,	t2
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t2,	108(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	addi	t0,	t1,	4
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	addi	t0,	t1,	4
	sw		t0,	136(sp)
	li		t0,	1
	sw		t0,	140(sp)
	lw		t1,	128(sp)
	lw		t2,	140(sp)
	add		t0,	t1,	t2
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t2,	136(sp)
	sw		t1,	0(t2)
	j		.Array_Node.push_back.return
.Array_Node.push_back.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	148
	ret
	.size	Array_Node.push_back,	.-Array_Node.push_back

	.globl	Array_Node.pop_back
	.p2align	2
	.type	Array_Node.pop_back,@function

Array_Node.pop_back:
.Array_Node.pop_back.entry:
	addi	sp,	sp,	-96
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	96
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
	addi	t0,	t1,	4
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	addi	t0,	t1,	4
	sw		t0,	44(sp)
	li		t0,	-1
	sw		t0,	48(sp)
	lw		t1,	36(sp)
	lw		t2,	48(sp)
	add		t0,	t1,	t2
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t2,	44(sp)
	sw		t1,	0(t2)
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
	addi	t0,	t1,	0
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	li		t0,	4
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t2,	64(sp)
	mul		t0,	t1,	t2
	sw		t0,	80(sp)
	lw		t1,	76(sp)
	lw		t2,	80(sp)
	add		t0,	t1,	t2
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.Array_Node.pop_back.return
.Array_Node.pop_back.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	96
	ret
	.size	Array_Node.pop_back,	.-Array_Node.pop_back

	.globl	Array_Node.back
	.p2align	2
	.type	Array_Node.back,@function

Array_Node.back:
.Array_Node.back.entry:
	addi	sp,	sp,	-76
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	76
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
	addi	t0,	t1,	4
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	li		t0,	1
	sw		t0,	40(sp)
	lw		t1,	36(sp)
	lw		t2,	40(sp)
	sub		t0,	t1,	t2
	sw		t0,	44(sp)
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	addi	t0,	t1,	0
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	li		t0,	4
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t2,	44(sp)
	mul		t0,	t1,	t2
	sw		t0,	60(sp)
	lw		t1,	56(sp)
	lw		t2,	60(sp)
	add		t0,	t1,	t2
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.Array_Node.back.return
.Array_Node.back.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	76
	ret
	.size	Array_Node.back,	.-Array_Node.back

	.globl	Array_Node.front
	.p2align	2
	.type	Array_Node.front,@function

Array_Node.front:
.Array_Node.front.entry:
	addi	sp,	sp,	-60
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	60
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
	li		t0,	0
	sw		t0,	40(sp)
	li		t0,	4
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t2,	40(sp)
	mul		t0,	t1,	t2
	sw		t0,	44(sp)
	lw		t1,	36(sp)
	lw		t2,	44(sp)
	add		t0,	t1,	t2
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.Array_Node.front.return
.Array_Node.front.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	60
	ret
	.size	Array_Node.front,	.-Array_Node.front

	.globl	Array_Node.size
	.p2align	2
	.type	Array_Node.size,@function

Array_Node.size:
.Array_Node.size.entry:
	addi	sp,	sp,	-44
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	44
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
	addi	t0,	t1,	4
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.Array_Node.size.return
.Array_Node.size.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	44
	ret
	.size	Array_Node.size,	.-Array_Node.size

	.globl	Array_Node.resize
	.p2align	2
	.type	Array_Node.resize,@function

Array_Node.resize:
.Array_Node.resize.entry:
	addi	sp,	sp,	-100
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	100
	mv		t0,	a0
	sw		t0,	16(sp)
	mv		t0,	a1
	sw		t0,	20(sp)
	addi	t0,	sp,	8
	sw		t0,	24(sp)
	addi	t0,	sp,	12
	sw		t0,	28(sp)
	lw		t1,	16(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	lw		t1,	20(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.Array_Node.resize.3_while_condition
.Array_Node.resize.3_while_condition:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	addi	t0,	t1,	0
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		t0,	t1
	sw		t0,	44(sp)
	li		t0,	-1
	sw		t0,	48(sp)
	li		t0,	4
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t2,	48(sp)
	mul		t0,	t1,	t2
	sw		t0,	52(sp)
	lw		t1,	44(sp)
	lw		t2,	52(sp)
	add		t0,	t1,	t2
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	60(sp)
	lw		t2,	64(sp)
	slt		t0,	t1,	t2
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	beqz	t1,	.Array_Node.resize.3_while_terminate
.Array_Node.resize.3_while_loop:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		a0,	t1
	call	Array_Node.doubleStorage
	j		.Array_Node.resize.3_while_condition
.Array_Node.resize.3_while_terminate:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	addi	t0,	t1,	4
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	addi	t0,	t1,	4
	sw		t0,	96(sp)
	lw		t1,	88(sp)
	lw		t2,	96(sp)
	sw		t1,	0(t2)
	j		.Array_Node.resize.return
.Array_Node.resize.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	100
	ret
	.size	Array_Node.resize,	.-Array_Node.resize

	.globl	Array_Node.get
	.p2align	2
	.type	Array_Node.get,@function

Array_Node.get:
.Array_Node.get.entry:
	addi	sp,	sp,	-72
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	72
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
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	addi	t0,	t1,	0
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	li		t0,	4
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t2,	40(sp)
	mul		t0,	t1,	t2
	sw		t0,	56(sp)
	lw		t1,	52(sp)
	lw		t2,	56(sp)
	add		t0,	t1,	t2
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.Array_Node.get.return
.Array_Node.get.return:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	72
	ret
	.size	Array_Node.get,	.-Array_Node.get

	.globl	Array_Node.set
	.p2align	2
	.type	Array_Node.set,@function

Array_Node.set:
.Array_Node.set.entry:
	addi	sp,	sp,	-76
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	76
	mv		t0,	a0
	sw		t0,	20(sp)
	mv		t0,	a1
	sw		t0,	24(sp)
	mv		t0,	a2
	sw		t0,	28(sp)
	addi	t0,	sp,	8
	sw		t0,	32(sp)
	addi	t0,	sp,	12
	sw		t0,	36(sp)
	addi	t0,	sp,	16
	sw		t0,	40(sp)
	lw		t1,	20(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	addi	t0,	t1,	0
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	li		t0,	4
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t2,	44(sp)
	mul		t0,	t1,	t2
	sw		t0,	60(sp)
	lw		t1,	56(sp)
	lw		t2,	60(sp)
	add		t0,	t1,	t2
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	j		.Array_Node.set.return
.Array_Node.set.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	76
	ret
	.size	Array_Node.set,	.-Array_Node.set

	.globl	Array_Node.swap
	.p2align	2
	.type	Array_Node.swap,@function

Array_Node.swap:
.Array_Node.swap.entry:
	addi	sp,	sp,	-168
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	168
	mv		t0,	a0
	sw		t0,	24(sp)
	mv		t0,	a1
	sw		t0,	28(sp)
	mv		t0,	a2
	sw		t0,	32(sp)
	addi	t0,	sp,	8
	sw		t0,	36(sp)
	addi	t0,	sp,	12
	sw		t0,	40(sp)
	addi	t0,	sp,	16
	sw		t0,	44(sp)
	lw		t1,	24(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t2,	44(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	20
	sw		t0,	48(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	addi	t0,	t1,	0
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	li		t0,	4
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t2,	52(sp)
	mul		t0,	t1,	t2
	sw		t0,	68(sp)
	lw		t1,	64(sp)
	lw		t2,	68(sp)
	add		t0,	t1,	t2
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	addi	t0,	t1,	0
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	li		t0,	4
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t2,	80(sp)
	mul		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	92(sp)
	lw		t2,	96(sp)
	add		t0,	t1,	t2
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	addi	t0,	t1,	0
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	li		t0,	4
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	lw		t2,	108(sp)
	mul		t0,	t1,	t2
	sw		t0,	124(sp)
	lw		t1,	120(sp)
	lw		t2,	124(sp)
	add		t0,	t1,	t2
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	addi	t0,	t1,	0
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	li		t0,	4
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t2,	136(sp)
	mul		t0,	t1,	t2
	sw		t0,	152(sp)
	lw		t1,	148(sp)
	lw		t2,	152(sp)
	add		t0,	t1,	t2
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t2,	156(sp)
	sw		t1,	0(t2)
	j		.Array_Node.swap.return
.Array_Node.swap.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	168
	ret
	.size	Array_Node.swap,	.-Array_Node.swap

	.globl	Array_Node.doubleStorage
	.p2align	2
	.type	Array_Node.doubleStorage,@function

Array_Node.doubleStorage:
.Array_Node.doubleStorage.entry:
	addi	sp,	sp,	-288
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	288
	mv		t0,	a0
	sw		t0,	20(sp)
	addi	t0,	sp,	8
	sw		t0,	24(sp)
	lw		t1,	20(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	12
	sw		t0,	28(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	addi	t0,	t1,	0
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	44(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	addi	t0,	t1,	4
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t2,	44(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	addi	t0,	t1,	0
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		t0,	t1
	sw		t0,	76(sp)
	li		t0,	-1
	sw		t0,	80(sp)
	li		t0,	4
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t2,	80(sp)
	mul		t0,	t1,	t2
	sw		t0,	84(sp)
	lw		t1,	76(sp)
	lw		t2,	84(sp)
	add		t0,	t1,	t2
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	li		t0,	2
	sw		t0,	96(sp)
	lw		t1,	92(sp)
	lw		t2,	96(sp)
	mul		t0,	t1,	t2
	sw		t0,	100(sp)
	li		t0,	4
	sw		t0,	104(sp)
	lw		t1,	100(sp)
	lw		t2,	104(sp)
	mul		t0,	t1,	t2
	sw		t0,	108(sp)
	li		t0,	4
	sw		t0,	112(sp)
	lw		t1,	108(sp)
	lw		t2,	112(sp)
	add		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	mv		t0,	t1
	sw		t0,	124(sp)
	lw		t1,	100(sp)
	lw		t2,	124(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	128(sp)
	li		t0,	1
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	lw		t2,	128(sp)
	mul		t0,	t1,	t2
	sw		t0,	132(sp)
	lw		t1,	120(sp)
	lw		t2,	132(sp)
	add		t0,	t1,	t2
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	mv		t0,	t1
	sw		t0,	140(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	addi	t0,	t1,	0
	sw		t0,	148(sp)
	lw		t1,	140(sp)
	lw		t2,	148(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	addi	t0,	t1,	4
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	addi	t0,	t1,	4
	sw		t0,	168(sp)
	li		t0,	0
	sw		t0,	172(sp)
	lw		t1,	172(sp)
	lw		t2,	168(sp)
	sw		t1,	0(t2)
	j		.Array_Node.doubleStorage.4_for_condition
.Array_Node.doubleStorage.4_for_condition:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	addi	t0,	t1,	4
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	lw		t1,	184(sp)
	lw		t2,	188(sp)
	xor		t0,	t1,	t2
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	snez	t0,	t1
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	beqz	t1,	.Array_Node.doubleStorage.4_for_terminate
.Array_Node.doubleStorage.4_for_loop:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	addi	t0,	t1,	4
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	lw		t0,	0(t1)
	sw		t0,	204(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	lw		t1,	208(sp)
	addi	t0,	t1,	0
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	lw		t0,	0(t1)
	sw		t0,	216(sp)
	li		t0,	4
	sw		t0,	220(sp)
	lw		t1,	220(sp)
	lw		t2,	204(sp)
	mul		t0,	t1,	t2
	sw		t0,	220(sp)
	lw		t1,	216(sp)
	lw		t2,	220(sp)
	add		t0,	t1,	t2
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	lw		t0,	0(t1)
	sw		t0,	228(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	lw		t1,	232(sp)
	addi	t0,	t1,	4
	sw		t0,	236(sp)
	lw		t1,	236(sp)
	lw		t0,	0(t1)
	sw		t0,	240(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	244(sp)
	li		t0,	4
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t2,	240(sp)
	mul		t0,	t1,	t2
	sw		t0,	248(sp)
	lw		t1,	244(sp)
	lw		t2,	248(sp)
	add		t0,	t1,	t2
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	lw		t0,	0(t1)
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	lw		t2,	224(sp)
	sw		t1,	0(t2)
	j		.Array_Node.doubleStorage.4_for_execution
.Array_Node.doubleStorage.4_for_execution:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	addi	t0,	t1,	4
	sw		t0,	264(sp)
	lw		t1,	264(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	addi	t0,	t1,	4
	sw		t0,	276(sp)
	li		t0,	1
	sw		t0,	280(sp)
	lw		t1,	268(sp)
	lw		t2,	280(sp)
	add		t0,	t1,	t2
	sw		t0,	284(sp)
	lw		t1,	284(sp)
	lw		t2,	276(sp)
	sw		t1,	0(t2)
	j		.Array_Node.doubleStorage.4_for_condition
.Array_Node.doubleStorage.4_for_terminate:
	j		.Array_Node.doubleStorage.return
.Array_Node.doubleStorage.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	288
	ret
	.size	Array_Node.doubleStorage,	.-Array_Node.doubleStorage

	.globl	Heap_Node.__cons
	.p2align	2
	.type	Heap_Node.__cons,@function

Heap_Node.__cons:
.Heap_Node.__cons.entry:
	addi	sp,	sp,	-52
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	52
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
	li		t0,	8
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	mv		t0,	t1
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		a0,	t1
	call	Array_Node.__cons
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	addi	t0,	t1,	0
	sw		t0,	48(sp)
	lw		t1,	40(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.__cons.return
.Heap_Node.__cons.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	52
	ret
	.size	Heap_Node.__cons,	.-Heap_Node.__cons

	.globl	Heap_Node.push
	.p2align	2
	.type	Heap_Node.push,@function

Heap_Node.push:
.Heap_Node.push.entry:
	addi	sp,	sp,	-184
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	184
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
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	addi	t0,	t1,	0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	48(sp)
	mv		a0,	t1
	lw		t1,	52(sp)
	mv		a1,	t1
	call	Array_Node.push_back
	addi	t0,	sp,	16
	sw		t0,	56(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	mv		a0,	t1
	call	Heap_Node.size
	mv		t0,	a0
	sw		t0,	64(sp)
	li		t0,	1
	sw		t0,	68(sp)
	lw		t1,	64(sp)
	lw		t2,	68(sp)
	sub		t0,	t1,	t2
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t2,	56(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.push.5_while_condition
.Heap_Node.push.5_while_condition:
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	li		t0,	0
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t2,	76(sp)
	slt		t0,	t1,	t2
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	beqz	t1,	.Heap_Node.push.5_while_terminate
.Heap_Node.push.5_while_loop:
	addi	t0,	sp,	20
	sw		t0,	88(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	lw		t1,	92(sp)
	mv		a0,	t1
	lw		t1,	96(sp)
	mv		a1,	t1
	call	Heap_Node.pnt
	mv		t0,	a0
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t2,	88(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	addi	t0,	t1,	0
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	88(sp)
	lw		t0,	0(t1)
	sw		t0,	116(sp)
	lw		t1,	112(sp)
	mv		a0,	t1
	lw		t1,	116(sp)
	mv		a1,	t1
	call	Array_Node.get
	mv		t0,	a0
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	mv		a0,	t1
	call	Node.key_
	mv		t0,	a0
	sw		t0,	124(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	addi	t0,	t1,	0
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	lw		t1,	136(sp)
	mv		a0,	t1
	lw		t1,	140(sp)
	mv		a1,	t1
	call	Array_Node.get
	mv		t0,	a0
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	mv		a0,	t1
	call	Node.key_
	mv		t0,	a0
	sw		t0,	148(sp)
	lw		t1,	124(sp)
	lw		t2,	148(sp)
	slt		t0,	t1,	t2
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	seqz	t0,	t1
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	beqz	t1,	.Heap_Node.push.6_if_terminate
.Heap_Node.push.6_if_true:
	j		.Heap_Node.push.5_while_terminate
.Heap_Node.push.6_if_terminate:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	addi	t0,	t1,	0
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	lw		t1,	88(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	lw		t1,	164(sp)
	mv		a0,	t1
	lw		t1,	168(sp)
	mv		a1,	t1
	lw		t1,	172(sp)
	mv		a2,	t1
	call	Array_Node.swap
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	88(sp)
	lw		t0,	0(t1)
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t2,	56(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.push.5_while_condition
.Heap_Node.push.5_while_terminate:
	j		.Heap_Node.push.return
.Heap_Node.push.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	184
	ret
	.size	Heap_Node.push,	.-Heap_Node.push

	.globl	Heap_Node.pop
	.p2align	2
	.type	Heap_Node.pop,@function

Heap_Node.pop:
.Heap_Node.pop.entry:
	addi	sp,	sp,	-116
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	116
	mv		t0,	a0
	sw		t0,	20(sp)
	addi	t0,	sp,	8
	sw		t0,	24(sp)
	lw		t1,	20(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	12
	sw		t0,	28(sp)
	addi	t0,	sp,	16
	sw		t0,	32(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	addi	t0,	t1,	0
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		a0,	t1
	call	Array_Node.front
	mv		t0,	a0
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	addi	t0,	t1,	0
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	mv		a0,	t1
	call	Heap_Node.size
	mv		t0,	a0
	sw		t0,	68(sp)
	li		t0,	1
	sw		t0,	72(sp)
	lw		t1,	68(sp)
	lw		t2,	72(sp)
	sub		t0,	t1,	t2
	sw		t0,	76(sp)
	lw		t1,	60(sp)
	mv		a0,	t1
	li		t0,	0
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	mv		a1,	t1
	lw		t1,	76(sp)
	mv		a2,	t1
	call	Array_Node.swap
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	addi	t0,	t1,	0
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	mv		a0,	t1
	call	Array_Node.pop_back
	mv		t0,	a0
	sw		t0,	96(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	mv		a0,	t1
	li		t0,	0
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	mv		a1,	t1
	call	Heap_Node.maxHeapify
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.pop.return
.Heap_Node.pop.return:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	116
	ret
	.size	Heap_Node.pop,	.-Heap_Node.pop

	.globl	Heap_Node.top
	.p2align	2
	.type	Heap_Node.top,@function

Heap_Node.top:
.Heap_Node.top.entry:
	addi	sp,	sp,	-48
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	48
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
	lw		t1,	36(sp)
	mv		a0,	t1
	call	Array_Node.front
	mv		t0,	a0
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.top.return
.Heap_Node.top.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	48
	ret
	.size	Heap_Node.top,	.-Heap_Node.top

	.globl	Heap_Node.size
	.p2align	2
	.type	Heap_Node.size,@function

Heap_Node.size:
.Heap_Node.size.entry:
	addi	sp,	sp,	-48
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	48
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
	lw		t1,	36(sp)
	mv		a0,	t1
	call	Array_Node.size
	mv		t0,	a0
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.size.return
.Heap_Node.size.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	48
	ret
	.size	Heap_Node.size,	.-Heap_Node.size

	.globl	Heap_Node.lchild
	.p2align	2
	.type	Heap_Node.lchild,@function

Heap_Node.lchild:
.Heap_Node.lchild.entry:
	addi	sp,	sp,	-64
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	64
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
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	li		t0,	2
	sw		t0,	44(sp)
	lw		t1,	40(sp)
	lw		t2,	44(sp)
	mul		t0,	t1,	t2
	sw		t0,	48(sp)
	li		t0,	1
	sw		t0,	52(sp)
	lw		t1,	48(sp)
	lw		t2,	52(sp)
	add		t0,	t1,	t2
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.lchild.return
.Heap_Node.lchild.return:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	64
	ret
	.size	Heap_Node.lchild,	.-Heap_Node.lchild

	.globl	Heap_Node.rchild
	.p2align	2
	.type	Heap_Node.rchild,@function

Heap_Node.rchild:
.Heap_Node.rchild.entry:
	addi	sp,	sp,	-64
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	64
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
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	li		t0,	2
	sw		t0,	44(sp)
	lw		t1,	40(sp)
	lw		t2,	44(sp)
	mul		t0,	t1,	t2
	sw		t0,	48(sp)
	li		t0,	2
	sw		t0,	52(sp)
	lw		t1,	48(sp)
	lw		t2,	52(sp)
	add		t0,	t1,	t2
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.rchild.return
.Heap_Node.rchild.return:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	64
	ret
	.size	Heap_Node.rchild,	.-Heap_Node.rchild

	.globl	Heap_Node.pnt
	.p2align	2
	.type	Heap_Node.pnt,@function

Heap_Node.pnt:
.Heap_Node.pnt.entry:
	addi	sp,	sp,	-64
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	64
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
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	li		t0,	1
	sw		t0,	44(sp)
	lw		t1,	40(sp)
	lw		t2,	44(sp)
	sub		t0,	t1,	t2
	sw		t0,	48(sp)
	li		t0,	2
	sw		t0,	52(sp)
	lw		t1,	48(sp)
	lw		t2,	52(sp)
	div		t0,	t1,	t2
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.pnt.return
.Heap_Node.pnt.return:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	64
	ret
	.size	Heap_Node.pnt,	.-Heap_Node.pnt

	.globl	Heap_Node.maxHeapify
	.p2align	2
	.type	Heap_Node.maxHeapify,@function

Heap_Node.maxHeapify:
.Heap_Node.maxHeapify.entry:
	addi	sp,	sp,	-308
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	308
	mv		t0,	a0
	sw		t0,	36(sp)
	mv		t0,	a1
	sw		t0,	40(sp)
	addi	t0,	sp,	8
	sw		t0,	44(sp)
	addi	t0,	sp,	12
	sw		t0,	48(sp)
	lw		t1,	36(sp)
	lw		t2,	44(sp)
	sw		t1,	0(t2)
	lw		t1,	40(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	52(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	56(sp)
	mv		a0,	t1
	lw		t1,	60(sp)
	mv		a1,	t1
	call	Heap_Node.lchild
	mv		t0,	a0
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t2,	52(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	20
	sw		t0,	68(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	72(sp)
	mv		a0,	t1
	lw		t1,	76(sp)
	mv		a1,	t1
	call	Heap_Node.rchild
	mv		t0,	a0
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t2,	68(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	24
	sw		t0,	84(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t2,	84(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	28
	sw		t0,	92(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	mv		a0,	t1
	call	Heap_Node.size
	mv		t0,	a0
	sw		t0,	104(sp)
	lw		t1,	96(sp)
	lw		t2,	104(sp)
	slt		t0,	t1,	t2
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t2,	92(sp)
	sw		t1,	0(t2)
	lw		t1,	108(sp)
	beqz	t1,	.Heap_Node.maxHeapify.7_and_terminate_block
.Heap_Node.maxHeapify.7_and_rhs_block:
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	addi	t0,	t1,	0
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	lw		t1,	120(sp)
	mv		a0,	t1
	lw		t1,	124(sp)
	mv		a1,	t1
	call	Array_Node.get
	mv		t0,	a0
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	mv		a0,	t1
	call	Node.key_
	mv		t0,	a0
	sw		t0,	132(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	addi	t0,	t1,	0
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	lw		t0,	0(t1)
	sw		t0,	144(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	lw		t1,	144(sp)
	mv		a0,	t1
	lw		t1,	148(sp)
	mv		a1,	t1
	call	Array_Node.get
	mv		t0,	a0
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	mv		a0,	t1
	call	Node.key_
	mv		t0,	a0
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t2,	132(sp)
	slt		t0,	t1,	t2
	sw		t0,	160(sp)
	lw		t1,	108(sp)
	lw		t2,	160(sp)
	and		t0,	t1,	t2
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t2,	92(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.maxHeapify.7_and_terminate_block
.Heap_Node.maxHeapify.7_and_terminate_block:
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	beqz	t1,	.Heap_Node.maxHeapify.8_if_terminate
.Heap_Node.maxHeapify.8_if_true:
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	lw		t2,	84(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.maxHeapify.8_if_terminate
.Heap_Node.maxHeapify.8_if_terminate:
	addi	t0,	sp,	32
	sw		t0,	180(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	mv		a0,	t1
	call	Heap_Node.size
	mv		t0,	a0
	sw		t0,	192(sp)
	lw		t1,	184(sp)
	lw		t2,	192(sp)
	slt		t0,	t1,	t2
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t2,	180(sp)
	sw		t1,	0(t2)
	lw		t1,	196(sp)
	beqz	t1,	.Heap_Node.maxHeapify.9_and_terminate_block
.Heap_Node.maxHeapify.9_and_rhs_block:
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	addi	t0,	t1,	0
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	212(sp)
	lw		t1,	208(sp)
	mv		a0,	t1
	lw		t1,	212(sp)
	mv		a1,	t1
	call	Array_Node.get
	mv		t0,	a0
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	mv		a0,	t1
	call	Node.key_
	mv		t0,	a0
	sw		t0,	220(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	addi	t0,	t1,	0
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	236(sp)
	lw		t1,	232(sp)
	mv		a0,	t1
	lw		t1,	236(sp)
	mv		a1,	t1
	call	Array_Node.get
	mv		t0,	a0
	sw		t0,	240(sp)
	lw		t1,	240(sp)
	mv		a0,	t1
	call	Node.key_
	mv		t0,	a0
	sw		t0,	244(sp)
	lw		t1,	244(sp)
	lw		t2,	220(sp)
	slt		t0,	t1,	t2
	sw		t0,	248(sp)
	lw		t1,	196(sp)
	lw		t2,	248(sp)
	and		t0,	t1,	t2
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	lw		t2,	180(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.maxHeapify.9_and_terminate_block
.Heap_Node.maxHeapify.9_and_terminate_block:
	lw		t1,	180(sp)
	lw		t0,	0(t1)
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	beqz	t1,	.Heap_Node.maxHeapify.10_if_terminate
.Heap_Node.maxHeapify.10_if_true:
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	264(sp)
	lw		t1,	264(sp)
	lw		t2,	84(sp)
	sw		t1,	0(t2)
	j		.Heap_Node.maxHeapify.10_if_terminate
.Heap_Node.maxHeapify.10_if_terminate:
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	272(sp)
	lw		t1,	268(sp)
	lw		t2,	272(sp)
	xor		t0,	t1,	t2
	sw		t0,	276(sp)
	lw		t1,	276(sp)
	seqz	t0,	t1
	sw		t0,	276(sp)
	lw		t1,	276(sp)
	beqz	t1,	.Heap_Node.maxHeapify.11_if_terminate
.Heap_Node.maxHeapify.11_if_true:
	j		.Heap_Node.maxHeapify.return
.Heap_Node.maxHeapify.11_if_terminate:
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	addi	t0,	t1,	0
	sw		t0,	284(sp)
	lw		t1,	284(sp)
	lw		t0,	0(t1)
	sw		t0,	288(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	292(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	296(sp)
	lw		t1,	288(sp)
	mv		a0,	t1
	lw		t1,	292(sp)
	mv		a1,	t1
	lw		t1,	296(sp)
	mv		a2,	t1
	call	Array_Node.swap
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	300(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	304(sp)
	lw		t1,	300(sp)
	mv		a0,	t1
	lw		t1,	304(sp)
	mv		a1,	t1
	call	Heap_Node.maxHeapify
	j		.Heap_Node.maxHeapify.return
.Heap_Node.maxHeapify.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	308
	ret
	.size	Heap_Node.maxHeapify,	.-Heap_Node.maxHeapify

	.globl	Node.key_
	.p2align	2
	.type	Node.key_,@function

Node.key_:
.Node.key_.entry:
	addi	sp,	sp,	-52
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	52
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
	addi	t0,	t1,	4
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	li		t0,	0
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	lw		t2,	36(sp)
	sub		t0,	t1,	t2
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.Node.key_.return
.Node.key_.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	52
	ret
	.size	Node.key_,	.-Node.key_

	.globl	init
	.p2align	2
	.type	init,@function

init:
.init.entry:
	addi	sp,	sp,	-196
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	196
	la		t0,	n
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	28(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	32(sp)
	la		t0,	n
	sw		t0,	36(sp)
	lw		t1,	32(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	la		t0,	m
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	48(sp)
	la		t0,	m
	sw		t0,	52(sp)
	lw		t1,	48(sp)
	lw		t2,	52(sp)
	sw		t1,	0(t2)
	la		t0,	g
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	li		t0,	16
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	mv		t0,	t1
	sw		t0,	72(sp)
	la		t0,	g
	sw		t0,	76(sp)
	lw		t1,	72(sp)
	lw		t2,	76(sp)
	sw		t1,	0(t2)
	la		t0,	g
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	la		t0,	n
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	la		t0,	m
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	84(sp)
	mv		a0,	t1
	lw		t1,	92(sp)
	mv		a1,	t1
	lw		t1,	100(sp)
	mv		a2,	t1
	call	EdgeList.init
	addi	t0,	sp,	8
	sw		t0,	104(sp)
	li		t0,	0
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t2,	104(sp)
	sw		t1,	0(t2)
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	li		t0,	0
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t2,	104(sp)
	sw		t1,	0(t2)
	j		.init.12_for_condition
.init.12_for_condition:
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	la		t0,	m
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	lw		t1,	120(sp)
	lw		t2,	128(sp)
	slt		t0,	t1,	t2
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	beqz	t1,	.init.12_for_terminate
.init.12_for_loop:
	addi	t0,	sp,	12
	sw		t0,	136(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	lw		t2,	136(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	144(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	lw		t2,	144(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	20
	sw		t0,	152(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t2,	152(sp)
	sw		t1,	0(t2)
	la		t0,	g
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	lw		t1,	136(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	144(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	lw		t1,	152(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	164(sp)
	mv		a0,	t1
	lw		t1,	168(sp)
	mv		a1,	t1
	lw		t1,	172(sp)
	mv		a2,	t1
	lw		t1,	176(sp)
	sw		t1,	-4(s0)
	call	EdgeList.addEdge
	j		.init.12_for_execution
.init.12_for_execution:
	lw		t1,	104(sp)
	lw		t0,	0(t1)
	sw		t0,	180(sp)
	li		t0,	1
	sw		t0,	184(sp)
	lw		t1,	180(sp)
	lw		t2,	184(sp)
	add		t0,	t1,	t2
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	lw		t2,	104(sp)
	sw		t1,	0(t2)
	j		.init.12_for_condition
.init.12_for_terminate:
	j		.init.return
.init.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	196
	ret
	.size	init,	.-init

	.globl	dijkstra
	.p2align	2
	.type	dijkstra,@function

dijkstra:
.dijkstra.entry:
	addi	sp,	sp,	-816
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	816
	mv		t0,	a0
	sw		t0,	60(sp)
	addi	t0,	sp,	8
	sw		t0,	64(sp)
	lw		t1,	60(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	12
	sw		t0,	68(sp)
	addi	t0,	sp,	16
	sw		t0,	72(sp)
	la		t0,	n
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	li		t0,	4
	sw		t0,	84(sp)
	lw		t1,	80(sp)
	lw		t2,	84(sp)
	mul		t0,	t1,	t2
	sw		t0,	88(sp)
	li		t0,	4
	sw		t0,	92(sp)
	lw		t1,	88(sp)
	lw		t2,	92(sp)
	add		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	mv		t0,	t1
	sw		t0,	104(sp)
	lw		t1,	80(sp)
	lw		t2,	104(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	108(sp)
	li		t0,	1
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	lw		t2,	108(sp)
	mul		t0,	t1,	t2
	sw		t0,	112(sp)
	lw		t1,	100(sp)
	lw		t2,	112(sp)
	add		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	mv		t0,	t1
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	lw		t2,	72(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	20
	sw		t0,	124(sp)
	la		t0,	n
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	li		t0,	4
	sw		t0,	136(sp)
	lw		t1,	132(sp)
	lw		t2,	136(sp)
	mul		t0,	t1,	t2
	sw		t0,	140(sp)
	li		t0,	4
	sw		t0,	144(sp)
	lw		t1,	140(sp)
	lw		t2,	144(sp)
	add		t0,	t1,	t2
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	mv		t0,	t1
	sw		t0,	156(sp)
	lw		t1,	132(sp)
	lw		t2,	156(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	160(sp)
	li		t0,	1
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t2,	160(sp)
	mul		t0,	t1,	t2
	sw		t0,	164(sp)
	lw		t1,	152(sp)
	lw		t2,	164(sp)
	add		t0,	t1,	t2
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	mv		t0,	t1
	sw		t0,	172(sp)
	lw		t1,	172(sp)
	lw		t2,	124(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	24
	sw		t0,	176(sp)
	li		t0,	0
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t2,	176(sp)
	sw		t1,	0(t2)
	lw		t1,	176(sp)
	lw		t0,	0(t1)
	sw		t0,	184(sp)
	li		t0,	0
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	lw		t2,	176(sp)
	sw		t1,	0(t2)
	j		.dijkstra.13_for_condition
.dijkstra.13_for_condition:
	lw		t1,	176(sp)
	lw		t0,	0(t1)
	sw		t0,	192(sp)
	la		t0,	n
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t0,	0(t1)
	sw		t0,	200(sp)
	lw		t1,	192(sp)
	lw		t2,	200(sp)
	slt		t0,	t1,	t2
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	beqz	t1,	.dijkstra.13_for_terminate
.dijkstra.13_for_loop:
	lw		t1,	176(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	lw		t1,	124(sp)
	lw		t0,	0(t1)
	sw		t0,	212(sp)
	li		t0,	4
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	lw		t2,	208(sp)
	mul		t0,	t1,	t2
	sw		t0,	216(sp)
	lw		t1,	212(sp)
	lw		t2,	216(sp)
	add		t0,	t1,	t2
	sw		t0,	220(sp)
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	224(sp)
	la		t0,	INF
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	lw		t1,	232(sp)
	lw		t2,	220(sp)
	sw		t1,	0(t2)
	lw		t1,	176(sp)
	lw		t0,	0(t1)
	sw		t0,	236(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	240(sp)
	li		t0,	4
	sw		t0,	244(sp)
	lw		t1,	244(sp)
	lw		t2,	236(sp)
	mul		t0,	t1,	t2
	sw		t0,	244(sp)
	lw		t1,	240(sp)
	lw		t2,	244(sp)
	add		t0,	t1,	t2
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t0,	0(t1)
	sw		t0,	252(sp)
	li		t0,	0
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	lw		t2,	248(sp)
	sw		t1,	0(t2)
	j		.dijkstra.13_for_execution
.dijkstra.13_for_execution:
	lw		t1,	176(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	li		t0,	1
	sw		t0,	264(sp)
	lw		t1,	260(sp)
	lw		t2,	264(sp)
	add		t0,	t1,	t2
	sw		t0,	268(sp)
	lw		t1,	268(sp)
	lw		t2,	176(sp)
	sw		t1,	0(t2)
	j		.dijkstra.13_for_condition
.dijkstra.13_for_terminate:
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	272(sp)
	lw		t1,	124(sp)
	lw		t0,	0(t1)
	sw		t0,	276(sp)
	li		t0,	4
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	lw		t2,	272(sp)
	mul		t0,	t1,	t2
	sw		t0,	280(sp)
	lw		t1,	276(sp)
	lw		t2,	280(sp)
	add		t0,	t1,	t2
	sw		t0,	284(sp)
	lw		t1,	284(sp)
	lw		t0,	0(t1)
	sw		t0,	288(sp)
	li		t0,	0
	sw		t0,	292(sp)
	lw		t1,	292(sp)
	lw		t2,	284(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	28
	sw		t0,	296(sp)
	li		t0,	4
	sw		t0,	300(sp)
	lw		t1,	300(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	304(sp)
	lw		t1,	304(sp)
	mv		t0,	t1
	sw		t0,	308(sp)
	lw		t1,	308(sp)
	mv		a0,	t1
	call	Heap_Node.__cons
	lw		t1,	308(sp)
	lw		t2,	296(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	32
	sw		t0,	312(sp)
	li		t0,	8
	sw		t0,	316(sp)
	lw		t1,	316(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	320(sp)
	lw		t1,	320(sp)
	mv		t0,	t1
	sw		t0,	324(sp)
	lw		t1,	324(sp)
	lw		t2,	312(sp)
	sw		t1,	0(t2)
	lw		t1,	312(sp)
	lw		t0,	0(t1)
	sw		t0,	328(sp)
	lw		t1,	328(sp)
	addi	t0,	t1,	4
	sw		t0,	332(sp)
	lw		t1,	332(sp)
	lw		t0,	0(t1)
	sw		t0,	336(sp)
	li		t0,	0
	sw		t0,	340(sp)
	lw		t1,	340(sp)
	lw		t2,	332(sp)
	sw		t1,	0(t2)
	lw		t1,	312(sp)
	lw		t0,	0(t1)
	sw		t0,	344(sp)
	lw		t1,	344(sp)
	addi	t0,	t1,	0
	sw		t0,	348(sp)
	lw		t1,	348(sp)
	lw		t0,	0(t1)
	sw		t0,	352(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	356(sp)
	lw		t1,	356(sp)
	lw		t2,	348(sp)
	sw		t1,	0(t2)
	lw		t1,	296(sp)
	lw		t0,	0(t1)
	sw		t0,	360(sp)
	lw		t1,	312(sp)
	lw		t0,	0(t1)
	sw		t0,	364(sp)
	lw		t1,	360(sp)
	mv		a0,	t1
	lw		t1,	364(sp)
	mv		a1,	t1
	call	Heap_Node.push
	j		.dijkstra.14_while_condition
.dijkstra.14_while_condition:
	lw		t1,	296(sp)
	lw		t0,	0(t1)
	sw		t0,	368(sp)
	lw		t1,	368(sp)
	mv		a0,	t1
	call	Heap_Node.size
	mv		t0,	a0
	sw		t0,	372(sp)
	li		t0,	0
	sw		t0,	376(sp)
	lw		t1,	372(sp)
	lw		t2,	376(sp)
	xor		t0,	t1,	t2
	sw		t0,	380(sp)
	lw		t1,	380(sp)
	snez	t0,	t1
	sw		t0,	380(sp)
	lw		t1,	380(sp)
	beqz	t1,	.dijkstra.14_while_terminate
.dijkstra.14_while_loop:
	addi	t0,	sp,	36
	sw		t0,	384(sp)
	lw		t1,	296(sp)
	lw		t0,	0(t1)
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	mv		a0,	t1
	call	Heap_Node.pop
	mv		t0,	a0
	sw		t0,	392(sp)
	lw		t1,	392(sp)
	lw		t2,	384(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	40
	sw		t0,	396(sp)
	lw		t1,	384(sp)
	lw		t0,	0(t1)
	sw		t0,	400(sp)
	lw		t1,	400(sp)
	addi	t0,	t1,	0
	sw		t0,	404(sp)
	lw		t1,	404(sp)
	lw		t0,	0(t1)
	sw		t0,	408(sp)
	lw		t1,	408(sp)
	lw		t2,	396(sp)
	sw		t1,	0(t2)
	lw		t1,	396(sp)
	lw		t0,	0(t1)
	sw		t0,	412(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	416(sp)
	li		t0,	4
	sw		t0,	420(sp)
	lw		t1,	420(sp)
	lw		t2,	412(sp)
	mul		t0,	t1,	t2
	sw		t0,	420(sp)
	lw		t1,	416(sp)
	lw		t2,	420(sp)
	add		t0,	t1,	t2
	sw		t0,	424(sp)
	lw		t1,	424(sp)
	lw		t0,	0(t1)
	sw		t0,	428(sp)
	li		t0,	1
	sw		t0,	432(sp)
	lw		t1,	428(sp)
	lw		t2,	432(sp)
	xor		t0,	t1,	t2
	sw		t0,	436(sp)
	lw		t1,	436(sp)
	seqz	t0,	t1
	sw		t0,	436(sp)
	lw		t1,	436(sp)
	beqz	t1,	.dijkstra.15_if_terminate
.dijkstra.15_if_true:
	j		.dijkstra.14_while_condition
.dijkstra.15_if_terminate:
	lw		t1,	396(sp)
	lw		t0,	0(t1)
	sw		t0,	440(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	444(sp)
	li		t0,	4
	sw		t0,	448(sp)
	lw		t1,	448(sp)
	lw		t2,	440(sp)
	mul		t0,	t1,	t2
	sw		t0,	448(sp)
	lw		t1,	444(sp)
	lw		t2,	448(sp)
	add		t0,	t1,	t2
	sw		t0,	452(sp)
	lw		t1,	452(sp)
	lw		t0,	0(t1)
	sw		t0,	456(sp)
	li		t0,	1
	sw		t0,	460(sp)
	lw		t1,	460(sp)
	lw		t2,	452(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	44
	sw		t0,	464(sp)
	li		t0,	0
	sw		t0,	468(sp)
	lw		t1,	468(sp)
	lw		t2,	464(sp)
	sw		t1,	0(t2)
	lw		t1,	464(sp)
	lw		t0,	0(t1)
	sw		t0,	472(sp)
	lw		t1,	396(sp)
	lw		t0,	0(t1)
	sw		t0,	476(sp)
	la		t0,	g
	sw		t0,	480(sp)
	lw		t1,	480(sp)
	lw		t0,	0(t1)
	sw		t0,	484(sp)
	lw		t1,	484(sp)
	addi	t0,	t1,	8
	sw		t0,	488(sp)
	lw		t1,	488(sp)
	lw		t0,	0(t1)
	sw		t0,	492(sp)
	li		t0,	4
	sw		t0,	496(sp)
	lw		t1,	496(sp)
	lw		t2,	476(sp)
	mul		t0,	t1,	t2
	sw		t0,	496(sp)
	lw		t1,	492(sp)
	lw		t2,	496(sp)
	add		t0,	t1,	t2
	sw		t0,	500(sp)
	lw		t1,	500(sp)
	lw		t0,	0(t1)
	sw		t0,	504(sp)
	lw		t1,	504(sp)
	lw		t2,	464(sp)
	sw		t1,	0(t2)
	j		.dijkstra.16_for_condition
.dijkstra.16_for_condition:
	lw		t1,	464(sp)
	lw		t0,	0(t1)
	sw		t0,	508(sp)
	li		t0,	0
	sw		t0,	512(sp)
	li		t0,	1
	sw		t0,	516(sp)
	lw		t1,	512(sp)
	lw		t2,	516(sp)
	sub		t0,	t1,	t2
	sw		t0,	520(sp)
	lw		t1,	508(sp)
	lw		t2,	520(sp)
	xor		t0,	t1,	t2
	sw		t0,	524(sp)
	lw		t1,	524(sp)
	snez	t0,	t1
	sw		t0,	524(sp)
	lw		t1,	524(sp)
	beqz	t1,	.dijkstra.16_for_terminate
.dijkstra.16_for_loop:
	addi	t0,	sp,	48
	sw		t0,	528(sp)
	lw		t1,	464(sp)
	lw		t0,	0(t1)
	sw		t0,	532(sp)
	la		t0,	g
	sw		t0,	536(sp)
	lw		t1,	536(sp)
	lw		t0,	0(t1)
	sw		t0,	540(sp)
	lw		t1,	540(sp)
	addi	t0,	t1,	0
	sw		t0,	544(sp)
	lw		t1,	544(sp)
	lw		t0,	0(t1)
	sw		t0,	548(sp)
	li		t0,	4
	sw		t0,	552(sp)
	lw		t1,	552(sp)
	lw		t2,	532(sp)
	mul		t0,	t1,	t2
	sw		t0,	552(sp)
	lw		t1,	548(sp)
	lw		t2,	552(sp)
	add		t0,	t1,	t2
	sw		t0,	556(sp)
	lw		t1,	556(sp)
	lw		t0,	0(t1)
	sw		t0,	560(sp)
	lw		t1,	560(sp)
	addi	t0,	t1,	4
	sw		t0,	564(sp)
	lw		t1,	564(sp)
	lw		t0,	0(t1)
	sw		t0,	568(sp)
	lw		t1,	568(sp)
	lw		t2,	528(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	52
	sw		t0,	572(sp)
	lw		t1,	464(sp)
	lw		t0,	0(t1)
	sw		t0,	576(sp)
	la		t0,	g
	sw		t0,	580(sp)
	lw		t1,	580(sp)
	lw		t0,	0(t1)
	sw		t0,	584(sp)
	lw		t1,	584(sp)
	addi	t0,	t1,	0
	sw		t0,	588(sp)
	lw		t1,	588(sp)
	lw		t0,	0(t1)
	sw		t0,	592(sp)
	li		t0,	4
	sw		t0,	596(sp)
	lw		t1,	596(sp)
	lw		t2,	576(sp)
	mul		t0,	t1,	t2
	sw		t0,	596(sp)
	lw		t1,	592(sp)
	lw		t2,	596(sp)
	add		t0,	t1,	t2
	sw		t0,	600(sp)
	lw		t1,	600(sp)
	lw		t0,	0(t1)
	sw		t0,	604(sp)
	lw		t1,	604(sp)
	addi	t0,	t1,	8
	sw		t0,	608(sp)
	lw		t1,	608(sp)
	lw		t0,	0(t1)
	sw		t0,	612(sp)
	lw		t1,	612(sp)
	lw		t2,	572(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	56
	sw		t0,	616(sp)
	lw		t1,	396(sp)
	lw		t0,	0(t1)
	sw		t0,	620(sp)
	lw		t1,	124(sp)
	lw		t0,	0(t1)
	sw		t0,	624(sp)
	li		t0,	4
	sw		t0,	628(sp)
	lw		t1,	628(sp)
	lw		t2,	620(sp)
	mul		t0,	t1,	t2
	sw		t0,	628(sp)
	lw		t1,	624(sp)
	lw		t2,	628(sp)
	add		t0,	t1,	t2
	sw		t0,	632(sp)
	lw		t1,	632(sp)
	lw		t0,	0(t1)
	sw		t0,	636(sp)
	lw		t1,	572(sp)
	lw		t0,	0(t1)
	sw		t0,	640(sp)
	lw		t1,	636(sp)
	lw		t2,	640(sp)
	add		t0,	t1,	t2
	sw		t0,	644(sp)
	lw		t1,	644(sp)
	lw		t2,	616(sp)
	sw		t1,	0(t2)
	lw		t1,	616(sp)
	lw		t0,	0(t1)
	sw		t0,	648(sp)
	lw		t1,	528(sp)
	lw		t0,	0(t1)
	sw		t0,	652(sp)
	lw		t1,	124(sp)
	lw		t0,	0(t1)
	sw		t0,	656(sp)
	li		t0,	4
	sw		t0,	660(sp)
	lw		t1,	660(sp)
	lw		t2,	652(sp)
	mul		t0,	t1,	t2
	sw		t0,	660(sp)
	lw		t1,	656(sp)
	lw		t2,	660(sp)
	add		t0,	t1,	t2
	sw		t0,	664(sp)
	lw		t1,	664(sp)
	lw		t0,	0(t1)
	sw		t0,	668(sp)
	lw		t1,	648(sp)
	lw		t2,	668(sp)
	slt		t0,	t1,	t2
	sw		t0,	672(sp)
	lw		t1,	672(sp)
	seqz	t0,	t1
	sw		t0,	672(sp)
	lw		t1,	672(sp)
	beqz	t1,	.dijkstra.17_if_terminate
.dijkstra.17_if_true:
	j		.dijkstra.16_for_execution
.dijkstra.17_if_terminate:
	lw		t1,	528(sp)
	lw		t0,	0(t1)
	sw		t0,	676(sp)
	lw		t1,	124(sp)
	lw		t0,	0(t1)
	sw		t0,	680(sp)
	li		t0,	4
	sw		t0,	684(sp)
	lw		t1,	684(sp)
	lw		t2,	676(sp)
	mul		t0,	t1,	t2
	sw		t0,	684(sp)
	lw		t1,	680(sp)
	lw		t2,	684(sp)
	add		t0,	t1,	t2
	sw		t0,	688(sp)
	lw		t1,	688(sp)
	lw		t0,	0(t1)
	sw		t0,	692(sp)
	lw		t1,	616(sp)
	lw		t0,	0(t1)
	sw		t0,	696(sp)
	lw		t1,	696(sp)
	lw		t2,	688(sp)
	sw		t1,	0(t2)
	lw		t1,	384(sp)
	lw		t0,	0(t1)
	sw		t0,	700(sp)
	li		t0,	8
	sw		t0,	704(sp)
	lw		t1,	704(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	708(sp)
	lw		t1,	708(sp)
	mv		t0,	t1
	sw		t0,	712(sp)
	lw		t1,	712(sp)
	lw		t2,	384(sp)
	sw		t1,	0(t2)
	lw		t1,	384(sp)
	lw		t0,	0(t1)
	sw		t0,	716(sp)
	lw		t1,	716(sp)
	addi	t0,	t1,	0
	sw		t0,	720(sp)
	lw		t1,	720(sp)
	lw		t0,	0(t1)
	sw		t0,	724(sp)
	lw		t1,	528(sp)
	lw		t0,	0(t1)
	sw		t0,	728(sp)
	lw		t1,	728(sp)
	lw		t2,	720(sp)
	sw		t1,	0(t2)
	lw		t1,	384(sp)
	lw		t0,	0(t1)
	sw		t0,	732(sp)
	lw		t1,	732(sp)
	addi	t0,	t1,	4
	sw		t0,	736(sp)
	lw		t1,	736(sp)
	lw		t0,	0(t1)
	sw		t0,	740(sp)
	lw		t1,	528(sp)
	lw		t0,	0(t1)
	sw		t0,	744(sp)
	lw		t1,	124(sp)
	lw		t0,	0(t1)
	sw		t0,	748(sp)
	li		t0,	4
	sw		t0,	752(sp)
	lw		t1,	752(sp)
	lw		t2,	744(sp)
	mul		t0,	t1,	t2
	sw		t0,	752(sp)
	lw		t1,	748(sp)
	lw		t2,	752(sp)
	add		t0,	t1,	t2
	sw		t0,	756(sp)
	lw		t1,	756(sp)
	lw		t0,	0(t1)
	sw		t0,	760(sp)
	lw		t1,	760(sp)
	lw		t2,	736(sp)
	sw		t1,	0(t2)
	lw		t1,	296(sp)
	lw		t0,	0(t1)
	sw		t0,	764(sp)
	lw		t1,	384(sp)
	lw		t0,	0(t1)
	sw		t0,	768(sp)
	lw		t1,	764(sp)
	mv		a0,	t1
	lw		t1,	768(sp)
	mv		a1,	t1
	call	Heap_Node.push
	j		.dijkstra.16_for_execution
.dijkstra.16_for_execution:
	lw		t1,	464(sp)
	lw		t0,	0(t1)
	sw		t0,	772(sp)
	lw		t1,	464(sp)
	lw		t0,	0(t1)
	sw		t0,	776(sp)
	la		t0,	g
	sw		t0,	780(sp)
	lw		t1,	780(sp)
	lw		t0,	0(t1)
	sw		t0,	784(sp)
	lw		t1,	784(sp)
	addi	t0,	t1,	4
	sw		t0,	788(sp)
	lw		t1,	788(sp)
	lw		t0,	0(t1)
	sw		t0,	792(sp)
	li		t0,	4
	sw		t0,	796(sp)
	lw		t1,	796(sp)
	lw		t2,	776(sp)
	mul		t0,	t1,	t2
	sw		t0,	796(sp)
	lw		t1,	792(sp)
	lw		t2,	796(sp)
	add		t0,	t1,	t2
	sw		t0,	800(sp)
	lw		t1,	800(sp)
	lw		t0,	0(t1)
	sw		t0,	804(sp)
	lw		t1,	804(sp)
	lw		t2,	464(sp)
	sw		t1,	0(t2)
	j		.dijkstra.16_for_condition
.dijkstra.16_for_terminate:
	j		.dijkstra.14_while_condition
.dijkstra.14_while_terminate:
	lw		t1,	124(sp)
	lw		t0,	0(t1)
	sw		t0,	808(sp)
	lw		t1,	808(sp)
	lw		t2,	68(sp)
	sw		t1,	0(t2)
	j		.dijkstra.return
.dijkstra.return:
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	812(sp)
	lw		t1,	812(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	816
	ret
	.size	dijkstra,	.-dijkstra

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-208
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	208
	call	__global_init_0
	addi	t0,	sp,	8
	sw		t0,	24(sp)
	li		t0,	0
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	call	init
	addi	t0,	sp,	12
	sw		t0,	32(sp)
	li		t0,	0
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	40(sp)
	li		t0,	0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	li		t0,	0
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.main.18_for_condition
.main.18_for_condition:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	la		t0,	n
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	56(sp)
	lw		t2,	64(sp)
	slt		t0,	t1,	t2
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	beqz	t1,	.main.18_for_terminate
.main.18_for_loop:
	addi	t0,	sp,	20
	sw		t0,	72(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	mv		a0,	t1
	call	dijkstra
	mv		t0,	a0
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t2,	72(sp)
	sw		t1,	0(t2)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	li		t0,	0
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	j		.main.19_for_condition
.main.19_for_condition:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	92(sp)
	la		t0,	n
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	92(sp)
	lw		t2,	100(sp)
	slt		t0,	t1,	t2
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	beqz	t1,	.main.19_for_terminate
.main.19_for_loop:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	li		t0,	4
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t2,	108(sp)
	mul		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	112(sp)
	lw		t2,	116(sp)
	add		t0,	t1,	t2
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	la		t0,	INF
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	lw		t1,	124(sp)
	lw		t2,	132(sp)
	xor		t0,	t1,	t2
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	seqz	t0,	t1
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	beqz	t1,	.main.20_if_false
.main.20_if_true:
	la		t0,	str.0
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	mv		a0,	t1
	call	print
	j		.main.20_if_terminate
.main.20_if_false:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	144(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	li		t0,	4
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t2,	144(sp)
	mul		t0,	t1,	t2
	sw		t0,	152(sp)
	lw		t1,	148(sp)
	lw		t2,	152(sp)
	add		t0,	t1,	t2
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	mv		a0,	t1
	call	print
	j		.main.20_if_terminate
.main.20_if_terminate:
	la		t0,	str.1
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	mv		a0,	t1
	call	print
	j		.main.19_for_execution
.main.19_for_execution:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	li		t0,	1
	sw		t0,	176(sp)
	lw		t1,	172(sp)
	lw		t2,	176(sp)
	add		t0,	t1,	t2
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	j		.main.19_for_condition
.main.19_for_terminate:
	la		t0,	str.2
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	mv		a0,	t1
	call	println
	j		.main.18_for_execution
.main.18_for_execution:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	li		t0,	1
	sw		t0,	192(sp)
	lw		t1,	188(sp)
	lw		t2,	192(sp)
	add		t0,	t1,	t2
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.main.18_for_condition
.main.18_for_terminate:
	li		t0,	0
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.main.return
.main.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	208
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
	li		t0,	10000000
	sw		t0,	8(sp)
	la		t0,	INF
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
	.globl	n
	.type	n,@object
n:
	.word	0
	.size	n,	4

	.globl	m
	.type	m,@object
m:
	.word	0
	.size	m,	4

	.globl	g
	.type	g,@object
g:
	.word	0
	.size	g,	4

	.globl	INF
	.type	INF,@object
INF:
	.word	0
	.size	INF,	4

	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	"-1"
	.size	str.0,	3

	.globl	str.1
	.type	str.1,@object
str.1:
	.string	" "
	.size	str.1,	2

	.globl	str.2
	.type	str.2,@object
str.2:
	.string	""
	.size	str.2,	1

