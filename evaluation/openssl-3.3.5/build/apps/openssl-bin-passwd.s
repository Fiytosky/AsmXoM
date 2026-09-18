	.file	"passwd.c"
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
	.align 32
	.type	cov_2char, @object
	.size	cov_2char, 64
cov_2char:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuv"
	.ascii	"wxyz"
	.type	ascii_dollar, @object
	.size	ascii_dollar, 2
ascii_dollar:
	.string	"$"
	.globl	passwd_options
	.align 8
.LC0:
	.string	"Usage: %s [options] [password]\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"Input options:\n"
.LC5:
	.string	"in"
.LC6:
	.string	"Read passwords from file"
.LC7:
	.string	"noverify"
	.align 8
.LC8:
	.string	"Never verify when reading password from terminal"
.LC9:
	.string	"stdin"
.LC10:
	.string	"Read passwords from stdin"
.LC11:
	.string	"Output options:\n"
.LC12:
	.string	"quiet"
.LC13:
	.string	"No warnings"
.LC14:
	.string	"table"
.LC15:
	.string	"Format output as table"
.LC16:
	.string	"reverse"
.LC17:
	.string	"Switch table columns"
.LC18:
	.string	"Cryptographic options:\n"
.LC19:
	.string	"salt"
.LC20:
	.string	"Use provided salt"
.LC21:
	.string	"6"
	.align 8
.LC22:
	.string	"SHA512-based password algorithm"
.LC23:
	.string	"5"
	.align 8
.LC24:
	.string	"SHA256-based password algorithm"
.LC25:
	.string	"apr1"
	.align 8
.LC26:
	.string	"MD5-based password algorithm, Apache variant"
.LC27:
	.string	"1"
.LC28:
	.string	"MD5-based password algorithm"
.LC29:
	.string	"aixmd5"
	.align 8
.LC30:
	.string	"AIX MD5-based password algorithm"
.LC31:
	.string	"Random state options:\n"
.LC32:
	.string	"rand"
	.align 8
.LC33:
	.string	"Load the given file(s) into the random number generator"
.LC34:
	.string	"writerand"
	.align 8
.LC35:
	.string	"Write random data to the specified file"
.LC36:
	.string	"Provider options:\n"
.LC37:
	.string	"provider-path"
	.align 8
.LC38:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC39:
	.string	"provider"
	.align 8
.LC40:
	.string	"Provider to load (can be specified multiple times)"
.LC41:
	.string	"propquery"
	.align 8
.LC42:
	.string	"Property query used when fetching algorithms"
.LC43:
	.string	"Parameters:\n"
.LC44:
	.string	"password"
	.align 8
.LC45:
	.string	"Password text to digest (optional)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	passwd_options, @object
	.size	passwd_options, 672
passwd_options:
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
	.long	2
	.long	60
	.quad	.LC6
	.quad	.LC7
	.long	3
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	13
	.long	45
	.quad	.LC10
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	4
	.long	45
	.quad	.LC13
	.quad	.LC14
	.long	5
	.long	45
	.quad	.LC15
	.quad	.LC16
	.long	6
	.long	45
	.quad	.LC17
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC18
	.quad	.LC19
	.long	12
	.long	115
	.quad	.LC20
	.quad	.LC21
	.long	10
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	9
	.long	45
	.quad	.LC24
	.quad	.LC25
	.long	7
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	8
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	11
	.long	45
	.quad	.LC30
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC31
	.quad	.LC32
	.long	1501
	.long	115
	.quad	.LC33
	.quad	.LC34
	.long	1502
	.long	62
	.quad	.LC35
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC36
	.quad	.LC37
	.long	1602
	.long	115
	.quad	.LC38
	.quad	.LC39
	.long	1601
	.long	115
	.quad	.LC40
	.quad	.LC41
	.long	1603
	.long	115
	.quad	.LC42
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC43
	.quad	.LC44
	.long	0
	.long	0
	.quad	.LC45
	.quad	0
	.zero	16
	.section	.rodata
.LC46:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC47:
	.string	"%s: Can't combine -in and -stdin\n"
.LC48:
	.string	"password buffer"
.LC49:
	.string	"Password: "
.LC50:
	.string	"../apps/passwd.c"
	.text
	.globl	passwd_main
	.type	passwd_main, @function
passwd_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8368, %rsp
	movl	%edi, -8356(%rbp)
	movq	%rsi, -8368(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$1, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -88(%rbp)
	movq	$256, -104(%rbp)
	movq	passwd_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8368(%rbp), %rcx
	movl	-8356(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -112(%rbp)
	jmp	.L6
.L36:
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
	cmpl	$13, -116(%rbp)
	je	.L11
	cmpl	$13, -116(%rbp)
	jg	.L6
	cmpl	$12, -116(%rbp)
	je	.L12
	cmpl	$12, -116(%rbp)
	jg	.L6
	cmpl	$11, -116(%rbp)
	je	.L13
	cmpl	$11, -116(%rbp)
	jg	.L6
	cmpl	$10, -116(%rbp)
	je	.L14
	cmpl	$10, -116(%rbp)
	jg	.L6
	cmpl	$9, -116(%rbp)
	je	.L15
	cmpl	$9, -116(%rbp)
	jg	.L6
	cmpl	$8, -116(%rbp)
	je	.L16
	cmpl	$8, -116(%rbp)
	jg	.L6
	cmpl	$7, -116(%rbp)
	je	.L17
	cmpl	$7, -116(%rbp)
	jg	.L6
	cmpl	$6, -116(%rbp)
	je	.L18
	cmpl	$6, -116(%rbp)
	jg	.L6
	cmpl	$5, -116(%rbp)
	je	.L19
	cmpl	$5, -116(%rbp)
	jg	.L6
	cmpl	$4, -116(%rbp)
	je	.L20
	cmpl	$4, -116(%rbp)
	jg	.L6
	cmpl	$3, -116(%rbp)
	je	.L21
	cmpl	$3, -116(%rbp)
	jg	.L6
	cmpl	$2, -116(%rbp)
	je	.L22
	cmpl	$2, -116(%rbp)
	jg	.L6
	cmpl	$0, -116(%rbp)
	jg	.L23
	cmpl	$-1, -116(%rbp)
	jge	.L24
	jmp	.L6
.L23:
	cmpl	$1, -116(%rbp)
	je	.L25
	jmp	.L6
.L58:
	nop
	jmp	.L24
.L59:
	nop
	jmp	.L24
.L60:
	nop
	jmp	.L24
.L61:
	nop
	jmp	.L24
.L62:
	nop
	jmp	.L24
.L63:
	nop
	jmp	.L24
.L64:
	nop
	jmp	.L24
.L67:
	nop
.L24:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC46(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L25:
	movq	passwd_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -72(%rbp)
	jmp	.L26
.L22:
	cmpl	$0, -48(%rbp)
	jne	.L58
	call	opt_arg@PLT
	movq	%rax, -16(%rbp)
	movl	$1, -48(%rbp)
	jmp	.L6
.L21:
	movl	$1, -52(%rbp)
	jmp	.L6
.L20:
	movl	$1, -60(%rbp)
	jmp	.L6
.L19:
	movl	$1, -64(%rbp)
	jmp	.L6
.L18:
	movl	$1, -68(%rbp)
	jmp	.L6
.L16:
	cmpl	$0, -76(%rbp)
	jne	.L59
	movl	$1, -76(%rbp)
	jmp	.L6
.L15:
	cmpl	$0, -76(%rbp)
	jne	.L60
	movl	$3, -76(%rbp)
	jmp	.L6
.L14:
	cmpl	$0, -76(%rbp)
	jne	.L61
	movl	$4, -76(%rbp)
	jmp	.L6
.L17:
	cmpl	$0, -76(%rbp)
	jne	.L62
	movl	$2, -76(%rbp)
	jmp	.L6
.L13:
	cmpl	$0, -76(%rbp)
	jne	.L63
	movl	$5, -76(%rbp)
	jmp	.L6
.L12:
	movl	$1, -56(%rbp)
	call	opt_arg@PLT
	movq	%rax, -144(%rbp)
	jmp	.L6
.L11:
	cmpl	$0, -48(%rbp)
	jne	.L64
	movl	$1, -44(%rbp)
	movl	$1, -48(%rbp)
	jmp	.L6
.L10:
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L65
	jmp	.L6
.L8:
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L66
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jne	.L36
	call	opt_num_rest@PLT
	movl	%eax, -8356(%rbp)
	call	opt_rest@PLT
	movq	%rax, -8368(%rbp)
	movq	-8368(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L37
	cmpl	$0, -48(%rbp)
	jne	.L67
	movl	$1, -48(%rbp)
	movq	-8368(%rbp), %rax
	movq	%rax, -32(%rbp)
.L37:
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L68
	cmpl	$0, -76(%rbp)
	jne	.L40
	movl	$1, -76(%rbp)
.L40:
	cmpq	$0, -16(%rbp)
	je	.L41
	cmpl	$0, -44(%rbp)
	je	.L41
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	leaq	.LC47(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L26
.L41:
	cmpq	$0, -16(%rbp)
	jne	.L42
	cmpl	$0, -44(%rbp)
	je	.L43
.L42:
	movq	-16(%rbp), %rax
	movl	$32769, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L69
.L43:
	cmpq	$0, -32(%rbp)
	jne	.L44
	movq	-104(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	leaq	.LC48(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.L44:
	cmpq	$0, -8(%rbp)
	jne	.L45
	cmpq	$0, -32(%rbp)
	jne	.L45
	leaq	passwds_static.3(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L46
	cmpl	$0, -56(%rbp)
	jne	.L47
	cmpl	$0, -52(%rbp)
	jne	.L47
	movl	$1, %ecx
	jmp	.L48
.L47:
	movl	$0, %ecx
.L48:
	movq	-88(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC49(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_read_pw_string@PLT
	testl	%eax, %eax
	jne	.L70
.L46:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
.L45:
	cmpq	$0, -8(%rbp)
	jne	.L49
.L51:
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %r8
	movl	-60(%rbp), %r9d
	movq	-24(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	movl	-56(%rbp), %eax
	movl	-76(%rbp), %edi
	pushq	%rdi
	pushq	-104(%rbp)
	movl	-68(%rbp), %edi
	pushq	%rdi
	movl	-64(%rbp), %edi
	pushq	%rdi
	movl	%eax, %edi
	call	do_passwd
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L71
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	jmp	.L52
.L49:
	movq	-104(%rbp), %rax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jle	.L53
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L54
	movq	-128(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L55
.L54:
	leaq	-8352(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jle	.L55
	leaq	-8352(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L54
.L55:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %r8
	movl	-60(%rbp), %r9d
	movq	-24(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	movl	-56(%rbp), %eax
	movl	-76(%rbp), %edi
	pushq	%rdi
	pushq	-104(%rbp)
	movl	-68(%rbp), %edi
	pushq	%rdi
	movl	-64(%rbp), %edi
	pushq	%rdi
	movl	%eax, %edi
	call	do_passwd
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L72
.L53:
	cmpl	$0, -92(%rbp)
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -132(%rbp)
	cmpl	$0, -132(%rbp)
	je	.L49
.L52:
	movl	$0, -72(%rbp)
	jmp	.L26
.L65:
	nop
	jmp	.L26
.L66:
	nop
	jmp	.L26
.L68:
	nop
	jmp	.L26
.L69:
	nop
	jmp	.L26
.L70:
	nop
	jmp	.L26
.L71:
	nop
	jmp	.L26
.L72:
	nop
.L26:
	movq	-152(%rbp), %rax
	leaq	.LC50(%rip), %rcx
	movl	$299, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC50(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$300, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-72(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	passwd_main, .-passwd_main
	.section	.rodata
.LC51:
	.zero	2
	.text
	.type	md5crypt, @function
md5crypt:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -64(%rbp)
	movb	$0, out_buf.2(%rip)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -72(%rbp)
	movq	-144(%rbp), %rcx
	leaq	-101(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-152(%rbp), %rcx
	leaq	-110(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	leaq	-110(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L74
	leaq	ascii_dollar(%rip), %rcx
	leaq	out_buf.2(%rip), %rax
	movl	$41, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	cmpq	$4, -72(%rbp)
	ja	.L119
	leaq	-101(%rbp), %rax
	leaq	out_buf.2(%rip), %rcx
	movl	$41, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcat@PLT
	leaq	ascii_dollar(%rip), %rcx
	leaq	out_buf.2(%rip), %rax
	movl	$41, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L74:
	leaq	-110(%rbp), %rax
	leaq	out_buf.2(%rip), %rcx
	movl	$41, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcat@PLT
	leaq	out_buf.2(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$14, %rax
	ja	.L120
	leaq	out_buf.2(%rip), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L78
	movq	-72(%rbp), %rax
	addq	$2, %rax
	addq	%rax, -8(%rbp)
.L78:
	cmpq	$8, -80(%rbp)
	ja	.L121
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L122
	call	EVP_md5@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L122
	movq	-64(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L122
	cmpq	$0, -72(%rbp)
	je	.L82
	leaq	ascii_dollar(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L123
	movq	-72(%rbp), %rdx
	leaq	-101(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L123
	leaq	ascii_dollar(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L123
.L82:
	movq	-80(%rbp), %rdx
	leaq	-110(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L124
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L125
	call	EVP_md5@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L125
	movq	-64(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L125
	movq	-80(%rbp), %rdx
	leaq	-110(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L125
	movq	-64(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L125
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L125
	movq	-64(%rbp), %rax
	movl	%eax, -16(%rbp)
	jmp	.L87
.L89:
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L126
	subl	$16, -16(%rbp)
.L87:
	cmpl	$16, -16(%rbp)
	ja	.L89
	movl	-16(%rbp), %edx
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L127
	movq	-64(%rbp), %rax
	movl	%eax, -12(%rbp)
	jmp	.L91
.L95:
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L92
	movq	-136(%rbp), %rax
	jmp	.L93
.L92:
	leaq	.LC51(%rip), %rax
.L93:
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L128
	sarl	-12(%rbp)
.L91:
	cmpl	$0, -12(%rbp)
	jne	.L95
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L129
	movl	$0, -16(%rbp)
	jmp	.L97
.L112:
	call	EVP_md5@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L130
	movl	-16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L99
	movq	-64(%rbp), %rdx
	jmp	.L100
.L99:
	movl	$16, %edx
.L100:
	movl	-16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L101
	leaq	-96(%rbp), %rax
	jmp	.L102
.L101:
	movq	-136(%rbp), %rax
.L102:
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L131
	movl	-16(%rbp), %ecx
	movl	%ecx, %edx
	movl	$2863311531, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	%edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	je	.L104
	movq	-80(%rbp), %rdx
	leaq	-110(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L132
.L104:
	movl	-16(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$613566757, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrl	%edx
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %edx
	sall	$3, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	je	.L105
	movq	-64(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L133
.L105:
	movl	-16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L106
	movq	-64(%rbp), %rdx
	jmp	.L107
.L106:
	movl	$16, %edx
.L107:
	movl	-16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L108
	leaq	-96(%rbp), %rax
	jmp	.L109
.L108:
	movq	-136(%rbp), %rax
.L109:
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L135
	addl	$1, -16(%rbp)
.L97:
	cmpl	$999, -16(%rbp)
	jbe	.L112
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L113
.L114:
	movl	-40(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %edx
	movl	-36(%rbp), %eax
	cltq
	movb	%dl, -128(%rbp,%rax)
	addl	$1, -36(%rbp)
	movl	-40(%rbp), %eax
	leal	6(%rax), %edx
	movslq	%edx, %rax
	imulq	$2021161081, %rax, %rax
	shrq	$32, %rax
	sarl	$3, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, %eax
	sall	$4, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -40(%rbp)
.L113:
	cmpl	$13, -36(%rbp)
	jle	.L114
	movzbl	-91(%rbp), %eax
	movb	%al, -114(%rbp)
	movzbl	-85(%rbp), %eax
	movb	%al, -113(%rbp)
	movq	-8(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	$36, %edx
	movb	%dl, (%rax)
	movl	$0, -16(%rbp)
	jmp	.L115
.L116:
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	movzbl	-128(%rbp,%rax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	cltq
	leaq	cov_2char(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movzbl	-128(%rbp,%rax), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	andl	$60, %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	movzbl	-128(%rbp,%rax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	leaq	cov_2char(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-16(%rbp), %eax
	movzbl	-128(%rbp,%rax), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$48, %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movzbl	-128(%rbp,%rax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	leaq	cov_2char(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-16(%rbp), %eax
	movzbl	-128(%rbp,%rax), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	cltq
	leaq	cov_2char(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$3, -16(%rbp)
.L115:
	cmpl	$14, -16(%rbp)
	jbe	.L116
	movl	-16(%rbp), %eax
	movzbl	-128(%rbp,%rax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	cltq
	leaq	cov_2char(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-16(%rbp), %eax
	movzbl	-128(%rbp,%rax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	cltq
	leaq	cov_2char(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	leaq	out_buf.2(%rip), %rax
	jmp	.L118
.L119:
	nop
	jmp	.L76
.L120:
	nop
	jmp	.L76
.L121:
	nop
	jmp	.L76
.L122:
	nop
	jmp	.L76
.L123:
	nop
	jmp	.L76
.L124:
	nop
	jmp	.L76
.L125:
	nop
	jmp	.L76
.L126:
	nop
	jmp	.L76
.L127:
	nop
	jmp	.L76
.L128:
	nop
	jmp	.L76
.L129:
	nop
	jmp	.L76
.L130:
	nop
	jmp	.L76
.L131:
	nop
	jmp	.L76
.L132:
	nop
	jmp	.L76
.L133:
	nop
	jmp	.L76
.L134:
	nop
	jmp	.L76
.L135:
	nop
.L76:
	leaq	.LC50(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$485, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	md5crypt, .-md5crypt
	.section	.rodata
.LC52:
	.string	"rounds=%u"
	.text
	.type	shacrypt, @function
shacrypt:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$672, %rsp
	movq	%rdi, -648(%rbp)
	movq	%rsi, -656(%rbp)
	movq	%rdx, -664(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$5000, -44(%rbp)
	movb	$0, -45(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-648(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -352(%rbp)
	movq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -360(%rbp)
	cmpq	$1, -360(%rbp)
	je	.L137
	movl	$0, %eax
	jmp	.L269
.L137:
	movq	-656(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$53, %eax
	je	.L139
	cmpl	$54, %eax
	je	.L140
	jmp	.L270
.L139:
	call	EVP_sha256@PLT
	movq	%rax, -40(%rbp)
	movq	$32, -8(%rbp)
	jmp	.L142
.L140:
	call	EVP_sha512@PLT
	movq	%rax, -40(%rbp)
	movq	$64, -8(%rbp)
	jmp	.L142
.L270:
	movl	$0, %eax
	jmp	.L269
.L142:
	leaq	rounds_prefix.1(%rip), %rcx
	movq	-664(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L143
	movq	-664(%rbp), %rax
	addq	$7, %rax
	movq	%rax, -368(%rbp)
	leaq	-552(%rbp), %rcx
	movq	-368(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -376(%rbp)
	movq	-552(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$36, %al
	jne	.L144
	movq	-552(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)
	cmpq	$999999999, -376(%rbp)
	jbe	.L145
	movl	$999999999, -44(%rbp)
	jmp	.L146
.L145:
	cmpq	$999, -376(%rbp)
	ja	.L147
	movl	$1000, -44(%rbp)
	jmp	.L146
.L147:
	movq	-376(%rbp), %rax
	movl	%eax, -44(%rbp)
.L146:
	movb	$1, -45(%rbp)
	jmp	.L143
.L144:
	movl	$0, %eax
	jmp	.L269
.L143:
	movq	-656(%rbp), %rcx
	leaq	-514(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-664(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$17, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -384(%rbp)
	movb	$0, out_buf.0(%rip)
	leaq	ascii_dollar(%rip), %rcx
	leaq	out_buf.0(%rip), %rax
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	leaq	-514(%rbp), %rax
	leaq	out_buf.0(%rip), %rcx
	movl	$124, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcat@PLT
	leaq	ascii_dollar(%rip), %rcx
	leaq	out_buf.0(%rip), %rax
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	cmpb	$0, -45(%rbp)
	je	.L148
	movl	-44(%rbp), %edx
	leaq	.LC52(%rip), %rsi
	leaq	-640(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-640(%rbp), %rax
	leaq	out_buf.0(%rip), %rcx
	movl	$124, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcat@PLT
	leaq	ascii_dollar(%rip), %rcx
	leaq	out_buf.0(%rip), %rax
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L148:
	leaq	-544(%rbp), %rax
	leaq	out_buf.0(%rip), %rcx
	movl	$124, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcat@PLT
	leaq	out_buf.0(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movsbl	-45(%rbp), %edx
	movl	%edx, %eax
	sall	$4, %eax
	addl	%edx, %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	-384(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rcx, %rax
	jb	.L271
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L272
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L272
	movq	-352(%rbp), %rdx
	movq	-648(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L272
	movq	-384(%rbp), %rdx
	leaq	-544(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L272
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L273
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L273
	movq	-352(%rbp), %rdx
	movq	-648(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L273
	movq	-384(%rbp), %rdx
	leaq	-544(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L273
	movq	-352(%rbp), %rdx
	movq	-648(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L273
	leaq	-448(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L273
	movq	-352(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L155
.L157:
	movq	-8(%rbp), %rdx
	leaq	-448(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L274
	movq	-8(%rbp), %rax
	subq	%rax, -16(%rbp)
.L155:
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L157
	movq	-16(%rbp), %rdx
	leaq	-448(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L275
	movq	-352(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L159
.L165:
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L160
	movq	-8(%rbp), %rdx
	jmp	.L161
.L160:
	movq	-352(%rbp), %rdx
.L161:
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L162
	leaq	-448(%rbp), %rax
	jmp	.L163
.L162:
	movq	-648(%rbp), %rax
.L163:
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L276
	shrq	-16(%rbp)
.L159:
	cmpq	$0, -16(%rbp)
	jne	.L165
	leaq	-448(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L277
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L278
	movq	-352(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L168
.L170:
	movq	-352(%rbp), %rdx
	movq	-648(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L279
	subq	$1, -16(%rbp)
.L168:
	cmpq	$0, -16(%rbp)
	jne	.L170
	leaq	-512(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L280
	leaq	.LC50(%rip), %rcx
	movq	-352(%rbp), %rax
	movl	$653, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L281
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L173
.L174:
	movq	-8(%rbp), %rdx
	leaq	-512(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	subq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -72(%rbp)
.L173:
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L174
	movq	-16(%rbp), %rdx
	leaq	-512(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L282
	movzbl	-448(%rbp), %eax
	movzbl	%al, %eax
	addl	$16, %eax
	cltq
	movq	%rax, -16(%rbp)
	jmp	.L176
.L178:
	movq	-384(%rbp), %rdx
	leaq	-544(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L283
	subq	$1, -16(%rbp)
.L176:
	cmpq	$0, -16(%rbp)
	jne	.L178
	leaq	-512(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L284
	leaq	.LC50(%rip), %rcx
	movq	-384(%rbp), %rax
	movl	$670, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L285
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L181
.L182:
	movq	-8(%rbp), %rdx
	leaq	-512(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	subq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -72(%rbp)
.L181:
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L182
	movq	-16(%rbp), %rdx
	leaq	-512(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	$0, -16(%rbp)
	jmp	.L183
.L198:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L286
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L185
	movq	-352(%rbp), %rdx
	jmp	.L186
.L185:
	movq	-8(%rbp), %rdx
.L186:
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L187
	leaq	-448(%rbp), %rax
	jmp	.L188
.L187:
	movq	-56(%rbp), %rax
.L188:
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L287
	movq	-16(%rbp), %rcx
	movabsq	$-6148914691236517205, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	%rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	testq	%rdx, %rdx
	je	.L190
	movq	-384(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L288
.L190:
	movq	-16(%rbp), %rcx
	movabsq	$2635249153387078803, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, %rdx
	salq	$3, %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	testq	%rax, %rax
	je	.L191
	movq	-352(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L289
.L191:
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L192
	movq	-8(%rbp), %rdx
	jmp	.L193
.L192:
	movq	-352(%rbp), %rdx
.L193:
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L194
	leaq	-448(%rbp), %rax
	jmp	.L195
.L194:
	movq	-56(%rbp), %rax
.L195:
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L290
	leaq	-448(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L291
	addq	$1, -16(%rbp)
.L183:
	movl	-44(%rbp), %eax
	cmpq	%rax, -16(%rbp)
	jb	.L198
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	leaq	.LC50(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$702, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC50(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$703, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	leaq	out_buf.0(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	out_buf.0(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	$36, %edx
	movb	%dl, (%rax)
	movq	-656(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$53, %eax
	je	.L199
	cmpl	$54, %eax
	je	.L200
	jmp	.L150
.L199:
	movzbl	-448(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-438(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-428(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -76(%rbp)
	movl	$4, -80(%rbp)
	jmp	.L202
.L203:
	movl	-76(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -76(%rbp)
.L202:
	movl	-80(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -80(%rbp)
	testl	%eax, %eax
	jg	.L203
	movzbl	-427(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-447(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-437(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -84(%rbp)
	movl	$4, -88(%rbp)
	jmp	.L204
.L205:
	movl	-84(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -84(%rbp)
.L204:
	movl	-88(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -88(%rbp)
	testl	%eax, %eax
	jg	.L205
	movzbl	-436(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-426(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-446(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	$4, -96(%rbp)
	jmp	.L206
.L207:
	movl	-92(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -92(%rbp)
.L206:
	movl	-96(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -96(%rbp)
	testl	%eax, %eax
	jg	.L207
	movzbl	-445(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-435(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-425(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	$4, -104(%rbp)
	jmp	.L208
.L209:
	movl	-100(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -100(%rbp)
.L208:
	movl	-104(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -104(%rbp)
	testl	%eax, %eax
	jg	.L209
	movzbl	-424(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-444(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-434(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	$4, -112(%rbp)
	jmp	.L210
.L211:
	movl	-108(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -108(%rbp)
.L210:
	movl	-112(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -112(%rbp)
	testl	%eax, %eax
	jg	.L211
	movzbl	-433(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-423(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-443(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -116(%rbp)
	movl	$4, -120(%rbp)
	jmp	.L212
.L213:
	movl	-116(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -116(%rbp)
.L212:
	movl	-120(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -120(%rbp)
	testl	%eax, %eax
	jg	.L213
	movzbl	-442(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-432(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-422(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -124(%rbp)
	movl	$4, -128(%rbp)
	jmp	.L214
.L215:
	movl	-124(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -124(%rbp)
.L214:
	movl	-128(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -128(%rbp)
	testl	%eax, %eax
	jg	.L215
	movzbl	-421(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-441(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-431(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	$4, -136(%rbp)
	jmp	.L216
.L217:
	movl	-132(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -132(%rbp)
.L216:
	movl	-136(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -136(%rbp)
	testl	%eax, %eax
	jg	.L217
	movzbl	-430(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-420(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-440(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	$4, -144(%rbp)
	jmp	.L218
.L219:
	movl	-140(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -140(%rbp)
.L218:
	movl	-144(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -144(%rbp)
	testl	%eax, %eax
	jg	.L219
	movzbl	-439(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-429(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-419(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -148(%rbp)
	movl	$4, -152(%rbp)
	jmp	.L220
.L221:
	movl	-148(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -148(%rbp)
.L220:
	movl	-152(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -152(%rbp)
	testl	%eax, %eax
	jg	.L221
	movzbl	-417(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-418(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -156(%rbp)
	movl	$3, -160(%rbp)
	jmp	.L222
.L223:
	movl	-156(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -156(%rbp)
.L222:
	movl	-160(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -160(%rbp)
	testl	%eax, %eax
	jg	.L223
	jmp	.L224
.L200:
	movzbl	-448(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-427(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-406(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -164(%rbp)
	movl	$4, -168(%rbp)
	jmp	.L225
.L226:
	movl	-164(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -164(%rbp)
.L225:
	movl	-168(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -168(%rbp)
	testl	%eax, %eax
	jg	.L226
	movzbl	-426(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-405(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-447(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -172(%rbp)
	movl	$4, -176(%rbp)
	jmp	.L227
.L228:
	movl	-172(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -172(%rbp)
.L227:
	movl	-176(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -176(%rbp)
	testl	%eax, %eax
	jg	.L228
	movzbl	-404(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-446(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-425(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -180(%rbp)
	movl	$4, -184(%rbp)
	jmp	.L229
.L230:
	movl	-180(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -180(%rbp)
.L229:
	movl	-184(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -184(%rbp)
	testl	%eax, %eax
	jg	.L230
	movzbl	-445(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-424(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-403(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -188(%rbp)
	movl	$4, -192(%rbp)
	jmp	.L231
.L232:
	movl	-188(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -188(%rbp)
.L231:
	movl	-192(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -192(%rbp)
	testl	%eax, %eax
	jg	.L232
	movzbl	-423(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-402(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-444(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -196(%rbp)
	movl	$4, -200(%rbp)
	jmp	.L233
.L234:
	movl	-196(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -196(%rbp)
.L233:
	movl	-200(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -200(%rbp)
	testl	%eax, %eax
	jg	.L234
	movzbl	-401(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-443(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-422(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -204(%rbp)
	movl	$4, -208(%rbp)
	jmp	.L235
.L236:
	movl	-204(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -204(%rbp)
.L235:
	movl	-208(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -208(%rbp)
	testl	%eax, %eax
	jg	.L236
	movzbl	-442(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-421(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-400(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -212(%rbp)
	movl	$4, -216(%rbp)
	jmp	.L237
.L238:
	movl	-212(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -212(%rbp)
.L237:
	movl	-216(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -216(%rbp)
	testl	%eax, %eax
	jg	.L238
	movzbl	-420(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-399(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-441(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -220(%rbp)
	movl	$4, -224(%rbp)
	jmp	.L239
.L240:
	movl	-220(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -220(%rbp)
.L239:
	movl	-224(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -224(%rbp)
	testl	%eax, %eax
	jg	.L240
	movzbl	-398(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-440(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-419(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -228(%rbp)
	movl	$4, -232(%rbp)
	jmp	.L241
.L242:
	movl	-228(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -228(%rbp)
.L241:
	movl	-232(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -232(%rbp)
	testl	%eax, %eax
	jg	.L242
	movzbl	-439(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-418(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-397(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -236(%rbp)
	movl	$4, -240(%rbp)
	jmp	.L243
.L244:
	movl	-236(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -236(%rbp)
.L243:
	movl	-240(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -240(%rbp)
	testl	%eax, %eax
	jg	.L244
	movzbl	-417(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-396(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-438(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -244(%rbp)
	movl	$4, -248(%rbp)
	jmp	.L245
.L246:
	movl	-244(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -244(%rbp)
.L245:
	movl	-248(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -248(%rbp)
	testl	%eax, %eax
	jg	.L246
	movzbl	-395(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-437(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-416(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -252(%rbp)
	movl	$4, -256(%rbp)
	jmp	.L247
.L248:
	movl	-252(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -252(%rbp)
.L247:
	movl	-256(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -256(%rbp)
	testl	%eax, %eax
	jg	.L248
	movzbl	-436(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-415(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-394(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	$4, -264(%rbp)
	jmp	.L249
.L250:
	movl	-260(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -260(%rbp)
.L249:
	movl	-264(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -264(%rbp)
	testl	%eax, %eax
	jg	.L250
	movzbl	-414(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-393(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-435(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -268(%rbp)
	movl	$4, -272(%rbp)
	jmp	.L251
.L252:
	movl	-268(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -268(%rbp)
.L251:
	movl	-272(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -272(%rbp)
	testl	%eax, %eax
	jg	.L252
	movzbl	-392(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-434(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-413(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	$4, -280(%rbp)
	jmp	.L253
.L254:
	movl	-276(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -276(%rbp)
.L253:
	movl	-280(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -280(%rbp)
	testl	%eax, %eax
	jg	.L254
	movzbl	-433(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-412(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-391(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -284(%rbp)
	movl	$4, -288(%rbp)
	jmp	.L255
.L256:
	movl	-284(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -284(%rbp)
.L255:
	movl	-288(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -288(%rbp)
	testl	%eax, %eax
	jg	.L256
	movzbl	-411(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-390(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-432(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -292(%rbp)
	movl	$4, -296(%rbp)
	jmp	.L257
.L258:
	movl	-292(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -292(%rbp)
.L257:
	movl	-296(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -296(%rbp)
	testl	%eax, %eax
	jg	.L258
	movzbl	-389(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-431(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-410(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -300(%rbp)
	movl	$4, -304(%rbp)
	jmp	.L259
.L260:
	movl	-300(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -300(%rbp)
.L259:
	movl	-304(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -304(%rbp)
	testl	%eax, %eax
	jg	.L260
	movzbl	-430(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-409(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-388(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -308(%rbp)
	movl	$4, -312(%rbp)
	jmp	.L261
.L262:
	movl	-308(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -308(%rbp)
.L261:
	movl	-312(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -312(%rbp)
	testl	%eax, %eax
	jg	.L262
	movzbl	-408(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-387(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-429(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -316(%rbp)
	movl	$4, -320(%rbp)
	jmp	.L263
.L264:
	movl	-316(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -316(%rbp)
.L263:
	movl	-320(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -320(%rbp)
	testl	%eax, %eax
	jg	.L264
	movzbl	-386(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movzbl	-428(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-407(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -324(%rbp)
	movl	$4, -328(%rbp)
	jmp	.L265
.L266:
	movl	-324(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -324(%rbp)
.L265:
	movl	-328(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -328(%rbp)
	testl	%eax, %eax
	jg	.L266
	movzbl	-385(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -332(%rbp)
	movl	$2, -336(%rbp)
	jmp	.L267
.L268:
	movl	-332(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	leaq	cov_2char(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	shrl	$6, -332(%rbp)
.L267:
	movl	-336(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -336(%rbp)
	testl	%eax, %eax
	jg	.L268
	nop
.L224:
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
	leaq	out_buf.0(%rip), %rax
	jmp	.L269
.L271:
	nop
	jmp	.L150
.L272:
	nop
	jmp	.L150
.L273:
	nop
	jmp	.L150
.L274:
	nop
	jmp	.L150
.L275:
	nop
	jmp	.L150
.L276:
	nop
	jmp	.L150
.L277:
	nop
	jmp	.L150
.L278:
	nop
	jmp	.L150
.L279:
	nop
	jmp	.L150
.L280:
	nop
	jmp	.L150
.L281:
	nop
	jmp	.L150
.L282:
	nop
	jmp	.L150
.L283:
	nop
	jmp	.L150
.L284:
	nop
	jmp	.L150
.L285:
	nop
	jmp	.L150
.L286:
	nop
	jmp	.L150
.L287:
	nop
	jmp	.L150
.L288:
	nop
	jmp	.L150
.L289:
	nop
	jmp	.L150
.L290:
	nop
	jmp	.L150
.L291:
	nop
.L150:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	.LC50(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$772, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC50(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$773, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC50(%rip), %rcx
	movq	-344(%rbp), %rax
	movl	$774, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	shacrypt, .-shacrypt
	.section	.rodata
.LC53:
	.string	"salt buffer"
	.align 8
.LC54:
	.string	"Warning: truncating password to %u characters\n"
.LC55:
	.string	""
.LC56:
	.string	"%s\t%s\n"
.LC57:
	.string	"%s\n"
	.text
	.type	do_passwd, @function
do_passwd:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -40(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L293
	movq	$0, -16(%rbp)
	cmpl	$1, 40(%rbp)
	je	.L294
	cmpl	$2, 40(%rbp)
	je	.L294
	cmpl	$5, 40(%rbp)
	jne	.L295
.L294:
	movq	$8, -16(%rbp)
.L295:
	cmpl	$3, 40(%rbp)
	je	.L296
	cmpl	$4, 40(%rbp)
	jne	.L297
.L296:
	movq	$16, -16(%rbp)
.L297:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L298
	movq	-16(%rbp), %rax
	addq	$1, %rax
	leaq	.LC53(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L298:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jle	.L319
	movq	$0, -24(%rbp)
	jmp	.L301
.L302:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	andl	$63, %eax
	cltq
	leaq	cov_2char(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L301:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L302
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L293:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, 32(%rbp)
	jnb	.L303
	cmpl	$0, -40(%rbp)
	jne	.L304
	movq	32(%rbp), %rax
	movl	%eax, %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC54(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L304:
	movq	-64(%rbp), %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L303:
	cmpl	$1, 40(%rbp)
	je	.L305
	cmpl	$2, 40(%rbp)
	jne	.L306
.L305:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	cmpl	$1, 40(%rbp)
	jne	.L307
	leaq	.LC27(%rip), %rax
	jmp	.L308
.L307:
	leaq	.LC25(%rip), %rax
.L308:
	movq	-64(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	md5crypt
	movq	%rax, -8(%rbp)
.L306:
	cmpl	$5, 40(%rbp)
	jne	.L309
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC55(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	md5crypt
	movq	%rax, -8(%rbp)
.L309:
	cmpl	$3, 40(%rbp)
	je	.L310
	cmpl	$4, 40(%rbp)
	jne	.L311
.L310:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	cmpl	$3, 40(%rbp)
	jne	.L312
	leaq	.LC23(%rip), %rax
	jmp	.L313
.L312:
	leaq	.LC21(%rip), %rax
.L313:
	movq	-64(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	shacrypt
	movq	%rax, -8(%rbp)
.L311:
	cmpl	$0, 16(%rbp)
	je	.L314
	cmpl	$0, 24(%rbp)
	jne	.L314
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	.LC56(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L315
.L314:
	cmpl	$0, 16(%rbp)
	je	.L316
	cmpl	$0, 24(%rbp)
	je	.L316
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	.LC56(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L315
.L316:
	movq	-8(%rbp), %rdx
	leaq	.LC57(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L315:
	movl	$1, %eax
	jmp	.L317
.L319:
	nop
.L300:
	movl	$0, %eax
.L317:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	do_passwd, .-do_passwd
	.local	passwds_static.3
	.comm	passwds_static.3,16,16
	.local	out_buf.2
	.comm	out_buf.2,41,32
	.section	.rodata
	.align 8
	.type	rounds_prefix.1, @object
	.size	rounds_prefix.1, 8
rounds_prefix.1:
	.string	"rounds="
	.local	out_buf.0
	.comm	out_buf.0,124,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
