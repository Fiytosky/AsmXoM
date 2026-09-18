	.file	"cipher_aes_gcm_hw.c"
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
	.type	aes_gcm_initkey, @function
aes_gcm_initkey:
.LFB402:
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
	movq	-8(%rbp), %rax
	addq	$704, %rax
	movq	%rax, -16(%rbp)
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L6
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-24(%rbp), %rax
	leaq	248(%rax), %rcx
	movq	AES_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-24(%rbp), %rax
	movq	ossl_bsaes_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	movq	%rdx, 696(%rax)
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$4, %edx
	movb	%dl, 84(%rax)
	jmp	.L7
.L6:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L8
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	vpaes_set_encrypt_key@PLT
	movq	-24(%rbp), %rax
	leaq	248(%rax), %rcx
	movq	vpaes_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-24(%rbp), %rax
	movq	$0, 696(%rax)
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$4, %edx
	movb	%dl, 84(%rax)
	jmp	.L7
.L8:
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-24(%rbp), %rax
	leaq	248(%rax), %rcx
	movq	AES_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-24(%rbp), %rax
	movq	$0, 696(%rax)
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$4, %edx
	movb	%dl, 84(%rax)
.L7:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	aes_gcm_initkey, .-aes_gcm_initkey
	.type	generic_aes_gcm_cipher_update, @function
generic_aes_gcm_cipher_update:
.LFB403:
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
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L11
	movq	-40(%rbp), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	$0, -8(%rbp)
	cmpq	$31, -56(%rbp)
	jbe	.L13
	movq	-40(%rbp), %rax
	movq	696(%rax), %rax
	movq	aesni_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L13
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movq	gcm_ghash_avx@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L13
	movq	-40(%rbp), %rax
	movl	624(%rax), %eax
	negl	%eax
	movl	%eax, %eax
	andl	$15, %eax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	leaq	248(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_encrypt@PLT
	testl	%eax, %eax
	je	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-40(%rbp), %rax
	leaq	312(%rax), %r9
	movq	-40(%rbp), %rax
	leaq	248(%rax), %r8
	movq	-40(%rbp), %rax
	movq	640(%rax), %rdx
	movq	-56(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rcx
	addq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_gcm_encrypt@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-32(%rbp), %rax
	addq	%rax, -8(%rbp)
.L13:
	movq	-40(%rbp), %rax
	movq	696(%rax), %r8
	movq	-56(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	leaq	248(%rcx), %rdi
	movq	%rax, %rcx
	call	CRYPTO_gcm128_encrypt_ctr32@PLT
	testl	%eax, %eax
	je	.L16
	movl	$0, %eax
	jmp	.L15
.L12:
	movq	-40(%rbp), %rax
	leaq	248(%rax), %rdi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_encrypt@PLT
	testl	%eax, %eax
	je	.L16
	movl	$0, %eax
	jmp	.L15
.L11:
	movq	-40(%rbp), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	$0, -16(%rbp)
	cmpq	$15, -56(%rbp)
	jbe	.L18
	movq	-40(%rbp), %rax
	movq	696(%rax), %rax
	movq	aesni_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L18
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movq	gcm_ghash_avx@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L18
	movq	-40(%rbp), %rax
	movl	624(%rax), %eax
	negl	%eax
	movl	%eax, %eax
	andl	$15, %eax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	248(%rax), %rdi
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_decrypt@PLT
	testl	%eax, %eax
	je	.L19
	movl	$0, %eax
	jmp	.L15
.L19:
	movq	-40(%rbp), %rax
	leaq	312(%rax), %r9
	movq	-40(%rbp), %rax
	leaq	248(%rax), %r8
	movq	-40(%rbp), %rax
	movq	640(%rax), %rdx
	movq	-56(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	addq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	aesni_gcm_decrypt@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-24(%rbp), %rax
	addq	%rax, -16(%rbp)
.L18:
	movq	-40(%rbp), %rax
	movq	696(%rax), %r8
	movq	-56(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	leaq	248(%rcx), %rdi
	movq	%rax, %rcx
	call	CRYPTO_gcm128_decrypt_ctr32@PLT
	testl	%eax, %eax
	je	.L16
	movl	$0, %eax
	jmp	.L15
.L17:
	movq	-40(%rbp), %rax
	leaq	248(%rax), %rdi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	call	CRYPTO_gcm128_decrypt@PLT
	testl	%eax, %eax
	je	.L16
	movl	$0, %eax
	jmp	.L15
.L16:
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	generic_aes_gcm_cipher_update, .-generic_aes_gcm_cipher_update
	.section	.data.rel.ro,"aw"
	.align 32
	.type	aes_gcm, @object
	.size	aes_gcm, 48
aes_gcm:
	.quad	aes_gcm_initkey
	.quad	ossl_gcm_setiv
	.quad	ossl_gcm_aad_update
	.quad	generic_aes_gcm_cipher_update
	.quad	ossl_gcm_cipher_final
	.quad	ossl_gcm_one_shot
	.text
	.type	aesni_gcm_initkey, @function
aesni_gcm_initkey:
.LFB404:
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
	movq	-8(%rbp), %rax
	addq	$704, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movq	-24(%rbp), %rax
	leaq	248(%rax), %rcx
	movq	aesni_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-24(%rbp), %rax
	movq	aesni_ctr32_encrypt_blocks@GOTPCREL(%rip), %rdx
	movq	%rdx, 696(%rax)
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$4, %edx
	movb	%dl, 84(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	aesni_gcm_initkey, .-aesni_gcm_initkey
	.section	.data.rel.ro
	.align 32
	.type	aesni_gcm, @object
	.size	aesni_gcm, 48
aesni_gcm:
	.quad	aesni_gcm_initkey
	.quad	ossl_gcm_setiv
	.quad	ossl_gcm_aad_update
	.quad	generic_aes_gcm_cipher_update
	.quad	ossl_gcm_cipher_final
	.quad	ossl_gcm_one_shot
	.text
	.type	vaes_gcm_setkey, @function
vaes_gcm_setkey:
.LFB405:
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
	movq	-40(%rbp), %rax
	addq	$248, %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$704, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	aesni_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movl	$448, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 392(%rax)
	movq	-40(%rbp), %rax
	movzbl	84(%rax), %edx
	orl	$4, %edx
	movb	%dl, 84(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_aes_gcm_init_avx512@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	vaes_gcm_setkey, .-vaes_gcm_setkey
	.type	vaes_gcm_setiv, @function
vaes_gcm_setiv:
.LFB406:
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
	addq	$248, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 380(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 376(%rax)
	movabsq	$2305843009213693952, %rax
	cmpq	-40(%rbp), %rax
	jnb	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_aes_gcm_setiv_avx512@PLT
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	vaes_gcm_setiv, .-vaes_gcm_setiv
	.type	vaes_gcm_aadupdate, @function
vaes_gcm_aadupdate:
.LFB407:
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
	movq	-56(%rbp), %rax
	addq	$248, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-72(%rbp), %rax
	addq	%rax, -32(%rbp)
	movabsq	$2305843009213693952, %rax
	cmpq	-32(%rbp), %rax
	jb	.L30
	movq	-32(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L31
.L30:
	movl	$0, %eax
	jmp	.L29
.L31:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	380(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L32
	jmp	.L33
.L35:
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %edx
	movl	$15, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movzbl	64(%rax,%rcx), %eax
	movl	$15, %ecx
	subl	-4(%rbp), %ecx
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %ecx
	movb	%dl, 64(%rax,%rcx)
	subq	$1, -72(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
.L33:
	cmpl	$0, -4(%rbp)
	je	.L34
	cmpq	$0, -72(%rbp)
	jne	.L35
.L34:
	cmpl	$0, -4(%rbp)
	jne	.L36
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_gcm_gmult_avx512@PLT
	jmp	.L32
.L36:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 380(%rax)
	movl	$1, %eax
	jmp	.L29
.L32:
	movq	-72(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L37
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_aes_gcm_update_aad_avx512@PLT
	movq	-40(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	subq	%rax, -72(%rbp)
.L37:
	cmpq	$0, -72(%rbp)
	je	.L38
	movq	-72(%rbp), %rax
	movl	%eax, -4(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L39
.L40:
	movl	$15, %eax
	subq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movzbl	64(%rdx,%rax), %ecx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	$15, %eax
	subq	-16(%rbp), %rax
	xorl	%edx, %ecx
	movq	-24(%rbp), %rdx
	movb	%cl, 64(%rdx,%rax)
	addq	$1, -16(%rbp)
.L39:
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L40
.L38:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 380(%rax)
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	vaes_gcm_aadupdate, .-vaes_gcm_aadupdate
	.type	vaes_gcm_cipherupdate, @function
vaes_gcm_cipherupdate:
.LFB408:
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
	addq	$248, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -16(%rbp)
	movabsq	$68719476704, %rax
	cmpq	-16(%rbp), %rax
	jb	.L42
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L43
.L42:
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movl	380(%rax), %eax
	testl	%eax, %eax
	je	.L45
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_gcm_gmult_avx512@PLT
	movq	-8(%rbp), %rax
	movl	$0, 380(%rax)
.L45:
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L46
	movq	-8(%rbp), %rax
	leaq	376(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_aes_gcm_encrypt_avx512@PLT
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	leaq	376(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_aes_gcm_decrypt_avx512@PLT
.L47:
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	vaes_gcm_cipherupdate, .-vaes_gcm_cipherupdate
	.type	vaes_gcm_cipherfinal, @function
vaes_gcm_cipherfinal:
.LFB409:
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
	addq	$248, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$376, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	380(%rax), %eax
	testl	%eax, %eax
	je	.L49
	movq	-16(%rbp), %rax
	addq	$380, %rax
	movq	%rax, -8(%rbp)
.L49:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_aes_gcm_finalize_avx512@PLT
	movq	-24(%rbp), %rax
	movzbl	84(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L50
	movq	-24(%rbp), %rax
	movq	$16, 24(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$16, %edx
	cmpq	%rdx, %rax
	cmovbe	%rax, %rdx
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, %eax
	jmp	.L52
.L50:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	vaes_gcm_cipherfinal, .-vaes_gcm_cipherfinal
	.section	.data.rel.ro
	.align 32
	.type	vaes_gcm, @object
	.size	vaes_gcm, 48
vaes_gcm:
	.quad	vaes_gcm_setkey
	.quad	vaes_gcm_setiv
	.quad	vaes_gcm_aadupdate
	.quad	vaes_gcm_cipherupdate
	.quad	vaes_gcm_cipherfinal
	.quad	ossl_gcm_one_shot
	.text
	.globl	ossl_prov_aes_hw_gcm
	.type	ossl_prov_aes_hw_gcm, @function
ossl_prov_aes_hw_gcm:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_vaes_vpclmulqdq_capable@PLT
	testl	%eax, %eax
	je	.L54
	leaq	vaes_gcm(%rip), %rax
	jmp	.L55
.L54:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L56
	leaq	aesni_gcm(%rip), %rax
	jmp	.L55
.L56:
	leaq	aes_gcm(%rip), %rax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_prov_aes_hw_gcm, .-ossl_prov_aes_hw_gcm
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
