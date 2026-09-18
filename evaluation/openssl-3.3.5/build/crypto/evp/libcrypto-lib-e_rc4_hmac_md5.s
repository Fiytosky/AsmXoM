	.file	"e_rc4_hmac_md5.c"
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
	.type	rc4_hmac_md5_init_key, @function
rc4_hmac_md5_init_key:
.LFB457:
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
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	RC4_set_key@PLT
	movq	-24(%rbp), %rax
	addq	$1032, %rax
	movq	%rax, %rdi
	call	MD5_Init@PLT
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	1032(%rdx), %rcx
	movq	1040(%rdx), %rbx
	movq	%rcx, 1124(%rax)
	movq	%rbx, 1132(%rax)
	movq	1048(%rdx), %rcx
	movq	1056(%rdx), %rbx
	movq	%rcx, 1140(%rax)
	movq	%rbx, 1148(%rax)
	movq	1064(%rdx), %rcx
	movq	1072(%rdx), %rbx
	movq	%rcx, 1156(%rax)
	movq	%rbx, 1164(%rax)
	movq	1080(%rdx), %rcx
	movq	1088(%rdx), %rbx
	movq	%rcx, 1172(%rax)
	movq	%rbx, 1180(%rax)
	movq	1096(%rdx), %rcx
	movq	1104(%rdx), %rbx
	movq	%rcx, 1188(%rax)
	movq	%rbx, 1196(%rax)
	movq	1108(%rdx), %rcx
	movq	1116(%rdx), %rbx
	movq	%rcx, 1200(%rax)
	movq	%rbx, 1208(%rax)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	1032(%rdx), %rcx
	movq	1040(%rdx), %rbx
	movq	%rcx, 1216(%rax)
	movq	%rbx, 1224(%rax)
	movq	1048(%rdx), %rcx
	movq	1056(%rdx), %rbx
	movq	%rcx, 1232(%rax)
	movq	%rbx, 1240(%rax)
	movq	1064(%rdx), %rcx
	movq	1072(%rdx), %rbx
	movq	%rcx, 1248(%rax)
	movq	%rbx, 1256(%rax)
	movq	1080(%rdx), %rcx
	movq	1088(%rdx), %rbx
	movq	%rcx, 1264(%rax)
	movq	%rbx, 1272(%rax)
	movq	1096(%rdx), %rcx
	movq	1104(%rdx), %rbx
	movq	%rcx, 1280(%rax)
	movq	%rbx, 1288(%rax)
	movq	1108(%rdx), %rcx
	movq	1116(%rdx), %rbx
	movq	%rcx, 1292(%rax)
	movq	%rbx, 1300(%rax)
	movq	-24(%rbp), %rax
	movq	$-1, 1312(%rax)
	movl	$1, %eax
.L7:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	rc4_hmac_md5_init_key, .-rc4_hmac_md5_init_key
	.type	rc4_hmac_md5_cipher, @function
rc4_hmac_md5_cipher:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	notl	%eax
	movl	%eax, %eax
	andl	$31, %eax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	1304(%rax), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	1312(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$-1, -40(%rbp)
	je	.L9
	movq	-40(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, -112(%rbp)
	je	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L11
	cmpq	$-1, -40(%rbp)
	jne	.L12
	movq	-112(%rbp), %rax
	movq	%rax, -40(%rbp)
.L12:
	movq	-24(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L13
	addq	$64, -32(%rbp)
.L13:
	movq	-40(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L14
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	shrq	$6, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L14
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L14
	movq	-48(%rbp), %rax
	leaq	1216(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	call	RC4@PLT
	movq	-104(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-48(%rbp), %rax
	leaq	1216(%rax), %rcx
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	%rax, %rsi
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	rc4_md5_enc@PLT
	salq	$6, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movl	1236(%rax), %eax
	movq	-56(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 1236(%rax)
	salq	$3, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	1232(%rax), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 1232(%rax)
	movq	-48(%rbp), %rax
	movl	1232(%rax), %eax
	movq	-56(%rbp), %rdx
	cmpl	%edx, %eax
	jnb	.L16
	movq	-48(%rbp), %rax
	movl	1236(%rax), %eax
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 1236(%rax)
	jmp	.L16
.L14:
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
.L16:
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-48(%rbp), %rdx
	leaq	1216(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-40(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L17
	movq	-104(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L18
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-96(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L18:
	movq	-48(%rbp), %rax
	leaq	1216(%rax), %rdx
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	1124(%rdx), %rcx
	movq	1132(%rdx), %rbx
	movq	%rcx, 1216(%rax)
	movq	%rbx, 1224(%rax)
	movq	1140(%rdx), %rcx
	movq	1148(%rdx), %rbx
	movq	%rcx, 1232(%rax)
	movq	%rbx, 1240(%rax)
	movq	1156(%rdx), %rcx
	movq	1164(%rdx), %rbx
	movq	%rcx, 1248(%rax)
	movq	%rbx, 1256(%rax)
	movq	1172(%rdx), %rcx
	movq	1180(%rdx), %rbx
	movq	%rcx, 1264(%rax)
	movq	%rbx, 1272(%rax)
	movq	1188(%rdx), %rcx
	movq	1196(%rdx), %rbx
	movq	%rcx, 1280(%rax)
	movq	%rbx, 1288(%rax)
	movq	1200(%rdx), %rcx
	movq	1208(%rdx), %rbx
	movq	%rcx, 1292(%rax)
	movq	%rbx, 1300(%rax)
	movq	-96(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	addq	$1216, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MD5_Update@PLT
	movq	-48(%rbp), %rax
	leaq	1216(%rax), %rdx
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-112(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	RC4@PLT
	jmp	.L19
.L17:
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-112(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	RC4@PLT
	jmp	.L19
.L11:
	movq	-32(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L20
	subq	$-128, -24(%rbp)
	jmp	.L21
.L20:
	addq	$64, -24(%rbp)
.L21:
	movq	-112(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L22
	movq	-112(%rbp), %rax
	subq	-24(%rbp), %rax
	shrq	$6, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L22
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L22
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	call	RC4@PLT
	movq	-48(%rbp), %rax
	leaq	1216(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-48(%rbp), %rax
	leaq	1216(%rax), %rcx
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	%rax, %rsi
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	rc4_md5_enc@PLT
	salq	$6, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movl	1232(%rax), %eax
	movq	-56(%rbp), %rdx
	sall	$3, %edx
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rax
	movl	1232(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jnb	.L23
	movq	-48(%rbp), %rax
	movl	1236(%rax), %eax
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 1236(%rax)
.L23:
	movq	-48(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 1232(%rax)
	movq	-48(%rbp), %rax
	movl	1236(%rax), %eax
	movq	-56(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 1236(%rax)
	jmp	.L24
.L22:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
.L24:
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-112(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	RC4@PLT
	cmpq	$-1, -40(%rbp)
	je	.L25
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-48(%rbp), %rdx
	leaq	1216(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-48(%rbp), %rax
	leaq	1216(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	1124(%rdx), %rcx
	movq	1132(%rdx), %rbx
	movq	%rcx, 1216(%rax)
	movq	%rbx, 1224(%rax)
	movq	1140(%rdx), %rcx
	movq	1148(%rdx), %rbx
	movq	%rcx, 1232(%rax)
	movq	%rbx, 1240(%rax)
	movq	1156(%rdx), %rcx
	movq	1164(%rdx), %rbx
	movq	%rcx, 1248(%rax)
	movq	%rbx, 1256(%rax)
	movq	1172(%rdx), %rcx
	movq	1180(%rdx), %rbx
	movq	%rcx, 1264(%rax)
	movq	%rbx, 1272(%rax)
	movq	1188(%rdx), %rcx
	movq	1196(%rdx), %rbx
	movq	%rcx, 1280(%rax)
	movq	%rbx, 1288(%rax)
	movq	1200(%rdx), %rcx
	movq	1208(%rdx), %rbx
	movq	%rcx, 1292(%rax)
	movq	%rbx, 1300(%rax)
	movq	-48(%rbp), %rax
	leaq	1216(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-48(%rbp), %rax
	leaq	1216(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	movq	-96(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L19
	movl	$0, %eax
	jmp	.L10
.L25:
	movq	-112(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-48(%rbp), %rdx
	leaq	1216(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	MD5_Update@PLT
.L19:
	movq	-48(%rbp), %rax
	movq	$-1, 1312(%rax)
	movl	$1, %eax
.L10:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	rc4_hmac_md5_cipher, .-rc4_hmac_md5_cipher
	.type	rc4_hmac_md5_ctrl, @function
rc4_hmac_md5_ctrl:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	%edx, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -32(%rbp)
	cmpl	$22, -124(%rbp)
	je	.L28
	cmpl	$23, -124(%rbp)
	jne	.L29
	leaq	-112(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$64, -128(%rbp)
	jle	.L30
	movq	-32(%rbp), %rax
	addq	$1032, %rax
	movq	%rax, %rdi
	call	MD5_Init@PLT
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	1032(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movq	-32(%rbp), %rax
	leaq	1032(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	jmp	.L31
.L30:
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L31:
	movl	$0, -20(%rbp)
	jmp	.L32
.L33:
	movl	-20(%rbp), %eax
	movzbl	-112(%rbp,%rax), %eax
	xorl	$54, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movb	%dl, -112(%rbp,%rax)
	addl	$1, -20(%rbp)
.L32:
	cmpl	$63, -20(%rbp)
	jbe	.L33
	movq	-32(%rbp), %rax
	addq	$1032, %rax
	movq	%rax, %rdi
	call	MD5_Init@PLT
	movq	-32(%rbp), %rax
	leaq	1032(%rax), %rcx
	leaq	-112(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movl	$0, -20(%rbp)
	jmp	.L34
.L35:
	movl	-20(%rbp), %eax
	movzbl	-112(%rbp,%rax), %eax
	xorl	$106, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movb	%dl, -112(%rbp,%rax)
	addl	$1, -20(%rbp)
.L34:
	cmpl	$63, -20(%rbp)
	jbe	.L35
	movq	-32(%rbp), %rax
	addq	$1124, %rax
	movq	%rax, %rdi
	call	MD5_Init@PLT
	movq	-32(%rbp), %rax
	leaq	1124(%rax), %rcx
	leaq	-112(%rbp), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	leaq	-112(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
	jmp	.L36
.L28:
	movq	-136(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$13, -128(%rbp)
	je	.L37
	movl	$-1, %eax
	jmp	.L36
.L37:
	movl	-128(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L38
	cmpl	$15, -24(%rbp)
	ja	.L39
	movl	$-1, %eax
	jmp	.L36
.L39:
	subl	$16, -24(%rbp)
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movl	-128(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	movb	%dl, (%rax)
.L38:
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rdx, 1312(%rax)
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	1032(%rdx), %rcx
	movq	1040(%rdx), %rbx
	movq	%rcx, 1216(%rax)
	movq	%rbx, 1224(%rax)
	movq	1048(%rdx), %rcx
	movq	1056(%rdx), %rbx
	movq	%rcx, 1232(%rax)
	movq	%rbx, 1240(%rax)
	movq	1064(%rdx), %rcx
	movq	1072(%rdx), %rbx
	movq	%rcx, 1248(%rax)
	movq	%rbx, 1256(%rax)
	movq	1080(%rdx), %rcx
	movq	1088(%rdx), %rbx
	movq	%rcx, 1264(%rax)
	movq	%rbx, 1272(%rax)
	movq	1096(%rdx), %rcx
	movq	1104(%rdx), %rbx
	movq	%rcx, 1280(%rax)
	movq	%rbx, 1288(%rax)
	movq	1108(%rdx), %rcx
	movq	1116(%rdx), %rbx
	movq	%rcx, 1292(%rax)
	movq	%rbx, 1300(%rax)
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	1216(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	MD5_Update@PLT
	movl	$16, %eax
	jmp	.L36
.L29:
	movl	$-1, %eax
.L36:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	rc4_hmac_md5_ctrl, .-rc4_hmac_md5_ctrl
	.section	.data.rel.local,"aw"
	.align 32
	.type	r4_hmac_md5_cipher, @object
	.size	r4_hmac_md5_cipher, 248
r4_hmac_md5_cipher:
	.long	915
	.long	1
	.long	16
	.long	0
	.quad	2097160
	.long	1
	.zero	4
	.quad	rc4_hmac_md5_init_key
	.quad	rc4_hmac_md5_cipher
	.quad	0
	.long	1320
	.zero	4
	.quad	0
	.quad	0
	.quad	rc4_hmac_md5_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_rc4_hmac_md5
	.type	EVP_rc4_hmac_md5, @function
EVP_rc4_hmac_md5:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	r4_hmac_md5_cipher(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	EVP_rc4_hmac_md5, .-EVP_rc4_hmac_md5
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
