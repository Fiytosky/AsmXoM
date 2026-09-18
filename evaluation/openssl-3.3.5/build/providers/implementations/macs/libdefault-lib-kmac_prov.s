	.file	"kmac_prov.c"
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
	.type	kmac_string, @object
	.size	kmac_string, 6
kmac_string:
	.base64	"ASBLTUFD"
	.align 8
.LC0:
	.string	"../providers/implementations/macs/kmac_prov.c"
	.text
	.type	kmac_free, @function
kmac_free:
.LFB402:
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
	je	.L7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$68, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$740, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$153, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L7:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	kmac_free, .-kmac_free
	.type	kmac_new, @function
kmac_new:
.LFB403:
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
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	leaq	.LC0(%rip), %rax
	movl	$169, %edx
	movq	%rax, %rsi
	movl	$1256, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	call	EVP_MD_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kmac_free
	movl	$0, %eax
	jmp	.L10
.L12:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	kmac_new, .-kmac_new
	.type	kmac_fetch_new, @function
kmac_fetch_new:
.LFB404:
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
	movq	%rax, %rdi
	call	kmac_new
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L16
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kmac_free
	movl	$0, %eax
	jmp	.L15
.L16:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	kmac_fetch_new, .-kmac_fetch_new
	.type	kmac128_new, @function
kmac128_new:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	kmac128_params.7(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kmac_fetch_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	kmac128_new, .-kmac128_new
	.type	kmac256_new, @function
kmac256_new:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	kmac256_params.6(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kmac_fetch_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	kmac256_new, .-kmac256_new
	.type	kmac_dup, @function
kmac_dup:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	kmac_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L23
.L24:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy@PLT
	testl	%eax, %eax
	je	.L25
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_digest_copy@PLT
	testl	%eax, %eax
	jne	.L26
.L25:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	kmac_free
	movl	$0, %eax
	jmp	.L23
.L26:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movl	64(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	68(%rdx), %rsi
	movq	-16(%rbp), %rdx
	leaq	68(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	740(%rdx), %rsi
	movq	-16(%rbp), %rdx
	leaq	740(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	kmac_dup, .-kmac_dup
	.type	kmac_setkey, @function
kmac_setkey:
.LFB408:
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
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_block_size@PLT
	movl	%eax, -12(%rbp)
	cmpq	$3, -40(%rbp)
	jbe	.L28
	cmpq	$512, -40(%rbp)
	jbe	.L29
.L28:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$249, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L29:
	cmpl	$0, -12(%rbp)
	jg	.L31
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$166, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L31:
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	68(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$672, %esi
	call	kmac_bytepad_encode_key
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L30
.L32:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	kmac_setkey, .-kmac_setkey
	.section	.rodata
.LC1:
	.string	"custom"
.LC2:
	.string	""
	.text
	.type	kmac_init, @function
kmac_init:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L34
	movq	-176(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kmac_set_ctx_params
	testl	%eax, %eax
	jne	.L35
.L34:
	movl	$0, %eax
	jmp	.L46
.L35:
	cmpq	$0, -160(%rbp)
	je	.L37
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kmac_setkey
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L46
.L37:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$284, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L38:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L46
.L39:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_block_size@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L40
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$293, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$166, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L40:
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	leaq	.LC1(%rip), %rax
	movq	%rax, -144(%rbp)
	movl	$5, -136(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$-1, -112(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	leaq	-144(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kmac_set_ctx_params
.L41:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	740(%rax), %rsi
	leaq	kmac_string(%rip), %rdx
	leaq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movq	%rcx, %r9
	movq	%rsi, %r8
	movl	$6, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	bytepad
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L42:
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$312, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L46
.L43:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	740(%rax), %rsi
	leaq	kmac_string(%rip), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movq	%rcx, %r9
	movq	%rsi, %r8
	movl	$6, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	bytepad
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L44
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L44
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	68(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L44
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	movl	%eax, -44(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$319, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-44(%rbp), %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	kmac_init, .-kmac_init
	.type	kmac_update, @function
kmac_update:
.LFB410:
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
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	kmac_update, .-kmac_update
	.type	kmac_final, @function
kmac_final:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L56
.L50:
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jne	.L52
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	salq	$3, %rax
	movq	%rax, -8(%rbp)
	jmp	.L53
.L52:
	movq	$0, -8(%rbp)
.L53:
	movq	-8(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	right_encode
	testl	%eax, %eax
	je	.L54
	movq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L54
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	je	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movl	$0, %eax
.L55:
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-28(%rbp), %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	kmac_final, .-kmac_final
	.section	.rodata
.LC3:
	.string	"size"
.LC4:
	.string	"block-size"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 120
known_gettable_ctx_params:
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC4
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
	.type	kmac_gettable_ctx_params, @function
kmac_gettable_ctx_params:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	kmac_gettable_ctx_params, .-kmac_gettable_ctx_params
	.type	kmac_get_ctx_params, @function
kmac_get_ctx_params:
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
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L60
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	leaq	.LC4(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_block_size@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L61
.L62:
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	kmac_get_ctx_params, .-kmac_get_ctx_params
	.section	.rodata
.LC5:
	.string	"xof"
.LC6:
	.string	"key"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params, @object
	.size	known_settable_ctx_params, 200
known_settable_ctx_params:
	.quad	.LC5
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC6
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	5
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
	.text
	.type	kmac_settable_ctx_params, @function
kmac_settable_ctx_params:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	kmac_settable_ctx_params, .-kmac_settable_ctx_params
	.type	kmac_set_ctx_params, @function
kmac_set_ctx_params:
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
	cmpq	$0, -48(%rbp)
	jne	.L66
	movl	$1, %eax
	jmp	.L67
.L66:
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L68
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L67
.L68:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L69
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L67
.L70:
	movq	-24(%rbp), %rax
	cmpq	$2097151, %rax
	jbe	.L72
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$422, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$217, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L72:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
.L69:
	leaq	.LC6(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L73
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kmac_setkey
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L67
.L73:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L74
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$512, %rax
	jbe	.L75
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$433, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L75:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$56, %rdx
	movq	-8(%rbp), %rcx
	leaq	740(%rcx), %rdi
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$516, %esi
	call	encode_string
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L67
.L74:
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	kmac_set_ctx_params, .-kmac_set_ctx_params
	.type	get_encode_size, @function
get_encode_size:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$8, -8(%rbp)
	jmp	.L77
.L79:
	addl	$1, -4(%rbp)
	shrq	$8, -24(%rbp)
.L77:
	cmpq	$0, -24(%rbp)
	je	.L78
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jb	.L79
.L78:
	cmpl	$0, -4(%rbp)
	jne	.L80
	movl	$1, -4(%rbp)
.L80:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	get_encode_size, .-get_encode_size
	.type	right_encode, @function
right_encode:
.LFB417:
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
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_encode_size
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpq	-32(%rbp), %rax
	jb	.L83
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$474, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$202, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L83:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L85
.L86:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movb	%dl, (%rax)
	shrq	$8, -48(%rbp)
	subl	$1, -4(%rbp)
.L85:
	cmpl	$0, -4(%rbp)
	jns	.L86
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	right_encode, .-right_encode
	.type	encode_string, @function
encode_string:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L88
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L89
.L88:
	movq	-72(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	get_encode_size
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L90
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$511, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$202, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L92
.L93:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
	shrq	$8, -16(%rbp)
	subq	$1, -8(%rbp)
.L92:
	cmpq	$0, -8(%rbp)
	jne	.L93
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L89:
	movl	$1, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	encode_string, .-encode_string
	.type	bytepad, @function
bytepad:
.LFB419:
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
	movq	16(%rbp), %rax
	movl	%eax, -12(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L95
	cmpq	$0, -32(%rbp)
	jne	.L96
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$544, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L97
.L96:
	cmpq	$0, -56(%rbp)
	je	.L98
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	jmp	.L99
.L98:
	movl	$0, %edx
.L99:
	movq	-48(%rbp), %rax
	addl	%edx, %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movl	$0, %edx
	divq	16(%rbp)
	imulq	16(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L97
.L95:
	cmpq	$255, 16(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L100
	movl	$0, %eax
	jmp	.L97
.L100:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$1, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	16(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-48(%rbp), %rax
	addq	%rax, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L101
	cmpq	$0, -64(%rbp)
	je	.L101
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-64(%rbp), %rax
	addq	%rax, -8(%rbp)
.L101:
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movl	$0, %edx
	divq	16(%rbp)
	movl	%eax, %edx
	movq	16(%rbp), %rax
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.L102
	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L102:
	cmpq	$0, -32(%rbp)
	je	.L103
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L103:
	movl	$1, %eax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	bytepad, .-bytepad
	.type	kmac_bytepad_encode_key, @function
kmac_bytepad_encode_key:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movq	%rdi, -552(%rbp)
	movq	%rsi, -560(%rbp)
	movq	%rdx, -568(%rbp)
	movq	%rcx, -576(%rbp)
	movq	%r8, -584(%rbp)
	movq	%r9, -592(%rbp)
	movq	-584(%rbp), %rsi
	movq	-576(%rbp), %rcx
	leaq	-536(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movq	%rsi, %r8
	movl	$516, %esi
	movq	%rax, %rdi
	call	encode_string
	testl	%eax, %eax
	jne	.L105
	movl	$0, %eax
	jmp	.L109
.L105:
	movq	-536(%rbp), %rcx
	leaq	-528(%rbp), %rdx
	movq	-568(%rbp), %rax
	subq	$8, %rsp
	pushq	-592(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	bytepad
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L107
	movl	$0, %eax
	jmp	.L109
.L107:
	movq	-568(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -560(%rbp)
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	movq	-536(%rbp), %rcx
	leaq	-528(%rbp), %rdx
	movq	-552(%rbp), %rax
	subq	$8, %rsp
	pushq	-592(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	bytepad
	addq	$16, %rsp
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	kmac_bytepad_encode_key, .-kmac_bytepad_encode_key
	.globl	ossl_kmac128_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_kmac128_functions, @object
	.size	ossl_kmac128_functions, 176
ossl_kmac128_functions:
	.long	1
	.zero	4
	.quad	kmac128_new
	.long	2
	.zero	4
	.quad	kmac_dup
	.long	3
	.zero	4
	.quad	kmac_free
	.long	4
	.zero	4
	.quad	kmac_init
	.long	5
	.zero	4
	.quad	kmac_update
	.long	6
	.zero	4
	.quad	kmac_final
	.long	11
	.zero	4
	.quad	kmac_gettable_ctx_params
	.long	8
	.zero	4
	.quad	kmac_get_ctx_params
	.long	12
	.zero	4
	.quad	kmac_settable_ctx_params
	.long	9
	.zero	4
	.quad	kmac_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_kmac256_functions
	.align 32
	.type	ossl_kmac256_functions, @object
	.size	ossl_kmac256_functions, 176
ossl_kmac256_functions:
	.long	1
	.zero	4
	.quad	kmac256_new
	.long	2
	.zero	4
	.quad	kmac_dup
	.long	3
	.zero	4
	.quad	kmac_free
	.long	4
	.zero	4
	.quad	kmac_init
	.long	5
	.zero	4
	.quad	kmac_update
	.long	6
	.zero	4
	.quad	kmac_final
	.long	11
	.zero	4
	.quad	kmac_gettable_ctx_params
	.long	8
	.zero	4
	.quad	kmac_get_ctx_params
	.long	12
	.zero	4
	.quad	kmac_settable_ctx_params
	.long	9
	.zero	4
	.quad	kmac_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC7:
	.string	"digest"
.LC8:
	.string	"KECCAK-KMAC-128"
	.section	.data.rel.ro.local
	.align 32
	.type	kmac128_params.7, @object
	.size	kmac128_params.7, 80
kmac128_params.7:
	.quad	.LC7
	.long	4
	.zero	4
	.quad	.LC8
	.quad	16
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC9:
	.string	"KECCAK-KMAC-256"
	.section	.data.rel.ro.local
	.align 32
	.type	kmac256_params.6, @object
	.size	kmac256_params.6, 80
kmac256_params.6:
	.quad	.LC7
	.long	4
	.zero	4
	.quad	.LC9
	.quad	16
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 12
__func__.5:
	.string	"kmac_setkey"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 10
__func__.4:
	.string	"kmac_init"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 20
__func__.3:
	.string	"kmac_set_ctx_params"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 13
__func__.2:
	.string	"right_encode"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"encode_string"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 8
__func__.0:
	.string	"bytepad"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
