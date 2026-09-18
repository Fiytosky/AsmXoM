	.file	"mac_legacy_sig.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/signature/mac_legacy_sig.c"
	.text
	.type	mac_newctx, @function
mac_newctx:
.LFB476:
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
	movq	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	cmpq	$0, -32(%rbp)
	je	.L5
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$63, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L9
.L5:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-16(%rbp), %rax
	jmp	.L3
.L9:
	nop
	jmp	.L6
.L10:
	nop
	jmp	.L6
.L11:
	nop
.L6:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$79, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	mac_newctx, .-mac_newctx
	.section	.rodata
.LC1:
	.string	"HMAC"
	.text
	.type	mac_hmac_newctx, @function
mac_hmac_newctx:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	mac_hmac_newctx, .-mac_hmac_newctx
	.section	.rodata
.LC2:
	.string	"SIPHASH"
	.text
	.type	mac_siphash_newctx, @function
mac_siphash_newctx:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	mac_siphash_newctx, .-mac_siphash_newctx
	.section	.rodata
.LC3:
	.string	"POLY1305"
	.text
	.type	mac_poly1305_newctx, @function
mac_poly1305_newctx:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	mac_poly1305_newctx, .-mac_poly1305_newctx
	.section	.rodata
.LC4:
	.string	"CMAC"
	.text
	.type	mac_cmac_newctx, @function
mac_cmac_newctx:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC4(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	mac_cmac_newctx, .-mac_cmac_newctx
	.type	mac_digest_sign_init, @function
mac_digest_sign_init:
.LFB481:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L21
	cmpq	$0, -24(%rbp)
	jne	.L22
.L21:
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	cmpq	$0, -56(%rbp)
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L24:
	cmpq	$0, -56(%rbp)
	je	.L25
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_mac_key_up_ref@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L23
.L26:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_mac_key_free@PLT
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L25:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -8(%rbp)
.L27:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, -16(%rbp)
.L28:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	pushq	$0
	pushq	$0
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_prov_set_macctx@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L23
.L29:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L23
.L30:
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	mac_digest_sign_init, .-mac_digest_sign_init
	.type	mac_digest_sign_update, @function
mac_digest_sign_update:
.LFB482:
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
	cmpq	$0, -8(%rbp)
	je	.L32
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L33
.L32:
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	mac_digest_sign_update, .-mac_digest_sign_update
	.type	mac_digest_sign_final, @function
mac_digest_sign_final:
.LFB483:
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
	je	.L36
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L37
.L36:
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	mac_digest_sign_final, .-mac_digest_sign_final
	.type	mac_freectx, @function
mac_freectx:
.LFB484:
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
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$166, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_mac_key_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$169, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	mac_freectx, .-mac_freectx
	.type	mac_dupctx, @function
mac_dupctx:
.LFB485:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	leaq	.LC0(%rip), %rax
	movl	$180, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L42
.L43:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$189, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L48
.L44:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_mac_key_up_ref@PLT
	testl	%eax, %eax
	je	.L49
.L46:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L50
.L47:
	movq	-16(%rbp), %rax
	jmp	.L42
.L48:
	nop
	jmp	.L45
.L49:
	nop
	jmp	.L45
.L50:
	nop
.L45:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	mac_freectx
	movl	$0, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	mac_dupctx, .-mac_dupctx
	.type	mac_set_ctx_params, @function
mac_set_ctx_params:
.LFB486:
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
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	mac_set_ctx_params, .-mac_set_ctx_params
	.type	mac_settable_ctx_params, @function
mac_settable_ctx_params:
.LFB487:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_settable_ctx_params@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-16(%rbp), %rax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	mac_settable_ctx_params, .-mac_settable_ctx_params
	.type	mac_hmac_settable_ctx_params, @function
mac_hmac_settable_ctx_params:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_settable_ctx_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	mac_hmac_settable_ctx_params, .-mac_hmac_settable_ctx_params
	.type	mac_siphash_settable_ctx_params, @function
mac_siphash_settable_ctx_params:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_settable_ctx_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	mac_siphash_settable_ctx_params, .-mac_siphash_settable_ctx_params
	.type	mac_poly1305_settable_ctx_params, @function
mac_poly1305_settable_ctx_params:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_settable_ctx_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	mac_poly1305_settable_ctx_params, .-mac_poly1305_settable_ctx_params
	.type	mac_cmac_settable_ctx_params, @function
mac_cmac_settable_ctx_params:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC4(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mac_settable_ctx_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	mac_cmac_settable_ctx_params, .-mac_cmac_settable_ctx_params
	.globl	ossl_mac_legacy_hmac_signature_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_mac_legacy_hmac_signature_functions, @object
	.size	ossl_mac_legacy_hmac_signature_functions, 144
ossl_mac_legacy_hmac_signature_functions:
	.long	1
	.zero	4
	.quad	mac_hmac_newctx
	.long	8
	.zero	4
	.quad	mac_digest_sign_init
	.long	9
	.zero	4
	.quad	mac_digest_sign_update
	.long	10
	.zero	4
	.quad	mac_digest_sign_final
	.long	16
	.zero	4
	.quad	mac_freectx
	.long	17
	.zero	4
	.quad	mac_dupctx
	.long	20
	.zero	4
	.quad	mac_set_ctx_params
	.long	21
	.zero	4
	.quad	mac_hmac_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_mac_legacy_siphash_signature_functions
	.align 32
	.type	ossl_mac_legacy_siphash_signature_functions, @object
	.size	ossl_mac_legacy_siphash_signature_functions, 144
ossl_mac_legacy_siphash_signature_functions:
	.long	1
	.zero	4
	.quad	mac_siphash_newctx
	.long	8
	.zero	4
	.quad	mac_digest_sign_init
	.long	9
	.zero	4
	.quad	mac_digest_sign_update
	.long	10
	.zero	4
	.quad	mac_digest_sign_final
	.long	16
	.zero	4
	.quad	mac_freectx
	.long	17
	.zero	4
	.quad	mac_dupctx
	.long	20
	.zero	4
	.quad	mac_set_ctx_params
	.long	21
	.zero	4
	.quad	mac_siphash_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_mac_legacy_poly1305_signature_functions
	.align 32
	.type	ossl_mac_legacy_poly1305_signature_functions, @object
	.size	ossl_mac_legacy_poly1305_signature_functions, 144
ossl_mac_legacy_poly1305_signature_functions:
	.long	1
	.zero	4
	.quad	mac_poly1305_newctx
	.long	8
	.zero	4
	.quad	mac_digest_sign_init
	.long	9
	.zero	4
	.quad	mac_digest_sign_update
	.long	10
	.zero	4
	.quad	mac_digest_sign_final
	.long	16
	.zero	4
	.quad	mac_freectx
	.long	17
	.zero	4
	.quad	mac_dupctx
	.long	20
	.zero	4
	.quad	mac_set_ctx_params
	.long	21
	.zero	4
	.quad	mac_poly1305_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_mac_legacy_cmac_signature_functions
	.align 32
	.type	ossl_mac_legacy_cmac_signature_functions, @object
	.size	ossl_mac_legacy_cmac_signature_functions, 144
ossl_mac_legacy_cmac_signature_functions:
	.long	1
	.zero	4
	.quad	mac_cmac_newctx
	.long	8
	.zero	4
	.quad	mac_digest_sign_init
	.long	9
	.zero	4
	.quad	mac_digest_sign_update
	.long	10
	.zero	4
	.quad	mac_digest_sign_final
	.long	16
	.zero	4
	.quad	mac_freectx
	.long	17
	.zero	4
	.quad	mac_dupctx
	.long	20
	.zero	4
	.quad	mac_set_ctx_params
	.long	21
	.zero	4
	.quad	mac_cmac_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"mac_digest_sign_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
