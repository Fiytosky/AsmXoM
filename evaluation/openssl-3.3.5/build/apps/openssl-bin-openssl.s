	.file	"openssl.c"
	.text
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB662:
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
.LFE662:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB663:
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
.LFE663:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.type	lh_FUNCTION_free, @function
lh_FUNCTION_free:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	lh_FUNCTION_free, .-lh_FUNCTION_free
	.type	lh_FUNCTION_insert, @function
lh_FUNCTION_insert:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	lh_FUNCTION_insert, .-lh_FUNCTION_insert
	.type	lh_FUNCTION_retrieve, @function
lh_FUNCTION_retrieve:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	lh_FUNCTION_retrieve, .-lh_FUNCTION_retrieve
	.type	lh_FUNCTION_doall_thunk, @function
lh_FUNCTION_doall_thunk:
.LFB673:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	lh_FUNCTION_doall_thunk, .-lh_FUNCTION_doall_thunk
	.type	lh_FUNCTION_doall_arg_thunk, @function
lh_FUNCTION_doall_arg_thunk:
.LFB674:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	lh_FUNCTION_doall_arg_thunk, .-lh_FUNCTION_doall_arg_thunk
	.type	lh_FUNCTION_new, @function
lh_FUNCTION_new:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_FUNCTION_doall_arg_thunk(%rip), %rsi
	leaq	lh_FUNCTION_doall_thunk(%rip), %rcx
	leaq	lh_FUNCTION_cfn_thunk(%rip), %rdx
	leaq	lh_FUNCTION_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	lh_FUNCTION_new, .-lh_FUNCTION_new
	.globl	default_config_file
	.bss
	.align 8
	.type	default_config_file, @object
	.size	default_config_file, 8
default_config_file:
	.zero	8
	.globl	bio_in
	.align 8
	.type	bio_in, @object
	.size	bio_in, 8
bio_in:
	.zero	8
	.globl	bio_out
	.align 8
	.type	bio_out, @object
	.size	bio_out, 8
bio_out:
	.zero	8
	.globl	bio_err
	.align 8
	.type	bio_err, @object
	.size	bio_err, 8
bio_err:
	.zero	8
	.section	.rodata
	.align 8
.LC0:
	.string	"The command %s was deprecated in version %s."
.LC1:
	.string	"The command %s is deprecated."
.LC2:
	.string	"unknown"
.LC3:
	.string	" Use '%s' instead."
.LC4:
	.string	"\n"
	.text
	.type	warn_deprecated, @function
warn_deprecated:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L16:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L17:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	warn_deprecated, .-warn_deprecated
	.section	.rodata
.LC5:
	.string	"OPENSSL_TEST_LIBCTX"
.LC6:
	.string	"1"
	.text
	.type	apps_startup, @function
apps_startup:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$1, %esi
	movl	$13, %edi
	call	signal@PLT
	movl	$0, %esi
	movl	$30272, %edi
	call	OPENSSL_init_ssl@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	call	setup_ui_method@PLT
	call	setup_engine_loader@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L21
	leaq	.LC6(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L21
	call	app_create_libctx@PLT
	testq	%rax, %rax
	jne	.L21
	movl	$0, %eax
	jmp	.L20
.L21:
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	apps_startup, .-apps_startup
	.type	apps_shutdown, @function
apps_shutdown:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	app_providers_cleanup@PLT
	call	app_get0_libctx@PLT
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	call	destroy_engine_loader@PLT
	call	destroy_ui_method@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	apps_shutdown, .-apps_shutdown
	.section	.rodata
.LC7:
	.string	"help"
	.section	.data.rel.local,"aw"
	.align 16
	.type	help_argv, @object
	.size	help_argv, 16
help_argv:
	.quad	.LC7
	.quad	0
	.section	.rodata
.LC8:
	.string	"version"
	.section	.data.rel.local
	.align 16
	.type	version_argv, @object
	.size	version_argv, 16
version_argv:
	.quad	.LC8
	.quad	0
	.section	.rodata
.LC9:
	.string	"apps_startup"
.LC10:
	.string	"prog_init"
	.align 8
.LC11:
	.string	"FATAL: Startup failure (dev note: %s()) for %s\n"
	.align 8
.LC12:
	.string	"%s: could not get default config file\n"
.LC13:
	.string	"-help"
.LC14:
	.string	"--help"
.LC15:
	.string	"-h"
.LC16:
	.string	"--h"
.LC17:
	.string	"-version"
.LC18:
	.string	"--version"
.LC19:
	.string	"-v"
.LC20:
	.string	"--v"
.LC21:
	.string	"../apps/openssl.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -112(%rbp)
	movl	$32769, %edi
	call	dup_bio_in@PLT
	movq	bio_in@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movl	$32769, %edi
	call	dup_bio_out@PLT
	movq	bio_out@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movl	$32769, %edi
	call	dup_bio_err@PLT
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	leaq	.LC9(%rip), %rax
	movq	%rax, -16(%rbp)
	call	apps_startup
	testl	%eax, %eax
	je	.L24
	leaq	.LC10(%rip), %rax
	movq	%rax, -16(%rbp)
	call	prog_init
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L25
.L24:
	movq	-128(%rbp), %rax
	movq	(%rax), %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, -28(%rbp)
	jmp	.L26
.L25:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	opt_progname@PLT
	movq	%rax, -40(%rbp)
	call	CONF_get1_default_config_file@PLT
	movq	default_config_file@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	default_config_file@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movq	-40(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	app_bail_out@PLT
.L27:
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_FUNCTION_retrieve
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L28
	cmpl	$1, -116(%rbp)
	jle	.L29
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L30
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L30
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L30
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L29
.L30:
	movl	$1, %eax
	jmp	.L31
.L29:
	movl	$0, %eax
.L31:
	movl	%eax, -20(%rbp)
	cmpl	$1, -116(%rbp)
	jle	.L32
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L33
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L33
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L33
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC20(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L32
.L33:
	movl	$1, %eax
	jmp	.L34
.L32:
	movl	$0, %eax
.L34:
	movl	%eax, -24(%rbp)
	subl	$1, -116(%rbp)
	addq	$8, -128(%rbp)
	cmpl	$1, -116(%rbp)
	je	.L35
	cmpl	$0, -20(%rbp)
	jne	.L35
	cmpl	$0, -24(%rbp)
	jne	.L36
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L38
.L36:
	leaq	.LC8(%rip), %rax
	jmp	.L38
.L35:
	leaq	.LC7(%rip), %rax
.L38:
	movq	%rax, %rdi
	call	opt_appname@PLT
	jmp	.L39
.L28:
	movq	-128(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
.L39:
	cmpl	$0, -116(%rbp)
	je	.L40
	cmpl	$0, -20(%rbp)
	je	.L41
.L40:
	leaq	help_argv(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	do_cmd
	movl	%eax, -28(%rbp)
	jmp	.L26
.L41:
	cmpl	$0, -24(%rbp)
	je	.L42
	leaq	version_argv(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	do_cmd
	movl	%eax, -28(%rbp)
	jmp	.L26
.L42:
	movq	-128(%rbp), %rdx
	movl	-116(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	do_cmd
	movl	%eax, -28(%rbp)
.L26:
	movq	default_config_file@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC21(%rip), %rcx
	movl	$310, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	lh_FUNCTION_free
	movq	-104(%rbp), %rax
	leaq	.LC21(%rip), %rcx
	movl	$312, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	app_RAND_write@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$1, -28(%rbp)
.L43:
	movq	bio_in@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	call	apps_shutdown
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE681:
	.size	main, .-main
	.globl	help_options
	.section	.rodata
	.align 8
.LC22:
	.string	"Usage: help [options] [command]\n"
.LC23:
	.string	"General options:\n"
.LC24:
	.string	"Display this summary"
.LC25:
	.string	"Parameters:\n"
.LC26:
	.string	"command"
	.align 8
.LC27:
	.string	"Name of command to display help (optional)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	help_options, @object
	.size	help_options, 144
help_options:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC22
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC23
	.quad	.LC7
	.long	1
	.long	45
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
	.string	"Usage: %s\n"
.LC30:
	.string	"%s:\n\nStandard commands"
	.align 8
.LC31:
	.string	"\nMessage Digest commands (see the `dgst' command for more details)\n"
	.align 8
.LC32:
	.string	"\nCipher commands (see the `enc' command for more details)\n"
.LC33:
	.string	"%-*s"
.LC34:
	.string	"\n\n"
	.text
	.globl	help_main
	.type	help_main, @function
help_main:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movq	help_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx
	movl	-84(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -32(%rbp)
	jmp	.L45
.L50:
	cmpl	$0, -36(%rbp)
	jg	.L46
	cmpl	$-1, -36(%rbp)
	jge	.L47
	jmp	.L45
.L46:
	cmpl	$1, -36(%rbp)
	je	.L48
	jmp	.L45
.L47:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC28(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L59
.L48:
	movq	help_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, %eax
	jmp	.L59
.L45:
	call	opt_next@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L50
	call	opt_num_rest@PLT
	cmpl	$1, %eax
	jne	.L51
	call	opt_rest@PLT
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -64(%rbp)
	call	prog_init
	movq	%rax, %rcx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	$2, %esi
	movq	%rcx, %rdi
	call	do_cmd
	jmp	.L59
.L51:
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	jne	.L52
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC29(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L59
.L52:
	leaq	-44(%rbp), %rax
	movq	functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	calculate_columns@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC30(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -12(%rbp)
	movl	$0, -20(%rbp)
	movq	functions@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L53
.L58:
	movl	$0, -16(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movl	-44(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L54
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -16(%rbp)
.L54:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	je	.L55
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L56
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L56:
	cmpl	$2, -20(%rbp)
	jne	.L57
	movl	$1, -12(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L55
.L57:
	cmpl	$3, -20(%rbp)
	jne	.L55
	movl	$1, -12(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L55:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-40(%rbp), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$48, -8(%rbp)
.L53:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	help_main, .-help_main
	.section	.rodata
.LC35:
	.string	"no-"
.LC36:
	.string	"%s\n"
	.align 8
.LC37:
	.string	"Invalid command '%s'; type \"help\" for a list.\n"
	.text
	.type	do_cmd, @function
do_cmd:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	cmpl	$0, -76(%rbp)
	jle	.L61
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L62
.L61:
	movl	$0, %eax
	jmp	.L72
.L62:
	leaq	-64(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_FUNCTION_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L64
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	testq	%rax, %rax
	je	.L65
	movl	$2, -64(%rbp)
	movq	dgst_main@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L64
.L65:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	testq	%rax, %rax
	je	.L64
	movl	$3, -64(%rbp)
	movq	enc_main@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.L64:
	cmpq	$0, -8(%rbp)
	je	.L66
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	warn_deprecated
.L67:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	*%rcx
	jmp	.L72
.L66:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC35(%rip), %rcx
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L68
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	movl	$1, %eax
	jmp	.L69
.L68:
	movl	$0, %eax
.L69:
	testb	%al, %al
	je	.L70
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_FUNCTION_retrieve
	testq	%rax, %rax
	jne	.L71
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC36(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	leaq	3(%rax), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC36(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L72
.L70:
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC37(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	do_cmd, .-do_cmd
	.type	function_cmp, @function
function_cmp:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	function_cmp, .-function_cmp
	.type	function_hash, @function
function_hash:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_strhash@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	function_hash, .-function_hash
	.type	SortFnByName, @function
SortFnByName:
.LFB686:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L78
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L79
.L78:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	SortFnByName, .-SortFnByName
	.type	prog_init, @function
prog_init:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	prog_inited.1(%rip), %eax
	testl	%eax, %eax
	je	.L81
	movq	ret.0(%rip), %rax
	jmp	.L82
.L81:
	movl	$1, prog_inited.1(%rip)
	movq	$0, -16(%rbp)
	movq	functions@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L83
.L84:
	addq	$48, -8(%rbp)
	addq	$1, -16(%rbp)
.L83:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L84
	leaq	SortFnByName(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	functions@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movl	$48, %edx
	movq	%rax, %rsi
	call	qsort@PLT
	leaq	function_cmp(%rip), %rdx
	leaq	function_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_FUNCTION_new
	movq	%rax, ret.0(%rip)
	movq	ret.0(%rip), %rax
	testq	%rax, %rax
	jne	.L85
	movl	$0, %eax
	jmp	.L82
.L85:
	movq	functions@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L86
.L87:
	movq	ret.0(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_FUNCTION_insert
	addq	$48, -8(%rbp)
.L86:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	movq	ret.0(%rip), %rax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	prog_init, .-prog_init
	.local	prog_inited.1
	.comm	prog_inited.1,4,4
	.local	ret.0
	.comm	ret.0,8,8
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
