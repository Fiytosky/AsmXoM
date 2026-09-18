	.file	"app_provider.c"
	.text
	.local	provider_option_given
	.comm	provider_option_given,4,4
	.type	sk_OSSL_PROVIDER_new_null, @function
sk_OSSL_PROVIDER_new_null:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	sk_OSSL_PROVIDER_new_null, .-sk_OSSL_PROVIDER_new_null
	.type	sk_OSSL_PROVIDER_push, @function
sk_OSSL_PROVIDER_push:
.LFB641:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	sk_OSSL_PROVIDER_push, .-sk_OSSL_PROVIDER_push
	.type	sk_OSSL_PROVIDER_pop_free, @function
sk_OSSL_PROVIDER_pop_free:
.LFB645:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	sk_OSSL_PROVIDER_pop_free, .-sk_OSSL_PROVIDER_pop_free
	.local	app_providers
	.comm	app_providers,8,8
	.type	provider_free, @function
provider_free:
.LFB656:
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
	call	OSSL_PROVIDER_unload@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	provider_free, .-provider_free
	.section	.rodata
	.align 8
.LC0:
	.string	"%s: unable to load provider %s\nHint: use -provider-path option or OPENSSL_MODULES environment variable.\n"
	.text
	.globl	app_provider_load
	.type	app_provider_load, @function
app_provider_load:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	call	opt_getprog@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	app_providers(%rip), %rax
	testq	%rax, %rax
	jne	.L10
	call	sk_OSSL_PROVIDER_new_null
	movq	%rax, app_providers(%rip)
.L10:
	movq	app_providers(%rip), %rax
	testq	%rax, %rax
	je	.L11
	movq	app_providers(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_push
	testl	%eax, %eax
	jne	.L12
.L11:
	call	app_providers_cleanup@PLT
	movl	$0, %eax
	jmp	.L9
.L12:
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	app_provider_load, .-app_provider_load
	.globl	app_providers_cleanup
	.type	app_providers_cleanup, @function
app_providers_cleanup:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	app_providers(%rip), %rax
	leaq	provider_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROVIDER_pop_free
	movq	$0, app_providers(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	app_providers_cleanup, .-app_providers_cleanup
	.type	opt_provider_path, @function
opt_provider_path:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L15
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L15
	movq	$0, -8(%rbp)
.L15:
	call	app_get0_libctx@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PROVIDER_set_default_search_path@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	opt_provider_path, .-opt_provider_path
	.globl	opt_provider
	.type	opt_provider, @function
opt_provider:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	provider_option_given(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	$1, provider_option_given(%rip)
	movl	-36(%rbp), %eax
	cmpl	$1604, %eax
	je	.L18
	cmpl	$1604, %eax
	ja	.L19
	cmpl	$1603, %eax
	je	.L20
	cmpl	$1603, %eax
	ja	.L19
	cmpl	$1602, %eax
	je	.L21
	cmpl	$1602, %eax
	ja	.L19
	cmpl	$1600, %eax
	je	.L18
	cmpl	$1601, %eax
	je	.L22
	jmp	.L19
.L18:
	movl	$1, %eax
	jmp	.L23
.L22:
	call	opt_arg@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	app_provider_load@PLT
	jmp	.L23
.L21:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	opt_provider_path
	jmp	.L23
.L20:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	app_set_propq@PLT
	jmp	.L23
.L19:
	movl	-20(%rbp), %eax
	movl	%eax, provider_option_given(%rip)
	movl	$0, %eax
.L23:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	opt_provider, .-opt_provider
	.globl	opt_provider_option_given
	.type	opt_provider_option_given, @function
opt_provider_option_given:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	provider_option_given(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	opt_provider_option_given, .-opt_provider_option_given
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
