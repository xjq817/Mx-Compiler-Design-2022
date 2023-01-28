	.section	.text
	.globl	init
	.p2align	2
	.type	init,@function

init:
.init.entry:
	addi	sp,	sp,	-540
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	540
	la		t0,	n
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	36(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	40(sp)
	la		t0,	n
	sw		t0,	44(sp)
	lw		t1,	40(sp)
	lw		t2,	44(sp)
	sw		t1,	0(t2)
	la		t0,	m
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	56(sp)
	la		t0,	m
	sw		t0,	60(sp)
	lw		t1,	56(sp)
	lw		t2,	60(sp)
	sw		t1,	0(t2)
	la		t0,	a
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	la		t0,	n
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	la		t0,	n
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	li		t0,	4
	sw		t0,	88(sp)
	lw		t1,	76(sp)
	lw		t2,	88(sp)
	mul		t0,	t1,	t2
	sw		t0,	92(sp)
	li		t0,	4
	sw		t0,	96(sp)
	lw		t1,	92(sp)
	lw		t2,	96(sp)
	add		t0,	t1,	t2
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	mv		t0,	t1
	sw		t0,	108(sp)
	lw		t1,	76(sp)
	lw		t2,	108(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	112(sp)
	li		t0,	1
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t2,	112(sp)
	mul		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	104(sp)
	lw		t2,	116(sp)
	add		t0,	t1,	t2
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	mv		t0,	t1
	sw		t0,	124(sp)
	addi	t0,	sp,	8
	sw		t0,	128(sp)
	lw		t1,	124(sp)
	lw		t2,	128(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	lw		t2,	76(sp)
	mul		t0,	t1,	t2
	sw		t0,	132(sp)
	lw		t1,	124(sp)
	lw		t2,	132(sp)
	add		t0,	t1,	t2
	sw		t0,	136(sp)
	j		.init.0_get_new_array_condition
.init.0_get_new_array_condition:
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	lw		t2,	136(sp)
	xor		t0,	t1,	t2
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	snez	t0,	t1
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	beqz	t1,	.init.0_get_new_array_terminate
.init.0_get_new_array_loop:
	li		t0,	4
	sw		t0,	148(sp)
	lw		t1,	84(sp)
	lw		t2,	148(sp)
	mul		t0,	t1,	t2
	sw		t0,	152(sp)
	li		t0,	4
	sw		t0,	156(sp)
	lw		t1,	152(sp)
	lw		t2,	156(sp)
	add		t0,	t1,	t2
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	mv		a0,	t1
	call	__malloc
	mv		t0,	a0
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	mv		t0,	t1
	sw		t0,	168(sp)
	lw		t1,	84(sp)
	lw		t2,	168(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	172(sp)
	li		t0,	1
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	lw		t2,	172(sp)
	mul		t0,	t1,	t2
	sw		t0,	176(sp)
	lw		t1,	164(sp)
	lw		t2,	176(sp)
	add		t0,	t1,	t2
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	mv		t0,	t1
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t2,	140(sp)
	sw		t1,	0(t2)
	li		t0,	1
	sw		t0,	188(sp)
	li		t0,	4
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	lw		t2,	188(sp)
	mul		t0,	t1,	t2
	sw		t0,	192(sp)
	lw		t1,	140(sp)
	lw		t2,	192(sp)
	add		t0,	t1,	t2
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t2,	128(sp)
	sw		t1,	0(t2)
	j		.init.0_get_new_array_condition
.init.0_get_new_array_terminate:
	la		t0,	a
	sw		t0,	200(sp)
	lw		t1,	124(sp)
	lw		t2,	200(sp)
	sw		t1,	0(t2)
	la		t0,	n
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	lw		t1,	208(sp)
	mv		a0,	t1
	call	printlnInt
	la		t0,	m
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	lw		t0,	0(t1)
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	mv		a0,	t1
	call	printlnInt
	addi	t0,	sp,	12
	sw		t0,	220(sp)
	li		t0,	0
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	lw		t2,	220(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	228(sp)
	li		t0,	0
	sw		t0,	232(sp)
	lw		t1,	232(sp)
	lw		t2,	228(sp)
	sw		t1,	0(t2)
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	236(sp)
	li		t0,	0
	sw		t0,	240(sp)
	lw		t1,	240(sp)
	lw		t2,	220(sp)
	sw		t1,	0(t2)
	j		.init.1_for_condition
.init.1_for_condition:
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	244(sp)
	la		t0,	n
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t0,	0(t1)
	sw		t0,	252(sp)
	lw		t1,	244(sp)
	lw		t2,	252(sp)
	slt		t0,	t1,	t2
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	beqz	t1,	.init.1_for_terminate
.init.1_for_loop:
	lw		t1,	228(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	li		t0,	0
	sw		t0,	264(sp)
	lw		t1,	264(sp)
	lw		t2,	228(sp)
	sw		t1,	0(t2)
	j		.init.2_for_condition
.init.2_for_condition:
	lw		t1,	228(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	la		t0,	n
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	lw		t0,	0(t1)
	sw		t0,	276(sp)
	lw		t1,	268(sp)
	lw		t2,	276(sp)
	slt		t0,	t1,	t2
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	beqz	t1,	.init.2_for_terminate
.init.2_for_loop:
	lw		t1,	228(sp)
	lw		t0,	0(t1)
	sw		t0,	284(sp)
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	288(sp)
	la		t0,	a
	sw		t0,	292(sp)
	lw		t1,	292(sp)
	lw		t0,	0(t1)
	sw		t0,	296(sp)
	li		t0,	4
	sw		t0,	300(sp)
	lw		t1,	300(sp)
	lw		t2,	288(sp)
	mul		t0,	t1,	t2
	sw		t0,	300(sp)
	lw		t1,	296(sp)
	lw		t2,	300(sp)
	add		t0,	t1,	t2
	sw		t0,	304(sp)
	lw		t1,	304(sp)
	lw		t0,	0(t1)
	sw		t0,	308(sp)
	li		t0,	4
	sw		t0,	312(sp)
	lw		t1,	312(sp)
	lw		t2,	284(sp)
	mul		t0,	t1,	t2
	sw		t0,	312(sp)
	lw		t1,	308(sp)
	lw		t2,	312(sp)
	add		t0,	t1,	t2
	sw		t0,	316(sp)
	lw		t1,	316(sp)
	lw		t0,	0(t1)
	sw		t0,	320(sp)
	la		t0,	INF
	sw		t0,	324(sp)
	lw		t1,	324(sp)
	lw		t0,	0(t1)
	sw		t0,	328(sp)
	lw		t1,	328(sp)
	lw		t2,	316(sp)
	sw		t1,	0(t2)
	j		.init.2_for_execution
.init.2_for_execution:
	lw		t1,	228(sp)
	lw		t0,	0(t1)
	sw		t0,	332(sp)
	li		t0,	1
	sw		t0,	336(sp)
	lw		t1,	332(sp)
	lw		t2,	336(sp)
	add		t0,	t1,	t2
	sw		t0,	340(sp)
	lw		t1,	340(sp)
	lw		t2,	228(sp)
	sw		t1,	0(t2)
	j		.init.2_for_condition
.init.2_for_terminate:
	j		.init.1_for_execution
.init.1_for_execution:
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	344(sp)
	li		t0,	1
	sw		t0,	348(sp)
	lw		t1,	344(sp)
	lw		t2,	348(sp)
	add		t0,	t1,	t2
	sw		t0,	352(sp)
	lw		t1,	352(sp)
	lw		t2,	220(sp)
	sw		t1,	0(t2)
	j		.init.1_for_condition
.init.1_for_terminate:
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	356(sp)
	li		t0,	0
	sw		t0,	360(sp)
	lw		t1,	360(sp)
	lw		t2,	220(sp)
	sw		t1,	0(t2)
	j		.init.3_for_condition
.init.3_for_condition:
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	364(sp)
	la		t0,	n
	sw		t0,	368(sp)
	lw		t1,	368(sp)
	lw		t0,	0(t1)
	sw		t0,	372(sp)
	lw		t1,	364(sp)
	lw		t2,	372(sp)
	slt		t0,	t1,	t2
	sw		t0,	376(sp)
	lw		t1,	376(sp)
	beqz	t1,	.init.3_for_terminate
.init.3_for_loop:
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	380(sp)
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	384(sp)
	la		t0,	a
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	lw		t0,	0(t1)
	sw		t0,	392(sp)
	li		t0,	4
	sw		t0,	396(sp)
	lw		t1,	396(sp)
	lw		t2,	384(sp)
	mul		t0,	t1,	t2
	sw		t0,	396(sp)
	lw		t1,	392(sp)
	lw		t2,	396(sp)
	add		t0,	t1,	t2
	sw		t0,	400(sp)
	lw		t1,	400(sp)
	lw		t0,	0(t1)
	sw		t0,	404(sp)
	li		t0,	4
	sw		t0,	408(sp)
	lw		t1,	408(sp)
	lw		t2,	380(sp)
	mul		t0,	t1,	t2
	sw		t0,	408(sp)
	lw		t1,	404(sp)
	lw		t2,	408(sp)
	add		t0,	t1,	t2
	sw		t0,	412(sp)
	lw		t1,	412(sp)
	lw		t0,	0(t1)
	sw		t0,	416(sp)
	li		t0,	0
	sw		t0,	420(sp)
	lw		t1,	420(sp)
	lw		t2,	412(sp)
	sw		t1,	0(t2)
	j		.init.3_for_execution
.init.3_for_execution:
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	424(sp)
	li		t0,	1
	sw		t0,	428(sp)
	lw		t1,	424(sp)
	lw		t2,	428(sp)
	add		t0,	t1,	t2
	sw		t0,	432(sp)
	lw		t1,	432(sp)
	lw		t2,	220(sp)
	sw		t1,	0(t2)
	j		.init.3_for_condition
.init.3_for_terminate:
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	436(sp)
	li		t0,	0
	sw		t0,	440(sp)
	lw		t1,	440(sp)
	lw		t2,	220(sp)
	sw		t1,	0(t2)
	j		.init.4_for_condition
.init.4_for_condition:
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	444(sp)
	la		t0,	m
	sw		t0,	448(sp)
	lw		t1,	448(sp)
	lw		t0,	0(t1)
	sw		t0,	452(sp)
	lw		t1,	444(sp)
	lw		t2,	452(sp)
	slt		t0,	t1,	t2
	sw		t0,	456(sp)
	lw		t1,	456(sp)
	beqz	t1,	.init.4_for_terminate
.init.4_for_loop:
	addi	t0,	sp,	20
	sw		t0,	460(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	464(sp)
	lw		t1,	464(sp)
	lw		t2,	460(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	24
	sw		t0,	468(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	472(sp)
	lw		t1,	472(sp)
	lw		t2,	468(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	28
	sw		t0,	476(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	480(sp)
	lw		t1,	480(sp)
	lw		t2,	476(sp)
	sw		t1,	0(t2)
	lw		t1,	468(sp)
	lw		t0,	0(t1)
	sw		t0,	484(sp)
	lw		t1,	460(sp)
	lw		t0,	0(t1)
	sw		t0,	488(sp)
	la		t0,	a
	sw		t0,	492(sp)
	lw		t1,	492(sp)
	lw		t0,	0(t1)
	sw		t0,	496(sp)
	li		t0,	4
	sw		t0,	500(sp)
	lw		t1,	500(sp)
	lw		t2,	488(sp)
	mul		t0,	t1,	t2
	sw		t0,	500(sp)
	lw		t1,	496(sp)
	lw		t2,	500(sp)
	add		t0,	t1,	t2
	sw		t0,	504(sp)
	lw		t1,	504(sp)
	lw		t0,	0(t1)
	sw		t0,	508(sp)
	li		t0,	4
	sw		t0,	512(sp)
	lw		t1,	512(sp)
	lw		t2,	484(sp)
	mul		t0,	t1,	t2
	sw		t0,	512(sp)
	lw		t1,	508(sp)
	lw		t2,	512(sp)
	add		t0,	t1,	t2
	sw		t0,	516(sp)
	lw		t1,	516(sp)
	lw		t0,	0(t1)
	sw		t0,	520(sp)
	lw		t1,	476(sp)
	lw		t0,	0(t1)
	sw		t0,	524(sp)
	lw		t1,	524(sp)
	lw		t2,	516(sp)
	sw		t1,	0(t2)
	j		.init.4_for_execution
.init.4_for_execution:
	lw		t1,	220(sp)
	lw		t0,	0(t1)
	sw		t0,	528(sp)
	li		t0,	1
	sw		t0,	532(sp)
	lw		t1,	528(sp)
	lw		t2,	532(sp)
	add		t0,	t1,	t2
	sw		t0,	536(sp)
	lw		t1,	536(sp)
	lw		t2,	220(sp)
	sw		t1,	0(t2)
	j		.init.4_for_condition
.init.4_for_terminate:
	j		.init.return
.init.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	540
	ret
	.size	init,	.-init

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-604
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	604
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
	addi	t0,	sp,	20
	sw		t0,	48(sp)
	li		t0,	0
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	li		t0,	0
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	j		.main.5_for_condition
.main.5_for_condition:
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	la		t0,	n
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	64(sp)
	lw		t2,	72(sp)
	slt		t0,	t1,	t2
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	beqz	t1,	.main.5_for_terminate
.main.5_for_loop:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	li		t0,	0
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.main.6_for_condition
.main.6_for_condition:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	la		t0,	n
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	lw		t1,	88(sp)
	lw		t2,	96(sp)
	slt		t0,	t1,	t2
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	beqz	t1,	.main.6_for_terminate
.main.6_for_loop:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	li		t0,	0
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	j		.main.7_for_condition
.main.7_for_condition:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	la		t0,	n
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	112(sp)
	lw		t2,	120(sp)
	slt		t0,	t1,	t2
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	beqz	t1,	.main.7_for_terminate
.main.7_for_loop:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	la		t0,	a
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	li		t0,	4
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t2,	132(sp)
	mul		t0,	t1,	t2
	sw		t0,	144(sp)
	lw		t1,	140(sp)
	lw		t2,	144(sp)
	add		t0,	t1,	t2
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	lw		t0,	0(t1)
	sw		t0,	152(sp)
	li		t0,	4
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t2,	128(sp)
	mul		t0,	t1,	t2
	sw		t0,	156(sp)
	lw		t1,	152(sp)
	lw		t2,	156(sp)
	add		t0,	t1,	t2
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	la		t0,	a
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	lw		t0,	0(t1)
	sw		t0,	180(sp)
	li		t0,	4
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t2,	172(sp)
	mul		t0,	t1,	t2
	sw		t0,	184(sp)
	lw		t1,	180(sp)
	lw		t2,	184(sp)
	add		t0,	t1,	t2
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	lw		t0,	0(t1)
	sw		t0,	192(sp)
	li		t0,	4
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t2,	168(sp)
	mul		t0,	t1,	t2
	sw		t0,	196(sp)
	lw		t1,	192(sp)
	lw		t2,	196(sp)
	add		t0,	t1,	t2
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	lw		t0,	0(t1)
	sw		t0,	204(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	212(sp)
	la		t0,	a
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	lw		t0,	0(t1)
	sw		t0,	220(sp)
	li		t0,	4
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	lw		t2,	212(sp)
	mul		t0,	t1,	t2
	sw		t0,	224(sp)
	lw		t1,	220(sp)
	lw		t2,	224(sp)
	add		t0,	t1,	t2
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	li		t0,	4
	sw		t0,	236(sp)
	lw		t1,	236(sp)
	lw		t2,	208(sp)
	mul		t0,	t1,	t2
	sw		t0,	236(sp)
	lw		t1,	232(sp)
	lw		t2,	236(sp)
	add		t0,	t1,	t2
	sw		t0,	240(sp)
	lw		t1,	240(sp)
	lw		t0,	0(t1)
	sw		t0,	244(sp)
	lw		t1,	204(sp)
	lw		t2,	244(sp)
	add		t0,	t1,	t2
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t2,	164(sp)
	slt		t0,	t1,	t2
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	beqz	t1,	.main.8_if_terminate
.main.8_if_true:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	256(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	la		t0,	a
	sw		t0,	264(sp)
	lw		t1,	264(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	li		t0,	4
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	lw		t2,	260(sp)
	mul		t0,	t1,	t2
	sw		t0,	272(sp)
	lw		t1,	268(sp)
	lw		t2,	272(sp)
	add		t0,	t1,	t2
	sw		t0,	276(sp)
	lw		t1,	276(sp)
	lw		t0,	0(t1)
	sw		t0,	280(sp)
	li		t0,	4
	sw		t0,	284(sp)
	lw		t1,	284(sp)
	lw		t2,	256(sp)
	mul		t0,	t1,	t2
	sw		t0,	284(sp)
	lw		t1,	280(sp)
	lw		t2,	284(sp)
	add		t0,	t1,	t2
	sw		t0,	288(sp)
	lw		t1,	288(sp)
	lw		t0,	0(t1)
	sw		t0,	292(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	296(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	300(sp)
	la		t0,	a
	sw		t0,	304(sp)
	lw		t1,	304(sp)
	lw		t0,	0(t1)
	sw		t0,	308(sp)
	li		t0,	4
	sw		t0,	312(sp)
	lw		t1,	312(sp)
	lw		t2,	300(sp)
	mul		t0,	t1,	t2
	sw		t0,	312(sp)
	lw		t1,	308(sp)
	lw		t2,	312(sp)
	add		t0,	t1,	t2
	sw		t0,	316(sp)
	lw		t1,	316(sp)
	lw		t0,	0(t1)
	sw		t0,	320(sp)
	li		t0,	4
	sw		t0,	324(sp)
	lw		t1,	324(sp)
	lw		t2,	296(sp)
	mul		t0,	t1,	t2
	sw		t0,	324(sp)
	lw		t1,	320(sp)
	lw		t2,	324(sp)
	add		t0,	t1,	t2
	sw		t0,	328(sp)
	lw		t1,	328(sp)
	lw		t0,	0(t1)
	sw		t0,	332(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	336(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	340(sp)
	la		t0,	a
	sw		t0,	344(sp)
	lw		t1,	344(sp)
	lw		t0,	0(t1)
	sw		t0,	348(sp)
	li		t0,	4
	sw		t0,	352(sp)
	lw		t1,	352(sp)
	lw		t2,	340(sp)
	mul		t0,	t1,	t2
	sw		t0,	352(sp)
	lw		t1,	348(sp)
	lw		t2,	352(sp)
	add		t0,	t1,	t2
	sw		t0,	356(sp)
	lw		t1,	356(sp)
	lw		t0,	0(t1)
	sw		t0,	360(sp)
	li		t0,	4
	sw		t0,	364(sp)
	lw		t1,	364(sp)
	lw		t2,	336(sp)
	mul		t0,	t1,	t2
	sw		t0,	364(sp)
	lw		t1,	360(sp)
	lw		t2,	364(sp)
	add		t0,	t1,	t2
	sw		t0,	368(sp)
	lw		t1,	368(sp)
	lw		t0,	0(t1)
	sw		t0,	372(sp)
	lw		t1,	332(sp)
	lw		t2,	372(sp)
	add		t0,	t1,	t2
	sw		t0,	376(sp)
	lw		t1,	376(sp)
	lw		t2,	288(sp)
	sw		t1,	0(t2)
	j		.main.8_if_terminate
.main.8_if_terminate:
	j		.main.7_for_execution
.main.7_for_execution:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	380(sp)
	li		t0,	1
	sw		t0,	384(sp)
	lw		t1,	380(sp)
	lw		t2,	384(sp)
	add		t0,	t1,	t2
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	j		.main.7_for_condition
.main.7_for_terminate:
	j		.main.6_for_execution
.main.6_for_execution:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	392(sp)
	li		t0,	1
	sw		t0,	396(sp)
	lw		t1,	392(sp)
	lw		t2,	396(sp)
	add		t0,	t1,	t2
	sw		t0,	400(sp)
	lw		t1,	400(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.main.6_for_condition
.main.6_for_terminate:
	j		.main.5_for_execution
.main.5_for_execution:
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	404(sp)
	li		t0,	1
	sw		t0,	408(sp)
	lw		t1,	404(sp)
	lw		t2,	408(sp)
	add		t0,	t1,	t2
	sw		t0,	412(sp)
	lw		t1,	412(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	j		.main.5_for_condition
.main.5_for_terminate:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	416(sp)
	li		t0,	0
	sw		t0,	420(sp)
	lw		t1,	420(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.main.9_for_condition
.main.9_for_condition:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	424(sp)
	la		t0,	n
	sw		t0,	428(sp)
	lw		t1,	428(sp)
	lw		t0,	0(t1)
	sw		t0,	432(sp)
	lw		t1,	424(sp)
	lw		t2,	432(sp)
	slt		t0,	t1,	t2
	sw		t0,	436(sp)
	lw		t1,	436(sp)
	beqz	t1,	.main.9_for_terminate
.main.9_for_loop:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	440(sp)
	li		t0,	0
	sw		t0,	444(sp)
	lw		t1,	444(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	j		.main.10_for_condition
.main.10_for_condition:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	448(sp)
	la		t0,	n
	sw		t0,	452(sp)
	lw		t1,	452(sp)
	lw		t0,	0(t1)
	sw		t0,	456(sp)
	lw		t1,	448(sp)
	lw		t2,	456(sp)
	slt		t0,	t1,	t2
	sw		t0,	460(sp)
	lw		t1,	460(sp)
	beqz	t1,	.main.10_for_terminate
.main.10_for_loop:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	464(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	468(sp)
	la		t0,	a
	sw		t0,	472(sp)
	lw		t1,	472(sp)
	lw		t0,	0(t1)
	sw		t0,	476(sp)
	li		t0,	4
	sw		t0,	480(sp)
	lw		t1,	480(sp)
	lw		t2,	468(sp)
	mul		t0,	t1,	t2
	sw		t0,	480(sp)
	lw		t1,	476(sp)
	lw		t2,	480(sp)
	add		t0,	t1,	t2
	sw		t0,	484(sp)
	lw		t1,	484(sp)
	lw		t0,	0(t1)
	sw		t0,	488(sp)
	li		t0,	4
	sw		t0,	492(sp)
	lw		t1,	492(sp)
	lw		t2,	464(sp)
	mul		t0,	t1,	t2
	sw		t0,	492(sp)
	lw		t1,	488(sp)
	lw		t2,	492(sp)
	add		t0,	t1,	t2
	sw		t0,	496(sp)
	lw		t1,	496(sp)
	lw		t0,	0(t1)
	sw		t0,	500(sp)
	la		t0,	INF
	sw		t0,	504(sp)
	lw		t1,	504(sp)
	lw		t0,	0(t1)
	sw		t0,	508(sp)
	lw		t1,	500(sp)
	lw		t2,	508(sp)
	xor		t0,	t1,	t2
	sw		t0,	512(sp)
	lw		t1,	512(sp)
	seqz	t0,	t1
	sw		t0,	512(sp)
	lw		t1,	512(sp)
	beqz	t1,	.main.11_if_false
.main.11_if_true:
	la		t0,	str.0
	sw		t0,	516(sp)
	lw		t1,	516(sp)
	mv		a0,	t1
	call	print
	j		.main.11_if_terminate
.main.11_if_false:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	520(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	524(sp)
	la		t0,	a
	sw		t0,	528(sp)
	lw		t1,	528(sp)
	lw		t0,	0(t1)
	sw		t0,	532(sp)
	li		t0,	4
	sw		t0,	536(sp)
	lw		t1,	536(sp)
	lw		t2,	524(sp)
	mul		t0,	t1,	t2
	sw		t0,	536(sp)
	lw		t1,	532(sp)
	lw		t2,	536(sp)
	add		t0,	t1,	t2
	sw		t0,	540(sp)
	lw		t1,	540(sp)
	lw		t0,	0(t1)
	sw		t0,	544(sp)
	li		t0,	4
	sw		t0,	548(sp)
	lw		t1,	548(sp)
	lw		t2,	520(sp)
	mul		t0,	t1,	t2
	sw		t0,	548(sp)
	lw		t1,	544(sp)
	lw		t2,	548(sp)
	add		t0,	t1,	t2
	sw		t0,	552(sp)
	lw		t1,	552(sp)
	lw		t0,	0(t1)
	sw		t0,	556(sp)
	lw		t1,	556(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	560(sp)
	lw		t1,	560(sp)
	mv		a0,	t1
	call	print
	j		.main.11_if_terminate
.main.11_if_terminate:
	la		t0,	str.1
	sw		t0,	564(sp)
	lw		t1,	564(sp)
	mv		a0,	t1
	call	print
	j		.main.10_for_execution
.main.10_for_execution:
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	568(sp)
	li		t0,	1
	sw		t0,	572(sp)
	lw		t1,	568(sp)
	lw		t2,	572(sp)
	add		t0,	t1,	t2
	sw		t0,	576(sp)
	lw		t1,	576(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	j		.main.10_for_condition
.main.10_for_terminate:
	la		t0,	str.2
	sw		t0,	580(sp)
	lw		t1,	580(sp)
	mv		a0,	t1
	call	println
	j		.main.9_for_execution
.main.9_for_execution:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	584(sp)
	li		t0,	1
	sw		t0,	588(sp)
	lw		t1,	584(sp)
	lw		t2,	588(sp)
	add		t0,	t1,	t2
	sw		t0,	592(sp)
	lw		t1,	592(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.main.9_for_condition
.main.9_for_terminate:
	li		t0,	0
	sw		t0,	596(sp)
	lw		t1,	596(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.main.return
.main.return:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	600(sp)
	lw		t1,	600(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	604
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
	.globl	INF
	.type	INF,@object
INF:
	.word	0
	.size	INF,	4

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

	.globl	a
	.type	a,@object
a:
	.word	0
	.size	a,	4

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

