	.file	"crl.c"
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
	.globl	crl_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"verify"
.LC4:
	.string	"Verify CRL signature"
.LC5:
	.string	"Input options:\n"
.LC6:
	.string	"in"
.LC7:
	.string	"Input file - default stdin"
.LC8:
	.string	"inform"
	.align 8
.LC9:
	.string	"CRL input format (DER or PEM); has no effect"
.LC10:
	.string	"key"
	.align 8
.LC11:
	.string	"CRL signing Private key to use"
.LC12:
	.string	"keyform"
	.align 8
.LC13:
	.string	"Private key file format (DER/PEM/P12); has no effect"
.LC14:
	.string	"Output options:\n"
.LC15:
	.string	"out"
.LC16:
	.string	"output file - default stdout"
.LC17:
	.string	"outform"
.LC18:
	.string	"Output format - default PEM"
.LC19:
	.string	"dateopt"
	.align 8
.LC20:
	.string	"Datetime format used for printing. (rfc_822/iso_8601). Default is rfc_822."
.LC21:
	.string	"text"
	.align 8
.LC22:
	.string	"Print out a text format version"
.LC23:
	.string	"hash"
.LC24:
	.string	"Print hash value"
.LC25:
	.string	"hash_old"
	.align 8
.LC26:
	.string	"Print old-style (MD5) hash value"
.LC27:
	.string	"nameopt"
	.align 8
.LC28:
	.string	"Certificate subject/issuer name printing options"
.LC29:
	.string	""
.LC30:
	.string	"Any supported digest"
.LC31:
	.string	"CRL options:\n"
.LC32:
	.string	"issuer"
.LC33:
	.string	"Print issuer DN"
.LC34:
	.string	"lastupdate"
.LC35:
	.string	"Set lastUpdate field"
.LC36:
	.string	"nextupdate"
.LC37:
	.string	"Set nextUpdate field"
.LC38:
	.string	"noout"
.LC39:
	.string	"No CRL output"
.LC40:
	.string	"fingerprint"
.LC41:
	.string	"Print the crl fingerprint"
.LC42:
	.string	"crlnumber"
.LC43:
	.string	"Print CRL number"
.LC44:
	.string	"badsig"
	.align 8
.LC45:
	.string	"Corrupt last byte of loaded CRL signature (for test)"
.LC46:
	.string	"gendelta"
	.align 8
.LC47:
	.string	"Other CRL to compare/diff to the Input one"
.LC48:
	.string	"Certificate options:\n"
.LC49:
	.string	"CApath"
	.align 8
.LC50:
	.string	"Verify CRL using certificates in dir"
.LC51:
	.string	"CAfile"
	.align 8
.LC52:
	.string	"Verify CRL using certificates in file name"
.LC53:
	.string	"CAstore"
	.align 8
.LC54:
	.string	"Verify CRL using certificates in store URI"
.LC55:
	.string	"no-CAfile"
	.align 8
.LC56:
	.string	"Do not load the default certificates file"
.LC57:
	.string	"no-CApath"
	.align 8
.LC58:
	.string	"Do not load certificates from the default certificates directory"
.LC59:
	.string	"no-CAstore"
	.align 8
.LC60:
	.string	"Do not load certificates from the default certificates store"
.LC61:
	.string	"Provider options:\n"
.LC62:
	.string	"provider-path"
	.align 8
.LC63:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC64:
	.string	"provider"
	.align 8
.LC65:
	.string	"Provider to load (can be specified multiple times)"
.LC66:
	.string	"propquery"
	.align 8
.LC67:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	crl_options, @object
	.size	crl_options, 912
crl_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	21
	.long	45
	.quad	.LC4
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	3
	.long	60
	.quad	.LC7
	.quad	.LC8
	.long	2
	.long	70
	.quad	.LC9
	.quad	.LC10
	.long	7
	.long	60
	.quad	.LC11
	.quad	.LC12
	.long	6
	.long	70
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
	.long	4
	.long	70
	.quad	.LC18
	.quad	.LC19
	.long	22
	.long	115
	.quad	.LC20
	.quad	.LC21
	.long	23
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	24
	.long	45
	.quad	.LC24
	.quad	.LC25
	.long	25
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	27
	.long	115
	.quad	.LC28
	.quad	.LC29
	.long	28
	.long	45
	.quad	.LC30
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC31
	.quad	.LC32
	.long	8
	.long	45
	.quad	.LC33
	.quad	.LC34
	.long	9
	.long	45
	.quad	.LC35
	.quad	.LC36
	.long	10
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	26
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	11
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	12
	.long	45
	.quad	.LC43
	.quad	.LC44
	.long	13
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	14
	.long	60
	.quad	.LC47
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC48
	.quad	.LC49
	.long	15
	.long	47
	.quad	.LC50
	.quad	.LC51
	.long	16
	.long	60
	.quad	.LC52
	.quad	.LC53
	.long	17
	.long	58
	.quad	.LC54
	.quad	.LC55
	.long	19
	.long	45
	.quad	.LC56
	.quad	.LC57
	.long	18
	.long	45
	.quad	.LC58
	.quad	.LC59
	.long	20
	.long	45
	.quad	.LC60
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC61
	.quad	.LC62
	.long	1602
	.long	115
	.quad	.LC63
	.quad	.LC64
	.long	1601
	.long	115
	.quad	.LC65
	.quad	.LC66
	.long	1603
	.long	115
	.quad	.LC67
	.quad	0
	.zero	16
	.section	.rodata
.LC68:
	.string	"digest"
.LC69:
	.string	"%s: Use -help for summary.\n"
.LC70:
	.string	"CRL"
	.align 8
.LC71:
	.string	"Error initialising X509 store\n"
	.align 8
.LC72:
	.string	"Error getting CRL issuer certificate\n"
	.align 8
.LC73:
	.string	"Error getting CRL issuer public key\n"
.LC74:
	.string	"verify failure\n"
.LC75:
	.string	"verify OK\n"
.LC76:
	.string	"Missing CRL signing key\n"
.LC77:
	.string	"other CRL"
.LC78:
	.string	"CRL signing key"
.LC79:
	.string	"Error creating delta CRL\n"
.LC80:
	.string	"issuer="
.LC81:
	.string	"crlNumber="
.LC82:
	.string	"0x"
.LC83:
	.string	"<NONE>"
.LC84:
	.string	"\n"
.LC85:
	.string	"issuer name hash="
.LC86:
	.string	"%08lx\n"
.LC87:
	.string	"<ERROR>"
.LC88:
	.string	"issuer name old hash="
.LC89:
	.string	"lastUpdate="
.LC90:
	.string	"nextUpdate="
.LC91:
	.string	"NONE"
.LC92:
	.string	"out of memory\n"
.LC93:
	.string	"%s Fingerprint="
.LC94:
	.string	"%02X%c"
.LC95:
	.string	"unable to write CRL\n"
	.text
	.globl	crl_main
	.type	crl_main, @function
crl_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$368, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -372(%rbp)
	movq	%rsi, -384(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	call	EVP_sha1@PLT
	movq	%rax, -264(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -268(%rbp)
	movl	$32773, -272(%rbp)
	movl	$0, -276(%rbp)
	movl	$1, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movl	$0, -172(%rbp)
	movq	$0, -288(%rbp)
	movl	$0, -180(%rbp)
	leaq	.LC68(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	crl_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-384(%rbp), %rcx
	movl	-372(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -208(%rbp)
	jmp	.L6
.L46:
	cmpl	$1604, -212(%rbp)
	je	.L6
	cmpl	$1604, -212(%rbp)
	jg	.L6
	cmpl	$1603, -212(%rbp)
	jg	.L6
	cmpl	$1601, -212(%rbp)
	jge	.L8
	cmpl	$1600, -212(%rbp)
	je	.L6
	cmpl	$1600, -212(%rbp)
	jg	.L6
	cmpl	$28, -212(%rbp)
	je	.L9
	cmpl	$28, -212(%rbp)
	jg	.L6
	cmpl	$27, -212(%rbp)
	je	.L10
	cmpl	$27, -212(%rbp)
	jg	.L6
	cmpl	$26, -212(%rbp)
	je	.L11
	cmpl	$26, -212(%rbp)
	jg	.L6
	cmpl	$25, -212(%rbp)
	je	.L12
	cmpl	$25, -212(%rbp)
	jg	.L6
	cmpl	$24, -212(%rbp)
	je	.L13
	cmpl	$24, -212(%rbp)
	jg	.L6
	cmpl	$23, -212(%rbp)
	je	.L14
	cmpl	$23, -212(%rbp)
	jg	.L6
	cmpl	$22, -212(%rbp)
	je	.L15
	cmpl	$22, -212(%rbp)
	jg	.L6
	cmpl	$21, -212(%rbp)
	je	.L16
	cmpl	$21, -212(%rbp)
	jg	.L6
	cmpl	$20, -212(%rbp)
	je	.L17
	cmpl	$20, -212(%rbp)
	jg	.L6
	cmpl	$19, -212(%rbp)
	je	.L18
	cmpl	$19, -212(%rbp)
	jg	.L6
	cmpl	$18, -212(%rbp)
	je	.L19
	cmpl	$18, -212(%rbp)
	jg	.L6
	cmpl	$17, -212(%rbp)
	je	.L20
	cmpl	$17, -212(%rbp)
	jg	.L6
	cmpl	$16, -212(%rbp)
	je	.L21
	cmpl	$16, -212(%rbp)
	jg	.L6
	cmpl	$15, -212(%rbp)
	je	.L22
	cmpl	$15, -212(%rbp)
	jg	.L6
	cmpl	$14, -212(%rbp)
	je	.L23
	cmpl	$14, -212(%rbp)
	jg	.L6
	cmpl	$13, -212(%rbp)
	je	.L24
	cmpl	$13, -212(%rbp)
	jg	.L6
	cmpl	$12, -212(%rbp)
	je	.L25
	cmpl	$12, -212(%rbp)
	jg	.L6
	cmpl	$11, -212(%rbp)
	je	.L26
	cmpl	$11, -212(%rbp)
	jg	.L6
	cmpl	$10, -212(%rbp)
	je	.L27
	cmpl	$10, -212(%rbp)
	jg	.L6
	cmpl	$9, -212(%rbp)
	je	.L28
	cmpl	$9, -212(%rbp)
	jg	.L6
	cmpl	$8, -212(%rbp)
	je	.L29
	cmpl	$8, -212(%rbp)
	jg	.L6
	cmpl	$7, -212(%rbp)
	je	.L30
	cmpl	$7, -212(%rbp)
	jg	.L6
	cmpl	$6, -212(%rbp)
	je	.L31
	cmpl	$6, -212(%rbp)
	jg	.L6
	cmpl	$5, -212(%rbp)
	je	.L32
	cmpl	$5, -212(%rbp)
	jg	.L6
	cmpl	$4, -212(%rbp)
	je	.L33
	cmpl	$4, -212(%rbp)
	jg	.L6
	cmpl	$3, -212(%rbp)
	je	.L34
	cmpl	$3, -212(%rbp)
	jg	.L6
	cmpl	$2, -212(%rbp)
	je	.L35
	cmpl	$2, -212(%rbp)
	jg	.L6
	cmpl	$0, -212(%rbp)
	jg	.L36
	cmpl	$-1, -212(%rbp)
	jge	.L37
	jmp	.L6
.L36:
	cmpl	$1, -212(%rbp)
	je	.L38
	jmp	.L6
.L95:
	nop
	jmp	.L37
.L96:
	nop
	jmp	.L37
.L97:
	nop
	jmp	.L37
.L98:
	nop
	jmp	.L37
.L99:
	nop
	jmp	.L37
.L101:
	nop
	jmp	.L37
.L102:
	nop
.L37:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	leaq	.LC69(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L38:
	movq	crl_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -136(%rbp)
	jmp	.L39
.L35:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-268(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L95
	jmp	.L6
.L34:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L6
.L33:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L96
	jmp	.L6
.L32:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L6
.L31:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-276(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L97
	jmp	.L6
.L30:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L6
.L23:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L6
.L22:
	call	opt_arg@PLT
	movq	%rax, -104(%rbp)
	movl	$1, -160(%rbp)
	jmp	.L6
.L21:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	movl	$1, -160(%rbp)
	jmp	.L6
.L20:
	call	opt_arg@PLT
	movq	%rax, -112(%rbp)
	movl	$1, -160(%rbp)
	jmp	.L6
.L19:
	movl	$1, -168(%rbp)
	jmp	.L6
.L18:
	movl	$1, -164(%rbp)
	jmp	.L6
.L17:
	movl	$1, -172(%rbp)
	jmp	.L6
.L12:
	addl	$1, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	.L6
.L16:
	movl	$1, -160(%rbp)
	jmp	.L6
.L15:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_dateopt@PLT
	testl	%eax, %eax
	je	.L98
	jmp	.L6
.L14:
	movl	$1, -156(%rbp)
	jmp	.L6
.L13:
	addl	$1, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -116(%rbp)
	jmp	.L6
.L29:
	addl	$1, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -120(%rbp)
	jmp	.L6
.L28:
	addl	$1, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -124(%rbp)
	jmp	.L6
.L27:
	addl	$1, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -128(%rbp)
	jmp	.L6
.L11:
	movl	$1, -132(%rbp)
	jmp	.L6
.L26:
	addl	$1, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -148(%rbp)
	jmp	.L6
.L25:
	addl	$1, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -152(%rbp)
	jmp	.L6
.L24:
	movl	$1, -144(%rbp)
	jmp	.L6
.L10:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	set_nameopt@PLT
	testl	%eax, %eax
	je	.L99
	jmp	.L6
.L9:
	call	opt_unknown@PLT
	movq	%rax, -88(%rbp)
	jmp	.L6
.L8:
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L100
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	jne	.L46
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L101
	leaq	-264(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md@PLT
	testl	%eax, %eax
	je	.L102
	movl	-268(%rbp), %esi
	leaq	.LC70(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_crl@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L103
	cmpl	$0, -160(%rbp)
	je	.L50
	movl	-172(%rbp), %r8d
	movq	-112(%rbp), %rdi
	movl	-168(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movl	-164(%rbp), %esi
	movq	-96(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	setup_verify@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L104
	call	X509_LOOKUP_file@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	je	.L105
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L53
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L54
.L53:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC71(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L54:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_obj_by_subject@PLT
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.L55
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC72(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L55:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_get0_X509@PLT
	movq	%rax, %rdi
	call	X509_get_pubkey@PLT
	movq	%rax, -224(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	cmpq	$0, -224(%rbp)
	jne	.L56
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC73(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L56:
	movq	-224(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_verify@PLT
	movl	%eax, -176(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpl	$0, -176(%rbp)
	js	.L106
	cmpl	$0, -176(%rbp)
	jne	.L58
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC74(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L58:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC75(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L50:
	cmpq	$0, -72(%rbp)
	je	.L59
	cmpq	$0, -80(%rbp)
	jne	.L60
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC76(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L39
.L60:
	movl	-268(%rbp), %esi
	leaq	.LC77(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_crl@PLT
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	je	.L107
	movl	-276(%rbp), %esi
	leaq	.LC78(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.L62
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	jmp	.L39
.L62:
	movq	-264(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movq	-232(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	X509_CRL_diff@PLT
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -240(%rbp)
	je	.L63
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-240(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L59
.L63:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC79(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L39
.L59:
	cmpl	$0, -144(%rbp)
	je	.L64
	leaq	-296(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_get0_signature@PLT
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	corrupt_signature@PLT
.L64:
	cmpl	$0, -140(%rbp)
	je	.L65
	movl	$1, -176(%rbp)
	jmp	.L66
.L86:
	movl	-120(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jne	.L67
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC80(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_name@PLT
.L67:
	movl	-152(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jne	.L68
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext_d2i@PLT
	movq	%rax, -248(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -248(%rbp)
	je	.L69
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC82(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_INTEGER@PLT
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	jmp	.L70
.L69:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC83(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L70:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L68:
	movl	-116(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jne	.L71
	call	app_get0_propq@PLT
	movq	%rax, %r12
	call	app_get0_libctx@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rdi
	leaq	-300(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	X509_NAME_hash_ex@PLT
	movq	%rax, -256(%rbp)
	cmpl	$1, -140(%rbp)
	jle	.L72
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC85(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L72:
	movl	-300(%rbp), %eax
	testl	%eax, %eax
	je	.L73
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-256(%rbp), %rdx
	leaq	.LC86(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L71
.L73:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC87(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L39
.L71:
	movl	-180(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jne	.L74
	cmpl	$1, -140(%rbp)
	jle	.L75
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC88(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L75:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rdi
	call	X509_NAME_hash_old@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC86(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L74:
	movl	-124(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jne	.L76
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC89(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-288(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_lastUpdate@PLT
	movq	%rax, %rcx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print_ex@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L76:
	movl	-128(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jne	.L77
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC90(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_nextUpdate@PLT
	testq	%rax, %rax
	je	.L78
	movq	-288(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_nextUpdate@PLT
	movq	%rax, %rcx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print_ex@PLT
	jmp	.L79
.L78:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC91(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L79:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L77:
	movl	-148(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jne	.L80
	movq	-264(%rbp), %rsi
	leaq	-304(%rbp), %rcx
	leaq	-368(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_digest@PLT
	testl	%eax, %eax
	jne	.L81
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC92(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L81:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC93(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -184(%rbp)
	jmp	.L82
.L85:
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	-304(%rbp), %edx
	cmpl	%edx, %eax
	jne	.L83
	movl	$10, %ecx
	jmp	.L84
.L83:
	movl	$58, %ecx
.L84:
	movl	-184(%rbp), %eax
	cltq
	movzbl	-368(%rbp,%rax), %eax
	movzbl	%al, %edx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC94(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -184(%rbp)
.L82:
	movl	-304(%rbp), %eax
	cmpl	%eax, -184(%rbp)
	jl	.L85
.L80:
	addl	$1, -176(%rbp)
.L66:
	movl	-176(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jle	.L86
.L65:
	movl	-272(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L108
	cmpl	$0, -156(%rbp)
	je	.L88
	call	get_nameopt@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_print_ex@PLT
.L88:
	cmpl	$0, -132(%rbp)
	je	.L89
	movl	$0, -136(%rbp)
	jmp	.L39
.L89:
	movl	-272(%rbp), %eax
	cmpl	$4, %eax
	jne	.L90
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_CRL_bio@PLT
	movl	%eax, -176(%rbp)
	jmp	.L91
.L90:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509_CRL@PLT
	movl	%eax, -176(%rbp)
.L91:
	cmpl	$0, -176(%rbp)
	jne	.L92
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC95(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L92:
	movl	$0, -136(%rbp)
	jmp	.L39
.L100:
	nop
	jmp	.L39
.L103:
	nop
	jmp	.L39
.L104:
	nop
	jmp	.L39
.L105:
	nop
	jmp	.L39
.L106:
	nop
	jmp	.L39
.L107:
	nop
	jmp	.L39
.L108:
	nop
.L39:
	cmpl	$0, -136(%rbp)
	je	.L93
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L93:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movl	-136(%rbp), %eax
	addq	$368, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	crl_main, .-crl_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
