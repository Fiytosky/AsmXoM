	.file	"dsa_sig.c"
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
	.type	dsa_get_md_size, @function
dsa_get_md_size:
.LFB441:
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
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	dsa_get_md_size, .-dsa_get_md_size
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/signature/dsa_sig.c"
	.text
	.type	dsa_newctx, @function
dsa_newctx:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	leaq	.LC0(%rip), %rax
	movl	$108, %edx
	movq	%rax, %rsi
	movl	$384, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L10
.L11:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	cmpq	$0, -32(%rbp)
	je	.L12
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$115, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L12:
	movq	-8(%rbp), %rax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	dsa_newctx, .-dsa_newctx
	.section	.rodata
.LC1:
	.string	"%s could not be fetched"
.LC2:
	.string	"digest=%s"
.LC3:
	.string	"%s exceeds name buffer length"
.LC4:
	.string	"digest %s != %s"
	.text
	.type	dsa_setup_md, @function
dsa_setup_md:
.LFB443:
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
	cmpq	$0, -120(%rbp)
	jne	.L14
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
.L14:
	cmpq	$0, -112(%rbp)
	je	.L15
	movq	-104(%rbp), %rax
	movl	376(%rax), %eax
	cmpl	$16, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_digest_get_approved_nid_with_sha1@PLT
	movl	%eax, -20(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L16
	cmpl	$0, -20(%rbp)
	jns	.L17
.L16:
	cmpq	$0, -16(%rbp)
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-112(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L18:
	cmpl	$0, -20(%rbp)
	jns	.L19
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$140, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-112(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$174, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L19:
	cmpq	$49, -32(%rbp)
	jbe	.L20
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-112(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L20:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L25
.L17:
	movq	-104(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L22
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L23
	movq	-104(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-112(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$174, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L25
.L23:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$1, %eax
	jmp	.L25
.L22:
	movq	-104(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-104(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-104(%rbp), %rax
	movq	$0, 352(%rax)
	movq	-104(%rbp), %rax
	leaq	82(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_der@PLT
	testl	%eax, %eax
	je	.L24
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %ecx
	leaq	-96(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_algorithmIdentifier_DSA_with_MD@PLT
	testl	%eax, %eax
	je	.L24
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	je	.L24
	movq	-104(%rbp), %rax
	leaq	352(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	-104(%rbp), %rdx
	movq	%rax, 344(%rdx)
.L24:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movq	-104(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 360(%rax)
	movq	-104(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-112(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
.L15:
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	dsa_setup_md, .-dsa_setup_md
	.type	dsa_signverify_init, @function
dsa_signverify_init:
.LFB444:
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
	je	.L27
	cmpq	$0, -8(%rbp)
	jne	.L28
.L27:
	movl	$0, %eax
	jmp	.L29
.L28:
	cmpq	$0, -32(%rbp)
	jne	.L30
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L30:
	cmpq	$0, -32(%rbp)
	je	.L31
	cmpl	$16, -44(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dsa_check_key@PLT
	testl	%eax, %eax
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L32:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_up_ref@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L29
.L33:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L31:
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 376(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dsa_set_ctx_params
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L29
.L34:
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	dsa_signverify_init, .-dsa_signverify_init
	.type	dsa_sign_init, @function
dsa_sign_init:
.LFB445:
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
	call	dsa_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	dsa_sign_init, .-dsa_sign_init
	.type	dsa_verify_init, @function
dsa_verify_init:
.LFB446:
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
	call	dsa_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	dsa_verify_init, .-dsa_verify_init
	.type	dsa_sign, @function
dsa_sign:
.LFB447:
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
	call	DSA_size@PLT
	cltq
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_get_md_size
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L46
.L40:
	cmpq	$0, -48(%rbp)
	jne	.L42
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L46
.L42:
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L43
	movl	$0, %eax
	jmp	.L46
.L43:
	cmpq	$0, -24(%rbp)
	je	.L44
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L44
	movl	$0, %eax
	jmp	.L46
.L44:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	16(%rax), %r9
	movq	-80(%rbp), %rax
	movl	%eax, %r11d
	leaq	-32(%rbp), %r10
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	pushq	%r8
	pushq	%rcx
	movq	%r10, %r8
	movq	%rdx, %rcx
	movl	%r11d, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_dsa_sign_int@PLT
	addq	$32, %rsp
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	dsa_sign, .-dsa_sign
	.type	dsa_verify, @function
dsa_verify:
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
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_get_md_size
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L48
	cmpq	$0, -16(%rbp)
	je	.L49
	movq	-56(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L49
.L48:
	movl	$0, %eax
	jmp	.L50
.L49:
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
	call	DSA_verify@PLT
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	dsa_verify, .-dsa_verify
	.type	dsa_digest_signverify_init, @function
dsa_digest_signverify_init:
.LFB449:
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
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_signverify_init
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L53
.L54:
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dsa_setup_md
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L53
.L55:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	call	EVP_MD_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 368(%rdx)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L59
.L56:
	movq	-8(%rbp), %rax
	movq	360(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex2@PLT
	testl	%eax, %eax
	je	.L60
	movl	$1, %eax
	jmp	.L53
.L59:
	nop
	jmp	.L57
.L60:
	nop
.L57:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 368(%rax)
	movl	$0, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	dsa_digest_signverify_init, .-dsa_digest_signverify_init
	.type	dsa_digest_sign_init, @function
dsa_digest_sign_init:
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
	movl	$16, %r8d
	movq	%rax, %rdi
	call	dsa_digest_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	dsa_digest_sign_init, .-dsa_digest_sign_init
	.type	dsa_digest_verify_init, @function
dsa_digest_verify_init:
.LFB451:
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
	call	dsa_digest_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	dsa_digest_verify_init, .-dsa_digest_verify_init
	.type	dsa_digest_signverify_update, @function
dsa_digest_signverify_update:
.LFB452:
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
	je	.L66
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L67
.L66:
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	dsa_digest_signverify_update, .-dsa_digest_signverify_update
	.type	dsa_digest_sign_final, @function
dsa_digest_sign_final:
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
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -84(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L70
	cmpq	$0, -8(%rbp)
	je	.L70
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L71
.L70:
	movl	$0, %eax
	jmp	.L74
.L71:
	cmpq	$0, -112(%rbp)
	je	.L73
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L74
.L73:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
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
	call	dsa_sign
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	dsa_digest_sign_final, .-dsa_digest_sign_final
	.type	dsa_digest_verify_final, @function
dsa_digest_verify_final:
.LFB454:
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
	je	.L76
	cmpq	$0, -8(%rbp)
	je	.L76
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L77
.L76:
	movl	$0, %eax
	jmp	.L80
.L77:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	leaq	-80(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	dsa_verify
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	dsa_digest_verify_final, .-dsa_digest_verify_final
	.type	dsa_freectx, @function
dsa_freectx:
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$393, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	dsa_freectx, .-dsa_freectx
	.type	dsa_dupctx, @function
dsa_dupctx:
.LFB456:
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
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	leaq	.LC0(%rip), %rax
	movl	$411, %edx
	movq	%rax, %rsi
	movl	$384, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L85
	movl	$0, %eax
	jmp	.L84
.L85:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$48, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	DSA_up_ref@PLT
	testl	%eax, %eax
	je	.L92
.L86:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	je	.L93
.L88:
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 360(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L89
	call	EVP_MD_CTX_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 368(%rdx)
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L94
.L89:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$436, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L95
.L91:
	movq	-16(%rbp), %rax
	jmp	.L84
.L92:
	nop
	jmp	.L87
.L93:
	nop
	jmp	.L87
.L94:
	nop
	jmp	.L87
.L95:
	nop
.L87:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_freectx
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	dsa_dupctx, .-dsa_dupctx
	.section	.rodata
.LC5:
	.string	"algorithm-id"
.LC6:
	.string	"digest"
.LC7:
	.string	"nonce-type"
	.text
	.type	dsa_get_ctx_params, @function
dsa_get_ctx_params:
.LFB457:
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
	jne	.L97
	movl	$0, %eax
	jmp	.L98
.L97:
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L99
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	344(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L99
	movl	$0, %eax
	jmp	.L98
.L99:
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L100
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L98
.L100:
	leaq	.LC7(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L101
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L98
.L101:
	movl	$1, %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	dsa_get_ctx_params, .-dsa_get_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 160
known_gettable_ctx_params:
	.quad	.LC5
	.long	5
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
	.quad	.LC7
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
	.type	dsa_gettable_ctx_params, @function
dsa_gettable_ctx_params:
.LFB458:
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
.LFE458:
	.size	dsa_gettable_ctx_params, .-dsa_gettable_ctx_params
	.section	.rodata
.LC8:
	.string	"properties"
	.text
	.type	dsa_set_ctx_params, @function
dsa_set_ctx_params:
.LFB459:
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
	cmpq	$0, -8(%rbp)
	jne	.L105
	movl	$0, %eax
	jmp	.L106
.L105:
	cmpq	$0, -384(%rbp)
	jne	.L107
	movl	$1, %eax
	jmp	.L106
.L107:
	leaq	.LC6(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L108
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movw	$0, -320(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -32(%rbp)
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
	movq	%rax, -40(%rbp)
	leaq	.LC8(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L106
.L109:
	cmpq	$0, -24(%rbp)
	je	.L111
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L111
	movl	$0, %eax
	jmp	.L106
.L111:
	leaq	-304(%rbp), %rdx
	leaq	-368(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dsa_setup_md
	testl	%eax, %eax
	jne	.L108
	movl	$0, %eax
	jmp	.L106
.L108:
	leaq	.LC7(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L113
	movq	-8(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L113
	movl	$0, %eax
	jmp	.L106
.L113:
	movl	$1, %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	dsa_set_ctx_params, .-dsa_set_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	settable_ctx_params, @object
	.size	settable_ctx_params, 160
settable_ctx_params:
	.quad	.LC6
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
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
	.section	.rodata
	.align 32
	.type	settable_ctx_params_no_digest, @object
	.size	settable_ctx_params_no_digest, 40
settable_ctx_params_no_digest:
	.zero	40
	.text
	.type	dsa_settable_ctx_params, @function
dsa_settable_ctx_params:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L115
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L115
	leaq	settable_ctx_params_no_digest(%rip), %rax
	jmp	.L116
.L115:
	leaq	settable_ctx_params(%rip), %rax
.L116:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	dsa_settable_ctx_params, .-dsa_settable_ctx_params
	.type	dsa_get_ctx_md_params, @function
dsa_get_ctx_md_params:
.LFB461:
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
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L118
	movl	$0, %eax
	jmp	.L119
.L118:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_params@PLT
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	dsa_get_ctx_md_params, .-dsa_get_ctx_md_params
	.type	dsa_gettable_ctx_md_params, @function
dsa_gettable_ctx_md_params:
.LFB462:
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
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	movl	$0, %eax
	jmp	.L122
.L121:
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_gettable_ctx_params@PLT
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	dsa_gettable_ctx_md_params, .-dsa_gettable_ctx_md_params
	.type	dsa_set_ctx_md_params, @function
dsa_set_ctx_md_params:
.LFB463:
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
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L124
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_params@PLT
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	dsa_set_ctx_md_params, .-dsa_set_ctx_md_params
	.type	dsa_settable_ctx_md_params, @function
dsa_settable_ctx_md_params:
.LFB464:
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
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	movl	$0, %eax
	jmp	.L128
.L127:
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_settable_ctx_params@PLT
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	dsa_settable_ctx_md_params, .-dsa_settable_ctx_md_params
	.globl	ossl_dsa_signature_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_signature_functions, @object
	.size	ossl_dsa_signature_functions, 352
ossl_dsa_signature_functions:
	.long	1
	.zero	4
	.quad	dsa_newctx
	.long	2
	.zero	4
	.quad	dsa_sign_init
	.long	3
	.zero	4
	.quad	dsa_sign
	.long	4
	.zero	4
	.quad	dsa_verify_init
	.long	5
	.zero	4
	.quad	dsa_verify
	.long	8
	.zero	4
	.quad	dsa_digest_sign_init
	.long	9
	.zero	4
	.quad	dsa_digest_signverify_update
	.long	10
	.zero	4
	.quad	dsa_digest_sign_final
	.long	12
	.zero	4
	.quad	dsa_digest_verify_init
	.long	13
	.zero	4
	.quad	dsa_digest_signverify_update
	.long	14
	.zero	4
	.quad	dsa_digest_verify_final
	.long	16
	.zero	4
	.quad	dsa_freectx
	.long	17
	.zero	4
	.quad	dsa_dupctx
	.long	18
	.zero	4
	.quad	dsa_get_ctx_params
	.long	19
	.zero	4
	.quad	dsa_gettable_ctx_params
	.long	20
	.zero	4
	.quad	dsa_set_ctx_params
	.long	21
	.zero	4
	.quad	dsa_settable_ctx_params
	.long	22
	.zero	4
	.quad	dsa_get_ctx_md_params
	.long	23
	.zero	4
	.quad	dsa_gettable_ctx_md_params
	.long	24
	.zero	4
	.quad	dsa_set_ctx_md_params
	.long	25
	.zero	4
	.quad	dsa_settable_ctx_md_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 13
__func__.1:
	.string	"dsa_setup_md"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"dsa_signverify_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
