	.file	"v3_skid.c"
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
	.globl	ossl_v3_skey_id
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_skey_id, @object
	.size	ossl_v3_skey_id, 104
ossl_v3_skey_id:
	.long	82
	.long	0
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_OCTET_STRING
	.quad	s2i_skey_id
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	i2s_ASN1_OCTET_STRING
	.type	i2s_ASN1_OCTET_STRING, @function
i2s_ASN1_OCTET_STRING:
.LFB622:
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
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_buf2hexstr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	i2s_ASN1_OCTET_STRING, .-i2s_ASN1_OCTET_STRING
	.section	.rodata
.LC0:
	.string	"../crypto/x509/v3_skid.c"
	.text
	.globl	s2i_ASN1_OCTET_STRING
	.type	s2i_ASN1_OCTET_STRING, @function
s2i_ASN1_OCTET_STRING:
.LFB623:
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
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L8:
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	s2i_ASN1_OCTET_STRING, .-s2i_ASN1_OCTET_STRING
	.section	.rodata
.LC1:
	.string	"SHA1"
	.text
	.globl	ossl_x509_pubkey_hash
	.type	ossl_x509_pubkey_hash, @function
ossl_x509_pubkey_hash:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L19
.L13:
	movq	-136(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_PUBKEY_get0_libctx@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L19
.L15:
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L19
.L16:
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L19
.L17:
	movq	-136(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_PUBKEY_get0_param@PLT
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	leaq	-100(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L18
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-16(%rbp), %rax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ossl_x509_pubkey_hash, .-ossl_x509_pubkey_hash
	.section	.rodata
.LC2:
	.string	"none"
.LC3:
	.string	"hash"
	.text
	.type	s2i_skey_id, @function
s2i_skey_id:
.LFB625:
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
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L21
	call	ASN1_OCTET_STRING_new@PLT
	jmp	.L22
.L21:
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	s2i_ASN1_OCTET_STRING@PLT
	jmp	.L22
.L23:
	cmpq	$0, -16(%rbp)
	je	.L24
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L24
	call	ASN1_OCTET_STRING_new@PLT
	jmp	.L22
.L24:
	cmpq	$0, -16(%rbp)
	je	.L25
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L26
.L25:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L26:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	jmp	.L28
.L27:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rax
.L28:
	movq	%rax, %rdi
	call	ossl_x509_pubkey_hash@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	s2i_skey_id, .-s2i_skey_id
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"s2i_ASN1_OCTET_STRING"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"ossl_x509_pubkey_hash"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 12
__func__.0:
	.string	"s2i_skey_id"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
