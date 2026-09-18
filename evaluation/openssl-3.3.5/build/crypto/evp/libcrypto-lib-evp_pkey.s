	.file	"evp_pkey.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/evp/evp_pkey.c"
.LC1:
	.string	"TYPE=%s"
	.text
	.globl	evp_pkcs82pkey_legacy
	.type	evp_pkcs82pkey_legacy, @function
evp_pkcs82pkey_legacy:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	$0, -8(%rbp)
	movq	-104(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L14
.L6:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L14
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type@PLT
	testl	%eax, %eax
	jne	.L9
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	i2t_ASN1_OBJECT@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	-96(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$118, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	312(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	312(%rax), %r8
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L12
	jmp	.L10
.L11:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$52, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$145, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L10
.L13:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L10
.L12:
	movq	-8(%rbp), %rax
	jmp	.L14
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	evp_pkcs82pkey_legacy, .-evp_pkcs82pkey_legacy
	.section	.rodata
.LC2:
	.string	"PrivateKeyInfo"
.LC3:
	.string	"DER"
	.text
	.globl	EVP_PKCS82PKEY_ex
	.type	EVP_PKCS82PKEY_ex, @function
EVP_PKCS82PKEY_ex:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L16
	movq	-120(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	je	.L16
	movq	-56(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jne	.L17
.L16:
	movl	$0, %eax
	jmp	.L24
.L17:
	leaq	-40(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_PRIV_KEY_INFO@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L19
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L20
.L19:
	movl	$0, %eax
	jmp	.L24
.L20:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, -48(%rbp)
	movl	$135, -16(%rbp)
	movq	-128(%rbp), %r8
	movl	-16(%rbp), %ecx
	leaq	-112(%rbp), %rdx
	leaq	.LC2(%rip), %rdi
	leaq	.LC3(%rip), %rsi
	leaq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-136(%rbp)
	movq	%r8, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_get_num_decoders@PLT
	testl	%eax, %eax
	jne	.L21
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-128(%rbp), %rdi
	movl	-16(%rbp), %ecx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	leaq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-136(%rbp)
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
.L21:
	cmpq	$0, -8(%rbp)
	je	.L22
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_data@PLT
	testl	%eax, %eax
	jne	.L23
.L22:
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_pkcs82pkey_legacy@PLT
	movq	%rax, -24(%rbp)
.L23:
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$112, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-24(%rbp), %rax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	EVP_PKCS82PKEY_ex, .-EVP_PKCS82PKEY_ex
	.globl	EVP_PKCS82PKEY
	.type	EVP_PKCS82PKEY, @function
EVP_PKCS82PKEY:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKCS82PKEY_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	EVP_PKCS82PKEY, .-EVP_PKCS82PKEY
	.globl	EVP_PKEY2PKCS8
	.type	EVP_PKEY2PKCS8, @function
EVP_PKEY2PKCS8:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movl	$135, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	-20(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_data@PLT
	testl	%eax, %eax
	je	.L40
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$148, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L41
	jmp	.L34
.L28:
	call	PKCS8_PRIV_KEY_INFO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L38:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L37:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L40:
	nop
.L34:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L39
.L41:
	nop
.L39:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-8(%rbp), %rax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	EVP_PKEY2PKCS8, .-EVP_PKEY2PKCS8
	.globl	EVP_PKEY_get_attr_count
	.type	EVP_PKEY_get_attr_count, @function
EVP_PKEY_get_attr_count:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	X509at_get_attr_count@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	EVP_PKEY_get_attr_count, .-EVP_PKEY_get_attr_count
	.globl	EVP_PKEY_get_attr_by_NID
	.type	EVP_PKEY_get_attr_by_NID, @function
EVP_PKEY_get_attr_by_NID:
.LFB594:
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
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	EVP_PKEY_get_attr_by_NID, .-EVP_PKEY_get_attr_by_NID
	.globl	EVP_PKEY_get_attr_by_OBJ
	.type	EVP_PKEY_get_attr_by_OBJ, @function
EVP_PKEY_get_attr_by_OBJ:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509at_get_attr_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	EVP_PKEY_get_attr_by_OBJ, .-EVP_PKEY_get_attr_by_OBJ
	.globl	EVP_PKEY_get_attr
	.type	EVP_PKEY_get_attr, @function
EVP_PKEY_get_attr:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	EVP_PKEY_get_attr, .-EVP_PKEY_get_attr
	.globl	EVP_PKEY_delete_attr
	.type	EVP_PKEY_delete_attr, @function
EVP_PKEY_delete_attr:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509at_delete_attr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	EVP_PKEY_delete_attr, .-EVP_PKEY_delete_attr
	.globl	EVP_PKEY_add1_attr
	.type	EVP_PKEY_add1_attr, @function
EVP_PKEY_add1_attr:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509at_add1_attr@PLT
	testq	%rax, %rax
	je	.L53
	movl	$1, %eax
	jmp	.L54
.L53:
	movl	$0, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	EVP_PKEY_add1_attr, .-EVP_PKEY_add1_attr
	.globl	EVP_PKEY_add1_attr_by_OBJ
	.type	EVP_PKEY_add1_attr_by_OBJ, @function
EVP_PKEY_add1_attr_by_OBJ:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdi
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	X509at_add1_attr_by_OBJ@PLT
	testq	%rax, %rax
	je	.L56
	movl	$1, %eax
	jmp	.L57
.L56:
	movl	$0, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	EVP_PKEY_add1_attr_by_OBJ, .-EVP_PKEY_add1_attr_by_OBJ
	.globl	EVP_PKEY_add1_attr_by_NID
	.type	EVP_PKEY_add1_attr_by_NID, @function
EVP_PKEY_add1_attr_by_NID:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	call	X509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	je	.L59
	movl	$1, %eax
	jmp	.L60
.L59:
	movl	$0, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	EVP_PKEY_add1_attr_by_NID, .-EVP_PKEY_add1_attr_by_NID
	.globl	EVP_PKEY_add1_attr_by_txt
	.type	EVP_PKEY_add1_attr_by_txt, @function
EVP_PKEY_add1_attr_by_txt:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdi
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	X509at_add1_attr_by_txt@PLT
	testq	%rax, %rax
	je	.L62
	movl	$1, %eax
	jmp	.L63
.L62:
	movl	$0, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	EVP_PKEY_add1_attr_by_txt, .-EVP_PKEY_add1_attr_by_txt
	.globl	EVP_PKEY_get0_type_name
	.type	EVP_PKEY_get0_type_name, @function
EVP_PKEY_get0_type_name:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_name@PLT
	jmp	.L68
.L65:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_asn1@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L67
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	EVP_PKEY_asn1_get0_info@PLT
.L67:
	movq	-16(%rbp), %rax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	EVP_PKEY_get0_type_name, .-EVP_PKEY_get0_type_name
	.globl	EVP_PKEY_get0_provider
	.type	EVP_PKEY_get0_provider, @function
EVP_PKEY_get0_provider:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	jmp	.L71
.L70:
	movl	$0, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	EVP_PKEY_get0_provider, .-EVP_PKEY_get0_provider
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"evp_pkcs82pkey_legacy"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"EVP_PKEY2PKCS8"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
