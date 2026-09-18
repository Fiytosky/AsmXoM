	.file	"cmp_vfy_test.c"
	.text
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB327:
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
.LFE327:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_const_OSSL_CRMF_MSG_sk_type, @function
ossl_check_const_OSSL_CRMF_MSG_sk_type:
.LFB558:
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
.LFE558:
	.size	ossl_check_const_OSSL_CRMF_MSG_sk_type, .-ossl_check_const_OSSL_CRMF_MSG_sk_type
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
	.local	server_f
	.comm	server_f,8,8
	.local	client_f
	.comm	client_f,8,8
	.local	endentity1_f
	.comm	endentity1_f,8,8
	.local	endentity2_f
	.comm	endentity2_f,8,8
	.local	root_f
	.comm	root_f,8,8
	.local	intermediate_f
	.comm	intermediate_f,8,8
	.local	ir_protected_f
	.comm	ir_protected_f,8,8
	.local	ir_unprotected_f
	.comm	ir_unprotected_f,8,8
	.local	ir_rmprotection_f
	.comm	ir_rmprotection_f,8,8
	.local	ip_waiting_f
	.comm	ip_waiting_f,8,8
	.local	instacert_f
	.comm	instacert_f,8,8
	.local	instaca_f
	.comm	instaca_f,8,8
	.local	ir_protected_0_extracerts
	.comm	ir_protected_0_extracerts,8,8
	.local	ir_protected_2_extracerts
	.comm	ir_protected_2_extracerts,8,8
	.local	libctx
	.comm	libctx,8,8
	.local	default_null_provider
	.comm	default_null_provider,8,8
	.local	provider
	.comm	provider,8,8
	.section	.rodata
.LC0:
	.string	"../test/cmp_vfy_test.c"
	.text
	.type	tear_down, @function
tear_down:
.LFB789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	tear_down, .-tear_down
	.local	test_time_valid
	.comm	test_time_valid,8,8
	.local	test_time_after_expiration
	.comm	test_time_after_expiration,8,8
	.section	.rodata
	.align 8
.LC1:
	.string	"fixture = OPENSSL_zalloc(sizeof(*fixture))"
	.align 8
.LC2:
	.string	"fixture->cmp_ctx = OSSL_CMP_CTX_new(libctx, NULL)"
	.text
	.type	set_up, @function
set_up:
.LFB790:
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
	leaq	.LC0(%rip), %rax
	movl	$57, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	call	X509_STORE_new@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L13
	movq	libctx(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_new@PLT
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
	je	.L13
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set0_trustedStore@PLT
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	print_to_bio_out@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_log_cb@PLT
	testl	%eax, %eax
	jne	.L14
.L13:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movl	$0, %eax
	jmp	.L12
.L14:
	movq	test_time_valid(%rip), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_time@PLT
	movq	X509_STORE_CTX_print_verify_cb@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set_verify_cb@PLT
	movq	-24(%rbp), %rax
.L12:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	set_up, .-set_up
	.local	srvcert
	.comm	srvcert,8,8
	.local	clcert
	.comm	clcert,8,8
	.local	endentity1
	.comm	endentity1,8,8
	.local	endentity2
	.comm	endentity2,8,8
	.local	intermediate
	.comm	intermediate,8,8
	.local	root
	.comm	root,8,8
	.local	insta_cert
	.comm	insta_cert,8,8
	.local	instaca_cert
	.comm	instaca_cert,8,8
	.local	rand_data
	.comm	rand_data,16,16
	.local	ir_unprotected
	.comm	ir_unprotected,8,8
	.local	ir_rmprotection
	.comm	ir_rmprotection,8,8
	.section	.rodata
	.align 16
	.type	sec_1, @object
	.size	sec_1, 19
sec_1:
	.ascii	"9pp8-b35i-Xd3Q-udNR"
	.text
	.type	flip_bit, @function
flip_bit:
.LFB791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$7, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_get_bit@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	sete	%al
	movzbl	%al, %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_set_bit@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	flip_bit, .-flip_bit
	.section	.rodata
	.align 8
.LC3:
	.string	"ossl_cmp_verify_popo(fixture->cmp_ctx, fixture->msg, fixture->additional_arg)"
.LC4:
	.string	"fixture->expected"
	.text
	.type	execute_verify_popo_test, @function
execute_verify_popo_test:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	libctx(%rip), %rdx
	movq	ir_protected_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L20
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CRMF_MSG_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L21
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	flip_bit
	testl	%eax, %eax
	jne	.L20
.L21:
	movl	$0, %eax
	jmp	.L19
.L20:
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_verify_popo@PLT
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$111, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	execute_verify_popo_test, .-execute_verify_popo_test
	.type	test_verify_popo, @function
test_verify_popo:
.LFB793:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.22(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_verify_popo_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L25:
	movl	-4(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	test_verify_popo, .-test_verify_popo
	.type	test_verify_popo_bad, @function
test_verify_popo_bad:
.LFB794:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.21(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L29
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_verify_popo_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L29:
	movl	-4(%rbp), %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	test_verify_popo_bad, .-test_verify_popo_bad
	.section	.rodata
	.align 8
.LC5:
	.string	"ossl_cmp_msg_check_update(fixture->cmp_ctx, fixture->msg, NULL, 0)"
.LC6:
	.string	"fixture->cert"
.LC7:
	.string	"validated"
	.text
	.type	execute_validate_msg_test, @function
execute_validate_msg_test:
.LFB795:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_cmp_msg_check_update@PLT
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	leaq	.LC5(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$137, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_validatedSrvCert@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L32
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$142, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L31
.L32:
	movl	$1, %eax
	jmp	.L34
.L31:
	movl	$0, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE795:
	.size	execute_validate_msg_test, .-execute_validate_msg_test
	.section	.rodata
	.align 8
.LC8:
	.string	"OSSL_CMP_validate_cert_path(fixture->cmp_ctx, ts, fixture->cert)"
	.text
	.type	execute_validate_cert_path_test, @function
execute_validate_cert_path_test:
.LFB796:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_trustedStore@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_validate_cert_path@PLT
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	leaq	.LC8(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_print_errors@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE796:
	.size	execute_validate_cert_path_test, .-execute_validate_cert_path_test
	.section	.rodata
	.align 8
.LC9:
	.string	"miss ? OSSL_CMP_CTX_set0_trusted(fixture->cmp_ctx, NULL) : OSSL_CMP_CTX_set1_secretValue(fixture->cmp_ctx, sec_1, wrong ? 4 : sizeof(sec_1))"
	.align 8
.LC10:
	.string	"fixture->msg = load_pkimsg(ip_waiting_f, libctx)"
	.text
	.type	test_validate_msg_mac_alg_protection, @function
test_validate_msg_mac_alg_protection:
.LFB797:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	leaq	__func__.20(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	cmpl	$0, -20(%rbp)
	jne	.L40
	cmpl	$0, -24(%rbp)
	jne	.L40
	movl	$1, %edx
	jmp	.L41
.L40:
	movl	$0, %edx
.L41:
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	cmpl	$0, -20(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set0_trustedStore@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.L43
.L42:
	cmpl	$0, -24(%rbp)
	je	.L44
	movl	$4, %edx
	jmp	.L45
.L44:
	movl	$19, %edx
.L45:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	sec_1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_secretValue@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L43:
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$162, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	movq	libctx(%rip), %rdx
	movq	ip_waiting_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L47
.L46:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L47:
	cmpq	$0, -8(%rbp)
	je	.L48
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_msg_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L48:
	movl	-12(%rbp), %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	test_validate_msg_mac_alg_protection, .-test_validate_msg_mac_alg_protection
	.type	test_validate_msg_mac_alg_protection_ok, @function
test_validate_msg_mac_alg_protection_ok:
.LFB798:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	test_validate_msg_mac_alg_protection
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE798:
	.size	test_validate_msg_mac_alg_protection_ok, .-test_validate_msg_mac_alg_protection_ok
	.type	test_validate_msg_mac_alg_protection_missing, @function
test_validate_msg_mac_alg_protection_missing:
.LFB799:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$1, %edi
	call	test_validate_msg_mac_alg_protection
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	test_validate_msg_mac_alg_protection_missing, .-test_validate_msg_mac_alg_protection_missing
	.type	test_validate_msg_mac_alg_protection_wrong, @function
test_validate_msg_mac_alg_protection_wrong:
.LFB800:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	movl	$0, %edi
	call	test_validate_msg_mac_alg_protection
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE800:
	.size	test_validate_msg_mac_alg_protection_wrong, .-test_validate_msg_mac_alg_protection_wrong
	.section	.rodata
	.align 8
.LC11:
	.string	"OSSL_CMP_CTX_set1_secretValue(fixture->cmp_ctx, sec_bad, sizeof(sec_bad))"
	.text
	.type	test_validate_msg_mac_alg_protection_bad, @function
test_validate_msg_mac_alg_protection_bad:
.LFB801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movabsq	$3833515654182367289, %rax
	movabsq	$8443494157558230377, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1917740149, -17(%rbp)
	leaq	__func__.19(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L61
.L56:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-32(%rbp), %rcx
	movl	$19, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_secretValue@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$200, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	movq	libctx(%rip), %rdx
	movq	ip_waiting_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$202, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L59
.L58:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L59:
	cmpq	$0, -8(%rbp)
	je	.L60
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_msg_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L60:
	movl	-12(%rbp), %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE801:
	.size	test_validate_msg_mac_alg_protection_bad, .-test_validate_msg_mac_alg_protection_bad
	.type	add_trusted, @function
add_trusted:
.LFB802:
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
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_trustedStore@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_STORE_add_cert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	add_trusted, .-add_trusted
	.type	add_untrusted, @function
add_untrusted:
.LFB803:
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
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_untrusted@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509_add_cert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE803:
	.size	add_untrusted, .-add_untrusted
	.section	.rodata
	.align 8
.LC12:
	.string	"fixture->msg = load_pkimsg(ir_protected_f, libctx)"
	.text
	.type	test_validate_msg_signature_partial_chain, @function
test_validate_msg_signature_partial_chain:
.LFB804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	leaq	__func__.18(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	srvcert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_trustedStore@PLT
	movq	%rax, -24(%rbp)
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	cmpq	$0, -24(%rbp)
	je	.L69
	movq	libctx(%rip), %rdx
	movq	ir_protected_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$232, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	srvcert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_trusted
	testl	%eax, %eax
	jne	.L70
.L69:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
	jmp	.L71
.L70:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$524288, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	cmpl	$0, -36(%rbp)
	je	.L71
	movq	test_time_after_expiration(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_time@PLT
.L71:
	cmpq	$0, -8(%rbp)
	je	.L72
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_msg_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L72:
	movl	-12(%rbp), %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE804:
	.size	test_validate_msg_signature_partial_chain, .-test_validate_msg_signature_partial_chain
	.type	test_validate_msg_signature_trusted_ok, @function
test_validate_msg_signature_trusted_ok:
.LFB805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	test_validate_msg_signature_partial_chain
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE805:
	.size	test_validate_msg_signature_trusted_ok, .-test_validate_msg_signature_trusted_ok
	.type	test_validate_msg_signature_trusted_expired, @function
test_validate_msg_signature_trusted_expired:
.LFB806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edi
	call	test_validate_msg_signature_partial_chain
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE806:
	.size	test_validate_msg_signature_trusted_expired, .-test_validate_msg_signature_trusted_expired
	.section	.rodata
	.align 8
.LC13:
	.string	"miss ? OSSL_CMP_CTX_set1_secretValue(fixture->cmp_ctx, sec_1, sizeof(sec_1)) : OSSL_CMP_CTX_set1_srvCert(fixture->cmp_ctx, wrong? clcert : srvcert)"
	.text
	.type	test_validate_msg_signature_srvcert, @function
test_validate_msg_signature_srvcert:
.LFB807:
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
	leaq	__func__.17(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	movl	$0, %eax
	jmp	.L79
.L78:
	movq	srvcert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	cmpl	$0, -20(%rbp)
	jne	.L80
	cmpl	$0, -28(%rbp)
	jne	.L80
	cmpl	$0, -24(%rbp)
	jne	.L80
	movl	$1, %edx
	jmp	.L81
.L80:
	movl	$0, %edx
.L81:
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	libctx(%rip), %rdx
	movq	ir_protected_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$264, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L82
	cmpl	$0, -24(%rbp)
	je	.L83
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	sec_1(%rip), %rcx
	movl	$19, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_secretValue@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.L84
.L83:
	cmpl	$0, -28(%rbp)
	je	.L85
	movq	clcert(%rip), %rax
	jmp	.L86
.L85:
	movq	srvcert(%rip), %rax
.L86:
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_CMP_CTX_set1_srvCert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L84:
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$265, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
	cmpl	$0, -20(%rbp)
	je	.L87
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	flip_bit
	testl	%eax, %eax
	jne	.L87
.L82:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L87:
	cmpq	$0, -8(%rbp)
	je	.L88
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_msg_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L88:
	movl	-12(%rbp), %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE807:
	.size	test_validate_msg_signature_srvcert, .-test_validate_msg_signature_srvcert
	.type	test_validate_msg_signature_srvcert_missing, @function
test_validate_msg_signature_srvcert_missing:
.LFB808:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	test_validate_msg_signature_srvcert
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE808:
	.size	test_validate_msg_signature_srvcert_missing, .-test_validate_msg_signature_srvcert_missing
	.type	test_validate_msg_signature_srvcert_wrong, @function
test_validate_msg_signature_srvcert_wrong:
.LFB809:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	test_validate_msg_signature_srvcert
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE809:
	.size	test_validate_msg_signature_srvcert_wrong, .-test_validate_msg_signature_srvcert_wrong
	.type	test_validate_msg_signature_bad, @function
test_validate_msg_signature_bad:
.LFB810:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	test_validate_msg_signature_srvcert
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE810:
	.size	test_validate_msg_signature_bad, .-test_validate_msg_signature_bad
	.type	test_validate_msg_signature_sender_cert_srvcert, @function
test_validate_msg_signature_sender_cert_srvcert:
.LFB811:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	test_validate_msg_signature_srvcert
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE811:
	.size	test_validate_msg_signature_sender_cert_srvcert, .-test_validate_msg_signature_sender_cert_srvcert
	.section	.rodata
	.align 8
.LC14:
	.string	"fixture->msg = load_pkimsg(ir_protected_0_extracerts, libctx)"
	.text
	.type	test_validate_msg_signature_sender_cert_untrusted, @function
test_validate_msg_signature_sender_cert_untrusted:
.LFB812:
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
	jne	.L98
	movl	$0, %eax
	jmp	.L99
.L98:
	movq	insta_cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	libctx(%rip), %rdx
	movq	ir_protected_0_extracerts(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$306, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L100
	movq	instaca_cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_trusted
	testl	%eax, %eax
	je	.L100
	movq	insta_cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_untrusted
	testl	%eax, %eax
	jne	.L101
.L100:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L101:
	cmpq	$0, -8(%rbp)
	je	.L102
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_msg_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L102:
	movl	-12(%rbp), %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE812:
	.size	test_validate_msg_signature_sender_cert_untrusted, .-test_validate_msg_signature_sender_cert_untrusted
	.type	test_validate_msg_signature_sender_cert_trusted, @function
test_validate_msg_signature_sender_cert_trusted:
.LFB813:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.15(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L104
	movl	$0, %eax
	jmp	.L105
.L104:
	movq	insta_cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	libctx(%rip), %rdx
	movq	ir_protected_0_extracerts(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$321, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L106
	movq	instaca_cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_trusted
	testl	%eax, %eax
	je	.L106
	movq	insta_cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_trusted
	testl	%eax, %eax
	jne	.L107
.L106:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L107:
	cmpq	$0, -8(%rbp)
	je	.L108
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_msg_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L108:
	movl	-12(%rbp), %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE813:
	.size	test_validate_msg_signature_sender_cert_trusted, .-test_validate_msg_signature_sender_cert_trusted
	.section	.rodata
	.align 8
.LC15:
	.string	"fixture->msg = load_pkimsg(ir_protected_2_extracerts, libctx)"
	.text
	.type	test_validate_msg_signature_sender_cert_extracert, @function
test_validate_msg_signature_sender_cert_extracert:
.LFB814:
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
	jne	.L110
	movl	$0, %eax
	jmp	.L111
.L110:
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	libctx(%rip), %rdx
	movq	ir_protected_2_extracerts(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$335, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L112
	movq	instaca_cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_trusted
	testl	%eax, %eax
	jne	.L113
.L112:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
	jmp	.L114
.L113:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$1, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L114:
	cmpq	$0, -8(%rbp)
	je	.L115
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_msg_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L115:
	movl	-12(%rbp), %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE814:
	.size	test_validate_msg_signature_sender_cert_extracert, .-test_validate_msg_signature_sender_cert_extracert
	.type	test_validate_msg_signature_sender_cert_absent, @function
test_validate_msg_signature_sender_cert_absent:
.LFB815:
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
	jne	.L117
	movl	$0, %eax
	jmp	.L118
.L117:
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	libctx(%rip), %rdx
	movq	ir_protected_0_extracerts(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$351, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L119
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L119:
	cmpq	$0, -8(%rbp)
	je	.L120
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_msg_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L120:
	movl	-12(%rbp), %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE815:
	.size	test_validate_msg_signature_sender_cert_absent, .-test_validate_msg_signature_sender_cert_absent
	.section	.rodata
	.align 8
.LC16:
	.string	"OSSL_CMP_CTX_set1_expected_sender(fixture->cmp_ctx, name)"
	.align 8
.LC17:
	.string	"OSSL_CMP_CTX_set1_srvCert(fixture->cmp_ctx, srvcert)"
	.text
	.type	test_validate_with_sender, @function
test_validate_with_sender:
.LFB816:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	__func__.12(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L122
	movl	$0, %eax
	jmp	.L123
.L122:
	movq	srvcert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	libctx(%rip), %rdx
	movq	ir_protected_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$366, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L124
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_expected_sender@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$367, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	srvcert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_srvCert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$368, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L125
.L124:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L125:
	cmpq	$0, -8(%rbp)
	je	.L126
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_msg_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L126:
	movl	-12(%rbp), %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE816:
	.size	test_validate_with_sender, .-test_validate_with_sender
	.type	test_validate_msg_signature_expected_sender, @function
test_validate_msg_signature_expected_sender:
.LFB817:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	srvcert(%rip), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	call	test_validate_with_sender
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE817:
	.size	test_validate_msg_signature_expected_sender, .-test_validate_msg_signature_expected_sender
	.type	test_validate_msg_signature_unexpected_sender, @function
test_validate_msg_signature_unexpected_sender:
.LFB818:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_validate_with_sender
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	test_validate_msg_signature_unexpected_sender, .-test_validate_msg_signature_unexpected_sender
	.section	.rodata
	.align 8
.LC18:
	.string	"fixture->msg = load_pkimsg(ir_unprotected_f, libctx)"
	.text
	.type	test_validate_msg_unprotected_request, @function
test_validate_msg_unprotected_request:
.LFB819:
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
	jne	.L132
	movl	$0, %eax
	jmp	.L133
.L132:
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	libctx(%rip), %rdx
	movq	ir_unprotected_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$391, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L134
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L134:
	cmpq	$0, -8(%rbp)
	je	.L135
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_msg_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L135:
	movl	-12(%rbp), %eax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE819:
	.size	test_validate_msg_unprotected_request, .-test_validate_msg_unprotected_request
	.type	setup_path, @function
setup_path:
.LFB820:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	endentity2(%rip), %rdx
	movq	%rdx, 32(%rax)
	cmpq	$0, -32(%rbp)
	jne	.L137
	cmpl	$0, -36(%rbp)
	jne	.L137
	movl	$1, %edx
	jmp	.L138
.L137:
	movl	$0, %edx
.L138:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, 8(%rax)
	cmpl	$0, -36(%rbp)
	je	.L139
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_trustedStore@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movq	%rax, -16(%rbp)
	movq	test_time_after_expiration(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_time@PLT
.L139:
	cmpq	$0, -32(%rbp)
	jne	.L140
	movq	root(%rip), %rax
	jmp	.L141
.L140:
	movq	-32(%rbp), %rax
.L141:
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	add_trusted
	testl	%eax, %eax
	je	.L142
	movq	endentity1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_untrusted
	testl	%eax, %eax
	je	.L142
	movq	intermediate(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_untrusted
	testl	%eax, %eax
	jne	.L144
.L142:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.L144:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE820:
	.size	setup_path, .-setup_path
	.type	test_validate_cert_path_ok, @function
test_validate_cert_path_ok:
.LFB821:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L146
	movl	$0, %eax
	jmp	.L149
.L146:
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setup_path
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L148
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_cert_path_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L148:
	movl	-4(%rbp), %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE821:
	.size	test_validate_cert_path_ok, .-test_validate_cert_path_ok
	.type	test_validate_cert_path_wrong_anchor, @function
test_validate_cert_path_wrong_anchor:
.LFB822:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L151
	movl	$0, %eax
	jmp	.L154
.L151:
	movq	srvcert(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	setup_path
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L153
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_cert_path_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L153:
	movl	-4(%rbp), %eax
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE822:
	.size	test_validate_cert_path_wrong_anchor, .-test_validate_cert_path_wrong_anchor
	.type	test_validate_cert_path_expired, @function
test_validate_cert_path_expired:
.LFB823:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L156
	movl	$0, %eax
	jmp	.L159
.L156:
	leaq	-16(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setup_path
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L158
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_validate_cert_path_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L158:
	movl	-4(%rbp), %eax
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE823:
	.size	test_validate_cert_path_expired, .-test_validate_cert_path_expired
	.section	.rodata
	.align 8
.LC19:
	.string	"ossl_cmp_msg_check_update(fixture->cmp_ctx, fixture->msg, fixture->allow_unprotected_cb, fixture->additional_arg)"
	.align 8
.LC20:
	.string	"ASN1_OCTET_STRING_cmp(ossl_cmp_hdr_get0_senderNonce(hdr), fixture->cmp_ctx->recipNonce)"
.LC21:
	.string	"0"
	.align 8
.LC22:
	.string	"ASN1_OCTET_STRING_cmp(tid, fixture->cmp_ctx->transactionID)"
	.text
	.type	execute_msg_check_test, @function
execute_msg_check_test:
.LFB824:
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
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get0_header@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_HDR_get0_transactionID@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_msg_check_update@PLT
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movl	8(%rax), %edi
	leaq	.LC19(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$447, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L161
	movl	$0, %eax
	jmp	.L162
.L161:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L163
	movl	$1, %eax
	jmp	.L162
.L163:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	296(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_get0_senderNonce@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$457, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L164
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	280(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$460, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L164
	movl	$1, %eax
	jmp	.L162
.L164:
	movl	$0, %eax
.L162:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	execute_msg_check_test, .-execute_msg_check_test
	.type	allow_unprotected, @function
allow_unprotected:
.LFB825:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE825:
	.size	allow_unprotected, .-allow_unprotected
	.type	setup_check_update, @function
setup_check_update:
.LFB826:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -64(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$16, -28(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, 48(%rax)
	movq	ir_rmprotection(%rip), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rbx
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
	movq	%rax, 24(%rbx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L169
	cmpq	$0, -88(%rbp)
	je	.L170
	movq	-24(%rbp), %rax
	leaq	288(%rax), %rcx
	movl	-28(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_cmp_asn1_octet_string_set1_bytes@PLT
	testl	%eax, %eax
	jne	.L170
.L169:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L174
.L170:
	cmpq	$0, -80(%rbp)
	je	.L174
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L172
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L172
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_transactionID@PLT
	testl	%eax, %eax
	jne	.L173
.L172:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.L173:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
.L174:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE826:
	.size	setup_check_update, .-setup_check_update
	.type	test_msg_check_no_protection_no_cb, @function
test_msg_check_no_protection_no_cb:
.LFB827:
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
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L176
	movl	$0, %eax
	jmp	.L179
.L176:
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setup_check_update
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L178
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_msg_check_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L178:
	movl	-4(%rbp), %eax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE827:
	.size	test_msg_check_no_protection_no_cb, .-test_msg_check_no_protection_no_cb
	.type	test_msg_check_no_protection_restrictive_cb, @function
test_msg_check_no_protection_restrictive_cb:
.LFB828:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L181
	movl	$0, %eax
	jmp	.L184
.L181:
	leaq	allow_unprotected(%rip), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setup_check_update
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L183
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_msg_check_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L183:
	movl	-4(%rbp), %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE828:
	.size	test_msg_check_no_protection_restrictive_cb, .-test_msg_check_no_protection_restrictive_cb
	.type	test_msg_check_no_protection_permissive_cb, @function
test_msg_check_no_protection_permissive_cb:
.LFB829:
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
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L186
	movl	$0, %eax
	jmp	.L189
.L186:
	leaq	allow_unprotected(%rip), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	setup_check_update
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L188
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_msg_check_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L188:
	movl	-4(%rbp), %eax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE829:
	.size	test_msg_check_no_protection_permissive_cb, .-test_msg_check_no_protection_permissive_cb
	.type	test_msg_check_transaction_id, @function
test_msg_check_transaction_id:
.LFB830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movabsq	$-686028442540394951, %rax
	movabsq	$834756475703969470, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	__func__.4(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L191
	movl	$0, %eax
	jmp	.L194
.L191:
	leaq	-32(%rbp), %rcx
	leaq	allow_unprotected(%rip), %rdx
	leaq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	setup_check_update
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L193
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	execute_msg_check_test
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L193:
	movl	-4(%rbp), %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	test_msg_check_transaction_id, .-test_msg_check_transaction_id
	.type	test_msg_check_transaction_id_bad, @function
test_msg_check_transaction_id_bad:
.LFB831:
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
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L196
	movl	$0, %eax
	jmp	.L199
.L196:
	leaq	rand_data(%rip), %rcx
	leaq	allow_unprotected(%rip), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setup_check_update
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L198
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_msg_check_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L198:
	movl	-4(%rbp), %eax
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE831:
	.size	test_msg_check_transaction_id_bad, .-test_msg_check_transaction_id_bad
	.type	test_msg_check_recipient_nonce, @function
test_msg_check_recipient_nonce:
.LFB832:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movabsq	$-8422663804479737528, %rax
	movabsq	$3655314812350273313, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	__func__.2(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L201
	movl	$0, %eax
	jmp	.L204
.L201:
	leaq	-32(%rbp), %rcx
	leaq	allow_unprotected(%rip), %rdx
	leaq	-40(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	setup_check_update
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L203
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	execute_msg_check_test
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L203:
	movl	-4(%rbp), %eax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE832:
	.size	test_msg_check_recipient_nonce, .-test_msg_check_recipient_nonce
	.type	test_msg_check_recipient_nonce_bad, @function
test_msg_check_recipient_nonce_bad:
.LFB833:
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
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L206
	movl	$0, %eax
	jmp	.L209
.L206:
	leaq	rand_data(%rip), %rcx
	leaq	allow_unprotected(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setup_check_update
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L208
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_msg_check_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L208:
	movl	-4(%rbp), %eax
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE833:
	.size	test_msg_check_recipient_nonce_bad, .-test_msg_check_recipient_nonce_bad
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB834:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	srvcert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	clcert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	endentity1(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	endentity2(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	intermediate(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	insta_cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	instaca_cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	ir_unprotected(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	ir_rmprotection(%rip), %rax
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
.LFE834:
	.size	cleanup_tests, .-cleanup_tests
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB835:
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
.LFE835:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC23:
	.string	"Error parsing test options\n"
	.align 8
.LC24:
	.string	"server_f = test_get_argument(0)"
	.align 8
.LC25:
	.string	"client_f = test_get_argument(1)"
	.align 8
.LC26:
	.string	"endentity1_f = test_get_argument(2)"
	.align 8
.LC27:
	.string	"endentity2_f = test_get_argument(3)"
.LC28:
	.string	"root_f = test_get_argument(4)"
	.align 8
.LC29:
	.string	"intermediate_f = test_get_argument(5)"
	.align 8
.LC30:
	.string	"ir_protected_f = test_get_argument(6)"
	.align 8
.LC31:
	.string	"ir_unprotected_f = test_get_argument(7)"
	.align 8
.LC32:
	.string	"ip_waiting_f = test_get_argument(8)"
	.align 8
.LC33:
	.string	"ir_rmprotection_f = test_get_argument(9)"
	.align 8
.LC34:
	.string	"instacert_f = test_get_argument(10)"
	.align 8
.LC35:
	.string	"instaca_f = test_get_argument(11)"
	.align 8
.LC36:
	.string	"ir_protected_0_extracerts = test_get_argument(12)"
	.align 8
.LC37:
	.string	"ir_protected_2_extracerts = test_get_argument(13)"
	.align 8
.LC38:
	.ascii	"server.crt client.crt EndEntity1.crt EndE"
	.string	"ntity2.crt Root_CA.crt Intermediate_CA.crt CMP_IR_protected.der CMP_IR_unprotected.der IP_waitingStatus_PBM.der IR_rmprotection.der insta.cert.pem insta_ca.cert.pem IR_protected_0_extraCerts.der IR_protected_2_extraCerts.der module_name [module_conf_file]\n"
.LC39:
	.string	"usage: cmp_vfy_test %s"
	.align 8
.LC40:
	.string	"endentity1 = load_cert_pem(endentity1_f, libctx)"
	.align 8
.LC41:
	.string	"endentity2 = load_cert_pem(endentity2_f, libctx)"
	.align 8
.LC42:
	.string	"root = load_cert_pem(root_f, NULL)"
	.align 8
.LC43:
	.string	"intermediate = load_cert_pem(intermediate_f, libctx)"
	.align 8
.LC44:
	.string	"insta_cert = load_cert_pem(instacert_f, libctx)"
	.align 8
.LC45:
	.string	"instaca_cert = load_cert_pem(instaca_f, libctx)"
	.align 8
.LC46:
	.string	"srvcert = load_cert_pem(server_f, libctx)"
	.align 8
.LC47:
	.string	"clcert = load_cert_pem(client_f, libctx)"
	.align 8
.LC48:
	.string	"RAND_bytes(rand_data, OSSL_CMP_TRANSACTIONID_LENGTH)"
.LC49:
	.string	"1"
	.align 8
.LC50:
	.string	"ir_unprotected = load_pkimsg(ir_unprotected_f, libctx)"
	.align 8
.LC51:
	.string	"ir_rmprotection = load_pkimsg(ir_rmprotection_f, libctx)"
.LC52:
	.string	"test_verify_popo"
.LC53:
	.string	"test_verify_popo_bad"
	.align 8
.LC54:
	.string	"test_validate_msg_signature_trusted_ok"
	.align 8
.LC55:
	.string	"test_validate_msg_signature_trusted_expired"
	.align 8
.LC56:
	.string	"test_validate_msg_signature_srvcert_missing"
	.align 8
.LC57:
	.string	"test_validate_msg_signature_srvcert_wrong"
	.align 8
.LC58:
	.string	"test_validate_msg_signature_bad"
	.align 8
.LC59:
	.string	"test_validate_msg_signature_sender_cert_srvcert"
	.align 8
.LC60:
	.string	"test_validate_msg_signature_sender_cert_untrusted"
	.align 8
.LC61:
	.string	"test_validate_msg_signature_sender_cert_trusted"
	.align 8
.LC62:
	.string	"test_validate_msg_signature_sender_cert_extracert"
	.align 8
.LC63:
	.string	"test_validate_msg_signature_sender_cert_absent"
	.align 8
.LC64:
	.string	"test_validate_msg_signature_expected_sender"
	.align 8
.LC65:
	.string	"test_validate_msg_signature_unexpected_sender"
	.align 8
.LC66:
	.string	"test_validate_msg_unprotected_request"
	.align 8
.LC67:
	.string	"test_validate_msg_mac_alg_protection_ok"
	.align 8
.LC68:
	.string	"test_validate_msg_mac_alg_protection_missing"
	.align 8
.LC69:
	.string	"test_validate_msg_mac_alg_protection_wrong"
	.align 8
.LC70:
	.string	"test_validate_msg_mac_alg_protection_bad"
.LC71:
	.string	"test_validate_cert_path_ok"
	.align 8
.LC72:
	.string	"test_validate_cert_path_expired"
	.align 8
.LC73:
	.string	"test_validate_cert_path_wrong_anchor"
	.align 8
.LC74:
	.string	"test_msg_check_no_protection_no_cb"
	.align 8
.LC75:
	.string	"test_msg_check_no_protection_restrictive_cb"
	.align 8
.LC76:
	.string	"test_msg_check_no_protection_permissive_cb"
.LC77:
	.string	"test_msg_check_transaction_id"
	.align 8
.LC78:
	.string	"test_msg_check_transaction_id_bad"
	.align 8
.LC79:
	.string	"test_msg_check_recipient_nonce"
	.align 8
.LC80:
	.string	"test_msg_check_recipient_nonce_bad"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB836:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movl	$118, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	$18, -52(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	mktime@PLT
	movq	%rax, test_time_valid(%rip)
	movl	-44(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -44(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	mktime@PLT
	movq	%rax, test_time_after_expiration(%rip)
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L215
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$618, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L230
.L215:
	leaq	rand_data(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, server_f(%rip)
	movq	server_f(%rip), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$623, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, client_f(%rip)
	movq	client_f(%rip), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$624, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, endentity1_f(%rip)
	movq	endentity1_f(%rip), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$625, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$3, %edi
	call	test_get_argument@PLT
	movq	%rax, endentity2_f(%rip)
	movq	endentity2_f(%rip), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$626, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$4, %edi
	call	test_get_argument@PLT
	movq	%rax, root_f(%rip)
	movq	root_f(%rip), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$627, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$5, %edi
	call	test_get_argument@PLT
	movq	%rax, intermediate_f(%rip)
	movq	intermediate_f(%rip), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$628, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$6, %edi
	call	test_get_argument@PLT
	movq	%rax, ir_protected_f(%rip)
	movq	ir_protected_f(%rip), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$629, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$7, %edi
	call	test_get_argument@PLT
	movq	%rax, ir_unprotected_f(%rip)
	movq	ir_unprotected_f(%rip), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$630, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$8, %edi
	call	test_get_argument@PLT
	movq	%rax, ip_waiting_f(%rip)
	movq	ip_waiting_f(%rip), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$631, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$9, %edi
	call	test_get_argument@PLT
	movq	%rax, ir_rmprotection_f(%rip)
	movq	ir_rmprotection_f(%rip), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$632, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$10, %edi
	call	test_get_argument@PLT
	movq	%rax, instacert_f(%rip)
	movq	instacert_f(%rip), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$633, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$11, %edi
	call	test_get_argument@PLT
	movq	%rax, instaca_f(%rip)
	movq	instaca_f(%rip), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$634, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$12, %edi
	call	test_get_argument@PLT
	movq	%rax, ir_protected_0_extracerts(%rip)
	movq	ir_protected_0_extracerts(%rip), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$635, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L217
	movl	$13, %edi
	call	test_get_argument@PLT
	movq	%rax, ir_protected_2_extracerts(%rip)
	movq	ir_protected_2_extracerts(%rip), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$636, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L218
.L217:
	leaq	.LC38(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$637, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L230
.L218:
	leaq	.LC38(%rip), %rcx
	leaq	provider(%rip), %rdx
	leaq	default_null_provider(%rip), %rsi
	leaq	libctx(%rip), %rax
	movq	%rcx, %r8
	movl	$14, %ecx
	movq	%rax, %rdi
	call	test_arg_libctx@PLT
	testl	%eax, %eax
	jne	.L219
	movl	$0, %eax
	jmp	.L230
.L219:
	movq	libctx(%rip), %rdx
	movq	endentity1_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, endentity1(%rip)
	movq	endentity1(%rip), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$645, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L231
	movq	libctx(%rip), %rdx
	movq	endentity2_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, endentity2(%rip)
	movq	endentity2(%rip), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$646, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L231
	movq	root_f(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, root(%rip)
	movq	root(%rip), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$647, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L231
	movq	libctx(%rip), %rdx
	movq	intermediate_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, intermediate(%rip)
	movq	intermediate(%rip), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$648, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L231
	movq	libctx(%rip), %rdx
	movq	instacert_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, insta_cert(%rip)
	movq	insta_cert(%rip), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$651, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L232
	movq	libctx(%rip), %rdx
	movq	instaca_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, instaca_cert(%rip)
	movq	instaca_cert(%rip), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$652, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L232
	movq	libctx(%rip), %rdx
	movq	server_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, srvcert(%rip)
	movq	srvcert(%rip), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$656, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L233
	movq	libctx(%rip), %rdx
	movq	client_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, clcert(%rip)
	movq	clcert(%rip), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$657, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L233
	leaq	rand_data(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$659, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L234
	movq	libctx(%rip), %rdx
	movq	ir_unprotected_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	%rax, ir_unprotected(%rip)
	movq	ir_unprotected(%rip), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$661, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L235
	movq	libctx(%rip), %rdx
	movq	ir_rmprotection_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	%rax, ir_rmprotection(%rip)
	movq	ir_rmprotection(%rip), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$662, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L235
	leaq	test_verify_popo(%rip), %rdx
	leaq	.LC52(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_verify_popo_bad(%rip), %rdx
	leaq	.LC53(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_trusted_ok(%rip), %rdx
	leaq	.LC54(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_trusted_expired(%rip), %rdx
	leaq	.LC55(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_srvcert_missing(%rip), %rdx
	leaq	.LC56(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_srvcert_wrong(%rip), %rdx
	leaq	.LC57(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_bad(%rip), %rdx
	leaq	.LC58(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_sender_cert_srvcert(%rip), %rdx
	leaq	.LC59(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_sender_cert_untrusted(%rip), %rdx
	leaq	.LC60(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_sender_cert_trusted(%rip), %rdx
	leaq	.LC61(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_sender_cert_extracert(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_sender_cert_absent(%rip), %rdx
	leaq	.LC63(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_expected_sender(%rip), %rdx
	leaq	.LC64(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_signature_unexpected_sender(%rip), %rdx
	leaq	.LC65(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_unprotected_request(%rip), %rdx
	leaq	.LC66(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_mac_alg_protection_ok(%rip), %rdx
	leaq	.LC67(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_mac_alg_protection_missing(%rip), %rdx
	leaq	.LC68(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_mac_alg_protection_wrong(%rip), %rdx
	leaq	.LC69(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_msg_mac_alg_protection_bad(%rip), %rdx
	leaq	.LC70(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_cert_path_ok(%rip), %rdx
	leaq	.LC71(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_cert_path_expired(%rip), %rdx
	leaq	.LC72(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_validate_cert_path_wrong_anchor(%rip), %rdx
	leaq	.LC73(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_msg_check_no_protection_no_cb(%rip), %rdx
	leaq	.LC74(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_msg_check_no_protection_restrictive_cb(%rip), %rdx
	leaq	.LC75(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_msg_check_no_protection_permissive_cb(%rip), %rdx
	leaq	.LC76(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_msg_check_transaction_id(%rip), %rdx
	leaq	.LC77(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_msg_check_transaction_id_bad(%rip), %rdx
	leaq	.LC78(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_msg_check_recipient_nonce(%rip), %rdx
	leaq	.LC79(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_msg_check_recipient_nonce_bad(%rip), %rdx
	leaq	.LC80(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	jmp	.L230
.L231:
	nop
	jmp	.L222
.L232:
	nop
	jmp	.L222
.L233:
	nop
	jmp	.L222
.L234:
	nop
	jmp	.L222
.L235:
	nop
.L222:
	call	cleanup_tests@PLT
	movl	$0, %eax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE836:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	__func__.22, @object
	.size	__func__.22, 17
__func__.22:
	.string	"test_verify_popo"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 21
__func__.21:
	.string	"test_verify_popo_bad"
	.align 32
	.type	__func__.20, @object
	.size	__func__.20, 37
__func__.20:
	.string	"test_validate_msg_mac_alg_protection"
	.align 32
	.type	__func__.19, @object
	.size	__func__.19, 41
__func__.19:
	.string	"test_validate_msg_mac_alg_protection_bad"
	.align 32
	.type	__func__.18, @object
	.size	__func__.18, 42
__func__.18:
	.string	"test_validate_msg_signature_partial_chain"
	.align 32
	.type	__func__.17, @object
	.size	__func__.17, 36
__func__.17:
	.string	"test_validate_msg_signature_srvcert"
	.align 32
	.type	__func__.16, @object
	.size	__func__.16, 50
__func__.16:
	.string	"test_validate_msg_signature_sender_cert_untrusted"
	.align 32
	.type	__func__.15, @object
	.size	__func__.15, 48
__func__.15:
	.string	"test_validate_msg_signature_sender_cert_trusted"
	.align 32
	.type	__func__.14, @object
	.size	__func__.14, 50
__func__.14:
	.string	"test_validate_msg_signature_sender_cert_extracert"
	.align 32
	.type	__func__.13, @object
	.size	__func__.13, 47
__func__.13:
	.string	"test_validate_msg_signature_sender_cert_absent"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 26
__func__.12:
	.string	"test_validate_with_sender"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 38
__func__.11:
	.string	"test_validate_msg_unprotected_request"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 27
__func__.10:
	.string	"test_validate_cert_path_ok"
	.align 32
	.type	__func__.9, @object
	.size	__func__.9, 37
__func__.9:
	.string	"test_validate_cert_path_wrong_anchor"
	.align 32
	.type	__func__.8, @object
	.size	__func__.8, 32
__func__.8:
	.string	"test_validate_cert_path_expired"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 35
__func__.7:
	.string	"test_msg_check_no_protection_no_cb"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 44
__func__.6:
	.string	"test_msg_check_no_protection_restrictive_cb"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 43
__func__.5:
	.string	"test_msg_check_no_protection_permissive_cb"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 30
__func__.4:
	.string	"test_msg_check_transaction_id"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 34
__func__.3:
	.string	"test_msg_check_transaction_id_bad"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 31
__func__.2:
	.string	"test_msg_check_recipient_nonce"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 35
__func__.1:
	.string	"test_msg_check_recipient_nonce_bad"
	.align 8
.LC81:
	.ascii	"Usage: %s [options] server.crt client.crt EndEntity1.crt End"
	.ascii	"E"
	.string	"ntity2.crt Root_CA.crt Intermediate_CA.crt CMP_IR_protected.der CMP_IR_unprotected.der IP_waitingStatus_PBM.der IR_rmprotection.der insta.cert.pem insta_ca.cert.pem IR_protected_0_extraCerts.der IR_protected_2_extraCerts.der module_name [module_conf_file]\n"
.LC82:
	.string	"Valid options are:\n"
.LC83:
	.string	"help"
.LC84:
	.string	"Display this summary"
.LC85:
	.string	"list"
	.align 8
.LC86:
	.string	"Display the list of tests available"
.LC87:
	.string	"test"
	.align 8
.LC88:
	.string	"Run a single test by id or name"
.LC89:
	.string	"iter"
	.align 8
.LC90:
	.string	"Run a single iteration of a test"
.LC91:
	.string	"indent"
	.align 8
.LC92:
	.string	"Number of tabs added to output"
.LC93:
	.string	"seed"
	.align 8
.LC94:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC81
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC82
	.quad	.LC83
	.long	500
	.long	45
	.quad	.LC84
	.quad	.LC85
	.long	501
	.long	45
	.quad	.LC86
	.quad	.LC87
	.long	502
	.long	115
	.quad	.LC88
	.quad	.LC89
	.long	503
	.long	110
	.quad	.LC90
	.quad	.LC91
	.long	504
	.long	112
	.quad	.LC92
	.quad	.LC93
	.long	505
	.long	110
	.quad	.LC94
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
