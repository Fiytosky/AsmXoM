	.file	"x_crl.c"
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
	.type	ossl_check_X509_REVOKED_type, @function
ossl_check_X509_REVOKED_type:
.LFB420:
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
.LFE420:
	.size	ossl_check_X509_REVOKED_type, .-ossl_check_X509_REVOKED_type
	.type	ossl_check_const_X509_REVOKED_sk_type, @function
ossl_check_const_X509_REVOKED_sk_type:
.LFB421:
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
.LFE421:
	.size	ossl_check_const_X509_REVOKED_sk_type, .-ossl_check_const_X509_REVOKED_sk_type
	.type	ossl_check_X509_REVOKED_sk_type, @function
ossl_check_X509_REVOKED_sk_type:
.LFB422:
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
.LFE422:
	.size	ossl_check_X509_REVOKED_sk_type, .-ossl_check_X509_REVOKED_sk_type
	.type	ossl_check_X509_REVOKED_compfunc_type, @function
ossl_check_X509_REVOKED_compfunc_type:
.LFB423:
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
.LFE423:
	.size	ossl_check_X509_REVOKED_compfunc_type, .-ossl_check_X509_REVOKED_compfunc_type
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
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
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.type	ossl_check_const_GENERAL_NAME_sk_type, @function
ossl_check_const_GENERAL_NAME_sk_type:
.LFB533:
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
.LFE533:
	.size	ossl_check_const_GENERAL_NAME_sk_type, .-ossl_check_const_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_NAMES_type, @function
ossl_check_GENERAL_NAMES_type:
.LFB538:
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
.LFE538:
	.size	ossl_check_GENERAL_NAMES_type, .-ossl_check_GENERAL_NAMES_type
	.type	ossl_check_GENERAL_NAMES_sk_type, @function
ossl_check_GENERAL_NAMES_sk_type:
.LFB540:
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
.LFE540:
	.size	ossl_check_GENERAL_NAMES_sk_type, .-ossl_check_GENERAL_NAMES_sk_type
	.type	ossl_check_GENERAL_NAMES_freefunc_type, @function
ossl_check_GENERAL_NAMES_freefunc_type:
.LFB543:
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
.LFE543:
	.size	ossl_check_GENERAL_NAMES_freefunc_type, .-ossl_check_GENERAL_NAMES_freefunc_type
	.section	.rodata
.LC0:
	.string	"serialNumber"
.LC1:
	.string	"revocationDate"
.LC2:
	.string	"extensions"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	X509_REVOKED_seq_tt, @object
	.size	X509_REVOKED_seq_tt, 120
X509_REVOKED_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC1
	.quad	ASN1_TIME_it
	.quad	5
	.quad	0
	.quad	32
	.quad	.LC2
	.quad	X509_EXTENSION_it
	.text
	.globl	X509_REVOKED_it
	.type	X509_REVOKED_it, @function
X509_REVOKED_it:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	X509_REVOKED_it, .-X509_REVOKED_it
	.section	.data.rel.local,"aw"
	.align 32
	.type	int_crl_meth, @object
	.size	int_crl_meth, 40
int_crl_meth:
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	def_crl_lookup
	.quad	def_crl_verify
	.align 8
	.type	default_crl_method, @object
	.size	default_crl_method, 8
default_crl_method:
	.quad	int_crl_meth
	.text
	.type	crl_inf_cb, @function
crl_inf_cb:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L26
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L27
.L26:
	movl	$1, %eax
	jmp	.L28
.L27:
	cmpl	$5, -36(%rbp)
	jne	.L29
	leaq	X509_REVOKED_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_REVOKED_compfunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_REVOKED_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_set_cmp_func@PLT
	nop
.L29:
	movl	$1, %eax
.L28:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	crl_inf_cb, .-crl_inf_cb
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	X509_CRL_INFO_aux, @object
	.size	X509_CRL_INFO_aux, 48
X509_CRL_INFO_aux:
	.quad	0
	.long	2
	.long	0
	.long	0
	.zero	4
	.quad	crl_inf_cb
	.long	64
	.zero	4
	.quad	0
	.section	.rodata
.LC3:
	.string	"version"
.LC4:
	.string	"sig_alg"
.LC5:
	.string	"issuer"
.LC6:
	.string	"lastUpdate"
.LC7:
	.string	"nextUpdate"
.LC8:
	.string	"revoked"
	.section	.data.rel.ro
	.align 32
	.type	X509_CRL_INFO_seq_tt, @object
	.size	X509_CRL_INFO_seq_tt, 280
X509_CRL_INFO_seq_tt:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	ASN1_INTEGER_it
	.quad	4096
	.quad	0
	.quad	8
	.quad	.LC4
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC5
	.quad	X509_NAME_it
	.quad	0
	.quad	0
	.quad	32
	.quad	.LC6
	.quad	ASN1_TIME_it
	.quad	1
	.quad	0
	.quad	40
	.quad	.LC7
	.quad	ASN1_TIME_it
	.quad	5
	.quad	0
	.quad	48
	.quad	.LC8
	.quad	X509_REVOKED_it
	.quad	149
	.quad	0
	.quad	56
	.quad	.LC2
	.quad	X509_EXTENSION_it
	.text
	.globl	X509_CRL_INFO_it
	.type	X509_CRL_INFO_it, @function
X509_CRL_INFO_it:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	X509_CRL_INFO_it, .-X509_CRL_INFO_it
	.type	crl_set_issuers, @function
crl_set_issuers:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_REVOKED@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L33
.L47:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_REVOKED_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	leaq	-84(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$771, %esi
	movq	%rax, %rdi
	call	X509_REVOKED_get_ext_d2i@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L34
	movl	-84(%rbp), %eax
	cmpl	$-1, %eax
	je	.L34
	movq	-104(%rbp), %rax
	movl	132(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 132(%rax)
	movl	$1, %eax
	jmp	.L48
.L34:
	cmpq	$0, -56(%rbp)
	je	.L36
	movq	-104(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	call	OPENSSL_sk_new_null@PLT
	movq	-104(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-104(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	movl	$0, %eax
	jmp	.L48
.L37:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L38
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	movl	$0, %eax
	jmp	.L48
.L38:
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
.L36:
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	leaq	-84(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$141, %esi
	movq	%rax, %rdi
	call	X509_REVOKED_get_ext_d2i@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L39
	movl	-84(%rbp), %eax
	cmpl	$-1, %eax
	je	.L39
	movq	-104(%rbp), %rax
	movl	132(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 132(%rax)
	movl	$1, %eax
	jmp	.L48
.L39:
	cmpq	$0, -64(%rbp)
	je	.L40
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_get@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_free@PLT
	jmp	.L41
.L40:
	movq	-48(%rbp), %rax
	movl	$-1, 48(%rax)
.L41:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L42
.L46:
	movl	-84(%rbp), %ebx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_critical@PLT
	testl	%eax, %eax
	je	.L43
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$771, %eax
	je	.L49
	movq	-104(%rbp), %rax
	movl	132(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 132(%rax)
	jmp	.L45
.L49:
	nop
.L43:
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
.L42:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %edx
	movl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L46
.L45:
	addl	$1, -20(%rbp)
.L33:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_REVOKED_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L47
	movl	$1, %eax
.L48:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	crl_set_issuers, .-crl_set_issuers
	.section	.rodata
.LC9:
	.string	"../crypto/x509/x_crl.c"
	.text
	.type	crl_cb, @function
crl_cb:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$15, -68(%rbp)
	je	.L51
	cmpl	$15, -68(%rbp)
	jg	.L52
	cmpl	$5, -68(%rbp)
	je	.L53
	cmpl	$5, -68(%rbp)
	jg	.L52
	cmpl	$4, -68(%rbp)
	je	.L54
	cmpl	$4, -68(%rbp)
	jg	.L52
	cmpl	$1, -68(%rbp)
	je	.L55
	cmpl	$3, -68(%rbp)
	je	.L56
	jmp	.L52
.L54:
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L77
.L57:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	AUTHORITY_KEYID_free@PLT
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	ISSUING_DIST_POINT_free@PLT
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	GENERAL_NAMES_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
.L55:
	movq	-32(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 152(%rax)
	movq	-32(%rbp), %rax
	movl	$32895, 156(%rax)
	movq	default_crl_method(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 168(%rax)
	jmp	.L52
.L53:
	movq	-32(%rbp), %rax
	leaq	184(%rax), %rbx
	call	EVP_sha1@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	X509_CRL_digest@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	orl	$1048576, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 132(%rax)
.L59:
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$770, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext_d2i@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 144(%rdx)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setup_idp
	testl	%eax, %eax
	jne	.L61
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 132(%rax)
	jmp	.L61
.L60:
	movl	-64(%rbp), %eax
	cmpl	$-1, %eax
	je	.L61
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 132(%rax)
.L61:
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$90, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext_d2i@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 136(%rdx)
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L62
	movl	-64(%rbp), %eax
	cmpl	$-1, %eax
	je	.L62
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 132(%rax)
.L62:
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$88, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext_d2i@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 160(%rdx)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jne	.L63
	movl	-64(%rbp), %eax
	cmpl	$-1, %eax
	je	.L63
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 132(%rax)
.L63:
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$140, %esi
	movq	%rax, %rdi
	call	X509_CRL_get_ext_d2i@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 168(%rdx)
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L64
	movl	-64(%rbp), %eax
	cmpl	$-1, %eax
	je	.L64
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 132(%rax)
.L64:
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jne	.L65
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 132(%rax)
.L65:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L66
.L72:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -60(%rbp)
	cmpl	$857, -60(%rbp)
	jne	.L67
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	orb	$16, %ah
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 132(%rax)
.L67:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_critical@PLT
	testl	%eax, %eax
	je	.L68
	cmpl	$770, -60(%rbp)
	je	.L78
	cmpl	$90, -60(%rbp)
	je	.L78
	cmpl	$140, -60(%rbp)
	je	.L78
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 132(%rax)
	jmp	.L71
.L78:
	nop
.L68:
	addl	$1, -20(%rbp)
.L66:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L72
.L71:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	crl_set_issuers
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L77
.L73:
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L77
.L74:
	movq	-32(%rbp), %rax
	movl	132(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 132(%rax)
	jmp	.L52
.L56:
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L77
.L75:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	AUTHORITY_KEYID_free@PLT
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	ISSUING_DIST_POINT_free@PLT
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	GENERAL_NAMES_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-32(%rbp), %rax
	movq	240(%rax), %rax
	leaq	.LC9(%rip), %rcx
	movl	$273, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L52
.L51:
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	232(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_crl_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L77
.L79:
	nop
.L52:
	movl	$1, %eax
.L77:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	crl_cb, .-crl_cb
	.type	setup_idp, @function
setup_idp:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	152(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 152(%rax)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L81
	addl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	152(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 152(%rax)
.L81:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jle	.L82
	addl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	152(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 152(%rax)
.L82:
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jle	.L83
	addl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	152(%rax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 152(%rax)
.L83:
	cmpl	$1, -4(%rbp)
	jle	.L84
	movq	-24(%rbp), %rax
	movl	152(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 152(%rax)
.L84:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jle	.L85
	movq	-24(%rbp), %rax
	movl	152(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 152(%rax)
.L85:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-24(%rbp), %rax
	movl	152(%rax), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 152(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L87
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 156(%rax)
.L87:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L88
	movq	-24(%rbp), %rax
	movl	156(%rax), %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 156(%rax)
.L88:
	movq	-24(%rbp), %rax
	movl	156(%rax), %eax
	andl	$32895, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 156(%rax)
.L86:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DIST_POINT_set_dpname@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	setup_idp, .-setup_idp
	.section	.data.rel.ro.local
	.align 32
	.type	X509_CRL_aux, @object
	.size	X509_CRL_aux, 48
X509_CRL_aux:
	.quad	0
	.long	1
	.long	128
	.long	224
	.zero	4
	.quad	crl_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC10:
	.string	"crl"
.LC11:
	.string	"signature"
	.section	.data.rel.ro
	.align 32
	.type	X509_CRL_seq_tt, @object
	.size	X509_CRL_seq_tt, 120
X509_CRL_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	X509_CRL_INFO_it
	.quad	4096
	.quad	0
	.quad	88
	.quad	.LC4
	.quad	X509_ALGOR_it
	.quad	4096
	.quad	0
	.quad	104
	.quad	.LC11
	.quad	ASN1_BIT_STRING_it
	.text
	.globl	X509_CRL_it
	.type	X509_CRL_it, @function
X509_CRL_it:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	X509_CRL_it, .-X509_CRL_it
	.globl	d2i_X509_REVOKED
	.type	d2i_X509_REVOKED, @function
d2i_X509_REVOKED:
.LFB710:
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
	call	X509_REVOKED_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	d2i_X509_REVOKED, .-d2i_X509_REVOKED
	.globl	i2d_X509_REVOKED
	.type	i2d_X509_REVOKED, @function
i2d_X509_REVOKED:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_REVOKED_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	i2d_X509_REVOKED, .-i2d_X509_REVOKED
	.globl	X509_REVOKED_new
	.type	X509_REVOKED_new, @function
X509_REVOKED_new:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_REVOKED_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	X509_REVOKED_new, .-X509_REVOKED_new
	.globl	X509_REVOKED_free
	.type	X509_REVOKED_free, @function
X509_REVOKED_free:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_REVOKED_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	X509_REVOKED_free, .-X509_REVOKED_free
	.globl	X509_REVOKED_dup
	.type	X509_REVOKED_dup, @function
X509_REVOKED_dup:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_REVOKED_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	X509_REVOKED_dup, .-X509_REVOKED_dup
	.globl	d2i_X509_CRL_INFO
	.type	d2i_X509_CRL_INFO, @function
d2i_X509_CRL_INFO:
.LFB715:
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
	call	X509_CRL_INFO_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	d2i_X509_CRL_INFO, .-d2i_X509_CRL_INFO
	.globl	i2d_X509_CRL_INFO
	.type	i2d_X509_CRL_INFO, @function
i2d_X509_CRL_INFO:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_CRL_INFO_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	i2d_X509_CRL_INFO, .-i2d_X509_CRL_INFO
	.globl	X509_CRL_INFO_new
	.type	X509_CRL_INFO_new, @function
X509_CRL_INFO_new:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_CRL_INFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	X509_CRL_INFO_new, .-X509_CRL_INFO_new
	.globl	X509_CRL_INFO_free
	.type	X509_CRL_INFO_free, @function
X509_CRL_INFO_free:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_CRL_INFO_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	X509_CRL_INFO_free, .-X509_CRL_INFO_free
	.globl	d2i_X509_CRL
	.type	d2i_X509_CRL, @function
d2i_X509_CRL:
.LFB719:
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
	call	X509_CRL_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	d2i_X509_CRL, .-d2i_X509_CRL
	.globl	i2d_X509_CRL
	.type	i2d_X509_CRL, @function
i2d_X509_CRL:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_CRL_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	i2d_X509_CRL, .-i2d_X509_CRL
	.globl	X509_CRL_new
	.type	X509_CRL_new, @function
X509_CRL_new:
.LFB721:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_CRL_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	X509_CRL_new, .-X509_CRL_new
	.globl	X509_CRL_free
	.type	X509_CRL_free, @function
X509_CRL_free:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_CRL_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	X509_CRL_free, .-X509_CRL_free
	.globl	X509_CRL_dup
	.type	X509_CRL_dup, @function
X509_CRL_dup:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_CRL_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	X509_CRL_dup, .-X509_CRL_dup
	.type	X509_REVOKED_cmp, @function
X509_REVOKED_cmp:
.LFB724:
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
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	X509_REVOKED_cmp, .-X509_REVOKED_cmp
	.globl	X509_CRL_new_ex
	.type	X509_CRL_new_ex, @function
X509_CRL_new_ex:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	call	X509_CRL_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_crl_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L120
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	$0, -8(%rbp)
.L120:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	X509_CRL_new_ex, .-X509_CRL_new_ex
	.globl	X509_CRL_add0_revoked
	.type	X509_CRL_add0_revoked, @function
X509_CRL_add0_revoked:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L123
	leaq	X509_REVOKED_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_REVOKED_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 48(%rdx)
.L123:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_REVOKED_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_REVOKED_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L125
.L124:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$369, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L126
.L125:
	movq	-24(%rbp), %rax
	movl	$1, 80(%rax)
	movl	$1, %eax
.L126:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	X509_CRL_add0_revoked, .-X509_CRL_add0_revoked
	.globl	X509_CRL_verify
	.type	X509_CRL_verify, @function
X509_CRL_verify:
.LFB727:
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
	movq	208(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L129
.L128:
	movl	$0, %eax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	X509_CRL_verify, .-X509_CRL_verify
	.globl	X509_CRL_get0_by_serial
	.type	X509_CRL_get0_by_serial, @function
X509_CRL_get0_by_serial:
.LFB728:
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
	movq	208(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	24(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r8
	jmp	.L132
.L131:
	movl	$0, %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	X509_CRL_get0_by_serial, .-X509_CRL_get0_by_serial
	.globl	X509_CRL_get0_by_cert
	.type	X509_CRL_get0_by_cert, @function
X509_CRL_get0_by_cert:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %rcx
	movq	%rax, %rdi
	call	*%rbx
	jmp	.L135
.L134:
	movl	$0, %eax
.L135:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	X509_CRL_get0_by_cert, .-X509_CRL_get0_by_cert
	.type	def_crl_verify, @function
def_crl_verify:
.LFB730:
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
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	240(%rax), %r15
	movq	-56(%rbp), %rax
	movq	232(%rax), %r14
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	leaq	104(%rax), %r13
	movq	-56(%rbp), %rax
	leaq	88(%rax), %r12
	call	X509_CRL_INFO_it@PLT
	movq	-64(%rbp), %rdx
	pushq	%r15
	pushq	%r14
	movq	%rdx, %r9
	movl	$0, %r8d
	movq	%rbx, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	ASN1_item_verify_ex@PLT
	addq	$16, %rsp
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
.LFE730:
	.size	def_crl_verify, .-def_crl_verify
	.type	crl_revoked_issuer_match, @function
crl_revoked_issuer_match:
.LFB731:
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
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L139
	cmpq	$0, -32(%rbp)
	jne	.L140
	movl	$1, %eax
	jmp	.L141
.L140:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L142
	movl	$1, %eax
	jmp	.L141
.L142:
	movl	$0, %eax
	jmp	.L141
.L139:
	cmpq	$0, -32(%rbp)
	jne	.L143
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, -32(%rbp)
.L143:
	movl	$0, -4(%rbp)
	jmp	.L144
.L147:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L148
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L146
	movl	$1, %eax
	jmp	.L141
.L148:
	nop
.L146:
	addl	$1, -4(%rbp)
.L144:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L147
	movl	$0, %eax
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	crl_revoked_issuer_match, .-crl_revoked_issuer_match
	.type	def_crl_lookup, @function
def_crl_lookup:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L150
	movl	$0, %eax
	jmp	.L161
.L150:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_REVOKED_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_is_sorted@PLT
	testl	%eax, %eax
	jne	.L152
	movq	-104(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L153
	movl	$0, %eax
	jmp	.L161
.L153:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_REVOKED_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	movq	-104(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L152:
	movq	-120(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_REVOKED_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_REVOKED_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L154
	movl	$0, %eax
	jmp	.L161
.L154:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_REVOKED_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -24(%rbp)
	jmp	.L155
.L160:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_REVOKED_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	je	.L156
	movl	$0, %eax
	jmp	.L161
.L156:
	movq	-32(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	crl_revoked_issuer_match
	testl	%eax, %eax
	je	.L157
	cmpq	$0, -112(%rbp)
	je	.L158
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L158:
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$8, %eax
	jne	.L159
	movl	$2, %eax
	jmp	.L161
.L159:
	movl	$1, %eax
	jmp	.L161
.L157:
	addl	$1, -20(%rbp)
.L155:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L160
	movl	$0, %eax
.L161:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	def_crl_lookup, .-def_crl_lookup
	.globl	X509_CRL_set_default_method
	.type	X509_CRL_set_default_method, @function
X509_CRL_set_default_method:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L163
	leaq	int_crl_meth(%rip), %rax
	movq	%rax, default_crl_method(%rip)
	jmp	.L165
.L163:
	movq	-8(%rbp), %rax
	movq	%rax, default_crl_method(%rip)
.L165:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	X509_CRL_set_default_method, .-X509_CRL_set_default_method
	.globl	X509_CRL_METHOD_new
	.type	X509_CRL_METHOD_new, @function
X509_CRL_METHOD_new:
.LFB734:
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
	leaq	.LC9(%rip), %rax
	movl	$491, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L167
	movl	$0, %eax
	jmp	.L168
.L167:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	X509_CRL_METHOD_new, .-X509_CRL_METHOD_new
	.globl	X509_CRL_METHOD_free
	.type	X509_CRL_METHOD_free, @function
X509_CRL_METHOD_free:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L173
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L173
	leaq	.LC9(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$507, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L169
.L173:
	nop
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	X509_CRL_METHOD_free, .-X509_CRL_METHOD_free
	.globl	X509_CRL_set_meth_data
	.type	X509_CRL_set_meth_data, @function
X509_CRL_set_meth_data:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 216(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	X509_CRL_set_meth_data, .-X509_CRL_set_meth_data
	.globl	X509_CRL_get_meth_data
	.type	X509_CRL_get_meth_data, @function
X509_CRL_get_meth_data:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	X509_CRL_get_meth_data, .-X509_CRL_get_meth_data
	.globl	ossl_x509_crl_set0_libctx
	.type	ossl_x509_crl_set0_libctx, @function
ossl_x509_crl_set0_libctx:
.LFB738:
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
	cmpq	$0, -8(%rbp)
	je	.L178
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 232(%rax)
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	leaq	.LC9(%rip), %rcx
	movl	$525, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 240(%rax)
	cmpq	$0, -24(%rbp)
	je	.L178
	leaq	.LC9(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$528, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 240(%rdx)
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	jne	.L178
	movl	$0, %eax
	jmp	.L179
.L178:
	movl	$1, %eax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ossl_x509_crl_set0_libctx, .-ossl_x509_crl_set0_libctx
	.section	.rodata
.LC12:
	.string	"X509_REVOKED"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_REVOKED_seq_tt
	.quad	3
	.quad	0
	.quad	56
	.quad	.LC12
	.section	.rodata
.LC13:
	.string	"X509_CRL_INFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_CRL_INFO_seq_tt
	.quad	7
	.quad	X509_CRL_INFO_aux
	.quad	88
	.quad	.LC13
	.section	.rodata
.LC14:
	.string	"X509_CRL"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_CRL_seq_tt
	.quad	3
	.quad	X509_CRL_aux
	.quad	248
	.quad	.LC14
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"X509_CRL_add0_revoked"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
