	.file	"sskdf.c"
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
	.type	kmac_custom_str, @object
	.size	kmac_custom_str, 3
kmac_custom_str:
	.ascii	"KDF"
	.text
	.type	SSKDF_hash_kdm, @function
SSKDF_hash_kdm:
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
	movq	%r8, -184(%rbp)
	movl	%r9d, -188(%rbp)
	movl	$0, -4(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$1073741824, -168(%rbp)
	ja	.L6
	cmpq	$1073741824, -184(%rbp)
	ja	.L6
	cmpq	$1073741824, 24(%rbp)
	ja	.L6
	cmpq	$0, 24(%rbp)
	jne	.L7
.L6:
	movl	$0, %eax
	jmp	.L24
.L7:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L9
	movl	$0, %eax
	jmp	.L24
.L9:
	movl	-52(%rbp), %eax
	cltq
	movq	%rax, -64(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L25
	cmpq	$0, -48(%rbp)
	je	.L25
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	je	.L26
	movq	$1, -16(%rbp)
.L23:
	movq	-16(%rbp), %rax
	shrq	$24, %rax
	movb	%al, -68(%rbp)
	movq	-16(%rbp), %rax
	shrq	$16, %rax
	movb	%al, -67(%rbp)
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	movb	%al, -66(%rbp)
	movq	-16(%rbp), %rax
	movb	%al, -65(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L27
	cmpl	$0, -188(%rbp)
	jne	.L15
	leaq	-68(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L27
.L15:
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L27
	cmpl	$0, -188(%rbp)
	je	.L16
	leaq	-68(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L27
.L16:
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L18
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L28
	movq	-64(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	subq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L20
	jmp	.L21
.L18:
	leaq	-144(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L21
.L20:
	addq	$1, -16(%rbp)
	jmp	.L23
.L21:
	movl	$1, -4(%rbp)
	jmp	.L12
.L25:
	nop
	jmp	.L12
.L26:
	nop
	jmp	.L12
.L27:
	nop
	jmp	.L12
.L28:
	nop
	jmp	.L12
.L29:
	nop
.L12:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	-144(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-4(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	SSKDF_hash_kdm, .-SSKDF_hash_kdm
	.section	.rodata
.LC0:
	.string	"custom"
.LC1:
	.string	"size"
	.align 8
.LC2:
	.string	"../providers/implementations/kdfs/sskdf.c"
	.text
	.type	kmac_init, @function
kmac_init:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L31
	movl	$1, %eax
	jmp	.L38
.L31:
	leaq	-176(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L38
.L33:
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L34
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.L35
.L34:
	movq	-112(%rbp), %rax
	cmpq	%rax, -120(%rbp)
	je	.L35
	movq	-112(%rbp), %rax
	cmpq	$20, %rax
	je	.L35
	movq	-112(%rbp), %rax
	cmpq	$28, %rax
	je	.L35
	movq	-112(%rbp), %rax
	cmpq	$32, %rax
	je	.L35
	movq	-112(%rbp), %rax
	cmpq	$48, %rax
	je	.L35
	movq	-112(%rbp), %rax
	cmpq	$64, %rax
	je	.L35
	movl	$0, %eax
	jmp	.L38
.L35:
	leaq	-176(%rbp), %rax
	leaq	-112(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	jg	.L36
	movl	$0, %eax
	jmp	.L38
.L36:
	movq	-112(%rbp), %rax
	cmpq	$64, %rax
	jbe	.L37
	movq	-112(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$201, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	kmac_init, .-kmac_init
	.type	SSKDF_mac_kdm, @function
SSKDF_mac_kdm:
.LFB459:
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
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movl	$0, -4(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -136(%rbp)
	cmpq	$1073741824, 24(%rbp)
	ja	.L40
	cmpq	$1073741824, 40(%rbp)
	ja	.L40
	cmpq	$1073741824, 56(%rbp)
	ja	.L40
	cmpq	$0, 56(%rbp)
	jne	.L41
.L40:
	movl	$0, %eax
	jmp	.L59
.L41:
	leaq	-136(%rbp), %r8
	movq	56(%rbp), %rdi
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	kmac_init
	testl	%eax, %eax
	je	.L60
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	je	.L45
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
.L45:
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L61
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get_mac_size@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L62
	leaq	-128(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L48
	cmpq	$64, -56(%rbp)
	ja	.L62
.L48:
	movq	56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$1, -16(%rbp)
.L56:
	movq	-16(%rbp), %rax
	shrq	$24, %rax
	movb	%al, -60(%rbp)
	movq	-16(%rbp), %rax
	shrq	$16, %rax
	movb	%al, -59(%rbp)
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	movb	%al, -58(%rbp)
	movq	-16(%rbp), %rax
	movb	%al, -57(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L63
	leaq	-60(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L63
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L63
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L63
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L51
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L64
	movq	-56(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	subq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L53
	jmp	.L54
.L51:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L65
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L54
.L53:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	$0, -40(%rbp)
	addq	$1, -16(%rbp)
	jmp	.L56
.L54:
	movl	$1, -4(%rbp)
	jmp	.L44
.L60:
	nop
	jmp	.L44
.L61:
	nop
	jmp	.L44
.L62:
	nop
	jmp	.L44
.L63:
	nop
	jmp	.L44
.L64:
	nop
	jmp	.L44
.L65:
	nop
.L44:
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	je	.L57
	movq	-136(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	-176(%rbp), %rsi
	movl	$280, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L58
.L57:
	leaq	-128(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L58:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movl	-4(%rbp), %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	SSKDF_mac_kdm, .-SSKDF_mac_kdm
	.type	sskdf_new, @function
sskdf_new:
.LFB460:
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
	jne	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	leaq	.LC2(%rip), %rax
	movl	$295, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L69
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L69:
	movq	-8(%rbp), %rax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	sskdf_new, .-sskdf_new
	.type	sskdf_reset, @function
sskdf_reset:
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
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$307, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$308, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$309, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$104, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	sskdf_reset, .-sskdf_reset
	.type	sskdf_free, @function
sskdf_free:
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
	cmpq	$0, -8(%rbp)
	je	.L73
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sskdf_reset
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$320, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L73:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	sskdf_free, .-sskdf_free
	.type	sskdf_dup, @function
sskdf_dup:
.LFB463:
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
	call	sskdf_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L75
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L81
.L76:
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L82
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L82
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L82
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_digest_copy@PLT
	testl	%eax, %eax
	je	.L82
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movl	96(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 96(%rax)
.L75:
	movq	-16(%rbp), %rax
	jmp	.L80
.L81:
	nop
	jmp	.L77
.L82:
	nop
.L77:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sskdf_free
	movl	$0, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	sskdf_dup, .-sskdf_dup
	.type	sskdf_size, @function
sskdf_size:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L84
	movq	$-1, %rax
	jmp	.L85
.L84:
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L86
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$364, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L85
.L86:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	cltq
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	sskdf_size, .-sskdf_size
	.section	.rodata
.LC3:
	.string	"HMAC"
.LC4:
	.string	"KMAC128"
	.text
	.type	sskdf_derive, @function
sskdf_derive:
.LFB465:
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
	movq	%rax, -48(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L88
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sskdf_set_ctx_params
	testl	%eax, %eax
	jne	.L89
.L88:
	movl	$0, %eax
	jmp	.L90
.L89:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L91
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L90
.L91:
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get0_mac@PLT
	movq	%rax, -64(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_is_a@PLT
	testl	%eax, %eax
	je	.L93
	cmpq	$0, -56(%rbp)
	jne	.L94
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$396, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L90
.L94:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L95
	movl	$0, %eax
	jmp	.L90
.L93:
	movq	-48(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L96
	leaq	kmac_custom_str(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$3, -32(%rbp)
	leaq	.LC4(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_is_a@PLT
	testl	%eax, %eax
	je	.L97
	movl	$164, -36(%rbp)
	jmp	.L95
.L97:
	movl	$132, -36(%rbp)
	jmp	.L95
.L96:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$411, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L90
.L95:
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L99
.L98:
	movl	-36(%rbp), %eax
	cltq
	leaq	.LC2(%rip), %rcx
	movl	$416, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L100
	movl	$0, %eax
	jmp	.L90
.L100:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 80(%rax)
.L99:
	movq	-48(%rbp), %rax
	movq	64(%rax), %r10
	movq	-48(%rbp), %rax
	movq	56(%rax), %r9
	movq	-48(%rbp), %rax
	movq	48(%rax), %r8
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	80(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	72(%rax), %r11
	movq	-48(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	pushq	-104(%rbp)
	pushq	-96(%rbp)
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movq	%rbx, %r9
	movq	%r11, %r8
	movq	%rax, %rdi
	call	SSKDF_mac_kdm
	addq	$48, %rsp
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.L90
.L92:
	cmpq	$0, -56(%rbp)
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$430, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L90
.L101:
	movq	-48(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-56(%rbp), %rax
	pushq	-104(%rbp)
	pushq	-96(%rbp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SSKDF_hash_kdm
	addq	$16, %rsp
.L90:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	sskdf_derive, .-sskdf_derive
	.type	x963kdf_derive, @function
x963kdf_derive:
.LFB466:
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
	je	.L103
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sskdf_set_ctx_params
	testl	%eax, %eax
	jne	.L104
.L103:
	movl	$0, %eax
	jmp	.L105
.L104:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L106
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$448, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L106:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L107
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$453, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$136, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L107:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$460, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L108:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-16(%rbp), %rax
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SSKDF_hash_kdm
	addq	$16, %rsp
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	x963kdf_derive, .-x963kdf_derive
	.section	.rodata
.LC5:
	.string	"KMAC256"
.LC6:
	.string	"secret"
.LC7:
	.string	"key"
.LC8:
	.string	"info"
.LC9:
	.string	"salt"
.LC10:
	.string	"maclen"
	.text
	.type	sskdf_set_ctx_params, @function
sskdf_set_ctx_params:
.LFB467:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L110
	movl	$1, %eax
	jmp	.L123
.L110:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	ossl_prov_macctx_load_from_params@PLT
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L123
.L112:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get0_mac@PLT
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_MAC_is_a@PLT
	testl	%eax, %eax
	jne	.L114
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get0_mac@PLT
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_MAC_is_a@PLT
	testl	%eax, %eax
	je	.L113
.L114:
	movq	-16(%rbp), %rax
	movl	$1, 96(%rax)
.L113:
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L123
.L115:
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	.LC6(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_get1_octet_string@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L116
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_get1_octet_string@PLT
	movl	%eax, -4(%rbp)
.L116:
	cmpl	$0, -4(%rbp)
	jne	.L117
	movl	$0, %eax
	jmp	.L123
.L117:
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rdx
	leaq	.LC8(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_param_get1_concat_octet_string@PLT
	testl	%eax, %eax
	jne	.L118
	movl	$0, %eax
	jmp	.L123
.L118:
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rdx
	leaq	.LC9(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_get1_octet_string@PLT
	testl	%eax, %eax
	jne	.L119
	movl	$0, %eax
	jmp	.L123
.L119:
	leaq	.LC10(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L120
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	je	.L121
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L122
.L121:
	movl	$0, %eax
	jmp	.L123
.L122:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 88(%rax)
.L120:
	movl	$1, %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	sskdf_set_ctx_params, .-sskdf_set_ctx_params
	.type	sskdf_settable_ctx_params, @function
sskdf_settable_ctx_params:
.LFB468:
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
.LFE468:
	.size	sskdf_settable_ctx_params, .-sskdf_settable_ctx_params
	.type	sskdf_get_ctx_params, @function
sskdf_get_ctx_params:
.LFB469:
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
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L127
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sskdf_size
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	jmp	.L128
.L127:
	movl	$-2, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	sskdf_get_ctx_params, .-sskdf_get_ctx_params
	.type	sskdf_gettable_ctx_params, @function
sskdf_gettable_ctx_params:
.LFB470:
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
.LFE470:
	.size	sskdf_gettable_ctx_params, .-sskdf_gettable_ctx_params
	.globl	ossl_kdf_sskdf_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_sskdf_functions, @object
	.size	ossl_kdf_sskdf_functions, 160
ossl_kdf_sskdf_functions:
	.long	1
	.zero	4
	.quad	sskdf_new
	.long	2
	.zero	4
	.quad	sskdf_dup
	.long	3
	.zero	4
	.quad	sskdf_free
	.long	4
	.zero	4
	.quad	sskdf_reset
	.long	5
	.zero	4
	.quad	sskdf_derive
	.long	8
	.zero	4
	.quad	sskdf_settable_ctx_params
	.long	11
	.zero	4
	.quad	sskdf_set_ctx_params
	.long	7
	.zero	4
	.quad	sskdf_gettable_ctx_params
	.long	10
	.zero	4
	.quad	sskdf_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_kdf_x963_kdf_functions
	.align 32
	.type	ossl_kdf_x963_kdf_functions, @object
	.size	ossl_kdf_x963_kdf_functions, 160
ossl_kdf_x963_kdf_functions:
	.long	1
	.zero	4
	.quad	sskdf_new
	.long	2
	.zero	4
	.quad	sskdf_dup
	.long	3
	.zero	4
	.quad	sskdf_free
	.long	4
	.zero	4
	.quad	sskdf_reset
	.long	5
	.zero	4
	.quad	x963kdf_derive
	.long	8
	.zero	4
	.quad	sskdf_settable_ctx_params
	.long	11
	.zero	4
	.quad	sskdf_set_ctx_params
	.long	7
	.zero	4
	.quad	sskdf_gettable_ctx_params
	.long	10
	.zero	4
	.quad	sskdf_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 11
__func__.4:
	.string	"sskdf_size"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 13
__func__.3:
	.string	"sskdf_derive"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"x963kdf_derive"
.LC11:
	.string	"properties"
.LC12:
	.string	"digest"
.LC13:
	.string	"mac"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.1, @object
	.size	known_settable_ctx_params.1, 360
known_settable_ctx_params.1:
	.quad	.LC6
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC11
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC9
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
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
	.align 32
	.type	known_gettable_ctx_params.0, @object
	.size	known_gettable_ctx_params.0, 80
known_gettable_ctx_params.0:
	.quad	.LC1
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
