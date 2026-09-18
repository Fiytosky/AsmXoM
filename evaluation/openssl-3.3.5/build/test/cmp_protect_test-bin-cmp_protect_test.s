	.file	"cmp_protect_test.c"
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
	.local	ir_protected_f
	.comm	ir_protected_f,8,8
	.local	genm_prot_Ed_f
	.comm	genm_prot_Ed_f,8,8
	.local	ir_unprotected_f
	.comm	ir_unprotected_f,8,8
	.local	ip_PBM_f
	.comm	ip_PBM_f,8,8
	.local	libctx
	.comm	libctx,8,8
	.local	default_null_provider
	.comm	default_null_provider,8,8
	.local	provider
	.comm	provider,8,8
	.section	.rodata
.LC0:
	.string	"../test/cmp_protect_test.c"
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
	cmpq	$0, -8(%rbp)
	je	.L13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L13:
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
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$96, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$58, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
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
	movl	$61, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
	jmp	.L16
.L17:
	movq	-8(%rbp), %rax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	set_up, .-set_up
	.local	prot_RSA_key
	.comm	prot_RSA_key,8,8
	.local	prot_Ed_key
	.comm	prot_Ed_key,8,8
	.local	genm_protected_Ed
	.comm	genm_protected_Ed,8,8
	.local	server_key
	.comm	server_key,8,8
	.local	server_cert
	.comm	server_cert,8,8
	.local	rand_data
	.comm	rand_data,16,16
	.local	ir_unprotected
	.comm	ir_unprotected,8,8
	.local	ir_protected
	.comm	ir_protected,8,8
	.local	endentity1
	.comm	endentity1,8,8
	.local	endentity2
	.comm	endentity2,8,8
	.local	root
	.comm	root,8,8
	.local	intermediate
	.comm	intermediate,8,8
	.section	.rodata
.LC3:
	.string	"protection"
	.text
	.type	execute_calc_protection_fails_test, @function
execute_calc_protection_fails_test:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_calc_protection@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$84, %esi
	call	test_ptr_null@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	execute_calc_protection_fails_test, .-execute_calc_protection_fails_test
	.section	.rodata
	.align 8
.LC4:
	.string	"ASN1_STRING_cmp(protection, fixture->msg->protection) == 0"
	.text
	.type	execute_calc_protection_pbmac_test, @function
execute_calc_protection_pbmac_test:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_calc_protection@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$94, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$95, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	$0, %eax
.L22:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	execute_calc_protection_pbmac_test, .-execute_calc_protection_pbmac_test
	.type	verify_signature, @function
verify_signature:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get0_header@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	libctx(%rip), %r12
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rbx
	call	OSSL_CMP_PROTECTEDPART_it@PLT
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	pushq	$0
	pushq	%r12
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	ASN1_item_verify_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	verify_signature, .-verify_signature
	.section	.rodata
	.align 8
.LC5:
	.string	"verify_signature(fixture->msg, protection, fixture->pubkey, fixture->cmp_ctx->digest)"
	.text
	.type	execute_calc_protection_signature_test, @function
execute_calc_protection_signature_test:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_calc_protection@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$125, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	272(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	call	verify_signature
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$126, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movl	$1, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	execute_calc_protection_signature_test, .-execute_calc_protection_signature_test
	.section	.rodata
	.align 8
.LC6:
	.string	"fixture->msg = load_pkimsg(ir_unprotected_f, libctx)"
	.align 8
.LC7:
	.string	"fixture->msg->header->protectionAlg = X509_ALGOR_new()"
	.text
	.type	test_cmp_calc_protection_no_key_no_secret, @function
test_cmp_calc_protection_no_key_no_secret:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	__func__.20(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	libctx(%rip), %rdx
	movq	ir_unprotected_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$137, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L33
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rbx
	call	X509_ALGOR_new@PLT
	movq	%rax, 32(%rbx)
	movq	32(%rbx), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$138, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L34
.L33:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -24(%rbp)
.L34:
	cmpq	$0, -24(%rbp)
	je	.L35
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	execute_calc_protection_fails_test
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L35:
	movl	-28(%rbp), %eax
.L32:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	test_cmp_calc_protection_no_key_no_secret, .-test_cmp_calc_protection_no_key_no_secret
	.section	.rodata
	.align 8
.LC8:
	.string	"OSSL_CMP_CTX_set1_pkey(fixture->cmp_ctx, prot_RSA_key)"
	.align 8
.LC9:
	.string	"fixture->msg = load_pkimsg(ir_protected_f, libctx)"
	.text
	.type	test_cmp_calc_protection_pkey, @function
test_cmp_calc_protection_pkey:
.LFB746:
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
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	prot_RSA_key(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	prot_RSA_key(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_pkey@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$152, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	movq	libctx(%rip), %rdx
	movq	ir_protected_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$153, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L40
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L40:
	cmpq	$0, -8(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_calc_protection_signature_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L41:
	movl	-12(%rbp), %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	test_cmp_calc_protection_pkey, .-test_cmp_calc_protection_pkey
	.section	.rodata
	.align 8
.LC10:
	.string	"OSSL_CMP_CTX_set1_pkey(fixture->cmp_ctx, prot_Ed_key)"
	.align 8
.LC11:
	.string	"fixture->msg = load_pkimsg(genm_prot_Ed_f, libctx)"
	.text
	.type	test_cmp_calc_protection_pkey_Ed, @function
test_cmp_calc_protection_pkey_Ed:
.LFB747:
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
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	prot_Ed_key(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	prot_Ed_key(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_pkey@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$166, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	movq	libctx(%rip), %rdx
	movq	genm_prot_Ed_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$167, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L46
.L45:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L46:
	cmpq	$0, -8(%rbp)
	je	.L47
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_calc_protection_signature_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L47:
	movl	-12(%rbp), %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	test_cmp_calc_protection_pkey_Ed, .-test_cmp_calc_protection_pkey_Ed
	.section	.rodata
	.align 8
.LC12:
	.string	"OSSL_CMP_CTX_set1_secretValue(fixture->cmp_ctx, sec_insta, sizeof(sec_insta))"
	.align 8
.LC13:
	.string	"fixture->msg = load_pkimsg(ip_PBM_f, libctx)"
	.text
	.type	test_cmp_calc_protection_pbmac, @function
test_cmp_calc_protection_pbmac:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$1953721961, -17(%rbp)
	movb	$97, -13(%rbp)
	leaq	__func__.17(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L54
.L49:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-17(%rbp), %rcx
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_secretValue@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$181, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	movq	libctx(%rip), %rdx
	movq	ip_PBM_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$183, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L52
.L51:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L52:
	cmpq	$0, -8(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_calc_protection_pbmac_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L53:
	movl	-12(%rbp), %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	test_cmp_calc_protection_pbmac, .-test_cmp_calc_protection_pbmac
	.section	.rodata
	.align 8
.LC14:
	.string	"ossl_cmp_msg_protect(fixture->cmp_ctx, fixture->msg)"
.LC15:
	.string	"fixture->expected"
	.text
	.type	execute_MSG_protect_test, @function
execute_MSG_protect_test:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movl	88(%rax), %edi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$192, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	execute_MSG_protect_test, .-execute_MSG_protect_test
	.section	.rodata
	.align 8
.LC16:
	.string	"fixture->msg = OSSL_CMP_MSG_dup(ir_unprotected)"
	.align 8
.LC17:
	.string	"SET_OPT_UNPROTECTED_SEND(fixture->cmp_ctx, 1)"
	.text
	.type	test_MSG_protect_unprotected_request, @function
test_MSG_protect_unprotected_request:
.LFB750:
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
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-8(%rbp), %rax
	movl	$1, 88(%rax)
	movq	ir_unprotected(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$203, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$204, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L61
.L60:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L61:
	cmpq	$0, -8(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_MSG_protect_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L62:
	movl	-12(%rbp), %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	test_MSG_protect_unprotected_request, .-test_MSG_protect_unprotected_request
	.section	.rodata
	.align 8
.LC18:
	.string	"SET_OPT_UNPROTECTED_SEND(fixture->cmp_ctx, 0)"
	.align 8
.LC19:
	.string	"OSSL_CMP_CTX_set1_referenceValue(fixture->cmp_ctx, rand_data, size)"
	.align 8
.LC20:
	.string	"OSSL_CMP_CTX_set1_secretValue(fixture->cmp_ctx, rand_data + size, size)"
	.text
	.type	test_MSG_protect_with_msg_sig_alg_protection_plus_rsa_key, @function
test_MSG_protect_with_msg_sig_alg_protection_plus_rsa_key:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$8, -24(%rbp)
	leaq	__func__.15(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	movq	-8(%rbp), %rax
	movl	$1, 88(%rax)
	movq	ir_unprotected(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$219, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$220, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	rand_data(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_referenceValue@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$225, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	leaq	rand_data(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_secretValue@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$227, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L67
.L66:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L67:
	cmpq	$0, -8(%rbp)
	je	.L68
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_MSG_protect_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L68:
	movl	-12(%rbp), %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	test_MSG_protect_with_msg_sig_alg_protection_plus_rsa_key, .-test_MSG_protect_with_msg_sig_alg_protection_plus_rsa_key
	.section	.rodata
	.align 8
.LC21:
	.string	"OSSL_CMP_CTX_set1_pkey(fixture->cmp_ctx, server_key)"
	.align 8
.LC22:
	.string	"OSSL_CMP_CTX_set1_cert(fixture->cmp_ctx, server_cert)"
	.text
	.type	test_MSG_protect_with_certificate_and_key, @function
test_MSG_protect_with_certificate_and_key:
.LFB752:
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
	jne	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-8(%rbp), %rax
	movl	$1, 88(%rax)
	movq	ir_unprotected(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$242, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$244, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L72
	movq	server_key(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_pkey@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$245, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L72
	movq	server_cert(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_cert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$246, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L73
.L72:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L73:
	cmpq	$0, -8(%rbp)
	je	.L74
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_MSG_protect_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L74:
	movl	-12(%rbp), %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	test_MSG_protect_with_certificate_and_key, .-test_MSG_protect_with_certificate_and_key
	.section	.rodata
	.align 8
.LC23:
	.string	"SET_OPT_UNPROTECTED_SEND(ctx, 0)"
	.align 8
.LC24:
	.string	"OSSL_CMP_CTX_set0_newPkey(ctx, 1, server_key)"
	.text
	.type	test_MSG_protect_certificate_based_without_cert, @function
test_MSG_protect_certificate_based_without_cert:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	__func__.13(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 88(%rax)
	movq	ir_unprotected(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$262, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L78
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$264, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L78
	movq	server_key(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set0_newPkey@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$265, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L79
.L78:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L79:
	movq	server_key(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	cmpq	$0, -8(%rbp)
	je	.L80
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_MSG_protect_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L80:
	movl	-12(%rbp), %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	test_MSG_protect_certificate_based_without_cert, .-test_MSG_protect_certificate_based_without_cert
	.type	test_MSG_protect_no_key_no_secret, @function
test_MSG_protect_no_key_no_secret:
.LFB754:
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
	jne	.L82
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-8(%rbp), %rax
	movl	$0, 88(%rax)
	movq	ir_unprotected(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$278, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$279, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L85
.L84:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L85:
	cmpq	$0, -8(%rbp)
	je	.L86
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_MSG_protect_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L86:
	movl	-12(%rbp), %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	test_MSG_protect_no_key_no_secret, .-test_MSG_protect_no_key_no_secret
	.type	test_MSG_protect_pbmac_no_sender, @function
test_MSG_protect_pbmac_no_sender:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	leaq	__func__.11(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 88(%rax)
	movq	ir_unprotected(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$294, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L90
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	je	.L90
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set1_sender@PLT
	testl	%eax, %eax
	je	.L90
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	secret.10(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_secretValue@PLT
	testl	%eax, %eax
	je	.L90
	cmpl	$0, -20(%rbp)
	je	.L91
	leaq	ref.9(%rip), %rcx
	jmp	.L92
.L91:
	movl	$0, %ecx
.L92:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_referenceValue@PLT
	testl	%eax, %eax
	jne	.L93
.L90:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L93:
	cmpq	$0, -8(%rbp)
	je	.L94
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_MSG_protect_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L94:
	movl	-12(%rbp), %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	test_MSG_protect_pbmac_no_sender, .-test_MSG_protect_pbmac_no_sender
	.type	test_MSG_protect_pbmac_no_sender_with_ref, @function
test_MSG_protect_pbmac_no_sender_with_ref:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edi
	call	test_MSG_protect_pbmac_no_sender
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	test_MSG_protect_pbmac_no_sender_with_ref, .-test_MSG_protect_pbmac_no_sender_with_ref
	.type	test_MSG_protect_pbmac_no_sender_no_ref, @function
test_MSG_protect_pbmac_no_sender_no_ref:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	test_MSG_protect_pbmac_no_sender
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	test_MSG_protect_pbmac_no_sender_no_ref, .-test_MSG_protect_pbmac_no_sender_no_ref
	.section	.rodata
	.align 8
.LC25:
	.string	"ossl_cmp_msg_add_extraCerts(fixture->cmp_ctx, fixture->msg)"
	.text
	.type	execute_MSG_add_extraCerts_test, @function
execute_MSG_add_extraCerts_test:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_add_extraCerts@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$321, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	execute_MSG_add_extraCerts_test, .-execute_MSG_add_extraCerts_test
	.section	.rodata
	.align 8
.LC26:
	.string	"fixture->msg = OSSL_CMP_MSG_dup(ir_protected)"
	.text
	.type	test_MSG_add_extraCerts, @function
test_MSG_add_extraCerts:
.LFB759:
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
	jne	.L102
	movl	$0, %eax
	jmp	.L103
.L102:
	movq	ir_protected(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$328, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L104
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -8(%rbp)
.L104:
	cmpq	$0, -8(%rbp)
	je	.L105
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	execute_MSG_add_extraCerts_test
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L105:
	movl	-12(%rbp), %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	test_MSG_add_extraCerts, .-test_MSG_add_extraCerts
	.section	.rodata
.LC27:
	.string	"chain"
	.align 8
.LC28:
	.string	"STACK_OF_X509_cmp(chain, fixture->chain)"
.LC29:
	.string	"0"
.LC30:
	.string	"store = X509_STORE_new()"
	.align 8
.LC31:
	.string	"X509_STORE_add_cert(store, root)"
.LC32:
	.string	"chain != NULL"
	.text
	.type	execute_cmp_build_cert_chain_test, @function
execute_cmp_build_cert_chain_test:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	80(%rax), %edx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_build_chain@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$347, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L107
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	STACK_OF_X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$349, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
.L107:
	cmpl	$0, -4(%rbp)
	jne	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	call	X509_STORE_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$355, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L110
	movq	root(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_cert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$356, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L110
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movl	$2097152, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %r8
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movl	80(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	X509_build_chain@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %edi
	movq	-40(%rbp), %rax
	movl	88(%rax), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$361, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L110
	cmpq	$0, -24(%rbp)
	je	.L110
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	STACK_OF_X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$364, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
.L110:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movl	-4(%rbp), %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	execute_cmp_build_cert_chain_test, .-execute_cmp_build_cert_chain_test
	.section	.rodata
	.align 8
.LC33:
	.string	"fixture->certs = sk_X509_new_null()"
	.align 8
.LC34:
	.string	"fixture->chain = sk_X509_new_null()"
	.align 8
.LC35:
	.string	"sk_X509_push(fixture->certs, endentity1)"
	.align 8
.LC36:
	.string	"sk_X509_push(fixture->certs, root)"
	.align 8
.LC37:
	.string	"sk_X509_push(fixture->certs, intermediate)"
	.align 8
.LC38:
	.string	"sk_X509_push(fixture->chain, endentity2)"
	.align 8
.LC39:
	.string	"sk_X509_push(fixture->chain, intermediate)"
	.align 8
.LC40:
	.string	"sk_X509_push(fixture->chain, root)"
	.text
	.type	test_cmp_build_cert_chain, @function
test_cmp_build_cert_chain:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	__func__.7(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L112
	movl	$0, %eax
	jmp	.L113
.L112:
	movq	-24(%rbp), %rax
	movl	$1, 88(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 80(%rax)
	movq	endentity2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$378, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L114
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$379, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L114
	movq	endentity1(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$380, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L114
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$381, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L114
	movq	intermediate(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$382, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L114
	movq	endentity2(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$383, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L114
	movq	intermediate(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$384, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L115
.L114:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -24(%rbp)
.L115:
	cmpq	$0, -24(%rbp)
	je	.L116
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cmp_build_cert_chain_test
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, 80(%rax)
	cmpl	$0, -28(%rbp)
	je	.L116
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$391, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L116
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cmp_build_cert_chain_test
	movl	%eax, -28(%rbp)
.L116:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	-28(%rbp), %eax
.L113:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	test_cmp_build_cert_chain, .-test_cmp_build_cert_chain
	.type	test_cmp_build_cert_chain_missing_intermediate, @function
test_cmp_build_cert_chain_missing_intermediate:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	__func__.6(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L118
	movl	$0, %eax
	jmp	.L119
.L118:
	movq	-24(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 80(%rax)
	movq	endentity2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$404, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L120
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$405, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L120
	movq	endentity1(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$406, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$407, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	movq	endentity2(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$408, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L121
.L120:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -24(%rbp)
.L121:
	cmpq	$0, -24(%rbp)
	je	.L122
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cmp_build_cert_chain_test
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L122:
	movl	-28(%rbp), %eax
.L119:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	test_cmp_build_cert_chain_missing_intermediate, .-test_cmp_build_cert_chain_missing_intermediate
	.type	test_cmp_build_cert_chain_no_root, @function
test_cmp_build_cert_chain_no_root:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	__func__.5(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L124
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-24(%rbp), %rax
	movl	$1, 88(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 80(%rax)
	movq	endentity2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$422, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L126
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$423, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L126
	movq	endentity1(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$424, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movq	intermediate(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$425, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movq	endentity2(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$426, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movq	intermediate(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$427, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L127
.L126:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -24(%rbp)
.L127:
	cmpq	$0, -24(%rbp)
	je	.L128
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cmp_build_cert_chain_test
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L128:
	movl	-28(%rbp), %eax
.L125:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	test_cmp_build_cert_chain_no_root, .-test_cmp_build_cert_chain_no_root
	.type	test_cmp_build_cert_chain_only_root, @function
test_cmp_build_cert_chain_only_root:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	__func__.4(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L130
	movl	$0, %eax
	jmp	.L131
.L130:
	movq	-24(%rbp), %rax
	movl	$1, 88(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 80(%rax)
	movq	root(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$441, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L132
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$442, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L132
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$443, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L132
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$444, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L133
.L132:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -24(%rbp)
.L133:
	cmpq	$0, -24(%rbp)
	je	.L134
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cmp_build_cert_chain_test
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L134:
	movl	-28(%rbp), %eax
.L131:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	test_cmp_build_cert_chain_only_root, .-test_cmp_build_cert_chain_only_root
	.type	test_cmp_build_cert_chain_no_certs, @function
test_cmp_build_cert_chain_no_certs:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	__func__.3(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L136
	movl	$0, %eax
	jmp	.L137
.L136:
	movq	-24(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 80(%rax)
	movq	endentity2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$458, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L138
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$459, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L138
	movq	endentity2(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$460, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L139
.L138:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -24(%rbp)
.L139:
	cmpq	$0, -24(%rbp)
	je	.L140
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cmp_build_cert_chain_test
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L140:
	movl	-28(%rbp), %eax
.L137:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	test_cmp_build_cert_chain_no_certs, .-test_cmp_build_cert_chain_no_certs
	.section	.rodata
	.align 8
.LC41:
	.string	"ossl_cmp_X509_STORE_add1_certs(store, fixture->certs, fixture->callback_arg)"
	.align 8
.LC42:
	.string	"STACK_OF_X509_cmp(sk, fixture->chain)"
	.text
	.type	execute_X509_STORE_test, @function
execute_X509_STORE_test:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	X509_STORE_new@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	84(%rax), %edx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_X509_STORE_add1_certs@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$475, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L146
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get1_all_certs@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	STACK_OF_X509_cmp@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$0, %r8d
	movl	$480, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L147
	movl	$1, -12(%rbp)
	jmp	.L143
.L146:
	nop
	jmp	.L143
.L147:
	nop
.L143:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	execute_X509_STORE_test, .-execute_X509_STORE_test
	.section	.rodata
	.align 8
.LC43:
	.string	"fixture->chain = sk_X509_dup(fixture->certs)"
	.text
	.type	test_X509_STORE, @function
test_X509_STORE:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	__func__.2(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L149
	movl	$0, %eax
	jmp	.L150
.L149:
	movq	-24(%rbp), %rax
	movl	$0, 84(%rax)
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$494, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L151
	movq	endentity1(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L151
	movq	endentity2(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L151
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L151
	movq	intermediate(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L151
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$499, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L152
.L151:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -24(%rbp)
.L152:
	cmpq	$0, -24(%rbp)
	je	.L153
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	execute_X509_STORE_test
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L153:
	movl	-28(%rbp), %eax
.L150:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	test_X509_STORE, .-test_X509_STORE
	.section	.rodata
	.align 8
.LC44:
	.string	"sk_X509_push(fixture->certs, endentity2)"
	.text
	.type	test_X509_STORE_only_self_issued, @function
test_X509_STORE_only_self_issued:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	__func__.1(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L155
	movl	$0, %eax
	jmp	.L156
.L155:
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-24(%rbp), %rax
	movl	$1, 84(%rax)
	movq	endentity1(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$513, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L157
	movq	endentity2(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$514, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L157
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$515, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L157
	movq	intermediate(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$516, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L157
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$517, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L158
.L157:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movq	$0, -24(%rbp)
.L158:
	cmpq	$0, -24(%rbp)
	je	.L159
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	execute_X509_STORE_test
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L159:
	movl	-28(%rbp), %eax
.L156:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	test_X509_STORE_only_self_issued, .-test_X509_STORE_only_self_issued
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	prot_RSA_key(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	prot_Ed_key(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	genm_protected_Ed(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	server_key(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	server_cert(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	endentity1(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	endentity2(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	root(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	intermediate(%rip), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	ir_protected(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	ir_unprotected(%rip), %rax
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
.LFE769:
	.size	cleanup_tests, .-cleanup_tests
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB770:
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
.LFE770:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC45:
	.string	"Error parsing test options\n"
	.align 8
.LC46:
	.string	"prot_RSA_f = test_get_argument(0)"
	.align 8
.LC47:
	.string	"ir_protected_f = test_get_argument(1)"
	.align 8
.LC48:
	.string	"prot_Ed_f = test_get_argument(2)"
	.align 8
.LC49:
	.string	"genm_prot_Ed_f = test_get_argument(3)"
	.align 8
.LC50:
	.string	"ir_unprotected_f = test_get_argument(4)"
	.align 8
.LC51:
	.string	"ip_PBM_f = test_get_argument(5)"
	.align 8
.LC52:
	.string	"server_cert_f = test_get_argument(6)"
	.align 8
.LC53:
	.string	"server_key_f = test_get_argument(7)"
	.align 8
.LC54:
	.string	"endentity1_f = test_get_argument(8)"
	.align 8
.LC55:
	.string	"endentity2_f = test_get_argument(9)"
	.align 8
.LC56:
	.string	"root_f = test_get_argument(10)"
	.align 8
.LC57:
	.string	"intermediate_f = test_get_argument(11)"
	.align 8
.LC58:
	.string	"prot_RSA.pem IR_protected.der prot_Ed.pem GENM_protected_Ed.der IR_unprotected.der IP_PBM.der server.crt server.pem EndEntity1.crt EndEntity2.crt Root_CA.crt Intermediate_CA.crt module_name [module_conf_file]\n"
.LC59:
	.string	"usage: cmp_protect_test %s"
	.align 8
.LC60:
	.string	"server_key = load_pkey_pem(server_key_f, libctx)"
	.align 8
.LC61:
	.string	"server_cert = load_cert_pem(server_cert_f, libctx)"
	.align 8
.LC62:
	.string	"prot_RSA_key = load_pkey_pem(prot_RSA_f, libctx)"
	.align 8
.LC63:
	.string	"prot_Ed_key = load_pkey_pem(prot_Ed_f, libctx)"
	.align 8
.LC64:
	.string	"ir_protected = load_pkimsg(ir_protected_f, libctx)"
	.align 8
.LC65:
	.string	"genm_protected_Ed = load_pkimsg(genm_prot_Ed_f, libctx)"
	.align 8
.LC66:
	.string	"ir_unprotected = load_pkimsg(ir_unprotected_f, libctx)"
	.align 8
.LC67:
	.string	"endentity1 = load_cert_pem(endentity1_f, libctx)"
	.align 8
.LC68:
	.string	"endentity2 = load_cert_pem(endentity2_f, libctx)"
	.align 8
.LC69:
	.string	"root = load_cert_pem(root_f, libctx)"
	.align 8
.LC70:
	.string	"intermediate = load_cert_pem(intermediate_f, libctx)"
	.align 8
.LC71:
	.string	"RAND_bytes(rand_data, OSSL_CMP_TRANSACTIONID_LENGTH)"
.LC72:
	.string	"1"
	.align 8
.LC73:
	.string	"test_cmp_calc_protection_no_key_no_secret"
.LC74:
	.string	"test_cmp_calc_protection_pkey"
	.align 8
.LC75:
	.string	"test_cmp_calc_protection_pkey_Ed"
	.align 8
.LC76:
	.string	"test_cmp_calc_protection_pbmac"
	.align 8
.LC77:
	.string	"test_MSG_protect_with_msg_sig_alg_protection_plus_rsa_key"
	.align 8
.LC78:
	.string	"test_MSG_protect_with_certificate_and_key"
	.align 8
.LC79:
	.string	"test_MSG_protect_certificate_based_without_cert"
	.align 8
.LC80:
	.string	"test_MSG_protect_unprotected_request"
	.align 8
.LC81:
	.string	"test_MSG_protect_no_key_no_secret"
	.align 8
.LC82:
	.string	"test_MSG_protect_pbmac_no_sender_with_ref"
	.align 8
.LC83:
	.string	"test_MSG_protect_pbmac_no_sender_no_ref"
.LC84:
	.string	"test_MSG_add_extraCerts"
.LC85:
	.string	"test_cmp_build_cert_chain"
	.align 8
.LC86:
	.string	"test_cmp_build_cert_chain_only_root"
	.align 8
.LC87:
	.string	"test_cmp_build_cert_chain_no_root"
	.align 8
.LC88:
	.string	"test_cmp_build_cert_chain_missing_intermediate"
	.align 8
.LC89:
	.string	"test_cmp_build_cert_chain_no_certs"
.LC90:
	.string	"test_X509_STORE"
	.align 8
.LC91:
	.string	"test_X509_STORE_only_self_issued"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L164
	leaq	.LC45(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$563, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L165
.L164:
	leaq	rand_data(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$568, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, ir_protected_f(%rip)
	movq	ir_protected_f(%rip), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$569, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$2, %edi
	call	test_get_argument@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$570, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$3, %edi
	call	test_get_argument@PLT
	movq	%rax, genm_prot_Ed_f(%rip)
	movq	genm_prot_Ed_f(%rip), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$571, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$4, %edi
	call	test_get_argument@PLT
	movq	%rax, ir_unprotected_f(%rip)
	movq	ir_unprotected_f(%rip), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$572, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$5, %edi
	call	test_get_argument@PLT
	movq	%rax, ip_PBM_f(%rip)
	movq	ip_PBM_f(%rip), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$573, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$6, %edi
	call	test_get_argument@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC52(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$574, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$7, %edi
	call	test_get_argument@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$575, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$8, %edi
	call	test_get_argument@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$576, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$9, %edi
	call	test_get_argument@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$577, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$10, %edi
	call	test_get_argument@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$578, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L166
	movl	$11, %edi
	call	test_get_argument@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$579, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L167
.L166:
	leaq	.LC58(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$580, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L165
.L167:
	leaq	.LC58(%rip), %rcx
	leaq	provider(%rip), %rdx
	leaq	default_null_provider(%rip), %rsi
	leaq	libctx(%rip), %rax
	movq	%rcx, %r8
	movl	$12, %ecx
	movq	%rax, %rdi
	call	test_arg_libctx@PLT
	testl	%eax, %eax
	jne	.L168
	movl	$0, %eax
	jmp	.L165
.L168:
	movq	libctx(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, server_key(%rip)
	movq	server_key(%rip), %rax
	leaq	.LC60(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$587, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L169
	movq	libctx(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, server_cert(%rip)
	movq	server_cert(%rip), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$588, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L170
.L169:
	movl	$0, %eax
	jmp	.L165
.L170:
	movq	libctx(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, prot_RSA_key(%rip)
	movq	prot_RSA_key(%rip), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$591, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L171
	movl	$0, %eax
	jmp	.L165
.L171:
	movq	libctx(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, prot_Ed_key(%rip)
	movq	prot_Ed_key(%rip), %rax
	leaq	.LC63(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$594, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L172
	movl	$0, %eax
	jmp	.L165
.L172:
	movq	libctx(%rip), %rdx
	movq	ir_protected_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	%rax, ir_protected(%rip)
	movq	ir_protected(%rip), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$597, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L173
	movq	libctx(%rip), %rdx
	movq	genm_prot_Ed_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	%rax, genm_protected_Ed(%rip)
	movq	genm_protected_Ed(%rip), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$599, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L173
	movq	libctx(%rip), %rdx
	movq	ir_unprotected_f(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkimsg@PLT
	movq	%rax, ir_unprotected(%rip)
	movq	ir_unprotected(%rip), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$601, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L174
.L173:
	movl	$0, %eax
	jmp	.L165
.L174:
	movq	libctx(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, endentity1(%rip)
	movq	endentity1(%rip), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$603, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L175
	movq	libctx(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, endentity2(%rip)
	movq	endentity2(%rip), %rax
	leaq	.LC68(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$604, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L175
	movq	libctx(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, root(%rip)
	movq	root(%rip), %rax
	leaq	.LC69(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$605, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L175
	movq	libctx(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_cert_pem@PLT
	movq	%rax, intermediate(%rip)
	movq	intermediate(%rip), %rax
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$606, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L176
.L175:
	movl	$0, %eax
	jmp	.L165
.L176:
	leaq	rand_data(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC71(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$608, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L177
	movl	$0, %eax
	jmp	.L165
.L177:
	leaq	test_cmp_calc_protection_no_key_no_secret(%rip), %rdx
	leaq	.LC73(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_calc_protection_pkey(%rip), %rdx
	leaq	.LC74(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_calc_protection_pkey_Ed(%rip), %rdx
	leaq	.LC75(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_calc_protection_pbmac(%rip), %rdx
	leaq	.LC76(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_MSG_protect_with_msg_sig_alg_protection_plus_rsa_key(%rip), %rdx
	leaq	.LC77(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_MSG_protect_with_certificate_and_key(%rip), %rdx
	leaq	.LC78(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_MSG_protect_certificate_based_without_cert(%rip), %rdx
	leaq	.LC79(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_MSG_protect_unprotected_request(%rip), %rdx
	leaq	.LC80(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_MSG_protect_no_key_no_secret(%rip), %rdx
	leaq	.LC81(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_MSG_protect_pbmac_no_sender_with_ref(%rip), %rdx
	leaq	.LC82(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_MSG_protect_pbmac_no_sender_no_ref(%rip), %rdx
	leaq	.LC83(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_MSG_add_extraCerts(%rip), %rdx
	leaq	.LC84(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_build_cert_chain(%rip), %rdx
	leaq	.LC85(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_build_cert_chain_only_root(%rip), %rdx
	leaq	.LC86(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_build_cert_chain_no_root(%rip), %rdx
	leaq	.LC87(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_build_cert_chain_missing_intermediate(%rip), %rdx
	leaq	.LC88(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_build_cert_chain_no_certs(%rip), %rdx
	leaq	.LC89(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_X509_STORE(%rip), %rdx
	leaq	.LC90(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_X509_STORE_only_self_issued(%rip), %rdx
	leaq	.LC91(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 32
	.type	__func__.20, @object
	.size	__func__.20, 42
__func__.20:
	.string	"test_cmp_calc_protection_no_key_no_secret"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 30
__func__.19:
	.string	"test_cmp_calc_protection_pkey"
	.align 32
	.type	__func__.18, @object
	.size	__func__.18, 33
__func__.18:
	.string	"test_cmp_calc_protection_pkey_Ed"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 31
__func__.17:
	.string	"test_cmp_calc_protection_pbmac"
	.align 32
	.type	__func__.16, @object
	.size	__func__.16, 37
__func__.16:
	.string	"test_MSG_protect_unprotected_request"
	.align 32
	.type	__func__.15, @object
	.size	__func__.15, 58
__func__.15:
	.string	"test_MSG_protect_with_msg_sig_alg_protection_plus_rsa_key"
	.align 32
	.type	__func__.14, @object
	.size	__func__.14, 42
__func__.14:
	.string	"test_MSG_protect_with_certificate_and_key"
	.align 32
	.type	__func__.13, @object
	.size	__func__.13, 48
__func__.13:
	.string	"test_MSG_protect_certificate_based_without_cert"
	.align 32
	.type	__func__.12, @object
	.size	__func__.12, 34
__func__.12:
	.string	"test_MSG_protect_no_key_no_secret"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 33
__func__.11:
	.string	"test_MSG_protect_pbmac_no_sender"
	.data
	.type	secret.10, @object
	.size	secret.10, 4
secret.10:
	.base64	"LwsIDw=="
	.type	ref.9, @object
	.size	ref.9, 4
ref.9:
	.base64	"yv66vg=="
	.section	.rodata
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 24
__func__.8:
	.string	"test_MSG_add_extraCerts"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 26
__func__.7:
	.string	"test_cmp_build_cert_chain"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 47
__func__.6:
	.string	"test_cmp_build_cert_chain_missing_intermediate"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 34
__func__.5:
	.string	"test_cmp_build_cert_chain_no_root"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 36
__func__.4:
	.string	"test_cmp_build_cert_chain_only_root"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 35
__func__.3:
	.string	"test_cmp_build_cert_chain_no_certs"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"test_X509_STORE"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 33
__func__.1:
	.string	"test_X509_STORE_only_self_issued"
	.align 8
.LC92:
	.string	"Usage: %s [options] prot_RSA.pem IR_protected.der prot_Ed.pem GENM_protected_Ed.der IR_unprotected.der IP_PBM.der server.crt server.pem EndEntity1.crt EndEntity2.crt Root_CA.crt Intermediate_CA.crt module_name [module_conf_file]\n"
.LC93:
	.string	"Valid options are:\n"
.LC94:
	.string	"help"
.LC95:
	.string	"Display this summary"
.LC96:
	.string	"list"
	.align 8
.LC97:
	.string	"Display the list of tests available"
.LC98:
	.string	"test"
	.align 8
.LC99:
	.string	"Run a single test by id or name"
.LC100:
	.string	"iter"
	.align 8
.LC101:
	.string	"Run a single iteration of a test"
.LC102:
	.string	"indent"
	.align 8
.LC103:
	.string	"Number of tabs added to output"
.LC104:
	.string	"seed"
	.align 8
.LC105:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC92
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC93
	.quad	.LC94
	.long	500
	.long	45
	.quad	.LC95
	.quad	.LC96
	.long	501
	.long	45
	.quad	.LC97
	.quad	.LC98
	.long	502
	.long	115
	.quad	.LC99
	.quad	.LC100
	.long	503
	.long	110
	.quad	.LC101
	.quad	.LC102
	.long	504
	.long	112
	.quad	.LC103
	.quad	.LC104
	.long	505
	.long	110
	.quad	.LC105
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
