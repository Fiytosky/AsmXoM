	.file	"engine.c"
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
	.type	ossl_check_OPENSSL_CSTRING_type, @function
ossl_check_OPENSSL_CSTRING_type:
.LFB12:
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
.LFE12:
	.size	ossl_check_OPENSSL_CSTRING_type, .-ossl_check_OPENSSL_CSTRING_type
	.type	ossl_check_const_OPENSSL_CSTRING_sk_type, @function
ossl_check_const_OPENSSL_CSTRING_sk_type:
.LFB13:
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
.LFE13:
	.size	ossl_check_const_OPENSSL_CSTRING_sk_type, .-ossl_check_const_OPENSSL_CSTRING_sk_type
	.type	ossl_check_OPENSSL_CSTRING_sk_type, @function
ossl_check_OPENSSL_CSTRING_sk_type:
.LFB14:
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
.LFE14:
	.size	ossl_check_OPENSSL_CSTRING_sk_type, .-ossl_check_OPENSSL_CSTRING_sk_type
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
	.globl	engine_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] engine...\n"
.LC1:
	.string	"General options:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"t"
	.align 8
.LC5:
	.string	"Check that specified engine is available"
.LC6:
	.string	"pre"
	.align 8
.LC7:
	.string	"Run command against the ENGINE before loading it"
.LC8:
	.string	"post"
	.align 8
.LC9:
	.string	"Run command against the ENGINE after loading it"
.LC10:
	.string	"Output options:\n"
.LC11:
	.string	"v"
	.align 8
.LC12:
	.string	"List 'control commands' For each specified engine"
.LC13:
	.string	"vv"
	.align 8
.LC14:
	.string	"Also display each command's description"
.LC15:
	.string	"vvv"
	.align 8
.LC16:
	.string	"Also add the input flags for each command"
.LC17:
	.string	"vvvv"
	.align 8
.LC18:
	.string	"Also show internal input flags"
.LC19:
	.string	"c"
	.align 8
.LC20:
	.string	"List the capabilities of specified engine"
.LC21:
	.string	"tt"
	.align 8
.LC22:
	.string	"Display error trace for unavailable engines"
	.align 8
.LC23:
	.string	"Commands are like \"SO_PATH:/lib/libdriver.so\""
.LC24:
	.string	"Parameters:\n"
.LC25:
	.string	"engine"
.LC26:
	.string	"ID of engine(s) to load"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	engine_options, @object
	.size	engine_options, 408
engine_options:
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
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	5
	.long	115
	.quad	.LC7
	.quad	.LC8
	.long	6
	.long	115
	.quad	.LC9
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	100
	.long	45
	.quad	.LC12
	.quad	.LC13
	.long	101
	.long	45
	.quad	.LC14
	.quad	.LC15
	.long	102
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	103
	.long	45
	.quad	.LC18
	.quad	.LC19
	.long	2
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	4
	.long	45
	.quad	.LC22
	.quad	OPT_MORE_STR
	.long	0
	.long	1
	.quad	.LC23
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC24
	.quad	.LC25
	.long	0
	.long	0
	.quad	.LC26
	.quad	0
	.zero	16
	.section	.rodata
.LC27:
	.string	"engine buffer"
.LC28:
	.string	"../apps/engine.c"
	.text
	.type	append_buf, @function
append_buf:
.LFB678:
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
	movl	$256, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L18
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cltd
	idivl	-20(%rbp)
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L19
.L18:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L20
	movl	-24(%rbp), %eax
	addl	$2, %eax
	addl	%eax, -4(%rbp)
.L20:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L21
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cltd
	idivl	-20(%rbp)
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	leaq	.LC28(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$72, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L22
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rcx
	movl	$74, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L21:
	cmpl	$0, -24(%rbp)
	jle	.L19
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$44, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$32, (%rax)
.L19:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	append_buf, .-append_buf
	.section	.rodata
.LC29:
	.string	"%s%s(input flags): "
.LC30:
	.string	"<no flags>\n"
.LC31:
	.string	"[Internal] "
.LC32:
	.string	"NUMERIC"
.LC33:
	.string	"|"
.LC34:
	.string	"STRING"
.LC35:
	.string	"NO_INPUT"
.LC36:
	.string	"<0x%04X>"
.LC37:
	.string	"  <illegal flags!>"
.LC38:
	.string	"\n"
	.text
	.type	util_flags, @function
util_flags:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC29(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$0, -28(%rbp)
	jne	.L25
	leaq	.LC30(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L26
.L25:
	movl	-28(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L27
	leaq	.LC31(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L27:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L28
	leaq	.LC32(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -4(%rbp)
.L28:
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L29
	cmpl	$0, -4(%rbp)
	je	.L30
	leaq	.LC33(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -8(%rbp)
.L30:
	leaq	.LC34(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -4(%rbp)
.L29:
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L31
	cmpl	$0, -4(%rbp)
	je	.L32
	leaq	.LC33(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -8(%rbp)
.L32:
	leaq	.LC35(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -4(%rbp)
.L31:
	andl	$-16, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L33
	cmpl	$0, -4(%rbp)
	je	.L34
	leaq	.LC33(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L34:
	movl	-28(%rbp), %edx
	leaq	.LC36(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L33:
	cmpl	$0, -8(%rbp)
	je	.L35
	leaq	.LC37(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L35:
	leaq	.LC38(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	util_flags, .-util_flags
	.section	.rodata
.LC39:
	.string	"name buffer"
.LC40:
	.string	"description buffer"
.LC41:
	.string	", "
.LC42:
	.string	"%s"
.LC43:
	.string	"<no description>"
.LC44:
	.string	"%s: %s\n"
	.text
	.type	util_verbose, @function
util_verbose:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	testl	%eax, %eax
	je	.L37
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L38
.L37:
	movl	$1, %eax
	jmp	.L39
.L38:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L57
.L40:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$18, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L58
	movl	-44(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L43
	cmpl	$3, -60(%rbp)
	jle	.L44
.L43:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$14, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jle	.L59
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	.LC39(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$15, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	testl	%eax, %eax
	jle	.L60
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	js	.L61
	cmpl	$0, -48(%rbp)
	jle	.L48
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	.LC40(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$17, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	testl	%eax, %eax
	jle	.L62
.L48:
	cmpl	$0, -28(%rbp)
	jne	.L49
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	%eax, -28(%rbp)
	jmp	.L50
.L49:
	leaq	.LC41(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	%eax, -28(%rbp)
.L50:
	cmpl	$1, -60(%rbp)
	jne	.L51
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpl	%eax, -28(%rbp)
	jle	.L52
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movl	line_wrap.0(%rip), %eax
	cmpl	%eax, %edx
	jle	.L52
	leaq	.LC38(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	%eax, -28(%rbp)
.L52:
	movq	-16(%rbp), %rdx
	leaq	.LC42(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	%eax, -28(%rbp)
	jmp	.L44
.L51:
	cmpq	$0, -24(%rbp)
	je	.L53
	movq	-24(%rbp), %rax
	jmp	.L54
.L53:
	leaq	.LC43(%rip), %rax
.L54:
	movq	-16(%rbp), %rdx
	leaq	.LC44(%rip), %rsi
	movq	-72(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$2, -60(%rbp)
	jle	.L55
	movl	-44(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	util_flags
	testl	%eax, %eax
	je	.L63
.L55:
	movl	$0, -28(%rbp)
.L44:
	leaq	.LC28(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$222, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC28(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$224, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$12, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L40
	cmpl	$0, -28(%rbp)
	jle	.L56
	leaq	.LC38(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L56:
	movl	$1, -8(%rbp)
	jmp	.L41
.L57:
	nop
	jmp	.L41
.L58:
	nop
	jmp	.L41
.L59:
	nop
	jmp	.L41
.L60:
	nop
	jmp	.L41
.L61:
	nop
	jmp	.L41
.L62:
	nop
	jmp	.L41
.L63:
	nop
.L41:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	leaq	.LC28(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$234, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC28(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$235, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-8(%rbp), %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	util_verbose, .-util_verbose
	.section	.rodata
	.align 8
.LC45:
	.string	"[Error]: internal stack error\n"
	.align 8
.LC46:
	.string	"[Error]: command name too long\n"
.LC47:
	.string	"[Success]: %s\n"
.LC48:
	.string	"[Failure]: %s\n"
	.text
	.type	util_do_cmds, @function
util_do_cmds:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L65
	leaq	.LC45(%rip), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L64
.L65:
	movl	$0, -4(%rbp)
	jmp	.L67
.L73:
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movl	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L68
	movq	-24(%rbp), %rsi
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, -8(%rbp)
	jmp	.L69
.L68:
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	cmpl	$254, %eax
	jle	.L70
	leaq	.LC46(%rip), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L64
.L70:
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	leaq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movb	$0, -288(%rbp,%rax)
	addq	$1, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ENGINE_ctrl_cmd_string@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, -8(%rbp)
.L69:
	cmpl	$0, -8(%rbp)
	je	.L71
	movq	-24(%rbp), %rdx
	leaq	.LC47(%rip), %rcx
	movq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L72
.L71:
	movq	-24(%rbp), %rdx
	leaq	.LC48(%rip), %rcx
	movq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L72:
	addl	$1, -4(%rbp)
.L67:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L73
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	util_do_cmds, .-util_do_cmds
	.section	.rodata
.LC49:
	.string	"STORE(%s)"
	.text
	.type	util_store_cap, @function
util_store_cap:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_get0_engine@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L77
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_LOADER_get0_scheme@PLT
	movq	%rax, %rcx
	leaq	.LC49(%rip), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-272(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_buf
	testl	%eax, %eax
	jne	.L77
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
.L77:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	util_store_cap, .-util_store_cap
	.section	.rodata
.LC50:
	.string	"     "
.LC51:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC52:
	.string	"%s: Cannot mix flags and engine names.\n"
.LC53:
	.string	"(%s) %s\n"
.LC54:
	.string	"Loaded: (%s) %s\n"
.LC55:
	.string	"RSA"
.LC56:
	.string	"EC"
.LC57:
	.string	"DSA"
.LC58:
	.string	"DH"
.LC59:
	.string	"RAND"
.LC60:
	.string	" [%s]\n"
.LC61:
	.string	"[ available ]\n"
.LC62:
	.string	"[ unavailable ]\n"
	.text
	.globl	engine_main
	.type	engine_main, @function
engine_main:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movl	%edi, -228(%rbp)
	movq	%rsi, -240(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -64(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -72(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -80(%rbp)
	leaq	.LC50(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$32769, %edi
	call	dup_bio_out@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L139
	cmpq	$0, -72(%rbp)
	je	.L139
	cmpq	$0, -80(%rbp)
	je	.L139
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.L82
.L84:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	subl	$1, -228(%rbp)
	addq	$8, -240(%rbp)
.L82:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L83
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L84
.L83:
	movq	-240(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	engine_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx
	movl	-228(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	jmp	.L85
.L98:
	cmpl	$103, -116(%rbp)
	jg	.L85
	cmpl	$100, -116(%rbp)
	jge	.L86
	cmpl	$6, -116(%rbp)
	je	.L87
	cmpl	$6, -116(%rbp)
	jg	.L85
	cmpl	$5, -116(%rbp)
	je	.L88
	cmpl	$5, -116(%rbp)
	jg	.L85
	cmpl	$4, -116(%rbp)
	je	.L89
	cmpl	$4, -116(%rbp)
	jg	.L85
	cmpl	$3, -116(%rbp)
	je	.L90
	cmpl	$3, -116(%rbp)
	jg	.L85
	cmpl	$2, -116(%rbp)
	je	.L91
	cmpl	$2, -116(%rbp)
	jg	.L85
	cmpl	$0, -116(%rbp)
	jg	.L92
	cmpl	$-1, -116(%rbp)
	jge	.L93
	jmp	.L85
.L92:
	cmpl	$1, -116(%rbp)
	je	.L94
	jmp	.L85
.L93:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	leaq	.LC51(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L94:
	movq	engine_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -20(%rbp)
	jmp	.L81
.L86:
	movl	-116(%rbp), %eax
	subl	$99, %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.L85
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L85
.L91:
	movl	$1, -32(%rbp)
	jmp	.L85
.L89:
	addl	$1, -40(%rbp)
.L90:
	addl	$1, -36(%rbp)
	jmp	.L85
.L88:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L140
	jmp	.L85
.L87:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L141
	nop
.L85:
	call	opt_next@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jne	.L98
	call	opt_num_rest@PLT
	movl	%eax, -228(%rbp)
	call	opt_rest@PLT
	movq	%rax, -240(%rbp)
	jmp	.L99
.L101:
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L100
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	leaq	.LC51(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L81
.L100:
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	addq	$8, -240(%rbp)
.L99:
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L101
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L102
	call	ENGINE_get_first@PLT
	movq	%rax, -48(%rbp)
	jmp	.L103
.L104:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_next@PLT
	movq	%rax, -48(%rbp)
.L103:
	cmpq	$0, -48(%rbp)
	jne	.L104
.L102:
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L105
.L137:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_by_id@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L106
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_name@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	leaq	.LC53(%rip), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	util_do_cmds
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L107
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_name@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, %rdx
	leaq	.LC54(%rip), %rsi
	movq	-96(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L107:
	cmpl	$0, -32(%rbp)
	je	.L108
	movl	$256, -172(%rbp)
	movq	$0, -184(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_RSA@PLT
	testq	%rax, %rax
	je	.L109
	leaq	.LC55(%rip), %rdx
	leaq	-172(%rbp), %rcx
	leaq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_buf
	testl	%eax, %eax
	je	.L142
.L109:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_EC@PLT
	testq	%rax, %rax
	je	.L111
	leaq	.LC56(%rip), %rdx
	leaq	-172(%rbp), %rcx
	leaq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_buf
	testl	%eax, %eax
	je	.L143
.L111:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_DSA@PLT
	testq	%rax, %rax
	je	.L112
	leaq	.LC57(%rip), %rdx
	leaq	-172(%rbp), %rcx
	leaq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_buf
	testl	%eax, %eax
	je	.L144
.L112:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_DH@PLT
	testq	%rax, %rax
	je	.L113
	leaq	.LC58(%rip), %rdx
	leaq	-172(%rbp), %rcx
	leaq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_buf
	testl	%eax, %eax
	je	.L145
.L113:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_RAND@PLT
	testq	%rax, %rax
	je	.L114
	leaq	.LC59(%rip), %rdx
	leaq	-172(%rbp), %rcx
	leaq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_buf
	testl	%eax, %eax
	je	.L146
.L114:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_ciphers@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L147
	leaq	-192(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	-144(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -148(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L117
.L119:
	movq	-192(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	-172(%rbp), %rcx
	leaq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_buf
	testl	%eax, %eax
	je	.L148
	addl	$1, -52(%rbp)
.L117:
	movl	-52(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L119
	jmp	.L116
.L147:
	nop
.L116:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_digests@PLT
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.L149
	leaq	-192(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	-160(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -148(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L122
.L124:
	movq	-192(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	-172(%rbp), %rcx
	leaq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_buf
	testl	%eax, %eax
	je	.L150
	addl	$1, -52(%rbp)
.L122:
	movl	-52(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L124
	jmp	.L121
.L149:
	nop
.L121:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_pkey_meths@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L151
	leaq	-192(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	-168(%rbp), %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -148(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L127
.L129:
	movq	-192(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	-172(%rbp), %rcx
	leaq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_buf
	testl	%eax, %eax
	je	.L152
	addl	$1, -52(%rbp)
.L127:
	movl	-52(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L129
	jmp	.L126
.L151:
	nop
.L126:
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-172(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	$1, -200(%rbp)
	leaq	-224(%rbp), %rax
	leaq	util_store_cap(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_STORE_do_all_loaders@PLT
	movl	-200(%rbp), %eax
	testl	%eax, %eax
	jne	.L130
	nop
	jmp	.L81
.L130:
	movq	-184(%rbp), %rax
	testq	%rax, %rax
	je	.L131
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L131
	movq	-184(%rbp), %rdx
	leaq	.LC60(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L131:
	movq	-184(%rbp), %rax
	leaq	.LC28(%rip), %rcx
	movl	$464, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L108:
	cmpl	$0, -36(%rbp)
	je	.L132
	movq	-88(%rbp), %rdx
	leaq	.LC42(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	je	.L133
	leaq	.LC61(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	util_do_cmds
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	jmp	.L132
.L133:
	leaq	.LC62(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$0, -40(%rbp)
	je	.L134
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
.L134:
	call	ERR_clear_error@PLT
.L132:
	cmpl	$0, -28(%rbp)
	jle	.L135
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	util_verbose
	testl	%eax, %eax
	je	.L153
.L135:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	jmp	.L136
.L106:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	addl	$1, -20(%rbp)
	cmpl	$127, -20(%rbp)
	jle	.L136
	movl	$127, -20(%rbp)
.L136:
	addl	$1, -24(%rbp)
.L105:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L137
	jmp	.L81
.L139:
	nop
	jmp	.L81
.L140:
	nop
	jmp	.L81
.L141:
	nop
	jmp	.L81
.L142:
	nop
	jmp	.L81
.L143:
	nop
	jmp	.L81
.L144:
	nop
	jmp	.L81
.L145:
	nop
	jmp	.L81
.L146:
	nop
	jmp	.L81
.L148:
	nop
	jmp	.L81
.L150:
	nop
	jmp	.L81
.L152:
	nop
	jmp	.L81
.L153:
	nop
.L81:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	engine_main, .-engine_main
	.section	.rodata
	.align 4
	.type	line_wrap.0, @object
	.size	line_wrap.0, 4
line_wrap.0:
	.long	78
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
