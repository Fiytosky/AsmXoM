	.file	"pem_pkey.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB505:
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
.LFE505:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB506:
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
.LFE506:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"PEM"
.LC1:
	.string	"../crypto/pem/pem_pkey.c"
	.text
	.type	pem_read_bio_key_decoder, @function
pem_read_bio_key_decoder:
.LFB601:
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
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$133, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L9
	movl	$0, %eax
	jmp	.L23
.L9:
	movq	-72(%rbp), %rcx
	movl	16(%rbp), %edx
	leaq	.LC0(%rip), %rsi
	leaq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	-80(%rbp)
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L23
.L11:
	cmpq	$0, -56(%rbp)
	jne	.L12
	movq	PEM_def_callback@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
.L12:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_pem_password_cb@PLT
	testl	%eax, %eax
	je	.L25
	call	ERR_set_mark@PLT
	jmp	.L15
.L20:
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L16
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$133, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L16
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.L17
.L16:
	call	ERR_clear_last_mark@PLT
	jmp	.L14
.L17:
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$524556, %eax
	jne	.L18
	call	ERR_pop_to_mark@PLT
	call	ERR_set_mark@PLT
	jmp	.L24
.L18:
	call	ERR_clear_last_mark@PLT
	jmp	.L14
.L24:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.L15:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_bio@PLT
	testl	%eax, %eax
	je	.L20
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L20
	call	ERR_pop_to_mark@PLT
	movl	16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L21
	andl	$-3, 16(%rbp)
.L21:
	movq	-32(%rbp), %rax
	movl	16(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_has@PLT
	testl	%eax, %eax
	jne	.L22
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -32(%rbp)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L14
.L22:
	cmpq	$0, -48(%rbp)
	je	.L26
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L14
.L25:
	nop
	jmp	.L14
.L26:
	nop
.L14:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-32(%rbp), %rax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	pem_read_bio_key_decoder, .-pem_read_bio_key_decoder
	.section	.rodata
.LC2:
	.string	"ANY PRIVATE KEY"
.LC3:
	.string	"PARAMETERS"
.LC4:
	.string	"PUBLIC KEY"
.LC5:
	.string	"PRIVATE KEY"
.LC6:
	.string	"ENCRYPTED PRIVATE KEY"
	.text
	.type	pem_read_bio_key_legacy, @function
pem_read_bio_key_legacy:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1168, %rsp
	movq	%rdi, -1128(%rbp)
	movq	%rsi, -1136(%rbp)
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1152(%rbp)
	movq	%r8, -1160(%rbp)
	movq	%r9, -1168(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -8(%rbp)
	call	ERR_set_mark@PLT
	movl	16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L28
	movq	-1144(%rbp), %r8
	movq	-1128(%rbp), %rdi
	leaq	.LC2(%rip), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rax
	subq	$8, %rsp
	pushq	-1152(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_bytes_read_bio_secmem@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L29
	call	ERR_pop_to_mark@PLT
	movl	$0, %eax
	jmp	.L52
.L28:
	leaq	.LC3(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	16(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L31
	leaq	.LC4(%rip), %rax
	movq	%rax, -16(%rbp)
.L31:
	movq	-1144(%rbp), %r8
	movq	-1128(%rbp), %rdi
	movq	-16(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rax
	subq	$8, %rsp
	pushq	-1152(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_bytes_read_bio@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L29
	call	ERR_pop_to_mark@PLT
	movl	$0, %eax
	jmp	.L52
.L29:
	call	ERR_clear_last_mark@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L32
	movq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L53
	movq	-1168(%rbp), %rdx
	movq	-1160(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_pkcs82pkey_legacy@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -1136(%rbp)
	je	.L35
	movq	-1136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-1136(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L35:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	jmp	.L34
.L32:
	movq	-64(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L36
	movq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_SIG@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L54
	cmpq	$0, -1144(%rbp)
	je	.L39
	movq	-1152(%rbp), %rdx
	leaq	-1120(%rbp), %rax
	movq	-1144(%rbp), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -20(%rbp)
	jmp	.L40
.L39:
	movq	-1152(%rbp), %rdx
	leaq	-1120(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	PEM_def_callback@PLT
	movl	%eax, -20(%rbp)
.L40:
	cmpl	$0, -20(%rbp)
	jns	.L41
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	jmp	.L42
.L41:
	movl	-20(%rbp), %edx
	leaq	-1120(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS8_decrypt@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-1120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	cmpq	$0, -48(%rbp)
	je	.L55
	movq	-1168(%rbp), %rdx
	movq	-1160(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_pkcs82pkey_legacy@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -1136(%rbp)
	je	.L44
	movq	-1136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-1136(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L44:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	jmp	.L34
.L36:
	movq	-64(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pem_check_suffix@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L45
	movq	-64(%rbp), %rax
	movl	-24(%rbp), %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_asn1_find_str@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L56
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movq	-1168(%rbp), %r8
	movq	-1160(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	movq	-1136(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	ossl_d2i_PrivateKey_legacy@PLT
	movq	%rax, -8(%rbp)
	jmp	.L34
.L45:
	movl	16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L48
	movl	16(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L48
	movq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-1136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_d2i_PUBKEY_legacy@PLT
	movq	%rax, -8(%rbp)
	jmp	.L34
.L48:
	movl	16(%rbp), %eax
	andl	$135, %eax
	testl	%eax, %eax
	jne	.L57
	movq	-64(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pem_check_suffix@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L57
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L58
	movq	-64(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type_str@PLT
	testl	%eax, %eax
	je	.L50
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %r8
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-72(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L51
.L50:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L42
.L51:
	cmpq	$0, -1136(%rbp)
	je	.L57
	movq	-1136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-1136(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L34
.L53:
	nop
	jmp	.L34
.L54:
	nop
	jmp	.L34
.L55:
	nop
	jmp	.L34
.L56:
	nop
	jmp	.L34
.L57:
	nop
.L34:
	cmpq	$0, -8(%rbp)
	jne	.L59
	call	ERR_peek_last_error@PLT
	testq	%rax, %rax
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$207, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L42
.L58:
	nop
	jmp	.L42
.L59:
	nop
.L42:
	movq	-64(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$209, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	-80(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	$210, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	movq	-8(%rbp), %rax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	pem_read_bio_key_legacy, .-pem_read_bio_key_legacy
	.type	pem_read_bio_key, @function
pem_read_bio_key:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$133, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L61
	call	BIO_f_readbuffer@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L62
	movl	$0, %eax
	jmp	.L71
.L62:
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$133, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -20(%rbp)
.L61:
	cmpq	$0, -104(%rbp)
	jne	.L64
	movq	PEM_def_callback@GOTPCREL(%rip), %rax
	movq	%rax, -104(%rbp)
.L64:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pw_set_pem_password_cb@PLT
	testl	%eax, %eax
	je	.L72
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_enable_passphrase_caching@PLT
	testl	%eax, %eax
	je	.L72
	call	ERR_set_mark@PLT
	movq	-128(%rbp), %r8
	movq	-120(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	ossl_pw_pem_password@GOTPCREL(%rip), %rax
	movq	%rax, %r10
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	movl	16(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%r10, %rdx
	movq	%rax, %rdi
	call	pem_read_bio_key_decoder
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L68
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$128, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	js	.L69
	movq	-128(%rbp), %r8
	movq	-120(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	ossl_pw_pem_password@GOTPCREL(%rip), %rax
	movq	%rax, %r10
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	movl	16(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%r10, %rdx
	movq	%rax, %rdi
	call	pem_read_bio_key_legacy
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L68
.L69:
	call	ERR_clear_last_mark@PLT
	jmp	.L67
.L68:
	call	ERR_pop_to_mark@PLT
	jmp	.L67
.L72:
	nop
.L67:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_data@PLT
	cmpq	$0, -16(%rbp)
	je	.L70
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L70:
	movq	-8(%rbp), %rax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	pem_read_bio_key, .-pem_read_bio_key
	.globl	PEM_read_bio_PUBKEY_ex
	.type	PEM_read_bio_PUBKEY_ex, @function
PEM_read_bio_PUBKEY_ex:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$134
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pem_read_bio_key
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	PEM_read_bio_PUBKEY_ex, .-PEM_read_bio_PUBKEY_ex
	.globl	PEM_read_bio_PUBKEY
	.type	PEM_read_bio_PUBKEY, @function
PEM_read_bio_PUBKEY:
.LFB605:
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
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PEM_read_bio_PUBKEY_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	PEM_read_bio_PUBKEY, .-PEM_read_bio_PUBKEY
	.globl	PEM_read_PUBKEY_ex
	.type	PEM_read_PUBKEY_ex, @function
PEM_read_PUBKEY_ex:
.LFB606:
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
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$285, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L79
.L78:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio_PUBKEY_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	PEM_read_PUBKEY_ex, .-PEM_read_PUBKEY_ex
	.globl	PEM_read_PUBKEY
	.type	PEM_read_PUBKEY, @function
PEM_read_PUBKEY:
.LFB607:
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
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PEM_read_PUBKEY_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	PEM_read_PUBKEY, .-PEM_read_PUBKEY
	.globl	PEM_read_bio_PrivateKey_ex
	.type	PEM_read_bio_PrivateKey_ex, @function
PEM_read_bio_PrivateKey_ex:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$135
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pem_read_bio_key
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	PEM_read_bio_PrivateKey_ex, .-PEM_read_bio_PrivateKey_ex
	.globl	PEM_read_bio_PrivateKey
	.type	PEM_read_bio_PrivateKey, @function
PEM_read_bio_PrivateKey:
.LFB609:
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
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	PEM_read_bio_PrivateKey, .-PEM_read_bio_PrivateKey
	.section	.rodata
.LC7:
	.string	"PrivateKeyInfo"
	.text
	.globl	PEM_write_bio_PrivateKey_ex
	.type	PEM_write_bio_PrivateKey_ex, @function
PEM_write_bio_PrivateKey_ex:
.LFB610:
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
	movq	%r9, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	32(%rbp), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movl	$135, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	jne	.L87
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	nop
.L88:
	cmpq	$0, -32(%rbp)
	je	.L95
	jmp	.L97
.L87:
	movl	$1, -4(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L89
	cmpq	$0, -64(%rbp)
	jne	.L89
	cmpq	$0, 16(%rbp)
	je	.L90
	movq	16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -52(%rbp)
	jmp	.L89
.L90:
	movq	PEM_def_callback@GOTPCREL(%rip), %rax
	movq	%rax, -64(%rbp)
.L89:
	cmpq	$0, -40(%rbp)
	je	.L91
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_cipher@PLT
	testl	%eax, %eax
	je	.L91
	movl	$1, -4(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L92
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_passphrase@PLT
	testl	%eax, %eax
	jne	.L92
	movl	$0, -4(%rbp)
	jmp	.L91
.L92:
	cmpq	$0, -64(%rbp)
	je	.L91
	movq	16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_pem_password_cb@PLT
	testl	%eax, %eax
	jne	.L91
	movl	$0, -4(%rbp)
.L91:
	cmpl	$0, -4(%rbp)
	jne	.L93
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	$0, %eax
	jmp	.L94
.L93:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	-4(%rbp), %eax
	jmp	.L94
.L97:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L95
.L96:
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8PrivateKey@PLT
	addq	$16, %rsp
	jmp	.L94
.L95:
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey_traditional@PLT
	addq	$16, %rsp
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	PEM_write_bio_PrivateKey_ex, .-PEM_write_bio_PrivateKey_ex
	.globl	PEM_write_bio_PrivateKey
	.type	PEM_write_bio_PrivateKey, @function
PEM_write_bio_PrivateKey:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	PEM_write_bio_PrivateKey, .-PEM_write_bio_PrivateKey
	.section	.rodata
.LC8:
	.string	"%s PRIVATE KEY"
	.text
	.globl	PEM_write_bio_PrivateKey_traditional
	.type	PEM_write_bio_PrivateKey_traditional, @function
PEM_write_bio_PrivateKey_traditional:
.LFB612:
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
	movl	%r8d, -148(%rbp)
	movq	%r9, -160(%rbp)
	movq	$0, -104(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.L101
	movl	$0, %eax
	jmp	.L107
.L101:
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	movq	-128(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L104
.L103:
	movq	-128(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L104
	movq	-128(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_copy_downgraded@PLT
	testl	%eax, %eax
	je	.L104
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
.L104:
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L106
.L105:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	leaq	.LC8(%rip), %rsi
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-144(%rbp), %r8
	movq	-136(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	i2d_PrivateKey@GOTPCREL(%rip), %rsi
	movq	%rsi, %r10
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-160(%rbp)
	movl	-148(%rbp), %esi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movq	%r10, %rdi
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	movl	%eax, -4(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	PEM_write_bio_PrivateKey_traditional, .-PEM_write_bio_PrivateKey_traditional
	.type	no_password_cb, @function
no_password_cb:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	no_password_cb, .-no_password_cb
	.globl	PEM_read_bio_Parameters_ex
	.type	PEM_read_bio_Parameters_ex, @function
PEM_read_bio_Parameters_ex:
.LFB614:
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
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	leaq	no_password_cb(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$132
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	pem_read_bio_key
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	PEM_read_bio_Parameters_ex, .-PEM_read_bio_Parameters_ex
	.globl	PEM_read_bio_Parameters
	.type	PEM_read_bio_Parameters, @function
PEM_read_bio_Parameters:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_read_bio_Parameters_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	PEM_read_bio_Parameters, .-PEM_read_bio_Parameters
	.section	.rodata
.LC9:
	.string	"type-specific"
.LC10:
	.string	"%s PARAMETERS"
	.text
	.globl	PEM_write_bio_Parameters
	.type	PEM_write_bio_Parameters, @function
PEM_write_bio_Parameters:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC9(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	movq	-112(%rbp), %rax
	movl	$0, %r8d
	movl	$132, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	jne	.L115
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	nop
.L116:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L118
	jmp	.L121
.L115:
	movq	-104(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	-4(%rbp), %eax
	jmp	.L120
.L121:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L119
.L118:
	movl	$0, %eax
	jmp	.L120
.L119:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	leaq	.LC10(%rip), %rsi
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	PEM_write_bio_Parameters, .-PEM_write_bio_Parameters
	.globl	PEM_read_PrivateKey_ex
	.type	PEM_read_PrivateKey_ex, @function
PEM_read_PrivateKey_ex:
.LFB617:
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
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L123
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$415, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	PEM_read_PrivateKey_ex, .-PEM_read_PrivateKey_ex
	.globl	PEM_read_PrivateKey
	.type	PEM_read_PrivateKey, @function
PEM_read_PrivateKey:
.LFB618:
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
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PEM_read_PrivateKey_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	PEM_read_PrivateKey, .-PEM_read_PrivateKey
	.globl	PEM_write_PrivateKey_ex
	.type	PEM_write_PrivateKey_ex, @function
PEM_write_PrivateKey_ex:
.LFB619:
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
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$436, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L129
.L128:
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey_ex@PLT
	addq	$32, %rsp
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	PEM_write_PrivateKey_ex, .-PEM_write_PrivateKey_ex
	.globl	PEM_write_PrivateKey
	.type	PEM_write_PrivateKey, @function
PEM_write_PrivateKey:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PEM_write_PrivateKey_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	PEM_write_PrivateKey, .-PEM_write_PrivateKey
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 25
__func__.5:
	.string	"pem_read_bio_key_decoder"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"pem_read_bio_key_legacy"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"PEM_read_PUBKEY_ex"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 37
__func__.2:
	.string	"PEM_write_bio_PrivateKey_traditional"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"PEM_read_PrivateKey_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"PEM_write_PrivateKey_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
