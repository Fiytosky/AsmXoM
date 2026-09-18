	.file	"m_sigver.c"
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
	.string	"../crypto/evp/m_sigver.c"
	.text
	.type	update, @function
update:
.LFB482:
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
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$23, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$177, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	update, .-update
	.section	.rodata
.LC1:
	.string	"UNDEF"
	.text
	.type	canon_mdname, @function
canon_mdname:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	canon_mdname, .-canon_mdname
	.type	do_sigver_init, @function
do_sigver_init:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%r8, -232(%rbp)
	movq	%r9, -240(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -40(%rbp)
	movl	$1, -52(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	evp_md_ctx_free_algctx@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$0, %eax
	jmp	.L80
.L11:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L13
	movl	$0, -52(%rbp)
	cmpq	$0, 16(%rbp)
	jne	.L14
	movq	-240(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 40(%rdx)
	jmp	.L13
.L14:
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 40(%rdx)
.L13:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	movl	$0, %eax
	jmp	.L80
.L15:
	movq	-200(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_clear_flags@PLT
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)
	call	ERR_set_mark@PLT
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L82
	cmpl	$0, -52(%rbp)
	je	.L18
	cmpq	$0, 24(%rbp)
	jne	.L19
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$0, 32(%rbp)
	je	.L20
	movl	$256, %edx
	jmp	.L21
.L20:
	movl	$128, %edx
.L21:
	cmpl	%eax, %edx
	jne	.L19
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L19
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L18
.L19:
	movl	$0, -52(%rbp)
.L18:
	cmpq	$0, -240(%rbp)
	jne	.L22
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -240(%rbp)
.L22:
	movq	-64(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L23:
	cmpl	$0, -52(%rbp)
	jne	.L25
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_free_old_ops@PLT
	movq	-64(%rbp), %rax
	movq	136(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L29
	jmp	.L81
.L25:
	cmpq	$0, -224(%rbp)
	jne	.L83
	cmpq	$0, -216(%rbp)
	jne	.L83
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdi
	call	canon_mdname
	movq	%rax, -224(%rbp)
	jmp	.L83
.L81:
	movq	-64(%rbp), %rax
	movq	136(%rax), %rax
	movq	96(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L30
.L29:
	movl	$1, %eax
	jmp	.L31
.L30:
	movl	$0, %eax
.L31:
	cltq
	testq	%rax, %rax
	jne	.L32
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L32:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_query_operation_name@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L33
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L33:
	movl	$1, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L34
.L44:
	movq	$0, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	cmpl	$1, -48(%rbp)
	je	.L35
	cmpl	$2, -48(%rbp)
	je	.L36
	jmp	.L37
.L35:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_SIGNATURE_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L84
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_get0_provider@PLT
	movq	%rax, -32(%rbp)
	jmp	.L84
.L36:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_signature_fetch_from_prov@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L85
	jmp	.L37
.L84:
	nop
.L37:
	cmpq	$0, -24(%rbp)
	je	.L86
	movq	-64(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_name@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_fetch_from_prov@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L42
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	136(%rax), %rax
	leaq	-88(%rbp), %rdx
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -40(%rbp)
.L42:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L41
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	jmp	.L41
.L86:
	nop
.L41:
	addl	$1, -48(%rbp)
.L34:
	cmpl	$2, -48(%rbp)
	jg	.L43
	cmpq	$0, -40(%rbp)
	je	.L44
.L43:
	cmpq	$0, -40(%rbp)
	jne	.L45
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_free@PLT
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L45:
	call	ERR_pop_to_mark@PLT
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	cmpl	$0, 32(%rbp)
	je	.L46
	movl	$256, %edx
	jmp	.L47
.L46:
	movl	$128, %edx
.L47:
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_provider_ctx@PLT
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	*%rbx
	movq	-64(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L83:
	nop
	jmp	.L28
.L87:
	nop
.L28:
	cmpq	$0, -208(%rbp)
	je	.L48
	movq	-208(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
.L48:
	cmpq	$0, -216(%rbp)
	je	.L49
	movq	-200(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -224(%rbp)
	jne	.L50
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdi
	call	canon_mdname
	movq	%rax, -224(%rbp)
	jmp	.L50
.L49:
	cmpq	$0, -224(%rbp)
	jne	.L51
	cmpl	$0, -52(%rbp)
	jne	.L51
	movq	-88(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	$80, %ecx
	movq	%rax, %rdi
	call	evp_keymgmt_util_get_deflt_digest_name@PLT
	testl	%eax, %eax
	jle	.L51
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	canon_mdname
	movq	%rax, -224(%rbp)
.L51:
	cmpq	$0, -224(%rbp)
	je	.L50
	movq	-200(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	evp_md_ctx_clear_digest@PLT
	call	ERR_set_mark@PLT
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-240(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-200(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-200(%rbp), %rax
	movq	(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L53
.L52:
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-200(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-200(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L53
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L53:
	call	ERR_pop_to_mark@PLT
.L50:
	cmpl	$0, 32(%rbp)
	je	.L54
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L55:
	movq	-24(%rbp), %rax
	movq	128(%rax), %r8
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	40(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -44(%rbp)
	jmp	.L56
.L54:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$265, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L57:
	movq	-24(%rbp), %rax
	movq	96(%rax), %r8
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	40(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -44(%rbp)
.L56:
	cmpl	$0, -44(%rbp)
	jg	.L88
	cmpq	$0, -224(%rbp)
	jne	.L88
	cmpq	$0, -216(%rbp)
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$279, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L89:
	nop
.L24:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_free_old_ops@PLT
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movl	$0, %eax
	jmp	.L80
.L82:
	nop
	jmp	.L17
.L85:
	nop
.L17:
	call	ERR_pop_to_mark@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	$0, -88(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.L61
	cmpq	$0, -224(%rbp)
	je	.L61
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_get_digestbyname_ex@PLT
	movq	%rax, -216(%rbp)
.L61:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L80
.L62:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movl	4(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L63
	cmpq	$0, -216(%rbp)
	jne	.L64
	leaq	-180(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_default_digest_nid@PLT
	testl	%eax, %eax
	jle	.L64
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -216(%rbp)
.L64:
	cmpq	$0, -216(%rbp)
	jne	.L63
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L80
.L63:
	cmpl	$0, 32(%rbp)
	je	.L66
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	128(%rax), %rcx
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	-200(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jg	.L68
	movl	$0, %eax
	jmp	.L80
.L68:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movl	$256, (%rax)
	jmp	.L69
.L67:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movl	$32, (%rax)
	movq	-200(%rbp), %rax
	leaq	update(%rip), %rdx
	movq	%rdx, 48(%rax)
	jmp	.L69
.L70:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_verify_init@PLT
	testl	%eax, %eax
	jg	.L69
	movl	$0, %eax
	jmp	.L80
.L66:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	112(%rax), %rcx
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	-200(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jg	.L72
	movl	$0, %eax
	jmp	.L80
.L72:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movl	$128, (%rax)
	jmp	.L69
.L71:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movl	$16, (%rax)
	movq	-200(%rbp), %rax
	leaq	update(%rip), %rdx
	movq	%rdx, 48(%rax)
	jmp	.L69
.L73:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_sign_init@PLT
	testl	%eax, %eax
	jg	.L69
	movl	$0, %eax
	jmp	.L80
.L69:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_signature_md@PLT
	testl	%eax, %eax
	jg	.L74
	movl	$0, %eax
	jmp	.L80
.L74:
	cmpq	$0, -208(%rbp)
	je	.L75
	movq	-200(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, (%rax)
.L75:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movl	4(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L76
	movl	$1, %eax
	jmp	.L80
.L76:
	movq	16(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L80
.L77:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movzbl	160(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 160(%rax)
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movzbl	160(%rax), %edx
	orl	$1, %edx
	movb	%dl, 160(%rax)
.L78:
	movl	$1, -44(%rbp)
	jmp	.L60
.L88:
	nop
.L60:
	cmpl	$0, -44(%rbp)
	jle	.L79
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_ctx_use_cached_data@PLT
	movl	%eax, -44(%rbp)
.L79:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	cmpl	$0, -44(%rbp)
	setg	%al
	movzbl	%al, %eax
.L80:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	do_sigver_init, .-do_sigver_init
	.globl	EVP_DigestSignInit_ex
	.type	EVP_DigestSignInit_ex, @function
EVP_DigestSignInit_ex:
.LFB485:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	16(%rbp)
	pushq	$0
	pushq	-48(%rbp)
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	do_sigver_init
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	EVP_DigestSignInit_ex, .-EVP_DigestSignInit_ex
	.globl	EVP_DigestSignInit
	.type	EVP_DigestSignInit, @function
EVP_DigestSignInit:
.LFB486:
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
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	do_sigver_init
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	EVP_DigestSignInit, .-EVP_DigestSignInit
	.globl	EVP_DigestVerifyInit_ex
	.type	EVP_DigestVerifyInit_ex, @function
EVP_DigestVerifyInit_ex:
.LFB487:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	16(%rbp)
	pushq	$1
	pushq	-48(%rbp)
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	do_sigver_init
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	EVP_DigestVerifyInit_ex, .-EVP_DigestVerifyInit_ex
	.globl	EVP_DigestVerifyInit
	.type	EVP_DigestVerifyInit, @function
EVP_DigestVerifyInit:
.LFB488:
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
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$1
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	do_sigver_init
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	EVP_DigestVerifyInit, .-EVP_DigestVerifyInit
	.globl	EVP_DigestSignUpdate
	.type	EVP_DigestSignUpdate, @function
EVP_DigestSignUpdate:
.LFB489:
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
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L99
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$407, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$189, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L100
.L99:
	cmpq	$0, -8(%rbp)
	je	.L107
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	jne	.L107
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L104
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$418, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L100
.L104:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	104(%rax), %r8
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L100
.L107:
	nop
.L103:
	cmpq	$0, -8(%rbp)
	je	.L105
	movq	-8(%rbp), %rax
	movzbl	160(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L106
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	248(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L100
.L106:
	movq	-8(%rbp), %rax
	movzbl	160(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 160(%rax)
.L105:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	EVP_DigestSignUpdate, .-EVP_DigestSignUpdate
	.globl	EVP_DigestVerifyUpdate
	.type	EVP_DigestVerifyUpdate, @function
EVP_DigestVerifyUpdate:
.LFB490:
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
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L109
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$442, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$189, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L109:
	cmpq	$0, -8(%rbp)
	je	.L117
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	jne	.L117
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L114
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$453, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L114:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	136(%rax), %r8
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L110
.L117:
	nop
.L113:
	cmpq	$0, -8(%rbp)
	je	.L115
	movq	-8(%rbp), %rax
	movzbl	160(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L116
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	248(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L116
	movl	$0, %eax
	jmp	.L110
.L116:
	movq	-8(%rbp), %rax
	movzbl	160(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 160(%rax)
.L115:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	EVP_DigestVerifyUpdate, .-EVP_DigestVerifyUpdate
	.globl	EVP_DigestSignFinal
	.type	EVP_DigestSignFinal, @function
EVP_DigestSignFinal:
.LFB491:
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
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L119
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$480, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L120
.L119:
	cmpq	$0, -24(%rbp)
	je	.L154
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	jne	.L154
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L154
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L154
	cmpq	$0, -128(%rbp)
	je	.L124
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L124
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L124
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L124:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	112(%rax), %r8
	cmpq	$0, -128(%rbp)
	je	.L125
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L126
.L125:
	movl	$0, %eax
.L126:
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdi
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	%rax, %rcx
	call	*%r8
	movl	%eax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L127
	cmpq	$0, -128(%rbp)
	je	.L127
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	orb	$8, %ah
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L128
.L127:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L128:
	movl	-8(%rbp), %eax
	jmp	.L120
.L154:
	nop
.L123:
	cmpq	$0, -24(%rbp)
	je	.L129
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L130
.L129:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$507, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L120
.L130:
	movq	-24(%rbp), %rax
	movzbl	160(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L131
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	248(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L131
	movl	$0, %eax
	jmp	.L120
.L131:
	movq	-24(%rbp), %rax
	movzbl	160(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 160(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	4(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L132
	cmpq	$0, -128(%rbp)
	jne	.L133
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	120(%rax), %r8
	movq	-120(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L120
.L133:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L134
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	120(%rax), %r8
	movq	-120(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -8(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	orb	$8, %ah
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L135
.L134:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L136
	movl	$0, %eax
	jmp	.L120
.L136:
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	120(%rax), %r8
	movq	-120(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L135:
	movl	-8(%rbp), %eax
	jmp	.L120
.L132:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L137
	movl	$1, -4(%rbp)
	jmp	.L138
.L137:
	movl	$0, -4(%rbp)
.L138:
	cmpq	$0, -128(%rbp)
	je	.L139
	movl	$0, -44(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L140
	cmpl	$0, -4(%rbp)
	je	.L141
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	120(%rax), %r8
	movq	-120(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -8(%rbp)
	jmp	.L142
.L141:
	leaq	-44(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	movl	%eax, -8(%rbp)
	jmp	.L142
.L140:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L143
	movl	$0, %eax
	jmp	.L120
.L143:
	movq	-120(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	jne	.L145
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
	jmp	.L120
.L145:
	cmpl	$0, -4(%rbp)
	je	.L146
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	120(%rax), %r8
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -8(%rbp)
	jmp	.L147
.L146:
	leaq	-44(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	movl	%eax, -8(%rbp)
.L147:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
.L142:
	cmpl	$0, -4(%rbp)
	jne	.L148
	cmpl	$0, -8(%rbp)
	jne	.L149
.L148:
	movl	-8(%rbp), %eax
	jmp	.L120
.L149:
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	leaq	-112(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	testl	%eax, %eax
	jg	.L151
	movl	$0, %eax
	jmp	.L120
.L139:
	cmpl	$0, -4(%rbp)
	je	.L152
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	120(%rax), %r8
	movq	-120(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jg	.L151
	movl	$0, %eax
	jmp	.L120
.L152:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L153
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_sign@PLT
	testl	%eax, %eax
	jg	.L151
.L153:
	movl	$0, %eax
	jmp	.L120
.L151:
	movl	$1, %eax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	EVP_DigestSignFinal, .-EVP_DigestSignFinal
	.globl	EVP_DigestSign
	.type	EVP_DigestSign, @function
EVP_DigestSign:
.LFB492:
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
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L156
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$585, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L157
.L156:
	cmpq	$0, -8(%rbp)
	je	.L158
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	jne	.L158
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L158
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L158
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L163
	cmpq	$0, -32(%rbp)
	je	.L160
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	orb	$8, %ah
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
.L160:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %r10
	cmpq	$0, -32(%rbp)
	je	.L161
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L162
.L161:
	movl	$0, %eax
.L162:
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdi
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r10
	jmp	.L157
.L158:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	208(%rax), %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L157
.L163:
	cmpq	$0, -32(%rbp)
	je	.L164
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	jg	.L164
	movl	$0, %eax
	jmp	.L157
.L164:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	EVP_DigestSign, .-EVP_DigestSign
	.globl	EVP_DigestVerifyFinal
	.type	EVP_DigestVerifyFinal, @function
EVP_DigestVerifyFinal:
.LFB493:
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
	movl	$0, -4(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L166
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$622, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L188
.L166:
	cmpq	$0, -24(%rbp)
	je	.L189
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	jne	.L189
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L189
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L189
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L171
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L171
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L171:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	144(%rax), %r8
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L172
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	orb	$8, %ah
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L173
.L172:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L173:
	movl	-4(%rbp), %eax
	jmp	.L188
.L189:
	nop
.L170:
	cmpq	$0, -24(%rbp)
	je	.L174
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L175
.L174:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$648, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L188
.L175:
	movq	-24(%rbp), %rax
	movzbl	160(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L176
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	248(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L176
	movl	$0, %eax
	jmp	.L188
.L176:
	movq	-24(%rbp), %rax
	movzbl	160(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 160(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L177
	movl	$1, -8(%rbp)
	jmp	.L178
.L177:
	movl	$0, -8(%rbp)
.L178:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L179
	cmpl	$0, -8(%rbp)
	je	.L180
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	136(%rax), %r8
	movq	-136(%rbp), %rax
	movl	%eax, %edi
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	orb	$8, %ah
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L181
.L180:
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	movl	%eax, -4(%rbp)
	jmp	.L181
.L179:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L182
	movl	$-1, %eax
	jmp	.L188
.L182:
	movq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	jne	.L183
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$-1, %eax
	jmp	.L188
.L183:
	cmpl	$0, -8(%rbp)
	je	.L184
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	120(%rax), %rax
	movq	136(%rax), %r8
	movq	-136(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	jmp	.L185
.L184:
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	movl	%eax, -4(%rbp)
.L185:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
.L181:
	cmpl	$0, -8(%rbp)
	jne	.L186
	cmpl	$0, -4(%rbp)
	jne	.L187
.L186:
	movl	-4(%rbp), %eax
	jmp	.L188
.L187:
	movl	-100(%rbp), %eax
	movl	%eax, %edi
	leaq	-96(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_verify@PLT
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	EVP_DigestVerifyFinal, .-EVP_DigestVerifyFinal
	.globl	EVP_DigestVerify
	.type	EVP_DigestVerify, @function
EVP_DigestVerify:
.LFB494:
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
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L191
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$694, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L192
.L191:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L193
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$699, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L192
.L193:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	jne	.L194
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L194
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L194
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	orb	$8, %ah
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	152(%rax), %r9
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L192
.L194:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	216(%rax), %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L192
.L196:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyUpdate@PLT
	testl	%eax, %eax
	jg	.L197
	movl	$-1, %eax
	jmp	.L192
.L197:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	EVP_DigestVerify, .-EVP_DigestVerify
	.section	.rodata
	.type	__func__.7, @object
	.size	__func__.7, 7
__func__.7:
	.string	"update"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 15
__func__.6:
	.string	"do_sigver_init"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 21
__func__.5:
	.string	"EVP_DigestSignUpdate"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 23
__func__.4:
	.string	"EVP_DigestVerifyUpdate"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 20
__func__.3:
	.string	"EVP_DigestSignFinal"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"EVP_DigestSign"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"EVP_DigestVerifyFinal"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"EVP_DigestVerify"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
