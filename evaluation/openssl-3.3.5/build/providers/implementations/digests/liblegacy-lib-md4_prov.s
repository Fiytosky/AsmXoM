	.file	"md4_prov.c"
	.text
	.type	md4_internal_init, @function
md4_internal_init:
.LFB272:
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
	je	.L2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	MD4_Init@PLT
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L4
.L2:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE272:
	.size	md4_internal_init, .-md4_internal_init
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/digests/md4_prov.c"
	.text
	.type	md4_newctx, @function
md4_newctx:
.LFB273:
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
	je	.L6
	leaq	.LC0(%rip), %rax
	movl	$22, %edx
	movq	%rax, %rsi
	movl	$92, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L7
.L6:
	movq	$0, -8(%rbp)
.L7:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE273:
	.size	md4_newctx, .-md4_newctx
	.type	md4_freectx, @function
md4_freectx:
.LFB274:
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
	movl	$22, %ecx
	movl	$92, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE274:
	.size	md4_freectx, .-md4_freectx
	.type	md4_dupctx, @function
md4_dupctx:
.LFB275:
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
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L11
	leaq	.LC0(%rip), %rax
	movl	$22, %edx
	movq	%rax, %rsi
	movl	$92, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L12
.L11:
	movq	$0, -24(%rbp)
.L12:
	cmpq	$0, -24(%rbp)
	je	.L13
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	76(%rdx), %rcx
	movq	84(%rdx), %rbx
	movq	%rcx, 76(%rax)
	movq	%rbx, 84(%rax)
.L13:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE275:
	.size	md4_dupctx, .-md4_dupctx
	.type	md4_internal_final, @function
md4_internal_final:
.LFB276:
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
	je	.L16
	cmpq	$15, -32(%rbp)
	jbe	.L16
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD4_Final@PLT
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	movq	$16, (%rax)
	movl	$1, %eax
	jmp	.L17
.L16:
	movl	$0, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE276:
	.size	md4_internal_final, .-md4_internal_final
	.type	md4_get_params, @function
md4_get_params:
.LFB277:
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
	movl	$64, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE277:
	.size	md4_get_params, .-md4_get_params
	.globl	ossl_md4_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_md4_functions, @object
	.size	ossl_md4_functions, 144
ossl_md4_functions:
	.long	1
	.zero	4
	.quad	md4_newctx
	.long	3
	.zero	4
	.quad	MD4_Update
	.long	4
	.zero	4
	.quad	md4_internal_final
	.long	6
	.zero	4
	.quad	md4_freectx
	.long	7
	.zero	4
	.quad	md4_dupctx
	.long	8
	.zero	4
	.quad	md4_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	md4_internal_init
	.long	0
	.zero	4
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
