	.file	"kdf_exch.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/exchange/kdf_exch.c"
	.text
	.type	kdf_newctx, @function
kdf_newctx:
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
	movq	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
	movl	$53, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-16(%rbp), %rax
	jmp	.L3
.L8:
	nop
	jmp	.L6
.L9:
	nop
.L6:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$70, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	kdf_newctx, .-kdf_newctx
	.section	.rodata
.LC1:
	.string	"TLS1-PRF"
	.text
	.type	kdf_tls1_prf_newctx, @function
kdf_tls1_prf_newctx:
.LFB322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	kdf_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	kdf_tls1_prf_newctx, .-kdf_tls1_prf_newctx
	.section	.rodata
.LC2:
	.string	"HKDF"
	.text
	.type	kdf_hkdf_newctx, @function
kdf_hkdf_newctx:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	kdf_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	kdf_hkdf_newctx, .-kdf_hkdf_newctx
	.section	.rodata
.LC3:
	.string	"SCRYPT"
	.text
	.type	kdf_scrypt_newctx, @function
kdf_scrypt_newctx:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	kdf_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	kdf_scrypt_newctx, .-kdf_scrypt_newctx
	.type	kdf_init, @function
kdf_init:
.LFB325:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L17
	cmpq	$0, -8(%rbp)
	je	.L17
	cmpq	$0, -32(%rbp)
	je	.L17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_kdf_data_up_ref@PLT
	testl	%eax, %eax
	jne	.L18
.L17:
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_set_ctx_params
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	kdf_init, .-kdf_init
	.type	kdf_derive, @function
kdf_derive:
.LFB326:
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
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_kdf_size@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L23
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L22
.L23:
	cmpq	$-1, -16(%rbp)
	je	.L24
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L25
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L25:
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.L24:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L26
	movl	$0, %eax
	jmp	.L22
.L26:
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	kdf_derive, .-kdf_derive
	.type	kdf_freectx, @function
kdf_freectx:
.LFB327:
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
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_kdf_data_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$138, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE327:
	.size	kdf_freectx, .-kdf_freectx
	.type	kdf_dupctx, @function
kdf_dupctx:
.LFB328:
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
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	leaq	.LC0(%rip), %rax
	movl	$149, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$157, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L30
.L32:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_kdf_data_up_ref@PLT
	testl	%eax, %eax
	jne	.L33
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$162, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L30
.L33:
	movq	-16(%rbp), %rax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE328:
	.size	kdf_dupctx, .-kdf_dupctx
	.type	kdf_set_ctx_params, @function
kdf_set_ctx_params:
.LFB329:
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
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE329:
	.size	kdf_set_ctx_params, .-kdf_set_ctx_params
	.type	kdf_get_ctx_params, @function
kdf_get_ctx_params:
.LFB330:
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
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_get_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE330:
	.size	kdf_get_ctx_params, .-kdf_get_ctx_params
	.type	kdf_settable_ctx_params, @function
kdf_settable_ctx_params:
.LFB331:
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
	call	EVP_KDF_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_settable_ctx_params@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	-16(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE331:
	.size	kdf_settable_ctx_params, .-kdf_settable_ctx_params
	.type	kdf_tls1_prf_settable_ctx_params, @function
kdf_tls1_prf_settable_ctx_params:
.LFB332:
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
	call	kdf_settable_ctx_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE332:
	.size	kdf_tls1_prf_settable_ctx_params, .-kdf_tls1_prf_settable_ctx_params
	.type	kdf_hkdf_settable_ctx_params, @function
kdf_hkdf_settable_ctx_params:
.LFB333:
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
	call	kdf_settable_ctx_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE333:
	.size	kdf_hkdf_settable_ctx_params, .-kdf_hkdf_settable_ctx_params
	.type	kdf_scrypt_settable_ctx_params, @function
kdf_scrypt_settable_ctx_params:
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
	leaq	.LC3(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kdf_settable_ctx_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE334:
	.size	kdf_scrypt_settable_ctx_params, .-kdf_scrypt_settable_ctx_params
	.type	kdf_gettable_ctx_params, @function
kdf_gettable_ctx_params:
.LFB335:
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
	call	EVP_KDF_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_gettable_ctx_params@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	movq	-16(%rbp), %rax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE335:
	.size	kdf_gettable_ctx_params, .-kdf_gettable_ctx_params
	.type	kdf_tls1_prf_gettable_ctx_params, @function
kdf_tls1_prf_gettable_ctx_params:
.LFB336:
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
	call	kdf_gettable_ctx_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE336:
	.size	kdf_tls1_prf_gettable_ctx_params, .-kdf_tls1_prf_gettable_ctx_params
	.type	kdf_hkdf_gettable_ctx_params, @function
kdf_hkdf_gettable_ctx_params:
.LFB337:
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
	call	kdf_gettable_ctx_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE337:
	.size	kdf_hkdf_gettable_ctx_params, .-kdf_hkdf_gettable_ctx_params
	.type	kdf_scrypt_gettable_ctx_params, @function
kdf_scrypt_gettable_ctx_params:
.LFB338:
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
	call	kdf_gettable_ctx_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE338:
	.size	kdf_scrypt_gettable_ctx_params, .-kdf_scrypt_gettable_ctx_params
	.globl	ossl_kdf_tls1_prf_keyexch_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_tls1_prf_keyexch_functions, @object
	.size	ossl_kdf_tls1_prf_keyexch_functions, 160
ossl_kdf_tls1_prf_keyexch_functions:
	.long	1
	.zero	4
	.quad	kdf_tls1_prf_newctx
	.long	2
	.zero	4
	.quad	kdf_init
	.long	3
	.zero	4
	.quad	kdf_derive
	.long	5
	.zero	4
	.quad	kdf_freectx
	.long	6
	.zero	4
	.quad	kdf_dupctx
	.long	7
	.zero	4
	.quad	kdf_set_ctx_params
	.long	9
	.zero	4
	.quad	kdf_get_ctx_params
	.long	8
	.zero	4
	.quad	kdf_tls1_prf_settable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_tls1_prf_gettable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_kdf_hkdf_keyexch_functions
	.align 32
	.type	ossl_kdf_hkdf_keyexch_functions, @object
	.size	ossl_kdf_hkdf_keyexch_functions, 160
ossl_kdf_hkdf_keyexch_functions:
	.long	1
	.zero	4
	.quad	kdf_hkdf_newctx
	.long	2
	.zero	4
	.quad	kdf_init
	.long	3
	.zero	4
	.quad	kdf_derive
	.long	5
	.zero	4
	.quad	kdf_freectx
	.long	6
	.zero	4
	.quad	kdf_dupctx
	.long	7
	.zero	4
	.quad	kdf_set_ctx_params
	.long	9
	.zero	4
	.quad	kdf_get_ctx_params
	.long	8
	.zero	4
	.quad	kdf_hkdf_settable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_hkdf_gettable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_kdf_scrypt_keyexch_functions
	.align 32
	.type	ossl_kdf_scrypt_keyexch_functions, @object
	.size	ossl_kdf_scrypt_keyexch_functions, 160
ossl_kdf_scrypt_keyexch_functions:
	.long	1
	.zero	4
	.quad	kdf_scrypt_newctx
	.long	2
	.zero	4
	.quad	kdf_init
	.long	3
	.zero	4
	.quad	kdf_derive
	.long	5
	.zero	4
	.quad	kdf_freectx
	.long	6
	.zero	4
	.quad	kdf_dupctx
	.long	7
	.zero	4
	.quad	kdf_set_ctx_params
	.long	9
	.zero	4
	.quad	kdf_get_ctx_params
	.long	8
	.zero	4
	.quad	kdf_scrypt_settable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_scrypt_gettable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"kdf_derive"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
