	.file	"md5_sha1_prov.c"
	.text
	.section	.rodata
.LC0:
	.string	"ssl3-ms"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_md5_sha1_settable_ctx_params, @object
	.size	known_md5_sha1_settable_ctx_params, 80
known_md5_sha1_settable_ctx_params:
	.quad	.LC0
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	md5_sha1_settable_ctx_params, @function
md5_sha1_settable_ctx_params:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_md5_sha1_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	md5_sha1_settable_ctx_params, .-md5_sha1_settable_ctx_params
	.type	md5_sha1_set_ctx_params, @function
md5_sha1_set_ctx_params:
.LFB321:
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
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L7
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$29, %esi
	movq	%rax, %rdi
	call	ossl_md5_sha1_ctrl@PLT
	jmp	.L5
.L7:
	movl	$1, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	md5_sha1_set_ctx_params, .-md5_sha1_set_ctx_params
	.type	md5_sha1_internal_init, @function
md5_sha1_internal_init:
.LFB322:
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
	call	ossl_md5_sha1_init@PLT
	testl	%eax, %eax
	je	.L9
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	md5_sha1_set_ctx_params
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
.LFE322:
	.size	md5_sha1_internal_init, .-md5_sha1_internal_init
	.section	.rodata
	.align 8
.LC1:
	.string	"../providers/implementations/digests/md5_sha1_prov.c"
	.text
	.type	md5_sha1_newctx, @function
md5_sha1_newctx:
.LFB323:
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
	movl	$188, %edi
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
.LFE323:
	.size	md5_sha1_newctx, .-md5_sha1_newctx
	.type	md5_sha1_freectx, @function
md5_sha1_freectx:
.LFB324:
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
	movl	$188, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	md5_sha1_freectx, .-md5_sha1_freectx
	.type	md5_sha1_dupctx, @function
md5_sha1_dupctx:
.LFB325:
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
	je	.L18
	leaq	.LC1(%rip), %rax
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$188, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L19
.L18:
	movq	$0, -24(%rbp)
.L19:
	cmpq	$0, -24(%rbp)
	je	.L20
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
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	112(%rdx), %rcx
	movq	120(%rdx), %rbx
	movq	%rcx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	128(%rdx), %rcx
	movq	136(%rdx), %rbx
	movq	%rcx, 128(%rax)
	movq	%rbx, 136(%rax)
	movq	144(%rdx), %rcx
	movq	152(%rdx), %rbx
	movq	%rcx, 144(%rax)
	movq	%rbx, 152(%rax)
	movq	160(%rdx), %rcx
	movq	168(%rdx), %rbx
	movq	%rcx, 160(%rax)
	movq	%rbx, 168(%rax)
	movq	172(%rdx), %rcx
	movq	180(%rdx), %rbx
	movq	%rcx, 172(%rax)
	movq	%rbx, 180(%rax)
.L20:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	md5_sha1_dupctx, .-md5_sha1_dupctx
	.type	md5_sha1_internal_final, @function
md5_sha1_internal_final:
.LFB326:
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
	cmpq	$35, -32(%rbp)
	jbe	.L23
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_md5_sha1_final@PLT
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movq	$36, (%rax)
	movl	$1, %eax
	jmp	.L24
.L23:
	movl	$0, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	md5_sha1_internal_final, .-md5_sha1_internal_final
	.type	md5_sha1_get_params, @function
md5_sha1_get_params:
.LFB327:
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
	movl	$36, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE327:
	.size	md5_sha1_get_params, .-md5_sha1_get_params
	.globl	ossl_md5_sha1_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_md5_sha1_functions, @object
	.size	ossl_md5_sha1_functions, 176
ossl_md5_sha1_functions:
	.long	1
	.zero	4
	.quad	md5_sha1_newctx
	.long	3
	.zero	4
	.quad	ossl_md5_sha1_update
	.long	4
	.zero	4
	.quad	md5_sha1_internal_final
	.long	6
	.zero	4
	.quad	md5_sha1_freectx
	.long	7
	.zero	4
	.quad	md5_sha1_dupctx
	.long	8
	.zero	4
	.quad	md5_sha1_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	md5_sha1_internal_init
	.long	12
	.zero	4
	.quad	md5_sha1_settable_ctx_params
	.long	9
	.zero	4
	.quad	md5_sha1_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
