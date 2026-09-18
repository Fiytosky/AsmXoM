	.file	"x942kdf.c"
	.text
	.section	.rodata
.LC0:
	.string	"AES-128-WRAP"
.LC1:
	.string	"AES-192-WRAP"
.LC2:
	.string	"AES-256-WRAP"
.LC3:
	.string	"DES3-WRAP"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	kek_algs, @object
	.size	kek_algs, 128
kek_algs:
	.quad	.LC0
	.quad	ossl_der_oid_id_aes128_wrap
	.quad	11
	.quad	16
	.quad	.LC1
	.quad	ossl_der_oid_id_aes192_wrap
	.quad	11
	.quad	24
	.quad	.LC2
	.quad	ossl_der_oid_id_aes256_wrap
	.quad	11
	.quad	32
	.quad	.LC3
	.quad	ossl_der_oid_id_alg_CMS3DESwrap
	.quad	13
	.quad	24
	.section	.rodata
	.align 8
.LC4:
	.string	"../providers/implementations/kdfs/x942kdf.c"
	.text
	.type	find_alg_id, @function
find_alg_id:
.LFB397:
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
	movl	$1, -4(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2
	movq	$0, -16(%rbp)
	jmp	.L3
.L6:
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	kek_algs(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L4
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L4:
	addq	$1, -16(%rbp)
.L3:
	cmpq	$3, -16(%rbp)
	jbe	.L6
.L2:
	movl	$0, -4(%rbp)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$145, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L5:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE397:
	.size	find_alg_id, .-find_alg_id
	.type	DER_w_keyinfo, @function
DER_w_keyinfo:
.LFB398:
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
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_begin_sequence@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_octet_string_uint32@PLT
	testl	%eax, %eax
	je	.L9
	cmpq	$0, -32(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L9
.L10:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L9
	movl	$1, %eax
	jmp	.L12
.L9:
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE398:
	.size	DER_w_keyinfo, .-DER_w_keyinfo
	.type	der_encode_sharedinfo, @function
der_encode_sharedinfo:
.LFB399:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L14
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_der@PLT
	testl	%eax, %eax
	jne	.L15
	jmp	.L16
.L14:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_init_null_der@PLT
	testl	%eax, %eax
	je	.L16
.L15:
	movq	-8(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_begin_sequence@PLT
	testl	%eax, %eax
	je	.L16
	cmpq	$0, 72(%rbp)
	je	.L17
	movq	80(%rbp), %rcx
	movq	72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_octet_string@PLT
	testl	%eax, %eax
	je	.L16
.L17:
	cmpq	$0, 56(%rbp)
	je	.L18
	movq	64(%rbp), %rcx
	movq	56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_octet_string@PLT
	testl	%eax, %eax
	je	.L16
.L18:
	cmpl	$0, 88(%rbp)
	je	.L19
	movl	88(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_octet_string_uint32@PLT
	testl	%eax, %eax
	je	.L16
.L19:
	cmpq	$0, 40(%rbp)
	je	.L20
	movq	48(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_octet_string@PLT
	testl	%eax, %eax
	je	.L16
.L20:
	cmpq	$0, 24(%rbp)
	je	.L21
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_octet_string@PLT
	testl	%eax, %eax
	je	.L16
.L21:
	cmpq	$0, -48(%rbp)
	je	.L22
	movq	16(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L16
.L22:
	movq	96(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DER_w_keyinfo
	testl	%eax, %eax
	je	.L16
	movq	-8(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L16
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	je	.L16
	movl	$1, %eax
	jmp	.L24
.L16:
	movl	$0, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE399:
	.size	der_encode_sharedinfo, .-der_encode_sharedinfo
	.type	x942_encode_otherinfo, @function
x942_encode_otherinfo:
.LFB400:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$16777215, -104(%rbp)
	jbe	.L26
	movl	$0, %eax
	jmp	.L36
.L26:
	movq	-104(%rbp), %rax
	sall	$3, %eax
	movl	%eax, -20(%rbp)
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	leaq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	-20(%rbp), %ecx
	pushq	%rcx
	pushq	64(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-144(%rbp)
	pushq	-136(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	der_encode_sharedinfo
	addq	$96, %rsp
	testl	%eax, %eax
	je	.L37
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L37
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movq	-40(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movl	$230, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L38
	movq	-40(%rbp), %rdx
	movq	-128(%rbp), %r9
	movq	-120(%rbp), %r8
	movq	-112(%rbp), %rcx
	movq	-16(%rbp), %rsi
	leaq	-96(%rbp), %rax
	subq	$8, %rsp
	leaq	-32(%rbp), %rdi
	pushq	%rdi
	movl	-20(%rbp), %edi
	pushq	%rdi
	pushq	64(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-144(%rbp)
	pushq	-136(%rbp)
	movq	%rax, %rdi
	call	der_encode_sharedinfo
	addq	$96, %rsp
	testl	%eax, %eax
	je	.L39
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	cmpq	%rax, -16(%rbp)
	jne	.L40
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L41
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L41
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L41
	movq	-32(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rdx
	movq	80(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L30
.L37:
	nop
	jmp	.L30
.L38:
	nop
	jmp	.L30
.L39:
	nop
	jmp	.L30
.L40:
	nop
	jmp	.L30
.L41:
	nop
.L30:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	-4(%rbp), %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE400:
	.size	x942_encode_otherinfo, .-x942_encode_otherinfo
	.type	x942kdf_hash_kdm, @function
x942kdf_hash_kdm:
.LFB401:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	movl	$0, -4(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$1073741824, -152(%rbp)
	ja	.L43
	cmpq	$1073741824, -168(%rbp)
	ja	.L43
	cmpq	$1073741824, 24(%rbp)
	ja	.L43
	cmpq	$0, 24(%rbp)
	jne	.L44
.L43:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$282, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L44:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L46
	movl	$0, %eax
	jmp	.L59
.L46:
	movl	-52(%rbp), %eax
	cltq
	movq	%rax, -64(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L60
	cmpq	$0, -48(%rbp)
	je	.L60
	movq	-136(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	je	.L61
	movq	$1, -16(%rbp)
.L58:
	movq	-16(%rbp), %rax
	shrq	$24, %rax
	movl	%eax, %edx
	movq	-176(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-176(%rbp), %rax
	addq	$3, %rax
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L62
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L62
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L62
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L53
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L63
	movq	-64(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	subq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L55
	jmp	.L56
.L53:
	leaq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L64
	movq	-24(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L56
.L55:
	addq	$1, -16(%rbp)
	jmp	.L58
.L56:
	movl	$1, -4(%rbp)
	jmp	.L49
.L60:
	nop
	jmp	.L49
.L61:
	nop
	jmp	.L49
.L62:
	nop
	jmp	.L49
.L63:
	nop
	jmp	.L49
.L64:
	nop
.L49:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	-128(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-4(%rbp), %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE401:
	.size	x942kdf_hash_kdm, .-x942kdf_hash_kdm
	.type	x942kdf_new, @function
x942kdf_new:
.LFB402:
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
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	leaq	.LC4(%rip), %rax
	movl	$339, %edx
	movq	%rax, %rsi
	movl	$160, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L68
	movl	$0, %eax
	jmp	.L67
.L68:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 152(%rax)
	movq	-8(%rbp), %rax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	x942kdf_new, .-x942kdf_new
	.type	x942kdf_reset, @function
x942kdf_reset:
.LFB403:
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
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_reset@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movl	$352, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movl	$353, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movl	$354, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movl	$355, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	112(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movl	$356, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	120(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movl	$357, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$160, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 152(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	x942kdf_reset, .-x942kdf_reset
	.type	x942kdf_free, @function
x942kdf_free:
.LFB404:
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
	je	.L72
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x942kdf_reset
	leaq	.LC4(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$369, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L72:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	x942kdf_free, .-x942kdf_free
	.type	x942kdf_dup, @function
x942kdf_dup:
.LFB405:
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
	call	x942kdf_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L74
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
	je	.L79
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
	je	.L79
	movq	-16(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L79
	movq	-16(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L79
	movq	-16(%rbp), %rax
	leaq	112(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	112(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L79
	movq	-16(%rbp), %rax
	leaq	120(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	120(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L79
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_digest_copy@PLT
	testl	%eax, %eax
	je	.L79
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-8(%rbp), %rax
	movl	152(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 152(%rax)
.L74:
	movq	-16(%rbp), %rax
	jmp	.L78
.L79:
	nop
.L77:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	x942kdf_free
	movl	$0, %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	x942kdf_dup, .-x942kdf_dup
	.type	x942kdf_set_buffer, @function
x942kdf_set_buffer:
.LFB406:
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
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L82
.L81:
	movl	$1, %eax
	jmp	.L83
.L82:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rcx
	movl	$414, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	x942kdf_set_buffer, .-x942kdf_set_buffer
	.type	x942kdf_size, @function
x942kdf_size:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L85
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L85:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	cltq
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	x942kdf_size, .-x942kdf_size
	.type	x942kdf_derive, @function
x942kdf_derive:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L88
	movq	-128(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x942kdf_set_ctx_params
	testl	%eax, %eax
	jne	.L89
.L88:
	movl	$0, %eax
	jmp	.L102
.L89:
	movq	-56(%rbp), %rax
	movl	152(%rax), %eax
	testl	%eax, %eax
	je	.L91
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L91
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$450, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$198, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L102
.L91:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L92
.L93:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$462, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L102
.L92:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L94
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$466, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L102
.L94:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_prov_digest_md@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$471, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L102
.L95:
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L97
.L96:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L102
.L97:
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	$1073741823, %rax
	jbe	.L98
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$483, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$200, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L102
.L98:
	movq	-56(%rbp), %rax
	movq	120(%rax), %r12
	movq	-56(%rbp), %rax
	movq	88(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	112(%rax), %r11
	movq	-56(%rbp), %rax
	movq	80(%rax), %r10
	movq	-56(%rbp), %rax
	movq	104(%rax), %r9
	movq	-56(%rbp), %rax
	movq	72(%rax), %r8
	movq	-56(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	64(%rax), %r15
	movq	-56(%rbp), %rax
	movq	56(%rax), %r14
	movq	-56(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	136(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	152(%rax), %eax
	testl	%eax, %eax
	je	.L99
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	jmp	.L100
.L99:
	movl	$0, %eax
.L100:
	leaq	-80(%rbp), %r13
	pushq	%r13
	leaq	-96(%rbp), %r13
	pushq	%r13
	leaq	-88(%rbp), %r13
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movq	%r15, %r9
	movq	%r14, %r8
	movq	%rax, %rdi
	call	x942_encode_otherinfo
	addq	$80, %rsp
	testl	%eax, %eax
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$495, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L102
.L101:
	movq	-80(%rbp), %r8
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-72(%rbp), %rax
	pushq	-120(%rbp)
	pushq	-112(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	x942kdf_hash_kdm
	addq	$16, %rsp
	movl	%eax, -60(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movl	$500, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-60(%rbp), %eax
.L102:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	x942kdf_derive, .-x942kdf_derive
	.section	.rodata
.LC5:
	.string	"secret"
.LC6:
	.string	"key"
.LC7:
	.string	"acvp-info"
.LC8:
	.string	"partyu-info"
.LC9:
	.string	"ukm"
.LC10:
	.string	"partyv-info"
.LC11:
	.string	"use-keybits"
.LC12:
	.string	"supp-pubinfo"
.LC13:
	.string	"supp-privinfo"
.LC14:
	.string	"cekalg"
.LC15:
	.string	"properties"
	.text
	.type	x942kdf_set_ctx_params, @function
x942kdf_set_ctx_params:
.LFB409:
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L104
	movl	$1, %eax
	jmp	.L121
.L104:
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_digest_load_from_params@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L121
.L106:
	leaq	.LC5(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L107
	leaq	.LC6(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
.L107:
	cmpq	$0, -8(%rbp)
	je	.L108
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	x942kdf_set_buffer
	testl	%eax, %eax
	jne	.L108
	movl	$0, %eax
	jmp	.L121
.L108:
	leaq	.LC7(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L109
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	x942kdf_set_buffer
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L121
.L109:
	leaq	.LC8(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L110
	leaq	.LC9(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
.L110:
	cmpq	$0, -8(%rbp)
	je	.L111
	movq	-24(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	x942kdf_set_buffer
	testl	%eax, %eax
	jne	.L111
	movl	$0, %eax
	jmp	.L121
.L111:
	leaq	.LC10(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L112
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	x942kdf_set_buffer
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L121
.L112:
	leaq	.LC11(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L113
	movq	-24(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L113
	movl	$0, %eax
	jmp	.L121
.L113:
	leaq	.LC12(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L114
	movq	-24(%rbp), %rax
	leaq	112(%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	x942kdf_set_buffer
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L121
.L115:
	movq	-24(%rbp), %rax
	movl	$0, 152(%rax)
.L114:
	leaq	.LC13(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L116
	movq	-24(%rbp), %rax
	leaq	120(%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	x942kdf_set_buffer
	testl	%eax, %eax
	jne	.L116
	movl	$0, %eax
	jmp	.L121
.L116:
	leaq	.LC14(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L117
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L118
	movl	$0, %eax
	jmp	.L121
.L118:
	leaq	.LC15(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L119
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.L119:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	find_alg_id
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+kek_algs(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+kek_algs(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+kek_algs(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 128(%rax)
.L117:
	movl	$1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	x942kdf_set_ctx_params, .-x942kdf_set_ctx_params
	.type	x942kdf_settable_ctx_params, @function
x942kdf_settable_ctx_params:
.LFB410:
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
.LFE410:
	.size	x942kdf_settable_ctx_params, .-x942kdf_settable_ctx_params
	.section	.rodata
.LC16:
	.string	"size"
	.text
	.type	x942kdf_get_ctx_params, @function
x942kdf_get_ctx_params:
.LFB411:
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
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L125
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x942kdf_size
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	jmp	.L126
.L125:
	movl	$-2, %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	x942kdf_get_ctx_params, .-x942kdf_get_ctx_params
	.type	x942kdf_gettable_ctx_params, @function
x942kdf_gettable_ctx_params:
.LFB412:
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
.LFE412:
	.size	x942kdf_gettable_ctx_params, .-x942kdf_gettable_ctx_params
	.globl	ossl_kdf_x942_kdf_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_x942_kdf_functions, @object
	.size	ossl_kdf_x942_kdf_functions, 160
ossl_kdf_x942_kdf_functions:
	.long	1
	.zero	4
	.quad	x942kdf_new
	.long	2
	.zero	4
	.quad	x942kdf_dup
	.long	3
	.zero	4
	.quad	x942kdf_free
	.long	4
	.zero	4
	.quad	x942kdf_reset
	.long	5
	.zero	4
	.quad	x942kdf_derive
	.long	8
	.zero	4
	.quad	x942kdf_settable_ctx_params
	.long	11
	.zero	4
	.quad	x942kdf_set_ctx_params
	.long	7
	.zero	4
	.quad	x942kdf_gettable_ctx_params
	.long	10
	.zero	4
	.quad	x942kdf_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 12
__func__.5:
	.string	"find_alg_id"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 17
__func__.4:
	.string	"x942kdf_hash_kdm"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 13
__func__.3:
	.string	"x942kdf_size"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"x942kdf_derive"
.LC17:
	.string	"digest"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.1, @object
	.size	known_settable_ctx_params.1, 520
known_settable_ctx_params.1:
	.quad	.LC15
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC17
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	5
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
	.quad	.LC10
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC11
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC14
	.long	4
	.zero	4
	.quad	0
	.quad	0
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
	.quad	.LC16
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
