	.file	"ciphers.c"
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
	.type	ossl_check_const_SSL_CIPHER_sk_type, @function
ossl_check_const_SSL_CIPHER_sk_type:
.LFB666:
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
.LFE666:
	.size	ossl_check_const_SSL_CIPHER_sk_type, .-ossl_check_const_SSL_CIPHER_sk_type
	.type	ossl_check_SSL_CIPHER_sk_type, @function
ossl_check_SSL_CIPHER_sk_type:
.LFB667:
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
.LFE667:
	.size	ossl_check_SSL_CIPHER_sk_type, .-ossl_check_SSL_CIPHER_sk_type
	.globl	ciphers_options
	.section	.rodata
.LC0:
	.string	"Usage: %s [options] [cipher]\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"Output options:\n"
.LC5:
	.string	"v"
	.align 8
.LC6:
	.string	"Verbose listing of the SSL/TLS ciphers"
.LC7:
	.string	"V"
.LC8:
	.string	"Even more verbose"
.LC9:
	.string	"stdname"
.LC10:
	.string	"Show standard cipher names"
.LC11:
	.string	"convert"
	.align 8
.LC12:
	.string	"Convert standard name into OpenSSL name"
	.align 8
.LC13:
	.string	"Cipher specification options:\n"
.LC14:
	.string	"s"
.LC15:
	.string	"Only supported ciphers"
.LC16:
	.string	"tls1"
.LC17:
	.string	"Ciphers compatible with TLS1"
.LC18:
	.string	"tls1_1"
	.align 8
.LC19:
	.string	"Ciphers compatible with TLS1.1"
.LC20:
	.string	"tls1_2"
	.align 8
.LC21:
	.string	"Ciphers compatible with TLS1.2"
.LC22:
	.string	"tls1_3"
	.align 8
.LC23:
	.string	"Ciphers compatible with TLS1.3"
.LC24:
	.string	"psk"
	.align 8
.LC25:
	.string	"Include ciphersuites requiring PSK"
.LC26:
	.string	"srp"
	.align 8
.LC27:
	.string	"(deprecated) Include ciphersuites requiring SRP"
.LC28:
	.string	"ciphersuites"
	.align 8
.LC29:
	.string	"Configure the TLSv1.3 ciphersuites to use"
.LC30:
	.string	"Provider options:\n"
.LC31:
	.string	"provider-path"
	.align 8
.LC32:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC33:
	.string	"provider"
	.align 8
.LC34:
	.string	"Provider to load (can be specified multiple times)"
.LC35:
	.string	"propquery"
	.align 8
.LC36:
	.string	"Property query used when fetching algorithms"
.LC37:
	.string	"Parameters:\n"
.LC38:
	.string	"cipher"
	.align 8
.LC39:
	.string	"Cipher string to decode (optional)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ciphers_options, @object
	.size	ciphers_options, 576
ciphers_options:
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
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC4
	.quad	.LC5
	.long	12
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	13
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	2
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	3
	.long	115
	.quad	.LC12
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	14
	.long	45
	.quad	.LC15
	.quad	.LC16
	.long	5
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	6
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	7
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	8
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	9
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	10
	.long	45
	.quad	.LC27
	.quad	.LC28
	.long	11
	.long	115
	.quad	.LC29
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	1602
	.long	115
	.quad	.LC32
	.quad	.LC33
	.long	1601
	.long	115
	.quad	.LC34
	.quad	.LC35
	.long	1603
	.long	115
	.quad	.LC36
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	0
	.long	0
	.quad	.LC39
	.quad	0
	.zero	16
	.text
	.type	dummy_psk, @function
dummy_psk:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -32(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	dummy_psk, .-dummy_psk
	.section	.rodata
.LC40:
	.string	"%s: Use -help for summary.\n"
.LC41:
	.string	"OpenSSL cipher name: %s\n"
	.align 8
.LC42:
	.string	"Error setting TLSv1.3 ciphersuites\n"
.LC43:
	.string	"Error in cipher list\n"
.LC44:
	.string	":"
.LC45:
	.string	"%s"
.LC46:
	.string	"\n"
.LC47:
	.string	"          0x%02X,0x%02X - "
	.align 8
.LC48:
	.string	"0x%02X,0x%02X,0x%02X,0x%02X - "
.LC49:
	.string	"UNKNOWN"
.LC50:
	.string	"%-45s - "
	.text
	.globl	ciphers_main
	.type	ciphers_main, @function
ciphers_main:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$712, %rsp
	.cfi_offset 3, -24
	movl	%edi, -708(%rbp)
	movq	%rsi, -720(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	TLS_server_method@PLT
	movq	%rax, -120(%rbp)
	movl	$1, -44(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movq	ciphers_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-720(%rbp), %rcx
	movl	-708(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -128(%rbp)
	jmp	.L12
.L33:
	cmpl	$1604, -132(%rbp)
	je	.L12
	cmpl	$1604, -132(%rbp)
	jg	.L12
	cmpl	$1603, -132(%rbp)
	jg	.L12
	cmpl	$1601, -132(%rbp)
	jge	.L14
	cmpl	$1600, -132(%rbp)
	je	.L12
	cmpl	$1600, -132(%rbp)
	jg	.L12
	cmpl	$14, -132(%rbp)
	je	.L15
	cmpl	$14, -132(%rbp)
	jg	.L12
	cmpl	$13, -132(%rbp)
	je	.L16
	cmpl	$13, -132(%rbp)
	jg	.L12
	cmpl	$12, -132(%rbp)
	je	.L17
	cmpl	$12, -132(%rbp)
	jg	.L12
	cmpl	$11, -132(%rbp)
	je	.L18
	cmpl	$11, -132(%rbp)
	jg	.L12
	cmpl	$10, -132(%rbp)
	je	.L19
	cmpl	$10, -132(%rbp)
	jg	.L12
	cmpl	$9, -132(%rbp)
	je	.L20
	cmpl	$9, -132(%rbp)
	jg	.L12
	cmpl	$8, -132(%rbp)
	je	.L21
	cmpl	$8, -132(%rbp)
	jg	.L12
	cmpl	$7, -132(%rbp)
	je	.L22
	cmpl	$7, -132(%rbp)
	jg	.L12
	cmpl	$6, -132(%rbp)
	je	.L23
	cmpl	$6, -132(%rbp)
	jg	.L12
	cmpl	$5, -132(%rbp)
	je	.L24
	cmpl	$5, -132(%rbp)
	jg	.L12
	cmpl	$4, -132(%rbp)
	je	.L25
	cmpl	$4, -132(%rbp)
	jg	.L12
	cmpl	$3, -132(%rbp)
	je	.L26
	cmpl	$3, -132(%rbp)
	jg	.L12
	cmpl	$2, -132(%rbp)
	je	.L27
	cmpl	$2, -132(%rbp)
	jg	.L12
	cmpl	$0, -132(%rbp)
	jg	.L28
	cmpl	$-1, -132(%rbp)
	jge	.L29
	jmp	.L12
.L28:
	cmpl	$1, -132(%rbp)
	je	.L30
	jmp	.L12
.L68:
	nop
.L29:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	leaq	.LC40(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L31
.L30:
	movq	ciphers_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -44(%rbp)
	jmp	.L31
.L17:
	movl	$1, -52(%rbp)
	jmp	.L12
.L16:
	movl	$1, -56(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L12
.L15:
	movl	$1, -60(%rbp)
	jmp	.L12
.L27:
	movl	$1, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.L12
.L26:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L12
.L25:
	movl	$768, -100(%rbp)
	movl	$768, -104(%rbp)
	jmp	.L12
.L24:
	movl	$769, -100(%rbp)
	movl	$769, -104(%rbp)
	jmp	.L12
.L23:
	movl	$770, -100(%rbp)
	movl	$770, -104(%rbp)
	jmp	.L12
.L22:
	movl	$771, -100(%rbp)
	movl	$771, -104(%rbp)
	jmp	.L12
.L21:
	movl	$772, -100(%rbp)
	movl	$772, -104(%rbp)
	jmp	.L12
.L20:
	movl	$1, -68(%rbp)
	jmp	.L12
.L19:
	movl	$1, -72(%rbp)
	jmp	.L12
.L18:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L12
.L14:
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L67
	nop
.L12:
	call	opt_next@PLT
	movl	%eax, -132(%rbp)
	cmpl	$0, -132(%rbp)
	jne	.L33
	call	opt_rest@PLT
	movq	%rax, -720(%rbp)
	call	opt_num_rest@PLT
	cmpl	$1, %eax
	jne	.L34
	movq	-720(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.L35
.L34:
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L68
.L35:
	cmpq	$0, -88(%rbp)
	je	.L36
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_cipher_name@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC41(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -44(%rbp)
	jmp	.L31
.L36:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L69
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	je	.L70
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	je	.L71
	cmpl	$0, -68(%rbp)
	je	.L41
	leaq	dummy_psk(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_psk_client_callback@PLT
.L41:
	cmpl	$0, -72(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	set_up_dummy_srp@PLT
.L42:
	cmpq	$0, -96(%rbp)
	je	.L43
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	jne	.L43
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC42(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L43:
	cmpq	$0, -80(%rbp)
	je	.L44
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	jne	.L44
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC43(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L38
.L44:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L72
	cmpl	$0, -60(%rbp)
	je	.L46
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_supported_ciphers@PLT
	movq	%rax, -40(%rbp)
	jmp	.L47
.L46:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, -40(%rbp)
.L47:
	cmpl	$0, -52(%rbp)
	jne	.L48
	movl	$0, -48(%rbp)
	jmp	.L49
.L55:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L73
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L74
	cmpl	$0, -48(%rbp)
	je	.L54
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC44(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L54:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-184(%rbp), %rdx
	leaq	.LC45(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L51
.L73:
	nop
.L51:
	addl	$1, -48(%rbp)
.L49:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -48(%rbp)
	jl	.L55
	jmp	.L53
.L74:
	nop
.L53:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L56
.L48:
	movl	$0, -48(%rbp)
	jmp	.L57
.L64:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L75
	cmpl	$0, -56(%rbp)
	je	.L60
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_id@PLT
	movl	%eax, %eax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	shrq	$24, %rax
	movl	%eax, -156(%rbp)
	movq	-152(%rbp), %rax
	shrq	$16, %rax
	andl	$255, %eax
	movl	%eax, -160(%rbp)
	movq	-152(%rbp), %rax
	shrq	$8, %rax
	andl	$255, %eax
	movl	%eax, -164(%rbp)
	movq	-152(%rbp), %rax
	andl	$255, %eax
	movl	%eax, -168(%rbp)
	movq	-152(%rbp), %rax
	andl	$4278190080, %eax
	cmpq	$50331648, %rax
	jne	.L61
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-168(%rbp), %ecx
	movl	-164(%rbp), %edx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L60
.L61:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-168(%rbp), %r8d
	movl	-164(%rbp), %edi
	movl	-160(%rbp), %ecx
	movl	-156(%rbp), %edx
	leaq	.LC48(%rip), %rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L60:
	cmpl	$0, -64(%rbp)
	je	.L62
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_standard_name@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L63
	leaq	.LC49(%rip), %rax
	movq	%rax, -112(%rbp)
.L63:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC50(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L62:
	leaq	-704(%rbp), %rcx
	movq	-144(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CIPHER_description@PLT
	movq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L59
.L75:
	nop
.L59:
	addl	$1, -48(%rbp)
.L57:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -48(%rbp)
	jl	.L64
.L56:
	movl	$0, -44(%rbp)
	jmp	.L31
.L69:
	nop
	jmp	.L38
.L70:
	nop
	jmp	.L38
.L71:
	nop
	jmp	.L38
.L72:
	nop
.L38:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L31
.L67:
	nop
.L31:
	cmpl	$0, -60(%rbp)
	je	.L65
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
.L65:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	ciphers_main, .-ciphers_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
