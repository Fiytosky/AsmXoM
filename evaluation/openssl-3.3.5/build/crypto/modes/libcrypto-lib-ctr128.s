	.file	"ctr128.c"
	.text
	.type	ctr128_inc, @function
ctr128_inc:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$16, -4(%rbp)
	movl	$1, -8(%rbp)
.L2:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -8(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
	shrl	$8, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L2
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ctr128_inc, .-ctr128_inc
	.type	ctr128_inc_aligned, @function
ctr128_inc_aligned:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -56(%rbp)
	movl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L4
	movq	-56(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L5
.L4:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ctr128_inc
	jmp	.L3
.L5:
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$1, -8(%rbp)
	movq	$2, -16(%rbp)
.L7:
	subq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	notq	%rax
	andq	%rdx, %rax
	shrq	$63, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L7
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	ctr128_inc_aligned, .-ctr128_inc_aligned
	.globl	CRYPTO_ctr128_encrypt
	.type	CRYPTO_ctr128_encrypt, @function
CRYPTO_ctr128_encrypt:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L9
.L11:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %esi
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
.L9:
	cmpl	$0, -4(%rbp)
	je	.L12
	cmpq	$0, -40(%rbp)
	jne	.L11
	jmp	.L12
.L15:
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ctr128_inc_aligned
	movl	$0, -4(%rbp)
	jmp	.L13
.L14:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %esi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$8, -4(%rbp)
.L13:
	cmpl	$15, -4(%rbp)
	jbe	.L14
	subq	$16, -40(%rbp)
	addq	$16, -32(%rbp)
	addq	$16, -24(%rbp)
	movl	$0, -4(%rbp)
.L12:
	cmpq	$15, -40(%rbp)
	ja	.L15
	cmpq	$0, -40(%rbp)
	je	.L16
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ctr128_inc_aligned
	jmp	.L17
.L18:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L17:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L18
.L16:
	movq	16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	CRYPTO_ctr128_encrypt, .-CRYPTO_ctr128_encrypt
	.type	ctr96_inc, @function
ctr96_inc:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$12, -4(%rbp)
	movl	$1, -8(%rbp)
.L21:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -8(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
	shrl	$8, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L21
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ctr96_inc, .-ctr96_inc
	.globl	CRYPTO_ctr128_encrypt_ctr32
	.type	CRYPTO_ctr128_encrypt_ctr32, @function
CRYPTO_ctr128_encrypt_ctr32:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L23
.L25:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %esi
	movl	-4(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	subq	$1, -56(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
.L23:
	cmpl	$0, -4(%rbp)
	je	.L24
	cmpq	$0, -56(%rbp)
	jne	.L25
.L24:
	movq	-72(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
#APP
# 166 "../crypto/modes/ctr128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L26
.L30:
	movq	-56(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -16(%rbp)
	cmpq	$268435456, -16(%rbp)
	jbe	.L27
	movq	$268435456, -16(%rbp)
.L27:
	movq	-16(%rbp), %rax
	addl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpq	-16(%rbp), %rax
	jnb	.L28
	movl	-8(%rbp), %eax
	subq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
.L28:
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
#APP
# 189 "../crypto/modes/ctr128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-72(%rbp), %rdx
	addq	$12, %rdx
	movl	%eax, (%rdx)
	cmpl	$0, -8(%rbp)
	jne	.L29
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ctr96_inc
.L29:
	salq	$4, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -40(%rbp)
.L26:
	cmpq	$15, -56(%rbp)
	ja	.L30
	cmpq	$0, -56(%rbp)
	je	.L31
	movq	-80(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	24(%rbp), %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%r9
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
#APP
# 202 "../crypto/modes/ctr128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movq	-72(%rbp), %rdx
	addq	$12, %rdx
	movl	%eax, (%rdx)
	cmpl	$0, -8(%rbp)
	jne	.L33
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ctr96_inc
	jmp	.L33
.L34:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-4(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L33:
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	testq	%rax, %rax
	jne	.L34
.L31:
	movq	16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	CRYPTO_ctr128_encrypt_ctr32, .-CRYPTO_ctr128_encrypt_ctr32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
