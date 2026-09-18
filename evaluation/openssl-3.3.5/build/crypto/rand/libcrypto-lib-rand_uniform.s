	.file	"rand_uniform.c"
	.text
	.globl	ossl_rand_uniform_uint32
	.type	ossl_rand_uniform_uint32, @function
ossl_rand_uniform_uint32:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$10, -12(%rbp)
	cmpl	$0, -60(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L2
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L12
.L2:
	cmpl	$1, -60(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L4
	movl	$0, %eax
	jmp	.L12
.L4:
	leaq	-36(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L5
	movq	-72(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L12
.L5:
	movl	-60(%rbp), %eax
	movl	-36(%rbp), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, -4(%rbp)
	movl	-60(%rbp), %eax
	negl	%eax
	cmpl	-4(%rbp), %eax
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L6
	movl	-28(%rbp), %eax
	jmp	.L12
.L6:
	movl	$0, -8(%rbp)
	jmp	.L7
.L11:
	leaq	-36(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L8
	movq	-72(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L12
.L8:
	movl	-60(%rbp), %eax
	movl	-36(%rbp), %edx
	movl	%edx, %edx
	imulq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jnb	.L9
	movl	-28(%rbp), %eax
	addl	$1, %eax
	jmp	.L12
.L9:
	cmpl	$-1, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L10
	movl	-28(%rbp), %eax
	jmp	.L12
.L10:
	movq	-24(%rbp), %rax
	movl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L7:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L11
	movl	-28(%rbp), %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	ossl_rand_uniform_uint32, .-ossl_rand_uniform_uint32
	.globl	ossl_rand_range_uint32
	.type	ossl_rand_range_uint32, @function
ossl_rand_range_uint32:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L14
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_rand_uniform_uint32@PLT
	movl	-12(%rbp), %edx
	addl	%edx, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	ossl_rand_range_uint32, .-ossl_rand_range_uint32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
