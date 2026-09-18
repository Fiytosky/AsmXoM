	.file	"cmp_client_test.c"
	.text
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB326:
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
.LFE326:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB328:
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
.LFE328:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	ossl_check_OSSL_CMP_ITAV_sk_type, @function
ossl_check_OSSL_CMP_ITAV_sk_type:
.LFB577:
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
.LFE577:
	.size	ossl_check_OSSL_CMP_ITAV_sk_type, .-ossl_check_OSSL_CMP_ITAV_sk_type
	.type	ossl_check_OSSL_CMP_ITAV_freefunc_type, @function
ossl_check_OSSL_CMP_ITAV_freefunc_type:
.LFB580:
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
.LFE580:
	.size	ossl_check_OSSL_CMP_ITAV_freefunc_type, .-ossl_check_OSSL_CMP_ITAV_freefunc_type
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
	.local	server_key_f
	.comm	server_key_f,8,8
	.local	server_cert_f
	.comm	server_cert_f,8,8
	.local	client_key_f
	.comm	client_key_f,8,8
	.local	client_cert_f
	.comm	client_cert_f,8,8
	.local	pkcs10_f
	.comm	pkcs10_f,8,8
	.local	libctx
	.comm	libctx,8,8
	.local	default_null_provider
	.comm	default_null_provider,8,8
	.local	provider
	.comm	provider,8,8
	.local	server_key
	.comm	server_key,8,8
	.local	server_cert
	.comm	server_cert,8,8
	.local	client_key
	.comm	client_key,8,8
	.local	client_cert
	.comm	client_cert,8,8
	.local	ref
	.comm	ref,15,8
	.section	.rodata
.LC0:
	.string	"../test/cmp_client_test.c"
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
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$51, %edx
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
	.string	"fixture->srv_ctx = ossl_cmp_mock_srv_new(libctx, NULL)"
	.align 8
.LC3:
	.string	"fixture->cmp_ctx = ctx = OSSL_CMP_CTX_new(libctx, NULL)"
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
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$60, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$60, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L22
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_set_accept_unprotected@PLT
	testl	%eax, %eax
	je	.L22
	movq	client_cert(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set1_refCert@PLT
	testl	%eax, %eax
	je	.L22
	movq	client_cert(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set1_certOut@PLT
	testl	%eax, %eax
	je	.L22
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_cmp_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L22
	movq	server_cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_cert@PLT
	testl	%eax, %eax
	je	.L22
	movq	server_key(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_pkey@PLT
	testl	%eax, %eax
	je	.L22
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	print_to_bio_out@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_log_cb@PLT
	testl	%eax, %eax
	je	.L23
	movq	OSSL_CMP_CTX_server_perform@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_transfer_cb@PLT
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_transfer_cb_arg@PLT
	testl	%eax, %eax
	je	.L23
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	je	.L23
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movl	$31, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	je	.L23
	movq	client_cert(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_oldCert@PLT
	testl	%eax, %eax
	je	.L23
	movq	client_key(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_pkey@PLT
	testl	%eax, %eax
	je	.L23
	movq	server_cert(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_srvCert@PLT
	testl	%eax, %eax
	je	.L23
	leaq	ref(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_referenceValue@PLT
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movl	$-1, 24(%rax)
	movq	-24(%rbp), %rax
	jmp	.L16
.L22:
	nop
	jmp	.L19
.L23:
	nop
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	set_up, .-set_up
	.section	.rodata
	.align 8
.LC4:
	.string	"OSSL_CMP_PKISTATUS_unspecified"
	.align 8
.LC5:
	.string	"OSSL_CMP_CTX_get_status(fixt->cmp_ctx)"
	.align 8
.LC6:
	.string	"fixt->expected == OSSL_CMP_PKISTATUS_accepted"
	.align 8
.LC7:
	.string	"OSSL_CMP_exec_RR_ses(fixt->cmp_ctx)"
.LC8:
	.string	"fixt->expected"
	.text
	.type	execute_exec_RR_ses_test, @function
execute_exec_RR_ses_test:
.LFB741:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_status@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_exec_RR_ses@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$96, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
	movq	-24(%rbp), %rax
	movl	28(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_status@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
	movl	$1, %eax
	jmp	.L27
.L25:
	movl	$0, %eax
.L27:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	execute_exec_RR_ses_test, .-execute_exec_RR_ses_test
	.section	.rodata
.LC9:
	.string	"1.3.6.1.5.5.7.4.2"
.LC10:
	.string	"fixture->expected"
.LC11:
	.string	"OSSL_CMP_CTX_get_status(ctx)"
.LC12:
	.string	"itavs"
	.text
	.type	execute_exec_GENM_ses_test_single, @function
execute_exec_GENM_ses_test_single:
.LFB742:
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
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC9(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_create@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_push0_genm_ITAV@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_exec_GENM_ses@PLT
	movq	%rax, -48(%rbp)
	movq	OSSL_CMP_ITAV_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_freefunc_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-56(%rbp), %rax
	movl	28(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_status@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L29
	movq	-48(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$114, %esi
	call	test_ptr@PLT
	jmp	.L31
.L29:
	movq	-48(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$114, %esi
	call	test_ptr_null@PLT
.L31:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	execute_exec_GENM_ses_test_single, .-execute_exec_GENM_ses_test_single
	.type	execute_exec_GENM_ses_test, @function
execute_exec_GENM_ses_test:
.LFB743:
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
	call	execute_exec_GENM_ses_test_single
	testl	%eax, %eax
	je	.L33
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_reinit@PLT
	testl	%eax, %eax
	je	.L33
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exec_GENM_ses_test_single
	testl	%eax, %eax
	je	.L33
	movl	$1, %eax
	jmp	.L35
.L33:
	movl	$0, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	execute_exec_GENM_ses_test, .-execute_exec_GENM_ses_test
	.section	.rodata
.LC13:
	.string	"status"
.LC14:
	.string	"OSSL_CMP_PKISTATUS_trans"
.LC15:
	.string	"res"
.LC16:
	.string	"0"
.LC17:
	.string	"X509_cmp(res, client_cert)"
	.align 8
.LC18:
	.string	"STACK_OF_X509_cmp(fixture->caPubs, caPubs)"
	.text
	.type	execute_exec_certrequest_ses_test, @function
execute_exec_certrequest_ses_test:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_exec_certreq@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_status@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_print_errors@PLT
	movq	-56(%rbp), %rax
	movl	28(%rax), %edi
	movl	-20(%rbp), %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$131, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L37
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$3, %eax
	jne	.L38
	movl	-20(%rbp), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$133, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L37
.L38:
	movl	$0, %eax
	jmp	.L39
.L37:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L40
	movq	-16(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$136, %esi
	call	test_ptr_null@PLT
	jmp	.L39
.L40:
	movq	-16(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$138, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	client_cert(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$138, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L42
.L41:
	movl	$0, %eax
	jmp	.L39
.L42:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get1_caPubs@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	STACK_OF_X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$142, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	-36(%rbp), %eax
	jmp	.L39
.L43:
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	execute_exec_certrequest_ses_test, .-execute_exec_certrequest_ses_test
	.type	test_exec_RR_ses, @function
test_exec_RR_ses:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	leaq	__func__.12(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	cmpl	$0, -20(%rbp)
	je	.L47
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_oldCert@PLT
.L47:
	cmpl	$0, -20(%rbp)
	je	.L48
	movl	$-3, %edx
	jmp	.L49
.L48:
	movl	$0, %edx
.L49:
	movq	-16(%rbp), %rax
	movl	%edx, 28(%rax)
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exec_RR_ses_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L50:
	movl	-4(%rbp), %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	test_exec_RR_ses, .-test_exec_RR_ses
	.type	test_exec_RR_ses_ok, @function
test_exec_RR_ses_ok:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	test_exec_RR_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	test_exec_RR_ses_ok, .-test_exec_RR_ses_ok
	.type	test_exec_RR_ses_request_error, @function
test_exec_RR_ses_request_error:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edi
	call	test_exec_RR_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	test_exec_RR_ses_request_error, .-test_exec_RR_ses_request_error
	.section	.rodata
.LC19:
	.string	"test string"
	.text
	.type	test_exec_RR_ses_receive_error, @function
test_exec_RR_ses_receive_error:
.LFB748:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rcx
	movl	$1048576, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set_statusInfo@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set_sendError@PLT
	movq	-16(%rbp), %rax
	movl	$2, 28(%rax)
	cmpq	$0, -16(%rbp)
	je	.L58
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exec_RR_ses_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L58:
	movl	-4(%rbp), %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	test_exec_RR_ses_receive_error, .-test_exec_RR_ses_receive_error
	.type	test_exec_IR_ses, @function
test_exec_IR_ses:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	__func__.10(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-32(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 28(%rax)
	call	OPENSSL_sk_new_null@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	server_cert(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movq	server_cert(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set1_caPubsOut@PLT
	cmpq	$0, -32(%rbp)
	je	.L62
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exec_certrequest_ses_test
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L62:
	movl	-20(%rbp), %eax
.L61:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	test_exec_IR_ses, .-test_exec_IR_ses
	.type	test_exec_REQ_ses_poll, @function
test_exec_REQ_ses_poll:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	leaq	__func__.9(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set_checkAfterTime@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set_pollCount@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %edx
	movl	$12, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	cmpl	$0, -20(%rbp)
	jne	.L66
	cmpq	$0, -16(%rbp)
	je	.L67
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exec_certrequest_ses_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	jmp	.L67
.L66:
	cmpl	$21, -20(%rbp)
	jne	.L67
	cmpq	$0, -16(%rbp)
	je	.L67
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exec_GENM_ses_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L67:
	movl	-4(%rbp), %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	test_exec_REQ_ses_poll, .-test_exec_REQ_ses_poll
	.data
	.align 4
	.type	checkAfter, @object
	.size	checkAfter, 4
checkAfter:
	.long	1
	.text
	.type	test_exec_IR_ses_poll_ok, @function
test_exec_IR_ses_poll_ok:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	checkAfter(%rip), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	test_exec_REQ_ses_poll
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	test_exec_IR_ses_poll_ok, .-test_exec_IR_ses_poll_ok
	.type	test_exec_IR_ses_poll_no_timeout, @function
test_exec_IR_ses_poll_no_timeout:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	checkAfter(%rip), %eax
	leal	14(%rax), %edx
	movl	checkAfter(%rip), %eax
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$2, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	test_exec_REQ_ses_poll
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	test_exec_IR_ses_poll_no_timeout, .-test_exec_IR_ses_poll_no_timeout
	.type	test_exec_IR_ses_poll_total_timeout, @function
test_exec_IR_ses_poll_total_timeout:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	checkAfter(%rip), %eax
	leal	6(%rax), %edx
	movl	checkAfter(%rip), %eax
	addl	$1, %eax
	movl	$3, %r8d
	movl	%edx, %ecx
	movl	$3, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	test_exec_REQ_ses_poll
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	test_exec_IR_ses_poll_total_timeout, .-test_exec_IR_ses_poll_total_timeout
	.type	test_exec_CR_ses, @function
test_exec_CR_ses:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	__func__.8(%rip), %rax
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
	movl	$2, 24(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movl	$25, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_set_grant_implicit_confirm@PLT
	cmpl	$0, -28(%rbp)
	je	.L77
	movl	$24, %edx
	jmp	.L78
.L77:
	movl	$-1, %edx
.L78:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set_sendError@PLT
	cmpl	$0, -28(%rbp)
	je	.L79
	movl	$2, %edx
	jmp	.L80
.L79:
	movl	$0, %edx
.L80:
	movq	-16(%rbp), %rax
	movl	%edx, 28(%rax)
	cmpq	$0, -16(%rbp)
	je	.L81
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exec_certrequest_ses_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L81:
	movl	-4(%rbp), %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	test_exec_CR_ses, .-test_exec_CR_ses
	.type	test_exec_CR_ses_explicit_confirm, @function
test_exec_CR_ses_explicit_confirm:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	test_exec_CR_ses
	testl	%eax, %eax
	je	.L83
	movl	$1, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	test_exec_CR_ses
	testl	%eax, %eax
	je	.L83
	movl	$1, %eax
	jmp	.L85
.L83:
	movl	$0, %eax
.L85:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	test_exec_CR_ses_explicit_confirm, .-test_exec_CR_ses_explicit_confirm
	.type	test_exec_CR_ses_implicit_confirm, @function
test_exec_CR_ses_implicit_confirm:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	test_exec_CR_ses
	testl	%eax, %eax
	je	.L87
	movl	$0, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	test_exec_CR_ses
	testl	%eax, %eax
	je	.L87
	movl	$1, %eax
	jmp	.L89
.L87:
	movl	$0, %eax
.L89:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	test_exec_CR_ses_implicit_confirm, .-test_exec_CR_ses_implicit_confirm
	.type	test_exec_KUR_ses, @function
test_exec_KUR_ses:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	leaq	__func__.7(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L91
	movl	$0, %eax
	jmp	.L92
.L91:
	movq	-24(%rbp), %rax
	movl	$7, 24(%rax)
	cmpl	$0, -36(%rbp)
	je	.L93
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_transfer_cb_arg@PLT
.L93:
	cmpl	$0, -40(%rbp)
	je	.L94
	cmpl	$0, -44(%rbp)
	je	.L95
	movq	server_key(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L96
.L95:
	movq	client_key(%rip), %rax
	movq	%rax, -16(%rbp)
.L96:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set0_newPkey@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_set_accept_raverified@PLT
.L94:
	cmpl	$0, -40(%rbp)
	jne	.L97
	cmpl	$0, -44(%rbp)
	je	.L98
.L97:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	$24, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
.L98:
	cmpl	$0, -36(%rbp)
	jne	.L99
	cmpl	$0, -44(%rbp)
	je	.L100
	movl	$2, %eax
	jmp	.L101
.L100:
	movl	$0, %eax
	jmp	.L101
.L99:
	movl	$-2, %eax
.L101:
	movq	-24(%rbp), %rdx
	movl	%eax, 28(%rdx)
	cmpq	$0, -24(%rbp)
	je	.L102
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exec_certrequest_ses_test
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L102:
	movl	-4(%rbp), %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	test_exec_KUR_ses, .-test_exec_KUR_ses
	.type	test_exec_KUR_ses_ok, @function
test_exec_KUR_ses_ok:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	test_exec_KUR_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	test_exec_KUR_ses_ok, .-test_exec_KUR_ses_ok
	.type	test_exec_KUR_ses_transfer_error, @function
test_exec_KUR_ses_transfer_error:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	test_exec_KUR_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	test_exec_KUR_ses_transfer_error, .-test_exec_KUR_ses_transfer_error
	.type	test_exec_KUR_ses_wrong_popo, @function
test_exec_KUR_ses_wrong_popo:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	test_exec_KUR_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	test_exec_KUR_ses_wrong_popo, .-test_exec_KUR_ses_wrong_popo
	.type	test_exec_KUR_ses_pub, @function
test_exec_KUR_ses_pub:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	test_exec_KUR_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	test_exec_KUR_ses_pub, .-test_exec_KUR_ses_pub
	.type	test_exec_KUR_ses_wrong_pub, @function
test_exec_KUR_ses_wrong_pub:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	test_exec_KUR_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	test_exec_KUR_ses_wrong_pub, .-test_exec_KUR_ses_wrong_pub
	.section	.rodata
.LC20:
	.string	"not to my taste"
	.text
	.type	test_certConf_cb, @function
test_certConf_cb:
.LFB763:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_certConf_cb_arg@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L114
	movq	-48(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$19, -36(%rbp)
.L114:
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	test_certConf_cb, .-test_certConf_cb
	.section	.rodata
	.align 8
.LC21:
	.string	"csr = load_csr_der(pkcs10_f, libctx)"
	.align 8
.LC22:
	.string	"OSSL_CMP_CTX_set1_p10CSR(ctx, csr)"
	.align 8
.LC23:
	.string	"OSSL_CMP_CTX_set_certConf_cb(ctx, test_certConf_cb)"
	.align 8
.LC24:
	.string	"OSSL_CMP_CTX_set_certConf_cb_arg(ctx, &reject)"
	.text
	.type	test_exec_P10CR_ses, @function
test_exec_P10CR_ses:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -24(%rbp)
	leaq	__func__.6(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L117
	movl	$0, %eax
	jmp	.L118
.L117:
	movq	-8(%rbp), %rax
	movl	$4, 24(%rax)
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	je	.L119
	movl	$2, %edx
	jmp	.L120
.L119:
	movl	$0, %edx
.L120:
	movq	-8(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	libctx(%rip), %rdx
	movq	pkcs10_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_csr_der@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$341, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_p10CSR@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$342, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	leaq	test_certConf_cb(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_certConf_cb@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$343, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	leaq	-36(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_certConf_cb_arg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$344, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L122
.L121:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L122:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	cmpq	$0, -8(%rbp)
	je	.L123
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exec_certrequest_ses_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L123:
	movl	-12(%rbp), %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	test_exec_P10CR_ses, .-test_exec_P10CR_ses
	.type	test_exec_P10CR_ses_ok, @function
test_exec_P10CR_ses_ok:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	test_exec_P10CR_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	test_exec_P10CR_ses_ok, .-test_exec_P10CR_ses_ok
	.type	test_exec_P10CR_ses_reject, @function
test_exec_P10CR_ses_reject:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edi
	call	test_exec_P10CR_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	test_exec_P10CR_ses_reject, .-test_exec_P10CR_ses_reject
	.section	.rodata
	.align 8
.LC25:
	.string	"OSSL_CMP_try_certreq(ctx, TYPE, NULL, &check_after)"
.LC26:
	.string	"-1"
.LC27:
	.string	"NULL"
	.align 8
.LC28:
	.string	"OSSL_CMP_CTX_get0_newCert(ctx)"
	.align 8
.LC29:
	.string	"OSSL_CMP_try_certreq(ctx, TYPE, NULL, NULL)"
	.align 8
.LC30:
	.string	"X509_cmp(OSSL_CMP_CTX_get0_newCert(ctx), client_cert)"
	.text
	.type	execute_try_certreq_poll_test, @function
execute_try_certreq_poll_test:
.LFB767:
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
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$7, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set_pollCount@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set_checkAfterTime@PLT
	leaq	-36(%rbp), %rdx
	movl	-32(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_CMP_try_certreq@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$-1, %r8d
	movl	$372, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L129
	movl	-36(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L129
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_newCert@PLT
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$374, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L129
	leaq	-36(%rbp), %rdx
	movl	-32(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_CMP_try_certreq@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$-1, %r8d
	movl	$375, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L129
	movl	-36(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L129
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_newCert@PLT
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$377, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L129
	movl	-32(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_CMP_try_certreq@PLT
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	movl	28(%rax), %edi
	leaq	.LC29(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$378, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L129
	movq	client_cert(%rip), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_newCert@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$380, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L129
	movl	$1, %eax
	jmp	.L131
.L129:
	movl	$0, %eax
.L131:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	execute_try_certreq_poll_test, .-execute_try_certreq_poll_test
	.type	test_try_certreq_poll, @function
test_try_certreq_poll:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.5(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L133
	movl	$0, %eax
	jmp	.L134
.L133:
	movq	-16(%rbp), %rax
	movl	$1, 28(%rax)
	cmpq	$0, -16(%rbp)
	je	.L135
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_try_certreq_poll_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L135:
	movl	-4(%rbp), %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	test_try_certreq_poll, .-test_try_certreq_poll
	.section	.rodata
	.align 8
.LC31:
	.string	"OSSL_CMP_try_certreq(ctx, -1 , NULL, NULL)"
	.align 8
.LC32:
	.string	"OSSL_CMP_CTX_get0_newCert(fixture->cmp_ctx)"
	.text
	.type	execute_try_certreq_poll_abort_test, @function
execute_try_certreq_poll_abort_test:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$99, -12(%rbp)
	movl	$2, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set_pollCount@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_mock_srv_set_checkAfterTime@PLT
	leaq	-20(%rbp), %rdx
	movl	-16(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_CMP_try_certreq@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$-1, %r8d
	movl	$401, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L137
	movl	-20(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L137
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_newCert@PLT
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$403, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L137
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_try_certreq@PLT
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movl	28(%rax), %edi
	leaq	.LC31(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$404, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L137
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_newCert@PLT
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$406, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L137
	movl	$1, %eax
	jmp	.L139
.L137:
	movl	$0, %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	execute_try_certreq_poll_abort_test, .-execute_try_certreq_poll_abort_test
	.type	test_try_certreq_poll_abort, @function
test_try_certreq_poll_abort:
.LFB770:
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
	jne	.L141
	movl	$0, %eax
	jmp	.L142
.L141:
	movq	-16(%rbp), %rax
	movl	$1, 28(%rax)
	cmpq	$0, -16(%rbp)
	je	.L143
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_try_certreq_poll_abort_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L143:
	movl	-4(%rbp), %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	test_try_certreq_poll_abort, .-test_try_certreq_poll_abort
	.type	test_exec_GENM_ses_poll_ok, @function
test_exec_GENM_ses_poll_ok:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	checkAfter(%rip), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2, %edx
	movl	%eax, %esi
	movl	$21, %edi
	call	test_exec_REQ_ses_poll
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	test_exec_GENM_ses_poll_ok, .-test_exec_GENM_ses_poll_ok
	.type	test_exec_GENM_ses_poll_no_timeout, @function
test_exec_GENM_ses_poll_no_timeout:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	checkAfter(%rip), %eax
	leal	1(%rax), %edx
	movl	checkAfter(%rip), %eax
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movl	%eax, %esi
	movl	$21, %edi
	call	test_exec_REQ_ses_poll
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	test_exec_GENM_ses_poll_no_timeout, .-test_exec_GENM_ses_poll_no_timeout
	.type	test_exec_GENM_ses_poll_total_timeout, @function
test_exec_GENM_ses_poll_total_timeout:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	checkAfter(%rip), %eax
	leal	2(%rax), %edx
	movl	checkAfter(%rip), %eax
	addl	$1, %eax
	movl	$3, %r8d
	movl	%edx, %ecx
	movl	$3, %edx
	movl	%eax, %esi
	movl	$21, %edi
	call	test_exec_REQ_ses_poll
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	test_exec_GENM_ses_poll_total_timeout, .-test_exec_GENM_ses_poll_total_timeout
	.type	test_exec_GENM_ses, @function
test_exec_GENM_ses:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	__func__.3(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L151
	movl	$0, %eax
	jmp	.L152
.L151:
	cmpl	$0, -20(%rbp)
	je	.L153
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_transfer_cb_arg@PLT
.L153:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 104(%rax)
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 28(%rax)
	cmpq	$0, -16(%rbp)
	je	.L154
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exec_GENM_ses_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L154:
	movl	-4(%rbp), %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	test_exec_GENM_ses, .-test_exec_GENM_ses
	.type	test_exec_GENM_ses_ok, @function
test_exec_GENM_ses_ok:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	test_exec_GENM_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	test_exec_GENM_ses_ok, .-test_exec_GENM_ses_ok
	.type	test_exec_GENM_ses_transfer_error, @function
test_exec_GENM_ses_transfer_error:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$-2, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	test_exec_GENM_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	test_exec_GENM_ses_transfer_error, .-test_exec_GENM_ses_transfer_error
	.type	test_exec_GENM_ses_total_timeout, @function
test_exec_GENM_ses_total_timeout:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$-2, %edx
	movl	$-1, %esi
	movl	$0, %edi
	call	test_exec_GENM_ses
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	test_exec_GENM_ses_total_timeout, .-test_exec_GENM_ses_total_timeout
	.section	.rodata
.LC33:
	.string	"abcdefg"
	.text
	.type	execute_exchange_certConf_test, @function
execute_exchange_certConf_test:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, %rcx
	movl	$17, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_exchange_certConf@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %esi
	movl	-4(%rbp), %edi
	leaq	.LC15(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$474, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	execute_exchange_certConf_test, .-execute_exchange_certConf_test
	.section	.rodata
.LC34:
	.string	"foo_details"
.LC35:
	.string	"foo_status"
	.text
	.type	execute_exchange_error_test, @function
execute_exchange_error_test:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	movq	%rcx, %r9
	movl	$999, %r8d
	movq	%rdx, %rcx
	movl	$4194304, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cmp_exchange_error@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %esi
	movl	-4(%rbp), %edi
	leaq	.LC15(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$485, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	execute_exchange_error_test, .-execute_exchange_error_test
	.type	test_exchange_certConf, @function
test_exchange_certConf:
.LFB780:
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
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L166
	movl	$0, %eax
	jmp	.L167
.L166:
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	client_cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set0_newCert@PLT
	testl	%eax, %eax
	jne	.L168
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L168:
	cmpq	$0, -8(%rbp)
	je	.L169
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exchange_certConf_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L169:
	movl	-12(%rbp), %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	test_exchange_certConf, .-test_exchange_certConf
	.type	test_exchange_error, @function
test_exchange_error:
.LFB781:
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
	jne	.L171
	movl	$0, %eax
	jmp	.L172
.L171:
	movq	-16(%rbp), %rax
	movl	$1, 28(%rax)
	cmpq	$0, -16(%rbp)
	je	.L173
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_exchange_error_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L173:
	movl	-4(%rbp), %eax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	test_exchange_error, .-test_exchange_error
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	server_cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	server_key(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	client_cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	client_key(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
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
.LFE782:
	.size	cleanup_tests, .-cleanup_tests
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB783:
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
.LFE783:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC36:
	.string	"Error parsing test options\n"
	.align 8
.LC37:
	.string	"server_key_f = test_get_argument(0)"
	.align 8
.LC38:
	.string	"server_cert_f = test_get_argument(1)"
	.align 8
.LC39:
	.string	"client_key_f = test_get_argument(2)"
	.align 8
.LC40:
	.string	"client_cert_f = test_get_argument(3)"
	.align 8
.LC41:
	.string	"pkcs10_f = test_get_argument(4)"
	.align 8
.LC42:
	.string	"server.key server.crt client.key client.crt client.csr module_name [module_conf_file]\n"
.LC43:
	.string	"usage: cmp_client_test %s"
	.align 8
.LC44:
	.string	"server_key = load_pkey_pem(server_key_f, libctx)"
	.align 8
.LC45:
	.string	"server_cert = load_cert_pem(server_cert_f, libctx)"
	.align 8
.LC46:
	.string	"client_key = load_pkey_pem(client_key_f, libctx)"
	.align 8
.LC47:
	.string	"client_cert = load_cert_pem(client_cert_f, libctx)"
	.align 8
.LC48:
	.string	"RAND_bytes_ex(libctx, ref, sizeof(ref), 0)"
.LC49:
	.string	"1"
.LC50:
	.string	"test_exec_RR_ses_ok"
	.align 8
.LC51:
	.string	"test_exec_RR_ses_request_error"
	.align 8
.LC52:
	.string	"test_exec_RR_ses_receive_error"
	.align 8
.LC53:
	.string	"test_exec_CR_ses_explicit_confirm"
	.align 8
.LC54:
	.string	"test_exec_CR_ses_implicit_confirm"
.LC55:
	.string	"test_exec_IR_ses"
.LC56:
	.string	"test_exec_IR_ses_poll_ok"
	.align 8
.LC57:
	.string	"test_exec_IR_ses_poll_no_timeout"
	.align 8
.LC58:
	.string	"test_exec_IR_ses_poll_total_timeout"
.LC59:
	.string	"test_exec_KUR_ses_ok"
	.align 8
.LC60:
	.string	"test_exec_KUR_ses_transfer_error"
.LC61:
	.string	"test_exec_KUR_ses_wrong_popo"
.LC62:
	.string	"test_exec_KUR_ses_pub"
.LC63:
	.string	"test_exec_KUR_ses_wrong_pub"
.LC64:
	.string	"test_exec_P10CR_ses_ok"
.LC65:
	.string	"test_exec_P10CR_ses_reject"
.LC66:
	.string	"test_try_certreq_poll"
.LC67:
	.string	"test_try_certreq_poll_abort"
.LC68:
	.string	"test_exec_GENM_ses_ok"
	.align 8
.LC69:
	.string	"test_exec_GENM_ses_transfer_error"
	.align 8
.LC70:
	.string	"test_exec_GENM_ses_total_timeout"
.LC71:
	.string	"test_exec_GENM_ses_poll_ok"
	.align 8
.LC72:
	.string	"test_exec_GENM_ses_poll_no_timeout"
	.align 8
.LC73:
	.string	"test_exec_GENM_ses_poll_total_timeout"
.LC74:
	.string	"test_exchange_certConf"
.LC75:
	.string	"test_exchange_error"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L179
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$526, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L180
.L179:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, server_key_f(%rip)
	movq	server_key_f(%rip), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$530, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L181
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, server_cert_f(%rip)
	movq	server_cert_f(%rip), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$531, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L181
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, client_key_f(%rip)
	movq	client_key_f(%rip), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$532, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L181
	movl	$3, %edi
	call	test_get_argument@PLT
	movq	%rax, client_cert_f(%rip)
	movq	client_cert_f(%rip), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$533, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L181
	movl	$4, %edi
	call	test_get_argument@PLT
	movq	%rax, pkcs10_f(%rip)
	movq	pkcs10_f(%rip), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$534, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L182
.L181:
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$535, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L180
.L182:
	leaq	.LC42(%rip), %rcx
	leaq	provider(%rip), %rdx
	leaq	default_null_provider(%rip), %rsi
	leaq	libctx(%rip), %rax
	movq	%rcx, %r8
	movl	$5, %ecx
	movq	%rax, %rdi
	call	test_arg_libctx@PLT
	testl	%eax, %eax
	jne	.L183
	movl	$0, %eax
	jmp	.L180
.L183:
	movq	libctx(%rip), %rdx
	movq	server_key_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, server_key(%rip)
	movq	server_key(%rip), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$542, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L184
	movq	libctx(%rip), %rdx
	movq	server_cert_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, server_cert(%rip)
	movq	server_cert(%rip), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$543, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L184
	movq	libctx(%rip), %rdx
	movq	client_key_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, client_key(%rip)
	movq	client_key(%rip), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$544, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L184
	movq	libctx(%rip), %rdx
	movq	client_cert_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, client_cert(%rip)
	movq	client_cert(%rip), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$545, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L184
	movq	libctx(%rip), %rax
	leaq	ref(%rip), %rsi
	movl	$0, %ecx
	movl	$15, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	movl	%eax, %esi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$546, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L185
.L184:
	call	cleanup_tests@PLT
	movl	$0, %eax
	jmp	.L180
.L185:
	leaq	test_exec_RR_ses_ok(%rip), %rdx
	leaq	.LC50(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_RR_ses_request_error(%rip), %rdx
	leaq	.LC51(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_RR_ses_receive_error(%rip), %rdx
	leaq	.LC52(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_CR_ses_explicit_confirm(%rip), %rdx
	leaq	.LC53(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_CR_ses_implicit_confirm(%rip), %rdx
	leaq	.LC54(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_IR_ses(%rip), %rdx
	leaq	.LC55(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_IR_ses_poll_ok(%rip), %rdx
	leaq	.LC56(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_IR_ses_poll_no_timeout(%rip), %rdx
	leaq	.LC57(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_IR_ses_poll_total_timeout(%rip), %rdx
	leaq	.LC58(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_KUR_ses_ok(%rip), %rdx
	leaq	.LC59(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_KUR_ses_transfer_error(%rip), %rdx
	leaq	.LC60(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_KUR_ses_wrong_popo(%rip), %rdx
	leaq	.LC61(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_KUR_ses_pub(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_KUR_ses_wrong_pub(%rip), %rdx
	leaq	.LC63(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_P10CR_ses_ok(%rip), %rdx
	leaq	.LC64(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_P10CR_ses_reject(%rip), %rdx
	leaq	.LC65(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_try_certreq_poll(%rip), %rdx
	leaq	.LC66(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_try_certreq_poll_abort(%rip), %rdx
	leaq	.LC67(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_GENM_ses_ok(%rip), %rdx
	leaq	.LC68(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_GENM_ses_transfer_error(%rip), %rdx
	leaq	.LC69(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_GENM_ses_total_timeout(%rip), %rdx
	leaq	.LC70(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_GENM_ses_poll_ok(%rip), %rdx
	leaq	.LC71(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_GENM_ses_poll_no_timeout(%rip), %rdx
	leaq	.LC72(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exec_GENM_ses_poll_total_timeout(%rip), %rdx
	leaq	.LC73(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exchange_certConf(%rip), %rdx
	leaq	.LC74(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_exchange_error(%rip), %rdx
	leaq	.LC75(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L180:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 17
__func__.12:
	.string	"test_exec_RR_ses"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 31
__func__.11:
	.string	"test_exec_RR_ses_receive_error"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 17
__func__.10:
	.string	"test_exec_IR_ses"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 23
__func__.9:
	.string	"test_exec_REQ_ses_poll"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 17
__func__.8:
	.string	"test_exec_CR_ses"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 18
__func__.7:
	.string	"test_exec_KUR_ses"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 20
__func__.6:
	.string	"test_exec_P10CR_ses"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 22
__func__.5:
	.string	"test_try_certreq_poll"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 28
__func__.4:
	.string	"test_try_certreq_poll_abort"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"test_exec_GENM_ses"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 23
__func__.2:
	.string	"test_exchange_certConf"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"test_exchange_error"
	.align 8
.LC76:
	.string	"Usage: %s [options] server.key server.crt client.key client.crt client.csr module_name [module_conf_file]\n"
.LC77:
	.string	"Valid options are:\n"
.LC78:
	.string	"help"
.LC79:
	.string	"Display this summary"
.LC80:
	.string	"list"
	.align 8
.LC81:
	.string	"Display the list of tests available"
.LC82:
	.string	"test"
	.align 8
.LC83:
	.string	"Run a single test by id or name"
.LC84:
	.string	"iter"
	.align 8
.LC85:
	.string	"Run a single iteration of a test"
.LC86:
	.string	"indent"
	.align 8
.LC87:
	.string	"Number of tabs added to output"
.LC88:
	.string	"seed"
	.align 8
.LC89:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC76
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC77
	.quad	.LC78
	.long	500
	.long	45
	.quad	.LC79
	.quad	.LC80
	.long	501
	.long	45
	.quad	.LC81
	.quad	.LC82
	.long	502
	.long	115
	.quad	.LC83
	.quad	.LC84
	.long	503
	.long	110
	.quad	.LC85
	.quad	.LC86
	.long	504
	.long	112
	.quad	.LC87
	.quad	.LC88
	.long	505
	.long	110
	.quad	.LC89
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
