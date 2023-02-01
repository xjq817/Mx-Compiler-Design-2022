	.section	.text
	.globl	jud
	.p2align	2
	.type	jud,@function

jud:
.jud.entry:
	mv		ASM.Operand.ASMVirtualRegister@68be2bc2,	s0
	mv		ASM.Operand.ASMVirtualRegister@28feb3fa,	s1
	mv		ASM.Operand.ASMVirtualRegister@675d3402,	s2
	mv		ASM.Operand.ASMVirtualRegister@51565ec2,	s3
	mv		ASM.Operand.ASMVirtualRegister@482f8f11,	s4
	mv		ASM.Operand.ASMVirtualRegister@1593948d,	s5
	mv		ASM.Operand.ASMVirtualRegister@1b604f19,	s6
	mv		ASM.Operand.ASMVirtualRegister@7823a2f9,	s7
	mv		ASM.Operand.ASMVirtualRegister@4cc0edeb,	s8
	mv		ASM.Operand.ASMVirtualRegister@457e2f02,	s9
	mv		ASM.Operand.ASMVirtualRegister@5c7fa833,	s10
	mv		ASM.Operand.ASMVirtualRegister@39aeed2f,	s11
	mv		ASM.Operand.ASMVirtualRegister@724af044,	a0
	mv		ASM.Operand.ASMVirtualRegister@6767c1fc,	ASM.Operand.ASMVirtualRegister@724af044
	mv		ASM.Operand.ASMVirtualRegister@29ee9faa,	zero
	mv		ASM.Operand.ASMVirtualRegister@c038203,	zero
	mv		ASM.Operand.ASMVirtualRegister@cc285f4,	ASM.Operand.ASMVirtualRegister@6767c1fc
	mv		a0,	ASM.Operand.ASMVirtualRegister@cc285f4
	call	printlnInt
	mv		ASM.Operand.ASMVirtualRegister@8bd1b6a,	ASM.Operand.ASMVirtualRegister@29ee9faa
	mv		ASM.Operand.ASMVirtualRegister@29ee9faa,	zero
	j		.jud.0_for_condition
.jud.0_for_condition:
	mv		ASM.Operand.ASMVirtualRegister@cb5822,	ASM.Operand.ASMVirtualRegister@29ee9faa
	la		ASM.Operand.ASMVirtualRegister@2b98378d,	n
	lw		ASM.Operand.ASMVirtualRegister@26be92ad,	0(ASM.Operand.ASMVirtualRegister@2b98378d)
	mv		ASM.Operand.ASMVirtualRegister@4c70fda8,	ASM.Operand.ASMVirtualRegister@6767c1fc
	div		ASM.Operand.ASMVirtualRegister@14acaea5,	ASM.Operand.ASMVirtualRegister@26be92ad,	ASM.Operand.ASMVirtualRegister@4c70fda8
	slt		ASM.Operand.ASMVirtualRegister@d8355a8,	ASM.Operand.ASMVirtualRegister@cb5822,	ASM.Operand.ASMVirtualRegister@14acaea5
	beqz	ASM.Operand.ASMVirtualRegister@d8355a8,	.jud.0_for_terminate
	j		.jud.0_for_loop
.jud.0_for_loop:
	mv		ASM.Operand.ASMVirtualRegister@59fa1d9b,	zero
	mv		ASM.Operand.ASMVirtualRegister@28d25987,	ASM.Operand.ASMVirtualRegister@c038203
	mv		ASM.Operand.ASMVirtualRegister@c038203,	zero
	j		.jud.1_for_condition
.jud.1_for_condition:
	mv		ASM.Operand.ASMVirtualRegister@4501b7af,	ASM.Operand.ASMVirtualRegister@c038203
	mv		ASM.Operand.ASMVirtualRegister@523884b2,	ASM.Operand.ASMVirtualRegister@6767c1fc
	li		ASM.Operand.ASMVirtualRegister@61832929,	1
	sub		ASM.Operand.ASMVirtualRegister@29774679,	ASM.Operand.ASMVirtualRegister@523884b2,	ASM.Operand.ASMVirtualRegister@61832929
	slt		ASM.Operand.ASMVirtualRegister@3ffc5af1,	ASM.Operand.ASMVirtualRegister@4501b7af,	ASM.Operand.ASMVirtualRegister@29774679
	beqz	ASM.Operand.ASMVirtualRegister@3ffc5af1,	.jud.1_for_terminate
	j		.jud.1_for_loop
.jud.1_for_loop:
	mv		ASM.Operand.ASMVirtualRegister@5e5792a0,	ASM.Operand.ASMVirtualRegister@29ee9faa
	mv		ASM.Operand.ASMVirtualRegister@26653222,	ASM.Operand.ASMVirtualRegister@6767c1fc
	mul		ASM.Operand.ASMVirtualRegister@3532ec19,	ASM.Operand.ASMVirtualRegister@5e5792a0,	ASM.Operand.ASMVirtualRegister@26653222
	mv		ASM.Operand.ASMVirtualRegister@68c4039c,	ASM.Operand.ASMVirtualRegister@c038203
	add		ASM.Operand.ASMVirtualRegister@ae45eb6,	ASM.Operand.ASMVirtualRegister@3532ec19,	ASM.Operand.ASMVirtualRegister@68c4039c
	la		ASM.Operand.ASMVirtualRegister@59f99ea,	a
	lw		ASM.Operand.ASMVirtualRegister@27efef64,	0(ASM.Operand.ASMVirtualRegister@59f99ea)
	li		ASM.Operand.ASMVirtualRegister@6f7fd0e6,	4
	mul		ASM.Operand.ASMVirtualRegister@6f7fd0e6,	ASM.Operand.ASMVirtualRegister@6f7fd0e6,	ASM.Operand.ASMVirtualRegister@ae45eb6
	add		ASM.Operand.ASMVirtualRegister@47c62251,	ASM.Operand.ASMVirtualRegister@27efef64,	ASM.Operand.ASMVirtualRegister@6f7fd0e6
	lw		ASM.Operand.ASMVirtualRegister@3e6fa38a,	0(ASM.Operand.ASMVirtualRegister@47c62251)
	mv		ASM.Operand.ASMVirtualRegister@66a3ffec,	ASM.Operand.ASMVirtualRegister@29ee9faa
	mv		ASM.Operand.ASMVirtualRegister@77caeb3e,	ASM.Operand.ASMVirtualRegister@6767c1fc
	mul		ASM.Operand.ASMVirtualRegister@1e88b3c,	ASM.Operand.ASMVirtualRegister@66a3ffec,	ASM.Operand.ASMVirtualRegister@77caeb3e
	mv		ASM.Operand.ASMVirtualRegister@42d80b78,	ASM.Operand.ASMVirtualRegister@c038203
	add		ASM.Operand.ASMVirtualRegister@3bfdc050,	ASM.Operand.ASMVirtualRegister@1e88b3c,	ASM.Operand.ASMVirtualRegister@42d80b78
	li		ASM.Operand.ASMVirtualRegister@1bce4f0a,	1
	add		ASM.Operand.ASMVirtualRegister@5e3a8624,	ASM.Operand.ASMVirtualRegister@3bfdc050,	ASM.Operand.ASMVirtualRegister@1bce4f0a
	la		ASM.Operand.ASMVirtualRegister@5c3bd550,	a
	lw		ASM.Operand.ASMVirtualRegister@91161c7,	0(ASM.Operand.ASMVirtualRegister@5c3bd550)
	li		ASM.Operand.ASMVirtualRegister@604ed9f0,	4
	mul		ASM.Operand.ASMVirtualRegister@604ed9f0,	ASM.Operand.ASMVirtualRegister@604ed9f0,	ASM.Operand.ASMVirtualRegister@5e3a8624
	add		ASM.Operand.ASMVirtualRegister@6a4f787b,	ASM.Operand.ASMVirtualRegister@91161c7,	ASM.Operand.ASMVirtualRegister@604ed9f0
	lw		ASM.Operand.ASMVirtualRegister@685cb137,	0(ASM.Operand.ASMVirtualRegister@6a4f787b)
	slt		ASM.Operand.ASMVirtualRegister@6a41eaa2,	ASM.Operand.ASMVirtualRegister@685cb137,	ASM.Operand.ASMVirtualRegister@3e6fa38a
	beqz	ASM.Operand.ASMVirtualRegister@6a41eaa2,	.jud.2_if_terminate
	j		.jud.2_if_true
.jud.2_if_true:
	mv		ASM.Operand.ASMVirtualRegister@7cd62f43,	ASM.Operand.ASMVirtualRegister@59fa1d9b
	li		ASM.Operand.ASMVirtualRegister@6d4b1c02,	1
	mv		ASM.Operand.ASMVirtualRegister@59fa1d9b,	ASM.Operand.ASMVirtualRegister@6d4b1c02
	j		.jud.2_if_terminate
.jud.2_if_terminate:
	j		.jud.1_for_execution
.jud.1_for_execution:
	mv		ASM.Operand.ASMVirtualRegister@6093dd95,	ASM.Operand.ASMVirtualRegister@c038203
	mv		ASM.Operand.ASMVirtualRegister@5622fdf,	ASM.Operand.ASMVirtualRegister@c038203
	li		ASM.Operand.ASMVirtualRegister@4883b407,	1
	add		ASM.Operand.ASMVirtualRegister@7d9d1a19,	ASM.Operand.ASMVirtualRegister@6093dd95,	ASM.Operand.ASMVirtualRegister@4883b407
	mv		ASM.Operand.ASMVirtualRegister@c038203,	ASM.Operand.ASMVirtualRegister@7d9d1a19
	j		.jud.1_for_condition
.jud.1_for_terminate:
	mv		ASM.Operand.ASMVirtualRegister@39c0f4a,	ASM.Operand.ASMVirtualRegister@59fa1d9b
	li		ASM.Operand.ASMVirtualRegister@1794d431,	1
	xor		ASM.Operand.ASMVirtualRegister@42e26948,	ASM.Operand.ASMVirtualRegister@39c0f4a,	ASM.Operand.ASMVirtualRegister@1794d431
	beqz	ASM.Operand.ASMVirtualRegister@42e26948,	.jud.3_if_terminate
	j		.jud.3_if_true
.jud.3_if_true:
	li		ASM.Operand.ASMVirtualRegister@57baeedf,	1
	mv		ASM.Operand.ASMVirtualRegister@343f4d3d,	ASM.Operand.ASMVirtualRegister@57baeedf
	j		.jud.return
.jud.3_if_terminate:
	j		.jud.0_for_execution
.jud.0_for_execution:
	mv		ASM.Operand.ASMVirtualRegister@53b32d7,	ASM.Operand.ASMVirtualRegister@29ee9faa
	mv		ASM.Operand.ASMVirtualRegister@5442a311,	ASM.Operand.ASMVirtualRegister@29ee9faa
	li		ASM.Operand.ASMVirtualRegister@548e7350,	1
	add		ASM.Operand.ASMVirtualRegister@1a968a59,	ASM.Operand.ASMVirtualRegister@53b32d7,	ASM.Operand.ASMVirtualRegister@548e7350
	mv		ASM.Operand.ASMVirtualRegister@29ee9faa,	ASM.Operand.ASMVirtualRegister@1a968a59
	j		.jud.0_for_condition
.jud.0_for_terminate:
	mv		ASM.Operand.ASMVirtualRegister@343f4d3d,	zero
	j		.jud.return
.jud.return:
	mv		ASM.Operand.ASMVirtualRegister@4667ae56,	ASM.Operand.ASMVirtualRegister@343f4d3d
	mv		s0,	ASM.Operand.ASMVirtualRegister@68be2bc2
	mv		s1,	ASM.Operand.ASMVirtualRegister@28feb3fa
	mv		s2,	ASM.Operand.ASMVirtualRegister@675d3402
	mv		s3,	ASM.Operand.ASMVirtualRegister@51565ec2
	mv		s4,	ASM.Operand.ASMVirtualRegister@482f8f11
	mv		s5,	ASM.Operand.ASMVirtualRegister@1593948d
	mv		s6,	ASM.Operand.ASMVirtualRegister@1b604f19
	mv		s7,	ASM.Operand.ASMVirtualRegister@7823a2f9
	mv		s8,	ASM.Operand.ASMVirtualRegister@4cc0edeb
	mv		s9,	ASM.Operand.ASMVirtualRegister@457e2f02
	mv		s10,	ASM.Operand.ASMVirtualRegister@5c7fa833
	mv		s11,	ASM.Operand.ASMVirtualRegister@39aeed2f
	mv		a0,	ASM.Operand.ASMVirtualRegister@4667ae56
	.size	jud,	.-jud

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	mv		ASM.Operand.ASMVirtualRegister@77cd7a0,	s0
	mv		ASM.Operand.ASMVirtualRegister@204f30ec,	s1
	mv		ASM.Operand.ASMVirtualRegister@e25b2fe,	s2
	mv		ASM.Operand.ASMVirtualRegister@754ba872,	s3
	mv		ASM.Operand.ASMVirtualRegister@146ba0ac,	s4
	mv		ASM.Operand.ASMVirtualRegister@4dfa3a9d,	s5
	mv		ASM.Operand.ASMVirtualRegister@6eebc39e,	s6
	mv		ASM.Operand.ASMVirtualRegister@464bee09,	s7
	mv		ASM.Operand.ASMVirtualRegister@f6c48ac,	s8
	mv		ASM.Operand.ASMVirtualRegister@13deb50e,	s9
	mv		ASM.Operand.ASMVirtualRegister@239963d8,	s10
	mv		ASM.Operand.ASMVirtualRegister@3abbfa04,	s11
	call	__global_init_0
	mv		ASM.Operand.ASMVirtualRegister@57fffcd7,	zero
	la		ASM.Operand.ASMVirtualRegister@31ef45e3,	n
	lw		ASM.Operand.ASMVirtualRegister@598067a5,	0(ASM.Operand.ASMVirtualRegister@31ef45e3)
	call	getInt
	mv		ASM.Operand.ASMVirtualRegister@3c0ecd4b,	a0
	la		ASM.Operand.ASMVirtualRegister@14bf9759,	n
	sw		ASM.Operand.ASMVirtualRegister@3c0ecd4b,	0(ASM.Operand.ASMVirtualRegister@14bf9759)
	la		ASM.Operand.ASMVirtualRegister@553f17c,	i
	lw		ASM.Operand.ASMVirtualRegister@4f7d0008,	0(ASM.Operand.ASMVirtualRegister@553f17c)
	la		ASM.Operand.ASMVirtualRegister@271053e1,	i
	sw		zero,	0(ASM.Operand.ASMVirtualRegister@271053e1)
	j		.main.4_for_condition
.main.4_for_condition:
	la		ASM.Operand.ASMVirtualRegister@589838eb,	i
	lw		ASM.Operand.ASMVirtualRegister@42dafa95,	0(ASM.Operand.ASMVirtualRegister@589838eb)
	la		ASM.Operand.ASMVirtualRegister@6500df86,	n
	lw		ASM.Operand.ASMVirtualRegister@402a079c,	0(ASM.Operand.ASMVirtualRegister@6500df86)
	slt		ASM.Operand.ASMVirtualRegister@59ec2012,	ASM.Operand.ASMVirtualRegister@42dafa95,	ASM.Operand.ASMVirtualRegister@402a079c
	beqz	ASM.Operand.ASMVirtualRegister@59ec2012,	.main.4_for_terminate
	j		.main.4_for_loop
.main.4_for_loop:
	la		ASM.Operand.ASMVirtualRegister@4cf777e8,	i
	lw		ASM.Operand.ASMVirtualRegister@2f686d1f,	0(ASM.Operand.ASMVirtualRegister@4cf777e8)
	la		ASM.Operand.ASMVirtualRegister@3fee9989,	a
	lw		ASM.Operand.ASMVirtualRegister@73ad2d6,	0(ASM.Operand.ASMVirtualRegister@3fee9989)
	li		ASM.Operand.ASMVirtualRegister@7085bdee,	4
	mul		ASM.Operand.ASMVirtualRegister@7085bdee,	ASM.Operand.ASMVirtualRegister@7085bdee,	ASM.Operand.ASMVirtualRegister@2f686d1f
	add		ASM.Operand.ASMVirtualRegister@1ce92674,	ASM.Operand.ASMVirtualRegister@73ad2d6,	ASM.Operand.ASMVirtualRegister@7085bdee
	lw		ASM.Operand.ASMVirtualRegister@5700d6b1,	0(ASM.Operand.ASMVirtualRegister@1ce92674)
	call	getInt
	mv		ASM.Operand.ASMVirtualRegister@6fd02e5,	a0
	sw		ASM.Operand.ASMVirtualRegister@6fd02e5,	0(ASM.Operand.ASMVirtualRegister@1ce92674)
	j		.main.4_for_execution
.main.4_for_execution:
	la		ASM.Operand.ASMVirtualRegister@5bcab519,	i
	lw		ASM.Operand.ASMVirtualRegister@e45f292,	0(ASM.Operand.ASMVirtualRegister@5bcab519)
	la		ASM.Operand.ASMVirtualRegister@5f2108b5,	i
	lw		ASM.Operand.ASMVirtualRegister@31a5c39e,	0(ASM.Operand.ASMVirtualRegister@5f2108b5)
	li		ASM.Operand.ASMVirtualRegister@3f49dace,	1
	add		ASM.Operand.ASMVirtualRegister@1e397ed7,	ASM.Operand.ASMVirtualRegister@e45f292,	ASM.Operand.ASMVirtualRegister@3f49dace
	la		ASM.Operand.ASMVirtualRegister@490ab905,	i
	sw		ASM.Operand.ASMVirtualRegister@1e397ed7,	0(ASM.Operand.ASMVirtualRegister@490ab905)
	j		.main.4_for_condition
.main.4_for_terminate:
	la		ASM.Operand.ASMVirtualRegister@56ac3a89,	i
	lw		ASM.Operand.ASMVirtualRegister@27c20538,	0(ASM.Operand.ASMVirtualRegister@56ac3a89)
	la		ASM.Operand.ASMVirtualRegister@72d818d1,	i
	sw		zero,	0(ASM.Operand.ASMVirtualRegister@72d818d1)
	j		.main.5_for_condition
.main.5_for_condition:
	la		ASM.Operand.ASMVirtualRegister@6e06451e,	i
	lw		ASM.Operand.ASMVirtualRegister@59494225,	0(ASM.Operand.ASMVirtualRegister@6e06451e)
	la		ASM.Operand.ASMVirtualRegister@6e1567f1,	n
	lw		ASM.Operand.ASMVirtualRegister@5cb9f472,	0(ASM.Operand.ASMVirtualRegister@6e1567f1)
	slt		ASM.Operand.ASMVirtualRegister@cb644e,	ASM.Operand.ASMVirtualRegister@59494225,	ASM.Operand.ASMVirtualRegister@5cb9f472
	beqz	ASM.Operand.ASMVirtualRegister@cb644e,	.main.5_for_terminate
	j		.main.5_for_loop
.main.5_for_loop:
	la		ASM.Operand.ASMVirtualRegister@13805618,	i
	lw		ASM.Operand.ASMVirtualRegister@56ef9176,	0(ASM.Operand.ASMVirtualRegister@13805618)
	la		ASM.Operand.ASMVirtualRegister@4566e5bd,	a
	lw		ASM.Operand.ASMVirtualRegister@1ed4004b,	0(ASM.Operand.ASMVirtualRegister@4566e5bd)
	li		ASM.Operand.ASMVirtualRegister@ff5b51f,	4
	mul		ASM.Operand.ASMVirtualRegister@ff5b51f,	ASM.Operand.ASMVirtualRegister@ff5b51f,	ASM.Operand.ASMVirtualRegister@56ef9176
	add		ASM.Operand.ASMVirtualRegister@25bbe1b6,	ASM.Operand.ASMVirtualRegister@1ed4004b,	ASM.Operand.ASMVirtualRegister@ff5b51f
	lw		ASM.Operand.ASMVirtualRegister@5702b3b1,	0(ASM.Operand.ASMVirtualRegister@25bbe1b6)
	mv		a0,	ASM.Operand.ASMVirtualRegister@5702b3b1
	call	printlnInt
	j		.main.5_for_execution
.main.5_for_execution:
	la		ASM.Operand.ASMVirtualRegister@69ea3742,	i
	lw		ASM.Operand.ASMVirtualRegister@4b952a2d,	0(ASM.Operand.ASMVirtualRegister@69ea3742)
	la		ASM.Operand.ASMVirtualRegister@3159c4b8,	i
	lw		ASM.Operand.ASMVirtualRegister@73846619,	0(ASM.Operand.ASMVirtualRegister@3159c4b8)
	li		ASM.Operand.ASMVirtualRegister@4bec1f0c,	1
	add		ASM.Operand.ASMVirtualRegister@29ca901e,	ASM.Operand.ASMVirtualRegister@4b952a2d,	ASM.Operand.ASMVirtualRegister@4bec1f0c
	la		ASM.Operand.ASMVirtualRegister@5649fd9b,	i
	sw		ASM.Operand.ASMVirtualRegister@29ca901e,	0(ASM.Operand.ASMVirtualRegister@5649fd9b)
	j		.main.5_for_condition
.main.5_for_terminate:
	la		ASM.Operand.ASMVirtualRegister@6adede5,	i
	lw		ASM.Operand.ASMVirtualRegister@2d928643,	0(ASM.Operand.ASMVirtualRegister@6adede5)
	la		ASM.Operand.ASMVirtualRegister@5025a98f,	n
	lw		ASM.Operand.ASMVirtualRegister@49993335,	0(ASM.Operand.ASMVirtualRegister@5025a98f)
	la		ASM.Operand.ASMVirtualRegister@20322d26,	i
	sw		ASM.Operand.ASMVirtualRegister@49993335,	0(ASM.Operand.ASMVirtualRegister@20322d26)
	j		.main.6_for_condition
.main.6_for_condition:
	la		ASM.Operand.ASMVirtualRegister@192b07fd,	i
	lw		ASM.Operand.ASMVirtualRegister@64bfbc86,	0(ASM.Operand.ASMVirtualRegister@192b07fd)
	slt		ASM.Operand.ASMVirtualRegister@64bf3bbf,	zero,	ASM.Operand.ASMVirtualRegister@64bfbc86
	beqz	ASM.Operand.ASMVirtualRegister@64bf3bbf,	.main.6_for_terminate
	j		.main.6_for_loop
.main.6_for_loop:
	la		ASM.Operand.ASMVirtualRegister@55d56113,	i
	lw		ASM.Operand.ASMVirtualRegister@148080bb,	0(ASM.Operand.ASMVirtualRegister@55d56113)
	mv		a0,	ASM.Operand.ASMVirtualRegister@148080bb
	call	jud
	mv		ASM.Operand.ASMVirtualRegister@dc24521,	a0
	slt		ASM.Operand.ASMVirtualRegister@10bdf5e5,	zero,	ASM.Operand.ASMVirtualRegister@dc24521
	beqz	ASM.Operand.ASMVirtualRegister@10bdf5e5,	.main.7_if_terminate
	j		.main.7_if_true
.main.7_if_true:
	la		ASM.Operand.ASMVirtualRegister@6e1ec318,	i
	lw		ASM.Operand.ASMVirtualRegister@7e0b0338,	0(ASM.Operand.ASMVirtualRegister@6e1ec318)
	mv		a0,	ASM.Operand.ASMVirtualRegister@7e0b0338
	call	toString
	mv		ASM.Operand.ASMVirtualRegister@617faa95,	a0
	mv		a0,	ASM.Operand.ASMVirtualRegister@617faa95
	call	print
	mv		ASM.Operand.ASMVirtualRegister@57fffcd7,	zero
	j		.main.return
.main.7_if_terminate:
	j		.main.6_for_execution
.main.6_for_execution:
	la		ASM.Operand.ASMVirtualRegister@1e127982,	i
	lw		ASM.Operand.ASMVirtualRegister@60c6f5b,	0(ASM.Operand.ASMVirtualRegister@1e127982)
	la		ASM.Operand.ASMVirtualRegister@2038ae61,	i
	lw		ASM.Operand.ASMVirtualRegister@3c0f93f1,	0(ASM.Operand.ASMVirtualRegister@2038ae61)
	li		ASM.Operand.ASMVirtualRegister@31dc339b,	2
	div		ASM.Operand.ASMVirtualRegister@544fe44c,	ASM.Operand.ASMVirtualRegister@3c0f93f1,	ASM.Operand.ASMVirtualRegister@31dc339b
	la		ASM.Operand.ASMVirtualRegister@31610302,	i
	sw		ASM.Operand.ASMVirtualRegister@544fe44c,	0(ASM.Operand.ASMVirtualRegister@31610302)
	j		.main.6_for_condition
.main.6_for_terminate:
	mv		ASM.Operand.ASMVirtualRegister@57fffcd7,	zero
	j		.main.return
.main.return:
	mv		ASM.Operand.ASMVirtualRegister@71318ec4,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		s0,	ASM.Operand.ASMVirtualRegister@77cd7a0
	mv		s1,	ASM.Operand.ASMVirtualRegister@204f30ec
	mv		s2,	ASM.Operand.ASMVirtualRegister@e25b2fe
	mv		s3,	ASM.Operand.ASMVirtualRegister@754ba872
	mv		s4,	ASM.Operand.ASMVirtualRegister@146ba0ac
	mv		s5,	ASM.Operand.ASMVirtualRegister@4dfa3a9d
	mv		s6,	ASM.Operand.ASMVirtualRegister@6eebc39e
	mv		s7,	ASM.Operand.ASMVirtualRegister@464bee09
	mv		s8,	ASM.Operand.ASMVirtualRegister@f6c48ac
	mv		s9,	ASM.Operand.ASMVirtualRegister@13deb50e
	mv		s10,	ASM.Operand.ASMVirtualRegister@239963d8
	mv		s11,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@71318ec4
	.size	main,	.-main

	.globl	__global_init_0
	.p2align	2
	.type	__global_init_0,@function

__global_init_0:
.__global_init_0.entry:
	mv		ASM.Operand.ASMVirtualRegister@21213b92,	s0
	mv		ASM.Operand.ASMVirtualRegister@a67c67e,	s1
	mv		ASM.Operand.ASMVirtualRegister@3327bd23,	s2
	mv		ASM.Operand.ASMVirtualRegister@4e1d422d,	s3
	mv		ASM.Operand.ASMVirtualRegister@66480dd7,	s4
	mv		ASM.Operand.ASMVirtualRegister@52a86356,	s5
	mv		ASM.Operand.ASMVirtualRegister@5ce81285,	s6
	mv		ASM.Operand.ASMVirtualRegister@78c03f1f,	s7
	mv		ASM.Operand.ASMVirtualRegister@5ec0a365,	s8
	mv		ASM.Operand.ASMVirtualRegister@4fe3c938,	s9
	mv		ASM.Operand.ASMVirtualRegister@5383967b,	s10
	mv		ASM.Operand.ASMVirtualRegister@2ac273d3,	s11
	li		ASM.Operand.ASMVirtualRegister@71423665,	20
	li		ASM.Operand.ASMVirtualRegister@20398b7c,	4
	mul		ASM.Operand.ASMVirtualRegister@6fc6f14e,	ASM.Operand.ASMVirtualRegister@71423665,	ASM.Operand.ASMVirtualRegister@20398b7c
	li		ASM.Operand.ASMVirtualRegister@56235b8e,	4
	add		ASM.Operand.ASMVirtualRegister@3632be31,	ASM.Operand.ASMVirtualRegister@6fc6f14e,	ASM.Operand.ASMVirtualRegister@56235b8e
	mv		a0,	ASM.Operand.ASMVirtualRegister@3632be31
	call	__malloc
	mv		ASM.Operand.ASMVirtualRegister@5abca1e0,	a0
	mv		ASM.Operand.ASMVirtualRegister@2286778,	ASM.Operand.ASMVirtualRegister@5abca1e0
	li		ASM.Operand.ASMVirtualRegister@4e9ba398,	20
	sw		ASM.Operand.ASMVirtualRegister@4e9ba398,	0(ASM.Operand.ASMVirtualRegister@2286778)
	addi	ASM.Operand.ASMVirtualRegister@6d7b4f4c,	ASM.Operand.ASMVirtualRegister@5abca1e0,	4
	mv		ASM.Operand.ASMVirtualRegister@527740a2,	ASM.Operand.ASMVirtualRegister@6d7b4f4c
	la		ASM.Operand.ASMVirtualRegister@13a5fe33,	a
	sw		ASM.Operand.ASMVirtualRegister@527740a2,	0(ASM.Operand.ASMVirtualRegister@13a5fe33)
	j		.__global_init_0.return
.__global_init_0.return:
	mv		s0,	ASM.Operand.ASMVirtualRegister@21213b92
	mv		s1,	ASM.Operand.ASMVirtualRegister@a67c67e
	mv		s2,	ASM.Operand.ASMVirtualRegister@3327bd23
	mv		s3,	ASM.Operand.ASMVirtualRegister@4e1d422d
	mv		s4,	ASM.Operand.ASMVirtualRegister@66480dd7
	mv		s5,	ASM.Operand.ASMVirtualRegister@52a86356
	mv		s6,	ASM.Operand.ASMVirtualRegister@5ce81285
	mv		s7,	ASM.Operand.ASMVirtualRegister@78c03f1f
	mv		s8,	ASM.Operand.ASMVirtualRegister@5ec0a365
	mv		s9,	ASM.Operand.ASMVirtualRegister@4fe3c938
	mv		s10,	ASM.Operand.ASMVirtualRegister@5383967b
	mv		s11,	ASM.Operand.ASMVirtualRegister@2ac273d3
	.size	__global_init_0,	.-__global_init_0

	.section	.bss
	.globl	n
	.type	n,@object
n:
	.word	0
	.size	n,	4

	.globl	a
	.type	a,@object
a:
	.word	0
	.size	a,	4

	.globl	i
	.type	i,@object
i:
	.word	0
	.size	i,	4

	.section	.rodata
