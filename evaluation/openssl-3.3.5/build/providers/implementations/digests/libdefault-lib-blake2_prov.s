	.file	"blake2_prov.c"
	.text
	.section	.rodata
.LC0:
	.string	"size"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_blake2s_ctx_params, @object
	.size	known_blake2s_ctx_params, 80
known_blake2s_ctx_params:
	.quad	.LC0
	.long	2
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
	.globl	ossl_blake2s_gettable_ctx_params
	.type	ossl_blake2s_gettable_ctx_params, @function
ossl_blake2s_gettable_ctx_params:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_blake2s_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_blake2s_gettable_ctx_params, .-ossl_blake2s_gettable_ctx_params
	.globl	ossl_blake2s_settable_ctx_params
	.type	ossl_blake2s_settable_ctx_params, @function
ossl_blake2s_settable_ctx_params:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_blake2s_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ossl_blake2s_settable_ctx_params, .-ossl_blake2s_settable_ctx_params
	.section	.rodata
	.align 8
.LC1:
	.string	"../providers/implementations/digests/blake2_prov.c"
	.text
	.globl	ossl_blake2s_get_ctx_params
	.type	ossl_blake2s_get_ctx_params, @function
ossl_blake2s_get_ctx_params:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	cmpq	$0, -48(%rbp)
	jne	.L8
	movl	$1, %eax
	jmp	.L7
.L8:
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L9
	movq	-8(%rbp), %rax
	movzbl	128(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L9
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L7
.L9:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ossl_blake2s_get_ctx_params, .-ossl_blake2s_get_ctx_params
	.globl	ossl_blake2s_set_ctx_params
	.type	ossl_blake2s_set_ctx_params, @function
ossl_blake2s_set_ctx_params:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L18
.L11:
	cmpq	$0, -48(%rbp)
	jne	.L13
	movl	$1, %eax
	jmp	.L18
.L13:
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L14
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L15:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L16
	movq	-32(%rbp), %rax
	cmpq	$32, %rax
	jbe	.L17
.L16:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$218, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-32(%rbp), %rax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	subq	$-128, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_blake2s_param_set_digest_length@PLT
.L14:
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ossl_blake2s_set_ctx_params, .-ossl_blake2s_set_ctx_params
	.type	ossl_blake2s256_init, @function
ossl_blake2s256_init:
.LFB417:
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
	movq	-8(%rbp), %rax
	movzbl	128(%rax), %eax
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	ossl_blake2s_param_init@PLT
	cmpb	$0, -9(%rbp)
	je	.L20
	movq	-8(%rbp), %rax
	movzbl	-9(%rbp), %edx
	movb	%dl, 128(%rax)
.L20:
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_blake2s_init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ossl_blake2s256_init, .-ossl_blake2s256_init
	.type	blake2s256_internal_init, @function
blake2s256_internal_init:
.LFB418:
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
	je	.L23
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_blake2s_set_ctx_params@PLT
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_blake2s256_init
	testl	%eax, %eax
	je	.L23
	movl	$1, %eax
	jmp	.L25
.L23:
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	blake2s256_internal_init, .-blake2s256_internal_init
	.type	blake2s256_newctx, @function
blake2s256_newctx:
.LFB419:
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
	je	.L27
	leaq	.LC1(%rip), %rax
	movl	$187, %edx
	movq	%rax, %rsi
	movl	$160, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L28
.L27:
	movq	$0, -8(%rbp)
.L28:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	blake2s256_newctx, .-blake2s256_newctx
	.type	blake2s256_freectx, @function
blake2s256_freectx:
.LFB420:
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
	movl	$187, %ecx
	movl	$160, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	blake2s256_freectx, .-blake2s256_freectx
	.type	blake2s256_dupctx, @function
blake2s256_dupctx:
.LFB421:
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
	je	.L32
	leaq	.LC1(%rip), %rax
	movl	$187, %edx
	movq	%rax, %rsi
	movl	$160, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L33
.L32:
	movq	$0, -24(%rbp)
.L33:
	cmpq	$0, -24(%rbp)
	je	.L34
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
.L34:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	blake2s256_dupctx, .-blake2s256_dupctx
	.type	blake2s256_internal_final, @function
blake2s256_internal_final:
.LFB422:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -48(%rbp)
	jne	.L39
	movl	$1, %eax
	jmp	.L38
.L39:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L40
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$218, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L40:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_blake2s_final@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	blake2s256_internal_final, .-blake2s256_internal_final
	.type	blake2s256_get_params, @function
blake2s256_get_params:
.LFB423:
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
	movl	$32, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	blake2s256_get_params, .-blake2s256_get_params
	.globl	ossl_blake2s256_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_blake2s256_functions, @object
	.size	ossl_blake2s256_functions, 208
ossl_blake2s256_functions:
	.long	1
	.zero	4
	.quad	blake2s256_newctx
	.long	3
	.zero	4
	.quad	ossl_blake2s_update
	.long	4
	.zero	4
	.quad	blake2s256_internal_final
	.long	6
	.zero	4
	.quad	blake2s256_freectx
	.long	7
	.zero	4
	.quad	blake2s256_dupctx
	.long	8
	.zero	4
	.quad	blake2s256_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	blake2s256_internal_init
	.long	13
	.zero	4
	.quad	ossl_blake2s_gettable_ctx_params
	.long	12
	.zero	4
	.quad	ossl_blake2s_settable_ctx_params
	.long	10
	.zero	4
	.quad	ossl_blake2s_get_ctx_params
	.long	9
	.zero	4
	.quad	ossl_blake2s_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro.local
	.align 32
	.type	known_blake2b_ctx_params, @object
	.size	known_blake2b_ctx_params, 80
known_blake2b_ctx_params:
	.quad	.LC0
	.long	2
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
	.globl	ossl_blake2b_gettable_ctx_params
	.type	ossl_blake2b_gettable_ctx_params, @function
ossl_blake2b_gettable_ctx_params:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_blake2b_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	ossl_blake2b_gettable_ctx_params, .-ossl_blake2b_gettable_ctx_params
	.globl	ossl_blake2b_settable_ctx_params
	.type	ossl_blake2b_settable_ctx_params, @function
ossl_blake2b_settable_ctx_params:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_blake2b_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	ossl_blake2b_settable_ctx_params, .-ossl_blake2b_settable_ctx_params
	.globl	ossl_blake2b_get_ctx_params
	.type	ossl_blake2b_get_ctx_params, @function
ossl_blake2b_get_ctx_params:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	cmpq	$0, -48(%rbp)
	jne	.L50
	movl	$1, %eax
	jmp	.L49
.L50:
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L51
	movq	-8(%rbp), %rax
	movzbl	240(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L51:
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	ossl_blake2b_get_ctx_params, .-ossl_blake2b_get_ctx_params
	.globl	ossl_blake2b_set_ctx_params
	.type	ossl_blake2b_set_ctx_params, @function
ossl_blake2b_set_ctx_params:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L60
.L53:
	cmpq	$0, -48(%rbp)
	jne	.L55
	movl	$1, %eax
	jmp	.L60
.L55:
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L56
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L60
.L57:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L58
	movq	-32(%rbp), %rax
	cmpq	$64, %rax
	jbe	.L59
.L58:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$218, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-32(%rbp), %rax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$240, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_blake2b_param_set_digest_length@PLT
.L56:
	movl	$1, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	ossl_blake2b_set_ctx_params, .-ossl_blake2b_set_ctx_params
	.type	ossl_blake2b512_init, @function
ossl_blake2b512_init:
.LFB428:
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
	movq	-8(%rbp), %rax
	movzbl	240(%rax), %eax
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	addq	$240, %rax
	movq	%rax, %rdi
	call	ossl_blake2b_param_init@PLT
	cmpb	$0, -9(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	movzbl	-9(%rbp), %edx
	movb	%dl, 240(%rax)
.L62:
	movq	-8(%rbp), %rax
	leaq	240(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_blake2b_init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	ossl_blake2b512_init, .-ossl_blake2b512_init
	.type	blake2b512_internal_init, @function
blake2b512_internal_init:
.LFB429:
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
	je	.L65
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_blake2b_set_ctx_params@PLT
	testl	%eax, %eax
	je	.L65
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_blake2b512_init
	testl	%eax, %eax
	je	.L65
	movl	$1, %eax
	jmp	.L67
.L65:
	movl	$0, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	blake2b512_internal_init, .-blake2b512_internal_init
	.type	blake2b512_newctx, @function
blake2b512_newctx:
.LFB430:
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
	je	.L69
	leaq	.LC1(%rip), %rax
	movl	$188, %edx
	movq	%rax, %rsi
	movl	$304, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L70
.L69:
	movq	$0, -8(%rbp)
.L70:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	blake2b512_newctx, .-blake2b512_newctx
	.type	blake2b512_freectx, @function
blake2b512_freectx:
.LFB431:
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
	movl	$188, %ecx
	movl	$304, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	blake2b512_freectx, .-blake2b512_freectx
	.type	blake2b512_dupctx, @function
blake2b512_dupctx:
.LFB432:
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
	je	.L74
	leaq	.LC1(%rip), %rax
	movl	$188, %edx
	movq	%rax, %rsi
	movl	$304, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L75
.L74:
	movq	$0, -8(%rbp)
.L75:
	cmpq	$0, -8(%rbp)
	je	.L76
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$38, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
.L76:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	blake2b512_dupctx, .-blake2b512_dupctx
	.type	blake2b512_internal_final, @function
blake2b512_internal_final:
.LFB433:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -48(%rbp)
	jne	.L81
	movl	$1, %eax
	jmp	.L80
.L81:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L82
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$218, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L80
.L82:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_blake2b_final@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	blake2b512_internal_final, .-blake2b512_internal_final
	.type	blake2b512_get_params, @function
blake2b512_get_params:
.LFB434:
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
	movl	$64, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	blake2b512_get_params, .-blake2b512_get_params
	.globl	ossl_blake2b512_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_blake2b512_functions, @object
	.size	ossl_blake2b512_functions, 208
ossl_blake2b512_functions:
	.long	1
	.zero	4
	.quad	blake2b512_newctx
	.long	3
	.zero	4
	.quad	ossl_blake2b_update
	.long	4
	.zero	4
	.quad	blake2b512_internal_final
	.long	6
	.zero	4
	.quad	blake2b512_freectx
	.long	7
	.zero	4
	.quad	blake2b512_dupctx
	.long	8
	.zero	4
	.quad	blake2b512_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	blake2b512_internal_init
	.long	13
	.zero	4
	.quad	ossl_blake2b_gettable_ctx_params
	.long	12
	.zero	4
	.quad	ossl_blake2b_settable_ctx_params
	.long	10
	.zero	4
	.quad	ossl_blake2b_get_ctx_params
	.long	9
	.zero	4
	.quad	ossl_blake2b_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 28
__func__.5:
	.string	"ossl_blake2s_get_ctx_params"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 28
__func__.4:
	.string	"ossl_blake2s_set_ctx_params"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 26
__func__.3:
	.string	"blake2s256_internal_final"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 28
__func__.2:
	.string	"ossl_blake2b_get_ctx_params"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 28
__func__.1:
	.string	"ossl_blake2b_set_ctx_params"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 26
__func__.0:
	.string	"blake2b512_internal_final"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
