	.file	"crl.c"
	.text
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB465:
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
	movl	$-1, %esi
	movl	$0, %edi
	call	CRYPTO_free_ex_index@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.section	.rodata
.LC0:
	.string	"../fuzz/crl.c"
	.text
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_CRL@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L4
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_print@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_CRL@PLT
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$36, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
.L4:
	call	ERR_clear_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB467:
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
.LFE467:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
