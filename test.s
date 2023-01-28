	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-688
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	688
	call	__global_init_0
	addi	t0,	sp,	8
	sw		t0,	20(sp)
	li		t0,	0
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	12
	sw		t0,	28(sp)
	li		t0,	4
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
	li		t0,	4
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	lw		t2,	56(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	64(sp)
	li		t0,	1
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t2,	64(sp)
	mul		t0,	t1,	t2
	sw		t0,	68(sp)
	lw		t1,	52(sp)
	lw		t2,	68(sp)
	add		t0,	t1,	t2
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	mv		t0,	t1
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	addi	t0,	sp,	16
	sw		t0,	80(sp)
	li		t0,	0
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	li		t0,	0
	sw		t0,	92(sp)
	li		t0,	4
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t2,	92(sp)
	mul		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	88(sp)
	lw		t2,	96(sp)
	add		t0,	t1,	t2
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	la		t0,	a
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	lw		t2,	100(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	116(sp)
	li		t0,	1
	sw		t0,	120(sp)
	li		t0,	4
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	lw		t2,	120(sp)
	mul		t0,	t1,	t2
	sw		t0,	124(sp)
	lw		t1,	116(sp)
	lw		t2,	124(sp)
	add		t0,	t1,	t2
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	la		t0,	a
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	lw		t2,	128(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	144(sp)
	li		t0,	2
	sw		t0,	148(sp)
	li		t0,	4
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t2,	148(sp)
	mul		t0,	t1,	t2
	sw		t0,	152(sp)
	lw		t1,	144(sp)
	lw		t2,	152(sp)
	add		t0,	t1,	t2
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	la		t0,	a
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	lw		t2,	156(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	li		t0,	3
	sw		t0,	176(sp)
	li		t0,	4
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t2,	176(sp)
	mul		t0,	t1,	t2
	sw		t0,	180(sp)
	lw		t1,	172(sp)
	lw		t2,	180(sp)
	add		t0,	t1,	t2
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	la		t0,	a
	sw		t0,	192(sp)
	lw		t1,	192(sp)
	lw		t0,	0(t1)
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t2,	184(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	mv		t0,	t1
	sw		t0,	204(sp)
	li		t0,	-1
	sw		t0,	208(sp)
	li		t0,	4
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	lw		t2,	208(sp)
	mul		t0,	t1,	t2
	sw		t0,	212(sp)
	lw		t1,	204(sp)
	lw		t2,	212(sp)
	add		t0,	t1,	t2
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	lw		t0,	0(t1)
	sw		t0,	220(sp)
	lw		t1,	220(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	mv		a0,	t1
	call	println
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	228(sp)
	li		t0,	0
	sw		t0,	232(sp)
	lw		t1,	232(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.main.0_for_condition
.main.0_for_condition:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	236(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	240(sp)
	li		t0,	0
	sw		t0,	244(sp)
	li		t0,	4
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t2,	244(sp)
	mul		t0,	t1,	t2
	sw		t0,	248(sp)
	lw		t1,	240(sp)
	lw		t2,	248(sp)
	add		t0,	t1,	t2
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	lw		t0,	0(t1)
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	mv		t0,	t1
	sw		t0,	260(sp)
	li		t0,	-1
	sw		t0,	264(sp)
	li		t0,	4
	sw		t0,	268(sp)
	lw		t1,	268(sp)
	lw		t2,	264(sp)
	mul		t0,	t1,	t2
	sw		t0,	268(sp)
	lw		t1,	260(sp)
	lw		t2,	268(sp)
	add		t0,	t1,	t2
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	lw		t0,	0(t1)
	sw		t0,	276(sp)
	lw		t1,	236(sp)
	lw		t2,	276(sp)
	slt		t0,	t1,	t2
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	beqz	t1,	.main.0_for_terminate
.main.0_for_loop:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	284(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	288(sp)
	li		t0,	0
	sw		t0,	292(sp)
	li		t0,	4
	sw		t0,	296(sp)
	lw		t1,	296(sp)
	lw		t2,	292(sp)
	mul		t0,	t1,	t2
	sw		t0,	296(sp)
	lw		t1,	288(sp)
	lw		t2,	296(sp)
	add		t0,	t1,	t2
	sw		t0,	300(sp)
	lw		t1,	300(sp)
	lw		t0,	0(t1)
	sw		t0,	304(sp)
	li		t0,	4
	sw		t0,	308(sp)
	lw		t1,	308(sp)
	lw		t2,	284(sp)
	mul		t0,	t1,	t2
	sw		t0,	308(sp)
	lw		t1,	304(sp)
	lw		t2,	308(sp)
	add		t0,	t1,	t2
	sw		t0,	312(sp)
	lw		t1,	312(sp)
	lw		t0,	0(t1)
	sw		t0,	316(sp)
	call	getInt
	mv		t0,	a0
	sw		t0,	320(sp)
	lw		t1,	320(sp)
	lw		t2,	312(sp)
	sw		t1,	0(t2)
	j		.main.0_for_execution
.main.0_for_execution:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	324(sp)
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	328(sp)
	li		t0,	1
	sw		t0,	332(sp)
	lw		t1,	324(sp)
	lw		t2,	332(sp)
	add		t0,	t1,	t2
	sw		t0,	336(sp)
	lw		t1,	336(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.main.0_for_condition
.main.0_for_terminate:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	340(sp)
	li		t0,	0
	sw		t0,	344(sp)
	lw		t1,	344(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.main.1_for_condition
.main.1_for_condition:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	348(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	352(sp)
	li		t0,	1
	sw		t0,	356(sp)
	li		t0,	4
	sw		t0,	360(sp)
	lw		t1,	360(sp)
	lw		t2,	356(sp)
	mul		t0,	t1,	t2
	sw		t0,	360(sp)
	lw		t1,	352(sp)
	lw		t2,	360(sp)
	add		t0,	t1,	t2
	sw		t0,	364(sp)
	lw		t1,	364(sp)
	lw		t0,	0(t1)
	sw		t0,	368(sp)
	lw		t1,	368(sp)
	mv		t0,	t1
	sw		t0,	372(sp)
	li		t0,	-1
	sw		t0,	376(sp)
	li		t0,	4
	sw		t0,	380(sp)
	lw		t1,	380(sp)
	lw		t2,	376(sp)
	mul		t0,	t1,	t2
	sw		t0,	380(sp)
	lw		t1,	372(sp)
	lw		t2,	380(sp)
	add		t0,	t1,	t2
	sw		t0,	384(sp)
	lw		t1,	384(sp)
	lw		t0,	0(t1)
	sw		t0,	388(sp)
	lw		t1,	348(sp)
	lw		t2,	388(sp)
	slt		t0,	t1,	t2
	sw		t0,	392(sp)
	lw		t1,	392(sp)
	beqz	t1,	.main.1_for_terminate
.main.1_for_loop:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	396(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	400(sp)
	li		t0,	1
	sw		t0,	404(sp)
	li		t0,	4
	sw		t0,	408(sp)
	lw		t1,	408(sp)
	lw		t2,	404(sp)
	mul		t0,	t1,	t2
	sw		t0,	408(sp)
	lw		t1,	400(sp)
	lw		t2,	408(sp)
	add		t0,	t1,	t2
	sw		t0,	412(sp)
	lw		t1,	412(sp)
	lw		t0,	0(t1)
	sw		t0,	416(sp)
	li		t0,	4
	sw		t0,	420(sp)
	lw		t1,	420(sp)
	lw		t2,	396(sp)
	mul		t0,	t1,	t2
	sw		t0,	420(sp)
	lw		t1,	416(sp)
	lw		t2,	420(sp)
	add		t0,	t1,	t2
	sw		t0,	424(sp)
	lw		t1,	424(sp)
	lw		t0,	0(t1)
	sw		t0,	428(sp)
	lw		t1,	428(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	432(sp)
	lw		t1,	432(sp)
	mv		a0,	t1
	call	print
	j		.main.1_for_execution
.main.1_for_execution:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	436(sp)
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	440(sp)
	li		t0,	1
	sw		t0,	444(sp)
	lw		t1,	436(sp)
	lw		t2,	444(sp)
	add		t0,	t1,	t2
	sw		t0,	448(sp)
	lw		t1,	448(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.main.1_for_condition
.main.1_for_terminate:
	la		t0,	str.0
	sw		t0,	452(sp)
	lw		t1,	452(sp)
	mv		a0,	t1
	call	println
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	456(sp)
	li		t0,	0
	sw		t0,	460(sp)
	lw		t1,	460(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.main.2_for_condition
.main.2_for_condition:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	464(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	468(sp)
	li		t0,	2
	sw		t0,	472(sp)
	li		t0,	4
	sw		t0,	476(sp)
	lw		t1,	476(sp)
	lw		t2,	472(sp)
	mul		t0,	t1,	t2
	sw		t0,	476(sp)
	lw		t1,	468(sp)
	lw		t2,	476(sp)
	add		t0,	t1,	t2
	sw		t0,	480(sp)
	lw		t1,	480(sp)
	lw		t0,	0(t1)
	sw		t0,	484(sp)
	lw		t1,	484(sp)
	mv		t0,	t1
	sw		t0,	488(sp)
	li		t0,	-1
	sw		t0,	492(sp)
	li		t0,	4
	sw		t0,	496(sp)
	lw		t1,	496(sp)
	lw		t2,	492(sp)
	mul		t0,	t1,	t2
	sw		t0,	496(sp)
	lw		t1,	488(sp)
	lw		t2,	496(sp)
	add		t0,	t1,	t2
	sw		t0,	500(sp)
	lw		t1,	500(sp)
	lw		t0,	0(t1)
	sw		t0,	504(sp)
	lw		t1,	464(sp)
	lw		t2,	504(sp)
	slt		t0,	t1,	t2
	sw		t0,	508(sp)
	lw		t1,	508(sp)
	beqz	t1,	.main.2_for_terminate
.main.2_for_loop:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	512(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	516(sp)
	li		t0,	2
	sw		t0,	520(sp)
	li		t0,	4
	sw		t0,	524(sp)
	lw		t1,	524(sp)
	lw		t2,	520(sp)
	mul		t0,	t1,	t2
	sw		t0,	524(sp)
	lw		t1,	516(sp)
	lw		t2,	524(sp)
	add		t0,	t1,	t2
	sw		t0,	528(sp)
	lw		t1,	528(sp)
	lw		t0,	0(t1)
	sw		t0,	532(sp)
	li		t0,	4
	sw		t0,	536(sp)
	lw		t1,	536(sp)
	lw		t2,	512(sp)
	mul		t0,	t1,	t2
	sw		t0,	536(sp)
	lw		t1,	532(sp)
	lw		t2,	536(sp)
	add		t0,	t1,	t2
	sw		t0,	540(sp)
	lw		t1,	540(sp)
	lw		t0,	0(t1)
	sw		t0,	544(sp)
	li		t0,	0
	sw		t0,	548(sp)
	lw		t1,	548(sp)
	lw		t2,	540(sp)
	sw		t1,	0(t2)
	j		.main.2_for_execution
.main.2_for_execution:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	552(sp)
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	556(sp)
	li		t0,	1
	sw		t0,	560(sp)
	lw		t1,	552(sp)
	lw		t2,	560(sp)
	add		t0,	t1,	t2
	sw		t0,	564(sp)
	lw		t1,	564(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.main.2_for_condition
.main.2_for_terminate:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	568(sp)
	li		t0,	0
	sw		t0,	572(sp)
	lw		t1,	572(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.main.3_for_condition
.main.3_for_condition:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	576(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	580(sp)
	li		t0,	3
	sw		t0,	584(sp)
	li		t0,	4
	sw		t0,	588(sp)
	lw		t1,	588(sp)
	lw		t2,	584(sp)
	mul		t0,	t1,	t2
	sw		t0,	588(sp)
	lw		t1,	580(sp)
	lw		t2,	588(sp)
	add		t0,	t1,	t2
	sw		t0,	592(sp)
	lw		t1,	592(sp)
	lw		t0,	0(t1)
	sw		t0,	596(sp)
	lw		t1,	596(sp)
	mv		t0,	t1
	sw		t0,	600(sp)
	li		t0,	-1
	sw		t0,	604(sp)
	li		t0,	4
	sw		t0,	608(sp)
	lw		t1,	608(sp)
	lw		t2,	604(sp)
	mul		t0,	t1,	t2
	sw		t0,	608(sp)
	lw		t1,	600(sp)
	lw		t2,	608(sp)
	add		t0,	t1,	t2
	sw		t0,	612(sp)
	lw		t1,	612(sp)
	lw		t0,	0(t1)
	sw		t0,	616(sp)
	lw		t1,	576(sp)
	lw		t2,	616(sp)
	slt		t0,	t1,	t2
	sw		t0,	620(sp)
	lw		t1,	620(sp)
	beqz	t1,	.main.3_for_terminate
.main.3_for_loop:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	624(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	628(sp)
	li		t0,	3
	sw		t0,	632(sp)
	li		t0,	4
	sw		t0,	636(sp)
	lw		t1,	636(sp)
	lw		t2,	632(sp)
	mul		t0,	t1,	t2
	sw		t0,	636(sp)
	lw		t1,	628(sp)
	lw		t2,	636(sp)
	add		t0,	t1,	t2
	sw		t0,	640(sp)
	lw		t1,	640(sp)
	lw		t0,	0(t1)
	sw		t0,	644(sp)
	li		t0,	4
	sw		t0,	648(sp)
	lw		t1,	648(sp)
	lw		t2,	624(sp)
	mul		t0,	t1,	t2
	sw		t0,	648(sp)
	lw		t1,	644(sp)
	lw		t2,	648(sp)
	add		t0,	t1,	t2
	sw		t0,	652(sp)
	lw		t1,	652(sp)
	lw		t0,	0(t1)
	sw		t0,	656(sp)
	lw		t1,	656(sp)
	mv		a0,	t1
	call	toString
	mv		t0,	a0
	sw		t0,	660(sp)
	lw		t1,	660(sp)
	mv		a0,	t1
	call	print
	j		.main.3_for_execution
.main.3_for_execution:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	664(sp)
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	668(sp)
	li		t0,	1
	sw		t0,	672(sp)
	lw		t1,	664(sp)
	lw		t2,	672(sp)
	add		t0,	t1,	t2
	sw		t0,	676(sp)
	lw		t1,	676(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.main.3_for_condition
.main.3_for_terminate:
	li		t0,	0
	sw		t0,	680(sp)
	lw		t1,	680(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
	j		.main.return
.main.return:
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	684(sp)
	lw		t1,	684(sp)
	mv		a0,	t1
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	688
	ret
	.size	main,	.-main

	.globl	__global_init_0
	.p2align	2
	.type	__global_init_0,@function

__global_init_0:
.__global_init_0.entry:
	addi	sp,	sp,	-60
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	60
	li		t0,	4
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
	li		t0,	4
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	li		t0,	4
	sw		t0,	40(sp)
	li		t0,	1
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t2,	40(sp)
	mul		t0,	t1,	t2
	sw		t0,	44(sp)
	lw		t1,	28(sp)
	lw		t2,	44(sp)
	add		t0,	t1,	t2
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		t0,	t1
	sw		t0,	52(sp)
	la		t0,	a
	sw		t0,	56(sp)
	lw		t1,	52(sp)
	lw		t2,	56(sp)
	sw		t1,	0(t2)
	j		.__global_init_0.return
.__global_init_0.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	60
	ret
	.size	__global_init_0,	.-__global_init_0

	.section	.bss
	.globl	a
	.type	a,@object
a:
	.word	0
	.size	a,	4

	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	""
	.size	str.0,	1

