	.file	"hpke.c"
	.text
	.section	.rodata
	.type	OSSL_HPKE_SEC51LABEL, @object
	.size	OSSL_HPKE_SEC51LABEL, 5
OSSL_HPKE_SEC51LABEL:
	.string	"HPKE"
	.align 8
	.type	OSSL_HPKE_PSKIDHASH_LABEL, @object
	.size	OSSL_HPKE_PSKIDHASH_LABEL, 12
OSSL_HPKE_PSKIDHASH_LABEL:
	.string	"psk_id_hash"
	.align 8
	.type	OSSL_HPKE_INFOHASH_LABEL, @object
	.size	OSSL_HPKE_INFOHASH_LABEL, 10
OSSL_HPKE_INFOHASH_LABEL:
	.string	"info_hash"
	.align 8
	.type	OSSL_HPKE_NONCE_LABEL, @object
	.size	OSSL_HPKE_NONCE_LABEL, 11
OSSL_HPKE_NONCE_LABEL:
	.string	"base_nonce"
	.type	OSSL_HPKE_EXP_LABEL, @object
	.size	OSSL_HPKE_EXP_LABEL, 4
OSSL_HPKE_EXP_LABEL:
	.string	"exp"
	.type	OSSL_HPKE_EXP_SEC_LABEL, @object
	.size	OSSL_HPKE_EXP_SEC_LABEL, 4
OSSL_HPKE_EXP_SEC_LABEL:
	.string	"sec"
	.type	OSSL_HPKE_KEY_LABEL, @object
	.size	OSSL_HPKE_KEY_LABEL, 4
OSSL_HPKE_KEY_LABEL:
	.string	"key"
	.type	OSSL_HPKE_SECRET_LABEL, @object
	.size	OSSL_HPKE_SECRET_LABEL, 7
OSSL_HPKE_SECRET_LABEL:
	.string	"secret"
	.text
	.type	hpke_kem_id_nist_curve, @function
hpke_kem_id_nist_curve:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	movzwl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_HPKE_KEM_INFO_find_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L2
	movl	$1, %eax
	jmp	.L4
.L2:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	hpke_kem_id_nist_curve, .-hpke_kem_id_nist_curve
	.section	.rodata
.LC0:
	.string	"EC"
.LC1:
	.string	"group"
.LC2:
	.string	"../crypto/hpke/hpke.c"
	.text
	.type	evp_pkey_new_raw_nist_public_key, @function
evp_pkey_new_raw_nist_public_key:
.LFB362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	$0, -104(%rbp)
	movq	-128(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	leaq	-208(%rbp), %rax
	movq	-136(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	testl	%eax, %eax
	jle	.L6
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jle	.L6
	leaq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen@PLT
	testl	%eax, %eax
	jle	.L6
	movq	-104(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_encoded_public_key@PLT
	cmpl	$1, %eax
	je	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-104(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	evp_pkey_new_raw_nist_public_key, .-evp_pkey_new_raw_nist_public_key
	.type	hpke_aead_dec, @function
hpke_aead_dec:
.LFB363:
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
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L11
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	subq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L12
.L11:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L12:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L24
.L14:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	cmpl	$1, %eax
	je	.L15
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$162, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L15:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	cmpl	$1, %eax
	je	.L17
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L17:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	cmpl	$1, %eax
	je	.L18
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$172, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L18:
	cmpq	$0, -64(%rbp)
	je	.L19
	cmpq	$0, -56(%rbp)
	je	.L19
	movq	-64(%rbp), %rax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	cmpl	$1, %eax
	je	.L19
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L19:
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %edi
	movq	-72(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	cmpl	$1, %eax
	je	.L20
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L20:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L21:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-28(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal_ex@PLT
	testl	%eax, %eax
	jg	.L22
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L22:
	movl	$1, -4(%rbp)
.L16:
	cmpl	$1, -4(%rbp)
	je	.L23
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L23:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	hpke_aead_dec, .-hpke_aead_dec
	.type	hpke_aead_enc, @function
hpke_aead_enc:
.LFB364:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L26
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	subq	-24(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jnb	.L27
.L26:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$231, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L27:
	cmpq	$16, -24(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L29
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$235, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L29:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L30
	movl	$0, %eax
	jmp	.L40
.L30:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	cmpl	$1, %eax
	je	.L31
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$243, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L31:
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	cmpl	$1, %eax
	je	.L33
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L33:
	movq	-56(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	cmpl	$1, %eax
	je	.L34
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L34:
	cmpq	$0, -80(%rbp)
	je	.L35
	cmpq	$0, -72(%rbp)
	je	.L35
	movq	-80(%rbp), %rax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	cmpl	$1, %eax
	je	.L35
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L35:
	movq	-96(%rbp), %rax
	movl	%eax, %edi
	movq	-88(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	cmpl	$1, %eax
	je	.L36
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$264, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L36:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-28(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	cmpl	$1, %eax
	je	.L37
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$270, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L37:
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	cmpl	$1, %eax
	je	.L38
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$276, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L38:
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
.L32:
	cmpl	$1, -4(%rbp)
	je	.L39
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L39:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	hpke_aead_enc, .-hpke_aead_enc
	.type	hpke_mode_check, @function
hpke_mode_check:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$3, -4(%rbp)
	jbe	.L46
	movl	$0, %eax
	jmp	.L44
.L46:
	nop
	movl	$1, %eax
.L44:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	hpke_mode_check, .-hpke_mode_check
	.type	hpke_suite_check, @function
hpke_suite_check:
.LFB366:
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
	movzwl	-40(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ossl_HPKE_KEM_INFO_find_id@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movzwl	-38(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ossl_HPKE_KDF_INFO_find_id@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L50
	movl	$0, %eax
	jmp	.L49
.L50:
	movzwl	-36(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ossl_HPKE_AEAD_INFO_find_id@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L51
	movl	$0, %eax
	jmp	.L49
.L51:
	cmpq	$0, -48(%rbp)
	je	.L52
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L52:
	cmpq	$0, -56(%rbp)
	je	.L53
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L53:
	cmpq	$0, -64(%rbp)
	je	.L54
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L54:
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	hpke_suite_check, .-hpke_suite_check
	.type	hpke_random_suite, @function
hpke_random_suite:
.LFB367:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_HPKE_KEM_INFO_find_random@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-8(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-56(%rbp), %rax
	movw	%dx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_HPKE_KDF_INFO_find_random@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L58
	movl	$0, %eax
	jmp	.L57
.L58:
	movq	-16(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-56(%rbp), %rax
	movw	%dx, 2(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_HPKE_AEAD_INFO_find_random@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L59
	movl	$0, %eax
	jmp	.L57
.L59:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-56(%rbp), %rax
	movw	%dx, 4(%rax)
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	hpke_random_suite, .-hpke_random_suite
	.type	hpke_expansion, @function
hpke_expansion:
.LFB368:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L61
	cmpq	$0, -32(%rbp)
	jne	.L62
.L61:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$400, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L62:
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movzwl	-24(%rbp), %eax
	movzwl	-22(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-20(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	hpke_suite_check
	cmpl	$1, %eax
	je	.L64
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$404, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L64:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	hpke_expansion, .-hpke_expansion
	.type	hpke_seqnonce2buf, @function
hpke_seqnonce2buf:
.LFB369:
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
	cmpq	$0, -24(%rbp)
	je	.L67
	cmpq	$7, -40(%rbp)
	jbe	.L67
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L68
.L67:
	movl	$0, %eax
	jmp	.L69
.L68:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	$0, -8(%rbp)
	jmp	.L70
.L71:
	movq	-40(%rbp), %rax
	subq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
	shrq	$8, -16(%rbp)
	addq	$1, -8(%rbp)
.L70:
	cmpq	$7, -8(%rbp)
	jbe	.L71
	movq	$0, -8(%rbp)
	jmp	.L72
.L73:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L72:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L73
	movq	-40(%rbp), %rax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	hpke_seqnonce2buf, .-hpke_seqnonce2buf
	.section	.rodata
.LC3:
	.string	"DHKEM"
.LC4:
	.string	"operation"
.LC5:
	.string	"ikme"
	.text
	.type	hpke_encap, @function
hpke_encap:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%r8, -232(%rbp)
	movl	$0, -20(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -200(%rbp)
	je	.L75
	cmpq	$0, -208(%rbp)
	je	.L75
	cmpq	$0, -216(%rbp)
	je	.L75
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L75
	cmpq	$0, -224(%rbp)
	je	.L75
	cmpq	$0, -232(%rbp)
	jne	.L76
.L75:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$459, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L76:
	movq	-200(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L78
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$464, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L78:
	movq	-200(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ossl_HPKE_KEM_INFO_find_id@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L79
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$469, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L79:
	movq	-200(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	hpke_kem_id_nist_curve
	cmpl	$1, %eax
	jne	.L80
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rcx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_pkey_new_raw_nist_public_key
	movq	%rax, -48(%rbp)
	jmp	.L81
.L80:
	movq	-200(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rcx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_public_key_ex@PLT
	movq	%rax, -48(%rbp)
.L81:
	cmpq	$0, -48(%rbp)
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$482, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L82:
	movq	-200(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$487, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L84:
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-288(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-200(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-200(%rbp), %rax
	movq	200(%rax), %rcx
	movq	-200(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-288(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rbx)
.L85:
	movq	-32(%rbp), %rbx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-200(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	je	.L86
	movq	-200(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$3, %eax
	jne	.L87
.L86:
	movq	-200(%rbp), %rax
	movq	168(%rax), %rcx
	leaq	-176(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_encapsulate_init@PLT
	cmpl	$1, %eax
	je	.L89
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$502, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L87:
	leaq	-176(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	cmpl	$1, %eax
	je	.L89
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$507, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L89:
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	leaq	-184(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	cmpl	$1, %eax
	je	.L90
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$513, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L90:
	movq	-216(%rbp), %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L91
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$517, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L91:
	movq	-184(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$520, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-200(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L95
	movq	-184(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-200(%rbp), %rax
	leaq	88(%rax), %rdi
	movq	-200(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	cmpl	$1, %eax
	je	.L93
	movq	-200(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-200(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$527, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-200(%rbp), %rax
	movq	$0, 80(%rax)
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$529, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L93:
	movl	$1, -20(%rbp)
	jmp	.L83
.L95:
	nop
.L83:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-20(%rbp), %eax
.L94:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	hpke_encap, .-hpke_encap
	.type	hpke_decap, @function
hpke_decap:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -152(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L97
	cmpq	$0, -176(%rbp)
	je	.L97
	cmpq	$0, -184(%rbp)
	je	.L97
	cmpq	$0, -192(%rbp)
	jne	.L98
.L97:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$559, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L115
.L98:
	movq	-168(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L100
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$564, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L115
.L100:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$569, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L101:
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-240(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-168(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	je	.L103
	movq	-168(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$3, %eax
	jne	.L104
.L103:
	movq	$0, -56(%rbp)
	movq	-168(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ossl_HPKE_KEM_INFO_find_id@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$582, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L105:
	movq	-168(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	hpke_kem_id_nist_curve
	cmpl	$1, %eax
	jne	.L106
	movq	-168(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-168(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_pkey_new_raw_nist_public_key
	movq	%rax, -32(%rbp)
	jmp	.L107
.L106:
	movq	-168(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-168(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-168(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_public_key_ex@PLT
	movq	%rax, -32(%rbp)
.L107:
	cmpq	$0, -32(%rbp)
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$598, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L108:
	leaq	-144(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_decapsulate_init@PLT
	cmpl	$1, %eax
	je	.L116
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$602, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L104:
	leaq	-144(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	cmpl	$1, %eax
	je	.L110
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$607, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L116:
	nop
.L110:
	movq	-184(%rbp), %rsi
	movq	-176(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	cmpl	$1, %eax
	je	.L111
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$612, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L111:
	movq	-152(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$615, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-168(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-168(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-184(%rbp), %rdi
	movq	-176(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	cmpl	$1, %eax
	je	.L113
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$620, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L113:
	movq	-152(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 88(%rax)
	movl	$1, -20(%rbp)
	jmp	.L102
.L117:
	nop
.L102:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpl	$0, -20(%rbp)
	jne	.L114
	movq	-168(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$630, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-168(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-168(%rbp), %rax
	movq	$0, 88(%rax)
.L114:
	movl	-20(%rbp), %eax
.L115:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	hpke_decap, .-hpke_decap
	.section	.rodata
.LC6:
	.string	"HKDF"
	.text
	.type	hpke_do_middle, @function
hpke_do_middle:
.LFB372:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1152, %rsp
	movq	%rdi, -1128(%rbp)
	movq	%rsi, -1136(%rbp)
	movq	%rdx, -1144(%rbp)
	movl	$0, -4(%rbp)
	movq	$512, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$512, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-1128(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L119
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$666, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L119:
	movq	-1128(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ossl_HPKE_KEM_INFO_find_id@PLT
	testq	%rax, %rax
	jne	.L121
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$670, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L121:
	movq	-1128(%rbp), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ossl_HPKE_AEAD_INFO_find_id@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$675, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L122:
	movq	-1128(%rbp), %rax
	movzwl	22(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ossl_HPKE_KDF_INFO_find_id@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L123
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$680, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L123:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	leaq	-592(%rbp), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-1128(%rbp), %rax
	movl	16(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	addl	%eax, %edx
	movzbl	%dl, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -592(%rbp)
	subq	$1, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L124
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$690, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L124:
	movq	-1128(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L125
	movq	-1128(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$3, %eax
	jne	.L126
.L125:
	movq	-1128(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L127
	movq	-1128(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L127
	movq	-1128(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L126
.L127:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$697, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L126:
	movq	-1128(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-1128(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rsi
	call	ossl_kdf_ctx_create@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$703, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L128:
	movq	-1128(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L129
	movq	-1128(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	jmp	.L130
.L129:
	movq	$0, -16(%rbp)
.L130:
	movq	-1128(%rbp), %rax
	movzwl	20(%rax), %eax
	shrw	$8, %ax
	movb	%al, -1110(%rbp)
	movq	-1128(%rbp), %rax
	movzwl	20(%rax), %eax
	movb	%al, -1109(%rbp)
	movq	-1128(%rbp), %rax
	movzwl	22(%rax), %eax
	shrw	$8, %ax
	movb	%al, -1108(%rbp)
	movq	-1128(%rbp), %rax
	movzwl	22(%rax), %eax
	movb	%al, -1107(%rbp)
	movq	-1128(%rbp), %rax
	movzwl	24(%rax), %eax
	shrw	$8, %ax
	movb	%al, -1106(%rbp)
	movq	-1128(%rbp), %rax
	movzwl	24(%rax), %eax
	movb	%al, -1105(%rbp)
	movq	-1128(%rbp), %rax
	movq	144(%rax), %rcx
	leaq	-592(%rbp), %rax
	addq	$1, %rax
	leaq	OSSL_HPKE_SEC51LABEL(%rip), %rsi
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rdi
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	%rcx
	leaq	OSSL_HPKE_PSKIDHASH_LABEL(%rip), %rcx
	pushq	%rcx
	pushq	$6
	leaq	-1110(%rbp), %rcx
	pushq	%rcx
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	ossl_hpke_labeled_extract@PLT
	addq	$48, %rsp
	cmpl	$1, %eax
	je	.L131
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$720, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L132
.L131:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-592(%rbp), %rax
	leaq	(%rax,%rdx), %rsi
	leaq	OSSL_HPKE_SEC51LABEL(%rip), %rdi
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	-1144(%rbp)
	pushq	-1136(%rbp)
	leaq	OSSL_HPKE_INFOHASH_LABEL(%rip), %rcx
	pushq	%rcx
	pushq	$6
	leaq	-1110(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_hpke_labeled_extract@PLT
	addq	$48, %rsp
	cmpl	$1, %eax
	je	.L133
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$728, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L132
.L133:
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$512, -56(%rbp)
	jbe	.L134
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$734, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L132
.L134:
	movq	-1128(%rbp), %rax
	movq	160(%rax), %r8
	movq	-1128(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-1128(%rbp), %rax
	movq	88(%rax), %r10
	movq	-1128(%rbp), %rax
	movq	80(%rax), %rcx
	leaq	OSSL_HPKE_SEC51LABEL(%rip), %r9
	movq	-56(%rbp), %rdx
	leaq	-1104(%rbp), %rsi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	leaq	OSSL_HPKE_SECRET_LABEL(%rip), %rdi
	pushq	%rdi
	pushq	$6
	leaq	-1110(%rbp), %rdi
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	ossl_hpke_labeled_extract@PLT
	addq	$48, %rsp
	cmpl	$1, %eax
	je	.L135
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$743, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L132
.L135:
	movq	-1128(%rbp), %rax
	movzwl	24(%rax), %eax
	cmpw	$-1, %ax
	je	.L136
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-1128(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-1128(%rbp), %rax
	movq	120(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$749, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-1128(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-1128(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L143
	movq	-1128(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-1128(%rbp), %rax
	movq	112(%rax), %rsi
	leaq	OSSL_HPKE_SEC51LABEL(%rip), %r9
	movq	-56(%rbp), %r8
	leaq	-1104(%rbp), %rcx
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	leaq	-592(%rbp), %rdi
	pushq	%rdi
	leaq	OSSL_HPKE_NONCE_LABEL(%rip), %rdi
	pushq	%rdi
	pushq	$6
	leaq	-1110(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_hpke_labeled_expand@PLT
	addq	$48, %rsp
	cmpl	$1, %eax
	je	.L138
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L132
.L138:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-1128(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-1128(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$761, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-1128(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-1128(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L144
	movq	-1128(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-1128(%rbp), %rax
	movq	96(%rax), %rsi
	leaq	OSSL_HPKE_SEC51LABEL(%rip), %r9
	movq	-56(%rbp), %r8
	leaq	-1104(%rbp), %rcx
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	leaq	-592(%rbp), %rdi
	pushq	%rdi
	leaq	OSSL_HPKE_KEY_LABEL(%rip), %rdi
	pushq	%rdi
	pushq	$6
	leaq	-1110(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_hpke_labeled_expand@PLT
	addq	$48, %rsp
	cmpl	$1, %eax
	je	.L136
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L132
.L136:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-1128(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-1128(%rbp), %rax
	movq	136(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$774, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-1128(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-1128(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L145
	movq	-1128(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-1128(%rbp), %rax
	movq	128(%rax), %rsi
	leaq	OSSL_HPKE_SEC51LABEL(%rip), %r9
	movq	-56(%rbp), %r8
	leaq	-1104(%rbp), %rcx
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	leaq	-592(%rbp), %rdi
	pushq	%rdi
	leaq	OSSL_HPKE_EXP_LABEL(%rip), %rdi
	pushq	%rdi
	pushq	$6
	leaq	-1110(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_hpke_labeled_expand@PLT
	addq	$48, %rsp
	cmpl	$1, %eax
	je	.L141
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L132
.L141:
	movl	$1, -4(%rbp)
	jmp	.L132
.L143:
	nop
	jmp	.L132
.L144:
	nop
	jmp	.L132
.L145:
	nop
.L132:
	leaq	-592(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-1104(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-4(%rbp), %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	hpke_do_middle, .-hpke_do_middle
	.globl	OSSL_HPKE_CTX_new
	.type	OSSL_HPKE_CTX_new, @function
OSSL_HPKE_CTX_new:
.LFB373:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	$0, -8(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	hpke_mode_check
	cmpl	$1, %eax
	je	.L147
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$808, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L155
.L147:
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movzwl	-44(%rbp), %eax
	movzwl	-42(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-40(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	hpke_suite_check
	cmpl	$1, %eax
	je	.L149
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L155
.L149:
	cmpl	$0, -48(%rbp)
	je	.L150
	cmpl	$1, -48(%rbp)
	je	.L150
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$816, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L155
.L150:
	leaq	.LC2(%rip), %rax
	movl	$819, %edx
	movq	%rax, %rsi
	movl	$208, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L151
	movl	$0, %eax
	jmp	.L155
.L151:
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -64(%rbp)
	je	.L152
	leaq	.LC2(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$824, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L156
.L152:
	movzwl	-40(%rbp), %eax
	cmpw	$-1, %ax
	je	.L154
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L154
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$831, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524557, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L153
.L154:
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 64(%rax)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 20(%rax)
	movzwl	-40(%rbp), %edx
	movw	%dx, 24(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	jmp	.L155
.L156:
	nop
.L153:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$845, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$846, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	OSSL_HPKE_CTX_new, .-OSSL_HPKE_CTX_new
	.globl	OSSL_HPKE_CTX_free
	.type	OSSL_HPKE_CTX_free, @function
OSSL_HPKE_CTX_free:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L160
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$855, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	136(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$856, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$857, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$858, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$859, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	120(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$860, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$861, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	200(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$862, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$864, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$866, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L157
.L160:
	nop
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	OSSL_HPKE_CTX_free, .-OSSL_HPKE_CTX_free
	.globl	OSSL_HPKE_CTX_set1_psk
	.type	OSSL_HPKE_CTX_set1_psk, @function
OSSL_HPKE_CTX_set1_psk:
.LFB375:
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
	cmpq	$0, -8(%rbp)
	je	.L162
	cmpq	$0, -16(%rbp)
	je	.L162
	cmpq	$0, -24(%rbp)
	je	.L162
	cmpq	$0, -32(%rbp)
	jne	.L163
.L162:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$875, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L164
.L163:
	cmpq	$66, -32(%rbp)
	jbe	.L165
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$879, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L164
.L165:
	cmpq	$31, -32(%rbp)
	ja	.L166
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$883, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L164
.L166:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$66, %rax
	jbe	.L167
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$887, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L164
.L167:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L168
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$891, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L164
.L168:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L169
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$3, %eax
	je	.L169
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$896, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L164
.L169:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$900, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$901, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 152(%rdx)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L170
	movl	$0, %eax
	jmp	.L164
.L170:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 160(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$905, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$906, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 144(%rdx)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L171
	movq	-8(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$908, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	movl	$0, %eax
	jmp	.L164
.L171:
	movl	$1, %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	OSSL_HPKE_CTX_set1_psk, .-OSSL_HPKE_CTX_set1_psk
	.globl	OSSL_HPKE_CTX_set1_ikme
	.type	OSSL_HPKE_CTX_set1_ikme, @function
OSSL_HPKE_CTX_set1_ikme:
.LFB376:
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
	cmpq	$0, -8(%rbp)
	je	.L173
	cmpq	$0, -16(%rbp)
	jne	.L174
.L173:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$920, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L175
.L174:
	cmpq	$0, -24(%rbp)
	je	.L176
	cmpq	$66, -24(%rbp)
	jbe	.L177
.L176:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$924, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L175
.L177:
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L178
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$928, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L175
.L178:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$931, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$932, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 192(%rdx)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L179
	movl	$0, %eax
	jmp	.L175
.L179:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 200(%rax)
	movl	$1, %eax
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	OSSL_HPKE_CTX_set1_ikme, .-OSSL_HPKE_CTX_set1_ikme
	.globl	OSSL_HPKE_CTX_set1_authpriv
	.type	OSSL_HPKE_CTX_set1_authpriv, @function
OSSL_HPKE_CTX_set1_authpriv:
.LFB377:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L181
	cmpq	$0, -16(%rbp)
	jne	.L182
.L181:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$942, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L182:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	je	.L184
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$3, %eax
	je	.L184
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$947, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L184:
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L185
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$951, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L185:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 168(%rdx)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L186
	movl	$0, %eax
	jmp	.L183
.L186:
	movl	$1, %eax
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	OSSL_HPKE_CTX_set1_authpriv, .-OSSL_HPKE_CTX_set1_authpriv
	.section	.rodata
.LC7:
	.string	"encoded-pub-key"
	.text
	.globl	OSSL_HPKE_CTX_set1_authpub
	.type	OSSL_HPKE_CTX_set1_authpub, @function
OSSL_HPKE_CTX_set1_authpub:
.LFB378:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L188
	cmpq	$0, -64(%rbp)
	je	.L188
	cmpq	$0, -72(%rbp)
	jne	.L189
.L188:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$971, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L200
.L189:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	je	.L191
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$3, %eax
	je	.L191
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$976, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L200
.L191:
	movq	-56(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L192
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$980, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L200
.L192:
	movq	-56(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ossl_HPKE_KEM_INFO_find_id@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L193
	movl	$0, %eax
	jmp	.L200
.L193:
	movq	-56(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	hpke_kem_id_nist_curve
	cmpl	$1, %eax
	jne	.L194
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_pkey_new_raw_nist_public_key
	movq	%rax, -16(%rbp)
	jmp	.L195
.L194:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_public_key_ex@PLT
	movq	%rax, -16(%rbp)
.L195:
	cmpq	$0, -16(%rbp)
	jne	.L196
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$999, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L197
.L196:
	leaq	.LC2(%rip), %rax
	movl	$1006, %edx
	movq	%rax, %rsi
	movl	$512, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L201
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$512, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	cmpl	$1, %eax
	je	.L199
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1013, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1014, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L197
.L199:
	movq	-56(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1018, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 176(%rax)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 184(%rax)
	movl	$1, -4(%rbp)
	jmp	.L197
.L201:
	nop
.L197:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	OSSL_HPKE_CTX_set1_authpub, .-OSSL_HPKE_CTX_set1_authpub
	.globl	OSSL_HPKE_CTX_get_seq
	.type	OSSL_HPKE_CTX_get_seq, @function
OSSL_HPKE_CTX_get_seq:
.LFB379:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L203
	cmpq	$0, -16(%rbp)
	jne	.L204
.L203:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1031, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L205
.L204:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	OSSL_HPKE_CTX_get_seq, .-OSSL_HPKE_CTX_get_seq
	.globl	OSSL_HPKE_CTX_set_seq
	.type	OSSL_HPKE_CTX_set_seq, @function
OSSL_HPKE_CTX_set_seq:
.LFB380:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L207
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1041, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L208
.L207:
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jne	.L209
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1050, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L208
.L209:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movl	$1, %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	OSSL_HPKE_CTX_set_seq, .-OSSL_HPKE_CTX_set_seq
	.globl	OSSL_HPKE_encap
	.type	OSSL_HPKE_encap, @function
OSSL_HPKE_encap:
.LFB381:
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
	movl	$1, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L211
	cmpq	$0, -32(%rbp)
	je	.L211
	cmpq	$0, -40(%rbp)
	je	.L211
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L211
	cmpq	$0, -48(%rbp)
	je	.L211
	cmpq	$0, -56(%rbp)
	jne	.L212
.L211:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1067, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L213
.L212:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L214
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1071, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L213
.L214:
	cmpq	$1024, 16(%rbp)
	jbe	.L215
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1075, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L213
.L215:
	cmpq	$0, 16(%rbp)
	je	.L216
	cmpq	$0, -64(%rbp)
	jne	.L216
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1079, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L213
.L216:
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movzwl	24(%rax), %eax
	salq	$32, %rax
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_get_public_encap_size@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L217
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L218
.L217:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1084, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L213
.L218:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L219
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1089, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L213
.L219:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	hpke_encap
	cmpl	$1, %eax
	je	.L220
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1093, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L213
.L220:
	movq	16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	hpke_do_middle
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	OSSL_HPKE_encap, .-OSSL_HPKE_encap
	.globl	OSSL_HPKE_decap
	.type	OSSL_HPKE_decap, @function
OSSL_HPKE_decap:
.LFB382:
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
	movl	$1, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L222
	cmpq	$0, -32(%rbp)
	je	.L222
	cmpq	$0, -40(%rbp)
	je	.L222
	cmpq	$0, -48(%rbp)
	jne	.L223
.L222:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L224
.L223:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L225
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L224
.L225:
	cmpq	$1024, -64(%rbp)
	jbe	.L226
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1122, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L224
.L226:
	cmpq	$0, -64(%rbp)
	je	.L227
	cmpq	$0, -56(%rbp)
	jne	.L227
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L224
.L227:
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movzwl	24(%rax), %eax
	salq	$32, %rax
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_get_public_encap_size@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L228
	movq	-16(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L229
.L228:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L224
.L229:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L230
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1136, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L224
.L230:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	hpke_decap
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L231
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L224
.L231:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	hpke_do_middle
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	OSSL_HPKE_decap, .-OSSL_HPKE_decap
	.globl	OSSL_HPKE_seal
	.type	OSSL_HPKE_seal, @function
OSSL_HPKE_seal:
.LFB383:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L233
	cmpq	$0, -48(%rbp)
	je	.L233
	cmpq	$0, -56(%rbp)
	je	.L233
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L233
	cmpq	$0, -80(%rbp)
	je	.L233
	cmpq	$0, 16(%rbp)
	jne	.L234
.L233:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L234:
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L236
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L236:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$-1, %rax
	jne	.L237
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L237:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L238
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L239
.L238:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L239:
	leaq	-20(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	hpke_seqnonce2buf
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L240
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L240:
	movq	16(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	-20(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	hpke_aead_enc
	addq	$16, %rsp
	cmpl	$1, %eax
	je	.L241
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1185, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	-20(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L242
.L241:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 72(%rax)
	leaq	-20(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	OSSL_HPKE_seal, .-OSSL_HPKE_seal
	.globl	OSSL_HPKE_open
	.type	OSSL_HPKE_open, @function
OSSL_HPKE_open:
.LFB384:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L244
	cmpq	$0, -48(%rbp)
	je	.L244
	cmpq	$0, -56(%rbp)
	je	.L244
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L244
	cmpq	$0, -80(%rbp)
	je	.L244
	cmpq	$0, 16(%rbp)
	jne	.L245
.L244:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1205, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L253
.L245:
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L247
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L253
.L247:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$-1, %rax
	jne	.L248
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L253
.L248:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L249
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L250
.L249:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1218, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L253
.L250:
	leaq	-20(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	hpke_seqnonce2buf
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L251
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L253
.L251:
	movq	16(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	-20(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	hpke_aead_dec
	addq	$16, %rsp
	cmpl	$1, %eax
	je	.L252
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1227, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	-20(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L253
.L252:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 72(%rax)
	leaq	-20(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
.L253:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	OSSL_HPKE_open, .-OSSL_HPKE_open
	.globl	OSSL_HPKE_export
	.type	OSSL_HPKE_export, @function
OSSL_HPKE_export:
.LFB385:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L255
	cmpq	$0, -64(%rbp)
	je	.L255
	cmpq	$0, -72(%rbp)
	jne	.L256
.L255:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1247, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L264
.L256:
	cmpq	$66, -88(%rbp)
	jbe	.L258
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1251, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L264
.L258:
	cmpq	$0, -88(%rbp)
	je	.L259
	cmpq	$0, -80(%rbp)
	jne	.L259
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1255, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L264
.L259:
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L260
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L264
.L260:
	movq	-56(%rbp), %rax
	movzwl	22(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ossl_HPKE_KDF_INFO_find_id@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L261
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1264, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L264
.L261:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rsi
	call	ossl_kdf_ctx_create@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L262
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1270, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L264
.L262:
	movq	-56(%rbp), %rax
	movzwl	20(%rax), %eax
	shrw	$8, %ax
	movb	%al, -38(%rbp)
	movq	-56(%rbp), %rax
	movzwl	20(%rax), %eax
	movb	%al, -37(%rbp)
	movq	-56(%rbp), %rax
	movzwl	22(%rax), %eax
	shrw	$8, %ax
	movb	%al, -36(%rbp)
	movq	-56(%rbp), %rax
	movzwl	22(%rax), %eax
	movb	%al, -35(%rbp)
	movq	-56(%rbp), %rax
	movzwl	24(%rax), %eax
	shrw	$8, %ax
	movb	%al, -34(%rbp)
	movq	-56(%rbp), %rax
	movzwl	24(%rax), %eax
	movb	%al, -33(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %r8
	movq	-56(%rbp), %rax
	movq	128(%rax), %rcx
	leaq	OSSL_HPKE_SEC51LABEL(%rip), %r9
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	leaq	OSSL_HPKE_EXP_SEC_LABEL(%rip), %rdi
	pushq	%rdi
	pushq	$6
	leaq	-38(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_hpke_labeled_expand@PLT
	addq	$48, %rsp
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	cmpl	$1, -4(%rbp)
	je	.L263
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1288, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L263:
	movl	-4(%rbp), %eax
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	OSSL_HPKE_export, .-OSSL_HPKE_export
	.section	.rodata
.LC8:
	.string	"dhkem-ikm"
	.text
	.globl	OSSL_HPKE_keygen
	.type	OSSL_HPKE_keygen, @function
OSSL_HPKE_keygen:
.LFB386:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -192(%rbp)
	je	.L266
	cmpq	$0, -200(%rbp)
	je	.L266
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L266
	cmpq	$0, -208(%rbp)
	jne	.L267
.L266:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1304, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L284
.L267:
	leaq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movzwl	-184(%rbp), %eax
	movzwl	-182(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-180(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	hpke_suite_check
	cmpl	$1, %eax
	je	.L269
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1308, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L284
.L269:
	cmpq	$0, -224(%rbp)
	je	.L270
	cmpq	$0, -216(%rbp)
	je	.L271
.L270:
	cmpq	$0, -224(%rbp)
	jne	.L272
	cmpq	$0, -216(%rbp)
	jne	.L271
.L272:
	cmpq	$66, -224(%rbp)
	jbe	.L273
.L271:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1314, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L284
.L273:
	movzwl	-184(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	hpke_kem_id_nist_curve
	cmpl	$1, %eax
	jne	.L274
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-272(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	24(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -32(%rbp)
	jmp	.L275
.L274:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -32(%rbp)
.L275:
	cmpq	$0, -32(%rbp)
	je	.L276
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jg	.L277
.L276:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L278
.L277:
	cmpq	$0, -216(%rbp)
	je	.L279
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-272(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
.L279:
	movq	-40(%rbp), %rbx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-176(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	jg	.L280
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1335, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L278
.L280:
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	testl	%eax, %eax
	jg	.L281
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L278
.L281:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -32(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	cmpl	$1, %eax
	je	.L282
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1346, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L278
.L282:
	movq	-48(%rbp), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -20(%rbp)
.L278:
	cmpl	$1, -20(%rbp)
	je	.L283
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L283:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
.L284:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	OSSL_HPKE_keygen, .-OSSL_HPKE_keygen
	.globl	OSSL_HPKE_suite_check
	.type	OSSL_HPKE_suite_check, @function
OSSL_HPKE_suite_check:
.LFB387:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movzwl	-8(%rbp), %eax
	movzwl	-6(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-4(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	hpke_suite_check
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	OSSL_HPKE_suite_check, .-OSSL_HPKE_suite_check
	.globl	OSSL_HPKE_get_grease_value
	.type	OSSL_HPKE_get_grease_value, @function
OSSL_HPKE_get_grease_value:
.LFB388:
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
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L288
	cmpq	$0, -80(%rbp)
	je	.L288
	cmpq	$0, -88(%rbp)
	je	.L288
	cmpq	$0, -96(%rbp)
	je	.L288
	cmpq	$0, -64(%rbp)
	jne	.L289
.L288:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1378, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L299
.L289:
	cmpq	$0, -56(%rbp)
	jne	.L291
	leaq	-14(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	hpke_random_suite
	cmpl	$1, %eax
	je	.L292
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1384, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L293
.L291:
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, -14(%rbp)
	movzwl	4(%rax), %eax
	movw	%ax, -10(%rbp)
.L292:
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movzwl	-14(%rbp), %eax
	movzwl	-12(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-10(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	hpke_suite_check
	cmpl	$1, %eax
	je	.L294
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1391, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L293
.L294:
	movq	-64(%rbp), %rax
	movl	-14(%rbp), %edx
	movl	%edx, (%rax)
	movzwl	-10(%rbp), %edx
	movw	%dx, 4(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-96(%rbp), %rax
	jb	.L295
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1397, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L293
.L295:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L296
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1403, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L293
.L296:
	leaq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movzwl	-14(%rbp), %eax
	movzwl	-12(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-10(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	cmpl	$1, %eax
	je	.L297
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1415, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L293
.L297:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L298
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1420, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L293
.L298:
	movl	$1, %eax
	jmp	.L299
.L293:
	movl	$0, %eax
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	OSSL_HPKE_get_grease_value, .-OSSL_HPKE_get_grease_value
	.globl	OSSL_HPKE_str2suite
	.type	OSSL_HPKE_str2suite, @function
OSSL_HPKE_str2suite:
.LFB389:
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
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_hpke_str2suite@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	OSSL_HPKE_str2suite, .-OSSL_HPKE_str2suite
	.globl	OSSL_HPKE_get_ciphertext_size
	.type	OSSL_HPKE_get_ciphertext_size, @function
OSSL_HPKE_get_ciphertext_size:
.LFB390:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movzwl	-24(%rbp), %eax
	movzwl	-22(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-20(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	hpke_expansion
	cmpl	$1, %eax
	je	.L303
	movl	$0, %eax
	jmp	.L305
.L303:
	movq	-16(%rbp), %rax
.L305:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	OSSL_HPKE_get_ciphertext_size, .-OSSL_HPKE_get_ciphertext_size
	.globl	OSSL_HPKE_get_public_encap_size
	.type	OSSL_HPKE_get_public_encap_size, @function
OSSL_HPKE_get_public_encap_size:
.LFB391:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$16, -8(%rbp)
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movzwl	-40(%rbp), %eax
	movzwl	-38(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-36(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	hpke_expansion
	cmpl	$1, %eax
	je	.L307
	movl	$0, %eax
	jmp	.L309
.L307:
	movq	-16(%rbp), %rax
.L309:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	OSSL_HPKE_get_public_encap_size, .-OSSL_HPKE_get_public_encap_size
	.globl	OSSL_HPKE_get_recommended_ikmelen
	.type	OSSL_HPKE_get_recommended_ikmelen, @function
OSSL_HPKE_get_recommended_ikmelen:
.LFB392:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movzwl	-24(%rbp), %eax
	movzwl	-22(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-20(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	hpke_suite_check
	cmpl	$1, %eax
	je	.L311
	movl	$0, %eax
	jmp	.L314
.L311:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L313
	movl	$0, %eax
	jmp	.L314
.L313:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
.L314:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	OSSL_HPKE_get_recommended_ikmelen, .-OSSL_HPKE_get_recommended_ikmelen
	.section	.rodata
	.align 32
	.type	__func__.20, @object
	.size	__func__.20, 33
__func__.20:
	.string	"evp_pkey_new_raw_nist_public_key"
	.align 8
	.type	__func__.19, @object
	.size	__func__.19, 14
__func__.19:
	.string	"hpke_aead_dec"
	.align 8
	.type	__func__.18, @object
	.size	__func__.18, 14
__func__.18:
	.string	"hpke_aead_enc"
	.align 8
	.type	__func__.17, @object
	.size	__func__.17, 15
__func__.17:
	.string	"hpke_expansion"
	.align 8
	.type	__func__.16, @object
	.size	__func__.16, 11
__func__.16:
	.string	"hpke_encap"
	.align 8
	.type	__func__.15, @object
	.size	__func__.15, 11
__func__.15:
	.string	"hpke_decap"
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 15
__func__.14:
	.string	"hpke_do_middle"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 18
__func__.13:
	.string	"OSSL_HPKE_CTX_new"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 23
__func__.12:
	.string	"OSSL_HPKE_CTX_set1_psk"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 24
__func__.11:
	.string	"OSSL_HPKE_CTX_set1_ikme"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 28
__func__.10:
	.string	"OSSL_HPKE_CTX_set1_authpriv"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 27
__func__.9:
	.string	"OSSL_HPKE_CTX_set1_authpub"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 22
__func__.8:
	.string	"OSSL_HPKE_CTX_get_seq"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 22
__func__.7:
	.string	"OSSL_HPKE_CTX_set_seq"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 16
__func__.6:
	.string	"OSSL_HPKE_encap"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"OSSL_HPKE_decap"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 15
__func__.4:
	.string	"OSSL_HPKE_seal"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"OSSL_HPKE_open"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"OSSL_HPKE_export"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"OSSL_HPKE_keygen"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"OSSL_HPKE_get_grease_value"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
