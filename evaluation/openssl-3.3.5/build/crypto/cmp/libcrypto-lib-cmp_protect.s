	.file	"cmp_protect.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/cmp/cmp_protect.c"
.LC1:
	.string	"UNDEF"
	.text
	.globl	ossl_cmp_calc_protection
	.type	ossl_cmp_calc_protection, @function
ossl_cmp_calc_protection:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$224, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	cmpq	$0, -248(%rbp)
	je	.L10
	cmpq	$0, -256(%rbp)
	je	.L10
	movl	$1, %eax
	jmp	.L11
.L10:
	movl	$0, %eax
.L11:
	cltq
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
	jmp	.L30
.L12:
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-256(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L14:
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rsi
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$782, %eax
	jne	.L15
	movq	$0, -128(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -152(%rbp)
	movq	-248(%rbp), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$166, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L16:
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L18:
	leaq	-128(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_OSSL_CMP_PROTECTEDPART@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	js	.L19
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	jne	.L20
.L19:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L21
.L20:
	movl	-68(%rbp), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	leaq	-152(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_OSSL_CRMF_PBMPARAMETER@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L22
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L21
.L22:
	movq	-248(%rbp), %rax
	movq	232(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdi
	movq	-248(%rbp), %rax
	movq	232(%rax), %rax
	movq	8(%rax), %r9
	movq	-128(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %r10
	movq	-48(%rbp), %rdx
	subq	$8, %rsp
	leaq	-136(%rbp), %r8
	pushq	%r8
	leaq	-144(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	OSSL_CRMF_pbm_new@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L31
	call	ASN1_BIT_STRING_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L32
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_set_bits_left@PLT
	movq	-136(%rbp), %rax
	movl	%eax, %edx
	movq	-144(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_set@PLT
	testl	%eax, %eax
	jne	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movq	$0, -40(%rbp)
	jmp	.L21
.L31:
	nop
	jmp	.L21
.L32:
	nop
	jmp	.L21
.L33:
	nop
.L21:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_PBMPARAMETER_free@PLT
	movq	-144(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$105, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-128(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$106, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	jmp	.L30
.L15:
	movq	-248(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	-248(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.L25
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L25:
	movq	-248(%rbp), %rax
	movq	216(%rax), %rax
	leaq	-240(%rbp), %rcx
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_default_digest_name@PLT
	testl	%eax, %eax
	jle	.L27
	leaq	.LC1(%rip), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L27
	movq	$0, -56(%rbp)
.L27:
	call	ASN1_BIT_STRING_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L30
.L28:
	movq	-248(%rbp), %rax
	movq	8(%rax), %r14
	movq	-248(%rbp), %rax
	movq	(%rax), %r13
	movq	-248(%rbp), %rax
	movq	216(%rax), %r12
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rbx
	call	OSSL_CMP_PROTECTEDPART_it@PLT
	movq	%rax, %rdi
	leaq	-96(%rbp), %rdx
	movq	-40(%rbp), %rax
	pushq	%r14
	pushq	%r13
	pushq	-56(%rbp)
	pushq	%r12
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movq	%rbx, %rsi
	call	ASN1_item_sign_ex@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L29
	movq	-40(%rbp), %rax
	jmp	.L30
.L29:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movl	$0, %eax
.L30:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	ossl_cmp_calc_protection, .-ossl_cmp_calc_protection
	.section	.rodata
.LC2:
	.string	"DEBUG"
	.align 8
.LC3:
	.string	"trying to build chain for own CMP signer cert"
.LC4:
	.string	"%s"
	.align 8
.LC5:
	.string	"success building chain for own CMP signer cert"
.LC6:
	.string	"WARN"
	.align 8
.LC7:
	.string	"could not build chain for own CMP signer cert"
	.align 8
.LC8:
	.string	"fallback: adding just own CMP signer cert"
	.text
	.globl	ossl_cmp_msg_add_extraCerts
	.type	ossl_cmp_msg_add_extraCerts, @function
ossl_cmp_msg_add_extraCerts:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L35
	cmpq	$0, -32(%rbp)
	je	.L35
	movl	$1, %eax
	jmp	.L36
.L35:
	movl	$0, %eax
.L36:
	cltq
	testq	%rax, %rax
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-24(%rbp), %rax
	movl	192(%rax), %eax
	testl	%eax, %eax
	jne	.L39
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movl	$15, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	pushq	%rsi
	leaq	.LC4(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$147, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	176(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_build_chain@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 208(%rdx)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L41
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	pushq	%rsi
	leaq	.LC4(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$152, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L40
.L41:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_print_errors@PLT
	leaq	.LC6(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	pushq	%rsi
	leaq	.LC4(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$157, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L40:
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	24(%rdx), %rcx
	movl	-4(%rbp), %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_x509_add_certs_new@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L38
.L42:
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	24(%rdx), %rcx
	movl	-4(%rbp), %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_x509_add_cert_new@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L38
.L43:
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	pushq	%rsi
	leaq	.LC4(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$168, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L39:
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	24(%rdx), %rcx
	movl	$5, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_x509_add_certs_new@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L38
.L44:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
.L45:
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	ossl_cmp_msg_add_extraCerts, .-ossl_cmp_msg_add_extraCerts
	.type	pbmac_algor, @function
pbmac_algor:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L47
	movl	$0, %eax
	jmp	.L55
.L47:
	movq	-72(%rbp), %rax
	movl	260(%rax), %r12d
	movq	-72(%rbp), %rax
	movl	256(%rax), %eax
	movslq	%eax, %rbx
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	240(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	%r12d, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	OSSL_CRMF_pbmp_new@PLT
	movq	%rax, -32(%rbp)
	call	ASN1_STRING_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L56
	cmpq	$0, -40(%rbp)
	je	.L56
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_OSSL_CRMF_PBMPARAMETER@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L57
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L58
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$16, %esi
	movl	$782, %edi
	call	ossl_X509_ALGOR_from_nid@PLT
	movq	%rax, -24(%rbp)
	jmp	.L51
.L56:
	nop
	jmp	.L51
.L57:
	nop
	jmp	.L51
.L58:
	nop
.L51:
	cmpq	$0, -24(%rbp)
	jne	.L54
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
.L54:
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$215, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_PBMPARAMETER_free@PLT
	movq	-24(%rbp), %rax
.L55:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	pbmac_algor, .-pbmac_algor
	.type	set_senderKID, @function
set_senderKID:
.LFB773:
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
	cmpq	$0, -24(%rbp)
	jne	.L60
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -24(%rbp)
.L60:
	cmpq	$0, -24(%rbp)
	je	.L61
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set1_senderKID@PLT
	testl	%eax, %eax
	je	.L62
.L61:
	movl	$1, %eax
	jmp	.L64
.L62:
	movl	$0, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	set_senderKID, .-set_senderKID
	.globl	ossl_cmp_msg_protect
	.type	ossl_cmp_msg_protect, @function
ossl_cmp_msg_protect:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L66
	cmpq	$0, -32(%rbp)
	je	.L66
	movl	$1, %eax
	jmp	.L67
.L66:
	movl	$0, %eax
.L67:
	cltq
	testq	%rax, %rax
	jne	.L68
	movl	$0, %eax
	jmp	.L69
.L68:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	192(%rax), %eax
	testl	%eax, %eax
	je	.L70
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_senderKID
	testl	%eax, %eax
	jne	.L71
	jmp	.L72
.L70:
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	pbmac_algor
	movq	%rax, 32(%rbx)
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.L83
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_senderKID
	testl	%eax, %eax
	jne	.L71
	jmp	.L72
.L73:
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L76
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$263, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L76:
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	call	X509_ALGOR_new@PLT
	movq	%rax, 32(%rbx)
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.L84
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, %rdi
	call	X509_get0_subject_key_id@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_senderKID
	testl	%eax, %eax
	jne	.L71
	jmp	.L72
.L75:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$278, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L71:
	movq	-24(%rbp), %rax
	movl	192(%rax), %eax
	testl	%eax, %eax
	jne	.L79
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_calc_protection@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L85
.L79:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_add_extraCerts@PLT
	testl	%eax, %eax
	je	.L86
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_general_name_is_NULL_DN@PLT
	testl	%eax, %eax
	je	.L81
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L82
.L81:
	movl	$1, %eax
	jmp	.L69
.L82:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$304, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L83:
	nop
	jmp	.L72
.L84:
	nop
	jmp	.L72
.L85:
	nop
	jmp	.L72
.L86:
	nop
.L72:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$307, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L69:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	ossl_cmp_msg_protect, .-ossl_cmp_msg_protect
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"ossl_cmp_calc_protection"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 28
__func__.1:
	.string	"ossl_cmp_msg_add_extraCerts"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"ossl_cmp_msg_protect"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
