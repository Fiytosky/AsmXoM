	.file	"opt.c"
	.text
	.globl	OPT_HELP_STR
	.section	.rodata
	.type	OPT_HELP_STR, @object
	.size	OPT_HELP_STR, 3
OPT_HELP_STR:
	.string	"-H"
	.globl	OPT_MORE_STR
	.type	OPT_MORE_STR, @object
	.size	OPT_MORE_STR, 3
OPT_MORE_STR:
	.string	"-M"
	.globl	OPT_SECTION_STR
	.type	OPT_SECTION_STR, @object
	.size	OPT_SECTION_STR, 3
OPT_SECTION_STR:
	.string	"-S"
	.globl	OPT_PARAM_STR
	.type	OPT_PARAM_STR, @object
	.size	OPT_PARAM_STR, 3
OPT_PARAM_STR:
	.string	"-P"
	.local	argv
	.comm	argv,8,8
	.local	argc
	.comm	argc,4,4
	.local	opt_index
	.comm	opt_index,4,4
	.local	arg
	.comm	arg,8,8
	.local	flag
	.comm	flag,8,8
	.local	dunno
	.comm	dunno,8,8
	.local	unknown_name
	.comm	unknown_name,8,8
	.local	unknown
	.comm	unknown,8,8
	.local	opts
	.comm	opts,8,8
	.local	prog
	.comm	prog,40,32
	.text
	.globl	opt_path_end
	.type	opt_path_end, @function
opt_path_end:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L4:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L2
	addq	$1, -8(%rbp)
	jmp	.L3
.L2:
	subq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L4
.L3:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	opt_path_end, .-opt_path_end
	.globl	opt_progname
	.type	opt_progname, @function
opt_progname:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	opt_path_end@PLT
	movq	%rax, -8(%rbp)
	leaq	prog(%rip), %rax
	cmpq	%rax, -8(%rbp)
	je	.L7
	movq	-8(%rbp), %rax
	leaq	prog(%rip), %rcx
	movl	$39, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
.L7:
	movb	$0, 39+prog(%rip)
	leaq	prog(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	opt_progname, .-opt_progname
	.section	.rodata
.LC0:
	.string	" %s"
	.text
	.globl	opt_appname
	.type	opt_appname, @function
opt_appname:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	prog(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L10
	movl	$39, %eax
	subq	-8(%rbp), %rax
	leaq	prog(%rip), %rcx
	movq	-8(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	-24(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L10:
	leaq	prog(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	opt_appname, .-opt_appname
	.globl	opt_getprog
	.type	opt_getprog, @function
opt_getprog:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	prog(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	opt_getprog, .-opt_getprog
	.section	.rodata
.LC1:
	.string	"../apps/lib/opt.c"
	.align 8
.LC2:
	.string	"assertion failed: unknown_name != NULL"
	.align 8
.LC3:
	.string	"assertion failed: unknown == NULL"
	.align 8
.LC4:
	.string	"assertion failed: unknown->valtype == 0 || unknown->valtype == '-'"
	.text
	.globl	opt_init
	.type	opt_init, @function
opt_init:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, argc(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, argv(%rip)
	call	opt_begin@PLT
	movq	-24(%rbp), %rax
	movq	%rax, opts(%rip)
	movq	$0, unknown(%rip)
	movq	argv(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	opt_progname@PLT
	jmp	.L15
.L22:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_HELP_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L24
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_MORE_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L24
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_SECTION_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L24
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L18
	movq	unknown_name(%rip), %rax
	testq	%rax, %rax
	jne	.L19
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L19:
	movq	unknown(%rip), %rax
	testq	%rax, %rax
	je	.L20
	leaq	.LC1(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$219, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, unknown(%rip)
	movq	unknown(%rip), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L18
	movq	unknown(%rip), %rax
	movl	12(%rax), %eax
	cmpl	$45, %eax
	je	.L18
	leaq	.LC1(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$221, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L24:
	nop
.L18:
	addq	$24, -24(%rbp)
.L15:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_PARAM_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L22
.L21:
	leaq	prog(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	opt_init, .-opt_init
	.section	.rodata
.LC5:
	.string	"pem"
.LC6:
	.string	"der"
.LC7:
	.string	"b64"
.LC8:
	.string	"pkcs12"
.LC9:
	.string	"smime"
.LC10:
	.string	"engine"
.LC11:
	.string	"msblob"
.LC12:
	.string	"nss"
.LC13:
	.string	"text"
.LC14:
	.string	"http"
.LC15:
	.string	"pvk"
	.section	.data.rel.local,"aw"
	.align 32
	.type	formats, @object
	.size	formats, 192
formats:
	.quad	.LC5
	.long	2
	.zero	4
	.quad	.LC6
	.long	4
	.zero	4
	.quad	.LC7
	.long	8
	.zero	4
	.quad	.LC8
	.long	16
	.zero	4
	.quad	.LC9
	.long	32
	.zero	4
	.quad	.LC10
	.long	64
	.zero	4
	.quad	.LC11
	.long	128
	.zero	4
	.quad	.LC12
	.long	256
	.zero	4
	.quad	.LC13
	.long	512
	.zero	4
	.quad	.LC14
	.long	1024
	.zero	4
	.quad	.LC15
	.long	2048
	.zero	4
	.quad	0
	.zero	8
	.text
	.globl	opt_set_unknown_name
	.type	opt_set_unknown_name, @function
opt_set_unknown_name:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, unknown_name(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	opt_set_unknown_name, .-opt_set_unknown_name
	.section	.rodata
	.align 8
.LC16:
	.string	"%s: Bad format \"%s\"; must be one of: "
.LC17:
	.string	"\n"
	.text
	.type	opt_format_error, @function
opt_format_error:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC16(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	leaq	formats(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L27
.L29:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	andq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L28
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
.L28:
	addq	$16, -8(%rbp)
.L27:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	opt_format_error, .-opt_format_error
	.section	.rodata
.LC18:
	.string	"%s: Bad format \"%s\"\n"
.LC19:
	.string	"B64"
.LC20:
	.string	"BASE64"
.LC21:
	.string	"base64"
.LC22:
	.string	"NSS"
.LC23:
	.string	"PEM"
.LC24:
	.string	"PVK"
.LC25:
	.string	"P12"
.LC26:
	.string	"p12"
.LC27:
	.string	"PKCS12"
	.text
	.globl	opt_format
	.type	opt_format, @function
opt_format:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$116, %eax
	je	.L32
	cmpl	$116, %eax
	jg	.L33
	cmpl	$115, %eax
	je	.L34
	cmpl	$115, %eax
	jg	.L33
	cmpl	$112, %eax
	je	.L35
	cmpl	$112, %eax
	jg	.L33
	cmpl	$110, %eax
	je	.L36
	cmpl	$110, %eax
	jg	.L33
	cmpl	$109, %eax
	je	.L37
	cmpl	$109, %eax
	jg	.L33
	cmpl	$104, %eax
	je	.L38
	cmpl	$104, %eax
	jg	.L33
	cmpl	$101, %eax
	je	.L39
	cmpl	$101, %eax
	jg	.L33
	cmpl	$100, %eax
	je	.L40
	cmpl	$100, %eax
	jg	.L33
	cmpl	$98, %eax
	je	.L41
	cmpl	$98, %eax
	jg	.L33
	cmpl	$84, %eax
	je	.L32
	cmpl	$84, %eax
	jg	.L33
	cmpl	$83, %eax
	je	.L34
	cmpl	$83, %eax
	jg	.L33
	cmpl	$80, %eax
	je	.L35
	cmpl	$80, %eax
	jg	.L33
	cmpl	$78, %eax
	je	.L36
	cmpl	$78, %eax
	jg	.L33
	cmpl	$77, %eax
	je	.L37
	cmpl	$77, %eax
	jg	.L33
	cmpl	$72, %eax
	je	.L38
	cmpl	$72, %eax
	jg	.L33
	cmpl	$69, %eax
	je	.L39
	cmpl	$69, %eax
	jg	.L33
	cmpl	$68, %eax
	je	.L40
	cmpl	$68, %eax
	jg	.L33
	cmpl	$49, %eax
	je	.L42
	cmpl	$66, %eax
	je	.L41
.L33:
	movq	-8(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC18(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L43
.L41:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L44
	leaq	.LC19(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L44
	leaq	.LC7(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L44
	leaq	.LC20(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L44
	leaq	.LC21(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L45
.L44:
	movq	-16(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L46
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L46:
	movq	-24(%rbp), %rax
	movl	$32771, (%rax)
	jmp	.L47
.L45:
	movl	$0, %eax
	jmp	.L43
.L40:
	movq	-16(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L48
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L48:
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L47
.L32:
	movq	-16(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L49
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L49:
	movq	-24(%rbp), %rax
	movl	$32769, (%rax)
	jmp	.L47
.L36:
	movq	-16(%rbp), %rax
	andl	$256, %eax
	testq	%rax, %rax
	jne	.L50
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L50:
	leaq	.LC22(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC12(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L51
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L51:
	movq	-24(%rbp), %rax
	movl	$14, (%rax)
	jmp	.L47
.L34:
	movq	-16(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	jne	.L52
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L52:
	movq	-24(%rbp), %rax
	movl	$32775, (%rax)
	jmp	.L47
.L37:
	movq	-16(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	jne	.L53
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L53:
	movq	-24(%rbp), %rax
	movl	$11, (%rax)
	jmp	.L47
.L39:
	movq	-16(%rbp), %rax
	andl	$64, %eax
	testq	%rax, %rax
	jne	.L54
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L54:
	movq	-24(%rbp), %rax
	movl	$8, (%rax)
	jmp	.L47
.L38:
	movq	-16(%rbp), %rax
	andl	$1024, %eax
	testq	%rax, %rax
	jne	.L55
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L55:
	movq	-24(%rbp), %rax
	movl	$13, (%rax)
	jmp	.L47
.L42:
	movq	-16(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L56
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L56:
	movq	-24(%rbp), %rax
	movl	$6, (%rax)
	jmp	.L47
.L35:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L57
	leaq	.LC23(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L57
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L58
.L57:
	movq	-16(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L59
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L59:
	movq	-24(%rbp), %rax
	movl	$32773, (%rax)
	jmp	.L60
.L58:
	leaq	.LC24(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L61
	leaq	.LC15(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L62
.L61:
	movq	-16(%rbp), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	jne	.L63
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L63:
	movq	-24(%rbp), %rax
	movl	$12, (%rax)
	jmp	.L60
.L62:
	leaq	.LC25(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L64
	leaq	.LC26(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L64
	leaq	.LC27(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L64
	leaq	.LC8(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L65
.L64:
	movq	-16(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L66
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_format_error
	jmp	.L43
.L66:
	movq	-24(%rbp), %rax
	movl	$6, (%rax)
	jmp	.L60
.L65:
	movq	-8(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC18(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L43
.L60:
	nop
.L47:
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	opt_format, .-opt_format
	.section	.rodata
.LC28:
	.string	"(undefined)"
.LC29:
	.string	"DER"
.LC30:
	.string	"TEXT"
.LC31:
	.string	"SMIME"
.LC32:
	.string	"MSBLOB"
.LC33:
	.string	"ENGINE"
.LC34:
	.string	"HTTP"
	.text
	.type	format2str, @function
format2str:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$32775, -4(%rbp)
	je	.L68
	cmpl	$32775, -4(%rbp)
	jg	.L69
	cmpl	$32773, -4(%rbp)
	je	.L70
	cmpl	$32773, -4(%rbp)
	jg	.L69
	cmpl	$32769, -4(%rbp)
	je	.L71
	cmpl	$32769, -4(%rbp)
	jg	.L69
	cmpl	$14, -4(%rbp)
	je	.L72
	cmpl	$14, -4(%rbp)
	jg	.L69
	cmpl	$13, -4(%rbp)
	je	.L73
	cmpl	$13, -4(%rbp)
	jg	.L69
	cmpl	$12, -4(%rbp)
	je	.L74
	cmpl	$12, -4(%rbp)
	jg	.L69
	cmpl	$11, -4(%rbp)
	je	.L75
	cmpl	$11, -4(%rbp)
	jg	.L69
	cmpl	$8, -4(%rbp)
	je	.L76
	cmpl	$8, -4(%rbp)
	jg	.L69
	cmpl	$4, -4(%rbp)
	je	.L77
	cmpl	$6, -4(%rbp)
	je	.L78
.L69:
	leaq	.LC28(%rip), %rax
	jmp	.L79
.L70:
	leaq	.LC23(%rip), %rax
	jmp	.L79
.L77:
	leaq	.LC29(%rip), %rax
	jmp	.L79
.L71:
	leaq	.LC30(%rip), %rax
	jmp	.L79
.L72:
	leaq	.LC22(%rip), %rax
	jmp	.L79
.L68:
	leaq	.LC31(%rip), %rax
	jmp	.L79
.L75:
	leaq	.LC32(%rip), %rax
	jmp	.L79
.L76:
	leaq	.LC33(%rip), %rax
	jmp	.L79
.L73:
	leaq	.LC34(%rip), %rax
	jmp	.L79
.L78:
	leaq	.LC25(%rip), %rax
	jmp	.L79
.L74:
	leaq	.LC24(%rip), %rax
.L79:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	format2str, .-format2str
	.globl	print_format_error
	.type	print_format_error, @function
print_format_error:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	format2str
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_format_error
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	print_format_error, .-print_format_error
	.globl	opt_cipher_silent
	.type	opt_cipher_silent, @function
opt_cipher_silent:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	ERR_set_mark@PLT
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L82
	call	opt_legacy_okay@PLT
	testl	%eax, %eax
	je	.L83
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L83
.L82:
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -48(%rbp)
	je	.L84
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L85
.L84:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
.L85:
	movl	$1, %eax
	jmp	.L86
.L83:
	call	ERR_clear_last_mark@PLT
	movl	$0, %eax
.L86:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	opt_cipher_silent, .-opt_cipher_silent
	.section	.rodata
	.align 8
.LC35:
	.string	"%s: Unknown option or cipher: %s\n"
	.text
	.globl	opt_cipher_any
	.type	opt_cipher_any, @function
opt_cipher_any:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L88
	movl	$1, %eax
	jmp	.L89
.L88:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher_silent@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L90
	movq	-24(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC35(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
.L90:
	movl	-4(%rbp), %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	opt_cipher_any, .-opt_cipher_any
	.section	.rodata
.LC36:
	.string	"%s XTS ciphers not supported\n"
	.align 8
.LC37:
	.string	"%s: AEAD ciphers not supported\n"
	.text
	.globl	opt_cipher
	.type	opt_cipher, @function
opt_cipher:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L92
	movl	$1, %eax
	jmp	.L97
.L92:
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher_any@PLT
	testl	%eax, %eax
	je	.L94
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	movq	%rax, -16(%rbp)
	cmpl	$65537, -8(%rbp)
	jne	.L95
	leaq	prog(%rip), %rdx
	leaq	.LC36(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L94
.L95:
	movq	-16(%rbp), %rax
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L96
	leaq	prog(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L94
.L96:
	movl	$1, -4(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L94
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L94:
	movl	-4(%rbp), %eax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	opt_cipher, .-opt_cipher
	.globl	opt_md_silent
	.type	opt_md_silent, @function
opt_md_silent:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	ERR_set_mark@PLT
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L99
	call	opt_legacy_okay@PLT
	testl	%eax, %eax
	je	.L100
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L100
.L99:
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -48(%rbp)
	je	.L101
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L102
.L101:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
.L102:
	movl	$1, %eax
	jmp	.L103
.L100:
	call	ERR_clear_last_mark@PLT
	movl	$0, %eax
.L103:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	opt_md_silent, .-opt_md_silent
	.section	.rodata
	.align 8
.LC38:
	.string	"%s: Unknown option or message digest: %s\n"
	.text
	.globl	opt_md
	.type	opt_md, @function
opt_md:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L105
	movl	$1, %eax
	jmp	.L106
.L105:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md_silent@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L107
	movq	-24(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC38(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
.L107:
	movl	-4(%rbp), %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	opt_md, .-opt_md
	.globl	opt_check_md
	.type	opt_check_md, @function
opt_check_md:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	opt_md@PLT
	testl	%eax, %eax
	je	.L109
	movl	$1, %eax
	jmp	.L110
.L109:
	call	ERR_clear_error@PLT
	movl	$0, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	opt_check_md, .-opt_check_md
	.section	.rodata
.LC39:
	.string	"%s: Value must be one of:\n"
.LC40:
	.string	"\t%s\n"
	.text
	.globl	opt_pair
	.type	opt_pair, @function
opt_pair:
.LFB589:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L112
.L115:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L113
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L114
.L113:
	addq	$16, -8(%rbp)
.L112:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L115
	leaq	prog(%rip), %rdx
	leaq	.LC39(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L116
.L117:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC40(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	addq	$16, -8(%rbp)
.L116:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L117
	movl	$0, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	opt_pair, .-opt_pair
	.globl	opt_string
	.type	opt_string, @function
opt_string:
.LFB590:
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
	jmp	.L119
.L122:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L120
	movl	$1, %eax
	jmp	.L121
.L120:
	addq	$8, -8(%rbp)
.L119:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L122
	leaq	prog(%rip), %rdx
	leaq	.LC39(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L123
.L124:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC40(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	addq	$8, -8(%rbp)
.L123:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L124
	movl	$0, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	opt_string, .-opt_string
	.section	.rodata
	.align 8
.LC41:
	.string	"%s: Value \"%s\" outside integer range\n"
	.text
	.globl	opt_int
	.type	opt_int, @function
opt_int:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_long@PLT
	testl	%eax, %eax
	jne	.L126
	movl	$0, %eax
	jmp	.L129
.L126:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L128
	movq	-24(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC41(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L129
.L128:
	movl	$1, %eax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	opt_int, .-opt_int
	.globl	opt_int_arg
	.type	opt_int_arg, @function
opt_int_arg:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$-1, -4(%rbp)
	movq	arg(%rip), %rax
	leaq	-4(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_int@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	opt_int_arg, .-opt_int_arg
	.section	.rodata
.LC42:
	.string	"0x"
.LC43:
	.string	"a hexadecimal"
.LC44:
	.string	"0X"
.LC45:
	.string	"0"
.LC46:
	.string	"an octal"
	.align 8
.LC47:
	.string	"%s: Can't parse \"%s\" as %s number\n"
	.align 8
.LC48:
	.string	"%s: Can't parse \"%s\" as a number\n"
	.text
	.type	opt_number_error, @function
opt_number_error:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC42(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC43(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC44(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC43(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC45(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC46(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L133
.L136:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$64, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$64, %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L134
	movq	-8(%rbp), %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$56, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC47(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L132
.L134:
	addq	$1, -8(%rbp)
.L133:
	cmpq	$2, -8(%rbp)
	jbe	.L136
	movq	-72(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC48(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	nop
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	opt_number_error, .-opt_number_error
	.globl	opt_long
	.type	opt_long, @function
opt_long:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	call	__errno_location@PLT
	movl	$0, (%rax)
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L139
	movq	-24(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	je	.L139
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, -16(%rbp)
	je	.L140
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, -16(%rbp)
	jne	.L141
.L140:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L139
.L141:
	cmpq	$0, -16(%rbp)
	jne	.L142
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L142
.L139:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	opt_number_error
	call	__errno_location@PLT
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L144
.L142:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	call	__errno_location@PLT
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	opt_long, .-opt_long
	.globl	opt_intmax
	.type	opt_intmax, @function
opt_intmax:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	call	__errno_location@PLT
	movl	$0, (%rax)
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoimax@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L146
	movq	-24(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	je	.L146
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, -16(%rbp)
	je	.L147
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, -16(%rbp)
	jne	.L148
.L147:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L146
.L148:
	cmpq	$0, -16(%rbp)
	jne	.L149
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L149
.L146:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	opt_number_error
	call	__errno_location@PLT
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L151
.L149:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	call	__errno_location@PLT
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	opt_intmax, .-opt_intmax
	.globl	opt_uintmax
	.type	opt_uintmax, @function
opt_uintmax:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	call	__errno_location@PLT
	movl	$0, (%rax)
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoumax@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L153
	movq	-24(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	je	.L153
	cmpq	$-1, -16(%rbp)
	jne	.L154
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L153
.L154:
	cmpq	$0, -16(%rbp)
	jne	.L155
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L155
.L153:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	opt_number_error
	call	__errno_location@PLT
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L157
.L155:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	call	__errno_location@PLT
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	opt_uintmax, .-opt_uintmax
	.globl	opt_ulong
	.type	opt_ulong, @function
opt_ulong:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	call	__errno_location@PLT
	movl	$0, (%rax)
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L159
	movq	-24(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	je	.L159
	cmpq	$-1, -16(%rbp)
	jne	.L160
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L159
.L160:
	cmpq	$0, -16(%rbp)
	jne	.L161
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L161
.L159:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	opt_number_error
	call	__errno_location@PLT
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L163
.L161:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	call	__errno_location@PLT
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	opt_ulong, .-opt_ulong
	.section	.rodata
.LC49:
	.string	"assertion failed: vpm != NULL"
	.align 8
.LC50:
	.string	"assertion failed: opt > OPT_V__FIRST"
	.align 8
.LC51:
	.string	"assertion failed: opt < OPT_V__LAST"
.LC52:
	.string	"%s: Invalid Policy %s\n"
	.align 8
.LC53:
	.string	"%s: Internal error adding Policy %s\n"
.LC54:
	.string	"%s: Invalid purpose %s\n"
	.align 8
.LC55:
	.string	"%s: Internal error setting purpose %s\n"
.LC56:
	.string	"%s: Invalid verify name %s\n"
	.text
	.globl	opt_verify
	.type	opt_verify, @function
opt_verify:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L165
	leaq	.LC1(%rip), %rcx
	leaq	.LC49(%rip), %rax
	movl	$715, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L165:
	cmpl	$2000, -52(%rbp)
	jg	.L166
	leaq	.LC1(%rip), %rcx
	leaq	.LC50(%rip), %rax
	movl	$716, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L166:
	cmpl	$2030, -52(%rbp)
	jle	.L167
	leaq	.LC1(%rip), %rcx
	leaq	.LC51(%rip), %rax
	movl	$717, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L167:
	movl	-52(%rbp), %eax
	cmpl	$2031, %eax
	je	.L168
	cmpl	$2031, %eax
	ja	.L169
	cmpl	$2030, %eax
	je	.L170
	cmpl	$2030, %eax
	ja	.L169
	cmpl	$2029, %eax
	je	.L171
	cmpl	$2029, %eax
	ja	.L169
	cmpl	$2028, %eax
	je	.L172
	cmpl	$2028, %eax
	ja	.L169
	cmpl	$2027, %eax
	je	.L173
	cmpl	$2027, %eax
	ja	.L169
	cmpl	$2026, %eax
	je	.L174
	cmpl	$2026, %eax
	ja	.L169
	cmpl	$2025, %eax
	je	.L175
	cmpl	$2025, %eax
	ja	.L169
	cmpl	$2024, %eax
	je	.L176
	cmpl	$2024, %eax
	ja	.L169
	cmpl	$2023, %eax
	je	.L177
	cmpl	$2023, %eax
	ja	.L169
	cmpl	$2022, %eax
	je	.L178
	cmpl	$2022, %eax
	ja	.L169
	cmpl	$2021, %eax
	je	.L179
	cmpl	$2021, %eax
	ja	.L169
	cmpl	$2020, %eax
	je	.L180
	cmpl	$2020, %eax
	ja	.L169
	cmpl	$2019, %eax
	je	.L181
	cmpl	$2019, %eax
	ja	.L169
	cmpl	$2018, %eax
	je	.L182
	cmpl	$2018, %eax
	ja	.L169
	cmpl	$2017, %eax
	je	.L183
	cmpl	$2017, %eax
	ja	.L169
	cmpl	$2016, %eax
	je	.L184
	cmpl	$2016, %eax
	ja	.L169
	cmpl	$2015, %eax
	je	.L185
	cmpl	$2015, %eax
	ja	.L169
	cmpl	$2014, %eax
	je	.L186
	cmpl	$2014, %eax
	ja	.L169
	cmpl	$2013, %eax
	je	.L187
	cmpl	$2013, %eax
	ja	.L169
	cmpl	$2012, %eax
	je	.L188
	cmpl	$2012, %eax
	ja	.L169
	cmpl	$2011, %eax
	je	.L189
	cmpl	$2011, %eax
	ja	.L169
	cmpl	$2010, %eax
	je	.L213
	cmpl	$2010, %eax
	ja	.L169
	cmpl	$2009, %eax
	je	.L191
	cmpl	$2009, %eax
	ja	.L169
	cmpl	$2008, %eax
	je	.L192
	cmpl	$2008, %eax
	ja	.L169
	cmpl	$2007, %eax
	je	.L193
	cmpl	$2007, %eax
	ja	.L169
	cmpl	$2006, %eax
	je	.L194
	cmpl	$2006, %eax
	ja	.L169
	cmpl	$2005, %eax
	je	.L195
	cmpl	$2005, %eax
	ja	.L169
	cmpl	$2004, %eax
	je	.L196
	cmpl	$2004, %eax
	ja	.L169
	cmpl	$2003, %eax
	je	.L197
	cmpl	$2003, %eax
	ja	.L169
	cmpl	$2002, %eax
	je	.L198
	cmpl	$2002, %eax
	ja	.L169
	cmpl	$2000, %eax
	je	.L168
	cmpl	$2001, %eax
	je	.L199
	jmp	.L169
.L168:
	movl	$0, %eax
	jmp	.L212
.L199:
	call	opt_arg@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L201
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	prog(%rip), %rcx
	leaq	.LC52(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L212
.L201:
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_add0_policy@PLT
	testl	%eax, %eax
	jne	.L214
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	prog(%rip), %rcx
	leaq	.LC53(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L212
.L198:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	X509_PURPOSE_get_by_sname@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L203
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	prog(%rip), %rcx
	leaq	.LC54(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L212
.L203:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get0@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PURPOSE_get_id@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_purpose@PLT
	testl	%eax, %eax
	jne	.L215
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	prog(%rip), %rcx
	leaq	.LC55(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L212
.L197:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_lookup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L205
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	prog(%rip), %rcx
	leaq	.LC56(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L212
.L205:
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1@PLT
	jmp	.L169
.L196:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L216
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_depth@PLT
	jmp	.L216
.L171:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L217
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_auth_level@PLT
	jmp	.L217
.L195:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_intmax@PLT
	testl	%eax, %eax
	jne	.L208
	movl	$0, %eax
	jmp	.L212
.L208:
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_time@PLT
	jmp	.L169
.L194:
	call	opt_arg@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1_host@PLT
	testl	%eax, %eax
	jne	.L218
	movl	$0, %eax
	jmp	.L212
.L193:
	call	opt_arg@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1_email@PLT
	testl	%eax, %eax
	jne	.L219
	movl	$0, %eax
	jmp	.L212
.L192:
	call	opt_arg@PLT
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1_ip_asc@PLT
	testl	%eax, %eax
	jne	.L220
	movl	$0, %eax
	jmp	.L212
.L191:
	movq	-64(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L189:
	movq	-64(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L188:
	movq	-64(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L187:
	movq	-64(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L186:
	movq	-64(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L185:
	movq	-64(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L184:
	movq	-64(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L183:
	movq	-64(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L182:
	movq	-64(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L181:
	movq	-64(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L180:
	movq	-64(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L179:
	movq	-64(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L178:
	movq	-64(%rbp), %rax
	movl	$32768, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L177:
	movq	-64(%rbp), %rax
	movl	$65536, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L176:
	movq	-64(%rbp), %rax
	movl	$196608, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L175:
	movq	-64(%rbp), %rax
	movl	$131072, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L174:
	movq	-64(%rbp), %rax
	movl	$524288, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L173:
	movq	-64(%rbp), %rax
	movl	$1048576, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L172:
	movq	-64(%rbp), %rax
	movl	$2097152, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L170:
	movq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	jmp	.L169
.L213:
	nop
	jmp	.L169
.L214:
	nop
	jmp	.L169
.L215:
	nop
	jmp	.L169
.L216:
	nop
	jmp	.L169
.L217:
	nop
	jmp	.L169
.L218:
	nop
	jmp	.L169
.L219:
	nop
	jmp	.L169
.L220:
	nop
.L169:
	movl	$1, %eax
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	opt_verify, .-opt_verify
	.globl	opt_begin
	.type	opt_begin, @function
opt_begin:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, opt_index(%rip)
	movq	$0, arg(%rip)
	movq	$0, flag(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	opt_begin, .-opt_begin
	.section	.rodata
.LC57:
	.string	"--"
.LC58:
	.string	"h"
.LC59:
	.string	"help"
	.align 8
.LC60:
	.string	"%s: Option -%s does not take a value\n"
.LC61:
	.string	"%s: Option -%s needs a value\n"
.LC62:
	.string	"%s: Not a directory: %s\n"
	.align 8
.LC63:
	.string	"%s: Non-positive number \"%s\" for option -%s\n"
	.align 8
.LC64:
	.string	"%s: Negative number \"%s\" for option -%s\n"
	.align 8
.LC65:
	.string	"%s: Invalid format \"%s\" for option -%s\n"
	.align 8
.LC66:
	.string	"%s: Multiple %s or unknown options: -%s and -%s\n"
.LC67:
	.string	"%s: Unknown option: -%s\n"
	.text
	.globl	opt_next
	.type	opt_next, @function
opt_next:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, arg(%rip)
	movq	argv(%rip), %rax
	movl	opt_index(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L223
	movl	$0, %eax
	jmp	.L267
.L223:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L225
	movl	$0, %eax
	jmp	.L267
.L225:
	movl	opt_index(%rip), %eax
	addl	$1, %eax
	movl	%eax, opt_index(%rip)
	leaq	.LC57(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L226
	movl	$0, %eax
	jmp	.L267
.L226:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L227
	addq	$1, -8(%rbp)
.L227:
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, flag(%rip)
	movq	-8(%rbp), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, arg(%rip)
	movq	arg(%rip), %rax
	testq	%rax, %rax
	je	.L228
	movq	arg(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, arg(%rip)
	movb	$0, (%rax)
.L228:
	movq	opts(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L229
.L264:
	leaq	.LC58(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L230
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L231
.L230:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L269
.L231:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L233
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$45, %eax
	jne	.L234
.L233:
	movq	arg(%rip), %rax
	testq	%rax, %rax
	je	.L235
	movq	-8(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC60(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$-1, %eax
	jmp	.L267
.L235:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L267
.L234:
	movq	arg(%rip), %rax
	testq	%rax, %rax
	jne	.L236
	movq	argv(%rip), %rax
	movl	opt_index(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L237
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC61(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$-1, %eax
	jmp	.L267
.L237:
	movq	argv(%rip), %rcx
	movl	opt_index(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, opt_index(%rip)
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, arg(%rip)
.L236:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$117, %eax
	je	.L238
	cmpl	$117, %eax
	jg	.L270
	cmpl	$112, %eax
	je	.L240
	cmpl	$112, %eax
	jg	.L270
	cmpl	$110, %eax
	je	.L240
	cmpl	$110, %eax
	jg	.L270
	cmpl	$108, %eax
	je	.L241
	cmpl	$108, %eax
	jg	.L270
	cmpl	$102, %eax
	je	.L242
	cmpl	$102, %eax
	jg	.L270
	cmpl	$99, %eax
	je	.L242
	cmpl	$99, %eax
	jg	.L270
	cmpl	$97, %eax
	je	.L242
	cmpl	$97, %eax
	jg	.L270
	cmpl	$85, %eax
	je	.L243
	cmpl	$85, %eax
	jg	.L270
	cmpl	$78, %eax
	je	.L240
	cmpl	$78, %eax
	jg	.L270
	cmpl	$77, %eax
	je	.L244
	cmpl	$77, %eax
	jg	.L270
	cmpl	$70, %eax
	jg	.L270
	cmpl	$69, %eax
	jge	.L242
	cmpl	$65, %eax
	je	.L242
	cmpl	$65, %eax
	jg	.L270
	cmpl	$62, %eax
	je	.L271
	cmpl	$62, %eax
	jg	.L270
	cmpl	$60, %eax
	je	.L272
	cmpl	$60, %eax
	jg	.L270
	cmpl	$46, %eax
	je	.L273
	cmpl	$47, %eax
	jne	.L270
	movq	arg(%rip), %rax
	movq	%rax, %rdi
	call	opt_isdir@PLT
	testl	%eax, %eax
	jg	.L274
	movq	arg(%rip), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC62(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$-1, %eax
	jmp	.L267
.L240:
	movq	arg(%rip), %rax
	leaq	-20(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	jne	.L251
	movl	$-1, %eax
	jmp	.L267
.L251:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$112, %eax
	jne	.L252
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jg	.L252
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	arg(%rip), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC63(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$-1, %eax
	jmp	.L267
.L252:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$78, %eax
	jne	.L275
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jns	.L275
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	arg(%rip), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC64(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$-1, %eax
	jmp	.L267
.L244:
	movq	arg(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_intmax@PLT
	testl	%eax, %eax
	jne	.L276
	movl	$-1, %eax
	jmp	.L267
.L243:
	movq	arg(%rip), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_uintmax@PLT
	testl	%eax, %eax
	jne	.L277
	movl	$-1, %eax
	jmp	.L267
.L241:
	movq	arg(%rip), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_long@PLT
	testl	%eax, %eax
	jne	.L278
	movl	$-1, %eax
	jmp	.L267
.L238:
	movq	arg(%rip), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_ulong@PLT
	testl	%eax, %eax
	jne	.L279
	movl	$-1, %eax
	jmp	.L267
.L242:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$99, %eax
	je	.L258
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$69, %eax
	je	.L259
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$70, %eax
	je	.L260
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$65, %eax
	jne	.L261
	movl	$14, %eax
	jmp	.L262
.L261:
	movl	$4094, %eax
	jmp	.L262
.L260:
	movl	$6, %eax
	jmp	.L262
.L259:
	movl	$70, %eax
	jmp	.L262
.L258:
	movl	$38, %eax
.L262:
	movq	arg(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	jne	.L280
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	arg(%rip), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC65(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$-1, %eax
	jmp	.L267
.L270:
	nop
	jmp	.L249
.L271:
	nop
	jmp	.L249
.L272:
	nop
	jmp	.L249
.L273:
	nop
	jmp	.L249
.L274:
	nop
	jmp	.L249
.L275:
	nop
	jmp	.L249
.L276:
	nop
	jmp	.L249
.L277:
	nop
	jmp	.L249
.L278:
	nop
	jmp	.L249
.L279:
	nop
	jmp	.L249
.L280:
	nop
.L249:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L267
.L269:
	nop
	addq	$24, -16(%rbp)
.L229:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L264
	movq	unknown(%rip), %rax
	testq	%rax, %rax
	je	.L265
	movq	dunno(%rip), %rax
	testq	%rax, %rax
	je	.L266
	movq	dunno(%rip), %rdx
	movq	unknown_name(%rip), %rax
	movq	-8(%rbp), %rcx
	leaq	prog(%rip), %rsi
	leaq	.LC66(%rip), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$-1, %eax
	jmp	.L267
.L266:
	movq	-8(%rbp), %rax
	movq	%rax, dunno(%rip)
	movq	unknown(%rip), %rax
	movl	8(%rax), %eax
	jmp	.L267
.L265:
	movq	-8(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC67(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$-1, %eax
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	opt_next, .-opt_next
	.globl	opt_arg
	.type	opt_arg, @function
opt_arg:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	arg(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	opt_arg, .-opt_arg
	.globl	opt_flag
	.type	opt_flag, @function
opt_flag:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	flag(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	opt_flag, .-opt_flag
	.globl	opt_unknown
	.type	opt_unknown, @function
opt_unknown:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	dunno(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	opt_unknown, .-opt_unknown
	.globl	reset_unknown
	.type	reset_unknown, @function
reset_unknown:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, dunno(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	reset_unknown, .-reset_unknown
	.globl	opt_rest
	.type	opt_rest, @function
opt_rest:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	argv(%rip), %rax
	movl	opt_index(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	opt_rest, .-opt_rest
	.globl	opt_num_rest
	.type	opt_num_rest, @function
opt_num_rest:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	call	opt_rest@PLT
	movq	%rax, -16(%rbp)
	jmp	.L291
.L295:
	nop
	addq	$8, -16(%rbp)
	addl	$1, -4(%rbp)
.L291:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L295
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	opt_num_rest, .-opt_num_rest
	.section	.rodata
.LC68:
	.string	"%s: Missing argument: %s\n"
	.align 8
.LC69:
	.string	"%s: Extra argument after %s: \"%s\"\n"
.LC70:
	.string	"%s: Extra option: \"%s\"\n"
	.align 8
.LC71:
	.string	"%s: Extra (unknown) options: \"%s\" \"%s\"\n"
	.text
	.globl	opt_check_rest_arg
	.type	opt_check_rest_arg, @function
opt_check_rest_arg:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	opt_rest@PLT
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L297
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L298
.L297:
	cmpq	$0, -24(%rbp)
	jne	.L299
	movl	$1, %eax
	jmp	.L300
.L299:
	movq	-24(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC68(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L300
.L298:
	cmpq	$0, -24(%rbp)
	je	.L301
	movq	argv(%rip), %rax
	movl	opt_index(%rip), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L302
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L303
.L302:
	movl	$1, %eax
	jmp	.L300
.L303:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC69(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L300
.L301:
	call	opt_unknown@PLT
	testq	%rax, %rax
	jne	.L304
	movq	-8(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC70(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L305
.L304:
	call	opt_unknown@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	prog(%rip), %rsi
	leaq	.LC71(%rip), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	opt_printf_stderr@PLT
.L305:
	movl	$0, %eax
.L300:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	opt_check_rest_arg, .-opt_check_rest_arg
	.section	.rodata
.LC72:
	.string	""
.LC73:
	.string	"uri"
.LC74:
	.string	"val"
.LC75:
	.string	"dir"
.LC76:
	.string	"infile"
.LC77:
	.string	"outfile"
.LC78:
	.string	"+int"
.LC79:
	.string	"int"
.LC80:
	.string	"long"
.LC81:
	.string	"ulong"
.LC82:
	.string	"PEM|DER|ENGINE"
.LC83:
	.string	"PEM|DER"
.LC84:
	.string	"format"
.LC85:
	.string	"intmax"
.LC86:
	.string	"nonneg"
.LC87:
	.string	"uintmax"
.LC88:
	.string	"parm"
	.text
	.type	valtype2param, @function
valtype2param:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$117, %eax
	je	.L307
	cmpl	$117, %eax
	jg	.L308
	cmpl	$115, %eax
	je	.L309
	cmpl	$115, %eax
	jg	.L308
	cmpl	$112, %eax
	je	.L310
	cmpl	$112, %eax
	jg	.L308
	cmpl	$110, %eax
	je	.L311
	cmpl	$110, %eax
	jg	.L308
	cmpl	$108, %eax
	je	.L312
	cmpl	$108, %eax
	jg	.L308
	cmpl	$102, %eax
	je	.L313
	cmpl	$102, %eax
	jg	.L308
	cmpl	$85, %eax
	je	.L314
	cmpl	$85, %eax
	jg	.L308
	cmpl	$78, %eax
	je	.L315
	cmpl	$78, %eax
	jg	.L308
	cmpl	$77, %eax
	je	.L316
	cmpl	$77, %eax
	jg	.L308
	cmpl	$70, %eax
	je	.L317
	cmpl	$70, %eax
	jg	.L308
	cmpl	$69, %eax
	je	.L318
	cmpl	$69, %eax
	jg	.L308
	cmpl	$62, %eax
	je	.L319
	cmpl	$62, %eax
	jg	.L308
	cmpl	$60, %eax
	je	.L320
	cmpl	$60, %eax
	jg	.L308
	cmpl	$58, %eax
	je	.L321
	cmpl	$58, %eax
	jg	.L308
	cmpl	$47, %eax
	je	.L322
	cmpl	$47, %eax
	jg	.L308
	testl	%eax, %eax
	je	.L323
	cmpl	$45, %eax
	jne	.L308
.L323:
	leaq	.LC72(%rip), %rax
	jmp	.L324
.L321:
	leaq	.LC73(%rip), %rax
	jmp	.L324
.L309:
	leaq	.LC74(%rip), %rax
	jmp	.L324
.L322:
	leaq	.LC75(%rip), %rax
	jmp	.L324
.L320:
	leaq	.LC76(%rip), %rax
	jmp	.L324
.L319:
	leaq	.LC77(%rip), %rax
	jmp	.L324
.L310:
	leaq	.LC78(%rip), %rax
	jmp	.L324
.L311:
	leaq	.LC79(%rip), %rax
	jmp	.L324
.L312:
	leaq	.LC80(%rip), %rax
	jmp	.L324
.L307:
	leaq	.LC81(%rip), %rax
	jmp	.L324
.L318:
	leaq	.LC82(%rip), %rax
	jmp	.L324
.L317:
	leaq	.LC83(%rip), %rax
	jmp	.L324
.L313:
	leaq	.LC84(%rip), %rax
	jmp	.L324
.L316:
	leaq	.LC85(%rip), %rax
	jmp	.L324
.L315:
	leaq	.LC86(%rip), %rax
	jmp	.L324
.L314:
	leaq	.LC87(%rip), %rax
	jmp	.L324
.L308:
	leaq	.LC88(%rip), %rax
.L324:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	valtype2param, .-valtype2param
	.section	.rodata
.LC89:
	.string	"(No additional info)"
.LC90:
	.string	"\nParameters:\n"
.LC91:
	.string	"%s  %s\n"
.LC92:
	.string	"-"
.LC93:
	.string	"*"
.LC94:
	.string	"%s"
	.text
	.type	opt_print, @function
opt_print:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	%edx, -128(%rbp)
	cmpl	$80, -128(%rbp)
	jle	.L326
	movl	$80, -128(%rbp)
.L326:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L327
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L328
.L327:
	leaq	.LC89(%rip), %rax
	movq	%rax, -8(%rbp)
.L328:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_HELP_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L329
	leaq	prog(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L325
.L329:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_SECTION_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L331
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	leaq	prog(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L325
.L331:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_PARAM_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L332
	leaq	.LC90(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L325
.L332:
	leaq	-112(%rbp), %rax
	movl	$80, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$0, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_MORE_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L333
	movl	-128(%rbp), %eax
	cltq
	movb	$0, -112(%rbp,%rax)
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rax
	leaq	.LC91(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	jmp	.L325
.L333:
	movl	$0, -12(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.L334
	leaq	.LC92(%rip), %rax
	jmp	.L335
.L334:
	leaq	.LC72(%rip), %rax
.L335:
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.L336
	movl	-16(%rbp), %eax
	jmp	.L337
.L336:
	movl	$30, %eax
.L337:
	addl	%eax, -12(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L338
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L339
.L338:
	leaq	.LC93(%rip), %rax
.L339:
	leaq	.LC94(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.L340
	movl	-16(%rbp), %eax
	jmp	.L341
.L340:
	movl	$30, %eax
.L341:
	addl	%eax, -12(%rbp)
	movq	-120(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$45, %eax
	je	.L342
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	valtype2param
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.L343
	movl	-16(%rbp), %eax
	jmp	.L344
.L343:
	movl	$30, %eax
.L344:
	addl	%eax, -12(%rbp)
.L342:
	cmpl	$29, -12(%rbp)
	jg	.L345
	movl	-12(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jle	.L346
.L345:
	leaq	.LC17(%rip), %rdx
	leaq	.LC94(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	leaq	-112(%rbp), %rax
	movl	$81, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -12(%rbp)
.L346:
	movl	-12(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	cltq
	movb	$0, -112(%rbp,%rax)
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rax
	leaq	.LC91(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
.L325:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	opt_print, .-opt_print
	.section	.rodata
.LC95:
	.string	"Usage: %s [options]\n"
.LC96:
	.string	"Valid options are:\n"
	.text
	.globl	opt_help
	.type	opt_help, @function
opt_help:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -16(%rbp)
	movl	$5, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_HELP_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L349
.L353:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_MORE_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L359
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$45, %eax
	je	.L352
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	valtype2param
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
.L352:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L351
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L351
.L359:
	nop
.L351:
	addq	$24, -8(%rbp)
.L349:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L353
	cmpl	$30, -20(%rbp)
	jle	.L354
	movl	$30, -20(%rbp)
.L354:
	cmpl	$0, -24(%rbp)
	je	.L355
	leaq	prog(%rip), %rdx
	leaq	.LC95(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_SECTION_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L355
	leaq	prog(%rip), %rdx
	leaq	.LC96(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
.L355:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L356
.L358:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	OPT_PARAM_STR@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L357
	movl	$1, -16(%rbp)
.L357:
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	opt_print
	addq	$24, -8(%rbp)
.L356:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L358
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	opt_help, .-opt_help
	.globl	opt_isdir
	.type	opt_isdir, @function
opt_isdir:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	leaq	-144(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	jne	.L361
	movl	-120(%rbp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L363
.L361:
	movl	$-1, %eax
.L363:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	opt_isdir, .-opt_isdir
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
