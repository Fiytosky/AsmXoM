	.file	"dsa_kmgmt.c"
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
.LC0:
	.string	"default"
.LC1:
	.string	"fips186_4"
.LC2:
	.string	"fips186_2"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	dsatype2id, @object
	.size	dsatype2id, 48
dsatype2id:
	.quad	.LC0
	.long	2
	.zero	4
	.quad	.LC1
	.long	0
	.zero	4
	.quad	.LC2
	.long	1
	.zero	4
	.text
	.type	dsa_gen_type_name2id, @function
dsa_gen_type_name2id:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L6
.L9:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dsatype2id(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L7
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+dsatype2id(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L8
.L7:
	addq	$1, -8(%rbp)
.L6:
	cmpq	$2, -8(%rbp)
	jbe	.L9
	movl	$-1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	dsa_gen_type_name2id, .-dsa_gen_type_name2id
	.section	.rodata
.LC3:
	.string	"priv"
.LC4:
	.string	"pub"
	.text
	.type	dsa_key_todata, @function
dsa_key_todata:
.LFB403:
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
	movl	%ecx, -44(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L15
.L11:
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_get0_key@PLT
	cmpl	$0, -44(%rbp)
	je	.L13
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L13
	movq	-8(%rbp), %rdx
	leaq	.LC3(%rip), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L15
.L13:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L14
	movq	-16(%rbp), %rdx
	leaq	.LC4(%rip), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	dsa_key_todata, .-dsa_key_todata
	.type	dsa_newdata, @function
dsa_newdata:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdi
	call	ossl_dsa_new@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	dsa_newdata, .-dsa_newdata
	.type	dsa_freedata, @function
dsa_freedata:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	dsa_freedata, .-dsa_freedata
	.type	dsa_has, @function
dsa_has:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L21
	cmpq	$0, -16(%rbp)
	jne	.L22
.L21:
	movl	$0, %eax
	jmp	.L23
.L22:
	movl	-28(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L24
	movl	$1, %eax
	jmp	.L23
.L24:
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L25
	cmpl	$0, -4(%rbp)
	je	.L26
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_pub_key@PLT
	testq	%rax, %rax
	je	.L26
	movl	$1, %eax
	jmp	.L27
.L26:
	movl	$0, %eax
.L27:
	movl	%eax, -4(%rbp)
.L25:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L28
	cmpl	$0, -4(%rbp)
	je	.L29
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_priv_key@PLT
	testq	%rax, %rax
	je	.L29
	movl	$1, %eax
	jmp	.L30
.L29:
	movl	$0, %eax
.L30:
	movl	%eax, -4(%rbp)
.L28:
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L31
	cmpl	$0, -4(%rbp)
	je	.L32
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_p@PLT
	testq	%rax, %rax
	je	.L32
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_g@PLT
	testq	%rax, %rax
	je	.L32
	movl	$1, %eax
	jmp	.L33
.L32:
	movl	$0, %eax
.L33:
	movl	%eax, -4(%rbp)
.L31:
	movl	-4(%rbp), %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	dsa_has, .-dsa_has
	.type	dsa_match, @function
dsa_match:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	movl	-100(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L37
	movl	$0, -8(%rbp)
	movl	-100(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L38
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_pub_key@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_pub_key@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L38
	cmpq	$0, -40(%rbp)
	je	.L38
	cmpl	$0, -4(%rbp)
	je	.L39
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$1, %eax
	jmp	.L40
.L39:
	movl	$0, %eax
.L40:
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
.L38:
	cmpl	$0, -8(%rbp)
	jne	.L41
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_priv_key@PLT
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_priv_key@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L41
	cmpq	$0, -56(%rbp)
	je	.L41
	cmpl	$0, -4(%rbp)
	je	.L42
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$1, %eax
	jmp	.L43
.L42:
	movl	$0, %eax
.L43:
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
.L41:
	cmpl	$0, -4(%rbp)
	je	.L44
	cmpl	$0, -8(%rbp)
	je	.L44
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	movl	%eax, -4(%rbp)
.L37:
	movl	-100(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L46
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dsa_get0_params@PLT
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dsa_get0_params@PLT
	movq	%rax, -72(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L47
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_cmp@PLT
	testl	%eax, %eax
	je	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	movl	%eax, -4(%rbp)
.L46:
	movl	-4(%rbp), %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	dsa_match, .-dsa_match
	.type	dsa_import, @function
dsa_import:
.LFB408:
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
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L50
	cmpq	$0, -16(%rbp)
	jne	.L51
.L50:
	movl	$0, %eax
	jmp	.L52
.L51:
	movl	-44(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L52
.L53:
	cmpl	$0, -4(%rbp)
	je	.L54
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_dsa_ffc_params_fromdata@PLT
	testl	%eax, %eax
	je	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movl	$0, %eax
.L55:
	movl	%eax, -4(%rbp)
	movl	-44(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L56
	movl	-44(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L57
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dsa_key_fromdata@PLT
	testl	%eax, %eax
	je	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
	movl	$0, %eax
.L58:
	movl	%eax, -4(%rbp)
.L56:
	movl	-4(%rbp), %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	dsa_import, .-dsa_import
	.type	dsa_export, @function
dsa_export:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L60
	cmpq	$0, -16(%rbp)
	jne	.L61
.L60:
	movl	$0, %eax
	jmp	.L62
.L61:
	movl	-60(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L62
.L63:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L62
.L64:
	movl	-60(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L65
	cmpl	$0, -4(%rbp)
	je	.L66
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dsa_get0_params@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_ffc_params_todata@PLT
	testl	%eax, %eax
	je	.L66
	movl	$1, %eax
	jmp	.L67
.L66:
	movl	$0, %eax
.L67:
	movl	%eax, -4(%rbp)
.L65:
	movl	-60(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L68
	movl	-60(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L69
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	dsa_key_todata
	testl	%eax, %eax
	je	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	movl	%eax, -4(%rbp)
.L68:
	cmpl	$0, -4(%rbp)
	je	.L71
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L72
.L71:
	movl	$0, -4(%rbp)
	jmp	.L73
.L72:
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
.L73:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-4(%rbp), %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	dsa_export, .-dsa_export
	.section	.rodata
.LC5:
	.string	"p"
.LC6:
	.string	"q"
.LC7:
	.string	"g"
.LC8:
	.string	"j"
.LC9:
	.string	"gindex"
.LC10:
	.string	"pcounter"
.LC11:
	.string	"hindex"
.LC12:
	.string	"seed"
	.section	.data.rel.ro.local
	.align 32
	.type	dsa_all_types, @object
	.size	dsa_all_types, 440
dsa_all_types:
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC9
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC10
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC11
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	2
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
	.type	dsa_parameter_types, @object
	.size	dsa_parameter_types, 360
dsa_parameter_types:
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC9
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC10
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC11
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	5
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
	.type	dsa_key_types, @object
	.size	dsa_key_types, 120
dsa_key_types:
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	2
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
	.section	.data.rel.local,"aw"
	.align 32
	.type	dsa_types, @object
	.size	dsa_types, 32
dsa_types:
	.quad	0
	.quad	dsa_parameter_types
	.quad	dsa_key_types
	.quad	dsa_all_types
	.text
	.type	dsa_imexport_types, @function
dsa_imexport_types:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	-20(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L75
	addl	$1, -4(%rbp)
.L75:
	movl	-20(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L76
	addl	$2, -4(%rbp)
.L76:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dsa_types(%rip), %rax
	movq	(%rdx,%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	dsa_imexport_types, .-dsa_imexport_types
	.type	dsa_import_types, @function
dsa_import_types:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	dsa_imexport_types
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	dsa_import_types, .-dsa_import_types
	.type	dsa_export_types, @function
dsa_export_types:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	dsa_imexport_types
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	dsa_export_types, .-dsa_export_types
	.section	.rodata
.LC13:
	.string	"bits"
.LC14:
	.string	"security-bits"
.LC15:
	.string	"max-size"
.LC16:
	.string	"default-digest"
.LC17:
	.string	"SHA256"
	.text
	.type	dsa_get_params, @function
dsa_get_params:
.LFB413:
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
	leaq	.LC13(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L83
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_bits@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L85
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_security_bits@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L84
.L85:
	leaq	.LC15(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L86
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_size@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L86
	movl	$0, %eax
	jmp	.L84
.L86:
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L87
	leaq	.LC17(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L84
.L87:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dsa_get0_params@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	ossl_ffc_params_todata@PLT
	testl	%eax, %eax
	je	.L88
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	dsa_key_todata
	testl	%eax, %eax
	je	.L88
	movl	$1, %eax
	jmp	.L84
.L88:
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	dsa_get_params, .-dsa_get_params
	.section	.data.rel.ro.local
	.align 32
	.type	dsa_params, @object
	.size	dsa_params, 600
dsa_params:
	.quad	.LC13
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC14
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC15
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC16
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC9
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC10
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC11
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	2
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
	.text
	.type	dsa_gettable_params, @function
dsa_gettable_params:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	dsa_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	dsa_gettable_params, .-dsa_gettable_params
	.type	dsa_validate_domparams, @function
dsa_validate_domparams:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_dsa_check_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	dsa_validate_domparams, .-dsa_validate_domparams
	.type	dsa_validate_public, @function
dsa_validate_public:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_get0_key@PLT
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L95
	movl	$0, %eax
	jmp	.L97
.L95:
	movq	-16(%rbp), %rcx
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dsa_check_pub_key@PLT
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	dsa_validate_public, .-dsa_validate_public
	.type	dsa_validate_private, @function
dsa_validate_private:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	DSA_get0_key@PLT
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L99
	movl	$0, %eax
	jmp	.L101
.L99:
	movq	-16(%rbp), %rcx
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dsa_check_priv_key@PLT
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	dsa_validate_private, .-dsa_validate_private
	.type	dsa_validate, @function
dsa_validate:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L103
	movl	$0, %eax
	jmp	.L104
.L103:
	movl	-28(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L105
	movl	$1, %eax
	jmp	.L104
.L105:
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L106
	cmpl	$0, -4(%rbp)
	je	.L107
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dsa_validate_domparams
	testl	%eax, %eax
	je	.L107
	movl	$1, %eax
	jmp	.L108
.L107:
	movl	$0, %eax
.L108:
	movl	%eax, -4(%rbp)
.L106:
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L109
	cmpl	$0, -4(%rbp)
	je	.L110
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_validate_public
	testl	%eax, %eax
	je	.L110
	movl	$1, %eax
	jmp	.L111
.L110:
	movl	$0, %eax
.L111:
	movl	%eax, -4(%rbp)
.L109:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L112
	cmpl	$0, -4(%rbp)
	je	.L113
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_validate_private
	testl	%eax, %eax
	je	.L113
	movl	$1, %eax
	jmp	.L114
.L113:
	movl	$0, %eax
.L114:
	movl	%eax, -4(%rbp)
.L112:
	movl	-28(%rbp), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.L115
	cmpl	$0, -4(%rbp)
	je	.L116
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dsa_check_pairwise@PLT
	testl	%eax, %eax
	je	.L116
	movl	$1, %eax
	jmp	.L117
.L116:
	movl	$0, %eax
.L117:
	movl	%eax, -4(%rbp)
.L115:
	movl	-4(%rbp), %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	dsa_validate, .-dsa_validate
	.section	.rodata
	.align 8
.LC18:
	.string	"../providers/implementations/keymgmt/dsa_kmgmt.c"
	.text
	.type	dsa_gen_init, @function
dsa_gen_init:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L119
	movl	-28(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L120
.L119:
	movl	$0, %eax
	jmp	.L121
.L120:
	leaq	.LC18(%rip), %rax
	movl	$414, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L122
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$2048, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$224, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 60(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 68(%rax)
.L122:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dsa_gen_set_params
	testl	%eax, %eax
	jne	.L123
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dsa_gen_cleanup
	movq	$0, -8(%rbp)
.L123:
	movq	-8(%rbp), %rax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	dsa_gen_init, .-dsa_gen_init
	.type	dsa_gen_set_template, @function
dsa_gen_set_template:
.LFB420:
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
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L125
	cmpq	$0, -8(%rbp)
	je	.L125
	cmpq	$0, -16(%rbp)
	jne	.L126
.L125:
	movl	$0, %eax
	jmp	.L127
.L126:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dsa_get0_params@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movl	$1, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	dsa_gen_set_template, .-dsa_gen_set_template
	.type	dsa_set_gen_seed, @function
dsa_set_gen_seed:
.LFB421:
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
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movl	$449, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	cmpq	$0, -16(%rbp)
	je	.L129
	cmpq	$0, -24(%rbp)
	je	.L129
	leaq	.LC18(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$453, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L130
	movl	$0, %eax
	jmp	.L131
.L130:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L129:
	movl	$1, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	dsa_set_gen_seed, .-dsa_set_gen_seed
	.section	.rodata
.LC19:
	.string	"type"
.LC20:
	.string	"pbits"
.LC21:
	.string	"qbits"
.LC22:
	.string	"digest"
.LC23:
	.string	"properties"
	.text
	.type	dsa_gen_set_params, @function
dsa_gen_set_params:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-1, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L133
	movl	$0, %eax
	jmp	.L134
.L133:
	cmpq	$0, -48(%rbp)
	jne	.L135
	movl	$1, %eax
	jmp	.L134
.L135:
	leaq	.LC19(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L136
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L137
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	dsa_gen_type_name2id
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L138
.L137:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movl	$477, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L134
.L138:
	cmpl	$-1, -12(%rbp)
	je	.L136
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 60(%rax)
.L136:
	leaq	.LC9(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L139
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L139
	movl	$0, %eax
	jmp	.L134
.L139:
	leaq	.LC10(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L140
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L140
	movl	$0, %eax
	jmp	.L134
.L140:
	leaq	.LC11(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L141
	movq	-8(%rbp), %rax
	leaq	68(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L141
	movl	$0, %eax
	jmp	.L134
.L141:
	leaq	.LC12(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L142
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L143
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dsa_set_gen_seed
	testl	%eax, %eax
	jne	.L142
.L143:
	movl	$0, %eax
	jmp	.L134
.L142:
	leaq	.LC20(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L144
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L144
	movl	$0, %eax
	jmp	.L134
.L144:
	leaq	.LC21(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L145
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L145
	movl	$0, %eax
	jmp	.L134
.L145:
	leaq	.LC22(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L146
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L147
	movl	$0, %eax
	jmp	.L134
.L147:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC18(%rip), %rcx
	movl	$516, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC18(%rip), %rcx
	movl	$517, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L146
	movl	$0, %eax
	jmp	.L134
.L146:
	leaq	.LC23(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L148
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L149
	movl	$0, %eax
	jmp	.L134
.L149:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC18(%rip), %rcx
	movl	$525, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC18(%rip), %rcx
	movl	$526, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L148
	movl	$0, %eax
	jmp	.L134
.L148:
	movl	$1, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	dsa_gen_set_params, .-dsa_gen_set_params
	.type	dsa_gen_settable_params, @function
dsa_gen_settable_params:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	settable.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	dsa_gen_settable_params, .-dsa_gen_settable_params
	.section	.rodata
.LC24:
	.string	"potential"
.LC25:
	.string	"iteration"
	.text
	.type	dsa_gencb, @function
dsa_gencb:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, -132(%rbp)
	movl	%esi, -136(%rbp)
	movq	%rdx, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_get_arg@PLT
	movq	%rax, -8(%rbp)
	leaq	-128(%rbp), %rdx
	movl	$0, %eax
	movl	$15, %ecx
	movq	%rdx, %rdi
	rep stosq
	leaq	-192(%rbp), %rax
	leaq	-132(%rbp), %rdx
	leaq	.LC24(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-192(%rbp), %rax
	leaq	-136(%rbp), %rdx
	leaq	.LC25(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	dsa_gencb, .-dsa_gencb
	.section	.rodata
	.align 8
.LC26:
	.string	"gen_type set to unsupported value %d"
	.text
	.type	dsa_gen, @function
dsa_gen:
.LFB425:
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
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L155
	cmpq	$0, -32(%rbp)
	jne	.L156
.L155:
	movl	$0, %eax
	jmp	.L157
.L156:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_dsa_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L158
	movl	$0, %eax
	jmp	.L157
.L158:
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$2, %eax
	jne	.L159
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$2047, %rax
	setbe	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 60(%rax)
.L159:
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	js	.L160
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$2, %eax
	jg	.L160
	movl	$1, %eax
	jmp	.L161
.L160:
	movl	$0, %eax
.L161:
	cltq
	testq	%rax, %rax
	jne	.L162
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movl	$588, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	leaq	.LC26(%rip), %rdx
	movl	%eax, %ecx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L163
.L162:
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 96(%rax)
	call	BN_GENCB_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L164
	movq	-56(%rbp), %rdx
	leaq	dsa_gencb(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GENCB_set@PLT
.L164:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dsa_get0_params@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_copy@PLT
	testl	%eax, %eax
	je	.L175
.L165:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L166
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_set_seed@PLT
	testl	%eax, %eax
	je	.L176
.L166:
	movq	-32(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	$-1, %eax
	je	.L167
	movq	-32(%rbp), %rax
	movl	56(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_set_gindex@PLT
	movq	-32(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$-1, %eax
	je	.L168
	movq	-32(%rbp), %rax
	movl	64(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_set_pcounter@PLT
	jmp	.L168
.L167:
	movq	-32(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L168
	movq	-32(%rbp), %rax
	movl	68(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_set_h@PLT
.L168:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L169
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_set_digest@PLT
.L169:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L170
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movl	60(%rax), %esi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	%edi, %edx
	movq	%rax, %rdi
	call	ossl_dsa_generate_ffc_parameters@PLT
	testl	%eax, %eax
	jle	.L177
.L170:
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_enable_flags@PLT
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L171
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L178
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L178
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L178
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_generate_key@PLT
	testl	%eax, %eax
	jle	.L179
.L171:
	movl	$1, -20(%rbp)
	jmp	.L163
.L175:
	nop
	jmp	.L163
.L176:
	nop
	jmp	.L163
.L177:
	nop
	jmp	.L163
.L178:
	nop
	jmp	.L163
.L179:
	nop
.L163:
	cmpl	$0, -20(%rbp)
	jg	.L174
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	$0, -8(%rbp)
.L174:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	movq	-8(%rbp), %rax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	dsa_gen, .-dsa_gen
	.type	dsa_gen_cleanup, @function
dsa_gen_cleanup:
.LFB426:
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
	je	.L183
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC18(%rip), %rcx
	movl	$652, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC18(%rip), %rcx
	movl	$653, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movl	$654, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC18(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$655, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L180
.L183:
	nop
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	dsa_gen_cleanup, .-dsa_gen_cleanup
	.type	dsa_load, @function
dsa_load:
.LFB427:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L185
	cmpq	$8, -32(%rbp)
	jne	.L185
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L186
.L185:
	movl	$0, %eax
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	dsa_load, .-dsa_load
	.type	dsa_dup, @function
dsa_dup:
.LFB428:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L188
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_dsa_dup@PLT
	jmp	.L189
.L188:
	movl	$0, %eax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	dsa_dup, .-dsa_dup
	.globl	ossl_dsa_keymgmt_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_keymgmt_functions, @object
	.size	ossl_dsa_keymgmt_functions, 320
ossl_dsa_keymgmt_functions:
	.long	1
	.zero	4
	.quad	dsa_newdata
	.long	2
	.zero	4
	.quad	dsa_gen_init
	.long	3
	.zero	4
	.quad	dsa_gen_set_template
	.long	4
	.zero	4
	.quad	dsa_gen_set_params
	.long	5
	.zero	4
	.quad	dsa_gen_settable_params
	.long	6
	.zero	4
	.quad	dsa_gen
	.long	7
	.zero	4
	.quad	dsa_gen_cleanup
	.long	8
	.zero	4
	.quad	dsa_load
	.long	10
	.zero	4
	.quad	dsa_freedata
	.long	11
	.zero	4
	.quad	dsa_get_params
	.long	12
	.zero	4
	.quad	dsa_gettable_params
	.long	21
	.zero	4
	.quad	dsa_has
	.long	23
	.zero	4
	.quad	dsa_match
	.long	22
	.zero	4
	.quad	dsa_validate
	.long	40
	.zero	4
	.quad	dsa_import
	.long	41
	.zero	4
	.quad	dsa_import_types
	.long	42
	.zero	4
	.quad	dsa_export
	.long	43
	.zero	4
	.quad	dsa_export_types
	.long	44
	.zero	4
	.quad	dsa_dup
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 19
__func__.2:
	.string	"dsa_gen_set_params"
	.section	.data.rel.local
	.align 32
	.type	settable.1, @object
	.size	settable.1, 400
settable.1:
	.quad	.LC19
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC20
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC21
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC22
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC23
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC9
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC11
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 8
__func__.0:
	.string	"dsa_gen"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
