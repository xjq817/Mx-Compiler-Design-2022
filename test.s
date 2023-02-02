	.section	.text
	.globl	EdgeList.init
	.p2align	2
	.type	EdgeList.init,@function

EdgeList.init:
.EdgeList.init.entry:
	addi	sp,	sp,	-28
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	28
	mv		t0,	s1
	sw		t0,	8(sp)
	mv		t0,	s2
	sw		t0,	12(sp)
	mv		t0,	s3
	sw		t0,	24(sp)
	mv		t0,	s5
	sw		t0,	16(sp)
	mv		t0,	s6
	sw		t0,	20(sp)
	mv		s3,	a0
	mv		s2,	a1
	mv		s1,	a2
	li		t0,	4
	mul		t1,	s1,	t0
	li		t0,	4
	add		a0,	t1,	t0
	call	__malloc
	sw		s1,	0(a0)
	addi	t1,	a0,	4
	mv		t0,	s3
	addi	t0,	t0,	0
	sw		t1,	0(t0)
	li		t0,	4
	mul		t0,	s1,	t0
	li		t1,	4
	add		a0,	t0,	t1
	call	__malloc
	sw		s1,	0(a0)
	addi	t1,	a0,	4
	mv		t0,	s3
	addi	t0,	t0,	4
	sw		t1,	0(t0)
	li		t0,	4
	mul		t1,	s2,	t0
	li		t0,	4
	add		a0,	t1,	t0
	call	__malloc
	sw		s2,	0(a0)
	addi	t1,	a0,	4
	mv		t0,	s3
	addi	t0,	t0,	8
	sw		t1,	0(t0)
	mv		t1,	zero
	j		.EdgeList.init.0_for_condition
.EdgeList.init.0_for_condition:
	mv		t0,	s1
	slt		t0,	t1,	t0
	beqz	t0,	.EdgeList.init.0_for_terminate
	j		.EdgeList.init.0_for_loop
.EdgeList.init.0_for_loop:
	mv		t0,	s3
	addi	s5,	t0,	4
	mv		t0,	s5
	lw		t2,	0(t0)
	li		t0,	4
	mul		s5,	t0,	t1
	mv		t0,	s5
	add		t2,	t2,	t0
	li		t0,	1
	sub		s5,	zero,	t0
	mv		t0,	s5
	sw		t0,	0(t2)
	j		.EdgeList.init.0_for_execution
.EdgeList.init.0_for_execution:
	li		t0,	1
	add		s5,	t1,	t0
	mv		t1,	s5
	j		.EdgeList.init.0_for_condition
.EdgeList.init.0_for_terminate:
	mv		t1,	zero
	j		.EdgeList.init.1_for_condition
.EdgeList.init.1_for_condition:
	mv		t0,	s2
	slt		s5,	t1,	t0
	mv		t0,	s5
	beqz	t0,	.EdgeList.init.1_for_terminate
	j		.EdgeList.init.1_for_loop
.EdgeList.init.1_for_loop:
	mv		t0,	s3
	addi	s5,	t0,	8
	mv		t0,	s5
	lw		t2,	0(t0)
	li		t0,	4
	mul		s5,	t0,	t1
	mv		t0,	s5
	add		t2,	t2,	t0
	li		t0,	1
	sub		s5,	zero,	t0
	mv		t0,	s5
	sw		t0,	0(t2)
	j		.EdgeList.init.1_for_execution
.EdgeList.init.1_for_execution:
	li		t0,	1
	add		s5,	t1,	t0
	mv		t1,	s5
	j		.EdgeList.init.1_for_condition
.EdgeList.init.1_for_terminate:
	mv		t0,	s3
	addi	s5,	t0,	12
	mv		t0,	s5
	sw		zero,	0(t0)
	j		.EdgeList.init.return
.EdgeList.init.return:
	lw		s1,	8(sp)
	lw		s2,	12(sp)
	lw		s3,	24(sp)
	lw		s5,	16(sp)
	lw		s6,	20(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	28
	ret
	.size	EdgeList.init,	.-EdgeList.init

	.globl	EdgeList.addEdge
	.p2align	2
	.type	EdgeList.addEdge,@function

EdgeList.addEdge:
.EdgeList.addEdge.entry:
	addi	sp,	sp,	-24
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	24
	sw		s2,	8(sp)
	sw		s4,	12(sp)
	sw		s8,	16(sp)
	sw		s9,	20(sp)
	mv		s4,	a0
	mv		s2,	a1
	mv		s8,	a2
	mv		s9,	a3
	li		a0,	12
	call	__malloc
	addi	t1,	a0,	0
	mv		t0,	s2
	sw		t0,	0(t1)
	addi	t1,	a0,	4
	mv		t0,	s8
	sw		t0,	0(t1)
	addi	t1,	a0,	8
	mv		t0,	s9
	sw		t0,	0(t1)
	mv		t0,	s4
	addi	t0,	t0,	12
	lw		t1,	0(t0)
	mv		t0,	s4
	addi	t0,	t0,	0
	lw		t2,	0(t0)
	li		t0,	4
	mul		t0,	t0,	t1
	add		t0,	t2,	t0
	sw		a0,	0(t0)
	mv		t0,	s4
	addi	t0,	t0,	12
	lw		t1,	0(t0)
	mv		t0,	s4
	addi	t0,	t0,	4
	lw		t0,	0(t0)
	li		t2,	4
	mul		t2,	t2,	t1
	add		t2,	t0,	t2
	mv		t1,	s2
	mv		t0,	s4
	addi	t0,	t0,	8
	lw		t0,	0(t0)
	li		a0,	4
	mul		a0,	a0,	t1
	add		t0,	t0,	a0
	lw		t0,	0(t0)
	sw		t0,	0(t2)
	mv		t1,	s2
	mv		t0,	s4
	addi	t0,	t0,	8
	lw		t0,	0(t0)
	li		t2,	4
	mul		t2,	t2,	t1
	add		t1,	t0,	t2
	mv		t0,	s4
	addi	t0,	t0,	12
	lw		t0,	0(t0)
	sw		t0,	0(t1)
	mv		t0,	s4
	addi	t0,	t0,	12
	lw		t1,	0(t0)
	mv		t0,	s4
	addi	t2,	t0,	12
	li		t0,	1
	add		t0,	t1,	t0
	sw		t0,	0(t2)
	j		.EdgeList.addEdge.return
.EdgeList.addEdge.return:
	lw		s2,	8(sp)
	lw		s4,	12(sp)
	lw		s8,	16(sp)
	lw		s9,	20(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	24
	ret
	.size	EdgeList.addEdge,	.-EdgeList.addEdge

	.globl	EdgeList.nVertices
	.p2align	2
	.type	EdgeList.nVertices,@function

EdgeList.nVertices:
.EdgeList.nVertices.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	8
	lw		t0,	0(t0)
	addi	t0,	t0,	-4
	lw		a0,	0(t0)
	j		.EdgeList.nVertices.return
.EdgeList.nVertices.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	EdgeList.nVertices,	.-EdgeList.nVertices

	.globl	EdgeList.nEdges
	.p2align	2
	.type	EdgeList.nEdges,@function

EdgeList.nEdges:
.EdgeList.nEdges.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	0
	lw		t0,	0(t0)
	addi	t0,	t0,	-4
	lw		a0,	0(t0)
	j		.EdgeList.nEdges.return
.EdgeList.nEdges.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	EdgeList.nEdges,	.-EdgeList.nEdges

	.globl	Array_Node.__cons
	.p2align	2
	.type	Array_Node.__cons,@function

Array_Node.__cons:
.Array_Node.__cons.entry:
	addi	sp,	sp,	-16
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	sw		s0,	12(sp)
	sw		s1,	8(sp)
	mv		s0,	a0
	mv		t0,	s0
	addi	t0,	t0,	4
	sw		zero,	0(t0)
	li		t1,	16
	li		t0,	4
	mul		t1,	t1,	t0
	li		t0,	4
	add		a0,	t1,	t0
	call	__malloc
	li		t0,	16
	sw		t0,	0(a0)
	addi	t1,	a0,	4
	mv		t0,	s0
	addi	t0,	t0,	0
	sw		t1,	0(t0)
	j		.Array_Node.__cons.return
.Array_Node.__cons.return:
	lw		s0,	12(sp)
	lw		s1,	8(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	16
	ret
	.size	Array_Node.__cons,	.-Array_Node.__cons

	.globl	Array_Node.push_back
	.p2align	2
	.type	Array_Node.push_back,@function

Array_Node.push_back:
.Array_Node.push_back.entry:
	addi	sp,	sp,	-16
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	sw		s5,	8(sp)
	sw		s6,	12(sp)
	mv		s5,	a0
	mv		s6,	a1
	mv		a0,	s5
	call	Array_Node.size
	mv		t0,	s5
	addi	t0,	t0,	0
	lw		t0,	0(t0)
	addi	t0,	t0,	-4
	lw		t0,	0(t0)
	xor		t0,	a0,	t0
	seqz	t0,	t0
	beqz	t0,	.Array_Node.push_back.2_if_terminate
	j		.Array_Node.push_back.2_if_true
.Array_Node.push_back.2_if_true:
	mv		a0,	s5
	call	Array_Node.doubleStorage
	j		.Array_Node.push_back.2_if_terminate
.Array_Node.push_back.2_if_terminate:
	mv		t0,	s5
	addi	t0,	t0,	4
	lw		t1,	0(t0)
	mv		t0,	s5
	addi	t0,	t0,	0
	lw		t0,	0(t0)
	li		t2,	4
	mul		t2,	t2,	t1
	add		t1,	t0,	t2
	mv		t0,	s6
	sw		t0,	0(t1)
	mv		t0,	s5
	addi	t0,	t0,	4
	lw		t1,	0(t0)
	mv		t0,	s5
	addi	t2,	t0,	4
	li		t0,	1
	add		t0,	t1,	t0
	sw		t0,	0(t2)
	j		.Array_Node.push_back.return
.Array_Node.push_back.return:
	lw		s5,	8(sp)
	lw		s6,	12(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	16
	ret
	.size	Array_Node.push_back,	.-Array_Node.push_back

	.globl	Array_Node.pop_back
	.p2align	2
	.type	Array_Node.pop_back,@function

Array_Node.pop_back:
.Array_Node.pop_back.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	4
	lw		t2,	0(t0)
	addi	t1,	a0,	4
	li		t0,	-1
	add		t0,	t2,	t0
	sw		t0,	0(t1)
	addi	t0,	a0,	4
	lw		t1,	0(t0)
	addi	t0,	a0,	0
	lw		t2,	0(t0)
	li		t0,	4
	mul		t0,	t0,	t1
	add		t0,	t2,	t0
	lw		a0,	0(t0)
	j		.Array_Node.pop_back.return
.Array_Node.pop_back.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Array_Node.pop_back,	.-Array_Node.pop_back

	.globl	Array_Node.back
	.p2align	2
	.type	Array_Node.back,@function

Array_Node.back:
.Array_Node.back.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	4
	lw		t0,	0(t0)
	li		t1,	1
	sub		t2,	t0,	t1
	addi	t0,	a0,	0
	lw		t1,	0(t0)
	li		t0,	4
	mul		t0,	t0,	t2
	add		t0,	t1,	t0
	lw		a0,	0(t0)
	j		.Array_Node.back.return
.Array_Node.back.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Array_Node.back,	.-Array_Node.back

	.globl	Array_Node.front
	.p2align	2
	.type	Array_Node.front,@function

Array_Node.front:
.Array_Node.front.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	0
	lw		t0,	0(t0)
	addi	t0,	t0,	0
	lw		a0,	0(t0)
	j		.Array_Node.front.return
.Array_Node.front.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Array_Node.front,	.-Array_Node.front

	.globl	Array_Node.size
	.p2align	2
	.type	Array_Node.size,@function

Array_Node.size:
.Array_Node.size.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	4
	lw		a0,	0(t0)
	j		.Array_Node.size.return
.Array_Node.size.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Array_Node.size,	.-Array_Node.size

	.globl	Array_Node.resize
	.p2align	2
	.type	Array_Node.resize,@function

Array_Node.resize:
.Array_Node.resize.entry:
	addi	sp,	sp,	-20
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	20
	mv		t0,	s3
	sw		t0,	8(sp)
	mv		t0,	s6
	sw		t0,	12(sp)
	mv		t0,	s11
	sw		t0,	16(sp)
	mv		s3,	a0
	mv		s6,	a1
	j		.Array_Node.resize.3_while_condition
.Array_Node.resize.3_while_condition:
	mv		t0,	s3
	addi	t0,	t0,	0
	lw		t0,	0(t0)
	addi	t0,	t0,	-4
	lw		t1,	0(t0)
	mv		t0,	s6
	slt		t0,	t1,	t0
	beqz	t0,	.Array_Node.resize.3_while_terminate
	j		.Array_Node.resize.3_while_loop
.Array_Node.resize.3_while_loop:
	mv		a0,	s3
	call	Array_Node.doubleStorage
	j		.Array_Node.resize.3_while_condition
.Array_Node.resize.3_while_terminate:
	mv		t0,	s6
	mv		t1,	s3
	addi	s11,	t1,	4
	mv		t1,	s11
	sw		t0,	0(t1)
	j		.Array_Node.resize.return
.Array_Node.resize.return:
	lw		s3,	8(sp)
	lw		s6,	12(sp)
	lw		s11,	16(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	20
	ret
	.size	Array_Node.resize,	.-Array_Node.resize

	.globl	Array_Node.get
	.p2align	2
	.type	Array_Node.get,@function

Array_Node.get:
.Array_Node.get.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	0
	lw		t0,	0(t0)
	li		t1,	4
	mul		t1,	t1,	a1
	add		t0,	t0,	t1
	lw		a0,	0(t0)
	j		.Array_Node.get.return
.Array_Node.get.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Array_Node.get,	.-Array_Node.get

	.globl	Array_Node.set
	.p2align	2
	.type	Array_Node.set,@function

Array_Node.set:
.Array_Node.set.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	0
	lw		t1,	0(t0)
	li		t0,	4
	mul		t0,	t0,	a1
	add		t0,	t1,	t0
	sw		a2,	0(t0)
	j		.Array_Node.set.return
.Array_Node.set.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Array_Node.set,	.-Array_Node.set

	.globl	Array_Node.swap
	.p2align	2
	.type	Array_Node.swap,@function

Array_Node.swap:
.Array_Node.swap.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	0
	lw		t0,	0(t0)
	li		t1,	4
	mul		t1,	t1,	a1
	add		t0,	t0,	t1
	lw		t0,	0(t0)
	addi	t1,	a0,	0
	lw		t1,	0(t1)
	li		t2,	4
	mul		t2,	t2,	a1
	add		t2,	t1,	t2
	addi	t1,	a0,	0
	lw		a1,	0(t1)
	li		t1,	4
	mul		t1,	t1,	a2
	add		t1,	a1,	t1
	lw		t1,	0(t1)
	sw		t1,	0(t2)
	addi	t1,	a0,	0
	lw		t2,	0(t1)
	li		t1,	4
	mul		t1,	t1,	a2
	add		t1,	t2,	t1
	sw		t0,	0(t1)
	j		.Array_Node.swap.return
.Array_Node.swap.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Array_Node.swap,	.-Array_Node.swap

	.globl	Array_Node.doubleStorage
	.p2align	2
	.type	Array_Node.doubleStorage,@function

Array_Node.doubleStorage:
.Array_Node.doubleStorage.entry:
	addi	sp,	sp,	-28
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	28
	mv		t0,	s3
	sw		t0,	8(sp)
	mv		t0,	s4
	sw		t0,	12(sp)
	mv		t0,	s8
	sw		t0,	16(sp)
	mv		t0,	s9
	sw		t0,	20(sp)
	mv		t0,	s11
	sw		t0,	24(sp)
	mv		s4,	a0
	mv		t0,	s4
	addi	t0,	t0,	0
	lw		t0,	0(t0)
	mv		s8,	t0
	mv		t0,	s4
	addi	t0,	t0,	4
	lw		t0,	0(t0)
	mv		s9,	t0
	mv		t0,	s8
	addi	t0,	t0,	-4
	lw		t1,	0(t0)
	li		t0,	2
	mul		s3,	t1,	t0
	li		t0,	4
	mul		t1,	s3,	t0
	li		t0,	4
	add		a0,	t1,	t0
	call	__malloc
	sw		s3,	0(a0)
	addi	t1,	a0,	4
	mv		t0,	s4
	addi	t0,	t0,	0
	sw		t1,	0(t0)
	mv		t0,	s4
	addi	t0,	t0,	4
	sw		zero,	0(t0)
	j		.Array_Node.doubleStorage.4_for_condition
.Array_Node.doubleStorage.4_for_condition:
	mv		t0,	s4
	addi	t0,	t0,	4
	lw		t1,	0(t0)
	mv		t0,	s9
	xor		t0,	t1,	t0
	snez	t0,	t0
	beqz	t0,	.Array_Node.doubleStorage.4_for_terminate
	j		.Array_Node.doubleStorage.4_for_loop
.Array_Node.doubleStorage.4_for_loop:
	mv		t0,	s4
	addi	s11,	t0,	4
	mv		t0,	s11
	lw		t1,	0(t0)
	mv		t0,	s4
	addi	s11,	t0,	0
	mv		t0,	s11
	lw		t2,	0(t0)
	li		t0,	4
	mul		s11,	t0,	t1
	mv		t0,	s11
	add		a0,	t2,	t0
	mv		t0,	s4
	addi	s11,	t0,	4
	mv		t0,	s11
	lw		t2,	0(t0)
	mv		t0,	s8
	li		t1,	4
	mul		s11,	t1,	t2
	mv		t1,	s11
	add		t0,	t0,	t1
	lw		t0,	0(t0)
	sw		t0,	0(a0)
	j		.Array_Node.doubleStorage.4_for_execution
.Array_Node.doubleStorage.4_for_execution:
	mv		t0,	s4
	addi	s11,	t0,	4
	mv		t0,	s11
	lw		t2,	0(t0)
	mv		t0,	s4
	addi	s11,	t0,	4
	mv		t0,	s11
	li		t1,	1
	add		s11,	t2,	t1
	mv		t1,	s11
	sw		t1,	0(t0)
	j		.Array_Node.doubleStorage.4_for_condition
.Array_Node.doubleStorage.4_for_terminate:
	j		.Array_Node.doubleStorage.return
.Array_Node.doubleStorage.return:
	lw		s3,	8(sp)
	lw		s4,	12(sp)
	lw		s8,	16(sp)
	lw		s9,	20(sp)
	lw		s11,	24(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	28
	ret
	.size	Array_Node.doubleStorage,	.-Array_Node.doubleStorage

	.globl	Heap_Node.__cons
	.p2align	2
	.type	Heap_Node.__cons,@function

Heap_Node.__cons:
.Heap_Node.__cons.entry:
	addi	sp,	sp,	-16
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	sw		s1,	8(sp)
	sw		s5,	12(sp)
	mv		s5,	a0
	li		a0,	8
	call	__malloc
	mv		s1,	a0
	mv		a0,	s1
	call	Array_Node.__cons
	mv		t0,	s5
	addi	t0,	t0,	0
	sw		s1,	0(t0)
	j		.Heap_Node.__cons.return
.Heap_Node.__cons.return:
	lw		s1,	8(sp)
	lw		s5,	12(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	16
	ret
	.size	Heap_Node.__cons,	.-Heap_Node.__cons

	.globl	Heap_Node.push
	.p2align	2
	.type	Heap_Node.push,@function

Heap_Node.push:
.Heap_Node.push.entry:
	addi	sp,	sp,	-28
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	28
	mv		t0,	s2
	sw		t0,	8(sp)
	mv		t0,	s3
	sw		t0,	12(sp)
	mv		t0,	s7
	sw		t0,	16(sp)
	mv		t0,	s8
	sw		t0,	20(sp)
	mv		t0,	s9
	sw		t0,	24(sp)
	mv		s3,	a0
	mv		t0,	s3
	addi	t0,	t0,	0
	lw		a0,	0(t0)
	call	Array_Node.push_back
	mv		a0,	s3
	call	Heap_Node.size
	li		t0,	1
	sub		t0,	a0,	t0
	mv		s2,	t0
	j		.Heap_Node.push.5_while_condition
.Heap_Node.push.5_while_condition:
	mv		t0,	s2
	slt		t0,	zero,	t0
	beqz	t0,	.Heap_Node.push.5_while_terminate
	j		.Heap_Node.push.5_while_loop
.Heap_Node.push.5_while_loop:
	mv		a0,	s3
	mv		a1,	s2
	call	Heap_Node.pnt
	mv		s8,	a0
	mv		t0,	s3
	addi	s9,	t0,	0
	mv		t0,	s9
	lw		a0,	0(t0)
	mv		a1,	s8
	call	Array_Node.get
	call	Node.key_
	mv		s7,	a0
	mv		t0,	s3
	addi	s9,	t0,	0
	mv		t0,	s9
	lw		a0,	0(t0)
	mv		a1,	s2
	call	Array_Node.get
	call	Node.key_
	slt		s9,	s7,	a0
	mv		t0,	s9
	seqz	t0,	t0
	beqz	t0,	.Heap_Node.push.6_if_terminate
	j		.Heap_Node.push.6_if_true
.Heap_Node.push.6_if_true:
	j		.Heap_Node.push.5_while_terminate
.Heap_Node.push.6_if_terminate:
	mv		t0,	s3
	addi	s9,	t0,	0
	mv		t0,	s9
	lw		a0,	0(t0)
	mv		a1,	s8
	mv		a2,	s2
	call	Array_Node.swap
	mv		t0,	s8
	mv		s2,	t0
	j		.Heap_Node.push.5_while_condition
.Heap_Node.push.5_while_terminate:
	j		.Heap_Node.push.return
.Heap_Node.push.return:
	lw		s2,	8(sp)
	lw		s3,	12(sp)
	lw		s7,	16(sp)
	lw		s8,	20(sp)
	lw		s9,	24(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	28
	ret
	.size	Heap_Node.push,	.-Heap_Node.push

	.globl	Heap_Node.pop
	.p2align	2
	.type	Heap_Node.pop,@function

Heap_Node.pop:
.Heap_Node.pop.entry:
	addi	sp,	sp,	-24
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	24
	sw		s1,	20(sp)
	sw		s2,	8(sp)
	sw		s3,	12(sp)
	sw		s4,	16(sp)
	mv		s1,	a0
	mv		t0,	s1
	addi	t0,	t0,	0
	lw		a0,	0(t0)
	call	Array_Node.front
	mv		s2,	a0
	mv		t0,	s1
	addi	t0,	t0,	0
	lw		s3,	0(t0)
	mv		a0,	s1
	call	Heap_Node.size
	li		t0,	1
	sub		a2,	a0,	t0
	mv		a0,	s3
	mv		a1,	zero
	call	Array_Node.swap
	mv		t0,	s1
	addi	t0,	t0,	0
	lw		a0,	0(t0)
	call	Array_Node.pop_back
	mv		a0,	s1
	mv		a1,	zero
	call	Heap_Node.maxHeapify
	mv		a0,	s2
	j		.Heap_Node.pop.return
.Heap_Node.pop.return:
	lw		s1,	20(sp)
	lw		s2,	8(sp)
	lw		s3,	12(sp)
	lw		s4,	16(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	24
	ret
	.size	Heap_Node.pop,	.-Heap_Node.pop

	.globl	Heap_Node.top
	.p2align	2
	.type	Heap_Node.top,@function

Heap_Node.top:
.Heap_Node.top.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	0
	lw		a0,	0(t0)
	call	Array_Node.front
	j		.Heap_Node.top.return
.Heap_Node.top.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Heap_Node.top,	.-Heap_Node.top

	.globl	Heap_Node.size
	.p2align	2
	.type	Heap_Node.size,@function

Heap_Node.size:
.Heap_Node.size.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	0
	lw		a0,	0(t0)
	call	Array_Node.size
	j		.Heap_Node.size.return
.Heap_Node.size.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Heap_Node.size,	.-Heap_Node.size

	.globl	Heap_Node.lchild
	.p2align	2
	.type	Heap_Node.lchild,@function

Heap_Node.lchild:
.Heap_Node.lchild.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	li		t0,	2
	mul		t1,	a1,	t0
	li		t0,	1
	add		a0,	t1,	t0
	j		.Heap_Node.lchild.return
.Heap_Node.lchild.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Heap_Node.lchild,	.-Heap_Node.lchild

	.globl	Heap_Node.rchild
	.p2align	2
	.type	Heap_Node.rchild,@function

Heap_Node.rchild:
.Heap_Node.rchild.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	li		t0,	2
	mul		t0,	a1,	t0
	li		t1,	2
	add		a0,	t0,	t1
	j		.Heap_Node.rchild.return
.Heap_Node.rchild.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Heap_Node.rchild,	.-Heap_Node.rchild

	.globl	Heap_Node.pnt
	.p2align	2
	.type	Heap_Node.pnt,@function

Heap_Node.pnt:
.Heap_Node.pnt.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	li		t0,	1
	sub		t1,	a1,	t0
	li		t0,	2
	div		a0,	t1,	t0
	j		.Heap_Node.pnt.return
.Heap_Node.pnt.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Heap_Node.pnt,	.-Heap_Node.pnt

	.globl	Heap_Node.maxHeapify
	.p2align	2
	.type	Heap_Node.maxHeapify,@function

Heap_Node.maxHeapify:
.Heap_Node.maxHeapify.entry:
	addi	sp,	sp,	-40
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	40
	mv		t0,	s0
	sw		t0,	8(sp)
	mv		t0,	s1
	sw		t0,	12(sp)
	mv		t0,	s2
	sw		t0,	16(sp)
	mv		t0,	s3
	sw		t0,	20(sp)
	mv		t0,	s5
	sw		t0,	24(sp)
	mv		t0,	s6
	sw		t0,	28(sp)
	mv		t0,	s7
	sw		t0,	32(sp)
	mv		t0,	s8
	sw		t0,	36(sp)
	mv		s7,	a0
	mv		s6,	a1
	mv		a0,	s7
	mv		a1,	s6
	call	Heap_Node.lchild
	mv		s8,	a0
	mv		a0,	s7
	mv		a1,	s6
	call	Heap_Node.rchild
	mv		s0,	a0
	mv		t0,	s6
	mv		s5,	t0
	mv		s1,	s8
	mv		a0,	s7
	call	Heap_Node.size
	slt		s1,	s1,	a0
	mv		t0,	s1
	beqz	s1,	.Heap_Node.maxHeapify.7_and_terminate_block
	j		.Heap_Node.maxHeapify.7_and_rhs_block
.Heap_Node.maxHeapify.7_and_rhs_block:
	mv		t0,	s7
	addi	t0,	t0,	0
	lw		a0,	0(t0)
	mv		a1,	s8
	call	Array_Node.get
	call	Node.key_
	mv		s3,	a0
	mv		t0,	s7
	addi	t0,	t0,	0
	lw		a0,	0(t0)
	mv		a1,	s5
	call	Array_Node.get
	call	Node.key_
	slt		t0,	a0,	s3
	and		t0,	s1,	t0
	j		.Heap_Node.maxHeapify.7_and_terminate_block
.Heap_Node.maxHeapify.7_and_terminate_block:
	beqz	t0,	.Heap_Node.maxHeapify.8_if_terminate
	j		.Heap_Node.maxHeapify.8_if_true
.Heap_Node.maxHeapify.8_if_true:
	mv		t0,	s8
	mv		s5,	t0
	j		.Heap_Node.maxHeapify.8_if_terminate
.Heap_Node.maxHeapify.8_if_terminate:
	mv		a0,	s7
	call	Heap_Node.size
	slt		s2,	s0,	a0
	mv		s3,	s2
	mv		t0,	s3
	beqz	s3,	.Heap_Node.maxHeapify.9_and_terminate_block
	j		.Heap_Node.maxHeapify.9_and_rhs_block
.Heap_Node.maxHeapify.9_and_rhs_block:
	mv		t0,	s7
	addi	s2,	t0,	0
	mv		t0,	s2
	lw		a0,	0(t0)
	mv		a1,	s0
	call	Array_Node.get
	call	Node.key_
	mv		s1,	a0
	mv		t0,	s7
	addi	s2,	t0,	0
	mv		t0,	s2
	lw		a0,	0(t0)
	mv		a1,	s5
	call	Array_Node.get
	call	Node.key_
	slt		s2,	a0,	s1
	mv		t0,	s2
	and		t0,	s3,	t0
	j		.Heap_Node.maxHeapify.9_and_terminate_block
.Heap_Node.maxHeapify.9_and_terminate_block:
	beqz	t0,	.Heap_Node.maxHeapify.10_if_terminate
	j		.Heap_Node.maxHeapify.10_if_true
.Heap_Node.maxHeapify.10_if_true:
	mv		t0,	s0
	mv		s5,	t0
	j		.Heap_Node.maxHeapify.10_if_terminate
.Heap_Node.maxHeapify.10_if_terminate:
	mv		t1,	s5
	mv		t0,	s6
	xor		s2,	t1,	t0
	mv		t0,	s2
	seqz	t0,	t0
	beqz	t0,	.Heap_Node.maxHeapify.11_if_terminate
	j		.Heap_Node.maxHeapify.11_if_true
.Heap_Node.maxHeapify.11_if_true:
	j		.Heap_Node.maxHeapify.return
.Heap_Node.maxHeapify.11_if_terminate:
	mv		t0,	s7
	addi	s2,	t0,	0
	mv		t0,	s2
	lw		a0,	0(t0)
	mv		a1,	s6
	mv		a2,	s5
	call	Array_Node.swap
	mv		a0,	s7
	mv		a1,	s5
	call	Heap_Node.maxHeapify
	j		.Heap_Node.maxHeapify.return
.Heap_Node.maxHeapify.return:
	lw		s0,	8(sp)
	lw		s1,	12(sp)
	lw		s2,	16(sp)
	lw		s3,	20(sp)
	lw		s5,	24(sp)
	lw		s6,	28(sp)
	lw		s7,	32(sp)
	lw		s8,	36(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	40
	ret
	.size	Heap_Node.maxHeapify,	.-Heap_Node.maxHeapify

	.globl	Node.key_
	.p2align	2
	.type	Node.key_,@function

Node.key_:
.Node.key_.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	addi	t0,	a0,	4
	lw		t0,	0(t0)
	sub		a0,	zero,	t0
	j		.Node.key_.return
.Node.key_.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
	ret
	.size	Node.key_,	.-Node.key_

	.globl	init
	.p2align	2
	.type	init,@function

init:
.init.entry:
	addi	sp,	sp,	-28
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	28
	mv		t0,	s4
	sw		t0,	8(sp)
	mv		t0,	s5
	sw		t0,	12(sp)
	sw		s6,	24(sp)
	mv		t0,	s7
	sw		t0,	16(sp)
	mv		t0,	s9
	sw		t0,	20(sp)
	call	getInt
	la		t0,	n
	sw		a0,	0(t0)
	call	getInt
	la		t0,	m
	sw		a0,	0(t0)
	li		a0,	16
	call	__malloc
	la		t0,	g
	sw		a0,	0(t0)
	la		t0,	g
	lw		a0,	0(t0)
	la		t0,	n
	lw		a1,	0(t0)
	la		t0,	m
	lw		a2,	0(t0)
	call	EdgeList.init
	mv		s6,	zero
	j		.init.12_for_condition
.init.12_for_condition:
	mv		t0,	s6
	la		t1,	m
	lw		t1,	0(t1)
	slt		t0,	t0,	t1
	beqz	t0,	.init.12_for_terminate
	j		.init.12_for_loop
.init.12_for_loop:
	call	getInt
	mv		s4,	a0
	call	getInt
	mv		s5,	a0
	call	getInt
	la		t0,	g
	lw		t0,	0(t0)
	mv		a1,	s4
	mv		a2,	s5
	mv		a3,	a0
	mv		a0,	t0
	call	EdgeList.addEdge
	j		.init.12_for_execution
.init.12_for_execution:
	mv		t0,	s6
	li		t1,	1
	add		s7,	t0,	t1
	mv		t0,	s7
	mv		s6,	t0
	j		.init.12_for_condition
.init.12_for_terminate:
	j		.init.return
.init.return:
	lw		s4,	8(sp)
	lw		s5,	12(sp)
	lw		s6,	24(sp)
	lw		s7,	16(sp)
	lw		s9,	20(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	28
	ret
	.size	init,	.-init

	.globl	dijkstra
	.p2align	2
	.type	dijkstra,@function

dijkstra:
.dijkstra.entry:
	addi	sp,	sp,	-36
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	36
	sw		s0,	8(sp)
	sw		s1,	12(sp)
	sw		s2,	16(sp)
	sw		s3,	20(sp)
	mv		t0,	s4
	sw		t0,	24(sp)
	mv		t0,	s5
	sw		t0,	28(sp)
	mv		t0,	s6
	sw		t0,	32(sp)
	mv		s1,	a0
	la		t0,	n
	lw		s0,	0(t0)
	li		t0,	4
	mul		t0,	s0,	t0
	li		t1,	4
	add		a0,	t0,	t1
	call	__malloc
	sw		s0,	0(a0)
	addi	t0,	a0,	4
	mv		s6,	t0
	la		t0,	n
	lw		s0,	0(t0)
	li		t0,	4
	mul		t0,	s0,	t0
	li		t1,	4
	add		a0,	t0,	t1
	call	__malloc
	sw		s0,	0(a0)
	addi	t0,	a0,	4
	mv		s5,	t0
	mv		t0,	zero
	j		.dijkstra.13_for_condition
.dijkstra.13_for_condition:
	la		t1,	n
	lw		t1,	0(t1)
	slt		t1,	t0,	t1
	beqz	t1,	.dijkstra.13_for_terminate
	j		.dijkstra.13_for_loop
.dijkstra.13_for_loop:
	mv		t2,	s5
	li		t1,	4
	mul		s4,	t1,	t0
	mv		t1,	s4
	add		t1,	t2,	t1
	la		t2,	INF
	lw		t2,	0(t2)
	sw		t2,	0(t1)
	mv		t2,	s6
	li		t1,	4
	mul		s4,	t1,	t0
	mv		t1,	s4
	add		t1,	t2,	t1
	sw		zero,	0(t1)
	j		.dijkstra.13_for_execution
.dijkstra.13_for_execution:
	li		t1,	1
	add		s4,	t0,	t1
	mv		t0,	s4
	j		.dijkstra.13_for_condition
.dijkstra.13_for_terminate:
	mv		t2,	s1
	mv		t1,	s5
	li		t0,	4
	mul		s4,	t0,	t2
	mv		t0,	s4
	add		t0,	t1,	t0
	sw		zero,	0(t0)
	li		a0,	4
	call	__malloc
	mv		s0,	a0
	mv		a0,	s0
	call	Heap_Node.__cons
	li		a0,	8
	call	__malloc
	mv		a1,	a0
	mv		t0,	a1
	addi	s4,	t0,	4
	mv		t0,	s4
	sw		zero,	0(t0)
	mv		t0,	a1
	addi	s4,	t0,	0
	mv		t0,	s4
	mv		t1,	s1
	sw		t1,	0(t0)
	mv		t0,	s0
	mv		a0,	t0
	call	Heap_Node.push
	j		.dijkstra.14_while_condition
.dijkstra.14_while_condition:
	mv		a0,	s0
	call	Heap_Node.size
	xor		s4,	a0,	zero
	mv		t0,	s4
	snez	t0,	t0
	beqz	t0,	.dijkstra.14_while_terminate
	j		.dijkstra.14_while_loop
.dijkstra.14_while_loop:
	mv		a0,	s0
	call	Heap_Node.pop
	mv		t0,	a0
	addi	s4,	t0,	0
	mv		t0,	s4
	lw		t0,	0(t0)
	mv		s2,	t0
	mv		t2,	s2
	mv		t0,	s6
	li		t1,	4
	mul		s4,	t1,	t2
	mv		t1,	s4
	add		t0,	t0,	t1
	lw		t1,	0(t0)
	li		t0,	1
	xor		s4,	t1,	t0
	mv		t0,	s4
	seqz	t0,	t0
	beqz	t0,	.dijkstra.15_if_terminate
	j		.dijkstra.15_if_true
.dijkstra.15_if_true:
	j		.dijkstra.14_while_condition
.dijkstra.15_if_terminate:
	mv		t2,	s2
	mv		t1,	s6
	li		t0,	4
	mul		s4,	t0,	t2
	mv		t0,	s4
	add		t1,	t1,	t0
	li		t0,	1
	sw		t0,	0(t1)
	mv		t2,	s2
	la		t0,	g
	lw		t0,	0(t0)
	addi	s4,	t0,	8
	mv		t0,	s4
	lw		t1,	0(t0)
	li		t0,	4
	mul		s4,	t0,	t2
	mv		t0,	s4
	add		t0,	t1,	t0
	lw		t0,	0(t0)
	mv		s1,	t0
	j		.dijkstra.16_for_condition
.dijkstra.16_for_condition:
	mv		t0,	s1
	li		t1,	1
	sub		s4,	zero,	t1
	mv		t1,	s4
	xor		t0,	t0,	t1
	snez	t0,	t0
	beqz	t0,	.dijkstra.16_for_terminate
	j		.dijkstra.16_for_loop
.dijkstra.16_for_loop:
	mv		t2,	s1
	la		t0,	g
	lw		t0,	0(t0)
	addi	s4,	t0,	0
	mv		t0,	s4
	lw		t0,	0(t0)
	li		t1,	4
	mul		s4,	t1,	t2
	mv		t1,	s4
	add		t0,	t0,	t1
	lw		t0,	0(t0)
	addi	s4,	t0,	4
	mv		t0,	s4
	lw		t0,	0(t0)
	mv		s3,	t0
	mv		t2,	s1
	la		t0,	g
	lw		t0,	0(t0)
	addi	s4,	t0,	0
	mv		t0,	s4
	lw		t1,	0(t0)
	li		t0,	4
	mul		s4,	t0,	t2
	mv		t0,	s4
	add		t0,	t1,	t0
	lw		t0,	0(t0)
	addi	s4,	t0,	8
	mv		t0,	s4
	lw		t0,	0(t0)
	mv		t2,	t0
	mv		a0,	s2
	mv		t0,	s5
	li		t1,	4
	mul		s4,	t1,	a0
	mv		t1,	s4
	add		t0,	t0,	t1
	lw		t0,	0(t0)
	mv		t1,	t2
	add		s4,	t0,	t1
	mv		t0,	s4
	mv		a0,	t0
	mv		t0,	s3
	mv		t1,	s5
	li		t2,	4
	mul		s4,	t2,	t0
	mv		t2,	s4
	add		t0,	t1,	t2
	lw		t0,	0(t0)
	slt		s4,	a0,	t0
	mv		t0,	s4
	seqz	t0,	t0
	beqz	t0,	.dijkstra.17_if_terminate
	j		.dijkstra.17_if_true
.dijkstra.17_if_true:
	j		.dijkstra.16_for_execution
.dijkstra.17_if_terminate:
	mv		t2,	s3
	mv		t0,	s5
	li		t1,	4
	mul		s4,	t1,	t2
	mv		t1,	s4
	add		t0,	t0,	t1
	mv		t1,	a0
	sw		t1,	0(t0)
	li		a0,	8
	call	__malloc
	mv		t0,	a0
	addi	s4,	t0,	0
	mv		t0,	s4
	mv		t1,	s3
	sw		t1,	0(t0)
	mv		t0,	a0
	addi	s4,	t0,	4
	mv		t1,	s4
	mv		t0,	s3
	mv		a1,	s5
	li		t2,	4
	mul		s4,	t2,	t0
	mv		t2,	s4
	add		t0,	a1,	t2
	lw		t0,	0(t0)
	sw		t0,	0(t1)
	mv		t0,	s0
	mv		a1,	a0
	mv		a0,	t0
	call	Heap_Node.push
	j		.dijkstra.16_for_execution
.dijkstra.16_for_execution:
	mv		t0,	s1
	la		t1,	g
	lw		t1,	0(t1)
	addi	s4,	t1,	4
	mv		t1,	s4
	lw		t2,	0(t1)
	li		t1,	4
	mul		s4,	t1,	t0
	mv		t1,	s4
	add		t0,	t2,	t1
	lw		t0,	0(t0)
	mv		s1,	t0
	j		.dijkstra.16_for_condition
.dijkstra.16_for_terminate:
	j		.dijkstra.14_while_condition
.dijkstra.14_while_terminate:
	mv		a0,	s5
	j		.dijkstra.return
.dijkstra.return:
	lw		s0,	8(sp)
	lw		s1,	12(sp)
	lw		s2,	16(sp)
	lw		s3,	20(sp)
	lw		s4,	24(sp)
	lw		s5,	28(sp)
	lw		s6,	32(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	36
	ret
	.size	dijkstra,	.-dijkstra

	.globl	main
	.p2align	2
	.type	main,@function

main:
.main.entry:
	addi	sp,	sp,	-24
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	24
	mv		t0,	s0
	sw		t0,	8(sp)
	mv		t0,	s1
	sw		t0,	12(sp)
	mv		t0,	s2
	sw		t0,	16(sp)
	mv		t0,	s6
	sw		t0,	20(sp)
	call	__global_init_0
	call	init
	mv		s1,	zero
	j		.main.18_for_condition
.main.18_for_condition:
	mv		t0,	s1
	la		t1,	n
	lw		t1,	0(t1)
	slt		t0,	t0,	t1
	beqz	t0,	.main.18_for_terminate
	j		.main.18_for_loop
.main.18_for_loop:
	mv		a0,	s1
	call	dijkstra
	mv		s2,	a0
	mv		s0,	zero
	j		.main.19_for_condition
.main.19_for_condition:
	mv		t0,	s0
	la		t1,	n
	lw		t1,	0(t1)
	slt		s6,	t0,	t1
	mv		t0,	s6
	beqz	t0,	.main.19_for_terminate
	j		.main.19_for_loop
.main.19_for_loop:
	mv		t1,	s0
	mv		t0,	s2
	li		t2,	4
	mul		s6,	t2,	t1
	mv		t2,	s6
	add		t0,	t0,	t2
	lw		t1,	0(t0)
	la		t0,	INF
	lw		t0,	0(t0)
	xor		s6,	t1,	t0
	mv		t0,	s6
	seqz	t0,	t0
	beqz	t0,	.main.20_if_false
	j		.main.20_if_true
.main.20_if_true:
	la		a0,	str.0
	call	print
	j		.main.20_if_terminate
.main.20_if_false:
	mv		t1,	s0
	mv		t0,	s2
	li		t2,	4
	mul		s6,	t2,	t1
	mv		t2,	s6
	add		t0,	t0,	t2
	lw		a0,	0(t0)
	call	toString
	call	print
	j		.main.20_if_terminate
.main.20_if_terminate:
	la		a0,	str.1
	call	print
	j		.main.19_for_execution
.main.19_for_execution:
	mv		t0,	s0
	li		t1,	1
	add		s6,	t0,	t1
	mv		t0,	s6
	mv		s0,	t0
	j		.main.19_for_condition
.main.19_for_terminate:
	la		a0,	str.2
	call	println
	j		.main.18_for_execution
.main.18_for_execution:
	mv		t0,	s1
	li		t1,	1
	add		s6,	t0,	t1
	mv		t0,	s6
	mv		s1,	t0
	j		.main.18_for_condition
.main.18_for_terminate:
	mv		a0,	zero
	j		.main.return
.main.return:
	lw		s0,	8(sp)
	lw		s1,	12(sp)
	lw		s2,	16(sp)
	lw		s6,	20(sp)
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	24
	ret
	.size	main,	.-main

	.globl	__global_init_0
	.p2align	2
	.type	__global_init_0,@function

__global_init_0:
.__global_init_0.entry:
	addi	sp,	sp,	-8
	sw		ra,	4(sp)
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	li		t1,	10000000
	la		t0,	INF
	sw		t1,	0(t0)
	j		.__global_init_0.return
.__global_init_0.return:
	lw		ra,	4(sp)
	lw		s0,	0(sp)
	addi	sp,	sp,	8
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

