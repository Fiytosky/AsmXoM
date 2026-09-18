	.file	"asn1parse.c"
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
	.type	ossl_check_const_OPENSSL_STRING_sk_type, @function
ossl_check_const_OPENSSL_STRING_sk_type:
.LFB7:
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
.LFE7:
	.size	ossl_check_const_OPENSSL_STRING_sk_type, .-ossl_check_const_OPENSSL_STRING_sk_type
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
	.globl	asn1parse_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"oid"
.LC4:
	.string	"file of extra oid definitions"
.LC5:
	.string	"I/O options:\n"
.LC6:
	.string	"inform"
	.align 8
.LC7:
	.string	"input format - one of DER PEM B64"
.LC8:
	.string	"in"
.LC9:
	.string	"input file"
.LC10:
	.string	"out"
	.align 8
.LC11:
	.string	"output file (output format is always DER)"
.LC12:
	.string	"noout"
.LC13:
	.string	"do not produce any output"
.LC14:
	.string	"offset"
.LC15:
	.string	"offset into file"
.LC16:
	.string	"length"
.LC17:
	.string	"length of section in file"
.LC18:
	.string	"strparse"
	.align 8
.LC19:
	.string	"offset; a series of these can be used to 'dig'"
	.align 8
.LC20:
	.string	"into multiple ASN1 blob wrappings"
.LC21:
	.string	"genstr"
	.align 8
.LC22:
	.string	"string to generate ASN1 structure from"
.LC23:
	.string	"genconf"
	.align 8
.LC24:
	.string	"file to generate ASN1 structure from"
.LC25:
	.string	"strictpem"
	.align 8
.LC26:
	.string	"equivalent to '-inform pem' (obsolete)"
.LC27:
	.string	"item"
.LC28:
	.string	"item to parse and print"
.LC29:
	.string	"(-inform  will be ignored)"
.LC30:
	.string	"Formatting options:\n"
.LC31:
	.string	"i"
.LC32:
	.string	"indents the output"
.LC33:
	.string	"dump"
.LC34:
	.string	"unknown data in hex form"
.LC35:
	.string	"dlimit"
	.align 8
.LC36:
	.string	"dump the first arg bytes of unknown data in hex form"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	asn1parse_options, @object
	.size	asn1parse_options, 528
asn1parse_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	7
	.long	60
	.quad	.LC4
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	2
	.long	65
	.quad	.LC7
	.quad	.LC8
	.long	3
	.long	60
	.quad	.LC9
	.quad	.LC10
	.long	4
	.long	62
	.quad	.LC11
	.quad	.LC12
	.long	6
	.long	0
	.quad	.LC13
	.quad	.LC14
	.long	8
	.long	112
	.quad	.LC15
	.quad	.LC16
	.long	9
	.long	112
	.quad	.LC17
	.quad	.LC18
	.long	12
	.long	112
	.quad	.LC19
	.quad	OPT_MORE_STR
	.long	0
	.long	0
	.quad	.LC20
	.quad	.LC21
	.long	13
	.long	115
	.quad	.LC22
	.quad	.LC23
	.long	14
	.long	115
	.quad	.LC24
	.quad	.LC25
	.long	15
	.long	0
	.quad	.LC26
	.quad	.LC27
	.long	16
	.long	115
	.quad	.LC28
	.quad	OPT_MORE_STR
	.long	0
	.long	0
	.quad	.LC29
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	5
	.long	0
	.quad	.LC32
	.quad	.LC33
	.long	10
	.long	0
	.quad	.LC34
	.quad	.LC35
	.long	11
	.long	112
	.quad	.LC36
	.quad	0
	.zero	16
	.section	.rodata
	.align 8
.LC37:
	.string	"%s: Memory allocation failure\n"
.LC38:
	.string	"%s: Use -help for summary.\n"
.LC39:
	.string	"Unknown item name %s\n"
.LC40:
	.string	"Supported types:\n"
.LC41:
	.string	"    %s\n"
.LC42:
	.string	"Error reading PEM file\n"
.LC43:
	.string	"'%s' is out of range\n"
.LC44:
	.string	"Error parsing structure\n"
.LC45:
	.string	"Can't parse %s type\n"
.LC46:
	.string	"Error: offset out of range\n"
.LC47:
	.string	"Error writing output\n"
.LC48:
	.string	"Error parsing item %s\n"
.LC49:
	.string	"../apps/asn1parse.c"
	.text
	.globl	asn1parse_main
	.type	asn1parse_main, @function
asn1parse_main:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movl	%edi, -292(%rbp)
	movq	%rsi, -304(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -248(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$32773, -260(%rbp)
	movl	$0, -112(%rbp)
	movl	$1, -116(%rbp)
	movl	$0, -140(%rbp)
	movq	$0, -152(%rbp)
	movq	asn1parse_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-304(%rbp), %rcx
	movl	-292(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -176(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L14
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	leaq	.LC37(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L13
.L39:
	cmpl	$16, -180(%rbp)
	je	.L15
	cmpl	$16, -180(%rbp)
	jg	.L14
	cmpl	$15, -180(%rbp)
	je	.L16
	cmpl	$15, -180(%rbp)
	jg	.L14
	cmpl	$14, -180(%rbp)
	je	.L17
	cmpl	$14, -180(%rbp)
	jg	.L14
	cmpl	$13, -180(%rbp)
	je	.L18
	cmpl	$13, -180(%rbp)
	jg	.L14
	cmpl	$12, -180(%rbp)
	je	.L19
	cmpl	$12, -180(%rbp)
	jg	.L14
	cmpl	$11, -180(%rbp)
	je	.L20
	cmpl	$11, -180(%rbp)
	jg	.L14
	cmpl	$10, -180(%rbp)
	je	.L21
	cmpl	$10, -180(%rbp)
	jg	.L14
	cmpl	$9, -180(%rbp)
	je	.L22
	cmpl	$9, -180(%rbp)
	jg	.L14
	cmpl	$8, -180(%rbp)
	je	.L23
	cmpl	$8, -180(%rbp)
	jg	.L14
	cmpl	$7, -180(%rbp)
	je	.L24
	cmpl	$7, -180(%rbp)
	jg	.L14
	cmpl	$6, -180(%rbp)
	je	.L25
	cmpl	$6, -180(%rbp)
	jg	.L14
	cmpl	$5, -180(%rbp)
	je	.L26
	cmpl	$5, -180(%rbp)
	jg	.L14
	cmpl	$4, -180(%rbp)
	je	.L27
	cmpl	$4, -180(%rbp)
	jg	.L14
	cmpl	$3, -180(%rbp)
	je	.L28
	cmpl	$3, -180(%rbp)
	jg	.L14
	cmpl	$2, -180(%rbp)
	je	.L29
	cmpl	$2, -180(%rbp)
	jg	.L14
	cmpl	$0, -180(%rbp)
	jg	.L30
	cmpl	$-1, -180(%rbp)
	jge	.L31
	jmp	.L14
.L30:
	cmpl	$1, -180(%rbp)
	je	.L32
	jmp	.L14
.L81:
	nop
	jmp	.L31
.L84:
	nop
.L31:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	leaq	.LC38(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L13
.L32:
	movq	asn1parse_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -116(%rbp)
	jmp	.L13
.L29:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-260(%rbp), %rax
	movq	%rax, %rdx
	movl	$14, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L81
	jmp	.L14
.L28:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L14
.L27:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L14
.L26:
	movl	$1, -100(%rbp)
	jmp	.L14
.L25:
	movl	$1, -104(%rbp)
	jmp	.L14
.L24:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L14
.L23:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -112(%rbp)
	jmp	.L14
.L22:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -140(%rbp)
	jmp	.L14
.L21:
	movl	$-1, -108(%rbp)
	jmp	.L14
.L20:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -108(%rbp)
	jmp	.L14
.L19:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L82
	jmp	.L14
.L18:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L14
.L17:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L14
.L16:
	movl	$32773, -260(%rbp)
	jmp	.L14
.L15:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ASN1_ITEM_lookup@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.L93
	call	opt_arg@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC39(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC40(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	$0, -160(%rbp)
.L38:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_ITEM_get@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L83
	movq	-152(%rbp), %rax
	movq	48(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$1, -160(%rbp)
	jmp	.L38
.L83:
	nop
	jmp	.L13
.L93:
	nop
.L14:
	call	opt_next@PLT
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	jne	.L39
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L84
	cmpq	$0, -88(%rbp)
	je	.L41
	movq	-88(%rbp), %rax
	movl	$32769, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L85
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_create_objects@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L41:
	movl	-260(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L86
	cmpq	$0, -96(%rbp)
	je	.L44
	movq	-96(%rbp), %rax
	movl	$4, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L87
.L44:
	call	BUF_MEM_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L88
	cmpq	$0, -72(%rbp)
	jne	.L46
	cmpq	$0, -64(%rbp)
	jne	.L46
	movl	-260(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L46
	leaq	-272(%rbp), %rdi
	leaq	-232(%rbp), %rcx
	leaq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio@PLT
	cmpl	$1, %eax
	je	.L47
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC42(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L13
.L47:
	movq	-232(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-272(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L48
.L46:
	movq	-56(%rbp), %rax
	movl	$65536, %esi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	je	.L89
	cmpq	$0, -64(%rbp)
	jne	.L50
	cmpq	$0, -72(%rbp)
	je	.L51
.L50:
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_generate
	cltq
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	testq	%rax, %rax
	jns	.L53
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L13
.L51:
	movl	-260(%rbp), %eax
	cmpl	$32771, %eax
	jne	.L54
	call	BIO_f_base64@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L90
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -40(%rbp)
.L54:
	movq	$0, -272(%rbp)
.L58:
	movq	-272(%rbp), %rax
	addq	$8192, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	je	.L91
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-272(%rbp), %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-32(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	jle	.L92
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	jmp	.L58
.L92:
	nop
.L53:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -232(%rbp)
.L48:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L59
	movq	-232(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	$0, -120(%rbp)
	jmp	.L60
.L67:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-120(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	jle	.L61
	movl	-196(%rbp), %eax
	cltq
	cmpq	%rax, -128(%rbp)
	jg	.L62
.L61:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-120(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC43(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L63
.L62:
	movl	-196(%rbp), %eax
	cltq
	addq	%rax, -136(%rbp)
	movl	-196(%rbp), %eax
	cltq
	subq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-128(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_TYPE@PLT
	movq	%rax, -24(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	cmpq	$0, -24(%rbp)
	jne	.L64
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC44(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L13
.L64:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_get@PLT
	movl	%eax, -212(%rbp)
	cmpl	$6, -212(%rbp)
	je	.L65
	cmpl	$1, -212(%rbp)
	je	.L65
	cmpl	$5, -212(%rbp)
	jne	.L66
.L65:
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_tag2str@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L13
.L66:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -128(%rbp)
.L63:
	addl	$1, -120(%rbp)
.L60:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -120(%rbp)
	jl	.L67
	movq	-136(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -272(%rbp)
.L59:
	cmpl	$0, -112(%rbp)
	js	.L68
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L69
.L68:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L13
.L69:
	movq	-272(%rbp), %rdx
	movl	-112(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movq	%rdx, -272(%rbp)
	cmpl	$0, -140(%rbp)
	je	.L70
	movq	-272(%rbp), %rax
	cmpl	-140(%rbp), %eax
	jnb	.L71
.L70:
	movq	-272(%rbp), %rax
	movl	%eax, -140(%rbp)
.L71:
	cmpq	$0, -48(%rbp)
	je	.L72
	movl	-140(%rbp), %edx
	movq	-232(%rbp), %rcx
	movl	-112(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %edx
	movl	-140(%rbp), %eax
	cmpl	%eax, %edx
	je	.L72
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC47(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L13
.L72:
	cmpl	$0, -104(%rbp)
	jne	.L73
	movq	-232(%rbp), %rdx
	movl	-112(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -280(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L74
	movl	-140(%rbp), %edx
	movq	-152(%rbp), %rcx
	leaq	-280(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_item_d2i@PLT
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.L75
	movq	-152(%rbp), %rax
	movq	48(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC48(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L13
.L75:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ASN1_item_print@PLT
	movq	-152(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	jmp	.L73
.L74:
	movl	-140(%rbp), %edx
	movq	-280(%rbp), %rsi
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edi
	movl	-100(%rbp), %ecx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ASN1_parse_dump@PLT
	testl	%eax, %eax
	jne	.L73
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L13
.L73:
	movl	$0, -116(%rbp)
	jmp	.L13
.L82:
	nop
	jmp	.L13
.L85:
	nop
	jmp	.L13
.L86:
	nop
	jmp	.L13
.L87:
	nop
	jmp	.L13
.L88:
	nop
	jmp	.L13
.L89:
	nop
	jmp	.L13
.L90:
	nop
	jmp	.L13
.L91:
	nop
.L13:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -116(%rbp)
	je	.L78
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L78:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-240(%rbp), %rax
	leaq	.LC49(%rip), %rcx
	movl	$311, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-248(%rbp), %rax
	leaq	.LC49(%rip), %rcx
	movl	$312, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-116(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	asn1parse_main, .-asn1parse_main
	.section	.rodata
.LC50:
	.string	"asn1"
.LC51:
	.string	"default"
.LC52:
	.string	"Can't find 'asn1' in '%s'\n"
	.text
	.type	do_generate, @function
do_generate:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L95
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_load_config_internal@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L104
	cmpq	$0, -40(%rbp)
	jne	.L98
	leaq	.LC50(%rip), %rdx
	leaq	.LC51(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -40(%rbp)
.L98:
	cmpq	$0, -40(%rbp)
	jne	.L95
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L97
.L95:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_generate_nconf@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L99
	movl	$-1, %eax
	jmp	.L103
.L99:
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_ASN1_TYPE@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L105
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	je	.L106
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_TYPE@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movl	-20(%rbp), %eax
	jmp	.L103
.L104:
	nop
	jmp	.L97
.L105:
	nop
	jmp	.L97
.L106:
	nop
.L97:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movl	$-1, %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	do_generate, .-do_generate
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
