	.file	"ecdsa_sig.c"
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
	.string	"../providers/implementations/signature/ecdsa_sig.c"
	.text
	.type	ecdsa_newctx, @function
ecdsa_newctx:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	leaq	.LC0(%rip), %rax
	movl	$117, %edx
	movq	%rax, %rsi
	movl	$408, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	movq	-8(%rbp), %rax
	movzbl	74(%rax), %edx
	orl	$1, %edx
	movb	%dl, 74(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	cmpq	$0, -32(%rbp)
	je	.L9
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
	jne	.L9
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L9:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	ecdsa_newctx, .-ecdsa_newctx
	.type	ecdsa_signverify_init, @function
ecdsa_signverify_init:
.LFB442:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L11
	cmpq	$0, -8(%rbp)
	jne	.L12
.L11:
	movl	$0, %eax
	jmp	.L13
.L12:
	cmpq	$0, -32(%rbp)
	jne	.L14
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$140, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L13
.L14:
	cmpq	$0, -32(%rbp)
	je	.L15
	cmpl	$16, -44(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_check_key@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L13
.L16:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L13
.L17:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L15:
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 360(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ecdsa_set_ctx_params
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L13
.L18:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	ecdsa_signverify_init, .-ecdsa_signverify_init
	.type	ecdsa_sign_init, @function
ecdsa_sign_init:
.LFB443:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	ecdsa_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	ecdsa_sign_init, .-ecdsa_sign_init
	.type	ecdsa_verify_init, @function
ecdsa_verify_init:
.LFB444:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	ecdsa_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	ecdsa_verify_init, .-ecdsa_verify_init
	.type	ecdsa_sign, @function
ecdsa_sign:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ECDSA_size@PLT
	cltq
	movq	%rax, -32(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$0, %eax
	jmp	.L33
.L24:
	cmpq	$0, -64(%rbp)
	jne	.L26
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L33
.L26:
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L27
	movl	$0, %eax
	jmp	.L33
.L27:
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	cmpq	%rax, -96(%rbp)
	je	.L28
	movl	$0, %eax
	jmp	.L33
.L28:
	movq	-24(%rbp), %rax
	movl	400(%rax), %eax
	testl	%eax, %eax
	je	.L29
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	je	.L30
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
.L30:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	400(%rax), %r9d
	movq	-24(%rbp), %rax
	movq	16(%rax), %r8
	movq	-96(%rbp), %rax
	movl	%eax, %r10d
	leaq	-36(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	pushq	%rsi
	pushq	-16(%rbp)
	movl	%r10d, %esi
	movq	%rax, %rdi
	call	ossl_ecdsa_deterministic_sign@PLT
	addq	$32, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L31
.L29:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	392(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	384(%rax), %r8
	movq	-96(%rbp), %rax
	movl	%eax, %r10d
	leaq	-36(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	pushq	%rsi
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ECDSA_sign_ex@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L31:
	cmpl	$0, -4(%rbp)
	jg	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	ecdsa_sign, .-ecdsa_sign
	.type	ecdsa_verify, @function
ecdsa_verify:
.LFB446:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L35
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	cmpq	%rax, -56(%rbp)
	je	.L36
.L35:
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %r9
	movl	%edi, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ECDSA_verify@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	ecdsa_verify, .-ecdsa_verify
	.section	.rodata
.LC1:
	.string	"%s exceeds name buffer length"
.LC2:
	.string	"%s could not be fetched"
.LC3:
	.string	"digest=%s"
.LC4:
	.string	"digest %s != %s"
	.text
	.type	ecdsa_setup_md, @function
ecdsa_setup_md:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L39
	movl	$1, %eax
	jmp	.L48
.L39:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$49, -16(%rbp)
	jbe	.L41
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-96(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L41:
	cmpq	$0, -104(%rbp)
	jne	.L42
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
.L42:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$250, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-96(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L43:
	movq	-88(%rbp), %rax
	movl	360(%rax), %eax
	cmpl	$16, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_digest_get_approved_nid_with_sha1@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L44
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-96(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	movl	$174, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L48
.L44:
	movq	-88(%rbp), %rax
	movzbl	74(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L45
	movq	-88(%rbp), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	je	.L46
	movq	-88(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-96(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$174, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L48
.L46:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$1, %eax
	jmp	.L48
.L45:
	movq	-88(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-88(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-88(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-88(%rbp), %rax
	leaq	75(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_der@PLT
	testl	%eax, %eax
	je	.L47
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-24(%rbp), %ecx
	leaq	-80(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_algorithmIdentifier_ECDSA_with_MD@PLT
	testl	%eax, %eax
	je	.L47
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	je	.L47
	movq	-88(%rbp), %rax
	leaq	344(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 336(%rdx)
.L47:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movq	-88(%rbp), %rax
	movq	$0, 376(%rax)
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 368(%rax)
	movq	-88(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 352(%rax)
	movq	-88(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	ecdsa_setup_md, .-ecdsa_setup_md
	.type	ecdsa_digest_signverify_init, @function
ecdsa_digest_signverify_init:
.LFB448:
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
	movl	%r8d, -52(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ecdsa_signverify_init
	testl	%eax, %eax
	je	.L52
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecdsa_setup_md
	testl	%eax, %eax
	jne	.L53
.L52:
	movl	$0, %eax
	jmp	.L51
.L53:
	movq	-8(%rbp), %rax
	movzbl	74(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 74(%rax)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	call	EVP_MD_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 376(%rdx)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L57
.L54:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex2@PLT
	testl	%eax, %eax
	je	.L58
	movl	$1, %eax
	jmp	.L51
.L57:
	nop
	jmp	.L55
.L58:
	nop
.L55:
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 376(%rax)
	movl	$0, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	ecdsa_digest_signverify_init, .-ecdsa_digest_signverify_init
	.type	ecdsa_digest_sign_init, @function
ecdsa_digest_sign_init:
.LFB449:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	ecdsa_digest_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	ecdsa_digest_sign_init, .-ecdsa_digest_sign_init
	.type	ecdsa_digest_verify_init, @function
ecdsa_digest_verify_init:
.LFB450:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$32, %r8d
	movq	%rax, %rdi
	call	ecdsa_digest_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	ecdsa_digest_verify_init, .-ecdsa_digest_verify_init
	.type	ecdsa_digest_signverify_update, @function
ecdsa_digest_signverify_update:
.LFB451:
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
	je	.L64
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	jne	.L65
.L64:
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	ecdsa_digest_signverify_update, .-ecdsa_digest_signverify_update
	.type	ecdsa_digest_sign_final, @function
ecdsa_digest_sign_final:
.LFB452:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L68
	cmpq	$0, -8(%rbp)
	je	.L68
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	jne	.L69
.L68:
	movl	$0, %eax
	jmp	.L72
.L69:
	cmpq	$0, -112(%rbp)
	je	.L71
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-8(%rbp), %rax
	movzbl	74(%rax), %edx
	orl	$1, %edx
	movb	%dl, 74(%rax)
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
	call	ecdsa_sign
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	ecdsa_digest_sign_final, .-ecdsa_digest_sign_final
	.type	ecdsa_digest_verify_final, @function
ecdsa_digest_verify_final:
.LFB453:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L74
	cmpq	$0, -8(%rbp)
	je	.L74
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	jne	.L75
.L74:
	movl	$0, %eax
	jmp	.L78
.L75:
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-8(%rbp), %rax
	movzbl	74(%rax), %edx
	orl	$1, %edx
	movb	%dl, 74(%rax)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	leaq	-80(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ecdsa_verify
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	ecdsa_digest_verify_final, .-ecdsa_digest_verify_final
	.type	ecdsa_freectx, @function
ecdsa_freectx:
.LFB454:
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
	movl	$391, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 376(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 352(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$401, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	ecdsa_freectx, .-ecdsa_freectx
	.type	ecdsa_dupctx, @function
ecdsa_dupctx:
.LFB455:
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
	jne	.L81
	movl	$0, %eax
	jmp	.L82
.L81:
	leaq	.LC0(%rip), %rax
	movl	$412, %edx
	movq	%rax, %rsi
	movl	$408, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L83
	movl	$0, %eax
	jmp	.L82
.L83:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$51, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 376(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	je	.L92
.L84:
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	je	.L94
.L88:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 368(%rax)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L89
	call	EVP_MD_CTX_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 376(%rdx)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L95
	movq	-8(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L95
.L89:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$441, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L96
.L91:
	movq	-16(%rbp), %rax
	jmp	.L82
.L92:
	nop
	jmp	.L85
.L93:
	nop
	jmp	.L85
.L94:
	nop
	jmp	.L85
.L95:
	nop
	jmp	.L85
.L96:
	nop
.L85:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ecdsa_freectx
	movl	$0, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	ecdsa_dupctx, .-ecdsa_dupctx
	.section	.rodata
.LC5:
	.string	"algorithm-id"
.LC6:
	.string	"digest-size"
.LC7:
	.string	"digest"
.LC8:
	.string	"nonce-type"
	.text
	.type	ecdsa_get_ctx_params, @function
ecdsa_get_ctx_params:
.LFB456:
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
	jne	.L98
	movl	$0, %eax
	jmp	.L99
.L98:
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L100
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L99
.L100:
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L101
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L99
.L101:
	leaq	.LC7(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L102
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	movq	-8(%rbp), %rax
	addq	$24, %rax
	jmp	.L104
.L103:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
.L104:
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L102
	movl	$0, %eax
	jmp	.L99
.L102:
	leaq	.LC8(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L105
	movq	-8(%rbp), %rax
	movl	400(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L105
	movl	$0, %eax
	jmp	.L99
.L105:
	movl	$1, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	ecdsa_get_ctx_params, .-ecdsa_get_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 200
known_gettable_ctx_params:
	.quad	.LC5
	.long	5
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
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	ecdsa_gettable_ctx_params, @function
ecdsa_gettable_ctx_params:
.LFB457:
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
.LFE457:
	.size	ecdsa_gettable_ctx_params, .-ecdsa_gettable_ctx_params
	.section	.rodata
.LC9:
	.string	"properties"
	.text
	.type	ecdsa_set_ctx_params, @function
ecdsa_set_ctx_params:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L109
	movl	$0, %eax
	jmp	.L121
.L109:
	cmpq	$0, -384(%rbp)
	jne	.L111
	movl	$1, %eax
	jmp	.L121
.L111:
	leaq	.LC7(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L112
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movw	$0, -320(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
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
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC9(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	leaq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L113
	movl	$0, %eax
	jmp	.L121
.L113:
	cmpq	$0, -24(%rbp)
	je	.L115
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L121
.L115:
	leaq	-304(%rbp), %rdx
	leaq	-368(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecdsa_setup_md
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L121
.L112:
	leaq	.LC6(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L117
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	je	.L118
	movq	-8(%rbp), %rax
	movzbl	74(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L119
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L119
.L118:
	movl	$0, %eax
	jmp	.L121
.L119:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 352(%rax)
.L117:
	leaq	.LC8(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L120
	movq	-8(%rbp), %rax
	leaq	400(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movl	$1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	ecdsa_set_ctx_params, .-ecdsa_set_ctx_params
	.section	.rodata
.LC10:
	.string	"kat"
	.section	.data.rel.ro.local
	.align 32
	.type	settable_ctx_params, @object
	.size	settable_ctx_params, 240
settable_ctx_params:
	.quad	.LC7
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
	.quad	.LC9
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC8
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	ecdsa_settable_ctx_params, @function
ecdsa_settable_ctx_params:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	ecdsa_settable_ctx_params, .-ecdsa_settable_ctx_params
	.type	ecdsa_get_ctx_md_params, @function
ecdsa_get_ctx_md_params:
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
	movq	376(%rax), %rax
	testq	%rax, %rax
	jne	.L125
	movl	$0, %eax
	jmp	.L126
.L125:
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_params@PLT
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	ecdsa_get_ctx_md_params, .-ecdsa_get_ctx_md_params
	.type	ecdsa_gettable_ctx_md_params, @function
ecdsa_gettable_ctx_md_params:
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
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	movl	$0, %eax
	jmp	.L129
.L128:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_gettable_ctx_params@PLT
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	ecdsa_gettable_ctx_md_params, .-ecdsa_gettable_ctx_md_params
	.type	ecdsa_set_ctx_md_params, @function
ecdsa_set_ctx_md_params:
.LFB462:
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
	movq	376(%rax), %rax
	testq	%rax, %rax
	jne	.L131
	movl	$0, %eax
	jmp	.L132
.L131:
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_params@PLT
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	ecdsa_set_ctx_md_params, .-ecdsa_set_ctx_md_params
	.type	ecdsa_settable_ctx_md_params, @function
ecdsa_settable_ctx_md_params:
.LFB463:
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
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L134
	movl	$0, %eax
	jmp	.L135
.L134:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_settable_ctx_params@PLT
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	ecdsa_settable_ctx_md_params, .-ecdsa_settable_ctx_md_params
	.globl	ossl_ecdsa_signature_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ecdsa_signature_functions, @object
	.size	ossl_ecdsa_signature_functions, 352
ossl_ecdsa_signature_functions:
	.long	1
	.zero	4
	.quad	ecdsa_newctx
	.long	2
	.zero	4
	.quad	ecdsa_sign_init
	.long	3
	.zero	4
	.quad	ecdsa_sign
	.long	4
	.zero	4
	.quad	ecdsa_verify_init
	.long	5
	.zero	4
	.quad	ecdsa_verify
	.long	8
	.zero	4
	.quad	ecdsa_digest_sign_init
	.long	9
	.zero	4
	.quad	ecdsa_digest_signverify_update
	.long	10
	.zero	4
	.quad	ecdsa_digest_sign_final
	.long	12
	.zero	4
	.quad	ecdsa_digest_verify_init
	.long	13
	.zero	4
	.quad	ecdsa_digest_signverify_update
	.long	14
	.zero	4
	.quad	ecdsa_digest_verify_final
	.long	16
	.zero	4
	.quad	ecdsa_freectx
	.long	17
	.zero	4
	.quad	ecdsa_dupctx
	.long	18
	.zero	4
	.quad	ecdsa_get_ctx_params
	.long	19
	.zero	4
	.quad	ecdsa_gettable_ctx_params
	.long	20
	.zero	4
	.quad	ecdsa_set_ctx_params
	.long	21
	.zero	4
	.quad	ecdsa_settable_ctx_params
	.long	22
	.zero	4
	.quad	ecdsa_get_ctx_md_params
	.long	23
	.zero	4
	.quad	ecdsa_gettable_ctx_md_params
	.long	24
	.zero	4
	.quad	ecdsa_set_ctx_md_params
	.long	25
	.zero	4
	.quad	ecdsa_settable_ctx_md_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"ecdsa_signverify_init"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"ecdsa_setup_md"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
