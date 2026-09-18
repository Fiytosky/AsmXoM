	.file	"x509.c"
	.text
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB326:
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
.LFE326:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB328:
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
.LFE328:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	ossl_check_X509_CRL_type, @function
ossl_check_X509_CRL_type:
.LFB338:
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
.LFE338:
	.size	ossl_check_X509_CRL_type, .-ossl_check_X509_CRL_type
	.type	ossl_check_X509_CRL_sk_type, @function
ossl_check_X509_CRL_sk_type:
.LFB340:
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
.LFE340:
	.size	ossl_check_X509_CRL_sk_type, .-ossl_check_X509_CRL_sk_type
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB597:
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
	call	ERR_clear_error@PLT
	movl	$-1, %esi
	movl	$0, %edi
	call	CRYPTO_free_ex_index@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.type	cb, @function
cb:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	cb, .-cb
	.section	.rodata
.LC0:
	.string	"../fuzz/x509.c"
	.text
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-192(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L29
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L30
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_print@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509_issuer_and_serial_hash@PLT
	leaq	-136(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509@PLT
	movq	-136(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-128(%rbp), %rax
	subq	-184(%rbp), %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-128(%rbp), %rax
	subq	-184(%rbp), %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_CRL@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L32
	movq	-128(%rbp), %rax
	subq	-184(%rbp), %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_OCSP_RESPONSE@PLT
	movq	%rax, -80(%rbp)
	call	X509_STORE_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L33
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_cert@PLT
	call	X509_VERIFY_PARAM_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L34
	movq	-40(%rbp), %rax
	movl	$2097152, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	movq	-40(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	movq	-40(%rbp), %rax
	movl	$524288, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set1_param@PLT
	leaq	cb(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set_verify_cb@PLT
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L35
	movq	-120(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	cmpq	$0, -56(%rbp)
	je	.L22
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L36
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_crls@PLT
.L22:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	cmpq	$0, -80(%rbp)
	je	.L24
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_response_get1_basic@PLT
	movq	%rax, -88(%rbp)
.L24:
	cmpq	$0, -88(%rbp)
	je	.L37
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L38
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$4096, %ecx
	movq	%rax, %rdi
	call	OCSP_basic_verify@PLT
	movq	-24(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OCSP_cert_to_id@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L39
	leaq	-160(%rbp), %r9
	leaq	-152(%rbp), %r8
	leaq	-144(%rbp), %rcx
	leaq	-140(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	leaq	-168(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	OCSP_resp_find_status@PLT
	addq	$16, %rsp
	jmp	.L15
.L29:
	nop
	jmp	.L15
.L30:
	nop
	jmp	.L15
.L31:
	nop
	jmp	.L15
.L32:
	nop
	jmp	.L15
.L33:
	nop
	jmp	.L15
.L34:
	nop
	jmp	.L15
.L35:
	nop
	jmp	.L15
.L36:
	nop
	jmp	.L15
.L37:
	nop
	jmp	.L15
.L38:
	nop
	jmp	.L15
.L39:
	nop
.L15:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_CERTID_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_BASICRESP_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_RESPONSE_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	call	ERR_clear_error@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	FuzzerClearRand@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
