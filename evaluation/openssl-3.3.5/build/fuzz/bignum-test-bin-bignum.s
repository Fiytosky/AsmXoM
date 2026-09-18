	.file	"bignum.c"
	.text
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %esi
	movl	$2, %edi
	call	OPENSSL_init_crypto@PLT
	call	ERR_clear_error@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.section	.rodata
.LC0:
	.string	"../fuzz/bignum.c"
	.align 8
.LC1:
	.string	"assertion failed: BN_bin2bn(buf, l1, b1) == b1"
	.align 8
.LC2:
	.string	"assertion failed: BN_bin2bn(buf + l1, l2, b2) == b2"
	.align 8
.LC3:
	.string	"assertion failed: BN_bin2bn(buf + l1 + l2, l3, b3) == b3"
	.align 8
.LC4:
	.string	"assertion failed: BN_mod_exp(b4, b1, b2, b3, ctx)"
	.align 8
.LC5:
	.string	"assertion failed: BN_mod_exp_simple(b5, b1, b2, b3, ctx)"
.LC6:
	.string	"assertion failed: success"
	.text
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -88(%rbp)
	cmpq	$2, -112(%rbp)
	jbe	.L4
	subq	$3, -112(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	imulq	-112(%rbp), %rax
	movabsq	$-9187201950435737471, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$7, %rax
	andl	$511, %eax
	movq	%rax, -16(%rbp)
	addq	$1, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-112(%rbp), %rax
	subq	-16(%rbp), %rax
	imulq	%rdx, %rax
	movabsq	$-9187201950435737471, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$7, %rax
	andl	$511, %eax
	movq	%rax, -24(%rbp)
	addq	$1, -104(%rbp)
	movq	-112(%rbp), %rax
	subq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	andl	$511, %eax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	movl	%eax, -40(%rbp)
	addq	$1, -104(%rbp)
.L4:
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	cmpq	%rax, -48(%rbp)
	je	.L5
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L5:
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	movq	-104(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	cmpq	%rax, -56(%rbp)
	je	.L6
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$68, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L6:
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	cmpq	%rax, -64(%rbp)
	je	.L7
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$69, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L7:
	movl	-40(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L8
	movl	$1, -4(%rbp)
	jmp	.L9
.L8:
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	jne	.L10
	leaq	.LC0(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$78, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L10:
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_simple@PLT
	testl	%eax, %eax
	jne	.L11
	leaq	.LC0(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$79, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L11:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L14
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	movl	$10, %edi
	call	putchar@PLT
	jmp	.L9
.L14:
	nop
.L9:
	cmpl	$0, -4(%rbp)
	jne	.L12
	leaq	.LC0(%rip), %rcx
	leaq	.LC6(%rip), %rax
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L12:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	call	ERR_clear_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
