	.file	"pkcs7.c"
	.text
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB330:
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
.LFE330:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_const_X509_CRL_sk_type, @function
ossl_check_const_X509_CRL_sk_type:
.LFB342:
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
.LFE342:
	.size	ossl_check_const_X509_CRL_sk_type, .-ossl_check_const_X509_CRL_sk_type
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
	.globl	pkcs7_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"engine"
	.align 8
.LC4:
	.string	"Use engine, possibly a hardware device"
.LC5:
	.string	"Input options:\n"
.LC6:
	.string	"in"
.LC7:
	.string	"Input file"
.LC8:
	.string	"inform"
.LC9:
	.string	"Input format - DER or PEM"
.LC10:
	.string	"Output options:\n"
.LC11:
	.string	"outform"
.LC12:
	.string	"Output format - DER or PEM"
.LC13:
	.string	"out"
.LC14:
	.string	"Output file"
.LC15:
	.string	"noout"
.LC16:
	.string	"Don't output encoded data"
.LC17:
	.string	"text"
	.align 8
.LC18:
	.string	"Print full details of certificates"
.LC19:
	.string	"print"
	.align 8
.LC20:
	.string	"Print out all fields of the PKCS7 structure"
.LC21:
	.string	"print_certs"
	.align 8
.LC22:
	.string	"Print_certs  print any certs or crl in the input"
.LC23:
	.string	"quiet"
	.align 8
.LC24:
	.string	"When used with -print_certs, it produces a cleaner output"
.LC25:
	.string	"Provider options:\n"
.LC26:
	.string	"provider-path"
	.align 8
.LC27:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC28:
	.string	"provider"
	.align 8
.LC29:
	.string	"Provider to load (can be specified multiple times)"
.LC30:
	.string	"propquery"
	.align 8
.LC31:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	pkcs7_options, @object
	.size	pkcs7_options, 456
pkcs7_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	11
	.long	115
	.quad	.LC4
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	4
	.long	60
	.quad	.LC7
	.quad	.LC8
	.long	2
	.long	70
	.quad	.LC9
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	3
	.long	70
	.quad	.LC12
	.quad	.LC13
	.long	5
	.long	62
	.quad	.LC14
	.quad	.LC15
	.long	6
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	7
	.long	45
	.quad	.LC18
	.quad	.LC19
	.long	8
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	9
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	10
	.long	45
	.quad	.LC24
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	1602
	.long	115
	.quad	.LC27
	.quad	.LC28
	.long	1601
	.long	115
	.quad	.LC29
	.quad	.LC30
	.long	1603
	.long	115
	.quad	.LC31
	.quad	0
	.zero	16
	.section	.rodata
.LC32:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC33:
	.string	"unable to allocate PKCS7 object\n"
.LC34:
	.string	"unable to load PKCS7 object\n"
.LC35:
	.string	"\n"
.LC36:
	.string	"unable to write pkcs7 object\n"
	.text
	.globl	pkcs7_main
	.type	pkcs7_main, @function
pkcs7_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$32773, -148(%rbp)
	movl	$32773, -152(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$1, -76(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -104(%rbp)
	movq	pkcs7_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx
	movl	-164(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -112(%rbp)
	jmp	.L10
.L30:
	cmpl	$1604, -116(%rbp)
	je	.L10
	cmpl	$1604, -116(%rbp)
	jg	.L10
	cmpl	$1603, -116(%rbp)
	jg	.L10
	cmpl	$1601, -116(%rbp)
	jge	.L12
	cmpl	$1600, -116(%rbp)
	je	.L10
	cmpl	$1600, -116(%rbp)
	jg	.L10
	cmpl	$11, -116(%rbp)
	je	.L13
	cmpl	$11, -116(%rbp)
	jg	.L10
	cmpl	$10, -116(%rbp)
	je	.L14
	cmpl	$10, -116(%rbp)
	jg	.L10
	cmpl	$9, -116(%rbp)
	je	.L15
	cmpl	$9, -116(%rbp)
	jg	.L10
	cmpl	$8, -116(%rbp)
	je	.L16
	cmpl	$8, -116(%rbp)
	jg	.L10
	cmpl	$7, -116(%rbp)
	je	.L17
	cmpl	$7, -116(%rbp)
	jg	.L10
	cmpl	$6, -116(%rbp)
	je	.L18
	cmpl	$6, -116(%rbp)
	jg	.L10
	cmpl	$5, -116(%rbp)
	je	.L19
	cmpl	$5, -116(%rbp)
	jg	.L10
	cmpl	$4, -116(%rbp)
	je	.L20
	cmpl	$4, -116(%rbp)
	jg	.L10
	cmpl	$3, -116(%rbp)
	je	.L21
	cmpl	$3, -116(%rbp)
	jg	.L10
	cmpl	$2, -116(%rbp)
	je	.L22
	cmpl	$2, -116(%rbp)
	jg	.L10
	cmpl	$0, -116(%rbp)
	jg	.L23
	cmpl	$-1, -116(%rbp)
	jge	.L24
	jmp	.L10
.L23:
	cmpl	$1, -116(%rbp)
	je	.L25
	jmp	.L10
.L60:
	nop
	jmp	.L24
.L61:
	nop
	jmp	.L24
.L63:
	nop
.L24:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC32(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L25:
	movq	pkcs7_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -76(%rbp)
	jmp	.L26
.L22:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-148(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L60
	jmp	.L10
.L21:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-152(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L61
	jmp	.L10
.L20:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	jmp	.L10
.L19:
	call	opt_arg@PLT
	movq	%rax, -48(%rbp)
	jmp	.L10
.L18:
	movl	$1, -64(%rbp)
	jmp	.L10
.L17:
	movl	$1, -60(%rbp)
	jmp	.L10
.L16:
	movl	$1, -68(%rbp)
	jmp	.L10
.L15:
	movl	$1, -56(%rbp)
	jmp	.L10
.L14:
	movl	$1, -72(%rbp)
	jmp	.L10
.L13:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -8(%rbp)
	jmp	.L10
.L12:
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L62
	nop
.L10:
	call	opt_next@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jne	.L30
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L63
	movl	-148(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L64
	call	app_get0_propq@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_new_ex@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	jne	.L33
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L26
.L33:
	movl	-148(%rbp), %eax
	cmpl	$4, %eax
	jne	.L34
	leaq	-144(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_PKCS7_bio@PLT
	movq	%rax, -16(%rbp)
	jmp	.L35
.L34:
	leaq	-144(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_read_bio_PKCS7@PLT
	movq	%rax, -16(%rbp)
.L35:
	cmpq	$0, -16(%rbp)
	jne	.L36
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L26
.L36:
	movl	-152(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L65
	cmpl	$0, -68(%rbp)
	je	.L38
	movq	-144(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PKCS7_print_ctx@PLT
.L38:
	cmpl	$0, -56(%rbp)
	je	.L39
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -52(%rbp)
	cmpl	$22, -52(%rbp)
	je	.L40
	cmpl	$24, -52(%rbp)
	je	.L41
	jmp	.L44
.L40:
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.L66
.L41:
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.L67
.L66:
	nop
	jmp	.L44
.L67:
	nop
.L44:
	cmpq	$0, -88(%rbp)
	je	.L46
	movl	$0, -52(%rbp)
	jmp	.L47
.L51:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -128(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L48
	movq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_print@PLT
	jmp	.L49
.L48:
	cmpl	$0, -72(%rbp)
	jne	.L49
	movq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dump_cert_text@PLT
.L49:
	cmpl	$0, -64(%rbp)
	jne	.L50
	movq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
.L50:
	leaq	.LC35(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	addl	$1, -52(%rbp)
.L47:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -52(%rbp)
	jl	.L51
.L46:
	cmpq	$0, -96(%rbp)
	je	.L52
	movl	$0, -52(%rbp)
	jmp	.L53
.L55:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -136(%rbp)
	call	get_nameopt@PLT
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_print_ex@PLT
	cmpl	$0, -64(%rbp)
	jne	.L54
	movq	-136(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509_CRL@PLT
.L54:
	leaq	.LC35(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	addl	$1, -52(%rbp)
.L53:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -52(%rbp)
	jl	.L55
.L52:
	movl	$0, -76(%rbp)
	jmp	.L26
.L39:
	cmpl	$0, -64(%rbp)
	jne	.L56
	movl	-152(%rbp), %eax
	cmpl	$4, %eax
	jne	.L57
	movq	-144(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS7_bio@PLT
	movl	%eax, -52(%rbp)
	jmp	.L58
.L57:
	movq	-144(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS7@PLT
	movl	%eax, -52(%rbp)
.L58:
	cmpl	$0, -52(%rbp)
	jne	.L56
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
	jmp	.L26
.L56:
	movl	$0, -76(%rbp)
	jmp	.L26
.L62:
	nop
	jmp	.L26
.L64:
	nop
	jmp	.L26
.L65:
	nop
.L26:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-76(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	pkcs7_main, .-pkcs7_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
