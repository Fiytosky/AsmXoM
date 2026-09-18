	.file	"ssl3_meth.c"
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
	.string	"../ssl/record/methods/ssl3_meth.c"
	.text
	.type	ssl3_set_crypto_state, @function
ssl3_set_crypto_state:
.LFB729:
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
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpq	$0, 56(%rbp)
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
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
	call	EVP_CIPHER_CTX_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 4128(%rdx)
	movq	-24(%rbp), %rax
	movq	4128(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$36, %esi
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
	movq	-24(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, -16(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 4144(%rdx)
	movq	-24(%rbp), %rax
	movq	4144(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L17:
	cmpq	$0, 56(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movq	4144(%rax), %rax
	movq	56(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jg	.L18
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L18:
	cmpq	$0, 64(%rbp)
	je	.L19
	movq	64(%rbp), %rax
	movq	%rax, %rdi
	call	COMP_CTX_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 4152(%rdx)
	movq	-24(%rbp), %rax
	movq	4152(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L19:
	movl	-4(%rbp), %edi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L20:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_provider@PLT
	testq	%rax, %rax
	je	.L21
	movq	56(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_set_tls_provider_parameters@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$-2, %eax
	jmp	.L15
.L21:
	cmpq	$64, 24(%rbp)
	jbe	.L22
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$78, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L15
.L22:
	movq	-24(%rbp), %rax
	leaq	4192(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ssl3_set_crypto_state, .-ssl3_set_crypto_state
	.section	.rodata
.LC1:
	.string	"tls-mac"
	.text
	.type	ssl3_cipher, @function
ssl3_cipher:
.LFB730:
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
	movl	%ecx, -204(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$1, -200(%rbp)
	je	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-184(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L26
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L27
.L26:
	movl	$0, %eax
	jmp	.L25
.L27:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_provider@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	cltq
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L25
.L28:
	cmpq	$1, -64(%rbp)
	je	.L29
	cmpl	$0, -204(%rbp)
	je	.L29
	cmpl	$0, -52(%rbp)
	jne	.L29
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	-64(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	leal	-1(%rcx), %edx
	movb	%dl, (%rax)
.L29:
	cmpl	$0, -204(%rbp)
	jne	.L30
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	je	.L30
.L31:
	movl	$0, %eax
	jmp	.L25
.L30:
	cmpl	$0, -52(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	-84(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L25
.L33:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	cmpl	$0, -204(%rbp)
	jne	.L37
	cmpq	$0, -216(%rbp)
	je	.L37
	leaq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-216(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-216(%rbp), %rdx
	movq	-80(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -80(%rbp)
	leaq	-272(%rbp), %rax
	movq	-224(%rbp), %rcx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_ptr@PLT
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
	movq	-80(%rbp), %rbx
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
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_params@PLT
	testl	%eax, %eax
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$175, %esi
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
	jmp	.L25
.L32:
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	testl	%eax, %eax
	jg	.L38
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$182, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L25
.L38:
	cmpl	$0, -204(%rbp)
	jne	.L37
	movq	-184(%rbp), %rax
	movq	(%rax), %rcx
	cmpq	$0, -216(%rbp)
	je	.L39
	movq	-216(%rbp), %rax
	leaq	8(%rax), %r8
	jmp	.L40
.L39:
	movl	$0, %r8d
.L40:
	cmpq	$0, -216(%rbp)
	je	.L41
	movq	-216(%rbp), %rax
	jmp	.L42
.L41:
	movl	$0, %eax
.L42:
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-32(%rbp), %rdi
	addq	$8, %rdi
	movq	-64(%rbp), %r9
	pushq	%rcx
	pushq	-224(%rbp)
	movq	%rax, %rcx
	call	ssl3_cbc_remove_padding_and_mac@PLT
	addq	$16, %rsp
	jmp	.L25
.L37:
	movl	$1, %eax
.L25:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ssl3_cipher, .-ssl3_cipher
	.section	.rodata
	.align 32
	.type	ssl3_pad_1, @object
	.size	ssl3_pad_1, 48
ssl3_pad_1:
	.ascii	"666666666666666666666666666666666666666666666666"
	.align 32
	.type	ssl3_pad_2, @object
	.size	ssl3_pad_2, 48
ssl3_pad_2:
	.base64	"XFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxc"
	.text
	.type	ssl3_mac, @function
ssl3_mac:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movl	%ecx, -220(%rbp)
	movq	-200(%rbp), %rax
	addq	$4096, %rax
	movq	%rax, -40(%rbp)
	movq	-200(%rbp), %rax
	addq	$4192, %rax
	movq	%rax, -48(%rbp)
	movq	-200(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jg	.L44
	movl	$0, %eax
	jmp	.L54
.L44:
	movl	-60(%rbp), %eax
	cltq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rbx
	movl	$48, %eax
	movl	$0, %edx
	divq	%rbx
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -72(%rbp)
	cmpl	$0, -220(%rbp)
	jne	.L46
	movq	-200(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$2, %eax
	jne	.L46
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_cbc_record_digest_supported@PLT
	testb	%al, %al
	je	.L46
	movq	$0, -80(%rbp)
	movq	-112(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	movq	-80(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-112(%rbp), %rax
	addq	%rax, -80(%rbp)
	leaq	-192(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	ssl3_pad_1(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	addq	%rax, -80(%rbp)
	leaq	-192(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$8, -80(%rbp)
	movq	-208(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, -192(%rbp,%rax)
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, -192(%rbp,%rax)
	movq	-208(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	%ecx, %edx
	movb	%dl, -192(%rbp,%rax)
	movq	-112(%rbp), %r12
	movq	-208(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-208(%rbp), %rax
	movq	8(%rax), %r14
	movq	-208(%rbp), %rax
	movq	40(%rax), %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	leaq	-192(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-216(%rbp), %rax
	pushq	$1
	pushq	%r12
	pushq	-48(%rbp)
	pushq	%rbx
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%rax, %rsi
	call	ssl3_cbc_digest_record@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jg	.L55
	movl	$0, %eax
	jmp	.L54
.L46:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L54
.L49:
	movq	-208(%rbp), %rax
	movl	4(%rax), %eax
	movb	%al, -97(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	shrq	$8, %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
	movq	-208(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	addq	$2, -96(%rbp)
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-72(%rbp), %rdx
	leaq	ssl3_pad_1(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-40(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L51
	leaq	-97(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-216(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-208(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-216(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-72(%rbp), %rdx
	leaq	ssl3_pad_2(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L51
	movq	-112(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L51
	leaq	-116(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L52
.L51:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
	jmp	.L54
.L52:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	jmp	.L48
.L55:
	nop
.L48:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	tls_increment_sequence_ctr@PLT
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L54
.L53:
	movl	$1, %eax
.L54:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ssl3_mac, .-ssl3_mac
	.globl	ssl_3_0_funcs
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ssl_3_0_funcs, @object
	.size	ssl_3_0_funcs, 144
ssl_3_0_funcs:
	.quad	ssl3_set_crypto_state
	.quad	ssl3_cipher
	.quad	ssl3_mac
	.quad	tls_default_set_protocol_version
	.quad	tls_default_read_n
	.quad	tls_get_more_records
	.quad	tls_default_validate_record_header
	.quad	tls_default_post_process_record
	.quad	tls_get_max_records_default
	.quad	tls_write_records_default
	.quad	tls1_allocate_write_buffers
	.quad	tls1_initialise_write_packets
	.quad	0
	.quad	tls_prepare_record_header_default
	.quad	0
	.quad	tls_prepare_for_encryption_default
	.quad	tls_post_encryption_processing_default
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"ssl3_set_crypto_state"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 12
__func__.0:
	.string	"ssl3_cipher"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
