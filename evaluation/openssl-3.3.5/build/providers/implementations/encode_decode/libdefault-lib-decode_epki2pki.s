	.file	"decode_epki2pki.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/encode_decode/decode_epki2pki.c"
	.text
	.type	epki2pki_newctx, @function
epki2pki_newctx:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$42, %edx
	movq	%rax, %rsi
	movl	$264, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	epki2pki_newctx, .-epki2pki_newctx
	.type	epki2pki_freectx, @function
epki2pki_freectx:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$53, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	epki2pki_freectx, .-epki2pki_freectx
	.type	epki2pki_settable_ctx_params, @function
epki2pki_settable_ctx_params:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	settables.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	epki2pki_settable_ctx_params, .-epki2pki_settable_ctx_params
	.section	.rodata
.LC1:
	.string	"properties"
	.text
	.type	epki2pki_set_ctx_params, @function
epki2pki_set_ctx_params:
.LFB474:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L8
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L10
.L8:
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	epki2pki_set_ctx_params, .-epki2pki_set_ctx_params
	.section	.rodata
.LC2:
	.string	"data-type"
.LC3:
	.string	"PrivateKeyInfo"
.LC4:
	.string	"data-structure"
.LC5:
	.string	"data"
.LC6:
	.string	"type"
	.text
	.type	epki2pki_decode, @function
epki2pki_decode:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1320, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1240(%rbp)
	movq	%rsi, -1248(%rbp)
	movl	%edx, -1252(%rbp)
	movq	%rcx, -1264(%rbp)
	movq	%r8, -1272(%rbp)
	movq	%r9, -1280(%rbp)
	movq	-1240(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-1248(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L22
.L12:
	leaq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_d2i_read_bio@PLT
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -36(%rbp)
	jne	.L14
	movl	$1, %eax
	jmp	.L22
.L14:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, -36(%rbp)
	call	ERR_set_mark@PLT
	movq	-32(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_SIG@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L15
	movq	$0, -112(%rbp)
	call	ERR_clear_last_mark@PLT
	movq	16(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-1168(%rbp), %rax
	movq	-1280(%rbp), %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -36(%rbp)
	jmp	.L17
.L16:
	movq	$0, -128(%rbp)
	movl	$0, -132(%rbp)
	leaq	-120(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_SIG_get0@PLT
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movl	(%rax), %edi
	movq	-120(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movl	%eax, %r10d
	movq	-104(%rbp), %rax
	leaq	-128(%rbp), %r8
	leaq	-1168(%rbp), %rsi
	pushq	%rbx
	pushq	%rcx
	pushq	$0
	leaq	-132(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movq	%rax, %rdi
	call	PKCS12_pbe_crypt_ex@PLT
	addq	$32, %rsp
	testq	%rax, %rax
	jne	.L18
	movl	$0, -36(%rbp)
	jmp	.L19
.L18:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$136, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-132(%rbp), %eax
	cltq
	movq	%rax, -32(%rbp)
.L19:
	movq	$0, -104(%rbp)
.L17:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	jmp	.L20
.L15:
	call	ERR_pop_to_mark@PLT
.L20:
	call	ERR_set_mark@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -64(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -64(%rbp)
	je	.L21
	movq	-64(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	je	.L21
	leaq	-1168(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$2, -136(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-1232(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-1328(%rbp), %rax
	leaq	-1232(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-1328(%rbp), %rax
	movq	-1320(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1312(%rbp), %rax
	movq	-1304(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1296(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-1328(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-1328(%rbp), %rax
	movq	-1320(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1312(%rbp), %rax
	movq	-1304(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1296(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-1328(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-1328(%rbp), %rax
	movq	-1320(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1312(%rbp), %rax
	movq	-1304(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1296(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-1328(%rbp), %rax
	leaq	-136(%rbp), %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-1328(%rbp), %rax
	movq	-1320(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1312(%rbp), %rax
	movq	-1304(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1296(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-80(%rbp), %rbx
	leaq	-1328(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1328(%rbp), %rax
	movq	-1320(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1312(%rbp), %rax
	movq	-1304(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1296(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-1272(%rbp), %rdx
	leaq	-1168(%rbp), %rax
	movq	-1264(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -36(%rbp)
.L21:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$175, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-36(%rbp), %eax
.L22:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	epki2pki_decode, .-epki2pki_decode
	.globl	ossl_EncryptedPrivateKeyInfo_der_to_der_decoder_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_EncryptedPrivateKeyInfo_der_to_der_decoder_functions, @object
	.size	ossl_EncryptedPrivateKeyInfo_der_to_der_decoder_functions, 96
ossl_EncryptedPrivateKeyInfo_der_to_der_decoder_functions:
	.long	1
	.zero	4
	.quad	epki2pki_newctx
	.long	2
	.zero	4
	.quad	epki2pki_freectx
	.long	11
	.zero	4
	.quad	epki2pki_decode
	.long	6
	.zero	4
	.quad	epki2pki_settable_ctx_params
	.long	5
	.zero	4
	.quad	epki2pki_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	settables.1, @object
	.size	settables.1, 80
settables.1:
	.quad	.LC1
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"epki2pki_decode"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
