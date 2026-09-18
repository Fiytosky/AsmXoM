	.file	"kdf.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB6:
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
.LFE6:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB8:
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
.LFE8:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB632:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.globl	kdf_options
	.section	.rodata
.LC0:
	.string	"Usage: %s [options] kdf_name\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"kdfopt"
	.align 8
.LC5:
	.string	"KDF algorithm control parameters in n:v form"
.LC6:
	.string	"cipher"
.LC7:
	.string	"Cipher"
.LC8:
	.string	"digest"
.LC9:
	.string	"Digest"
.LC10:
	.string	"mac"
.LC11:
	.string	"MAC"
	.align 8
.LC12:
	.string	"See 'Supported Controls' in the EVP_KDF_ docs\n"
.LC13:
	.string	"keylen"
	.align 8
.LC14:
	.string	"The size of the output derived key"
.LC15:
	.string	"Output options:\n"
.LC16:
	.string	"out"
	.align 8
.LC17:
	.string	"Output to filename rather than stdout"
.LC18:
	.string	"binary"
	.align 8
.LC19:
	.string	"Output in binary format (default is hexadecimal)"
.LC20:
	.string	"Provider options:\n"
.LC21:
	.string	"provider-path"
	.align 8
.LC22:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC23:
	.string	"provider"
	.align 8
.LC24:
	.string	"Provider to load (can be specified multiple times)"
.LC25:
	.string	"propquery"
	.align 8
.LC26:
	.string	"Property query used when fetching algorithms"
.LC27:
	.string	"Parameters:\n"
.LC28:
	.string	"kdf_name"
.LC29:
	.string	"Name of the KDF algorithm"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	kdf_options, @object
	.size	kdf_options, 456
kdf_options:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC1
	.quad	.LC2
	.long	1
	.long	45
	.quad	.LC3
	.quad	.LC4
	.long	2
	.long	115
	.quad	.LC5
	.quad	.LC6
	.long	6
	.long	115
	.quad	.LC7
	.quad	.LC8
	.long	7
	.long	115
	.quad	.LC9
	.quad	.LC10
	.long	8
	.long	115
	.quad	.LC11
	.quad	OPT_MORE_STR
	.long	1
	.long	45
	.quad	.LC12
	.quad	.LC13
	.long	4
	.long	115
	.quad	.LC14
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC15
	.quad	.LC16
	.long	5
	.long	62
	.quad	.LC17
	.quad	.LC18
	.long	3
	.long	45
	.quad	.LC19
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	1602
	.long	115
	.quad	.LC22
	.quad	.LC23
	.long	1601
	.long	115
	.quad	.LC24
	.quad	.LC25
	.long	1603
	.long	115
	.quad	.LC26
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	0
	.long	0
	.quad	.LC29
	.quad	0
	.zero	16
	.section	.rodata
.LC30:
	.string	"algorithm name"
.LC31:
	.string	"%s:%s"
.LC32:
	.string	"../apps/kdf.c"
	.text
	.type	alloc_kdf_algorithm_name, @function
alloc_kdf_algorithm_name:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
.L10:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	leaq	.LC30(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC31(%rip), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L13
	movq	-32(%rbp), %rax
	jmp	.L12
.L13:
	leaq	.LC32(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L12:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	alloc_kdf_algorithm_name, .-alloc_kdf_algorithm_name
	.section	.rodata
.LC33:
	.string	"%s: Use -help for summary.\n"
.LC34:
	.string	"Invalid KDF name %s\n"
.LC35:
	.string	"KDF parameter error\n"
.LC36:
	.string	"Invalid derived key length.\n"
.LC37:
	.string	"out buffer"
.LC38:
	.string	"EVP_KDF_derive failed\n"
.LC39:
	.string	"Memory allocation failure\n"
.LC40:
	.string	"%s\n\n"
	.text
	.globl	kdf_main
	.type	kdf_main, @function
kdf_main:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -148(%rbp)
	movq	%rsi, -160(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	kdf_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx
	movl	-148(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -120(%rbp)
	jmp	.L15
.L35:
	cmpl	$1604, -124(%rbp)
	je	.L15
	cmpl	$1604, -124(%rbp)
	jg	.L17
	cmpl	$1603, -124(%rbp)
	jg	.L17
	cmpl	$1601, -124(%rbp)
	jge	.L18
	cmpl	$1600, -124(%rbp)
	je	.L15
	cmpl	$1600, -124(%rbp)
	jg	.L17
	cmpl	$8, -124(%rbp)
	je	.L19
	cmpl	$8, -124(%rbp)
	jg	.L17
	cmpl	$7, -124(%rbp)
	je	.L20
	cmpl	$7, -124(%rbp)
	jg	.L17
	cmpl	$6, -124(%rbp)
	je	.L21
	cmpl	$6, -124(%rbp)
	jg	.L17
	cmpl	$5, -124(%rbp)
	je	.L22
	cmpl	$5, -124(%rbp)
	jg	.L17
	cmpl	$4, -124(%rbp)
	je	.L23
	cmpl	$4, -124(%rbp)
	jg	.L17
	cmpl	$3, -124(%rbp)
	je	.L24
	cmpl	$3, -124(%rbp)
	jg	.L17
	cmpl	$1, -124(%rbp)
	je	.L25
	cmpl	$2, -124(%rbp)
	je	.L26
	jmp	.L17
.L53:
	nop
	jmp	.L17
.L54:
	nop
	jmp	.L17
.L55:
	nop
	jmp	.L17
.L56:
	nop
	jmp	.L17
.L58:
	nop
.L17:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rdx
	leaq	.LC33(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L25:
	movq	kdf_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -20(%rbp)
	jmp	.L27
.L24:
	movl	$1, -24(%rbp)
	jmp	.L15
.L23:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	cltq
	movq	%rax, -56(%rbp)
	jmp	.L15
.L22:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	jmp	.L15
.L26:
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	jne	.L28
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -144(%rbp)
.L28:
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	je	.L53
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L53
	jmp	.L15
.L21:
	leaq	.LC32(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	alloc_kdf_algorithm_name
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L54
	jmp	.L15
.L20:
	leaq	.LC32(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$117, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	alloc_kdf_algorithm_name
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L55
	jmp	.L15
.L19:
	leaq	.LC32(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	alloc_kdf_algorithm_name
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L56
	jmp	.L15
.L18:
	movl	-124(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L57
	nop
.L15:
	call	opt_next@PLT
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.L35
	call	opt_num_rest@PLT
	movl	%eax, -148(%rbp)
	call	opt_rest@PLT
	movq	%rax, -160(%rbp)
	cmpl	$1, -148(%rbp)
	jne	.L58
	call	app_get0_propq@PLT
	movq	%rax, %r12
	movq	-160(%rbp), %rax
	movq	(%rax), %rbx
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L37
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC34(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L17
.L37:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L59
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	je	.L39
	movl	$1, -108(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_settable_ctx_params@PLT
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_params_new_from_opts@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L60
	movq	-136(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L41
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, -108(%rbp)
.L41:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	app_params_free@PLT
	cmpl	$0, -108(%rbp)
	je	.L61
.L39:
	cmpl	$0, -24(%rbp)
	je	.L42
	movl	$2, %edx
	jmp	.L43
.L42:
	movl	$32769, %edx
.L43:
	movq	-40(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L62
	cmpq	$0, -56(%rbp)
	jne	.L45
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L45:
	leaq	.LC37(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L63
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	testl	%eax, %eax
	jne	.L47
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC38(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L47:
	cmpl	$0, -24(%rbp)
	je	.L48
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	jmp	.L49
.L48:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_buf2hexstr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L50
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC39(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L50:
	movq	-32(%rbp), %rdx
	leaq	.LC40(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L49:
	movl	$0, -20(%rbp)
	jmp	.L27
.L57:
	nop
	jmp	.L27
.L59:
	nop
	jmp	.L27
.L60:
	nop
	jmp	.L27
.L61:
	nop
	jmp	.L27
.L62:
	nop
	jmp	.L27
.L63:
	nop
.L27:
	cmpl	$0, -20(%rbp)
	je	.L51
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L51:
	leaq	.LC32(%rip), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$201, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC32(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$206, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC32(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$207, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC32(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$208, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC32(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$209, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	kdf_main, .-kdf_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
