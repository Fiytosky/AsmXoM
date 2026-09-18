	.file	"s3_enc.c"
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
.LC0:
	.string	"../ssl/s3_enc.c"
	.text
	.type	ssl3_generate_key_block, @function
ssl3_generate_key_block:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movb	$65, -1(%rbp)
	movl	$0, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ssl_evp_md_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ssl_evp_md_fetch@PLT
	movq	%rax, -32(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -48(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L14
	cmpq	$0, -32(%rbp)
	je	.L14
	cmpq	$0, -48(%rbp)
	je	.L14
	cmpq	$0, -56(%rbp)
	jne	.L15
.L14:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L16
.L15:
	movl	$0, -8(%rbp)
	jmp	.L17
.L24:
	addl	$1, -12(%rbp)
	cmpl	$16, -12(%rbp)
	jbe	.L18
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L16
.L18:
	movl	-12(%rbp), %edx
	movzbl	-1(%rbp), %ecx
	leaq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L19
	movl	-12(%rbp), %edx
	leaq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L19
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L19
	movq	-120(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L19
	movq	-120(%rbp), %rax
	leaq	328(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L19
	leaq	-112(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L19
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L19
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L19
	leaq	-112(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L20
.L19:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L16
.L20:
	movl	-8(%rbp), %eax
	addl	$16, %eax
	cmpl	%eax, -132(%rbp)
	jge	.L21
	leaq	-112(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L22
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L16
.L22:
	movl	-132(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L23
.L21:
	movq	-128(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$73, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L16
.L23:
	addq	$16, -128(%rbp)
	addl	$16, -8(%rbp)
.L17:
	movl	-8(%rbp), %eax
	cmpl	%eax, -132(%rbp)
	jg	.L24
	leaq	-112(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, -16(%rbp)
.L16:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_evp_md_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_evp_md_free@PLT
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ssl3_generate_key_block, .-ssl3_generate_key_block
	.globl	ssl3_change_cipher_state
	.type	ssl3_change_cipher_state, @function
ssl3_change_cipher_state:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	$0, -40(%rbp)
	movl	-124(%rbp), %eax
	notl	%eax
	andl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	-120(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L28
.L27:
	movq	-120(%rbp), %rax
	movq	800(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jns	.L29
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L28
.L29:
	movl	-76(%rbp), %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	cltq
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	cltq
	movq	%rax, -104(%rbp)
	cmpl	$18, -124(%rbp)
	je	.L30
	cmpl	$33, -124(%rbp)
	jne	.L31
.L30:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
	jmp	.L32
.L31:
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	addq	%rax, -32(%rbp)
.L32:
	movq	-120(%rbp), %rax
	movq	752(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L33
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L28
.L33:
	movl	-44(%rbp), %edx
	movq	-120(%rbp), %rax
	pushq	$0
	pushq	-40(%rbp)
	pushq	-64(%rbp)
	pushq	$0
	pushq	$0
	pushq	-56(%rbp)
	pushq	-88(%rbp)
	pushq	-8(%rbp)
	pushq	-104(%rbp)
	pushq	-24(%rbp)
	pushq	-96(%rbp)
	pushq	-16(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$3, %ecx
	movl	$768, %esi
	movq	%rax, %rdi
	call	ssl_set_new_record_layer@PLT
	addq	$96, %rsp
	testl	%eax, %eax
	je	.L36
	movl	$1, %eax
	jmp	.L35
.L36:
	nop
.L28:
	movl	$0, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ssl3_change_cipher_state, .-ssl3_change_cipher_state
	.globl	ssl3_setup_key_block
	.type	ssl3_setup_key_block, @function
ssl3_setup_key_block:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	$0, -20(%rbp)
	movq	-72(%rbp), %rax
	movq	752(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movl	$1, %eax
	jmp	.L43
.L38:
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	pushq	$0
	leaq	-56(%rbp), %rdi
	pushq	%rdi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ssl_cipher_get_evp@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L40
	movq	-72(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	ossl_statem_send_fatal@PLT
	movl	$0, %eax
	jmp	.L43
.L40:
	movq	-72(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, %rdi
	call	ssl_evp_cipher_free@PLT
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 768(%rax)
	movq	-72(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, %rdi
	call	ssl_evp_md_free@PLT
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 776(%rax)
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 800(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L41
	movl	$0, %eax
	jmp	.L43
.L41:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	-24(%rbp), %edx
	leal	(%rax,%rdx), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	addl	%ebx, %eax
	movl	%eax, -24(%rbp)
	sall	-24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_cleanup_key_block@PLT
	movl	-24(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$199, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L43
.L42:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 752(%rax)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 760(%rax)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_generate_key_block
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
.L43:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ssl3_setup_key_block, .-ssl3_setup_key_block
	.globl	ssl3_cleanup_key_block
	.type	ssl3_cleanup_key_block, @function
ssl3_cleanup_key_block:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	752(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	760(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$215, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 760(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 752(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	ssl3_cleanup_key_block, .-ssl3_cleanup_key_block
	.globl	ssl3_init_finished_mac
	.type	ssl3_init_finished_mac, @function
ssl3_init_finished_mac:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$524320, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_free_digest_list@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 360(%rax)
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ssl3_init_finished_mac, .-ssl3_init_finished_mac
	.globl	ssl3_free_digest_list
	.type	ssl3_free_digest_list, @function
ssl3_free_digest_list:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 368(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	ssl3_free_digest_list, .-ssl3_free_digest_list
	.globl	ssl3_finish_mac
	.type	ssl3_finish_mac, @function
ssl3_finish_mac:
.LFB735:
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
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L50
	cmpq	$2147483647, -40(%rbp)
	jbe	.L51
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$254, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$237, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L53
	movq	-40(%rbp), %rax
	cmpl	%eax, -4(%rbp)
	je	.L54
.L53:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L52
.L50:
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$265, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L52
.L54:
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ssl3_finish_mac, .-ssl3_finish_mac
	.globl	ssl3_digest_cached_records
	.type	ssl3_digest_cached_records, @function
ssl3_digest_cached_records:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.L57
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$281, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$332, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L63
.L57:
	call	EVP_MD_CTX_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 368(%rdx)
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L63
.L59:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$293, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$297, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L63
.L60:
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L61
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L56
.L61:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$299, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L63
.L56:
	cmpl	$0, -44(%rbp)
	jne	.L62
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 360(%rax)
.L62:
	movl	$1, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	ssl3_digest_cached_records, .-ssl3_digest_cached_records
	.section	.rodata
.LC1:
	.string	"ssl3-ms"
	.text
	.globl	ssl3_digest_master_key_set_params
	.type	ssl3_digest_master_key_set_params, @function
ssl3_digest_master_key_set_params:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	leaq	80(%rax), %rdi
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-96(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rbx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ssl3_digest_master_key_set_params, .-ssl3_digest_master_key_set_params
	.globl	ssl3_final_finish_mac
	.type	ssl3_final_finish_mac, @function
ssl3_final_finish_mac:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	$0, -16(%rbp)
	movq	-152(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-152(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$114, %eax
	je	.L68
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$324, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L67
.L68:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L67
.L69:
	movq	-152(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	jne	.L70
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$343, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, -4(%rbp)
	jmp	.L71
.L70:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L72
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$350, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, -4(%rbp)
	jmp	.L71
.L72:
	cmpq	$0, -160(%rbp)
	je	.L75
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl3_digest_master_key_set_params@PLT
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L73
	leaq	-144(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_params@PLT
	testl	%eax, %eax
	jle	.L73
	movq	-176(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L71
.L73:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$363, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, -4(%rbp)
	jmp	.L71
.L75:
	nop
.L71:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
	cltq
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ssl3_final_finish_mac, .-ssl3_final_finish_mac
	.globl	ssl3_generate_master_secret
	.type	ssl3_generate_master_secret, @function
ssl3_generate_master_secret:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movl	$1, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$396, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L85
.L77:
	movl	$0, -4(%rbp)
	jmp	.L79
.L83:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	264(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jle	.L80
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	salt.0(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	salt.0(%rip), %rax
	movq	(%rcx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L80
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L80
	movq	-120(%rbp), %rax
	leaq	328(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L80
	movq	-120(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L80
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jle	.L80
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	256(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jle	.L80
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L80
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L80
	leaq	-100(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L81
.L80:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$413, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, -8(%rbp)
	jmp	.L82
.L81:
	movl	-100(%rbp), %eax
	movl	%eax, %eax
	addq	%rax, -128(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, %eax
	addq	%rax, -16(%rbp)
	addl	$1, -4(%rbp)
.L79:
	cmpl	$2, -4(%rbp)
	jle	.L83
.L82:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	-96(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	cmpl	$0, -8(%rbp)
	je	.L84
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L84:
	movl	-8(%rbp), %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	ssl3_generate_master_secret, .-ssl3_generate_master_secret
	.globl	ssl3_alert_code
	.type	ssl3_alert_code, @function
ssl3_alert_code:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$120, -4(%rbp)
	je	.L87
	cmpl	$120, -4(%rbp)
	jg	.L88
	cmpl	$116, -4(%rbp)
	je	.L89
	cmpl	$116, -4(%rbp)
	jg	.L88
	cmpl	$115, -4(%rbp)
	je	.L90
	cmpl	$115, -4(%rbp)
	jg	.L88
	cmpl	$114, -4(%rbp)
	je	.L91
	cmpl	$114, -4(%rbp)
	jg	.L88
	cmpl	$113, -4(%rbp)
	je	.L92
	cmpl	$113, -4(%rbp)
	jg	.L88
	cmpl	$112, -4(%rbp)
	je	.L93
	cmpl	$112, -4(%rbp)
	jg	.L88
	cmpl	$111, -4(%rbp)
	je	.L94
	cmpl	$111, -4(%rbp)
	jg	.L88
	cmpl	$110, -4(%rbp)
	je	.L95
	cmpl	$110, -4(%rbp)
	jg	.L88
	cmpl	$109, -4(%rbp)
	je	.L96
	cmpl	$109, -4(%rbp)
	jg	.L88
	cmpl	$100, -4(%rbp)
	je	.L97
	cmpl	$100, -4(%rbp)
	jg	.L88
	cmpl	$90, -4(%rbp)
	je	.L98
	cmpl	$90, -4(%rbp)
	jg	.L88
	cmpl	$86, -4(%rbp)
	je	.L99
	cmpl	$86, -4(%rbp)
	jg	.L88
	cmpl	$80, -4(%rbp)
	je	.L100
	cmpl	$80, -4(%rbp)
	jg	.L88
	cmpl	$71, -4(%rbp)
	je	.L101
	cmpl	$71, -4(%rbp)
	jg	.L88
	cmpl	$70, -4(%rbp)
	je	.L102
	cmpl	$70, -4(%rbp)
	jg	.L88
	cmpl	$60, -4(%rbp)
	je	.L103
	cmpl	$60, -4(%rbp)
	jg	.L88
	cmpl	$51, -4(%rbp)
	je	.L104
	cmpl	$51, -4(%rbp)
	jg	.L88
	cmpl	$50, -4(%rbp)
	je	.L105
	cmpl	$50, -4(%rbp)
	jg	.L88
	cmpl	$49, -4(%rbp)
	je	.L106
	cmpl	$49, -4(%rbp)
	jg	.L88
	cmpl	$48, -4(%rbp)
	je	.L107
	cmpl	$48, -4(%rbp)
	jg	.L88
	cmpl	$47, -4(%rbp)
	je	.L108
	cmpl	$47, -4(%rbp)
	jg	.L88
	cmpl	$46, -4(%rbp)
	je	.L109
	cmpl	$46, -4(%rbp)
	jg	.L88
	cmpl	$45, -4(%rbp)
	je	.L110
	cmpl	$45, -4(%rbp)
	jg	.L88
	cmpl	$44, -4(%rbp)
	je	.L111
	cmpl	$44, -4(%rbp)
	jg	.L88
	cmpl	$43, -4(%rbp)
	je	.L112
	cmpl	$43, -4(%rbp)
	jg	.L88
	cmpl	$42, -4(%rbp)
	je	.L113
	cmpl	$42, -4(%rbp)
	jg	.L88
	cmpl	$41, -4(%rbp)
	je	.L114
	cmpl	$41, -4(%rbp)
	jg	.L88
	cmpl	$40, -4(%rbp)
	je	.L115
	cmpl	$40, -4(%rbp)
	jg	.L88
	cmpl	$30, -4(%rbp)
	je	.L116
	cmpl	$30, -4(%rbp)
	jg	.L88
	cmpl	$22, -4(%rbp)
	je	.L117
	cmpl	$22, -4(%rbp)
	jg	.L88
	cmpl	$21, -4(%rbp)
	je	.L118
	cmpl	$21, -4(%rbp)
	jg	.L88
	cmpl	$20, -4(%rbp)
	je	.L119
	cmpl	$20, -4(%rbp)
	jg	.L88
	cmpl	$0, -4(%rbp)
	je	.L120
	cmpl	$10, -4(%rbp)
	je	.L121
	jmp	.L88
.L120:
	movl	$0, %eax
	jmp	.L122
.L121:
	movl	$10, %eax
	jmp	.L122
.L119:
	movl	$20, %eax
	jmp	.L122
.L118:
	movl	$20, %eax
	jmp	.L122
.L117:
	movl	$20, %eax
	jmp	.L122
.L116:
	movl	$30, %eax
	jmp	.L122
.L115:
	movl	$40, %eax
	jmp	.L122
.L114:
	movl	$41, %eax
	jmp	.L122
.L113:
	movl	$42, %eax
	jmp	.L122
.L112:
	movl	$43, %eax
	jmp	.L122
.L111:
	movl	$44, %eax
	jmp	.L122
.L110:
	movl	$45, %eax
	jmp	.L122
.L109:
	movl	$46, %eax
	jmp	.L122
.L108:
	movl	$47, %eax
	jmp	.L122
.L107:
	movl	$42, %eax
	jmp	.L122
.L106:
	movl	$40, %eax
	jmp	.L122
.L105:
	movl	$40, %eax
	jmp	.L122
.L104:
	movl	$40, %eax
	jmp	.L122
.L103:
	movl	$40, %eax
	jmp	.L122
.L102:
	movl	$40, %eax
	jmp	.L122
.L101:
	movl	$40, %eax
	jmp	.L122
.L100:
	movl	$40, %eax
	jmp	.L122
.L98:
	movl	$40, %eax
	jmp	.L122
.L97:
	movl	$-1, %eax
	jmp	.L122
.L95:
	movl	$40, %eax
	jmp	.L122
.L94:
	movl	$40, %eax
	jmp	.L122
.L93:
	movl	$40, %eax
	jmp	.L122
.L92:
	movl	$40, %eax
	jmp	.L122
.L91:
	movl	$40, %eax
	jmp	.L122
.L90:
	movl	$115, %eax
	jmp	.L122
.L99:
	movl	$86, %eax
	jmp	.L122
.L87:
	movl	$120, %eax
	jmp	.L122
.L89:
	movl	$40, %eax
	jmp	.L122
.L96:
	movl	$40, %eax
	jmp	.L122
.L88:
	movl	$-1, %eax
.L122:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	ssl3_alert_code, .-ssl3_alert_code
	.section	.rodata
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 24
__func__.8:
	.string	"ssl3_generate_key_block"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 25
__func__.7:
	.string	"ssl3_change_cipher_state"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 21
__func__.6:
	.string	"ssl3_setup_key_block"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 23
__func__.5:
	.string	"ssl3_init_finished_mac"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 16
__func__.4:
	.string	"ssl3_finish_mac"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 27
__func__.3:
	.string	"ssl3_digest_cached_records"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"ssl3_final_finish_mac"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 28
__func__.1:
	.string	"ssl3_generate_master_secret"
.LC2:
	.string	"A"
.LC3:
	.string	"BB"
.LC4:
	.string	"CCC"
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	salt.0, @object
	.size	salt.0, 24
salt.0:
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
