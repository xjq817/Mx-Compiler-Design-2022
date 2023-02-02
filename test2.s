C:\Users\Lenovo\.jdks\openjdk-19.0.1\bin\java.exe "-javaagent:C:\Program Files\JetBrains\IntelliJ IDEA 2021.3.2\lib\idea_rt.jar=64678:C:\Program Files\JetBrains\IntelliJ IDEA 2021.3.2\bin" -Dfile.encoding=UTF-8 -classpath C:\Users\Lenovo\Desktop\useforgit\Mx-Compiler-Design-2022\out\production\test;C:\Users\Lenovo\Desktop\useforgit\Mx-Compiler-Design-2022\antlr4-runtime-4.10.1.jar Compiler
	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	mv		%1,	s0
	mv		%2,	s1
	mv		%3,	s2
	mv		%4,	s3
	mv		%5,	s4
	mv		%6,	s5
	mv		%7,	s6
	mv		%8,	s7
	mv		%9,	s8
	mv		%10,	s9
	mv		%11,	s10
	mv		%12,	s11
	mv		%15,	zero
	mv		%17,	zero
	j		.main.0_for_condition
.main.0_for_condition:
	mv		%18,	%17
	li		%20,	10
	slt		%19,	%18,	%20
	beqz	%19,	.main.0_for_terminate
	j		.main.0_for_loop
.main.0_for_loop:
	mv		%21,	%17
	mv		a0,	%21
	call	printlnInt
	j		.main.0_for_execution
.main.0_for_execution:
	mv		%22,	%17
	mv		%23,	%17
	li		%25,	1
	add		%24,	%22,	%25
	mv		%17,	%24
	j		.main.0_for_condition
.main.0_for_terminate:
	mv		%15,	zero
	j		.main.return
.main.return:
	mv		%27,	%15
	mv		s0,	%1
	mv		s1,	%2
	mv		s2,	%3
	mv		s3,	%4
	mv		s4,	%5
	mv		s5,	%6
	mv		s6,	%7
	mv		s7,	%8
	mv		s8,	%9
	mv		s9,	%10
	mv		s10,	%11
	mv		s11,	%12
	mv		a0,	%27
	.size	main,	.-main

	.section	.bss
	.section	.rodata
********************************
main.entry:
in:
out
gen:
kill
********************************
main.0_for_condition:
in:
out
slt %18 %20 null
gen:
slt %18 %20 null
kill
********************************
main.0_for_loop:
in:
slt %18 %20 null
out
slt %18 %20 null
gen:
kill
********************************
main.0_for_execution:
in:
slt %18 %20 null
out
add %22 %25 null
slt %18 %20 null
gen:
add %22 %25 null
kill
********************************
main.0_for_terminate:
in:
slt %18 %20 null
out
slt %18 %20 null
gen:
kill
********************************
main.return:
in:
slt %18 %20 null
out
slt %18 %20 null
gen:
kill

进程已结束,退出代码0
