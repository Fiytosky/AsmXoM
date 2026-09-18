	.file	"null_prov.c"
	.text
	.type	null_init, @function
null_init:
.LFB272:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE272:
	.size	null_init, .-null_init
	.type	null_update, @function
null_update:
.LFB273:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE273:
	.size	null_update, .-null_update
	.type	null_final, @function
null_final:
.LFB274:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE274:
	.size	null_final, .-null_final
	.type	nullmd_internal_init, @function
nullmd_internal_init:
.LFB275:
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
	je	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	null_init
	testl	%eax, %eax
	je	.L8
	movl	$1, %eax
	jmp	.L10
.L8:
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE275:
	.size	nullmd_internal_init, .-nullmd_internal_init
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/digests/null_prov.c"
	.text
	.type	nullmd_newctx, @function
nullmd_newctx:
.LFB276:
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
	je	.L12
	leaq	.LC0(%rip), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L13
.L12:
	movq	$0, -8(%rbp)
.L13:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE276:
	.size	nullmd_newctx, .-nullmd_newctx
	.type	nullmd_freectx, @function
nullmd_freectx:
.LFB277:
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
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$50, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE277:
	.size	nullmd_freectx, .-nullmd_freectx
	.type	nullmd_dupctx, @function
nullmd_dupctx:
.LFB278:
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
	je	.L17
	leaq	.LC0(%rip), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L18
.L17:
	movq	$0, -8(%rbp)
.L18:
	cmpq	$0, -8(%rbp)
	je	.L19
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L19:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE278:
	.size	nullmd_dupctx, .-nullmd_dupctx
	.type	nullmd_internal_final, @function
nullmd_internal_final:
.LFB279:
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
	je	.L22
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	null_final
	testl	%eax, %eax
	je	.L22
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L23
.L22:
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE279:
	.size	nullmd_internal_final, .-nullmd_internal_final
	.type	nullmd_get_params, @function
nullmd_get_params:
.LFB280:
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
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE280:
	.size	nullmd_get_params, .-nullmd_get_params
	.globl	ossl_nullmd_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_nullmd_functions, @object
	.size	ossl_nullmd_functions, 144
ossl_nullmd_functions:
	.long	1
	.zero	4
	.quad	nullmd_newctx
	.long	3
	.zero	4
	.quad	null_update
	.long	4
	.zero	4
	.quad	nullmd_internal_final
	.long	6
	.zero	4
	.quad	nullmd_freectx
	.long	7
	.zero	4
	.quad	nullmd_dupctx
	.long	8
	.zero	4
	.quad	nullmd_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	nullmd_internal_init
	.long	0
	.zero	4
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
