	.file	"cmp_msg_test.c"
	.text
	.type	ossl_check_OSSL_CMP_CERTRESPONSE_type, @function
ossl_check_OSSL_CMP_CERTRESPONSE_type:
.LFB593:
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
.LFE593:
	.size	ossl_check_OSSL_CMP_CERTRESPONSE_type, .-ossl_check_OSSL_CMP_CERTRESPONSE_type
	.type	ossl_check_OSSL_CMP_CERTRESPONSE_sk_type, @function
ossl_check_OSSL_CMP_CERTRESPONSE_sk_type:
.LFB595:
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
.LFE595:
	.size	ossl_check_OSSL_CMP_CERTRESPONSE_sk_type, .-ossl_check_OSSL_CMP_CERTRESPONSE_sk_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB643:
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
.LFE643:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB644:
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
.LFE644:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.local	newkey_f
	.comm	newkey_f,8,8
	.local	server_cert_f
	.comm	server_cert_f,8,8
	.local	pkcs10_f
	.comm	pkcs10_f,8,8
	.local	libctx
	.comm	libctx,8,8
	.local	default_null_provider
	.comm	default_null_provider,8,8
	.local	provider
	.comm	provider,8,8
	.local	ref
	.comm	ref,15,8
	.section	.rodata
.LC0:
	.string	"../test/cmp_msg_test.c"
	.text
	.type	tear_down, @function
tear_down:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$43, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	tear_down, .-tear_down
	.section	.rodata
	.align 8
.LC1:
	.string	"fixture = OPENSSL_zalloc(sizeof(*fixture))"
	.align 8
.LC2:
	.string	"fixture->cmp_ctx = OSSL_CMP_CTX_new(libctx, NULL)"
	.align 8
.LC3:
	.string	"SET_OPT_UNPROTECTED_SEND(fixture->cmp_ctx, 1)"
	.align 8
.LC4:
	.string	"OSSL_CMP_CTX_set1_referenceValue(fixture->cmp_ctx, ref, sizeof(ref))"
	.text
	.type	set_up, @function
set_up:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$52, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$52, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$56, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$57, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	ref(%rip), %rcx
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_referenceValue@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$58, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L14
.L13:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
	jmp	.L12
.L14:
	movq	-8(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	set_up, .-set_up
	.local	newkey
	.comm	newkey,8,8
	.local	cert
	.comm	cert,8,8
	.section	.rodata
	.align 8
.LC5:
	.string	"msg = (ossl_cmp_certreq_new(fixture->cmp_ctx, fixture->bodytype, ((void *)0)))"
.LC6:
	.string	"valid_asn1_encoding(msg)"
	.text
	.type	execute_certreq_create_test, @function
execute_certreq_create_test:
.LFB741:
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
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certreq_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$90, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	valid_asn1_encoding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$90, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	movl	$1, %eax
	jmp	.L18
.L17:
	movl	$0, %eax
.L18:
	movl	%eax, -12(%rbp)
	jmp	.L19
.L16:
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certreq_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$90, %esi
	call	test_ptr_null@PLT
	movl	%eax, -12(%rbp)
.L19:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	execute_certreq_create_test, .-execute_certreq_create_test
	.section	.rodata
.LC7:
	.string	"details"
	.align 8
.LC8:
	.string	"msg = (ossl_cmp_error_new(fixture->cmp_ctx, fixture->si, fixture->err_code, \"details\", 0))"
	.text
	.type	execute_errormsg_create_test, @function
execute_errormsg_create_test:
.LFB742:
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
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L22
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_cmp_error_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$97, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	valid_asn1_encoding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$97, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L23
	movl	$1, %eax
	jmp	.L24
.L23:
	movl	$0, %eax
.L24:
	movl	%eax, -12(%rbp)
	jmp	.L25
.L22:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_cmp_error_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$97, %esi
	call	test_ptr_null@PLT
	movl	%eax, -12(%rbp)
.L25:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	execute_errormsg_create_test, .-execute_errormsg_create_test
	.section	.rodata
	.align 8
.LC9:
	.string	"msg = (ossl_cmp_rr_new(fixture->cmp_ctx))"
	.text
	.type	execute_rr_create_test, @function
execute_rr_create_test:
.LFB743:
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
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_rr_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$104, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	valid_asn1_encoding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	movl	$1, %eax
	jmp	.L30
.L29:
	movl	$0, %eax
.L30:
	movl	%eax, -12(%rbp)
	jmp	.L31
.L28:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_rr_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$104, %esi
	call	test_ptr_null@PLT
	movl	%eax, -12(%rbp)
.L31:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	execute_rr_create_test, .-execute_rr_create_test
	.section	.rodata
	.align 8
.LC10:
	.string	"msg = (ossl_cmp_certConf_new (fixture->cmp_ctx, 0, fixture->fail_info, ((void *)0)))"
	.text
	.type	execute_certconf_create_test, @function
execute_certconf_create_test:
.LFB744:
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
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certConf_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	valid_asn1_encoding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$109, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	movl	$1, %eax
	jmp	.L36
.L35:
	movl	$0, %eax
.L36:
	movl	%eax, -12(%rbp)
	jmp	.L37
.L34:
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certConf_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$109, %esi
	call	test_ptr_null@PLT
	movl	%eax, -12(%rbp)
.L37:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	execute_certconf_create_test, .-execute_certconf_create_test
	.section	.rodata
	.align 8
.LC11:
	.string	"msg = (ossl_cmp_genm_new(fixture->cmp_ctx))"
	.text
	.type	execute_genm_create_test, @function
execute_genm_create_test:
.LFB745:
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
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L40
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_genm_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$116, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	valid_asn1_encoding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$116, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movl	$1, %eax
	jmp	.L42
.L41:
	movl	$0, %eax
.L42:
	movl	%eax, -12(%rbp)
	jmp	.L43
.L40:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_genm_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$116, %esi
	call	test_ptr_null@PLT
	movl	%eax, -12(%rbp)
.L43:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	execute_genm_create_test, .-execute_genm_create_test
	.section	.rodata
	.align 8
.LC12:
	.string	"msg = (ossl_cmp_pollReq_new(fixture->cmp_ctx, 4711))"
	.text
	.type	execute_pollreq_create_test, @function
execute_pollreq_create_test:
.LFB746:
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
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$4711, %esi
	movq	%rax, %rdi
	call	ossl_cmp_pollReq_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$121, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L47
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	valid_asn1_encoding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$121, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	movl	%eax, -12(%rbp)
	jmp	.L49
.L46:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$4711, %esi
	movq	%rax, %rdi
	call	ossl_cmp_pollReq_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$121, %esi
	call	test_ptr_null@PLT
	movl	%eax, -12(%rbp)
.L49:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	execute_pollreq_create_test, .-execute_pollreq_create_test
	.section	.rodata
	.align 8
.LC13:
	.string	"msg = (ossl_cmp_msg_create (fixture->cmp_ctx, fixture->bodytype))"
	.text
	.type	execute_pkimessage_create_test, @function
execute_pkimessage_create_test:
.LFB747:
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
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L52
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$126, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	valid_asn1_encoding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$126, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movl	$1, %eax
	jmp	.L54
.L53:
	movl	$0, %eax
.L54:
	movl	%eax, -12(%rbp)
	jmp	.L55
.L52:
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$126, %esi
	call	test_ptr_null@PLT
	movl	%eax, -12(%rbp)
.L55:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	execute_pkimessage_create_test, .-execute_pkimessage_create_test
	.type	set1_newPkey, @function
set1_newPkey:
.LFB748:
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
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set0_newPkey@PLT
	testl	%eax, %eax
	jne	.L60
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L59
.L60:
	movl	$1, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	set1_newPkey, .-set1_newPkey
	.section	.rodata
	.align 8
.LC14:
	.string	"RAND_bytes_ex(libctx, secret, sizeof(secret), 0)"
.LC15:
	.string	"1"
	.align 8
.LC16:
	.string	"SET_OPT_UNPROTECTED_SEND(ctx, 0)"
.LC17:
	.string	"set1_newPkey(ctx, newkey)"
	.align 8
.LC18:
	.string	"OSSL_CMP_CTX_set1_secretValue(ctx, secret, sizeof(secret))"
	.text
	.type	test_cmp_create_ir_protection_set, @function
test_cmp_create_ir_protection_set:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	__func__.20(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L62
	movl	$0, %eax
	jmp	.L67
.L62:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	libctx(%rip), %rax
	leaq	-48(%rbp), %rsi
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$153, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L64
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$154, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
	movq	newkey(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set1_newPkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$155, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_secretValue@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$156, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L65
.L64:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L65:
	cmpq	$0, -8(%rbp)
	je	.L66
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certreq_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L66:
	movl	-12(%rbp), %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	test_cmp_create_ir_protection_set, .-test_cmp_create_ir_protection_set
	.section	.rodata
	.align 8
.LC19:
	.string	"OSSL_CMP_CTX_set1_pkey(fixture->cmp_ctx, newkey)"
	.align 8
.LC20:
	.string	"SET_OPT_UNPROTECTED_SEND(fixture->cmp_ctx, 0)"
	.align 8
.LC21:
	.string	"OSSL_CMP_CTX_set1_cert(fixture->cmp_ctx, cert)"
	.text
	.type	test_cmp_create_ir_protection_fails, @function
test_cmp_create_ir_protection_fails:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.19(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	newkey(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_pkey@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$171, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movq	cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_cert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$174, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L72
.L71:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L72:
	cmpq	$0, -8(%rbp)
	je	.L73
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certreq_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L73:
	movl	-12(%rbp), %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	test_cmp_create_ir_protection_fails, .-test_cmp_create_ir_protection_fails
	.type	test_cmp_create_cr_without_key, @function
test_cmp_create_cr_without_key:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.18(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L75
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-16(%rbp), %rax
	movl	$2, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 20(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	cmpq	$0, -16(%rbp)
	je	.L77
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certreq_create_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L77:
	movl	-4(%rbp), %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	test_cmp_create_cr_without_key, .-test_cmp_create_cr_without_key
	.section	.rodata
	.align 8
.LC22:
	.string	"set1_newPkey(fixture->cmp_ctx, newkey)"
	.text
	.type	test_cmp_create_cr, @function
test_cmp_create_cr:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.17(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	movq	-8(%rbp), %rax
	movl	$2, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	newkey(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set1_newPkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$198, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L81
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L81:
	cmpq	$0, -8(%rbp)
	je	.L82
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certreq_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L82:
	movl	-12(%rbp), %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	test_cmp_create_cr, .-test_cmp_create_cr
	.type	test_cmp_create_certreq_with_invalid_bodytype, @function
test_cmp_create_certreq_with_invalid_bodytype:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.16(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L84
	movl	$0, %eax
	jmp	.L85
.L84:
	movq	-8(%rbp), %rax
	movl	$11, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	newkey(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set1_newPkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$212, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L86
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L86:
	cmpq	$0, -8(%rbp)
	je	.L87
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certreq_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L87:
	movl	-12(%rbp), %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	test_cmp_create_certreq_with_invalid_bodytype, .-test_cmp_create_certreq_with_invalid_bodytype
	.section	.rodata
	.align 8
.LC23:
	.string	"p10cr = load_csr_der(pkcs10_f, libctx)"
	.align 8
.LC24:
	.string	"OSSL_CMP_CTX_set1_p10CSR(ctx, p10cr)"
	.text
	.type	test_cmp_create_p10cr, @function
test_cmp_create_p10cr:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -24(%rbp)
	leaq	__func__.15(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L89
	movl	$0, %eax
	jmp	.L90
.L89:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$163, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	libctx(%rip), %rdx
	movq	pkcs10_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_csr_der@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$230, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L91
	movq	newkey(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set1_newPkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$231, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_p10CSR@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$232, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L92
.L91:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L92:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	cmpq	$0, -8(%rbp)
	je	.L93
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certreq_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L93:
	movl	-12(%rbp), %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	test_cmp_create_p10cr, .-test_cmp_create_p10cr
	.type	test_cmp_create_p10cr_null, @function
test_cmp_create_p10cr_null:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.14(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L96
.L95:
	movq	-8(%rbp), %rax
	movl	$4, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$163, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	newkey(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set1_newPkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$247, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L97
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L97:
	cmpq	$0, -8(%rbp)
	je	.L98
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certreq_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L98:
	movl	-12(%rbp), %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	test_cmp_create_p10cr_null, .-test_cmp_create_p10cr_null
	.section	.rodata
	.align 8
.LC25:
	.string	"OSSL_CMP_CTX_set1_oldCert(fixture->cmp_ctx, cert)"
	.text
	.type	test_cmp_create_kur, @function
test_cmp_create_kur:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.13(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L100
	movl	$0, %eax
	jmp	.L101
.L100:
	movq	-8(%rbp), %rax
	movl	$7, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	newkey(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set1_newPkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$261, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	movq	cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_oldCert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$262, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L103
.L102:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L103:
	cmpq	$0, -8(%rbp)
	je	.L104
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certreq_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L104:
	movl	-12(%rbp), %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	test_cmp_create_kur, .-test_cmp_create_kur
	.type	test_cmp_create_kur_without_oldcert, @function
test_cmp_create_kur_without_oldcert:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.12(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L106
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	-8(%rbp), %rax
	movl	$7, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	newkey(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set1_newPkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$276, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L108
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L108:
	cmpq	$0, -8(%rbp)
	je	.L109
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certreq_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L109:
	movl	-12(%rbp), %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	test_cmp_create_kur_without_oldcert, .-test_cmp_create_kur_without_oldcert
	.section	.rodata
	.align 8
.LC26:
	.string	"ossl_cmp_ctx_set0_newCert(fixture->cmp_ctx, X509_dup(cert))"
	.text
	.type	test_cmp_create_certconf, @function
test_cmp_create_certconf:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.11(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L112
.L111:
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set0_newCert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$289, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L113
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L113:
	cmpq	$0, -8(%rbp)
	je	.L114
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certconf_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L114:
	movl	-12(%rbp), %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	test_cmp_create_certconf, .-test_cmp_create_certconf
	.type	test_cmp_create_certconf_badAlg, @function
test_cmp_create_certconf_badAlg:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.10(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L116
	movl	$0, %eax
	jmp	.L117
.L116:
	movq	-8(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set0_newCert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L118
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L118:
	cmpq	$0, -8(%rbp)
	je	.L119
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certconf_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L119:
	movl	-12(%rbp), %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	test_cmp_create_certconf_badAlg, .-test_cmp_create_certconf_badAlg
	.type	test_cmp_create_certconf_fail_info_max, @function
test_cmp_create_certconf_fail_info_max:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.9(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L121
	movl	$0, %eax
	jmp	.L122
.L121:
	movq	-8(%rbp), %rax
	movl	$67108864, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set0_newCert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$317, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L123:
	cmpq	$0, -8(%rbp)
	je	.L124
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certconf_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L124:
	movl	-12(%rbp), %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	test_cmp_create_certconf_fail_info_max, .-test_cmp_create_certconf_fail_info_max
	.type	test_cmp_create_error_msg, @function
test_cmp_create_error_msg:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.8(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L126
	movl	$0, %eax
	jmp	.L127
.L126:
	movl	$0, %edx
	movl	$25, %esi
	movl	$2, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movl	$-1, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	newkey(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set1_newPkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$334, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L128
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L128:
	cmpq	$0, -8(%rbp)
	je	.L129
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_errormsg_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L129:
	movl	-12(%rbp), %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	test_cmp_create_error_msg, .-test_cmp_create_error_msg
	.type	test_cmp_create_pollreq, @function
test_cmp_create_pollreq:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.7(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L131
	movl	$0, %eax
	jmp	.L132
.L131:
	movq	-16(%rbp), %rax
	movl	$1, 40(%rax)
	cmpq	$0, -16(%rbp)
	je	.L133
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_pollreq_create_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L133:
	movl	-4(%rbp), %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	test_cmp_create_pollreq, .-test_cmp_create_pollreq
	.type	test_cmp_create_rr, @function
test_cmp_create_rr:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.6(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_oldCert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$354, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L137
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L137:
	cmpq	$0, -8(%rbp)
	je	.L138
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_rr_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L138:
	movl	-12(%rbp), %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	test_cmp_create_rr, .-test_cmp_create_rr
	.section	.rodata
.LC27:
	.string	"iv"
	.align 8
.LC28:
	.string	"OSSL_CMP_CTX_push0_genm_ITAV(fixture->cmp_ctx, iv)"
	.text
	.type	test_cmp_create_genm, @function
test_cmp_create_genm:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -24(%rbp)
	leaq	__func__.5(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L140
	movl	$0, %eax
	jmp	.L141
.L140:
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movl	$310, %edi
	call	OBJ_nid2obj@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_create@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$369, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L142
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_push0_genm_ITAV@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$370, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L143
.L142:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L143:
	cmpq	$0, -8(%rbp)
	je	.L144
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_genm_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L144:
	movl	-12(%rbp), %eax
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	test_cmp_create_genm, .-test_cmp_create_genm
	.section	.rodata
.LC29:
	.string	"read_cresp"
	.align 8
.LC30:
	.string	"ossl_cmp_certrepmessage_get0_certresponse(crepmsg, 88)"
.LC31:
	.string	"0"
.LC32:
	.string	"X509_cmp(cert, certfromresp)"
	.text
	.type	execute_certrep_create, @function
execute_certrep_create:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	call	OSSL_CMP_CERTREPMESSAGE_new@PLT
	movq	%rax, -56(%rbp)
	call	OSSL_CMP_CERTRESPONSE_new@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L158
	cmpq	$0, -24(%rbp)
	je	.L158
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L159
	call	OSSL_CMP_CERTIFIEDKEYPAIR_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	cert(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	(%rdx), %rbx
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L161
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_CERTRESPONSE_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_CERTRESPONSE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L161
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certrepmessage_get0_certresponse@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$402, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L162
	movq	-56(%rbp), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certrepmessage_get0_certresponse@PLT
	movq	%rax, %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$404, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L163
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_certresponse_get1_cert@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L164
	movq	cert(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$407, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L164
	movl	$1, -36(%rbp)
	jmp	.L148
.L158:
	nop
	jmp	.L148
.L159:
	nop
	jmp	.L148
.L160:
	nop
	jmp	.L148
.L161:
	nop
	jmp	.L148
.L162:
	nop
	jmp	.L148
.L163:
	nop
	jmp	.L148
.L164:
	nop
.L148:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CERTRESPONSE_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CERTREPMESSAGE_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	execute_certrep_create, .-execute_certrep_create
	.type	test_cmp_create_certrep, @function
test_cmp_create_certrep:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.4(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L166
	movl	$0, %eax
	jmp	.L167
.L166:
	cmpq	$0, -16(%rbp)
	je	.L168
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_certrep_create
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L168:
	movl	-4(%rbp), %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	test_cmp_create_certrep, .-test_cmp_create_certrep
	.section	.rodata
.LC33:
	.string	"a text"
.LC34:
	.string	"The Issuer"
.LC35:
	.string	"CN"
	.align 8
.LC36:
	.string	"ossl_cmp_revrepcontent_get_CertId(rpmsg->body->value.rp, 0)"
	.align 8
.LC37:
	.string	"ossl_cmp_revrepcontent_get_pkisi(rpmsg->body->value.rp, 0)"
	.text
	.type	execute_rp_create, @function
execute_rp_create:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdx
	movl	$44, %esi
	movl	$33, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	movq	%rax, -32(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -40(%rbp)
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L178
	cmpq	$0, -40(%rbp)
	je	.L178
	cmpq	$0, -48(%rbp)
	je	.L178
	leaq	.LC34(%rip), %rdx
	leaq	.LC35(%rip), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$4097, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_txt@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L179
	movq	-48(%rbp), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L179
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_gen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L179
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ossl_cmp_rp_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L179
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_revrepcontent_get_CertId@PLT
	movq	%rax, %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$444, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L180
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_revrepcontent_get_pkisi@PLT
	movq	%rax, %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$447, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L181
	movl	$1, -20(%rbp)
	jmp	.L172
.L178:
	nop
	jmp	.L172
.L179:
	nop
	jmp	.L172
.L180:
	nop
	jmp	.L172
.L181:
	nop
.L172:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	execute_rp_create, .-execute_rp_create
	.type	test_cmp_create_rp, @function
test_cmp_create_rp:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.3(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L183
	movl	$0, %eax
	jmp	.L184
.L183:
	cmpq	$0, -16(%rbp)
	je	.L185
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_rp_create
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L185:
	movl	-4(%rbp), %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	test_cmp_create_rp, .-test_cmp_create_rp
	.section	.rodata
.LC38:
	.string	"pollrep"
	.align 8
.LC39:
	.string	"ossl_cmp_pollrepcontent_get0_pollrep(pollrep->body-> value.pollRep, 77)"
	.align 8
.LC40:
	.string	"ossl_cmp_pollrepcontent_get0_pollrep(pollrep->body-> value.pollRep, 88)"
	.text
	.type	execute_pollrep_create, @function
execute_pollrep_create:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$2000, %edx
	movl	$77, %esi
	movq	%rax, %rdi
	call	ossl_cmp_pollRep_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$473, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L187
	movl	$0, %eax
	jmp	.L188
.L187:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ossl_cmp_pollrepcontent_get0_pollrep@PLT
	movq	%rax, %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L192
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ossl_cmp_pollrepcontent_get0_pollrep@PLT
	movq	%rax, %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$478, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L193
	movl	$1, -4(%rbp)
	jmp	.L190
.L192:
	nop
	jmp	.L190
.L193:
	nop
.L190:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	-4(%rbp), %eax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	execute_pollrep_create, .-execute_pollrep_create
	.type	test_cmp_create_pollrep, @function
test_cmp_create_pollrep:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.2(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L195
	movl	$0, %eax
	jmp	.L196
.L195:
	cmpq	$0, -16(%rbp)
	je	.L197
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_pollrep_create
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L197:
	movl	-4(%rbp), %eax
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	test_cmp_create_pollrep, .-test_cmp_create_pollrep
	.section	.rodata
	.align 8
.LC41:
	.string	"OSSL_CMP_CTX_set1_p10CSR(fixture->cmp_ctx, p10cr)"
	.text
	.type	test_cmp_pkimessage_create, @function
test_cmp_pkimessage_create:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -24(%rbp)
	leaq	__func__.1(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L199
	movl	$0, %eax
	jmp	.L200
.L199:
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$26, %eax
	jg	.L201
	cmpl	$21, %eax
	jge	.L202
	cmpl	$19, %eax
	je	.L202
	cmpl	$19, %eax
	jg	.L201
	cmpl	$12, %eax
	jg	.L201
	cmpl	$11, %eax
	jge	.L202
	cmpl	$8, %eax
	jg	.L201
	cmpl	$7, %eax
	jge	.L202
	cmpl	$3, %eax
	jg	.L203
	testl	%eax, %eax
	jns	.L202
	jmp	.L201
.L203:
	cmpl	$4, %eax
	jne	.L201
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	libctx(%rip), %rdx
	movq	pkcs10_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_csr_der@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_p10CSR@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$505, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L204
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L204:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	jmp	.L205
.L202:
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.L205
.L201:
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	nop
.L205:
	cmpq	$0, -8(%rbp)
	je	.L206
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_pkimessage_create_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L206:
	movl	-12(%rbp), %eax
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	test_cmp_pkimessage_create, .-test_cmp_pkimessage_create
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	newkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	default_null_provider(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	provider(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	cleanup_tests, .-cleanup_tests
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC42:
	.string	"Error parsing test options\n"
	.align 8
.LC43:
	.string	"newkey_f = test_get_argument(0)"
	.align 8
.LC44:
	.string	"server_cert_f = test_get_argument(1)"
	.align 8
.LC45:
	.string	"pkcs10_f = test_get_argument(2)"
	.align 8
.LC46:
	.string	"new.key server.crt pkcs10.der module_name [module_conf_file]\n"
.LC47:
	.string	"usage: cmp_msg_test %s"
	.align 8
.LC48:
	.string	"newkey = load_pkey_pem(newkey_f, libctx)"
	.align 8
.LC49:
	.string	"cert = load_cert_pem(server_cert_f, libctx)"
	.align 8
.LC50:
	.string	"RAND_bytes_ex(libctx, ref, sizeof(ref), 0)"
	.align 8
.LC51:
	.string	"test_cmp_create_certreq_with_invalid_bodytype"
	.align 8
.LC52:
	.string	"test_cmp_create_ir_protection_fails"
	.align 8
.LC53:
	.string	"test_cmp_create_ir_protection_set"
.LC54:
	.string	"test_cmp_create_error_msg"
.LC55:
	.string	"test_cmp_create_certconf"
	.align 8
.LC56:
	.string	"test_cmp_create_certconf_badAlg"
	.align 8
.LC57:
	.string	"test_cmp_create_certconf_fail_info_max"
.LC58:
	.string	"test_cmp_create_kur"
	.align 8
.LC59:
	.string	"test_cmp_create_kur_without_oldcert"
.LC60:
	.string	"test_cmp_create_cr"
	.align 8
.LC61:
	.string	"test_cmp_create_cr_without_key"
.LC62:
	.string	"test_cmp_create_p10cr"
.LC63:
	.string	"test_cmp_create_p10cr_null"
.LC64:
	.string	"test_cmp_create_pollreq"
.LC65:
	.string	"test_cmp_create_rr"
.LC66:
	.string	"test_cmp_create_rp"
.LC67:
	.string	"test_cmp_create_genm"
.LC68:
	.string	"test_cmp_create_certrep"
.LC69:
	.string	"test_cmp_create_pollrep"
.LC70:
	.string	"test_cmp_pkimessage_create"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L211
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$552, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L212
.L211:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, newkey_f(%rip)
	movq	newkey_f(%rip), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$556, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L213
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, server_cert_f(%rip)
	movq	server_cert_f(%rip), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$557, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L213
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, pkcs10_f(%rip)
	movq	pkcs10_f(%rip), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$558, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L214
.L213:
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$559, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L212
.L214:
	leaq	.LC46(%rip), %rcx
	leaq	provider(%rip), %rdx
	leaq	default_null_provider(%rip), %rsi
	leaq	libctx(%rip), %rax
	movq	%rcx, %r8
	movl	$3, %ecx
	movq	%rax, %rdi
	call	test_arg_libctx@PLT
	testl	%eax, %eax
	jne	.L215
	movl	$0, %eax
	jmp	.L212
.L215:
	movq	libctx(%rip), %rdx
	movq	newkey_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, newkey(%rip)
	movq	newkey(%rip), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$566, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L216
	movq	libctx(%rip), %rdx
	movq	server_cert_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$567, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L216
	movq	libctx(%rip), %rax
	leaq	ref(%rip), %rsi
	movl	$0, %ecx
	movl	$15, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$568, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L217
.L216:
	call	cleanup_tests@PLT
	movl	$0, %eax
	jmp	.L212
.L217:
	leaq	test_cmp_create_certreq_with_invalid_bodytype(%rip), %rdx
	leaq	.LC51(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_ir_protection_fails(%rip), %rdx
	leaq	.LC52(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_ir_protection_set(%rip), %rdx
	leaq	.LC53(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_error_msg(%rip), %rdx
	leaq	.LC54(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_certconf(%rip), %rdx
	leaq	.LC55(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_certconf_badAlg(%rip), %rdx
	leaq	.LC56(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_certconf_fail_info_max(%rip), %rdx
	leaq	.LC57(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_kur(%rip), %rdx
	leaq	.LC58(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_kur_without_oldcert(%rip), %rdx
	leaq	.LC59(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_cr(%rip), %rdx
	leaq	.LC60(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_cr_without_key(%rip), %rdx
	leaq	.LC61(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_p10cr(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_p10cr_null(%rip), %rdx
	leaq	.LC63(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_pollreq(%rip), %rdx
	leaq	.LC64(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_rr(%rip), %rdx
	leaq	.LC65(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_rp(%rip), %rdx
	leaq	.LC66(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_genm(%rip), %rdx
	leaq	.LC67(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_certrep(%rip), %rdx
	leaq	.LC68(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_create_pollrep(%rip), %rdx
	leaq	.LC69(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_pkimessage_create(%rip), %rsi
	leaq	.LC70(%rip), %rax
	movl	$0, %ecx
	movl	$27, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L212:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 32
	.type	__func__.20, @object
	.size	__func__.20, 34
__func__.20:
	.string	"test_cmp_create_ir_protection_set"
	.align 32
	.type	__func__.19, @object
	.size	__func__.19, 36
__func__.19:
	.string	"test_cmp_create_ir_protection_fails"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 31
__func__.18:
	.string	"test_cmp_create_cr_without_key"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 19
__func__.17:
	.string	"test_cmp_create_cr"
	.align 32
	.type	__func__.16, @object
	.size	__func__.16, 46
__func__.16:
	.string	"test_cmp_create_certreq_with_invalid_bodytype"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 22
__func__.15:
	.string	"test_cmp_create_p10cr"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 27
__func__.14:
	.string	"test_cmp_create_p10cr_null"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 20
__func__.13:
	.string	"test_cmp_create_kur"
	.align 32
	.type	__func__.12, @object
	.size	__func__.12, 36
__func__.12:
	.string	"test_cmp_create_kur_without_oldcert"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 25
__func__.11:
	.string	"test_cmp_create_certconf"
	.align 32
	.type	__func__.10, @object
	.size	__func__.10, 32
__func__.10:
	.string	"test_cmp_create_certconf_badAlg"
	.align 32
	.type	__func__.9, @object
	.size	__func__.9, 39
__func__.9:
	.string	"test_cmp_create_certconf_fail_info_max"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 26
__func__.8:
	.string	"test_cmp_create_error_msg"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 24
__func__.7:
	.string	"test_cmp_create_pollreq"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 19
__func__.6:
	.string	"test_cmp_create_rr"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 21
__func__.5:
	.string	"test_cmp_create_genm"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"test_cmp_create_certrep"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"test_cmp_create_rp"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 24
__func__.2:
	.string	"test_cmp_create_pollrep"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"test_cmp_pkimessage_create"
	.align 8
.LC71:
	.string	"Usage: %s [options] new.key server.crt pkcs10.der module_name [module_conf_file]\n"
.LC72:
	.string	"Valid options are:\n"
.LC73:
	.string	"help"
.LC74:
	.string	"Display this summary"
.LC75:
	.string	"list"
	.align 8
.LC76:
	.string	"Display the list of tests available"
.LC77:
	.string	"test"
	.align 8
.LC78:
	.string	"Run a single test by id or name"
.LC79:
	.string	"iter"
	.align 8
.LC80:
	.string	"Run a single iteration of a test"
.LC81:
	.string	"indent"
	.align 8
.LC82:
	.string	"Number of tabs added to output"
.LC83:
	.string	"seed"
	.align 8
.LC84:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC71
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC72
	.quad	.LC73
	.long	500
	.long	45
	.quad	.LC74
	.quad	.LC75
	.long	501
	.long	45
	.quad	.LC76
	.quad	.LC77
	.long	502
	.long	115
	.quad	.LC78
	.quad	.LC79
	.long	503
	.long	110
	.quad	.LC80
	.quad	.LC81
	.long	504
	.long	112
	.quad	.LC82
	.quad	.LC83
	.long	505
	.long	110
	.quad	.LC84
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
