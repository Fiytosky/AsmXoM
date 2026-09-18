	.file	"tls1_meth.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.align 8
.LC0:
	.string	"../ssl/record/methods/tls1_meth.c"
.LC1:
	.string	"HMAC"
	.text
	.type	tls1_set_crypto_state, @function
tls1_set_crypto_state:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	cmpl	$3, -60(%rbp)
	je	.L14
	movl	$-2, %eax
	jmp	.L15
.L14:
	call	EVP_CIPHER_CTX_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 4128(%rdx)
	movq	-56(%rbp), %rax
	movq	4128(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L15
.L16:
	movq	-56(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, -40(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 4144(%rdx)
	movq	-56(%rbp), %rax
	movq	4144(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L15
.L17:
	cmpq	$0, 64(%rbp)
	je	.L18
	movq	64(%rbp), %rax
	movq	%rax, %rdi
	call	COMP_CTX_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 4152(%rdx)
	movq	-56(%rbp), %rax
	movq	4152(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$52, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L18:
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	jne	.L19
	cmpl	$855, 48(%rbp)
	jne	.L20
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rcx
	leaq	.LC1(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_private_key_ex@PLT
	movq	%rax, -24(%rbp)
	jmp	.L21
.L20:
	movq	24(%rbp), %rax
	movl	%eax, %ecx
	movq	16(%rbp), %rdx
	movl	48(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	EVP_PKEY_new_mac_key@PLT
	movq	%rax, -24(%rbp)
.L21:
	cmpq	$0, -24(%rbp)
	je	.L22
	movq	-56(%rbp), %rax
	movq	8(%rax), %r12
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	4144(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L23
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L23:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L19:
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$6, %eax
	jne	.L24
	movl	-32(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L25
	movq	-96(%rbp), %rax
	movl	%eax, %esi
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$18, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L26
.L25:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$91, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L24:
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$7, %eax
	jne	.L27
	movl	-32(%rbp), %edx
	movq	32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L28
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$12, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L28
	movq	40(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L28
	movq	-96(%rbp), %rax
	movl	%eax, %esi
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$18, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L28
	movl	-32(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L26
.L28:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L27:
	movl	-32(%rbp), %edi
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$108, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L26:
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L29
	cmpq	$0, 24(%rbp)
	je	.L29
	movq	24(%rbp), %rax
	movl	%eax, %esi
	movq	16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$23, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L29
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L29:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_provider@PLT
	testq	%rax, %rax
	je	.L30
	movq	56(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_set_tls_provider_parameters@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$-2, %eax
	jmp	.L15
.L30:
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$770, %eax
	je	.L31
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$771, %eax
	je	.L31
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$256, %eax
	je	.L31
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65279, %eax
	je	.L31
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65277, %eax
	jne	.L32
.L31:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -44(%rbp)
	movl	$0, -28(%rbp)
	cmpl	$2, -44(%rbp)
	jne	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L34
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$274, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L15
.L34:
	cmpl	$1, -28(%rbp)
	jg	.L35
	movl	$0, -28(%rbp)
	jmp	.L35
.L33:
	cmpl	$6, -44(%rbp)
	jne	.L36
	movl	$8, -28(%rbp)
	jmp	.L35
.L36:
	cmpl	$7, -44(%rbp)
	jne	.L35
	movl	$8, -28(%rbp)
.L35:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 4136(%rax)
.L32:
	movl	$1, %eax
.L15:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	tls1_set_crypto_state, .-tls1_set_crypto_state
	.section	.rodata
.LC2:
	.string	"tls-mac"
	.text
	.type	tls1_cipher, @function
tls1_cipher:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1256, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1176(%rbp)
	movq	%rsi, -1184(%rbp)
	movq	%rdx, -1192(%rbp)
	movl	%ecx, -1196(%rbp)
	movq	%r8, -1208(%rbp)
	movq	%r9, -1216(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -1192(%rbp)
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L38:
	movq	-1176(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	testq	%rax, %rax
	je	.L40
	movq	-1176(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L40:
	movq	-1176(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-1176(%rbp), %rax
	movq	4128(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L41:
	movq	-1176(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, -72(%rbp)
	cmpl	$0, -1196(%rbp)
	je	.L42
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$770, %eax
	je	.L43
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$771, %eax
	je	.L43
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$256, %eax
	je	.L43
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65279, %eax
	je	.L43
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65277, %eax
	jne	.L44
.L43:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$2, %eax
	jne	.L44
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -44(%rbp)
	jmp	.L45
.L44:
	movl	$0, -44(%rbp)
.L45:
	cmpl	$1, -44(%rbp)
	jle	.L42
	movq	$0, -32(%rbp)
	jmp	.L46
.L49:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rcx
	je	.L47
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L47:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdi
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rsi
	movq	-1176(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L48
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$217, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L48:
	addq	$1, -32(%rbp)
.L46:
	movq	-32(%rbp), %rax
	cmpq	-1192(%rbp), %rax
	jb	.L49
.L42:
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L50:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_provider@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_block_size@PLT
	cltq
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$186, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L51:
	cmpq	$1, -1192(%rbp)
	jbe	.L52
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$8388608, %eax
	testq	%rax, %rax
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$406, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L52:
	movq	$0, -32(%rbp)
	jmp	.L53
.L64:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, -400(%rbp,%rax,8)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L54
	movq	-1176(%rbp), %rax
	addq	$4096, %rax
	movq	%rax, -128(%rbp)
	movq	-1176(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L55
	leaq	-1080(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-1176(%rbp), %rax
	movzwl	48(%rax), %eax
	shrw	$8, %ax
	movl	%eax, %edx
	movq	-136(%rbp), %rax
	movb	%dl, (%rax)
	movq	-1176(%rbp), %rax
	movzwl	48(%rax), %edx
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	addq	$2, -136(%rbp)
	movq	-128(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-816(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-1080(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L56
.L55:
	leaq	-816(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-1176(%rbp), %rax
	movq	%rax, %rdi
	call	tls_increment_sequence_ctr@PLT
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L102
.L56:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$792, %rax
	movb	%cl, (%rax)
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	sarl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$791, %rax
	movb	%cl, (%rax)
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$790, %rax
	movb	%cl, (%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	shrq	$8, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$789, %rax
	movb	%cl, (%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$788, %rax
	movb	%cl, (%rax)
	leaq	-816(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$13, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L57
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$279, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L57:
	cmpl	$0, -1196(%rbp)
	je	.L58
	movq	-32(%rbp), %rax
	movq	-400(%rbp,%rax,8), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, -400(%rbp,%rax,8)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%rsi,%rcx), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L58
.L54:
	cmpq	$1, -88(%rbp)
	je	.L58
	cmpl	$0, -1196(%rbp)
	je	.L58
	cmpl	$0, -76(%rbp)
	jne	.L58
	movq	-32(%rbp), %rax
	movq	-400(%rbp,%rax,8), %rax
	movl	$0, %edx
	divq	-88(%rbp)
	movq	-88(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -112(%rbp)
	cmpq	$256, -112(%rbp)
	jbe	.L59
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$297, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L59:
	movq	-112(%rbp), %rax
	subl	$1, %eax
	movb	%al, -113(%rbp)
	movq	-32(%rbp), %rax
	movq	-400(%rbp,%rax,8), %rax
	movq	%rax, -40(%rbp)
	jmp	.L60
.L61:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-113(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -40(%rbp)
.L60:
	movq	-32(%rbp), %rax
	movq	-400(%rbp,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -40(%rbp)
	jb	.L61
	movq	-32(%rbp), %rax
	movq	-400(%rbp,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, -400(%rbp,%rax,8)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	-112(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 8(%rax)
.L58:
	cmpl	$0, -1196(%rbp)
	jne	.L62
	movq	-32(%rbp), %rax
	movq	-400(%rbp,%rax,8), %rax
	testq	%rax, %rax
	je	.L63
	movq	-32(%rbp), %rax
	movq	-400(%rbp,%rax,8), %rax
	movl	$0, %edx
	divq	-88(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	je	.L62
.L63:
	movl	$0, %eax
	jmp	.L102
.L62:
	addq	$1, -32(%rbp)
.L53:
	movq	-32(%rbp), %rax
	cmpq	-1192(%rbp), %rax
	jb	.L64
	cmpq	$1, -1192(%rbp)
	jbe	.L65
	movq	$0, -32(%rbp)
	jmp	.L66
.L67:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, -1072(%rbp,%rax,8)
	addq	$1, -32(%rbp)
.L66:
	movq	-32(%rbp), %rax
	cmpq	-1192(%rbp), %rax
	jb	.L67
	movq	-1192(%rbp), %rax
	movl	%eax, %esi
	leaq	-1072(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$34, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L68
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$322, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$406, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L68:
	movq	$0, -32(%rbp)
	jmp	.L69
.L70:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, -1072(%rbp,%rax,8)
	addq	$1, -32(%rbp)
.L69:
	movq	-32(%rbp), %rax
	cmpq	-1192(%rbp), %rax
	jb	.L70
	movq	-1192(%rbp), %rax
	movl	%eax, %esi
	leaq	-1072(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$35, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L71
	movq	-1192(%rbp), %rax
	movl	%eax, %esi
	leaq	-400(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$36, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L65
.L71:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$406, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L65:
	movq	-1176(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L72
	movq	-1176(%rbp), %rax
	movl	4264(%rax), %eax
	testl	%eax, %eax
	je	.L72
	movl	$0, -48(%rbp)
	cmpl	$0, -1196(%rbp)
	je	.L73
	movq	-1176(%rbp), %rax
	movl	4256(%rax), %eax
	testl	%eax, %eax
	jne	.L73
	movl	$1, -48(%rbp)
.L73:
	movq	-1176(%rbp), %rax
	leaq	4096(%rax), %rcx
	movl	-48(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L72
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$352, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L72:
	cmpl	$0, -76(%rbp)
	je	.L74
	cmpq	$1, -1192(%rbp)
	jbe	.L75
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$362, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L75:
	movq	-400(%rbp), %rax
	movl	%eax, %edi
	movq	-1184(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-1184(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	-1084(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L102
.L77:
	movl	-1084(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1184(%rbp), %rax
	movq	%rdx, 8(%rax)
	cmpl	$0, -1196(%rbp)
	jne	.L84
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$6, %eax
	jne	.L79
	movq	-1184(%rbp), %rax
	movq	32(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-1184(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-1184(%rbp), %rax
	movq	40(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-1184(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L80
.L79:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$7, %eax
	jne	.L81
	movq	-1184(%rbp), %rax
	movq	32(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-1184(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-1184(%rbp), %rax
	movq	40(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-1184(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L80
.L81:
	cmpq	$1, -88(%rbp)
	je	.L80
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$770, %eax
	je	.L82
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$771, %eax
	je	.L82
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$256, %eax
	je	.L82
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65279, %eax
	je	.L82
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65277, %eax
	jne	.L80
.L82:
	movq	-1184(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-1184(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-1184(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-1184(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-1184(%rbp), %rax
	movq	16(%rax), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	movq	%rdx, 16(%rax)
.L80:
	cmpq	$0, -1208(%rbp)
	je	.L84
	leaq	-1168(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-1208(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-1208(%rbp), %rdx
	movq	-104(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -104(%rbp)
	leaq	-1264(%rbp), %rax
	movq	-1216(%rbp), %rcx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_ptr@PLT
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1248(%rbp), %rax
	movq	-1240(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1232(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-104(%rbp), %rbx
	leaq	-1264(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-1248(%rbp), %rax
	movq	-1240(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-1232(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-1168(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_params@PLT
	testl	%eax, %eax
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$403, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1176(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L102
.L74:
	movq	-400(%rbp), %rax
	movl	%eax, %ecx
	movq	-1184(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-1184(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	movl	%eax, -92(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L85
	movl	-92(%rbp), %eax
	shrl	$31, %eax
	jmp	.L86
.L85:
	cmpl	$0, -92(%rbp)
	sete	%al
.L86:
	testb	%al, %al
	je	.L87
	movl	$0, %eax
	jmp	.L102
.L87:
	cmpl	$0, -1196(%rbp)
	jne	.L84
	movq	$0, -32(%rbp)
	jmp	.L88
.L101:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$6, %eax
	jne	.L89
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	leaq	-8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L90
.L89:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$7, %eax
	jne	.L91
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	leaq	-8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L90
.L91:
	cmpq	$1, -88(%rbp)
	je	.L90
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$770, %eax
	je	.L92
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$771, %eax
	je	.L92
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$256, %eax
	je	.L92
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65279, %eax
	je	.L92
	movq	-1176(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65277, %eax
	jne	.L90
.L92:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L93
	movl	$0, %eax
	jmp	.L102
.L93:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rax, %rdx
	movq	%rcx, %rax
	subq	-88(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rax, %rdx
	movq	%rcx, %rax
	subq	-88(%rbp), %rax
	movq	%rax, 16(%rdx)
.L90:
	movq	-1176(%rbp), %rax
	movq	(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	shrq	$21, %rax
	andl	$1, %eax
	movzbl	%al, %r8d
	cmpl	$0, -20(%rbp)
	je	.L94
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	jmp	.L95
.L94:
	movq	-1216(%rbp), %rdx
.L95:
	cmpq	$0, -1208(%rbp)
	je	.L96
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-1208(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %r10
	jmp	.L97
.L96:
	movl	$0, %r10d
.L97:
	cmpq	$0, -1208(%rbp)
	je	.L98
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-1208(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	jmp	.L99
.L98:
	movl	$0, %r11d
.L99:
	movq	-32(%rbp), %rcx
	movq	%rcx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-1184(%rbp), %rax
	addq	%rcx, %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-1184(%rbp), %rax
	addq	%rcx, %rax
	movq	16(%rax), %rsi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-1184(%rbp), %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	-88(%rbp), %rcx
	subq	$8, %rsp
	pushq	%rbx
	pushq	%r8
	pushq	%rdx
	movq	%rcx, %r9
	movq	%r10, %r8
	movq	%r11, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	tls1_cbc_remove_padding_and_mac@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L102
.L100:
	addq	$1, -32(%rbp)
.L88:
	movq	-32(%rbp), %rax
	cmpq	-1192(%rbp), %rax
	jb	.L101
.L84:
	movl	$1, %eax
.L102:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	tls1_cipher, .-tls1_cipher
	.section	.rodata
.LC3:
	.string	"tls-data-size"
	.text
	.type	tls1_mac, @function
tls1_mac:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movl	%ecx, -236(%rbp)
	movq	-216(%rbp), %rax
	addq	$4096, %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -28(%rbp)
	movq	-216(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L104
	movl	$0, %eax
	jmp	.L119
.L104:
	movl	-60(%rbp), %eax
	cltq
	movq	%rax, -104(%rbp)
	movq	-216(%rbp), %rax
	movl	4260(%rax), %eax
	testl	%eax, %eax
	je	.L106
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L107
.L106:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L120
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy@PLT
	testl	%eax, %eax
	je	.L120
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.L107:
	movq	-216(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L111
	movq	-216(%rbp), %rax
	movl	4264(%rax), %eax
	testl	%eax, %eax
	je	.L111
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L121
.L111:
	movq	-216(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L112
	leaq	-125(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-216(%rbp), %rax
	movzwl	48(%rax), %eax
	shrw	$8, %ax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movb	%dl, (%rax)
	movq	-216(%rbp), %rax
	movzwl	48(%rax), %edx
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	addq	$2, -72(%rbp)
	movq	-48(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-125(%rbp), %rax
	movq	%rax, -117(%rbp)
	jmp	.L113
.L112:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -117(%rbp)
.L113:
	movq	-224(%rbp), %rax
	movl	4(%rax), %eax
	movb	%al, -109(%rbp)
	movq	-216(%rbp), %rax
	movl	20(%rax), %eax
	sarl	$8, %eax
	movb	%al, -108(%rbp)
	movq	-216(%rbp), %rax
	movl	20(%rax), %eax
	movb	%al, -107(%rbp)
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	shrq	$8, %rax
	movb	%al, -106(%rbp)
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	movb	%al, -105(%rbp)
	cmpl	$0, -236(%rbp)
	jne	.L114
	movq	-216(%rbp), %rax
	movl	4256(%rax), %eax
	testl	%eax, %eax
	jne	.L114
	movq	-216(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$2, %eax
	jne	.L114
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_cbc_record_digest_supported@PLT
	testb	%al, %al
	je	.L114
	leaq	-208(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-224(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-288(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
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
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	%rax, %rdx
	leaq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	je	.L122
.L114:
	leaq	-117(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	jle	.L123
	movq	-224(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	jle	.L123
	leaq	-104(%rbp), %rdx
	movq	-232(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jle	.L123
	movq	$0, -88(%rbp)
	movq	-216(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L118
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	tls_increment_sequence_ctr@PLT
	testl	%eax, %eax
	je	.L124
.L118:
	movq	$0, -96(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L110
.L120:
	nop
	jmp	.L110
.L121:
	nop
	jmp	.L110
.L122:
	nop
	jmp	.L110
.L123:
	nop
	jmp	.L110
.L124:
	nop
.L110:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-28(%rbp), %eax
.L119:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	tls1_mac, .-tls1_mac
	.globl	tls1_allocate_write_buffers
	.type	tls1_allocate_write_buffers, @function
tls1_allocate_write_buffers:
.LFB732:
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
	movq	-8(%rbp), %rax
	movl	4120(%rax), %eax
	testl	%eax, %eax
	je	.L126
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$23, %al
	jne	.L126
	movl	$1, %eax
	jmp	.L127
.L126:
	movl	$0, %eax
.L127:
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movl	$1116, %edi
	jmp	.L129
.L128:
	movl	$0, %edi
.L129:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	tls_setup_write_buffer@PLT
	testl	%eax, %eax
	jne	.L130
	movl	$0, %eax
	jmp	.L131
.L130:
	movl	$1, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	tls1_allocate_write_buffers, .-tls1_allocate_write_buffers
	.globl	tls1_initialise_write_packets
	.type	tls1_initialise_write_packets, @function
tls1_initialise_write_packets:
.LFB733:
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
	movq	-40(%rbp), %rax
	movl	4120(%rax), %eax
	testl	%eax, %eax
	je	.L133
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$23, %al
	jne	.L133
	movl	$1, %eax
	jmp	.L134
.L133:
	movl	$0, %eax
.L134:
	cltq
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L135
	movq	-64(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-48(%rbp), %rax
	movl	4(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-64(%rbp), %rax
	movb	$23, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	negq	%rax
	andl	$7, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	jne	.L136
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$637, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L137
.L136:
	movq	16(%rbp), %rax
	movq	$1, (%rax)
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L135
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$642, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L137
.L135:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-16(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	tls_initialise_write_packets_default@PLT
	addq	$16, %rsp
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	tls1_initialise_write_packets, .-tls1_initialise_write_packets
	.globl	tls_1_funcs
	.section	.data.rel.ro,"aw"
	.align 32
	.type	tls_1_funcs, @object
	.size	tls_1_funcs, 144
tls_1_funcs:
	.quad	tls1_set_crypto_state
	.quad	tls1_cipher
	.quad	tls1_mac
	.quad	tls_default_set_protocol_version
	.quad	tls_default_read_n
	.quad	tls_get_more_records
	.quad	tls_default_validate_record_header
	.quad	tls_default_post_process_record
	.quad	tls_get_max_records_multiblock
	.quad	tls_write_records_multiblock
	.quad	tls1_allocate_write_buffers
	.quad	tls1_initialise_write_packets
	.quad	0
	.quad	tls_prepare_record_header_default
	.quad	0
	.quad	tls_prepare_for_encryption_default
	.quad	tls_post_encryption_processing_default
	.quad	0
	.globl	dtls_1_funcs
	.align 32
	.type	dtls_1_funcs, @object
	.size	dtls_1_funcs, 144
dtls_1_funcs:
	.quad	tls1_set_crypto_state
	.quad	tls1_cipher
	.quad	tls1_mac
	.quad	tls_default_set_protocol_version
	.quad	tls_default_read_n
	.quad	dtls_get_more_records
	.quad	0
	.quad	0
	.quad	0
	.quad	tls_write_records_default
	.quad	tls_allocate_write_buffers_default
	.quad	tls_initialise_write_packets_default
	.quad	0
	.quad	dtls_prepare_record_header
	.quad	0
	.quad	tls_prepare_for_encryption_default
	.quad	dtls_post_encryption_processing
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"tls1_set_crypto_state"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 12
__func__.1:
	.string	"tls1_cipher"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 30
__func__.0:
	.string	"tls1_initialise_write_packets"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
