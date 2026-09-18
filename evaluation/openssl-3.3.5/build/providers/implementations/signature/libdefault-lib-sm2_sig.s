	.file	"sm2_sig.c"
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
	.string	"../providers/implementations/signature/sm2_sig.c"
.LC1:
	.string	"digest=%s"
	.text
	.type	sm2sig_set_mdname, @function
sm2sig_set_mdname:
.LFB441:
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
	movq	352(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	25(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 352(%rdx)
.L6:
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	cmpq	$0, -16(%rbp)
	jne	.L9
	movl	$1, %eax
	jmp	.L8
.L9:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$49, %rax
	ja	.L10
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	jne	.L11
.L10:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L11:
	movq	-8(%rbp), %rax
	leaq	25(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	sm2sig_set_mdname, .-sm2sig_set_mdname
	.type	sm2sig_newctx, @function
sm2sig_newctx:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$117, %edx
	movq	%rax, %rsi
	movl	$392, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	cmpq	$0, -32(%rbp)
	je	.L15
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L14
.L15:
	movq	-8(%rbp), %rax
	movq	$32, 368(%rax)
	movq	-8(%rbp), %rax
	addq	$25, %rax
	movl	$3362131, (%rax)
	movq	-8(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	sm2sig_newctx, .-sm2sig_newctx
	.type	sm2sig_signature_init, @function
sm2sig_signature_init:
.LFB443:
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
	jne	.L18
.L17:
	movl	$0, %eax
	jmp	.L19
.L18:
	cmpq	$0, -32(%rbp)
	jne	.L20
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$142, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L19
.L20:
	cmpq	$0, -32(%rbp)
	je	.L21
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L19
.L22:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L21:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sm2sig_set_ctx_params
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	sm2sig_signature_init, .-sm2sig_signature_init
	.type	sm2sig_sign, @function
sm2sig_sign:
.LFB444:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ECDSA_size@PLT
	cltq
	movq	%rax, -16(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L24
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L29
.L24:
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L26
	movl	$0, %eax
	jmp	.L29
.L26:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	cmpq	%rax, -80(%rbp)
	je	.L27
	movl	$0, %eax
	jmp	.L29
.L27:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-80(%rbp), %rax
	movl	%eax, %edi
	leaq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r8
	movl	%edi, %esi
	movq	%rax, %rdi
	call	ossl_sm2_internal_sign@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	sm2sig_sign, .-sm2sig_sign
	.type	sm2sig_verify, @function
sm2sig_verify:
.LFB445:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	cmpq	%rax, -56(%rbp)
	je	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movl	%edi, %ecx
	movq	%rax, %rdi
	call	ossl_sm2_internal_verify@PLT
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	sm2sig_verify, .-sm2sig_verify
	.type	free_md, @function
free_md:
.LFB446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 352(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	free_md, .-free_md
	.type	sm2sig_digest_signverify_init, @function
sm2sig_digest_signverify_init:
.LFB447:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sm2sig_signature_init
	testl	%eax, %eax
	je	.L35
	movq	-96(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sm2sig_set_mdname
	testl	%eax, %eax
	jne	.L36
.L35:
	movl	-4(%rbp), %eax
	jmp	.L42
.L36:
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	call	EVP_MD_CTX_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 360(%rdx)
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L43
.L38:
	movq	-16(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-16(%rbp), %rax
	leaq	75(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_der@PLT
	testl	%eax, %eax
	je	.L40
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %ecx
	leaq	-80(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_algorithmIdentifier_SM2_with_MD@PLT
	testl	%eax, %eax
	je	.L40
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	je	.L40
	movq	-16(%rbp), %rax
	leaq	344(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 336(%rdx)
.L40:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movq	-16(%rbp), %rax
	movq	352(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex2@PLT
	testl	%eax, %eax
	je	.L44
	movq	-16(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	movl	$1, -4(%rbp)
	jmp	.L39
.L43:
	nop
	jmp	.L39
.L44:
	nop
.L39:
	movl	-4(%rbp), %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	sm2sig_digest_signverify_init, .-sm2sig_digest_signverify_init
	.type	sm2sig_compute_z_digest, @function
sm2sig_compute_z_digest:
.LFB448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L46
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$259, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L47
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	384(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	352(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_sm2_compute_z_digest@PLT
	testl	%eax, %eax
	je	.L47
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L48
.L47:
	movl	$0, -4(%rbp)
.L48:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$265, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L46:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	sm2sig_compute_z_digest, .-sm2sig_compute_z_digest
	.type	sm2sig_digest_signverify_update, @function
sm2sig_digest_signverify_update:
.LFB449:
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
	je	.L51
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L52
.L51:
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sm2sig_compute_z_digest
	testl	%eax, %eax
	je	.L54
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L54
	movl	$1, %eax
	jmp	.L53
.L54:
	movl	$0, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	sm2sig_digest_signverify_update, .-sm2sig_digest_signverify_update
	.type	sm2sig_digest_sign_final, @function
sm2sig_digest_sign_final:
.LFB450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -84(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L57
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L58
.L57:
	movl	$0, %eax
	jmp	.L62
.L58:
	cmpq	$0, -112(%rbp)
	je	.L60
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sm2sig_compute_z_digest
	testl	%eax, %eax
	je	.L61
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L60
.L61:
	movl	$0, %eax
	jmp	.L62
.L60:
	movl	-84(%rbp), %eax
	movl	%eax, %r8d
	leaq	-80(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sm2sig_sign
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	sm2sig_digest_sign_final, .-sm2sig_digest_sign_final
	.type	sm2sig_digest_verify_final, @function
sm2sig_digest_verify_final:
.LFB451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -84(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cmpl	$64, %eax
	jle	.L65
.L64:
	movl	$0, %eax
	jmp	.L69
.L65:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sm2sig_compute_z_digest
	testl	%eax, %eax
	je	.L67
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L68
.L67:
	movl	$0, %eax
	jmp	.L69
.L68:
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	leaq	-80(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sm2sig_verify
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	sm2sig_digest_verify_final, .-sm2sig_digest_verify_final
	.type	sm2sig_freectx, @function
sm2sig_freectx:
.LFB452:
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
	movq	%rax, %rdi
	call	free_md
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$332, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$333, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$334, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	sm2sig_freectx, .-sm2sig_freectx
	.type	sm2sig_dupctx, @function
sm2sig_dupctx:
.LFB453:
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
	leaq	.LC0(%rip), %rax
	movl	$342, %edx
	movq	%rax, %rsi
	movl	$392, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L72
	movl	$0, %eax
	jmp	.L73
.L72:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$49, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 352(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 376(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	je	.L82
.L74:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$358, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L83
.L76:
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L77
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	je	.L84
.L77:
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 352(%rax)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L78
	call	EVP_MD_CTX_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 360(%rdx)
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L85
.L78:
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$375, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 376(%rax)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-8(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 384(%rax)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L80:
	movq	-16(%rbp), %rax
	jmp	.L73
.L82:
	nop
	jmp	.L75
.L83:
	nop
	jmp	.L75
.L84:
	nop
	jmp	.L75
.L85:
	nop
	jmp	.L75
.L86:
	nop
.L75:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sm2sig_freectx
	movl	$0, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	sm2sig_dupctx, .-sm2sig_dupctx
	.section	.rodata
.LC2:
	.string	"algorithm-id"
.LC3:
	.string	"digest-size"
.LC4:
	.string	"digest"
	.text
	.type	sm2sig_get_ctx_params, @function
sm2sig_get_ctx_params:
.LFB454:
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
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L90
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L90
	movl	$0, %eax
	jmp	.L89
.L90:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L91
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L89
.L91:
	leaq	.LC4(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L92
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	movq	-8(%rbp), %rax
	addq	$25, %rax
	jmp	.L94
.L93:
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
.L94:
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L92
	movl	$0, %eax
	jmp	.L89
.L92:
	movl	$1, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	sm2sig_get_ctx_params, .-sm2sig_get_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 160
known_gettable_ctx_params:
	.quad	.LC2
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC4
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
	.text
	.type	sm2sig_gettable_ctx_params, @function
sm2sig_gettable_ctx_params:
.LFB455:
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
.LFE455:
	.size	sm2sig_gettable_ctx_params, .-sm2sig_gettable_ctx_params
	.section	.rodata
.LC5:
	.string	"distid"
	.text
	.type	sm2sig_set_ctx_params, @function
sm2sig_set_ctx_params:
.LFB456:
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
	cmpq	$0, -8(%rbp)
	jne	.L98
	movl	$0, %eax
	jmp	.L111
.L98:
	cmpq	$0, -64(%rbp)
	jne	.L100
	movl	$1, %eax
	jmp	.L111
.L100:
	leaq	.LC5(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L101
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L102
	movl	$0, %eax
	jmp	.L111
.L102:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L104
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L111
.L104:
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$452, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 376(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 384(%rax)
.L101:
	leaq	.LC3(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L105
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	je	.L106
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L105
.L106:
	movl	$0, %eax
	jmp	.L111
.L105:
	leaq	.LC4(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L107
	movq	$0, -48(%rbp)
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L108
	movl	$0, %eax
	jmp	.L111
.L108:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sm2sig_set_mdname
	testl	%eax, %eax
	jne	.L110
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$475, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L111
.L110:
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$478, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L107:
	movl	$1, %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	sm2sig_set_ctx_params, .-sm2sig_set_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params, @object
	.size	known_settable_ctx_params, 160
known_settable_ctx_params:
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC4
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
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
	.type	sm2sig_settable_ctx_params, @function
sm2sig_settable_ctx_params:
.LFB457:
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
.LFE457:
	.size	sm2sig_settable_ctx_params, .-sm2sig_settable_ctx_params
	.type	sm2sig_get_ctx_md_params, @function
sm2sig_get_ctx_md_params:
.LFB458:
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
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_params@PLT
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	sm2sig_get_ctx_md_params, .-sm2sig_get_ctx_md_params
	.type	sm2sig_gettable_ctx_md_params, @function
sm2sig_gettable_ctx_md_params:
.LFB459:
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
	movq	352(%rax), %rax
	testq	%rax, %rax
	jne	.L118
	movl	$0, %eax
	jmp	.L119
.L118:
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_gettable_ctx_params@PLT
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	sm2sig_gettable_ctx_md_params, .-sm2sig_gettable_ctx_md_params
	.type	sm2sig_set_ctx_md_params, @function
sm2sig_set_ctx_md_params:
.LFB460:
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
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	movl	$0, %eax
	jmp	.L122
.L121:
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_params@PLT
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	sm2sig_set_ctx_md_params, .-sm2sig_set_ctx_md_params
	.type	sm2sig_settable_ctx_md_params, @function
sm2sig_settable_ctx_md_params:
.LFB461:
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
	movq	352(%rax), %rax
	testq	%rax, %rax
	jne	.L124
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_settable_ctx_params@PLT
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	sm2sig_settable_ctx_md_params, .-sm2sig_settable_ctx_md_params
	.globl	ossl_sm2_signature_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_signature_functions, @object
	.size	ossl_sm2_signature_functions, 352
ossl_sm2_signature_functions:
	.long	1
	.zero	4
	.quad	sm2sig_newctx
	.long	2
	.zero	4
	.quad	sm2sig_signature_init
	.long	3
	.zero	4
	.quad	sm2sig_sign
	.long	4
	.zero	4
	.quad	sm2sig_signature_init
	.long	5
	.zero	4
	.quad	sm2sig_verify
	.long	8
	.zero	4
	.quad	sm2sig_digest_signverify_init
	.long	9
	.zero	4
	.quad	sm2sig_digest_signverify_update
	.long	10
	.zero	4
	.quad	sm2sig_digest_sign_final
	.long	12
	.zero	4
	.quad	sm2sig_digest_signverify_init
	.long	13
	.zero	4
	.quad	sm2sig_digest_signverify_update
	.long	14
	.zero	4
	.quad	sm2sig_digest_verify_final
	.long	16
	.zero	4
	.quad	sm2sig_freectx
	.long	17
	.zero	4
	.quad	sm2sig_dupctx
	.long	18
	.zero	4
	.quad	sm2sig_get_ctx_params
	.long	19
	.zero	4
	.quad	sm2sig_gettable_ctx_params
	.long	20
	.zero	4
	.quad	sm2sig_set_ctx_params
	.long	21
	.zero	4
	.quad	sm2sig_settable_ctx_params
	.long	22
	.zero	4
	.quad	sm2sig_get_ctx_md_params
	.long	23
	.zero	4
	.quad	sm2sig_gettable_ctx_md_params
	.long	24
	.zero	4
	.quad	sm2sig_set_ctx_md_params
	.long	25
	.zero	4
	.quad	sm2sig_settable_ctx_md_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"sm2sig_set_mdname"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"sm2sig_signature_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
