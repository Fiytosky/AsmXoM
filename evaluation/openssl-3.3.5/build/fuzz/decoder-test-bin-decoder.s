	.file	"decoder.c"
	.text
	.local	pctx
	.comm	pctx,8,8
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB358:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	FuzzerSetRand@PLT
	movl	$0, %esi
	movl	$14, %edi
	call	OPENSSL_init_crypto@PLT
	call	ASN1_PCTX_new@PLT
	movq	%rax, pctx(%rip)
	movq	pctx(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ASN1_PCTX_set_flags@PLT
	movq	pctx(%rip), %rax
	movl	$208, %esi
	movq	%rax, %rdi
	call	ASN1_PCTX_set_str_flags@PLT
	call	ERR_clear_error@PLT
	movl	$-1, %esi
	movl	$0, %edi
	call	CRYPTO_free_ex_index@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.section	.rodata
.LC0:
	.string	"../fuzz/decoder.c"
	.align 8
.LC1:
	.string	"assertion failed: pkey2 != NULL"
.LC2:
	.string	"DH"
.LC3:
	.string	"DHX"
.LC4:
	.string	"assertion failed: ctx != NULL"
	.text
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	leaq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L13
.L4:
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_data@PLT
	testl	%eax, %eax
	je	.L6
	movq	pctx(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
	movq	pctx(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_private@PLT
	movq	pctx(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_params@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L7
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$62, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L7:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L9
.L8:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	cmpl	$2048, %eax
	jg	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check@PLT
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	cmpl	$4096, %eax
	jg	.L11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_private_check@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_pairwise_check@PLT
.L11:
	cmpq	$0, -8(%rbp)
	jne	.L12
	leaq	.LC0(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$81, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L6:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	call	ERR_clear_error@PLT
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	pctx(%rip), %rax
	movq	%rax, %rdi
	call	ASN1_PCTX_free@PLT
	call	FuzzerClearRand@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
