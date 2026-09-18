	.file	"apps_shims.c"
	.text
	.section	.rodata
.LC0:
	.string	"../test/testutil/apps_shims.c"
.LC1:
	.string	"vp = OPENSSL_malloc(sz)"
	.align 8
.LC2:
	.string	"Could not allocate %zu bytes for %s\n"
	.text
	.globl	app_malloc
	.type	app_malloc, @function
app_malloc:
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
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$25, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L2
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$26, %esi
	movl	$0, %eax
	call	test_info@PLT
	call	abort@PLT
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	app_malloc, .-app_malloc
	.globl	opt_legacy_okay
	.type	opt_legacy_okay, @function
opt_legacy_okay:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	opt_legacy_okay, .-opt_legacy_okay
	.globl	opt_provider_option_given
	.type	opt_provider_option_given, @function
opt_provider_option_given:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	opt_provider_option_given, .-opt_provider_option_given
	.globl	app_get0_propq
	.type	app_get0_propq, @function
app_get0_propq:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	app_get0_propq, .-app_get0_propq
	.globl	app_get0_libctx
	.type	app_get0_libctx, @function
app_get0_libctx:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	app_get0_libctx, .-app_get0_libctx
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
