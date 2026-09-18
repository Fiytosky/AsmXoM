	.file	"tls13_meth.c"
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
	.string	"../ssl/record/methods/tls13_meth.c"
	.text
	.type	tls13_set_crypto_state, @function
tls13_set_crypto_state:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpq	$16, -80(%rbp)
	jbe	.L14
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L14:
	movq	-40(%rbp), %rax
	leaq	4268(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	call	EVP_CIPHER_CTX_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 4128(%rdx)
	movq	-40(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L16:
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %edx
	movq	32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jle	.L17
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L17
	cmpl	$7, -20(%rbp)
	jne	.L18
	movq	40(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L17
.L18:
	movl	-4(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jg	.L19
.L17:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L19:
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	tls13_set_crypto_state, .-tls13_set_crypto_state
	.type	tls13_cipher, @function
tls13_cipher:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	%ecx, -204(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movq	-184(%rbp), %rax
	addq	$4096, %rax
	movq	%rax, -16(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$1, -200(%rbp)
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$75, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L41
.L21:
	movq	-184(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-184(%rbp), %rax
	addq	$4268, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L41
.L23:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	movl	%eax, -52(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L24
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$21, %eax
	jne	.L25
.L24:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	$1, %eax
	jmp	.L41
.L25:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	cltq
	movq	%rax, -64(%rbp)
	cmpl	$0, -204(%rbp)
	jne	.L26
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	4296(%rax), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jnb	.L27
	movl	$0, %eax
	jmp	.L41
.L27:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	4296(%rax), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
.L26:
	cmpq	$7, -64(%rbp)
	ja	.L28
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L41
.L28:
	movq	-64(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	$0, -8(%rbp)
	jmp	.L29
.L30:
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, -96(%rbp,%rax)
	addq	$1, -8(%rbp)
.L29:
	cmpq	$7, -8(%rbp)
	jbe	.L30
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	tls_increment_sequence_ctr@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L41
.L31:
	movl	-204(%rbp), %ecx
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jle	.L32
	cmpl	$0, -204(%rbp)
	jne	.L33
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	4296(%rax), %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L33
.L32:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L41
.L33:
	leaq	-101(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movl	$0, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rcx
	leaq	-176(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	leaq	-176(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	4296(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-176(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L34
	leaq	-112(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L34
	movq	-112(%rbp), %rax
	cmpq	$5, %rax
	jne	.L34
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	jne	.L35
.L34:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$145, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	$0, %eax
	jmp	.L41
.L35:
	cmpl	$7, -52(%rbp)
	jne	.L36
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	leaq	-116(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jle	.L37
.L36:
	leaq	-101(%rbp), %rcx
	leaq	-116(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$5, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jle	.L37
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	-116(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jle	.L37
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-116(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	jle	.L37
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L38
.L37:
	movl	$0, %eax
	jmp	.L41
.L38:
	cmpl	$0, -204(%rbp)
	je	.L39
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	4296(%rax), %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L40
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	4296(%rax), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
.L39:
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	tls13_cipher, .-tls13_cipher
	.type	tls13_validate_record_header, @function
tls13_validate_record_header:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	je	.L43
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$20, %eax
	jne	.L44
	movq	-8(%rbp), %rax
	movl	4160(%rax), %eax
	testl	%eax, %eax
	jne	.L43
.L44:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$21, %eax
	jne	.L45
	movq	-8(%rbp), %rax
	movl	4284(%rax), %eax
	testl	%eax, %eax
	jne	.L43
.L45:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$185, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$443, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L46
.L43:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	je	.L47
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$190, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$267, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L46
.L47:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$16640, %rax
	jbe	.L48
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$150, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L46
.L48:
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	tls13_validate_record_header, .-tls13_validate_record_header
	.type	tls13_post_process_record, @function
tls13_post_process_record:
.LFB732:
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
	movl	4(%rax), %eax
	cmpl	$21, %eax
	je	.L50
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	je	.L52
.L51:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$210, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$443, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L54
.L60:
	nop
	subq	$1, -8(%rbp)
.L54:
	cmpq	$0, -8(%rbp)
	je	.L55
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L60
.L55:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
.L50:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$16384, %rax
	jbe	.L57
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$146, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L53
.L57:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls13_common_post_process_record@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L53
.L58:
	movl	$1, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	tls13_post_process_record, .-tls13_post_process_record
	.type	tls13_get_record_type, @function
tls13_get_record_type:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	4284(%rax), %eax
	testl	%eax, %eax
	je	.L62
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$21, %al
	jne	.L62
	movl	$21, %eax
	jmp	.L63
.L62:
	movl	$23, %eax
.L63:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	tls13_get_record_type, .-tls13_get_record_type
	.type	tls13_add_record_padding, @function
tls13_add_record_padding:
.LFB734:
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
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	4284(%rax), %eax
	testl	%eax, %eax
	je	.L65
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$21, %al
	je	.L65
	movl	$1, %eax
	jmp	.L66
.L65:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-72(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$262, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L66
.L67:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	4164(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -24(%rbp)
	jnb	.L68
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	4164(%rax), %eax
	movl	%eax, %eax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	4392(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-56(%rbp), %rax
	movq	4392(%rax), %r8
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-56(%rbp), %rax
	movq	4360(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
	jmp	.L70
.L69:
	movq	-56(%rbp), %rax
	movq	4184(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-56(%rbp), %rax
	movq	4184(%rax), %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	4184(%rax), %rax
	andq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L71
	movq	-24(%rbp), %rax
	andq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L72
.L71:
	movq	-56(%rbp), %rax
	movq	4184(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -16(%rbp)
.L72:
	cmpq	$0, -16(%rbp)
	jne	.L73
	movq	$0, -8(%rbp)
	jmp	.L70
.L73:
	movq	-56(%rbp), %rax
	movq	4184(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L70:
	cmpq	$0, -8(%rbp)
	je	.L68
	movq	-8(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L74
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L74:
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_memset@PLT
	testl	%eax, %eax
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$295, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L66
.L75:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
.L68:
	movl	$1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	tls13_add_record_padding, .-tls13_add_record_padding
	.globl	tls_1_3_funcs
	.section	.data.rel.ro,"aw"
	.align 32
	.type	tls_1_3_funcs, @object
	.size	tls_1_3_funcs, 144
tls_1_3_funcs:
	.quad	tls13_set_crypto_state
	.quad	tls13_cipher
	.quad	0
	.quad	tls_default_set_protocol_version
	.quad	tls_default_read_n
	.quad	tls_get_more_records
	.quad	tls13_validate_record_header
	.quad	tls13_post_process_record
	.quad	tls_get_max_records_default
	.quad	tls_write_records_default
	.quad	tls_allocate_write_buffers_default
	.quad	tls_initialise_write_packets_default
	.quad	tls13_get_record_type
	.quad	tls_prepare_record_header_default
	.quad	tls13_add_record_padding
	.quad	tls_prepare_for_encryption_default
	.quad	tls_post_encryption_processing_default
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 23
__func__.4:
	.string	"tls13_set_crypto_state"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 13
__func__.3:
	.string	"tls13_cipher"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 29
__func__.2:
	.string	"tls13_validate_record_header"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 26
__func__.1:
	.string	"tls13_post_process_record"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"tls13_add_record_padding"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
