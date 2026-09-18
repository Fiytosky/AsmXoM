	.file	"hmacdrbg_kdf.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/kdfs/hmacdrbg_kdf.c"
	.text
	.type	hmac_drbg_kdf_new, @function
hmac_drbg_kdf_new:
.LFB358:
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
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
	movl	$47, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 168(%rax)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	hmac_drbg_kdf_new, .-hmac_drbg_kdf_new
	.type	hmac_drbg_kdf_reset, @function
hmac_drbg_kdf_reset:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	movq	-8(%rbp), %rax
	movq	192(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$64, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	200(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$65, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 168(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	hmac_drbg_kdf_reset, .-hmac_drbg_kdf_reset
	.type	hmac_drbg_kdf_free, @function
hmac_drbg_kdf_free:
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
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_drbg_kdf_reset
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$76, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	hmac_drbg_kdf_free, .-hmac_drbg_kdf_free
	.type	ossl_drbg_hmac_dup, @function
ossl_drbg_hmac_dup:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_digest_copy@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	ossl_drbg_hmac_dup, .-ossl_drbg_hmac_dup
	.type	hmac_drbg_kdf_dup, @function
hmac_drbg_kdf_dup:
.LFB362:
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
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	hmac_drbg_kdf_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L14
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_hmac_dup
	testl	%eax, %eax
	je	.L19
	movq	-16(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	176(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	192(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L19
	movq	-16(%rbp), %rax
	leaq	200(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	184(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	200(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L19
	movq	-8(%rbp), %rax
	movl	208(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 208(%rax)
.L14:
	movq	-16(%rbp), %rax
	jmp	.L18
.L19:
	nop
.L17:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	hmac_drbg_kdf_free
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	hmac_drbg_kdf_dup, .-hmac_drbg_kdf_dup
	.type	hmac_drbg_kdf_derive, @function
hmac_drbg_kdf_derive:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L21
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hmac_drbg_kdf_set_ctx_params
	testl	%eax, %eax
	jne	.L22
.L21:
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movl	208(%rax), %eax
	testl	%eax, %eax
	jne	.L24
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	184(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	176(%rax), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_drbg_hmac_init@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L26
.L25:
	movl	$0, %eax
	jmp	.L23
.L26:
	movq	-8(%rbp), %rax
	movl	$1, 208(%rax)
.L24:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_drbg_hmac_generate@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	hmac_drbg_kdf_derive, .-hmac_drbg_kdf_derive
	.section	.rodata
.LC1:
	.string	"mac"
.LC2:
	.string	"digest"
	.text
	.type	hmac_drbg_kdf_get_ctx_params, @function
hmac_drbg_kdf_get_ctx_params:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L28
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get0_mac@PLT
	movq	%rax, %rdi
	call	EVP_MAC_get0_name@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L30
.L28:
	leaq	.LC2(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L32
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L31
.L32:
	movl	$0, %eax
	jmp	.L30
.L31:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	hmac_drbg_kdf_get_ctx_params, .-hmac_drbg_kdf_get_ctx_params
	.type	hmac_drbg_kdf_gettable_ctx_params, @function
hmac_drbg_kdf_gettable_ctx_params:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	hmac_drbg_kdf_gettable_ctx_params, .-hmac_drbg_kdf_gettable_ctx_params
	.section	.rodata
.LC3:
	.string	"entropy"
.LC4:
	.string	"nonce"
.LC5:
	.string	"HMAC"
	.text
	.type	hmac_drbg_kdf_set_ctx_params, @function
hmac_drbg_kdf_set_ctx_params:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L36
	movl	$1, %eax
	jmp	.L46
.L36:
	leaq	.LC3(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L38
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L46
.L39:
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$194, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 176(%rax)
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 208(%rax)
	movq	$0, -48(%rbp)
.L38:
	leaq	.LC4(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L40
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L46
.L41:
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$205, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 184(%rax)
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 208(%rax)
.L40:
	leaq	.LC2(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L42
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L46
.L43:
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L44
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_flags@PLT
	andl	$2, %eax
	testq	%rax, %rax
	je	.L45
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$220, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$183, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
.L44:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	leaq	.LC5(%rip), %rdx
	movq	-80(%rbp), %rsi
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_prov_macctx_load_from_params@PLT
	jmp	.L46
.L42:
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	hmac_drbg_kdf_set_ctx_params, .-hmac_drbg_kdf_set_ctx_params
	.type	hmac_drbg_kdf_settable_ctx_params, @function
hmac_drbg_kdf_settable_ctx_params:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	hmac_drbg_kdf_settable_ctx_params, .-hmac_drbg_kdf_settable_ctx_params
	.globl	ossl_kdf_hmac_drbg_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_hmac_drbg_functions, @object
	.size	ossl_kdf_hmac_drbg_functions, 160
ossl_kdf_hmac_drbg_functions:
	.long	1
	.zero	4
	.quad	hmac_drbg_kdf_new
	.long	3
	.zero	4
	.quad	hmac_drbg_kdf_free
	.long	2
	.zero	4
	.quad	hmac_drbg_kdf_dup
	.long	4
	.zero	4
	.quad	hmac_drbg_kdf_reset
	.long	5
	.zero	4
	.quad	hmac_drbg_kdf_derive
	.long	8
	.zero	4
	.quad	hmac_drbg_kdf_settable_ctx_params
	.long	11
	.zero	4
	.quad	hmac_drbg_kdf_set_ctx_params
	.long	7
	.zero	4
	.quad	hmac_drbg_kdf_gettable_ctx_params
	.long	10
	.zero	4
	.quad	hmac_drbg_kdf_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"hmac_drbg_kdf_new"
	.section	.data.rel.ro.local
	.align 32
	.type	known_gettable_ctx_params.2, @object
	.size	known_gettable_ctx_params.2, 120
known_gettable_ctx_params.2:
	.quad	.LC1
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"hmac_drbg_kdf_set_ctx_params"
.LC6:
	.string	"properties"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.0, @object
	.size	known_settable_ctx_params.0, 200
known_settable_ctx_params.0:
	.quad	.LC3
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
