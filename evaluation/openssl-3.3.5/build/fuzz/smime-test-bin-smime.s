	.file	"smime.c"
	.text
	.type	ossl_check_X509_ALGOR_sk_type, @function
ossl_check_X509_ALGOR_sk_type:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	ossl_check_X509_ALGOR_sk_type, .-ossl_check_X509_ALGOR_sk_type
	.type	ossl_check_X509_ALGOR_freefunc_type, @function
ossl_check_X509_ALGOR_freefunc_type:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	ossl_check_X509_ALGOR_freefunc_type, .-ossl_check_X509_ALGOR_freefunc_type
	.type	ossl_check_const_PKCS7_SIGNER_INFO_sk_type, @function
ossl_check_const_PKCS7_SIGNER_INFO_sk_type:
.LFB117:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	ossl_check_const_PKCS7_SIGNER_INFO_sk_type, .-ossl_check_const_PKCS7_SIGNER_INFO_sk_type
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	FuzzerInitialize, .-FuzzerInitialize
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
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SMIME_read_PKCS7@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L10
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_get_signer_info@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L11
.L12:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_cert_from_signer_info@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	PKCS7_get_smimecap@PLT
	movq	%rax, -56(%rbp)
	movq	X509_ALGOR_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_freefunc_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	addl	$1, -20(%rbp)
.L11:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
.L10:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	call	ERR_clear_error@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rbx
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
