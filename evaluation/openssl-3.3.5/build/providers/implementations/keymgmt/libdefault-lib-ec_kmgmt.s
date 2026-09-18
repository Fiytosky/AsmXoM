	.file	"ec_kmgmt.c"
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
	.string	"ECDH"
.LC1:
	.string	"ECDSA"
	.text
	.type	ec_query_operation_name, @function
ec_query_operation_name:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$11, -4(%rbp)
	je	.L6
	cmpl	$12, -4(%rbp)
	je	.L7
	jmp	.L10
.L6:
	leaq	.LC0(%rip), %rax
	jmp	.L9
.L7:
	leaq	.LC1(%rip), %rax
	jmp	.L9
.L10:
	movl	$0, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ec_query_operation_name, .-ec_query_operation_name
	.section	.rodata
.LC2:
	.string	"SM2"
	.text
	.type	sm2_query_operation_name, @function
sm2_query_operation_name:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$12, -4(%rbp)
	jne	.L12
	leaq	.LC2(%rip), %rax
	jmp	.L13
.L12:
	movl	$0, %eax
.L13:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	sm2_query_operation_name, .-sm2_query_operation_name
	.section	.rodata
.LC3:
	.string	"pub"
.LC4:
	.string	"qx"
.LC5:
	.string	"qy"
.LC6:
	.string	"priv"
	.text
	.type	key_to_params, @function
key_to_params:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	%ecx, -140(%rbp)
	movq	%r8, -152(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L15
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L16
.L15:
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L18
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L32
	cmpq	$0, -128(%rbp)
	jne	.L21
	leaq	.LC3(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC4(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -56(%rbp)
.L21:
	cmpq	$0, -40(%rbp)
	jne	.L22
	cmpq	$0, -128(%rbp)
	je	.L23
.L22:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_conv_form@PLT
	movl	%eax, -92(%rbp)
	movq	-32(%rbp), %rdi
	movq	-152(%rbp), %rcx
	movl	-92(%rbp), %edx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_point2buf@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L33
	movq	-152(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rcx
	leaq	.LC3(%rip), %rdi
	movq	-40(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_octet_string@PLT
	testl	%eax, %eax
	je	.L33
.L23:
	cmpq	$0, -48(%rbp)
	jne	.L25
	cmpq	$0, -56(%rbp)
	je	.L18
.L25:
	cmpq	$0, -48(%rbp)
	je	.L26
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L34
.L26:
	cmpq	$0, -56(%rbp)
	je	.L27
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L35
.L27:
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L36
	cmpq	$0, -48(%rbp)
	je	.L29
	movq	-8(%rbp), %rdx
	leaq	.LC4(%rip), %rdi
	movq	-48(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	je	.L37
.L29:
	cmpq	$0, -56(%rbp)
	je	.L18
	movq	-16(%rbp), %rdx
	leaq	.LC5(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	je	.L38
.L18:
	cmpq	$0, -64(%rbp)
	je	.L30
	cmpl	$0, -140(%rbp)
	je	.L30
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_order_bits@PLT
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jle	.L39
	movl	-96(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	.LC6(%rip), %rdi
	movq	-136(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn_pad@PLT
	testl	%eax, %eax
	je	.L40
.L30:
	movl	$1, -20(%rbp)
	jmp	.L20
.L32:
	nop
	jmp	.L20
.L33:
	nop
	jmp	.L20
.L34:
	nop
	jmp	.L20
.L35:
	nop
	jmp	.L20
.L36:
	nop
	jmp	.L20
.L37:
	nop
	jmp	.L20
.L38:
	nop
	jmp	.L20
.L39:
	nop
	jmp	.L20
.L40:
	nop
.L20:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	key_to_params, .-key_to_params
	.section	.rodata
.LC7:
	.string	"point-format"
.LC8:
	.string	"group-check"
.LC9:
	.string	"include-public"
.LC10:
	.string	"use-cofactor-flag"
	.text
	.type	otherparams_to_params, @function
otherparams_to_params:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_conv_form@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_ec_pt_format_id2name@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-16(%rbp), %rdx
	leaq	.LC7(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L43
.L44:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	andl	$24576, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	ossl_ec_check_group_type_id2name@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L45
	movq	-16(%rbp), %rdx
	leaq	.LC8(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L43
.L45:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_enc_flags@PLT
	andl	$2, %eax
	testl	%eax, %eax
	je	.L46
	leaq	.LC9(%rip), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L43
.L46:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	andl	$4096, %eax
	shrl	$12, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	leaq	.LC10(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_int@PLT
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	otherparams_to_params, .-otherparams_to_params
	.type	ec_newdata, @function
ec_newdata:
.LFB406:
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
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_KEY_new_ex@PLT
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ec_newdata, .-ec_newdata
	.type	sm2_newdata, @function
sm2_newdata:
.LFB407:
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
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movl	$1172, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_KEY_new_by_curve_name_ex@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	sm2_newdata, .-sm2_newdata
	.type	ec_freedata, @function
ec_freedata:
.LFB408:
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
	call	EC_KEY_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ec_freedata, .-ec_freedata
	.type	ec_has, @function
ec_has:
.LFB409:
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
	je	.L55
	cmpq	$0, -16(%rbp)
	jne	.L56
.L55:
	movl	$0, %eax
	jmp	.L57
.L56:
	movl	-28(%rbp), %eax
	andl	$135, %eax
	testl	%eax, %eax
	jne	.L58
	movl	$1, %eax
	jmp	.L57
.L58:
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L59
	cmpl	$0, -4(%rbp)
	je	.L60
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	testq	%rax, %rax
	je	.L60
	movl	$1, %eax
	jmp	.L61
.L60:
	movl	$0, %eax
.L61:
	movl	%eax, -4(%rbp)
.L59:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L62
	cmpl	$0, -4(%rbp)
	je	.L63
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	testq	%rax, %rax
	je	.L63
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	movl	%eax, -4(%rbp)
.L62:
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L65
	cmpl	$0, -4(%rbp)
	je	.L66
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	testq	%rax, %rax
	je	.L66
	movl	$1, %eax
	jmp	.L67
.L66:
	movl	$0, %eax
.L67:
	movl	%eax, -4(%rbp)
.L65:
	movl	-4(%rbp), %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ec_has, .-ec_has
	.type	ec_match, @function
ec_match:
.LFB410:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L71
	movl	$0, %eax
	jmp	.L70
.L71:
	movl	-100(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L72
	cmpl	$0, -4(%rbp)
	je	.L73
	cmpq	$0, -32(%rbp)
	je	.L73
	cmpq	$0, -40(%rbp)
	je	.L73
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_cmp@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$1, %eax
	jmp	.L74
.L73:
	movl	$0, %eax
.L74:
	movl	%eax, -4(%rbp)
.L72:
	movl	-100(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L75
	movl	$0, -8(%rbp)
	movl	-100(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L76
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L76
	cmpq	$0, -64(%rbp)
	je	.L76
	cmpl	$0, -4(%rbp)
	je	.L77
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$1, %eax
	jmp	.L78
.L77:
	movl	$0, %eax
.L78:
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
.L76:
	cmpl	$0, -8(%rbp)
	jne	.L79
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L79
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L79
	cmpq	$0, -80(%rbp)
	je	.L79
	cmpl	$0, -4(%rbp)
	je	.L80
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$1, %eax
	jmp	.L81
.L80:
	movl	$0, %eax
.L81:
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
.L79:
	cmpl	$0, -4(%rbp)
	je	.L82
	cmpl	$0, -8(%rbp)
	je	.L82
	movl	$1, %eax
	jmp	.L83
.L82:
	movl	$0, %eax
.L83:
	movl	%eax, -4(%rbp)
.L75:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ec_match, .-ec_match
	.type	common_check_sm2, @function
common_check_sm2:
.LFB411:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L85
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	cmpl	$1172, %eax
	sete	%al
	movzbl	%al, %eax
	cmpl	%eax, -28(%rbp)
	je	.L86
.L85:
	movl	$0, %eax
	jmp	.L87
.L86:
	movl	$1, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	common_check_sm2, .-common_check_sm2
	.type	common_import, @function
common_import:
.LFB412:
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
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L89
	cmpq	$0, -16(%rbp)
	jne	.L90
.L89:
	movl	$0, %eax
	jmp	.L91
.L90:
	movl	-44(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L92
	movl	$0, %eax
	jmp	.L91
.L92:
	cmpl	$0, -4(%rbp)
	je	.L93
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_group_fromdata@PLT
	testl	%eax, %eax
	je	.L93
	movl	$1, %eax
	jmp	.L94
.L93:
	movl	$0, %eax
.L94:
	movl	%eax, -4(%rbp)
	movl	-48(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	common_check_sm2
	testl	%eax, %eax
	jne	.L95
	movl	$0, %eax
	jmp	.L91
.L95:
	movl	-44(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L96
	movl	-44(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L97
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_fromdata@PLT
	testl	%eax, %eax
	je	.L97
	movl	$1, %eax
	jmp	.L98
.L97:
	movl	$0, %eax
.L98:
	movl	%eax, -4(%rbp)
.L96:
	movl	-44(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L99
	cmpl	$0, -4(%rbp)
	je	.L100
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_otherparams_fromdata@PLT
	testl	%eax, %eax
	je	.L100
	movl	$1, %eax
	jmp	.L101
.L100:
	movl	$0, %eax
.L101:
	movl	%eax, -4(%rbp)
.L99:
	movl	-4(%rbp), %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	common_import, .-common_import
	.type	ec_import, @function
ec_import:
.LFB413:
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
	call	common_import
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ec_import, .-ec_import
	.type	sm2_import, @function
sm2_import:
.LFB414:
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
	movl	$1, %ecx
	movq	%rax, %rdi
	call	common_import
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	sm2_import, .-sm2_import
	.section	.rodata
	.align 8
.LC11:
	.string	"../providers/implementations/keymgmt/ec_kmgmt.c"
	.text
	.type	ec_export, @function
ec_export:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L107
	cmpq	$0, -40(%rbp)
	jne	.L108
.L107:
	movl	$0, %eax
	jmp	.L126
.L108:
	movl	-92(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L110
	movl	$0, %eax
	jmp	.L126
.L110:
	movl	-92(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L111
	movl	-92(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L111
	movl	$0, %eax
	jmp	.L126
.L111:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L112
	movl	$0, %eax
	jmp	.L126
.L112:
	movl	-92(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L113
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L114
	movl	$0, -28(%rbp)
	jmp	.L115
.L114:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	cmpl	$0, -28(%rbp)
	je	.L116
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get0_propq@PLT
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rdi
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	leaq	-80(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	call	ossl_ec_group_todata@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L116
	movl	$1, %eax
	jmp	.L117
.L116:
	movl	$0, %eax
.L117:
	movl	%eax, -28(%rbp)
.L113:
	movl	-92(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L118
	movl	-92(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L119
	leaq	-72(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	key_to_params
	testl	%eax, %eax
	je	.L119
	movl	$1, %eax
	jmp	.L120
.L119:
	movl	$0, %eax
.L120:
	movl	%eax, -28(%rbp)
.L118:
	movl	-92(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L121
	cmpl	$0, -28(%rbp)
	je	.L122
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	otherparams_to_params
	testl	%eax, %eax
	je	.L122
	movl	$1, %eax
	jmp	.L123
.L122:
	movl	$0, %eax
.L123:
	movl	%eax, -28(%rbp)
.L121:
	cmpl	$0, -28(%rbp)
	je	.L124
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L125
.L124:
	movl	$0, -28(%rbp)
	jmp	.L115
.L125:
	movq	-112(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
.L115:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-72(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movl	$516, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movl	$517, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-28(%rbp), %eax
.L126:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ec_export, .-ec_export
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ec_private_key_types, @object
	.size	ec_private_key_types, 80
ec_private_key_types:
	.quad	.LC6
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
	.type	ec_public_key_types, @object
	.size	ec_public_key_types, 80
ec_public_key_types:
	.quad	.LC3
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
	.type	ec_key_types, @object
	.size	ec_key_types, 120
ec_key_types:
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
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
	.section	.rodata
.LC12:
	.string	"group"
.LC13:
	.string	"encoding"
.LC14:
	.string	"field-type"
.LC15:
	.string	"p"
.LC16:
	.string	"a"
.LC17:
	.string	"b"
.LC18:
	.string	"generator"
.LC19:
	.string	"order"
.LC20:
	.string	"cofactor"
.LC21:
	.string	"seed"
.LC22:
	.string	"decoded-from-explicit"
	.section	.data.rel.ro.local
	.align 32
	.type	ec_dom_parameters_types, @object
	.size	ec_dom_parameters_types, 520
ec_dom_parameters_types:
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
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
	.type	ec_5_types, @object
	.size	ec_5_types, 560
ec_5_types:
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
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
	.type	ec_6_types, @object
	.size	ec_6_types, 560
ec_6_types:
	.quad	.LC3
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
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
	.type	ec_key_domp_types, @object
	.size	ec_key_domp_types, 600
ec_key_domp_types:
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
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
	.type	ec_other_parameters_types, @object
	.size	ec_other_parameters_types, 120
ec_other_parameters_types:
	.quad	.LC10
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC9
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
	.type	ec_9_types, @object
	.size	ec_9_types, 160
ec_9_types:
	.quad	.LC6
	.long	2
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
	.quad	.LC9
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
	.type	ec_10_types, @object
	.size	ec_10_types, 160
ec_10_types:
	.quad	.LC3
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
	.quad	.LC9
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
	.type	ec_11_types, @object
	.size	ec_11_types, 200
ec_11_types:
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
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
	.quad	.LC9
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
	.type	ec_all_parameters_types, @object
	.size	ec_all_parameters_types, 600
ec_all_parameters_types:
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
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
	.quad	.LC9
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
	.type	ec_13_types, @object
	.size	ec_13_types, 640
ec_13_types:
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
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
	.quad	.LC9
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
	.type	ec_14_types, @object
	.size	ec_14_types, 640
ec_14_types:
	.quad	.LC3
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
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
	.quad	.LC9
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
	.type	ec_all_types, @object
	.size	ec_all_types, 680
ec_all_types:
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
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
	.quad	.LC9
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
	.section	.data.rel.local,"aw"
	.align 32
	.type	ec_types, @object
	.size	ec_types, 128
ec_types:
	.quad	0
	.quad	ec_private_key_types
	.quad	ec_public_key_types
	.quad	ec_key_types
	.quad	ec_dom_parameters_types
	.quad	ec_5_types
	.quad	ec_6_types
	.quad	ec_key_domp_types
	.quad	ec_other_parameters_types
	.quad	ec_9_types
	.quad	ec_10_types
	.quad	ec_11_types
	.quad	ec_all_parameters_types
	.quad	ec_13_types
	.quad	ec_14_types
	.quad	ec_all_types
	.text
	.type	ec_imexport_types, @function
ec_imexport_types:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L128
	addl	$1, -4(%rbp)
.L128:
	movl	-20(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L129
	addl	$2, -4(%rbp)
.L129:
	movl	-20(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L130
	addl	$4, -4(%rbp)
.L130:
	movl	-20(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L131
	addl	$8, -4(%rbp)
.L131:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	ec_types(%rip), %rax
	movq	(%rdx,%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ec_imexport_types, .-ec_imexport_types
	.type	ec_import_types, @function
ec_import_types:
.LFB417:
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
	call	ec_imexport_types
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ec_import_types, .-ec_import_types
	.type	ec_export_types, @function
ec_export_types:
.LFB418:
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
	call	ec_imexport_types
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ec_export_types, .-ec_export_types
	.section	.rodata
.LC23:
	.string	"tpBasis"
.LC24:
	.string	"ppBasis"
.LC25:
	.string	"m"
.LC26:
	.string	"basis-type"
.LC27:
	.string	"tp"
.LC28:
	.string	"k1"
.LC29:
	.string	"k2"
.LC30:
	.string	"k3"
	.text
	.type	ec_get_ecm_params, @function
ec_get_ecm_params:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	movl	%eax, -20(%rbp)
	cmpl	$407, -20(%rbp)
	je	.L138
	movl	$1, %eax
	jmp	.L150
.L138:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_basis_type@PLT
	movl	%eax, -24(%rbp)
	cmpl	$682, -24(%rbp)
	jne	.L140
	leaq	.LC23(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L141
.L140:
	cmpl	$683, -24(%rbp)
	jne	.L151
	leaq	.LC24(%rip), %rax
	movq	%rax, -16(%rbp)
.L141:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	leaq	.LC25(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	je	.L152
	movq	-16(%rbp), %rdx
	leaq	.LC26(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	je	.L152
	cmpl	$682, -24(%rbp)
	jne	.L146
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_trinomial_basis@PLT
	testl	%eax, %eax
	je	.L153
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC27(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	jne	.L148
	jmp	.L153
.L146:
	leaq	-40(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_pentanomial_basis@PLT
	testl	%eax, %eax
	je	.L154
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC28(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	je	.L154
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC29(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	je	.L154
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC30(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	je	.L154
.L148:
	movl	$1, -4(%rbp)
	jmp	.L143
.L151:
	nop
	jmp	.L143
.L152:
	nop
	jmp	.L143
.L153:
	nop
	jmp	.L143
.L154:
	nop
.L143:
	movl	-4(%rbp), %eax
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ec_get_ecm_params, .-ec_get_ecm_params
	.section	.rodata
.LC31:
	.string	"max-size"
.LC32:
	.string	"bits"
.LC33:
	.string	"security-bits"
.LC34:
	.string	"default-digest"
.LC35:
	.string	"SHA256"
.LC36:
	.string	"SM3"
.LC37:
	.string	"encoded-pub-key"
	.text
	.type	common_get_params, @function
common_get_params:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movl	$0, -4(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L156
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$649, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$177, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L178
.L156:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get0_propq@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L158
	movl	$0, %eax
	jmp	.L178
.L158:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	leaq	.LC31(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L159
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_size@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	je	.L179
.L159:
	leaq	.LC32(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L161
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_order_bits@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	je	.L180
.L161:
	leaq	.LC33(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L162
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_order_bits@PLT
	movl	%eax, -60(%rbp)
	cmpl	$511, -60(%rbp)
	jle	.L163
	movl	$256, -8(%rbp)
	jmp	.L164
.L163:
	cmpl	$383, -60(%rbp)
	jle	.L165
	movl	$192, -8(%rbp)
	jmp	.L164
.L165:
	cmpl	$255, -60(%rbp)
	jle	.L166
	movl	$128, -8(%rbp)
	jmp	.L164
.L166:
	cmpl	$223, -60(%rbp)
	jle	.L167
	movl	$112, -8(%rbp)
	jmp	.L164
.L167:
	cmpl	$159, -60(%rbp)
	jle	.L168
	movl	$80, -8(%rbp)
	jmp	.L164
.L168:
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -8(%rbp)
.L164:
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	je	.L181
.L162:
	leaq	.LC22(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L169
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_decoded_from_explicit_params@PLT
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	js	.L182
	movl	-64(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	je	.L182
.L169:
	cmpl	$0, -116(%rbp)
	jne	.L171
	leaq	.LC34(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L172
	leaq	.LC35(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L172
	jmp	.L160
.L171:
	leaq	.LC34(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L172
	leaq	.LC36(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	je	.L183
.L172:
	cmpl	$0, -116(%rbp)
	jne	.L173
	leaq	.LC10(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L173
	movl	$0, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	andl	$4096, %eax
	shrl	$12, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	je	.L184
.L173:
	leaq	.LC37(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L174
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L175
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$743, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L160
.L175:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L185
.L174:
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_get_ecm_params
	testl	%eax, %eax
	je	.L176
	movq	-32(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	leaq	-96(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_ec_group_todata@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L176
	leaq	-88(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	key_to_params
	testl	%eax, %eax
	je	.L176
	movq	-112(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	otherparams_to_params
	testl	%eax, %eax
	je	.L176
	movl	$1, %eax
	jmp	.L177
.L176:
	movl	$0, %eax
.L177:
	movl	%eax, -4(%rbp)
	jmp	.L160
.L179:
	nop
	jmp	.L160
.L180:
	nop
	jmp	.L160
.L181:
	nop
	jmp	.L160
.L182:
	nop
	jmp	.L160
.L183:
	nop
	jmp	.L160
.L184:
	nop
	jmp	.L160
.L185:
	nop
.L160:
	movq	-96(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movl	$759, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movl	$760, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	common_get_params, .-common_get_params
	.type	ec_get_params, @function
ec_get_params:
.LFB421:
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
	call	common_get_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	ec_get_params, .-ec_get_params
	.section	.data.rel.ro.local
	.align 32
	.type	ec_known_gettable_params, @object
	.size	ec_known_gettable_params, 1240
ec_known_gettable_params:
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
	.quad	.LC31
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC34
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC37
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC25
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC26
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC27
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC28
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC29
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC30
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC3
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
	.quad	.LC10
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC9
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
	.text
	.type	ec_gettable_params, @function
ec_gettable_params:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ec_known_gettable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	ec_gettable_params, .-ec_gettable_params
	.section	.data.rel.ro.local
	.align 32
	.type	ec_known_settable_params, @object
	.size	ec_known_settable_params, 320
ec_known_settable_params:
	.quad	.LC10
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC37
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC21
	.long	5
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
	.quad	.LC8
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
	.text
	.type	ec_settable_params, @function
ec_settable_params:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	ec_known_settable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	ec_settable_params, .-ec_settable_params
	.type	ec_set_params, @function
ec_set_params:
.LFB424:
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
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L193
	movl	$0, %eax
	jmp	.L194
.L193:
	cmpq	$0, -48(%rbp)
	jne	.L195
	movl	$1, %eax
	jmp	.L194
.L195:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_ec_group_set_params@PLT
	testl	%eax, %eax
	jne	.L196
	movl	$0, %eax
	jmp	.L194
.L196:
	leaq	.LC37(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L197
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L198
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L198
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_oct2key@PLT
	testl	%eax, %eax
	jne	.L199
.L198:
	movl	$0, -4(%rbp)
.L199:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	cmpl	$0, -4(%rbp)
	jne	.L197
	movl	$0, %eax
	jmp	.L194
.L197:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_otherparams_fromdata@PLT
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	ec_set_params, .-ec_set_params
	.type	sm2_get_params, @function
sm2_get_params:
.LFB425:
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
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	common_get_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	sm2_get_params, .-sm2_get_params
	.section	.data.rel.ro.local
	.align 32
	.type	sm2_known_gettable_params, @object
	.size	sm2_known_gettable_params, 920
sm2_known_gettable_params:
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
	.quad	.LC31
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC34
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC37
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC3
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC5
	.long	5
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
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	sm2_gettable_params, @function
sm2_gettable_params:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	sm2_known_gettable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	sm2_gettable_params, .-sm2_gettable_params
	.section	.data.rel.ro.local
	.align 32
	.type	sm2_known_settable_params, @object
	.size	sm2_known_settable_params, 80
sm2_known_settable_params:
	.quad	.LC37
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
	.type	sm2_settable_params, @function
sm2_settable_params:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	sm2_known_settable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	sm2_settable_params, .-sm2_settable_params
	.type	sm2_validate, @function
sm2_validate:
.LFB428:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	movq	$0, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L207
	movl	$0, %eax
	jmp	.L208
.L207:
	movl	-44(%rbp), %eax
	andl	$135, %eax
	testl	%eax, %eax
	jne	.L209
	movl	$1, %eax
	jmp	.L208
.L209:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L210
	movl	$0, %eax
	jmp	.L208
.L210:
	movl	-44(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L211
	cmpl	$0, -4(%rbp)
	je	.L212
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EC_GROUP_check@PLT
	testl	%eax, %eax
	je	.L212
	movl	$1, %eax
	jmp	.L213
.L212:
	movl	$0, %eax
.L213:
	movl	%eax, -4(%rbp)
.L211:
	movl	-44(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L214
	cmpl	$1, -48(%rbp)
	jne	.L215
	cmpl	$0, -4(%rbp)
	je	.L216
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_public_check_quick@PLT
	testl	%eax, %eax
	je	.L216
	movl	$1, %eax
	jmp	.L217
.L216:
	movl	$0, %eax
.L217:
	movl	%eax, -4(%rbp)
	jmp	.L214
.L215:
	cmpl	$0, -4(%rbp)
	je	.L218
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_public_check@PLT
	testl	%eax, %eax
	je	.L218
	movl	$1, %eax
	jmp	.L219
.L218:
	movl	$0, %eax
.L219:
	movl	%eax, -4(%rbp)
.L214:
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L220
	cmpl	$0, -4(%rbp)
	je	.L221
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sm2_key_private_check@PLT
	testl	%eax, %eax
	je	.L221
	movl	$1, %eax
	jmp	.L222
.L221:
	movl	$0, %eax
.L222:
	movl	%eax, -4(%rbp)
.L220:
	movl	-44(%rbp), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.L223
	cmpl	$0, -4(%rbp)
	je	.L224
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_pairwise_check@PLT
	testl	%eax, %eax
	je	.L224
	movl	$1, %eax
	jmp	.L225
.L224:
	movl	$0, %eax
.L225:
	movl	%eax, -4(%rbp)
.L223:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	sm2_validate, .-sm2_validate
	.type	ec_validate, @function
ec_validate:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -20(%rbp)
	movq	$0, -40(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L227
	movl	$0, %eax
	jmp	.L228
.L227:
	movl	-60(%rbp), %eax
	andl	$135, %eax
	testl	%eax, %eax
	jne	.L229
	movl	$1, %eax
	jmp	.L228
.L229:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L230
	movl	$0, %eax
	jmp	.L228
.L230:
	movl	-60(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L231
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L232
	cmpl	$0, -20(%rbp)
	je	.L233
	movl	-44(%rbp), %eax
	andl	$16384, %eax
	shrl	$14, %eax
	andl	$1, %eax
	movzbl	%al, %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	%ebx, %esi
	movq	%rcx, %rdi
	call	EC_GROUP_check_named_curve@PLT
	testl	%eax, %eax
	jle	.L233
	movl	$1, %eax
	jmp	.L234
.L233:
	movl	$0, %eax
.L234:
	movl	%eax, -20(%rbp)
	jmp	.L231
.L232:
	cmpl	$0, -20(%rbp)
	je	.L235
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EC_GROUP_check@PLT
	testl	%eax, %eax
	je	.L235
	movl	$1, %eax
	jmp	.L236
.L235:
	movl	$0, %eax
.L236:
	movl	%eax, -20(%rbp)
.L231:
	movl	-60(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L237
	cmpl	$1, -64(%rbp)
	jne	.L238
	cmpl	$0, -20(%rbp)
	je	.L239
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_public_check_quick@PLT
	testl	%eax, %eax
	je	.L239
	movl	$1, %eax
	jmp	.L240
.L239:
	movl	$0, %eax
.L240:
	movl	%eax, -20(%rbp)
	jmp	.L237
.L238:
	cmpl	$0, -20(%rbp)
	je	.L241
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_public_check@PLT
	testl	%eax, %eax
	je	.L241
	movl	$1, %eax
	jmp	.L242
.L241:
	movl	$0, %eax
.L242:
	movl	%eax, -20(%rbp)
.L237:
	movl	-60(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L243
	cmpl	$0, -20(%rbp)
	je	.L244
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_private_check@PLT
	testl	%eax, %eax
	je	.L244
	movl	$1, %eax
	jmp	.L245
.L244:
	movl	$0, %eax
.L245:
	movl	%eax, -20(%rbp)
.L243:
	movl	-60(%rbp), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.L246
	cmpl	$0, -20(%rbp)
	je	.L247
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_pairwise_check@PLT
	testl	%eax, %eax
	je	.L247
	movl	$1, %eax
	jmp	.L248
.L247:
	movl	$0, %eax
.L248:
	movl	%eax, -20(%rbp)
.L246:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
.L228:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	ec_validate, .-ec_validate
	.type	ec_gen_init, @function
ec_gen_init:
.LFB430:
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
	je	.L250
	movl	-28(%rbp), %eax
	andl	$135, %eax
	testl	%eax, %eax
	jne	.L251
.L250:
	movl	$0, %eax
	jmp	.L252
.L251:
	leaq	.LC11(%rip), %rax
	movl	$1005, %edx
	movq	%rax, %rsi
	movl	$152, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L253
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 120(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_gen_set_params
	testl	%eax, %eax
	jne	.L253
	leaq	.LC11(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1010, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L253:
	movq	-8(%rbp), %rax
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	ec_gen_init, .-ec_gen_init
	.section	.rodata
.LC38:
	.string	"sm2"
	.text
	.type	sm2_gen_init, @function
sm2_gen_init:
.LFB431:
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
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ec_gen_init
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L255
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L256
	movq	-8(%rbp), %rax
	jmp	.L257
.L256:
	leaq	.LC11(%rip), %rcx
	leaq	.LC38(%rip), %rax
	movl	$1027, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L258
	movq	-8(%rbp), %rax
	jmp	.L257
.L258:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ec_gen_cleanup
.L255:
	movl	$0, %eax
.L257:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	sm2_gen_init, .-sm2_gen_init
	.type	ec_gen_set_group, @function
ec_gen_set_group:
.LFB432:
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
	movq	%rax, %rdi
	call	EC_GROUP_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L260
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$1043, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L261
.L260:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movl	$1, %eax
.L261:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	ec_gen_set_group, .-ec_gen_set_group
	.type	ec_gen_set_template, @function
ec_gen_set_template:
.LFB433:
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
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L263
	cmpq	$0, -8(%rbp)
	je	.L263
	cmpq	$0, -16(%rbp)
	jne	.L264
.L263:
	movl	$0, %eax
	jmp	.L265
.L264:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L266
	movl	$0, %eax
	jmp	.L265
.L266:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_gen_set_group
.L265:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	ec_gen_set_template, .-ec_gen_set_template
	.section	.rodata
.LC39:
	.string	"dhkem-ikm"
	.text
	.type	ec_gen_set_params, @function
ec_gen_set_params:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	leaq	.LC10(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L268
	movq	-16(%rbp), %rax
	leaq	124(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L302
.L268:
	leaq	.LC12(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L270
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L303
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L304
.L270:
	leaq	.LC14(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L272
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L305
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L306
.L272:
	leaq	.LC13(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L274
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L307
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1112, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1112, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L308
.L274:
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L276
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L309
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1113, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1113, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L310
.L276:
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L278
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L311
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L312
.L278:
	leaq	.LC15(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L280
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L281
	call	BN_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 48(%rdx)
.L281:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L313
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L313
.L280:
	leaq	.LC16(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L283
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L284
	call	BN_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 56(%rdx)
.L284:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L314
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L314
.L283:
	leaq	.LC17(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L286
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L287
	call	BN_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 64(%rdx)
.L287:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L315
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L315
.L286:
	leaq	.LC19(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L289
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L290
	call	BN_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 72(%rdx)
.L290:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L316
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L316
.L289:
	leaq	.LC20(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L292
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L293
	call	BN_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 80(%rdx)
.L293:
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L317
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L317
.L292:
	leaq	.LC21(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L295
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L318
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1122, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movl	$1122, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L319
.L295:
	leaq	.LC18(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L297
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L320
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movl	$1123, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L321
.L297:
	leaq	.LC39(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L299
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L322
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1126, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movl	$1126, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 136(%rdx)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L323
.L299:
	movl	$1, -4(%rbp)
	jmp	.L269
.L302:
	nop
	jmp	.L269
.L303:
	nop
	jmp	.L269
.L304:
	nop
	jmp	.L269
.L305:
	nop
	jmp	.L269
.L306:
	nop
	jmp	.L269
.L307:
	nop
	jmp	.L269
.L308:
	nop
	jmp	.L269
.L309:
	nop
	jmp	.L269
.L310:
	nop
	jmp	.L269
.L311:
	nop
	jmp	.L269
.L312:
	nop
	jmp	.L269
.L313:
	nop
	jmp	.L269
.L314:
	nop
	jmp	.L269
.L315:
	nop
	jmp	.L269
.L316:
	nop
	jmp	.L269
.L317:
	nop
	jmp	.L269
.L318:
	nop
	jmp	.L269
.L319:
	nop
	jmp	.L269
.L320:
	nop
	jmp	.L269
.L321:
	nop
	jmp	.L269
.L322:
	nop
	jmp	.L269
.L323:
	nop
.L269:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	ec_gen_set_params, .-ec_gen_set_params
	.type	ec_gen_set_group_from_params, @function
ec_gen_set_group_from_params:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L325
	movl	$0, %eax
	jmp	.L326
.L325:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L327
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	.LC13(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	je	.L342
.L327:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L329
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	je	.L343
.L329:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L330
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC12(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	jne	.L344
	jmp	.L328
.L330:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L345
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	leaq	.LC14(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	je	.L346
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L347
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L347
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L347
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L347
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	leaq	.LC15(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L347
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	leaq	.LC16(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L347
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	leaq	.LC17(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L347
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	leaq	.LC19(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L347
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L337
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	.LC20(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L348
.L337:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L338
	movq	-40(%rbp), %rax
	movq	112(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	96(%rax), %rdx
	leaq	.LC21(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	je	.L349
.L338:
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L350
	movq	-40(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	leaq	.LC18(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	je	.L350
	jmp	.L332
.L344:
	nop
.L332:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L351
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_new_from_params@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L352
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movl	$1, -4(%rbp)
	jmp	.L328
.L342:
	nop
	jmp	.L328
.L343:
	nop
	jmp	.L328
.L345:
	nop
	jmp	.L328
.L346:
	nop
	jmp	.L328
.L347:
	nop
	jmp	.L328
.L348:
	nop
	jmp	.L328
.L349:
	nop
	jmp	.L328
.L350:
	nop
	jmp	.L328
.L351:
	nop
	jmp	.L328
.L352:
	nop
.L328:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-4(%rbp), %eax
.L326:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	ec_gen_set_group_from_params, .-ec_gen_set_group_from_params
	.type	ec_gen_settable_params, @function
ec_gen_settable_params:
.LFB436:
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
.LFE436:
	.size	ec_gen_settable_params, .-ec_gen_settable_params
	.type	ec_gen_assign_group, @function
ec_gen_assign_group:
.LFB437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L356
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$1238, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$177, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L357
.L356:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
.L357:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	ec_gen_assign_group, .-ec_gen_assign_group
	.type	ec_gen, @function
ec_gen:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L359
	cmpq	$0, -16(%rbp)
	je	.L359
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_KEY_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L360
.L359:
	movl	$0, %eax
	jmp	.L361
.L360:
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L362
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ec_gen_set_group_from_params
	testl	%eax, %eax
	jne	.L363
	jmp	.L364
.L362:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L365
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ec_encoding_name2id@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L380
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
.L365:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L363
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ec_pt_format_name2id@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	js	.L381
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_point_conversion_form@PLT
.L363:
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_gen_assign_group
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	120(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L368
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L369
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L369
	cmpl	$0, -4(%rbp)
	je	.L370
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	136(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_generate_key_dhkem@PLT
	testl	%eax, %eax
	je	.L370
	movl	$1, %eax
	jmp	.L371
.L370:
	movl	$0, %eax
.L371:
	movl	%eax, -4(%rbp)
	jmp	.L368
.L369:
	cmpl	$0, -4(%rbp)
	je	.L372
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_generate_key@PLT
	testl	%eax, %eax
	je	.L372
	movl	$1, %eax
	jmp	.L373
.L372:
	movl	$0, %eax
.L373:
	movl	%eax, -4(%rbp)
.L368:
	movq	-16(%rbp), %rax
	movl	124(%rax), %eax
	cmpl	$-1, %eax
	je	.L374
	cmpl	$0, -4(%rbp)
	je	.L375
	movq	-16(%rbp), %rax
	movl	124(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ec_set_ecdh_cofactor_mode@PLT
	testl	%eax, %eax
	je	.L375
	movl	$1, %eax
	jmp	.L376
.L375:
	movl	$0, %eax
.L376:
	movl	%eax, -4(%rbp)
.L374:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L377
	cmpl	$0, -4(%rbp)
	je	.L378
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_set_check_group_type_from_name@PLT
	testl	%eax, %eax
	je	.L378
	movl	$1, %eax
	jmp	.L379
.L378:
	movl	$0, %eax
.L379:
	movl	%eax, -4(%rbp)
.L377:
	cmpl	$0, -4(%rbp)
	je	.L382
	movq	-24(%rbp), %rax
	jmp	.L361
.L380:
	nop
	jmp	.L364
.L381:
	nop
	jmp	.L364
.L382:
	nop
.L364:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
.L361:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	ec_gen, .-ec_gen
	.type	sm2_gen, @function
sm2_gen:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L384
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_KEY_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L385
.L384:
	movl	$0, %eax
	jmp	.L386
.L385:
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L387
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ec_gen_set_group_from_params
	testl	%eax, %eax
	jne	.L388
	jmp	.L389
.L387:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L390
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ec_encoding_name2id@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L396
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
.L390:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L388
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ec_pt_format_name2id@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	js	.L397
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_point_conversion_form@PLT
.L388:
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_gen_assign_group
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	120(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L393
	cmpl	$0, -4(%rbp)
	je	.L394
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_generate_key@PLT
	testl	%eax, %eax
	je	.L394
	movl	$1, %eax
	jmp	.L395
.L394:
	movl	$0, %eax
.L395:
	movl	%eax, -4(%rbp)
.L393:
	cmpl	$0, -4(%rbp)
	je	.L398
	movq	-24(%rbp), %rax
	jmp	.L386
.L396:
	nop
	jmp	.L389
.L397:
	nop
	jmp	.L389
.L398:
	nop
.L389:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
.L386:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	sm2_gen, .-sm2_gen
	.type	ec_gen_cleanup, @function
ec_gen_cleanup:
.LFB440:
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
	je	.L402
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movl	$1365, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1372, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1373, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1374, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1375, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1376, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC11(%rip), %rcx
	movl	$1377, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC11(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1378, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L399
.L402:
	nop
.L399:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	ec_gen_cleanup, .-ec_gen_cleanup
	.type	common_load, @function
common_load:
.LFB441:
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
	je	.L404
	cmpq	$8, -32(%rbp)
	jne	.L404
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	common_check_sm2
	testl	%eax, %eax
	jne	.L405
	movl	$0, %eax
	jmp	.L406
.L405:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L406
.L404:
	movl	$0, %eax
.L406:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	common_load, .-common_load
	.type	ec_load, @function
ec_load:
.LFB442:
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
.LFE442:
	.size	ec_load, .-ec_load
	.type	sm2_load, @function
sm2_load:
.LFB443:
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
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	common_load
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	sm2_load, .-sm2_load
	.type	ec_dup, @function
ec_dup:
.LFB444:
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
	je	.L412
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ec_key_dup@PLT
	jmp	.L413
.L412:
	movl	$0, %eax
.L413:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	ec_dup, .-ec_dup
	.globl	ossl_ec_keymgmt_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_keymgmt_functions, @object
	.size	ossl_ec_keymgmt_functions, 368
ossl_ec_keymgmt_functions:
	.long	1
	.zero	4
	.quad	ec_newdata
	.long	2
	.zero	4
	.quad	ec_gen_init
	.long	3
	.zero	4
	.quad	ec_gen_set_template
	.long	4
	.zero	4
	.quad	ec_gen_set_params
	.long	5
	.zero	4
	.quad	ec_gen_settable_params
	.long	6
	.zero	4
	.quad	ec_gen
	.long	7
	.zero	4
	.quad	ec_gen_cleanup
	.long	8
	.zero	4
	.quad	ec_load
	.long	10
	.zero	4
	.quad	ec_freedata
	.long	11
	.zero	4
	.quad	ec_get_params
	.long	12
	.zero	4
	.quad	ec_gettable_params
	.long	13
	.zero	4
	.quad	ec_set_params
	.long	14
	.zero	4
	.quad	ec_settable_params
	.long	21
	.zero	4
	.quad	ec_has
	.long	23
	.zero	4
	.quad	ec_match
	.long	22
	.zero	4
	.quad	ec_validate
	.long	40
	.zero	4
	.quad	ec_import
	.long	41
	.zero	4
	.quad	ec_import_types
	.long	42
	.zero	4
	.quad	ec_export
	.long	43
	.zero	4
	.quad	ec_export_types
	.long	20
	.zero	4
	.quad	ec_query_operation_name
	.long	44
	.zero	4
	.quad	ec_dup
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_sm2_keymgmt_functions
	.align 32
	.type	ossl_sm2_keymgmt_functions, @object
	.size	ossl_sm2_keymgmt_functions, 368
ossl_sm2_keymgmt_functions:
	.long	1
	.zero	4
	.quad	sm2_newdata
	.long	2
	.zero	4
	.quad	sm2_gen_init
	.long	3
	.zero	4
	.quad	ec_gen_set_template
	.long	4
	.zero	4
	.quad	ec_gen_set_params
	.long	5
	.zero	4
	.quad	ec_gen_settable_params
	.long	6
	.zero	4
	.quad	sm2_gen
	.long	7
	.zero	4
	.quad	ec_gen_cleanup
	.long	8
	.zero	4
	.quad	sm2_load
	.long	10
	.zero	4
	.quad	ec_freedata
	.long	11
	.zero	4
	.quad	sm2_get_params
	.long	12
	.zero	4
	.quad	sm2_gettable_params
	.long	13
	.zero	4
	.quad	ec_set_params
	.long	14
	.zero	4
	.quad	sm2_settable_params
	.long	21
	.zero	4
	.quad	ec_has
	.long	23
	.zero	4
	.quad	ec_match
	.long	22
	.zero	4
	.quad	sm2_validate
	.long	40
	.zero	4
	.quad	sm2_import
	.long	41
	.zero	4
	.quad	ec_import_types
	.long	42
	.zero	4
	.quad	ec_export
	.long	43
	.zero	4
	.quad	ec_export_types
	.long	20
	.zero	4
	.quad	sm2_query_operation_name
	.long	44
	.zero	4
	.quad	ec_dup
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"common_get_params"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"ec_gen_set_group"
	.section	.data.rel.local
	.align 32
	.type	settable.1, @object
	.size	settable.1, 560
settable.1:
	.quad	.LC12
	.long	4
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
	.quad	.LC13
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	4
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
	.long	5
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
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC39
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
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"ec_gen_assign_group"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
