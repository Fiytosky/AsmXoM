	.file	"gendsa.c"
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
	.globl	gendsa_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] dsaparam-file\n"
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
	.string	"Output options:\n"
.LC7:
	.string	"out"
	.align 8
.LC8:
	.string	"Output the key to the specified file"
.LC9:
	.string	"passout"
	.align 8
.LC10:
	.string	"Output file pass phrase source"
.LC11:
	.string	"Random state options:\n"
.LC12:
	.string	"rand"
	.align 8
.LC13:
	.string	"Load the given file(s) into the random number generator"
.LC14:
	.string	"writerand"
	.align 8
.LC15:
	.string	"Write random data to the specified file"
.LC16:
	.string	"Provider options:\n"
.LC17:
	.string	"provider-path"
	.align 8
.LC18:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC19:
	.string	"provider"
	.align 8
.LC20:
	.string	"Provider to load (can be specified multiple times)"
.LC21:
	.string	"propquery"
	.align 8
.LC22:
	.string	"Property query used when fetching algorithms"
.LC23:
	.string	""
	.align 8
.LC24:
	.string	"Encrypt the output with any supported cipher"
.LC25:
	.string	"verbose"
.LC26:
	.string	"Verbose output"
.LC27:
	.string	"quiet"
.LC28:
	.string	"Terse output"
.LC29:
	.string	"Parameters:\n"
.LC30:
	.string	"dsaparam-file"
	.align 8
.LC31:
	.string	"File containing DSA parameters"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	gendsa_options, @object
	.size	gendsa_options, 480
gendsa_options:
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
	.long	62
	.quad	.LC8
	.quad	.LC9
	.long	3
	.long	115
	.quad	.LC10
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	1501
	.long	115
	.quad	.LC13
	.quad	.LC14
	.long	1502
	.long	62
	.quad	.LC15
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	1602
	.long	115
	.quad	.LC18
	.quad	.LC19
	.long	1601
	.long	115
	.quad	.LC20
	.quad	.LC21
	.long	1603
	.long	115
	.quad	.LC22
	.quad	.LC23
	.long	5
	.long	45
	.quad	.LC24
	.quad	.LC25
	.long	6
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	7
	.long	45
	.quad	.LC28
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC29
	.quad	.LC30
	.long	0
	.long	0
	.quad	.LC31
	.quad	0
	.zero	16
	.section	.rodata
.LC32:
	.string	"cipher"
.LC33:
	.string	"%s: Use -help for summary.\n"
.LC34:
	.string	"params file"
.LC35:
	.string	"Error getting password\n"
.LC36:
	.string	"DSA parameters"
.LC37:
	.string	"DSA"
	.align 8
.LC38:
	.string	"Warning: It is not recommended to use more than %d bit for DSA keys.\n         Your key size is %d! Larger key size may behave not as expected.\n"
	.align 8
.LC39:
	.string	"unable to create PKEY context\n"
	.align 8
.LC40:
	.string	"unable to set up for key generation\n"
	.align 8
.LC41:
	.string	"unable to output generated key\n"
.LC42:
	.string	"../apps/gendsa.c"
	.text
	.globl	gendsa_main
	.type	gendsa_main, @function
gendsa_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movl	%edi, -148(%rbp)
	movq	%rsi, -160(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -136(%rbp)
	movl	$1, -76(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -80(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	gendsa_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx
	movl	-148(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -112(%rbp)
	jmp	.L6
.L23:
	cmpl	$1604, -116(%rbp)
	je	.L6
	cmpl	$1604, -116(%rbp)
	jg	.L6
	cmpl	$1603, -116(%rbp)
	jg	.L6
	cmpl	$1601, -116(%rbp)
	jge	.L8
	cmpl	$1600, -116(%rbp)
	je	.L6
	cmpl	$1600, -116(%rbp)
	jg	.L6
	cmpl	$1503, -116(%rbp)
	je	.L6
	cmpl	$1503, -116(%rbp)
	jg	.L6
	cmpl	$1502, -116(%rbp)
	jg	.L6
	cmpl	$1501, -116(%rbp)
	jge	.L10
	cmpl	$1500, -116(%rbp)
	je	.L6
	cmpl	$1500, -116(%rbp)
	jg	.L6
	cmpl	$7, -116(%rbp)
	je	.L11
	cmpl	$7, -116(%rbp)
	jg	.L6
	cmpl	$6, -116(%rbp)
	je	.L12
	cmpl	$6, -116(%rbp)
	jg	.L6
	cmpl	$5, -116(%rbp)
	je	.L13
	cmpl	$5, -116(%rbp)
	jg	.L6
	cmpl	$4, -116(%rbp)
	je	.L14
	cmpl	$4, -116(%rbp)
	jg	.L6
	cmpl	$3, -116(%rbp)
	je	.L15
	cmpl	$3, -116(%rbp)
	jg	.L6
	cmpl	$2, -116(%rbp)
	je	.L16
	cmpl	$2, -116(%rbp)
	jg	.L6
	cmpl	$0, -116(%rbp)
	jg	.L17
	cmpl	$-1, -116(%rbp)
	jge	.L18
	jmp	.L6
.L17:
	cmpl	$1, -116(%rbp)
	je	.L19
	jmp	.L6
.L38:
	nop
.L18:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC33(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L20
.L19:
	movl	$0, -76(%rbp)
	movq	gendsa_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	jmp	.L20
.L16:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L6
.L15:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L6
.L14:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -24(%rbp)
	jmp	.L6
.L10:
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L36
	jmp	.L6
.L8:
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L37
	jmp	.L6
.L13:
	call	opt_unknown@PLT
	movq	%rax, -56(%rbp)
	jmp	.L6
.L12:
	movl	$1, -80(%rbp)
	jmp	.L6
.L11:
	movl	$0, -80(%rbp)
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jne	.L23
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L38
	call	opt_rest@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-128(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher@PLT
	testl	%eax, %eax
	je	.L40
	movl	$1, -100(%rbp)
	leaq	-136(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L27
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L20
.L27:
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_keyparams@PLT
	movq	%rax, -40(%rbp)
	movl	-100(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	$32773, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L41
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, -120(%rbp)
	cmpl	$10000, -120(%rbp)
	jle	.L30
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC38(%rip), %rsi
	movl	%edx, %ecx
	movl	$10000, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L30:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L31
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC39(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L20
.L31:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jg	.L32
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC40(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L20
.L32:
	movl	-80(%rbp), %ecx
	movl	-120(%rbp), %edx
	leaq	.LC37(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	app_keygen@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L42
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
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
	jne	.L34
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC41(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L20
.L34:
	movl	$0, -76(%rbp)
	jmp	.L20
.L36:
	nop
	jmp	.L20
.L37:
	nop
	jmp	.L20
.L39:
	nop
	jmp	.L20
.L40:
	nop
	jmp	.L20
.L42:
	nop
.L20:
	cmpl	$0, -76(%rbp)
	je	.L43
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L29
.L41:
	nop
	jmp	.L29
.L43:
	nop
.L29:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-136(%rbp), %rax
	leaq	.LC42(%rip), %rcx
	movl	$170, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	gendsa_main, .-gendsa_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
