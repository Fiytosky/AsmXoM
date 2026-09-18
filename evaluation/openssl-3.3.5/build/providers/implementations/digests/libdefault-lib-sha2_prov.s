	.file	"sha2_prov.c"
	.text
	.section	.rodata
.LC0:
	.string	"ssl3-ms"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_sha1_settable_ctx_params, @object
	.size	known_sha1_settable_ctx_params, 80
known_sha1_settable_ctx_params:
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
	.type	sha1_settable_ctx_params, @function
sha1_settable_ctx_params:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_sha1_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	sha1_settable_ctx_params, .-sha1_settable_ctx_params
	.type	sha1_set_ctx_params, @function
sha1_set_ctx_params:
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
	call	ossl_sha1_ctrl@PLT
	jmp	.L5
.L7:
	movl	$1, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	sha1_set_ctx_params, .-sha1_set_ctx_params
	.type	sha1_internal_init, @function
sha1_internal_init:
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
	call	SHA1_Init@PLT
	testl	%eax, %eax
	je	.L9
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sha1_set_ctx_params
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
	.size	sha1_internal_init, .-sha1_internal_init
	.section	.rodata
	.align 8
.LC1:
	.string	"../providers/implementations/digests/sha2_prov.c"
	.text
	.type	sha1_newctx, @function
sha1_newctx:
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
	movl	$60, %edx
	movq	%rax, %rsi
	movl	$96, %edi
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
	.size	sha1_newctx, .-sha1_newctx
	.type	sha1_freectx, @function
sha1_freectx:
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
	movl	$60, %ecx
	movl	$96, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	sha1_freectx, .-sha1_freectx
	.type	sha1_dupctx, @function
sha1_dupctx:
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
	movl	$60, %edx
	movq	%rax, %rsi
	movl	$96, %edi
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
.L20:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	sha1_dupctx, .-sha1_dupctx
	.type	sha1_internal_final, @function
sha1_internal_final:
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
	cmpq	$19, -32(%rbp)
	jbe	.L23
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movq	$20, (%rax)
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
	.size	sha1_internal_final, .-sha1_internal_final
	.type	sha1_get_params, @function
sha1_get_params:
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
	movl	$2, %ecx
	movl	$20, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE327:
	.size	sha1_get_params, .-sha1_get_params
	.globl	ossl_sha1_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_sha1_functions, @object
	.size	ossl_sha1_functions, 176
ossl_sha1_functions:
	.long	1
	.zero	4
	.quad	sha1_newctx
	.long	3
	.zero	4
	.quad	SHA1_Update
	.long	4
	.zero	4
	.quad	sha1_internal_final
	.long	6
	.zero	4
	.quad	sha1_freectx
	.long	7
	.zero	4
	.quad	sha1_dupctx
	.long	8
	.zero	4
	.quad	sha1_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	sha1_internal_init
	.long	12
	.zero	4
	.quad	sha1_settable_ctx_params
	.long	9
	.zero	4
	.quad	sha1_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sha224_internal_init, @function
sha224_internal_init:
.LFB328:
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
	je	.L28
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SHA224_Init@PLT
	testl	%eax, %eax
	je	.L28
	movl	$1, %eax
	jmp	.L30
.L28:
	movl	$0, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE328:
	.size	sha224_internal_init, .-sha224_internal_init
	.type	sha224_newctx, @function
sha224_newctx:
.LFB329:
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
	je	.L32
	leaq	.LC1(%rip), %rax
	movl	$66, %edx
	movq	%rax, %rsi
	movl	$112, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L33
.L32:
	movq	$0, -8(%rbp)
.L33:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE329:
	.size	sha224_newctx, .-sha224_newctx
	.type	sha224_freectx, @function
sha224_freectx:
.LFB330:
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
	movl	$66, %ecx
	movl	$112, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE330:
	.size	sha224_freectx, .-sha224_freectx
	.type	sha224_dupctx, @function
sha224_dupctx:
.LFB331:
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
	je	.L37
	leaq	.LC1(%rip), %rax
	movl	$66, %edx
	movq	%rax, %rsi
	movl	$112, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L38
.L37:
	movq	$0, -24(%rbp)
.L38:
	cmpq	$0, -24(%rbp)
	je	.L39
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
.L39:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE331:
	.size	sha224_dupctx, .-sha224_dupctx
	.type	sha224_internal_final, @function
sha224_internal_final:
.LFB332:
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
	je	.L42
	cmpq	$27, -32(%rbp)
	jbe	.L42
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA224_Final@PLT
	testl	%eax, %eax
	je	.L42
	movq	-24(%rbp), %rax
	movq	$28, (%rax)
	movl	$1, %eax
	jmp	.L43
.L42:
	movl	$0, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE332:
	.size	sha224_internal_final, .-sha224_internal_final
	.type	sha224_get_params, @function
sha224_get_params:
.LFB333:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movl	$28, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE333:
	.size	sha224_get_params, .-sha224_get_params
	.globl	ossl_sha224_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_sha224_functions, @object
	.size	ossl_sha224_functions, 144
ossl_sha224_functions:
	.long	1
	.zero	4
	.quad	sha224_newctx
	.long	3
	.zero	4
	.quad	SHA224_Update
	.long	4
	.zero	4
	.quad	sha224_internal_final
	.long	6
	.zero	4
	.quad	sha224_freectx
	.long	7
	.zero	4
	.quad	sha224_dupctx
	.long	8
	.zero	4
	.quad	sha224_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	sha224_internal_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sha256_internal_init, @function
sha256_internal_init:
.LFB334:
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
	je	.L47
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	testl	%eax, %eax
	je	.L47
	movl	$1, %eax
	jmp	.L49
.L47:
	movl	$0, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE334:
	.size	sha256_internal_init, .-sha256_internal_init
	.type	sha256_newctx, @function
sha256_newctx:
.LFB335:
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
	je	.L51
	leaq	.LC1(%rip), %rax
	movl	$71, %edx
	movq	%rax, %rsi
	movl	$112, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L52
.L51:
	movq	$0, -8(%rbp)
.L52:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE335:
	.size	sha256_newctx, .-sha256_newctx
	.type	sha256_freectx, @function
sha256_freectx:
.LFB336:
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
	movl	$71, %ecx
	movl	$112, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE336:
	.size	sha256_freectx, .-sha256_freectx
	.type	sha256_dupctx, @function
sha256_dupctx:
.LFB337:
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
	je	.L56
	leaq	.LC1(%rip), %rax
	movl	$71, %edx
	movq	%rax, %rsi
	movl	$112, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L57
.L56:
	movq	$0, -24(%rbp)
.L57:
	cmpq	$0, -24(%rbp)
	je	.L58
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
.L58:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE337:
	.size	sha256_dupctx, .-sha256_dupctx
	.type	sha256_internal_final, @function
sha256_internal_final:
.LFB338:
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
	je	.L61
	cmpq	$31, -32(%rbp)
	jbe	.L61
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA256_Final@PLT
	testl	%eax, %eax
	je	.L61
	movq	-24(%rbp), %rax
	movq	$32, (%rax)
	movl	$1, %eax
	jmp	.L62
.L61:
	movl	$0, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE338:
	.size	sha256_internal_final, .-sha256_internal_final
	.type	sha256_get_params, @function
sha256_get_params:
.LFB339:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movl	$32, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE339:
	.size	sha256_get_params, .-sha256_get_params
	.globl	ossl_sha256_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_sha256_functions, @object
	.size	ossl_sha256_functions, 144
ossl_sha256_functions:
	.long	1
	.zero	4
	.quad	sha256_newctx
	.long	3
	.zero	4
	.quad	SHA256_Update
	.long	4
	.zero	4
	.quad	sha256_internal_final
	.long	6
	.zero	4
	.quad	sha256_freectx
	.long	7
	.zero	4
	.quad	sha256_dupctx
	.long	8
	.zero	4
	.quad	sha256_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	sha256_internal_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sha256_192_internal_init, @function
sha256_192_internal_init:
.LFB340:
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
	je	.L66
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sha256_192_init@PLT
	testl	%eax, %eax
	je	.L66
	movl	$1, %eax
	jmp	.L68
.L66:
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE340:
	.size	sha256_192_internal_init, .-sha256_192_internal_init
	.type	sha256_192_newctx, @function
sha256_192_newctx:
.LFB341:
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
	je	.L70
	leaq	.LC1(%rip), %rax
	movl	$76, %edx
	movq	%rax, %rsi
	movl	$112, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L71
.L70:
	movq	$0, -8(%rbp)
.L71:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE341:
	.size	sha256_192_newctx, .-sha256_192_newctx
	.type	sha256_192_freectx, @function
sha256_192_freectx:
.LFB342:
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
	movl	$76, %ecx
	movl	$112, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE342:
	.size	sha256_192_freectx, .-sha256_192_freectx
	.type	sha256_192_dupctx, @function
sha256_192_dupctx:
.LFB343:
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
	je	.L75
	leaq	.LC1(%rip), %rax
	movl	$76, %edx
	movq	%rax, %rsi
	movl	$112, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L76
.L75:
	movq	$0, -24(%rbp)
.L76:
	cmpq	$0, -24(%rbp)
	je	.L77
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
.L77:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE343:
	.size	sha256_192_dupctx, .-sha256_192_dupctx
	.type	sha256_192_internal_final, @function
sha256_192_internal_final:
.LFB344:
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
	je	.L80
	cmpq	$23, -32(%rbp)
	jbe	.L80
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA256_Final@PLT
	testl	%eax, %eax
	je	.L80
	movq	-24(%rbp), %rax
	movq	$24, (%rax)
	movl	$1, %eax
	jmp	.L81
.L80:
	movl	$0, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE344:
	.size	sha256_192_internal_final, .-sha256_192_internal_final
	.type	sha256_192_get_params, @function
sha256_192_get_params:
.LFB345:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movl	$24, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE345:
	.size	sha256_192_get_params, .-sha256_192_get_params
	.globl	ossl_sha256_192_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_sha256_192_functions, @object
	.size	ossl_sha256_192_functions, 144
ossl_sha256_192_functions:
	.long	1
	.zero	4
	.quad	sha256_192_newctx
	.long	3
	.zero	4
	.quad	SHA256_Update
	.long	4
	.zero	4
	.quad	sha256_192_internal_final
	.long	6
	.zero	4
	.quad	sha256_192_freectx
	.long	7
	.zero	4
	.quad	sha256_192_dupctx
	.long	8
	.zero	4
	.quad	sha256_192_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	sha256_192_internal_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sha384_internal_init, @function
sha384_internal_init:
.LFB346:
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
	je	.L85
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SHA384_Init@PLT
	testl	%eax, %eax
	je	.L85
	movl	$1, %eax
	jmp	.L87
.L85:
	movl	$0, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE346:
	.size	sha384_internal_init, .-sha384_internal_init
	.type	sha384_newctx, @function
sha384_newctx:
.LFB347:
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
	je	.L89
	leaq	.LC1(%rip), %rax
	movl	$81, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L90
.L89:
	movq	$0, -8(%rbp)
.L90:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	sha384_newctx, .-sha384_newctx
	.type	sha384_freectx, @function
sha384_freectx:
.LFB348:
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
	movl	$81, %ecx
	movl	$216, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE348:
	.size	sha384_freectx, .-sha384_freectx
	.type	sha384_dupctx, @function
sha384_dupctx:
.LFB349:
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
	je	.L94
	leaq	.LC1(%rip), %rax
	movl	$81, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L95
.L94:
	movq	$0, -24(%rbp)
.L95:
	cmpq	$0, -24(%rbp)
	je	.L96
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
	movq	176(%rdx), %rcx
	movq	184(%rdx), %rbx
	movq	%rcx, 176(%rax)
	movq	%rbx, 184(%rax)
	movq	192(%rdx), %rcx
	movq	200(%rdx), %rbx
	movq	%rcx, 192(%rax)
	movq	%rbx, 200(%rax)
	movq	208(%rdx), %rdx
	movq	%rdx, 208(%rax)
.L96:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE349:
	.size	sha384_dupctx, .-sha384_dupctx
	.type	sha384_internal_final, @function
sha384_internal_final:
.LFB350:
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
	je	.L99
	cmpq	$47, -32(%rbp)
	jbe	.L99
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA384_Final@PLT
	testl	%eax, %eax
	je	.L99
	movq	-24(%rbp), %rax
	movq	$48, (%rax)
	movl	$1, %eax
	jmp	.L100
.L99:
	movl	$0, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE350:
	.size	sha384_internal_final, .-sha384_internal_final
	.type	sha384_get_params, @function
sha384_get_params:
.LFB351:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movl	$48, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE351:
	.size	sha384_get_params, .-sha384_get_params
	.globl	ossl_sha384_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_sha384_functions, @object
	.size	ossl_sha384_functions, 144
ossl_sha384_functions:
	.long	1
	.zero	4
	.quad	sha384_newctx
	.long	3
	.zero	4
	.quad	SHA384_Update
	.long	4
	.zero	4
	.quad	sha384_internal_final
	.long	6
	.zero	4
	.quad	sha384_freectx
	.long	7
	.zero	4
	.quad	sha384_dupctx
	.long	8
	.zero	4
	.quad	sha384_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	sha384_internal_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sha512_internal_init, @function
sha512_internal_init:
.LFB352:
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
	je	.L104
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SHA512_Init@PLT
	testl	%eax, %eax
	je	.L104
	movl	$1, %eax
	jmp	.L106
.L104:
	movl	$0, %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE352:
	.size	sha512_internal_init, .-sha512_internal_init
	.type	sha512_newctx, @function
sha512_newctx:
.LFB353:
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
	je	.L108
	leaq	.LC1(%rip), %rax
	movl	$86, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L109
.L108:
	movq	$0, -8(%rbp)
.L109:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE353:
	.size	sha512_newctx, .-sha512_newctx
	.type	sha512_freectx, @function
sha512_freectx:
.LFB354:
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
	movl	$86, %ecx
	movl	$216, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE354:
	.size	sha512_freectx, .-sha512_freectx
	.type	sha512_dupctx, @function
sha512_dupctx:
.LFB355:
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
	je	.L113
	leaq	.LC1(%rip), %rax
	movl	$86, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L114
.L113:
	movq	$0, -24(%rbp)
.L114:
	cmpq	$0, -24(%rbp)
	je	.L115
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
	movq	176(%rdx), %rcx
	movq	184(%rdx), %rbx
	movq	%rcx, 176(%rax)
	movq	%rbx, 184(%rax)
	movq	192(%rdx), %rcx
	movq	200(%rdx), %rbx
	movq	%rcx, 192(%rax)
	movq	%rbx, 200(%rax)
	movq	208(%rdx), %rdx
	movq	%rdx, 208(%rax)
.L115:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE355:
	.size	sha512_dupctx, .-sha512_dupctx
	.type	sha512_internal_final, @function
sha512_internal_final:
.LFB356:
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
	je	.L118
	cmpq	$63, -32(%rbp)
	jbe	.L118
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA512_Final@PLT
	testl	%eax, %eax
	je	.L118
	movq	-24(%rbp), %rax
	movq	$64, (%rax)
	movl	$1, %eax
	jmp	.L119
.L118:
	movl	$0, %eax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE356:
	.size	sha512_internal_final, .-sha512_internal_final
	.type	sha512_get_params, @function
sha512_get_params:
.LFB357:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movl	$64, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE357:
	.size	sha512_get_params, .-sha512_get_params
	.globl	ossl_sha512_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_sha512_functions, @object
	.size	ossl_sha512_functions, 144
ossl_sha512_functions:
	.long	1
	.zero	4
	.quad	sha512_newctx
	.long	3
	.zero	4
	.quad	SHA512_Update
	.long	4
	.zero	4
	.quad	sha512_internal_final
	.long	6
	.zero	4
	.quad	sha512_freectx
	.long	7
	.zero	4
	.quad	sha512_dupctx
	.long	8
	.zero	4
	.quad	sha512_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	sha512_internal_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sha512_224_internal_init, @function
sha512_224_internal_init:
.LFB358:
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
	je	.L123
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sha512_224_init@PLT
	testl	%eax, %eax
	je	.L123
	movl	$1, %eax
	jmp	.L125
.L123:
	movl	$0, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	sha512_224_internal_init, .-sha512_224_internal_init
	.type	sha512_224_newctx, @function
sha512_224_newctx:
.LFB359:
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
	je	.L127
	leaq	.LC1(%rip), %rax
	movl	$91, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L128
.L127:
	movq	$0, -8(%rbp)
.L128:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	sha512_224_newctx, .-sha512_224_newctx
	.type	sha512_224_freectx, @function
sha512_224_freectx:
.LFB360:
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
	movl	$91, %ecx
	movl	$216, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	sha512_224_freectx, .-sha512_224_freectx
	.type	sha512_224_dupctx, @function
sha512_224_dupctx:
.LFB361:
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
	je	.L132
	leaq	.LC1(%rip), %rax
	movl	$91, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L133
.L132:
	movq	$0, -24(%rbp)
.L133:
	cmpq	$0, -24(%rbp)
	je	.L134
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
	movq	176(%rdx), %rcx
	movq	184(%rdx), %rbx
	movq	%rcx, 176(%rax)
	movq	%rbx, 184(%rax)
	movq	192(%rdx), %rcx
	movq	200(%rdx), %rbx
	movq	%rcx, 192(%rax)
	movq	%rbx, 200(%rax)
	movq	208(%rdx), %rdx
	movq	%rdx, 208(%rax)
.L134:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	sha512_224_dupctx, .-sha512_224_dupctx
	.type	sha512_224_internal_final, @function
sha512_224_internal_final:
.LFB362:
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
	je	.L137
	cmpq	$27, -32(%rbp)
	jbe	.L137
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA512_Final@PLT
	testl	%eax, %eax
	je	.L137
	movq	-24(%rbp), %rax
	movq	$28, (%rax)
	movl	$1, %eax
	jmp	.L138
.L137:
	movl	$0, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	sha512_224_internal_final, .-sha512_224_internal_final
	.type	sha512_224_get_params, @function
sha512_224_get_params:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movl	$28, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	sha512_224_get_params, .-sha512_224_get_params
	.globl	ossl_sha512_224_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_sha512_224_functions, @object
	.size	ossl_sha512_224_functions, 144
ossl_sha512_224_functions:
	.long	1
	.zero	4
	.quad	sha512_224_newctx
	.long	3
	.zero	4
	.quad	SHA512_Update
	.long	4
	.zero	4
	.quad	sha512_224_internal_final
	.long	6
	.zero	4
	.quad	sha512_224_freectx
	.long	7
	.zero	4
	.quad	sha512_224_dupctx
	.long	8
	.zero	4
	.quad	sha512_224_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	sha512_224_internal_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sha512_256_internal_init, @function
sha512_256_internal_init:
.LFB364:
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
	je	.L142
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sha512_256_init@PLT
	testl	%eax, %eax
	je	.L142
	movl	$1, %eax
	jmp	.L144
.L142:
	movl	$0, %eax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	sha512_256_internal_init, .-sha512_256_internal_init
	.type	sha512_256_newctx, @function
sha512_256_newctx:
.LFB365:
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
	je	.L146
	leaq	.LC1(%rip), %rax
	movl	$96, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L147
.L146:
	movq	$0, -8(%rbp)
.L147:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	sha512_256_newctx, .-sha512_256_newctx
	.type	sha512_256_freectx, @function
sha512_256_freectx:
.LFB366:
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
	movl	$96, %ecx
	movl	$216, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	sha512_256_freectx, .-sha512_256_freectx
	.type	sha512_256_dupctx, @function
sha512_256_dupctx:
.LFB367:
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
	je	.L151
	leaq	.LC1(%rip), %rax
	movl	$96, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L152
.L151:
	movq	$0, -24(%rbp)
.L152:
	cmpq	$0, -24(%rbp)
	je	.L153
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
	movq	176(%rdx), %rcx
	movq	184(%rdx), %rbx
	movq	%rcx, 176(%rax)
	movq	%rbx, 184(%rax)
	movq	192(%rdx), %rcx
	movq	200(%rdx), %rbx
	movq	%rcx, 192(%rax)
	movq	%rbx, 200(%rax)
	movq	208(%rdx), %rdx
	movq	%rdx, 208(%rax)
.L153:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	sha512_256_dupctx, .-sha512_256_dupctx
	.type	sha512_256_internal_final, @function
sha512_256_internal_final:
.LFB368:
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
	je	.L156
	cmpq	$31, -32(%rbp)
	jbe	.L156
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA512_Final@PLT
	testl	%eax, %eax
	je	.L156
	movq	-24(%rbp), %rax
	movq	$32, (%rax)
	movl	$1, %eax
	jmp	.L157
.L156:
	movl	$0, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	sha512_256_internal_final, .-sha512_256_internal_final
	.type	sha512_256_get_params, @function
sha512_256_get_params:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %ecx
	movl	$32, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	sha512_256_get_params, .-sha512_256_get_params
	.globl	ossl_sha512_256_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_sha512_256_functions, @object
	.size	ossl_sha512_256_functions, 144
ossl_sha512_256_functions:
	.long	1
	.zero	4
	.quad	sha512_256_newctx
	.long	3
	.zero	4
	.quad	SHA512_Update
	.long	4
	.zero	4
	.quad	sha512_256_internal_final
	.long	6
	.zero	4
	.quad	sha512_256_freectx
	.long	7
	.zero	4
	.quad	sha512_256_dupctx
	.long	8
	.zero	4
	.quad	sha512_256_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	sha512_256_internal_init
	.long	0
	.zero	4
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
