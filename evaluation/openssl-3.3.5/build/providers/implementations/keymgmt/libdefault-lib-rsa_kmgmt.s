	.file	"rsa_kmgmt.c"
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
	.type	pss_params_fromdata, @function
pss_params_fromdata:
.LFB452:
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
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_fromdata@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	cmpl	$4096, -28(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	pss_params_fromdata, .-pss_params_fromdata
	.type	rsa_newdata, @function
rsa_newdata:
.LFB453:
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
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_new_with_ctx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L12
	movq	-16(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_clear_flags@PLT
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	RSA_set_flags@PLT
.L12:
	movq	-16(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	rsa_newdata, .-rsa_newdata
	.type	rsapss_newdata, @function
rsapss_newdata:
.LFB454:
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
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_new_with_ctx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L16
	movq	-16(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_clear_flags@PLT
	movq	-16(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	RSA_set_flags@PLT
.L16:
	movq	-16(%rbp), %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	rsapss_newdata, .-rsapss_newdata
	.type	rsa_freedata, @function
rsa_freedata:
.LFB455:
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
	call	RSA_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	rsa_freedata, .-rsa_freedata
	.type	rsa_has, @function
rsa_has:
.LFB456:
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
	cmpq	$0, -16(%rbp)
	je	.L19
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L20
.L19:
	movl	$0, %eax
	jmp	.L21
.L20:
	movl	-28(%rbp), %eax
	andl	$131, %eax
	testl	%eax, %eax
	jne	.L22
	movl	$1, %eax
	jmp	.L21
.L22:
	movl	-28(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L23
	cmpl	$0, -4(%rbp)
	je	.L24
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_n@PLT
	testq	%rax, %rax
	je	.L24
	movl	$1, %eax
	jmp	.L25
.L24:
	movl	$0, %eax
.L25:
	movl	%eax, -4(%rbp)
.L23:
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L26
	cmpl	$0, -4(%rbp)
	je	.L27
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_e@PLT
	testq	%rax, %rax
	je	.L27
	movl	$1, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	movl	%eax, -4(%rbp)
.L26:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L29
	cmpl	$0, -4(%rbp)
	je	.L30
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_d@PLT
	testq	%rax, %rax
	je	.L30
	movl	$1, %eax
	jmp	.L31
.L30:
	movl	$0, %eax
.L31:
	movl	%eax, -4(%rbp)
.L29:
	movl	-4(%rbp), %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	rsa_has, .-rsa_has
	.type	rsa_match, @function
rsa_match:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$1, -20(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	cmpl	$0, -20(%rbp)
	je	.L35
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_e@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_e@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L35
	movl	$1, %eax
	jmp	.L36
.L35:
	movl	$0, %eax
.L36:
	movl	%eax, -20(%rbp)
	movl	-100(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L37
	movl	$0, -24(%rbp)
	movl	-100(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L38
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_n@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_n@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L38
	cmpq	$0, -56(%rbp)
	je	.L38
	cmpl	$0, -20(%rbp)
	je	.L39
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
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
	movl	%eax, -20(%rbp)
	movl	$1, -24(%rbp)
.L38:
	cmpl	$0, -24(%rbp)
	jne	.L41
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L41
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_d@PLT
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_d@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L41
	cmpq	$0, -72(%rbp)
	je	.L41
	cmpl	$0, -20(%rbp)
	je	.L42
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
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
	movl	%eax, -20(%rbp)
	movl	$1, -24(%rbp)
.L41:
	cmpl	$0, -20(%rbp)
	je	.L44
	cmpl	$0, -24(%rbp)
	je	.L44
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	movl	%eax, -20(%rbp)
.L37:
	movl	-20(%rbp), %eax
.L34:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	rsa_match, .-rsa_match
	.type	rsa_import, @function
rsa_import:
.LFB458:
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
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -44(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L47
	cmpq	$0, -32(%rbp)
	jne	.L48
.L47:
	movl	$0, %eax
	jmp	.L57
.L48:
	movl	-60(%rbp), %eax
	andl	$131, %eax
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L57
.L50:
	movq	-32(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	movl	%eax, -36(%rbp)
	movl	-60(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L51
	cmpl	$0, -20(%rbp)
	je	.L52
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_libctx@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_pss_params_30@PLT
	movq	%rax, %rdi
	movl	-36(%rbp), %ecx
	movq	-72(%rbp), %rdx
	leaq	-44(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rsi
	call	pss_params_fromdata
	testl	%eax, %eax
	je	.L52
	movl	$1, %eax
	jmp	.L53
.L52:
	movl	$0, %eax
.L53:
	movl	%eax, -20(%rbp)
.L51:
	movl	-60(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L54
	movl	-60(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L55
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_fromdata@PLT
	testl	%eax, %eax
	je	.L55
	movl	$1, %eax
	jmp	.L56
.L55:
	movl	$0, %eax
.L56:
	movl	%eax, -20(%rbp)
.L54:
	movl	-20(%rbp), %eax
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	rsa_import, .-rsa_import
	.type	rsa_export, @function
rsa_export:
.LFB459:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_pss_params_30@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L59
	cmpq	$0, -16(%rbp)
	jne	.L60
.L59:
	movl	$0, %eax
	jmp	.L61
.L60:
	movl	-60(%rbp), %eax
	andl	$131, %eax
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L61
.L62:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L63
	movl	$0, %eax
	jmp	.L61
.L63:
	movl	-60(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L64
	cmpl	$0, -4(%rbp)
	je	.L65
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L66
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_todata@PLT
	testl	%eax, %eax
	je	.L65
.L66:
	movl	$1, %eax
	jmp	.L67
.L65:
	movl	$0, %eax
.L67:
	movl	%eax, -4(%rbp)
.L64:
	movl	-60(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L68
	movl	-60(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L69
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_rsa_todata@PLT
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L72
.L71:
	movl	$0, -4(%rbp)
	jmp	.L73
.L72:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
.L73:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-4(%rbp), %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	rsa_export, .-rsa_export
	.section	.rodata
.LC0:
	.string	"n"
.LC1:
	.string	"e"
.LC2:
	.string	"d"
.LC3:
	.string	"rsa-factor1"
.LC4:
	.string	"rsa-factor2"
.LC5:
	.string	"rsa-factor3"
.LC6:
	.string	"rsa-factor4"
.LC7:
	.string	"rsa-factor5"
.LC8:
	.string	"rsa-factor6"
.LC9:
	.string	"rsa-factor7"
.LC10:
	.string	"rsa-factor8"
.LC11:
	.string	"rsa-factor9"
.LC12:
	.string	"rsa-factor10"
.LC13:
	.string	"rsa-exponent1"
.LC14:
	.string	"rsa-exponent2"
.LC15:
	.string	"rsa-exponent3"
.LC16:
	.string	"rsa-exponent4"
.LC17:
	.string	"rsa-exponent5"
.LC18:
	.string	"rsa-exponent6"
.LC19:
	.string	"rsa-exponent7"
.LC20:
	.string	"rsa-exponent8"
.LC21:
	.string	"rsa-exponent9"
.LC22:
	.string	"rsa-exponent10"
.LC23:
	.string	"rsa-coefficient1"
.LC24:
	.string	"rsa-coefficient2"
.LC25:
	.string	"rsa-coefficient3"
.LC26:
	.string	"rsa-coefficient4"
.LC27:
	.string	"rsa-coefficient5"
.LC28:
	.string	"rsa-coefficient6"
.LC29:
	.string	"rsa-coefficient7"
.LC30:
	.string	"rsa-coefficient8"
.LC31:
	.string	"rsa-coefficient9"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	rsa_key_types, @object
	.size	rsa_key_types, 1320
rsa_key_types:
	.quad	.LC0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
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
	.quad	.LC4
	.long	2
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
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC11
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC15
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC16
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC17
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC18
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC20
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC21
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC23
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC24
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC25
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC26
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC27
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC28
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC29
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC30
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC31
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
	.type	rsa_imexport_types, @function
rsa_imexport_types:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L75
	leaq	rsa_key_types(%rip), %rax
	jmp	.L76
.L75:
	movl	$0, %eax
.L76:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	rsa_imexport_types, .-rsa_imexport_types
	.type	rsa_import_types, @function
rsa_import_types:
.LFB461:
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
	call	rsa_imexport_types
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	rsa_import_types, .-rsa_import_types
	.type	rsa_export_types, @function
rsa_export_types:
.LFB462:
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
	call	rsa_imexport_types
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	rsa_export_types, .-rsa_export_types
	.section	.rodata
.LC32:
	.string	"bits"
.LC33:
	.string	"security-bits"
.LC34:
	.string	"max-size"
.LC35:
	.string	"default-digest"
.LC36:
	.string	"SHA256"
.LC37:
	.string	"mandatory-digest"
	.text
	.type	rsa_get_params, @function
rsa_get_params:
.LFB463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_pss_params_30@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_n@PLT
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	leaq	.LC32(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L82
	cmpl	$0, -24(%rbp)
	jne	.L83
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_bits@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L82
.L83:
	movl	$0, %eax
	jmp	.L84
.L82:
	leaq	.LC33(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L85
	cmpl	$0, -24(%rbp)
	jne	.L86
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_security_bits@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L85
.L86:
	movl	$0, %eax
	jmp	.L84
.L85:
	leaq	.LC34(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L87
	cmpl	$0, -24(%rbp)
	jne	.L88
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L87
.L88:
	movl	$0, %eax
	jmp	.L84
.L87:
	leaq	.LC35(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L89
	cmpl	$4096, -20(%rbp)
	jne	.L90
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	je	.L89
.L90:
	leaq	.LC36(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L89
	movl	$0, %eax
	jmp	.L84
.L89:
	leaq	.LC37(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L91
	cmpl	$4096, -20(%rbp)
	jne	.L91
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L91
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_hashalg@PLT
	movl	%eax, %edi
	call	ossl_rsa_oaeppss_nid2name@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L92
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L91
.L92:
	movl	$0, %eax
	jmp	.L84
.L91:
	cmpl	$4096, -20(%rbp)
	jne	.L93
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_todata@PLT
	testl	%eax, %eax
	je	.L94
.L93:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_rsa_todata@PLT
	testl	%eax, %eax
	je	.L94
	movl	$1, %eax
	jmp	.L84
.L94:
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	rsa_get_params, .-rsa_get_params
	.section	.data.rel.ro.local
	.align 32
	.type	rsa_params, @object
	.size	rsa_params, 1480
rsa_params:
	.quad	.LC32
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC33
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC34
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC35
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC0
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
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
	.quad	.LC4
	.long	2
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
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC11
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC15
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC16
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC17
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC18
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC20
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC21
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC23
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC24
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC25
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC26
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC27
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC28
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC29
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC30
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC31
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
	.type	rsa_gettable_params, @function
rsa_gettable_params:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	rsa_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	rsa_gettable_params, .-rsa_gettable_params
	.type	rsa_validate, @function
rsa_validate:
.LFB465:
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
	jne	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	movl	-28(%rbp), %eax
	andl	$131, %eax
	testl	%eax, %eax
	jne	.L101
	movl	$1, %eax
	jmp	.L100
.L101:
	movl	-28(%rbp), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.L102
	cmpl	$0, -4(%rbp)
	je	.L103
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_validate_pairwise@PLT
	testl	%eax, %eax
	je	.L103
	movl	$1, %eax
	jmp	.L104
.L103:
	movl	$0, %eax
.L104:
	movl	%eax, -4(%rbp)
	jmp	.L105
.L102:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L106
	cmpl	$0, -4(%rbp)
	je	.L107
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_validate_private@PLT
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
	je	.L105
	cmpl	$0, -4(%rbp)
	je	.L109
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_validate_public@PLT
	testl	%eax, %eax
	je	.L109
	movl	$1, %eax
	jmp	.L110
.L109:
	movl	$0, %eax
.L110:
	movl	%eax, -4(%rbp)
.L105:
	movl	-4(%rbp), %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	rsa_validate, .-rsa_validate
	.section	.rodata
.LC38:
	.string	"potential"
.LC39:
	.string	"iteration"
	.text
	.type	rsa_gencb, @function
rsa_gencb:
.LFB466:
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
	leaq	.LC38(%rip), %rcx
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
	leaq	.LC39(%rip), %rcx
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
	movq	72(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	rsa_gencb, .-rsa_gencb
	.section	.rodata
	.align 8
.LC40:
	.string	"../providers/implementations/keymgmt/rsa_kmgmt.c"
	.text
	.type	gen_init, @function
gen_init:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L114
	movl	$0, %eax
	jmp	.L115
.L114:
	movl	-28(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L116
	movl	$0, %eax
	jmp	.L115
.L116:
	leaq	.LC40(%rip), %rax
	movl	$462, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L124
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	call	BN_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$65537, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L125
	movq	-16(%rbp), %rax
	movq	$2048, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$2, 40(%rax)
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsa_gen_set_params
	testl	%eax, %eax
	je	.L126
	movq	-16(%rbp), %rax
	jmp	.L115
.L124:
	nop
	jmp	.L120
.L125:
	nop
	jmp	.L120
.L126:
	nop
.L120:
	cmpq	$0, -16(%rbp)
	je	.L123
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L123:
	leaq	.LC40(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$482, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	gen_init, .-gen_init
	.type	rsa_gen_init, @function
rsa_gen_init:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	gen_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	rsa_gen_init, .-rsa_gen_init
	.type	rsapss_gen_init, @function
rsapss_gen_init:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4096, %edx
	movq	%rax, %rdi
	call	gen_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	rsapss_gen_init, .-rsapss_gen_init
	.section	.rodata
.LC41:
	.string	"primes"
	.text
	.type	rsa_gen_set_params, @function
rsa_gen_set_params:
.LFB470:
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
	cmpq	$0, -32(%rbp)
	jne	.L132
	movl	$1, %eax
	jmp	.L133
.L132:
	leaq	.LC32(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L134
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L135
	movl	$0, %eax
	jmp	.L133
.L135:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$511, %rax
	ja	.L134
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC40(%rip), %rax
	movl	$515, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$171, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L133
.L134:
	leaq	.LC41(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L136
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L136
	movl	$0, %eax
	jmp	.L133
.L136:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L137
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	jne	.L137
	movl	$0, %eax
	jmp	.L133
.L137:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$4096, %eax
	jne	.L138
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	leaq	68(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	pss_params_fromdata
	testl	%eax, %eax
	jne	.L138
	movl	$0, %eax
	jmp	.L133
.L138:
	movl	$1, %eax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	rsa_gen_set_params, .-rsa_gen_set_params
	.type	rsa_gen_settable_params, @function
rsa_gen_settable_params:
.LFB471:
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
.LFE471:
	.size	rsa_gen_settable_params, .-rsa_gen_settable_params
	.type	rsapss_gen_settable_params, @function
rsapss_gen_settable_params:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	settable.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	rsapss_gen_settable_params, .-rsapss_gen_settable_params
	.type	rsa_gen, @function
rsa_gen:
.LFB473:
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
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L144
	cmpq	$0, -48(%rbp)
	jne	.L145
.L144:
	movl	$0, %eax
	jmp	.L146
.L145:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L147
	cmpl	$4096, %eax
	je	.L158
	jmp	.L157
.L147:
	movq	-48(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L159
	jmp	.L151
.L157:
	movl	$0, %eax
	jmp	.L146
.L158:
	nop
	jmp	.L152
.L159:
	nop
.L152:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_rsa_new_with_ctx@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L153
	movl	$0, %eax
	jmp	.L146
.L153:
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 80(%rax)
	call	BN_GENCB_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L154
	movq	-56(%rbp), %rdx
	leaq	rsa_gencb(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GENCB_set@PLT
.L154:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %edi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	RSA_generate_multi_prime_key@PLT
	testl	%eax, %eax
	je	.L160
	movq	-48(%rbp), %rax
	leaq	48(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_pss_params_30@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_copy@PLT
	testl	%eax, %eax
	je	.L161
	movq	-32(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_clear_flags@PLT
	movq	-48(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RSA_set_flags@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L151
.L160:
	nop
	jmp	.L151
.L161:
	nop
.L151:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-24(%rbp), %rax
.L146:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	rsa_gen, .-rsa_gen
	.type	rsa_gen_cleanup, @function
rsa_gen_cleanup:
.LFB474:
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
	je	.L165
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	leaq	.LC40(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$650, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L162
.L165:
	nop
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	rsa_gen_cleanup, .-rsa_gen_cleanup
	.type	common_load, @function
common_load:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L167
	cmpq	$8, -32(%rbp)
	jne	.L167
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	cmpl	%eax, -36(%rbp)
	je	.L168
	movl	$0, %eax
	jmp	.L169
.L168:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L169
.L167:
	movl	$0, %eax
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	common_load, .-common_load
	.type	rsa_load, @function
rsa_load:
.LFB476:
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
	call	common_load
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	rsa_load, .-rsa_load
	.type	rsapss_load, @function
rsapss_load:
.LFB477:
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
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	common_load
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	rsapss_load, .-rsapss_load
	.type	rsa_dup, @function
rsa_dup:
.LFB478:
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
	je	.L175
	movl	-12(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L175
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_dup@PLT
	jmp	.L176
.L175:
	movl	$0, %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	rsa_dup, .-rsa_dup
	.section	.rodata
.LC42:
	.string	"RSA"
	.text
	.type	rsa_query_operation_name, @function
rsa_query_operation_name:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	leaq	.LC42(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	rsa_query_operation_name, .-rsa_query_operation_name
	.globl	ossl_rsa_keymgmt_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_keymgmt_functions, @object
	.size	ossl_rsa_keymgmt_functions, 304
ossl_rsa_keymgmt_functions:
	.long	1
	.zero	4
	.quad	rsa_newdata
	.long	2
	.zero	4
	.quad	rsa_gen_init
	.long	4
	.zero	4
	.quad	rsa_gen_set_params
	.long	5
	.zero	4
	.quad	rsa_gen_settable_params
	.long	6
	.zero	4
	.quad	rsa_gen
	.long	7
	.zero	4
	.quad	rsa_gen_cleanup
	.long	8
	.zero	4
	.quad	rsa_load
	.long	10
	.zero	4
	.quad	rsa_freedata
	.long	11
	.zero	4
	.quad	rsa_get_params
	.long	12
	.zero	4
	.quad	rsa_gettable_params
	.long	21
	.zero	4
	.quad	rsa_has
	.long	23
	.zero	4
	.quad	rsa_match
	.long	22
	.zero	4
	.quad	rsa_validate
	.long	40
	.zero	4
	.quad	rsa_import
	.long	41
	.zero	4
	.quad	rsa_import_types
	.long	42
	.zero	4
	.quad	rsa_export
	.long	43
	.zero	4
	.quad	rsa_export_types
	.long	44
	.zero	4
	.quad	rsa_dup
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_rsapss_keymgmt_functions
	.align 32
	.type	ossl_rsapss_keymgmt_functions, @object
	.size	ossl_rsapss_keymgmt_functions, 320
ossl_rsapss_keymgmt_functions:
	.long	1
	.zero	4
	.quad	rsapss_newdata
	.long	2
	.zero	4
	.quad	rsapss_gen_init
	.long	4
	.zero	4
	.quad	rsa_gen_set_params
	.long	5
	.zero	4
	.quad	rsapss_gen_settable_params
	.long	6
	.zero	4
	.quad	rsa_gen
	.long	7
	.zero	4
	.quad	rsa_gen_cleanup
	.long	8
	.zero	4
	.quad	rsapss_load
	.long	10
	.zero	4
	.quad	rsa_freedata
	.long	11
	.zero	4
	.quad	rsa_get_params
	.long	12
	.zero	4
	.quad	rsa_gettable_params
	.long	21
	.zero	4
	.quad	rsa_has
	.long	23
	.zero	4
	.quad	rsa_match
	.long	22
	.zero	4
	.quad	rsa_validate
	.long	40
	.zero	4
	.quad	rsa_import
	.long	41
	.zero	4
	.quad	rsa_import_types
	.long	42
	.zero	4
	.quad	rsa_export
	.long	43
	.zero	4
	.quad	rsa_export_types
	.long	20
	.zero	4
	.quad	rsa_query_operation_name
	.long	44
	.zero	4
	.quad	rsa_dup
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 19
__func__.2:
	.string	"rsa_gen_set_params"
	.section	.data.rel.local,"aw"
	.align 32
	.type	settable.1, @object
	.size	settable.1, 160
settable.1:
	.quad	.LC32
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC41
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC1
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
	.section	.rodata
.LC43:
	.string	"digest"
.LC44:
	.string	"properties"
.LC45:
	.string	"mgf"
.LC46:
	.string	"mgf1-digest"
.LC47:
	.string	"saltlen"
	.section	.data.rel.local
	.align 32
	.type	settable.0, @object
	.size	settable.0, 360
settable.0:
	.quad	.LC32
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC41
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC1
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC43
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC44
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC45
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC46
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC47
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
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
