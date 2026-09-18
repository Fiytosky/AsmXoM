	.file	"genrsa.c"
	.text
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
	.local	verbose
	.comm	verbose,4,4
	.globl	genrsa_options
	.section	.rodata
.LC0:
	.string	"Usage: %s [options] numbits\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"engine"
	.align 8
.LC5:
	.string	"Use engine, possibly a hardware device"
.LC6:
	.string	"Input options:\n"
.LC7:
	.string	"3"
	.align 8
.LC8:
	.string	"(deprecated) Use 3 for the E value"
.LC9:
	.string	"F4"
	.align 8
.LC10:
	.string	"Use the Fermat number F4 (0x10001) for the E value"
.LC11:
	.string	"f4"
.LC12:
	.string	"Output options:\n"
.LC13:
	.string	"out"
	.align 8
.LC14:
	.string	"Output the key to specified file"
.LC15:
	.string	"passout"
	.align 8
.LC16:
	.string	"Output file pass phrase source"
.LC17:
	.string	"primes"
.LC18:
	.string	"Specify number of primes"
.LC19:
	.string	"verbose"
.LC20:
	.string	"Verbose output"
.LC21:
	.string	"quiet"
.LC22:
	.string	"Terse output"
.LC23:
	.string	"traditional"
	.align 8
.LC24:
	.string	"Use traditional format for private keys"
.LC25:
	.string	""
	.align 8
.LC26:
	.string	"Encrypt the output with any supported cipher"
.LC27:
	.string	"Random state options:\n"
.LC28:
	.string	"rand"
	.align 8
.LC29:
	.string	"Load the given file(s) into the random number generator"
.LC30:
	.string	"writerand"
	.align 8
.LC31:
	.string	"Write random data to the specified file"
.LC32:
	.string	"Provider options:\n"
.LC33:
	.string	"provider-path"
	.align 8
.LC34:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC35:
	.string	"provider"
	.align 8
.LC36:
	.string	"Provider to load (can be specified multiple times)"
.LC37:
	.string	"propquery"
	.align 8
.LC38:
	.string	"Property query used when fetching algorithms"
.LC39:
	.string	"Parameters:\n"
.LC40:
	.string	"numbits"
.LC41:
	.string	"Size of key in bits"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	genrsa_options, @object
	.size	genrsa_options, 624
genrsa_options:
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
	.long	4
	.long	115
	.quad	.LC5
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	2
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	3
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	3
	.long	45
	.quad	.LC10
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC12
	.quad	.LC13
	.long	5
	.long	62
	.quad	.LC14
	.quad	.LC15
	.long	6
	.long	115
	.quad	.LC16
	.quad	.LC17
	.long	8
	.long	112
	.quad	.LC18
	.quad	.LC19
	.long	9
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	10
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	1605
	.long	45
	.quad	.LC24
	.quad	.LC25
	.long	7
	.long	45
	.quad	.LC26
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	1501
	.long	115
	.quad	.LC29
	.quad	.LC30
	.long	1502
	.long	62
	.quad	.LC31
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	1602
	.long	115
	.quad	.LC34
	.quad	.LC35
	.long	1601
	.long	115
	.quad	.LC36
	.quad	.LC37
	.long	1603
	.long	115
	.quad	.LC38
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	0
	.long	0
	.quad	.LC41
	.quad	0
	.zero	16
	.section	.rodata
.LC42:
	.string	"cipher"
.LC43:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC44:
	.string	"Warning: It is not recommended to use more than %d bit for RSA keys.\n         Your key size is %d! Larger key size may behave not as expected.\n"
.LC45:
	.string	"Error getting password\n"
.LC46:
	.string	"RSA"
.LC47:
	.string	"Error setting RSA length\n"
	.align 8
.LC48:
	.string	"Error allocating RSA public exponent\n"
	.align 8
.LC49:
	.string	"Error setting RSA public exponent\n"
	.align 8
.LC50:
	.string	"Error setting number of primes\n"
.LC51:
	.string	"e"
.LC52:
	.string	"Error cannot access RSA e\n"
.LC53:
	.string	"e is %s (0x%s)\n"
.LC54:
	.string	"../apps/genrsa.c"
	.text
	.globl	genrsa_main
	.type	genrsa_main, @function
genrsa_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	call	BN_GENCB_new@PLT
	movq	%rax, -96(%rbp)
	movq	$0, -24(%rbp)
	call	BN_new@PLT
	movq	%rax, -104(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movl	$1, -44(%rbp)
	movl	$2048, -164(%rbp)
	movl	$0, -108(%rbp)
	movl	$2, -48(%rbp)
	movq	$65537, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L52
	cmpq	$0, -96(%rbp)
	je	.L52
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	genrsa_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx
	movl	-196(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -120(%rbp)
	jmp	.L9
.L29:
	cmpl	$1605, -124(%rbp)
	je	.L10
	cmpl	$1605, -124(%rbp)
	jg	.L9
	cmpl	$1604, -124(%rbp)
	je	.L9
	cmpl	$1604, -124(%rbp)
	jg	.L9
	cmpl	$1603, -124(%rbp)
	jg	.L9
	cmpl	$1601, -124(%rbp)
	jge	.L12
	cmpl	$1600, -124(%rbp)
	je	.L9
	cmpl	$1600, -124(%rbp)
	jg	.L9
	cmpl	$1503, -124(%rbp)
	je	.L9
	cmpl	$1503, -124(%rbp)
	jg	.L9
	cmpl	$1502, -124(%rbp)
	jg	.L9
	cmpl	$1501, -124(%rbp)
	jge	.L14
	cmpl	$1500, -124(%rbp)
	je	.L9
	cmpl	$1500, -124(%rbp)
	jg	.L9
	cmpl	$10, -124(%rbp)
	je	.L15
	cmpl	$10, -124(%rbp)
	jg	.L9
	cmpl	$9, -124(%rbp)
	je	.L16
	cmpl	$9, -124(%rbp)
	jg	.L9
	cmpl	$8, -124(%rbp)
	je	.L17
	cmpl	$8, -124(%rbp)
	jg	.L9
	cmpl	$7, -124(%rbp)
	je	.L18
	cmpl	$7, -124(%rbp)
	jg	.L9
	cmpl	$6, -124(%rbp)
	je	.L19
	cmpl	$6, -124(%rbp)
	jg	.L9
	cmpl	$5, -124(%rbp)
	je	.L20
	cmpl	$5, -124(%rbp)
	jg	.L9
	cmpl	$4, -124(%rbp)
	je	.L21
	cmpl	$4, -124(%rbp)
	jg	.L9
	cmpl	$3, -124(%rbp)
	je	.L22
	cmpl	$3, -124(%rbp)
	jg	.L9
	cmpl	$2, -124(%rbp)
	je	.L23
	cmpl	$2, -124(%rbp)
	jg	.L9
	cmpl	$0, -124(%rbp)
	jg	.L24
	cmpl	$-1, -124(%rbp)
	jge	.L25
	jmp	.L9
.L24:
	cmpl	$1, -124(%rbp)
	je	.L26
	jmp	.L9
.L56:
	nop
.L25:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rdx
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L26:
	movl	$0, -44(%rbp)
	movq	genrsa_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	jmp	.L8
.L23:
	movq	$3, -56(%rbp)
	jmp	.L9
.L22:
	movq	$65537, -56(%rbp)
	jmp	.L9
.L20:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L9
.L21:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -24(%rbp)
	jmp	.L9
.L14:
	movl	-124(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L53
	jmp	.L9
.L12:
	movl	-124(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L54
	jmp	.L9
.L19:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L9
.L18:
	call	opt_unknown@PLT
	movq	%rax, -80(%rbp)
	jmp	.L9
.L17:
	call	opt_int_arg@PLT
	movl	%eax, -48(%rbp)
	jmp	.L9
.L16:
	movl	$1, verbose(%rip)
	jmp	.L9
.L15:
	movl	$0, verbose(%rip)
	jmp	.L9
.L10:
	movl	$1, -84(%rbp)
	nop
.L9:
	call	opt_next@PLT
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.L29
	call	opt_num_rest@PLT
	movl	%eax, -196(%rbp)
	call	opt_rest@PLT
	movq	%rax, -208(%rbp)
	cmpl	$1, -196(%rbp)
	jne	.L30
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	leaq	-164(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	je	.L55
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	jle	.L55
	movl	-164(%rbp), %eax
	cmpl	$16384, %eax
	jle	.L33
	movl	-164(%rbp), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC44(%rip), %rsi
	movl	%edx, %ecx
	movl	$16384, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L33
.L30:
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L56
.L33:
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L57
	movl	$1, -108(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher@PLT
	testl	%eax, %eax
	je	.L58
	leaq	-176(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L36
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC45(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L36:
	movl	-108(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	$32773, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L59
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC46(%rip), %rsi
	leaq	-152(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	init_gen_str@PLT
	testl	%eax, %eax
	je	.L60
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L39
	movq	-152(%rbp), %rax
	movq	progress_cb@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_cb@PLT
.L39:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_app_data@PLT
	movl	-164(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_keygen_bits@PLT
	testl	%eax, %eax
	jg	.L40
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC47(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L40:
	movq	-56(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L41
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L41:
	movq	-152(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_rsa_keygen_pubexp@PLT
	testl	%eax, %eax
	jg	.L42
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC49(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L42:
	movq	-152(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_keygen_primes@PLT
	testl	%eax, %eax
	jg	.L43
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L43:
	movl	verbose(%rip), %ecx
	movl	-164(%rbp), %edx
	movq	-152(%rbp), %rax
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	app_keygen@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L61
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L45
	movq	$0, -184(%rbp)
	leaq	-184(%rbp), %rdx
	leaq	.LC51(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	movq	-184(%rbp), %rax
	testq	%rax, %rax
	jne	.L46
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L46:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2hex@PLT
	movq	%rax, -136(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2dec@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L47
	cmpq	$0, -144(%rbp)
	je	.L47
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-136(%rbp), %rcx
	movq	-144(%rbp), %rdx
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L47:
	leaq	.LC54(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$224, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC54(%rip), %rcx
	movq	-144(%rbp), %rax
	movl	$225, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L45:
	cmpl	$0, -84(%rbp)
	je	.L48
	movq	-176(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey_traditional@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L49
	jmp	.L8
.L48:
	movq	-176(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L62
.L49:
	movl	$0, -44(%rbp)
	jmp	.L8
.L52:
	nop
	jmp	.L8
.L53:
	nop
	jmp	.L8
.L54:
	nop
	jmp	.L8
.L55:
	nop
	jmp	.L8
.L57:
	nop
	jmp	.L8
.L58:
	nop
	jmp	.L8
.L59:
	nop
	jmp	.L8
.L60:
	nop
	jmp	.L8
.L61:
	nop
	jmp	.L8
.L62:
	nop
.L8:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-176(%rbp), %rax
	leaq	.LC54(%rip), %rcx
	movl	$246, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -44(%rbp)
	je	.L50
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L50:
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	genrsa_main, .-genrsa_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
