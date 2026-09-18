	.file	"endecoder_legacy_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"DH"
.LC1:
	.string	"type-specific"
.LC2:
	.string	"DHX"
.LC3:
	.string	"DSA"
.LC4:
	.string	"EC"
.LC5:
	.string	"RSA"
	.section	.data.rel,"aw"
	.align 32
	.type	test_stanzas, @object
	.size	test_stanzas, 800
test_stanzas:
	.quad	.LC0
	.quad	.LC0
	.quad	.LC1
	.long	28
	.zero	4
	.quad	0
	.quad	0
	.quad	i2d_DHparams
	.quad	0
	.quad	0
	.quad	0
	.quad	PEM_write_bio_DHparams
	.quad	0
	.quad	0
	.quad	0
	.quad	d2i_DHparams
	.quad	0
	.quad	0
	.quad	0
	.quad	PEM_read_bio_DHparams
	.quad	0
	.quad	.LC2
	.quad	.LC2
	.quad	.LC1
	.long	920
	.zero	4
	.quad	0
	.quad	0
	.quad	i2d_DHxparams
	.quad	0
	.quad	0
	.quad	0
	.quad	PEM_write_bio_DHxparams
	.quad	0
	.quad	0
	.quad	0
	.quad	d2i_DHxparams
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	.LC3
	.quad	.LC1
	.long	116
	.zero	4
	.quad	i2d_DSAPrivateKey
	.quad	i2d_DSAPublicKey
	.quad	i2d_DSAparams
	.quad	i2d_DSA_PUBKEY
	.quad	PEM_write_bio_DSAPrivateKey
	.quad	0
	.quad	PEM_write_bio_DSAparams
	.quad	PEM_write_bio_DSA_PUBKEY
	.quad	d2i_DSAPrivateKey
	.quad	d2i_DSAPublicKey
	.quad	d2i_DSAparams
	.quad	d2i_DSA_PUBKEY
	.quad	PEM_read_bio_DSAPrivateKey
	.quad	0
	.quad	PEM_read_bio_DSAparams
	.quad	PEM_read_bio_DSA_PUBKEY
	.quad	.LC4
	.quad	.LC4
	.quad	.LC1
	.long	408
	.zero	4
	.quad	i2d_ECPrivateKey
	.quad	0
	.quad	i2d_ECParameters
	.quad	i2d_EC_PUBKEY
	.quad	PEM_write_bio_ECPrivateKey
	.quad	0
	.quad	0
	.quad	PEM_write_bio_EC_PUBKEY
	.quad	d2i_ECPrivateKey
	.quad	0
	.quad	d2i_ECParameters
	.quad	d2i_EC_PUBKEY
	.quad	PEM_read_bio_ECPrivateKey
	.quad	0
	.quad	0
	.quad	PEM_read_bio_EC_PUBKEY
	.quad	.LC5
	.quad	.LC5
	.quad	.LC1
	.long	6
	.zero	4
	.quad	i2d_RSAPrivateKey
	.quad	i2d_RSAPublicKey
	.quad	0
	.quad	i2d_RSA_PUBKEY
	.quad	PEM_write_bio_RSAPrivateKey
	.quad	PEM_write_bio_RSAPublicKey
	.quad	0
	.quad	PEM_write_bio_RSA_PUBKEY
	.quad	d2i_RSAPrivateKey
	.quad	d2i_RSAPublicKey
	.quad	0
	.quad	d2i_RSA_PUBKEY
	.quad	PEM_read_bio_RSAPrivateKey
	.quad	PEM_read_bio_RSAPublicKey
	.quad	0
	.quad	PEM_read_bio_RSA_PUBKEY
	.section	.rodata
	.align 32
	.type	DH_params, @object
	.size	DH_params, 40
DH_params:
	.zero	40
	.align 32
	.type	DHX_params, @object
	.size	DHX_params, 40
DHX_params:
	.zero	40
	.data
	.align 8
	.type	qbits, @object
	.size	qbits, 8
qbits:
	.quad	160
	.align 8
	.type	pbits, @object
	.size	pbits, 8
pbits:
	.quad	1024
	.section	.rodata
.LC6:
	.string	"pbits"
.LC7:
	.string	"qbits"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	DSA_params, @object
	.size	DSA_params, 120
DSA_params:
	.quad	.LC6
	.long	2
	.zero	4
	.quad	pbits
	.quad	8
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	qbits
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.data
	.align 8
	.type	groupname, @object
	.size	groupname, 11
groupname:
	.string	"prime256v1"
	.section	.rodata
.LC8:
	.string	"group"
	.section	.data.rel.ro.local
	.align 32
	.type	EC_params, @object
	.size	EC_params, 80
EC_params:
	.quad	.LC8
	.long	4
	.zero	4
	.quad	groupname
	.quad	10
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.data.rel.local,"aw"
	.align 32
	.type	keys, @object
	.size	keys, 160
keys:
	.quad	.LC0
	.long	28
	.zero	4
	.quad	DH_params
	.quad	0
	.quad	.LC2
	.long	920
	.zero	4
	.quad	DHX_params
	.quad	0
	.quad	.LC3
	.long	116
	.zero	4
	.quad	DSA_params
	.quad	0
	.quad	.LC4
	.long	408
	.zero	4
	.quad	EC_params
	.quad	0
	.quad	.LC5
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.text
	.type	make_key, @function
make_key:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L2
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	testl	%eax, %eax
	jle	.L10
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jle	.L10
.L4:
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	testl	%eax, %eax
	jle	.L10
.L2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L6
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.L7
.L6:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
.L7:
	cmpq	$0, -8(%rbp)
	je	.L5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L5
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jmp	.L5
.L10:
	nop
.L5:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	make_key, .-make_key
	.type	lookup_key, @function
lookup_key:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L12
.L15:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L13
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	addq	%rdx, %rax
	jmp	.L14
.L13:
	addq	$1, -8(%rbp)
.L12:
	cmpq	$4, -8(%rbp)
	jbe	.L15
	movl	$0, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	lookup_key, .-lookup_key
	.section	.rodata
.LC9:
	.string	"0"
.LC10:
	.string	"len_legacy"
	.align 8
.LC11:
	.string	"../test/endecoder_legacy_test.c"
.LC12:
	.string	"len_provided"
.LC13:
	.string	"str_legacy"
.LC14:
	.string	"str_provided"
	.text
	.type	test_membio_str_eq, @function
test_membio_str_eq:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$292, %esi
	movq	%rax, %rdi
	call	test_long_ge@PLT
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$293, %esi
	movq	%rax, %rdi
	call	test_long_ge@PLT
	testl	%eax, %eax
	je	.L17
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC11(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$294, %esi
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L17
	movl	$1, %eax
	jmp	.L19
.L17:
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	test_membio_str_eq, .-test_membio_str_eq
	.section	.rodata
	.align 8
.LC15:
	.string	"membio_legacy = BIO_new(BIO_s_mem())"
	.align 8
.LC16:
	.string	"membio_provided = BIO_new(BIO_s_mem())"
.LC17:
	.string	"PEM"
	.align 8
.LC18:
	.string	"ectx = OSSL_ENCODER_CTX_new_for_pkey(provided_pkey, selection, \"PEM\", structure, NULL)"
	.align 8
.LC19:
	.string	"OSSL_ENCODER_to_bio(ectx, membio_provided)"
	.align 8
.LC20:
	.string	"pem_write_bio(membio_legacy, legacy_key, NULL, NULL, 0, NULL, NULL)"
	.align 8
.LC21:
	.string	"decoded_legacy_pkey = EVP_PKEY_new()"
	.align 8
.LC22:
	.string	"dctx = OSSL_DECODER_CTX_new_for_pkey(&decoded_provided_pkey, \"PEM\", structure, keytype, selection, NULL, NULL)"
	.align 8
.LC23:
	.string	"OSSL_DECODER_from_bio(dctx, membio_provided)"
	.align 8
.LC24:
	.string	"decoded_legacy_key = pem_read_bio(membio_legacy, NULL, NULL, NULL)"
	.align 8
.LC25:
	.string	"EVP_PKEY_assign(decoded_legacy_pkey, evp_type, decoded_legacy_key)"
	.align 8
.LC26:
	.string	"evp_pkey_eq(decoded_provided_pkey, decoded_legacy_pkey)"
.LC27:
	.string	"decoded_provided_pkey:"
.LC28:
	.string	"decoded_legacy_pkey:"
	.text
	.type	test_protected_PEM, @function
test_protected_PEM:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$317, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$318, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	movq	40(%rbp), %rdx
	leaq	.LC17(%rip), %rdi
	movl	32(%rbp), %esi
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$321, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L31
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$325, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	-96(%rbp), %r10
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$326, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_membio_str_eq
	testl	%eax, %eax
	je	.L31
	cmpq	$0, -104(%rbp)
	je	.L26
	call	EVP_PKEY_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$334, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movl	32(%rbp), %edi
	movq	-72(%rbp), %rcx
	movq	40(%rbp), %rdx
	leaq	.LC17(%rip), %rsi
	leaq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$335, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$340, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$341, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movq	-56(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$343, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$347, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L26
	leaq	.LC27(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-64(%rbp), %rsi
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	16(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	leaq	.LC28(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$351, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rsi
	movq	16(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
.L26:
	movl	$1, -4(%rbp)
	jmp	.L23
.L30:
	nop
	jmp	.L23
.L31:
	nop
	jmp	.L23
.L32:
	nop
.L23:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	test_protected_PEM, .-test_protected_PEM
	.section	.rodata
	.align 8
.LC29:
	.string	"pem_write_bio(membio_legacy, legacy_key)"
	.text
	.type	test_unprotected_PEM, @function
test_unprotected_PEM:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$385, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$386, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	40(%rbp), %rdx
	leaq	.LC17(%rip), %rdi
	movl	32(%rbp), %esi
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$389, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L44
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$393, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$394, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_membio_str_eq
	testl	%eax, %eax
	je	.L44
	cmpq	$0, -104(%rbp)
	je	.L39
	call	EVP_PKEY_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$401, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movl	32(%rbp), %edi
	movq	-72(%rbp), %rcx
	movq	40(%rbp), %rdx
	leaq	.LC17(%rip), %rsi
	leaq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$402, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_bio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$407, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$408, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movq	-56(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$410, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$414, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L39
	leaq	.LC27(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$416, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-64(%rbp), %rsi
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	16(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	leaq	.LC28(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$418, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rsi
	movq	16(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
.L39:
	movl	$1, -4(%rbp)
	jmp	.L36
.L43:
	nop
	jmp	.L36
.L44:
	nop
	jmp	.L36
.L45:
	nop
.L36:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_unprotected_PEM, .-test_unprotected_PEM
	.section	.rodata
.LC30:
	.string	"DER"
	.align 8
.LC31:
	.string	"ectx = OSSL_ENCODER_CTX_new_for_pkey(provided_pkey, selection, \"DER\", structure, NULL)"
	.align 8
.LC32:
	.string	"OSSL_ENCODER_to_data(ectx, &der_provided, &der_provided_len)"
	.align 8
.LC33:
	.string	"der_legacy_len = i2d(legacy_key, &der_legacy)"
.LC34:
	.string	"der_legacy"
.LC35:
	.string	"der_provided"
	.align 8
.LC36:
	.string	"dctx = OSSL_DECODER_CTX_new_for_pkey(&decoded_provided_pkey, \"DER\", structure, keytype, selection, NULL, NULL)"
	.align 8
.LC37:
	.string	"(pder_provided = der_provided, tmp_size = der_provided_len, OSSL_DECODER_from_data(dctx, &pder_provided, &tmp_size))"
	.align 8
.LC38:
	.string	"(pder_legacy = der_legacy, decoded_legacy_key = d2i(NULL, &pder_legacy, (long)der_legacy_len))"
	.text
	.type	test_DER, @function
test_DER:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -104(%rbp)
	movq	40(%rbp), %rdx
	leaq	.LC30(%rip), %rdi
	movl	32(%rbp), %esi
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$454, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	leaq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$458, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	leaq	-56(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$460, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L54
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %r8
	movq	-72(%rbp), %rdi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC11(%rip), %rax
	pushq	-32(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$461, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L54
	cmpq	$0, -152(%rbp)
	je	.L50
	call	EVP_PKEY_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$468, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	movl	32(%rbp), %edi
	movq	-120(%rbp), %rcx
	movq	40(%rbp), %rdx
	leaq	.LC30(%rip), %rsi
	leaq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$469, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$474, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$478, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	movq	-48(%rbp), %rdx
	movl	-124(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$481, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$485, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L50
	leaq	.LC27(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$487, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-104(%rbp), %rsi
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	16(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	leaq	.LC28(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$489, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	16(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
.L50:
	movl	$1, -4(%rbp)
	jmp	.L49
.L54:
	nop
	jmp	.L49
.L55:
	nop
.L49:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-72(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movl	$499, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movl	$500, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_DER, .-test_DER
	.section	.rodata
	.align 8
.LC39:
	.string	"test_stanza = &test_stanzas[idx]"
	.align 8
.LC40:
	.string	"key = lookup_key(test_stanza->keytype)"
.LC41:
	.string	"pkey = key->key"
	.align 8
.LC42:
	.string	"evp_pkey_copy_downgraded(&downgraded_pkey, pkey)"
.LC43:
	.string	"downgraded_pkey"
.LC44:
	.string	"key->evp_type"
	.align 8
.LC45:
	.string	"EVP_PKEY_get_id(downgraded_pkey)"
	.align 8
.LC46:
	.string	"legacy_obj = EVP_PKEY_get0(downgraded_pkey)"
	.align 8
.LC47:
	.string	"Test OSSL_ENCODER against PEM_write_bio_{TYPE}PrivateKey for %s, %s"
	.align 8
.LC48:
	.string	"Test OSSL_ENCODER against PEM_write_bio_{TYPE}PublicKey for %s, %s"
	.align 8
.LC49:
	.string	"Test OSSL_ENCODER against PEM_write_bio_{TYPE}params for %s, %s"
.LC50:
	.string	"SubjectPublicKeyInfo"
	.align 8
.LC51:
	.string	"Test OSSL_ENCODER against PEM_write_bio_{TYPE}_PUBKEY for %s, %s"
	.align 8
.LC52:
	.string	"Test OSSL_ENCODER against i2d_{TYPE}PrivateKey for %s, %s"
	.align 8
.LC53:
	.string	"Test OSSL_ENCODER against i2d_{TYPE}PublicKey for %s, %s"
	.align 8
.LC54:
	.string	"Test OSSL_ENCODER against i2d_{TYPE}params for %s, %s"
	.align 8
.LC55:
	.string	"Test OSSL_ENCODER against i2d_{TYPE}_PUBKEY for %s, %s"
	.text
	.type	test_key, @function
test_key:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movl	%edi, -212(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -64(%rbp)
	movl	-212(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	test_stanzas(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$514, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lookup_key
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$515, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$519, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movq	-56(%rbp), %rdx
	leaq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_copy_downgraded@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movl	%eax, %ecx
	movl	$520, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	movq	-200(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$521, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movq	-48(%rbp), %rax
	movl	8(%rax), %ebx
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %esi
	leaq	.LC44(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$522, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L89
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$523, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movl	$1, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movl	$135, -68(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L63
.L65:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$535, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	128(%rax), %r8
	movq	-40(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	EVP_PKEY_eq@GOTPCREL(%rip), %rdx
	movq	%rdx, %r9
	movq	-64(%rbp), %rdx
	pushq	-80(%rbp)
	movl	-68(%rbp), %edi
	pushq	%rdi
	pushq	-56(%rbp)
	movq	EVP_PKEY_print_private@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_protected_PEM
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L64
	movl	$0, -20(%rbp)
.L64:
	addq	$1, -32(%rbp)
.L63:
	cmpq	$1, -32(%rbp)
	jbe	.L65
.L62:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movl	$134, -84(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L67
.L69:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$555, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	136(%rax), %r8
	movq	-40(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	EVP_PKEY_eq@GOTPCREL(%rip), %rdx
	movq	%rdx, %r9
	movq	-64(%rbp), %rdx
	pushq	-96(%rbp)
	movl	-84(%rbp), %edi
	pushq	%rdi
	pushq	-56(%rbp)
	movq	EVP_PKEY_print_public@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_unprotected_PEM
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L68
	movl	$0, -20(%rbp)
.L68:
	addq	$1, -32(%rbp)
.L67:
	cmpq	$1, -32(%rbp)
	jbe	.L69
.L66:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movl	$132, -100(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L71
.L73:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$573, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	144(%rax), %r8
	movq	-40(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	EVP_PKEY_parameters_eq@GOTPCREL(%rip), %rdx
	movq	%rdx, %r9
	movq	-64(%rbp), %rdx
	pushq	-112(%rbp)
	movl	-100(%rbp), %edi
	pushq	%rdi
	pushq	-56(%rbp)
	movq	EVP_PKEY_print_params@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_unprotected_PEM
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L72
	movl	$0, -20(%rbp)
.L72:
	addq	$1, -32(%rbp)
.L71:
	cmpq	$1, -32(%rbp)
	jbe	.L73
.L70:
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movl	$134, -116(%rbp)
	leaq	.LC50(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$592, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	152(%rax), %r8
	movq	-40(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	EVP_PKEY_eq@GOTPCREL(%rip), %rdx
	movq	%rdx, %r9
	movq	-64(%rbp), %rdx
	pushq	-128(%rbp)
	movl	-116(%rbp), %edi
	pushq	%rdi
	pushq	-56(%rbp)
	movq	EVP_PKEY_print_public@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_unprotected_PEM
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L74
	movl	$0, -20(%rbp)
.L74:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movl	$135, -132(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L76
.L78:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$610, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	96(%rax), %r8
	movq	-40(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	EVP_PKEY_eq@GOTPCREL(%rip), %rdx
	movq	%rdx, %r9
	movq	-64(%rbp), %rdx
	pushq	-144(%rbp)
	movl	-132(%rbp), %edi
	pushq	%rdi
	pushq	-56(%rbp)
	movq	EVP_PKEY_print_private@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_DER
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L77
	movl	$0, -20(%rbp)
.L77:
	addq	$1, -32(%rbp)
.L76:
	cmpq	$1, -32(%rbp)
	jbe	.L78
.L75:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movl	$134, -148(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L80
.L82:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -160(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$630, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	104(%rax), %r8
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	EVP_PKEY_eq@GOTPCREL(%rip), %rdx
	movq	%rdx, %r9
	movq	-64(%rbp), %rdx
	pushq	-160(%rbp)
	movl	-148(%rbp), %edi
	pushq	%rdi
	pushq	-56(%rbp)
	movq	EVP_PKEY_print_public@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_DER
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L81
	movl	$0, -20(%rbp)
.L81:
	addq	$1, -32(%rbp)
.L80:
	cmpq	$1, -32(%rbp)
	jbe	.L82
.L79:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L83
	movl	$132, -164(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L84
.L86:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -176(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$648, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	112(%rax), %r8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	EVP_PKEY_parameters_eq@GOTPCREL(%rip), %rdx
	movq	%rdx, %r9
	movq	-64(%rbp), %rdx
	pushq	-176(%rbp)
	movl	-164(%rbp), %edi
	pushq	%rdi
	pushq	-56(%rbp)
	movq	EVP_PKEY_print_params@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_DER
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L85
	movl	$0, -20(%rbp)
.L85:
	addq	$1, -32(%rbp)
.L84:
	cmpq	$1, -32(%rbp)
	jbe	.L86
.L83:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movl	$134, -180(%rbp)
	leaq	.LC50(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-192(%rbp), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$665, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-40(%rbp), %rax
	movq	120(%rax), %r8
	movq	-40(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	EVP_PKEY_eq@GOTPCREL(%rip), %rdx
	movq	%rdx, %r9
	movq	-64(%rbp), %rdx
	pushq	-192(%rbp)
	movl	-180(%rbp), %edi
	pushq	%rdi
	pushq	-56(%rbp)
	movq	EVP_PKEY_print_public@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_DER
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L90
	movl	$0, -20(%rbp)
	jmp	.L59
.L88:
	nop
	jmp	.L59
.L89:
	nop
	jmp	.L59
.L90:
	nop
.L59:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	test_key, .-test_key
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC56:
	.string	"Error parsing test options\n"
.LC57:
	.string	"rsa-key.pem dh-key.pem\n"
	.align 8
.LC58:
	.string	"usage: endecoder_legacy_test %s"
.LC59:
	.string	"Generating keys..."
	.align 8
.LC60:
	.string	"keys[i].key = load_pkey_pem(test_get_argument(1), NULL)"
	.align 8
.LC61:
	.string	"keys[i].key = load_pkey_pem(test_get_argument(0), NULL)"
.LC62:
	.string	"Generating %s key..."
	.align 8
.LC63:
	.string	"keys[i].key = make_key(keys[i].keytype, keys[i].template_params)"
.LC64:
	.string	"Generating keys done"
.LC65:
	.string	"test_key"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L94
	leaq	.LC56(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$686, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L95
.L94:
	call	test_get_argument_count@PLT
	cmpq	$2, %rax
	je	.L96
	leaq	.LC57(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$690, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L95
.L96:
	leaq	.LC59(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$694, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	$0, -8(%rbp)
	jmp	.L97
.L103:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L98
	movl	$1, %edi
	call	test_get_argument@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	24+keys(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$699, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L95
.L98:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %edi
	call	test_get_argument@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	24+keys(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$707, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L105
	movl	$0, %eax
	jmp	.L95
.L101:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$713, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+keys(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	keys(%rip), %rax
	movq	(%rcx,%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_key
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	24+keys(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC63(%rip), %rdx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$714, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L95
.L104:
	nop
	jmp	.L100
.L105:
	nop
.L100:
	addq	$1, -8(%rbp)
.L97:
	cmpq	$4, -8(%rbp)
	jbe	.L103
	leaq	.LC64(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$719, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	test_key(%rip), %rsi
	leaq	.LC65(%rip), %rax
	movl	$1, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	jmp	.L107
.L108:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+keys(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	addq	$1, -8(%rbp)
.L107:
	cmpq	$4, -8(%rbp)
	jbe	.L108
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
.LC66:
	.string	"Usage: %s [options] rsa-key.pem dh-key.pem\n"
.LC67:
	.string	"Valid options are:\n"
.LC68:
	.string	"help"
.LC69:
	.string	"Display this summary"
.LC70:
	.string	"list"
	.align 8
.LC71:
	.string	"Display the list of tests available"
.LC72:
	.string	"test"
	.align 8
.LC73:
	.string	"Run a single test by id or name"
.LC74:
	.string	"iter"
	.align 8
.LC75:
	.string	"Run a single iteration of a test"
.LC76:
	.string	"indent"
	.align 8
.LC77:
	.string	"Number of tabs added to output"
.LC78:
	.string	"seed"
	.align 8
.LC79:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC66
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC67
	.quad	.LC68
	.long	500
	.long	45
	.quad	.LC69
	.quad	.LC70
	.long	501
	.long	45
	.quad	.LC71
	.quad	.LC72
	.long	502
	.long	115
	.quad	.LC73
	.quad	.LC74
	.long	503
	.long	110
	.quad	.LC75
	.quad	.LC76
	.long	504
	.long	112
	.quad	.LC77
	.quad	.LC78
	.long	505
	.long	110
	.quad	.LC79
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
