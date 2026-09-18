	.file	"s_time.c"
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
	.section	.rodata
	.align 16
	.type	fmt_http_get_cmd, @object
	.size	fmt_http_get_cmd, 20
fmt_http_get_cmd:
	.string	"GET %s HTTP/1.0\r\n\r\n"
	.align 8
	.type	fmt_http_get_cmd_size, @object
	.size	fmt_http_get_cmd_size, 8
fmt_http_get_cmd_size:
	.quad	18
	.globl	s_time_options
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"Connection options:\n"
.LC4:
	.string	"connect"
	.align 8
.LC5:
	.string	"Where to connect as post:port (default is localhost:4433)"
.LC6:
	.string	"new"
.LC7:
	.string	"Just time new connections"
.LC8:
	.string	"reuse"
.LC9:
	.string	"Just time connection reuse"
.LC10:
	.string	"bugs"
.LC11:
	.string	"Turn on SSL bug compatibility"
.LC12:
	.string	"cipher"
	.align 8
.LC13:
	.string	"TLSv1.2 and below cipher list to be used"
.LC14:
	.string	"ciphersuites"
	.align 8
.LC15:
	.string	"Specify TLSv1.3 ciphersuites to be used"
.LC16:
	.string	"tls1"
.LC17:
	.string	"Just use TLSv1.0"
.LC18:
	.string	"tls1_1"
.LC19:
	.string	"Just use TLSv1.1"
.LC20:
	.string	"tls1_2"
.LC21:
	.string	"Just use TLSv1.2"
.LC22:
	.string	"tls1_3"
.LC23:
	.string	"Just use TLSv1.3"
.LC24:
	.string	"verify"
	.align 8
.LC25:
	.string	"Turn on peer certificate verification, set depth"
.LC26:
	.string	"time"
	.align 8
.LC27:
	.string	"Seconds to collect data, default 30"
.LC28:
	.string	"www"
	.align 8
.LC29:
	.string	"Fetch specified page from the site"
.LC30:
	.string	"Certificate options:\n"
.LC31:
	.string	"nameopt"
	.align 8
.LC32:
	.string	"Certificate subject/issuer name printing options"
.LC33:
	.string	"cert"
	.align 8
.LC34:
	.string	"Cert file to use, PEM format assumed"
.LC35:
	.string	"key"
	.align 8
.LC36:
	.string	"File with key, PEM; default is -cert file"
.LC37:
	.string	"cafile"
.LC38:
	.string	"PEM format file of CA's"
.LC39:
	.string	"CAfile"
.LC40:
	.string	"CApath"
.LC41:
	.string	"PEM format directory of CA's"
.LC42:
	.string	"CAstore"
.LC43:
	.string	"URI to store of CA's"
.LC44:
	.string	"no-CAfile"
	.align 8
.LC45:
	.string	"Do not load the default certificates file"
.LC46:
	.string	"no-CApath"
	.align 8
.LC47:
	.string	"Do not load certificates from the default certificates directory"
.LC48:
	.string	"no-CAstore"
	.align 8
.LC49:
	.string	"Do not load certificates from the default certificates store URI"
.LC50:
	.string	"Provider options:\n"
.LC51:
	.string	"provider-path"
	.align 8
.LC52:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC53:
	.string	"provider"
	.align 8
.LC54:
	.string	"Provider to load (can be specified multiple times)"
.LC55:
	.string	"propquery"
	.align 8
.LC56:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	s_time_options, @object
	.size	s_time_options, 768
s_time_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC3
	.quad	.LC4
	.long	2
	.long	115
	.quad	.LC5
	.quad	.LC6
	.long	14
	.long	45
	.quad	.LC7
	.quad	.LC8
	.long	15
	.long	45
	.quad	.LC9
	.quad	.LC10
	.long	16
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	3
	.long	115
	.quad	.LC13
	.quad	.LC14
	.long	4
	.long	115
	.quad	.LC15
	.quad	.LC16
	.long	21
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	22
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	23
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	24
	.long	45
	.quad	.LC23
	.quad	.LC24
	.long	17
	.long	112
	.quad	.LC25
	.quad	.LC26
	.long	18
	.long	112
	.quad	.LC27
	.quad	.LC28
	.long	20
	.long	115
	.quad	.LC29
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	6
	.long	115
	.quad	.LC32
	.quad	.LC33
	.long	5
	.long	60
	.quad	.LC34
	.quad	.LC35
	.long	7
	.long	60
	.quad	.LC36
	.quad	.LC37
	.long	9
	.long	60
	.quad	.LC38
	.quad	.LC39
	.long	9
	.long	60
	.quad	.LC38
	.quad	.LC40
	.long	8
	.long	47
	.quad	.LC41
	.quad	.LC42
	.long	10
	.long	58
	.quad	.LC43
	.quad	.LC44
	.long	12
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	11
	.long	45
	.quad	.LC47
	.quad	.LC48
	.long	13
	.long	45
	.quad	.LC49
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC50
	.quad	.LC51
	.long	1602
	.long	115
	.quad	.LC52
	.quad	.LC53
	.long	1601
	.long	115
	.quad	.LC54
	.quad	.LC55
	.long	1603
	.long	115
	.quad	.LC56
	.quad	0
	.zero	16
	.text
	.type	tm_Time_F, @function
tm_Time_F:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	app_tminterval@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	tm_Time_F, .-tm_Time_F
	.section	.rodata
.LC57:
	.string	"localhost:4433"
.LC59:
	.string	"%s: Use -help for summary.\n"
.LC60:
	.string	"%s: verify depth is %d\n"
.LC61:
	.string	"%s: -www option is too long\n"
.LC62:
	.string	"SSL_CIPHER"
	.align 8
.LC63:
	.string	"Collecting connection statistics for %d seconds\n"
	.align 8
.LC64:
	.string	"\n\n%d connections in %.2fs; %.2f connections/user sec, bytes read %ld\n"
	.align 8
.LC65:
	.string	"%d connections in %ld real seconds, %ld bytes read per connection\n"
	.align 8
.LC66:
	.string	"\n\nNow timing with session id reuse."
.LC67:
	.string	"Unable to get connection\n"
.LC68:
	.string	"starting"
	.align 8
.LC69:
	.string	"0 connections in %ld real seconds\n"
	.text
	.globl	s_time_main
	.type	s_time_main, @function
s_time_main:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8424, %rsp
	.cfi_offset 3, -24
	movl	%edi, -8420(%rbp)
	movq	%rsi, -8432(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	leaq	.LC57(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movl	$30, -120(%rbp)
	movl	$0, -124(%rbp)
	movl	$3, -128(%rbp)
	movl	$1, -132(%rbp)
	movl	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -184(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	call	TLS_client_method@PLT
	movq	%rax, -168(%rbp)
	movq	s_time_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8432(%rbp), %rcx
	movl	-8420(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -192(%rbp)
	jmp	.L8
.L41:
	cmpl	$1604, -196(%rbp)
	je	.L8
	cmpl	$1604, -196(%rbp)
	jg	.L8
	cmpl	$1603, -196(%rbp)
	jg	.L8
	cmpl	$1601, -196(%rbp)
	jge	.L10
	cmpl	$1600, -196(%rbp)
	je	.L8
	cmpl	$1600, -196(%rbp)
	jg	.L8
	cmpl	$24, -196(%rbp)
	je	.L11
	cmpl	$24, -196(%rbp)
	jg	.L8
	cmpl	$23, -196(%rbp)
	je	.L12
	cmpl	$23, -196(%rbp)
	jg	.L8
	cmpl	$22, -196(%rbp)
	je	.L13
	cmpl	$22, -196(%rbp)
	jg	.L8
	cmpl	$21, -196(%rbp)
	je	.L14
	cmpl	$21, -196(%rbp)
	jg	.L8
	cmpl	$20, -196(%rbp)
	je	.L15
	cmpl	$20, -196(%rbp)
	jg	.L8
	cmpl	$19, -196(%rbp)
	je	.L16
	cmpl	$19, -196(%rbp)
	jg	.L8
	cmpl	$18, -196(%rbp)
	je	.L17
	cmpl	$18, -196(%rbp)
	jg	.L8
	cmpl	$17, -196(%rbp)
	je	.L18
	cmpl	$17, -196(%rbp)
	jg	.L8
	cmpl	$16, -196(%rbp)
	je	.L19
	cmpl	$16, -196(%rbp)
	jg	.L8
	cmpl	$15, -196(%rbp)
	je	.L20
	cmpl	$15, -196(%rbp)
	jg	.L8
	cmpl	$14, -196(%rbp)
	je	.L21
	cmpl	$14, -196(%rbp)
	jg	.L8
	cmpl	$13, -196(%rbp)
	je	.L22
	cmpl	$13, -196(%rbp)
	jg	.L8
	cmpl	$12, -196(%rbp)
	je	.L23
	cmpl	$12, -196(%rbp)
	jg	.L8
	cmpl	$11, -196(%rbp)
	je	.L24
	cmpl	$11, -196(%rbp)
	jg	.L8
	cmpl	$10, -196(%rbp)
	je	.L25
	cmpl	$10, -196(%rbp)
	jg	.L8
	cmpl	$9, -196(%rbp)
	je	.L26
	cmpl	$9, -196(%rbp)
	jg	.L8
	cmpl	$8, -196(%rbp)
	je	.L27
	cmpl	$8, -196(%rbp)
	jg	.L8
	cmpl	$7, -196(%rbp)
	je	.L28
	cmpl	$7, -196(%rbp)
	jg	.L8
	cmpl	$6, -196(%rbp)
	je	.L29
	cmpl	$6, -196(%rbp)
	jg	.L8
	cmpl	$5, -196(%rbp)
	je	.L30
	cmpl	$5, -196(%rbp)
	jg	.L8
	cmpl	$4, -196(%rbp)
	je	.L31
	cmpl	$4, -196(%rbp)
	jg	.L8
	cmpl	$3, -196(%rbp)
	je	.L32
	cmpl	$3, -196(%rbp)
	jg	.L8
	cmpl	$2, -196(%rbp)
	je	.L33
	cmpl	$2, -196(%rbp)
	jg	.L8
	cmpl	$0, -196(%rbp)
	jg	.L34
	cmpl	$-1, -196(%rbp)
	jge	.L35
	jmp	.L8
.L34:
	cmpl	$1, -196(%rbp)
	je	.L36
	jmp	.L8
.L98:
	nop
.L35:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-192(%rbp), %rdx
	leaq	.LC59(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L37
.L36:
	movq	s_time_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -132(%rbp)
	jmp	.L37
.L33:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L8
.L20:
	movl	$2, -128(%rbp)
	jmp	.L8
.L21:
	movl	$1, -128(%rbp)
	jmp	.L8
.L18:
	call	opt_int_arg@PLT
	movq	verify_args@GOTPCREL(%rip), %rdx
	movl	%eax, (%rdx)
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-192(%rbp), %rdx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L30:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L8
.L29:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	set_nameopt@PLT
	testl	%eax, %eax
	je	.L96
	jmp	.L8
.L28:
	call	opt_arg@PLT
	movq	%rax, -104(%rbp)
	jmp	.L8
.L27:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	jmp	.L8
.L26:
	call	opt_arg@PLT
	movq	%rax, -48(%rbp)
	jmp	.L8
.L24:
	movl	$1, -108(%rbp)
	jmp	.L8
.L23:
	movl	$1, -112(%rbp)
	jmp	.L8
.L25:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L8
.L22:
	movl	$1, -116(%rbp)
	jmp	.L8
.L32:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L8
.L31:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L8
.L19:
	movl	$1, -136(%rbp)
	jmp	.L8
.L17:
	call	opt_int_arg@PLT
	movl	%eax, -120(%rbp)
	jmp	.L8
.L15:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	$18, %edx
	addq	%rdx, %rax
	movq	%rax, -216(%rbp)
	cmpq	$8192, -216(%rbp)
	jbe	.L8
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-192(%rbp), %rdx
	leaq	.LC61(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L37
.L16:
	movl	$768, -148(%rbp)
	movl	$768, -152(%rbp)
	jmp	.L8
.L14:
	movl	$769, -148(%rbp)
	movl	$769, -152(%rbp)
	jmp	.L8
.L13:
	movl	$770, -148(%rbp)
	movl	$770, -152(%rbp)
	jmp	.L8
.L12:
	movl	$771, -148(%rbp)
	movl	$771, -152(%rbp)
	jmp	.L8
.L11:
	movl	$772, -148(%rbp)
	movl	$772, -152(%rbp)
	jmp	.L8
.L10:
	movl	-196(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L97
	nop
.L8:
	call	opt_next@PLT
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	jne	.L41
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L98
	cmpq	$0, -64(%rbp)
	jne	.L43
	leaq	.LC62(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -64(%rbp)
.L43:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L99
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_quiet_shutdown@PLT
	movl	-148(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	je	.L100
	movl	-152(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	je	.L101
	cmpl	$0, -136(%rbp)
	je	.L47
	movq	-32(%rbp), %rax
	movl	$2147485776, %edx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
.L47:
	cmpq	$0, -64(%rbp)
	je	.L48
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	je	.L102
.L48:
	cmpq	$0, -72(%rbp)
	je	.L49
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	je	.L103
.L49:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_cert_stuff@PLT
	testl	%eax, %eax
	je	.L104
	movq	-56(%rbp), %r9
	movl	-108(%rbp), %r8d
	movq	-40(%rbp), %rcx
	movl	-112(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	movl	-116(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	ctx_set_verify_locations@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L51
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L37
.L51:
	movl	-128(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L105
	movl	-120(%rbp), %eax
	leaq	.LC63(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$0, -144(%rbp)
	movl	$0, %edi
	call	time@PLT
	movl	-120(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movl	$0, %edi
	call	tm_Time_F
.L66:
	movl	$0, %edi
	call	time@PLT
	cmpq	%rax, -184(%rbp)
	jl	.L106
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	doConnection
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L107
	cmpq	$0, -80(%rbp)
	je	.L57
	movq	-80(%rbp), %rdx
	leaq	fmt_http_get_cmd(%rip), %rsi
	leaq	-8416(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$8192, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	jle	.L108
	movl	-200(%rbp), %edx
	leaq	-8416(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	testl	%eax, %eax
	jle	.L108
	jmp	.L60
.L61:
	movl	-204(%rbp), %eax
	cltq
	addq	%rax, -144(%rbp)
.L60:
	leaq	-8416(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -204(%rbp)
	cmpl	$0, -204(%rbp)
	jg	.L61
.L57:
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_set_shutdown@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_fd@PLT
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	addl	$1, -124(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	testl	%eax, %eax
	je	.L62
	movl	$114, -156(%rbp)
	jmp	.L63
.L62:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	movl	%eax, -156(%rbp)
	cmpl	$769, -156(%rbp)
	jne	.L64
	movl	$116, -156(%rbp)
	jmp	.L63
.L64:
	cmpl	$768, -156(%rbp)
	jne	.L65
	movl	$51, -156(%rbp)
	jmp	.L63
.L65:
	movl	$42, -156(%rbp)
.L63:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L66
.L106:
	nop
	movl	$1, %edi
	call	tm_Time_F
	movsd	-176(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-124(%rbp), %xmm0
	divsd	-176(%rbp), %xmm0
	movq	-144(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movl	-124(%rbp), %eax
	leaq	.LC64(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%eax, %esi
	movl	$2, %eax
	call	printf@PLT
	cmpl	$0, -124(%rbp)
	jle	.L67
	movl	-124(%rbp), %eax
	movslq	%eax, %rbx
	movq	-144(%rbp), %rax
	cqto
	idivq	%rbx
	movq	%rax, %rbx
	jmp	.L68
.L67:
	movl	$0, %ebx
.L68:
	movl	$0, %edi
	call	time@PLT
	subq	-184(%rbp), %rax
	movq	%rax, %rdx
	movl	-120(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movl	-124(%rbp), %eax
	leaq	.LC65(%rip), %rdi
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L53
.L105:
	nop
.L53:
	movl	-128(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L69
	movl	$0, -132(%rbp)
	jmp	.L37
.L69:
	leaq	.LC66(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	doConnection
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L70
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC67(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L37
.L70:
	cmpq	$0, -80(%rbp)
	je	.L71
	movq	-80(%rbp), %rdx
	leaq	fmt_http_get_cmd(%rip), %rsi
	leaq	-8416(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$8192, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	jle	.L109
	movl	-200(%rbp), %edx
	leaq	-8416(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	testl	%eax, %eax
	jle	.L109
	jmp	.L74
.L75:
	nop
.L74:
	leaq	-8416(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	testl	%eax, %eax
	jg	.L75
.L71:
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_set_shutdown@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_fd@PLT
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	js	.L76
	movl	-208(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L76:
	movl	$0, -124(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	$0, %edi
	call	time@PLT
	movl	-120(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	leaq	.LC68(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	$0, -144(%rbp)
	movl	$0, %edi
	call	tm_Time_F
.L90:
	movl	$0, %edi
	call	time@PLT
	cmpq	%rax, -184(%rbp)
	jl	.L110
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	doConnection
	testq	%rax, %rax
	je	.L111
	cmpq	$0, -80(%rbp)
	je	.L80
	movq	-80(%rbp), %rdx
	leaq	fmt_http_get_cmd(%rip), %rsi
	leaq	-8416(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$8192, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	jle	.L112
	movl	-200(%rbp), %edx
	leaq	-8416(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	testl	%eax, %eax
	jle	.L112
	jmp	.L83
.L84:
	movl	-204(%rbp), %eax
	cltq
	addq	%rax, -144(%rbp)
.L83:
	leaq	-8416(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -204(%rbp)
	cmpl	$0, -204(%rbp)
	jg	.L84
.L80:
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_set_shutdown@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_fd@PLT
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	js	.L85
	movl	-208(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L85:
	addl	$1, -124(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_session_reused@PLT
	testl	%eax, %eax
	je	.L86
	movl	$114, -156(%rbp)
	jmp	.L87
.L86:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	movl	%eax, -156(%rbp)
	cmpl	$769, -156(%rbp)
	jne	.L88
	movl	$116, -156(%rbp)
	jmp	.L87
.L88:
	cmpl	$768, -156(%rbp)
	jne	.L89
	movl	$51, -156(%rbp)
	jmp	.L87
.L89:
	movl	$42, -156(%rbp)
.L87:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	jmp	.L90
.L110:
	nop
	movl	$1, %edi
	call	tm_Time_F
	movsd	-176(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-124(%rbp), %xmm0
	divsd	-176(%rbp), %xmm0
	movq	-144(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movl	-124(%rbp), %eax
	leaq	.LC64(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%eax, %esi
	movl	$2, %eax
	call	printf@PLT
	cmpl	$0, -124(%rbp)
	jle	.L91
	movl	-124(%rbp), %eax
	movslq	%eax, %rbx
	movq	-144(%rbp), %rax
	cqto
	idivq	%rbx
	movq	%rax, %rbx
	movl	$0, %edi
	call	time@PLT
	subq	-184(%rbp), %rax
	movq	%rax, %rdx
	movl	-120(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movl	-124(%rbp), %eax
	leaq	.LC65(%rip), %rdi
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L92
.L91:
	movl	$0, %edi
	call	time@PLT
	subq	-184(%rbp), %rax
	movq	%rax, %rdx
	movl	-120(%rbp), %eax
	cltq
	addq	%rax, %rdx
	leaq	.LC69(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L92:
	movl	$0, -132(%rbp)
	jmp	.L37
.L96:
	nop
	jmp	.L37
.L97:
	nop
	jmp	.L37
.L99:
	nop
	jmp	.L37
.L100:
	nop
	jmp	.L37
.L101:
	nop
	jmp	.L37
.L102:
	nop
	jmp	.L37
.L103:
	nop
	jmp	.L37
.L104:
	nop
	jmp	.L37
.L107:
	nop
	jmp	.L37
.L108:
	nop
	jmp	.L37
.L109:
	nop
	jmp	.L37
.L111:
	nop
	jmp	.L37
.L112:
	nop
.L37:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-132(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	s_time_main, .-s_time_main
	.section	.rodata
.LC70:
	.string	"ERROR\n"
.LC71:
	.string	"verify error:%s\n"
	.text
	.type	doConnection, @function
doConnection:
.LFB698:
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
	call	BIO_s_connect@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L114
	movl	$0, %eax
	jmp	.L115
.L114:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$100, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L116
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movl	$155, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L117
.L116:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L115
.L117:
	cmpq	$0, -40(%rbp)
	jne	.L118
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L119
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L115
.L118:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
.L119:
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L120
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC70(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L121
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC71(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L122
.L121:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L122:
	cmpq	$0, -40(%rbp)
	jne	.L123
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
.L123:
	movl	$0, %eax
	jmp	.L115
.L120:
	movl	$1, -32(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_fd@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	js	.L124
	leaq	-32(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	$13, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
.L124:
	movq	-8(%rbp), %rax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	doConnection, .-doConnection
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
