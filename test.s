	.section	.text
	.globl	getcount
	.p2align	2
	.type	getcount,@function

getcount:
.getcount.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t2,	a0,	0
	lw		t0,	0(t2)
	li		t1,	1
	add		a0,	t0,	t1
	sw		a0,	0(t2)
	j		.getcount.return
.getcount.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	getcount,	.-getcount

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-1032
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	1032
	sw		s0,	8(sp)
	sw		s1,	12(sp)
	sw		s2,	16(sp)
	sw		s3,	20(sp)
	sw		s4,	24(sp)
	sw		s5,	28(sp)
	sw		s6,	32(sp)
	sw		s7,	36(sp)
	sw		s8,	40(sp)
	sw		s9,	44(sp)
	sw		s10,	48(sp)
	sw		s11,	52(sp)
	li		a0,	0
	li		t0,	0
	sw		t0,	56(sp)
	li		t0,	0
	sw		t0,	60(sp)
	li		t0,	0
	sw		t0,	64(sp)
	li		t0,	0
	sw		t0,	68(sp)
	li		t0,	0
	sw		t0,	72(sp)
	li		t0,	0
	sw		t0,	76(sp)
	li		t0,	0
	sw		t0,	80(sp)
	li		t0,	0
	sw		t0,	84(sp)
	li		t0,	0
	sw		t0,	88(sp)
	li		t0,	0
	sw		t0,	92(sp)
	li		t0,	0
	sw		t0,	96(sp)
	li		t0,	0
	sw		t0,	100(sp)
	li		t0,	0
	sw		t0,	104(sp)
	li		t0,	0
	sw		t0,	108(sp)
	li		t0,	0
	sw		t0,	112(sp)
	li		t0,	0
	sw		t0,	116(sp)
	li		t0,	0
	sw		t0,	120(sp)
	li		t0,	0
	sw		t0,	124(sp)
	li		t0,	0
	sw		t0,	128(sp)
	li		t0,	0
	sw		t0,	132(sp)
	li		t0,	0
	sw		t0,	136(sp)
	li		t0,	0
	sw		t0,	140(sp)
	li		t0,	0
	sw		t0,	144(sp)
	li		t0,	0
	sw		t0,	148(sp)
	li		t0,	0
	sw		t0,	152(sp)
	li		t0,	0
	sw		t0,	156(sp)
	li		t0,	0
	sw		t0,	160(sp)
	li		t0,	0
	sw		t0,	164(sp)
	li		t0,	0
	sw		t0,	168(sp)
	li		t0,	0
	sw		t0,	172(sp)
	li		t0,	0
	sw		t0,	176(sp)
	li		t0,	0
	sw		t0,	180(sp)
	li		t0,	0
	sw		t0,	184(sp)
	li		t0,	0
	sw		t0,	188(sp)
	li		t0,	0
	sw		t0,	192(sp)
	li		t0,	0
	sw		t0,	196(sp)
	li		t0,	0
	sw		t0,	200(sp)
	li		t0,	0
	sw		t0,	204(sp)
	li		t0,	0
	sw		t0,	208(sp)
	li		t0,	0
	sw		t0,	212(sp)
	li		t0,	0
	sw		t0,	216(sp)
	li		t0,	0
	sw		t0,	220(sp)
	li		t0,	0
	sw		t0,	224(sp)
	li		t0,	0
	sw		t0,	228(sp)
	li		t0,	0
	sw		t0,	232(sp)
	li		t0,	0
	sw		t0,	236(sp)
	li		t0,	0
	sw		t0,	240(sp)
	li		t0,	0
	sw		t0,	244(sp)
	li		t0,	0
	sw		t0,	248(sp)
	li		t0,	0
	sw		t0,	252(sp)
	li		t0,	0
	sw		t0,	256(sp)
	li		t0,	0
	sw		t0,	260(sp)
	li		t0,	0
	sw		t0,	264(sp)
	li		t0,	0
	sw		t0,	268(sp)
	li		t0,	0
	sw		t0,	272(sp)
	li		t0,	0
	sw		t0,	276(sp)
	li		t0,	0
	sw		t0,	280(sp)
	li		t0,	0
	sw		t0,	284(sp)
	li		t0,	0
	sw		t0,	288(sp)
	li		t0,	0
	sw		t0,	292(sp)
	li		t0,	0
	sw		t0,	296(sp)
	li		t0,	0
	sw		t0,	300(sp)
	li		t0,	0
	sw		t0,	304(sp)
	li		t0,	0
	sw		t0,	308(sp)
	li		t0,	0
	mv		s1,	t0
	li		t0,	0
	sw		t0,	312(sp)
	li		t0,	0
	sw		t0,	316(sp)
	li		t0,	0
	sw		t0,	320(sp)
	li		t0,	0
	sw		t0,	324(sp)
	li		t0,	0
	sw		t0,	328(sp)
	li		t0,	0
	sw		t0,	332(sp)
	li		t0,	0
	sw		t0,	336(sp)
	li		t0,	0
	sw		t0,	340(sp)
	li		t0,	0
	sw		t0,	344(sp)
	li		t0,	0
	sw		t0,	348(sp)
	li		t0,	0
	sw		t0,	352(sp)
	li		t0,	0
	sw		t0,	356(sp)
	li		t0,	0
	sw		t0,	360(sp)
	li		t0,	0
	sw		t0,	364(sp)
	li		t0,	0
	sw		t0,	368(sp)
	li		t0,	0
	sw		t0,	372(sp)
	li		t0,	0
	sw		t0,	376(sp)
	li		t0,	0
	sw		t0,	380(sp)
	li		t0,	0
	sw		t0,	384(sp)
	li		t0,	0
	sw		t0,	388(sp)
	li		t0,	0
	sw		t0,	392(sp)
	li		t0,	0
	sw		t0,	396(sp)
	li		t0,	0
	sw		t0,	400(sp)
	li		t0,	0
	sw		t0,	404(sp)
	li		t0,	0
	mv		s8,	t0
	li		t0,	0
	sw		t0,	408(sp)
	li		t0,	0
	sw		t0,	412(sp)
	li		t0,	0
	sw		t0,	416(sp)
	li		t0,	0
	mv		s7,	t0
	li		t0,	0
	sw		t0,	420(sp)
	li		t0,	0
	sw		t0,	424(sp)
	li		t0,	0
	sw		t0,	428(sp)
	li		t0,	0
	sw		t0,	432(sp)
	li		t0,	0
	sw		t0,	436(sp)
	li		t0,	0
	sw		t0,	440(sp)
	li		t0,	0
	sw		t0,	444(sp)
	li		t0,	0
	sw		t0,	448(sp)
	li		t0,	0
	sw		t0,	452(sp)
	li		t0,	0
	sw		t0,	456(sp)
	li		t0,	0
	sw		t0,	460(sp)
	li		t0,	0
	mv		s5,	t0
	li		t0,	0
	sw		t0,	464(sp)
	li		t0,	0
	sw		t0,	468(sp)
	li		t0,	0
	sw		t0,	472(sp)
	li		t0,	0
	sw		t0,	476(sp)
	li		t0,	0
	sw		t0,	480(sp)
	li		t0,	0
	sw		t0,	484(sp)
	li		t0,	0
	sw		t0,	488(sp)
	li		t0,	0
	sw		t0,	492(sp)
	li		t0,	0
	sw		t0,	496(sp)
	li		t0,	0
	sw		t0,	500(sp)
	li		t0,	0
	sw		t0,	504(sp)
	li		t0,	0
	sw		t0,	508(sp)
	li		t0,	0
	sw		t0,	512(sp)
	li		t0,	0
	sw		t0,	516(sp)
	li		t0,	0
	sw		t0,	520(sp)
	li		t0,	0
	sw		t0,	524(sp)
	li		t0,	0
	sw		t0,	528(sp)
	li		t0,	0
	sw		t0,	532(sp)
	li		t0,	0
	sw		t0,	536(sp)
	li		t0,	0
	sw		t0,	540(sp)
	li		t0,	0
	sw		t0,	544(sp)
	li		t0,	0
	sw		t0,	548(sp)
	li		t0,	0
	sw		t0,	552(sp)
	li		t0,	0
	sw		t0,	556(sp)
	li		t0,	0
	sw		t0,	560(sp)
	li		t0,	0
	sw		t0,	564(sp)
	li		t0,	0
	sw		t0,	568(sp)
	li		t0,	0
	sw		t0,	572(sp)
	li		t0,	0
	mv		s4,	t0
	li		t0,	0
	sw		t0,	576(sp)
	li		t0,	0
	sw		t0,	580(sp)
	li		t0,	0
	sw		t0,	584(sp)
	li		t0,	0
	mv		s6,	t0
	li		t0,	0
	sw		t0,	588(sp)
	li		t0,	0
	sw		t0,	592(sp)
	li		t0,	0
	sw		t0,	596(sp)
	li		t0,	0
	sw		t0,	600(sp)
	li		t0,	0
	sw		t0,	604(sp)
	li		t0,	0
	sw		t0,	608(sp)
	li		t0,	0
	sw		t0,	612(sp)
	li		t0,	0
	sw		t0,	616(sp)
	li		t0,	0
	sw		t0,	620(sp)
	li		t0,	0
	sw		t0,	624(sp)
	li		t0,	0
	sw		t0,	628(sp)
	li		t0,	0
	sw		t0,	632(sp)
	li		t0,	0
	sw		t0,	636(sp)
	li		t0,	0
	sw		t0,	640(sp)
	li		t0,	0
	sw		t0,	644(sp)
	li		t0,	0
	sw		t0,	648(sp)
	li		t0,	0
	sw		t0,	652(sp)
	li		t0,	0
	sw		t0,	656(sp)
	li		t0,	0
	sw		t0,	660(sp)
	li		t0,	0
	sw		t0,	664(sp)
	li		t0,	0
	sw		t0,	668(sp)
	li		t0,	0
	sw		t0,	672(sp)
	li		t0,	0
	sw		t0,	676(sp)
	li		t0,	0
	sw		t0,	680(sp)
	li		t0,	0
	sw		t0,	684(sp)
	li		t0,	0
	sw		t0,	688(sp)
	li		t0,	0
	sw		t0,	692(sp)
	li		t0,	0
	sw		t0,	696(sp)
	li		t0,	0
	sw		t0,	700(sp)
	li		t0,	0
	sw		t0,	704(sp)
	li		t0,	0
	sw		t0,	708(sp)
	li		t0,	0
	sw		t0,	712(sp)
	li		t0,	0
	sw		t0,	716(sp)
	li		t0,	0
	sw		t0,	720(sp)
	li		t0,	0
	sw		t0,	724(sp)
	li		t0,	0
	sw		t0,	728(sp)
	li		t0,	0
	sw		t0,	732(sp)
	li		t0,	0
	sw		t0,	736(sp)
	li		t0,	0
	sw		t0,	740(sp)
	li		t0,	0
	sw		t0,	744(sp)
	li		t0,	0
	sw		t0,	748(sp)
	li		t0,	0
	sw		t0,	752(sp)
	li		t0,	0
	sw		t0,	756(sp)
	li		t0,	0
	sw		t0,	760(sp)
	li		t0,	0
	sw		t0,	764(sp)
	li		t0,	0
	sw		t0,	768(sp)
	li		t0,	0
	sw		t0,	772(sp)
	li		t0,	0
	mv		s3,	t0
	li		t0,	0
	sw		t0,	776(sp)
	li		t0,	0
	sw		t0,	780(sp)
	li		t0,	0
	sw		t0,	784(sp)
	li		t0,	0
	sw		t0,	788(sp)
	li		t0,	0
	mv		s10,	t0
	li		t0,	0
	sw		t0,	792(sp)
	li		t0,	0
	sw		t0,	796(sp)
	li		t0,	0
	sw		t0,	800(sp)
	li		t0,	0
	sw		t0,	804(sp)
	li		t0,	0
	sw		t0,	808(sp)
	li		t0,	0
	sw		t0,	812(sp)
	li		t0,	0
	sw		t0,	816(sp)
	li		t0,	0
	sw		t0,	820(sp)
	li		t0,	0
	sw		t0,	824(sp)
	li		t0,	0
	sw		t0,	828(sp)
	li		t0,	0
	sw		t0,	832(sp)
	li		t0,	0
	sw		t0,	836(sp)
	li		t0,	0
	sw		t0,	840(sp)
	li		t0,	0
	sw		t0,	844(sp)
	li		t0,	0
	sw		t0,	848(sp)
	li		t0,	0
	sw		t0,	852(sp)
	li		t0,	0
	sw		t0,	856(sp)
	li		t0,	0
	sw		t0,	860(sp)
	li		t0,	0
	sw		t0,	864(sp)
	li		t0,	0
	sw		t0,	868(sp)
	li		t0,	0
	sw		t0,	872(sp)
	li		t0,	0
	sw		t0,	876(sp)
	li		t0,	0
	sw		t0,	880(sp)
	li		t0,	0
	sw		t0,	884(sp)
	li		t0,	0
	sw		t0,	888(sp)
	li		t0,	0
	sw		t0,	892(sp)
	li		t0,	0
	sw		t0,	896(sp)
	li		t0,	0
	sw		t0,	900(sp)
	li		t0,	0
	sw		t0,	904(sp)
	li		t0,	0
	sw		t0,	908(sp)
	li		t0,	0
	sw		t0,	912(sp)
	li		t0,	0
	sw		t0,	916(sp)
	li		t0,	0
	sw		t0,	920(sp)
	li		t0,	0
	sw		t0,	924(sp)
	li		t0,	0
	sw		t0,	928(sp)
	li		t0,	0
	sw		t0,	932(sp)
	li		t0,	0
	sw		t0,	936(sp)
	li		t0,	0
	sw		t0,	940(sp)
	li		t0,	0
	sw		t0,	944(sp)
	li		t0,	0
	sw		t0,	948(sp)
	li		t0,	0
	sw		t0,	952(sp)
	li		t0,	0
	sw		t0,	956(sp)
	li		t0,	0
	sw		t0,	960(sp)
	li		t0,	0
	sw		t0,	964(sp)
	li		t0,	0
	sw		t0,	968(sp)
	li		t0,	0
	sw		t0,	972(sp)
	li		t0,	0
	sw		t0,	976(sp)
	li		t0,	0
	sw		t0,	980(sp)
	li		t0,	0
	mv		s2,	t0
	li		t0,	0
	sw		t0,	984(sp)
	li		t0,	0
	sw		t0,	988(sp)
	li		t0,	0
	sw		t0,	992(sp)
	li		t0,	0
	sw		t0,	996(sp)
	li		t0,	0
	sw		t0,	1000(sp)
	li		t0,	0
	mv		s9,	t0
	li		t0,	0
	mv		s11,	t0
	li		t0,	0
	sw		t0,	1004(sp)
	li		t0,	0
	mv		s0,	t0
	li		t0,	0
	sw		t0,	1008(sp)
	li		t0,	0
	sw		t0,	1012(sp)
	li		t0,	0
	sw		t0,	1016(sp)
	li		t0,	0
	sw		t0,	1020(sp)
	li		t0,	0
	sw		t0,	1024(sp)
	li		t0,	0
	sw		t0,	1028(sp)
	la		t0,	count
	lw		t0,	0(t0)
	li		t0,	1
	li		t1,	4
	mul		t1,	t0,	t1
	li		t0,	4
	add		a0,	t1,	t0
	call	__malloc
	li		t0,	1
	sw		t0,	0(a0)
	addi	t0,	a0,	4
	la		t1,	count
	sw		t0,	0(t1)
	la		t0,	count
	lw		t0,	0(t0)
	addi	t0,	t0,	0
	lw		t1,	0(t0)
	li		t1,	0
	sw		t1,	0(t0)
	lw		t0,	56(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	56(sp)
	lw		t0,	60(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	60(sp)
	lw		t0,	64(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	64(sp)
	lw		t0,	68(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	68(sp)
	lw		t0,	72(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	72(sp)
	lw		t0,	76(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	76(sp)
	lw		t0,	80(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	80(sp)
	lw		t0,	84(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	84(sp)
	lw		t0,	88(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	88(sp)
	lw		t0,	92(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	92(sp)
	lw		t0,	96(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	96(sp)
	lw		t0,	100(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	100(sp)
	lw		t0,	104(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	104(sp)
	lw		t0,	108(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	108(sp)
	lw		t0,	112(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	112(sp)
	lw		t0,	116(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	116(sp)
	lw		t0,	120(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	120(sp)
	lw		t0,	124(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	124(sp)
	lw		t0,	128(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	128(sp)
	lw		t0,	132(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	132(sp)
	lw		t0,	136(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	136(sp)
	lw		t0,	140(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	140(sp)
	lw		t0,	144(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	144(sp)
	lw		t0,	148(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	148(sp)
	lw		t0,	152(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	152(sp)
	lw		t0,	156(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	156(sp)
	lw		t0,	160(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	160(sp)
	lw		t0,	164(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	164(sp)
	lw		t0,	168(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	168(sp)
	lw		t0,	172(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	172(sp)
	lw		t0,	176(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	176(sp)
	lw		t0,	180(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	180(sp)
	lw		t0,	184(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	184(sp)
	lw		t0,	188(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	188(sp)
	lw		t0,	192(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	192(sp)
	lw		t0,	196(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	196(sp)
	lw		t0,	200(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	200(sp)
	lw		t0,	204(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	204(sp)
	lw		t0,	208(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	208(sp)
	lw		t0,	212(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	212(sp)
	lw		t0,	216(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	216(sp)
	lw		t0,	220(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	220(sp)
	lw		t0,	224(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	224(sp)
	lw		t0,	228(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	228(sp)
	lw		t0,	232(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	232(sp)
	lw		t0,	236(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	236(sp)
	lw		t0,	240(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	240(sp)
	lw		t0,	244(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	244(sp)
	lw		t0,	248(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	248(sp)
	lw		t0,	252(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	252(sp)
	lw		t0,	256(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	256(sp)
	lw		t0,	260(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	260(sp)
	lw		t0,	264(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	264(sp)
	lw		t0,	268(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	268(sp)
	lw		t0,	272(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	272(sp)
	lw		t0,	276(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	276(sp)
	lw		t0,	280(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	280(sp)
	lw		t0,	284(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	284(sp)
	lw		t0,	288(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	288(sp)
	lw		t0,	292(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	292(sp)
	lw		t0,	296(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	296(sp)
	lw		t0,	300(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	300(sp)
	lw		t0,	304(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	304(sp)
	lw		t0,	308(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	308(sp)
	mv		t0,	s1
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s1,	a0
	lw		t0,	312(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	312(sp)
	lw		t0,	316(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	316(sp)
	lw		t0,	320(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	320(sp)
	lw		t0,	324(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	324(sp)
	lw		t0,	328(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	328(sp)
	lw		t0,	332(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	332(sp)
	lw		t0,	336(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	336(sp)
	lw		t0,	340(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	340(sp)
	lw		t0,	344(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	344(sp)
	lw		t0,	348(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	348(sp)
	lw		t0,	352(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	352(sp)
	lw		t0,	356(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	356(sp)
	lw		t0,	360(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	360(sp)
	lw		t0,	364(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	364(sp)
	lw		t0,	368(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	368(sp)
	lw		t0,	372(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	372(sp)
	lw		t0,	376(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	376(sp)
	lw		t0,	380(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	380(sp)
	lw		t0,	384(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	384(sp)
	lw		t0,	388(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	388(sp)
	lw		t0,	392(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	392(sp)
	lw		t0,	396(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	396(sp)
	lw		t0,	400(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	400(sp)
	lw		t0,	404(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	404(sp)
	mv		t0,	s8
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s8,	a0
	lw		t0,	408(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	408(sp)
	lw		t0,	412(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	412(sp)
	lw		t0,	416(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	416(sp)
	mv		t0,	s7
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s7,	a0
	lw		t0,	420(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	420(sp)
	lw		t0,	424(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	424(sp)
	lw		t0,	428(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	428(sp)
	lw		t0,	432(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	432(sp)
	lw		t0,	436(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	436(sp)
	lw		t0,	440(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	440(sp)
	lw		t0,	444(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	444(sp)
	lw		t0,	448(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	448(sp)
	lw		t0,	452(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	452(sp)
	lw		t0,	456(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	456(sp)
	lw		t0,	460(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	460(sp)
	mv		t0,	s5
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s5,	a0
	lw		t0,	464(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	464(sp)
	lw		t0,	468(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	468(sp)
	lw		t0,	472(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	472(sp)
	lw		t0,	476(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	476(sp)
	lw		t0,	480(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	480(sp)
	lw		t0,	484(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	484(sp)
	lw		t0,	488(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	488(sp)
	lw		t0,	492(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	492(sp)
	lw		t0,	496(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	496(sp)
	lw		t0,	500(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	500(sp)
	lw		t0,	504(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	504(sp)
	lw		t0,	508(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	508(sp)
	lw		t0,	512(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	512(sp)
	lw		t0,	516(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	516(sp)
	lw		t0,	520(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	520(sp)
	lw		t0,	524(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	524(sp)
	lw		t0,	528(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	528(sp)
	lw		t0,	532(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	532(sp)
	lw		t0,	536(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	536(sp)
	lw		t0,	540(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	540(sp)
	lw		t0,	544(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	544(sp)
	lw		t0,	548(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	548(sp)
	lw		t0,	552(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	552(sp)
	lw		t0,	556(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	556(sp)
	lw		t0,	560(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	560(sp)
	lw		t0,	564(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	564(sp)
	lw		t0,	568(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	568(sp)
	lw		t0,	572(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	572(sp)
	mv		t0,	s4
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s4,	a0
	lw		t0,	576(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	576(sp)
	lw		t0,	580(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	580(sp)
	lw		t0,	584(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	584(sp)
	mv		t0,	s6
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s6,	a0
	lw		t0,	588(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	588(sp)
	lw		t0,	592(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	592(sp)
	lw		t0,	596(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	596(sp)
	lw		t0,	600(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	600(sp)
	lw		t0,	604(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	604(sp)
	lw		t0,	608(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	608(sp)
	lw		t0,	612(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	612(sp)
	lw		t0,	616(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	616(sp)
	lw		t0,	620(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	620(sp)
	lw		t0,	624(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	624(sp)
	lw		t0,	628(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	628(sp)
	lw		t0,	632(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	632(sp)
	lw		t0,	636(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	636(sp)
	lw		t0,	640(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	640(sp)
	lw		t0,	644(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	644(sp)
	lw		t0,	648(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	648(sp)
	lw		t0,	652(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	652(sp)
	lw		t0,	656(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	656(sp)
	lw		t0,	660(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	660(sp)
	lw		t0,	664(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	664(sp)
	lw		t0,	668(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	668(sp)
	lw		t0,	672(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	672(sp)
	lw		t0,	676(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	676(sp)
	lw		t0,	680(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	680(sp)
	lw		t0,	684(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	684(sp)
	lw		t0,	688(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	688(sp)
	lw		t0,	692(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	692(sp)
	lw		t0,	696(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	696(sp)
	lw		t0,	700(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	700(sp)
	lw		t0,	704(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	704(sp)
	lw		t0,	708(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	708(sp)
	lw		t0,	712(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	712(sp)
	lw		t0,	716(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	716(sp)
	lw		t0,	720(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	720(sp)
	lw		t0,	724(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	724(sp)
	lw		t0,	728(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	728(sp)
	lw		t0,	732(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	732(sp)
	lw		t0,	736(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	736(sp)
	lw		t0,	740(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	740(sp)
	lw		t0,	744(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	744(sp)
	lw		t0,	748(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	748(sp)
	lw		t0,	752(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	752(sp)
	lw		t0,	756(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	756(sp)
	lw		t0,	760(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	760(sp)
	lw		t0,	764(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	764(sp)
	lw		t0,	768(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	768(sp)
	lw		t0,	772(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	772(sp)
	mv		t0,	s3
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s3,	a0
	lw		t0,	776(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	776(sp)
	lw		t0,	780(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	780(sp)
	lw		t0,	784(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	784(sp)
	lw		t0,	788(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	788(sp)
	mv		t0,	s10
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s10,	a0
	lw		t0,	792(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	792(sp)
	lw		t0,	796(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	796(sp)
	lw		t0,	800(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	800(sp)
	lw		t0,	804(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	804(sp)
	lw		t0,	808(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	808(sp)
	lw		t0,	812(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	812(sp)
	lw		t0,	816(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	816(sp)
	lw		t0,	820(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	820(sp)
	lw		t0,	824(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	824(sp)
	lw		t0,	828(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	828(sp)
	lw		t0,	832(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	832(sp)
	lw		t0,	836(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	836(sp)
	lw		t0,	840(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	840(sp)
	lw		t0,	844(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	844(sp)
	lw		t0,	848(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	848(sp)
	lw		t0,	852(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	852(sp)
	lw		t0,	856(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	856(sp)
	lw		t0,	860(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	860(sp)
	lw		t0,	864(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	864(sp)
	lw		t0,	868(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	868(sp)
	lw		t0,	872(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	872(sp)
	lw		t0,	876(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	876(sp)
	lw		t0,	880(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	880(sp)
	lw		t0,	884(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	884(sp)
	lw		t0,	888(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	888(sp)
	lw		t0,	892(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	892(sp)
	lw		t0,	896(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	896(sp)
	lw		t0,	900(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	900(sp)
	lw		t0,	904(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	904(sp)
	lw		t0,	908(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	908(sp)
	lw		t0,	912(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	912(sp)
	lw		t0,	916(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	916(sp)
	lw		t0,	920(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	920(sp)
	lw		t0,	924(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	924(sp)
	lw		t0,	928(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	928(sp)
	lw		t0,	932(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	932(sp)
	lw		t0,	936(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	936(sp)
	lw		t0,	940(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	940(sp)
	lw		t0,	944(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	944(sp)
	lw		t0,	948(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	948(sp)
	lw		t0,	952(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	952(sp)
	lw		t0,	956(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	956(sp)
	lw		t0,	960(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	960(sp)
	lw		t0,	964(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	964(sp)
	lw		t0,	968(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	968(sp)
	lw		t0,	972(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	972(sp)
	lw		t0,	976(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	976(sp)
	lw		t0,	980(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	980(sp)
	mv		t0,	s2
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s2,	a0
	lw		t0,	984(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	984(sp)
	lw		t0,	988(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	988(sp)
	lw		t0,	992(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	992(sp)
	lw		t0,	996(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	996(sp)
	lw		t0,	1000(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	1000(sp)
	mv		t0,	s9
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s9,	a0
	mv		t0,	s11
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s11,	a0
	lw		t0,	1004(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	1004(sp)
	mv		t0,	s0
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	mv		s0,	a0
	lw		t0,	1008(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	1008(sp)
	lw		t0,	1012(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	1012(sp)
	lw		t0,	1016(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	1016(sp)
	lw		t0,	1020(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	1020(sp)
	lw		t0,	1024(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	1024(sp)
	lw		t0,	1028(sp)
	la		t0,	count
	lw		a0,	0(t0)
	call	getcount
	sw		a0,	1028(sp)
	lw		a0,	56(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	60(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	64(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	68(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	72(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	76(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	80(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	84(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	88(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	92(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	96(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	100(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	104(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	108(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	112(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	116(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	120(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	124(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	128(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	132(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	136(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	140(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	144(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	148(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	152(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	156(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	160(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	164(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	168(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	172(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	176(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	180(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	184(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	188(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	192(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	196(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	200(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	204(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	208(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	212(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	216(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	220(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	224(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	228(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	232(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	236(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	240(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	244(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	248(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	252(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	256(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	260(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	264(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	268(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	272(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	276(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	280(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	284(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	288(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	292(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	296(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	300(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	304(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	308(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s1
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	312(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	316(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	320(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	324(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	328(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	332(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	336(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	340(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	344(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	348(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	352(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	356(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	360(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	364(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	368(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	372(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	376(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	380(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	384(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	388(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	392(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	396(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	400(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	404(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s8
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	408(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	412(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	416(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s7
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	420(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	424(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	428(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	432(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	436(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	440(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	444(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	448(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	452(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	456(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	460(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s5
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	464(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	468(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	472(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	476(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	480(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	484(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	488(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	492(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	496(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	500(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	504(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	508(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	512(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	516(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	520(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	524(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	528(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	532(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	536(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	540(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	544(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	548(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	552(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	556(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	560(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	564(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	568(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	572(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s4
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	576(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	580(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	584(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s6
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	588(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	592(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	596(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	600(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	604(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	608(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	612(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	616(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	620(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	624(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	628(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	632(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	636(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	640(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	644(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	648(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	652(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	656(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	660(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	664(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	668(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	672(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	676(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	680(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	684(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	688(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	692(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	696(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	700(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	704(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	708(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	712(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	716(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	720(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	724(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	728(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	732(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	736(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	740(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	744(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	748(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	752(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	756(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	760(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	764(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	768(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	772(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s3
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	776(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	780(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	784(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	788(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s10
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	792(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	796(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	800(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	804(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	808(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	812(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	816(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	820(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	824(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	828(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	832(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	836(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	840(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	844(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	848(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	852(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	856(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	860(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	864(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	868(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	872(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	876(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	880(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	884(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	888(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	892(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	896(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	900(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	904(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	908(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	912(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	916(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	920(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	924(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	928(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	932(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	936(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	940(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	944(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	948(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	952(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	956(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	960(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	964(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	968(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	972(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	976(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	980(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s2
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	984(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	988(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	992(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	996(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1000(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s9
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s11
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1004(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s0
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1008(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1012(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1016(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1020(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1024(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1028(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	la		a0,	str.1
	la		a0,	str.1
	call	println
	lw		a0,	56(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	60(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	64(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	68(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	72(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	76(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	80(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	84(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	88(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	92(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	96(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	100(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	104(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	108(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	112(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	116(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	120(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	124(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	128(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	132(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	136(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	140(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	144(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	148(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	152(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	156(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	160(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	164(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	168(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	172(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	176(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	180(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	184(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	188(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	192(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	196(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	200(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	204(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	208(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	212(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	216(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	220(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	224(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	228(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	232(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	236(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	240(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	244(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	248(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	252(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	256(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	260(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	264(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	268(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	272(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	276(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	280(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	284(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	288(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	292(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	296(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	300(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	304(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	308(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s1
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	312(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	316(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	320(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	324(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	328(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	332(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	336(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	340(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	344(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	348(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	352(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	356(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	360(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	364(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	368(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	372(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	376(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	380(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	384(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	388(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	392(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	396(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	400(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	404(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s8
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	408(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	412(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	416(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s7
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	420(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	424(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	428(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	432(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	436(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	440(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	444(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	448(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	452(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	456(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	460(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s5
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	464(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	468(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	472(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	476(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	480(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	484(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	488(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	492(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	496(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	500(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	504(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	508(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	512(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	516(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	520(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	524(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	528(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	532(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	536(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	540(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	544(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	548(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	552(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	556(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	560(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	564(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	568(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	572(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s4
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	576(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	580(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	584(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s6
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	588(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	592(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	596(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	600(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	604(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	608(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	612(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	616(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	620(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	624(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	628(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	632(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	636(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	640(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	644(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	648(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	652(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	656(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	660(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	664(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	668(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	672(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	676(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	680(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	684(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	688(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	692(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	696(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	700(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	704(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	708(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	712(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	716(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	720(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	724(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	728(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	732(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	736(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	740(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	744(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	748(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	752(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	756(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	760(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	764(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	768(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	772(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s3
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	776(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	780(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	784(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	788(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s10
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	792(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	796(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	800(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	804(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	808(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	812(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	816(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	820(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	824(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	828(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	832(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	836(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	840(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	844(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	848(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	852(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	856(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	860(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	864(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	868(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	872(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	876(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	880(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	884(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	888(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	892(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	896(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	900(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	904(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	908(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	912(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	916(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	920(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	924(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	928(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	932(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	936(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	940(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	944(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	948(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	952(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	956(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	960(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	964(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	968(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	972(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	976(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	980(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s2
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	984(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	988(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	992(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	996(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1000(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s9
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s11
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1004(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	mv		a0,	s0
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1008(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1012(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1016(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1020(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1024(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	lw		a0,	1028(sp)
	call	toString
	la		a1,	str.0
	la		a1,	str.0
	call	__merge_string
	call	print
	la		a0,	str.1
	la		a0,	str.1
	call	println
	li		a0,	0
	j		.main.return
.main.return:
	lw		s0,	8(sp)
	lw		s1,	12(sp)
	lw		s2,	16(sp)
	lw		s3,	20(sp)
	lw		s4,	24(sp)
	lw		s5,	28(sp)
	lw		s6,	32(sp)
	lw		s7,	36(sp)
	lw		s8,	40(sp)
	lw		s9,	44(sp)
	lw		s10,	48(sp)
	lw		s11,	52(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	1032
	ret
	.size	main,	.-main

	.section	.bss
	.globl	count
	.type	count,@object
count:
	.word	0
	.size	count,	4

	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	" "
	.size	str.0,	2

	.globl	str.1
	.type	str.1,@object
str.1:
	.string	""
	.size	str.1,	1

