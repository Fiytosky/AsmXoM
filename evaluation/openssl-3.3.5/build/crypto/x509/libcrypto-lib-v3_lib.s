	.file	"v3_lib.c"
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
	.type	ossl_check_X509_EXTENSION_type, @function
ossl_check_X509_EXTENSION_type:
.LFB449:
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
.LFE449:
	.size	ossl_check_X509_EXTENSION_type, .-ossl_check_X509_EXTENSION_type
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
.LFB450:
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
.LFE450:
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
.LFB451:
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
.LFE451:
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.type	ossl_check_X509V3_EXT_METHOD_type, @function
ossl_check_X509V3_EXT_METHOD_type:
.LFB509:
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
.LFE509:
	.size	ossl_check_X509V3_EXT_METHOD_type, .-ossl_check_X509V3_EXT_METHOD_type
	.type	ossl_check_const_X509V3_EXT_METHOD_sk_type, @function
ossl_check_const_X509V3_EXT_METHOD_sk_type:
.LFB510:
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
.LFE510:
	.size	ossl_check_const_X509V3_EXT_METHOD_sk_type, .-ossl_check_const_X509V3_EXT_METHOD_sk_type
	.type	ossl_check_X509V3_EXT_METHOD_sk_type, @function
ossl_check_X509V3_EXT_METHOD_sk_type:
.LFB511:
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
.LFE511:
	.size	ossl_check_X509V3_EXT_METHOD_sk_type, .-ossl_check_X509V3_EXT_METHOD_sk_type
	.type	ossl_check_X509V3_EXT_METHOD_compfunc_type, @function
ossl_check_X509V3_EXT_METHOD_compfunc_type:
.LFB512:
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
.LFE512:
	.size	ossl_check_X509V3_EXT_METHOD_compfunc_type, .-ossl_check_X509V3_EXT_METHOD_compfunc_type
	.type	ossl_check_X509V3_EXT_METHOD_freefunc_type, @function
ossl_check_X509V3_EXT_METHOD_freefunc_type:
.LFB514:
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
.LFE514:
	.size	ossl_check_X509V3_EXT_METHOD_freefunc_type, .-ossl_check_X509V3_EXT_METHOD_freefunc_type
	.local	ext_list
	.comm	ext_list,8,8
	.section	.rodata
.LC0:
	.string	"../crypto/x509/v3_lib.c"
	.text
	.globl	X509V3_EXT_add
	.type	X509V3_EXT_add, @function
X509V3_EXT_add:
.LFB617:
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
	movq	ext_list(%rip), %rax
	testq	%rax, %rax
	jne	.L22
	leaq	ext_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509V3_EXT_METHOD_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, ext_list(%rip)
	movq	ext_list(%rip), %rax
	testq	%rax, %rax
	jne	.L22
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$29, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509V3_EXT_METHOD_type
	movq	%rax, %rbx
	movq	ext_list(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509V3_EXT_METHOD_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$33, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L24:
	movl	$1, %eax
.L23:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	X509V3_EXT_add, .-X509V3_EXT_add
	.type	ext_cmp, @function
ext_cmp:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	ext_cmp, .-ext_cmp
	.type	ext_cmp_BSEARCH_CMP_FN, @function
ext_cmp_BSEARCH_CMP_FN:
.LFB619:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ext_cmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	ext_cmp_BSEARCH_CMP_FN, .-ext_cmp_BSEARCH_CMP_FN
	.type	OBJ_bsearch_ext, @function
OBJ_bsearch_ext:
.LFB620:
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
	leaq	ext_cmp_BSEARCH_CMP_FN(%rip), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OBJ_bsearch_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	OBJ_bsearch_ext, .-OBJ_bsearch_ext
	.section	.data.rel,"aw"
	.align 32
	.type	standard_exts, @object
	.size	standard_exts, 440
standard_exts:
	.quad	ossl_v3_nscert
	.quad	ossl_v3_ns_ia5_list
	.quad	ossl_v3_ns_ia5_list+104
	.quad	ossl_v3_ns_ia5_list+208
	.quad	ossl_v3_ns_ia5_list+312
	.quad	ossl_v3_ns_ia5_list+416
	.quad	ossl_v3_ns_ia5_list+520
	.quad	ossl_v3_ns_ia5_list+624
	.quad	ossl_v3_skey_id
	.quad	ossl_v3_key_usage
	.quad	ossl_v3_pkey_usage_period
	.quad	ossl_v3_alt
	.quad	ossl_v3_alt+104
	.quad	ossl_v3_bcons
	.quad	ossl_v3_crl_num
	.quad	ossl_v3_cpols
	.quad	ossl_v3_akey_id
	.quad	ossl_v3_crld
	.quad	ossl_v3_ext_ku
	.quad	ossl_v3_delta_crl
	.quad	ossl_v3_crl_reason
	.quad	ossl_v3_crl_invdate
	.quad	ossl_v3_sxnet
	.quad	ossl_v3_info
	.quad	ossl_v3_addr
	.quad	ossl_v3_asid
	.quad	ossl_v3_ocsp_nonce
	.quad	ossl_v3_ocsp_crlid
	.quad	ossl_v3_ocsp_accresp
	.quad	ossl_v3_ocsp_nocheck
	.quad	ossl_v3_ocsp_acutoff
	.quad	ossl_v3_ocsp_serviceloc
	.quad	ossl_v3_sinfo
	.quad	ossl_v3_policy_constraints
	.quad	ossl_v3_no_rev_avail
	.quad	ossl_v3_crl_hold
	.quad	ossl_v3_pci
	.quad	ossl_v3_name_constraints
	.quad	ossl_v3_policy_mappings
	.quad	ossl_v3_inhibit_anyp
	.quad	ossl_v3_idp
	.quad	ossl_v3_alt+208
	.quad	ossl_v3_freshest_crl
	.quad	ossl_v3_ct_scts
	.quad	ossl_v3_ct_scts+104
	.quad	ossl_v3_ct_scts+208
	.quad	ossl_v3_utf8_list
	.quad	ossl_v3_issuer_sign_tool
	.quad	ossl_v3_tls_feature
	.quad	ossl_v3_ext_admission
	.quad	ossl_v3_soa_identifier
	.quad	ossl_v3_indirect_issuer
	.quad	ossl_v3_no_assertion
	.quad	ossl_v3_single_use
	.quad	ossl_v3_group_ac
	.text
	.globl	X509V3_EXT_get_nid
	.type	X509V3_EXT_get_nid, @function
X509V3_EXT_get_nid:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	cmpl	$0, -164(%rbp)
	jns	.L32
	movl	$0, %eax
	jmp	.L36
.L32:
	movl	-164(%rbp), %eax
	movl	%eax, -144(%rbp)
	leaq	standard_exts(%rip), %rcx
	leaq	-152(%rbp), %rax
	movl	$55, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_bsearch_ext
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L34
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L36
.L34:
	movq	ext_list(%rip), %rax
	testq	%rax, %rax
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	ext_list(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509V3_EXT_METHOD_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509V3_EXT_METHOD_type
	movq	%rax, %rbx
	movq	ext_list(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509V3_EXT_METHOD_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	movl	%eax, -28(%rbp)
	movq	ext_list(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509V3_EXT_METHOD_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	nop
.L36:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	X509V3_EXT_get_nid, .-X509V3_EXT_get_nid
	.globl	X509V3_EXT_get
	.type	X509V3_EXT_get, @function
X509V3_EXT_get:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	X509V3_EXT_get_nid@PLT
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	X509V3_EXT_get, .-X509V3_EXT_get
	.globl	X509V3_EXT_add_list
	.type	X509V3_EXT_add_list, @function
X509V3_EXT_add_list:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L41
.L44:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_add@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	addq	$104, -8(%rbp)
.L41:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L44
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	X509V3_EXT_add_list, .-X509V3_EXT_add_list
	.globl	X509V3_EXT_add_alias
	.type	X509V3_EXT_add_alias, @function
X509V3_EXT_add_alias:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	X509V3_EXT_get_nid@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L47
.L46:
	leaq	.LC0(%rip), %rax
	movl	$98, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L48
	movl	$0, %eax
	jmp	.L47
.L48:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rdx
	movq	%rdx, 96(%rax)
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_add@PLT
	testl	%eax, %eax
	jne	.L49
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L47
.L49:
	movl	$1, %eax
.L47:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	X509V3_EXT_add_alias, .-X509V3_EXT_add_alias
	.globl	X509V3_EXT_cleanup
	.type	X509V3_EXT_cleanup, @function
X509V3_EXT_cleanup:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	leaq	ext_list_free(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509V3_EXT_METHOD_freefunc_type
	movq	%rax, %rbx
	movq	ext_list(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509V3_EXT_METHOD_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, ext_list(%rip)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	X509V3_EXT_cleanup, .-X509V3_EXT_cleanup
	.type	ext_list_free, @function
ext_list_free:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L53
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L53:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ext_list_free, .-ext_list_free
	.globl	X509V3_add_standard_extensions
	.type	X509V3_add_standard_extensions, @function
X509V3_add_standard_extensions:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	X509V3_add_standard_extensions, .-X509V3_add_standard_extensions
	.globl	X509V3_EXT_d2i
	.type	X509V3_EXT_d2i, @function
X509V3_EXT_d2i:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L57
	movl	$0, %eax
	jmp	.L60
.L57:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	call	*%rax
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_item_d2i@PLT
	jmp	.L60
.L59:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	X509V3_EXT_d2i, .-X509V3_EXT_d2i
	.globl	X509V3_get_d2i
	.type	X509V3_get_d2i, @function
X509V3_get_d2i:
.LFB629:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L62
	cmpq	$0, -64(%rbp)
	je	.L63
	movq	-64(%rbp), %rax
	movl	$-1, (%rax)
.L63:
	cmpq	$0, -56(%rbp)
	je	.L64
	movq	-56(%rbp), %rax
	movl	$-1, (%rax)
.L64:
	movl	$0, %eax
	jmp	.L65
.L62:
	cmpq	$0, -64(%rbp)
	je	.L66
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L67
.L66:
	movl	$0, -4(%rbp)
.L67:
	cmpl	$0, -4(%rbp)
	jns	.L68
	movl	$0, -4(%rbp)
.L68:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L69
.L75:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	%eax, -44(%rbp)
	jne	.L70
	cmpq	$0, -64(%rbp)
	je	.L71
	movq	-64(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L72
.L71:
	cmpq	$0, -16(%rbp)
	je	.L73
	cmpq	$0, -56(%rbp)
	je	.L74
	movq	-56(%rbp), %rax
	movl	$-2, (%rax)
.L74:
	movl	$0, %eax
	jmp	.L65
.L73:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L70:
	addl	$1, -8(%rbp)
.L69:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L75
.L72:
	cmpq	$0, -16(%rbp)
	je	.L76
	cmpq	$0, -56(%rbp)
	je	.L77
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_critical@PLT
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx)
.L77:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_d2i@PLT
	jmp	.L65
.L76:
	cmpq	$0, -64(%rbp)
	je	.L78
	movq	-64(%rbp), %rax
	movl	$-1, (%rax)
.L78:
	cmpq	$0, -56(%rbp)
	je	.L79
	movq	-56(%rbp), %rax
	movl	$-1, (%rax)
.L79:
	movl	$0, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	X509V3_get_d2i, .-X509V3_get_d2i
	.globl	X509V3_add1_i2d
	.type	X509V3_add1_i2d, @function
X509V3_add1_i2d:
.LFB630:
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
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -80(%rbp)
	movq	%r8, -96(%rbp)
	movl	$-1, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-96(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -48(%rbp)
	cmpq	$1, -48(%rbp)
	je	.L81
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %ecx
	movl	$-1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_NID@PLT
	movl	%eax, -24(%rbp)
.L81:
	cmpl	$0, -24(%rbp)
	js	.L82
	cmpq	$4, -48(%rbp)
	jne	.L83
	movl	$1, %eax
	jmp	.L84
.L83:
	cmpq	$0, -48(%rbp)
	jne	.L85
	movl	$145, -20(%rbp)
	jmp	.L86
.L85:
	cmpq	$5, -48(%rbp)
	jne	.L87
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_delete@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L88
	movl	$-1, %eax
	jmp	.L84
.L88:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movl	$1, %eax
	jmp	.L84
.L82:
	cmpq	$3, -48(%rbp)
	je	.L89
	cmpq	$5, -48(%rbp)
	jne	.L87
.L89:
	movl	$102, -20(%rbp)
	jmp	.L86
.L87:
	movq	-88(%rbp), %rdx
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	X509V3_EXT_i2d@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L90
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L90:
	cmpl	$0, -24(%rbp)
	js	.L91
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rcx
	movl	-24(%rbp), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	OPENSSL_sk_set@PLT
	testq	%rax, %rax
	jne	.L92
	movl	$-1, %eax
	jmp	.L84
.L92:
	movl	$1, %eax
	jmp	.L84
.L91:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L98
.L93:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L99
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L84
.L98:
	nop
	jmp	.L94
.L99:
	nop
.L94:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L96
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
.L96:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movl	$-1, %eax
	jmp	.L84
.L86:
	movq	-96(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L97
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$307, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-20(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L97:
	movl	$0, %eax
.L84:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	X509V3_add1_i2d, .-X509V3_add1_i2d
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"X509V3_EXT_add"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"X509V3_EXT_add_alias"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"X509V3_add1_i2d"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
