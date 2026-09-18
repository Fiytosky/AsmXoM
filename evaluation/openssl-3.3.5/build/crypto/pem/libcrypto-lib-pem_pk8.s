	.file	"pem_pk8.c"
	.text
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
	.globl	PEM_write_bio_PKCS8PrivateKey_nid
	.type	PEM_write_bio_PKCS8PrivateKey_nid, @function
PEM_write_bio_PKCS8PrivateKey_nid:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	16(%rbp)
	pushq	-40(%rbp)
	movl	-24(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	do_pk8pkey
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	PEM_write_bio_PKCS8PrivateKey_nid, .-PEM_write_bio_PKCS8PrivateKey_nid
	.globl	PEM_write_bio_PKCS8PrivateKey
	.type	PEM_write_bio_PKCS8PrivateKey, @function
PEM_write_bio_PKCS8PrivateKey:
.LFB516:
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
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	-36(%rbp), %edx
	pushq	%rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$-1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	do_pk8pkey
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PEM_write_bio_PKCS8PrivateKey, .-PEM_write_bio_PKCS8PrivateKey
	.globl	i2d_PKCS8PrivateKey_bio
	.type	i2d_PKCS8PrivateKey_bio, @function
i2d_PKCS8PrivateKey_bio:
.LFB517:
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
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	-36(%rbp), %edx
	pushq	%rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$-1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	do_pk8pkey
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	i2d_PKCS8PrivateKey_bio, .-i2d_PKCS8PrivateKey_bio
	.globl	i2d_PKCS8PrivateKey_nid_bio
	.type	i2d_PKCS8PrivateKey_nid_bio, @function
i2d_PKCS8PrivateKey_nid_bio:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	16(%rbp)
	pushq	-40(%rbp)
	movl	-24(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	do_pk8pkey
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	i2d_PKCS8PrivateKey_nid_bio, .-i2d_PKCS8PrivateKey_nid_bio
	.section	.rodata
.LC0:
	.string	"DER"
.LC1:
	.string	"PEM"
.LC2:
	.string	"PrivateKeyInfo"
.LC3:
	.string	"../crypto/pem/pem_pk8.c"
	.text
	.type	do_pk8pkey, @function
do_pk8pkey:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1120, %rsp
	movq	%rdi, -1080(%rbp)
	movq	%rsi, -1088(%rbp)
	movl	%edx, -1092(%rbp)
	movl	%ecx, -1096(%rbp)
	movq	%r8, -1104(%rbp)
	movq	%r9, -1112(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -1092(%rbp)
	je	.L14
	leaq	.LC0(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L15
.L14:
	leaq	.LC1(%rip), %rax
	movq	%rax, -16(%rbp)
.L15:
	movq	40(%rbp), %rsi
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-1088(%rbp), %rax
	movq	%rsi, %r8
	movl	$135, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	cmpq	$0, -1112(%rbp)
	jne	.L18
	cmpq	$0, 24(%rbp)
	jne	.L18
	cmpq	$0, 32(%rbp)
	je	.L19
	movq	32(%rbp), %rax
	movq	%rax, -1112(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, 16(%rbp)
	jmp	.L18
.L19:
	movq	PEM_def_callback@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rbp)
.L18:
	cmpl	$-1, -1096(%rbp)
	jne	.L20
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	je	.L20
	movl	$1, -4(%rbp)
	cmpq	$0, -1104(%rbp)
	je	.L21
	movl	$0, -4(%rbp)
	movq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_cipher@PLT
	testl	%eax, %eax
	je	.L21
	movq	-1112(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -1112(%rbp)
	je	.L22
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_passphrase@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, -4(%rbp)
	jmp	.L21
.L22:
	cmpq	$0, 24(%rbp)
	je	.L21
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_set_pem_password_cb@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$0, -4(%rbp)
.L21:
	cmpl	$0, -4(%rbp)
	je	.L23
	movq	-1080(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	je	.L23
	movl	$1, %eax
	jmp	.L24
.L23:
	movl	$0, %eax
.L24:
	movl	%eax, -4(%rbp)
	jmp	.L25
.L20:
	movl	$0, -4(%rbp)
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY2PKCS8@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L26:
	cmpq	$0, -1104(%rbp)
	jne	.L28
	cmpl	$-1, -1096(%rbp)
	je	.L29
.L28:
	cmpq	$0, -1112(%rbp)
	jne	.L30
	movq	32(%rbp), %rdx
	leaq	-1072(%rbp), %rax
	movq	24(%rbp), %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, 16(%rbp)
	cmpl	$0, 16(%rbp)
	jns	.L31
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$140, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L31:
	leaq	-1072(%rbp), %rax
	movq	%rax, -1112(%rbp)
.L30:
	movl	16(%rbp), %ecx
	movq	-1112(%rbp), %rdx
	movq	-1104(%rbp), %rsi
	movl	-1096(%rbp), %eax
	pushq	-40(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%eax, %edi
	call	PKCS8_encrypt@PLT
	addq	$16, %rsp
	movq	%rax, -48(%rbp)
	leaq	-1072(%rbp), %rax
	cmpq	%rax, -1112(%rbp)
	jne	.L32
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-1072(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L32:
	cmpq	$0, -48(%rbp)
	je	.L37
	cmpl	$0, -1092(%rbp)
	je	.L34
	movq	-48(%rbp), %rdx
	movq	-1080(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_bio@PLT
	movl	%eax, -4(%rbp)
	jmp	.L35
.L34:
	movq	-48(%rbp), %rdx
	movq	-1080(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8@PLT
	movl	%eax, -4(%rbp)
.L35:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	jmp	.L27
.L29:
	cmpl	$0, -1092(%rbp)
	je	.L36
	movq	-40(%rbp), %rdx
	movq	-1080(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_PRIV_KEY_INFO_bio@PLT
	movl	%eax, -4(%rbp)
	jmp	.L27
.L36:
	movq	-40(%rbp), %rdx
	movq	-1080(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8_PRIV_KEY_INFO@PLT
	movl	%eax, -4(%rbp)
	jmp	.L27
.L37:
	nop
.L27:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
.L25:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	-4(%rbp), %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	do_pk8pkey, .-do_pk8pkey
	.globl	d2i_PKCS8PrivateKey_bio
	.type	d2i_PKCS8PrivateKey_bio, @function
d2i_PKCS8PrivateKey_bio:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1104, %rsp
	movq	%rdi, -1080(%rbp)
	movq	%rsi, -1088(%rbp)
	movq	%rdx, -1096(%rbp)
	movq	%rcx, -1104(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-1080(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PKCS8_bio@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L48
.L39:
	cmpq	$0, -1096(%rbp)
	je	.L41
	movq	-1104(%rbp), %rdx
	leaq	-1072(%rbp), %rax
	movq	-1096(%rbp), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	jmp	.L42
.L41:
	movq	-1104(%rbp), %rdx
	leaq	-1072(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	PEM_def_callback@PLT
	movl	%eax, -4(%rbp)
.L42:
	cmpl	$0, -4(%rbp)
	js	.L43
	cmpl	$1024, -4(%rbp)
	jle	.L44
.L43:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$186, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	movl	$0, %eax
	jmp	.L48
.L44:
	movl	-4(%rbp), %edx
	leaq	-1072(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS8_decrypt@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-1072(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	cmpq	$0, -16(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L48
.L45:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKCS82PKEY@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	cmpq	$0, -32(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L48
.L46:
	cmpq	$0, -1088(%rbp)
	je	.L47
	movq	-1088(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-1088(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L47:
	movq	-32(%rbp), %rax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	d2i_PKCS8PrivateKey_bio, .-d2i_PKCS8PrivateKey_bio
	.globl	i2d_PKCS8PrivateKey_fp
	.type	i2d_PKCS8PrivateKey_fp, @function
i2d_PKCS8PrivateKey_fp:
.LFB521:
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
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	-36(%rbp), %edx
	pushq	%rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$-1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	do_pk8pkey_fp
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	i2d_PKCS8PrivateKey_fp, .-i2d_PKCS8PrivateKey_fp
	.globl	i2d_PKCS8PrivateKey_nid_fp
	.type	i2d_PKCS8PrivateKey_nid_fp, @function
i2d_PKCS8PrivateKey_nid_fp:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	16(%rbp)
	pushq	-40(%rbp)
	movl	-24(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	do_pk8pkey_fp
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	i2d_PKCS8PrivateKey_nid_fp, .-i2d_PKCS8PrivateKey_nid_fp
	.globl	PEM_write_PKCS8PrivateKey_nid
	.type	PEM_write_PKCS8PrivateKey_nid, @function
PEM_write_PKCS8PrivateKey_nid:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	16(%rbp)
	pushq	-40(%rbp)
	movl	-24(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	do_pk8pkey_fp
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	PEM_write_PKCS8PrivateKey_nid, .-PEM_write_PKCS8PrivateKey_nid
	.globl	PEM_write_PKCS8PrivateKey
	.type	PEM_write_PKCS8PrivateKey, @function
PEM_write_PKCS8PrivateKey:
.LFB524:
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
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	-36(%rbp), %edx
	pushq	%rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$-1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	do_pk8pkey_fp
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PEM_write_PKCS8PrivateKey, .-PEM_write_PKCS8PrivateKey
	.type	do_pk8pkey_fp, @function
do_pk8pkey_fp:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-56(%rbp), %r9
	movq	-48(%rbp), %r8
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	do_pk8pkey
	addq	$32, %rsp
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	do_pk8pkey_fp, .-do_pk8pkey_fp
	.globl	d2i_PKCS8PrivateKey_fp
	.type	d2i_PKCS8PrivateKey_fp, @function
d2i_PKCS8PrivateKey_fp:
.LFB526:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L61
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	d2i_PKCS8PrivateKey_bio@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	d2i_PKCS8PrivateKey_fp, .-d2i_PKCS8PrivateKey_fp
	.section	.rodata
.LC4:
	.string	"ENCRYPTED PRIVATE KEY"
	.text
	.globl	PEM_read_bio_PKCS8
	.type	PEM_read_bio_PKCS8, @function
PEM_read_bio_PKCS8:
.LFB527:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	d2i_X509_SIG@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	PEM_read_bio_PKCS8, .-PEM_read_bio_PKCS8
	.globl	PEM_read_PKCS8
	.type	PEM_read_PKCS8, @function
PEM_read_PKCS8:
.LFB528:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	d2i_X509_SIG@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	PEM_read_PKCS8, .-PEM_read_PKCS8
	.globl	PEM_write_bio_PKCS8
	.type	PEM_write_bio_PKCS8, @function
PEM_write_bio_PKCS8:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	i2d_X509_SIG@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	PEM_write_bio_PKCS8, .-PEM_write_bio_PKCS8
	.globl	PEM_write_PKCS8
	.type	PEM_write_PKCS8, @function
PEM_write_PKCS8:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	i2d_X509_SIG@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	PEM_write_PKCS8, .-PEM_write_PKCS8
	.section	.rodata
.LC5:
	.string	"PRIVATE KEY"
	.text
	.globl	PEM_read_bio_PKCS8_PRIV_KEY_INFO
	.type	PEM_read_bio_PKCS8_PRIV_KEY_INFO, @function
PEM_read_bio_PKCS8_PRIV_KEY_INFO:
.LFB531:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	d2i_PKCS8_PRIV_KEY_INFO@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	PEM_read_bio_PKCS8_PRIV_KEY_INFO, .-PEM_read_bio_PKCS8_PRIV_KEY_INFO
	.globl	PEM_read_PKCS8_PRIV_KEY_INFO
	.type	PEM_read_PKCS8_PRIV_KEY_INFO, @function
PEM_read_PKCS8_PRIV_KEY_INFO:
.LFB532:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	d2i_PKCS8_PRIV_KEY_INFO@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	PEM_read_PKCS8_PRIV_KEY_INFO, .-PEM_read_PKCS8_PRIV_KEY_INFO
	.globl	PEM_write_bio_PKCS8_PRIV_KEY_INFO
	.type	PEM_write_bio_PKCS8_PRIV_KEY_INFO, @function
PEM_write_bio_PKCS8_PRIV_KEY_INFO:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	i2d_PKCS8_PRIV_KEY_INFO@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PEM_write_bio_PKCS8_PRIV_KEY_INFO, .-PEM_write_bio_PKCS8_PRIV_KEY_INFO
	.globl	PEM_write_PKCS8_PRIV_KEY_INFO
	.type	PEM_write_PKCS8_PRIV_KEY_INFO, @function
PEM_write_PKCS8_PRIV_KEY_INFO:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	i2d_PKCS8_PRIV_KEY_INFO@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	PEM_write_PKCS8_PRIV_KEY_INFO, .-PEM_write_PKCS8_PRIV_KEY_INFO
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"do_pk8pkey"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 24
__func__.2:
	.string	"d2i_PKCS8PrivateKey_bio"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"do_pk8pkey_fp"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"d2i_PKCS8PrivateKey_fp"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
