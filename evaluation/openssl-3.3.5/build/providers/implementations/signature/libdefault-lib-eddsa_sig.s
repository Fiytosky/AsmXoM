	.file	"eddsa_sig.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/signature/eddsa_sig.c"
	.text
	.type	eddsa_newctx, @function
eddsa_newctx:
.LFB402:
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
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
	movl	$154, %edx
	movq	%rax, %rsi
	movl	$560, %edi
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
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	eddsa_newctx, .-eddsa_newctx
	.type	eddsa_digest_signverify_init, @function
eddsa_digest_signverify_init:
.LFB403:
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
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L22
.L6:
	cmpq	$0, -96(%rbp)
	je	.L8
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L8
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L8:
	cmpq	$0, -24(%rbp)
	jne	.L9
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-112(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eddsa_set_ctx_params
	jmp	.L22
.L10:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L9:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_up_ref@PLT
	testl	%eax, %eax
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L11:
	movq	-16(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 292(%rax)
	movq	-16(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 292(%rax)
	movq	-16(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 292(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 552(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_der@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$2, %eax
	je	.L12
	cmpl	$3, %eax
	je	.L13
	jmp	.L23
.L12:
	cmpl	$0, -4(%rbp)
	je	.L15
	movq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_algorithmIdentifier_ED25519@PLT
	testl	%eax, %eax
	je	.L15
	movl	$1, %eax
	jmp	.L16
.L15:
	movl	$0, %eax
.L16:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, 288(%rax)
	jmp	.L17
.L13:
	cmpl	$0, -4(%rbp)
	je	.L18
	movq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_algorithmIdentifier_ED448@PLT
	testl	%eax, %eax
	je	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	movl	$0, %eax
.L19:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	$4, 288(%rax)
	jmp	.L17
.L23:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$217, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	$0, %eax
	jmp	.L22
.L17:
	cmpl	$0, -4(%rbp)
	je	.L20
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	je	.L20
	movq	-16(%rbp), %rax
	leaq	280(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 272(%rdx)
.L20:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-112(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eddsa_set_ctx_params
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	eddsa_digest_signverify_init, .-eddsa_digest_signverify_init
	.section	.rodata
.LC1:
	.string	"SHA512"
	.text
	.type	ed25519_digest_sign, @function
ed25519_digest_sign:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L34
.L25:
	cmpq	$0, -128(%rbp)
	jne	.L27
	movq	-136(%rbp), %rax
	movq	$64, (%rax)
	movl	$1, %eax
	jmp	.L34
.L27:
	cmpq	$63, -144(%rbp)
	ja	.L28
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L28:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L29:
	movq	-24(%rbp), %rax
	movzbl	292(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L30
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %r8
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	subq	$8, %rsp
	leaq	-104(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_Q_digest@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L31
	movq	-104(%rbp), %rax
	cmpq	$64, %rax
	je	.L32
.L31:
	movl	$0, %eax
	jmp	.L34
.L32:
	leaq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -160(%rbp)
.L30:
	movq	-24(%rbp), %rax
	movq	(%rax), %r10
	movq	-24(%rbp), %rax
	movq	552(%rax), %r9
	movq	-24(%rbp), %rax
	leaq	293(%rax), %r11
	movq	-24(%rbp), %rax
	movzbl	292(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %r8d
	movq	-24(%rbp), %rax
	movzbl	292(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movzbl	292(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %r12d
	movq	-32(%rbp), %rax
	movq	80(%rax), %rbx
	movq	-32(%rbp), %rax
	leaq	17(%rax), %rcx
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-128(%rbp), %rax
	pushq	$0
	pushq	%r10
	pushq	%r9
	pushq	%r11
	pushq	%r8
	pushq	%rdi
	movl	%r12d, %r9d
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	ossl_ed25519_sign@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$288, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$175, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-136(%rbp), %rax
	movq	$64, (%rax)
	movl	$1, %eax
.L34:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ed25519_digest_sign, .-ed25519_digest_sign
	.section	.rodata
.LC2:
	.string	"SHAKE256"
	.text
	.type	ed448_shake256, @function
ed448_shake256:
.LFB405:
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
	movl	$0, -4(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L42
	cmpq	$0, -24(%rbp)
	je	.L42
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L43
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L43
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	je	.L43
	movl	$1, -4(%rbp)
	jmp	.L38
.L42:
	nop
	jmp	.L38
.L43:
	nop
.L38:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ed448_shake256, .-ed448_shake256
	.type	ed448_digest_sign, @function
ed448_digest_sign:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$64, -40(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L53
.L45:
	cmpq	$0, -128(%rbp)
	jne	.L47
	movq	-136(%rbp), %rax
	movq	$114, (%rax)
	movl	$1, %eax
	jmp	.L53
.L47:
	cmpq	$113, -144(%rbp)
	ja	.L48
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L48:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$343, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L49:
	movq	-24(%rbp), %rax
	movzbl	292(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L50
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ed448_shake256
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L53
.L51:
	leaq	-112(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)
.L50:
	movq	-32(%rbp), %rax
	movq	8(%rax), %r9
	movq	-24(%rbp), %rax
	movzbl	292(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %r8d
	movq	-24(%rbp), %rax
	movq	552(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	293(%rax), %r10
	movq	-32(%rbp), %rax
	movq	80(%rax), %r11
	movq	-32(%rbp), %rax
	leaq	17(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-128(%rbp), %rsi
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%r10
	movq	%r11, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$372, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$175, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-136(%rbp), %rax
	movq	$114, (%rax)
	movl	$1, %eax
.L53:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ed448_digest_sign, .-ed448_digest_sign
	.type	ed25519_digest_verify, @function
ed25519_digest_verify:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L55
	cmpq	$64, -136(%rbp)
	je	.L56
.L55:
	movl	$0, %eax
	jmp	.L61
.L56:
	movq	-24(%rbp), %rax
	movzbl	292(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L58
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %r8
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	subq	$8, %rsp
	leaq	-104(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_Q_digest@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L59
	movq	-104(%rbp), %rax
	cmpq	$64, %rax
	je	.L60
.L59:
	movl	$0, %eax
	jmp	.L61
.L60:
	leaq	-96(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -152(%rbp)
.L58:
	movq	-32(%rbp), %rax
	movq	8(%rax), %r10
	movq	-24(%rbp), %rax
	movq	(%rax), %r9
	movq	-24(%rbp), %rax
	movq	552(%rax), %r8
	movq	-24(%rbp), %rax
	leaq	293(%rax), %r11
	movq	-24(%rbp), %rax
	movzbl	292(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movzbl	292(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %r12d
	movq	-24(%rbp), %rax
	movzbl	292(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %ebx
	movq	-32(%rbp), %rax
	leaq	17(%rax), %rcx
	movq	-128(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-144(%rbp), %rax
	subq	$8, %rsp
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%r11
	pushq	%rdi
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movq	%rax, %rdi
	call	ossl_ed25519_verify@PLT
	addq	$48, %rsp
.L61:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ed25519_digest_verify, .-ed25519_digest_verify
	.type	ed448_digest_verify, @function
ed448_digest_verify:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$64, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L63
	cmpq	$114, -120(%rbp)
	je	.L64
.L63:
	movl	$0, %eax
	jmp	.L68
.L64:
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L66
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ed448_shake256
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	leaq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
.L66:
	movq	-16(%rbp), %rax
	movq	8(%rax), %r9
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %r8d
	movq	-8(%rbp), %rax
	movq	552(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	293(%rax), %r11
	movq	-16(%rbp), %rax
	leaq	17(%rax), %r10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	subq	$8, %rsp
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	ossl_ed448_verify@PLT
	addq	$32, %rsp
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ed448_digest_verify, .-ed448_digest_verify
	.type	eddsa_freectx, @function
eddsa_freectx:
.LFB409:
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
	call	ossl_ecx_key_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$456, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	eddsa_freectx, .-eddsa_freectx
	.type	eddsa_dupctx, @function
eddsa_dupctx:
.LFB410:
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
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	leaq	.LC0(%rip), %rax
	movl	$467, %edx
	movq	%rax, %rsi
	movl	$560, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L73
	movl	$0, %eax
	jmp	.L72
.L73:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$70, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_up_ref@PLT
	testl	%eax, %eax
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L75:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	eddsa_freectx
	movl	$0, %eax
	jmp	.L72
.L74:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	eddsa_dupctx, .-eddsa_dupctx
	.section	.rodata
.LC3:
	.string	"algorithm-id"
	.text
	.type	eddsa_get_ctx_params, @function
eddsa_get_ctx_params:
.LFB411:
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
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L79
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	272(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L78
.L79:
	movl	$1, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	eddsa_get_ctx_params, .-eddsa_get_ctx_params
	.section	.rodata
.LC4:
	.string	"instance"
.LC5:
	.string	"context-string"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 160
known_gettable_ctx_params:
	.quad	.LC3
	.long	5
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
	.type	eddsa_gettable_ctx_params, @function
eddsa_gettable_ctx_params:
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
	.size	eddsa_gettable_ctx_params, .-eddsa_gettable_ctx_params
	.section	.rodata
.LC6:
	.string	"Ed25519"
.LC7:
	.string	"Ed25519ctx"
.LC8:
	.string	"Ed25519ph"
.LC9:
	.string	"Ed448"
.LC10:
	.string	"Ed448ph"
	.text
	.type	eddsa_set_ctx_params, @function
eddsa_set_ctx_params:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	cmpq	$0, -112(%rbp)
	jne	.L85
	movl	$1, %eax
	jmp	.L84
.L85:
	leaq	.LC4(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L86
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movw	$0, -48(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L84
.L87:
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L89
	movq	-8(%rbp), %rax
	movl	$1, 288(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	cmpl	$2, %eax
	je	.L90
	movl	$0, %eax
	jmp	.L84
.L90:
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 292(%rax)
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 292(%rax)
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 292(%rax)
	jmp	.L86
.L89:
	movq	-24(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L92
	movq	-8(%rbp), %rax
	movl	$2, 288(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	cmpl	$2, %eax
	je	.L93
	movl	$0, %eax
	jmp	.L84
.L93:
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	orl	$1, %edx
	movb	%dl, 292(%rax)
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 292(%rax)
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	orl	$4, %edx
	movb	%dl, 292(%rax)
	jmp	.L86
.L92:
	movq	-24(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L94
	movq	-8(%rbp), %rax
	movl	$3, 288(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	cmpl	$2, %eax
	je	.L95
	movl	$0, %eax
	jmp	.L84
.L95:
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	orl	$1, %edx
	movb	%dl, 292(%rax)
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	orl	$2, %edx
	movb	%dl, 292(%rax)
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 292(%rax)
	jmp	.L86
.L94:
	movq	-24(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L96
	movq	-8(%rbp), %rax
	movl	$4, 288(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	cmpl	$3, %eax
	je	.L97
	movl	$0, %eax
	jmp	.L84
.L97:
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 292(%rax)
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 292(%rax)
	jmp	.L86
.L96:
	movq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L98
	movq	-8(%rbp), %rax
	movl	$5, 288(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	cmpl	$3, %eax
	je	.L99
	movl	$0, %eax
	jmp	.L84
.L99:
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	orl	$2, %edx
	movb	%dl, 292(%rax)
	movq	-8(%rbp), %rax
	movzbl	292(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 292(%rax)
	jmp	.L86
.L98:
	movl	$0, %eax
	jmp	.L84
.L86:
	leaq	.LC5(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L100
	movq	-8(%rbp), %rax
	addq	$293, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	552(%rax), %rdx
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$255, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L100
	movq	-8(%rbp), %rax
	movq	$0, 552(%rax)
	movl	$0, %eax
	jmp	.L84
.L100:
	movl	$1, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	eddsa_set_ctx_params, .-eddsa_set_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	settable_ctx_params, @object
	.size	settable_ctx_params, 120
settable_ctx_params:
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
	.type	eddsa_settable_ctx_params, @function
eddsa_settable_ctx_params:
.LFB414:
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
.LFE414:
	.size	eddsa_settable_ctx_params, .-eddsa_settable_ctx_params
	.globl	ossl_ed25519_signature_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed25519_signature_functions, @object
	.size	ossl_ed25519_signature_functions, 192
ossl_ed25519_signature_functions:
	.long	1
	.zero	4
	.quad	eddsa_newctx
	.long	8
	.zero	4
	.quad	eddsa_digest_signverify_init
	.long	11
	.zero	4
	.quad	ed25519_digest_sign
	.long	12
	.zero	4
	.quad	eddsa_digest_signverify_init
	.long	15
	.zero	4
	.quad	ed25519_digest_verify
	.long	16
	.zero	4
	.quad	eddsa_freectx
	.long	17
	.zero	4
	.quad	eddsa_dupctx
	.long	18
	.zero	4
	.quad	eddsa_get_ctx_params
	.long	19
	.zero	4
	.quad	eddsa_gettable_ctx_params
	.long	20
	.zero	4
	.quad	eddsa_set_ctx_params
	.long	21
	.zero	4
	.quad	eddsa_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_ed448_signature_functions
	.align 32
	.type	ossl_ed448_signature_functions, @object
	.size	ossl_ed448_signature_functions, 192
ossl_ed448_signature_functions:
	.long	1
	.zero	4
	.quad	eddsa_newctx
	.long	8
	.zero	4
	.quad	eddsa_digest_signverify_init
	.long	11
	.zero	4
	.quad	ed448_digest_sign
	.long	12
	.zero	4
	.quad	eddsa_digest_signverify_init
	.long	15
	.zero	4
	.quad	ed448_digest_verify
	.long	16
	.zero	4
	.quad	eddsa_freectx
	.long	17
	.zero	4
	.quad	eddsa_dupctx
	.long	18
	.zero	4
	.quad	eddsa_get_ctx_params
	.long	19
	.zero	4
	.quad	eddsa_gettable_ctx_params
	.long	20
	.zero	4
	.quad	eddsa_set_ctx_params
	.long	21
	.zero	4
	.quad	eddsa_settable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 29
__func__.3:
	.string	"eddsa_digest_signverify_init"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"ed25519_digest_sign"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"ed448_digest_sign"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"eddsa_dupctx"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
