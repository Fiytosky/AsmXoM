	.file	"cms_kari.c"
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
	.type	ossl_check_CMS_RecipientEncryptedKey_type, @function
ossl_check_CMS_RecipientEncryptedKey_type:
.LFB629:
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
.LFE629:
	.size	ossl_check_CMS_RecipientEncryptedKey_type, .-ossl_check_CMS_RecipientEncryptedKey_type
	.type	ossl_check_const_CMS_RecipientEncryptedKey_sk_type, @function
ossl_check_const_CMS_RecipientEncryptedKey_sk_type:
.LFB630:
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
.LFE630:
	.size	ossl_check_const_CMS_RecipientEncryptedKey_sk_type, .-ossl_check_const_CMS_RecipientEncryptedKey_sk_type
	.type	ossl_check_CMS_RecipientEncryptedKey_sk_type, @function
ossl_check_CMS_RecipientEncryptedKey_sk_type:
.LFB631:
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
.LFE631:
	.size	ossl_check_CMS_RecipientEncryptedKey_sk_type, .-ossl_check_CMS_RecipientEncryptedKey_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_kari.c"
	.text
	.globl	CMS_RecipientInfo_kari_get0_alg
	.type	CMS_RecipientInfo_kari_get0_alg, @function
CMS_RecipientInfo_kari_get0_alg:
.LFB697:
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
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L12
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$33, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L13
.L12:
	cmpq	$0, -16(%rbp)
	je	.L14
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L14:
	cmpq	$0, -24(%rbp)
	je	.L15
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L15:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	CMS_RecipientInfo_kari_get0_alg, .-CMS_RecipientInfo_kari_get0_alg
	.globl	CMS_RecipientInfo_kari_get0_reks
	.type	CMS_RecipientInfo_kari_get0_reks, @function
CMS_RecipientInfo_kari_get0_reks:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L17
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	CMS_RecipientInfo_kari_get0_reks, .-CMS_RecipientInfo_kari_get0_reks
	.globl	CMS_RecipientInfo_kari_get0_orig_id
	.type	CMS_RecipientInfo_kari_get0_orig_id, @function
CMS_RecipientInfo_kari_get0_orig_id:
.LFB699:
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
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L20
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L22
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.L22:
	cmpq	$0, -64(%rbp)
	je	.L23
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.L23:
	cmpq	$0, -48(%rbp)
	je	.L24
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.L24:
	cmpq	$0, -32(%rbp)
	je	.L25
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.L25:
	cmpq	$0, -40(%rbp)
	je	.L26
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L26:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L27
	cmpq	$0, -56(%rbp)
	je	.L28
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L28:
	cmpq	$0, -64(%rbp)
	je	.L29
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L29
.L27:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L30
	cmpq	$0, -48(%rbp)
	je	.L29
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L29
.L30:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L31
	cmpq	$0, -32(%rbp)
	je	.L32
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L32:
	cmpq	$0, -40(%rbp)
	je	.L29
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L29
.L31:
	movl	$0, %eax
	jmp	.L21
.L29:
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	CMS_RecipientInfo_kari_get0_orig_id, .-CMS_RecipientInfo_kari_get0_orig_id
	.globl	CMS_RecipientInfo_kari_orig_id_cmp
	.type	CMS_RecipientInfo_kari_orig_id_cmp, @function
CMS_RecipientInfo_kari_orig_id_cmp:
.LFB700:
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
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L34
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L35
.L34:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L36
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_ias_cert_cmp@PLT
	jmp	.L35
.L36:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L37
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_keyid_cert_cmp@PLT
	jmp	.L35
.L37:
	movl	$-1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	CMS_RecipientInfo_kari_orig_id_cmp, .-CMS_RecipientInfo_kari_orig_id_cmp
	.globl	CMS_RecipientEncryptedKey_get0_id
	.type	CMS_RecipientEncryptedKey_get0_id, @function
CMS_RecipientEncryptedKey_get0_id:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L39
	cmpq	$0, -56(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L40:
	cmpq	$0, -64(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L41:
	cmpq	$0, -32(%rbp)
	je	.L42
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.L42:
	cmpq	$0, -40(%rbp)
	je	.L43
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L43:
	cmpq	$0, -48(%rbp)
	je	.L44
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L44
.L39:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L45
	cmpq	$0, -32(%rbp)
	je	.L46
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L46:
	cmpq	$0, -40(%rbp)
	je	.L47
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L47:
	cmpq	$0, -48(%rbp)
	je	.L48
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L48:
	cmpq	$0, -56(%rbp)
	je	.L49
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.L49:
	cmpq	$0, -64(%rbp)
	je	.L44
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L44
.L45:
	movl	$0, %eax
	jmp	.L50
.L44:
	movl	$1, %eax
.L50:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	CMS_RecipientEncryptedKey_get0_id, .-CMS_RecipientEncryptedKey_get0_id
	.globl	CMS_RecipientEncryptedKey_cert_cmp
	.type	CMS_RecipientEncryptedKey_cert_cmp, @function
CMS_RecipientEncryptedKey_cert_cmp:
.LFB702:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L52
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_ias_cert_cmp@PLT
	jmp	.L53
.L52:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L54
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cms_keyid_cert_cmp@PLT
	jmp	.L53
.L54:
	movl	$-1, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	CMS_RecipientEncryptedKey_cert_cmp, .-CMS_RecipientEncryptedKey_cert_cmp
	.globl	CMS_RecipientInfo_kari_set0_pkey_and_peer
	.type	CMS_RecipientInfo_kari_set0_pkey_and_peer, @function
CMS_RecipientInfo_kari_set0_pkey_and_peer:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	cmpq	$0, -64(%rbp)
	jne	.L56
	movl	$1, %eax
	jmp	.L57
.L56:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L62
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jle	.L62
	cmpq	$0, -72(%rbp)
	je	.L61
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	testl	%eax, %eax
	jle	.L63
.L61:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
	jmp	.L57
.L62:
	nop
	jmp	.L60
.L63:
	nop
.L60:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$0, %eax
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	CMS_RecipientInfo_kari_set0_pkey_and_peer, .-CMS_RecipientInfo_kari_set0_pkey_and_peer
	.globl	CMS_RecipientInfo_kari_set0_pkey
	.type	CMS_RecipientInfo_kari_set0_pkey, @function
CMS_RecipientInfo_kari_set0_pkey:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_set0_pkey_and_peer@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	CMS_RecipientInfo_kari_set0_pkey, .-CMS_RecipientInfo_kari_set0_pkey
	.globl	CMS_RecipientInfo_kari_get0_ctx
	.type	CMS_RecipientInfo_kari_get0_ctx, @function
CMS_RecipientInfo_kari_get0_ctx:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L67
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	jmp	.L68
.L67:
	movl	$0, %eax
.L68:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	CMS_RecipientInfo_kari_get0_ctx, .-CMS_RecipientInfo_kari_get0_ctx
	.type	cms_kek_cipher, @function
cms_kek_cipher:
.LFB706:
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
	movl	%r9d, -140(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	$64, %rax
	jbe	.L70
	movl	$0, %eax
	jmp	.L79
.L70:
	movq	-136(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jle	.L80
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	movl	-140(%rbp), %ecx
	leaq	-80(%rbp), %rdx
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L81
	movq	-128(%rbp), %rax
	movl	%eax, %esi
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	movq	-120(%rbp), %rcx
	leaq	-92(%rbp), %rdx
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L82
	movl	-92(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$233, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L83
	movq	-128(%rbp), %rax
	movl	%eax, %edi
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	movq	-120(%rbp), %rcx
	leaq	-92(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L84
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L73
.L80:
	nop
	jmp	.L73
.L81:
	nop
	jmp	.L73
.L82:
	nop
	jmp	.L73
.L83:
	nop
	jmp	.L73
.L84:
	nop
.L73:
	movq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	cmpl	$0, -4(%rbp)
	jne	.L78
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$245, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L78:
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_reset@PLT
	movq	-136(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-136(%rbp), %rax
	movq	$0, 40(%rax)
	movl	-4(%rbp), %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	cms_kek_cipher, .-cms_kek_cipher
	.globl	CMS_RecipientInfo_kari_decrypt
	.type	CMS_RecipientInfo_kari_decrypt, @function
CMS_RecipientInfo_kari_decrypt:
.LFB707:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_cms_env_asn1_ctrl@PLT
	testl	%eax, %eax
	je	.L90
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	cms_kek_cipher
	testl	%eax, %eax
	je	.L91
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$272, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	$0, -40(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L87
.L90:
	nop
	jmp	.L87
.L91:
	nop
.L87:
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$278, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	CMS_RecipientInfo_kari_decrypt, .-CMS_RecipientInfo_kari_decrypt
	.type	cms_kari_create_ephemeral_key, @function
cms_kari_create_ephemeral_key:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -12(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L101
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L102
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	testl	%eax, %eax
	jle	.L103
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L104
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jle	.L105
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, -12(%rbp)
	jmp	.L94
.L101:
	nop
	jmp	.L94
.L102:
	nop
	jmp	.L94
.L103:
	nop
	jmp	.L94
.L104:
	nop
	jmp	.L94
.L105:
	nop
.L94:
	cmpl	$0, -12(%rbp)
	jne	.L99
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L99:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	cms_kari_create_ephemeral_key, .-cms_kari_create_ephemeral_key
	.type	cms_kari_set_originator_private_key, @function
cms_kari_set_originator_private_key:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L112
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jle	.L113
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, -20(%rbp)
	jmp	.L108
.L112:
	nop
	jmp	.L108
.L113:
	nop
.L108:
	cmpl	$0, -20(%rbp)
	jne	.L110
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L110:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	cms_kari_set_originator_private_key, .-cms_kari_set_originator_private_key
	.globl	ossl_cms_RecipientInfo_kari_init
	.type	ossl_cms_RecipientInfo_kari_init, @function
ossl_cms_RecipientInfo_kari_init:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movq	$0, -24(%rbp)
	call	CMS_KeyAgreeRecipientInfo_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$3, (%rax)
	movq	-32(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	call	CMS_RecipientEncryptedKey_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L117
	movl	$0, %eax
	jmp	.L116
.L117:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_RecipientEncryptedKey_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CMS_RecipientEncryptedKey_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L118
	call	CMS_RecipientEncryptedKey_it@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	$0, %eax
	jmp	.L116
.L118:
	movl	-92(%rbp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L119
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
	call	CMS_RecipientKeyIdentifier_it@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	movq	%rdx, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, 8(%rbx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L120
	movl	$0, %eax
	jmp	.L116
.L120:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cms_set1_keyid@PLT
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L116
.L119:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cms_set1_ias@PLT
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L116
.L121:
	cmpq	$0, -88(%rbp)
	jne	.L122
	cmpq	$0, -80(%rbp)
	jne	.L122
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_kari_create_ephemeral_key
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L116
.L122:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L125
	cmpq	$0, -80(%rbp)
	jne	.L126
.L125:
	movl	$0, %eax
	jmp	.L116
.L126:
	movl	-92(%rbp), %eax
	andl	$2097152, %eax
	testl	%eax, %eax
	je	.L127
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	call	ASN1_OCTET_STRING_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	movl	$0, %eax
	jmp	.L116
.L128:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cms_set1_keyid@PLT
	testl	%eax, %eax
	jne	.L129
	movl	$0, %eax
	jmp	.L116
.L127:
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cms_set1_ias@PLT
	testl	%eax, %eax
	jne	.L129
	movl	$0, %eax
	jmp	.L116
.L129:
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_kari_set_originator_private_key
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L116
.L124:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L116:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	ossl_cms_RecipientInfo_kari_init, .-ossl_cms_RecipientInfo_kari_init
	.section	.rodata
.LC1:
	.string	"id-smime-alg-CMS3DESwrap"
.LC2:
	.string	"id-aes128-wrap"
.LC3:
	.string	"id-aes192-wrap"
.LC4:
	.string	"id-aes256-wrap"
	.text
	.type	cms_wrap_init, @function
cms_wrap_init:
.LFB711:
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
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L131
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65538, %eax
	je	.L132
	movl	$0, %eax
	jmp	.L143
.L132:
	movl	$1, %eax
	jmp	.L143
.L131:
	cmpq	$0, -80(%rbp)
	jne	.L134
	movl	$0, %eax
	jmp	.L143
.L134:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$67108864, %eax
	testq	%rax, %rax
	je	.L135
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_get_ctrl@PLT
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$41, %esi
	movl	$0, %edi
	call	*%rax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jg	.L136
	movl	$0, %eax
	jmp	.L143
.L136:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L135
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65538, %eax
	je	.L137
	movl	$0, %eax
	jmp	.L143
.L137:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -24(%rbp)
	jmp	.L138
.L135:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	cmpl	$44, %eax
	jne	.L139
	leaq	.LC1(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L138
.L139:
	cmpl	$16, -44(%rbp)
	jg	.L140
	leaq	.LC2(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L138
.L140:
	cmpl	$24, -44(%rbp)
	jg	.L141
	leaq	.LC3(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L138
.L141:
	leaq	.LC4(%rip), %rax
	movq	%rax, -24(%rbp)
.L138:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_propq@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L142
	movl	$0, %eax
	jmp	.L143
.L142:
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	movl	%eax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-48(%rbp), %eax
.L143:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	cms_wrap_init, .-cms_wrap_init
	.globl	ossl_cms_RecipientInfo_kari_encrypt
	.type	ossl_cms_RecipientInfo_kari_encrypt, @function
ossl_cms_RecipientInfo_kari_encrypt:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L145
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$486, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L146
.L145:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cms_get0_env_enc_content@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_wrap_init
	testl	%eax, %eax
	jne	.L147
	movl	$0, %eax
	jmp	.L146
.L147:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L148
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$2, (%rax)
	call	CMS_OriginatorPublicKey_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L149
	movl	$0, %eax
	jmp	.L146
.L148:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$510, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$196, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L146
.L149:
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cms_env_asn1_ctrl@PLT
	testl	%eax, %eax
	jne	.L150
	movl	$0, %eax
	jmp	.L146
.L150:
	movl	$0, -4(%rbp)
	jmp	.L151
.L155:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientEncryptedKey_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	testl	%eax, %eax
	jg	.L152
	movl	$0, %eax
	jmp	.L146
.L152:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	cms_kek_cipher
	testl	%eax, %eax
	jne	.L154
	movl	$0, %eax
	jmp	.L146
.L154:
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	addl	$1, -4(%rbp)
.L151:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_RecipientEncryptedKey_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L155
	movl	$1, %eax
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	ossl_cms_RecipientInfo_kari_encrypt, .-ossl_cms_RecipientInfo_kari_encrypt
	.section	.rodata
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 32
__func__.4:
	.string	"CMS_RecipientInfo_kari_get0_alg"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 33
__func__.3:
	.string	"CMS_RecipientInfo_kari_get0_reks"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 36
__func__.2:
	.string	"CMS_RecipientInfo_kari_get0_orig_id"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 35
__func__.1:
	.string	"CMS_RecipientInfo_kari_orig_id_cmp"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 36
__func__.0:
	.string	"ossl_cms_RecipientInfo_kari_encrypt"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
