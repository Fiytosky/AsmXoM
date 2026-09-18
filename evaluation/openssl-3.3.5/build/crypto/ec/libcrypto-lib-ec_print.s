	.file	"ec_print.c"
	.text
	.section	.rodata
.LC0:
	.string	"0123456789ABCDEF"
	.section	.data.rel.local,"aw"
	.align 8
	.type	HEX_DIGITS, @object
	.size	HEX_DIGITS, 8
HEX_DIGITS:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"../crypto/ec/ec_print.c"
	.text
	.globl	EC_POINT_point2hex
	.type	EC_POINT_point2hex, @function
EC_POINT_point2hex:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	-96(%rbp), %rdi
	leaq	-56(%rbp), %rcx
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_point2buf@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L7
.L2:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	%rax, %rax
	leaq	.LC1(%rip), %rcx
	movl	$30, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L4
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L7
.L4:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L5
.L6:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movq	HEX_DIGITS(%rip), %rdx
	movl	-44(%rbp), %eax
	sarl	$4, %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	movq	HEX_DIGITS(%rip), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	andl	$15, %edx
	leaq	(%rax,%rdx), %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	subq	$1, -16(%rbp)
.L5:
	cmpq	$0, -16(%rbp)
	jne	.L6
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	EC_POINT_point2hex, .-EC_POINT_point2hex
	.globl	EC_POINT_hex2point
	.type	EC_POINT_hex2point, @function
EC_POINT_hex2point:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L9
	cmpq	$0, -64(%rbp)
	jne	.L10
.L9:
	movl	$0, %eax
	jmp	.L20
.L10:
	cmpq	$0, -72(%rbp)
	jne	.L12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L13
	jmp	.L14
.L12:
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
.L13:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	shrq	%rax
	movq	%rax, -32(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$69, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L21
	movq	-64(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf_ex@PLT
	testl	%eax, %eax
	je	.L22
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	je	.L22
	movl	$1, -4(%rbp)
	jmp	.L14
.L21:
	nop
	jmp	.L14
.L22:
	nop
.L14:
	movq	-40(%rbp), %rsi
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$78, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	cmpl	$0, -4(%rbp)
	jne	.L18
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_clear_free@PLT
.L19:
	movq	$0, -24(%rbp)
.L18:
	movq	-24(%rbp), %rax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	EC_POINT_hex2point, .-EC_POINT_hex2point
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
