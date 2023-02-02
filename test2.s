C:\Users\Lenovo\.jdks\openjdk-19.0.1\bin\java.exe -agentlib:jdwp=transport=dt_socket,address=127.0.0.1:51103,suspend=y,server=n -Dfile.encoding=UTF-8 -classpath "C:\Users\Lenovo\Desktop\useforgit\Mx-Compiler-Design-2022\out\production\test;C:\Users\Lenovo\Desktop\useforgit\Mx-Compiler-Design-2022\antlr4-runtime-4.10.1.jar;C:\Program Files\JetBrains\IntelliJ IDEA 2021.3.2\lib\idea_rt.jar" Compiler
已连接到目标 VM, 地址: ''127.0.0.1:51103'，传输: '套接字''
	.section	.text
	.globl	check
	.p2align	2
	.type	check,@function

check:
.check.entry:
	mv		ASM.Operand.ASMVirtualRegister@6f7fd0e6,	s0
	mv		ASM.Operand.ASMVirtualRegister@47c62251,	s1
	mv		ASM.Operand.ASMVirtualRegister@3e6fa38a,	s2
	mv		ASM.Operand.ASMVirtualRegister@66a3ffec,	s3
	mv		ASM.Operand.ASMVirtualRegister@77caeb3e,	s4
	mv		ASM.Operand.ASMVirtualRegister@1e88b3c,	s5
	mv		ASM.Operand.ASMVirtualRegister@42d80b78,	s6
	mv		ASM.Operand.ASMVirtualRegister@3bfdc050,	s7
	mv		ASM.Operand.ASMVirtualRegister@1bce4f0a,	s8
	mv		ASM.Operand.ASMVirtualRegister@5e3a8624,	s9
	mv		ASM.Operand.ASMVirtualRegister@5c3bd550,	s10
	mv		ASM.Operand.ASMVirtualRegister@91161c7,	s11
	mv		ASM.Operand.ASMVirtualRegister@604ed9f0,	a0
	mv		ASM.Operand.ASMVirtualRegister@6a4f787b,	a1
	mv		ASM.Operand.ASMVirtualRegister@6a41eaa2,	ASM.Operand.ASMVirtualRegister@604ed9f0
	mv		ASM.Operand.ASMVirtualRegister@7cd62f43,	ASM.Operand.ASMVirtualRegister@6a4f787b
	mv		ASM.Operand.ASMVirtualRegister@6d4b1c02,	ASM.Operand.ASMVirtualRegister@6a41eaa2
	mv		ASM.Operand.ASMVirtualRegister@6093dd95,	ASM.Operand.ASMVirtualRegister@7cd62f43
	slt		ASM.Operand.ASMVirtualRegister@4883b407,	ASM.Operand.ASMVirtualRegister@6d4b1c02,	ASM.Operand.ASMVirtualRegister@6093dd95
	mv		ASM.Operand.ASMVirtualRegister@7d9d1a19,	ASM.Operand.ASMVirtualRegister@4883b407
	beqz	ASM.Operand.ASMVirtualRegister@4883b407,	.check.0_and_terminate_block
	j		.check.0_and_rhs_block
.check.0_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@1794d431,	ASM.Operand.ASMVirtualRegister@6a41eaa2
	slt		ASM.Operand.ASMVirtualRegister@42e26948,	ASM.Operand.ASMVirtualRegister@1794d431,	zero
	seqz	ASM.Operand.ASMVirtualRegister@42e26948,	ASM.Operand.ASMVirtualRegister@42e26948
	and		ASM.Operand.ASMVirtualRegister@343f4d3d,	ASM.Operand.ASMVirtualRegister@4883b407,	ASM.Operand.ASMVirtualRegister@42e26948
	mv		ASM.Operand.ASMVirtualRegister@7d9d1a19,	ASM.Operand.ASMVirtualRegister@343f4d3d
	j		.check.0_and_terminate_block
.check.0_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@53b32d7,	ASM.Operand.ASMVirtualRegister@7d9d1a19
	mv		ASM.Operand.ASMVirtualRegister@5442a311,	ASM.Operand.ASMVirtualRegister@53b32d7
	j		.check.return
.check.return:
	mv		ASM.Operand.ASMVirtualRegister@548e7350,	ASM.Operand.ASMVirtualRegister@5442a311
	mv		s0,	ASM.Operand.ASMVirtualRegister@6f7fd0e6
	mv		s1,	ASM.Operand.ASMVirtualRegister@47c62251
	mv		s2,	ASM.Operand.ASMVirtualRegister@3e6fa38a
	mv		s3,	ASM.Operand.ASMVirtualRegister@66a3ffec
	mv		s4,	ASM.Operand.ASMVirtualRegister@77caeb3e
	mv		s5,	ASM.Operand.ASMVirtualRegister@1e88b3c
	mv		s6,	ASM.Operand.ASMVirtualRegister@42d80b78
	mv		s7,	ASM.Operand.ASMVirtualRegister@3bfdc050
	mv		s8,	ASM.Operand.ASMVirtualRegister@1bce4f0a
	mv		s9,	ASM.Operand.ASMVirtualRegister@5e3a8624
	mv		s10,	ASM.Operand.ASMVirtualRegister@5c3bd550
	mv		s11,	ASM.Operand.ASMVirtualRegister@91161c7
	mv		a0,	ASM.Operand.ASMVirtualRegister@548e7350
	.size	check,	.-check

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	mv		ASM.Operand.ASMVirtualRegister@1a968a59,	s0
	mv		ASM.Operand.ASMVirtualRegister@4667ae56,	s1
	mv		ASM.Operand.ASMVirtualRegister@77cd7a0,	s2
	mv		ASM.Operand.ASMVirtualRegister@204f30ec,	s3
	mv		ASM.Operand.ASMVirtualRegister@e25b2fe,	s4
	mv		ASM.Operand.ASMVirtualRegister@754ba872,	s5
	mv		ASM.Operand.ASMVirtualRegister@146ba0ac,	s6
	mv		ASM.Operand.ASMVirtualRegister@4dfa3a9d,	s7
	mv		ASM.Operand.ASMVirtualRegister@6eebc39e,	s8
	mv		ASM.Operand.ASMVirtualRegister@464bee09,	s9
	mv		ASM.Operand.ASMVirtualRegister@f6c48ac,	s10
	mv		ASM.Operand.ASMVirtualRegister@13deb50e,	s11
	mv		ASM.Operand.ASMVirtualRegister@239963d8,	zero
	mv		ASM.Operand.ASMVirtualRegister@3abbfa04,	zero
	mv		ASM.Operand.ASMVirtualRegister@57fffcd7,	zero
	mv		ASM.Operand.ASMVirtualRegister@31ef45e3,	zero
	mv		ASM.Operand.ASMVirtualRegister@598067a5,	zero
	mv		ASM.Operand.ASMVirtualRegister@3c0ecd4b,	zero
	mv		ASM.Operand.ASMVirtualRegister@14bf9759,	zero
	mv		ASM.Operand.ASMVirtualRegister@5f341870,	zero
	mv		ASM.Operand.ASMVirtualRegister@553f17c,	zero
	mv		ASM.Operand.ASMVirtualRegister@4f7d0008,	zero
	mv		ASM.Operand.ASMVirtualRegister@271053e1,	zero
	mv		ASM.Operand.ASMVirtualRegister@589838eb,	zero
	mv		ASM.Operand.ASMVirtualRegister@42dafa95,	zero
	mv		ASM.Operand.ASMVirtualRegister@6500df86,	zero
	mv		ASM.Operand.ASMVirtualRegister@402a079c,	zero
	mv		ASM.Operand.ASMVirtualRegister@59ec2012,	zero
	mv		ASM.Operand.ASMVirtualRegister@4cf777e8,	zero
	mv		ASM.Operand.ASMVirtualRegister@2f686d1f,	ASM.Operand.ASMVirtualRegister@3abbfa04
	call	getInt
	mv		ASM.Operand.ASMVirtualRegister@73ad2d6,	a0
	mv		ASM.Operand.ASMVirtualRegister@3abbfa04,	ASM.Operand.ASMVirtualRegister@73ad2d6
	mv		ASM.Operand.ASMVirtualRegister@7085bdee,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@57fffcd7,	zero
	mv		ASM.Operand.ASMVirtualRegister@1ce92674,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@5f341870,	zero
	mv		ASM.Operand.ASMVirtualRegister@5700d6b1,	ASM.Operand.ASMVirtualRegister@31ef45e3
	mv		ASM.Operand.ASMVirtualRegister@31ef45e3,	zero
	mv		ASM.Operand.ASMVirtualRegister@6fd02e5,	ASM.Operand.ASMVirtualRegister@598067a5
	mv		ASM.Operand.ASMVirtualRegister@598067a5,	zero
	mv		ASM.Operand.ASMVirtualRegister@5bcab519,	ASM.Operand.ASMVirtualRegister@3c0ecd4b
	mv		ASM.Operand.ASMVirtualRegister@e45f292,	ASM.Operand.ASMVirtualRegister@3abbfa04
	li		ASM.Operand.ASMVirtualRegister@3f49dace,	1
	sub		ASM.Operand.ASMVirtualRegister@1e397ed7,	ASM.Operand.ASMVirtualRegister@e45f292,	ASM.Operand.ASMVirtualRegister@3f49dace
	mv		ASM.Operand.ASMVirtualRegister@3c0ecd4b,	ASM.Operand.ASMVirtualRegister@1e397ed7
	mv		ASM.Operand.ASMVirtualRegister@490ab905,	ASM.Operand.ASMVirtualRegister@14bf9759
	mv		ASM.Operand.ASMVirtualRegister@56ac3a89,	ASM.Operand.ASMVirtualRegister@3abbfa04
	li		ASM.Operand.ASMVirtualRegister@27c20538,	1
	sub		ASM.Operand.ASMVirtualRegister@72d818d1,	ASM.Operand.ASMVirtualRegister@56ac3a89,	ASM.Operand.ASMVirtualRegister@27c20538
	mv		ASM.Operand.ASMVirtualRegister@14bf9759,	ASM.Operand.ASMVirtualRegister@72d818d1
	mv		ASM.Operand.ASMVirtualRegister@6e06451e,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@271053e1,	zero
	mv		ASM.Operand.ASMVirtualRegister@59494225,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@589838eb,	zero
	mv		ASM.Operand.ASMVirtualRegister@6e1567f1,	ASM.Operand.ASMVirtualRegister@4f7d0008
	mv		ASM.Operand.ASMVirtualRegister@4f7d0008,	zero
	mv		ASM.Operand.ASMVirtualRegister@5cb9f472,	ASM.Operand.ASMVirtualRegister@553f17c
	mv		ASM.Operand.ASMVirtualRegister@553f17c,	zero
	mv		ASM.Operand.ASMVirtualRegister@cb644e,	ASM.Operand.ASMVirtualRegister@42dafa95
	mv		ASM.Operand.ASMVirtualRegister@13805618,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		ASM.Operand.ASMVirtualRegister@56ef9176,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mul		ASM.Operand.ASMVirtualRegister@4566e5bd,	ASM.Operand.ASMVirtualRegister@13805618,	ASM.Operand.ASMVirtualRegister@56ef9176
	li		ASM.Operand.ASMVirtualRegister@1ed4004b,	4
	mul		ASM.Operand.ASMVirtualRegister@ff5b51f,	ASM.Operand.ASMVirtualRegister@4566e5bd,	ASM.Operand.ASMVirtualRegister@1ed4004b
	li		ASM.Operand.ASMVirtualRegister@25bbe1b6,	4
	add		ASM.Operand.ASMVirtualRegister@5702b3b1,	ASM.Operand.ASMVirtualRegister@ff5b51f,	ASM.Operand.ASMVirtualRegister@25bbe1b6
	mv		a0,	ASM.Operand.ASMVirtualRegister@5702b3b1
	call	__malloc
	mv		ASM.Operand.ASMVirtualRegister@69ea3742,	a0
	mv		ASM.Operand.ASMVirtualRegister@4b952a2d,	ASM.Operand.ASMVirtualRegister@69ea3742
	sw		ASM.Operand.ASMVirtualRegister@4566e5bd,	0(ASM.Operand.ASMVirtualRegister@4b952a2d)
	addi	ASM.Operand.ASMVirtualRegister@73846619,	ASM.Operand.ASMVirtualRegister@69ea3742,	4
	mv		ASM.Operand.ASMVirtualRegister@4bec1f0c,	ASM.Operand.ASMVirtualRegister@73846619
	mv		ASM.Operand.ASMVirtualRegister@42dafa95,	ASM.Operand.ASMVirtualRegister@4bec1f0c
	mv		ASM.Operand.ASMVirtualRegister@29ca901e,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@59ec2012,	zero
	j		.main.1_for_condition
.main.1_for_condition:
	mv		ASM.Operand.ASMVirtualRegister@5649fd9b,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@6adede5,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		ASM.Operand.ASMVirtualRegister@2d928643,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mul		ASM.Operand.ASMVirtualRegister@5025a98f,	ASM.Operand.ASMVirtualRegister@6adede5,	ASM.Operand.ASMVirtualRegister@2d928643
	slt		ASM.Operand.ASMVirtualRegister@49993335,	ASM.Operand.ASMVirtualRegister@5649fd9b,	ASM.Operand.ASMVirtualRegister@5025a98f
	beqz	ASM.Operand.ASMVirtualRegister@49993335,	.main.1_for_terminate
	j		.main.1_for_loop
.main.1_for_loop:
	mv		ASM.Operand.ASMVirtualRegister@20322d26,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@192b07fd,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@64bfbc86,	4
	mul		ASM.Operand.ASMVirtualRegister@64bfbc86,	ASM.Operand.ASMVirtualRegister@64bfbc86,	ASM.Operand.ASMVirtualRegister@20322d26
	add		ASM.Operand.ASMVirtualRegister@64bf3bbf,	ASM.Operand.ASMVirtualRegister@192b07fd,	ASM.Operand.ASMVirtualRegister@64bfbc86
	lw		ASM.Operand.ASMVirtualRegister@148080bb,	0(ASM.Operand.ASMVirtualRegister@64bf3bbf)
	sw		zero,	0(ASM.Operand.ASMVirtualRegister@64bf3bbf)
	j		.main.1_for_execution
.main.1_for_execution:
	mv		ASM.Operand.ASMVirtualRegister@dc24521,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@10bdf5e5,	ASM.Operand.ASMVirtualRegister@59ec2012
	li		ASM.Operand.ASMVirtualRegister@6e1ec318,	1
	add		ASM.Operand.ASMVirtualRegister@7e0b0338,	ASM.Operand.ASMVirtualRegister@dc24521,	ASM.Operand.ASMVirtualRegister@6e1ec318
	mv		ASM.Operand.ASMVirtualRegister@59ec2012,	ASM.Operand.ASMVirtualRegister@7e0b0338
	j		.main.1_for_condition
.main.1_for_terminate:
	mv		ASM.Operand.ASMVirtualRegister@617faa95,	ASM.Operand.ASMVirtualRegister@6500df86
	mv		ASM.Operand.ASMVirtualRegister@1e127982,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		ASM.Operand.ASMVirtualRegister@60c6f5b,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mul		ASM.Operand.ASMVirtualRegister@2038ae61,	ASM.Operand.ASMVirtualRegister@1e127982,	ASM.Operand.ASMVirtualRegister@60c6f5b
	li		ASM.Operand.ASMVirtualRegister@3c0f93f1,	4
	mul		ASM.Operand.ASMVirtualRegister@31dc339b,	ASM.Operand.ASMVirtualRegister@2038ae61,	ASM.Operand.ASMVirtualRegister@3c0f93f1
	li		ASM.Operand.ASMVirtualRegister@544fe44c,	4
	add		ASM.Operand.ASMVirtualRegister@31610302,	ASM.Operand.ASMVirtualRegister@31dc339b,	ASM.Operand.ASMVirtualRegister@544fe44c
	mv		a0,	ASM.Operand.ASMVirtualRegister@31610302
	call	__malloc
	mv		ASM.Operand.ASMVirtualRegister@71318ec4,	a0
	mv		ASM.Operand.ASMVirtualRegister@21213b92,	ASM.Operand.ASMVirtualRegister@71318ec4
	sw		ASM.Operand.ASMVirtualRegister@2038ae61,	0(ASM.Operand.ASMVirtualRegister@21213b92)
	addi	ASM.Operand.ASMVirtualRegister@a67c67e,	ASM.Operand.ASMVirtualRegister@71318ec4,	4
	mv		ASM.Operand.ASMVirtualRegister@3327bd23,	ASM.Operand.ASMVirtualRegister@a67c67e
	mv		ASM.Operand.ASMVirtualRegister@6500df86,	ASM.Operand.ASMVirtualRegister@3327bd23
	mv		ASM.Operand.ASMVirtualRegister@4e1d422d,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@59ec2012,	zero
	j		.main.2_for_condition
.main.2_for_condition:
	mv		ASM.Operand.ASMVirtualRegister@66480dd7,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@52a86356,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		ASM.Operand.ASMVirtualRegister@5ce81285,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mul		ASM.Operand.ASMVirtualRegister@78c03f1f,	ASM.Operand.ASMVirtualRegister@52a86356,	ASM.Operand.ASMVirtualRegister@5ce81285
	slt		ASM.Operand.ASMVirtualRegister@5ec0a365,	ASM.Operand.ASMVirtualRegister@66480dd7,	ASM.Operand.ASMVirtualRegister@78c03f1f
	beqz	ASM.Operand.ASMVirtualRegister@5ec0a365,	.main.2_for_terminate
	j		.main.2_for_loop
.main.2_for_loop:
	mv		ASM.Operand.ASMVirtualRegister@4fe3c938,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@5383967b,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@2ac273d3,	4
	mul		ASM.Operand.ASMVirtualRegister@2ac273d3,	ASM.Operand.ASMVirtualRegister@2ac273d3,	ASM.Operand.ASMVirtualRegister@4fe3c938
	add		ASM.Operand.ASMVirtualRegister@71423665,	ASM.Operand.ASMVirtualRegister@5383967b,	ASM.Operand.ASMVirtualRegister@2ac273d3
	lw		ASM.Operand.ASMVirtualRegister@20398b7c,	0(ASM.Operand.ASMVirtualRegister@71423665)
	sw		zero,	0(ASM.Operand.ASMVirtualRegister@71423665)
	j		.main.2_for_execution
.main.2_for_execution:
	mv		ASM.Operand.ASMVirtualRegister@6fc6f14e,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@56235b8e,	ASM.Operand.ASMVirtualRegister@59ec2012
	li		ASM.Operand.ASMVirtualRegister@3632be31,	1
	add		ASM.Operand.ASMVirtualRegister@5abca1e0,	ASM.Operand.ASMVirtualRegister@6fc6f14e,	ASM.Operand.ASMVirtualRegister@3632be31
	mv		ASM.Operand.ASMVirtualRegister@59ec2012,	ASM.Operand.ASMVirtualRegister@5abca1e0
	j		.main.2_for_condition
.main.2_for_terminate:
	mv		ASM.Operand.ASMVirtualRegister@2286778,	ASM.Operand.ASMVirtualRegister@402a079c
	mv		ASM.Operand.ASMVirtualRegister@4e9ba398,	ASM.Operand.ASMVirtualRegister@3abbfa04
	li		ASM.Operand.ASMVirtualRegister@6d7b4f4c,	4
	mul		ASM.Operand.ASMVirtualRegister@527740a2,	ASM.Operand.ASMVirtualRegister@4e9ba398,	ASM.Operand.ASMVirtualRegister@6d7b4f4c
	li		ASM.Operand.ASMVirtualRegister@13a5fe33,	4
	add		ASM.Operand.ASMVirtualRegister@3108bc,	ASM.Operand.ASMVirtualRegister@527740a2,	ASM.Operand.ASMVirtualRegister@13a5fe33
	mv		a0,	ASM.Operand.ASMVirtualRegister@3108bc
	call	__malloc
	mv		ASM.Operand.ASMVirtualRegister@370736d9,	a0
	mv		ASM.Operand.ASMVirtualRegister@5f9d02cb,	ASM.Operand.ASMVirtualRegister@370736d9
	sw		ASM.Operand.ASMVirtualRegister@4e9ba398,	0(ASM.Operand.ASMVirtualRegister@5f9d02cb)
	addi	ASM.Operand.ASMVirtualRegister@63753b6d,	ASM.Operand.ASMVirtualRegister@370736d9,	4
	mv		ASM.Operand.ASMVirtualRegister@6b09bb57,	ASM.Operand.ASMVirtualRegister@63753b6d
	mv		ASM.Operand.ASMVirtualRegister@402a079c,	ASM.Operand.ASMVirtualRegister@6b09bb57
	mv		ASM.Operand.ASMVirtualRegister@6536e911,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@59ec2012,	zero
	j		.main.3_for_condition
.main.3_for_condition:
	mv		ASM.Operand.ASMVirtualRegister@520a3426,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@18eed359,	ASM.Operand.ASMVirtualRegister@3abbfa04
	slt		ASM.Operand.ASMVirtualRegister@3e9b1010,	ASM.Operand.ASMVirtualRegister@520a3426,	ASM.Operand.ASMVirtualRegister@18eed359
	beqz	ASM.Operand.ASMVirtualRegister@3e9b1010,	.main.3_for_terminate
	j		.main.3_for_loop
.main.3_for_loop:
	mv		ASM.Operand.ASMVirtualRegister@6c3708b3,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@6f1fba17,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@185d8b6,	4
	mul		ASM.Operand.ASMVirtualRegister@185d8b6,	ASM.Operand.ASMVirtualRegister@185d8b6,	ASM.Operand.ASMVirtualRegister@6c3708b3
	add		ASM.Operand.ASMVirtualRegister@67784306,	ASM.Operand.ASMVirtualRegister@6f1fba17,	ASM.Operand.ASMVirtualRegister@185d8b6
	lw		ASM.Operand.ASMVirtualRegister@335eadca,	0(ASM.Operand.ASMVirtualRegister@67784306)
	mv		ASM.Operand.ASMVirtualRegister@210366b4,	ASM.Operand.ASMVirtualRegister@3abbfa04
	li		ASM.Operand.ASMVirtualRegister@eec5a4a,	4
	mul		ASM.Operand.ASMVirtualRegister@2b2948e2,	ASM.Operand.ASMVirtualRegister@210366b4,	ASM.Operand.ASMVirtualRegister@eec5a4a
	li		ASM.Operand.ASMVirtualRegister@6ddf90b0,	4
	add		ASM.Operand.ASMVirtualRegister@57536d79,	ASM.Operand.ASMVirtualRegister@2b2948e2,	ASM.Operand.ASMVirtualRegister@6ddf90b0
	mv		a0,	ASM.Operand.ASMVirtualRegister@57536d79
	call	__malloc
	mv		ASM.Operand.ASMVirtualRegister@3b0143d3,	a0
	mv		ASM.Operand.ASMVirtualRegister@5a8e6209,	ASM.Operand.ASMVirtualRegister@3b0143d3
	sw		ASM.Operand.ASMVirtualRegister@210366b4,	0(ASM.Operand.ASMVirtualRegister@5a8e6209)
	addi	ASM.Operand.ASMVirtualRegister@4b4523f8,	ASM.Operand.ASMVirtualRegister@3b0143d3,	4
	mv		ASM.Operand.ASMVirtualRegister@731a74c,	ASM.Operand.ASMVirtualRegister@4b4523f8
	sw		ASM.Operand.ASMVirtualRegister@731a74c,	0(ASM.Operand.ASMVirtualRegister@67784306)
	mv		ASM.Operand.ASMVirtualRegister@369f73a2,	ASM.Operand.ASMVirtualRegister@4cf777e8
	mv		ASM.Operand.ASMVirtualRegister@4cf777e8,	zero
	j		.main.4_for_condition
.main.4_for_condition:
	mv		ASM.Operand.ASMVirtualRegister@1f28c152,	ASM.Operand.ASMVirtualRegister@4cf777e8
	mv		ASM.Operand.ASMVirtualRegister@7d907bac,	ASM.Operand.ASMVirtualRegister@3abbfa04
	slt		ASM.Operand.ASMVirtualRegister@7791a895,	ASM.Operand.ASMVirtualRegister@1f28c152,	ASM.Operand.ASMVirtualRegister@7d907bac
	beqz	ASM.Operand.ASMVirtualRegister@7791a895,	.main.4_for_terminate
	j		.main.4_for_loop
.main.4_for_loop:
	mv		ASM.Operand.ASMVirtualRegister@3a5ed7a6,	ASM.Operand.ASMVirtualRegister@4cf777e8
	mv		ASM.Operand.ASMVirtualRegister@6325a3ee,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@1d16f93d,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@67b92f0a,	4
	mul		ASM.Operand.ASMVirtualRegister@67b92f0a,	ASM.Operand.ASMVirtualRegister@67b92f0a,	ASM.Operand.ASMVirtualRegister@6325a3ee
	add		ASM.Operand.ASMVirtualRegister@2b9627bc,	ASM.Operand.ASMVirtualRegister@1d16f93d,	ASM.Operand.ASMVirtualRegister@67b92f0a
	lw		ASM.Operand.ASMVirtualRegister@65e2dbf3,	0(ASM.Operand.ASMVirtualRegister@2b9627bc)
	li		ASM.Operand.ASMVirtualRegister@4f970963,	4
	mul		ASM.Operand.ASMVirtualRegister@4f970963,	ASM.Operand.ASMVirtualRegister@4f970963,	ASM.Operand.ASMVirtualRegister@3a5ed7a6
	add		ASM.Operand.ASMVirtualRegister@61f8bee4,	ASM.Operand.ASMVirtualRegister@65e2dbf3,	ASM.Operand.ASMVirtualRegister@4f970963
	lw		ASM.Operand.ASMVirtualRegister@7b49cea0,	0(ASM.Operand.ASMVirtualRegister@61f8bee4)
	li		ASM.Operand.ASMVirtualRegister@887af79,	1
	sub		ASM.Operand.ASMVirtualRegister@7fac631b,	zero,	ASM.Operand.ASMVirtualRegister@887af79
	sw		ASM.Operand.ASMVirtualRegister@7fac631b,	0(ASM.Operand.ASMVirtualRegister@61f8bee4)
	j		.main.4_for_execution
.main.4_for_execution:
	mv		ASM.Operand.ASMVirtualRegister@5b87ed94,	ASM.Operand.ASMVirtualRegister@4cf777e8
	mv		ASM.Operand.ASMVirtualRegister@6e0e048a,	ASM.Operand.ASMVirtualRegister@4cf777e8
	li		ASM.Operand.ASMVirtualRegister@5bc79255,	1
	add		ASM.Operand.ASMVirtualRegister@47ef968d,	ASM.Operand.ASMVirtualRegister@5b87ed94,	ASM.Operand.ASMVirtualRegister@5bc79255
	mv		ASM.Operand.ASMVirtualRegister@4cf777e8,	ASM.Operand.ASMVirtualRegister@47ef968d
	j		.main.4_for_condition
.main.4_for_terminate:
	j		.main.3_for_execution
.main.3_for_execution:
	mv		ASM.Operand.ASMVirtualRegister@23e028a9,	ASM.Operand.ASMVirtualRegister@59ec2012
	mv		ASM.Operand.ASMVirtualRegister@3dd4520b,	ASM.Operand.ASMVirtualRegister@59ec2012
	li		ASM.Operand.ASMVirtualRegister@5ae63ade,	1
	add		ASM.Operand.ASMVirtualRegister@610694f1,	ASM.Operand.ASMVirtualRegister@23e028a9,	ASM.Operand.ASMVirtualRegister@5ae63ade
	mv		ASM.Operand.ASMVirtualRegister@59ec2012,	ASM.Operand.ASMVirtualRegister@610694f1
	j		.main.3_for_condition
.main.3_for_terminate:
	mv		ASM.Operand.ASMVirtualRegister@43814d18,	ASM.Operand.ASMVirtualRegister@42dafa95
	addi	ASM.Operand.ASMVirtualRegister@5c5a1b69,	ASM.Operand.ASMVirtualRegister@43814d18,	0
	lw		ASM.Operand.ASMVirtualRegister@3701eaf6,	0(ASM.Operand.ASMVirtualRegister@5c5a1b69)
	mv		ASM.Operand.ASMVirtualRegister@627551fb,	ASM.Operand.ASMVirtualRegister@31ef45e3
	sw		ASM.Operand.ASMVirtualRegister@627551fb,	0(ASM.Operand.ASMVirtualRegister@5c5a1b69)
	mv		ASM.Operand.ASMVirtualRegister@2b552920,	ASM.Operand.ASMVirtualRegister@6500df86
	addi	ASM.Operand.ASMVirtualRegister@2758fe70,	ASM.Operand.ASMVirtualRegister@2b552920,	0
	lw		ASM.Operand.ASMVirtualRegister@1f36e637,	0(ASM.Operand.ASMVirtualRegister@2758fe70)
	mv		ASM.Operand.ASMVirtualRegister@578486a3,	ASM.Operand.ASMVirtualRegister@598067a5
	sw		ASM.Operand.ASMVirtualRegister@578486a3,	0(ASM.Operand.ASMVirtualRegister@2758fe70)
	mv		ASM.Operand.ASMVirtualRegister@551aa95a,	ASM.Operand.ASMVirtualRegister@598067a5
	mv		ASM.Operand.ASMVirtualRegister@35d176f7,	ASM.Operand.ASMVirtualRegister@31ef45e3
	mv		ASM.Operand.ASMVirtualRegister@1dfe2924,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@6ebc05a6,	4
	mul		ASM.Operand.ASMVirtualRegister@6ebc05a6,	ASM.Operand.ASMVirtualRegister@6ebc05a6,	ASM.Operand.ASMVirtualRegister@35d176f7
	add		ASM.Operand.ASMVirtualRegister@6e6c3152,	ASM.Operand.ASMVirtualRegister@1dfe2924,	ASM.Operand.ASMVirtualRegister@6ebc05a6
	lw		ASM.Operand.ASMVirtualRegister@50b494a6,	0(ASM.Operand.ASMVirtualRegister@6e6c3152)
	li		ASM.Operand.ASMVirtualRegister@3cef309d,	4
	mul		ASM.Operand.ASMVirtualRegister@3cef309d,	ASM.Operand.ASMVirtualRegister@3cef309d,	ASM.Operand.ASMVirtualRegister@551aa95a
	add		ASM.Operand.ASMVirtualRegister@32709393,	ASM.Operand.ASMVirtualRegister@50b494a6,	ASM.Operand.ASMVirtualRegister@3cef309d
	lw		ASM.Operand.ASMVirtualRegister@3d99d22e,	0(ASM.Operand.ASMVirtualRegister@32709393)
	sw		zero,	0(ASM.Operand.ASMVirtualRegister@32709393)
	j		.main.5_while_condition
.main.5_while_condition:
	mv		ASM.Operand.ASMVirtualRegister@49fc609f,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@cd2dae5,	ASM.Operand.ASMVirtualRegister@5f341870
	slt		ASM.Operand.ASMVirtualRegister@3a883ce7,	ASM.Operand.ASMVirtualRegister@cd2dae5,	ASM.Operand.ASMVirtualRegister@49fc609f
	seqz	ASM.Operand.ASMVirtualRegister@3a883ce7,	ASM.Operand.ASMVirtualRegister@3a883ce7
	beqz	ASM.Operand.ASMVirtualRegister@3a883ce7,	.main.5_while_terminate
	j		.main.5_while_loop
.main.5_while_loop:
	mv		ASM.Operand.ASMVirtualRegister@4973813a,	ASM.Operand.ASMVirtualRegister@4f7d0008
	mv		ASM.Operand.ASMVirtualRegister@6321e813,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@79be0360,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@22a67b4,	4
	mul		ASM.Operand.ASMVirtualRegister@22a67b4,	ASM.Operand.ASMVirtualRegister@22a67b4,	ASM.Operand.ASMVirtualRegister@6321e813
	add		ASM.Operand.ASMVirtualRegister@57855c9a,	ASM.Operand.ASMVirtualRegister@79be0360,	ASM.Operand.ASMVirtualRegister@22a67b4
	lw		ASM.Operand.ASMVirtualRegister@3b084709,	0(ASM.Operand.ASMVirtualRegister@57855c9a)
	mv		ASM.Operand.ASMVirtualRegister@3224f60b,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@63e2203c,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@1efed156,	4
	mul		ASM.Operand.ASMVirtualRegister@1efed156,	ASM.Operand.ASMVirtualRegister@1efed156,	ASM.Operand.ASMVirtualRegister@3224f60b
	add		ASM.Operand.ASMVirtualRegister@6737fd8f,	ASM.Operand.ASMVirtualRegister@63e2203c,	ASM.Operand.ASMVirtualRegister@1efed156
	lw		ASM.Operand.ASMVirtualRegister@72b6cbcc,	0(ASM.Operand.ASMVirtualRegister@6737fd8f)
	mv		ASM.Operand.ASMVirtualRegister@a7e666,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@68bbe345,	4
	mul		ASM.Operand.ASMVirtualRegister@68bbe345,	ASM.Operand.ASMVirtualRegister@68bbe345,	ASM.Operand.ASMVirtualRegister@72b6cbcc
	add		ASM.Operand.ASMVirtualRegister@30b8a058,	ASM.Operand.ASMVirtualRegister@a7e666,	ASM.Operand.ASMVirtualRegister@68bbe345
	lw		ASM.Operand.ASMVirtualRegister@7494e528,	0(ASM.Operand.ASMVirtualRegister@30b8a058)
	li		ASM.Operand.ASMVirtualRegister@4bbfb90a,	4
	mul		ASM.Operand.ASMVirtualRegister@4bbfb90a,	ASM.Operand.ASMVirtualRegister@4bbfb90a,	ASM.Operand.ASMVirtualRegister@3b084709
	add		ASM.Operand.ASMVirtualRegister@7c29daf3,	ASM.Operand.ASMVirtualRegister@7494e528,	ASM.Operand.ASMVirtualRegister@4bbfb90a
	lw		ASM.Operand.ASMVirtualRegister@9660f4e,	0(ASM.Operand.ASMVirtualRegister@7c29daf3)
	mv		ASM.Operand.ASMVirtualRegister@4f7d0008,	ASM.Operand.ASMVirtualRegister@9660f4e
	mv		ASM.Operand.ASMVirtualRegister@5a8806ef,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@6c49835d,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@5e853265,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@67205a84,	4
	mul		ASM.Operand.ASMVirtualRegister@67205a84,	ASM.Operand.ASMVirtualRegister@67205a84,	ASM.Operand.ASMVirtualRegister@6c49835d
	add		ASM.Operand.ASMVirtualRegister@7d0587f1,	ASM.Operand.ASMVirtualRegister@5e853265,	ASM.Operand.ASMVirtualRegister@67205a84
	lw		ASM.Operand.ASMVirtualRegister@5d76b067,	0(ASM.Operand.ASMVirtualRegister@7d0587f1)
	li		ASM.Operand.ASMVirtualRegister@2a17b7b6,	1
	sub		ASM.Operand.ASMVirtualRegister@4f063c0a,	ASM.Operand.ASMVirtualRegister@5d76b067,	ASM.Operand.ASMVirtualRegister@2a17b7b6
	mv		ASM.Operand.ASMVirtualRegister@271053e1,	ASM.Operand.ASMVirtualRegister@4f063c0a
	mv		ASM.Operand.ASMVirtualRegister@1e6d1014,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@76707e36,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@614ddd49,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@1f554b06,	4
	mul		ASM.Operand.ASMVirtualRegister@1f554b06,	ASM.Operand.ASMVirtualRegister@1f554b06,	ASM.Operand.ASMVirtualRegister@76707e36
	add		ASM.Operand.ASMVirtualRegister@694e1548,	ASM.Operand.ASMVirtualRegister@614ddd49,	ASM.Operand.ASMVirtualRegister@1f554b06
	lw		ASM.Operand.ASMVirtualRegister@1c3a4799,	0(ASM.Operand.ASMVirtualRegister@694e1548)
	li		ASM.Operand.ASMVirtualRegister@131276c2,	2
	sub		ASM.Operand.ASMVirtualRegister@26aa12dd,	ASM.Operand.ASMVirtualRegister@1c3a4799,	ASM.Operand.ASMVirtualRegister@131276c2
	mv		ASM.Operand.ASMVirtualRegister@589838eb,	ASM.Operand.ASMVirtualRegister@26aa12dd
	mv		ASM.Operand.ASMVirtualRegister@3fd7a715,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@711f39f9,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@3fd7a715
	mv		a1,	ASM.Operand.ASMVirtualRegister@711f39f9
	call	check
	mv		ASM.Operand.ASMVirtualRegister@71bbf57e,	a0
	mv		ASM.Operand.ASMVirtualRegister@7f13d6e,	ASM.Operand.ASMVirtualRegister@71bbf57e
	beqz	ASM.Operand.ASMVirtualRegister@71bbf57e,	.main.6_and_terminate_block
	j		.main.6_and_rhs_block
.main.6_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@51cdd8a,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@d44fc21,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@51cdd8a
	mv		a1,	ASM.Operand.ASMVirtualRegister@d44fc21
	call	check
	mv		ASM.Operand.ASMVirtualRegister@23faf8f2,	a0
	and		ASM.Operand.ASMVirtualRegister@2d6eabae,	ASM.Operand.ASMVirtualRegister@71bbf57e,	ASM.Operand.ASMVirtualRegister@23faf8f2
	mv		ASM.Operand.ASMVirtualRegister@7f13d6e,	ASM.Operand.ASMVirtualRegister@2d6eabae
	j		.main.6_and_terminate_block
.main.6_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@4e7dc304,	ASM.Operand.ASMVirtualRegister@7f13d6e
	mv		ASM.Operand.ASMVirtualRegister@64729b1e,	ASM.Operand.ASMVirtualRegister@4e7dc304
	beqz	ASM.Operand.ASMVirtualRegister@4e7dc304,	.main.7_and_terminate_block
	j		.main.7_and_rhs_block
.main.7_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@10bbd20a,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@48503868,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@6895a785,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@184f6be2,	4
	mul		ASM.Operand.ASMVirtualRegister@184f6be2,	ASM.Operand.ASMVirtualRegister@184f6be2,	ASM.Operand.ASMVirtualRegister@48503868
	add		ASM.Operand.ASMVirtualRegister@56aac163,	ASM.Operand.ASMVirtualRegister@6895a785,	ASM.Operand.ASMVirtualRegister@184f6be2
	lw		ASM.Operand.ASMVirtualRegister@1f7030a6,	0(ASM.Operand.ASMVirtualRegister@56aac163)
	li		ASM.Operand.ASMVirtualRegister@5a1c0542,	4
	mul		ASM.Operand.ASMVirtualRegister@5a1c0542,	ASM.Operand.ASMVirtualRegister@5a1c0542,	ASM.Operand.ASMVirtualRegister@10bbd20a
	add		ASM.Operand.ASMVirtualRegister@396f6598,	ASM.Operand.ASMVirtualRegister@1f7030a6,	ASM.Operand.ASMVirtualRegister@5a1c0542
	lw		ASM.Operand.ASMVirtualRegister@394e1a0f,	0(ASM.Operand.ASMVirtualRegister@396f6598)
	li		ASM.Operand.ASMVirtualRegister@27a5f880,	1
	sub		ASM.Operand.ASMVirtualRegister@1d29cf23,	zero,	ASM.Operand.ASMVirtualRegister@27a5f880
	xor		ASM.Operand.ASMVirtualRegister@5f282abb,	ASM.Operand.ASMVirtualRegister@394e1a0f,	ASM.Operand.ASMVirtualRegister@1d29cf23
	seqz	ASM.Operand.ASMVirtualRegister@5f282abb,	ASM.Operand.ASMVirtualRegister@5f282abb
	and		ASM.Operand.ASMVirtualRegister@167fdd33,	ASM.Operand.ASMVirtualRegister@4e7dc304,	ASM.Operand.ASMVirtualRegister@5f282abb
	mv		ASM.Operand.ASMVirtualRegister@64729b1e,	ASM.Operand.ASMVirtualRegister@167fdd33
	j		.main.7_and_terminate_block
.main.7_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@1e965684,	ASM.Operand.ASMVirtualRegister@64729b1e
	beqz	ASM.Operand.ASMVirtualRegister@1e965684,	.main.8_if_terminate
	j		.main.8_if_true
.main.8_if_true:
	mv		ASM.Operand.ASMVirtualRegister@4d95d2a2,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@53f65459,	ASM.Operand.ASMVirtualRegister@5f341870
	li		ASM.Operand.ASMVirtualRegister@3b088d51,	1
	add		ASM.Operand.ASMVirtualRegister@1786dec2,	ASM.Operand.ASMVirtualRegister@53f65459,	ASM.Operand.ASMVirtualRegister@3b088d51
	mv		ASM.Operand.ASMVirtualRegister@5f341870,	ASM.Operand.ASMVirtualRegister@1786dec2
	mv		ASM.Operand.ASMVirtualRegister@74650e52,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@15d0c81b,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@6acdbdf5,	4
	mul		ASM.Operand.ASMVirtualRegister@6acdbdf5,	ASM.Operand.ASMVirtualRegister@6acdbdf5,	ASM.Operand.ASMVirtualRegister@74650e52
	add		ASM.Operand.ASMVirtualRegister@4b1c1ea0,	ASM.Operand.ASMVirtualRegister@15d0c81b,	ASM.Operand.ASMVirtualRegister@6acdbdf5
	lw		ASM.Operand.ASMVirtualRegister@17579e0f,	0(ASM.Operand.ASMVirtualRegister@4b1c1ea0)
	mv		ASM.Operand.ASMVirtualRegister@4d41cee,	ASM.Operand.ASMVirtualRegister@271053e1
	sw		ASM.Operand.ASMVirtualRegister@4d41cee,	0(ASM.Operand.ASMVirtualRegister@4b1c1ea0)
	mv		ASM.Operand.ASMVirtualRegister@3712b94,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@2833cc44,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@33f88ab,	4
	mul		ASM.Operand.ASMVirtualRegister@33f88ab,	ASM.Operand.ASMVirtualRegister@33f88ab,	ASM.Operand.ASMVirtualRegister@3712b94
	add		ASM.Operand.ASMVirtualRegister@27a8c74e,	ASM.Operand.ASMVirtualRegister@2833cc44,	ASM.Operand.ASMVirtualRegister@33f88ab
	lw		ASM.Operand.ASMVirtualRegister@2d8f65a4,	0(ASM.Operand.ASMVirtualRegister@27a8c74e)
	mv		ASM.Operand.ASMVirtualRegister@1b68ddbd,	ASM.Operand.ASMVirtualRegister@589838eb
	sw		ASM.Operand.ASMVirtualRegister@1b68ddbd,	0(ASM.Operand.ASMVirtualRegister@27a8c74e)
	mv		ASM.Operand.ASMVirtualRegister@646d64ab,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@59e5ddf,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@536aaa8d,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@e320068,	4
	mul		ASM.Operand.ASMVirtualRegister@e320068,	ASM.Operand.ASMVirtualRegister@e320068,	ASM.Operand.ASMVirtualRegister@59e5ddf
	add		ASM.Operand.ASMVirtualRegister@1f57539,	ASM.Operand.ASMVirtualRegister@536aaa8d,	ASM.Operand.ASMVirtualRegister@e320068
	lw		ASM.Operand.ASMVirtualRegister@76f2b07d,	0(ASM.Operand.ASMVirtualRegister@1f57539)
	li		ASM.Operand.ASMVirtualRegister@704a52ec,	4
	mul		ASM.Operand.ASMVirtualRegister@704a52ec,	ASM.Operand.ASMVirtualRegister@704a52ec,	ASM.Operand.ASMVirtualRegister@646d64ab
	add		ASM.Operand.ASMVirtualRegister@6ee52dcd,	ASM.Operand.ASMVirtualRegister@76f2b07d,	ASM.Operand.ASMVirtualRegister@704a52ec
	lw		ASM.Operand.ASMVirtualRegister@4493d195,	0(ASM.Operand.ASMVirtualRegister@6ee52dcd)
	mv		ASM.Operand.ASMVirtualRegister@2781e022,	ASM.Operand.ASMVirtualRegister@4f7d0008
	li		ASM.Operand.ASMVirtualRegister@57e1b0c,	1
	add		ASM.Operand.ASMVirtualRegister@4232c52b,	ASM.Operand.ASMVirtualRegister@2781e022,	ASM.Operand.ASMVirtualRegister@57e1b0c
	sw		ASM.Operand.ASMVirtualRegister@4232c52b,	0(ASM.Operand.ASMVirtualRegister@6ee52dcd)
	mv		ASM.Operand.ASMVirtualRegister@1877ab81,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@305fd85d,	ASM.Operand.ASMVirtualRegister@3c0ecd4b
	xor		ASM.Operand.ASMVirtualRegister@458c1321,	ASM.Operand.ASMVirtualRegister@1877ab81,	ASM.Operand.ASMVirtualRegister@305fd85d
	seqz	ASM.Operand.ASMVirtualRegister@458c1321,	ASM.Operand.ASMVirtualRegister@458c1321
	mv		ASM.Operand.ASMVirtualRegister@11438d26,	ASM.Operand.ASMVirtualRegister@458c1321
	beqz	ASM.Operand.ASMVirtualRegister@458c1321,	.main.9_and_terminate_block
	j		.main.9_and_rhs_block
.main.9_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@34cd072c,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@7a1ebcd8,	ASM.Operand.ASMVirtualRegister@14bf9759
	xor		ASM.Operand.ASMVirtualRegister@5faeada1,	ASM.Operand.ASMVirtualRegister@34cd072c,	ASM.Operand.ASMVirtualRegister@7a1ebcd8
	seqz	ASM.Operand.ASMVirtualRegister@5faeada1,	ASM.Operand.ASMVirtualRegister@5faeada1
	and		ASM.Operand.ASMVirtualRegister@528931cf,	ASM.Operand.ASMVirtualRegister@458c1321,	ASM.Operand.ASMVirtualRegister@5faeada1
	mv		ASM.Operand.ASMVirtualRegister@11438d26,	ASM.Operand.ASMVirtualRegister@528931cf
	j		.main.9_and_terminate_block
.main.9_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@ea1a8d5,	ASM.Operand.ASMVirtualRegister@11438d26
	beqz	ASM.Operand.ASMVirtualRegister@ea1a8d5,	.main.10_if_terminate
	j		.main.10_if_true
.main.10_if_true:
	mv		ASM.Operand.ASMVirtualRegister@1563da5,	ASM.Operand.ASMVirtualRegister@553f17c
	li		ASM.Operand.ASMVirtualRegister@2bbf4b8b,	1
	mv		ASM.Operand.ASMVirtualRegister@553f17c,	ASM.Operand.ASMVirtualRegister@2bbf4b8b
	j		.main.10_if_terminate
.main.10_if_terminate:
	j		.main.8_if_terminate
.main.8_if_terminate:
	mv		ASM.Operand.ASMVirtualRegister@30a3107a,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@33c7e1bb,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@34c4973,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@52feb982,	4
	mul		ASM.Operand.ASMVirtualRegister@52feb982,	ASM.Operand.ASMVirtualRegister@52feb982,	ASM.Operand.ASMVirtualRegister@33c7e1bb
	add		ASM.Operand.ASMVirtualRegister@7a765367,	ASM.Operand.ASMVirtualRegister@34c4973,	ASM.Operand.ASMVirtualRegister@52feb982
	lw		ASM.Operand.ASMVirtualRegister@76b0bfab,	0(ASM.Operand.ASMVirtualRegister@7a765367)
	li		ASM.Operand.ASMVirtualRegister@17d677df,	1
	sub		ASM.Operand.ASMVirtualRegister@3043fe0e,	ASM.Operand.ASMVirtualRegister@76b0bfab,	ASM.Operand.ASMVirtualRegister@17d677df
	mv		ASM.Operand.ASMVirtualRegister@271053e1,	ASM.Operand.ASMVirtualRegister@3043fe0e
	mv		ASM.Operand.ASMVirtualRegister@78e67e0a,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@bd8db5a,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@2f943d71,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@80503,	4
	mul		ASM.Operand.ASMVirtualRegister@80503,	ASM.Operand.ASMVirtualRegister@80503,	ASM.Operand.ASMVirtualRegister@bd8db5a
	add		ASM.Operand.ASMVirtualRegister@4b553d26,	ASM.Operand.ASMVirtualRegister@2f943d71,	ASM.Operand.ASMVirtualRegister@80503
	lw		ASM.Operand.ASMVirtualRegister@69a3d1d,	0(ASM.Operand.ASMVirtualRegister@4b553d26)
	li		ASM.Operand.ASMVirtualRegister@86be70a,	2
	add		ASM.Operand.ASMVirtualRegister@480bdb19,	ASM.Operand.ASMVirtualRegister@69a3d1d,	ASM.Operand.ASMVirtualRegister@86be70a
	mv		ASM.Operand.ASMVirtualRegister@589838eb,	ASM.Operand.ASMVirtualRegister@480bdb19
	mv		ASM.Operand.ASMVirtualRegister@2a556333,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@7d70d1b1,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@2a556333
	mv		a1,	ASM.Operand.ASMVirtualRegister@7d70d1b1
	call	check
	mv		ASM.Operand.ASMVirtualRegister@2a742aa2,	a0
	mv		ASM.Operand.ASMVirtualRegister@3cb1ffe6,	ASM.Operand.ASMVirtualRegister@2a742aa2
	beqz	ASM.Operand.ASMVirtualRegister@2a742aa2,	.main.11_and_terminate_block
	j		.main.11_and_rhs_block
.main.11_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@3dfc5fb8,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@467aecef,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@3dfc5fb8
	mv		a1,	ASM.Operand.ASMVirtualRegister@467aecef
	call	check
	mv		ASM.Operand.ASMVirtualRegister@4d50efb8,	a0
	and		ASM.Operand.ASMVirtualRegister@7e2d773b,	ASM.Operand.ASMVirtualRegister@2a742aa2,	ASM.Operand.ASMVirtualRegister@4d50efb8
	mv		ASM.Operand.ASMVirtualRegister@3cb1ffe6,	ASM.Operand.ASMVirtualRegister@7e2d773b
	j		.main.11_and_terminate_block
.main.11_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@2173f6d9,	ASM.Operand.ASMVirtualRegister@3cb1ffe6
	mv		ASM.Operand.ASMVirtualRegister@307f6b8c,	ASM.Operand.ASMVirtualRegister@2173f6d9
	beqz	ASM.Operand.ASMVirtualRegister@2173f6d9,	.main.12_and_terminate_block
	j		.main.12_and_rhs_block
.main.12_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@7a187f14,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@6f195bc3,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@51e2adc7,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@1a8a8f7c,	4
	mul		ASM.Operand.ASMVirtualRegister@1a8a8f7c,	ASM.Operand.ASMVirtualRegister@1a8a8f7c,	ASM.Operand.ASMVirtualRegister@6f195bc3
	add		ASM.Operand.ASMVirtualRegister@2353b3e6,	ASM.Operand.ASMVirtualRegister@51e2adc7,	ASM.Operand.ASMVirtualRegister@1a8a8f7c
	lw		ASM.Operand.ASMVirtualRegister@631330c,	0(ASM.Operand.ASMVirtualRegister@2353b3e6)
	li		ASM.Operand.ASMVirtualRegister@42f93a98,	4
	mul		ASM.Operand.ASMVirtualRegister@42f93a98,	ASM.Operand.ASMVirtualRegister@42f93a98,	ASM.Operand.ASMVirtualRegister@7a187f14
	add		ASM.Operand.ASMVirtualRegister@c46bcd4,	ASM.Operand.ASMVirtualRegister@631330c,	ASM.Operand.ASMVirtualRegister@42f93a98
	lw		ASM.Operand.ASMVirtualRegister@3234e239,	0(ASM.Operand.ASMVirtualRegister@c46bcd4)
	li		ASM.Operand.ASMVirtualRegister@3d921e20,	1
	sub		ASM.Operand.ASMVirtualRegister@36b4cef0,	zero,	ASM.Operand.ASMVirtualRegister@3d921e20
	xor		ASM.Operand.ASMVirtualRegister@fad74ee,	ASM.Operand.ASMVirtualRegister@3234e239,	ASM.Operand.ASMVirtualRegister@36b4cef0
	seqz	ASM.Operand.ASMVirtualRegister@fad74ee,	ASM.Operand.ASMVirtualRegister@fad74ee
	and		ASM.Operand.ASMVirtualRegister@1a1d6a08,	ASM.Operand.ASMVirtualRegister@2173f6d9,	ASM.Operand.ASMVirtualRegister@fad74ee
	mv		ASM.Operand.ASMVirtualRegister@307f6b8c,	ASM.Operand.ASMVirtualRegister@1a1d6a08
	j		.main.12_and_terminate_block
.main.12_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@37d31475,	ASM.Operand.ASMVirtualRegister@307f6b8c
	beqz	ASM.Operand.ASMVirtualRegister@37d31475,	.main.13_if_terminate
	j		.main.13_if_true
.main.13_if_true:
	mv		ASM.Operand.ASMVirtualRegister@27808f31,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@436e852b,	ASM.Operand.ASMVirtualRegister@5f341870
	li		ASM.Operand.ASMVirtualRegister@32d2fa64,	1
	add		ASM.Operand.ASMVirtualRegister@1d8d30f7,	ASM.Operand.ASMVirtualRegister@436e852b,	ASM.Operand.ASMVirtualRegister@32d2fa64
	mv		ASM.Operand.ASMVirtualRegister@5f341870,	ASM.Operand.ASMVirtualRegister@1d8d30f7
	mv		ASM.Operand.ASMVirtualRegister@3e57cd70,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@9a7504c,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@2c039ac6,	4
	mul		ASM.Operand.ASMVirtualRegister@2c039ac6,	ASM.Operand.ASMVirtualRegister@2c039ac6,	ASM.Operand.ASMVirtualRegister@3e57cd70
	add		ASM.Operand.ASMVirtualRegister@587d1d39,	ASM.Operand.ASMVirtualRegister@9a7504c,	ASM.Operand.ASMVirtualRegister@2c039ac6
	lw		ASM.Operand.ASMVirtualRegister@58c1670b,	0(ASM.Operand.ASMVirtualRegister@587d1d39)
	mv		ASM.Operand.ASMVirtualRegister@6b57696f,	ASM.Operand.ASMVirtualRegister@271053e1
	sw		ASM.Operand.ASMVirtualRegister@6b57696f,	0(ASM.Operand.ASMVirtualRegister@587d1d39)
	mv		ASM.Operand.ASMVirtualRegister@5bb21b69,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@6b9651f3,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@38bc8ab5,	4
	mul		ASM.Operand.ASMVirtualRegister@38bc8ab5,	ASM.Operand.ASMVirtualRegister@38bc8ab5,	ASM.Operand.ASMVirtualRegister@5bb21b69
	add		ASM.Operand.ASMVirtualRegister@687080dc,	ASM.Operand.ASMVirtualRegister@6b9651f3,	ASM.Operand.ASMVirtualRegister@38bc8ab5
	lw		ASM.Operand.ASMVirtualRegister@23d2a7e8,	0(ASM.Operand.ASMVirtualRegister@687080dc)
	mv		ASM.Operand.ASMVirtualRegister@7a9273a8,	ASM.Operand.ASMVirtualRegister@589838eb
	sw		ASM.Operand.ASMVirtualRegister@7a9273a8,	0(ASM.Operand.ASMVirtualRegister@687080dc)
	mv		ASM.Operand.ASMVirtualRegister@26a7b76d,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@4abdb505,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@7ce6a65d,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@1500955a,	4
	mul		ASM.Operand.ASMVirtualRegister@1500955a,	ASM.Operand.ASMVirtualRegister@1500955a,	ASM.Operand.ASMVirtualRegister@4abdb505
	add		ASM.Operand.ASMVirtualRegister@e874448,	ASM.Operand.ASMVirtualRegister@7ce6a65d,	ASM.Operand.ASMVirtualRegister@1500955a
	lw		ASM.Operand.ASMVirtualRegister@29b5cd00,	0(ASM.Operand.ASMVirtualRegister@e874448)
	li		ASM.Operand.ASMVirtualRegister@60285225,	4
	mul		ASM.Operand.ASMVirtualRegister@60285225,	ASM.Operand.ASMVirtualRegister@60285225,	ASM.Operand.ASMVirtualRegister@26a7b76d
	add		ASM.Operand.ASMVirtualRegister@7113b13f,	ASM.Operand.ASMVirtualRegister@29b5cd00,	ASM.Operand.ASMVirtualRegister@60285225
	lw		ASM.Operand.ASMVirtualRegister@45820e51,	0(ASM.Operand.ASMVirtualRegister@7113b13f)
	mv		ASM.Operand.ASMVirtualRegister@42d8062c,	ASM.Operand.ASMVirtualRegister@4f7d0008
	li		ASM.Operand.ASMVirtualRegister@6043cd28,	1
	add		ASM.Operand.ASMVirtualRegister@cb51256,	ASM.Operand.ASMVirtualRegister@42d8062c,	ASM.Operand.ASMVirtualRegister@6043cd28
	sw		ASM.Operand.ASMVirtualRegister@cb51256,	0(ASM.Operand.ASMVirtualRegister@7113b13f)
	mv		ASM.Operand.ASMVirtualRegister@59906517,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@5bfbf16f,	ASM.Operand.ASMVirtualRegister@3c0ecd4b
	xor		ASM.Operand.ASMVirtualRegister@25af5db5,	ASM.Operand.ASMVirtualRegister@59906517,	ASM.Operand.ASMVirtualRegister@5bfbf16f
	seqz	ASM.Operand.ASMVirtualRegister@25af5db5,	ASM.Operand.ASMVirtualRegister@25af5db5
	mv		ASM.Operand.ASMVirtualRegister@12cdcf4,	ASM.Operand.ASMVirtualRegister@25af5db5
	beqz	ASM.Operand.ASMVirtualRegister@25af5db5,	.main.14_and_terminate_block
	j		.main.14_and_rhs_block
.main.14_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@5bcea91b,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@5f3a4b84,	ASM.Operand.ASMVirtualRegister@14bf9759
	xor		ASM.Operand.ASMVirtualRegister@27f723,	ASM.Operand.ASMVirtualRegister@5bcea91b,	ASM.Operand.ASMVirtualRegister@5f3a4b84
	seqz	ASM.Operand.ASMVirtualRegister@27f723,	ASM.Operand.ASMVirtualRegister@27f723
	and		ASM.Operand.ASMVirtualRegister@670b40af,	ASM.Operand.ASMVirtualRegister@25af5db5,	ASM.Operand.ASMVirtualRegister@27f723
	mv		ASM.Operand.ASMVirtualRegister@12cdcf4,	ASM.Operand.ASMVirtualRegister@670b40af
	j		.main.14_and_terminate_block
.main.14_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@4923ab24,	ASM.Operand.ASMVirtualRegister@12cdcf4
	beqz	ASM.Operand.ASMVirtualRegister@4923ab24,	.main.15_if_terminate
	j		.main.15_if_true
.main.15_if_true:
	mv		ASM.Operand.ASMVirtualRegister@44c8afef,	ASM.Operand.ASMVirtualRegister@553f17c
	li		ASM.Operand.ASMVirtualRegister@7b69c6ba,	1
	mv		ASM.Operand.ASMVirtualRegister@553f17c,	ASM.Operand.ASMVirtualRegister@7b69c6ba
	j		.main.15_if_terminate
.main.15_if_terminate:
	j		.main.13_if_terminate
.main.13_if_terminate:
	mv		ASM.Operand.ASMVirtualRegister@46daef40,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@12f41634,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@13c27452,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@262b2c86,	4
	mul		ASM.Operand.ASMVirtualRegister@262b2c86,	ASM.Operand.ASMVirtualRegister@262b2c86,	ASM.Operand.ASMVirtualRegister@12f41634
	add		ASM.Operand.ASMVirtualRegister@371a67ec,	ASM.Operand.ASMVirtualRegister@13c27452,	ASM.Operand.ASMVirtualRegister@262b2c86
	lw		ASM.Operand.ASMVirtualRegister@5ed828d,	0(ASM.Operand.ASMVirtualRegister@371a67ec)
	li		ASM.Operand.ASMVirtualRegister@50d0686,	1
	add		ASM.Operand.ASMVirtualRegister@7a3d45bd,	ASM.Operand.ASMVirtualRegister@5ed828d,	ASM.Operand.ASMVirtualRegister@50d0686
	mv		ASM.Operand.ASMVirtualRegister@271053e1,	ASM.Operand.ASMVirtualRegister@7a3d45bd
	mv		ASM.Operand.ASMVirtualRegister@1e7c7811,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@77ec78b9,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@1a3869f4,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@a38d7a3,	4
	mul		ASM.Operand.ASMVirtualRegister@a38d7a3,	ASM.Operand.ASMVirtualRegister@a38d7a3,	ASM.Operand.ASMVirtualRegister@77ec78b9
	add		ASM.Operand.ASMVirtualRegister@77f99a05,	ASM.Operand.ASMVirtualRegister@1a3869f4,	ASM.Operand.ASMVirtualRegister@a38d7a3
	lw		ASM.Operand.ASMVirtualRegister@63440df3,	0(ASM.Operand.ASMVirtualRegister@77f99a05)
	li		ASM.Operand.ASMVirtualRegister@3aeaafa6,	2
	sub		ASM.Operand.ASMVirtualRegister@76a3e297,	ASM.Operand.ASMVirtualRegister@63440df3,	ASM.Operand.ASMVirtualRegister@3aeaafa6
	mv		ASM.Operand.ASMVirtualRegister@589838eb,	ASM.Operand.ASMVirtualRegister@76a3e297
	mv		ASM.Operand.ASMVirtualRegister@4d3167f4,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@ed9d034,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@4d3167f4
	mv		a1,	ASM.Operand.ASMVirtualRegister@ed9d034
	call	check
	mv		ASM.Operand.ASMVirtualRegister@6121c9d6,	a0
	mv		ASM.Operand.ASMVirtualRegister@87f383f,	ASM.Operand.ASMVirtualRegister@6121c9d6
	beqz	ASM.Operand.ASMVirtualRegister@6121c9d6,	.main.16_and_terminate_block
	j		.main.16_and_rhs_block
.main.16_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@4eb7f003,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@eafc191,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@4eb7f003
	mv		a1,	ASM.Operand.ASMVirtualRegister@eafc191
	call	check
	mv		ASM.Operand.ASMVirtualRegister@612fc6eb,	a0
	and		ASM.Operand.ASMVirtualRegister@1060b431,	ASM.Operand.ASMVirtualRegister@6121c9d6,	ASM.Operand.ASMVirtualRegister@612fc6eb
	mv		ASM.Operand.ASMVirtualRegister@87f383f,	ASM.Operand.ASMVirtualRegister@1060b431
	j		.main.16_and_terminate_block
.main.16_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@612679d6,	ASM.Operand.ASMVirtualRegister@87f383f
	mv		ASM.Operand.ASMVirtualRegister@11758f2a,	ASM.Operand.ASMVirtualRegister@612679d6
	beqz	ASM.Operand.ASMVirtualRegister@612679d6,	.main.17_and_terminate_block
	j		.main.17_and_rhs_block
.main.17_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@e720b71,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@1b26f7b2,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@491cc5c9,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@74ad1f1f,	4
	mul		ASM.Operand.ASMVirtualRegister@74ad1f1f,	ASM.Operand.ASMVirtualRegister@74ad1f1f,	ASM.Operand.ASMVirtualRegister@1b26f7b2
	add		ASM.Operand.ASMVirtualRegister@6a1aab78,	ASM.Operand.ASMVirtualRegister@491cc5c9,	ASM.Operand.ASMVirtualRegister@74ad1f1f
	lw		ASM.Operand.ASMVirtualRegister@462d5aee,	0(ASM.Operand.ASMVirtualRegister@6a1aab78)
	li		ASM.Operand.ASMVirtualRegister@69b0fd6f,	4
	mul		ASM.Operand.ASMVirtualRegister@69b0fd6f,	ASM.Operand.ASMVirtualRegister@69b0fd6f,	ASM.Operand.ASMVirtualRegister@e720b71
	add		ASM.Operand.ASMVirtualRegister@757942a1,	ASM.Operand.ASMVirtualRegister@462d5aee,	ASM.Operand.ASMVirtualRegister@69b0fd6f
	lw		ASM.Operand.ASMVirtualRegister@4a87761d,	0(ASM.Operand.ASMVirtualRegister@757942a1)
	li		ASM.Operand.ASMVirtualRegister@66d1af89,	1
	sub		ASM.Operand.ASMVirtualRegister@8646db9,	zero,	ASM.Operand.ASMVirtualRegister@66d1af89
	xor		ASM.Operand.ASMVirtualRegister@37374a5e,	ASM.Operand.ASMVirtualRegister@4a87761d,	ASM.Operand.ASMVirtualRegister@8646db9
	seqz	ASM.Operand.ASMVirtualRegister@37374a5e,	ASM.Operand.ASMVirtualRegister@37374a5e
	and		ASM.Operand.ASMVirtualRegister@4671e53b,	ASM.Operand.ASMVirtualRegister@612679d6,	ASM.Operand.ASMVirtualRegister@37374a5e
	mv		ASM.Operand.ASMVirtualRegister@11758f2a,	ASM.Operand.ASMVirtualRegister@4671e53b
	j		.main.17_and_terminate_block
.main.17_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@2db7a79b,	ASM.Operand.ASMVirtualRegister@11758f2a
	beqz	ASM.Operand.ASMVirtualRegister@2db7a79b,	.main.18_if_terminate
	j		.main.18_if_true
.main.18_if_true:
	mv		ASM.Operand.ASMVirtualRegister@6950e31,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@b7dd107,	ASM.Operand.ASMVirtualRegister@5f341870
	li		ASM.Operand.ASMVirtualRegister@42eca56e,	1
	add		ASM.Operand.ASMVirtualRegister@52f759d7,	ASM.Operand.ASMVirtualRegister@b7dd107,	ASM.Operand.ASMVirtualRegister@42eca56e
	mv		ASM.Operand.ASMVirtualRegister@5f341870,	ASM.Operand.ASMVirtualRegister@52f759d7
	mv		ASM.Operand.ASMVirtualRegister@7cbd213e,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@192d3247,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@3ecd23d9,	4
	mul		ASM.Operand.ASMVirtualRegister@3ecd23d9,	ASM.Operand.ASMVirtualRegister@3ecd23d9,	ASM.Operand.ASMVirtualRegister@7cbd213e
	add		ASM.Operand.ASMVirtualRegister@569cfc36,	ASM.Operand.ASMVirtualRegister@192d3247,	ASM.Operand.ASMVirtualRegister@3ecd23d9
	lw		ASM.Operand.ASMVirtualRegister@43bd930a,	0(ASM.Operand.ASMVirtualRegister@569cfc36)
	mv		ASM.Operand.ASMVirtualRegister@33723e30,	ASM.Operand.ASMVirtualRegister@271053e1
	sw		ASM.Operand.ASMVirtualRegister@33723e30,	0(ASM.Operand.ASMVirtualRegister@569cfc36)
	mv		ASM.Operand.ASMVirtualRegister@64f6106c,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@553a3d88,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@7a30d1e6,	4
	mul		ASM.Operand.ASMVirtualRegister@7a30d1e6,	ASM.Operand.ASMVirtualRegister@7a30d1e6,	ASM.Operand.ASMVirtualRegister@64f6106c
	add		ASM.Operand.ASMVirtualRegister@5891e32e,	ASM.Operand.ASMVirtualRegister@553a3d88,	ASM.Operand.ASMVirtualRegister@7a30d1e6
	lw		ASM.Operand.ASMVirtualRegister@cb0ed20,	0(ASM.Operand.ASMVirtualRegister@5891e32e)
	mv		ASM.Operand.ASMVirtualRegister@8e24743,	ASM.Operand.ASMVirtualRegister@589838eb
	sw		ASM.Operand.ASMVirtualRegister@8e24743,	0(ASM.Operand.ASMVirtualRegister@5891e32e)
	mv		ASM.Operand.ASMVirtualRegister@74a10858,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@23fe1d71,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@28ac3dc3,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@32eebfca,	4
	mul		ASM.Operand.ASMVirtualRegister@32eebfca,	ASM.Operand.ASMVirtualRegister@32eebfca,	ASM.Operand.ASMVirtualRegister@23fe1d71
	add		ASM.Operand.ASMVirtualRegister@4e718207,	ASM.Operand.ASMVirtualRegister@28ac3dc3,	ASM.Operand.ASMVirtualRegister@32eebfca
	lw		ASM.Operand.ASMVirtualRegister@1d371b2d,	0(ASM.Operand.ASMVirtualRegister@4e718207)
	li		ASM.Operand.ASMVirtualRegister@543c6f6d,	4
	mul		ASM.Operand.ASMVirtualRegister@543c6f6d,	ASM.Operand.ASMVirtualRegister@543c6f6d,	ASM.Operand.ASMVirtualRegister@74a10858
	add		ASM.Operand.ASMVirtualRegister@13eb8acf,	ASM.Operand.ASMVirtualRegister@1d371b2d,	ASM.Operand.ASMVirtualRegister@543c6f6d
	lw		ASM.Operand.ASMVirtualRegister@51c8530f,	0(ASM.Operand.ASMVirtualRegister@13eb8acf)
	mv		ASM.Operand.ASMVirtualRegister@7403c468,	ASM.Operand.ASMVirtualRegister@4f7d0008
	li		ASM.Operand.ASMVirtualRegister@43738a82,	1
	add		ASM.Operand.ASMVirtualRegister@c81cdd1,	ASM.Operand.ASMVirtualRegister@7403c468,	ASM.Operand.ASMVirtualRegister@43738a82
	sw		ASM.Operand.ASMVirtualRegister@c81cdd1,	0(ASM.Operand.ASMVirtualRegister@13eb8acf)
	mv		ASM.Operand.ASMVirtualRegister@1fc2b765,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@75881071,	ASM.Operand.ASMVirtualRegister@3c0ecd4b
	xor		ASM.Operand.ASMVirtualRegister@2a70a3d8,	ASM.Operand.ASMVirtualRegister@1fc2b765,	ASM.Operand.ASMVirtualRegister@75881071
	seqz	ASM.Operand.ASMVirtualRegister@2a70a3d8,	ASM.Operand.ASMVirtualRegister@2a70a3d8
	mv		ASM.Operand.ASMVirtualRegister@289d1c02,	ASM.Operand.ASMVirtualRegister@2a70a3d8
	beqz	ASM.Operand.ASMVirtualRegister@2a70a3d8,	.main.19_and_terminate_block
	j		.main.19_and_rhs_block
.main.19_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@22eeefeb,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@17d0685f,	ASM.Operand.ASMVirtualRegister@14bf9759
	xor		ASM.Operand.ASMVirtualRegister@3891771e,	ASM.Operand.ASMVirtualRegister@22eeefeb,	ASM.Operand.ASMVirtualRegister@17d0685f
	seqz	ASM.Operand.ASMVirtualRegister@3891771e,	ASM.Operand.ASMVirtualRegister@3891771e
	and		ASM.Operand.ASMVirtualRegister@78ac1102,	ASM.Operand.ASMVirtualRegister@2a70a3d8,	ASM.Operand.ASMVirtualRegister@3891771e
	mv		ASM.Operand.ASMVirtualRegister@289d1c02,	ASM.Operand.ASMVirtualRegister@78ac1102
	j		.main.19_and_terminate_block
.main.19_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@2de8284b,	ASM.Operand.ASMVirtualRegister@289d1c02
	beqz	ASM.Operand.ASMVirtualRegister@2de8284b,	.main.20_if_terminate
	j		.main.20_if_true
.main.20_if_true:
	mv		ASM.Operand.ASMVirtualRegister@396e2f39,	ASM.Operand.ASMVirtualRegister@553f17c
	li		ASM.Operand.ASMVirtualRegister@a74868d,	1
	mv		ASM.Operand.ASMVirtualRegister@553f17c,	ASM.Operand.ASMVirtualRegister@a74868d
	j		.main.20_if_terminate
.main.20_if_terminate:
	j		.main.18_if_terminate
.main.18_if_terminate:
	mv		ASM.Operand.ASMVirtualRegister@12c8a2c0,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@7e0e6aa2,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@365185bd,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@18bf3d14,	4
	mul		ASM.Operand.ASMVirtualRegister@18bf3d14,	ASM.Operand.ASMVirtualRegister@18bf3d14,	ASM.Operand.ASMVirtualRegister@7e0e6aa2
	add		ASM.Operand.ASMVirtualRegister@4fb64261,	ASM.Operand.ASMVirtualRegister@365185bd,	ASM.Operand.ASMVirtualRegister@18bf3d14
	lw		ASM.Operand.ASMVirtualRegister@42607a4f,	0(ASM.Operand.ASMVirtualRegister@4fb64261)
	li		ASM.Operand.ASMVirtualRegister@782663d3,	1
	add		ASM.Operand.ASMVirtualRegister@1990a65e,	ASM.Operand.ASMVirtualRegister@42607a4f,	ASM.Operand.ASMVirtualRegister@782663d3
	mv		ASM.Operand.ASMVirtualRegister@271053e1,	ASM.Operand.ASMVirtualRegister@1990a65e
	mv		ASM.Operand.ASMVirtualRegister@64485a47,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@25bbf683,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@6ec8211c,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@7276c8cd,	4
	mul		ASM.Operand.ASMVirtualRegister@7276c8cd,	ASM.Operand.ASMVirtualRegister@7276c8cd,	ASM.Operand.ASMVirtualRegister@25bbf683
	add		ASM.Operand.ASMVirtualRegister@544a2ea6,	ASM.Operand.ASMVirtualRegister@6ec8211c,	ASM.Operand.ASMVirtualRegister@7276c8cd
	lw		ASM.Operand.ASMVirtualRegister@2e3fc542,	0(ASM.Operand.ASMVirtualRegister@544a2ea6)
	li		ASM.Operand.ASMVirtualRegister@150c158,	2
	add		ASM.Operand.ASMVirtualRegister@4524411f,	ASM.Operand.ASMVirtualRegister@2e3fc542,	ASM.Operand.ASMVirtualRegister@150c158
	mv		ASM.Operand.ASMVirtualRegister@589838eb,	ASM.Operand.ASMVirtualRegister@4524411f
	mv		ASM.Operand.ASMVirtualRegister@401e7803,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@10dba097,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@401e7803
	mv		a1,	ASM.Operand.ASMVirtualRegister@10dba097
	call	check
	mv		ASM.Operand.ASMVirtualRegister@1786f9d5,	a0
	mv		ASM.Operand.ASMVirtualRegister@704d6e83,	ASM.Operand.ASMVirtualRegister@1786f9d5
	beqz	ASM.Operand.ASMVirtualRegister@1786f9d5,	.main.21_and_terminate_block
	j		.main.21_and_rhs_block
.main.21_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@43a0cee9,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@eb21112,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@43a0cee9
	mv		a1,	ASM.Operand.ASMVirtualRegister@eb21112
	call	check
	mv		ASM.Operand.ASMVirtualRegister@2eda0940,	a0
	and		ASM.Operand.ASMVirtualRegister@3578436e,	ASM.Operand.ASMVirtualRegister@1786f9d5,	ASM.Operand.ASMVirtualRegister@2eda0940
	mv		ASM.Operand.ASMVirtualRegister@704d6e83,	ASM.Operand.ASMVirtualRegister@3578436e
	j		.main.21_and_terminate_block
.main.21_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@706a04ae,	ASM.Operand.ASMVirtualRegister@704d6e83
	mv		ASM.Operand.ASMVirtualRegister@6eceb130,	ASM.Operand.ASMVirtualRegister@706a04ae
	beqz	ASM.Operand.ASMVirtualRegister@706a04ae,	.main.22_and_terminate_block
	j		.main.22_and_rhs_block
.main.22_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@10a035a0,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@67b467e9,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@47db50c5,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@5c072e3f,	4
	mul		ASM.Operand.ASMVirtualRegister@5c072e3f,	ASM.Operand.ASMVirtualRegister@5c072e3f,	ASM.Operand.ASMVirtualRegister@67b467e9
	add		ASM.Operand.ASMVirtualRegister@4d1b0d2a,	ASM.Operand.ASMVirtualRegister@47db50c5,	ASM.Operand.ASMVirtualRegister@5c072e3f
	lw		ASM.Operand.ASMVirtualRegister@954b04f,	0(ASM.Operand.ASMVirtualRegister@4d1b0d2a)
	li		ASM.Operand.ASMVirtualRegister@149494d8,	4
	mul		ASM.Operand.ASMVirtualRegister@149494d8,	ASM.Operand.ASMVirtualRegister@149494d8,	ASM.Operand.ASMVirtualRegister@10a035a0
	add		ASM.Operand.ASMVirtualRegister@710726a3,	ASM.Operand.ASMVirtualRegister@954b04f,	ASM.Operand.ASMVirtualRegister@149494d8
	lw		ASM.Operand.ASMVirtualRegister@646007f4,	0(ASM.Operand.ASMVirtualRegister@710726a3)
	li		ASM.Operand.ASMVirtualRegister@481a15ff,	1
	sub		ASM.Operand.ASMVirtualRegister@78186a70,	zero,	ASM.Operand.ASMVirtualRegister@481a15ff
	xor		ASM.Operand.ASMVirtualRegister@306279ee,	ASM.Operand.ASMVirtualRegister@646007f4,	ASM.Operand.ASMVirtualRegister@78186a70
	seqz	ASM.Operand.ASMVirtualRegister@306279ee,	ASM.Operand.ASMVirtualRegister@306279ee
	and		ASM.Operand.ASMVirtualRegister@545997b1,	ASM.Operand.ASMVirtualRegister@706a04ae,	ASM.Operand.ASMVirtualRegister@306279ee
	mv		ASM.Operand.ASMVirtualRegister@6eceb130,	ASM.Operand.ASMVirtualRegister@545997b1
	j		.main.22_and_terminate_block
.main.22_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@4cf4d528,	ASM.Operand.ASMVirtualRegister@6eceb130
	beqz	ASM.Operand.ASMVirtualRegister@4cf4d528,	.main.23_if_terminate
	j		.main.23_if_true
.main.23_if_true:
	mv		ASM.Operand.ASMVirtualRegister@77846d2c,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@548ad73b,	ASM.Operand.ASMVirtualRegister@5f341870
	li		ASM.Operand.ASMVirtualRegister@4c762604,	1
	add		ASM.Operand.ASMVirtualRegister@2641e737,	ASM.Operand.ASMVirtualRegister@548ad73b,	ASM.Operand.ASMVirtualRegister@4c762604
	mv		ASM.Operand.ASMVirtualRegister@5f341870,	ASM.Operand.ASMVirtualRegister@2641e737
	mv		ASM.Operand.ASMVirtualRegister@727803de,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@704921a5,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@df27fae,	4
	mul		ASM.Operand.ASMVirtualRegister@df27fae,	ASM.Operand.ASMVirtualRegister@df27fae,	ASM.Operand.ASMVirtualRegister@727803de
	add		ASM.Operand.ASMVirtualRegister@24a35978,	ASM.Operand.ASMVirtualRegister@704921a5,	ASM.Operand.ASMVirtualRegister@df27fae
	lw		ASM.Operand.ASMVirtualRegister@16f7c8c1,	0(ASM.Operand.ASMVirtualRegister@24a35978)
	mv		ASM.Operand.ASMVirtualRegister@2f0a87b3,	ASM.Operand.ASMVirtualRegister@271053e1
	sw		ASM.Operand.ASMVirtualRegister@2f0a87b3,	0(ASM.Operand.ASMVirtualRegister@24a35978)
	mv		ASM.Operand.ASMVirtualRegister@319b92f3,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@fcd6521,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@27d415d9,	4
	mul		ASM.Operand.ASMVirtualRegister@27d415d9,	ASM.Operand.ASMVirtualRegister@27d415d9,	ASM.Operand.ASMVirtualRegister@319b92f3
	add		ASM.Operand.ASMVirtualRegister@5c18298f,	ASM.Operand.ASMVirtualRegister@fcd6521,	ASM.Operand.ASMVirtualRegister@27d415d9
	lw		ASM.Operand.ASMVirtualRegister@31f924f5,	0(ASM.Operand.ASMVirtualRegister@5c18298f)
	mv		ASM.Operand.ASMVirtualRegister@5579bb86,	ASM.Operand.ASMVirtualRegister@589838eb
	sw		ASM.Operand.ASMVirtualRegister@5579bb86,	0(ASM.Operand.ASMVirtualRegister@5c18298f)
	mv		ASM.Operand.ASMVirtualRegister@5204062d,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@4fcd19b3,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@376b4233,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@2fd66ad3,	4
	mul		ASM.Operand.ASMVirtualRegister@2fd66ad3,	ASM.Operand.ASMVirtualRegister@2fd66ad3,	ASM.Operand.ASMVirtualRegister@4fcd19b3
	add		ASM.Operand.ASMVirtualRegister@5d11346a,	ASM.Operand.ASMVirtualRegister@376b4233,	ASM.Operand.ASMVirtualRegister@2fd66ad3
	lw		ASM.Operand.ASMVirtualRegister@7a36aefa,	0(ASM.Operand.ASMVirtualRegister@5d11346a)
	li		ASM.Operand.ASMVirtualRegister@17211155,	4
	mul		ASM.Operand.ASMVirtualRegister@17211155,	ASM.Operand.ASMVirtualRegister@17211155,	ASM.Operand.ASMVirtualRegister@5204062d
	add		ASM.Operand.ASMVirtualRegister@b3d7190,	ASM.Operand.ASMVirtualRegister@7a36aefa,	ASM.Operand.ASMVirtualRegister@17211155
	lw		ASM.Operand.ASMVirtualRegister@5fdba6f9,	0(ASM.Operand.ASMVirtualRegister@b3d7190)
	mv		ASM.Operand.ASMVirtualRegister@10d59286,	ASM.Operand.ASMVirtualRegister@4f7d0008
	li		ASM.Operand.ASMVirtualRegister@fe18270,	1
	add		ASM.Operand.ASMVirtualRegister@6fb0d3ed,	ASM.Operand.ASMVirtualRegister@10d59286,	ASM.Operand.ASMVirtualRegister@fe18270
	sw		ASM.Operand.ASMVirtualRegister@6fb0d3ed,	0(ASM.Operand.ASMVirtualRegister@b3d7190)
	mv		ASM.Operand.ASMVirtualRegister@6dde5c8c,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@5123a213,	ASM.Operand.ASMVirtualRegister@3c0ecd4b
	xor		ASM.Operand.ASMVirtualRegister@52525845,	ASM.Operand.ASMVirtualRegister@6dde5c8c,	ASM.Operand.ASMVirtualRegister@5123a213
	seqz	ASM.Operand.ASMVirtualRegister@52525845,	ASM.Operand.ASMVirtualRegister@52525845
	mv		ASM.Operand.ASMVirtualRegister@3b94d659,	ASM.Operand.ASMVirtualRegister@52525845
	beqz	ASM.Operand.ASMVirtualRegister@52525845,	.main.24_and_terminate_block
	j		.main.24_and_rhs_block
.main.24_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@24b1d79b,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@68ceda24,	ASM.Operand.ASMVirtualRegister@14bf9759
	xor		ASM.Operand.ASMVirtualRegister@281e3708,	ASM.Operand.ASMVirtualRegister@24b1d79b,	ASM.Operand.ASMVirtualRegister@68ceda24
	seqz	ASM.Operand.ASMVirtualRegister@281e3708,	ASM.Operand.ASMVirtualRegister@281e3708
	and		ASM.Operand.ASMVirtualRegister@35a50a4c,	ASM.Operand.ASMVirtualRegister@52525845,	ASM.Operand.ASMVirtualRegister@281e3708
	mv		ASM.Operand.ASMVirtualRegister@3b94d659,	ASM.Operand.ASMVirtualRegister@35a50a4c
	j		.main.24_and_terminate_block
.main.24_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@1f021e6c,	ASM.Operand.ASMVirtualRegister@3b94d659
	beqz	ASM.Operand.ASMVirtualRegister@1f021e6c,	.main.25_if_terminate
	j		.main.25_if_true
.main.25_if_true:
	mv		ASM.Operand.ASMVirtualRegister@103f852,	ASM.Operand.ASMVirtualRegister@553f17c
	li		ASM.Operand.ASMVirtualRegister@587c290d,	1
	mv		ASM.Operand.ASMVirtualRegister@553f17c,	ASM.Operand.ASMVirtualRegister@587c290d
	j		.main.25_if_terminate
.main.25_if_terminate:
	j		.main.23_if_terminate
.main.23_if_terminate:
	mv		ASM.Operand.ASMVirtualRegister@4516af24,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@4ae82894,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@543788f3,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@6d3af739,	4
	mul		ASM.Operand.ASMVirtualRegister@6d3af739,	ASM.Operand.ASMVirtualRegister@6d3af739,	ASM.Operand.ASMVirtualRegister@4ae82894
	add		ASM.Operand.ASMVirtualRegister@1da51a35,	ASM.Operand.ASMVirtualRegister@543788f3,	ASM.Operand.ASMVirtualRegister@6d3af739
	lw		ASM.Operand.ASMVirtualRegister@16022d9d,	0(ASM.Operand.ASMVirtualRegister@1da51a35)
	li		ASM.Operand.ASMVirtualRegister@7e9a5fbe,	2
	sub		ASM.Operand.ASMVirtualRegister@44a3ec6b,	ASM.Operand.ASMVirtualRegister@16022d9d,	ASM.Operand.ASMVirtualRegister@7e9a5fbe
	mv		ASM.Operand.ASMVirtualRegister@271053e1,	ASM.Operand.ASMVirtualRegister@44a3ec6b
	mv		ASM.Operand.ASMVirtualRegister@71623278,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@768b970c,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@5a4041cc,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@15b3e5b,	4
	mul		ASM.Operand.ASMVirtualRegister@15b3e5b,	ASM.Operand.ASMVirtualRegister@15b3e5b,	ASM.Operand.ASMVirtualRegister@768b970c
	add		ASM.Operand.ASMVirtualRegister@61ca2dfa,	ASM.Operand.ASMVirtualRegister@5a4041cc,	ASM.Operand.ASMVirtualRegister@15b3e5b
	lw		ASM.Operand.ASMVirtualRegister@4b53f538,	0(ASM.Operand.ASMVirtualRegister@61ca2dfa)
	li		ASM.Operand.ASMVirtualRegister@134593bf,	1
	sub		ASM.Operand.ASMVirtualRegister@4bb4de6a,	ASM.Operand.ASMVirtualRegister@4b53f538,	ASM.Operand.ASMVirtualRegister@134593bf
	mv		ASM.Operand.ASMVirtualRegister@589838eb,	ASM.Operand.ASMVirtualRegister@4bb4de6a
	mv		ASM.Operand.ASMVirtualRegister@7ba18f1b,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@2f8f5f62,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@7ba18f1b
	mv		a1,	ASM.Operand.ASMVirtualRegister@2f8f5f62
	call	check
	mv		ASM.Operand.ASMVirtualRegister@1068e947,	a0
	mv		ASM.Operand.ASMVirtualRegister@7dc222ae,	ASM.Operand.ASMVirtualRegister@1068e947
	beqz	ASM.Operand.ASMVirtualRegister@1068e947,	.main.26_and_terminate_block
	j		.main.26_and_rhs_block
.main.26_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@aecb35a,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@5fcd892a,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@aecb35a
	mv		a1,	ASM.Operand.ASMVirtualRegister@5fcd892a
	call	check
	mv		ASM.Operand.ASMVirtualRegister@8b87145,	a0
	and		ASM.Operand.ASMVirtualRegister@6483f5ae,	ASM.Operand.ASMVirtualRegister@1068e947,	ASM.Operand.ASMVirtualRegister@8b87145
	mv		ASM.Operand.ASMVirtualRegister@7dc222ae,	ASM.Operand.ASMVirtualRegister@6483f5ae
	j		.main.26_and_terminate_block
.main.26_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@b9afc07,	ASM.Operand.ASMVirtualRegister@7dc222ae
	mv		ASM.Operand.ASMVirtualRegister@382db087,	ASM.Operand.ASMVirtualRegister@b9afc07
	beqz	ASM.Operand.ASMVirtualRegister@b9afc07,	.main.27_and_terminate_block
	j		.main.27_and_rhs_block
.main.27_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@73d4cc9e,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@80169cf,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@5427c60c,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@15bfd87,	4
	mul		ASM.Operand.ASMVirtualRegister@15bfd87,	ASM.Operand.ASMVirtualRegister@15bfd87,	ASM.Operand.ASMVirtualRegister@80169cf
	add		ASM.Operand.ASMVirtualRegister@543e710e,	ASM.Operand.ASMVirtualRegister@5427c60c,	ASM.Operand.ASMVirtualRegister@15bfd87
	lw		ASM.Operand.ASMVirtualRegister@57f23557,	0(ASM.Operand.ASMVirtualRegister@543e710e)
	li		ASM.Operand.ASMVirtualRegister@3d0f8e03,	4
	mul		ASM.Operand.ASMVirtualRegister@3d0f8e03,	ASM.Operand.ASMVirtualRegister@3d0f8e03,	ASM.Operand.ASMVirtualRegister@73d4cc9e
	add		ASM.Operand.ASMVirtualRegister@6366ebe0,	ASM.Operand.ASMVirtualRegister@57f23557,	ASM.Operand.ASMVirtualRegister@3d0f8e03
	lw		ASM.Operand.ASMVirtualRegister@44f75083,	0(ASM.Operand.ASMVirtualRegister@6366ebe0)
	li		ASM.Operand.ASMVirtualRegister@2698dc7,	1
	sub		ASM.Operand.ASMVirtualRegister@43d7741f,	zero,	ASM.Operand.ASMVirtualRegister@2698dc7
	xor		ASM.Operand.ASMVirtualRegister@17baae6e,	ASM.Operand.ASMVirtualRegister@44f75083,	ASM.Operand.ASMVirtualRegister@43d7741f
	seqz	ASM.Operand.ASMVirtualRegister@17baae6e,	ASM.Operand.ASMVirtualRegister@17baae6e
	and		ASM.Operand.ASMVirtualRegister@69379752,	ASM.Operand.ASMVirtualRegister@b9afc07,	ASM.Operand.ASMVirtualRegister@17baae6e
	mv		ASM.Operand.ASMVirtualRegister@382db087,	ASM.Operand.ASMVirtualRegister@69379752
	j		.main.27_and_terminate_block
.main.27_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@27fe3806,	ASM.Operand.ASMVirtualRegister@382db087
	beqz	ASM.Operand.ASMVirtualRegister@27fe3806,	.main.28_if_terminate
	j		.main.28_if_true
.main.28_if_true:
	mv		ASM.Operand.ASMVirtualRegister@5f71c76a,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@1d7acb34,	ASM.Operand.ASMVirtualRegister@5f341870
	li		ASM.Operand.ASMVirtualRegister@48a242ce,	1
	add		ASM.Operand.ASMVirtualRegister@1e4a7dd4,	ASM.Operand.ASMVirtualRegister@1d7acb34,	ASM.Operand.ASMVirtualRegister@48a242ce
	mv		ASM.Operand.ASMVirtualRegister@5f341870,	ASM.Operand.ASMVirtualRegister@1e4a7dd4
	mv		ASM.Operand.ASMVirtualRegister@4f51b3e0,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@4b9e255,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@5e57643e,	4
	mul		ASM.Operand.ASMVirtualRegister@5e57643e,	ASM.Operand.ASMVirtualRegister@5e57643e,	ASM.Operand.ASMVirtualRegister@4f51b3e0
	add		ASM.Operand.ASMVirtualRegister@133e16fd,	ASM.Operand.ASMVirtualRegister@4b9e255,	ASM.Operand.ASMVirtualRegister@5e57643e
	lw		ASM.Operand.ASMVirtualRegister@51b279c9,	0(ASM.Operand.ASMVirtualRegister@133e16fd)
	mv		ASM.Operand.ASMVirtualRegister@1ad282e0,	ASM.Operand.ASMVirtualRegister@271053e1
	sw		ASM.Operand.ASMVirtualRegister@1ad282e0,	0(ASM.Operand.ASMVirtualRegister@133e16fd)
	mv		ASM.Operand.ASMVirtualRegister@7f416310,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@1cab0bfb,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@5e955596,	4
	mul		ASM.Operand.ASMVirtualRegister@5e955596,	ASM.Operand.ASMVirtualRegister@5e955596,	ASM.Operand.ASMVirtualRegister@7f416310
	add		ASM.Operand.ASMVirtualRegister@50de0926,	ASM.Operand.ASMVirtualRegister@1cab0bfb,	ASM.Operand.ASMVirtualRegister@5e955596
	lw		ASM.Operand.ASMVirtualRegister@2473b9ce,	0(ASM.Operand.ASMVirtualRegister@50de0926)
	mv		ASM.Operand.ASMVirtualRegister@60438a68,	ASM.Operand.ASMVirtualRegister@589838eb
	sw		ASM.Operand.ASMVirtualRegister@60438a68,	0(ASM.Operand.ASMVirtualRegister@50de0926)
	mv		ASM.Operand.ASMVirtualRegister@140e5a13,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@3439f68d,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@dbd940d,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@71d15f18,	4
	mul		ASM.Operand.ASMVirtualRegister@71d15f18,	ASM.Operand.ASMVirtualRegister@71d15f18,	ASM.Operand.ASMVirtualRegister@3439f68d
	add		ASM.Operand.ASMVirtualRegister@17695df3,	ASM.Operand.ASMVirtualRegister@dbd940d,	ASM.Operand.ASMVirtualRegister@71d15f18
	lw		ASM.Operand.ASMVirtualRegister@6c9f5c0d,	0(ASM.Operand.ASMVirtualRegister@17695df3)
	li		ASM.Operand.ASMVirtualRegister@de3a06f,	4
	mul		ASM.Operand.ASMVirtualRegister@de3a06f,	ASM.Operand.ASMVirtualRegister@de3a06f,	ASM.Operand.ASMVirtualRegister@140e5a13
	add		ASM.Operand.ASMVirtualRegister@76b10754,	ASM.Operand.ASMVirtualRegister@6c9f5c0d,	ASM.Operand.ASMVirtualRegister@de3a06f
	lw		ASM.Operand.ASMVirtualRegister@2bea5ab4,	0(ASM.Operand.ASMVirtualRegister@76b10754)
	mv		ASM.Operand.ASMVirtualRegister@3d8314f0,	ASM.Operand.ASMVirtualRegister@4f7d0008
	li		ASM.Operand.ASMVirtualRegister@2df32bf7,	1
	add		ASM.Operand.ASMVirtualRegister@530612ba,	ASM.Operand.ASMVirtualRegister@3d8314f0,	ASM.Operand.ASMVirtualRegister@2df32bf7
	sw		ASM.Operand.ASMVirtualRegister@530612ba,	0(ASM.Operand.ASMVirtualRegister@76b10754)
	mv		ASM.Operand.ASMVirtualRegister@2a40cd94,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@f4168b8,	ASM.Operand.ASMVirtualRegister@3c0ecd4b
	xor		ASM.Operand.ASMVirtualRegister@3bd94634,	ASM.Operand.ASMVirtualRegister@2a40cd94,	ASM.Operand.ASMVirtualRegister@f4168b8
	seqz	ASM.Operand.ASMVirtualRegister@3bd94634,	ASM.Operand.ASMVirtualRegister@3bd94634
	mv		ASM.Operand.ASMVirtualRegister@58a90037,	ASM.Operand.ASMVirtualRegister@3bd94634
	beqz	ASM.Operand.ASMVirtualRegister@3bd94634,	.main.29_and_terminate_block
	j		.main.29_and_rhs_block
.main.29_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@74294adb,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@70a9f84e,	ASM.Operand.ASMVirtualRegister@14bf9759
	xor		ASM.Operand.ASMVirtualRegister@130f889,	ASM.Operand.ASMVirtualRegister@74294adb,	ASM.Operand.ASMVirtualRegister@70a9f84e
	seqz	ASM.Operand.ASMVirtualRegister@130f889,	ASM.Operand.ASMVirtualRegister@130f889
	and		ASM.Operand.ASMVirtualRegister@1188e820,	ASM.Operand.ASMVirtualRegister@3bd94634,	ASM.Operand.ASMVirtualRegister@130f889
	mv		ASM.Operand.ASMVirtualRegister@58a90037,	ASM.Operand.ASMVirtualRegister@1188e820
	j		.main.29_and_terminate_block
.main.29_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@2f490758,	ASM.Operand.ASMVirtualRegister@58a90037
	beqz	ASM.Operand.ASMVirtualRegister@2f490758,	.main.30_if_terminate
	j		.main.30_if_true
.main.30_if_true:
	mv		ASM.Operand.ASMVirtualRegister@101df177,	ASM.Operand.ASMVirtualRegister@553f17c
	li		ASM.Operand.ASMVirtualRegister@166fa74d,	1
	mv		ASM.Operand.ASMVirtualRegister@553f17c,	ASM.Operand.ASMVirtualRegister@166fa74d
	j		.main.30_if_terminate
.main.30_if_terminate:
	j		.main.28_if_terminate
.main.28_if_terminate:
	mv		ASM.Operand.ASMVirtualRegister@40f08448,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@276438c9,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@588df31b,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@33b37288,	4
	mul		ASM.Operand.ASMVirtualRegister@33b37288,	ASM.Operand.ASMVirtualRegister@33b37288,	ASM.Operand.ASMVirtualRegister@276438c9
	add		ASM.Operand.ASMVirtualRegister@77a57272,	ASM.Operand.ASMVirtualRegister@588df31b,	ASM.Operand.ASMVirtualRegister@33b37288
	lw		ASM.Operand.ASMVirtualRegister@7181ae3f,	0(ASM.Operand.ASMVirtualRegister@77a57272)
	li		ASM.Operand.ASMVirtualRegister@46238e3f,	2
	sub		ASM.Operand.ASMVirtualRegister@6e2c9341,	ASM.Operand.ASMVirtualRegister@7181ae3f,	ASM.Operand.ASMVirtualRegister@46238e3f
	mv		ASM.Operand.ASMVirtualRegister@271053e1,	ASM.Operand.ASMVirtualRegister@6e2c9341
	mv		ASM.Operand.ASMVirtualRegister@32464a14,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@4e4aea35,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@1442d7b5,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@1efee8e7,	4
	mul		ASM.Operand.ASMVirtualRegister@1efee8e7,	ASM.Operand.ASMVirtualRegister@1efee8e7,	ASM.Operand.ASMVirtualRegister@4e4aea35
	add		ASM.Operand.ASMVirtualRegister@1ee807c6,	ASM.Operand.ASMVirtualRegister@1442d7b5,	ASM.Operand.ASMVirtualRegister@1efee8e7
	lw		ASM.Operand.ASMVirtualRegister@76a4d6c,	0(ASM.Operand.ASMVirtualRegister@1ee807c6)
	li		ASM.Operand.ASMVirtualRegister@517cd4b,	1
	add		ASM.Operand.ASMVirtualRegister@6cc7b4de,	ASM.Operand.ASMVirtualRegister@76a4d6c,	ASM.Operand.ASMVirtualRegister@517cd4b
	mv		ASM.Operand.ASMVirtualRegister@589838eb,	ASM.Operand.ASMVirtualRegister@6cc7b4de
	mv		ASM.Operand.ASMVirtualRegister@32cf48b7,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@679b62af,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@32cf48b7
	mv		a1,	ASM.Operand.ASMVirtualRegister@679b62af
	call	check
	mv		ASM.Operand.ASMVirtualRegister@5cdd8682,	a0
	mv		ASM.Operand.ASMVirtualRegister@d6da883,	ASM.Operand.ASMVirtualRegister@5cdd8682
	beqz	ASM.Operand.ASMVirtualRegister@5cdd8682,	.main.31_and_terminate_block
	j		.main.31_and_rhs_block
.main.31_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@45afc369,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@799d4f69,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@45afc369
	mv		a1,	ASM.Operand.ASMVirtualRegister@799d4f69
	call	check
	mv		ASM.Operand.ASMVirtualRegister@49c43f4e,	a0
	and		ASM.Operand.ASMVirtualRegister@290dbf45,	ASM.Operand.ASMVirtualRegister@5cdd8682,	ASM.Operand.ASMVirtualRegister@49c43f4e
	mv		ASM.Operand.ASMVirtualRegister@d6da883,	ASM.Operand.ASMVirtualRegister@290dbf45
	j		.main.31_and_terminate_block
.main.31_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@12028586,	ASM.Operand.ASMVirtualRegister@d6da883
	mv		ASM.Operand.ASMVirtualRegister@17776a8,	ASM.Operand.ASMVirtualRegister@12028586
	beqz	ASM.Operand.ASMVirtualRegister@12028586,	.main.32_and_terminate_block
	j		.main.32_and_rhs_block
.main.32_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@69a10787,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@2d127a61,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@2bbaf4f0,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@11c20519,	4
	mul		ASM.Operand.ASMVirtualRegister@11c20519,	ASM.Operand.ASMVirtualRegister@11c20519,	ASM.Operand.ASMVirtualRegister@2d127a61
	add		ASM.Operand.ASMVirtualRegister@70beb599,	ASM.Operand.ASMVirtualRegister@2bbaf4f0,	ASM.Operand.ASMVirtualRegister@11c20519
	lw		ASM.Operand.ASMVirtualRegister@4e41089d,	0(ASM.Operand.ASMVirtualRegister@70beb599)
	li		ASM.Operand.ASMVirtualRegister@32a068d1,	4
	mul		ASM.Operand.ASMVirtualRegister@32a068d1,	ASM.Operand.ASMVirtualRegister@32a068d1,	ASM.Operand.ASMVirtualRegister@69a10787
	add		ASM.Operand.ASMVirtualRegister@33cb5951,	ASM.Operand.ASMVirtualRegister@4e41089d,	ASM.Operand.ASMVirtualRegister@32a068d1
	lw		ASM.Operand.ASMVirtualRegister@365c30cc,	0(ASM.Operand.ASMVirtualRegister@33cb5951)
	li		ASM.Operand.ASMVirtualRegister@701fc37a,	1
	sub		ASM.Operand.ASMVirtualRegister@4148db48,	zero,	ASM.Operand.ASMVirtualRegister@701fc37a
	xor		ASM.Operand.ASMVirtualRegister@282003e1,	ASM.Operand.ASMVirtualRegister@365c30cc,	ASM.Operand.ASMVirtualRegister@4148db48
	seqz	ASM.Operand.ASMVirtualRegister@282003e1,	ASM.Operand.ASMVirtualRegister@282003e1
	and		ASM.Operand.ASMVirtualRegister@7fad8c79,	ASM.Operand.ASMVirtualRegister@12028586,	ASM.Operand.ASMVirtualRegister@282003e1
	mv		ASM.Operand.ASMVirtualRegister@17776a8,	ASM.Operand.ASMVirtualRegister@7fad8c79
	j		.main.32_and_terminate_block
.main.32_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@71a794e5,	ASM.Operand.ASMVirtualRegister@17776a8
	beqz	ASM.Operand.ASMVirtualRegister@71a794e5,	.main.33_if_terminate
	j		.main.33_if_true
.main.33_if_true:
	mv		ASM.Operand.ASMVirtualRegister@76329302,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@5e25a92e,	ASM.Operand.ASMVirtualRegister@5f341870
	li		ASM.Operand.ASMVirtualRegister@4df828d7,	1
	add		ASM.Operand.ASMVirtualRegister@b59d31,	ASM.Operand.ASMVirtualRegister@5e25a92e,	ASM.Operand.ASMVirtualRegister@4df828d7
	mv		ASM.Operand.ASMVirtualRegister@5f341870,	ASM.Operand.ASMVirtualRegister@b59d31
	mv		ASM.Operand.ASMVirtualRegister@62fdb4a6,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@11e21d0e,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@1dd02175,	4
	mul		ASM.Operand.ASMVirtualRegister@1dd02175,	ASM.Operand.ASMVirtualRegister@1dd02175,	ASM.Operand.ASMVirtualRegister@62fdb4a6
	add		ASM.Operand.ASMVirtualRegister@31206beb,	ASM.Operand.ASMVirtualRegister@11e21d0e,	ASM.Operand.ASMVirtualRegister@1dd02175
	lw		ASM.Operand.ASMVirtualRegister@3e77a1ed,	0(ASM.Operand.ASMVirtualRegister@31206beb)
	mv		ASM.Operand.ASMVirtualRegister@3ffcd140,	ASM.Operand.ASMVirtualRegister@271053e1
	sw		ASM.Operand.ASMVirtualRegister@3ffcd140,	0(ASM.Operand.ASMVirtualRegister@31206beb)
	mv		ASM.Operand.ASMVirtualRegister@23bb8443,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@1176dcec,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@120d6fe6,	4
	mul		ASM.Operand.ASMVirtualRegister@120d6fe6,	ASM.Operand.ASMVirtualRegister@120d6fe6,	ASM.Operand.ASMVirtualRegister@23bb8443
	add		ASM.Operand.ASMVirtualRegister@4ba2ca36,	ASM.Operand.ASMVirtualRegister@1176dcec,	ASM.Operand.ASMVirtualRegister@120d6fe6
	lw		ASM.Operand.ASMVirtualRegister@3444d69d,	0(ASM.Operand.ASMVirtualRegister@4ba2ca36)
	mv		ASM.Operand.ASMVirtualRegister@1372ed45,	ASM.Operand.ASMVirtualRegister@589838eb
	sw		ASM.Operand.ASMVirtualRegister@1372ed45,	0(ASM.Operand.ASMVirtualRegister@4ba2ca36)
	mv		ASM.Operand.ASMVirtualRegister@6a79c292,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@37574691,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@25359ed8,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@21a947fe,	4
	mul		ASM.Operand.ASMVirtualRegister@21a947fe,	ASM.Operand.ASMVirtualRegister@21a947fe,	ASM.Operand.ASMVirtualRegister@37574691
	add		ASM.Operand.ASMVirtualRegister@5606c0b,	ASM.Operand.ASMVirtualRegister@25359ed8,	ASM.Operand.ASMVirtualRegister@21a947fe
	lw		ASM.Operand.ASMVirtualRegister@80ec1f8,	0(ASM.Operand.ASMVirtualRegister@5606c0b)
	li		ASM.Operand.ASMVirtualRegister@1445d7f,	4
	mul		ASM.Operand.ASMVirtualRegister@1445d7f,	ASM.Operand.ASMVirtualRegister@1445d7f,	ASM.Operand.ASMVirtualRegister@6a79c292
	add		ASM.Operand.ASMVirtualRegister@6a396c1e,	ASM.Operand.ASMVirtualRegister@80ec1f8,	ASM.Operand.ASMVirtualRegister@1445d7f
	lw		ASM.Operand.ASMVirtualRegister@6c3f5566,	0(ASM.Operand.ASMVirtualRegister@6a396c1e)
	mv		ASM.Operand.ASMVirtualRegister@12405818,	ASM.Operand.ASMVirtualRegister@4f7d0008
	li		ASM.Operand.ASMVirtualRegister@314c508a,	1
	add		ASM.Operand.ASMVirtualRegister@10b48321,	ASM.Operand.ASMVirtualRegister@12405818,	ASM.Operand.ASMVirtualRegister@314c508a
	sw		ASM.Operand.ASMVirtualRegister@10b48321,	0(ASM.Operand.ASMVirtualRegister@6a396c1e)
	mv		ASM.Operand.ASMVirtualRegister@6b67034,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@16267862,	ASM.Operand.ASMVirtualRegister@3c0ecd4b
	xor		ASM.Operand.ASMVirtualRegister@453da22c,	ASM.Operand.ASMVirtualRegister@6b67034,	ASM.Operand.ASMVirtualRegister@16267862
	seqz	ASM.Operand.ASMVirtualRegister@453da22c,	ASM.Operand.ASMVirtualRegister@453da22c
	mv		ASM.Operand.ASMVirtualRegister@71248c21,	ASM.Operand.ASMVirtualRegister@453da22c
	beqz	ASM.Operand.ASMVirtualRegister@453da22c,	.main.34_and_terminate_block
	j		.main.34_and_rhs_block
.main.34_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@442675e1,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@6166e06f,	ASM.Operand.ASMVirtualRegister@14bf9759
	xor		ASM.Operand.ASMVirtualRegister@49e202ad,	ASM.Operand.ASMVirtualRegister@442675e1,	ASM.Operand.ASMVirtualRegister@6166e06f
	seqz	ASM.Operand.ASMVirtualRegister@49e202ad,	ASM.Operand.ASMVirtualRegister@49e202ad
	and		ASM.Operand.ASMVirtualRegister@1c72da34,	ASM.Operand.ASMVirtualRegister@453da22c,	ASM.Operand.ASMVirtualRegister@49e202ad
	mv		ASM.Operand.ASMVirtualRegister@71248c21,	ASM.Operand.ASMVirtualRegister@1c72da34
	j		.main.34_and_terminate_block
.main.34_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@6b0c2d26,	ASM.Operand.ASMVirtualRegister@71248c21
	beqz	ASM.Operand.ASMVirtualRegister@6b0c2d26,	.main.35_if_terminate
	j		.main.35_if_true
.main.35_if_true:
	mv		ASM.Operand.ASMVirtualRegister@3d3fcdb0,	ASM.Operand.ASMVirtualRegister@553f17c
	li		ASM.Operand.ASMVirtualRegister@641147d0,	1
	mv		ASM.Operand.ASMVirtualRegister@553f17c,	ASM.Operand.ASMVirtualRegister@641147d0
	j		.main.35_if_terminate
.main.35_if_terminate:
	j		.main.33_if_terminate
.main.33_if_terminate:
	mv		ASM.Operand.ASMVirtualRegister@6e38921c,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@64d7f7e0,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@27c6e487,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@49070868,	4
	mul		ASM.Operand.ASMVirtualRegister@49070868,	ASM.Operand.ASMVirtualRegister@49070868,	ASM.Operand.ASMVirtualRegister@64d7f7e0
	add		ASM.Operand.ASMVirtualRegister@6385cb26,	ASM.Operand.ASMVirtualRegister@27c6e487,	ASM.Operand.ASMVirtualRegister@49070868
	lw		ASM.Operand.ASMVirtualRegister@38364841,	0(ASM.Operand.ASMVirtualRegister@6385cb26)
	li		ASM.Operand.ASMVirtualRegister@28c4711c,	2
	add		ASM.Operand.ASMVirtualRegister@59717824,	ASM.Operand.ASMVirtualRegister@38364841,	ASM.Operand.ASMVirtualRegister@28c4711c
	mv		ASM.Operand.ASMVirtualRegister@271053e1,	ASM.Operand.ASMVirtualRegister@59717824
	mv		ASM.Operand.ASMVirtualRegister@146044d7,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@1e9e725a,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@15d9bc04,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@473b46c3,	4
	mul		ASM.Operand.ASMVirtualRegister@473b46c3,	ASM.Operand.ASMVirtualRegister@473b46c3,	ASM.Operand.ASMVirtualRegister@1e9e725a
	add		ASM.Operand.ASMVirtualRegister@516be40f,	ASM.Operand.ASMVirtualRegister@15d9bc04,	ASM.Operand.ASMVirtualRegister@473b46c3
	lw		ASM.Operand.ASMVirtualRegister@3c0a50da,	0(ASM.Operand.ASMVirtualRegister@516be40f)
	li		ASM.Operand.ASMVirtualRegister@646be2c3,	1
	sub		ASM.Operand.ASMVirtualRegister@797badd3,	ASM.Operand.ASMVirtualRegister@3c0a50da,	ASM.Operand.ASMVirtualRegister@646be2c3
	mv		ASM.Operand.ASMVirtualRegister@589838eb,	ASM.Operand.ASMVirtualRegister@797badd3
	mv		ASM.Operand.ASMVirtualRegister@77be656f,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@19dc67c2,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@77be656f
	mv		a1,	ASM.Operand.ASMVirtualRegister@19dc67c2
	call	check
	mv		ASM.Operand.ASMVirtualRegister@221af3c0,	a0
	mv		ASM.Operand.ASMVirtualRegister@62bd765,	ASM.Operand.ASMVirtualRegister@221af3c0
	beqz	ASM.Operand.ASMVirtualRegister@221af3c0,	.main.36_and_terminate_block
	j		.main.36_and_rhs_block
.main.36_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@23a5fd2,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@78a2da20,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@23a5fd2
	mv		a1,	ASM.Operand.ASMVirtualRegister@78a2da20
	call	check
	mv		ASM.Operand.ASMVirtualRegister@dd3b207,	a0
	and		ASM.Operand.ASMVirtualRegister@551bdc27,	ASM.Operand.ASMVirtualRegister@221af3c0,	ASM.Operand.ASMVirtualRegister@dd3b207
	mv		ASM.Operand.ASMVirtualRegister@62bd765,	ASM.Operand.ASMVirtualRegister@551bdc27
	j		.main.36_and_terminate_block
.main.36_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@58fdd99,	ASM.Operand.ASMVirtualRegister@62bd765
	mv		ASM.Operand.ASMVirtualRegister@6b1274d2,	ASM.Operand.ASMVirtualRegister@58fdd99
	beqz	ASM.Operand.ASMVirtualRegister@58fdd99,	.main.37_and_terminate_block
	j		.main.37_and_rhs_block
.main.37_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@7bc1a03d,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@70b0b186,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@ba8d91c,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@7364985f,	4
	mul		ASM.Operand.ASMVirtualRegister@7364985f,	ASM.Operand.ASMVirtualRegister@7364985f,	ASM.Operand.ASMVirtualRegister@70b0b186
	add		ASM.Operand.ASMVirtualRegister@5d20e46,	ASM.Operand.ASMVirtualRegister@ba8d91c,	ASM.Operand.ASMVirtualRegister@7364985f
	lw		ASM.Operand.ASMVirtualRegister@709ba3fb,	0(ASM.Operand.ASMVirtualRegister@5d20e46)
	li		ASM.Operand.ASMVirtualRegister@3d36e4cd,	4
	mul		ASM.Operand.ASMVirtualRegister@3d36e4cd,	ASM.Operand.ASMVirtualRegister@3d36e4cd,	ASM.Operand.ASMVirtualRegister@7bc1a03d
	add		ASM.Operand.ASMVirtualRegister@6a472554,	ASM.Operand.ASMVirtualRegister@709ba3fb,	ASM.Operand.ASMVirtualRegister@3d36e4cd
	lw		ASM.Operand.ASMVirtualRegister@7ff2a664,	0(ASM.Operand.ASMVirtualRegister@6a472554)
	li		ASM.Operand.ASMVirtualRegister@525b461a,	1
	sub		ASM.Operand.ASMVirtualRegister@58c1c010,	zero,	ASM.Operand.ASMVirtualRegister@525b461a
	xor		ASM.Operand.ASMVirtualRegister@b7f23d9,	ASM.Operand.ASMVirtualRegister@7ff2a664,	ASM.Operand.ASMVirtualRegister@58c1c010
	seqz	ASM.Operand.ASMVirtualRegister@b7f23d9,	ASM.Operand.ASMVirtualRegister@b7f23d9
	and		ASM.Operand.ASMVirtualRegister@61d47554,	ASM.Operand.ASMVirtualRegister@58fdd99,	ASM.Operand.ASMVirtualRegister@b7f23d9
	mv		ASM.Operand.ASMVirtualRegister@6b1274d2,	ASM.Operand.ASMVirtualRegister@61d47554
	j		.main.37_and_terminate_block
.main.37_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@69b794e2,	ASM.Operand.ASMVirtualRegister@6b1274d2
	beqz	ASM.Operand.ASMVirtualRegister@69b794e2,	.main.38_if_terminate
	j		.main.38_if_true
.main.38_if_true:
	mv		ASM.Operand.ASMVirtualRegister@3f200884,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@4d339552,	ASM.Operand.ASMVirtualRegister@5f341870
	li		ASM.Operand.ASMVirtualRegister@f0f2775,	1
	add		ASM.Operand.ASMVirtualRegister@5a4aa2f2,	ASM.Operand.ASMVirtualRegister@4d339552,	ASM.Operand.ASMVirtualRegister@f0f2775
	mv		ASM.Operand.ASMVirtualRegister@5f341870,	ASM.Operand.ASMVirtualRegister@5a4aa2f2
	mv		ASM.Operand.ASMVirtualRegister@6591f517,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@345965f2,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@429bd883,	4
	mul		ASM.Operand.ASMVirtualRegister@429bd883,	ASM.Operand.ASMVirtualRegister@429bd883,	ASM.Operand.ASMVirtualRegister@6591f517
	add		ASM.Operand.ASMVirtualRegister@4d49af10,	ASM.Operand.ASMVirtualRegister@345965f2,	ASM.Operand.ASMVirtualRegister@429bd883
	lw		ASM.Operand.ASMVirtualRegister@279ad2e3,	0(ASM.Operand.ASMVirtualRegister@4d49af10)
	mv		ASM.Operand.ASMVirtualRegister@58134517,	ASM.Operand.ASMVirtualRegister@271053e1
	sw		ASM.Operand.ASMVirtualRegister@58134517,	0(ASM.Operand.ASMVirtualRegister@4d49af10)
	mv		ASM.Operand.ASMVirtualRegister@4450d156,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@4461c7e3,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@351d0846,	4
	mul		ASM.Operand.ASMVirtualRegister@351d0846,	ASM.Operand.ASMVirtualRegister@351d0846,	ASM.Operand.ASMVirtualRegister@4450d156
	add		ASM.Operand.ASMVirtualRegister@77e4c80f,	ASM.Operand.ASMVirtualRegister@4461c7e3,	ASM.Operand.ASMVirtualRegister@351d0846
	lw		ASM.Operand.ASMVirtualRegister@35fc6dc4,	0(ASM.Operand.ASMVirtualRegister@77e4c80f)
	mv		ASM.Operand.ASMVirtualRegister@7fe8ea47,	ASM.Operand.ASMVirtualRegister@589838eb
	sw		ASM.Operand.ASMVirtualRegister@7fe8ea47,	0(ASM.Operand.ASMVirtualRegister@77e4c80f)
	mv		ASM.Operand.ASMVirtualRegister@226a82c4,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@731f8236,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@255b53dc,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@1dd92fe2,	4
	mul		ASM.Operand.ASMVirtualRegister@1dd92fe2,	ASM.Operand.ASMVirtualRegister@1dd92fe2,	ASM.Operand.ASMVirtualRegister@731f8236
	add		ASM.Operand.ASMVirtualRegister@6b53e23f,	ASM.Operand.ASMVirtualRegister@255b53dc,	ASM.Operand.ASMVirtualRegister@1dd92fe2
	lw		ASM.Operand.ASMVirtualRegister@64d2d351,	0(ASM.Operand.ASMVirtualRegister@6b53e23f)
	li		ASM.Operand.ASMVirtualRegister@1b68b9a4,	4
	mul		ASM.Operand.ASMVirtualRegister@1b68b9a4,	ASM.Operand.ASMVirtualRegister@1b68b9a4,	ASM.Operand.ASMVirtualRegister@226a82c4
	add		ASM.Operand.ASMVirtualRegister@4f9a3314,	ASM.Operand.ASMVirtualRegister@64d2d351,	ASM.Operand.ASMVirtualRegister@1b68b9a4
	lw		ASM.Operand.ASMVirtualRegister@3b2c72c2,	0(ASM.Operand.ASMVirtualRegister@4f9a3314)
	mv		ASM.Operand.ASMVirtualRegister@491666ad,	ASM.Operand.ASMVirtualRegister@4f7d0008
	li		ASM.Operand.ASMVirtualRegister@176d53b2,	1
	add		ASM.Operand.ASMVirtualRegister@971d0d8,	ASM.Operand.ASMVirtualRegister@491666ad,	ASM.Operand.ASMVirtualRegister@176d53b2
	sw		ASM.Operand.ASMVirtualRegister@971d0d8,	0(ASM.Operand.ASMVirtualRegister@4f9a3314)
	mv		ASM.Operand.ASMVirtualRegister@51931956,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@2b4a2ec7,	ASM.Operand.ASMVirtualRegister@3c0ecd4b
	xor		ASM.Operand.ASMVirtualRegister@564718df,	ASM.Operand.ASMVirtualRegister@51931956,	ASM.Operand.ASMVirtualRegister@2b4a2ec7
	seqz	ASM.Operand.ASMVirtualRegister@564718df,	ASM.Operand.ASMVirtualRegister@564718df
	mv		ASM.Operand.ASMVirtualRegister@51b7e5df,	ASM.Operand.ASMVirtualRegister@564718df
	beqz	ASM.Operand.ASMVirtualRegister@564718df,	.main.39_and_terminate_block
	j		.main.39_and_rhs_block
.main.39_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@18a70f16,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@62e136d3,	ASM.Operand.ASMVirtualRegister@14bf9759
	xor		ASM.Operand.ASMVirtualRegister@c8e4bb0,	ASM.Operand.ASMVirtualRegister@18a70f16,	ASM.Operand.ASMVirtualRegister@62e136d3
	seqz	ASM.Operand.ASMVirtualRegister@c8e4bb0,	ASM.Operand.ASMVirtualRegister@c8e4bb0
	and		ASM.Operand.ASMVirtualRegister@6279cee3,	ASM.Operand.ASMVirtualRegister@564718df,	ASM.Operand.ASMVirtualRegister@c8e4bb0
	mv		ASM.Operand.ASMVirtualRegister@51b7e5df,	ASM.Operand.ASMVirtualRegister@6279cee3
	j		.main.39_and_terminate_block
.main.39_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@4206a205,	ASM.Operand.ASMVirtualRegister@51b7e5df
	beqz	ASM.Operand.ASMVirtualRegister@4206a205,	.main.40_if_terminate
	j		.main.40_if_true
.main.40_if_true:
	mv		ASM.Operand.ASMVirtualRegister@29ba4338,	ASM.Operand.ASMVirtualRegister@553f17c
	li		ASM.Operand.ASMVirtualRegister@57175e74,	1
	mv		ASM.Operand.ASMVirtualRegister@553f17c,	ASM.Operand.ASMVirtualRegister@57175e74
	j		.main.40_if_terminate
.main.40_if_terminate:
	j		.main.38_if_terminate
.main.38_if_terminate:
	mv		ASM.Operand.ASMVirtualRegister@7bb58ca3,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@c540f5a,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@770c2e6b,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@1a052a00,	4
	mul		ASM.Operand.ASMVirtualRegister@1a052a00,	ASM.Operand.ASMVirtualRegister@1a052a00,	ASM.Operand.ASMVirtualRegister@c540f5a
	add		ASM.Operand.ASMVirtualRegister@4d826d77,	ASM.Operand.ASMVirtualRegister@770c2e6b,	ASM.Operand.ASMVirtualRegister@1a052a00
	lw		ASM.Operand.ASMVirtualRegister@61009542,	0(ASM.Operand.ASMVirtualRegister@4d826d77)
	li		ASM.Operand.ASMVirtualRegister@77e9807f,	2
	add		ASM.Operand.ASMVirtualRegister@448ff1a8,	ASM.Operand.ASMVirtualRegister@61009542,	ASM.Operand.ASMVirtualRegister@77e9807f
	mv		ASM.Operand.ASMVirtualRegister@271053e1,	ASM.Operand.ASMVirtualRegister@448ff1a8
	mv		ASM.Operand.ASMVirtualRegister@1a38c59b,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@7f77e91b,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@44a664f2,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@7f9fcf7f,	4
	mul		ASM.Operand.ASMVirtualRegister@7f9fcf7f,	ASM.Operand.ASMVirtualRegister@7f9fcf7f,	ASM.Operand.ASMVirtualRegister@7f77e91b
	add		ASM.Operand.ASMVirtualRegister@2357d90a,	ASM.Operand.ASMVirtualRegister@44a664f2,	ASM.Operand.ASMVirtualRegister@7f9fcf7f
	lw		ASM.Operand.ASMVirtualRegister@6328d34a,	0(ASM.Operand.ASMVirtualRegister@2357d90a)
	li		ASM.Operand.ASMVirtualRegister@145eaa29,	1
	add		ASM.Operand.ASMVirtualRegister@15bb6bea,	ASM.Operand.ASMVirtualRegister@6328d34a,	ASM.Operand.ASMVirtualRegister@145eaa29
	mv		ASM.Operand.ASMVirtualRegister@589838eb,	ASM.Operand.ASMVirtualRegister@15bb6bea
	mv		ASM.Operand.ASMVirtualRegister@8b96fde,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@2d2e5f00,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@8b96fde
	mv		a1,	ASM.Operand.ASMVirtualRegister@2d2e5f00
	call	check
	mv		ASM.Operand.ASMVirtualRegister@4c40b76e,	a0
	mv		ASM.Operand.ASMVirtualRegister@2ea6137,	ASM.Operand.ASMVirtualRegister@4c40b76e
	beqz	ASM.Operand.ASMVirtualRegister@4c40b76e,	.main.41_and_terminate_block
	j		.main.41_and_rhs_block
.main.41_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@41ee392b,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@1e67a849,	ASM.Operand.ASMVirtualRegister@3abbfa04
	mv		a0,	ASM.Operand.ASMVirtualRegister@41ee392b
	mv		a1,	ASM.Operand.ASMVirtualRegister@1e67a849
	call	check
	mv		ASM.Operand.ASMVirtualRegister@57d5872c,	a0
	and		ASM.Operand.ASMVirtualRegister@667a738,	ASM.Operand.ASMVirtualRegister@4c40b76e,	ASM.Operand.ASMVirtualRegister@57d5872c
	mv		ASM.Operand.ASMVirtualRegister@2ea6137,	ASM.Operand.ASMVirtualRegister@667a738
	j		.main.41_and_terminate_block
.main.41_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@36f0f1be,	ASM.Operand.ASMVirtualRegister@2ea6137
	mv		ASM.Operand.ASMVirtualRegister@157632c9,	ASM.Operand.ASMVirtualRegister@36f0f1be
	beqz	ASM.Operand.ASMVirtualRegister@36f0f1be,	.main.42_and_terminate_block
	j		.main.42_and_rhs_block
.main.42_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@6ee12bac,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@55040f2f,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@64c87930,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@400cff1a,	4
	mul		ASM.Operand.ASMVirtualRegister@400cff1a,	ASM.Operand.ASMVirtualRegister@400cff1a,	ASM.Operand.ASMVirtualRegister@55040f2f
	add		ASM.Operand.ASMVirtualRegister@275710fc,	ASM.Operand.ASMVirtualRegister@64c87930,	ASM.Operand.ASMVirtualRegister@400cff1a
	lw		ASM.Operand.ASMVirtualRegister@525f1e4e,	0(ASM.Operand.ASMVirtualRegister@275710fc)
	li		ASM.Operand.ASMVirtualRegister@75f9eccc,	4
	mul		ASM.Operand.ASMVirtualRegister@75f9eccc,	ASM.Operand.ASMVirtualRegister@75f9eccc,	ASM.Operand.ASMVirtualRegister@6ee12bac
	add		ASM.Operand.ASMVirtualRegister@52aa2946,	ASM.Operand.ASMVirtualRegister@525f1e4e,	ASM.Operand.ASMVirtualRegister@75f9eccc
	lw		ASM.Operand.ASMVirtualRegister@4de5031f,	0(ASM.Operand.ASMVirtualRegister@52aa2946)
	li		ASM.Operand.ASMVirtualRegister@67e2d983,	1
	sub		ASM.Operand.ASMVirtualRegister@5d47c63f,	zero,	ASM.Operand.ASMVirtualRegister@67e2d983
	xor		ASM.Operand.ASMVirtualRegister@5ea434c8,	ASM.Operand.ASMVirtualRegister@4de5031f,	ASM.Operand.ASMVirtualRegister@5d47c63f
	seqz	ASM.Operand.ASMVirtualRegister@5ea434c8,	ASM.Operand.ASMVirtualRegister@5ea434c8
	and		ASM.Operand.ASMVirtualRegister@3bbc39f8,	ASM.Operand.ASMVirtualRegister@36f0f1be,	ASM.Operand.ASMVirtualRegister@5ea434c8
	mv		ASM.Operand.ASMVirtualRegister@157632c9,	ASM.Operand.ASMVirtualRegister@3bbc39f8
	j		.main.42_and_terminate_block
.main.42_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@4ae3c1cd,	ASM.Operand.ASMVirtualRegister@157632c9
	beqz	ASM.Operand.ASMVirtualRegister@4ae3c1cd,	.main.43_if_terminate
	j		.main.43_if_true
.main.43_if_true:
	mv		ASM.Operand.ASMVirtualRegister@29f69090,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@568bf312,	ASM.Operand.ASMVirtualRegister@5f341870
	li		ASM.Operand.ASMVirtualRegister@ca263c2,	1
	add		ASM.Operand.ASMVirtualRegister@589b3632,	ASM.Operand.ASMVirtualRegister@568bf312,	ASM.Operand.ASMVirtualRegister@ca263c2
	mv		ASM.Operand.ASMVirtualRegister@5f341870,	ASM.Operand.ASMVirtualRegister@589b3632
	mv		ASM.Operand.ASMVirtualRegister@45f45fa1,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@4c6e276e,	ASM.Operand.ASMVirtualRegister@42dafa95
	li		ASM.Operand.ASMVirtualRegister@534df152,	4
	mul		ASM.Operand.ASMVirtualRegister@534df152,	ASM.Operand.ASMVirtualRegister@534df152,	ASM.Operand.ASMVirtualRegister@45f45fa1
	add		ASM.Operand.ASMVirtualRegister@52e677af,	ASM.Operand.ASMVirtualRegister@4c6e276e,	ASM.Operand.ASMVirtualRegister@534df152
	lw		ASM.Operand.ASMVirtualRegister@35083305,	0(ASM.Operand.ASMVirtualRegister@52e677af)
	mv		ASM.Operand.ASMVirtualRegister@8e0379d,	ASM.Operand.ASMVirtualRegister@271053e1
	sw		ASM.Operand.ASMVirtualRegister@8e0379d,	0(ASM.Operand.ASMVirtualRegister@52e677af)
	mv		ASM.Operand.ASMVirtualRegister@341b80b2,	ASM.Operand.ASMVirtualRegister@5f341870
	mv		ASM.Operand.ASMVirtualRegister@55a1c291,	ASM.Operand.ASMVirtualRegister@6500df86
	li		ASM.Operand.ASMVirtualRegister@2145433b,	4
	mul		ASM.Operand.ASMVirtualRegister@2145433b,	ASM.Operand.ASMVirtualRegister@2145433b,	ASM.Operand.ASMVirtualRegister@341b80b2
	add		ASM.Operand.ASMVirtualRegister@2890c451,	ASM.Operand.ASMVirtualRegister@55a1c291,	ASM.Operand.ASMVirtualRegister@2145433b
	lw		ASM.Operand.ASMVirtualRegister@40e6dfe1,	0(ASM.Operand.ASMVirtualRegister@2890c451)
	mv		ASM.Operand.ASMVirtualRegister@1b083826,	ASM.Operand.ASMVirtualRegister@589838eb
	sw		ASM.Operand.ASMVirtualRegister@1b083826,	0(ASM.Operand.ASMVirtualRegister@2890c451)
	mv		ASM.Operand.ASMVirtualRegister@105fece7,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@3ec300f1,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@482cd91f,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@123f1134,	4
	mul		ASM.Operand.ASMVirtualRegister@123f1134,	ASM.Operand.ASMVirtualRegister@123f1134,	ASM.Operand.ASMVirtualRegister@3ec300f1
	add		ASM.Operand.ASMVirtualRegister@7d68ef40,	ASM.Operand.ASMVirtualRegister@482cd91f,	ASM.Operand.ASMVirtualRegister@123f1134
	lw		ASM.Operand.ASMVirtualRegister@5b0abc94,	0(ASM.Operand.ASMVirtualRegister@7d68ef40)
	li		ASM.Operand.ASMVirtualRegister@75c072cb,	4
	mul		ASM.Operand.ASMVirtualRegister@75c072cb,	ASM.Operand.ASMVirtualRegister@75c072cb,	ASM.Operand.ASMVirtualRegister@105fece7
	add		ASM.Operand.ASMVirtualRegister@1f1c7bf6,	ASM.Operand.ASMVirtualRegister@5b0abc94,	ASM.Operand.ASMVirtualRegister@75c072cb
	lw		ASM.Operand.ASMVirtualRegister@25b485ba,	0(ASM.Operand.ASMVirtualRegister@1f1c7bf6)
	mv		ASM.Operand.ASMVirtualRegister@2b546384,	ASM.Operand.ASMVirtualRegister@4f7d0008
	li		ASM.Operand.ASMVirtualRegister@5d740a0f,	1
	add		ASM.Operand.ASMVirtualRegister@214b199c,	ASM.Operand.ASMVirtualRegister@2b546384,	ASM.Operand.ASMVirtualRegister@5d740a0f
	sw		ASM.Operand.ASMVirtualRegister@214b199c,	0(ASM.Operand.ASMVirtualRegister@1f1c7bf6)
	mv		ASM.Operand.ASMVirtualRegister@20d3d15a,	ASM.Operand.ASMVirtualRegister@271053e1
	mv		ASM.Operand.ASMVirtualRegister@2893de87,	ASM.Operand.ASMVirtualRegister@3c0ecd4b
	xor		ASM.Operand.ASMVirtualRegister@55ca8de8,	ASM.Operand.ASMVirtualRegister@20d3d15a,	ASM.Operand.ASMVirtualRegister@2893de87
	seqz	ASM.Operand.ASMVirtualRegister@55ca8de8,	ASM.Operand.ASMVirtualRegister@55ca8de8
	mv		ASM.Operand.ASMVirtualRegister@2c34f934,	ASM.Operand.ASMVirtualRegister@55ca8de8
	beqz	ASM.Operand.ASMVirtualRegister@55ca8de8,	.main.44_and_terminate_block
	j		.main.44_and_rhs_block
.main.44_and_rhs_block:
	mv		ASM.Operand.ASMVirtualRegister@12d3a4e9,	ASM.Operand.ASMVirtualRegister@589838eb
	mv		ASM.Operand.ASMVirtualRegister@240237d2,	ASM.Operand.ASMVirtualRegister@14bf9759
	xor		ASM.Operand.ASMVirtualRegister@25a65b77,	ASM.Operand.ASMVirtualRegister@12d3a4e9,	ASM.Operand.ASMVirtualRegister@240237d2
	seqz	ASM.Operand.ASMVirtualRegister@25a65b77,	ASM.Operand.ASMVirtualRegister@25a65b77
	and		ASM.Operand.ASMVirtualRegister@2ed0fbae,	ASM.Operand.ASMVirtualRegister@55ca8de8,	ASM.Operand.ASMVirtualRegister@25a65b77
	mv		ASM.Operand.ASMVirtualRegister@2c34f934,	ASM.Operand.ASMVirtualRegister@2ed0fbae
	j		.main.44_and_terminate_block
.main.44_and_terminate_block:
	mv		ASM.Operand.ASMVirtualRegister@212bf671,	ASM.Operand.ASMVirtualRegister@2c34f934
	beqz	ASM.Operand.ASMVirtualRegister@212bf671,	.main.45_if_terminate
	j		.main.45_if_true
.main.45_if_true:
	mv		ASM.Operand.ASMVirtualRegister@14a2f921,	ASM.Operand.ASMVirtualRegister@553f17c
	li		ASM.Operand.ASMVirtualRegister@3c87521,	1
	mv		ASM.Operand.ASMVirtualRegister@553f17c,	ASM.Operand.ASMVirtualRegister@3c87521
	j		.main.45_if_terminate
.main.45_if_terminate:
	j		.main.43_if_terminate
.main.43_if_terminate:
	mv		ASM.Operand.ASMVirtualRegister@2aece37d,	ASM.Operand.ASMVirtualRegister@553f17c
	li		ASM.Operand.ASMVirtualRegister@548a102f,	1
	xor		ASM.Operand.ASMVirtualRegister@5762806e,	ASM.Operand.ASMVirtualRegister@2aece37d,	ASM.Operand.ASMVirtualRegister@548a102f
	seqz	ASM.Operand.ASMVirtualRegister@5762806e,	ASM.Operand.ASMVirtualRegister@5762806e
	beqz	ASM.Operand.ASMVirtualRegister@5762806e,	.main.46_if_terminate
	j		.main.46_if_true
.main.46_if_true:
	j		.main.5_while_terminate
.main.46_if_terminate:
	mv		ASM.Operand.ASMVirtualRegister@17c386de,	ASM.Operand.ASMVirtualRegister@57fffcd7
	mv		ASM.Operand.ASMVirtualRegister@5af97850,	ASM.Operand.ASMVirtualRegister@57fffcd7
	li		ASM.Operand.ASMVirtualRegister@5ef60048,	1
	add		ASM.Operand.ASMVirtualRegister@1d548a08,	ASM.Operand.ASMVirtualRegister@5af97850,	ASM.Operand.ASMVirtualRegister@5ef60048
	mv		ASM.Operand.ASMVirtualRegister@57fffcd7,	ASM.Operand.ASMVirtualRegister@1d548a08
	j		.main.5_while_condition
.main.5_while_terminate:
	mv		ASM.Operand.ASMVirtualRegister@16aa0a0a,	ASM.Operand.ASMVirtualRegister@553f17c
	li		ASM.Operand.ASMVirtualRegister@780cb77,	1
	xor		ASM.Operand.ASMVirtualRegister@691a7f8f,	ASM.Operand.ASMVirtualRegister@16aa0a0a,	ASM.Operand.ASMVirtualRegister@780cb77
	seqz	ASM.Operand.ASMVirtualRegister@691a7f8f,	ASM.Operand.ASMVirtualRegister@691a7f8f
	beqz	ASM.Operand.ASMVirtualRegister@691a7f8f,	.main.47_if_false
	j		.main.47_if_true
.main.47_if_true:
	mv		ASM.Operand.ASMVirtualRegister@50a7bc6e,	ASM.Operand.ASMVirtualRegister@14bf9759
	mv		ASM.Operand.ASMVirtualRegister@161b062a,	ASM.Operand.ASMVirtualRegister@3c0ecd4b
	mv		ASM.Operand.ASMVirtualRegister@17c1bced,	ASM.Operand.ASMVirtualRegister@402a079c
	li		ASM.Operand.ASMVirtualRegister@2d9d4f9d,	4
	mul		ASM.Operand.ASMVirtualRegister@2d9d4f9d,	ASM.Operand.ASMVirtualRegister@2d9d4f9d,	ASM.Operand.ASMVirtualRegister@161b062a
	add		ASM.Operand.ASMVirtualRegister@4034c28c,	ASM.Operand.ASMVirtualRegister@17c1bced,	ASM.Operand.ASMVirtualRegister@2d9d4f9d
	lw		ASM.Operand.ASMVirtualRegister@e50a6f6,	0(ASM.Operand.ASMVirtualRegister@4034c28c)
	li		ASM.Operand.ASMVirtualRegister@14ec4505,	4
	mul		ASM.Operand.ASMVirtualRegister@14ec4505,	ASM.Operand.ASMVirtualRegister@14ec4505,	ASM.Operand.ASMVirtualRegister@50a7bc6e
	add		ASM.Operand.ASMVirtualRegister@53ca01a2,	ASM.Operand.ASMVirtualRegister@e50a6f6,	ASM.Operand.ASMVirtualRegister@14ec4505
	lw		ASM.Operand.ASMVirtualRegister@358c99f5,	0(ASM.Operand.ASMVirtualRegister@53ca01a2)
	mv		a0,	ASM.Operand.ASMVirtualRegister@358c99f5
	call	toString
	mv		ASM.Operand.ASMVirtualRegister@3ee0fea4,	a0
	mv		a0,	ASM.Operand.ASMVirtualRegister@3ee0fea4
	call	println
	j		.main.47_if_terminate
.main.47_if_false:
	la		ASM.Operand.ASMVirtualRegister@4b168fa9,	str.0
	la		ASM.Operand.ASMVirtualRegister@4b168fa9,	str.0
	mv		a0,	ASM.Operand.ASMVirtualRegister@4b168fa9
	call	print
	j		.main.47_if_terminate
.main.47_if_terminate:
	mv		ASM.Operand.ASMVirtualRegister@239963d8,	zero
	j		.main.return
.main.return:
	mv		ASM.Operand.ASMVirtualRegister@1a84f40f,	ASM.Operand.ASMVirtualRegister@239963d8
	mv		s0,	ASM.Operand.ASMVirtualRegister@1a968a59
	mv		s1,	ASM.Operand.ASMVirtualRegister@4667ae56
	mv		s2,	ASM.Operand.ASMVirtualRegister@77cd7a0
	mv		s3,	ASM.Operand.ASMVirtualRegister@204f30ec
	mv		s4,	ASM.Operand.ASMVirtualRegister@e25b2fe
	mv		s5,	ASM.Operand.ASMVirtualRegister@754ba872
	mv		s6,	ASM.Operand.ASMVirtualRegister@146ba0ac
	mv		s7,	ASM.Operand.ASMVirtualRegister@4dfa3a9d
	mv		s8,	ASM.Operand.ASMVirtualRegister@6eebc39e
	mv		s9,	ASM.Operand.ASMVirtualRegister@464bee09
	mv		s10,	ASM.Operand.ASMVirtualRegister@f6c48ac
	mv		s11,	ASM.Operand.ASMVirtualRegister@13deb50e
	mv		a0,	ASM.Operand.ASMVirtualRegister@1a84f40f
	.size	main,	.-main

	.section	.bss
	.section	.rodata
	.globl	str.0
	.type	str.0,@object
str.0:
	.string	"no solution!\n"
	.size	str.0,	14

