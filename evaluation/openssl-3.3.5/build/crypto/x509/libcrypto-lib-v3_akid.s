	.file	"v3_akid.c"
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
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB161:
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
.LFE161:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB162:
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
.LFE162:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_freefunc_type, @function
ossl_check_CONF_VALUE_freefunc_type:
.LFB165:
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
.LFE165:
	.size	ossl_check_CONF_VALUE_freefunc_type, .-ossl_check_CONF_VALUE_freefunc_type
	.type	ossl_check_GENERAL_NAME_type, @function
ossl_check_GENERAL_NAME_type:
.LFB527:
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
.LFE527:
	.size	ossl_check_GENERAL_NAME_type, .-ossl_check_GENERAL_NAME_type
	.type	ossl_check_GENERAL_NAME_sk_type, @function
ossl_check_GENERAL_NAME_sk_type:
.LFB529:
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
.LFE529:
	.size	ossl_check_GENERAL_NAME_sk_type, .-ossl_check_GENERAL_NAME_sk_type
	.globl	ossl_v3_akey_id
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_akey_id, @object
	.size	ossl_v3_akey_id, 104
ossl_v3_akey_id:
	.long	90
	.long	4
	.quad	AUTHORITY_KEYID_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_AUTHORITY_KEYID
	.quad	v2i_AUTHORITY_KEYID
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC0:
	.string	"../crypto/x509/v3_akid.c"
.LC1:
	.string	"keyid"
.LC2:
	.string	"serial"
	.text
	.type	i2v_AUTHORITY_KEYID, @function
i2v_AUTHORITY_KEYID:
.LFB628:
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
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_OCTET_STRING@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L20
.L19:
	leaq	.LC1(%rip), %rax
	jmp	.L21
.L20:
	movl	$0, %eax
.L21:
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L22
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L22:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L16:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2v_GENERAL_NAMES@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L25
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L25:
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
.L24:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_OCTET_STRING@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$71, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L27:
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L28
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$75, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L23
.L28:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$78, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L26:
	movq	-72(%rbp), %rax
	jmp	.L18
.L23:
	cmpq	$0, -32(%rbp)
	jne	.L29
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
.L29:
	movl	$0, %eax
.L18:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	i2v_AUTHORITY_KEYID, .-i2v_AUTHORITY_KEYID
	.section	.rodata
.LC3:
	.string	"none"
.LC4:
	.string	"always"
.LC5:
	.string	"name=%s option=%s"
.LC6:
	.string	"issuer"
.LC7:
	.string	"name=%s"
	.text
	.type	v2i_AUTHORITY_KEYID, @function
v2i_AUTHORITY_KEYID:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movb	$0, -17(%rbp)
	movb	$0, -18(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	call	AUTHORITY_KEYID_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L63
	cmpl	$1, -72(%rbp)
	jne	.L33
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L33
	movq	-80(%rbp), %rax
	jmp	.L34
.L33:
	movl	$0, -24(%rbp)
	jmp	.L35
.L44:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L36
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-112(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$120, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L36:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L37
	cmpb	$0, -17(%rbp)
	jne	.L37
	movb	$1, -17(%rbp)
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movb	$2, -17(%rbp)
	jmp	.L39
.L37:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L40
	cmpb	$0, -18(%rbp)
	jne	.L40
	movb	$1, -18(%rbp)
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movb	$2, -18(%rbp)
	jmp	.L39
.L40:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L42
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L42
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L43
.L42:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$138, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	movl	$171, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L43:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$142, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	movl	$172, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L39:
	addl	$1, -24(%rbp)
.L35:
	movl	-24(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L44
	cmpq	$0, -144(%rbp)
	je	.L45
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L45
	movq	-80(%rbp), %rax
	jmp	.L34
.L45:
	cmpq	$0, -144(%rbp)
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L46:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L47
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L47:
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -92(%rbp)
	call	ERR_set_mark@PLT
	movq	-144(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-144(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	movl	%eax, -68(%rbp)
	jmp	.L49
.L48:
	movl	-92(%rbp), %eax
	movl	%eax, -68(%rbp)
.L49:
	call	ERR_pop_to_mark@PLT
	cmpb	$2, -17(%rbp)
	je	.L50
	cmpb	$1, -17(%rbp)
	jne	.L51
	cmpl	$0, -68(%rbp)
	jne	.L51
.L50:
	movq	-88(%rbp), %rax
	movl	$-1, %edx
	movl	$82, %esi
	movq	%rax, %rdi
	call	X509_get_ext_by_NID@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	js	.L52
	movl	-24(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_get_ext@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L52
	cmpl	$0, -92(%rbp)
	je	.L53
	cmpl	$0, -68(%rbp)
	je	.L52
.L53:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_d2i@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	testl	%eax, %eax
	jne	.L52
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	$0, -32(%rbp)
.L52:
	cmpq	$0, -32(%rbp)
	jne	.L54
	cmpl	$0, -92(%rbp)
	je	.L54
	movq	-144(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	$0, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	56(%rax), %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_PUBKEY_set@PLT
	testl	%eax, %eax
	je	.L55
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509_pubkey_hash@PLT
	movq	%rax, -32(%rbp)
.L55:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
.L54:
	cmpb	$2, -17(%rbp)
	jne	.L51
	cmpq	$0, -32(%rbp)
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L51:
	cmpb	$2, -18(%rbp)
	je	.L56
	cmpb	$1, -18(%rbp)
	jne	.L57
	cmpl	$0, -68(%rbp)
	jne	.L57
	cmpq	$0, -32(%rbp)
	jne	.L57
.L56:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L58
	cmpq	$0, -64(%rbp)
	jne	.L57
.L58:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L57:
	cmpq	$0, -40(%rbp)
	je	.L59
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L60
	call	GENERAL_NAME_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L61
.L60:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$208, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L61:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$212, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L32
.L62:
	movq	-56(%rbp), %rax
	movl	$4, (%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L59:
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	jmp	.L34
.L63:
	nop
.L32:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	AUTHORITY_KEYID_free@PLT
	movl	$0, %eax
.L34:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	v2i_AUTHORITY_KEYID, .-v2i_AUTHORITY_KEYID
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"i2v_AUTHORITY_KEYID"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"v2i_AUTHORITY_KEYID"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
