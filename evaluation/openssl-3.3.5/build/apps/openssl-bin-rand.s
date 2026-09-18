	.file	"rand.c"
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
	.globl	rand_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] num[K|M|G|T]\n"
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
.LC8:
	.string	"Output file"
.LC9:
	.string	"base64"
.LC10:
	.string	"Base64 encode output"
.LC11:
	.string	"hex"
.LC12:
	.string	"Hex encode output"
.LC13:
	.string	"Random state options:\n"
.LC14:
	.string	"rand"
	.align 8
.LC15:
	.string	"Load the given file(s) into the random number generator"
.LC16:
	.string	"writerand"
	.align 8
.LC17:
	.string	"Write random data to the specified file"
.LC18:
	.string	"Provider options:\n"
.LC19:
	.string	"provider-path"
	.align 8
.LC20:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC21:
	.string	"provider"
	.align 8
.LC22:
	.string	"Provider to load (can be specified multiple times)"
.LC23:
	.string	"propquery"
	.align 8
.LC24:
	.string	"Property query used when fetching algorithms"
.LC25:
	.string	"Parameters:\n"
.LC26:
	.string	"num"
.LC27:
	.string	"Number of bytes to generate"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	rand_options, @object
	.size	rand_options, 432
rand_options:
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
	.long	3
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
	.long	4
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	5
	.long	45
	.quad	.LC12
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	1501
	.long	115
	.quad	.LC15
	.quad	.LC16
	.long	1502
	.long	62
	.quad	.LC17
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC18
	.quad	.LC19
	.long	1602
	.long	115
	.quad	.LC20
	.quad	.LC21
	.long	1601
	.long	115
	.quad	.LC22
	.quad	.LC23
	.long	1603
	.long	115
	.quad	.LC24
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	0
	.long	0
	.quad	.LC27
	.quad	0
	.zero	16
	.section	.rodata
.LC28:
	.string	"%s: Use -help for summary.\n"
.LC29:
	.string	"max"
.LC30:
	.string	"Invalid size suffix %s\n"
	.align 8
.LC31:
	.string	"%lu bytes with suffix overflows\n"
	.align 8
.LC32:
	.string	"Request exceeds max allowed output\n"
.LC33:
	.string	"buffer for output file"
.LC34:
	.string	"%02x"
.LC35:
	.string	"\n"
.LC36:
	.string	"../apps/rand.c"
	.text
	.globl	rand_main
	.type	rand_main, @function
rand_main:
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
	movq	$0, -40(%rbp)
	movl	$2, -44(%rbp)
	movl	$1, -52(%rbp)
	movq	$65536, -96(%rbp)
	movq	$-1, -136(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	rand_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx
	movl	-148(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -104(%rbp)
	jmp	.L6
.L21:
	cmpl	$1604, -108(%rbp)
	je	.L6
	cmpl	$1604, -108(%rbp)
	jg	.L6
	cmpl	$1603, -108(%rbp)
	jg	.L6
	cmpl	$1601, -108(%rbp)
	jge	.L8
	cmpl	$1600, -108(%rbp)
	je	.L6
	cmpl	$1600, -108(%rbp)
	jg	.L6
	cmpl	$1503, -108(%rbp)
	je	.L6
	cmpl	$1503, -108(%rbp)
	jg	.L6
	cmpl	$1502, -108(%rbp)
	jg	.L6
	cmpl	$1501, -108(%rbp)
	jge	.L10
	cmpl	$1500, -108(%rbp)
	je	.L6
	cmpl	$1500, -108(%rbp)
	jg	.L6
	cmpl	$5, -108(%rbp)
	je	.L11
	cmpl	$5, -108(%rbp)
	jg	.L6
	cmpl	$4, -108(%rbp)
	je	.L12
	cmpl	$4, -108(%rbp)
	jg	.L6
	cmpl	$3, -108(%rbp)
	je	.L13
	cmpl	$3, -108(%rbp)
	jg	.L6
	cmpl	$2, -108(%rbp)
	je	.L14
	cmpl	$2, -108(%rbp)
	jg	.L6
	cmpl	$0, -108(%rbp)
	jg	.L15
	cmpl	$-1, -108(%rbp)
	jge	.L16
	jmp	.L6
.L15:
	cmpl	$1, -108(%rbp)
	je	.L17
	jmp	.L6
.L60:
	nop
	jmp	.L16
.L61:
	nop
.L16:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	leaq	.LC28(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L18
.L17:
	movq	rand_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -52(%rbp)
	jmp	.L18
.L14:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	jmp	.L6
.L13:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -24(%rbp)
	jmp	.L6
.L10:
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L58
	jmp	.L6
.L12:
	movl	$32771, -44(%rbp)
	jmp	.L6
.L11:
	movl	$32769, -44(%rbp)
	jmp	.L6
.L8:
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L59
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jne	.L21
	call	opt_num_rest@PLT
	movl	%eax, -148(%rbp)
	call	opt_rest@PLT
	movq	%rax, -160(%rbp)
	cmpl	$1, -148(%rbp)
	jne	.L22
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L25
	movabsq	$2305843009213693951, %rax
	movq	%rax, -64(%rbp)
	jmp	.L24
.L33:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	(%rax), %rcx
	movl	-76(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L26
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$84, %eax
	je	.L27
	cmpl	$84, %eax
	jg	.L28
	cmpl	$77, %eax
	je	.L29
	cmpl	$77, %eax
	jg	.L28
	cmpl	$71, %eax
	je	.L30
	cmpl	$75, %eax
	jne	.L28
	movl	$10, -80(%rbp)
	jmp	.L31
.L29:
	movl	$20, -80(%rbp)
	jmp	.L31
.L30:
	movl	$30, -80(%rbp)
	jmp	.L31
.L27:
	movl	$40, -80(%rbp)
	jmp	.L31
.L28:
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC30(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L16
.L31:
	jmp	.L32
.L26:
	addl	$1, -76(%rbp)
.L25:
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L33
.L32:
	cmpl	$0, -80(%rbp)
	je	.L24
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$1, %rax
	je	.L24
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC30(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L16
.L24:
	cmpl	$0, -80(%rbp)
	je	.L34
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L34:
	cmpq	$0, -64(%rbp)
	jne	.L35
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	leaq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_long@PLT
	testl	%eax, %eax
	je	.L60
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	jle	.L60
.L35:
	cmpl	$0, -80(%rbp)
	je	.L37
	movl	-80(%rbp), %eax
	movq	$-1, %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movq	-136(%rbp), %rdx
	cmpq	%rdx, %rax
	jnb	.L38
	movq	-136(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L16
.L38:
	movq	-136(%rbp), %rdx
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movabsq	$2305843009213693951, %rax
	cmpq	-64(%rbp), %rax
	jnb	.L39
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L16
.L37:
	cmpq	$0, -64(%rbp)
	jne	.L39
	movq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L39
.L22:
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L61
.L39:
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L62
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L63
	cmpl	$32771, -44(%rbp)
	jne	.L42
	call	BIO_f_base64@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L64
	movq	-32(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -32(%rbp)
.L42:
	leaq	.LC33(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -72(%rbp)
	jmp	.L44
.L53:
	movq	-64(%rbp), %rax
	cmpq	%rax, -96(%rbp)
	jnb	.L45
	movq	-96(%rbp), %rax
	movl	%eax, -84(%rbp)
	jmp	.L46
.L45:
	movq	-64(%rbp), %rax
	movl	%eax, -84(%rbp)
.L46:
	movl	-84(%rbp), %eax
	movslq	%eax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	call	RAND_bytes_ex@PLT
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	jle	.L65
	cmpl	$32769, -44(%rbp)
	je	.L48
	movl	-84(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -84(%rbp)
	je	.L49
	jmp	.L18
.L48:
	movl	$0, -48(%rbp)
	jmp	.L50
.L52:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC34(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$2, %eax
	jne	.L66
	addl	$1, -48(%rbp)
.L50:
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L52
.L49:
	movl	-84(%rbp), %eax
	cltq
	subq	%rax, -64(%rbp)
.L44:
	cmpq	$0, -64(%rbp)
	jne	.L53
	cmpl	$32769, -44(%rbp)
	jne	.L54
	leaq	.LC35(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L54:
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jle	.L67
	movl	$0, -52(%rbp)
	jmp	.L18
.L58:
	nop
	jmp	.L18
.L59:
	nop
	jmp	.L18
.L62:
	nop
	jmp	.L18
.L63:
	nop
	jmp	.L18
.L64:
	nop
	jmp	.L18
.L65:
	nop
	jmp	.L18
.L66:
	nop
	jmp	.L18
.L67:
	nop
.L18:
	cmpl	$0, -52(%rbp)
	je	.L56
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L56:
	leaq	.LC36(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$225, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	rand_main, .-rand_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
