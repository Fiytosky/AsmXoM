	.file	"dh_kmgmt.c"
	.text
	.section	.rodata
.LC0:
	.string	"default"
	.text
	.type	dh_gen_type_name2id_w_default, @function
dh_gen_type_name2id_w_default:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2
	cmpl	$4096, -12(%rbp)
	jne	.L3
	movl	$1, %eax
	jmp	.L4
.L3:
	movl	$0, %eax
	jmp	.L4
.L2:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_dh_gen_type_name2id@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	dh_gen_type_name2id_w_default, .-dh_gen_type_name2id_w_default
	.type	dh_newdata, @function
dh_newdata:
.LFB362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L6
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdi
	call	ossl_dh_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	DH_clear_flags@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	DH_set_flags@PLT
.L6:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	dh_newdata, .-dh_newdata
	.type	dhx_newdata, @function
dhx_newdata:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdi
	call	ossl_dh_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L9
	movq	-8(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	DH_clear_flags@PLT
	movq	-8(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	DH_set_flags@PLT
.L9:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	dhx_newdata, .-dhx_newdata
	.type	dh_freedata, @function
dh_freedata:
.LFB364:
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
	call	DH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	dh_freedata, .-dh_freedata
	.type	dh_has, @function
dh_has:
.LFB365:
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
	je	.L13
	cmpq	$0, -16(%rbp)
	jne	.L14
.L13:
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	-28(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L16
	movl	$1, %eax
	jmp	.L15
.L16:
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L17
	cmpl	$0, -4(%rbp)
	je	.L18
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_pub_key@PLT
	testq	%rax, %rax
	je	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	movl	$0, %eax
.L19:
	movl	%eax, -4(%rbp)
.L17:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L20
	cmpl	$0, -4(%rbp)
	je	.L21
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_priv_key@PLT
	testq	%rax, %rax
	je	.L21
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	$0, %eax
.L22:
	movl	%eax, -4(%rbp)
.L20:
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L23
	cmpl	$0, -4(%rbp)
	je	.L24
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_p@PLT
	testq	%rax, %rax
	je	.L24
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_g@PLT
	testq	%rax, %rax
	je	.L24
	movl	$1, %eax
	jmp	.L25
.L24:
	movl	$0, %eax
.L25:
	movl	%eax, -4(%rbp)
.L23:
	movl	-4(%rbp), %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	dh_has, .-dh_has
	.type	dh_match, @function
dh_match:
.LFB366:
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
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movl	-100(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L29
	movl	$0, -8(%rbp)
	movl	-100(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L30
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_pub_key@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_pub_key@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L30
	cmpq	$0, -40(%rbp)
	je	.L30
	cmpl	$0, -4(%rbp)
	je	.L31
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$1, %eax
	jmp	.L32
.L31:
	movl	$0, %eax
.L32:
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
.L30:
	cmpl	$0, -8(%rbp)
	jne	.L33
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L33
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_priv_key@PLT
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_priv_key@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L33
	cmpq	$0, -56(%rbp)
	je	.L33
	cmpl	$0, -4(%rbp)
	je	.L34
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$1, %eax
	jmp	.L35
.L34:
	movl	$0, %eax
.L35:
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
.L33:
	cmpl	$0, -4(%rbp)
	je	.L36
	cmpl	$0, -8(%rbp)
	je	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	movl	%eax, -4(%rbp)
.L29:
	movl	-100(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L38
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	%rax, -72(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L39
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_cmp@PLT
	testl	%eax, %eax
	je	.L39
	movl	$1, %eax
	jmp	.L40
.L39:
	movl	$0, %eax
.L40:
	movl	%eax, -4(%rbp)
.L38:
	movl	-4(%rbp), %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	dh_match, .-dh_match
	.type	dh_import, @function
dh_import:
.LFB367:
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
	je	.L42
	cmpq	$0, -16(%rbp)
	jne	.L43
.L42:
	movl	$0, %eax
	jmp	.L44
.L43:
	movl	-44(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L44
.L45:
	cmpl	$0, -4(%rbp)
	je	.L46
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_params_fromdata@PLT
	testl	%eax, %eax
	je	.L46
	movl	$1, %eax
	jmp	.L47
.L46:
	movl	$0, %eax
.L47:
	movl	%eax, -4(%rbp)
	movl	-44(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L48
	movl	-44(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L49
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_key_fromdata@PLT
	testl	%eax, %eax
	je	.L49
	movl	$1, %eax
	jmp	.L50
.L49:
	movl	$0, %eax
.L50:
	movl	%eax, -4(%rbp)
.L48:
	movl	-4(%rbp), %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	dh_import, .-dh_import
	.type	dh_export, @function
dh_export:
.LFB368:
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
	movq	$0, -32(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L52
	cmpq	$0, -16(%rbp)
	jne	.L53
.L52:
	movl	$0, %eax
	jmp	.L54
.L53:
	movl	-60(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L54
.L55:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L54
.L56:
	movl	-60(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L57
	cmpl	$0, -4(%rbp)
	je	.L58
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_params_todata@PLT
	testl	%eax, %eax
	je	.L58
	movl	$1, %eax
	jmp	.L59
.L58:
	movl	$0, %eax
.L59:
	movl	%eax, -4(%rbp)
.L57:
	movl	-60(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L60
	movl	-60(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L61
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_dh_key_todata@PLT
	testl	%eax, %eax
	je	.L61
	movl	$1, %eax
	jmp	.L62
.L61:
	movl	$0, %eax
.L62:
	movl	%eax, -4(%rbp)
.L60:
	cmpl	$0, -4(%rbp)
	je	.L63
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L64
.L63:
	movl	$0, -4(%rbp)
	jmp	.L65
.L64:
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
.L65:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-4(%rbp), %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	dh_export, .-dh_export
	.section	.rodata
.LC1:
	.string	"p"
.LC2:
	.string	"q"
.LC3:
	.string	"g"
.LC4:
	.string	"j"
.LC5:
	.string	"gindex"
.LC6:
	.string	"pcounter"
.LC7:
	.string	"hindex"
.LC8:
	.string	"priv_len"
.LC9:
	.string	"seed"
.LC10:
	.string	"group"
.LC11:
	.string	"pub"
.LC12:
	.string	"priv"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	dh_all_types, @object
	.size	dh_all_types, 520
dh_all_types:
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
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC6
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC7
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC9
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	4
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	dh_parameter_types, @object
	.size	dh_parameter_types, 440
dh_parameter_types:
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
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC6
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC7
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC9
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	4
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
	.type	dh_key_types, @object
	.size	dh_key_types, 120
dh_key_types:
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.data.rel.local,"aw"
	.align 32
	.type	dh_types, @object
	.size	dh_types, 32
dh_types:
	.quad	0
	.quad	dh_parameter_types
	.quad	dh_key_types
	.quad	dh_all_types
	.text
	.type	dh_imexport_types, @function
dh_imexport_types:
.LFB369:
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
	je	.L67
	addl	$1, -4(%rbp)
.L67:
	movl	-20(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L68
	addl	$2, -4(%rbp)
.L68:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dh_types(%rip), %rax
	movq	(%rdx,%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	dh_imexport_types, .-dh_imexport_types
	.type	dh_import_types, @function
dh_import_types:
.LFB370:
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
	call	dh_imexport_types
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	dh_import_types, .-dh_import_types
	.type	dh_export_types, @function
dh_export_types:
.LFB371:
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
	call	dh_imexport_types
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	dh_export_types, .-dh_export_types
	.section	.rodata
.LC13:
	.string	"bits"
.LC14:
	.string	"security-bits"
.LC15:
	.string	"max-size"
.LC16:
	.string	"encoded-pub-key"
	.text
	.type	dh_get_params, @function
dh_get_params:
.LFB372:
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
	je	.L75
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_bits@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L76
.L75:
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L77
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_security_bits@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L76
.L77:
	leaq	.LC15(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L78
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L76
.L78:
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L79
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L80
	movl	$0, %eax
	jmp	.L76
.L80:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_dh_key2buf@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L79
	movl	$0, %eax
	jmp	.L76
.L79:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_dh_params_todata@PLT
	testl	%eax, %eax
	je	.L81
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_dh_key_todata@PLT
	testl	%eax, %eax
	je	.L81
	movl	$1, %eax
	jmp	.L76
.L81:
	movl	$0, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	dh_get_params, .-dh_get_params
	.section	.data.rel.ro.local
	.align 32
	.type	dh_params, @object
	.size	dh_params, 680
dh_params:
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
	.long	5
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
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC6
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC7
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC9
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	4
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	dh_gettable_params, @function
dh_gettable_params:
.LFB373:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	dh_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	dh_gettable_params, .-dh_gettable_params
	.section	.data.rel.ro.local
	.align 32
	.type	dh_known_settable_params, @object
	.size	dh_known_settable_params, 80
dh_known_settable_params:
	.quad	.LC16
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
	.text
	.type	dh_settable_params, @function
dh_settable_params:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	dh_known_settable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	dh_settable_params, .-dh_settable_params
	.type	dh_set_params, @function
dh_set_params:
.LFB375:
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
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L88
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L89
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_buf2key@PLT
	testl	%eax, %eax
	jne	.L88
.L89:
	movl	$0, %eax
	jmp	.L90
.L88:
	movl	$1, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	dh_set_params, .-dh_set_params
	.type	dh_validate_public, @function
dh_validate_public:
.LFB376:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	leaq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L92
	movl	$0, %eax
	jmp	.L95
.L92:
	cmpl	$1, -28(%rbp)
	jne	.L94
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_is_named_safe_prime_group@PLT
	testl	%eax, %eax
	je	.L94
	movq	-8(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_check_pub_key_partial@PLT
	jmp	.L95
.L94:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_check_pub_key_ex@PLT
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	dh_validate_public, .-dh_validate_public
	.type	dh_validate_private, @function
dh_validate_private:
.LFB377:
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
	call	DH_get0_key@PLT
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L97
	movl	$0, %eax
	jmp	.L99
.L97:
	movq	-16(%rbp), %rcx
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_check_priv_key@PLT
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	dh_validate_private, .-dh_validate_private
	.type	dh_validate, @function
dh_validate:
.LFB378:
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
	jne	.L101
	movl	$0, %eax
	jmp	.L102
.L101:
	movl	-28(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L103
	movl	$1, %eax
	jmp	.L102
.L103:
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L104
	cmpl	$1, -32(%rbp)
	jne	.L105
	cmpl	$0, -4(%rbp)
	je	.L106
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_check_params_ex@PLT
	testl	%eax, %eax
	je	.L106
	movl	$1, %eax
	jmp	.L107
.L106:
	movl	$0, %eax
.L107:
	movl	%eax, -4(%rbp)
	jmp	.L104
.L105:
	cmpl	$0, -4(%rbp)
	je	.L108
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_check_ex@PLT
	testl	%eax, %eax
	je	.L108
	movl	$1, %eax
	jmp	.L109
.L108:
	movl	$0, %eax
.L109:
	movl	%eax, -4(%rbp)
.L104:
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L110
	cmpl	$0, -4(%rbp)
	je	.L111
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dh_validate_public
	testl	%eax, %eax
	je	.L111
	movl	$1, %eax
	jmp	.L112
.L111:
	movl	$0, %eax
.L112:
	movl	%eax, -4(%rbp)
.L110:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L113
	cmpl	$0, -4(%rbp)
	je	.L114
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dh_validate_private
	testl	%eax, %eax
	je	.L114
	movl	$1, %eax
	jmp	.L115
.L114:
	movl	$0, %eax
.L115:
	movl	%eax, -4(%rbp)
.L113:
	movl	-28(%rbp), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.L116
	cmpl	$0, -4(%rbp)
	je	.L117
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_check_pairwise@PLT
	testl	%eax, %eax
	je	.L117
	movl	$1, %eax
	jmp	.L118
.L117:
	movl	$0, %eax
.L118:
	movl	%eax, -4(%rbp)
.L116:
	movl	-4(%rbp), %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	dh_validate, .-dh_validate
	.section	.rodata
	.align 8
.LC17:
	.string	"../providers/implementations/keymgmt/dh_kmgmt.c"
	.text
	.type	dh_gen_init_base, @function
dh_gen_init_base:
.LFB379:
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
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movl	-28(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L122
	movl	$0, %eax
	jmp	.L121
.L122:
	leaq	.LC17(%rip), %rax
	movl	$458, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L123
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
	movq	$0, 80(%rax)
	cmpl	$4096, -32(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 68(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 64(%rax)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 112(%rax)
.L123:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dh_gen_set_params
	testl	%eax, %eax
	jne	.L124
	leaq	.LC17(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$480, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L124:
	movq	-8(%rbp), %rax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	dh_gen_init_base, .-dh_gen_init_base
	.type	dh_gen_init, @function
dh_gen_init:
.LFB380:
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
	movl	$0, %ecx
	movq	%rax, %rdi
	call	dh_gen_init_base
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	dh_gen_init, .-dh_gen_init
	.type	dhx_gen_init, @function
dhx_gen_init:
.LFB381:
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
	movl	$4096, %ecx
	movq	%rax, %rdi
	call	dh_gen_init_base
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	dhx_gen_init, .-dhx_gen_init
	.type	dh_gen_set_template, @function
dh_gen_set_template:
.LFB382:
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
	je	.L130
	cmpq	$0, -8(%rbp)
	je	.L130
	cmpq	$0, -16(%rbp)
	jne	.L131
.L130:
	movl	$0, %eax
	jmp	.L132
.L131:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movl	$1, %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	dh_gen_set_template, .-dh_gen_set_template
	.type	dh_set_gen_seed, @function
dh_set_gen_seed:
.LFB383:
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
	leaq	.LC17(%rip), %rdx
	movl	$512, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	cmpq	$0, -16(%rbp)
	je	.L134
	cmpq	$0, -24(%rbp)
	je	.L134
	leaq	.LC17(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$516, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L134:
	movl	$1, %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	dh_set_gen_seed, .-dh_set_gen_seed
	.section	.rodata
.LC18:
	.string	"type"
.LC19:
	.string	"pbits"
	.text
	.type	dh_gen_common_set_params, @function
dh_gen_common_set_params:
.LFB384:
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
	jne	.L138
	movl	$0, %eax
	jmp	.L139
.L138:
	cmpq	$0, -48(%rbp)
	jne	.L140
	movl	$1, %eax
	jmp	.L139
.L140:
	leaq	.LC18(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L141
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L142
	movq	-8(%rbp), %rax
	movl	112(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dh_gen_type_name2id_w_default
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L143
.L142:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movl	$540, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L139
.L143:
	cmpl	$-1, -12(%rbp)
	je	.L141
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 60(%rax)
.L141:
	leaq	.LC10(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L144
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L145
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L145
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ffc_name_to_dh_named_group@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L145
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_named_group_get_uid@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 20(%rdx)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jne	.L144
.L145:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movl	$555, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L139
.L144:
	leaq	.LC19(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L146
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L146
	movl	$0, %eax
	jmp	.L139
.L146:
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L147
	movq	-8(%rbp), %rax
	leaq	76(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L147
	movl	$0, %eax
	jmp	.L139
.L147:
	movl	$1, %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	dh_gen_common_set_params, .-dh_gen_common_set_params
	.type	dh_gen_settable_params, @function
dh_gen_settable_params:
.LFB385:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	dh_gen_settable.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	dh_gen_settable_params, .-dh_gen_settable_params
	.type	dhx_gen_settable_params, @function
dhx_gen_settable_params:
.LFB386:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	dhx_gen_settable.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	dhx_gen_settable_params, .-dhx_gen_settable_params
	.section	.rodata
.LC20:
	.string	"qbits"
.LC21:
	.string	"digest"
.LC22:
	.string	"properties"
.LC23:
	.string	"safeprime-generator"
	.text
	.type	dhx_gen_set_params, @function
dhx_gen_set_params:
.LFB387:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dh_gen_common_set_params
	testl	%eax, %eax
	jne	.L153
	movl	$0, %eax
	jmp	.L154
.L153:
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L155
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L155
	movl	$0, %eax
	jmp	.L154
.L155:
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L156
	movq	-8(%rbp), %rax
	leaq	68(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L156
	movl	$0, %eax
	jmp	.L154
.L156:
	leaq	.LC7(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L157
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L157
	movl	$0, %eax
	jmp	.L154
.L157:
	leaq	.LC9(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L158
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L159
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dh_set_gen_seed
	testl	%eax, %eax
	jne	.L158
.L159:
	movl	$0, %eax
	jmp	.L154
.L158:
	leaq	.LC20(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L160
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L160
	movl	$0, %eax
	jmp	.L154
.L160:
	leaq	.LC21(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L161
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L162
	movl	$0, %eax
	jmp	.L154
.L162:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC17(%rip), %rcx
	movl	$632, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC17(%rip), %rcx
	movl	$633, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L161
	movl	$0, %eax
	jmp	.L154
.L161:
	leaq	.LC22(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L163
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L164
	movl	$0, %eax
	jmp	.L154
.L164:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC17(%rip), %rcx
	movl	$641, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC17(%rip), %rcx
	movl	$642, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L163
	movl	$0, %eax
	jmp	.L154
.L163:
	leaq	.LC23(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L165
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movl	$650, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524556, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L154
.L165:
	movl	$1, %eax
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	dhx_gen_set_params, .-dhx_gen_set_params
	.type	dh_gen_set_params, @function
dh_gen_set_params:
.LFB388:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dh_gen_common_set_params
	testl	%eax, %eax
	jne	.L167
	movl	$0, %eax
	jmp	.L168
.L167:
	leaq	.LC23(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L169
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L169
	movl	$0, %eax
	jmp	.L168
.L169:
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L170
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L170
	leaq	.LC7(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L170
	leaq	.LC9(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L170
	leaq	.LC20(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L170
	leaq	.LC21(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	jne	.L170
	leaq	.LC22(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	je	.L171
.L170:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movl	$677, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L168
.L171:
	movl	$1, %eax
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	dh_gen_set_params, .-dh_gen_set_params
	.section	.rodata
.LC24:
	.string	"potential"
.LC25:
	.string	"iteration"
	.text
	.type	dh_gencb, @function
dh_gencb:
.LFB389:
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
	movq	96(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	dh_gencb, .-dh_gencb
	.section	.rodata
	.align 8
.LC26:
	.string	"gen_type set to unsupported value %d"
	.text
	.type	dh_gen, @function
dh_gen:
.LFB390:
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
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L175
	cmpq	$0, -40(%rbp)
	jne	.L176
.L175:
	movl	$0, %eax
	jmp	.L177
.L176:
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L178
	movq	-40(%rbp), %rax
	movl	$3, 60(%rax)
.L178:
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	js	.L179
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$3, %eax
	jg	.L179
	movl	$1, %eax
	jmp	.L180
.L179:
	movl	$0, %eax
.L180:
	cltq
	testq	%rax, %rax
	jne	.L181
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movl	$721, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	leaq	.LC26(%rip), %rdx
	movl	%eax, %ecx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L177
.L181:
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$3, %eax
	jne	.L182
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L182
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jne	.L183
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edi
	call	ossl_dh_get_named_group_uid_from_size@PLT
	movq	-40(%rbp), %rdx
	movl	%eax, 20(%rdx)
.L183:
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jne	.L184
	movl	$0, %eax
	jmp	.L177
.L184:
	movq	-40(%rbp), %rax
	movl	20(%rax), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_dh_new_by_nid_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L185
	movl	$0, %eax
	jmp	.L177
.L185:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	%rax, -32(%rbp)
	jmp	.L186
.L182:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_dh_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L187
	movl	$0, %eax
	jmp	.L177
.L187:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L188
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_copy@PLT
	testl	%eax, %eax
	je	.L202
.L188:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_set_seed@PLT
	testl	%eax, %eax
	je	.L203
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	$-1, %eax
	je	.L191
	movq	-40(%rbp), %rax
	movl	56(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_set_gindex@PLT
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	$-1, %eax
	je	.L192
	movq	-40(%rbp), %rax
	movl	68(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_set_pcounter@PLT
	jmp	.L192
.L191:
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L192
	movq	-40(%rbp), %rax
	movl	72(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_set_h@PLT
.L192:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L193
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_set_digest@PLT
.L193:
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 104(%rax)
	call	BN_GENCB_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L194
	movq	-56(%rbp), %rdx
	leaq	dh_gencb(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GENCB_set@PLT
.L194:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L186
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L195
	movq	-40(%rbp), %rax
	movl	64(%rax), %edx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_generate_parameters_ex@PLT
	movl	%eax, -4(%rbp)
	jmp	.L196
.L195:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rax
	movl	60(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %r8
	movl	%edi, %edx
	movq	%rax, %rdi
	call	ossl_dh_generate_ffc_parameters@PLT
	movl	%eax, -4(%rbp)
.L196:
	cmpl	$0, -4(%rbp)
	jle	.L204
.L186:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L197
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L205
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L205
	movq	-40(%rbp), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	jle	.L200
	movq	-40(%rbp), %rax
	movl	76(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_set_length@PLT
.L200:
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_enable_flags@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_generate_key@PLT
	testl	%eax, %eax
	jle	.L206
.L197:
	movq	-16(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	DH_clear_flags@PLT
	movq	-40(%rbp), %rax
	movl	112(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	DH_set_flags@PLT
	movl	$1, -4(%rbp)
	jmp	.L189
.L202:
	nop
	jmp	.L189
.L203:
	nop
	jmp	.L189
.L204:
	nop
	jmp	.L189
.L205:
	nop
	jmp	.L189
.L206:
	nop
.L189:
	cmpl	$0, -4(%rbp)
	jg	.L201
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	$0, -16(%rbp)
.L201:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	movq	-16(%rbp), %rax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	dh_gen, .-dh_gen
	.type	dh_gen_cleanup, @function
dh_gen_cleanup:
.LFB391:
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
	je	.L210
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC17(%rip), %rcx
	movl	$814, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC17(%rip), %rcx
	movl	$815, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC17(%rip), %rdx
	movl	$816, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC17(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$817, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L207
.L210:
	nop
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	dh_gen_cleanup, .-dh_gen_cleanup
	.type	dh_load, @function
dh_load:
.LFB392:
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
	je	.L212
	cmpq	$8, -32(%rbp)
	jne	.L212
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L213
.L212:
	movl	$0, %eax
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	dh_load, .-dh_load
	.type	dh_dup, @function
dh_dup:
.LFB393:
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
	je	.L215
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_dh_dup@PLT
	jmp	.L216
.L215:
	movl	$0, %eax
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	dh_dup, .-dh_dup
	.globl	ossl_dh_keymgmt_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dh_keymgmt_functions, @object
	.size	ossl_dh_keymgmt_functions, 352
ossl_dh_keymgmt_functions:
	.long	1
	.zero	4
	.quad	dh_newdata
	.long	2
	.zero	4
	.quad	dh_gen_init
	.long	3
	.zero	4
	.quad	dh_gen_set_template
	.long	4
	.zero	4
	.quad	dh_gen_set_params
	.long	5
	.zero	4
	.quad	dh_gen_settable_params
	.long	6
	.zero	4
	.quad	dh_gen
	.long	7
	.zero	4
	.quad	dh_gen_cleanup
	.long	8
	.zero	4
	.quad	dh_load
	.long	10
	.zero	4
	.quad	dh_freedata
	.long	11
	.zero	4
	.quad	dh_get_params
	.long	12
	.zero	4
	.quad	dh_gettable_params
	.long	13
	.zero	4
	.quad	dh_set_params
	.long	14
	.zero	4
	.quad	dh_settable_params
	.long	21
	.zero	4
	.quad	dh_has
	.long	23
	.zero	4
	.quad	dh_match
	.long	22
	.zero	4
	.quad	dh_validate
	.long	40
	.zero	4
	.quad	dh_import
	.long	41
	.zero	4
	.quad	dh_import_types
	.long	42
	.zero	4
	.quad	dh_export
	.long	43
	.zero	4
	.quad	dh_export_types
	.long	44
	.zero	4
	.quad	dh_dup
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC27:
	.string	"DH"
	.text
	.type	dhx_query_operation_name, @function
dhx_query_operation_name:
.LFB394:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	leaq	.LC27(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE394:
	.size	dhx_query_operation_name, .-dhx_query_operation_name
	.globl	ossl_dhx_keymgmt_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_keymgmt_functions, @object
	.size	ossl_dhx_keymgmt_functions, 368
ossl_dhx_keymgmt_functions:
	.long	1
	.zero	4
	.quad	dhx_newdata
	.long	2
	.zero	4
	.quad	dhx_gen_init
	.long	3
	.zero	4
	.quad	dh_gen_set_template
	.long	4
	.zero	4
	.quad	dhx_gen_set_params
	.long	5
	.zero	4
	.quad	dhx_gen_settable_params
	.long	6
	.zero	4
	.quad	dh_gen
	.long	7
	.zero	4
	.quad	dh_gen_cleanup
	.long	8
	.zero	4
	.quad	dh_load
	.long	10
	.zero	4
	.quad	dh_freedata
	.long	11
	.zero	4
	.quad	dh_get_params
	.long	12
	.zero	4
	.quad	dh_gettable_params
	.long	13
	.zero	4
	.quad	dh_set_params
	.long	14
	.zero	4
	.quad	dh_settable_params
	.long	21
	.zero	4
	.quad	dh_has
	.long	23
	.zero	4
	.quad	dh_match
	.long	22
	.zero	4
	.quad	dh_validate
	.long	40
	.zero	4
	.quad	dh_import
	.long	41
	.zero	4
	.quad	dh_import_types
	.long	42
	.zero	4
	.quad	dh_export
	.long	43
	.zero	4
	.quad	dh_export_types
	.long	20
	.zero	4
	.quad	dhx_query_operation_name
	.long	44
	.zero	4
	.quad	dh_dup
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 25
__func__.5:
	.string	"dh_gen_common_set_params"
	.section	.data.rel.ro.local
	.align 32
	.type	dh_gen_settable.4, @object
	.size	dh_gen_settable.4, 240
dh_gen_settable.4:
	.quad	.LC18
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC23
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
	.align 32
	.type	dhx_gen_settable.3, @object
	.size	dhx_gen_settable.3, 480
dhx_gen_settable.3:
	.quad	.LC18
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC20
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC21
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC9
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC6
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC7
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
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 19
__func__.2:
	.string	"dhx_gen_set_params"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"dh_gen_set_params"
	.type	__func__.0, @object
	.size	__func__.0, 7
__func__.0:
	.string	"dh_gen"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
