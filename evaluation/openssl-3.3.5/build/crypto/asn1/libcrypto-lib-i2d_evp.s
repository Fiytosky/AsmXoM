	.file	"i2d_evp.c"
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
	.string	"../crypto/asn1/i2d_evp.c"
	.text
	.type	i2d_provided, @function
i2d_provided:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$-1, -4(%rbp)
	jmp	.L6
.L15:
	movq	$2147483647, -24(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L7
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L8
.L7:
	movl	$1, %eax
	jmp	.L9
.L8:
	movl	$0, %eax
.L9:
	movl	%eax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L10
	movl	$-1, %eax
	jmp	.L11
.L10:
	leaq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_data@PLT
	testl	%eax, %eax
	je	.L12
	cmpl	$0, -8(%rbp)
	je	.L13
	movq	-24(%rbp), %rax
	movl	%eax, -4(%rbp)
	jmp	.L12
.L13:
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movl	$2147483647, %eax
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
.L12:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	addq	$16, -56(%rbp)
.L6:
	cmpl	$-1, -4(%rbp)
	jne	.L14
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L15
.L14:
	cmpl	$-1, -4(%rbp)
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$69, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$196, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L16:
	movl	-4(%rbp), %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	i2d_provided, .-i2d_provided
	.globl	i2d_KeyParams
	.type	i2d_KeyParams, @function
i2d_KeyParams:
.LFB590:
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
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-16(%rbp), %rdx
	leaq	output_info.5(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$132, %esi
	movq	%rax, %rdi
	call	i2d_provided
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L19
.L20:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$196, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	i2d_KeyParams, .-i2d_KeyParams
	.globl	i2d_KeyParams_bio
	.type	i2d_KeyParams_bio, @function
i2d_KeyParams_bio:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	i2d_KeyParams@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	i2d_KeyParams_bio, .-i2d_KeyParams_bio
	.globl	i2d_PrivateKey
	.type	i2d_PrivateKey, @function
i2d_PrivateKey:
.LFB592:
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
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-32(%rbp), %rdx
	leaq	output_info.3(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$135, %esi
	movq	%rax, %rdi
	call	i2d_provided
	jmp	.L25
.L24:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	192(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L25
.L26:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY2PKCS8@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L28
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_PRIV_KEY_INFO@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
.L28:
	movl	-4(%rbp), %eax
	jmp	.L25
.L27:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	i2d_PrivateKey, .-i2d_PrivateKey
	.globl	i2d_PublicKey
	.type	i2d_PublicKey, @function
i2d_PublicKey:
.LFB593:
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
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-16(%rbp), %rdx
	leaq	output_info.1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$134, %esi
	movq	%rax, %rdi
	call	i2d_provided
	jmp	.L31
.L30:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$408, %eax
	je	.L32
	cmpl	$408, %eax
	jg	.L33
	cmpl	$6, %eax
	je	.L34
	cmpl	$116, %eax
	je	.L35
	jmp	.L33
.L34:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	i2d_RSAPublicKey@PLT
	jmp	.L31
.L35:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DSA@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	i2d_DSAPublicKey@PLT
	jmp	.L31
.L32:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	i2o_ECPublicKey@PLT
	jmp	.L31
.L33:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$145, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	i2d_PublicKey, .-i2d_PublicKey
	.section	.rodata
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 13
__func__.6:
	.string	"i2d_provided"
.LC1:
	.string	"DER"
.LC2:
	.string	"type-specific"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	output_info.5, @object
	.size	output_info.5, 32
output_info.5:
	.quad	.LC1
	.quad	.LC2
	.quad	0
	.zero	8
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"i2d_KeyParams"
.LC3:
	.string	"PrivateKeyInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	output_info.3, @object
	.size	output_info.3, 48
output_info.3:
	.quad	.LC1
	.quad	.LC2
	.quad	.LC1
	.quad	.LC3
	.quad	0
	.zero	8
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"i2d_PrivateKey"
.LC4:
	.string	"blob"
	.section	.data.rel.ro.local
	.align 32
	.type	output_info.1, @object
	.size	output_info.1, 48
output_info.1:
	.quad	.LC1
	.quad	.LC2
	.quad	.LC4
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"i2d_PublicKey"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
