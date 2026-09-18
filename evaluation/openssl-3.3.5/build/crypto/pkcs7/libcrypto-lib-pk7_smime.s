	.file	"pk7_smime.c"
	.text
	.type	ossl_check_X509_ALGOR_sk_type, @function
ossl_check_X509_ALGOR_sk_type:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	ossl_check_X509_ALGOR_sk_type, .-ossl_check_X509_ALGOR_sk_type
	.type	ossl_check_X509_ALGOR_freefunc_type, @function
ossl_check_X509_ALGOR_freefunc_type:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	ossl_check_X509_ALGOR_freefunc_type, .-ossl_check_X509_ALGOR_freefunc_type
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
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	ossl_check_const_X509_ATTRIBUTE_sk_type, @function
ossl_check_const_X509_ATTRIBUTE_sk_type:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	ossl_check_const_X509_ATTRIBUTE_sk_type, .-ossl_check_const_X509_ATTRIBUTE_sk_type
	.type	ossl_check_const_PKCS7_SIGNER_INFO_sk_type, @function
ossl_check_const_PKCS7_SIGNER_INFO_sk_type:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	ossl_check_const_PKCS7_SIGNER_INFO_sk_type, .-ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/pkcs7/pk7_smime.c"
	.text
	.globl	PKCS7_sign_ex
	.type	PKCS7_sign_ex, @function
PKCS7_sign_ex:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524321, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-16(%rbp), %rax
	movl	$22, %esi
	movq	%rax, %rdi
	call	PKCS7_set_type@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rax
	movl	$21, %esi
	movq	%rax, %rdi
	call	PKCS7_content_new@PLT
	testl	%eax, %eax
	je	.L33
	cmpq	$0, -32(%rbp)
	je	.L25
	movl	-52(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PKCS7_sign_add_signer@PLT
	testq	%rax, %rax
	jne	.L25
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$153, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L25:
	movl	-52(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L26
	movl	$0, -4(%rbp)
	jmp	.L27
.L29:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add_certificate@PLT
	testl	%eax, %eax
	je	.L34
	addl	$1, -4(%rbp)
.L27:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L29
.L26:
	movl	-52(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L30
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	PKCS7_ctrl@PLT
.L30:
	movl	-52(%rbp), %eax
	andl	$20480, %eax
	testl	%eax, %eax
	je	.L31
	movq	-16(%rbp), %rax
	jmp	.L21
.L31:
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS7_final@PLT
	testl	%eax, %eax
	je	.L35
	movq	-16(%rbp), %rax
	jmp	.L21
.L32:
	nop
	jmp	.L23
.L33:
	nop
	jmp	.L23
.L34:
	nop
	jmp	.L23
.L35:
	nop
.L23:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	PKCS7_sign_ex, .-PKCS7_sign_ex
	.globl	PKCS7_sign
	.type	PKCS7_sign, @function
PKCS7_sign:
.LFB618:
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
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PKCS7_sign_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	PKCS7_sign, .-PKCS7_sign
	.globl	PKCS7_final
	.type	PKCS7_final, @function
PKCS7_final:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS7_dataInit@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524321, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L39:
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SMIME_crlf_copy@PLT
	testl	%eax, %eax
	je	.L44
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_dataFinal@PLT
	testl	%eax, %eax
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$145, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L42
.L43:
	movl	$1, -4(%rbp)
	jmp	.L42
.L44:
	nop
.L42:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-4(%rbp), %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	PKCS7_final, .-PKCS7_final
	.type	add_cipher_smcap, @function
add_cipher_smcap:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	testq	%rax, %rax
	je	.L46
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	PKCS7_simple_smimecap@PLT
	jmp	.L47
.L46:
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	add_cipher_smcap, .-add_cipher_smcap
	.type	add_digest_smcap, @function
add_digest_smcap:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	testq	%rax, %rax
	je	.L49
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	PKCS7_simple_smimecap@PLT
	jmp	.L50
.L49:
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	add_digest_smcap, .-add_digest_smcap
	.globl	PKCS7_sign_add_signer
	.type	PKCS7_sign_add_signer, @function
PKCS7_sign_add_signer:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_add_signature@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L54:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movl	-68(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L55
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add_certificate@PLT
	testl	%eax, %eax
	je	.L64
.L55:
	movl	-68(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L57
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS7_add_attrib_content_type@PLT
	testl	%eax, %eax
	je	.L65
	movl	-68(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L59
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L56
.L60:
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	$427, %esi
	movq	%rax, %rdi
	call	add_cipher_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	$982, %esi
	movq	%rax, %rdi
	call	add_digest_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	$983, %esi
	movq	%rax, %rdi
	call	add_digest_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	$809, %esi
	movq	%rax, %rdi
	call	add_digest_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	$813, %esi
	movq	%rax, %rdi
	call	add_cipher_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	$423, %esi
	movq	%rax, %rdi
	call	add_cipher_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	$419, %esi
	movq	%rax, %rdi
	call	add_cipher_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	add_cipher_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movl	$37, %esi
	movq	%rax, %rdi
	call	add_cipher_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$64, %edx
	movl	$37, %esi
	movq	%rax, %rdi
	call	add_cipher_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	$31, %esi
	movq	%rax, %rdi
	call	add_cipher_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$40, %edx
	movl	$37, %esi
	movq	%rax, %rdi
	call	add_cipher_smcap
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add_attrib_smimecap@PLT
	testl	%eax, %eax
	je	.L66
	movq	X509_ALGOR_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, -24(%rbp)
.L59:
	movl	-68(%rbp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L57
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkcs7_copy_existing_digest
	testl	%eax, %eax
	je	.L67
	movl	-68(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	jne	.L57
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_SIGNER_INFO_sign@PLT
	testl	%eax, %eax
	je	.L68
.L57:
	movq	-32(%rbp), %rax
	jmp	.L53
.L64:
	nop
	jmp	.L56
.L65:
	nop
	jmp	.L56
.L66:
	nop
	jmp	.L56
.L67:
	nop
	jmp	.L56
.L68:
	nop
.L56:
	movq	X509_ALGOR_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ALGOR_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L53:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	PKCS7_sign_add_signer, .-PKCS7_sign_add_signer
	.type	pkcs7_copy_existing_digest, @function
pkcs7_copy_existing_digest:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_get_signer_info@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L70
.L75:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L78
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L79
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L74
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_digest_from_attributes@PLT
	movq	%rax, -16(%rbp)
	jmp	.L72
.L79:
	nop
.L74:
	addl	$1, -4(%rbp)
.L70:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L75
	jmp	.L72
.L78:
	nop
.L72:
	cmpq	$0, -16(%rbp)
	je	.L76
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add1_attrib_digest@PLT
	jmp	.L77
.L76:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	pkcs7_copy_existing_digest, .-pkcs7_copy_existing_digest
	.section	.rodata
.LC1:
	.string	"smime_sign"
.LC2:
	.string	"Verify error: %s"
	.text
	.globl	PKCS7_verify
	.type	PKCS7_verify, @function
PKCS7_verify:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movl	%r9d, -156(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$229, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L82
.L81:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	je	.L83
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L82
.L83:
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	PKCS7_ctrl@PLT
	testq	%rax, %rax
	je	.L84
	cmpq	$0, -144(%rbp)
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L82
.L84:
	movl	-156(%rbp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L85
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	PKCS7_ctrl@PLT
	testq	%rax, %rax
	jne	.L85
	cmpq	$0, -144(%rbp)
	je	.L85
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L82
.L85:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_get_signer_info@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L86
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L87
.L86:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L82
.L87:
	movl	-156(%rbp), %edx
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS7_get0_signers@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L82
.L88:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_new_ex@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L115
	movl	-156(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L91
	movl	$0, -32(%rbp)
	jmp	.L92
.L98:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -104(%rbp)
	movl	-156(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L93
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L94
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$281, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L90
.L94:
	leaq	.LC1(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_default@PLT
	testl	%eax, %eax
	jne	.L95
	jmp	.L90
.L93:
	movq	-104(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L90
.L95:
	movl	-156(%rbp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L96
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_crls@PLT
.L96:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L97
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -68(%rbp)
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$295, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-68(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$117, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L90
.L97:
	addl	$1, -32(%rbp)
.L92:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -32(%rbp)
	jl	.L98
.L91:
	movq	-144(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_dataInit@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L116
	movl	-156(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L100
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$308, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L90
.L101:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	jmp	.L102
.L100:
	movq	-152(%rbp), %rax
	movq	%rax, -56(%rbp)
.L102:
	leaq	.LC0(%rip), %rax
	movl	$316, %edx
	movq	%rax, %rsi
	movl	$4096, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L117
.L103:
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L118
	cmpq	$0, -56(%rbp)
	je	.L103
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	jmp	.L103
.L118:
	nop
	movl	-156(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L107
	movq	-152(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SMIME_text@PLT
	testl	%eax, %eax
	jne	.L107
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L90
.L107:
	movl	-156(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L108
	movl	$0, -28(%rbp)
	jmp	.L109
.L111:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_signatureVerify@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jg	.L110
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$340, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L90
.L110:
	addl	$1, -28(%rbp)
.L109:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L111
.L108:
	movl	$1, -36(%rbp)
	jmp	.L90
.L115:
	nop
	jmp	.L90
.L116:
	nop
	jmp	.L90
.L117:
	nop
.L90:
	movl	-156(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L112
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L112:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$351, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -144(%rbp)
	je	.L113
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
.L113:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-36(%rbp), %eax
.L82:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	PKCS7_verify, .-PKCS7_verify
	.globl	PKCS7_get0_signers
	.type	PKCS7_get0_signers, @function
PKCS7_get0_signers:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L120
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$370, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	je	.L122
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$375, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L122:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_get_signer_info@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L123
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$384, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L123:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L124
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$389, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L124:
	movl	$0, -28(%rbp)
	jmp	.L125
.L130:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L126
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_find_by_issuer_and_serial@PLT
	movq	%rax, -24(%rbp)
.L126:
	cmpq	$0, -24(%rbp)
	jne	.L127
	movl	-84(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L127
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L127
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_find_by_issuer_and_serial@PLT
	movq	%rax, -24(%rbp)
.L127:
	cmpq	$0, -24(%rbp)
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$407, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L121
.L128:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L129
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L121
.L129:
	addl	$1, -28(%rbp)
.L125:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_SIGNER_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L130
	movq	-48(%rbp), %rax
.L121:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	PKCS7_get0_signers, .-PKCS7_get0_signers
	.globl	PKCS7_encrypt_ex
	.type	PKCS7_encrypt_ex, @function
PKCS7_encrypt_ex:
.LFB626:
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
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L132
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$432, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524321, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L133
.L132:
	movq	-24(%rbp), %rax
	movl	$23, %esi
	movq	%rax, %rdi
	call	PKCS7_set_type@PLT
	testl	%eax, %eax
	je	.L141
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_set_cipher@PLT
	testl	%eax, %eax
	jne	.L136
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$439, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L136:
	movl	$0, -4(%rbp)
	jmp	.L137
.L139:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add_recipient@PLT
	testq	%rax, %rax
	jne	.L138
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$446, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L138:
	addl	$1, -4(%rbp)
.L137:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L139
	movl	-60(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L140
	movq	-24(%rbp), %rax
	jmp	.L133
.L140:
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS7_final@PLT
	testl	%eax, %eax
	je	.L142
	movq	-24(%rbp), %rax
	jmp	.L133
.L141:
	nop
	jmp	.L135
.L142:
	nop
.L135:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movl	$0, %eax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	PKCS7_encrypt_ex, .-PKCS7_encrypt_ex
	.globl	PKCS7_encrypt
	.type	PKCS7_encrypt, @function
PKCS7_encrypt:
.LFB627:
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
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PKCS7_encrypt_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	PKCS7_encrypt, .-PKCS7_encrypt
	.globl	PKCS7_decrypt
	.type	PKCS7_decrypt, @function
PKCS7_decrypt:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L146
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$479, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L147
.L146:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$23, %eax
	je	.L148
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$24, %eax
	je	.L148
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$485, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L147
.L148:
	cmpq	$0, -72(%rbp)
	je	.L149
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L149
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$490, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L147
.L149:
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PKCS7_dataDecode@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L150
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$496, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L147
.L150:
	movl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L151
	call	BIO_f_buffer@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L152
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$504, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	$0, %eax
	jmp	.L147
.L152:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L153
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$509, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$33, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	$0, %eax
	jmp	.L147
.L153:
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SMIME_text@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L154
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_method_type@PLT
	cmpl	$522, %eax
	jne	.L154
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$113, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L154
	movl	$0, -4(%rbp)
.L154:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-4(%rbp), %eax
	jmp	.L147
.L151:
	leaq	.LC0(%rip), %rax
	movl	$522, %edx
	movq	%rax, %rsi
	movl	$4096, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L160
.L155:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L157
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_method_type@PLT
	cmpl	$522, %eax
	jne	.L161
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$113, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L161
	movl	$0, -4(%rbp)
	jmp	.L161
.L157:
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -28(%rbp)
	jne	.L162
	jmp	.L155
.L160:
	nop
	jmp	.L156
.L161:
	nop
	jmp	.L156
.L162:
	nop
.L156:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$540, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-4(%rbp), %eax
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	PKCS7_decrypt, .-PKCS7_decrypt
	.section	.rodata
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 14
__func__.7:
	.string	"PKCS7_sign_ex"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 12
__func__.6:
	.string	"PKCS7_final"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 22
__func__.5:
	.string	"PKCS7_sign_add_signer"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 27
__func__.4:
	.string	"pkcs7_copy_existing_digest"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 13
__func__.3:
	.string	"PKCS7_verify"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 19
__func__.2:
	.string	"PKCS7_get0_signers"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"PKCS7_encrypt_ex"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"PKCS7_decrypt"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
