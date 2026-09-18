	.file	"ecdh_exch.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/exchange/ecdh_exch.c"
	.text
	.type	ecdh_newctx, @function
ecdh_newctx:
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
	movl	$90, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movl	$-1, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	ecdh_newctx, .-ecdh_newctx
	.type	ecdh_init, @function
ecdh_init:
.LFB359:
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
	je	.L6
	cmpq	$0, -8(%rbp)
	je	.L6
	cmpq	$0, -32(%rbp)
	je	.L6
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecdh_set_ctx_params
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_check_key@PLT
	testl	%eax, %eax
	je	.L9
	movl	$1, %eax
	jmp	.L8
.L9:
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	ecdh_init, .-ecdh_init
	.type	ecdh_match_params, @function
ecdh_match_params:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L13
.L12:
	cmpq	$0, -16(%rbp)
	je	.L14
	cmpq	$0, -24(%rbp)
	je	.L14
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_cmp@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	movl	$0, %eax
.L15:
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$136, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$203, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L16:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-28(%rbp), %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	ecdh_match_params, .-ecdh_match_params
	.type	ecdh_set_peer, @function
ecdh_set_peer:
.LFB361:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L18
	cmpq	$0, -8(%rbp)
	je	.L18
	cmpq	$0, -32(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecdh_match_params
	testl	%eax, %eax
	je	.L18
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_check_key@PLT
	testl	%eax, %eax
	je	.L18
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L19
.L18:
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	ecdh_set_peer, .-ecdh_set_peer
	.type	ecdh_freectx, @function
ecdh_freectx:
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
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$168, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$170, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	ecdh_freectx, .-ecdh_freectx
	.type	ecdh_dupctx, @function
ecdh_dupctx:
.LFB363:
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
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	leaq	.LC0(%rip), %rax
	movl	$182, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L25
	movl	$0, %eax
	jmp	.L24
.L25:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
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
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	je	.L31
.L26:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	je	.L32
.L28:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	je	.L33
.L29:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$214, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L34
.L30:
	movq	-32(%rbp), %rax
	jmp	.L24
.L31:
	nop
	jmp	.L27
.L32:
	nop
	jmp	.L27
.L33:
	nop
	jmp	.L27
.L34:
	nop
.L27:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ecdh_freectx
	movl	$0, %eax
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	ecdh_dupctx, .-ecdh_dupctx
	.section	.rodata
.LC1:
	.string	"ecdh-cofactor-mode"
.LC2:
	.string	"kdf-type"
.LC3:
	.string	"X963KDF"
.LC4:
	.string	"kdf-digest"
.LC5:
	.string	"kdf-digest-props"
.LC6:
	.string	"kdf-outlen"
.LC7:
	.string	"kdf-ukm"
	.text
	.type	ecdh_set_ctx_params, @function
ecdh_set_ctx_params:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -104(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L58
.L36:
	cmpq	$0, -240(%rbp)
	jne	.L38
	movl	$1, %eax
	jmp	.L58
.L38:
	leaq	.LC1(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	leaq	-108(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L58
.L40:
	movl	-108(%rbp), %eax
	cmpl	$-1, %eax
	jl	.L42
	movl	-108(%rbp), %eax
	cmpl	$1, %eax
	jle	.L43
.L42:
	movl	$0, %eax
	jmp	.L58
.L43:
	movl	-108(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
.L39:
	leaq	.LC2(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L44
	leaq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-104(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L58
.L45:
	movzbl	-96(%rbp), %eax
	testb	%al, %al
	jne	.L46
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	jmp	.L44
.L46:
	leaq	.LC3(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-8(%rbp), %rax
	movl	$1, 28(%rax)
	jmp	.L44
.L47:
	movl	$0, %eax
	jmp	.L58
.L44:
	leaq	.LC4(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L48
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-104(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L58
.L49:
	leaq	-224(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L51
	leaq	-104(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L58
.L51:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-224(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L52
	movl	$0, %eax
	jmp	.L58
.L52:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_digest_is_allowed@PLT
	testl	%eax, %eax
	jne	.L48
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movl	$0, %eax
	jmp	.L58
.L48:
	leaq	.LC6(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L54
	leaq	-120(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L58
.L55:
	movq	-120(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
.L54:
	leaq	.LC7(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L56
	movq	$0, -128(%rbp)
	leaq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$311, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-128(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-136(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
.L56:
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	ecdh_set_ctx_params, .-ecdh_set_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_settable_ctx_params, @object
	.size	known_settable_ctx_params, 280
known_settable_ctx_params:
	.quad	.LC1
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC7
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
	.type	ecdh_settable_ctx_params, @function
ecdh_settable_ctx_params:
.LFB365:
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
.LFE365:
	.size	ecdh_settable_ctx_params, .-ecdh_settable_ctx_params
	.section	.rodata
.LC8:
	.string	""
	.text
	.type	ecdh_get_ctx_params, @function
ecdh_get_ctx_params:
.LFB366:
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
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L62
	movl	$0, %eax
	jmp	.L63
.L62:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L64
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L65
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	andl	$4096, %eax
	shrl	$12, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L65:
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L63
.L64:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L66
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L67
	cmpl	$1, %eax
	je	.L68
	jmp	.L76
.L67:
	leaq	.LC8(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L70
.L68:
	leaq	.LC3(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L70
.L76:
	movl	$0, %eax
	jmp	.L63
.L70:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L63
.L66:
	leaq	.LC4(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L71
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	jmp	.L73
.L72:
	leaq	.LC8(%rip), %rax
.L73:
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L63
.L71:
	leaq	.LC6(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L74
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L63
.L74:
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L75
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L63
.L75:
	movl	$1, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	ecdh_get_ctx_params, .-ecdh_get_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 240
known_gettable_ctx_params:
	.quad	.LC1
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC7
	.long	7
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
	.type	ecdh_gettable_ctx_params, @function
ecdh_gettable_ctx_params:
.LFB367:
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
.LFE367:
	.size	ecdh_gettable_ctx_params, .-ecdh_gettable_ctx_params
	.type	ecdh_size, @function
ecdh_size:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L80
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L81
.L80:
	movl	$0, %eax
	jmp	.L82
.L81:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ecdh_size, .-ecdh_size
	.type	ecdh_plain_derive, @function
ecdh_plain_derive:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L85
.L84:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$443, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L85:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ecdh_size
	movq	%rax, -40(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L87
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L86
.L87:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L88
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L89
.L88:
	movl	$0, %eax
	jmp	.L86
.L89:
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	andl	$4096, %eax
	shrl	$12, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$-1, %eax
	je	.L90
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -68(%rbp)
	je	.L90
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L90
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L91
	movl	$0, %eax
	jmp	.L86
.L91:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L92
	movq	-16(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_flags@PLT
	jmp	.L94
.L92:
	movq	-16(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	EC_KEY_clear_flags@PLT
	jmp	.L94
.L90:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L94:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ECDH_compute_key@PLT
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jle	.L98
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L96
.L98:
	nop
.L96:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L97
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
.L97:
	movl	-4(%rbp), %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ecdh_plain_derive, .-ecdh_plain_derive
	.type	ecdh_X9_63_kdf_derive, @function
ecdh_X9_63_kdf_derive:
.LFB370:
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
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L100
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L108
.L100:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L102
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$522, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L108
.L102:
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ecdh_plain_derive
	testl	%eax, %eax
	jne	.L103
	movl	$0, %eax
	jmp	.L108
.L103:
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$527, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L104
	movl	$0, %eax
	jmp	.L108
.L104:
	movq	-32(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ecdh_plain_derive
	testl	%eax, %eax
	je	.L109
	movq	-16(%rbp), %rax
	movq	(%rax), %r8
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %r9
	movq	-16(%rbp), %rax
	movq	40(%rax), %r10
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	ossl_ecdh_kdf_X9_63@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L110
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L106
.L109:
	nop
	jmp	.L106
.L110:
	nop
.L106:
	movq	-32(%rbp), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$544, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	movl	-4(%rbp), %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	ecdh_X9_63_kdf_derive, .-ecdh_X9_63_kdf_derive
	.type	ecdh_derive, @function
ecdh_derive:
.LFB371:
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
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L112
	cmpl	$1, %eax
	je	.L113
	nop
	movl	$0, %eax
	jmp	.L115
.L112:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecdh_plain_derive
	jmp	.L115
.L113:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecdh_X9_63_kdf_derive
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	ecdh_derive, .-ecdh_derive
	.globl	ossl_ecdh_keyexch_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ecdh_keyexch_functions, @object
	.size	ossl_ecdh_keyexch_functions, 176
ossl_ecdh_keyexch_functions:
	.long	1
	.zero	4
	.quad	ecdh_newctx
	.long	2
	.zero	4
	.quad	ecdh_init
	.long	3
	.zero	4
	.quad	ecdh_derive
	.long	4
	.zero	4
	.quad	ecdh_set_peer
	.long	5
	.zero	4
	.quad	ecdh_freectx
	.long	6
	.zero	4
	.quad	ecdh_dupctx
	.long	7
	.zero	4
	.quad	ecdh_set_ctx_params
	.long	8
	.zero	4
	.quad	ecdh_settable_ctx_params
	.long	9
	.zero	4
	.quad	ecdh_get_ctx_params
	.long	10
	.zero	4
	.quad	ecdh_gettable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"ecdh_match_params"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"ecdh_plain_derive"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"ecdh_X9_63_kdf_derive"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
