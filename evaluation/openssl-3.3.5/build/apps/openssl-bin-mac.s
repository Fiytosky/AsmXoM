	.file	"mac.c"
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
	.globl	mac_options
	.section	.rodata
.LC0:
	.string	"Usage: %s [options] mac_name\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"macopt"
	.align 8
.LC5:
	.string	"MAC algorithm parameters in n:v form"
.LC6:
	.string	"cipher"
.LC7:
	.string	"Cipher"
.LC8:
	.string	"digest"
.LC9:
	.string	"Digest"
	.align 8
.LC10:
	.string	"See 'PARAMETER NAMES' in the EVP_MAC_ docs"
.LC11:
	.string	"Input options:\n"
.LC12:
	.string	"in"
	.align 8
.LC13:
	.string	"Input file to MAC (default is stdin)"
.LC14:
	.string	"Output options:\n"
.LC15:
	.string	"out"
	.align 8
.LC16:
	.string	"Output to filename rather than stdout"
.LC17:
	.string	"binary"
	.align 8
.LC18:
	.string	"Output in binary format (default is hexadecimal)"
.LC19:
	.string	"Provider options:\n"
.LC20:
	.string	"provider-path"
	.align 8
.LC21:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC22:
	.string	"provider"
	.align 8
.LC23:
	.string	"Provider to load (can be specified multiple times)"
.LC24:
	.string	"propquery"
	.align 8
.LC25:
	.string	"Property query used when fetching algorithms"
.LC26:
	.string	"Parameters:\n"
.LC27:
	.string	"mac_name"
.LC28:
	.string	"MAC algorithm"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	mac_options, @object
	.size	mac_options, 456
mac_options:
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
	.quad	OPT_MORE_STR
	.long	1
	.long	45
	.quad	.LC10
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	4
	.long	60
	.quad	.LC13
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC14
	.quad	.LC15
	.long	5
	.long	62
	.quad	.LC16
	.quad	.LC17
	.long	3
	.long	45
	.quad	.LC18
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	1602
	.long	115
	.quad	.LC21
	.quad	.LC22
	.long	1601
	.long	115
	.quad	.LC23
	.quad	.LC24
	.long	1603
	.long	115
	.quad	.LC25
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	0
	.long	0
	.quad	.LC28
	.quad	0
	.zero	16
	.section	.rodata
.LC29:
	.string	"algorithm name"
.LC30:
	.string	"%s:%s"
.LC31:
	.string	"../apps/mac.c"
	.text
	.type	alloc_mac_algorithm_name, @function
alloc_mac_algorithm_name:
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
	leaq	.LC29(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC30(%rip), %rdi
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
	leaq	.LC31(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$70, %edx
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
	.size	alloc_mac_algorithm_name, .-alloc_mac_algorithm_name
	.section	.rodata
.LC32:
	.string	"I/O buffer"
.LC33:
	.string	"%s: Use -help for summary.\n"
.LC34:
	.string	"MAC name"
.LC35:
	.string	"Invalid MAC name %s\n"
.LC36:
	.string	"MAC parameter error\n"
.LC37:
	.string	"EVP_MAC_Init failed\n"
.LC38:
	.string	"Read Error in '%s'\n"
.LC39:
	.string	"EVP_MAC_update failed\n"
.LC40:
	.string	"EVP_MAC_final failed\n"
.LC41:
	.string	"output len is too large\n"
.LC42:
	.string	"%02X"
.LC43:
	.string	"\n"
	.text
	.globl	mac_main
	.type	mac_main, @function
mac_main:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -180(%rbp)
	movq	%rsi, -192(%rbp)
	movl	$1, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$2, -124(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -136(%rbp)
	movq	mac_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx
	movl	-180(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -144(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, %rsi
	movl	$8192, %edi
	call	app_malloc@PLT
	movq	%rax, -120(%rbp)
	jmp	.L15
.L33:
	cmpl	$1604, -148(%rbp)
	je	.L15
	cmpl	$1604, -148(%rbp)
	jg	.L17
	cmpl	$1603, -148(%rbp)
	jg	.L17
	cmpl	$1601, -148(%rbp)
	jge	.L18
	cmpl	$1600, -148(%rbp)
	je	.L15
	cmpl	$1600, -148(%rbp)
	jg	.L17
	cmpl	$7, -148(%rbp)
	je	.L19
	cmpl	$7, -148(%rbp)
	jg	.L17
	cmpl	$6, -148(%rbp)
	je	.L20
	cmpl	$6, -148(%rbp)
	jg	.L17
	cmpl	$5, -148(%rbp)
	je	.L21
	cmpl	$5, -148(%rbp)
	jg	.L17
	cmpl	$4, -148(%rbp)
	je	.L22
	cmpl	$4, -148(%rbp)
	jg	.L17
	cmpl	$3, -148(%rbp)
	je	.L23
	cmpl	$3, -148(%rbp)
	jg	.L17
	cmpl	$1, -148(%rbp)
	je	.L24
	cmpl	$2, -148(%rbp)
	je	.L25
	jmp	.L17
.L59:
	nop
	jmp	.L17
.L60:
	nop
	jmp	.L17
.L61:
	nop
	jmp	.L17
.L63:
	nop
.L17:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC33(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L24:
	movq	mac_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -20(%rbp)
	jmp	.L26
.L23:
	movl	$1, -84(%rbp)
	jmp	.L15
.L22:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L15
.L21:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L15
.L25:
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	jne	.L27
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -160(%rbp)
.L27:
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	je	.L59
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L59
	jmp	.L15
.L20:
	leaq	.LC31(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	alloc_mac_algorithm_name
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L60
	jmp	.L15
.L19:
	leaq	.LC31(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rcx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	alloc_mac_algorithm_name
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L61
	jmp	.L15
.L18:
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L62
	nop
.L15:
	call	opt_next@PLT
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.L33
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L63
	call	opt_rest@PLT
	movq	%rax, -192(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, %r12
	movq	-192(%rbp), %rax
	movq	(%rax), %rbx
	call	app_get0_libctx@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L35
	movq	-192(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L17
.L35:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L64
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	je	.L37
	movl	$1, -108(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_settable_ctx_params@PLT
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_params_new_from_opts@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L65
	movq	-136(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L39
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, -108(%rbp)
.L39:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	app_params_free@PLT
	cmpl	$0, -108(%rbp)
	je	.L66
.L37:
	movl	-124(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L67
	cmpl	$0, -84(%rbp)
	je	.L41
	movl	$2, %edx
	jmp	.L42
.L41:
	movl	$32769, %edx
.L42:
	movq	-72(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L68
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	jne	.L45
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC37(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L49:
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L46
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC38(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L26
.L46:
	cmpl	$0, -44(%rbp)
	je	.L69
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	jne	.L45
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC39(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L45:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L49
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L49
	jmp	.L48
.L69:
	nop
.L48:
	leaq	-168(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	jne	.L50
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC40(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L50:
	movq	-168(%rbp), %rax
	cmpq	$8192, %rax
	jbe	.L51
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC41(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L51:
	leaq	-168(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$8192, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	jne	.L52
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC40(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L52:
	cmpl	$0, -84(%rbp)
	je	.L53
	movq	-168(%rbp), %rax
	movl	%eax, %edx
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	jmp	.L54
.L53:
	movl	$0, -44(%rbp)
	jmp	.L55
.L56:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC42(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -44(%rbp)
.L55:
	movq	-168(%rbp), %rax
	cmpl	%eax, -44(%rbp)
	jl	.L56
	cmpq	$0, -72(%rbp)
	jne	.L54
	leaq	.LC43(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L54:
	movl	$0, -20(%rbp)
	jmp	.L26
.L62:
	nop
	jmp	.L26
.L64:
	nop
	jmp	.L26
.L65:
	nop
	jmp	.L26
.L66:
	nop
	jmp	.L26
.L67:
	nop
	jmp	.L26
.L68:
	nop
.L26:
	cmpl	$0, -20(%rbp)
	je	.L57
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L57:
	leaq	.LC31(%rip), %rdx
	movq	-120(%rbp), %rax
	movl	$227, %ecx
	movl	$8192, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC31(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$228, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC31(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$229, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movl	-20(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	mac_main, .-mac_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
