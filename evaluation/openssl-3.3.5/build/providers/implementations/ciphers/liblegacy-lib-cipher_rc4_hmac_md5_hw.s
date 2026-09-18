	.file	"cipher_rc4_hmac_md5_hw.c"
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
	.type	cipher_hw_rc4_hmac_md5_initkey, @function
cipher_hw_rc4_hmac_md5_initkey:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	RC4_set_key@PLT
	movq	-24(%rbp), %rax
	addq	$1224, %rax
	movq	%rax, %rdi
	call	MD5_Init@PLT
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	1224(%rdx), %rcx
	movq	1232(%rdx), %rbx
	movq	%rcx, 1316(%rax)
	movq	%rbx, 1324(%rax)
	movq	1240(%rdx), %rcx
	movq	1248(%rdx), %rbx
	movq	%rcx, 1332(%rax)
	movq	%rbx, 1340(%rax)
	movq	1256(%rdx), %rcx
	movq	1264(%rdx), %rbx
	movq	%rcx, 1348(%rax)
	movq	%rbx, 1356(%rax)
	movq	1272(%rdx), %rcx
	movq	1280(%rdx), %rbx
	movq	%rcx, 1364(%rax)
	movq	%rbx, 1372(%rax)
	movq	1288(%rdx), %rcx
	movq	1296(%rdx), %rbx
	movq	%rcx, 1380(%rax)
	movq	%rbx, 1388(%rax)
	movq	1300(%rdx), %rcx
	movq	1308(%rdx), %rbx
	movq	%rcx, 1392(%rax)
	movq	%rbx, 1400(%rax)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	1224(%rdx), %rcx
	movq	1232(%rdx), %rbx
	movq	%rcx, 1408(%rax)
	movq	%rbx, 1416(%rax)
	movq	1240(%rdx), %rcx
	movq	1248(%rdx), %rbx
	movq	%rcx, 1424(%rax)
	movq	%rbx, 1432(%rax)
	movq	1256(%rdx), %rcx
	movq	1264(%rdx), %rbx
	movq	%rcx, 1440(%rax)
	movq	%rbx, 1448(%rax)
	movq	1272(%rdx), %rcx
	movq	1280(%rdx), %rbx
	movq	%rcx, 1456(%rax)
	movq	%rbx, 1464(%rax)
	movq	1288(%rdx), %rcx
	movq	1296(%rdx), %rbx
	movq	%rcx, 1472(%rax)
	movq	%rbx, 1480(%rax)
	movq	1300(%rdx), %rcx
	movq	1308(%rdx), %rbx
	movq	%rcx, 1484(%rax)
	movq	%rbx, 1492(%rax)
	movq	-24(%rbp), %rax
	movq	$-1, 1504(%rax)
	movq	-40(%rbp), %rax
	movq	$16, 152(%rax)
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_rc4_hmac_md5_initkey, .-cipher_hw_rc4_hmac_md5_initkey
	.type	cipher_hw_rc4_hmac_md5_cipher, @function
cipher_hw_rc4_hmac_md5_cipher:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	notl	%eax
	movl	%eax, %eax
	andl	$31, %eax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	1496(%rax), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	1504(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$-1, -40(%rbp)
	je	.L8
	movq	-40(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, -128(%rbp)
	je	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-48(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L10
	cmpq	$-1, -40(%rbp)
	jne	.L11
	movq	-128(%rbp), %rax
	movq	%rax, -40(%rbp)
.L11:
	movq	-24(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L12
	addq	$64, -32(%rbp)
.L12:
	movq	-40(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L13
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	shrq	$6, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L13
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L13
	movq	-48(%rbp), %rax
	leaq	1408(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RC4@PLT
	movq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-48(%rbp), %rax
	leaq	1408(%rax), %rcx
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-120(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	%rax, %rsi
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	rc4_md5_enc@PLT
	salq	$6, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movl	1428(%rax), %eax
	movq	-64(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 1428(%rax)
	salq	$3, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	1424(%rax), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 1424(%rax)
	movq	-48(%rbp), %rax
	movl	1424(%rax), %eax
	movq	-64(%rbp), %rdx
	cmpl	%edx, %eax
	jnb	.L15
	movq	-48(%rbp), %rax
	movl	1428(%rax), %eax
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 1428(%rax)
	jmp	.L15
.L13:
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
.L15:
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-48(%rbp), %rdx
	leaq	1408(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-40(%rbp), %rax
	cmpq	-128(%rbp), %rax
	je	.L16
	movq	-120(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L17
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-112(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L17:
	movq	-48(%rbp), %rax
	leaq	1408(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	1316(%rdx), %rcx
	movq	1324(%rdx), %rbx
	movq	%rcx, 1408(%rax)
	movq	%rbx, 1416(%rax)
	movq	1332(%rdx), %rcx
	movq	1340(%rdx), %rbx
	movq	%rcx, 1424(%rax)
	movq	%rbx, 1432(%rax)
	movq	1348(%rdx), %rcx
	movq	1356(%rdx), %rbx
	movq	%rcx, 1440(%rax)
	movq	%rbx, 1448(%rax)
	movq	1364(%rdx), %rcx
	movq	1372(%rdx), %rbx
	movq	%rcx, 1456(%rax)
	movq	%rbx, 1464(%rax)
	movq	1380(%rdx), %rcx
	movq	1388(%rdx), %rbx
	movq	%rcx, 1472(%rax)
	movq	%rbx, 1480(%rax)
	movq	1392(%rdx), %rcx
	movq	1400(%rdx), %rbx
	movq	%rcx, 1484(%rax)
	movq	%rbx, 1492(%rax)
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	addq	$1408, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MD5_Update@PLT
	movq	-48(%rbp), %rax
	leaq	1408(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RC4@PLT
	jmp	.L18
.L16:
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RC4@PLT
	jmp	.L18
.L10:
	movq	-32(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L19
	subq	$-128, -24(%rbp)
	jmp	.L20
.L19:
	addq	$64, -24(%rbp)
.L20:
	movq	-128(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L21
	movq	-128(%rbp), %rax
	subq	-24(%rbp), %rax
	shrq	$6, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L21
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L21
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RC4@PLT
	movq	-48(%rbp), %rax
	leaq	1408(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-48(%rbp), %rax
	leaq	1408(%rax), %rcx
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-120(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	%rax, %rsi
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	rc4_md5_enc@PLT
	salq	$6, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movl	1424(%rax), %eax
	movq	-64(%rbp), %rdx
	sall	$3, %edx
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	1424(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jnb	.L22
	movq	-48(%rbp), %rax
	movl	1428(%rax), %eax
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 1428(%rax)
.L22:
	movq	-48(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 1424(%rax)
	movq	-48(%rbp), %rax
	movl	1428(%rax), %eax
	movq	-64(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 1428(%rax)
	jmp	.L23
.L21:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
.L23:
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RC4@PLT
	cmpq	$-1, -40(%rbp)
	je	.L24
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-48(%rbp), %rdx
	leaq	1408(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-48(%rbp), %rax
	leaq	1408(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	1316(%rdx), %rcx
	movq	1324(%rdx), %rbx
	movq	%rcx, 1408(%rax)
	movq	%rbx, 1416(%rax)
	movq	1332(%rdx), %rcx
	movq	1340(%rdx), %rbx
	movq	%rcx, 1424(%rax)
	movq	%rbx, 1432(%rax)
	movq	1348(%rdx), %rcx
	movq	1356(%rdx), %rbx
	movq	%rcx, 1440(%rax)
	movq	%rbx, 1448(%rax)
	movq	1364(%rdx), %rcx
	movq	1372(%rdx), %rbx
	movq	%rcx, 1456(%rax)
	movq	%rbx, 1464(%rax)
	movq	1380(%rdx), %rcx
	movq	1388(%rdx), %rbx
	movq	%rcx, 1472(%rax)
	movq	%rbx, 1480(%rax)
	movq	1392(%rdx), %rcx
	movq	1400(%rdx), %rbx
	movq	%rcx, 1484(%rax)
	movq	%rbx, 1492(%rax)
	movq	-48(%rbp), %rax
	leaq	1408(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-48(%rbp), %rax
	leaq	1408(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L18
	movl	$0, %eax
	jmp	.L9
.L24:
	movq	-128(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-48(%rbp), %rdx
	leaq	1408(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	MD5_Update@PLT
.L18:
	movq	-48(%rbp), %rax
	movq	$-1, 1504(%rax)
	movl	$1, %eax
.L9:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	cipher_hw_rc4_hmac_md5_cipher, .-cipher_hw_rc4_hmac_md5_cipher
	.type	cipher_hw_rc4_hmac_md5_tls_init, @function
cipher_hw_rc4_hmac_md5_tls_init:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$13, -56(%rbp)
	je	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-56(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L29
	cmpl	$15, -20(%rbp)
	ja	.L30
	movl	$0, %eax
	jmp	.L28
.L30:
	subl	$16, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
.L29:
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rdx, 1504(%rax)
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	1224(%rdx), %rcx
	movq	1232(%rdx), %rbx
	movq	%rcx, 1408(%rax)
	movq	%rbx, 1416(%rax)
	movq	1240(%rdx), %rcx
	movq	1248(%rdx), %rbx
	movq	%rcx, 1424(%rax)
	movq	%rbx, 1432(%rax)
	movq	1256(%rdx), %rcx
	movq	1264(%rdx), %rbx
	movq	%rcx, 1440(%rax)
	movq	%rbx, 1448(%rax)
	movq	1272(%rdx), %rcx
	movq	1280(%rdx), %rbx
	movq	%rcx, 1456(%rax)
	movq	%rbx, 1464(%rax)
	movq	1288(%rdx), %rcx
	movq	1296(%rdx), %rbx
	movq	%rcx, 1472(%rax)
	movq	%rbx, 1480(%rax)
	movq	1300(%rdx), %rcx
	movq	1308(%rdx), %rbx
	movq	%rcx, 1484(%rax)
	movq	%rbx, 1492(%rax)
	movq	-32(%rbp), %rax
	leaq	1408(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movl	$16, %eax
.L28:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	cipher_hw_rc4_hmac_md5_tls_init, .-cipher_hw_rc4_hmac_md5_tls_init
	.type	cipher_hw_rc4_hmac_md5_init_mackey, @function
cipher_hw_rc4_hmac_md5_init_mackey:
.LFB405:
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
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$64, -104(%rbp)
	jbe	.L32
	movq	-16(%rbp), %rax
	addq	$1224, %rax
	movq	%rax, %rdi
	call	MD5_Init@PLT
	movq	-16(%rbp), %rax
	leaq	1224(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-16(%rbp), %rax
	leaq	1224(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	jmp	.L33
.L32:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L33:
	movl	$0, -4(%rbp)
	jmp	.L34
.L35:
	movl	-4(%rbp), %eax
	movzbl	-80(%rbp,%rax), %eax
	xorl	$54, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -4(%rbp)
.L34:
	cmpl	$63, -4(%rbp)
	jbe	.L35
	movq	-16(%rbp), %rax
	addq	$1224, %rax
	movq	%rax, %rdi
	call	MD5_Init@PLT
	movq	-16(%rbp), %rax
	leaq	1224(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movl	$0, -4(%rbp)
	jmp	.L36
.L37:
	movl	-4(%rbp), %eax
	movzbl	-80(%rbp,%rax), %eax
	xorl	$106, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -4(%rbp)
.L36:
	cmpl	$63, -4(%rbp)
	jbe	.L37
	movq	-16(%rbp), %rax
	addq	$1316, %rax
	movq	%rax, %rdi
	call	MD5_Init@PLT
	movq	-16(%rbp), %rax
	leaq	1316(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	leaq	-80(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	cipher_hw_rc4_hmac_md5_init_mackey, .-cipher_hw_rc4_hmac_md5_init_mackey
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	rc4_hmac_md5_hw, @object
	.size	rc4_hmac_md5_hw, 40
rc4_hmac_md5_hw:
	.quad	cipher_hw_rc4_hmac_md5_initkey
	.quad	cipher_hw_rc4_hmac_md5_cipher
	.zero	8
	.quad	cipher_hw_rc4_hmac_md5_tls_init
	.quad	cipher_hw_rc4_hmac_md5_init_mackey
	.text
	.globl	ossl_prov_cipher_hw_rc4_hmac_md5
	.type	ossl_prov_cipher_hw_rc4_hmac_md5, @function
ossl_prov_cipher_hw_rc4_hmac_md5:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	rc4_hmac_md5_hw(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_prov_cipher_hw_rc4_hmac_md5, .-ossl_prov_cipher_hw_rc4_hmac_md5
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
