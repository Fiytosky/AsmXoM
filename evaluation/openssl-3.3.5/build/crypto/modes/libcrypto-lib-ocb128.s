	.file	"ocb128.c"
	.text
	.type	ocb_ntz, @function
ocb_ntz:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	shrq	-24(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L3
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ocb_ntz, .-ocb_ntz
	.type	ocb_block_lshift, @function
ocb_block_lshift:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$0, -5(%rbp)
	movl	$15, -4(%rbp)
	jmp	.L6
.L7:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	$8, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movb	%al, -6(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-32(%rbp), %rdx
	movl	%edx, %ecx
	sall	%cl, %eax
	movl	%eax, %edx
	movzbl	-5(%rbp), %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movzbl	-6(%rbp), %eax
	movb	%al, -5(%rbp)
	subl	$1, -4(%rbp)
.L6:
	cmpl	$0, -4(%rbp)
	jns	.L7
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	ocb_block_lshift, .-ocb_block_lshift
	.type	ocb_double, @function
ocb_double:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-128, %eax
	movb	%al, -1(%rbp)
	shrb	$7, -1(%rbp)
	movzbl	-1(%rbp), %eax
	negl	%eax
	andl	$-121, %eax
	movb	%al, -1(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ocb_block_lshift
	movq	-32(%rbp), %rax
	movzbl	15(%rax), %eax
	xorb	-1(%rbp), %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 15(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	ocb_double, .-ocb_double
	.type	ocb_block_xor, @function
ocb_block_xor:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L10
.L11:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L10:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L11
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	ocb_block_xor, .-ocb_block_xor
	.section	.rodata
.LC0:
	.string	"../crypto/modes/ocb128.c"
	.text
	.type	ocb_lookup_l, @function
ocb_lookup_l:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L13
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	jmp	.L14
.L13:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L17
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	leaq	4(%rcx), %rax
	andq	$-4, %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$113, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L14
.L16:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 88(%rax)
	jmp	.L17
.L18:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_double
	addq	$1, -8(%rbp)
.L17:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L18
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	ocb_lookup_l, .-ocb_lookup_l
	.globl	CRYPTO_ocb128_new
	.type	CRYPTO_ocb128_new, @function
CRYPTO_ocb128_new:
.LFB79:
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
	leaq	.LC0(%rip), %rax
	movl	$137, %edx
	movq	%rax, %rsi
	movl	$176, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L20
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ocb128_init@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	jmp	.L22
.L21:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$142, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L20:
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	CRYPTO_ocb128_new, .-CRYPTO_ocb128_new
	.globl	CRYPTO_ocb128_init
	.type	CRYPTO_ocb128_init, @function
CRYPTO_ocb128_init:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	$176, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$5, 48(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	salq	$4, %rax
	leaq	.LC0(%rip), %rcx
	movl	$158, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	56(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	56(%rdx), %rdi
	movq	%rax, %rdx
	call	*%rcx
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_double
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$72, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ocb_double
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_double
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_double
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	addq	$32, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_double
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	addq	$48, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_double
	movq	-8(%rbp), %rax
	movq	$4, 40(%rax)
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	CRYPTO_ocb128_init, .-CRYPTO_ocb128_init
	.globl	CRYPTO_ocb128_copy_ctx
	.type	CRYPTO_ocb128_copy_ctx, @function
CRYPTO_ocb128_copy_ctx:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	cmpq	$0, -24(%rbp)
	je	.L27
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L27:
	cmpq	$0, -32(%rbp)
	je	.L28
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L28:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	salq	$4, %rax
	leaq	.LC0(%rip), %rcx
	movl	$203, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L29:
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	CRYPTO_ocb128_copy_ctx, .-CRYPTO_ocb128_copy_ctx
	.globl	CRYPTO_ocb128_setiv
	.type	CRYPTO_ocb128_setiv, @function
CRYPTO_ocb128_setiv:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	cmpq	$15, -136(%rbp)
	ja	.L33
	cmpq	$0, -136(%rbp)
	je	.L33
	cmpq	$16, -144(%rbp)
	ja	.L33
	cmpq	$0, -144(%rbp)
	jne	.L34
.L33:
	movl	$-1, %eax
	jmp	.L36
.L34:
	movq	-120(%rbp), %rax
	addq	$96, %rax
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-144(%rbp), %rax
	sall	$3, %eax
	addl	%eax, %eax
	andl	$-16, %eax
	movb	%al, -112(%rbp)
	leaq	-112(%rbp), %rax
	addq	$1, %rax
	movl	$15, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$16, %eax
	subq	-136(%rbp), %rax
	leaq	-112(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$15, %eax
	subq	-136(%rbp), %rax
	movzbl	-112(%rbp,%rax), %edx
	movl	$15, %eax
	subq	-136(%rbp), %rax
	orl	$1, %edx
	movb	%dl, -112(%rbp,%rax)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movzbl	-49(%rbp), %eax
	andl	$-64, %eax
	movb	%al, -49(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %r8
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-96(%rbp), %rdx
	addq	$16, %rdx
	leaq	-48(%rbp), %rax
	addq	$1, %rax
	leaq	-48(%rbp), %rdi
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	call	ocb_block_xor
	movzbl	-97(%rbp), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$7, %eax
	movq	%rax, -16(%rbp)
	movq	-120(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rcx
	leaq	-96(%rbp), %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ocb_block_lshift
	movb	$-1, -17(%rbp)
	movzbl	-17(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	$8, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movb	%al, -17(%rbp)
	movq	-120(%rbp), %rax
	movzbl	159(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	leaq	16(%rax), %rdx
	leaq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	andb	-17(%rbp), %al
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	$8, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%esi, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movb	%dl, 159(%rax)
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	CRYPTO_ocb128_setiv, .-CRYPTO_ocb128_setiv
	.globl	CRYPTO_ocb128_aad
	.type	CRYPTO_ocb128_aad, @function
CRYPTO_ocb128_aad:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L38
.L41:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ocb_ntz
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_lookup_l
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L43
.L39:
	movq	-72(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	addq	$16, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-64(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %r8
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 136(%rax)
	addq	$1, -8(%rbp)
.L38:
	movq	-8(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L41
	movq	-88(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L42
	movq	-72(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 120(%rax)
	leaq	-64(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$-128, (%rax)
	movq	-72(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-64(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %r8
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 136(%rax)
.L42:
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	CRYPTO_ocb128_aad, .-CRYPTO_ocb128_aad
	.globl	CRYPTO_ocb128_encrypt
	.type	CRYPTO_ocb128_encrypt, @function
CRYPTO_ocb128_encrypt:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L45
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L46
.L47:
	addq	$1, -16(%rbp)
.L46:
	shrq	-24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L47
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_lookup_l
	testq	%rax, %rax
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-104(%rbp), %rax
	movq	32(%rax), %r10
	movq	-104(%rbp), %rax
	leaq	160(%rax), %r8
	movq	-104(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-104(%rbp), %rax
	leaq	144(%rax), %r9
	movq	-104(%rbp), %rax
	movq	104(%rax), %rax
	leaq	1(%rax), %r11
	movq	-104(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rax
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	jmp	.L50
.L45:
	movq	-104(%rbp), %rax
	movq	104(%rax), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L51
.L53:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ocb_ntz
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_lookup_l
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L49
.L52:
	movq	-104(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	addq	$16, -112(%rbp)
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	160(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	168(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 168(%rax)
	movq	-104(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-80(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-72(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %r8
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-104(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-80(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-72(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	addq	$16, -120(%rbp)
	addq	$1, -8(%rbp)
.L51:
	movq	-8(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L53
.L50:
	movq	-128(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L54
	movq	-104(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rax
	leaq	144(%rax), %rdi
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	call	*%rcx
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ocb_block_xor
	leaq	-96(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-56(%rbp), %rdx
	movq	-112(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-96(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$-128, (%rax)
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	160(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	168(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 168(%rax)
.L54:
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	CRYPTO_ocb128_encrypt, .-CRYPTO_ocb128_encrypt
	.globl	CRYPTO_ocb128_decrypt
	.type	CRYPTO_ocb128_decrypt, @function
CRYPTO_ocb128_decrypt:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L56
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L57
.L58:
	addq	$1, -16(%rbp)
.L57:
	shrq	-24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L58
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_lookup_l
	testq	%rax, %rax
	jne	.L59
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-104(%rbp), %rax
	movq	32(%rax), %r10
	movq	-104(%rbp), %rax
	leaq	160(%rax), %r8
	movq	-104(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-104(%rbp), %rax
	leaq	144(%rax), %r9
	movq	-104(%rbp), %rax
	movq	104(%rax), %rax
	leaq	1(%rax), %r11
	movq	-104(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rax
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	jmp	.L61
.L56:
	movq	-104(%rbp), %rax
	movq	104(%rax), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L62
.L64:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ocb_ntz
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocb_lookup_l
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L63
	movl	$0, %eax
	jmp	.L60
.L63:
	movq	-104(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	addq	$16, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-80(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-72(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %r8
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-104(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-80(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-72(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	160(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	168(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 168(%rax)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	addq	$16, -120(%rbp)
	addq	$1, -8(%rbp)
.L62:
	movq	-8(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L64
.L61:
	movq	-128(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L65
	movq	-104(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rax
	leaq	144(%rax), %rdi
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	call	*%rcx
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ocb_block_xor
	leaq	-96(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-96(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$-128, (%rax)
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	160(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	168(%rax), %rax
	xorq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 168(%rax)
.L65:
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movl	$1, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	CRYPTO_ocb128_decrypt, .-CRYPTO_ocb128_decrypt
	.type	ocb_finish, @function
ocb_finish:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	cmpq	$16, -40(%rbp)
	ja	.L67
	cmpq	$0, -40(%rbp)
	jne	.L68
.L67:
	movl	$-1, %eax
	jmp	.L71
.L68:
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %r8
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-16(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L70
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L71
.L70:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	ocb_finish, .-ocb_finish
	.globl	CRYPTO_ocb128_finish
	.type	CRYPTO_ocb128_finish, @function
CRYPTO_ocb128_finish:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ocb_finish
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	CRYPTO_ocb128_finish, .-CRYPTO_ocb128_finish
	.globl	CRYPTO_ocb128_tag
	.type	CRYPTO_ocb128_tag, @function
CRYPTO_ocb128_tag:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ocb_finish
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	CRYPTO_ocb128_tag, .-CRYPTO_ocb128_tag
	.globl	CRYPTO_ocb128_cleanup
	.type	CRYPTO_ocb128_cleanup, @function
CRYPTO_ocb128_cleanup:
.LFB89:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L78
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$553, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L78:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	CRYPTO_ocb128_cleanup, .-CRYPTO_ocb128_cleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
