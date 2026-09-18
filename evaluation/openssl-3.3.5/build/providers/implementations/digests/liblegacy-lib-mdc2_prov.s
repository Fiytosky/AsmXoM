	.file	"mdc2_prov.c"
	.text
	.section	.rodata
.LC0:
	.string	"pad-type"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_mdc2_settable_ctx_params, @object
	.size	known_mdc2_settable_ctx_params, 80
known_mdc2_settable_ctx_params:
	.quad	.LC0
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	mdc2_settable_ctx_params, @function
mdc2_settable_ctx_params:
.LFB316:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_mdc2_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE316:
	.size	mdc2_settable_ctx_params, .-mdc2_settable_ctx_params
	.section	.rodata
	.align 8
.LC1:
	.string	"../providers/implementations/digests/mdc2_prov.c"
	.text
	.type	mdc2_set_ctx_params, @function
mdc2_set_ctx_params:
.LFB317:
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
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	cmpq	$0, -32(%rbp)
	jne	.L6
	movl	$1, %eax
	jmp	.L5
.L6:
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L7
	movq	-8(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L7
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L5
.L7:
	movl	$1, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE317:
	.size	mdc2_set_ctx_params, .-mdc2_set_ctx_params
	.type	mdc2_internal_init, @function
mdc2_internal_init:
.LFB318:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	MDC2_Init@PLT
	testl	%eax, %eax
	je	.L9
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mdc2_set_ctx_params
	testl	%eax, %eax
	je	.L9
	movl	$1, %eax
	jmp	.L11
.L9:
	movl	$0, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE318:
	.size	mdc2_internal_init, .-mdc2_internal_init
	.type	mdc2_newctx, @function
mdc2_newctx:
.LFB319:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L13
	leaq	.LC1(%rip), %rax
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L14
.L13:
	movq	$0, -8(%rbp)
.L14:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE319:
	.size	mdc2_newctx, .-mdc2_newctx
	.type	mdc2_freectx, @function
mdc2_freectx:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$58, %ecx
	movl	$32, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	mdc2_freectx, .-mdc2_freectx
	.type	mdc2_dupctx, @function
mdc2_dupctx:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L18
	leaq	.LC1(%rip), %rax
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L19
.L18:
	movq	$0, -8(%rbp)
.L19:
	cmpq	$0, -8(%rbp)
	je	.L20
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L20:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	mdc2_dupctx, .-mdc2_dupctx
	.type	mdc2_internal_final, @function
mdc2_internal_final:
.LFB322:
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
	movq	%rcx, -32(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L23
	cmpq	$15, -32(%rbp)
	jbe	.L23
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MDC2_Final@PLT
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movq	$16, (%rax)
	movl	$1, %eax
	jmp	.L24
.L23:
	movl	$0, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	mdc2_internal_final, .-mdc2_internal_final
	.type	mdc2_get_params, @function
mdc2_get_params:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	mdc2_get_params, .-mdc2_get_params
	.globl	ossl_mdc2_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_mdc2_functions, @object
	.size	ossl_mdc2_functions, 176
ossl_mdc2_functions:
	.long	1
	.zero	4
	.quad	mdc2_newctx
	.long	3
	.zero	4
	.quad	MDC2_Update
	.long	4
	.zero	4
	.quad	mdc2_internal_final
	.long	6
	.zero	4
	.quad	mdc2_freectx
	.long	7
	.zero	4
	.quad	mdc2_dupctx
	.long	8
	.zero	4
	.quad	mdc2_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	mdc2_internal_init
	.long	12
	.zero	4
	.quad	mdc2_settable_ctx_params
	.long	9
	.zero	4
	.quad	mdc2_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"mdc2_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
