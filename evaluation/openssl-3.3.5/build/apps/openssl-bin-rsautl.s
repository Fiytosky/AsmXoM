	.file	"rsautl.c"
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
	.globl	rsautl_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"sign"
.LC4:
	.string	"Sign with private key"
.LC5:
	.string	"verify"
.LC6:
	.string	"Verify with public key"
.LC7:
	.string	"encrypt"
.LC8:
	.string	"Encrypt with public key"
.LC9:
	.string	"decrypt"
.LC10:
	.string	"Decrypt with private key"
.LC11:
	.string	"engine"
	.align 8
.LC12:
	.string	"Use engine, possibly a hardware device"
.LC13:
	.string	"Input options:\n"
.LC14:
	.string	"in"
.LC15:
	.string	"Input file"
.LC16:
	.string	"inkey"
	.align 8
.LC17:
	.string	"Input key, by default an RSA private key"
.LC18:
	.string	"keyform"
	.align 8
.LC19:
	.string	"Private key format (ENGINE, other values ignored)"
.LC20:
	.string	"pubin"
	.align 8
.LC21:
	.string	"Input key is an RSA public pkey"
.LC22:
	.string	"certin"
	.align 8
.LC23:
	.string	"Input is a cert carrying an RSA public key"
.LC24:
	.string	"rev"
	.align 8
.LC25:
	.string	"Reverse the order of the input buffer"
.LC26:
	.string	"passin"
.LC27:
	.string	"Input file pass phrase source"
.LC28:
	.string	"Output options:\n"
.LC29:
	.string	"out"
.LC30:
	.string	"Output file"
.LC31:
	.string	"raw"
.LC32:
	.string	"Use no padding"
.LC33:
	.string	"pkcs"
	.align 8
.LC34:
	.string	"Use PKCS#1 v1.5 padding (default)"
.LC35:
	.string	"x931"
.LC36:
	.string	"Use ANSI X9.31 padding"
.LC37:
	.string	"oaep"
.LC38:
	.string	"Use PKCS#1 OAEP"
.LC39:
	.string	"asn1parse"
	.align 8
.LC40:
	.string	"Run output through asn1parse; useful with -verify"
.LC41:
	.string	"hexdump"
.LC42:
	.string	"Hex dump output"
.LC43:
	.string	"Random state options:\n"
.LC44:
	.string	"rand"
	.align 8
.LC45:
	.string	"Load the given file(s) into the random number generator"
.LC46:
	.string	"writerand"
	.align 8
.LC47:
	.string	"Write random data to the specified file"
.LC48:
	.string	"Provider options:\n"
.LC49:
	.string	"provider-path"
	.align 8
.LC50:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC51:
	.string	"provider"
	.align 8
.LC52:
	.string	"Provider to load (can be specified multiple times)"
.LC53:
	.string	"propquery"
	.align 8
.LC54:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	rsautl_options, @object
	.size	rsautl_options, 744
rsautl_options:
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
	.long	45
	.quad	.LC4
	.quad	.LC5
	.long	12
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	14
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	15
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	2
	.long	115
	.quad	.LC12
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	3
	.long	60
	.quad	.LC15
	.quad	.LC16
	.long	18
	.long	115
	.quad	.LC17
	.quad	.LC18
	.long	20
	.long	69
	.quad	.LC19
	.quad	.LC20
	.long	16
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	17
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	13
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	19
	.long	115
	.quad	.LC27
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	4
	.long	62
	.quad	.LC30
	.quad	.LC31
	.long	7
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	9
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	10
	.long	45
	.quad	.LC36
	.quad	.LC37
	.long	8
	.long	45
	.quad	.LC38
	.quad	.LC39
	.long	5
	.long	45
	.quad	.LC40
	.quad	.LC41
	.long	6
	.long	45
	.quad	.LC42
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC43
	.quad	.LC44
	.long	1501
	.long	115
	.quad	.LC45
	.quad	.LC46
	.long	1502
	.long	62
	.quad	.LC47
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC48
	.quad	.LC49
	.long	1602
	.long	115
	.quad	.LC50
	.quad	.LC51
	.long	1601
	.long	115
	.quad	.LC52
	.quad	.LC53
	.long	1603
	.long	115
	.quad	.LC54
	.quad	0
	.zero	16
	.section	.rodata
.LC55:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC56:
	.string	"A private key is needed for this operation\n"
.LC57:
	.string	"Error getting password\n"
.LC58:
	.string	"private key"
.LC59:
	.string	"public key"
.LC60:
	.string	"Certificate"
.LC61:
	.string	"hold rsa key"
.LC62:
	.string	"output rsa key"
.LC63:
	.string	"Error reading input Data\n"
.LC64:
	.string	"RSA operation error\n"
.LC65:
	.string	"../apps/rsautl.c"
	.text
	.globl	rsautl_main
	.type	rsautl_main, @function
rsautl_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -192(%rbp)
	movb	$2, -73(%rbp)
	movb	$1, -74(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movb	$1, -97(%rbp)
	movq	$0, -200(%rbp)
	movl	$0, -204(%rbp)
	movl	$1, -104(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movq	rsautl_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-224(%rbp), %rcx
	movl	-212(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -144(%rbp)
	jmp	.L6
.L37:
	cmpl	$1604, -148(%rbp)
	je	.L6
	cmpl	$1604, -148(%rbp)
	jg	.L6
	cmpl	$1603, -148(%rbp)
	jg	.L6
	cmpl	$1601, -148(%rbp)
	jge	.L8
	cmpl	$1600, -148(%rbp)
	je	.L6
	cmpl	$1600, -148(%rbp)
	jg	.L6
	cmpl	$1503, -148(%rbp)
	je	.L6
	cmpl	$1503, -148(%rbp)
	jg	.L6
	cmpl	$1502, -148(%rbp)
	jg	.L6
	cmpl	$1501, -148(%rbp)
	jge	.L10
	cmpl	$1500, -148(%rbp)
	je	.L6
	cmpl	$1500, -148(%rbp)
	jg	.L6
	cmpl	$20, -148(%rbp)
	je	.L11
	cmpl	$20, -148(%rbp)
	jg	.L6
	cmpl	$19, -148(%rbp)
	je	.L12
	cmpl	$19, -148(%rbp)
	jg	.L6
	cmpl	$18, -148(%rbp)
	je	.L13
	cmpl	$18, -148(%rbp)
	jg	.L6
	cmpl	$17, -148(%rbp)
	je	.L14
	cmpl	$17, -148(%rbp)
	jg	.L6
	cmpl	$16, -148(%rbp)
	je	.L15
	cmpl	$16, -148(%rbp)
	jg	.L6
	cmpl	$15, -148(%rbp)
	je	.L16
	cmpl	$15, -148(%rbp)
	jg	.L6
	cmpl	$14, -148(%rbp)
	je	.L17
	cmpl	$14, -148(%rbp)
	jg	.L6
	cmpl	$13, -148(%rbp)
	je	.L18
	cmpl	$13, -148(%rbp)
	jg	.L6
	cmpl	$12, -148(%rbp)
	je	.L19
	cmpl	$12, -148(%rbp)
	jg	.L6
	cmpl	$11, -148(%rbp)
	je	.L20
	cmpl	$11, -148(%rbp)
	jg	.L6
	cmpl	$10, -148(%rbp)
	je	.L21
	cmpl	$10, -148(%rbp)
	jg	.L6
	cmpl	$9, -148(%rbp)
	je	.L22
	cmpl	$9, -148(%rbp)
	jg	.L6
	cmpl	$8, -148(%rbp)
	je	.L23
	cmpl	$8, -148(%rbp)
	jg	.L6
	cmpl	$7, -148(%rbp)
	je	.L24
	cmpl	$7, -148(%rbp)
	jg	.L6
	cmpl	$6, -148(%rbp)
	je	.L25
	cmpl	$6, -148(%rbp)
	jg	.L6
	cmpl	$5, -148(%rbp)
	je	.L26
	cmpl	$5, -148(%rbp)
	jg	.L6
	cmpl	$4, -148(%rbp)
	je	.L27
	cmpl	$4, -148(%rbp)
	jg	.L6
	cmpl	$3, -148(%rbp)
	je	.L28
	cmpl	$3, -148(%rbp)
	jg	.L6
	cmpl	$2, -148(%rbp)
	je	.L29
	cmpl	$2, -148(%rbp)
	jg	.L6
	cmpl	$0, -148(%rbp)
	jg	.L30
	cmpl	$-1, -148(%rbp)
	jge	.L31
	jmp	.L6
.L30:
	cmpl	$1, -148(%rbp)
	je	.L32
	jmp	.L6
.L72:
	nop
	jmp	.L31
.L75:
	nop
.L31:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC55(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L33
.L32:
	movq	rsautl_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -104(%rbp)
	jmp	.L33
.L11:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-204(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L72
	jmp	.L6
.L28:
	call	opt_arg@PLT
	movq	%rax, -48(%rbp)
	jmp	.L6
.L27:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L6
.L29:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -24(%rbp)
	jmp	.L6
.L26:
	movl	$1, -116(%rbp)
	jmp	.L6
.L25:
	movl	$1, -112(%rbp)
	jmp	.L6
.L24:
	movb	$3, -97(%rbp)
	jmp	.L6
.L23:
	movb	$4, -97(%rbp)
	jmp	.L6
.L22:
	movb	$1, -97(%rbp)
	jmp	.L6
.L21:
	movb	$5, -97(%rbp)
	jmp	.L6
.L20:
	movb	$1, -73(%rbp)
	movl	$1, -120(%rbp)
	jmp	.L6
.L19:
	movb	$2, -73(%rbp)
	jmp	.L6
.L18:
	movl	$1, -124(%rbp)
	jmp	.L6
.L17:
	movb	$3, -73(%rbp)
	jmp	.L6
.L16:
	movb	$4, -73(%rbp)
	movl	$1, -120(%rbp)
	jmp	.L6
.L15:
	movb	$2, -74(%rbp)
	jmp	.L6
.L14:
	movb	$3, -74(%rbp)
	jmp	.L6
.L13:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L6
.L12:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L6
.L10:
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L73
	jmp	.L6
.L8:
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L74
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.L37
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L75
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L76
	cmpl	$0, -120(%rbp)
	je	.L40
	cmpb	$1, -74(%rbp)
	je	.L40
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC56(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L33
.L40:
	leaq	-192(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L41
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC57(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L33
.L41:
	movsbl	-74(%rbp), %eax
	cmpl	$3, %eax
	je	.L42
	cmpl	$3, %eax
	jg	.L43
	cmpl	$1, %eax
	je	.L44
	cmpl	$2, %eax
	je	.L45
	jmp	.L43
.L44:
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %esi
	leaq	.LC58(%rip), %rdi
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -32(%rbp)
	jmp	.L43
.L45:
	movl	-204(%rbp), %esi
	leaq	.LC59(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_pubkey@PLT
	movq	%rax, -32(%rbp)
	jmp	.L43
.L42:
	leaq	.LC60(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.L77
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_pubkey@PLT
	movq	%rax, -32(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
.L77:
	nop
.L43:
	cmpq	$0, -32(%rbp)
	jne	.L47
	movl	$1, %eax
	jmp	.L71
.L47:
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L78
	movq	-56(%rbp), %rax
	movl	$2, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L79
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	.LC61(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -88(%rbp)
	movl	-164(%rbp), %eax
	cltq
	leaq	.LC62(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -96(%rbp)
	movl	-164(%rbp), %eax
	cltq
	movq	%rax, -200(%rbp)
	movl	-164(%rbp), %eax
	leal	(%rax,%rax), %edx
	movq	-88(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jns	.L51
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC63(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L33
.L51:
	movl	-108(%rbp), %eax
	cltq
	movq	%rax, -176(%rbp)
	cmpl	$0, -124(%rbp)
	je	.L52
	movq	$0, -136(%rbp)
	jmp	.L53
.L54:
	movq	-88(%rbp), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -177(%rbp)
	movq	-176(%rbp), %rax
	subq	-136(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rcx
	movq	-136(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-176(%rbp), %rax
	subq	-136(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-177(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -136(%rbp)
.L53:
	movq	-176(%rbp), %rax
	shrq	%rax
	cmpq	%rax, -136(%rbp)
	jb	.L54
.L52:
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L80
	movsbl	-73(%rbp), %eax
	cmpl	$4, %eax
	je	.L56
	cmpl	$4, %eax
	jg	.L57
	cmpl	$3, %eax
	je	.L58
	cmpl	$3, %eax
	jg	.L57
	cmpl	$1, %eax
	je	.L59
	cmpl	$2, %eax
	jne	.L57
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_recover_init@PLT
	testl	%eax, %eax
	jle	.L60
	movzbl	-97(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L60
	movq	-176(%rbp), %rdi
	movq	-88(%rbp), %rcx
	leaq	-200(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify_recover@PLT
	testl	%eax, %eax
	jle	.L60
	movl	$1, %eax
	jmp	.L61
.L60:
	movl	$0, %eax
.L61:
	movl	%eax, -108(%rbp)
	jmp	.L57
.L59:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	testl	%eax, %eax
	jle	.L62
	movzbl	-97(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L62
	movq	-176(%rbp), %rdi
	movq	-88(%rbp), %rcx
	leaq	-200(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	testl	%eax, %eax
	jle	.L62
	movl	$1, %eax
	jmp	.L63
.L62:
	movl	$0, %eax
.L63:
	movl	%eax, -108(%rbp)
	jmp	.L57
.L58:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	testl	%eax, %eax
	jle	.L64
	movzbl	-97(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L64
	movq	-176(%rbp), %rdi
	movq	-88(%rbp), %rcx
	leaq	-200(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jle	.L64
	movl	$1, %eax
	jmp	.L65
.L64:
	movl	$0, %eax
.L65:
	movl	%eax, -108(%rbp)
	jmp	.L57
.L56:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	testl	%eax, %eax
	jle	.L66
	movzbl	-97(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L66
	movq	-176(%rbp), %rdi
	movq	-88(%rbp), %rcx
	leaq	-200(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	testl	%eax, %eax
	jle	.L66
	movl	$1, %eax
	jmp	.L67
.L66:
	movl	$0, %eax
.L67:
	movl	%eax, -108(%rbp)
	nop
.L57:
	cmpl	$0, -108(%rbp)
	jne	.L68
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC64(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L33
.L68:
	movl	$0, -104(%rbp)
	cmpl	$0, -116(%rbp)
	je	.L69
	movq	-200(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$-1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ASN1_parse_dump@PLT
	testl	%eax, %eax
	jne	.L33
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L33
.L69:
	cmpl	$0, -112(%rbp)
	je	.L70
	movq	-200(%rbp), %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_dump@PLT
	jmp	.L33
.L70:
	movq	-200(%rbp), %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	jmp	.L33
.L73:
	nop
	jmp	.L33
.L74:
	nop
	jmp	.L33
.L76:
	nop
	jmp	.L33
.L78:
	nop
	jmp	.L33
.L79:
	nop
	jmp	.L33
.L80:
	nop
.L33:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	leaq	.LC65(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$288, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC65(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$289, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-192(%rbp), %rax
	leaq	.LC65(%rip), %rcx
	movl	$290, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-104(%rbp), %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	rsautl_main, .-rsautl_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
