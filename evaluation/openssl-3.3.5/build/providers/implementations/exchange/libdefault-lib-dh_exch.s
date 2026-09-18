	.file	"dh_exch.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/exchange/dh_exch.c"
	.text
	.type	dh_newctx, @function
dh_newctx:
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
	movl	$88, %edx
	movq	%rax, %rsi
	movl	$72, %edi
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
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	dh_newctx, .-dh_newctx
	.type	dh_init, @function
dh_init:
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
	call	DH_up_ref@PLT
	testl	%eax, %eax
	jne	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dh_set_ctx_params
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_check_key@PLT
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
	.size	dh_init, .-dh_init
	.type	dh_match_params, @function
dh_match_params:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	cmpq	$0, -16(%rbp)
	je	.L12
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_cmp@PLT
	testl	%eax, %eax
	je	.L12
	movl	$1, %eax
	jmp	.L13
.L12:
	movl	$0, %eax
.L13:
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$203, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L14:
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	dh_match_params, .-dh_match_params
	.type	dh_set_peer, @function
dh_set_peer:
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
	je	.L17
	cmpq	$0, -8(%rbp)
	je	.L17
	cmpq	$0, -32(%rbp)
	je	.L17
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dh_match_params
	testl	%eax, %eax
	je	.L17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DH_up_ref@PLT
	testl	%eax, %eax
	jne	.L18
.L17:
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	dh_set_peer, .-dh_set_peer
	.type	dh_plain_derive, @function
dh_plain_derive:
.LFB362:
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
	movl	%r8d, -68(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L22
.L21:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L22:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L24
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L29
.L24:
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L25
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$162, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L25:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-32(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	cmpl	$0, -68(%rbp)
	je	.L26
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key_padded@PLT
	movl	%eax, -4(%rbp)
	jmp	.L27
.L26:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key@PLT
	movl	%eax, -4(%rbp)
.L27:
	cmpl	$0, -4(%rbp)
	jg	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	dh_plain_derive, .-dh_plain_derive
	.type	dh_X9_42_kdf_derive, @function
dh_X9_42_kdf_derive:
.LFB363:
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
	jne	.L31
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L39
.L31:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L33
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L33:
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	dh_plain_derive
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L39
.L34:
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$197, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L35
	movl	$0, %eax
	jmp	.L39
.L35:
	movq	-32(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	dh_plain_derive
	testl	%eax, %eax
	je	.L40
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jne	.L38
	movq	-16(%rbp), %rax
	movq	(%rax), %r9
	movq	-16(%rbp), %rax
	movq	32(%rax), %r8
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %r11
	movq	-16(%rbp), %rax
	movq	64(%rax), %r10
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	pushq	$0
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	ossl_dh_kdf_X9_42_asn1@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L41
.L38:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L37
.L40:
	nop
	jmp	.L37
.L41:
	nop
.L37:
	movq	-32(%rbp), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$216, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	movl	-4(%rbp), %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	dh_X9_42_kdf_derive, .-dh_X9_42_kdf_derive
	.type	dh_derive, @function
dh_derive:
.LFB364:
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
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L45
	cmpl	$1, %eax
	je	.L46
	nop
	movl	$0, %eax
	jmp	.L44
.L45:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	dh_plain_derive
	jmp	.L44
.L46:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dh_X9_42_kdf_derive
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	dh_derive, .-dh_derive
	.type	dh_freectx, @function
dh_freectx:
.LFB365:
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
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$244, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$248, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$250, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	dh_freectx, .-dh_freectx
	.type	dh_dupctx, @function
dh_dupctx:
.LFB366:
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
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	leaq	.LC0(%rip), %rax
	movl	$261, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L52
.L53:
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
	movq	64(%rdx), %rdx
	movq	%rdx, 64(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	DH_up_ref@PLT
	testl	%eax, %eax
	je	.L60
.L54:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	DH_up_ref@PLT
	testl	%eax, %eax
	je	.L61
.L56:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	je	.L62
.L57:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$289, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L63
.L58:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$296, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L64
.L59:
	movq	-32(%rbp), %rax
	jmp	.L52
.L60:
	nop
	jmp	.L55
.L61:
	nop
	jmp	.L55
.L62:
	nop
	jmp	.L55
.L63:
	nop
	jmp	.L55
.L64:
	nop
.L55:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	dh_freectx
	movl	$0, %eax
.L52:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	dh_dupctx, .-dh_dupctx
	.section	.rodata
.LC1:
	.string	"kdf-type"
.LC2:
	.string	"X942KDF-ASN1"
.LC3:
	.string	"kdf-digest"
.LC4:
	.string	"kdf-digest-props"
.LC5:
	.string	"kdf-outlen"
.LC6:
	.string	"kdf-ukm"
.LC7:
	.string	"pad"
.LC8:
	.string	"cekalg"
	.text
	.type	dh_set_ctx_params, @function
dh_set_ctx_params:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -120(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L88
.L66:
	cmpq	$0, -240(%rbp)
	jne	.L68
	movl	$1, %eax
	jmp	.L88
.L68:
	leaq	.LC1(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L69
	leaq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-120(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L88
.L70:
	movzbl	-112(%rbp), %eax
	testb	%al, %al
	jne	.L71
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	jmp	.L69
.L71:
	leaq	.LC2(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L72
	movq	-8(%rbp), %rax
	movl	$1, 28(%rax)
	jmp	.L69
.L72:
	movl	$0, %eax
	jmp	.L88
.L69:
	leaq	.LC3(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L73
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
	leaq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-120(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L88
.L74:
	leaq	-224(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC4(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L76
	leaq	-120(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L88
.L76:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-224(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L77
	movl	$0, %eax
	jmp	.L88
.L77:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_digest_is_allowed@PLT
	testl	%eax, %eax
	jne	.L73
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movl	$0, %eax
	jmp	.L88
.L73:
	leaq	.LC5(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L79
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L88
.L80:
	movq	-128(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
.L79:
	leaq	.LC6(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L81
	movq	$0, -136(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$375, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L81
	leaq	-144(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L88
.L83:
	movq	-136(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-144(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
.L81:
	leaq	.LC7(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L84
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L88
.L85:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	setne	%dl
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 24(%rax)
.L84:
	leaq	.LC8(%rip), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L86
	leaq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$398, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L86
	leaq	-120(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L88
.L87:
	leaq	.LC0(%rip), %rcx
	leaq	-112(%rbp), %rax
	movl	$403, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L86
	movl	$0, %eax
	jmp	.L88
.L86:
	movl	$1, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	dh_set_ctx_params, .-dh_set_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_settable_ctx_params, @object
	.size	known_settable_ctx_params, 320
known_settable_ctx_params:
	.quad	.LC7
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC1
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
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
	.quad	.LC8
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
	.type	dh_settable_ctx_params, @function
dh_settable_ctx_params:
.LFB368:
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
.LFE368:
	.size	dh_settable_ctx_params, .-dh_settable_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 240
known_gettable_ctx_params:
	.quad	.LC1
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC6
	.long	7
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	dh_gettable_ctx_params, @function
dh_gettable_ctx_params:
.LFB369:
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
.LFE369:
	.size	dh_gettable_ctx_params, .-dh_gettable_ctx_params
	.section	.rodata
.LC9:
	.string	""
	.text
	.type	dh_get_ctx_params, @function
dh_get_ctx_params:
.LFB370:
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
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L95
.L94:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L96
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L97
	cmpl	$1, %eax
	je	.L98
	jmp	.L109
.L97:
	leaq	.LC9(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L100
.L98:
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L100
.L109:
	movl	$0, %eax
	jmp	.L95
.L100:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L95
.L96:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L101
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	jmp	.L103
.L102:
	leaq	.LC9(%rip), %rax
.L103:
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L95
.L101:
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L104
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L95
.L104:
	leaq	.LC6(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L105
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	testl	%eax, %eax
	jne	.L105
	movl	$0, %eax
	jmp	.L95
.L105:
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L106
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	jmp	.L108
.L107:
	leaq	.LC9(%rip), %rax
.L108:
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L95
.L106:
	movl	$1, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	dh_get_ctx_params, .-dh_get_ctx_params
	.globl	ossl_dh_keyexch_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_keyexch_functions, @object
	.size	ossl_dh_keyexch_functions, 176
ossl_dh_keyexch_functions:
	.long	1
	.zero	4
	.quad	dh_newctx
	.long	2
	.zero	4
	.quad	dh_init
	.long	3
	.zero	4
	.quad	dh_derive
	.long	4
	.zero	4
	.quad	dh_set_peer
	.long	5
	.zero	4
	.quad	dh_freectx
	.long	6
	.zero	4
	.quad	dh_dupctx
	.long	7
	.zero	4
	.quad	dh_set_ctx_params
	.long	8
	.zero	4
	.quad	dh_settable_ctx_params
	.long	9
	.zero	4
	.quad	dh_get_ctx_params
	.long	10
	.zero	4
	.quad	dh_gettable_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"dh_match_params"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"dh_plain_derive"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"dh_X9_42_kdf_derive"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
