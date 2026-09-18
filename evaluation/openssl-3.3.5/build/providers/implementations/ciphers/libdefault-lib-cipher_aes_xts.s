	.file	"cipher_aes_xts.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/cipher_aes_xts.c"
	.text
	.type	aes_xts_check_keys_differ, @function
aes_xts_check_keys_differ:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	ossl_aes_xts_allow_insecure_decrypt@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L6
	cmpl	$0, -20(%rbp)
	je	.L7
.L6:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L7
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aes_xts_check_keys_differ, .-aes_xts_check_keys_differ
	.type	aes_xts_init, @function
aes_xts_init:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	16(%rbp), %eax
	andl	$1, %eax
	movq	-16(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	108(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 108(%rdx)
	cmpq	$0, -48(%rbp)
	je	.L12
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initiv@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	cmpq	$0, -32(%rbp)
	je	.L13
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L14
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L14:
	movq	-40(%rbp), %rax
	shrq	%rax
	movq	%rax, %rcx
	movl	16(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	aes_xts_check_keys_differ
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L11
.L15:
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L11
.L13:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	aes_xts_set_ctx_params
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	aes_xts_init, .-aes_xts_init
	.type	aes_xts_einit, @function
aes_xts_einit:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aes_xts_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	aes_xts_einit, .-aes_xts_einit
	.type	aes_xts_dinit, @function
aes_xts_dinit:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aes_xts_init
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	aes_xts_dinit, .-aes_xts_dinit
	.type	aes_xts_newctx, @function
aes_xts_newctx:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$114, %edx
	movq	%rax, %rsi
	movl	$728, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L21
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_hw_aes_xts@PLT
	movq	%rax, %rdi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %r9
	movl	-28(%rbp), %r8d
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	pushq	$0
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_cipher_generic_initkey@PLT
	addq	$16, %rsp
.L21:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	aes_xts_newctx, .-aes_xts_newctx
	.type	aes_xts_freectx, @function
aes_xts_freectx:
.LFB407:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cipher_generic_reset_ctx@PLT
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$129, %ecx
	movl	$728, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	aes_xts_freectx, .-aes_xts_freectx
	.type	aes_xts_dupctx, @function
aes_xts_dupctx:
.LFB408:
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
	movq	$0, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movq	688(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-8(%rbp), %rax
	movq	688(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$192, %rax
	cmpq	%rax, %rdx
	je	.L27
	movl	$0, %eax
	jmp	.L26
.L27:
	movq	-8(%rbp), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-8(%rbp), %rax
	movq	696(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$440, %rax
	cmpq	%rax, %rdx
	je	.L28
	movl	$0, %eax
	jmp	.L26
.L28:
	leaq	.LC0(%rip), %rax
	movl	$148, %edx
	movq	%rax, %rsi
	movl	$728, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L26
.L29:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-16(%rbp), %rax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	aes_xts_dupctx, .-aes_xts_dupctx
	.type	aes_xts_cipher, @function
aes_xts_cipher:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L31
	movq	-8(%rbp), %rax
	movq	688(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-8(%rbp), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L31
	cmpq	$0, -32(%rbp)
	je	.L31
	cmpq	$0, -56(%rbp)
	je	.L31
	cmpq	$15, -64(%rbp)
	ja	.L32
.L31:
	movl	$0, %eax
	jmp	.L33
.L32:
	cmpq	$16777216, -64(%rbp)
	jbe	.L34
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L34:
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-8(%rbp), %rax
	movq	720(%rax), %r10
	movq	-8(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-8(%rbp), %rax
	movq	696(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	688(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %r8d
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	688(%rax), %rdi
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	CRYPTO_xts128_encrypt@PLT
	testl	%eax, %eax
	je	.L36
	movl	$0, %eax
	jmp	.L33
.L36:
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	aes_xts_cipher, .-aes_xts_cipher
	.type	aes_xts_stream_update, @function
aes_xts_stream_update:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L38
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	aes_xts_cipher
	testl	%eax, %eax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$202, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L40:
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	aes_xts_stream_update, .-aes_xts_stream_update
	.type	aes_xts_stream_final, @function
aes_xts_stream_final:
.LFB411:
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
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	aes_xts_stream_final, .-aes_xts_stream_final
	.section	.rodata
.LC1:
	.string	"keylen"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	aes_xts_known_settable_ctx_params, @object
	.size	aes_xts_known_settable_ctx_params, 80
aes_xts_known_settable_ctx_params:
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	aes_xts_settable_ctx_params, @function
aes_xts_settable_ctx_params:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	aes_xts_known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	aes_xts_settable_ctx_params, .-aes_xts_settable_ctx_params
	.type	aes_xts_set_ctx_params, @function
aes_xts_set_ctx_params:
.LFB413:
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
	cmpq	$0, -48(%rbp)
	jne	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L49
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L50:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L49
	movl	$0, %eax
	jmp	.L48
.L49:
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	aes_xts_set_ctx_params, .-aes_xts_set_ctx_params
	.type	aes_256_xts_get_params, @function
aes_256_xts_get_params:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$512, %ecx
	movl	$2, %edx
	movl	$65537, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	aes_256_xts_get_params, .-aes_256_xts_get_params
	.type	aes_256_xts_newctx, @function
aes_256_xts_newctx:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$512, %ecx
	movl	$2, %edx
	movl	$65537, %esi
	movq	%rax, %rdi
	call	aes_xts_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	aes_256_xts_newctx, .-aes_256_xts_newctx
	.globl	ossl_aes256xts_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_aes256xts_functions, @object
	.size	ossl_aes256xts_functions, 240
ossl_aes256xts_functions:
	.long	1
	.zero	4
	.quad	aes_256_xts_newctx
	.long	2
	.zero	4
	.quad	aes_xts_einit
	.long	3
	.zero	4
	.quad	aes_xts_dinit
	.long	4
	.zero	4
	.quad	aes_xts_stream_update
	.long	5
	.zero	4
	.quad	aes_xts_stream_final
	.long	6
	.zero	4
	.quad	aes_xts_cipher
	.long	7
	.zero	4
	.quad	aes_xts_freectx
	.long	8
	.zero	4
	.quad	aes_xts_dupctx
	.long	9
	.zero	4
	.quad	aes_256_xts_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	11
	.zero	4
	.quad	aes_xts_set_ctx_params
	.long	14
	.zero	4
	.quad	aes_xts_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	aes_128_xts_get_params, @function
aes_128_xts_get_params:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$256, %ecx
	movl	$2, %edx
	movl	$65537, %esi
	movq	%rax, %rdi
	call	ossl_cipher_generic_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	aes_128_xts_get_params, .-aes_128_xts_get_params
	.type	aes_128_xts_newctx, @function
aes_128_xts_newctx:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$128, %r9d
	movl	$8, %r8d
	movl	$256, %ecx
	movl	$2, %edx
	movl	$65537, %esi
	movq	%rax, %rdi
	call	aes_xts_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	aes_128_xts_newctx, .-aes_128_xts_newctx
	.globl	ossl_aes128xts_functions
	.section	.data.rel.ro
	.align 32
	.type	ossl_aes128xts_functions, @object
	.size	ossl_aes128xts_functions, 240
ossl_aes128xts_functions:
	.long	1
	.zero	4
	.quad	aes_128_xts_newctx
	.long	2
	.zero	4
	.quad	aes_xts_einit
	.long	3
	.zero	4
	.quad	aes_xts_dinit
	.long	4
	.zero	4
	.quad	aes_xts_stream_update
	.long	5
	.zero	4
	.quad	aes_xts_stream_final
	.long	6
	.zero	4
	.quad	aes_xts_cipher
	.long	7
	.zero	4
	.quad	aes_xts_freectx
	.long	8
	.zero	4
	.quad	aes_xts_dupctx
	.long	9
	.zero	4
	.quad	aes_128_xts_get_params
	.long	12
	.zero	4
	.quad	ossl_cipher_generic_gettable_params
	.long	10
	.zero	4
	.quad	ossl_cipher_generic_get_ctx_params
	.long	13
	.zero	4
	.quad	ossl_cipher_generic_gettable_ctx_params
	.long	11
	.zero	4
	.quad	aes_xts_set_ctx_params
	.long	14
	.zero	4
	.quad	aes_xts_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 26
__func__.4:
	.string	"aes_xts_check_keys_differ"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 13
__func__.3:
	.string	"aes_xts_init"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"aes_xts_cipher"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"aes_xts_stream_update"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"aes_xts_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
