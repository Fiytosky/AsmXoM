	.file	"i_skey.c"
	.text
	.globl	IDEA_set_encrypt_key
	.type	IDEA_set_encrypt_key, @function
IDEA_set_encrypt_key:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movq	-72(%rbp), %rbx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, (%rbx)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	(%rbx), %eax
	orl	%edx, %eax
	movl	%eax, (%rbx)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	4(%rbx), %rax
	sall	$8, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	leaq	4(%rbx), %rax
	movl	(%rax), %edx
	leaq	4(%rbx), %rax
	orl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	8(%rbx), %rax
	sall	$8, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	leaq	8(%rbx), %rax
	movl	(%rax), %edx
	leaq	8(%rbx), %rax
	orl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	12(%rbx), %rax
	sall	$8, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	leaq	12(%rbx), %rax
	movl	(%rax), %edx
	leaq	12(%rbx), %rax
	orl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	16(%rbx), %rax
	sall	$8, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	leaq	16(%rbx), %rax
	movl	(%rax), %edx
	leaq	16(%rbx), %rax
	orl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	20(%rbx), %rax
	sall	$8, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	leaq	20(%rbx), %rax
	movl	(%rax), %edx
	leaq	20(%rbx), %rax
	orl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	24(%rbx), %rax
	sall	$8, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	leaq	24(%rbx), %rax
	movl	(%rax), %edx
	leaq	24(%rbx), %rax
	orl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	28(%rbx), %rax
	sall	$8, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	leaq	28(%rbx), %rax
	movl	(%rax), %edx
	leaq	28(%rbx), %rax
	orl	%ecx, %edx
	movl	%edx, (%rax)
	movq	%rbx, %r13
	addq	$32, %rbx
	movl	$0, -44(%rbp)
	jmp	.L2
.L5:
	movl	4(%r13), %r15d
	movl	8(%r13), %r12d
	movl	%r15d, %edx
	sall	$9, %edx
	movl	%r12d, %eax
	shrl	$7, %eax
	orl	%eax, %edx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movzwl	%dx, %edx
	movl	%edx, (%rax)
	movl	12(%r13), %r14d
	movl	%r12d, %edx
	sall	$9, %edx
	movl	%r14d, %eax
	shrl	$7, %eax
	orl	%eax, %edx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movzwl	%dx, %edx
	movl	%edx, (%rax)
	movl	16(%r13), %r12d
	movl	%r14d, %edx
	sall	$9, %edx
	movl	%r12d, %eax
	shrl	$7, %eax
	orl	%eax, %edx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movzwl	%dx, %edx
	movl	%edx, (%rax)
	movl	20(%r13), %r14d
	movl	%r12d, %edx
	sall	$9, %edx
	movl	%r14d, %eax
	shrl	$7, %eax
	orl	%eax, %edx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movzwl	%dx, %edx
	movl	%edx, (%rax)
	movl	24(%r13), %r12d
	movl	%r14d, %edx
	sall	$9, %edx
	movl	%r12d, %eax
	shrl	$7, %eax
	orl	%eax, %edx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movzwl	%dx, %edx
	movl	%edx, (%rax)
	movl	28(%r13), %r14d
	movl	%r12d, %edx
	sall	$9, %edx
	movl	%r14d, %eax
	shrl	$7, %eax
	orl	%eax, %edx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movzwl	%dx, %edx
	movl	%edx, (%rax)
	movl	0(%r13), %r12d
	cmpl	$4, -44(%rbp)
	jg	.L6
	movl	%r14d, %edx
	sall	$9, %edx
	movl	%r12d, %eax
	shrl	$7, %eax
	orl	%eax, %edx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movzwl	%dx, %edx
	movl	%edx, (%rax)
	movl	%r12d, %edx
	sall	$9, %edx
	movl	%r15d, %eax
	shrl	$7, %eax
	orl	%eax, %edx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movzwl	%dx, %edx
	movl	%edx, (%rax)
	addq	$32, %r13
	addl	$1, -44(%rbp)
.L2:
	cmpl	$5, -44(%rbp)
	jle	.L5
	jmp	.L7
.L6:
	nop
.L7:
	nop
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	IDEA_set_encrypt_key, .-IDEA_set_encrypt_key
	.globl	IDEA_set_decrypt_key
	.type	IDEA_set_decrypt_key, @function
IDEA_set_decrypt_key:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rbx
	movq	-56(%rbp), %rax
	leaq	192(%rax), %r12
	movl	$0, -36(%rbp)
	jmp	.L9
.L12:
	movl	(%r12), %eax
	movq	%rbx, %r13
	leaq	4(%r13), %rbx
	movl	%eax, %edi
	call	inverse
	movl	%eax, 0(%r13)
	leaq	8(%r12), %rax
	movl	(%rax), %eax
	movl	$65536, %edx
	subl	%eax, %edx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movzwl	%dx, %edx
	movl	%edx, (%rax)
	leaq	4(%r12), %rax
	movl	(%rax), %eax
	movl	$65536, %edx
	subl	%eax, %edx
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movzwl	%dx, %edx
	movl	%edx, (%rax)
	leaq	12(%r12), %rax
	movl	(%rax), %eax
	movq	%rbx, %r13
	leaq	4(%r13), %rbx
	movl	%eax, %edi
	call	inverse
	movl	%eax, 0(%r13)
	cmpl	$8, -36(%rbp)
	je	.L13
	subq	$24, %r12
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	16(%r12), %edx
	movl	%edx, (%rax)
	movq	%rbx, %rax
	leaq	4(%rax), %rbx
	movl	20(%r12), %edx
	movl	%edx, (%rax)
	addl	$1, -36(%rbp)
.L9:
	cmpl	$8, -36(%rbp)
	jle	.L12
	jmp	.L11
.L13:
	nop
.L11:
	movq	-64(%rbp), %rbx
	movl	4(%rbx), %r12d
	leaq	4(%rbx), %rax
	movl	8(%rbx), %edx
	movl	%edx, (%rax)
	leaq	8(%rbx), %rax
	movl	%r12d, (%rax)
	movl	196(%rbx), %r12d
	leaq	196(%rbx), %rax
	movl	200(%rbx), %edx
	movl	%edx, (%rax)
	leaq	200(%rbx), %rax
	movl	%r12d, (%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	IDEA_set_decrypt_key, .-IDEA_set_decrypt_key
	.type	inverse, @function
inverse:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L15
	movq	$0, -32(%rbp)
	jmp	.L16
.L15:
	movq	$65537, -8(%rbp)
	movl	-68(%rbp), %eax
	movq	%rax, -16(%rbp)
	movq	$1, -32(%rbp)
	movq	$0, -24(%rbp)
.L19:
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rax
	subq	-40(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L17
	cmpq	$0, -32(%rbp)
	jns	.L18
	addq	$65537, -32(%rbp)
	jmp	.L18
.L17:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	imulq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L18:
	cmpq	$0, -40(%rbp)
	jne	.L19
.L16:
	movq	-32(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	inverse, .-inverse
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
