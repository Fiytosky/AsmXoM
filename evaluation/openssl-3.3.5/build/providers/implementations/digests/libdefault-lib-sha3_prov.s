	.file	"sha3_prov.c"
	.text
	.type	keccak_init, @function
keccak_init:
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
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sha3_reset@PLT
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	keccak_init, .-keccak_init
	.type	keccak_init_params, @function
keccak_init_params:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	keccak_init
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	shake_set_ctx_params
	testl	%eax, %eax
	je	.L5
	movl	$1, %eax
	jmp	.L7
.L5:
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	keccak_init_params, .-keccak_init_params
	.type	keccak_update, @function
keccak_update:
.LFB360:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L11
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L12
	movq	-8(%rbp), %rax
	leaq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 384(%rax)
	movl	$1, %eax
	jmp	.L10
.L12:
	movq	-8(%rbp), %rax
	leaq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	400(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	200(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rcx
	movq	-8(%rbp), %rax
	movq	$0, 384(%rax)
.L11:
	movq	-8(%rbp), %rax
	movq	400(%rax), %r8
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L13
	movq	-56(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	200(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 384(%rax)
.L13:
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	keccak_update, .-keccak_update
	.type	keccak_final, @function
keccak_final:
.LFB361:
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
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	cmpq	$0, -48(%rbp)
	je	.L17
	movq	-16(%rbp), %rax
	movq	408(%rax), %r8
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
.L17:
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	keccak_final, .-keccak_final
	.type	shake_squeeze, @function
shake_squeeze:
.LFB362:
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
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	movl	$0, %eax
	jmp	.L20
.L21:
	cmpq	$0, -48(%rbp)
	je	.L22
	movq	-16(%rbp), %rax
	movq	416(%rax), %r8
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
.L22:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	shake_squeeze, .-shake_squeeze
	.type	generic_sha3_absorb, @function
generic_sha3_absorb:
.LFB363:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	424(%rax), %eax
	testl	%eax, %eax
	je	.L24
	movq	-8(%rbp), %rax
	movl	424(%rax), %eax
	cmpl	$1, %eax
	je	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movl	$1, 424(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	SHA3_absorb@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	generic_sha3_absorb, .-generic_sha3_absorb
	.type	generic_sha3_final, @function
generic_sha3_final:
.LFB364:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sha3_final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	generic_sha3_final, .-generic_sha3_final
	.type	generic_sha3_squeeze, @function
generic_sha3_squeeze:
.LFB365:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sha3_squeeze@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	generic_sha3_squeeze, .-generic_sha3_squeeze
	.section	.data.rel.local,"aw"
	.align 16
	.type	sha3_generic_md, @object
	.size	sha3_generic_md, 24
sha3_generic_md:
	.quad	generic_sha3_absorb
	.quad	generic_sha3_final
	.quad	0
	.align 16
	.type	shake_generic_md, @object
	.size	shake_generic_md, 24
shake_generic_md:
	.quad	generic_sha3_absorb
	.quad	generic_sha3_final
	.quad	generic_sha3_squeeze
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/digests/sha3_prov.c"
	.text
	.type	keccak_freectx, @function
keccak_freectx:
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
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$533, %ecx
	movl	$432, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	keccak_freectx, .-keccak_freectx
	.type	keccak_dupctx, @function
keccak_dupctx:
.LFB367:
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
	je	.L32
	leaq	.LC0(%rip), %rax
	movl	$539, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L33
.L32:
	movq	$0, -8(%rbp)
.L33:
	cmpq	$0, -8(%rbp)
	je	.L34
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$54, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
.L34:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	keccak_dupctx, .-keccak_dupctx
	.section	.rodata
.LC1:
	.string	"xoflen"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_shake_settable_ctx_params, @object
	.size	known_shake_settable_ctx_params, 80
known_shake_settable_ctx_params:
	.quad	.LC1
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
	.type	shake_settable_ctx_params, @function
shake_settable_ctx_params:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_shake_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	shake_settable_ctx_params, .-shake_settable_ctx_params
	.type	shake_set_ctx_params, @function
shake_set_ctx_params:
.LFB369:
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
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	cmpq	$0, -32(%rbp)
	jne	.L41
	movl	$1, %eax
	jmp	.L40
.L41:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	leaq	376(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$569, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L42:
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	shake_set_ctx_params, .-shake_set_ctx_params
	.type	sha3_224_newctx, @function
sha3_224_newctx:
.LFB370:
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
	je	.L44
	leaq	.LC0(%rip), %rax
	movl	$599, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L45
.L44:
	movq	$0, -8(%rbp)
.L45:
	cmpq	$0, -8(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movl	$224, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rcx
	movq	sha3_generic_md(%rip), %rax
	movq	8+sha3_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+sha3_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	sha3_224_newctx, .-sha3_224_newctx
	.type	sha3_224_get_params, @function
sha3_224_get_params:
.LFB371:
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
	movl	$144, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	sha3_224_get_params, .-sha3_224_get_params
	.globl	ossl_sha3_224_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_sha3_224_functions, @object
	.size	ossl_sha3_224_functions, 144
ossl_sha3_224_functions:
	.long	1
	.zero	4
	.quad	sha3_224_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	sha3_224_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	keccak_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sha3_256_newctx, @function
sha3_256_newctx:
.LFB372:
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
	leaq	.LC0(%rip), %rax
	movl	$601, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L52
.L51:
	movq	$0, -8(%rbp)
.L52:
	cmpq	$0, -8(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L54
.L53:
	movq	-8(%rbp), %rax
	movl	$256, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rcx
	movq	sha3_generic_md(%rip), %rax
	movq	8+sha3_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+sha3_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	sha3_256_newctx, .-sha3_256_newctx
	.type	sha3_256_get_params, @function
sha3_256_get_params:
.LFB373:
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
	movl	$136, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	sha3_256_get_params, .-sha3_256_get_params
	.globl	ossl_sha3_256_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_sha3_256_functions, @object
	.size	ossl_sha3_256_functions, 144
ossl_sha3_256_functions:
	.long	1
	.zero	4
	.quad	sha3_256_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	sha3_256_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	keccak_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sha3_384_newctx, @function
sha3_384_newctx:
.LFB374:
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
	je	.L58
	leaq	.LC0(%rip), %rax
	movl	$603, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L59
.L58:
	movq	$0, -8(%rbp)
.L59:
	cmpq	$0, -8(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-8(%rbp), %rax
	movl	$384, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rcx
	movq	sha3_generic_md(%rip), %rax
	movq	8+sha3_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+sha3_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	sha3_384_newctx, .-sha3_384_newctx
	.type	sha3_384_get_params, @function
sha3_384_get_params:
.LFB375:
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
	movl	$104, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	sha3_384_get_params, .-sha3_384_get_params
	.globl	ossl_sha3_384_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_sha3_384_functions, @object
	.size	ossl_sha3_384_functions, 144
ossl_sha3_384_functions:
	.long	1
	.zero	4
	.quad	sha3_384_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	sha3_384_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	keccak_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sha3_512_newctx, @function
sha3_512_newctx:
.LFB376:
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
	je	.L65
	leaq	.LC0(%rip), %rax
	movl	$605, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L66
.L65:
	movq	$0, -8(%rbp)
.L66:
	cmpq	$0, -8(%rbp)
	jne	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	-8(%rbp), %rax
	movl	$512, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rcx
	movq	sha3_generic_md(%rip), %rax
	movq	8+sha3_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+sha3_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	sha3_512_newctx, .-sha3_512_newctx
	.type	sha3_512_get_params, @function
sha3_512_get_params:
.LFB377:
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
	movl	$72, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	sha3_512_get_params, .-sha3_512_get_params
	.globl	ossl_sha3_512_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_sha3_512_functions, @object
	.size	ossl_sha3_512_functions, 144
ossl_sha3_512_functions:
	.long	1
	.zero	4
	.quad	sha3_512_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	sha3_512_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	keccak_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	keccak_224_newctx, @function
keccak_224_newctx:
.LFB378:
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
	je	.L72
	leaq	.LC0(%rip), %rax
	movl	$607, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L73
.L72:
	movq	$0, -8(%rbp)
.L73:
	cmpq	$0, -8(%rbp)
	jne	.L74
	movl	$0, %eax
	jmp	.L75
.L74:
	movq	-8(%rbp), %rax
	movl	$224, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rcx
	movq	sha3_generic_md(%rip), %rax
	movq	8+sha3_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+sha3_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	keccak_224_newctx, .-keccak_224_newctx
	.type	keccak_224_get_params, @function
keccak_224_get_params:
.LFB379:
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
	movl	$144, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	keccak_224_get_params, .-keccak_224_get_params
	.globl	ossl_keccak_224_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_keccak_224_functions, @object
	.size	ossl_keccak_224_functions, 144
ossl_keccak_224_functions:
	.long	1
	.zero	4
	.quad	keccak_224_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	keccak_224_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	keccak_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	keccak_256_newctx, @function
keccak_256_newctx:
.LFB380:
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
	je	.L79
	leaq	.LC0(%rip), %rax
	movl	$609, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L80
.L79:
	movq	$0, -8(%rbp)
.L80:
	cmpq	$0, -8(%rbp)
	jne	.L81
	movl	$0, %eax
	jmp	.L82
.L81:
	movq	-8(%rbp), %rax
	movl	$256, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rcx
	movq	sha3_generic_md(%rip), %rax
	movq	8+sha3_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+sha3_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	keccak_256_newctx, .-keccak_256_newctx
	.type	keccak_256_get_params, @function
keccak_256_get_params:
.LFB381:
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
	movl	$136, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	keccak_256_get_params, .-keccak_256_get_params
	.globl	ossl_keccak_256_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_keccak_256_functions, @object
	.size	ossl_keccak_256_functions, 144
ossl_keccak_256_functions:
	.long	1
	.zero	4
	.quad	keccak_256_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	keccak_256_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	keccak_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	keccak_384_newctx, @function
keccak_384_newctx:
.LFB382:
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
	je	.L86
	leaq	.LC0(%rip), %rax
	movl	$611, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L87
.L86:
	movq	$0, -8(%rbp)
.L87:
	cmpq	$0, -8(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	movq	-8(%rbp), %rax
	movl	$384, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rcx
	movq	sha3_generic_md(%rip), %rax
	movq	8+sha3_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+sha3_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	keccak_384_newctx, .-keccak_384_newctx
	.type	keccak_384_get_params, @function
keccak_384_get_params:
.LFB383:
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
	movl	$104, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	keccak_384_get_params, .-keccak_384_get_params
	.globl	ossl_keccak_384_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_keccak_384_functions, @object
	.size	ossl_keccak_384_functions, 144
ossl_keccak_384_functions:
	.long	1
	.zero	4
	.quad	keccak_384_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	keccak_384_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	keccak_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	keccak_512_newctx, @function
keccak_512_newctx:
.LFB384:
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
	je	.L93
	leaq	.LC0(%rip), %rax
	movl	$613, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L94
.L93:
	movq	$0, -8(%rbp)
.L94:
	cmpq	$0, -8(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L96
.L95:
	movq	-8(%rbp), %rax
	movl	$512, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rcx
	movq	sha3_generic_md(%rip), %rax
	movq	8+sha3_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+sha3_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	keccak_512_newctx, .-keccak_512_newctx
	.type	keccak_512_get_params, @function
keccak_512_get_params:
.LFB385:
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
	movl	$72, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	keccak_512_get_params, .-keccak_512_get_params
	.globl	ossl_keccak_512_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_keccak_512_functions, @object
	.size	ossl_keccak_512_functions, 144
ossl_keccak_512_functions:
	.long	1
	.zero	4
	.quad	keccak_512_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	keccak_512_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	2
	.zero	4
	.quad	keccak_init
	.long	0
	.zero	4
	.quad	0
	.text
	.type	shake_128_newctx, @function
shake_128_newctx:
.LFB386:
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
	je	.L100
	leaq	.LC0(%rip), %rax
	movl	$615, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L101
.L100:
	movq	$0, -8(%rbp)
.L101:
	cmpq	$0, -8(%rbp)
	jne	.L102
	movl	$0, %eax
	jmp	.L103
.L102:
	movq	-8(%rbp), %rax
	movl	$128, %edx
	movl	$31, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rcx
	movq	shake_generic_md(%rip), %rax
	movq	8+shake_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+shake_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	shake_128_newctx, .-shake_128_newctx
	.type	shake_128_get_params, @function
shake_128_get_params:
.LFB387:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %ecx
	movl	$16, %edx
	movl	$168, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	shake_128_get_params, .-shake_128_get_params
	.globl	ossl_shake_128_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_shake_128_functions, @object
	.size	ossl_shake_128_functions, 192
ossl_shake_128_functions:
	.long	1
	.zero	4
	.quad	shake_128_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	shake_128_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	14
	.zero	4
	.quad	shake_squeeze
	.long	2
	.zero	4
	.quad	keccak_init_params
	.long	9
	.zero	4
	.quad	shake_set_ctx_params
	.long	12
	.zero	4
	.quad	shake_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	shake_256_newctx, @function
shake_256_newctx:
.LFB388:
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
	je	.L107
	leaq	.LC0(%rip), %rax
	movl	$617, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L108
.L107:
	movq	$0, -8(%rbp)
.L108:
	cmpq	$0, -8(%rbp)
	jne	.L109
	movl	$0, %eax
	jmp	.L110
.L109:
	movq	-8(%rbp), %rax
	movl	$256, %edx
	movl	$31, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rcx
	movq	shake_generic_md(%rip), %rax
	movq	8+shake_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+shake_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	shake_256_newctx, .-shake_256_newctx
	.type	shake_256_get_params, @function
shake_256_get_params:
.LFB389:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %ecx
	movl	$32, %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	shake_256_get_params, .-shake_256_get_params
	.globl	ossl_shake_256_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_shake_256_functions, @object
	.size	ossl_shake_256_functions, 192
ossl_shake_256_functions:
	.long	1
	.zero	4
	.quad	shake_256_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	shake_256_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	14
	.zero	4
	.quad	shake_squeeze
	.long	2
	.zero	4
	.quad	keccak_init_params
	.long	9
	.zero	4
	.quad	shake_set_ctx_params
	.long	12
	.zero	4
	.quad	shake_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	keccak_kmac_128_newctx, @function
keccak_kmac_128_newctx:
.LFB390:
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
	je	.L114
	leaq	.LC0(%rip), %rax
	movl	$619, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L115
.L114:
	movq	$0, -8(%rbp)
.L115:
	cmpq	$0, -8(%rbp)
	jne	.L116
	movl	$0, %eax
	jmp	.L117
.L116:
	movq	-8(%rbp), %rax
	movl	$128, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_keccak_kmac_init@PLT
	movq	-8(%rbp), %rcx
	movq	sha3_generic_md(%rip), %rax
	movq	8+sha3_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+sha3_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	keccak_kmac_128_newctx, .-keccak_kmac_128_newctx
	.type	keccak_kmac_128_get_params, @function
keccak_kmac_128_get_params:
.LFB391:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$32, %edx
	movl	$168, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	keccak_kmac_128_get_params, .-keccak_kmac_128_get_params
	.globl	ossl_keccak_kmac_128_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_keccak_kmac_128_functions, @object
	.size	ossl_keccak_kmac_128_functions, 192
ossl_keccak_kmac_128_functions:
	.long	1
	.zero	4
	.quad	keccak_kmac_128_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	keccak_kmac_128_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	14
	.zero	4
	.quad	shake_squeeze
	.long	2
	.zero	4
	.quad	keccak_init_params
	.long	9
	.zero	4
	.quad	shake_set_ctx_params
	.long	12
	.zero	4
	.quad	shake_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	keccak_kmac_256_newctx, @function
keccak_kmac_256_newctx:
.LFB392:
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
	je	.L121
	leaq	.LC0(%rip), %rax
	movl	$621, %edx
	movq	%rax, %rsi
	movl	$432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L122
.L121:
	movq	$0, -8(%rbp)
.L122:
	cmpq	$0, -8(%rbp)
	jne	.L123
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-8(%rbp), %rax
	movl	$256, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_keccak_kmac_init@PLT
	movq	-8(%rbp), %rcx
	movq	sha3_generic_md(%rip), %rax
	movq	8+sha3_generic_md(%rip), %rdx
	movq	%rax, 400(%rcx)
	movq	%rdx, 408(%rcx)
	movq	16+sha3_generic_md(%rip), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	keccak_kmac_256_newctx, .-keccak_kmac_256_newctx
	.type	keccak_kmac_256_get_params, @function
keccak_kmac_256_get_params:
.LFB393:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$64, %edx
	movl	$136, %esi
	movq	%rax, %rdi
	call	ossl_digest_default_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	keccak_kmac_256_get_params, .-keccak_kmac_256_get_params
	.globl	ossl_keccak_kmac_256_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_keccak_kmac_256_functions, @object
	.size	ossl_keccak_kmac_256_functions, 192
ossl_keccak_kmac_256_functions:
	.long	1
	.zero	4
	.quad	keccak_kmac_256_newctx
	.long	3
	.zero	4
	.quad	keccak_update
	.long	4
	.zero	4
	.quad	keccak_final
	.long	6
	.zero	4
	.quad	keccak_freectx
	.long	7
	.zero	4
	.quad	keccak_dupctx
	.long	8
	.zero	4
	.quad	keccak_kmac_256_get_params
	.long	11
	.zero	4
	.quad	ossl_digest_default_gettable_params
	.long	14
	.zero	4
	.quad	shake_squeeze
	.long	2
	.zero	4
	.quad	keccak_init_params
	.long	9
	.zero	4
	.quad	shake_set_ctx_params
	.long	12
	.zero	4
	.quad	shake_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"shake_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
