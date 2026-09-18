	.file	"pkcs12kdf.c"
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
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/kdfs/pkcs12kdf.c"
	.text
	.type	pkcs12kdf_derive, @function
pkcs12kdf_derive:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	%r8d, -180(%rbp)
	movq	%r9, -192(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -84(%rbp)
	movq	$0, -96(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L6:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_block_size@PLT
	movl	%eax, -100(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jle	.L8
	cmpl	$0, -100(%rbp)
	jg	.L9
.L8:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$69, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$218, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L9:
	movl	-104(%rbp), %eax
	cltq
	movq	%rax, -112(%rbp)
	movl	-100(%rbp), %eax
	cltq
	movq	%rax, -120(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-120(%rbp), %rax
	movl	$74, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-112(%rbp), %rax
	movl	$75, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	leaq	.LC0(%rip), %rcx
	movl	$76, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-176(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movl	$0, %edx
	divq	-120(%rbp)
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -160(%rbp)
	je	.L10
	movq	-160(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movl	$0, %edx
	divq	-120(%rbp)
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.L11
.L10:
	movq	$0, -48(%rbp)
.L11:
	movq	-128(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$83, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L35
	cmpq	$0, -40(%rbp)
	je	.L35
	cmpq	$0, -8(%rbp)
	je	.L35
	cmpq	$0, -24(%rbp)
	je	.L35
	movq	$0, -56(%rbp)
	jmp	.L14
.L15:
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-180(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -56(%rbp)
.L14:
	movq	-56(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jb	.L15
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -56(%rbp)
	jmp	.L16
.L17:
	movq	-56(%rbp), %rax
	movl	$0, %edx
	divq	-176(%rbp)
	movq	-168(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	addq	$1, -56(%rbp)
.L16:
	movq	-56(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L17
	movq	$0, -56(%rbp)
	jmp	.L18
.L19:
	movq	-56(%rbp), %rax
	movl	$0, %edx
	divq	-160(%rbp)
	movq	-152(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	addq	$1, -56(%rbp)
.L18:
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L19
.L33:
	movq	16(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L36
	movq	-120(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L36
	movq	-136(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L36
	movq	-40(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L36
	movq	$1, -80(%rbp)
	jmp	.L22
.L25:
	movq	16(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L37
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L37
	movq	-40(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L37
	addq	$1, -80(%rbp)
.L22:
	movq	-80(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jb	.L25
	movq	-112(%rbp), %rdx
	movq	32(%rbp), %rax
	cmpq	%rax, %rdx
	cmova	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-112(%rbp), %rax
	cmpq	32(%rbp), %rax
	jb	.L26
	movl	$1, -84(%rbp)
	jmp	.L7
.L26:
	movq	-112(%rbp), %rax
	subq	%rax, 32(%rbp)
	movq	-112(%rbp), %rax
	addq	%rax, 24(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L27
.L28:
	movq	-64(%rbp), %rax
	movl	$0, %edx
	divq	-112(%rbp)
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -64(%rbp)
.L27:
	movq	-64(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jb	.L28
	movq	$0, -64(%rbp)
	jmp	.L29
.L32:
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movw	$1, -86(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L30
.L31:
	subq	$1, -72(%rbp)
	movq	-144(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	addw	%ax, -86(%rbp)
	movq	-144(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzwl	-86(%rbp), %edx
	movb	%dl, (%rax)
	shrw	$8, -86(%rbp)
.L30:
	cmpq	$0, -72(%rbp)
	jne	.L31
	movq	-120(%rbp), %rax
	addq	%rax, -64(%rbp)
.L29:
	movq	-64(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L32
	jmp	.L33
.L35:
	nop
	jmp	.L7
.L36:
	nop
	jmp	.L7
.L37:
	nop
.L7:
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$129, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$130, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$131, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$132, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-84(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	pkcs12kdf_derive, .-pkcs12kdf_derive
	.type	kdf_pkcs12_new, @function
kdf_pkcs12_new:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	leaq	.LC0(%rip), %rax
	movl	$144, %edx
	movq	%rax, %rsi
	movl	$80, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L40
.L41:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	kdf_pkcs12_new, .-kdf_pkcs12_new
	.type	kdf_pkcs12_cleanup, @function
kdf_pkcs12_cleanup:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$154, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$155, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	kdf_pkcs12_cleanup, .-kdf_pkcs12_cleanup
	.type	kdf_pkcs12_free, @function
kdf_pkcs12_free:
.LFB460:
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
	cmpq	$0, -8(%rbp)
	je	.L45
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_pkcs12_cleanup
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$165, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L45:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	kdf_pkcs12_free, .-kdf_pkcs12_free
	.type	kdf_pkcs12_reset, @function
kdf_pkcs12_reset:
.LFB461:
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
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_pkcs12_cleanup
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	kdf_pkcs12_reset, .-kdf_pkcs12_reset
	.type	kdf_pkcs12_dup, @function
kdf_pkcs12_dup:
.LFB462:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	kdf_pkcs12_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L48
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L53
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_digest_copy@PLT
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movl	72(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 72(%rax)
.L48:
	movq	-16(%rbp), %rax
	jmp	.L52
.L53:
	nop
.L51:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	kdf_pkcs12_free
	movl	$0, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	kdf_pkcs12_dup, .-kdf_pkcs12_dup
	.type	pkcs12kdf_set_membuf, @function
pkcs12kdf_set_membuf:
.LFB463:
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$204, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	leaq	.LC0(%rip), %rax
	movl	$209, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L55:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	pkcs12kdf_set_membuf, .-pkcs12kdf_set_membuf
	.type	kdf_pkcs12_derive, @function
kdf_pkcs12_derive:
.LFB464:
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
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L59
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_pkcs12_set_ctx_params
	testl	%eax, %eax
	jne	.L60
.L59:
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L62:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L63
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L63:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %r8
	movq	-8(%rbp), %rax
	movl	72(%rax), %edi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	pkcs12kdf_derive
	addq	$32, %rsp
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	kdf_pkcs12_derive, .-kdf_pkcs12_derive
	.section	.rodata
.LC1:
	.string	"pass"
.LC2:
	.string	"salt"
.LC3:
	.string	"id"
.LC4:
	.string	"iter"
	.text
	.type	kdf_pkcs12_set_ctx_params, @function
kdf_pkcs12_set_ctx_params:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L65
	movl	$1, %eax
	jmp	.L66
.L65:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L66
.L67:
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L68
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	pkcs12kdf_set_membuf
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L66
.L68:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L69
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	pkcs12kdf_set_membuf
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L66
.L69:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L70
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L66
.L70:
	leaq	.LC4(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L71
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L66
.L71:
	movl	$1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	kdf_pkcs12_set_ctx_params, .-kdf_pkcs12_set_ctx_params
	.type	kdf_pkcs12_settable_ctx_params, @function
kdf_pkcs12_settable_ctx_params:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	kdf_pkcs12_settable_ctx_params, .-kdf_pkcs12_settable_ctx_params
	.section	.rodata
.LC5:
	.string	"size"
	.text
	.type	kdf_pkcs12_get_ctx_params, @function
kdf_pkcs12_get_ctx_params:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L75
	movq	-8(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	jmp	.L76
.L75:
	movl	$-2, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	kdf_pkcs12_get_ctx_params, .-kdf_pkcs12_get_ctx_params
	.type	kdf_pkcs12_gettable_ctx_params, @function
kdf_pkcs12_gettable_ctx_params:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	kdf_pkcs12_gettable_ctx_params, .-kdf_pkcs12_gettable_ctx_params
	.globl	ossl_kdf_pkcs12_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_pkcs12_functions, @object
	.size	ossl_kdf_pkcs12_functions, 160
ossl_kdf_pkcs12_functions:
	.long	1
	.zero	4
	.quad	kdf_pkcs12_new
	.long	2
	.zero	4
	.quad	kdf_pkcs12_dup
	.long	3
	.zero	4
	.quad	kdf_pkcs12_free
	.long	4
	.zero	4
	.quad	kdf_pkcs12_reset
	.long	5
	.zero	4
	.quad	kdf_pkcs12_derive
	.long	8
	.zero	4
	.quad	kdf_pkcs12_settable_ctx_params
	.long	11
	.zero	4
	.quad	kdf_pkcs12_set_ctx_params
	.long	7
	.zero	4
	.quad	kdf_pkcs12_gettable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_pkcs12_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"pkcs12kdf_derive"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"kdf_pkcs12_derive"
.LC6:
	.string	"properties"
.LC7:
	.string	"digest"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.1, @object
	.size	known_settable_ctx_params.1, 280
known_settable_ctx_params.1:
	.quad	.LC6
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC3
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	known_gettable_ctx_params.0, @object
	.size	known_gettable_ctx_params.0, 80
known_gettable_ctx_params.0:
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
