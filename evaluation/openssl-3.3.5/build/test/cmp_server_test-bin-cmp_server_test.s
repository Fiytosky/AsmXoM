	.file	"cmp_server_test.c"
	.text
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
	.local	libctx
	.comm	libctx,8,8
	.local	default_null_provider
	.comm	default_null_provider,8,8
	.local	provider
	.comm	provider,8,8
	.local	request
	.comm	request,8,8
	.section	.rodata
.LC0:
	.string	"../test/cmp_server_test.c"
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
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$28, %edx
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
	.string	"fixture->srv_ctx = OSSL_CMP_SRV_CTX_new(libctx, NULL)"
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
	movl	$35, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$38, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L12
	movq	-8(%rbp), %rax
	jmp	.L8
.L12:
	nop
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	set_up, .-set_up
	.data
	.align 4
	.type	dummy_errorCode, @object
	.size	dummy_errorCode, 4
dummy_errorCode:
	.long	102
	.text
	.type	process_cert_request, @function
process_cert_request:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	dummy_errorCode(%rip), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	process_cert_request, .-process_cert_request
	.section	.rodata
.LC3:
	.string	"@test_dummy"
	.align 8
.LC4:
	.string	"client_ctx = OSSL_CMP_CTX_new(libctx, NULL)"
	.align 8
.LC5:
	.string	"OSSL_CMP_CTX_set_transfer_cb_arg(client_ctx, ctx)"
	.align 8
.LC6:
	.string	"OSSL_CMP_SRV_CTX_init(ctx, dummy_custom_ctx, process_cert_request, NULL, NULL, NULL, NULL, NULL)"
	.align 8
.LC7:
	.string	"OSSL_CMP_SRV_CTX_init_trans(ctx, NULL, NULL)"
	.align 8
.LC8:
	.string	"custom_ctx = OSSL_CMP_SRV_CTX_get0_custom_ctx(ctx)"
.LC9:
	.string	"0"
	.align 8
.LC10:
	.string	"strcmp(custom_ctx, dummy_custom_ctx)"
	.align 8
.LC11:
	.string	"OSSL_CMP_SRV_CTX_set_send_unprotected_errors(ctx, 0)"
	.align 8
.LC12:
	.string	"OSSL_CMP_SRV_CTX_set_accept_unprotected(ctx, 0)"
	.align 8
.LC13:
	.string	"OSSL_CMP_SRV_CTX_set_accept_raverified(ctx, 1)"
	.align 8
.LC14:
	.string	"OSSL_CMP_SRV_CTX_set_grant_implicit_confirm(ctx, 1)"
	.align 8
.LC15:
	.string	"cmp_ctx = OSSL_CMP_SRV_CTX_get0_cmp_ctx(ctx)"
.LC16:
	.string	"server"
.LC17:
	.string	"1234"
	.align 8
.LC18:
	.string	"rsp = OSSL_CMP_CTX_server_perform(client_ctx, fixture->req)"
.LC19:
	.string	"OSSL_CMP_PKIBODY_ERROR"
	.align 8
.LC20:
	.string	"OSSL_CMP_MSG_get_bodytype(rsp)"
	.align 8
.LC21:
	.string	"errorContent = rsp->body->value.error"
	.align 8
.LC22:
	.string	"ERR_PACK(ERR_LIB_CMP, 0, dummy_errorCode)"
	.align 8
.LC23:
	.string	"ASN1_INTEGER_get(errorContent->errorCode)"
	.text
	.type	execute_test_handle_request, @function
execute_test_handle_request:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_transfer_cb_arg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$73, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	leaq	process_cert_request(%rip), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_init@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$76, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_init_trans@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$79, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$80, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_set_send_unprotected_errors@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L30
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_set_accept_unprotected@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$85, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L30
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_set_accept_raverified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L30
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_set_grant_implicit_confirm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L30
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_cmp_ctx@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$90, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L31
	leaq	.LC16(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_referenceValue@PLT
	testl	%eax, %eax
	je	.L31
	leaq	.LC17(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_secretValue@PLT
	testl	%eax, %eax
	je	.L31
	movq	-88(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_server_perform@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$97, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$23, %r9d
	movl	%esi, %r8d
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$100, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movl	dummy_errorCode(%rip), %eax
	andl	$8388607, %eax
	orl	$486539264, %eax
	movl	%eax, %ebx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$101, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movl	$1, -28(%rbp)
	jmp	.L18
.L28:
	nop
	jmp	.L18
.L29:
	nop
	jmp	.L18
.L30:
	nop
	jmp	.L18
.L31:
	nop
	jmp	.L18
.L32:
	nop
.L18:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	execute_test_handle_request, .-execute_test_handle_request
	.type	test_handle_request, @function
test_handle_request:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.1(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	request(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L36
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_test_handle_request
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L36:
	movl	-4(%rbp), %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	test_handle_request, .-test_handle_request
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	request(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
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
.LFE744:
	.size	cleanup_tests, .-cleanup_tests
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB745:
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
.LFE745:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC24:
	.string	"Error parsing test options\n"
	.align 8
.LC25:
	.string	"request_f = test_get_argument(0)"
	.align 8
.LC26:
	.string	"CR_protected_PBM_1234.der module_name [module_conf_file]\n"
.LC27:
	.string	"usage: cmp_server_test %s"
	.align 8
.LC28:
	.string	"request = load_pkimsg(request_f, libctx)"
.LC29:
	.string	"test_handle_request"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L42
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$140, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L43
.L42:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$144, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L44
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$145, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L43
.L44:
	leaq	.LC26(%rip), %rcx
	leaq	provider(%rip), %rdx
	leaq	default_null_provider(%rip), %rsi
	leaq	libctx(%rip), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	test_arg_libctx@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L43
.L45:
	movq	libctx(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	%rax, request(%rip)
	movq	request(%rip), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$152, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L46
	call	cleanup_tests@PLT
	movl	$0, %eax
	jmp	.L43
.L46:
	leaq	test_handle_request(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"process_cert_request"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"test_handle_request"
	.align 8
.LC30:
	.string	"Usage: %s [options] CR_protected_PBM_1234.der module_name [module_conf_file]\n"
.LC31:
	.string	"Valid options are:\n"
.LC32:
	.string	"help"
.LC33:
	.string	"Display this summary"
.LC34:
	.string	"list"
	.align 8
.LC35:
	.string	"Display the list of tests available"
.LC36:
	.string	"test"
	.align 8
.LC37:
	.string	"Run a single test by id or name"
.LC38:
	.string	"iter"
	.align 8
.LC39:
	.string	"Run a single iteration of a test"
.LC40:
	.string	"indent"
	.align 8
.LC41:
	.string	"Number of tabs added to output"
.LC42:
	.string	"seed"
	.align 8
.LC43:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC30
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC31
	.quad	.LC32
	.long	500
	.long	45
	.quad	.LC33
	.quad	.LC34
	.long	501
	.long	45
	.quad	.LC35
	.quad	.LC36
	.long	502
	.long	115
	.quad	.LC37
	.quad	.LC38
	.long	503
	.long	110
	.quad	.LC39
	.quad	.LC40
	.long	504
	.long	112
	.quad	.LC41
	.quad	.LC42
	.long	505
	.long	110
	.quad	.LC43
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
