	.file	"random.c"
	.text
	.local	test_random_state
	.comm	test_random_state,124,32
	.globl	test_random
	.type	test_random, @function
test_random:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	pos.0(%rip), %eax
	cmpl	$31, %eax
	jne	.L2
	movl	$0, pos.0(%rip)
.L2:
	movl	pos.0(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	test_random_state(%rip), %rax
	movl	(%rdx,%rax), %esi
	movl	pos.0(%rip), %eax
	leal	28(%rax), %ecx
	movl	%ecx, %eax
	imulq	$138547333, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrl	%edx
	addl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$5, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	leaq	0(,%rax,4), %rdx
	leaq	test_random_state(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	pos.0(%rip), %edx
	leal	(%rsi,%rax), %ecx
	movl	%edx, %eax
	leaq	0(,%rax,4), %rdx
	leaq	test_random_state(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	pos.0(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, pos.0(%rip)
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	test_random_state(%rip), %rax
	movl	(%rdx,%rax), %eax
	shrl	%eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_random, .-test_random
	.globl	test_random_seed
	.type	test_random_seed, @function
test_random_seed:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$2147483647, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, test_random_state(%rip)
	movl	$1, -4(%rbp)
	jmp	.L5
.L6:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	test_random_state(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	imulq	$16807, %rax, %rax
	movl	-8(%rbp), %esi
	cqto
	idivq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	test_random_state(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L5:
	cmpl	$30, -4(%rbp)
	jle	.L6
	movl	$34, -4(%rbp)
	jmp	.L7
.L8:
	call	test_random@PLT
	addl	$1, -4(%rbp)
.L7:
	cmpl	$343, -4(%rbp)
	jle	.L8
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_random_seed, .-test_random_seed
	.data
	.align 4
	.type	pos.0, @object
	.size	pos.0, 4
pos.0:
	.long	3
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
