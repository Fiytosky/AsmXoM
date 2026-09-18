	.file	"encode_key2any.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB499:
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
.LFE499:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB500:
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
.LFE500:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	free_asn1_data, @function
free_asn1_data:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$6, -4(%rbp)
	je	.L6
	cmpl	$16, -4(%rbp)
	je	.L7
	jmp	.L9
.L6:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	jmp	.L8
.L7:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
.L8:
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	free_asn1_data, .-free_asn1_data
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/encode_decode/encode_key2any.c"
	.text
	.type	key_to_p8info, @function
key_to_p8info:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -64(%rbp)
	movq	%r8, -80(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	call	PKCS8_PRIV_KEY_INFO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L11
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L11
	movq	-40(%rbp), %rbx
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-72(%rbp), %rdi
	movl	-64(%rbp), %edx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	movl	-28(%rbp), %ecx
	pushq	%rcx
	movq	%rbx, %r9
	movq	%rdi, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PKCS8_pkey_set0@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L12
.L11:
	call	ERR_new@PLT
	leaq	__func__.116(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$94, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
.L12:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	key_to_p8info, .-key_to_p8info
	.type	p8info_to_encp8, @function
p8info_to_encp8:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1072, %rsp
	movq	%rdi, -1064(%rbp)
	movq	%rsi, -1072(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -1048(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	movl	$0, %eax
	jmp	.L18
.L15:
	movq	-1072(%rbp), %rax
	leaq	24(%rax), %rcx
	leaq	-1048(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	ossl_pw_get_passphrase@PLT
	testl	%eax, %eax
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.115(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-1048(%rbp), %rax
	movl	%eax, %ecx
	movq	-1072(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1040(%rbp), %rdx
	pushq	$0
	pushq	-16(%rbp)
	pushq	-1064(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$-1, %edi
	call	PKCS8_encrypt_ex@PLT
	addq	$32, %rsp
	movq	%rax, -8(%rbp)
	movq	-1048(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	p8info_to_encp8, .-p8info_to_encp8
	.type	key_to_encp8, @function
key_to_encp8:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_p8info
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L20
	movq	-40(%rbp), %rdx
	movl	-32(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	free_asn1_data
	jmp	.L21
.L20:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	p8info_to_encp8
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
.L21:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	key_to_encp8, .-key_to_encp8
	.type	key_to_pubkey, @function
key_to_pubkey:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -64(%rbp)
	movq	%r8, -80(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	call	X509_PUBKEY_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L24
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L24
	movq	-40(%rbp), %rbx
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movl	-28(%rbp), %edi
	movq	-72(%rbp), %rcx
	movl	-64(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	X509_PUBKEY_set0_param@PLT
	testl	%eax, %eax
	jne	.L25
.L24:
	call	ERR_new@PLT
	leaq	__func__.114(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$159, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
.L25:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	key_to_pubkey, .-key_to_pubkey
	.type	key_to_epki_der_priv_bio, @function
key_to_epki_der_priv_bio:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L32
.L28:
	cmpq	$0, -72(%rbp)
	je	.L30
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L32
.L30:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	16(%rbp), %r8
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_encp8
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L31
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_bio@PLT
	movl	%eax, -4(%rbp)
.L31:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	movl	-4(%rbp), %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	key_to_epki_der_priv_bio, .-key_to_epki_der_priv_bio
	.type	key_to_epki_pem_priv_bio, @function
key_to_epki_pem_priv_bio:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L38
.L34:
	cmpq	$0, -72(%rbp)
	je	.L36
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L38
.L36:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	16(%rbp), %r8
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_encp8
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L37
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8@PLT
	movl	%eax, -4(%rbp)
.L37:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	movl	-4(%rbp), %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	key_to_epki_pem_priv_bio, .-key_to_epki_pem_priv_bio
	.type	key_to_pki_der_priv_bio, @function
key_to_pki_der_priv_bio:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L40
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_epki_der_priv_bio
	addq	$16, %rsp
	jmp	.L45
.L40:
	cmpq	$0, -72(%rbp)
	je	.L42
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L45
.L42:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_p8info
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L43
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_PRIV_KEY_INFO_bio@PLT
	movl	%eax, -4(%rbp)
	jmp	.L44
.L43:
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	free_asn1_data
.L44:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movl	-4(%rbp), %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	key_to_pki_der_priv_bio, .-key_to_pki_der_priv_bio
	.type	key_to_pki_pem_priv_bio, @function
key_to_pki_pem_priv_bio:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L47
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_epki_pem_priv_bio
	addq	$16, %rsp
	jmp	.L52
.L47:
	cmpq	$0, -72(%rbp)
	je	.L49
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L52
.L49:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_p8info
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8_PRIV_KEY_INFO@PLT
	movl	%eax, -4(%rbp)
	jmp	.L51
.L50:
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	free_asn1_data
.L51:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movl	-4(%rbp), %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	key_to_pki_pem_priv_bio, .-key_to_pki_pem_priv_bio
	.type	key_to_spki_der_pub_bio, @function
key_to_spki_der_pub_bio:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L54
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L57
.L54:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_pubkey
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L56
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_PUBKEY_bio@PLT
	movl	%eax, -4(%rbp)
.L56:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movl	-4(%rbp), %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	key_to_spki_der_pub_bio, .-key_to_spki_der_pub_bio
	.type	key_to_spki_pem_pub_bio, @function
key_to_spki_pem_pub_bio:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L59
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L63
.L59:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_pubkey
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L61
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509_PUBKEY@PLT
	movl	%eax, -4(%rbp)
	jmp	.L62
.L61:
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	free_asn1_data
.L62:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movl	-4(%rbp), %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	key_to_spki_pem_pub_bio, .-key_to_spki_pem_pub_bio
	.type	key_to_type_specific_der_bio, @function
key_to_type_specific_der_bio:
.LFB570:
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
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L65
	call	ERR_new@PLT
	leaq	__func__.113(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$383, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524345, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L65:
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$388, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	key_to_type_specific_der_bio, .-key_to_type_specific_der_bio
	.type	key_to_type_specific_pem_bio_cb, @function
key_to_type_specific_pem_bio_cb:
.LFB571:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	key_to_type_specific_pem_bio_cb, .-key_to_type_specific_pem_bio_cb
	.type	key_to_type_specific_pem_priv_bio, @function
key_to_type_specific_pem_priv_bio:
.LFB572:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	16(%rbp), %rax
	leaq	24(%rax), %rdi
	movq	-48(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	ossl_pw_pem_password@GOTPCREL(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	key_to_type_specific_pem_bio_cb
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	key_to_type_specific_pem_priv_bio, .-key_to_type_specific_pem_priv_bio
	.type	key_to_type_specific_pem_pub_bio, @function
key_to_type_specific_pem_pub_bio:
.LFB573:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_type_specific_pem_bio_cb
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	key_to_type_specific_pem_pub_bio, .-key_to_type_specific_pem_pub_bio
	.type	key_to_type_specific_pem_param_bio, @function
key_to_type_specific_pem_param_bio:
.LFB574:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_type_specific_pem_bio_cb
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	key_to_type_specific_pem_param_bio, .-key_to_type_specific_pem_param_bio
	.type	prepare_dh_params, @function
prepare_dh_params:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	call	ASN1_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.112(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$449, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L78
.L77:
	cmpl	$920, -28(%rbp)
	jne	.L79
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DHxparams@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	jmp	.L80
.L79:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DHparams@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
.L80:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L81
	call	ERR_new@PLT
	leaq	__func__.112(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$459, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L78
.L81:
	movq	-8(%rbp), %rax
	movl	$16, 4(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	$16, (%rax)
	movl	$1, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	prepare_dh_params, .-prepare_dh_params
	.type	dh_spki_pub_to_der, @function
dh_spki_pub_to_der:
.LFB576:
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
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_pub_key@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.111(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$477, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L85
	call	ERR_new@PLT
	leaq	__func__.111(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$481, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$160, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L85:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_INTEGER@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_clear_free@PLT
	movl	-20(%rbp), %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	dh_spki_pub_to_der, .-dh_spki_pub_to_der
	.type	dh_pki_priv_to_der, @function
dh_pki_priv_to_der:
.LFB577:
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
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_priv_key@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L87
	call	ERR_new@PLT
	leaq	__func__.110(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$498, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L88
.L87:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.110(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$502, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$160, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L88
.L89:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_INTEGER@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_clear_free@PLT
	movl	-20(%rbp), %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	dh_pki_priv_to_der, .-dh_pki_priv_to_der
	.type	dh_type_specific_params_to_der, @function
dh_type_specific_params_to_der:
.LFB578:
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
	movl	$4096, %esi
	movq	%rax, %rdi
	call	DH_test_flags@PLT
	testl	%eax, %eax
	je	.L91
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DHxparams@PLT
	jmp	.L92
.L91:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DHparams@PLT
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	dh_type_specific_params_to_der, .-dh_type_specific_params_to_der
	.type	dh_check_key_type, @function
dh_check_key_type:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	DH_test_flags@PLT
	testl	%eax, %eax
	je	.L94
	movl	$920, -4(%rbp)
	jmp	.L95
.L94:
	movl	$28, -4(%rbp)
.L95:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	dh_check_key_type, .-dh_check_key_type
	.type	encode_dsa_params, @function
encode_dsa_params:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	call	ASN1_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L98
	call	ERR_new@PLT
	leaq	__func__.109(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$553, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L99
.L98:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_DSAparams@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L100
	call	ERR_new@PLT
	leaq	__func__.109(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$560, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L99
.L100:
	movq	-48(%rbp), %rax
	movl	$16, (%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	encode_dsa_params, .-encode_dsa_params
	.type	prepare_dsa_params, @function
prepare_dsa_params:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_p@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_q@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_g@PLT
	movq	%rax, -24(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L102
	cmpq	$0, -8(%rbp)
	je	.L102
	cmpq	$0, -16(%rbp)
	je	.L102
	cmpq	$0, -24(%rbp)
	je	.L102
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	encode_dsa_params
	jmp	.L103
.L102:
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movl	$-1, (%rax)
	movl	$1, %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	prepare_dsa_params, .-prepare_dsa_params
	.type	dsa_spki_pub_to_der, @function
dsa_spki_pub_to_der:
.LFB582:
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
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_pub_key@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.108(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$592, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L106
.L105:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L107
	call	ERR_new@PLT
	leaq	__func__.108(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$596, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$160, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L106
.L107:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_INTEGER@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_clear_free@PLT
	movl	-20(%rbp), %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	dsa_spki_pub_to_der, .-dsa_spki_pub_to_der
	.type	dsa_pki_priv_to_der, @function
dsa_pki_priv_to_der:
.LFB583:
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
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_priv_key@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.107(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$613, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L109:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.107(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$617, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$160, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L111:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_INTEGER@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_clear_free@PLT
	movl	-20(%rbp), %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	dsa_pki_priv_to_der, .-dsa_pki_priv_to_der
	.type	prepare_ec_explicit_params, @function
prepare_ec_explicit_params:
.LFB584:
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
	call	ASN1_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L113
	call	ERR_new@PLT
	leaq	__func__.106(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$648, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L114
.L113:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECParameters@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L115
	call	ERR_new@PLT
	leaq	__func__.106(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$654, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L114
.L115:
	movq	-40(%rbp), %rax
	movl	$16, (%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	prepare_ec_explicit_params, .-prepare_ec_explicit_params
	.type	prepare_ec_params, @function
prepare_ec_params:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L117
	movl	$0, %eax
	jmp	.L118
.L117:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L119
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L119
	movl	$0, %eax
	jmp	.L118
.L119:
	cmpl	$0, -20(%rbp)
	je	.L120
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	andl	$1, %eax
	testl	%eax, %eax
	je	.L120
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_length@PLT
	testq	%rax, %rax
	jne	.L121
	call	ERR_new@PLT
	leaq	__func__.105(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$689, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$209, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movl	$0, %eax
	jmp	.L118
.L121:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movl	$6, (%rax)
	movl	$1, %eax
	jmp	.L118
.L120:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	prepare_ec_explicit_params
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	prepare_ec_params, .-prepare_ec_params
	.type	ec_spki_pub_to_der, @function
ec_spki_pub_to_der:
.LFB586:
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
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	testq	%rax, %rax
	jne	.L123
	call	ERR_new@PLT
	leaq	__func__.104(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$705, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2o_ECPublicKey@PLT
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	ec_spki_pub_to_der, .-ec_spki_pub_to_der
	.type	ec_pki_priv_to_der, @function
ec_pki_priv_to_der:
.LFB587:
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
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_enc_flags@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_enc_flags@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPrivateKey@PLT
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_enc_flags@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ec_pki_priv_to_der, .-ec_pki_priv_to_der
	.type	ecx_spki_pub_to_der, @function
ecx_spki_pub_to_der:
.LFB588:
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
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.103(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$768, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L129
.L128:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	17(%rdx), %rdi
	leaq	.LC0(%rip), %rdx
	movl	$772, %ecx
	movq	%rax, %rsi
	call	CRYPTO_memdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L130
	movl	$0, %eax
	jmp	.L129
.L130:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ecx_spki_pub_to_der, .-ecx_spki_pub_to_der
	.type	ecx_pki_priv_to_der, @function
ecx_pki_priv_to_der:
.LFB589:
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
	je	.L132
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L133
.L132:
	call	ERR_new@PLT
	leaq	__func__.102(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L136
.L133:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movl	%eax, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_OCTET_STRING@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L135
	call	ERR_new@PLT
	leaq	__func__.102(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$797, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L136
.L135:
	movl	-12(%rbp), %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ecx_pki_priv_to_der, .-ecx_pki_priv_to_der
	.type	prepare_rsa_params, @function
prepare_rsa_params:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%r8, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_pss_params_30@PLT
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	movq	-104(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	testl	%eax, %eax
	je	.L138
	cmpl	$4096, %eax
	je	.L139
	jmp	.L158
.L138:
	movq	-128(%rbp), %rax
	movl	$5, (%rax)
	movl	$1, %eax
	jmp	.L141
.L139:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	je	.L142
	movq	-128(%rbp), %rax
	movl	$-1, (%rax)
	movl	$1, %eax
	jmp	.L141
.L142:
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L143
.L155:
	cmpl	$0, -12(%rbp)
	je	.L144
	cmpl	$1, -12(%rbp)
	je	.L145
	jmp	.L146
.L144:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_init_null_der@PLT
	testl	%eax, %eax
	jne	.L159
	jmp	.L148
.L145:
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$865, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L149
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_der@PLT
	testl	%eax, %eax
	jne	.L160
.L149:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	jmp	.L148
.L159:
	nop
	jmp	.L146
.L160:
	nop
.L146:
	movq	-24(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_RSASSA_PSS_params@PLT
	testl	%eax, %eax
	je	.L151
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	je	.L151
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	jne	.L152
.L151:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	jmp	.L148
.L152:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L161
	addl	$1, -12(%rbp)
.L143:
	cmpl	$1, -12(%rbp)
	jle	.L155
	jmp	.L154
.L161:
	nop
.L154:
	call	ASN1_STRING_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L162
	movq	-128(%rbp), %rax
	movl	$16, (%rax)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L141
.L162:
	nop
.L148:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$898, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L141
.L158:
	movl	$0, %eax
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	prepare_rsa_params, .-prepare_rsa_params
	.type	rsa_check_key_type, @function
rsa_check_key_type:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	testl	%eax, %eax
	je	.L164
	cmpl	$4096, %eax
	je	.L165
	jmp	.L168
.L164:
	cmpl	$6, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L167
.L165:
	cmpl	$912, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L167
.L168:
	movl	$0, %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	rsa_check_key_type, .-rsa_check_key_type
	.type	key2any_newctx, @function
key2any_newctx:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$945, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L170
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
.L170:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	key2any_newctx, .-key2any_newctx
	.type	key2any_freectx, @function
key2any_freectx:
.LFB593:
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
	addq	$24, %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_data@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$961, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	key2any_freectx, .-key2any_freectx
	.type	key2any_settable_ctx_params, @function
key2any_settable_ctx_params:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	settables.101(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	key2any_settable_ctx_params, .-key2any_settable_ctx_params
	.section	.rodata
.LC1:
	.string	"cipher"
.LC2:
	.string	"properties"
.LC3:
	.string	"save-parameters"
	.text
	.type	key2any_set_ctx_params, @function
key2any_set_ctx_params:
.LFB595:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L176
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	jne	.L177
	movl	$0, %eax
	jmp	.L181
.L177:
	cmpq	$0, -32(%rbp)
	je	.L179
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	jne	.L179
	movl	$0, %eax
	jmp	.L181
.L179:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L176
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L176
	movl	$0, %eax
	jmp	.L181
.L176:
	cmpq	$0, -40(%rbp)
	je	.L182
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L182
	movl	$0, %eax
	jmp	.L181
.L182:
	movl	$1, %eax
.L181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	key2any_set_ctx_params, .-key2any_set_ctx_params
	.type	key2any_check_selection, @function
key2any_check_selection:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	$1, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	$132, -20(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L184
	movl	$1, %eax
	jmp	.L189
.L184:
	movq	$0, -8(%rbp)
	jmp	.L186
.L188:
	movq	-8(%rbp), %rax
	movl	-28(%rbp,%rax,4), %eax
	andl	-36(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-28(%rbp,%rax,4), %eax
	andl	-40(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L187
	movl	-16(%rbp), %eax
	jmp	.L189
.L187:
	addq	$1, -8(%rbp)
.L186:
	cmpq	$2, -8(%rbp)
	jbe	.L188
	movl	$0, %eax
.L189:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	key2any_check_selection, .-key2any_check_selection
	.type	key2any_encode, @function
key2any_encode:
.LFB597:
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
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L191
	call	ERR_new@PLT
	leaq	__func__.100(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1055, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L192
.L191:
	cmpq	$0, 16(%rbp)
	je	.L193
	cmpq	$0, -64(%rbp)
	je	.L194
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L193
.L194:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L195
	cmpq	$0, 24(%rbp)
	je	.L196
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_pw_set_ossl_passphrase_cb@PLT
	testl	%eax, %eax
	je	.L195
.L196:
	movq	48(%rbp), %r8
	movq	40(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movq	16(%rbp), %r10
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L195:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L192
.L193:
	call	ERR_new@PLT
	leaq	__func__.100(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1068, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L192:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	key2any_encode, .-key2any_encode
	.type	rsa_to_type_specific_keypair_der_import_object, @function
rsa_to_type_specific_keypair_der_import_object:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	rsa_to_type_specific_keypair_der_import_object, .-rsa_to_type_specific_keypair_der_import_object
	.type	rsa_to_type_specific_keypair_der_free_object, @function
rsa_to_type_specific_keypair_der_free_object:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	rsa_to_type_specific_keypair_der_free_object, .-rsa_to_type_specific_keypair_der_free_object
	.type	rsa_to_type_specific_keypair_der_does_selection, @function
rsa_to_type_specific_keypair_der_does_selection:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	rsa_to_type_specific_keypair_der_does_selection, .-rsa_to_type_specific_keypair_der_does_selection
	.section	.rodata
.LC4:
	.string	"RSA PRIVATE KEY"
.LC5:
	.string	"RSA PUBLIC KEY"
	.text
	.type	rsa_to_type_specific_keypair_der_encode, @function
rsa_to_type_specific_keypair_der_encode:
.LFB601:
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
	cmpq	$0, -32(%rbp)
	je	.L204
	call	ERR_new@PLT
	leaq	__func__.99(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1314, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L205
.L204:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L206
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L205
.L206:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L207
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC5(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L205
.L207:
	call	ERR_new@PLT
	leaq	__func__.99(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1314, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	rsa_to_type_specific_keypair_der_encode, .-rsa_to_type_specific_keypair_der_encode
	.globl	ossl_rsa_to_type_specific_keypair_der_encoder_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_rsa_to_type_specific_keypair_der_encoder_functions, @object
	.size	ossl_rsa_to_type_specific_keypair_der_encoder_functions, 144
ossl_rsa_to_type_specific_keypair_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_type_specific_keypair_der_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_type_specific_keypair_der_import_object
	.long	21
	.zero	4
	.quad	rsa_to_type_specific_keypair_der_free_object
	.long	11
	.zero	4
	.quad	rsa_to_type_specific_keypair_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_type_specific_params_der_import_object, @function
dh_to_type_specific_params_der_import_object:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	dh_to_type_specific_params_der_import_object, .-dh_to_type_specific_params_der_import_object
	.type	dh_to_type_specific_params_der_free_object, @function
dh_to_type_specific_params_der_free_object:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	dh_to_type_specific_params_der_free_object, .-dh_to_type_specific_params_der_free_object
	.type	dh_to_type_specific_params_der_does_selection, @function
dh_to_type_specific_params_der_does_selection:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	dh_to_type_specific_params_der_does_selection, .-dh_to_type_specific_params_der_does_selection
	.section	.rodata
.LC6:
	.string	"DH PARAMETERS"
	.text
	.type	dh_to_type_specific_params_der_encode, @function
dh_to_type_specific_params_der_encode:
.LFB605:
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
	cmpq	$0, -32(%rbp)
	je	.L214
	call	ERR_new@PLT
	leaq	__func__.98(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L215
.L214:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L216
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC6(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L215
.L216:
	call	ERR_new@PLT
	leaq	__func__.98(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	dh_to_type_specific_params_der_encode, .-dh_to_type_specific_params_der_encode
	.globl	ossl_dh_to_type_specific_params_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_type_specific_params_der_encoder_functions, @object
	.size	ossl_dh_to_type_specific_params_der_encoder_functions, 144
ossl_dh_to_type_specific_params_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_type_specific_params_der_does_selection
	.long	20
	.zero	4
	.quad	dh_to_type_specific_params_der_import_object
	.long	21
	.zero	4
	.quad	dh_to_type_specific_params_der_free_object
	.long	11
	.zero	4
	.quad	dh_to_type_specific_params_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_type_specific_params_der_import_object, @function
dhx_to_type_specific_params_der_import_object:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	dhx_to_type_specific_params_der_import_object, .-dhx_to_type_specific_params_der_import_object
	.type	dhx_to_type_specific_params_der_free_object, @function
dhx_to_type_specific_params_der_free_object:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	dhx_to_type_specific_params_der_free_object, .-dhx_to_type_specific_params_der_free_object
	.type	dhx_to_type_specific_params_der_does_selection, @function
dhx_to_type_specific_params_der_does_selection:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	dhx_to_type_specific_params_der_does_selection, .-dhx_to_type_specific_params_der_does_selection
	.section	.rodata
.LC7:
	.string	"X9.42 DH PARAMETERS"
	.text
	.type	dhx_to_type_specific_params_der_encode, @function
dhx_to_type_specific_params_der_encode:
.LFB609:
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
	cmpq	$0, -32(%rbp)
	je	.L223
	call	ERR_new@PLT
	leaq	__func__.97(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1317, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L224
.L223:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L225
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC7(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L224
.L225:
	call	ERR_new@PLT
	leaq	__func__.97(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1317, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	dhx_to_type_specific_params_der_encode, .-dhx_to_type_specific_params_der_encode
	.globl	ossl_dhx_to_type_specific_params_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_type_specific_params_der_encoder_functions, @object
	.size	ossl_dhx_to_type_specific_params_der_encoder_functions, 144
ossl_dhx_to_type_specific_params_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_type_specific_params_der_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_type_specific_params_der_import_object
	.long	21
	.zero	4
	.quad	dhx_to_type_specific_params_der_free_object
	.long	11
	.zero	4
	.quad	dhx_to_type_specific_params_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa_to_type_specific_der_import_object, @function
dsa_to_type_specific_der_import_object:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	dsa_to_type_specific_der_import_object, .-dsa_to_type_specific_der_import_object
	.type	dsa_to_type_specific_der_free_object, @function
dsa_to_type_specific_der_free_object:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	dsa_to_type_specific_der_free_object, .-dsa_to_type_specific_der_free_object
	.type	dsa_to_type_specific_der_does_selection, @function
dsa_to_type_specific_der_does_selection:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$135, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	dsa_to_type_specific_der_does_selection, .-dsa_to_type_specific_der_does_selection
	.section	.rodata
.LC8:
	.string	"DSA PRIVATE KEY"
.LC9:
	.string	"DSA PUBLIC KEY"
.LC10:
	.string	"DSA PARAMETERS"
	.text
	.type	dsa_to_type_specific_der_encode, @function
dsa_to_type_specific_der_encode:
.LFB613:
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
	cmpq	$0, -32(%rbp)
	je	.L232
	call	ERR_new@PLT
	leaq	__func__.96(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1320, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L233
.L232:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L234
	leaq	.LC8(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L233
.L234:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L235
	leaq	.LC9(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L233
.L235:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L236
	leaq	.LC10(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAparams@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L233
.L236:
	call	ERR_new@PLT
	leaq	__func__.96(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1320, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L233:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	dsa_to_type_specific_der_encode, .-dsa_to_type_specific_der_encode
	.globl	ossl_dsa_to_type_specific_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_type_specific_der_encoder_functions, @object
	.size	ossl_dsa_to_type_specific_der_encoder_functions, 144
ossl_dsa_to_type_specific_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dsa_to_type_specific_der_does_selection
	.long	20
	.zero	4
	.quad	dsa_to_type_specific_der_import_object
	.long	21
	.zero	4
	.quad	dsa_to_type_specific_der_free_object
	.long	11
	.zero	4
	.quad	dsa_to_type_specific_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_type_specific_no_pub_der_import_object, @function
ec_to_type_specific_no_pub_der_import_object:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	ec_to_type_specific_no_pub_der_import_object, .-ec_to_type_specific_no_pub_der_import_object
	.type	ec_to_type_specific_no_pub_der_free_object, @function
ec_to_type_specific_no_pub_der_free_object:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	ec_to_type_specific_no_pub_der_free_object, .-ec_to_type_specific_no_pub_der_free_object
	.type	ec_to_type_specific_no_pub_der_does_selection, @function
ec_to_type_specific_no_pub_der_does_selection:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$133, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	ec_to_type_specific_no_pub_der_does_selection, .-ec_to_type_specific_no_pub_der_does_selection
	.section	.rodata
.LC11:
	.string	"EC PRIVATE KEY"
.LC12:
	.string	"EC PARAMETERS"
	.text
	.type	ec_to_type_specific_no_pub_der_encode, @function
ec_to_type_specific_no_pub_der_encode:
.LFB617:
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
	cmpq	$0, -32(%rbp)
	je	.L243
	call	ERR_new@PLT
	leaq	__func__.95(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L244
.L243:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L245
	leaq	.LC11(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L244
.L245:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L246
	leaq	.LC12(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECParameters@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L244
.L246:
	call	ERR_new@PLT
	leaq	__func__.95(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	ec_to_type_specific_no_pub_der_encode, .-ec_to_type_specific_no_pub_der_encode
	.globl	ossl_ec_to_type_specific_no_pub_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_type_specific_no_pub_der_encoder_functions, @object
	.size	ossl_ec_to_type_specific_no_pub_der_encoder_functions, 144
ossl_ec_to_type_specific_no_pub_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_type_specific_no_pub_der_does_selection
	.long	20
	.zero	4
	.quad	ec_to_type_specific_no_pub_der_import_object
	.long	21
	.zero	4
	.quad	ec_to_type_specific_no_pub_der_free_object
	.long	11
	.zero	4
	.quad	ec_to_type_specific_no_pub_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm2_to_type_specific_no_pub_der_import_object, @function
sm2_to_type_specific_no_pub_der_import_object:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	sm2_to_type_specific_no_pub_der_import_object, .-sm2_to_type_specific_no_pub_der_import_object
	.type	sm2_to_type_specific_no_pub_der_free_object, @function
sm2_to_type_specific_no_pub_der_free_object:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	sm2_to_type_specific_no_pub_der_free_object, .-sm2_to_type_specific_no_pub_der_free_object
	.type	sm2_to_type_specific_no_pub_der_does_selection, @function
sm2_to_type_specific_no_pub_der_does_selection:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$133, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	sm2_to_type_specific_no_pub_der_does_selection, .-sm2_to_type_specific_no_pub_der_does_selection
	.section	.rodata
.LC13:
	.string	"SM2 PRIVATE KEY"
.LC14:
	.string	"SM2 PARAMETERS"
	.text
	.type	sm2_to_type_specific_no_pub_der_encode, @function
sm2_to_type_specific_no_pub_der_encode:
.LFB621:
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
	cmpq	$0, -32(%rbp)
	je	.L253
	call	ERR_new@PLT
	leaq	__func__.94(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1325, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L253:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L255
	leaq	.LC13(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L254
.L255:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L256
	leaq	.LC14(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECParameters@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L254
.L256:
	call	ERR_new@PLT
	leaq	__func__.94(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1325, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	sm2_to_type_specific_no_pub_der_encode, .-sm2_to_type_specific_no_pub_der_encode
	.globl	ossl_sm2_to_type_specific_no_pub_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_type_specific_no_pub_der_encoder_functions, @object
	.size	ossl_sm2_to_type_specific_no_pub_der_encoder_functions, 144
ossl_sm2_to_type_specific_no_pub_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	sm2_to_type_specific_no_pub_der_does_selection
	.long	20
	.zero	4
	.quad	sm2_to_type_specific_no_pub_der_import_object
	.long	21
	.zero	4
	.quad	sm2_to_type_specific_no_pub_der_free_object
	.long	11
	.zero	4
	.quad	sm2_to_type_specific_no_pub_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_type_specific_keypair_pem_import_object, @function
rsa_to_type_specific_keypair_pem_import_object:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	rsa_to_type_specific_keypair_pem_import_object, .-rsa_to_type_specific_keypair_pem_import_object
	.type	rsa_to_type_specific_keypair_pem_free_object, @function
rsa_to_type_specific_keypair_pem_free_object:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	rsa_to_type_specific_keypair_pem_free_object, .-rsa_to_type_specific_keypair_pem_free_object
	.type	rsa_to_type_specific_keypair_pem_does_selection, @function
rsa_to_type_specific_keypair_pem_does_selection:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	rsa_to_type_specific_keypair_pem_does_selection, .-rsa_to_type_specific_keypair_pem_does_selection
	.type	rsa_to_type_specific_keypair_pem_encode, @function
rsa_to_type_specific_keypair_pem_encode:
.LFB625:
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
	cmpq	$0, -32(%rbp)
	je	.L263
	call	ERR_new@PLT
	leaq	__func__.93(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L264
.L263:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L265
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L264
.L265:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L266
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC5(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L264
.L266:
	call	ERR_new@PLT
	leaq	__func__.93(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	rsa_to_type_specific_keypair_pem_encode, .-rsa_to_type_specific_keypair_pem_encode
	.globl	ossl_rsa_to_type_specific_keypair_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_type_specific_keypair_pem_encoder_functions, @object
	.size	ossl_rsa_to_type_specific_keypair_pem_encoder_functions, 144
ossl_rsa_to_type_specific_keypair_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_type_specific_keypair_pem_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_type_specific_keypair_pem_import_object
	.long	21
	.zero	4
	.quad	rsa_to_type_specific_keypair_pem_free_object
	.long	11
	.zero	4
	.quad	rsa_to_type_specific_keypair_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_type_specific_params_pem_import_object, @function
dh_to_type_specific_params_pem_import_object:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	dh_to_type_specific_params_pem_import_object, .-dh_to_type_specific_params_pem_import_object
	.type	dh_to_type_specific_params_pem_free_object, @function
dh_to_type_specific_params_pem_free_object:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	dh_to_type_specific_params_pem_free_object, .-dh_to_type_specific_params_pem_free_object
	.type	dh_to_type_specific_params_pem_does_selection, @function
dh_to_type_specific_params_pem_does_selection:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	dh_to_type_specific_params_pem_does_selection, .-dh_to_type_specific_params_pem_does_selection
	.type	dh_to_type_specific_params_pem_encode, @function
dh_to_type_specific_params_pem_encode:
.LFB629:
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
	cmpq	$0, -32(%rbp)
	je	.L273
	call	ERR_new@PLT
	leaq	__func__.92(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1335, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L274
.L273:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L275
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC6(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L274
.L275:
	call	ERR_new@PLT
	leaq	__func__.92(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1335, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L274:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	dh_to_type_specific_params_pem_encode, .-dh_to_type_specific_params_pem_encode
	.globl	ossl_dh_to_type_specific_params_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_type_specific_params_pem_encoder_functions, @object
	.size	ossl_dh_to_type_specific_params_pem_encoder_functions, 144
ossl_dh_to_type_specific_params_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_type_specific_params_pem_does_selection
	.long	20
	.zero	4
	.quad	dh_to_type_specific_params_pem_import_object
	.long	21
	.zero	4
	.quad	dh_to_type_specific_params_pem_free_object
	.long	11
	.zero	4
	.quad	dh_to_type_specific_params_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_type_specific_params_pem_import_object, @function
dhx_to_type_specific_params_pem_import_object:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	dhx_to_type_specific_params_pem_import_object, .-dhx_to_type_specific_params_pem_import_object
	.type	dhx_to_type_specific_params_pem_free_object, @function
dhx_to_type_specific_params_pem_free_object:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	dhx_to_type_specific_params_pem_free_object, .-dhx_to_type_specific_params_pem_free_object
	.type	dhx_to_type_specific_params_pem_does_selection, @function
dhx_to_type_specific_params_pem_does_selection:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	dhx_to_type_specific_params_pem_does_selection, .-dhx_to_type_specific_params_pem_does_selection
	.type	dhx_to_type_specific_params_pem_encode, @function
dhx_to_type_specific_params_pem_encode:
.LFB633:
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
	cmpq	$0, -32(%rbp)
	je	.L282
	call	ERR_new@PLT
	leaq	__func__.91(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L283
.L282:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L284
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC7(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L283
.L284:
	call	ERR_new@PLT
	leaq	__func__.91(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	dhx_to_type_specific_params_pem_encode, .-dhx_to_type_specific_params_pem_encode
	.globl	ossl_dhx_to_type_specific_params_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_type_specific_params_pem_encoder_functions, @object
	.size	ossl_dhx_to_type_specific_params_pem_encoder_functions, 144
ossl_dhx_to_type_specific_params_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_type_specific_params_pem_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_type_specific_params_pem_import_object
	.long	21
	.zero	4
	.quad	dhx_to_type_specific_params_pem_free_object
	.long	11
	.zero	4
	.quad	dhx_to_type_specific_params_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa_to_type_specific_pem_import_object, @function
dsa_to_type_specific_pem_import_object:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	dsa_to_type_specific_pem_import_object, .-dsa_to_type_specific_pem_import_object
	.type	dsa_to_type_specific_pem_free_object, @function
dsa_to_type_specific_pem_free_object:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	dsa_to_type_specific_pem_free_object, .-dsa_to_type_specific_pem_free_object
	.type	dsa_to_type_specific_pem_does_selection, @function
dsa_to_type_specific_pem_does_selection:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$135, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	dsa_to_type_specific_pem_does_selection, .-dsa_to_type_specific_pem_does_selection
	.type	dsa_to_type_specific_pem_encode, @function
dsa_to_type_specific_pem_encode:
.LFB637:
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
	cmpq	$0, -32(%rbp)
	je	.L291
	call	ERR_new@PLT
	leaq	__func__.90(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L292
.L291:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L293
	leaq	.LC8(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L292
.L293:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L294
	leaq	.LC9(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L292
.L294:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L295
	leaq	.LC10(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAparams@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L292
.L295:
	call	ERR_new@PLT
	leaq	__func__.90(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L292:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	dsa_to_type_specific_pem_encode, .-dsa_to_type_specific_pem_encode
	.globl	ossl_dsa_to_type_specific_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_type_specific_pem_encoder_functions, @object
	.size	ossl_dsa_to_type_specific_pem_encoder_functions, 144
ossl_dsa_to_type_specific_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dsa_to_type_specific_pem_does_selection
	.long	20
	.zero	4
	.quad	dsa_to_type_specific_pem_import_object
	.long	21
	.zero	4
	.quad	dsa_to_type_specific_pem_free_object
	.long	11
	.zero	4
	.quad	dsa_to_type_specific_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_type_specific_no_pub_pem_import_object, @function
ec_to_type_specific_no_pub_pem_import_object:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	ec_to_type_specific_no_pub_pem_import_object, .-ec_to_type_specific_no_pub_pem_import_object
	.type	ec_to_type_specific_no_pub_pem_free_object, @function
ec_to_type_specific_no_pub_pem_free_object:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ec_to_type_specific_no_pub_pem_free_object, .-ec_to_type_specific_no_pub_pem_free_object
	.type	ec_to_type_specific_no_pub_pem_does_selection, @function
ec_to_type_specific_no_pub_pem_does_selection:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$133, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ec_to_type_specific_no_pub_pem_does_selection, .-ec_to_type_specific_no_pub_pem_does_selection
	.type	ec_to_type_specific_no_pub_pem_encode, @function
ec_to_type_specific_no_pub_pem_encode:
.LFB641:
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
	cmpq	$0, -32(%rbp)
	je	.L302
	call	ERR_new@PLT
	leaq	__func__.89(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1342, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L303
.L302:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L304
	leaq	.LC11(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L303
.L304:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L305
	leaq	.LC12(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECParameters@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L303
.L305:
	call	ERR_new@PLT
	leaq	__func__.89(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1342, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L303:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ec_to_type_specific_no_pub_pem_encode, .-ec_to_type_specific_no_pub_pem_encode
	.globl	ossl_ec_to_type_specific_no_pub_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_type_specific_no_pub_pem_encoder_functions, @object
	.size	ossl_ec_to_type_specific_no_pub_pem_encoder_functions, 144
ossl_ec_to_type_specific_no_pub_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_type_specific_no_pub_pem_does_selection
	.long	20
	.zero	4
	.quad	ec_to_type_specific_no_pub_pem_import_object
	.long	21
	.zero	4
	.quad	ec_to_type_specific_no_pub_pem_free_object
	.long	11
	.zero	4
	.quad	ec_to_type_specific_no_pub_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm2_to_type_specific_no_pub_pem_import_object, @function
sm2_to_type_specific_no_pub_pem_import_object:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	sm2_to_type_specific_no_pub_pem_import_object, .-sm2_to_type_specific_no_pub_pem_import_object
	.type	sm2_to_type_specific_no_pub_pem_free_object, @function
sm2_to_type_specific_no_pub_pem_free_object:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	sm2_to_type_specific_no_pub_pem_free_object, .-sm2_to_type_specific_no_pub_pem_free_object
	.type	sm2_to_type_specific_no_pub_pem_does_selection, @function
sm2_to_type_specific_no_pub_pem_does_selection:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$133, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	sm2_to_type_specific_no_pub_pem_does_selection, .-sm2_to_type_specific_no_pub_pem_does_selection
	.type	sm2_to_type_specific_no_pub_pem_encode, @function
sm2_to_type_specific_no_pub_pem_encode:
.LFB645:
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
	cmpq	$0, -32(%rbp)
	je	.L312
	call	ERR_new@PLT
	leaq	__func__.88(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1344, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L313
.L312:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L314
	leaq	.LC13(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L313
.L314:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L315
	leaq	.LC14(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECParameters@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L313
.L315:
	call	ERR_new@PLT
	leaq	__func__.88(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1344, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L313:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	sm2_to_type_specific_no_pub_pem_encode, .-sm2_to_type_specific_no_pub_pem_encode
	.globl	ossl_sm2_to_type_specific_no_pub_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_type_specific_no_pub_pem_encoder_functions, @object
	.size	ossl_sm2_to_type_specific_no_pub_pem_encoder_functions, 144
ossl_sm2_to_type_specific_no_pub_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	sm2_to_type_specific_no_pub_pem_does_selection
	.long	20
	.zero	4
	.quad	sm2_to_type_specific_no_pub_pem_import_object
	.long	21
	.zero	4
	.quad	sm2_to_type_specific_no_pub_pem_free_object
	.long	11
	.zero	4
	.quad	sm2_to_type_specific_no_pub_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_EncryptedPrivateKeyInfo_der_import_object, @function
rsa_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	rsa_to_EncryptedPrivateKeyInfo_der_import_object, .-rsa_to_EncryptedPrivateKeyInfo_der_import_object
	.type	rsa_to_EncryptedPrivateKeyInfo_der_free_object, @function
rsa_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	rsa_to_EncryptedPrivateKeyInfo_der_free_object, .-rsa_to_EncryptedPrivateKeyInfo_der_free_object
	.type	rsa_to_EncryptedPrivateKeyInfo_der_does_selection, @function
rsa_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	rsa_to_EncryptedPrivateKeyInfo_der_does_selection, .-rsa_to_EncryptedPrivateKeyInfo_der_does_selection
	.type	rsa_to_EncryptedPrivateKeyInfo_der_encode, @function
rsa_to_EncryptedPrivateKeyInfo_der_encode:
.LFB649:
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
	cmpq	$0, -32(%rbp)
	je	.L322
	call	ERR_new@PLT
	leaq	__func__.87(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1356, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L323
.L322:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L324
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L323
.L324:
	call	ERR_new@PLT
	leaq	__func__.87(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1356, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L323:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	rsa_to_EncryptedPrivateKeyInfo_der_encode, .-rsa_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_rsa_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_rsa_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_rsa_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	rsa_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	rsa_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_EncryptedPrivateKeyInfo_pem_import_object, @function
rsa_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	rsa_to_EncryptedPrivateKeyInfo_pem_import_object, .-rsa_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	rsa_to_EncryptedPrivateKeyInfo_pem_free_object, @function
rsa_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	rsa_to_EncryptedPrivateKeyInfo_pem_free_object, .-rsa_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	rsa_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
rsa_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	rsa_to_EncryptedPrivateKeyInfo_pem_does_selection, .-rsa_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	rsa_to_EncryptedPrivateKeyInfo_pem_encode, @function
rsa_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB653:
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
	cmpq	$0, -32(%rbp)
	je	.L331
	call	ERR_new@PLT
	leaq	__func__.86(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L332
.L331:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L333
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L332
.L333:
	call	ERR_new@PLT
	leaq	__func__.86(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L332:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	rsa_to_EncryptedPrivateKeyInfo_pem_encode, .-rsa_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_rsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_rsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_rsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	rsa_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	rsa_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_PrivateKeyInfo_der_import_object, @function
rsa_to_PrivateKeyInfo_der_import_object:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	rsa_to_PrivateKeyInfo_der_import_object, .-rsa_to_PrivateKeyInfo_der_import_object
	.type	rsa_to_PrivateKeyInfo_der_free_object, @function
rsa_to_PrivateKeyInfo_der_free_object:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	rsa_to_PrivateKeyInfo_der_free_object, .-rsa_to_PrivateKeyInfo_der_free_object
	.type	rsa_to_PrivateKeyInfo_der_does_selection, @function
rsa_to_PrivateKeyInfo_der_does_selection:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	rsa_to_PrivateKeyInfo_der_does_selection, .-rsa_to_PrivateKeyInfo_der_does_selection
	.type	rsa_to_PrivateKeyInfo_der_encode, @function
rsa_to_PrivateKeyInfo_der_encode:
.LFB657:
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
	cmpq	$0, -32(%rbp)
	je	.L340
	call	ERR_new@PLT
	leaq	__func__.85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1358, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L341
.L340:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L342
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L341
.L342:
	call	ERR_new@PLT
	leaq	__func__.85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1358, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L341:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	rsa_to_PrivateKeyInfo_der_encode, .-rsa_to_PrivateKeyInfo_der_encode
	.globl	ossl_rsa_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_rsa_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_rsa_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	rsa_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	rsa_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_PrivateKeyInfo_pem_import_object, @function
rsa_to_PrivateKeyInfo_pem_import_object:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	rsa_to_PrivateKeyInfo_pem_import_object, .-rsa_to_PrivateKeyInfo_pem_import_object
	.type	rsa_to_PrivateKeyInfo_pem_free_object, @function
rsa_to_PrivateKeyInfo_pem_free_object:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	rsa_to_PrivateKeyInfo_pem_free_object, .-rsa_to_PrivateKeyInfo_pem_free_object
	.type	rsa_to_PrivateKeyInfo_pem_does_selection, @function
rsa_to_PrivateKeyInfo_pem_does_selection:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	rsa_to_PrivateKeyInfo_pem_does_selection, .-rsa_to_PrivateKeyInfo_pem_does_selection
	.type	rsa_to_PrivateKeyInfo_pem_encode, @function
rsa_to_PrivateKeyInfo_pem_encode:
.LFB661:
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
	cmpq	$0, -32(%rbp)
	je	.L349
	call	ERR_new@PLT
	leaq	__func__.84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1359, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L350
.L349:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L351
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L350
.L351:
	call	ERR_new@PLT
	leaq	__func__.84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1359, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L350:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	rsa_to_PrivateKeyInfo_pem_encode, .-rsa_to_PrivateKeyInfo_pem_encode
	.globl	ossl_rsa_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_rsa_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_rsa_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	rsa_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	rsa_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_SubjectPublicKeyInfo_der_import_object, @function
rsa_to_SubjectPublicKeyInfo_der_import_object:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	rsa_to_SubjectPublicKeyInfo_der_import_object, .-rsa_to_SubjectPublicKeyInfo_der_import_object
	.type	rsa_to_SubjectPublicKeyInfo_der_free_object, @function
rsa_to_SubjectPublicKeyInfo_der_free_object:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	rsa_to_SubjectPublicKeyInfo_der_free_object, .-rsa_to_SubjectPublicKeyInfo_der_free_object
	.type	rsa_to_SubjectPublicKeyInfo_der_does_selection, @function
rsa_to_SubjectPublicKeyInfo_der_does_selection:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	rsa_to_SubjectPublicKeyInfo_der_does_selection, .-rsa_to_SubjectPublicKeyInfo_der_does_selection
	.type	rsa_to_SubjectPublicKeyInfo_der_encode, @function
rsa_to_SubjectPublicKeyInfo_der_encode:
.LFB665:
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
	cmpq	$0, -32(%rbp)
	je	.L358
	call	ERR_new@PLT
	leaq	__func__.83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1360, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L359
.L358:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L360
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC5(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L359
.L360:
	call	ERR_new@PLT
	leaq	__func__.83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1360, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L359:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	rsa_to_SubjectPublicKeyInfo_der_encode, .-rsa_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_rsa_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_rsa_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_rsa_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	rsa_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	rsa_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_SubjectPublicKeyInfo_pem_import_object, @function
rsa_to_SubjectPublicKeyInfo_pem_import_object:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	rsa_to_SubjectPublicKeyInfo_pem_import_object, .-rsa_to_SubjectPublicKeyInfo_pem_import_object
	.type	rsa_to_SubjectPublicKeyInfo_pem_free_object, @function
rsa_to_SubjectPublicKeyInfo_pem_free_object:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	rsa_to_SubjectPublicKeyInfo_pem_free_object, .-rsa_to_SubjectPublicKeyInfo_pem_free_object
	.type	rsa_to_SubjectPublicKeyInfo_pem_does_selection, @function
rsa_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	rsa_to_SubjectPublicKeyInfo_pem_does_selection, .-rsa_to_SubjectPublicKeyInfo_pem_does_selection
	.type	rsa_to_SubjectPublicKeyInfo_pem_encode, @function
rsa_to_SubjectPublicKeyInfo_pem_encode:
.LFB669:
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
	cmpq	$0, -32(%rbp)
	je	.L367
	call	ERR_new@PLT
	leaq	__func__.82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1361, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L368
.L367:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L369
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC5(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L368
.L369:
	call	ERR_new@PLT
	leaq	__func__.82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1361, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L368:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	rsa_to_SubjectPublicKeyInfo_pem_encode, .-rsa_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_rsa_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_rsa_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_rsa_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	rsa_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	rsa_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsapss_to_EncryptedPrivateKeyInfo_der_import_object, @function
rsapss_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	rsapss_to_EncryptedPrivateKeyInfo_der_import_object, .-rsapss_to_EncryptedPrivateKeyInfo_der_import_object
	.type	rsapss_to_EncryptedPrivateKeyInfo_der_free_object, @function
rsapss_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	rsapss_to_EncryptedPrivateKeyInfo_der_free_object, .-rsapss_to_EncryptedPrivateKeyInfo_der_free_object
	.type	rsapss_to_EncryptedPrivateKeyInfo_der_does_selection, @function
rsapss_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	rsapss_to_EncryptedPrivateKeyInfo_der_does_selection, .-rsapss_to_EncryptedPrivateKeyInfo_der_does_selection
	.section	.rodata
.LC15:
	.string	"RSA-PSS PRIVATE KEY"
	.text
	.type	rsapss_to_EncryptedPrivateKeyInfo_der_encode, @function
rsapss_to_EncryptedPrivateKeyInfo_der_encode:
.LFB673:
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
	cmpq	$0, -32(%rbp)
	je	.L376
	call	ERR_new@PLT
	leaq	__func__.81(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1362, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L377
.L376:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L378
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC15(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L377
.L378:
	call	ERR_new@PLT
	leaq	__func__.81(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1362, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L377:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	rsapss_to_EncryptedPrivateKeyInfo_der_encode, .-rsapss_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_rsapss_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsapss_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_rsapss_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_rsapss_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsapss_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	rsapss_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	rsapss_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	rsapss_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsapss_to_EncryptedPrivateKeyInfo_pem_import_object, @function
rsapss_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	rsapss_to_EncryptedPrivateKeyInfo_pem_import_object, .-rsapss_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	rsapss_to_EncryptedPrivateKeyInfo_pem_free_object, @function
rsapss_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	rsapss_to_EncryptedPrivateKeyInfo_pem_free_object, .-rsapss_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	rsapss_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
rsapss_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	rsapss_to_EncryptedPrivateKeyInfo_pem_does_selection, .-rsapss_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	rsapss_to_EncryptedPrivateKeyInfo_pem_encode, @function
rsapss_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB677:
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
	cmpq	$0, -32(%rbp)
	je	.L385
	call	ERR_new@PLT
	leaq	__func__.80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1363, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L386
.L385:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L387
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC15(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L386
.L387:
	call	ERR_new@PLT
	leaq	__func__.80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1363, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L386:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	rsapss_to_EncryptedPrivateKeyInfo_pem_encode, .-rsapss_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_rsapss_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsapss_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_rsapss_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_rsapss_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsapss_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	rsapss_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	rsapss_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	rsapss_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsapss_to_PrivateKeyInfo_der_import_object, @function
rsapss_to_PrivateKeyInfo_der_import_object:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	rsapss_to_PrivateKeyInfo_der_import_object, .-rsapss_to_PrivateKeyInfo_der_import_object
	.type	rsapss_to_PrivateKeyInfo_der_free_object, @function
rsapss_to_PrivateKeyInfo_der_free_object:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	rsapss_to_PrivateKeyInfo_der_free_object, .-rsapss_to_PrivateKeyInfo_der_free_object
	.type	rsapss_to_PrivateKeyInfo_der_does_selection, @function
rsapss_to_PrivateKeyInfo_der_does_selection:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	rsapss_to_PrivateKeyInfo_der_does_selection, .-rsapss_to_PrivateKeyInfo_der_does_selection
	.type	rsapss_to_PrivateKeyInfo_der_encode, @function
rsapss_to_PrivateKeyInfo_der_encode:
.LFB681:
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
	cmpq	$0, -32(%rbp)
	je	.L394
	call	ERR_new@PLT
	leaq	__func__.79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1364, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L395
.L394:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L396
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC15(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L395
.L396:
	call	ERR_new@PLT
	leaq	__func__.79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1364, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L395:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	rsapss_to_PrivateKeyInfo_der_encode, .-rsapss_to_PrivateKeyInfo_der_encode
	.globl	ossl_rsapss_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsapss_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_rsapss_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_rsapss_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsapss_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	rsapss_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	rsapss_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	rsapss_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsapss_to_PrivateKeyInfo_pem_import_object, @function
rsapss_to_PrivateKeyInfo_pem_import_object:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	rsapss_to_PrivateKeyInfo_pem_import_object, .-rsapss_to_PrivateKeyInfo_pem_import_object
	.type	rsapss_to_PrivateKeyInfo_pem_free_object, @function
rsapss_to_PrivateKeyInfo_pem_free_object:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	rsapss_to_PrivateKeyInfo_pem_free_object, .-rsapss_to_PrivateKeyInfo_pem_free_object
	.type	rsapss_to_PrivateKeyInfo_pem_does_selection, @function
rsapss_to_PrivateKeyInfo_pem_does_selection:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	rsapss_to_PrivateKeyInfo_pem_does_selection, .-rsapss_to_PrivateKeyInfo_pem_does_selection
	.type	rsapss_to_PrivateKeyInfo_pem_encode, @function
rsapss_to_PrivateKeyInfo_pem_encode:
.LFB685:
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
	cmpq	$0, -32(%rbp)
	je	.L403
	call	ERR_new@PLT
	leaq	__func__.78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1365, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L404
.L403:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L405
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC15(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L404
.L405:
	call	ERR_new@PLT
	leaq	__func__.78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1365, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L404:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	rsapss_to_PrivateKeyInfo_pem_encode, .-rsapss_to_PrivateKeyInfo_pem_encode
	.globl	ossl_rsapss_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsapss_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_rsapss_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_rsapss_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsapss_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	rsapss_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	rsapss_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	rsapss_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsapss_to_SubjectPublicKeyInfo_der_import_object, @function
rsapss_to_SubjectPublicKeyInfo_der_import_object:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	rsapss_to_SubjectPublicKeyInfo_der_import_object, .-rsapss_to_SubjectPublicKeyInfo_der_import_object
	.type	rsapss_to_SubjectPublicKeyInfo_der_free_object, @function
rsapss_to_SubjectPublicKeyInfo_der_free_object:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	rsapss_to_SubjectPublicKeyInfo_der_free_object, .-rsapss_to_SubjectPublicKeyInfo_der_free_object
	.type	rsapss_to_SubjectPublicKeyInfo_der_does_selection, @function
rsapss_to_SubjectPublicKeyInfo_der_does_selection:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	rsapss_to_SubjectPublicKeyInfo_der_does_selection, .-rsapss_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC16:
	.string	"RSA-PSS PUBLIC KEY"
	.text
	.type	rsapss_to_SubjectPublicKeyInfo_der_encode, @function
rsapss_to_SubjectPublicKeyInfo_der_encode:
.LFB689:
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
	cmpq	$0, -32(%rbp)
	je	.L412
	call	ERR_new@PLT
	leaq	__func__.77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1366, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L413
.L412:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L414
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC16(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L413
.L414:
	call	ERR_new@PLT
	leaq	__func__.77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1366, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L413:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	rsapss_to_SubjectPublicKeyInfo_der_encode, .-rsapss_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_rsapss_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsapss_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_rsapss_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_rsapss_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsapss_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	rsapss_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	rsapss_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	rsapss_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsapss_to_SubjectPublicKeyInfo_pem_import_object, @function
rsapss_to_SubjectPublicKeyInfo_pem_import_object:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	rsapss_to_SubjectPublicKeyInfo_pem_import_object, .-rsapss_to_SubjectPublicKeyInfo_pem_import_object
	.type	rsapss_to_SubjectPublicKeyInfo_pem_free_object, @function
rsapss_to_SubjectPublicKeyInfo_pem_free_object:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	rsapss_to_SubjectPublicKeyInfo_pem_free_object, .-rsapss_to_SubjectPublicKeyInfo_pem_free_object
	.type	rsapss_to_SubjectPublicKeyInfo_pem_does_selection, @function
rsapss_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	rsapss_to_SubjectPublicKeyInfo_pem_does_selection, .-rsapss_to_SubjectPublicKeyInfo_pem_does_selection
	.type	rsapss_to_SubjectPublicKeyInfo_pem_encode, @function
rsapss_to_SubjectPublicKeyInfo_pem_encode:
.LFB693:
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
	cmpq	$0, -32(%rbp)
	je	.L421
	call	ERR_new@PLT
	leaq	__func__.76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L422
.L421:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L423
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC16(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L422
.L423:
	call	ERR_new@PLT
	leaq	__func__.76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L422:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	rsapss_to_SubjectPublicKeyInfo_pem_encode, .-rsapss_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_rsapss_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsapss_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_rsapss_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_rsapss_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsapss_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	rsapss_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	rsapss_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	rsapss_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_EncryptedPrivateKeyInfo_der_import_object, @function
dh_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	dh_to_EncryptedPrivateKeyInfo_der_import_object, .-dh_to_EncryptedPrivateKeyInfo_der_import_object
	.type	dh_to_EncryptedPrivateKeyInfo_der_free_object, @function
dh_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	dh_to_EncryptedPrivateKeyInfo_der_free_object, .-dh_to_EncryptedPrivateKeyInfo_der_free_object
	.type	dh_to_EncryptedPrivateKeyInfo_der_does_selection, @function
dh_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	dh_to_EncryptedPrivateKeyInfo_der_does_selection, .-dh_to_EncryptedPrivateKeyInfo_der_does_selection
	.section	.rodata
.LC17:
	.string	"DH PRIVATE KEY"
	.text
	.type	dh_to_EncryptedPrivateKeyInfo_der_encode, @function
dh_to_EncryptedPrivateKeyInfo_der_encode:
.LFB697:
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
	cmpq	$0, -32(%rbp)
	je	.L430
	call	ERR_new@PLT
	leaq	__func__.75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1369, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L431
.L430:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L432
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC17(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L431
.L432:
	call	ERR_new@PLT
	leaq	__func__.75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1369, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L431:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	dh_to_EncryptedPrivateKeyInfo_der_encode, .-dh_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_dh_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_dh_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_dh_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	dh_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	dh_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	dh_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_EncryptedPrivateKeyInfo_pem_import_object, @function
dh_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	dh_to_EncryptedPrivateKeyInfo_pem_import_object, .-dh_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	dh_to_EncryptedPrivateKeyInfo_pem_free_object, @function
dh_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	dh_to_EncryptedPrivateKeyInfo_pem_free_object, .-dh_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	dh_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
dh_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	dh_to_EncryptedPrivateKeyInfo_pem_does_selection, .-dh_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	dh_to_EncryptedPrivateKeyInfo_pem_encode, @function
dh_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB701:
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
	cmpq	$0, -32(%rbp)
	je	.L439
	call	ERR_new@PLT
	leaq	__func__.74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1370, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L440
.L439:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L441
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC17(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L440
.L441:
	call	ERR_new@PLT
	leaq	__func__.74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1370, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L440:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	dh_to_EncryptedPrivateKeyInfo_pem_encode, .-dh_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_dh_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_dh_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_dh_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	dh_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	dh_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	dh_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_PrivateKeyInfo_der_import_object, @function
dh_to_PrivateKeyInfo_der_import_object:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	dh_to_PrivateKeyInfo_der_import_object, .-dh_to_PrivateKeyInfo_der_import_object
	.type	dh_to_PrivateKeyInfo_der_free_object, @function
dh_to_PrivateKeyInfo_der_free_object:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	dh_to_PrivateKeyInfo_der_free_object, .-dh_to_PrivateKeyInfo_der_free_object
	.type	dh_to_PrivateKeyInfo_der_does_selection, @function
dh_to_PrivateKeyInfo_der_does_selection:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	dh_to_PrivateKeyInfo_der_does_selection, .-dh_to_PrivateKeyInfo_der_does_selection
	.type	dh_to_PrivateKeyInfo_der_encode, @function
dh_to_PrivateKeyInfo_der_encode:
.LFB705:
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
	cmpq	$0, -32(%rbp)
	je	.L448
	call	ERR_new@PLT
	leaq	__func__.73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1371, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L449
.L448:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L450
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC17(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L449
.L450:
	call	ERR_new@PLT
	leaq	__func__.73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1371, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L449:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	dh_to_PrivateKeyInfo_der_encode, .-dh_to_PrivateKeyInfo_der_encode
	.globl	ossl_dh_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_dh_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_dh_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	dh_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	dh_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	dh_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_PrivateKeyInfo_pem_import_object, @function
dh_to_PrivateKeyInfo_pem_import_object:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	dh_to_PrivateKeyInfo_pem_import_object, .-dh_to_PrivateKeyInfo_pem_import_object
	.type	dh_to_PrivateKeyInfo_pem_free_object, @function
dh_to_PrivateKeyInfo_pem_free_object:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	dh_to_PrivateKeyInfo_pem_free_object, .-dh_to_PrivateKeyInfo_pem_free_object
	.type	dh_to_PrivateKeyInfo_pem_does_selection, @function
dh_to_PrivateKeyInfo_pem_does_selection:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	dh_to_PrivateKeyInfo_pem_does_selection, .-dh_to_PrivateKeyInfo_pem_does_selection
	.type	dh_to_PrivateKeyInfo_pem_encode, @function
dh_to_PrivateKeyInfo_pem_encode:
.LFB709:
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
	cmpq	$0, -32(%rbp)
	je	.L457
	call	ERR_new@PLT
	leaq	__func__.72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1372, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L458
.L457:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L459
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC17(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L458
.L459:
	call	ERR_new@PLT
	leaq	__func__.72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1372, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L458:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	dh_to_PrivateKeyInfo_pem_encode, .-dh_to_PrivateKeyInfo_pem_encode
	.globl	ossl_dh_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_dh_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_dh_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	dh_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	dh_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	dh_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_SubjectPublicKeyInfo_der_import_object, @function
dh_to_SubjectPublicKeyInfo_der_import_object:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	dh_to_SubjectPublicKeyInfo_der_import_object, .-dh_to_SubjectPublicKeyInfo_der_import_object
	.type	dh_to_SubjectPublicKeyInfo_der_free_object, @function
dh_to_SubjectPublicKeyInfo_der_free_object:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	dh_to_SubjectPublicKeyInfo_der_free_object, .-dh_to_SubjectPublicKeyInfo_der_free_object
	.type	dh_to_SubjectPublicKeyInfo_der_does_selection, @function
dh_to_SubjectPublicKeyInfo_der_does_selection:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	dh_to_SubjectPublicKeyInfo_der_does_selection, .-dh_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC18:
	.string	"DH PUBLIC KEY"
	.text
	.type	dh_to_SubjectPublicKeyInfo_der_encode, @function
dh_to_SubjectPublicKeyInfo_der_encode:
.LFB713:
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
	cmpq	$0, -32(%rbp)
	je	.L466
	call	ERR_new@PLT
	leaq	__func__.71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L467
.L466:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L468
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC18(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L467
.L468:
	call	ERR_new@PLT
	leaq	__func__.71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L467:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	dh_to_SubjectPublicKeyInfo_der_encode, .-dh_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_dh_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_dh_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_dh_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	dh_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	dh_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	dh_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_SubjectPublicKeyInfo_pem_import_object, @function
dh_to_SubjectPublicKeyInfo_pem_import_object:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	dh_to_SubjectPublicKeyInfo_pem_import_object, .-dh_to_SubjectPublicKeyInfo_pem_import_object
	.type	dh_to_SubjectPublicKeyInfo_pem_free_object, @function
dh_to_SubjectPublicKeyInfo_pem_free_object:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	dh_to_SubjectPublicKeyInfo_pem_free_object, .-dh_to_SubjectPublicKeyInfo_pem_free_object
	.type	dh_to_SubjectPublicKeyInfo_pem_does_selection, @function
dh_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	dh_to_SubjectPublicKeyInfo_pem_does_selection, .-dh_to_SubjectPublicKeyInfo_pem_does_selection
	.type	dh_to_SubjectPublicKeyInfo_pem_encode, @function
dh_to_SubjectPublicKeyInfo_pem_encode:
.LFB717:
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
	cmpq	$0, -32(%rbp)
	je	.L475
	call	ERR_new@PLT
	leaq	__func__.70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1374, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L476
.L475:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L477
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC18(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L476
.L477:
	call	ERR_new@PLT
	leaq	__func__.70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1374, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L476:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	dh_to_SubjectPublicKeyInfo_pem_encode, .-dh_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_dh_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_dh_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_dh_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	dh_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	dh_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	dh_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_EncryptedPrivateKeyInfo_der_import_object, @function
dhx_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	dhx_to_EncryptedPrivateKeyInfo_der_import_object, .-dhx_to_EncryptedPrivateKeyInfo_der_import_object
	.type	dhx_to_EncryptedPrivateKeyInfo_der_free_object, @function
dhx_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	dhx_to_EncryptedPrivateKeyInfo_der_free_object, .-dhx_to_EncryptedPrivateKeyInfo_der_free_object
	.type	dhx_to_EncryptedPrivateKeyInfo_der_does_selection, @function
dhx_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	dhx_to_EncryptedPrivateKeyInfo_der_does_selection, .-dhx_to_EncryptedPrivateKeyInfo_der_does_selection
	.section	.rodata
.LC19:
	.string	"X9.42 DH PRIVATE KEY"
	.text
	.type	dhx_to_EncryptedPrivateKeyInfo_der_encode, @function
dhx_to_EncryptedPrivateKeyInfo_der_encode:
.LFB721:
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
	cmpq	$0, -32(%rbp)
	je	.L484
	call	ERR_new@PLT
	leaq	__func__.69(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1375, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L485
.L484:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L486
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC19(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L485
.L486:
	call	ERR_new@PLT
	leaq	__func__.69(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1375, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L485:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	dhx_to_EncryptedPrivateKeyInfo_der_encode, .-dhx_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_dhx_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_dhx_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_dhx_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	dhx_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	dhx_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_EncryptedPrivateKeyInfo_pem_import_object, @function
dhx_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	dhx_to_EncryptedPrivateKeyInfo_pem_import_object, .-dhx_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	dhx_to_EncryptedPrivateKeyInfo_pem_free_object, @function
dhx_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	dhx_to_EncryptedPrivateKeyInfo_pem_free_object, .-dhx_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	dhx_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
dhx_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	dhx_to_EncryptedPrivateKeyInfo_pem_does_selection, .-dhx_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	dhx_to_EncryptedPrivateKeyInfo_pem_encode, @function
dhx_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB725:
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
	cmpq	$0, -32(%rbp)
	je	.L493
	call	ERR_new@PLT
	leaq	__func__.68(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1376, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L494
.L493:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L495
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC19(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L494
.L495:
	call	ERR_new@PLT
	leaq	__func__.68(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1376, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L494:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	dhx_to_EncryptedPrivateKeyInfo_pem_encode, .-dhx_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_dhx_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_dhx_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_dhx_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	dhx_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	dhx_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_PrivateKeyInfo_der_import_object, @function
dhx_to_PrivateKeyInfo_der_import_object:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	dhx_to_PrivateKeyInfo_der_import_object, .-dhx_to_PrivateKeyInfo_der_import_object
	.type	dhx_to_PrivateKeyInfo_der_free_object, @function
dhx_to_PrivateKeyInfo_der_free_object:
.LFB727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	dhx_to_PrivateKeyInfo_der_free_object, .-dhx_to_PrivateKeyInfo_der_free_object
	.type	dhx_to_PrivateKeyInfo_der_does_selection, @function
dhx_to_PrivateKeyInfo_der_does_selection:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	dhx_to_PrivateKeyInfo_der_does_selection, .-dhx_to_PrivateKeyInfo_der_does_selection
	.type	dhx_to_PrivateKeyInfo_der_encode, @function
dhx_to_PrivateKeyInfo_der_encode:
.LFB729:
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
	cmpq	$0, -32(%rbp)
	je	.L502
	call	ERR_new@PLT
	leaq	__func__.67(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1377, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L503
.L502:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L504
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC19(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L503
.L504:
	call	ERR_new@PLT
	leaq	__func__.67(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1377, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L503:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	dhx_to_PrivateKeyInfo_der_encode, .-dhx_to_PrivateKeyInfo_der_encode
	.globl	ossl_dhx_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_dhx_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_dhx_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	dhx_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	dhx_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_PrivateKeyInfo_pem_import_object, @function
dhx_to_PrivateKeyInfo_pem_import_object:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	dhx_to_PrivateKeyInfo_pem_import_object, .-dhx_to_PrivateKeyInfo_pem_import_object
	.type	dhx_to_PrivateKeyInfo_pem_free_object, @function
dhx_to_PrivateKeyInfo_pem_free_object:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	dhx_to_PrivateKeyInfo_pem_free_object, .-dhx_to_PrivateKeyInfo_pem_free_object
	.type	dhx_to_PrivateKeyInfo_pem_does_selection, @function
dhx_to_PrivateKeyInfo_pem_does_selection:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	dhx_to_PrivateKeyInfo_pem_does_selection, .-dhx_to_PrivateKeyInfo_pem_does_selection
	.type	dhx_to_PrivateKeyInfo_pem_encode, @function
dhx_to_PrivateKeyInfo_pem_encode:
.LFB733:
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
	cmpq	$0, -32(%rbp)
	je	.L511
	call	ERR_new@PLT
	leaq	__func__.66(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1378, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L512
.L511:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L513
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC19(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L512
.L513:
	call	ERR_new@PLT
	leaq	__func__.66(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1378, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L512:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	dhx_to_PrivateKeyInfo_pem_encode, .-dhx_to_PrivateKeyInfo_pem_encode
	.globl	ossl_dhx_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_dhx_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_dhx_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	dhx_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	dhx_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_SubjectPublicKeyInfo_der_import_object, @function
dhx_to_SubjectPublicKeyInfo_der_import_object:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	dhx_to_SubjectPublicKeyInfo_der_import_object, .-dhx_to_SubjectPublicKeyInfo_der_import_object
	.type	dhx_to_SubjectPublicKeyInfo_der_free_object, @function
dhx_to_SubjectPublicKeyInfo_der_free_object:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	dhx_to_SubjectPublicKeyInfo_der_free_object, .-dhx_to_SubjectPublicKeyInfo_der_free_object
	.type	dhx_to_SubjectPublicKeyInfo_der_does_selection, @function
dhx_to_SubjectPublicKeyInfo_der_does_selection:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	dhx_to_SubjectPublicKeyInfo_der_does_selection, .-dhx_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC20:
	.string	"X9.42 DH PUBLIC KEY"
	.text
	.type	dhx_to_SubjectPublicKeyInfo_der_encode, @function
dhx_to_SubjectPublicKeyInfo_der_encode:
.LFB737:
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
	cmpq	$0, -32(%rbp)
	je	.L520
	call	ERR_new@PLT
	leaq	__func__.65(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1379, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L521
.L520:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L522
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC20(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L521
.L522:
	call	ERR_new@PLT
	leaq	__func__.65(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1379, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L521:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	dhx_to_SubjectPublicKeyInfo_der_encode, .-dhx_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_dhx_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_dhx_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_dhx_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	dhx_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	dhx_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_SubjectPublicKeyInfo_pem_import_object, @function
dhx_to_SubjectPublicKeyInfo_pem_import_object:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	dhx_to_SubjectPublicKeyInfo_pem_import_object, .-dhx_to_SubjectPublicKeyInfo_pem_import_object
	.type	dhx_to_SubjectPublicKeyInfo_pem_free_object, @function
dhx_to_SubjectPublicKeyInfo_pem_free_object:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	dhx_to_SubjectPublicKeyInfo_pem_free_object, .-dhx_to_SubjectPublicKeyInfo_pem_free_object
	.type	dhx_to_SubjectPublicKeyInfo_pem_does_selection, @function
dhx_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	dhx_to_SubjectPublicKeyInfo_pem_does_selection, .-dhx_to_SubjectPublicKeyInfo_pem_does_selection
	.type	dhx_to_SubjectPublicKeyInfo_pem_encode, @function
dhx_to_SubjectPublicKeyInfo_pem_encode:
.LFB741:
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
	cmpq	$0, -32(%rbp)
	je	.L529
	call	ERR_new@PLT
	leaq	__func__.64(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L530
.L529:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L531
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC20(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dh_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L530
.L531:
	call	ERR_new@PLT
	leaq	__func__.64(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L530:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	dhx_to_SubjectPublicKeyInfo_pem_encode, .-dhx_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_dhx_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_dhx_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_dhx_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	dhx_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	dhx_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa_to_EncryptedPrivateKeyInfo_der_import_object, @function
dsa_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	dsa_to_EncryptedPrivateKeyInfo_der_import_object, .-dsa_to_EncryptedPrivateKeyInfo_der_import_object
	.type	dsa_to_EncryptedPrivateKeyInfo_der_free_object, @function
dsa_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	dsa_to_EncryptedPrivateKeyInfo_der_free_object, .-dsa_to_EncryptedPrivateKeyInfo_der_free_object
	.type	dsa_to_EncryptedPrivateKeyInfo_der_does_selection, @function
dsa_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	dsa_to_EncryptedPrivateKeyInfo_der_does_selection, .-dsa_to_EncryptedPrivateKeyInfo_der_does_selection
	.type	dsa_to_EncryptedPrivateKeyInfo_der_encode, @function
dsa_to_EncryptedPrivateKeyInfo_der_encode:
.LFB745:
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
	cmpq	$0, -32(%rbp)
	je	.L538
	call	ERR_new@PLT
	leaq	__func__.63(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1383, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L539
.L538:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L540
	leaq	.LC8(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dsa_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L539
.L540:
	call	ERR_new@PLT
	leaq	__func__.63(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1383, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L539:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	dsa_to_EncryptedPrivateKeyInfo_der_encode, .-dsa_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_dsa_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_dsa_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_dsa_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dsa_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	dsa_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	dsa_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	dsa_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa_to_EncryptedPrivateKeyInfo_pem_import_object, @function
dsa_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	dsa_to_EncryptedPrivateKeyInfo_pem_import_object, .-dsa_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	dsa_to_EncryptedPrivateKeyInfo_pem_free_object, @function
dsa_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	dsa_to_EncryptedPrivateKeyInfo_pem_free_object, .-dsa_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	dsa_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
dsa_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	dsa_to_EncryptedPrivateKeyInfo_pem_does_selection, .-dsa_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	dsa_to_EncryptedPrivateKeyInfo_pem_encode, @function
dsa_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB749:
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
	cmpq	$0, -32(%rbp)
	je	.L547
	call	ERR_new@PLT
	leaq	__func__.62(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1384, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L548
.L547:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L549
	leaq	.LC8(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dsa_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L548
.L549:
	call	ERR_new@PLT
	leaq	__func__.62(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1384, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L548:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	dsa_to_EncryptedPrivateKeyInfo_pem_encode, .-dsa_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_dsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_dsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_dsa_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dsa_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	dsa_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	dsa_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	dsa_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa_to_PrivateKeyInfo_der_import_object, @function
dsa_to_PrivateKeyInfo_der_import_object:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	dsa_to_PrivateKeyInfo_der_import_object, .-dsa_to_PrivateKeyInfo_der_import_object
	.type	dsa_to_PrivateKeyInfo_der_free_object, @function
dsa_to_PrivateKeyInfo_der_free_object:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	dsa_to_PrivateKeyInfo_der_free_object, .-dsa_to_PrivateKeyInfo_der_free_object
	.type	dsa_to_PrivateKeyInfo_der_does_selection, @function
dsa_to_PrivateKeyInfo_der_does_selection:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	dsa_to_PrivateKeyInfo_der_does_selection, .-dsa_to_PrivateKeyInfo_der_does_selection
	.type	dsa_to_PrivateKeyInfo_der_encode, @function
dsa_to_PrivateKeyInfo_der_encode:
.LFB753:
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
	cmpq	$0, -32(%rbp)
	je	.L556
	call	ERR_new@PLT
	leaq	__func__.61(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1385, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L557
.L556:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L558
	leaq	.LC8(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dsa_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L557
.L558:
	call	ERR_new@PLT
	leaq	__func__.61(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1385, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L557:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	dsa_to_PrivateKeyInfo_der_encode, .-dsa_to_PrivateKeyInfo_der_encode
	.globl	ossl_dsa_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_dsa_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_dsa_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dsa_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	dsa_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	dsa_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	dsa_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa_to_PrivateKeyInfo_pem_import_object, @function
dsa_to_PrivateKeyInfo_pem_import_object:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	dsa_to_PrivateKeyInfo_pem_import_object, .-dsa_to_PrivateKeyInfo_pem_import_object
	.type	dsa_to_PrivateKeyInfo_pem_free_object, @function
dsa_to_PrivateKeyInfo_pem_free_object:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	dsa_to_PrivateKeyInfo_pem_free_object, .-dsa_to_PrivateKeyInfo_pem_free_object
	.type	dsa_to_PrivateKeyInfo_pem_does_selection, @function
dsa_to_PrivateKeyInfo_pem_does_selection:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	dsa_to_PrivateKeyInfo_pem_does_selection, .-dsa_to_PrivateKeyInfo_pem_does_selection
	.type	dsa_to_PrivateKeyInfo_pem_encode, @function
dsa_to_PrivateKeyInfo_pem_encode:
.LFB757:
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
	cmpq	$0, -32(%rbp)
	je	.L565
	call	ERR_new@PLT
	leaq	__func__.60(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1386, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L566
.L565:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L567
	leaq	.LC8(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dsa_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L566
.L567:
	call	ERR_new@PLT
	leaq	__func__.60(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1386, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L566:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	dsa_to_PrivateKeyInfo_pem_encode, .-dsa_to_PrivateKeyInfo_pem_encode
	.globl	ossl_dsa_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_dsa_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_dsa_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dsa_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	dsa_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	dsa_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	dsa_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa_to_SubjectPublicKeyInfo_der_import_object, @function
dsa_to_SubjectPublicKeyInfo_der_import_object:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	dsa_to_SubjectPublicKeyInfo_der_import_object, .-dsa_to_SubjectPublicKeyInfo_der_import_object
	.type	dsa_to_SubjectPublicKeyInfo_der_free_object, @function
dsa_to_SubjectPublicKeyInfo_der_free_object:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	dsa_to_SubjectPublicKeyInfo_der_free_object, .-dsa_to_SubjectPublicKeyInfo_der_free_object
	.type	dsa_to_SubjectPublicKeyInfo_der_does_selection, @function
dsa_to_SubjectPublicKeyInfo_der_does_selection:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	dsa_to_SubjectPublicKeyInfo_der_does_selection, .-dsa_to_SubjectPublicKeyInfo_der_does_selection
	.type	dsa_to_SubjectPublicKeyInfo_der_encode, @function
dsa_to_SubjectPublicKeyInfo_der_encode:
.LFB761:
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
	cmpq	$0, -32(%rbp)
	je	.L574
	call	ERR_new@PLT
	leaq	__func__.59(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1387, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L575
.L574:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L576
	leaq	.LC9(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dsa_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L575
.L576:
	call	ERR_new@PLT
	leaq	__func__.59(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1387, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L575:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	dsa_to_SubjectPublicKeyInfo_der_encode, .-dsa_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_dsa_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_dsa_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_dsa_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dsa_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	dsa_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	dsa_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	dsa_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa_to_SubjectPublicKeyInfo_pem_import_object, @function
dsa_to_SubjectPublicKeyInfo_pem_import_object:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	dsa_to_SubjectPublicKeyInfo_pem_import_object, .-dsa_to_SubjectPublicKeyInfo_pem_import_object
	.type	dsa_to_SubjectPublicKeyInfo_pem_free_object, @function
dsa_to_SubjectPublicKeyInfo_pem_free_object:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	dsa_to_SubjectPublicKeyInfo_pem_free_object, .-dsa_to_SubjectPublicKeyInfo_pem_free_object
	.type	dsa_to_SubjectPublicKeyInfo_pem_does_selection, @function
dsa_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	dsa_to_SubjectPublicKeyInfo_pem_does_selection, .-dsa_to_SubjectPublicKeyInfo_pem_does_selection
	.type	dsa_to_SubjectPublicKeyInfo_pem_encode, @function
dsa_to_SubjectPublicKeyInfo_pem_encode:
.LFB765:
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
	cmpq	$0, -32(%rbp)
	je	.L583
	call	ERR_new@PLT
	leaq	__func__.58(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1388, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L584
.L583:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L585
	leaq	.LC9(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dsa_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L584
.L585:
	call	ERR_new@PLT
	leaq	__func__.58(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1388, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L584:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	dsa_to_SubjectPublicKeyInfo_pem_encode, .-dsa_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_dsa_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_dsa_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_dsa_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dsa_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	dsa_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	dsa_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	dsa_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_EncryptedPrivateKeyInfo_der_import_object, @function
ec_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	ec_to_EncryptedPrivateKeyInfo_der_import_object, .-ec_to_EncryptedPrivateKeyInfo_der_import_object
	.type	ec_to_EncryptedPrivateKeyInfo_der_free_object, @function
ec_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	ec_to_EncryptedPrivateKeyInfo_der_free_object, .-ec_to_EncryptedPrivateKeyInfo_der_free_object
	.type	ec_to_EncryptedPrivateKeyInfo_der_does_selection, @function
ec_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	ec_to_EncryptedPrivateKeyInfo_der_does_selection, .-ec_to_EncryptedPrivateKeyInfo_der_does_selection
	.type	ec_to_EncryptedPrivateKeyInfo_der_encode, @function
ec_to_EncryptedPrivateKeyInfo_der_encode:
.LFB769:
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
	cmpq	$0, -32(%rbp)
	je	.L592
	call	ERR_new@PLT
	leaq	__func__.57(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1391, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L593
.L592:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L594
	leaq	.LC11(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L593
.L594:
	call	ERR_new@PLT
	leaq	__func__.57(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1391, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L593:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	ec_to_EncryptedPrivateKeyInfo_der_encode, .-ec_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_ec_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_ec_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_ec_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	ec_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	ec_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	ec_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_EncryptedPrivateKeyInfo_pem_import_object, @function
ec_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	ec_to_EncryptedPrivateKeyInfo_pem_import_object, .-ec_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	ec_to_EncryptedPrivateKeyInfo_pem_free_object, @function
ec_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	ec_to_EncryptedPrivateKeyInfo_pem_free_object, .-ec_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	ec_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
ec_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	ec_to_EncryptedPrivateKeyInfo_pem_does_selection, .-ec_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	ec_to_EncryptedPrivateKeyInfo_pem_encode, @function
ec_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB773:
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
	cmpq	$0, -32(%rbp)
	je	.L601
	call	ERR_new@PLT
	leaq	__func__.56(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1392, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L602
.L601:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L603
	leaq	.LC11(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L602
.L603:
	call	ERR_new@PLT
	leaq	__func__.56(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1392, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L602:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	ec_to_EncryptedPrivateKeyInfo_pem_encode, .-ec_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_ec_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_ec_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_ec_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	ec_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	ec_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	ec_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_PrivateKeyInfo_der_import_object, @function
ec_to_PrivateKeyInfo_der_import_object:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	ec_to_PrivateKeyInfo_der_import_object, .-ec_to_PrivateKeyInfo_der_import_object
	.type	ec_to_PrivateKeyInfo_der_free_object, @function
ec_to_PrivateKeyInfo_der_free_object:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	ec_to_PrivateKeyInfo_der_free_object, .-ec_to_PrivateKeyInfo_der_free_object
	.type	ec_to_PrivateKeyInfo_der_does_selection, @function
ec_to_PrivateKeyInfo_der_does_selection:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	ec_to_PrivateKeyInfo_der_does_selection, .-ec_to_PrivateKeyInfo_der_does_selection
	.type	ec_to_PrivateKeyInfo_der_encode, @function
ec_to_PrivateKeyInfo_der_encode:
.LFB777:
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
	cmpq	$0, -32(%rbp)
	je	.L610
	call	ERR_new@PLT
	leaq	__func__.55(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1393, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L611
.L610:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L612
	leaq	.LC11(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L611
.L612:
	call	ERR_new@PLT
	leaq	__func__.55(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1393, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L611:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	ec_to_PrivateKeyInfo_der_encode, .-ec_to_PrivateKeyInfo_der_encode
	.globl	ossl_ec_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_ec_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_ec_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	ec_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	ec_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	ec_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_PrivateKeyInfo_pem_import_object, @function
ec_to_PrivateKeyInfo_pem_import_object:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	ec_to_PrivateKeyInfo_pem_import_object, .-ec_to_PrivateKeyInfo_pem_import_object
	.type	ec_to_PrivateKeyInfo_pem_free_object, @function
ec_to_PrivateKeyInfo_pem_free_object:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	ec_to_PrivateKeyInfo_pem_free_object, .-ec_to_PrivateKeyInfo_pem_free_object
	.type	ec_to_PrivateKeyInfo_pem_does_selection, @function
ec_to_PrivateKeyInfo_pem_does_selection:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	ec_to_PrivateKeyInfo_pem_does_selection, .-ec_to_PrivateKeyInfo_pem_does_selection
	.type	ec_to_PrivateKeyInfo_pem_encode, @function
ec_to_PrivateKeyInfo_pem_encode:
.LFB781:
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
	cmpq	$0, -32(%rbp)
	je	.L619
	call	ERR_new@PLT
	leaq	__func__.54(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1394, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L620
.L619:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L621
	leaq	.LC11(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L620
.L621:
	call	ERR_new@PLT
	leaq	__func__.54(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1394, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L620:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	ec_to_PrivateKeyInfo_pem_encode, .-ec_to_PrivateKeyInfo_pem_encode
	.globl	ossl_ec_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_ec_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_ec_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	ec_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	ec_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	ec_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_SubjectPublicKeyInfo_der_import_object, @function
ec_to_SubjectPublicKeyInfo_der_import_object:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	ec_to_SubjectPublicKeyInfo_der_import_object, .-ec_to_SubjectPublicKeyInfo_der_import_object
	.type	ec_to_SubjectPublicKeyInfo_der_free_object, @function
ec_to_SubjectPublicKeyInfo_der_free_object:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	ec_to_SubjectPublicKeyInfo_der_free_object, .-ec_to_SubjectPublicKeyInfo_der_free_object
	.type	ec_to_SubjectPublicKeyInfo_der_does_selection, @function
ec_to_SubjectPublicKeyInfo_der_does_selection:
.LFB784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	ec_to_SubjectPublicKeyInfo_der_does_selection, .-ec_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC21:
	.string	"EC PUBLIC KEY"
	.text
	.type	ec_to_SubjectPublicKeyInfo_der_encode, @function
ec_to_SubjectPublicKeyInfo_der_encode:
.LFB785:
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
	cmpq	$0, -32(%rbp)
	je	.L628
	call	ERR_new@PLT
	leaq	__func__.53(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L629
.L628:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L630
	leaq	.LC21(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L629
.L630:
	call	ERR_new@PLT
	leaq	__func__.53(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L629:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	ec_to_SubjectPublicKeyInfo_der_encode, .-ec_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_ec_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_ec_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_ec_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	ec_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	ec_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	ec_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_SubjectPublicKeyInfo_pem_import_object, @function
ec_to_SubjectPublicKeyInfo_pem_import_object:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	ec_to_SubjectPublicKeyInfo_pem_import_object, .-ec_to_SubjectPublicKeyInfo_pem_import_object
	.type	ec_to_SubjectPublicKeyInfo_pem_free_object, @function
ec_to_SubjectPublicKeyInfo_pem_free_object:
.LFB787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	ec_to_SubjectPublicKeyInfo_pem_free_object, .-ec_to_SubjectPublicKeyInfo_pem_free_object
	.type	ec_to_SubjectPublicKeyInfo_pem_does_selection, @function
ec_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	ec_to_SubjectPublicKeyInfo_pem_does_selection, .-ec_to_SubjectPublicKeyInfo_pem_does_selection
	.type	ec_to_SubjectPublicKeyInfo_pem_encode, @function
ec_to_SubjectPublicKeyInfo_pem_encode:
.LFB789:
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
	cmpq	$0, -32(%rbp)
	je	.L637
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1396, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L638
.L637:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L639
	leaq	.LC21(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L638
.L639:
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1396, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L638:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	ec_to_SubjectPublicKeyInfo_pem_encode, .-ec_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_ec_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_ec_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_ec_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	ec_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	ec_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	ec_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm2_to_EncryptedPrivateKeyInfo_der_import_object, @function
sm2_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB790:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	sm2_to_EncryptedPrivateKeyInfo_der_import_object, .-sm2_to_EncryptedPrivateKeyInfo_der_import_object
	.type	sm2_to_EncryptedPrivateKeyInfo_der_free_object, @function
sm2_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	sm2_to_EncryptedPrivateKeyInfo_der_free_object, .-sm2_to_EncryptedPrivateKeyInfo_der_free_object
	.type	sm2_to_EncryptedPrivateKeyInfo_der_does_selection, @function
sm2_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	sm2_to_EncryptedPrivateKeyInfo_der_does_selection, .-sm2_to_EncryptedPrivateKeyInfo_der_does_selection
	.type	sm2_to_EncryptedPrivateKeyInfo_der_encode, @function
sm2_to_EncryptedPrivateKeyInfo_der_encode:
.LFB793:
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
	cmpq	$0, -32(%rbp)
	je	.L646
	call	ERR_new@PLT
	leaq	__func__.51(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1398, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L647
.L646:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L648
	leaq	.LC13(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L647
.L648:
	call	ERR_new@PLT
	leaq	__func__.51(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1398, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L647:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	sm2_to_EncryptedPrivateKeyInfo_der_encode, .-sm2_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_sm2_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_sm2_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_sm2_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	sm2_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	sm2_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	sm2_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	sm2_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm2_to_EncryptedPrivateKeyInfo_pem_import_object, @function
sm2_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB794:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	sm2_to_EncryptedPrivateKeyInfo_pem_import_object, .-sm2_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	sm2_to_EncryptedPrivateKeyInfo_pem_free_object, @function
sm2_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB795:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE795:
	.size	sm2_to_EncryptedPrivateKeyInfo_pem_free_object, .-sm2_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	sm2_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
sm2_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB796:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE796:
	.size	sm2_to_EncryptedPrivateKeyInfo_pem_does_selection, .-sm2_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	sm2_to_EncryptedPrivateKeyInfo_pem_encode, @function
sm2_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB797:
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
	cmpq	$0, -32(%rbp)
	je	.L655
	call	ERR_new@PLT
	leaq	__func__.50(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L656
.L655:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L657
	leaq	.LC13(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L656
.L657:
	call	ERR_new@PLT
	leaq	__func__.50(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L656:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	sm2_to_EncryptedPrivateKeyInfo_pem_encode, .-sm2_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_sm2_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_sm2_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_sm2_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	sm2_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	sm2_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	sm2_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	sm2_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm2_to_PrivateKeyInfo_der_import_object, @function
sm2_to_PrivateKeyInfo_der_import_object:
.LFB798:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE798:
	.size	sm2_to_PrivateKeyInfo_der_import_object, .-sm2_to_PrivateKeyInfo_der_import_object
	.type	sm2_to_PrivateKeyInfo_der_free_object, @function
sm2_to_PrivateKeyInfo_der_free_object:
.LFB799:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	sm2_to_PrivateKeyInfo_der_free_object, .-sm2_to_PrivateKeyInfo_der_free_object
	.type	sm2_to_PrivateKeyInfo_der_does_selection, @function
sm2_to_PrivateKeyInfo_der_does_selection:
.LFB800:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE800:
	.size	sm2_to_PrivateKeyInfo_der_does_selection, .-sm2_to_PrivateKeyInfo_der_does_selection
	.type	sm2_to_PrivateKeyInfo_der_encode, @function
sm2_to_PrivateKeyInfo_der_encode:
.LFB801:
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
	cmpq	$0, -32(%rbp)
	je	.L664
	call	ERR_new@PLT
	leaq	__func__.49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1400, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L665
.L664:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L666
	leaq	.LC13(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L665
.L666:
	call	ERR_new@PLT
	leaq	__func__.49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1400, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L665:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE801:
	.size	sm2_to_PrivateKeyInfo_der_encode, .-sm2_to_PrivateKeyInfo_der_encode
	.globl	ossl_sm2_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_sm2_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_sm2_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	sm2_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	sm2_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	sm2_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	sm2_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm2_to_PrivateKeyInfo_pem_import_object, @function
sm2_to_PrivateKeyInfo_pem_import_object:
.LFB802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	sm2_to_PrivateKeyInfo_pem_import_object, .-sm2_to_PrivateKeyInfo_pem_import_object
	.type	sm2_to_PrivateKeyInfo_pem_free_object, @function
sm2_to_PrivateKeyInfo_pem_free_object:
.LFB803:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE803:
	.size	sm2_to_PrivateKeyInfo_pem_free_object, .-sm2_to_PrivateKeyInfo_pem_free_object
	.type	sm2_to_PrivateKeyInfo_pem_does_selection, @function
sm2_to_PrivateKeyInfo_pem_does_selection:
.LFB804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE804:
	.size	sm2_to_PrivateKeyInfo_pem_does_selection, .-sm2_to_PrivateKeyInfo_pem_does_selection
	.type	sm2_to_PrivateKeyInfo_pem_encode, @function
sm2_to_PrivateKeyInfo_pem_encode:
.LFB805:
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
	cmpq	$0, -32(%rbp)
	je	.L673
	call	ERR_new@PLT
	leaq	__func__.48(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1401, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L674
.L673:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L675
	leaq	.LC13(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L674
.L675:
	call	ERR_new@PLT
	leaq	__func__.48(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1401, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L674:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE805:
	.size	sm2_to_PrivateKeyInfo_pem_encode, .-sm2_to_PrivateKeyInfo_pem_encode
	.globl	ossl_sm2_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_sm2_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_sm2_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	sm2_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	sm2_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	sm2_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	sm2_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm2_to_SubjectPublicKeyInfo_der_import_object, @function
sm2_to_SubjectPublicKeyInfo_der_import_object:
.LFB806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE806:
	.size	sm2_to_SubjectPublicKeyInfo_der_import_object, .-sm2_to_SubjectPublicKeyInfo_der_import_object
	.type	sm2_to_SubjectPublicKeyInfo_der_free_object, @function
sm2_to_SubjectPublicKeyInfo_der_free_object:
.LFB807:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE807:
	.size	sm2_to_SubjectPublicKeyInfo_der_free_object, .-sm2_to_SubjectPublicKeyInfo_der_free_object
	.type	sm2_to_SubjectPublicKeyInfo_der_does_selection, @function
sm2_to_SubjectPublicKeyInfo_der_does_selection:
.LFB808:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE808:
	.size	sm2_to_SubjectPublicKeyInfo_der_does_selection, .-sm2_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC22:
	.string	"SM2 PUBLIC KEY"
	.text
	.type	sm2_to_SubjectPublicKeyInfo_der_encode, @function
sm2_to_SubjectPublicKeyInfo_der_encode:
.LFB809:
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
	cmpq	$0, -32(%rbp)
	je	.L682
	call	ERR_new@PLT
	leaq	__func__.47(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1402, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L683
.L682:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L684
	leaq	.LC22(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L683
.L684:
	call	ERR_new@PLT
	leaq	__func__.47(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1402, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L683:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE809:
	.size	sm2_to_SubjectPublicKeyInfo_der_encode, .-sm2_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_sm2_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_sm2_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_sm2_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	sm2_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	sm2_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	sm2_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	sm2_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm2_to_SubjectPublicKeyInfo_pem_import_object, @function
sm2_to_SubjectPublicKeyInfo_pem_import_object:
.LFB810:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE810:
	.size	sm2_to_SubjectPublicKeyInfo_pem_import_object, .-sm2_to_SubjectPublicKeyInfo_pem_import_object
	.type	sm2_to_SubjectPublicKeyInfo_pem_free_object, @function
sm2_to_SubjectPublicKeyInfo_pem_free_object:
.LFB811:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE811:
	.size	sm2_to_SubjectPublicKeyInfo_pem_free_object, .-sm2_to_SubjectPublicKeyInfo_pem_free_object
	.type	sm2_to_SubjectPublicKeyInfo_pem_does_selection, @function
sm2_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE812:
	.size	sm2_to_SubjectPublicKeyInfo_pem_does_selection, .-sm2_to_SubjectPublicKeyInfo_pem_does_selection
	.type	sm2_to_SubjectPublicKeyInfo_pem_encode, @function
sm2_to_SubjectPublicKeyInfo_pem_encode:
.LFB813:
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
	cmpq	$0, -32(%rbp)
	je	.L691
	call	ERR_new@PLT
	leaq	__func__.46(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1403, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L692
.L691:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L693
	leaq	.LC22(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ec_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L692
.L693:
	call	ERR_new@PLT
	leaq	__func__.46(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1403, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L692:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE813:
	.size	sm2_to_SubjectPublicKeyInfo_pem_encode, .-sm2_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_sm2_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_sm2_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_sm2_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	sm2_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	sm2_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	sm2_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	sm2_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed25519_to_EncryptedPrivateKeyInfo_der_import_object, @function
ed25519_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB814:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE814:
	.size	ed25519_to_EncryptedPrivateKeyInfo_der_import_object, .-ed25519_to_EncryptedPrivateKeyInfo_der_import_object
	.type	ed25519_to_EncryptedPrivateKeyInfo_der_free_object, @function
ed25519_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB815:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE815:
	.size	ed25519_to_EncryptedPrivateKeyInfo_der_free_object, .-ed25519_to_EncryptedPrivateKeyInfo_der_free_object
	.type	ed25519_to_EncryptedPrivateKeyInfo_der_does_selection, @function
ed25519_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB816:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE816:
	.size	ed25519_to_EncryptedPrivateKeyInfo_der_does_selection, .-ed25519_to_EncryptedPrivateKeyInfo_der_does_selection
	.section	.rodata
.LC23:
	.string	"ED25519 PRIVATE KEY"
	.text
	.type	ed25519_to_EncryptedPrivateKeyInfo_der_encode, @function
ed25519_to_EncryptedPrivateKeyInfo_der_encode:
.LFB817:
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
	cmpq	$0, -32(%rbp)
	je	.L700
	call	ERR_new@PLT
	leaq	__func__.45(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1406, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L701
.L700:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L702
	leaq	.LC23(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1087, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L701
.L702:
	call	ERR_new@PLT
	leaq	__func__.45(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1406, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L701:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE817:
	.size	ed25519_to_EncryptedPrivateKeyInfo_der_encode, .-ed25519_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_ed25519_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed25519_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_ed25519_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_ed25519_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed25519_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	ed25519_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	ed25519_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	ed25519_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed25519_to_EncryptedPrivateKeyInfo_pem_import_object, @function
ed25519_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB818:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	ed25519_to_EncryptedPrivateKeyInfo_pem_import_object, .-ed25519_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	ed25519_to_EncryptedPrivateKeyInfo_pem_free_object, @function
ed25519_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB819:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE819:
	.size	ed25519_to_EncryptedPrivateKeyInfo_pem_free_object, .-ed25519_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	ed25519_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
ed25519_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB820:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE820:
	.size	ed25519_to_EncryptedPrivateKeyInfo_pem_does_selection, .-ed25519_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	ed25519_to_EncryptedPrivateKeyInfo_pem_encode, @function
ed25519_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB821:
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
	cmpq	$0, -32(%rbp)
	je	.L709
	call	ERR_new@PLT
	leaq	__func__.44(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1407, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L710
.L709:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L711
	leaq	.LC23(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1087, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L710
.L711:
	call	ERR_new@PLT
	leaq	__func__.44(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1407, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L710:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE821:
	.size	ed25519_to_EncryptedPrivateKeyInfo_pem_encode, .-ed25519_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_ed25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_ed25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_ed25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed25519_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	ed25519_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	ed25519_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	ed25519_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed25519_to_PrivateKeyInfo_der_import_object, @function
ed25519_to_PrivateKeyInfo_der_import_object:
.LFB822:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE822:
	.size	ed25519_to_PrivateKeyInfo_der_import_object, .-ed25519_to_PrivateKeyInfo_der_import_object
	.type	ed25519_to_PrivateKeyInfo_der_free_object, @function
ed25519_to_PrivateKeyInfo_der_free_object:
.LFB823:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE823:
	.size	ed25519_to_PrivateKeyInfo_der_free_object, .-ed25519_to_PrivateKeyInfo_der_free_object
	.type	ed25519_to_PrivateKeyInfo_der_does_selection, @function
ed25519_to_PrivateKeyInfo_der_does_selection:
.LFB824:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	ed25519_to_PrivateKeyInfo_der_does_selection, .-ed25519_to_PrivateKeyInfo_der_does_selection
	.type	ed25519_to_PrivateKeyInfo_der_encode, @function
ed25519_to_PrivateKeyInfo_der_encode:
.LFB825:
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
	cmpq	$0, -32(%rbp)
	je	.L718
	call	ERR_new@PLT
	leaq	__func__.43(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1408, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L719
.L718:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L720
	leaq	.LC23(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1087, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L719
.L720:
	call	ERR_new@PLT
	leaq	__func__.43(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1408, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L719:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE825:
	.size	ed25519_to_PrivateKeyInfo_der_encode, .-ed25519_to_PrivateKeyInfo_der_encode
	.globl	ossl_ed25519_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed25519_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_ed25519_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_ed25519_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed25519_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	ed25519_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	ed25519_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	ed25519_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed25519_to_PrivateKeyInfo_pem_import_object, @function
ed25519_to_PrivateKeyInfo_pem_import_object:
.LFB826:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE826:
	.size	ed25519_to_PrivateKeyInfo_pem_import_object, .-ed25519_to_PrivateKeyInfo_pem_import_object
	.type	ed25519_to_PrivateKeyInfo_pem_free_object, @function
ed25519_to_PrivateKeyInfo_pem_free_object:
.LFB827:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE827:
	.size	ed25519_to_PrivateKeyInfo_pem_free_object, .-ed25519_to_PrivateKeyInfo_pem_free_object
	.type	ed25519_to_PrivateKeyInfo_pem_does_selection, @function
ed25519_to_PrivateKeyInfo_pem_does_selection:
.LFB828:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE828:
	.size	ed25519_to_PrivateKeyInfo_pem_does_selection, .-ed25519_to_PrivateKeyInfo_pem_does_selection
	.type	ed25519_to_PrivateKeyInfo_pem_encode, @function
ed25519_to_PrivateKeyInfo_pem_encode:
.LFB829:
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
	cmpq	$0, -32(%rbp)
	je	.L727
	call	ERR_new@PLT
	leaq	__func__.42(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1409, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L728
.L727:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L729
	leaq	.LC23(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1087, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L728
.L729:
	call	ERR_new@PLT
	leaq	__func__.42(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1409, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L728:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE829:
	.size	ed25519_to_PrivateKeyInfo_pem_encode, .-ed25519_to_PrivateKeyInfo_pem_encode
	.globl	ossl_ed25519_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed25519_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_ed25519_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_ed25519_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed25519_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	ed25519_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	ed25519_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	ed25519_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed25519_to_SubjectPublicKeyInfo_der_import_object, @function
ed25519_to_SubjectPublicKeyInfo_der_import_object:
.LFB830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	ed25519_to_SubjectPublicKeyInfo_der_import_object, .-ed25519_to_SubjectPublicKeyInfo_der_import_object
	.type	ed25519_to_SubjectPublicKeyInfo_der_free_object, @function
ed25519_to_SubjectPublicKeyInfo_der_free_object:
.LFB831:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE831:
	.size	ed25519_to_SubjectPublicKeyInfo_der_free_object, .-ed25519_to_SubjectPublicKeyInfo_der_free_object
	.type	ed25519_to_SubjectPublicKeyInfo_der_does_selection, @function
ed25519_to_SubjectPublicKeyInfo_der_does_selection:
.LFB832:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE832:
	.size	ed25519_to_SubjectPublicKeyInfo_der_does_selection, .-ed25519_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC24:
	.string	"ED25519 PUBLIC KEY"
	.text
	.type	ed25519_to_SubjectPublicKeyInfo_der_encode, @function
ed25519_to_SubjectPublicKeyInfo_der_encode:
.LFB833:
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
	cmpq	$0, -32(%rbp)
	je	.L736
	call	ERR_new@PLT
	leaq	__func__.41(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1410, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L737
.L736:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L738
	leaq	.LC24(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1087, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L737
.L738:
	call	ERR_new@PLT
	leaq	__func__.41(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1410, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L737:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE833:
	.size	ed25519_to_SubjectPublicKeyInfo_der_encode, .-ed25519_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_ed25519_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed25519_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_ed25519_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_ed25519_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed25519_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	ed25519_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	ed25519_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	ed25519_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed25519_to_SubjectPublicKeyInfo_pem_import_object, @function
ed25519_to_SubjectPublicKeyInfo_pem_import_object:
.LFB834:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE834:
	.size	ed25519_to_SubjectPublicKeyInfo_pem_import_object, .-ed25519_to_SubjectPublicKeyInfo_pem_import_object
	.type	ed25519_to_SubjectPublicKeyInfo_pem_free_object, @function
ed25519_to_SubjectPublicKeyInfo_pem_free_object:
.LFB835:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE835:
	.size	ed25519_to_SubjectPublicKeyInfo_pem_free_object, .-ed25519_to_SubjectPublicKeyInfo_pem_free_object
	.type	ed25519_to_SubjectPublicKeyInfo_pem_does_selection, @function
ed25519_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB836:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE836:
	.size	ed25519_to_SubjectPublicKeyInfo_pem_does_selection, .-ed25519_to_SubjectPublicKeyInfo_pem_does_selection
	.type	ed25519_to_SubjectPublicKeyInfo_pem_encode, @function
ed25519_to_SubjectPublicKeyInfo_pem_encode:
.LFB837:
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
	cmpq	$0, -32(%rbp)
	je	.L745
	call	ERR_new@PLT
	leaq	__func__.40(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1411, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L746
.L745:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L747
	leaq	.LC24(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1087, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L746
.L747:
	call	ERR_new@PLT
	leaq	__func__.40(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1411, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L746:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE837:
	.size	ed25519_to_SubjectPublicKeyInfo_pem_encode, .-ed25519_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_ed25519_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed25519_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_ed25519_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_ed25519_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed25519_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	ed25519_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	ed25519_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	ed25519_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed448_to_EncryptedPrivateKeyInfo_der_import_object, @function
ed448_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB838:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE838:
	.size	ed448_to_EncryptedPrivateKeyInfo_der_import_object, .-ed448_to_EncryptedPrivateKeyInfo_der_import_object
	.type	ed448_to_EncryptedPrivateKeyInfo_der_free_object, @function
ed448_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB839:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE839:
	.size	ed448_to_EncryptedPrivateKeyInfo_der_free_object, .-ed448_to_EncryptedPrivateKeyInfo_der_free_object
	.type	ed448_to_EncryptedPrivateKeyInfo_der_does_selection, @function
ed448_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB840:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE840:
	.size	ed448_to_EncryptedPrivateKeyInfo_der_does_selection, .-ed448_to_EncryptedPrivateKeyInfo_der_does_selection
	.section	.rodata
.LC25:
	.string	"ED448 PRIVATE KEY"
	.text
	.type	ed448_to_EncryptedPrivateKeyInfo_der_encode, @function
ed448_to_EncryptedPrivateKeyInfo_der_encode:
.LFB841:
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
	cmpq	$0, -32(%rbp)
	je	.L754
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1412, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L755
.L754:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L756
	leaq	.LC25(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1088, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L755
.L756:
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1412, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L755:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE841:
	.size	ed448_to_EncryptedPrivateKeyInfo_der_encode, .-ed448_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_ed448_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed448_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_ed448_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_ed448_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed448_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	ed448_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	ed448_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	ed448_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed448_to_EncryptedPrivateKeyInfo_pem_import_object, @function
ed448_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB842:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE842:
	.size	ed448_to_EncryptedPrivateKeyInfo_pem_import_object, .-ed448_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	ed448_to_EncryptedPrivateKeyInfo_pem_free_object, @function
ed448_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB843:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE843:
	.size	ed448_to_EncryptedPrivateKeyInfo_pem_free_object, .-ed448_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	ed448_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
ed448_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB844:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE844:
	.size	ed448_to_EncryptedPrivateKeyInfo_pem_does_selection, .-ed448_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	ed448_to_EncryptedPrivateKeyInfo_pem_encode, @function
ed448_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB845:
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
	cmpq	$0, -32(%rbp)
	je	.L763
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1413, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L764
.L763:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L765
	leaq	.LC25(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1088, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L764
.L765:
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1413, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L764:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE845:
	.size	ed448_to_EncryptedPrivateKeyInfo_pem_encode, .-ed448_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_ed448_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed448_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_ed448_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_ed448_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed448_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	ed448_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	ed448_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	ed448_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed448_to_PrivateKeyInfo_der_import_object, @function
ed448_to_PrivateKeyInfo_der_import_object:
.LFB846:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE846:
	.size	ed448_to_PrivateKeyInfo_der_import_object, .-ed448_to_PrivateKeyInfo_der_import_object
	.type	ed448_to_PrivateKeyInfo_der_free_object, @function
ed448_to_PrivateKeyInfo_der_free_object:
.LFB847:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE847:
	.size	ed448_to_PrivateKeyInfo_der_free_object, .-ed448_to_PrivateKeyInfo_der_free_object
	.type	ed448_to_PrivateKeyInfo_der_does_selection, @function
ed448_to_PrivateKeyInfo_der_does_selection:
.LFB848:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE848:
	.size	ed448_to_PrivateKeyInfo_der_does_selection, .-ed448_to_PrivateKeyInfo_der_does_selection
	.type	ed448_to_PrivateKeyInfo_der_encode, @function
ed448_to_PrivateKeyInfo_der_encode:
.LFB849:
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
	cmpq	$0, -32(%rbp)
	je	.L772
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1414, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L773
.L772:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L774
	leaq	.LC25(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1088, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L773
.L774:
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1414, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L773:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE849:
	.size	ed448_to_PrivateKeyInfo_der_encode, .-ed448_to_PrivateKeyInfo_der_encode
	.globl	ossl_ed448_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed448_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_ed448_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_ed448_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed448_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	ed448_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	ed448_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	ed448_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed448_to_PrivateKeyInfo_pem_import_object, @function
ed448_to_PrivateKeyInfo_pem_import_object:
.LFB850:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE850:
	.size	ed448_to_PrivateKeyInfo_pem_import_object, .-ed448_to_PrivateKeyInfo_pem_import_object
	.type	ed448_to_PrivateKeyInfo_pem_free_object, @function
ed448_to_PrivateKeyInfo_pem_free_object:
.LFB851:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE851:
	.size	ed448_to_PrivateKeyInfo_pem_free_object, .-ed448_to_PrivateKeyInfo_pem_free_object
	.type	ed448_to_PrivateKeyInfo_pem_does_selection, @function
ed448_to_PrivateKeyInfo_pem_does_selection:
.LFB852:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE852:
	.size	ed448_to_PrivateKeyInfo_pem_does_selection, .-ed448_to_PrivateKeyInfo_pem_does_selection
	.type	ed448_to_PrivateKeyInfo_pem_encode, @function
ed448_to_PrivateKeyInfo_pem_encode:
.LFB853:
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
	cmpq	$0, -32(%rbp)
	je	.L781
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1415, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L782
.L781:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L783
	leaq	.LC25(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1088, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L782
.L783:
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1415, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L782:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE853:
	.size	ed448_to_PrivateKeyInfo_pem_encode, .-ed448_to_PrivateKeyInfo_pem_encode
	.globl	ossl_ed448_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed448_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_ed448_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_ed448_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed448_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	ed448_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	ed448_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	ed448_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed448_to_SubjectPublicKeyInfo_der_import_object, @function
ed448_to_SubjectPublicKeyInfo_der_import_object:
.LFB854:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE854:
	.size	ed448_to_SubjectPublicKeyInfo_der_import_object, .-ed448_to_SubjectPublicKeyInfo_der_import_object
	.type	ed448_to_SubjectPublicKeyInfo_der_free_object, @function
ed448_to_SubjectPublicKeyInfo_der_free_object:
.LFB855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE855:
	.size	ed448_to_SubjectPublicKeyInfo_der_free_object, .-ed448_to_SubjectPublicKeyInfo_der_free_object
	.type	ed448_to_SubjectPublicKeyInfo_der_does_selection, @function
ed448_to_SubjectPublicKeyInfo_der_does_selection:
.LFB856:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE856:
	.size	ed448_to_SubjectPublicKeyInfo_der_does_selection, .-ed448_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC26:
	.string	"ED448 PUBLIC KEY"
	.text
	.type	ed448_to_SubjectPublicKeyInfo_der_encode, @function
ed448_to_SubjectPublicKeyInfo_der_encode:
.LFB857:
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
	cmpq	$0, -32(%rbp)
	je	.L790
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1416, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L791
.L790:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L792
	leaq	.LC26(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1088, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L791
.L792:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1416, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L791:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE857:
	.size	ed448_to_SubjectPublicKeyInfo_der_encode, .-ed448_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_ed448_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed448_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_ed448_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_ed448_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed448_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	ed448_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	ed448_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	ed448_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed448_to_SubjectPublicKeyInfo_pem_import_object, @function
ed448_to_SubjectPublicKeyInfo_pem_import_object:
.LFB858:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE858:
	.size	ed448_to_SubjectPublicKeyInfo_pem_import_object, .-ed448_to_SubjectPublicKeyInfo_pem_import_object
	.type	ed448_to_SubjectPublicKeyInfo_pem_free_object, @function
ed448_to_SubjectPublicKeyInfo_pem_free_object:
.LFB859:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE859:
	.size	ed448_to_SubjectPublicKeyInfo_pem_free_object, .-ed448_to_SubjectPublicKeyInfo_pem_free_object
	.type	ed448_to_SubjectPublicKeyInfo_pem_does_selection, @function
ed448_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB860:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE860:
	.size	ed448_to_SubjectPublicKeyInfo_pem_does_selection, .-ed448_to_SubjectPublicKeyInfo_pem_does_selection
	.type	ed448_to_SubjectPublicKeyInfo_pem_encode, @function
ed448_to_SubjectPublicKeyInfo_pem_encode:
.LFB861:
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
	cmpq	$0, -32(%rbp)
	je	.L799
	call	ERR_new@PLT
	leaq	__func__.34(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1417, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L800
.L799:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L801
	leaq	.LC26(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1088, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L800
.L801:
	call	ERR_new@PLT
	leaq	__func__.34(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1417, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L800:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	ed448_to_SubjectPublicKeyInfo_pem_encode, .-ed448_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_ed448_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed448_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_ed448_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_ed448_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ed448_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	ed448_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	ed448_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	ed448_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x25519_to_EncryptedPrivateKeyInfo_der_import_object, @function
x25519_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB862:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE862:
	.size	x25519_to_EncryptedPrivateKeyInfo_der_import_object, .-x25519_to_EncryptedPrivateKeyInfo_der_import_object
	.type	x25519_to_EncryptedPrivateKeyInfo_der_free_object, @function
x25519_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE863:
	.size	x25519_to_EncryptedPrivateKeyInfo_der_free_object, .-x25519_to_EncryptedPrivateKeyInfo_der_free_object
	.type	x25519_to_EncryptedPrivateKeyInfo_der_does_selection, @function
x25519_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB864:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE864:
	.size	x25519_to_EncryptedPrivateKeyInfo_der_does_selection, .-x25519_to_EncryptedPrivateKeyInfo_der_does_selection
	.section	.rodata
.LC27:
	.string	"X25519 PRIVATE KEY"
	.text
	.type	x25519_to_EncryptedPrivateKeyInfo_der_encode, @function
x25519_to_EncryptedPrivateKeyInfo_der_encode:
.LFB865:
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
	cmpq	$0, -32(%rbp)
	je	.L808
	call	ERR_new@PLT
	leaq	__func__.33(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1418, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L809
.L808:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L810
	leaq	.LC27(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1034, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L809
.L810:
	call	ERR_new@PLT
	leaq	__func__.33(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1418, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L809:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE865:
	.size	x25519_to_EncryptedPrivateKeyInfo_der_encode, .-x25519_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_x25519_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x25519_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_x25519_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_x25519_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x25519_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	x25519_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	x25519_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	x25519_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x25519_to_EncryptedPrivateKeyInfo_pem_import_object, @function
x25519_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB866:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	x25519_to_EncryptedPrivateKeyInfo_pem_import_object, .-x25519_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	x25519_to_EncryptedPrivateKeyInfo_pem_free_object, @function
x25519_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	x25519_to_EncryptedPrivateKeyInfo_pem_free_object, .-x25519_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	x25519_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
x25519_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB868:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	x25519_to_EncryptedPrivateKeyInfo_pem_does_selection, .-x25519_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	x25519_to_EncryptedPrivateKeyInfo_pem_encode, @function
x25519_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB869:
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
	cmpq	$0, -32(%rbp)
	je	.L817
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1419, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L818
.L817:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L819
	leaq	.LC27(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1034, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L818
.L819:
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1419, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L818:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE869:
	.size	x25519_to_EncryptedPrivateKeyInfo_pem_encode, .-x25519_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_x25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_x25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_x25519_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x25519_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	x25519_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	x25519_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	x25519_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x25519_to_PrivateKeyInfo_der_import_object, @function
x25519_to_PrivateKeyInfo_der_import_object:
.LFB870:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	x25519_to_PrivateKeyInfo_der_import_object, .-x25519_to_PrivateKeyInfo_der_import_object
	.type	x25519_to_PrivateKeyInfo_der_free_object, @function
x25519_to_PrivateKeyInfo_der_free_object:
.LFB871:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	x25519_to_PrivateKeyInfo_der_free_object, .-x25519_to_PrivateKeyInfo_der_free_object
	.type	x25519_to_PrivateKeyInfo_der_does_selection, @function
x25519_to_PrivateKeyInfo_der_does_selection:
.LFB872:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE872:
	.size	x25519_to_PrivateKeyInfo_der_does_selection, .-x25519_to_PrivateKeyInfo_der_does_selection
	.type	x25519_to_PrivateKeyInfo_der_encode, @function
x25519_to_PrivateKeyInfo_der_encode:
.LFB873:
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
	cmpq	$0, -32(%rbp)
	je	.L826
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1420, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L827
.L826:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L828
	leaq	.LC27(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1034, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L827
.L828:
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1420, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L827:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE873:
	.size	x25519_to_PrivateKeyInfo_der_encode, .-x25519_to_PrivateKeyInfo_der_encode
	.globl	ossl_x25519_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x25519_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_x25519_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_x25519_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x25519_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	x25519_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	x25519_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	x25519_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x25519_to_PrivateKeyInfo_pem_import_object, @function
x25519_to_PrivateKeyInfo_pem_import_object:
.LFB874:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE874:
	.size	x25519_to_PrivateKeyInfo_pem_import_object, .-x25519_to_PrivateKeyInfo_pem_import_object
	.type	x25519_to_PrivateKeyInfo_pem_free_object, @function
x25519_to_PrivateKeyInfo_pem_free_object:
.LFB875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE875:
	.size	x25519_to_PrivateKeyInfo_pem_free_object, .-x25519_to_PrivateKeyInfo_pem_free_object
	.type	x25519_to_PrivateKeyInfo_pem_does_selection, @function
x25519_to_PrivateKeyInfo_pem_does_selection:
.LFB876:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE876:
	.size	x25519_to_PrivateKeyInfo_pem_does_selection, .-x25519_to_PrivateKeyInfo_pem_does_selection
	.type	x25519_to_PrivateKeyInfo_pem_encode, @function
x25519_to_PrivateKeyInfo_pem_encode:
.LFB877:
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
	cmpq	$0, -32(%rbp)
	je	.L835
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1421, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L836
.L835:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L837
	leaq	.LC27(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1034, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L836
.L837:
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1421, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L836:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE877:
	.size	x25519_to_PrivateKeyInfo_pem_encode, .-x25519_to_PrivateKeyInfo_pem_encode
	.globl	ossl_x25519_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x25519_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_x25519_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_x25519_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x25519_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	x25519_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	x25519_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	x25519_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x25519_to_SubjectPublicKeyInfo_der_import_object, @function
x25519_to_SubjectPublicKeyInfo_der_import_object:
.LFB878:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE878:
	.size	x25519_to_SubjectPublicKeyInfo_der_import_object, .-x25519_to_SubjectPublicKeyInfo_der_import_object
	.type	x25519_to_SubjectPublicKeyInfo_der_free_object, @function
x25519_to_SubjectPublicKeyInfo_der_free_object:
.LFB879:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE879:
	.size	x25519_to_SubjectPublicKeyInfo_der_free_object, .-x25519_to_SubjectPublicKeyInfo_der_free_object
	.type	x25519_to_SubjectPublicKeyInfo_der_does_selection, @function
x25519_to_SubjectPublicKeyInfo_der_does_selection:
.LFB880:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE880:
	.size	x25519_to_SubjectPublicKeyInfo_der_does_selection, .-x25519_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC28:
	.string	"X25519 PUBLIC KEY"
	.text
	.type	x25519_to_SubjectPublicKeyInfo_der_encode, @function
x25519_to_SubjectPublicKeyInfo_der_encode:
.LFB881:
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
	cmpq	$0, -32(%rbp)
	je	.L844
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1422, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L845
.L844:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L846
	leaq	.LC28(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1034, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L845
.L846:
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1422, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L845:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE881:
	.size	x25519_to_SubjectPublicKeyInfo_der_encode, .-x25519_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_x25519_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x25519_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_x25519_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_x25519_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x25519_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	x25519_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	x25519_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	x25519_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x25519_to_SubjectPublicKeyInfo_pem_import_object, @function
x25519_to_SubjectPublicKeyInfo_pem_import_object:
.LFB882:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE882:
	.size	x25519_to_SubjectPublicKeyInfo_pem_import_object, .-x25519_to_SubjectPublicKeyInfo_pem_import_object
	.type	x25519_to_SubjectPublicKeyInfo_pem_free_object, @function
x25519_to_SubjectPublicKeyInfo_pem_free_object:
.LFB883:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE883:
	.size	x25519_to_SubjectPublicKeyInfo_pem_free_object, .-x25519_to_SubjectPublicKeyInfo_pem_free_object
	.type	x25519_to_SubjectPublicKeyInfo_pem_does_selection, @function
x25519_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB884:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE884:
	.size	x25519_to_SubjectPublicKeyInfo_pem_does_selection, .-x25519_to_SubjectPublicKeyInfo_pem_does_selection
	.type	x25519_to_SubjectPublicKeyInfo_pem_encode, @function
x25519_to_SubjectPublicKeyInfo_pem_encode:
.LFB885:
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
	cmpq	$0, -32(%rbp)
	je	.L853
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1423, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L854
.L853:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L855
	leaq	.LC28(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1034, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L854
.L855:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1423, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L854:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE885:
	.size	x25519_to_SubjectPublicKeyInfo_pem_encode, .-x25519_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_x25519_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x25519_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_x25519_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_x25519_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x25519_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	x25519_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	x25519_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	x25519_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x448_to_EncryptedPrivateKeyInfo_der_import_object, @function
x448_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB886:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE886:
	.size	x448_to_EncryptedPrivateKeyInfo_der_import_object, .-x448_to_EncryptedPrivateKeyInfo_der_import_object
	.type	x448_to_EncryptedPrivateKeyInfo_der_free_object, @function
x448_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB887:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE887:
	.size	x448_to_EncryptedPrivateKeyInfo_der_free_object, .-x448_to_EncryptedPrivateKeyInfo_der_free_object
	.type	x448_to_EncryptedPrivateKeyInfo_der_does_selection, @function
x448_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB888:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE888:
	.size	x448_to_EncryptedPrivateKeyInfo_der_does_selection, .-x448_to_EncryptedPrivateKeyInfo_der_does_selection
	.section	.rodata
.LC29:
	.string	"X448 PRIVATE KEY"
	.text
	.type	x448_to_EncryptedPrivateKeyInfo_der_encode, @function
x448_to_EncryptedPrivateKeyInfo_der_encode:
.LFB889:
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
	cmpq	$0, -32(%rbp)
	je	.L862
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L863
.L862:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L864
	leaq	.LC29(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1035, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L863
.L864:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L863:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE889:
	.size	x448_to_EncryptedPrivateKeyInfo_der_encode, .-x448_to_EncryptedPrivateKeyInfo_der_encode
	.globl	ossl_x448_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x448_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_x448_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
ossl_x448_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x448_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	x448_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	x448_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	x448_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x448_to_EncryptedPrivateKeyInfo_pem_import_object, @function
x448_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB890:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE890:
	.size	x448_to_EncryptedPrivateKeyInfo_pem_import_object, .-x448_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	x448_to_EncryptedPrivateKeyInfo_pem_free_object, @function
x448_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB891:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE891:
	.size	x448_to_EncryptedPrivateKeyInfo_pem_free_object, .-x448_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	x448_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
x448_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB892:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE892:
	.size	x448_to_EncryptedPrivateKeyInfo_pem_does_selection, .-x448_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	x448_to_EncryptedPrivateKeyInfo_pem_encode, @function
x448_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB893:
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
	cmpq	$0, -32(%rbp)
	je	.L871
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L872
.L871:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L873
	leaq	.LC29(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_epki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1035, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L872
.L873:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L872:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE893:
	.size	x448_to_EncryptedPrivateKeyInfo_pem_encode, .-x448_to_EncryptedPrivateKeyInfo_pem_encode
	.globl	ossl_x448_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x448_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_x448_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
ossl_x448_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x448_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	x448_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	x448_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	x448_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x448_to_PrivateKeyInfo_der_import_object, @function
x448_to_PrivateKeyInfo_der_import_object:
.LFB894:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE894:
	.size	x448_to_PrivateKeyInfo_der_import_object, .-x448_to_PrivateKeyInfo_der_import_object
	.type	x448_to_PrivateKeyInfo_der_free_object, @function
x448_to_PrivateKeyInfo_der_free_object:
.LFB895:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE895:
	.size	x448_to_PrivateKeyInfo_der_free_object, .-x448_to_PrivateKeyInfo_der_free_object
	.type	x448_to_PrivateKeyInfo_der_does_selection, @function
x448_to_PrivateKeyInfo_der_does_selection:
.LFB896:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE896:
	.size	x448_to_PrivateKeyInfo_der_does_selection, .-x448_to_PrivateKeyInfo_der_does_selection
	.type	x448_to_PrivateKeyInfo_der_encode, @function
x448_to_PrivateKeyInfo_der_encode:
.LFB897:
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
	cmpq	$0, -32(%rbp)
	je	.L880
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1426, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L881
.L880:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L882
	leaq	.LC29(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_der_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1035, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L881
.L882:
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1426, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L881:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE897:
	.size	x448_to_PrivateKeyInfo_der_encode, .-x448_to_PrivateKeyInfo_der_encode
	.globl	ossl_x448_to_PrivateKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x448_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	ossl_x448_to_PrivateKeyInfo_der_encoder_functions, 144
ossl_x448_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x448_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	x448_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	x448_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	x448_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x448_to_PrivateKeyInfo_pem_import_object, @function
x448_to_PrivateKeyInfo_pem_import_object:
.LFB898:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE898:
	.size	x448_to_PrivateKeyInfo_pem_import_object, .-x448_to_PrivateKeyInfo_pem_import_object
	.type	x448_to_PrivateKeyInfo_pem_free_object, @function
x448_to_PrivateKeyInfo_pem_free_object:
.LFB899:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE899:
	.size	x448_to_PrivateKeyInfo_pem_free_object, .-x448_to_PrivateKeyInfo_pem_free_object
	.type	x448_to_PrivateKeyInfo_pem_does_selection, @function
x448_to_PrivateKeyInfo_pem_does_selection:
.LFB900:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE900:
	.size	x448_to_PrivateKeyInfo_pem_does_selection, .-x448_to_PrivateKeyInfo_pem_does_selection
	.type	x448_to_PrivateKeyInfo_pem_encode, @function
x448_to_PrivateKeyInfo_pem_encode:
.LFB901:
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
	cmpq	$0, -32(%rbp)
	je	.L889
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1427, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L890
.L889:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L891
	leaq	.LC29(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_pki_priv_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_pki_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1035, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L890
.L891:
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1427, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L890:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE901:
	.size	x448_to_PrivateKeyInfo_pem_encode, .-x448_to_PrivateKeyInfo_pem_encode
	.globl	ossl_x448_to_PrivateKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x448_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	ossl_x448_to_PrivateKeyInfo_pem_encoder_functions, 144
ossl_x448_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x448_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	x448_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	x448_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	x448_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x448_to_SubjectPublicKeyInfo_der_import_object, @function
x448_to_SubjectPublicKeyInfo_der_import_object:
.LFB902:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE902:
	.size	x448_to_SubjectPublicKeyInfo_der_import_object, .-x448_to_SubjectPublicKeyInfo_der_import_object
	.type	x448_to_SubjectPublicKeyInfo_der_free_object, @function
x448_to_SubjectPublicKeyInfo_der_free_object:
.LFB903:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE903:
	.size	x448_to_SubjectPublicKeyInfo_der_free_object, .-x448_to_SubjectPublicKeyInfo_der_free_object
	.type	x448_to_SubjectPublicKeyInfo_der_does_selection, @function
x448_to_SubjectPublicKeyInfo_der_does_selection:
.LFB904:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE904:
	.size	x448_to_SubjectPublicKeyInfo_der_does_selection, .-x448_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC30:
	.string	"X448 PUBLIC KEY"
	.text
	.type	x448_to_SubjectPublicKeyInfo_der_encode, @function
x448_to_SubjectPublicKeyInfo_der_encode:
.LFB905:
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
	cmpq	$0, -32(%rbp)
	je	.L898
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1428, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L899
.L898:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L900
	leaq	.LC30(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_der_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1035, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L899
.L900:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1428, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L899:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE905:
	.size	x448_to_SubjectPublicKeyInfo_der_encode, .-x448_to_SubjectPublicKeyInfo_der_encode
	.globl	ossl_x448_to_SubjectPublicKeyInfo_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x448_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	ossl_x448_to_SubjectPublicKeyInfo_der_encoder_functions, 144
ossl_x448_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x448_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	x448_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	x448_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	x448_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x448_to_SubjectPublicKeyInfo_pem_import_object, @function
x448_to_SubjectPublicKeyInfo_pem_import_object:
.LFB906:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE906:
	.size	x448_to_SubjectPublicKeyInfo_pem_import_object, .-x448_to_SubjectPublicKeyInfo_pem_import_object
	.type	x448_to_SubjectPublicKeyInfo_pem_free_object, @function
x448_to_SubjectPublicKeyInfo_pem_free_object:
.LFB907:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE907:
	.size	x448_to_SubjectPublicKeyInfo_pem_free_object, .-x448_to_SubjectPublicKeyInfo_pem_free_object
	.type	x448_to_SubjectPublicKeyInfo_pem_does_selection, @function
x448_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB908:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE908:
	.size	x448_to_SubjectPublicKeyInfo_pem_does_selection, .-x448_to_SubjectPublicKeyInfo_pem_does_selection
	.type	x448_to_SubjectPublicKeyInfo_pem_encode, @function
x448_to_SubjectPublicKeyInfo_pem_encode:
.LFB909:
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
	cmpq	$0, -32(%rbp)
	je	.L907
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L908
.L907:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L909
	leaq	.LC30(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	ecx_spki_pub_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_spki_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$1035, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L908
.L909:
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L908:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE909:
	.size	x448_to_SubjectPublicKeyInfo_pem_encode, .-x448_to_SubjectPublicKeyInfo_pem_encode
	.globl	ossl_x448_to_SubjectPublicKeyInfo_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x448_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	ossl_x448_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
ossl_x448_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	x448_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	x448_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	x448_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	x448_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_RSA_der_import_object, @function
rsa_to_RSA_der_import_object:
.LFB910:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE910:
	.size	rsa_to_RSA_der_import_object, .-rsa_to_RSA_der_import_object
	.type	rsa_to_RSA_der_free_object, @function
rsa_to_RSA_der_free_object:
.LFB911:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE911:
	.size	rsa_to_RSA_der_free_object, .-rsa_to_RSA_der_free_object
	.type	rsa_to_RSA_der_does_selection, @function
rsa_to_RSA_der_does_selection:
.LFB912:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE912:
	.size	rsa_to_RSA_der_does_selection, .-rsa_to_RSA_der_does_selection
	.type	rsa_to_RSA_der_encode, @function
rsa_to_RSA_der_encode:
.LFB913:
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
	cmpq	$0, -32(%rbp)
	je	.L916
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1441, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L917
.L916:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L918
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L917
.L918:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L919
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC5(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L917
.L919:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1441, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L917:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE913:
	.size	rsa_to_RSA_der_encode, .-rsa_to_RSA_der_encode
	.globl	ossl_rsa_to_RSA_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_RSA_der_encoder_functions, @object
	.size	ossl_rsa_to_RSA_der_encoder_functions, 144
ossl_rsa_to_RSA_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_RSA_der_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_RSA_der_import_object
	.long	21
	.zero	4
	.quad	rsa_to_RSA_der_free_object
	.long	11
	.zero	4
	.quad	rsa_to_RSA_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_RSA_pem_import_object, @function
rsa_to_RSA_pem_import_object:
.LFB914:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE914:
	.size	rsa_to_RSA_pem_import_object, .-rsa_to_RSA_pem_import_object
	.type	rsa_to_RSA_pem_free_object, @function
rsa_to_RSA_pem_free_object:
.LFB915:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE915:
	.size	rsa_to_RSA_pem_free_object, .-rsa_to_RSA_pem_free_object
	.type	rsa_to_RSA_pem_does_selection, @function
rsa_to_RSA_pem_does_selection:
.LFB916:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE916:
	.size	rsa_to_RSA_pem_does_selection, .-rsa_to_RSA_pem_does_selection
	.type	rsa_to_RSA_pem_encode, @function
rsa_to_RSA_pem_encode:
.LFB917:
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
	cmpq	$0, -32(%rbp)
	je	.L926
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1442, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L927
.L926:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L928
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L927
.L928:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L929
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC5(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L927
.L929:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1442, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L927:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE917:
	.size	rsa_to_RSA_pem_encode, .-rsa_to_RSA_pem_encode
	.globl	ossl_rsa_to_RSA_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_RSA_pem_encoder_functions, @object
	.size	ossl_rsa_to_RSA_pem_encoder_functions, 144
ossl_rsa_to_RSA_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_RSA_pem_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_RSA_pem_import_object
	.long	21
	.zero	4
	.quad	rsa_to_RSA_pem_free_object
	.long	11
	.zero	4
	.quad	rsa_to_RSA_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_DH_der_import_object, @function
dh_to_DH_der_import_object:
.LFB918:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE918:
	.size	dh_to_DH_der_import_object, .-dh_to_DH_der_import_object
	.type	dh_to_DH_der_free_object, @function
dh_to_DH_der_free_object:
.LFB919:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE919:
	.size	dh_to_DH_der_free_object, .-dh_to_DH_der_free_object
	.type	dh_to_DH_der_does_selection, @function
dh_to_DH_der_does_selection:
.LFB920:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE920:
	.size	dh_to_DH_der_does_selection, .-dh_to_DH_der_does_selection
	.type	dh_to_DH_der_encode, @function
dh_to_DH_der_encode:
.LFB921:
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
	cmpq	$0, -32(%rbp)
	je	.L936
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1444, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L937
.L936:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L938
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC6(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L937
.L938:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1444, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L937:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE921:
	.size	dh_to_DH_der_encode, .-dh_to_DH_der_encode
	.globl	ossl_dh_to_DH_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_DH_der_encoder_functions, @object
	.size	ossl_dh_to_DH_der_encoder_functions, 144
ossl_dh_to_DH_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_DH_der_does_selection
	.long	20
	.zero	4
	.quad	dh_to_DH_der_import_object
	.long	21
	.zero	4
	.quad	dh_to_DH_der_free_object
	.long	11
	.zero	4
	.quad	dh_to_DH_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_DH_pem_import_object, @function
dh_to_DH_pem_import_object:
.LFB922:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE922:
	.size	dh_to_DH_pem_import_object, .-dh_to_DH_pem_import_object
	.type	dh_to_DH_pem_free_object, @function
dh_to_DH_pem_free_object:
.LFB923:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE923:
	.size	dh_to_DH_pem_free_object, .-dh_to_DH_pem_free_object
	.type	dh_to_DH_pem_does_selection, @function
dh_to_DH_pem_does_selection:
.LFB924:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE924:
	.size	dh_to_DH_pem_does_selection, .-dh_to_DH_pem_does_selection
	.type	dh_to_DH_pem_encode, @function
dh_to_DH_pem_encode:
.LFB925:
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
	cmpq	$0, -32(%rbp)
	je	.L945
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1445, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L946
.L945:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L947
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC6(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L946
.L947:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1445, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L946:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE925:
	.size	dh_to_DH_pem_encode, .-dh_to_DH_pem_encode
	.globl	ossl_dh_to_DH_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_DH_pem_encoder_functions, @object
	.size	ossl_dh_to_DH_pem_encoder_functions, 144
ossl_dh_to_DH_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_DH_pem_does_selection
	.long	20
	.zero	4
	.quad	dh_to_DH_pem_import_object
	.long	21
	.zero	4
	.quad	dh_to_DH_pem_free_object
	.long	11
	.zero	4
	.quad	dh_to_DH_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_DHX_der_import_object, @function
dhx_to_DHX_der_import_object:
.LFB926:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE926:
	.size	dhx_to_DHX_der_import_object, .-dhx_to_DHX_der_import_object
	.type	dhx_to_DHX_der_free_object, @function
dhx_to_DHX_der_free_object:
.LFB927:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE927:
	.size	dhx_to_DHX_der_free_object, .-dhx_to_DHX_der_free_object
	.type	dhx_to_DHX_der_does_selection, @function
dhx_to_DHX_der_does_selection:
.LFB928:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE928:
	.size	dhx_to_DHX_der_does_selection, .-dhx_to_DHX_der_does_selection
	.type	dhx_to_DHX_der_encode, @function
dhx_to_DHX_der_encode:
.LFB929:
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
	cmpq	$0, -32(%rbp)
	je	.L954
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1446, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L955
.L954:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L956
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC7(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L955
.L956:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1446, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L955:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE929:
	.size	dhx_to_DHX_der_encode, .-dhx_to_DHX_der_encode
	.globl	ossl_dhx_to_DHX_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_DHX_der_encoder_functions, @object
	.size	ossl_dhx_to_DHX_der_encoder_functions, 144
ossl_dhx_to_DHX_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_DHX_der_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_DHX_der_import_object
	.long	21
	.zero	4
	.quad	dhx_to_DHX_der_free_object
	.long	11
	.zero	4
	.quad	dhx_to_DHX_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_DHX_pem_import_object, @function
dhx_to_DHX_pem_import_object:
.LFB930:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE930:
	.size	dhx_to_DHX_pem_import_object, .-dhx_to_DHX_pem_import_object
	.type	dhx_to_DHX_pem_free_object, @function
dhx_to_DHX_pem_free_object:
.LFB931:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE931:
	.size	dhx_to_DHX_pem_free_object, .-dhx_to_DHX_pem_free_object
	.type	dhx_to_DHX_pem_does_selection, @function
dhx_to_DHX_pem_does_selection:
.LFB932:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE932:
	.size	dhx_to_DHX_pem_does_selection, .-dhx_to_DHX_pem_does_selection
	.type	dhx_to_DHX_pem_encode, @function
dhx_to_DHX_pem_encode:
.LFB933:
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
	cmpq	$0, -32(%rbp)
	je	.L963
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1447, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L964
.L963:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L965
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC7(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L964
.L965:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1447, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L964:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE933:
	.size	dhx_to_DHX_pem_encode, .-dhx_to_DHX_pem_encode
	.globl	ossl_dhx_to_DHX_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_DHX_pem_encoder_functions, @object
	.size	ossl_dhx_to_DHX_pem_encoder_functions, 144
ossl_dhx_to_DHX_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_DHX_pem_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_DHX_pem_import_object
	.long	21
	.zero	4
	.quad	dhx_to_DHX_pem_free_object
	.long	11
	.zero	4
	.quad	dhx_to_DHX_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa_to_DSA_der_import_object, @function
dsa_to_DSA_der_import_object:
.LFB934:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE934:
	.size	dsa_to_DSA_der_import_object, .-dsa_to_DSA_der_import_object
	.type	dsa_to_DSA_der_free_object, @function
dsa_to_DSA_der_free_object:
.LFB935:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE935:
	.size	dsa_to_DSA_der_free_object, .-dsa_to_DSA_der_free_object
	.type	dsa_to_DSA_der_does_selection, @function
dsa_to_DSA_der_does_selection:
.LFB936:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$135, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE936:
	.size	dsa_to_DSA_der_does_selection, .-dsa_to_DSA_der_does_selection
	.type	dsa_to_DSA_der_encode, @function
dsa_to_DSA_der_encode:
.LFB937:
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
	cmpq	$0, -32(%rbp)
	je	.L972
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1450, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L973
.L972:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L974
	leaq	.LC8(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L973
.L974:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L975
	leaq	.LC9(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L973
.L975:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L976
	leaq	.LC10(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAparams@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L973
.L976:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1450, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L973:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE937:
	.size	dsa_to_DSA_der_encode, .-dsa_to_DSA_der_encode
	.globl	ossl_dsa_to_DSA_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_DSA_der_encoder_functions, @object
	.size	ossl_dsa_to_DSA_der_encoder_functions, 144
ossl_dsa_to_DSA_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dsa_to_DSA_der_does_selection
	.long	20
	.zero	4
	.quad	dsa_to_DSA_der_import_object
	.long	21
	.zero	4
	.quad	dsa_to_DSA_der_free_object
	.long	11
	.zero	4
	.quad	dsa_to_DSA_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa_to_DSA_pem_import_object, @function
dsa_to_DSA_pem_import_object:
.LFB938:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE938:
	.size	dsa_to_DSA_pem_import_object, .-dsa_to_DSA_pem_import_object
	.type	dsa_to_DSA_pem_free_object, @function
dsa_to_DSA_pem_free_object:
.LFB939:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE939:
	.size	dsa_to_DSA_pem_free_object, .-dsa_to_DSA_pem_free_object
	.type	dsa_to_DSA_pem_does_selection, @function
dsa_to_DSA_pem_does_selection:
.LFB940:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$135, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE940:
	.size	dsa_to_DSA_pem_does_selection, .-dsa_to_DSA_pem_does_selection
	.type	dsa_to_DSA_pem_encode, @function
dsa_to_DSA_pem_encode:
.LFB941:
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
	cmpq	$0, -32(%rbp)
	je	.L983
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1451, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L984
.L983:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L985
	leaq	.LC8(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L984
.L985:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L986
	leaq	.LC9(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_dsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L984
.L986:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L987
	leaq	.LC10(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_DSAparams@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$116, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L984
.L987:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1451, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L984:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE941:
	.size	dsa_to_DSA_pem_encode, .-dsa_to_DSA_pem_encode
	.globl	ossl_dsa_to_DSA_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_DSA_pem_encoder_functions, @object
	.size	ossl_dsa_to_DSA_pem_encoder_functions, 144
ossl_dsa_to_DSA_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dsa_to_DSA_pem_does_selection
	.long	20
	.zero	4
	.quad	dsa_to_DSA_pem_import_object
	.long	21
	.zero	4
	.quad	dsa_to_DSA_pem_free_object
	.long	11
	.zero	4
	.quad	dsa_to_DSA_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_EC_der_import_object, @function
ec_to_EC_der_import_object:
.LFB942:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE942:
	.size	ec_to_EC_der_import_object, .-ec_to_EC_der_import_object
	.type	ec_to_EC_der_free_object, @function
ec_to_EC_der_free_object:
.LFB943:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE943:
	.size	ec_to_EC_der_free_object, .-ec_to_EC_der_free_object
	.type	ec_to_EC_der_does_selection, @function
ec_to_EC_der_does_selection:
.LFB944:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$133, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE944:
	.size	ec_to_EC_der_does_selection, .-ec_to_EC_der_does_selection
	.type	ec_to_EC_der_encode, @function
ec_to_EC_der_encode:
.LFB945:
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
	cmpq	$0, -32(%rbp)
	je	.L994
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L995
.L994:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L996
	leaq	.LC11(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L995
.L996:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L997
	leaq	.LC12(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECParameters@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L995
.L997:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L995:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE945:
	.size	ec_to_EC_der_encode, .-ec_to_EC_der_encode
	.globl	ossl_ec_to_EC_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_EC_der_encoder_functions, @object
	.size	ossl_ec_to_EC_der_encoder_functions, 144
ossl_ec_to_EC_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_EC_der_does_selection
	.long	20
	.zero	4
	.quad	ec_to_EC_der_import_object
	.long	21
	.zero	4
	.quad	ec_to_EC_der_free_object
	.long	11
	.zero	4
	.quad	ec_to_EC_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_EC_pem_import_object, @function
ec_to_EC_pem_import_object:
.LFB946:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE946:
	.size	ec_to_EC_pem_import_object, .-ec_to_EC_pem_import_object
	.type	ec_to_EC_pem_free_object, @function
ec_to_EC_pem_free_object:
.LFB947:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE947:
	.size	ec_to_EC_pem_free_object, .-ec_to_EC_pem_free_object
	.type	ec_to_EC_pem_does_selection, @function
ec_to_EC_pem_does_selection:
.LFB948:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$133, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE948:
	.size	ec_to_EC_pem_does_selection, .-ec_to_EC_pem_does_selection
	.type	ec_to_EC_pem_encode, @function
ec_to_EC_pem_encode:
.LFB949:
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
	cmpq	$0, -32(%rbp)
	je	.L1004
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1455, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1005
.L1004:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1006
	leaq	.LC11(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1005
.L1006:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L1007
	leaq	.LC12(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECParameters@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1005
.L1007:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1455, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1005:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE949:
	.size	ec_to_EC_pem_encode, .-ec_to_EC_pem_encode
	.globl	ossl_ec_to_EC_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_EC_pem_encoder_functions, @object
	.size	ossl_ec_to_EC_pem_encoder_functions, 144
ossl_ec_to_EC_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_EC_pem_does_selection
	.long	20
	.zero	4
	.quad	ec_to_EC_pem_import_object
	.long	21
	.zero	4
	.quad	ec_to_EC_pem_free_object
	.long	11
	.zero	4
	.quad	ec_to_EC_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm2_to_SM2_der_import_object, @function
sm2_to_SM2_der_import_object:
.LFB950:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE950:
	.size	sm2_to_SM2_der_import_object, .-sm2_to_SM2_der_import_object
	.type	sm2_to_SM2_der_free_object, @function
sm2_to_SM2_der_free_object:
.LFB951:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE951:
	.size	sm2_to_SM2_der_free_object, .-sm2_to_SM2_der_free_object
	.type	sm2_to_SM2_der_does_selection, @function
sm2_to_SM2_der_does_selection:
.LFB952:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$133, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE952:
	.size	sm2_to_SM2_der_does_selection, .-sm2_to_SM2_der_does_selection
	.type	sm2_to_SM2_der_encode, @function
sm2_to_SM2_der_encode:
.LFB953:
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
	cmpq	$0, -32(%rbp)
	je	.L1014
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1457, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1015
.L1014:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1016
	leaq	.LC13(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1015
.L1016:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L1017
	leaq	.LC14(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECParameters@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1015
.L1017:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1457, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1015:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE953:
	.size	sm2_to_SM2_der_encode, .-sm2_to_SM2_der_encode
	.globl	ossl_sm2_to_SM2_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_SM2_der_encoder_functions, @object
	.size	ossl_sm2_to_SM2_der_encoder_functions, 144
ossl_sm2_to_SM2_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	sm2_to_SM2_der_does_selection
	.long	20
	.zero	4
	.quad	sm2_to_SM2_der_import_object
	.long	21
	.zero	4
	.quad	sm2_to_SM2_der_free_object
	.long	11
	.zero	4
	.quad	sm2_to_SM2_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm2_to_SM2_pem_import_object, @function
sm2_to_SM2_pem_import_object:
.LFB954:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE954:
	.size	sm2_to_SM2_pem_import_object, .-sm2_to_SM2_pem_import_object
	.type	sm2_to_SM2_pem_free_object, @function
sm2_to_SM2_pem_free_object:
.LFB955:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE955:
	.size	sm2_to_SM2_pem_free_object, .-sm2_to_SM2_pem_free_object
	.type	sm2_to_SM2_pem_does_selection, @function
sm2_to_SM2_pem_does_selection:
.LFB956:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$133, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE956:
	.size	sm2_to_SM2_pem_does_selection, .-sm2_to_SM2_pem_does_selection
	.type	sm2_to_SM2_pem_encode, @function
sm2_to_SM2_pem_encode:
.LFB957:
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
	cmpq	$0, -32(%rbp)
	je	.L1024
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1458, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1025
.L1024:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1026
	leaq	.LC13(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1025
.L1026:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L1027
	leaq	.LC14(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECParameters@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1025
.L1027:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1458, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1025:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE957:
	.size	sm2_to_SM2_pem_encode, .-sm2_to_SM2_pem_encode
	.globl	ossl_sm2_to_SM2_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_SM2_pem_encoder_functions, @object
	.size	ossl_sm2_to_SM2_pem_encoder_functions, 144
ossl_sm2_to_SM2_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	sm2_to_SM2_pem_does_selection
	.long	20
	.zero	4
	.quad	sm2_to_SM2_pem_import_object
	.long	21
	.zero	4
	.quad	sm2_to_SM2_pem_free_object
	.long	11
	.zero	4
	.quad	sm2_to_SM2_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_PKCS1_der_import_object, @function
rsa_to_PKCS1_der_import_object:
.LFB958:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE958:
	.size	rsa_to_PKCS1_der_import_object, .-rsa_to_PKCS1_der_import_object
	.type	rsa_to_PKCS1_der_free_object, @function
rsa_to_PKCS1_der_free_object:
.LFB959:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE959:
	.size	rsa_to_PKCS1_der_free_object, .-rsa_to_PKCS1_der_free_object
	.type	rsa_to_PKCS1_der_does_selection, @function
rsa_to_PKCS1_der_does_selection:
.LFB960:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE960:
	.size	rsa_to_PKCS1_der_does_selection, .-rsa_to_PKCS1_der_does_selection
	.type	rsa_to_PKCS1_der_encode, @function
rsa_to_PKCS1_der_encode:
.LFB961:
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
	cmpq	$0, -32(%rbp)
	je	.L1034
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1463, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1035
.L1034:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1036
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1035
.L1036:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1037
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC5(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1035
.L1037:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1463, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1035:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE961:
	.size	rsa_to_PKCS1_der_encode, .-rsa_to_PKCS1_der_encode
	.globl	ossl_rsa_to_PKCS1_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_PKCS1_der_encoder_functions, @object
	.size	ossl_rsa_to_PKCS1_der_encoder_functions, 144
ossl_rsa_to_PKCS1_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_PKCS1_der_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_PKCS1_der_import_object
	.long	21
	.zero	4
	.quad	rsa_to_PKCS1_der_free_object
	.long	11
	.zero	4
	.quad	rsa_to_PKCS1_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_to_PKCS1_pem_import_object, @function
rsa_to_PKCS1_pem_import_object:
.LFB962:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE962:
	.size	rsa_to_PKCS1_pem_import_object, .-rsa_to_PKCS1_pem_import_object
	.type	rsa_to_PKCS1_pem_free_object, @function
rsa_to_PKCS1_pem_free_object:
.LFB963:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE963:
	.size	rsa_to_PKCS1_pem_free_object, .-rsa_to_PKCS1_pem_free_object
	.type	rsa_to_PKCS1_pem_does_selection, @function
rsa_to_PKCS1_pem_does_selection:
.LFB964:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE964:
	.size	rsa_to_PKCS1_pem_does_selection, .-rsa_to_PKCS1_pem_does_selection
	.type	rsa_to_PKCS1_pem_encode, @function
rsa_to_PKCS1_pem_encode:
.LFB965:
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
	cmpq	$0, -32(%rbp)
	je	.L1044
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1464, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1045
.L1044:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1046
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC4(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1045
.L1046:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1047
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC5(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$6, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1045
.L1047:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1464, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1045:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE965:
	.size	rsa_to_PKCS1_pem_encode, .-rsa_to_PKCS1_pem_encode
	.globl	ossl_rsa_to_PKCS1_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_PKCS1_pem_encoder_functions, @object
	.size	ossl_rsa_to_PKCS1_pem_encoder_functions, 144
ossl_rsa_to_PKCS1_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsa_to_PKCS1_pem_does_selection
	.long	20
	.zero	4
	.quad	rsa_to_PKCS1_pem_import_object
	.long	21
	.zero	4
	.quad	rsa_to_PKCS1_pem_free_object
	.long	11
	.zero	4
	.quad	rsa_to_PKCS1_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsapss_to_PKCS1_der_import_object, @function
rsapss_to_PKCS1_der_import_object:
.LFB966:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE966:
	.size	rsapss_to_PKCS1_der_import_object, .-rsapss_to_PKCS1_der_import_object
	.type	rsapss_to_PKCS1_der_free_object, @function
rsapss_to_PKCS1_der_free_object:
.LFB967:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE967:
	.size	rsapss_to_PKCS1_der_free_object, .-rsapss_to_PKCS1_der_free_object
	.type	rsapss_to_PKCS1_der_does_selection, @function
rsapss_to_PKCS1_der_does_selection:
.LFB968:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE968:
	.size	rsapss_to_PKCS1_der_does_selection, .-rsapss_to_PKCS1_der_does_selection
	.type	rsapss_to_PKCS1_der_encode, @function
rsapss_to_PKCS1_der_encode:
.LFB969:
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
	cmpq	$0, -32(%rbp)
	je	.L1054
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1465, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1055
.L1054:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1056
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC15(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1055
.L1056:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1057
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC16(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1055
.L1057:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1465, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1055:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE969:
	.size	rsapss_to_PKCS1_der_encode, .-rsapss_to_PKCS1_der_encode
	.globl	ossl_rsapss_to_PKCS1_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsapss_to_PKCS1_der_encoder_functions, @object
	.size	ossl_rsapss_to_PKCS1_der_encoder_functions, 144
ossl_rsapss_to_PKCS1_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsapss_to_PKCS1_der_does_selection
	.long	20
	.zero	4
	.quad	rsapss_to_PKCS1_der_import_object
	.long	21
	.zero	4
	.quad	rsapss_to_PKCS1_der_free_object
	.long	11
	.zero	4
	.quad	rsapss_to_PKCS1_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsapss_to_PKCS1_pem_import_object, @function
rsapss_to_PKCS1_pem_import_object:
.LFB970:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE970:
	.size	rsapss_to_PKCS1_pem_import_object, .-rsapss_to_PKCS1_pem_import_object
	.type	rsapss_to_PKCS1_pem_free_object, @function
rsapss_to_PKCS1_pem_free_object:
.LFB971:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE971:
	.size	rsapss_to_PKCS1_pem_free_object, .-rsapss_to_PKCS1_pem_free_object
	.type	rsapss_to_PKCS1_pem_does_selection, @function
rsapss_to_PKCS1_pem_does_selection:
.LFB972:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE972:
	.size	rsapss_to_PKCS1_pem_does_selection, .-rsapss_to_PKCS1_pem_does_selection
	.type	rsapss_to_PKCS1_pem_encode, @function
rsapss_to_PKCS1_pem_encode:
.LFB973:
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
	cmpq	$0, -32(%rbp)
	je	.L1064
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1466, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1065
.L1064:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1066
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC15(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1065
.L1066:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1067
	leaq	rsa_check_key_type(%rip), %r8
	leaq	.LC16(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_rsa_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_pub_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$912, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1065
.L1067:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1466, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1065:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE973:
	.size	rsapss_to_PKCS1_pem_encode, .-rsapss_to_PKCS1_pem_encode
	.globl	ossl_rsapss_to_PKCS1_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsapss_to_PKCS1_pem_encoder_functions, @object
	.size	ossl_rsapss_to_PKCS1_pem_encoder_functions, 144
ossl_rsapss_to_PKCS1_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	rsapss_to_PKCS1_pem_does_selection
	.long	20
	.zero	4
	.quad	rsapss_to_PKCS1_pem_import_object
	.long	21
	.zero	4
	.quad	rsapss_to_PKCS1_pem_free_object
	.long	11
	.zero	4
	.quad	rsapss_to_PKCS1_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_PKCS3_der_import_object, @function
dh_to_PKCS3_der_import_object:
.LFB974:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE974:
	.size	dh_to_PKCS3_der_import_object, .-dh_to_PKCS3_der_import_object
	.type	dh_to_PKCS3_der_free_object, @function
dh_to_PKCS3_der_free_object:
.LFB975:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE975:
	.size	dh_to_PKCS3_der_free_object, .-dh_to_PKCS3_der_free_object
	.type	dh_to_PKCS3_der_does_selection, @function
dh_to_PKCS3_der_does_selection:
.LFB976:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE976:
	.size	dh_to_PKCS3_der_does_selection, .-dh_to_PKCS3_der_does_selection
	.type	dh_to_PKCS3_der_encode, @function
dh_to_PKCS3_der_encode:
.LFB977:
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
	cmpq	$0, -32(%rbp)
	je	.L1074
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1468, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1075
.L1074:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L1076
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC6(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1075
.L1076:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1468, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1075:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE977:
	.size	dh_to_PKCS3_der_encode, .-dh_to_PKCS3_der_encode
	.globl	ossl_dh_to_PKCS3_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_PKCS3_der_encoder_functions, @object
	.size	ossl_dh_to_PKCS3_der_encoder_functions, 144
ossl_dh_to_PKCS3_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_PKCS3_der_does_selection
	.long	20
	.zero	4
	.quad	dh_to_PKCS3_der_import_object
	.long	21
	.zero	4
	.quad	dh_to_PKCS3_der_free_object
	.long	11
	.zero	4
	.quad	dh_to_PKCS3_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dh_to_PKCS3_pem_import_object, @function
dh_to_PKCS3_pem_import_object:
.LFB978:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE978:
	.size	dh_to_PKCS3_pem_import_object, .-dh_to_PKCS3_pem_import_object
	.type	dh_to_PKCS3_pem_free_object, @function
dh_to_PKCS3_pem_free_object:
.LFB979:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE979:
	.size	dh_to_PKCS3_pem_free_object, .-dh_to_PKCS3_pem_free_object
	.type	dh_to_PKCS3_pem_does_selection, @function
dh_to_PKCS3_pem_does_selection:
.LFB980:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE980:
	.size	dh_to_PKCS3_pem_does_selection, .-dh_to_PKCS3_pem_does_selection
	.type	dh_to_PKCS3_pem_encode, @function
dh_to_PKCS3_pem_encode:
.LFB981:
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
	cmpq	$0, -32(%rbp)
	je	.L1083
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1469, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1084
.L1083:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L1085
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC6(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$28, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1084
.L1085:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1469, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1084:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE981:
	.size	dh_to_PKCS3_pem_encode, .-dh_to_PKCS3_pem_encode
	.globl	ossl_dh_to_PKCS3_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_to_PKCS3_pem_encoder_functions, @object
	.size	ossl_dh_to_PKCS3_pem_encoder_functions, 144
ossl_dh_to_PKCS3_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dh_to_PKCS3_pem_does_selection
	.long	20
	.zero	4
	.quad	dh_to_PKCS3_pem_import_object
	.long	21
	.zero	4
	.quad	dh_to_PKCS3_pem_free_object
	.long	11
	.zero	4
	.quad	dh_to_PKCS3_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_X9_42_der_import_object, @function
dhx_to_X9_42_der_import_object:
.LFB982:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE982:
	.size	dhx_to_X9_42_der_import_object, .-dhx_to_X9_42_der_import_object
	.type	dhx_to_X9_42_der_free_object, @function
dhx_to_X9_42_der_free_object:
.LFB983:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE983:
	.size	dhx_to_X9_42_der_free_object, .-dhx_to_X9_42_der_free_object
	.type	dhx_to_X9_42_der_does_selection, @function
dhx_to_X9_42_der_does_selection:
.LFB984:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE984:
	.size	dhx_to_X9_42_der_does_selection, .-dhx_to_X9_42_der_does_selection
	.type	dhx_to_X9_42_der_encode, @function
dhx_to_X9_42_der_encode:
.LFB985:
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
	cmpq	$0, -32(%rbp)
	je	.L1092
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1470, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1093
.L1092:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L1094
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC7(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1093
.L1094:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1470, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1093:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE985:
	.size	dhx_to_X9_42_der_encode, .-dhx_to_X9_42_der_encode
	.globl	ossl_dhx_to_X9_42_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_X9_42_der_encoder_functions, @object
	.size	ossl_dhx_to_X9_42_der_encoder_functions, 144
ossl_dhx_to_X9_42_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_X9_42_der_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_X9_42_der_import_object
	.long	21
	.zero	4
	.quad	dhx_to_X9_42_der_free_object
	.long	11
	.zero	4
	.quad	dhx_to_X9_42_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx_to_X9_42_pem_import_object, @function
dhx_to_X9_42_pem_import_object:
.LFB986:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE986:
	.size	dhx_to_X9_42_pem_import_object, .-dhx_to_X9_42_pem_import_object
	.type	dhx_to_X9_42_pem_free_object, @function
dhx_to_X9_42_pem_free_object:
.LFB987:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE987:
	.size	dhx_to_X9_42_pem_free_object, .-dhx_to_X9_42_pem_free_object
	.type	dhx_to_X9_42_pem_does_selection, @function
dhx_to_X9_42_pem_does_selection:
.LFB988:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$132, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE988:
	.size	dhx_to_X9_42_pem_does_selection, .-dhx_to_X9_42_pem_does_selection
	.type	dhx_to_X9_42_pem_encode, @function
dhx_to_X9_42_pem_encode:
.LFB989:
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
	cmpq	$0, -32(%rbp)
	je	.L1101
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1471, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1102
.L1101:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L1103
	leaq	dh_check_key_type(%rip), %r8
	leaq	.LC7(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	dh_type_specific_params_to_der(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$920, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1102
.L1103:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1471, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE989:
	.size	dhx_to_X9_42_pem_encode, .-dhx_to_X9_42_pem_encode
	.globl	ossl_dhx_to_X9_42_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_X9_42_pem_encoder_functions, @object
	.size	ossl_dhx_to_X9_42_pem_encoder_functions, 144
ossl_dhx_to_X9_42_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	dhx_to_X9_42_pem_does_selection
	.long	20
	.zero	4
	.quad	dhx_to_X9_42_pem_import_object
	.long	21
	.zero	4
	.quad	dhx_to_X9_42_pem_free_object
	.long	11
	.zero	4
	.quad	dhx_to_X9_42_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_X9_62_der_import_object, @function
ec_to_X9_62_der_import_object:
.LFB990:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE990:
	.size	ec_to_X9_62_der_import_object, .-ec_to_X9_62_der_import_object
	.type	ec_to_X9_62_der_free_object, @function
ec_to_X9_62_der_free_object:
.LFB991:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE991:
	.size	ec_to_X9_62_der_free_object, .-ec_to_X9_62_der_free_object
	.type	ec_to_X9_62_der_does_selection, @function
ec_to_X9_62_der_does_selection:
.LFB992:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$133, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE992:
	.size	ec_to_X9_62_der_does_selection, .-ec_to_X9_62_der_does_selection
	.type	ec_to_X9_62_der_encode, @function
ec_to_X9_62_der_encode:
.LFB993:
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
	cmpq	$0, -32(%rbp)
	je	.L1110
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1474, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1111
.L1110:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1112
	leaq	.LC11(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1111
.L1112:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L1113
	leaq	.LC12(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECParameters@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_der_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1111
.L1113:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1474, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE993:
	.size	ec_to_X9_62_der_encode, .-ec_to_X9_62_der_encode
	.globl	ossl_ec_to_X9_62_der_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_X9_62_der_encoder_functions, @object
	.size	ossl_ec_to_X9_62_der_encoder_functions, 144
ossl_ec_to_X9_62_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_X9_62_der_does_selection
	.long	20
	.zero	4
	.quad	ec_to_X9_62_der_import_object
	.long	21
	.zero	4
	.quad	ec_to_X9_62_der_free_object
	.long	11
	.zero	4
	.quad	ec_to_X9_62_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec_to_X9_62_pem_import_object, @function
ec_to_X9_62_pem_import_object:
.LFB994:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE994:
	.size	ec_to_X9_62_pem_import_object, .-ec_to_X9_62_pem_import_object
	.type	ec_to_X9_62_pem_free_object, @function
ec_to_X9_62_pem_free_object:
.LFB995:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE995:
	.size	ec_to_X9_62_pem_free_object, .-ec_to_X9_62_pem_free_object
	.type	ec_to_X9_62_pem_does_selection, @function
ec_to_X9_62_pem_does_selection:
.LFB996:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$133, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE996:
	.size	ec_to_X9_62_pem_does_selection, .-ec_to_X9_62_pem_does_selection
	.type	ec_to_X9_62_pem_encode, @function
ec_to_X9_62_pem_encode:
.LFB997:
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
	cmpq	$0, -32(%rbp)
	je	.L1120
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1121
.L1120:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1122
	leaq	.LC11(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	pushq	%rcx
	leaq	prepare_ec_params(%rip), %rcx
	pushq	%rcx
	pushq	16(%rbp)
	pushq	-48(%rbp)
	leaq	key_to_type_specific_pem_priv_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1121
.L1122:
	movl	-36(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L1123
	leaq	.LC12(%rip), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	i2d_ECParameters@GOTPCREL(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	leaq	key_to_type_specific_pem_param_bio(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$408, %ecx
	movq	%rax, %rdi
	call	key2any_encode
	addq	$48, %rsp
	jmp	.L1121
.L1123:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE997:
	.size	ec_to_X9_62_pem_encode, .-ec_to_X9_62_pem_encode
	.globl	ossl_ec_to_X9_62_pem_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_X9_62_pem_encoder_functions, @object
	.size	ossl_ec_to_X9_62_pem_encoder_functions, 144
ossl_ec_to_X9_62_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	ec_to_X9_62_pem_does_selection
	.long	20
	.zero	4
	.quad	ec_to_X9_62_pem_import_object
	.long	21
	.zero	4
	.quad	ec_to_X9_62_pem_free_object
	.long	11
	.zero	4
	.quad	ec_to_X9_62_pem_encode
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.116, @object
	.size	__func__.116, 14
__func__.116:
	.string	"key_to_p8info"
	.align 16
	.type	__func__.115, @object
	.size	__func__.115, 16
__func__.115:
	.string	"p8info_to_encp8"
	.align 8
	.type	__func__.114, @object
	.size	__func__.114, 14
__func__.114:
	.string	"key_to_pubkey"
	.align 16
	.type	__func__.113, @object
	.size	__func__.113, 29
__func__.113:
	.string	"key_to_type_specific_der_bio"
	.align 16
	.type	__func__.112, @object
	.size	__func__.112, 18
__func__.112:
	.string	"prepare_dh_params"
	.align 16
	.type	__func__.111, @object
	.size	__func__.111, 19
__func__.111:
	.string	"dh_spki_pub_to_der"
	.align 16
	.type	__func__.110, @object
	.size	__func__.110, 19
__func__.110:
	.string	"dh_pki_priv_to_der"
	.align 16
	.type	__func__.109, @object
	.size	__func__.109, 18
__func__.109:
	.string	"encode_dsa_params"
	.align 16
	.type	__func__.108, @object
	.size	__func__.108, 20
__func__.108:
	.string	"dsa_spki_pub_to_der"
	.align 16
	.type	__func__.107, @object
	.size	__func__.107, 20
__func__.107:
	.string	"dsa_pki_priv_to_der"
	.align 16
	.type	__func__.106, @object
	.size	__func__.106, 27
__func__.106:
	.string	"prepare_ec_explicit_params"
	.align 16
	.type	__func__.105, @object
	.size	__func__.105, 18
__func__.105:
	.string	"prepare_ec_params"
	.align 16
	.type	__func__.104, @object
	.size	__func__.104, 19
__func__.104:
	.string	"ec_spki_pub_to_der"
	.align 16
	.type	__func__.103, @object
	.size	__func__.103, 20
__func__.103:
	.string	"ecx_spki_pub_to_der"
	.align 16
	.type	__func__.102, @object
	.size	__func__.102, 20
__func__.102:
	.string	"ecx_pki_priv_to_der"
	.section	.data.rel.ro.local
	.align 32
	.type	settables.101, @object
	.size	settables.101, 120
settables.101:
	.quad	.LC1
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.100, @object
	.size	__func__.100, 15
__func__.100:
	.string	"key2any_encode"
	.align 32
	.type	__func__.99, @object
	.size	__func__.99, 40
__func__.99:
	.string	"rsa_to_type_specific_keypair_der_encode"
	.align 32
	.type	__func__.98, @object
	.size	__func__.98, 38
__func__.98:
	.string	"dh_to_type_specific_params_der_encode"
	.align 32
	.type	__func__.97, @object
	.size	__func__.97, 39
__func__.97:
	.string	"dhx_to_type_specific_params_der_encode"
	.align 32
	.type	__func__.96, @object
	.size	__func__.96, 32
__func__.96:
	.string	"dsa_to_type_specific_der_encode"
	.align 32
	.type	__func__.95, @object
	.size	__func__.95, 38
__func__.95:
	.string	"ec_to_type_specific_no_pub_der_encode"
	.align 32
	.type	__func__.94, @object
	.size	__func__.94, 39
__func__.94:
	.string	"sm2_to_type_specific_no_pub_der_encode"
	.align 32
	.type	__func__.93, @object
	.size	__func__.93, 40
__func__.93:
	.string	"rsa_to_type_specific_keypair_pem_encode"
	.align 32
	.type	__func__.92, @object
	.size	__func__.92, 38
__func__.92:
	.string	"dh_to_type_specific_params_pem_encode"
	.align 32
	.type	__func__.91, @object
	.size	__func__.91, 39
__func__.91:
	.string	"dhx_to_type_specific_params_pem_encode"
	.align 32
	.type	__func__.90, @object
	.size	__func__.90, 32
__func__.90:
	.string	"dsa_to_type_specific_pem_encode"
	.align 32
	.type	__func__.89, @object
	.size	__func__.89, 38
__func__.89:
	.string	"ec_to_type_specific_no_pub_pem_encode"
	.align 32
	.type	__func__.88, @object
	.size	__func__.88, 39
__func__.88:
	.string	"sm2_to_type_specific_no_pub_pem_encode"
	.align 32
	.type	__func__.87, @object
	.size	__func__.87, 42
__func__.87:
	.string	"rsa_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.86, @object
	.size	__func__.86, 42
__func__.86:
	.string	"rsa_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.85, @object
	.size	__func__.85, 33
__func__.85:
	.string	"rsa_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.84, @object
	.size	__func__.84, 33
__func__.84:
	.string	"rsa_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.83, @object
	.size	__func__.83, 39
__func__.83:
	.string	"rsa_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.82, @object
	.size	__func__.82, 39
__func__.82:
	.string	"rsa_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.81, @object
	.size	__func__.81, 45
__func__.81:
	.string	"rsapss_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.80, @object
	.size	__func__.80, 45
__func__.80:
	.string	"rsapss_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.79, @object
	.size	__func__.79, 36
__func__.79:
	.string	"rsapss_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.78, @object
	.size	__func__.78, 36
__func__.78:
	.string	"rsapss_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.77, @object
	.size	__func__.77, 42
__func__.77:
	.string	"rsapss_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.76, @object
	.size	__func__.76, 42
__func__.76:
	.string	"rsapss_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.75, @object
	.size	__func__.75, 41
__func__.75:
	.string	"dh_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.74, @object
	.size	__func__.74, 41
__func__.74:
	.string	"dh_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.73, @object
	.size	__func__.73, 32
__func__.73:
	.string	"dh_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.72, @object
	.size	__func__.72, 32
__func__.72:
	.string	"dh_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.71, @object
	.size	__func__.71, 38
__func__.71:
	.string	"dh_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.70, @object
	.size	__func__.70, 38
__func__.70:
	.string	"dh_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.69, @object
	.size	__func__.69, 42
__func__.69:
	.string	"dhx_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.68, @object
	.size	__func__.68, 42
__func__.68:
	.string	"dhx_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.67, @object
	.size	__func__.67, 33
__func__.67:
	.string	"dhx_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.66, @object
	.size	__func__.66, 33
__func__.66:
	.string	"dhx_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.65, @object
	.size	__func__.65, 39
__func__.65:
	.string	"dhx_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.64, @object
	.size	__func__.64, 39
__func__.64:
	.string	"dhx_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.63, @object
	.size	__func__.63, 42
__func__.63:
	.string	"dsa_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.62, @object
	.size	__func__.62, 42
__func__.62:
	.string	"dsa_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.61, @object
	.size	__func__.61, 33
__func__.61:
	.string	"dsa_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.60, @object
	.size	__func__.60, 33
__func__.60:
	.string	"dsa_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.59, @object
	.size	__func__.59, 39
__func__.59:
	.string	"dsa_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.58, @object
	.size	__func__.58, 39
__func__.58:
	.string	"dsa_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.57, @object
	.size	__func__.57, 41
__func__.57:
	.string	"ec_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.56, @object
	.size	__func__.56, 41
__func__.56:
	.string	"ec_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.55, @object
	.size	__func__.55, 32
__func__.55:
	.string	"ec_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.54, @object
	.size	__func__.54, 32
__func__.54:
	.string	"ec_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.53, @object
	.size	__func__.53, 38
__func__.53:
	.string	"ec_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.52, @object
	.size	__func__.52, 38
__func__.52:
	.string	"ec_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.51, @object
	.size	__func__.51, 42
__func__.51:
	.string	"sm2_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.50, @object
	.size	__func__.50, 42
__func__.50:
	.string	"sm2_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.49, @object
	.size	__func__.49, 33
__func__.49:
	.string	"sm2_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.48, @object
	.size	__func__.48, 33
__func__.48:
	.string	"sm2_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.47, @object
	.size	__func__.47, 39
__func__.47:
	.string	"sm2_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.46, @object
	.size	__func__.46, 39
__func__.46:
	.string	"sm2_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.45, @object
	.size	__func__.45, 46
__func__.45:
	.string	"ed25519_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.44, @object
	.size	__func__.44, 46
__func__.44:
	.string	"ed25519_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.43, @object
	.size	__func__.43, 37
__func__.43:
	.string	"ed25519_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.42, @object
	.size	__func__.42, 37
__func__.42:
	.string	"ed25519_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.41, @object
	.size	__func__.41, 43
__func__.41:
	.string	"ed25519_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.40, @object
	.size	__func__.40, 43
__func__.40:
	.string	"ed25519_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.39, @object
	.size	__func__.39, 44
__func__.39:
	.string	"ed448_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.38, @object
	.size	__func__.38, 44
__func__.38:
	.string	"ed448_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.37, @object
	.size	__func__.37, 35
__func__.37:
	.string	"ed448_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.36, @object
	.size	__func__.36, 35
__func__.36:
	.string	"ed448_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.35, @object
	.size	__func__.35, 41
__func__.35:
	.string	"ed448_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.34, @object
	.size	__func__.34, 41
__func__.34:
	.string	"ed448_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.33, @object
	.size	__func__.33, 45
__func__.33:
	.string	"x25519_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.32, @object
	.size	__func__.32, 45
__func__.32:
	.string	"x25519_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.31, @object
	.size	__func__.31, 36
__func__.31:
	.string	"x25519_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.30, @object
	.size	__func__.30, 36
__func__.30:
	.string	"x25519_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.29, @object
	.size	__func__.29, 42
__func__.29:
	.string	"x25519_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.28, @object
	.size	__func__.28, 42
__func__.28:
	.string	"x25519_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.27, @object
	.size	__func__.27, 43
__func__.27:
	.string	"x448_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.26, @object
	.size	__func__.26, 43
__func__.26:
	.string	"x448_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.25, @object
	.size	__func__.25, 34
__func__.25:
	.string	"x448_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.24, @object
	.size	__func__.24, 34
__func__.24:
	.string	"x448_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.23, @object
	.size	__func__.23, 40
__func__.23:
	.string	"x448_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.22, @object
	.size	__func__.22, 40
__func__.22:
	.string	"x448_to_SubjectPublicKeyInfo_pem_encode"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 22
__func__.21:
	.string	"rsa_to_RSA_der_encode"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 22
__func__.20:
	.string	"rsa_to_RSA_pem_encode"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 20
__func__.19:
	.string	"dh_to_DH_der_encode"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 20
__func__.18:
	.string	"dh_to_DH_pem_encode"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 22
__func__.17:
	.string	"dhx_to_DHX_der_encode"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 22
__func__.16:
	.string	"dhx_to_DHX_pem_encode"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 22
__func__.15:
	.string	"dsa_to_DSA_der_encode"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 22
__func__.14:
	.string	"dsa_to_DSA_pem_encode"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 20
__func__.13:
	.string	"ec_to_EC_der_encode"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 20
__func__.12:
	.string	"ec_to_EC_pem_encode"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 22
__func__.11:
	.string	"sm2_to_SM2_der_encode"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 22
__func__.10:
	.string	"sm2_to_SM2_pem_encode"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 24
__func__.9:
	.string	"rsa_to_PKCS1_der_encode"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 24
__func__.8:
	.string	"rsa_to_PKCS1_pem_encode"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 27
__func__.7:
	.string	"rsapss_to_PKCS1_der_encode"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 27
__func__.6:
	.string	"rsapss_to_PKCS1_pem_encode"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 23
__func__.5:
	.string	"dh_to_PKCS3_der_encode"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 23
__func__.4:
	.string	"dh_to_PKCS3_pem_encode"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"dhx_to_X9_42_der_encode"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 24
__func__.2:
	.string	"dhx_to_X9_42_pem_encode"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"ec_to_X9_62_der_encode"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ec_to_X9_62_pem_encode"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
