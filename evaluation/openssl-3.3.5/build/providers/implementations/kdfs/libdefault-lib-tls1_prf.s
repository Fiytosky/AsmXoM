	.file	"tls1_prf.c"
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
	.type	safe_add_size_t, @function
safe_add_size_t:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	jnc	.L6
	movl	$1, %ecx
.L6:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L8
	movq	-8(%rbp), %rax
	jmp	.L10
.L8:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	safe_add_size_t, .-safe_add_size_t
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/kdfs/tls1_prf.c"
	.text
	.type	kdf_tls1_prf_new, @function
kdf_tls1_prf_new:
.LFB466:
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
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	leaq	.LC0(%rip), %rax
	movl	$118, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L14:
	movq	-8(%rbp), %rax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	kdf_tls1_prf_new, .-kdf_tls1_prf_new
	.type	kdf_tls1_prf_free, @function
kdf_tls1_prf_free:
.LFB467:
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
	je	.L17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_tls1_prf_reset
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$129, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L17:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	kdf_tls1_prf_free, .-kdf_tls1_prf_free
	.type	kdf_tls1_prf_reset, @function
kdf_tls1_prf_reset:
.LFB468:
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
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$140, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$141, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	kdf_tls1_prf_reset, .-kdf_tls1_prf_reset
	.type	kdf_tls1_prf_dup, @function
kdf_tls1_prf_dup:
.LFB469:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	kdf_tls1_prf_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L26
.L21:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L27
.L23:
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L28
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L29
.L20:
	movq	-16(%rbp), %rax
	jmp	.L25
.L26:
	nop
	jmp	.L22
.L27:
	nop
	jmp	.L22
.L28:
	nop
	jmp	.L22
.L29:
	nop
.L22:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_tls1_prf_free
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	kdf_tls1_prf_dup, .-kdf_tls1_prf_dup
	.section	.rodata
.LC1:
	.string	"master secret"
	.text
	.type	kdf_tls1_prf_derive, @function
kdf_tls1_prf_derive:
.LFB470:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L31
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_tls1_prf_set_ctx_params
	testl	%eax, %eax
	jne	.L32
.L31:
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$182, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L34:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$186, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L35:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$190, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L36:
	cmpq	$0, -40(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L37:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_tls1_prf_ems_check_enabled@PLT
	testl	%eax, %eax
	je	.L38
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	$12, %rax
	jbe	.L38
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$208, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$233, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L38:
	movq	-8(%rbp), %rax
	movq	48(%rax), %r8
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls1_prf_alg
	addq	$16, %rsp
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	kdf_tls1_prf_derive, .-kdf_tls1_prf_derive
	.section	.rodata
.LC2:
	.string	"digest"
.LC3:
	.string	"MD5-SHA1"
.LC4:
	.string	"MD5"
.LC5:
	.string	"HMAC"
.LC6:
	.string	"SHA1"
.LC7:
	.string	"secret"
.LC8:
	.string	"seed"
	.text
	.type	kdf_tls1_prf_set_ctx_params, @function
kdf_tls1_prf_set_ctx_params:
.LFB471:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	leaq	.LC2(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L43
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-24(%rbp), %rcx
	leaq	.LC4(%rip), %rsi
	leaq	.LC5(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r9
	movq	%rsi, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	call	ossl_prov_macctx_load_from_params@PLT
	testl	%eax, %eax
	je	.L44
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-24(%rbp), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC5(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r9
	movq	%rsi, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	call	ossl_prov_macctx_load_from_params@PLT
	testl	%eax, %eax
	jne	.L42
.L44:
	movl	$0, %eax
	jmp	.L41
.L43:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-24(%rbp), %rcx
	leaq	.LC5(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	ossl_prov_macctx_load_from_params@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L41
.L42:
	leaq	.LC7(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L45
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$247, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L41
.L45:
	leaq	.LC8(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L46
	jmp	.L47
.L54:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string_ptr@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L41
.L49:
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	leaq	-60(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_size_t
	movq	%rax, -32(%rbp)
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	je	.L51
	movl	$0, %eax
	jmp	.L41
.L51:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rdx
	movl	$270, %r8d
	movq	%rax, %rdi
	call	CRYPTO_clear_realloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L41
.L52:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L53
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L53:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L48:
	movq	-8(%rbp), %rax
	addq	$40, %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
.L47:
	cmpq	$0, -8(%rbp)
	jne	.L54
.L46:
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	kdf_tls1_prf_set_ctx_params, .-kdf_tls1_prf_set_ctx_params
	.type	kdf_tls1_prf_settable_ctx_params, @function
kdf_tls1_prf_settable_ctx_params:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	kdf_tls1_prf_settable_ctx_params, .-kdf_tls1_prf_settable_ctx_params
	.section	.rodata
.LC9:
	.string	"size"
	.text
	.type	kdf_tls1_prf_get_ctx_params, @function
kdf_tls1_prf_get_ctx_params:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC9(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L58
	movq	-8(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	jmp	.L59
.L58:
	movl	$-2, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	kdf_tls1_prf_get_ctx_params, .-kdf_tls1_prf_get_ctx_params
	.type	kdf_tls1_prf_gettable_ctx_params, @function
kdf_tls1_prf_gettable_ctx_params:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	kdf_tls1_prf_gettable_ctx_params, .-kdf_tls1_prf_gettable_ctx_params
	.globl	ossl_kdf_tls1_prf_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_tls1_prf_functions, @object
	.size	ossl_kdf_tls1_prf_functions, 160
ossl_kdf_tls1_prf_functions:
	.long	1
	.zero	4
	.quad	kdf_tls1_prf_new
	.long	2
	.zero	4
	.quad	kdf_tls1_prf_dup
	.long	3
	.zero	4
	.quad	kdf_tls1_prf_free
	.long	4
	.zero	4
	.quad	kdf_tls1_prf_reset
	.long	5
	.zero	4
	.quad	kdf_tls1_prf_derive
	.long	8
	.zero	4
	.quad	kdf_tls1_prf_settable_ctx_params
	.long	11
	.zero	4
	.quad	kdf_tls1_prf_set_ctx_params
	.long	7
	.zero	4
	.quad	kdf_tls1_prf_gettable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_tls1_prf_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.text
	.type	tls1_prf_P_hash, @function
tls1_prf_P_hash:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L79
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get_mac_size@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L80
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L81
	cmpq	$0, -144(%rbp)
	je	.L77
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L82
.L77:
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$64, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L83
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	$0, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L84
	movq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L85
	movq	16(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L71
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L86
.L71:
	cmpq	$0, -144(%rbp)
	je	.L72
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L87
.L72:
	movq	16(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L73
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$64, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L88
	movq	16(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	nop
	movl	$1, -20(%rbp)
	jmp	.L64
.L73:
	movq	16(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L89
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -160(%rbp)
	movq	-32(%rbp), %rax
	subq	%rax, 16(%rbp)
	jmp	.L77
.L79:
	nop
	jmp	.L64
.L80:
	nop
	jmp	.L64
.L81:
	nop
	jmp	.L64
.L82:
	nop
	jmp	.L64
.L83:
	nop
	jmp	.L64
.L84:
	nop
	jmp	.L64
.L85:
	nop
	jmp	.L64
.L86:
	nop
	jmp	.L64
.L87:
	nop
	jmp	.L64
.L88:
	nop
	jmp	.L64
.L89:
	nop
.L64:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	leaq	-96(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	tls1_prf_P_hash, .-tls1_prf_P_hash
	.type	tls1_prf_alg, @function
tls1_prf_alg:
.LFB476:
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
	movq	%r9, -80(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L91
	movq	-64(%rbp), %rax
	addq	$1, %rax
	shrq	%rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls1_prf_P_hash
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L92
	movl	$0, %eax
	jmp	.L93
.L92:
	leaq	.LC0(%rip), %rcx
	movq	24(%rbp), %rax
	movl	$456, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L93
.L94:
	movq	-64(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-32(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls1_prf_P_hash
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L95
	leaq	.LC0(%rip), %rdx
	movq	24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$461, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	$0, %eax
	jmp	.L93
.L95:
	movq	$0, -8(%rbp)
	jmp	.L96
.L97:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L96:
	movq	-8(%rbp), %rax
	cmpq	24(%rbp), %rax
	jb	.L97
	leaq	.LC0(%rip), %rdx
	movq	24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$466, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	$1, %eax
	jmp	.L93
.L91:
	movq	16(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls1_prf_P_hash
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L98
	movl	$0, %eax
	jmp	.L93
.L98:
	movl	$1, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	tls1_prf_alg, .-tls1_prf_alg
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"kdf_tls1_prf_derive"
.LC10:
	.string	"properties"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.1, @object
	.size	known_settable_ctx_params.1, 200
known_settable_ctx_params.1:
	.quad	.LC10
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
	.quad	.LC7
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
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
	.align 32
	.type	known_gettable_ctx_params.0, @object
	.size	known_gettable_ctx_params.0, 80
known_gettable_ctx_params.0:
	.quad	.LC9
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
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
