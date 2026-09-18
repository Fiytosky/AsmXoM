	.file	"pem_info.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
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
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	ossl_check_X509_INFO_type, @function
ossl_check_X509_INFO_type:
.LFB444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	ossl_check_X509_INFO_type, .-ossl_check_X509_INFO_type
	.type	ossl_check_const_X509_INFO_sk_type, @function
ossl_check_const_X509_INFO_sk_type:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	ossl_check_const_X509_INFO_sk_type, .-ossl_check_const_X509_INFO_sk_type
	.type	ossl_check_X509_INFO_sk_type, @function
ossl_check_X509_INFO_sk_type:
.LFB446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	ossl_check_X509_INFO_sk_type, .-ossl_check_X509_INFO_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/pem/pem_info.c"
	.text
	.globl	PEM_X509_INFO_read_ex
	.type	PEM_X509_INFO_read_ex, @function
PEM_X509_INFO_read_ex:
.LFB564:
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
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L16
.L15:
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
	call	PEM_X509_INFO_read_bio_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	PEM_X509_INFO_read_ex, .-PEM_X509_INFO_read_ex
	.globl	PEM_X509_INFO_read
	.type	PEM_X509_INFO_read, @function
PEM_X509_INFO_read:
.LFB565:
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
	call	PEM_X509_INFO_read_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	PEM_X509_INFO_read, .-PEM_X509_INFO_read
	.section	.rodata
.LC1:
	.string	"CERTIFICATE"
.LC2:
	.string	"X509 CERTIFICATE"
.LC3:
	.string	"TRUSTED CERTIFICATE"
.LC4:
	.string	"X509 CRL"
.LC5:
	.string	"PRIVATE KEY"
.LC6:
	.string	"ENCRYPTED PRIVATE KEY"
	.text
	.globl	PEM_X509_INFO_read_bio_ex
	.type	PEM_X509_INFO_read_bio_ex, @function
PEM_X509_INFO_read_bio_ex:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	%r9, -208(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -72(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.L20
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L22
.L20:
	movq	-176(%rbp), %rax
	movq	%rax, -48(%rbp)
.L21:
	call	X509_INFO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L67
.L23:
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	call	ERR_set_mark@PLT
	leaq	-128(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L24
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cltq
	movq	%rax, -80(%rbp)
	cmpq	$108, -80(%rbp)
	jne	.L25
	call	ERR_pop_to_mark@PLT
	nop
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	jmp	.L66
.L25:
	call	ERR_clear_last_mark@PLT
	jmp	.L22
.L24:
	call	ERR_clear_last_mark@PLT
.L27:
	movq	-96(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L28
	movq	-96(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L28
	movq	-96(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L29
.L28:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L68
	call	X509_INFO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L69
	jmp	.L27
.L30:
	movq	-96(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L33
	movq	d2i_X509_AUX@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.L34
.L33:
	movq	d2i_X509@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
.L34:
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L36
.L29:
	movq	-96(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L37
	movq	d2i_X509_CRL@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L71
	call	X509_INFO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L72
	jmp	.L27
.L38:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.L36
.L37:
	movq	-96(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L41
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L73
	call	X509_INFO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L74
	jmp	.L27
.L42:
	movq	-96(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	je	.L45
	movq	-96(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L46
.L45:
	movl	$0, -60(%rbp)
	jmp	.L47
.L46:
	subq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movb	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_name2type@PLT
	movl	%eax, -60(%rbp)
.L47:
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
	movq	d2i_AutoPrivateKey@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	call	X509_PKEY_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpl	$10, %eax
	jg	.L49
	movq	-96(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L36
.L49:
	movl	$1, -56(%rbp)
	jmp	.L36
.L41:
	movq	$0, -72(%rbp)
	movq	$0, -32(%rbp)
.L36:
	cmpq	$0, -72(%rbp)
	je	.L50
	cmpl	$0, -56(%rbp)
	jne	.L51
	movq	-104(%rbp), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_get_EVP_CIPHER_INFO@PLT
	testl	%eax, %eax
	je	.L76
	movq	-112(%rbp), %rsi
	movq	-192(%rbp), %rdi
	movq	-184(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_do_header@PLT
	testl	%eax, %eax
	je	.L77
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L55
	movq	-128(%rbp), %rcx
	movl	-60(%rbp), %eax
	movq	-208(%rbp), %r8
	movq	-200(%rbp), %rdi
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	d2i_PrivateKey_ex@PLT
	testq	%rax, %rax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L22
.L55:
	movq	-128(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testq	%rax, %rax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L22
.L51:
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_get_EVP_CIPHER_INFO@PLT
	testl	%eax, %eax
	je	.L78
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-128(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	$0, -112(%rbp)
.L50:
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$180, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -96(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$182, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -104(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$184, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -112(%rbp)
	jmp	.L23
.L66:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L59
.L58:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L79
	movq	$0, -24(%rbp)
.L59:
	movl	$1, -36(%rbp)
	jmp	.L22
.L67:
	nop
	jmp	.L22
.L68:
	nop
	jmp	.L22
.L69:
	nop
	jmp	.L22
.L70:
	nop
	jmp	.L22
.L71:
	nop
	jmp	.L22
.L72:
	nop
	jmp	.L22
.L73:
	nop
	jmp	.L22
.L74:
	nop
	jmp	.L22
.L75:
	nop
	jmp	.L22
.L76:
	nop
	jmp	.L22
.L77:
	nop
	jmp	.L22
.L78:
	nop
	jmp	.L22
.L79:
	nop
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_INFO_free@PLT
	cmpl	$0, -36(%rbp)
	jne	.L61
	movl	$0, -52(%rbp)
	jmp	.L62
.L63:
	movl	-52(%rbp), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_INFO_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_INFO_free@PLT
	addl	$1, -52(%rbp)
.L62:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L63
	movq	-48(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.L64
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
.L64:
	movq	$0, -48(%rbp)
.L61:
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$211, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-104(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$212, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-112(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$213, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	PEM_X509_INFO_read_bio_ex, .-PEM_X509_INFO_read_bio_ex
	.globl	PEM_X509_INFO_read_bio
	.type	PEM_X509_INFO_read_bio, @function
PEM_X509_INFO_read_bio:
.LFB567:
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
	call	PEM_X509_INFO_read_bio_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	PEM_X509_INFO_read_bio, .-PEM_X509_INFO_read_bio
	.section	.rodata
.LC7:
	.string	"RSA PRIVATE KEY"
	.text
	.globl	PEM_X509_INFO_write_bio
	.type	PEM_X509_INFO_write_bio, @function
PEM_X509_INFO_write_bio:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1128, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1096(%rbp)
	movq	%rsi, -1104(%rbp)
	movq	%rdx, -1112(%rbp)
	movq	%rcx, -1120(%rbp)
	movl	%r8d, -1124(%rbp)
	movq	%r9, -1136(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -1112(%rbp)
	je	.L83
	movq	-1112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L84
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-1112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	addl	%eax, %eax
	cltq
	addq	%rbx, %rax
	addq	$36, %rax
	cmpq	$1024, %rax
	jbe	.L83
.L84:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$243, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L85
.L83:
	movq	-1104(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-1104(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-1104(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jle	.L87
	cmpq	$0, -1112(%rbp)
	jne	.L88
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L85
.L88:
	movq	-1104(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -48(%rbp)
	movq	-1104(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-1104(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-1104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$272, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L85
.L89:
	movb	$0, -1088(%rbp)
	leaq	-1088(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	PEM_proc_type@PLT
	movq	-1112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, %edi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	leaq	-1088(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	PEM_dek_info@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rdi
	movq	-32(%rbp), %rcx
	leaq	-1088(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-1096(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_write_bio@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L86
	jmp	.L85
.L87:
	movq	-1104(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, %rsi
	movq	-1136(%rbp), %r8
	movl	-1124(%rbp), %edi
	movq	-1120(%rbp), %rcx
	movq	-1112(%rbp), %rdx
	movq	-1096(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PEM_write_bio_RSAPrivateKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jle	.L93
.L86:
	movq	-1104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-1104(%rbp), %rax
	movq	(%rax), %rdx
	movq	-1096(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
	testl	%eax, %eax
	jle	.L94
.L91:
	movl	$1, -20(%rbp)
	jmp	.L85
.L93:
	nop
	jmp	.L85
.L94:
	nop
.L85:
	leaq	-1088(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	PEM_X509_INFO_write_bio, .-PEM_X509_INFO_write_bio
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"PEM_X509_INFO_read_ex"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 26
__func__.1:
	.string	"PEM_X509_INFO_read_bio_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"PEM_X509_INFO_write_bio"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
