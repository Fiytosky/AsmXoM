	.file	"cmp_ctx_test.c"
	.text
	.type	ossl_check_ASN1_UTF8STRING_sk_type, @function
ossl_check_ASN1_UTF8STRING_sk_type:
.LFB310:
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
.LFE310:
	.size	ossl_check_ASN1_UTF8STRING_sk_type, .-ossl_check_ASN1_UTF8STRING_sk_type
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
	.type	ossl_check_X509_EXTENSION_type, @function
ossl_check_X509_EXTENSION_type:
.LFB350:
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
.LFE350:
	.size	ossl_check_X509_EXTENSION_type, .-ossl_check_X509_EXTENSION_type
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
.LFB352:
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
.LFE352:
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.type	ossl_check_const_POLICYINFO_sk_type, @function
ossl_check_const_POLICYINFO_sk_type:
.LFB492:
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
.LFE492:
	.size	ossl_check_const_POLICYINFO_sk_type, .-ossl_check_const_POLICYINFO_sk_type
	.type	ossl_check_const_OSSL_CMP_ITAV_sk_type, @function
ossl_check_const_OSSL_CMP_ITAV_sk_type:
.LFB576:
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
.LFE576:
	.size	ossl_check_const_OSSL_CMP_ITAV_sk_type, .-ossl_check_const_OSSL_CMP_ITAV_sk_type
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
	.section	.rodata
.LC0:
	.string	"../test/cmp_ctx_test.c"
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
	je	.L22
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_free@PLT
.L22:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$25, %edx
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
	.string	"fixture->ctx = OSSL_CMP_CTX_new(NULL, NULL)"
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
	movl	$32, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$32, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_CMP_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$34, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L26
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
	jmp	.L25
.L26:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	set_up, .-set_up
	.type	sk_X509_new_1, @function
sk_X509_new_1:
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
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -24(%rbp)
	call	X509_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L28
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L29
.L28:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	$0, -24(%rbp)
.L29:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	sk_X509_new_1, .-sk_X509_new_1
	.type	sk_X509_pop_X509_free, @function
sk_X509_pop_X509_free:
.LFB742:
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
	call	OSSL_STACK_OF_X509_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	sk_X509_pop_X509_free, .-sk_X509_pop_X509_free
	.section	.rodata
.LC3:
	.string	"certs = sk_X509_new_1()"
	.align 8
.LC4:
	.string	"bytes = ASN1_OCTET_STRING_new()"
.LC5:
	.string	"OSSL_CMP_CTX_reinit(ctx)"
	.align 8
.LC6:
	.ascii	"ctx->status == -1 && ctx->failInfoCo"
	.string	"de == -1 && ctx->statusString == NULL && ctx->newCert == NULL && ctx->newChain == NULL && ctx->caPubs == NULL && ctx->extraCertsIn == NULL && ctx->validatedSrvCert == NULL && ctx->transactionID == NULL && ctx->senderNonce == NULL && ctx->recipNonce == NULL"
	.text
	.type	execute_CTX_reinit_test, @function
execute_CTX_reinit_test:
.LFB743:
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
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	X509_new@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, 464(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 480(%rax)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set0_statusString@PLT
	testl	%eax, %eax
	je	.L41
	call	X509_new@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set0_newCert@PLT
	testl	%eax, %eax
	je	.L41
	call	sk_X509_new_1
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$73, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_newChain@PLT
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_caPubs@PLT
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_extraCertsIn@PLT
	testl	%eax, %eax
	je	.L41
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_validatedSrvCert@PLT
	testl	%eax, %eax
	je	.L41
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$78, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_transactionID@PLT
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_senderNonce@PLT
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_recipNonce@PLT
	testl	%eax, %eax
	je	.L41
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_reinit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-32(%rbp), %rax
	movl	464(%rax), %eax
	cmpl	$-1, %eax
	jne	.L37
	movq	-32(%rbp), %rax
	movl	480(%rax), %eax
	cmpl	$-1, %eax
	jne	.L37
	movq	-32(%rbp), %rax
	movq	472(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-32(%rbp), %rax
	movq	488(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-32(%rbp), %rax
	movq	496(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-32(%rbp), %rax
	movq	504(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-32(%rbp), %rax
	movq	512(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-32(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movl	$1, %ecx
	jmp	.L38
.L37:
	movl	$0, %ecx
.L38:
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movl	$1, -20(%rbp)
	jmp	.L35
.L41:
	nop
	jmp	.L35
.L42:
	nop
	jmp	.L35
.L43:
	nop
.L35:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	execute_CTX_reinit_test, .-execute_CTX_reinit_test
	.section	.rodata
.LC7:
	.string	"?provider=legacy"
.LC8:
	.string	"libctx"
.LC9:
	.string	"cmpctx"
	.align 8
.LC10:
	.string	"OSSL_CMP_CTX_get0_libctx(cmpctx)"
	.align 8
.LC11:
	.string	"OSSL_CMP_CTX_get0_propq(cmpctx)"
.LC12:
	.string	"propq"
	.text
	.type	test_CTX_libctx_propq, @function
test_CTX_libctx_propq:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$116, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movq	-24(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$117, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_libctx@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$118, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L45
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_propq@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L45
	movl	$1, %eax
	jmp	.L46
.L45:
	movl	$0, %eax
.L46:
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	test_CTX_libctx_propq, .-test_CTX_libctx_propq
	.type	test_CTX_reinit, @function
test_CTX_reinit:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.72(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	cmpq	$0, -16(%rbp)
	je	.L51
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_reinit_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L51:
	movl	-4(%rbp), %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	test_CTX_reinit, .-test_CTX_reinit
	.local	msg_total_size
	.comm	msg_total_size,4,4
	.section	.rodata
.LC13:
	.string	"total=%d len=%zu msg='%s'\n"
	.text
	.type	msg_total_size_log_cb, @function
msg_total_size_log_cb:
.LFB746:
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
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	msg_total_size(%rip), %eax
	addl	%edx, %eax
	movl	%eax, msg_total_size(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movl	msg_total_size(%rip), %eax
	movq	-32(%rbp), %rdx
	leaq	.LC13(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$0, %eax
	call	test_note@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	msg_total_size_log_cb, .-msg_total_size_log_cb
	.section	.rodata
	.align 8
.LC14:
	.ascii	"This is a 64 bytes looooooooooooooooooooooooooooooooong stri"
	.ascii	"ng.\nThis is a 64 bytes looooooooooooooooooooooooooooooooong"
	.ascii	" string.\nThis is a 64 bytes loooooooooooooooooooooooooooooo"
	.ascii	"ooong string.\nThis is a 64 bytes looooooooooooooooooooooooo"
	.ascii	"oooooooong strin"
	.string	"g.\nThis is a 64 bytes looooooooooooooooooooooooooooooooong string.\nThis is a 64 bytes looooooooooooooooooooooooooooooooong string.\nThis is a 64 bytes looooooooooooooooooooooooooooooooong string.\nThis is a 61 bytes loooooooooooooooooooooooooooooong string.\n"
	.section	.data.rel.ro.local,"aw"
	.align 8
	.type	max_str_literal, @object
	.size	max_str_literal, 8
max_str_literal:
	.quad	.LC14
	.section	.rodata
	.align 8
.LC15:
	.string	"OSSL_CMP_CTX_set_log_cb(ctx, NULL)"
.LC16:
	.string	"ctx->log_cb == NULL"
	.align 8
.LC17:
	.string	"OSSL_CMP_CTX_set_log_cb(ctx, msg_total_size_log_cb)"
	.align 8
.LC18:
	.string	"ctx->log_cb == msg_total_size_log_cb"
.LC19:
	.string	"data1"
.LC20:
	.string	" : "
.LC21:
	.string	"data2"
.LC22:
	.string	"new line"
.LC23:
	.string	"\n"
.LC24:
	.string	"expected_size"
.LC25:
	.string	"msg_total_size"
.LC26:
	.string	"<SEP>"
	.text
	.type	execute_CTX_print_errors_test, @function
execute_CTX_print_errors_test:
.LFB747:
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
	movq	%rax, -16(%rbp)
	movl	$1, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_log_cb@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$157, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, -8(%rbp)
.L55:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$159, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L56
	movl	$0, -8(%rbp)
.L56:
	call	ERR_new@PLT
	leaq	__func__.71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_print_errors@PLT
	leaq	msg_total_size_log_cb(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_log_cb@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$168, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, -8(%rbp)
.L57:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	msg_total_size_log_cb(%rip), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$170, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, -8(%rbp)
	jmp	.L59
.L58:
	call	ERR_new@PLT
	leaq	__func__.71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$12, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	-20(%rbp), %eax
	addl	$13, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_add_error_txt@PLT
	movl	-4(%rbp), %eax
	addl	$6, %eax
	movl	%eax, -4(%rbp)
	leaq	.LC21(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_add_error_txt@PLT
	movl	-4(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -4(%rbp)
	leaq	.LC22(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_add_error_txt@PLT
	movl	-4(%rbp), %eax
	addl	$9, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_print_errors@PLT
	movl	msg_total_size(%rip), %esi
	movl	-4(%rbp), %edi
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L60
	movl	$0, -8(%rbp)
.L60:
	call	ERR_new@PLT
	leaq	__func__.71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$13, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L61
.L62:
	leaq	.LC14(%rip), %rdx
	leaq	.LC26(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_add_error_txt@PLT
	movl	$509, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	addl	$5, %eax
	movl	%eax, -4(%rbp)
.L61:
	cmpl	$4095, -4(%rbp)
	jle	.L62
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	subl	$10, %eax
	movl	%eax, -4(%rbp)
	movl	$0, msg_total_size(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_print_errors@PLT
	movl	msg_total_size(%rip), %esi
	movl	-4(%rbp), %edi
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$198, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L59
	movl	$0, -8(%rbp)
.L59:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	execute_CTX_print_errors_test, .-execute_CTX_print_errors_test
	.type	test_CTX_print_errors, @function
test_CTX_print_errors:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.70(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	cmpq	$0, -16(%rbp)
	je	.L67
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_print_errors_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L67:
	movl	-4(%rbp), %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	test_CTX_print_errors, .-test_CTX_print_errors
	.section	.rodata
	.align 8
.LC27:
	.string	"OSSL_CMP_CTX_reqExtensions_have_SAN(ctx)"
.LC28:
	.string	"RAND_bytes(str, len)"
.LC29:
	.string	"1"
	.align 8
.LC30:
	.string	"data = ASN1_OCTET_STRING_new()"
	.align 8
.LC31:
	.string	"ASN1_OCTET_STRING_set(data, str, len)"
.LC32:
	.string	"ext"
	.align 8
.LC33:
	.string	"exts = sk_X509_EXTENSION_new_null()"
	.align 8
.LC34:
	.string	"sk_X509_EXTENSION_push(exts, ext)"
	.align 8
.LC35:
	.string	"OSSL_CMP_CTX_set0_reqExtensions(ctx, exts)"
	.text
	.type	execute_CTX_reqExtensions_have_SAN_test, @function
execute_CTX_reqExtensions_have_SAN_test:
.LFB749:
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
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$16, -52(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_reqExtensions_have_SAN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$224, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L76
.L69:
	movl	-52(%rbp), %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	$1, %r8d
	movl	$227, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L77
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$228, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	movl	-52(%rbp), %edx
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$229, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$85, %esi
	movl	$0, %edi
	call	X509_EXTENSION_create_by_NID@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$232, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$233, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movq	-64(%rbp), %rax
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
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$234, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set0_reqExtensions@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$235, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L75
.L74:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L73
.L75:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_reqExtensions_have_SAN@PLT
	movl	%eax, %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$240, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L78
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_reqExtensions_have_SAN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$242, %esi
	call	test_false@PLT
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	jmp	.L73
.L77:
	nop
	jmp	.L73
.L78:
	nop
.L73:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	-36(%rbp), %eax
.L76:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	execute_CTX_reqExtensions_have_SAN_test, .-execute_CTX_reqExtensions_have_SAN_test
	.type	test_CTX_reqExtensions_have_SAN, @function
test_CTX_reqExtensions_have_SAN:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.69(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	cmpq	$0, -16(%rbp)
	je	.L82
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_reqExtensions_have_SAN_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L82:
	movl	-4(%rbp), %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	test_CTX_reqExtensions_have_SAN, .-test_CTX_reqExtensions_have_SAN
	.local	test_log_line
	.comm	test_log_line,4,4
	.local	test_log_cb_res
	.comm	test_log_cb_res,4,4
	.section	.rodata
.LC36:
	.string	"execute_cmp_ctx_log_cb_test"
.LC37:
	.string	"\"execute_cmp_ctx_log_cb_test\""
.LC38:
	.string	"func"
.LC39:
	.string	"(unknown function)"
.LC40:
	.string	"\"(unknown function)\""
.LC41:
	.string	"OPENSSL_FILE"
.LC42:
	.string	"file"
.LC43:
	.string	"(no file)"
.LC44:
	.string	"\"(no file)\""
.LC45:
	.string	"test_log_line"
.LC46:
	.string	"line"
.LC47:
	.string	"0"
.LC48:
	.string	"OSSL_CMP_LOG_INFO"
.LC49:
	.string	"level"
.LC50:
	.string	"-1"
.LC51:
	.string	"ok"
.LC52:
	.string	"\"ok\""
.LC53:
	.string	"msg"
	.text
	.type	test_log_cb, @function
test_log_cb:
.LFB751:
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
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	leaq	.LC36(%rip), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L84
	leaq	.LC39(%rip), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC40(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L85
.L84:
	leaq	.LC0(%rip), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$267, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L86
	leaq	.LC43(%rip), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC44(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$268, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L85
.L86:
	movl	test_log_line(%rip), %edi
	movl	-20(%rbp), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$269, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L87
	movl	-20(%rbp), %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$269, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
.L87:
	movl	-24(%rbp), %esi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$270, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L88
	movl	-24(%rbp), %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$270, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
.L88:
	leaq	.LC51(%rip), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC52(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$271, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L85
	movl	$1, %eax
	jmp	.L89
.L85:
	movl	$0, %eax
.L89:
	movl	%eax, test_log_cb_res(%rip)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	test_log_cb, .-test_log_cb
	.section	.rodata
.LC54:
	.string	"ERROR"
	.align 8
.LC55:
	.string	"this should be printed as CMP error message"
.LC56:
	.string	"%s"
.LC57:
	.string	"WARN"
	.align 8
.LC58:
	.string	"this should be printed as CMP warning message"
.LC59:
	.string	"DEBUG"
.LC60:
	.string	"this should not be printed"
	.align 8
.LC61:
	.string	"OSSL_CMP_CTX_set_log_verbosity(ctx, OSSL_CMP_LOG_DEBUG)"
	.align 8
.LC62:
	.string	"this should be printed as CMP debug message"
	.align 8
.LC63:
	.string	"OSSL_CMP_CTX_set_log_verbosity(ctx, OSSL_CMP_LOG_INFO)"
	.align 8
.LC64:
	.string	"OSSL_CMP_CTX_set_log_cb(ctx, test_log_cb)"
.LC65:
	.string	"INFO"
.LC66:
	.string	"o"
.LC67:
	.string	"%s%c"
.LC68:
	.string	"test_log_cb_res"
	.text
	.type	execute_cmp_ctx_log_cb_test, @function
execute_cmp_ctx_log_cb_test:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	call	OSSL_CMP_log_open@PLT
	call	OSSL_CMP_log_open@PLT
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_log_cb@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$285, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L92
	movl	$0, -4(%rbp)
	jmp	.L93
.L92:
	leaq	.LC54(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.68(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC55(%rip), %rsi
	pushq	%rsi
	leaq	.LC56(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$288, %r8d
	movq	%rax, %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	leaq	.LC57(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.68(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC58(%rip), %rsi
	pushq	%rsi
	leaq	.LC56(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$289, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	leaq	.LC59(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.68(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC60(%rip), %rsi
	pushq	%rsi
	leaq	.LC56(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$290, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-16(%rbp), %rax
	movl	$7, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$291, %esi
	call	test_true@PLT
	leaq	.LC59(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.68(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC62(%rip), %rsi
	pushq	%rsi
	leaq	.LC56(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$292, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-16(%rbp), %rax
	movl	$6, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC63(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$293, %esi
	call	test_true@PLT
.L93:
	leaq	test_log_cb(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_log_cb@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$295, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L94
	movl	$0, -4(%rbp)
	jmp	.L95
.L94:
	movl	$299, test_log_line(%rip)
	leaq	.LC65(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.68(%rip), %rdx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$107
	leaq	.LC66(%rip), %rsi
	pushq	%rsi
	leaq	.LC67(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$299, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
	movl	test_log_cb_res(%rip), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$300, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, -4(%rbp)
.L96:
	movq	-16(%rbp), %rax
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	movl	$-1, test_log_cb_res(%rip)
	movl	$305, test_log_line(%rip)
	leaq	.LC65(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.68(%rip), %rdx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$107
	leaq	.LC66(%rip), %rsi
	pushq	%rsi
	leaq	.LC67(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$305, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
	movl	test_log_cb_res(%rip), %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$306, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L95
	movl	$0, -4(%rbp)
.L95:
	call	OSSL_CMP_log_close@PLT
	call	OSSL_CMP_log_close@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	execute_cmp_ctx_log_cb_test, .-execute_cmp_ctx_log_cb_test
	.type	test_cmp_ctx_log_cb, @function
test_cmp_ctx_log_cb:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.67(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	cmpq	$0, -16(%rbp)
	je	.L101
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cmp_ctx_log_cb_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L101:
	movl	-4(%rbp), %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	test_cmp_ctx_log_cb, .-test_cmp_ctx_log_cb
	.type	test_http_cb, @function
test_http_cb:
.LFB754:
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
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	test_http_cb, .-test_http_cb
	.type	test_transfer_cb, @function
test_transfer_cb:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	test_transfer_cb, .-test_transfer_cb
	.type	test_certConf_cb, @function
test_certConf_cb:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	test_certConf_cb, .-test_certConf_cb
	.section	.rodata
.LC69:
	.string	"test"
	.text
	.type	char_new, @function
char_new:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rcx
	leaq	.LC69(%rip), %rax
	movl	$495, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	char_new, .-char_new
	.type	char_free, @function
char_free:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$500, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	char_free, .-char_free
	.type	X509_STORE_new_1, @function
X509_STORE_new_1:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	X509_STORE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L112
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
.L112:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	X509_STORE_new_1, .-X509_STORE_new_1
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	cleanup_tests, .-cleanup_tests
	.type	OSSL_CMP_CTX_set_option_35, @function
OSSL_CMP_CTX_set_option_35:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$35, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	OSSL_CMP_CTX_set_option_35, .-OSSL_CMP_CTX_set_option_35
	.type	OSSL_CMP_CTX_get_option_35, @function
OSSL_CMP_CTX_get_option_35:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$35, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_option@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	OSSL_CMP_CTX_get_option_35, .-OSSL_CMP_CTX_get_option_35
	.section	.rodata
.LC70:
	.string	"ERR_peek_error()"
	.align 8
.LC71:
	.string	"setter did not return error on ctx == NULL"
	.align 8
.LC72:
	.string	"getter did not return error on ctx == NULL"
.LC73:
	.string	"did not get default value"
.LC74:
	.string	"setting first value failed"
	.align 8
.LC75:
	.string	"set/get first value did not match"
.LC76:
	.string	"setting second value failed"
.LC77:
	.string	"second set reset the value"
	.align 8
.LC78:
	.string	"set/get second value did not match"
.LC79:
	.string	"third set reset the value"
	.align 8
.LC80:
	.string	"third get gave different value"
.LC81:
	.string	"res"
	.text
	.type	execute_CTX_set_get_option_35, @function
execute_CTX_set_get_option_35:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	OSSL_CMP_CTX_set_option_35(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get_option_35(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$746, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L121
	movl	$0, -4(%rbp)
.L121:
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L122
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L123
.L122:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L123:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	cmpl	$-1, %eax
	jne	.L124
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L125
.L124:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L125:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L126
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L126:
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L127
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L127:
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L128
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L128:
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L129
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L129:
	movl	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.L130
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L130:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L131
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L131:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L132
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L132:
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.L133
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L133:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$746, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L134
	movl	$0, -4(%rbp)
.L134:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$746, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	execute_CTX_set_get_option_35, .-execute_CTX_set_get_option_35
	.type	test_CTX_set_get_option_35, @function
test_CTX_set_get_option_35:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.66(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L137
	movl	$0, %eax
	jmp	.L138
.L137:
	cmpq	$0, -16(%rbp)
	je	.L139
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_option_35
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L139:
	movl	-4(%rbp), %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	test_CTX_set_get_option_35, .-test_CTX_set_get_option_35
	.type	OSSL_CMP_CTX_get_log_cb, @function
OSSL_CMP_CTX_get_log_cb:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L141
	call	ERR_new@PLT
	leaq	__func__.65(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L141:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	OSSL_CMP_CTX_get_log_cb, .-OSSL_CMP_CTX_get_log_cb
	.type	execute_CTX_set_get_log_cb, @function
execute_CTX_set_get_log_cb:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set_log_cb@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get_log_cb(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	test_log_cb(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	test_log_cb(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$749, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L144
	movl	$0, -4(%rbp)
.L144:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L145
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L146
.L145:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L146:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L147
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L148
.L147:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L148:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L149
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L149:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L150
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L150:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L151
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L151:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L152
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L152:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L153
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L153:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L154
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L154:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L155
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L155:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L156
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$749, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L156:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$749, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L157
	movl	$0, -4(%rbp)
.L157:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$749, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	execute_CTX_set_get_log_cb, .-execute_CTX_set_get_log_cb
	.type	test_CTX_set_get_log_cb, @function
test_CTX_set_get_log_cb:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.64(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L160
	movl	$0, %eax
	jmp	.L161
.L160:
	cmpq	$0, -16(%rbp)
	je	.L162
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_log_cb
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L162:
	movl	-4(%rbp), %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	test_CTX_set_get_log_cb, .-test_CTX_set_get_log_cb
	.type	OSSL_CMP_CTX_get0_serverPath, @function
OSSL_CMP_CTX_get0_serverPath:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L164
	call	ERR_new@PLT
	leaq	__func__.63(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L165
.L164:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	OSSL_CMP_CTX_get0_serverPath, .-OSSL_CMP_CTX_get0_serverPath
	.section	.rodata
	.align 8
.LC82:
	.string	"first set did not dup the value"
.LC83:
	.string	"first set had no effect"
	.align 8
.LC84:
	.string	"second set did not dup the value"
	.align 8
.LC85:
	.string	"second value is same as first value"
	.text
	.type	execute_CTX_set1_get0_serverPath, @function
execute_CTX_set1_get0_serverPath:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_serverPath@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_serverPath(%rip), %rax
	movq	%rax, -48(%rbp)
	call	char_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	char_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$751, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L167
	movl	$0, -20(%rbp)
.L167:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L168
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L169
.L168:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L169:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L170
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L171
.L170:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L171:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L172
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L172:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L173
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L173:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L174
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L174:
	cmpq	$0, -8(%rbp)
	jne	.L175
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L175:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L176
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L176:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L177
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L177:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L178
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L178:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L179
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L179:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L180
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L180:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L181
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$751, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L181:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$751, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L182
	movl	$0, -20(%rbp)
.L182:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$751, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	execute_CTX_set1_get0_serverPath, .-execute_CTX_set1_get0_serverPath
	.type	test_CTX_set1_get0_serverPath, @function
test_CTX_set1_get0_serverPath:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.62(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L185
	movl	$0, %eax
	jmp	.L186
.L185:
	cmpq	$0, -16(%rbp)
	je	.L187
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_serverPath
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L187:
	movl	-4(%rbp), %eax
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	test_CTX_set1_get0_serverPath, .-test_CTX_set1_get0_serverPath
	.type	OSSL_CMP_CTX_get0_server, @function
OSSL_CMP_CTX_get0_server:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L189
	call	ERR_new@PLT
	leaq	__func__.61(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L189:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	OSSL_CMP_CTX_get0_server, .-OSSL_CMP_CTX_get0_server
	.type	execute_CTX_set1_get0_server, @function
execute_CTX_set1_get0_server:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_server@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_server(%rip), %rax
	movq	%rax, -48(%rbp)
	call	char_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	char_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$752, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L192
	movl	$0, -20(%rbp)
.L192:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L193
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L194
.L193:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L194:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L195
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L196
.L195:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L196:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L197
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L197:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L198
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L198:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L199
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L199:
	cmpq	$0, -8(%rbp)
	jne	.L200
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L200:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L201
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L201:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L202
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L202:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L203
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L203:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L204
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L204:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L205
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L205:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L206
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L206:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$752, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L207
	movl	$0, -20(%rbp)
.L207:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$752, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	execute_CTX_set1_get0_server, .-execute_CTX_set1_get0_server
	.type	test_CTX_set1_get0_server, @function
test_CTX_set1_get0_server:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.60(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L210
	movl	$0, %eax
	jmp	.L211
.L210:
	cmpq	$0, -16(%rbp)
	je	.L212
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_server
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L212:
	movl	-4(%rbp), %eax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	test_CTX_set1_get0_server, .-test_CTX_set1_get0_server
	.type	OSSL_CMP_CTX_get_serverPort, @function
OSSL_CMP_CTX_get_serverPort:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L214
	call	ERR_new@PLT
	leaq	__func__.59(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L215
.L214:
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	OSSL_CMP_CTX_get_serverPort, .-OSSL_CMP_CTX_get_serverPort
	.type	execute_CTX_set_get_serverPort, @function
execute_CTX_set_get_serverPort:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set_serverPort@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get_serverPort(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$753, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L217
	movl	$0, -4(%rbp)
.L217:
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L218
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L219
.L218:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L219:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	cmpl	$-1, %eax
	jne	.L220
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L221
.L220:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L221:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L222
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L222:
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L223
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L223:
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L224
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L224:
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L225
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L225:
	movl	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.L226
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L226:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L227
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L227:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L228
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L228:
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.L229
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L229:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$753, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L230
	movl	$0, -4(%rbp)
.L230:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$753, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	execute_CTX_set_get_serverPort, .-execute_CTX_set_get_serverPort
	.type	test_CTX_set_get_serverPort, @function
test_CTX_set_get_serverPort:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.58(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L233
	movl	$0, %eax
	jmp	.L234
.L233:
	cmpq	$0, -16(%rbp)
	je	.L235
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_serverPort
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L235:
	movl	-4(%rbp), %eax
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	test_CTX_set_get_serverPort, .-test_CTX_set_get_serverPort
	.type	OSSL_CMP_CTX_get0_proxy, @function
OSSL_CMP_CTX_get0_proxy:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L237
	call	ERR_new@PLT
	leaq	__func__.57(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L238
.L237:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
.L238:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	OSSL_CMP_CTX_get0_proxy, .-OSSL_CMP_CTX_get0_proxy
	.type	execute_CTX_set1_get0_proxy, @function
execute_CTX_set1_get0_proxy:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_proxy@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_proxy(%rip), %rax
	movq	%rax, -48(%rbp)
	call	char_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	char_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$754, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L240
	movl	$0, -20(%rbp)
.L240:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L241
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L242
.L241:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L242:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L243
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L244
.L243:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L244:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L245
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L245:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L246
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L246:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L247
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L247:
	cmpq	$0, -8(%rbp)
	jne	.L248
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L248:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L249
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L249:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L250
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L250:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L251
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L251:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L252
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L252:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L253
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L253:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L254
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L254:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$754, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L255
	movl	$0, -20(%rbp)
.L255:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$754, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	execute_CTX_set1_get0_proxy, .-execute_CTX_set1_get0_proxy
	.type	test_CTX_set1_get0_proxy, @function
test_CTX_set1_get0_proxy:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.56(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L258
	movl	$0, %eax
	jmp	.L259
.L258:
	cmpq	$0, -16(%rbp)
	je	.L260
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_proxy
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L260:
	movl	-4(%rbp), %eax
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	test_CTX_set1_get0_proxy, .-test_CTX_set1_get0_proxy
	.type	OSSL_CMP_CTX_get0_no_proxy, @function
OSSL_CMP_CTX_get0_no_proxy:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L262
	call	ERR_new@PLT
	leaq	__func__.55(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L263
.L262:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
.L263:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	OSSL_CMP_CTX_get0_no_proxy, .-OSSL_CMP_CTX_get0_no_proxy
	.type	execute_CTX_set1_get0_no_proxy, @function
execute_CTX_set1_get0_no_proxy:
.LFB781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_no_proxy@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_no_proxy(%rip), %rax
	movq	%rax, -48(%rbp)
	call	char_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	char_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$755, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L265
	movl	$0, -20(%rbp)
.L265:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L266
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L267
.L266:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L267:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L268
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L269
.L268:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L269:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L270
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L270:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L271
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L271:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L272
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L272:
	cmpq	$0, -8(%rbp)
	jne	.L273
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L273:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L274
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L274:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L275
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L275:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L276
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L276:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L277
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L277:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L278
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L278:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L279
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$755, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L279:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$755, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L280
	movl	$0, -20(%rbp)
.L280:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$755, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	execute_CTX_set1_get0_no_proxy, .-execute_CTX_set1_get0_no_proxy
	.type	test_CTX_set1_get0_no_proxy, @function
test_CTX_set1_get0_no_proxy:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.54(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L283
	movl	$0, %eax
	jmp	.L284
.L283:
	cmpq	$0, -16(%rbp)
	je	.L285
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_no_proxy
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L285:
	movl	-4(%rbp), %eax
.L284:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	test_CTX_set1_get0_no_proxy, .-test_CTX_set1_get0_no_proxy
	.type	OSSL_CMP_CTX_get_http_cb, @function
OSSL_CMP_CTX_get_http_cb:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L287
	call	ERR_new@PLT
	leaq	__func__.53(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L288
.L287:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
.L288:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	OSSL_CMP_CTX_get_http_cb, .-OSSL_CMP_CTX_get_http_cb
	.type	execute_CTX_set_get_http_cb, @function
execute_CTX_set_get_http_cb:
.LFB784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set_http_cb@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get_http_cb(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	test_http_cb(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	test_http_cb(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$757, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L290
	movl	$0, -4(%rbp)
.L290:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L291
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L292
.L291:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L292:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L293
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L294
.L293:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L294:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L295
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L295:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L296
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L296:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L297
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L297:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L298
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L298:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L299
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L299:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L300
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L300:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L301
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L301:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L302
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L302:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$757, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L303
	movl	$0, -4(%rbp)
.L303:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$757, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	execute_CTX_set_get_http_cb, .-execute_CTX_set_get_http_cb
	.type	test_CTX_set_get_http_cb, @function
test_CTX_set_get_http_cb:
.LFB785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.52(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L306
	movl	$0, %eax
	jmp	.L307
.L306:
	cmpq	$0, -16(%rbp)
	je	.L308
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_http_cb
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L308:
	movl	-4(%rbp), %eax
.L307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	test_CTX_set_get_http_cb, .-test_CTX_set_get_http_cb
	.type	execute_CTX_set_get_http_cb_arg, @function
execute_CTX_set_get_http_cb_arg:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set_http_cb_arg@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	OSSL_CMP_CTX_get_http_cb_arg@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$758, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L310
	movl	$0, -4(%rbp)
.L310:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L311
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L312
.L311:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L312:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L313
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L314
.L313:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L314:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L315
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L315:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L316
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L316:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L317
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L317:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L318
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L318:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L319
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L319:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L320
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L320:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L321
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L321:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L322
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L322:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$758, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L323
	movl	$0, -4(%rbp)
.L323:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$758, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	execute_CTX_set_get_http_cb_arg, .-execute_CTX_set_get_http_cb_arg
	.type	test_CTX_set_get_http_cb_arg, @function
test_CTX_set_get_http_cb_arg:
.LFB787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.51(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L326
	movl	$0, %eax
	jmp	.L327
.L326:
	cmpq	$0, -16(%rbp)
	je	.L328
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_http_cb_arg
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L328:
	movl	-4(%rbp), %eax
.L327:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	test_CTX_set_get_http_cb_arg, .-test_CTX_set_get_http_cb_arg
	.type	OSSL_CMP_CTX_get_transfer_cb, @function
OSSL_CMP_CTX_get_transfer_cb:
.LFB788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L330
	call	ERR_new@PLT
	leaq	__func__.50(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L331
.L330:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
.L331:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	OSSL_CMP_CTX_get_transfer_cb, .-OSSL_CMP_CTX_get_transfer_cb
	.type	execute_CTX_set_get_transfer_cb, @function
execute_CTX_set_get_transfer_cb:
.LFB789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set_transfer_cb@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get_transfer_cb(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	test_transfer_cb(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	test_transfer_cb(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$760, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L333
	movl	$0, -4(%rbp)
.L333:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L334
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L335
.L334:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L335:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L336
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L337
.L336:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L337:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L338
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L338:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L339
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L339:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L340
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L340:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L341
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L341:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L342
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L342:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L343
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L343:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L344
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L344:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L345
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L345:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$760, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L346
	movl	$0, -4(%rbp)
.L346:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$760, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	execute_CTX_set_get_transfer_cb, .-execute_CTX_set_get_transfer_cb
	.type	test_CTX_set_get_transfer_cb, @function
test_CTX_set_get_transfer_cb:
.LFB790:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.49(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L349
	movl	$0, %eax
	jmp	.L350
.L349:
	cmpq	$0, -16(%rbp)
	je	.L351
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_transfer_cb
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L351:
	movl	-4(%rbp), %eax
.L350:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	test_CTX_set_get_transfer_cb, .-test_CTX_set_get_transfer_cb
	.type	execute_CTX_set_get_transfer_cb_arg, @function
execute_CTX_set_get_transfer_cb_arg:
.LFB791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set_transfer_cb_arg@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	OSSL_CMP_CTX_get_transfer_cb_arg@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$761, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L353
	movl	$0, -4(%rbp)
.L353:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L354
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L355
.L354:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L355:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L356
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L357
.L356:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L357:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L358
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L358:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L359
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L359:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L360
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L360:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L361
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L361:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L362
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L362:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L363
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L363:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L364
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L364:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L365
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L365:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$761, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L366
	movl	$0, -4(%rbp)
.L366:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$761, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	execute_CTX_set_get_transfer_cb_arg, .-execute_CTX_set_get_transfer_cb_arg
	.type	test_CTX_set_get_transfer_cb_arg, @function
test_CTX_set_get_transfer_cb_arg:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.48(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L369
	movl	$0, %eax
	jmp	.L370
.L369:
	cmpq	$0, -16(%rbp)
	je	.L371
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_transfer_cb_arg
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L371:
	movl	-4(%rbp), %eax
.L370:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	test_CTX_set_get_transfer_cb_arg, .-test_CTX_set_get_transfer_cb_arg
	.type	OSSL_CMP_CTX_get0_srvCert, @function
OSSL_CMP_CTX_get0_srvCert:
.LFB793:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L373
	call	ERR_new@PLT
	leaq	__func__.47(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L374
.L373:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
.L374:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	OSSL_CMP_CTX_get0_srvCert, .-OSSL_CMP_CTX_get0_srvCert
	.type	execute_CTX_set1_get0_srvCert, @function
execute_CTX_set1_get0_srvCert:
.LFB794:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set1_srvCert@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get0_srvCert(%rip), %rax
	movq	%rax, -32(%rbp)
	call	X509_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	X509_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$763, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L376
	movl	$0, -4(%rbp)
.L376:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L377
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L378
.L377:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L378:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L379
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L380
.L379:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L380:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L381
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L381:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L382
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L382:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L383
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L383:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L384
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L384:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L385
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L385:
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L386
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L386:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L387
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L387:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L388
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$763, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L388:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$763, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L389
	movl	$0, -4(%rbp)
.L389:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$763, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	execute_CTX_set1_get0_srvCert, .-execute_CTX_set1_get0_srvCert
	.type	test_CTX_set1_get0_srvCert, @function
test_CTX_set1_get0_srvCert:
.LFB795:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.46(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L392
	movl	$0, %eax
	jmp	.L393
.L392:
	cmpq	$0, -16(%rbp)
	je	.L394
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_srvCert
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L394:
	movl	-4(%rbp), %eax
.L393:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE795:
	.size	test_CTX_set1_get0_srvCert, .-test_CTX_set1_get0_srvCert
	.type	execute_CTX_set1_get0_validatedSrvCert, @function
execute_CTX_set1_get0_validatedSrvCert:
.LFB796:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	ossl_cmp_ctx_set1_validatedSrvCert@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	OSSL_CMP_CTX_get0_validatedSrvCert@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	call	X509_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	X509_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$764, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L396
	movl	$0, -4(%rbp)
.L396:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L397
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L398
.L397:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L398:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L399
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L399:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L400
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L400:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L401
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L401:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L402
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L402:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L403
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L403:
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L404
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L404:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L405
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L405:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L406
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L406:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$764, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L407
	movl	$0, -4(%rbp)
.L407:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$764, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE796:
	.size	execute_CTX_set1_get0_validatedSrvCert, .-execute_CTX_set1_get0_validatedSrvCert
	.type	test_CTX_set1_get0_validatedSrvCert, @function
test_CTX_set1_get0_validatedSrvCert:
.LFB797:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.45(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L410
	movl	$0, %eax
	jmp	.L411
.L410:
	cmpq	$0, -16(%rbp)
	je	.L412
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_validatedSrvCert
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L412:
	movl	-4(%rbp), %eax
.L411:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	test_CTX_set1_get0_validatedSrvCert, .-test_CTX_set1_get0_validatedSrvCert
	.type	OSSL_CMP_CTX_get0_expected_sender, @function
OSSL_CMP_CTX_get0_expected_sender:
.LFB798:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L414
	call	ERR_new@PLT
	leaq	__func__.44(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L415
.L414:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
.L415:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE798:
	.size	OSSL_CMP_CTX_get0_expected_sender, .-OSSL_CMP_CTX_get0_expected_sender
	.type	execute_CTX_set1_get0_expected_sender, @function
execute_CTX_set1_get0_expected_sender:
.LFB799:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_expected_sender@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_expected_sender(%rip), %rax
	movq	%rax, -48(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$765, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L417
	movl	$0, -20(%rbp)
.L417:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L418
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L419
.L418:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L419:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L420
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L421
.L420:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L421:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L422
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L422:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L423
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L423:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L424
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L424:
	cmpq	$0, -8(%rbp)
	jne	.L425
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L425:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L426
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L426:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L427
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L427:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L428
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L428:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L429
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L429:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L430
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L430:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L431
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L431:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$765, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L432
	movl	$0, -20(%rbp)
.L432:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$765, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	execute_CTX_set1_get0_expected_sender, .-execute_CTX_set1_get0_expected_sender
	.type	test_CTX_set1_get0_expected_sender, @function
test_CTX_set1_get0_expected_sender:
.LFB800:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.43(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L435
	movl	$0, %eax
	jmp	.L436
.L435:
	cmpq	$0, -16(%rbp)
	je	.L437
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_expected_sender
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L437:
	movl	-4(%rbp), %eax
.L436:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE800:
	.size	test_CTX_set1_get0_expected_sender, .-test_CTX_set1_get0_expected_sender
	.type	execute_CTX_set0_get0_trusted, @function
execute_CTX_set0_get0_trusted:
.LFB801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set0_trustedStore@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	OSSL_CMP_CTX_get0_trustedStore@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	call	X509_STORE_new_1
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	X509_STORE_new_1
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$766, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L439
	movl	$0, -4(%rbp)
.L439:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L440
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L441
.L440:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L441:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L442
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L443
.L442:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L443:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L444
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get_flags@PLT
	testq	%rax, %rax
	je	.L444
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L444:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L445
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L445:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L446
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L446:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L447
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L447:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L448
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get_flags@PLT
	testq	%rax, %rax
	jne	.L449
.L448:
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L449:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L450
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L450:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L451
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get_flags@PLT
	testq	%rax, %rax
	jne	.L452
.L451:
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L452:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L453
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$766, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L453:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$766, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L454
	movl	$0, -4(%rbp)
.L454:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$766, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE801:
	.size	execute_CTX_set0_get0_trusted, .-execute_CTX_set0_get0_trusted
	.type	test_CTX_set0_get0_trusted, @function
test_CTX_set0_get0_trusted:
.LFB802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.42(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L457
	movl	$0, %eax
	jmp	.L458
.L457:
	cmpq	$0, -16(%rbp)
	je	.L459
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set0_get0_trusted
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L459:
	movl	-4(%rbp), %eax
.L458:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	test_CTX_set0_get0_trusted, .-test_CTX_set0_get0_trusted
	.type	execute_CTX_set1_get0_untrusted, @function
execute_CTX_set1_get0_untrusted:
.LFB803:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_untrusted@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	OSSL_CMP_CTX_get0_untrusted@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	call	sk_X509_new_1
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	sk_X509_new_1
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$769, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L461
	movl	$0, -20(%rbp)
.L461:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L462
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L463
.L462:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L463:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L464
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L465
.L464:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L465:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L466
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L466
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L466:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L467
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L467:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L468
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L468:
	cmpq	$0, -8(%rbp)
	je	.L469
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L470
.L469:
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L470:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L471
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L471:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L472
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L473
.L472:
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L473:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L474
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L474:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L475
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L475:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L476
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L477
.L476:
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L477:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L478
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L478:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$769, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L479
	movl	$0, -20(%rbp)
.L479:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$769, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE803:
	.size	execute_CTX_set1_get0_untrusted, .-execute_CTX_set1_get0_untrusted
	.type	test_CTX_set1_get0_untrusted, @function
test_CTX_set1_get0_untrusted:
.LFB804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.41(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L482
	movl	$0, %eax
	jmp	.L483
.L482:
	cmpq	$0, -16(%rbp)
	je	.L484
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_untrusted
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L484:
	movl	-4(%rbp), %eax
.L483:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE804:
	.size	test_CTX_set1_get0_untrusted, .-test_CTX_set1_get0_untrusted
	.type	OSSL_CMP_CTX_get0_cert, @function
OSSL_CMP_CTX_get0_cert:
.LFB805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L486
	call	ERR_new@PLT
	leaq	__func__.40(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L487
.L486:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
.L487:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE805:
	.size	OSSL_CMP_CTX_get0_cert, .-OSSL_CMP_CTX_get0_cert
	.type	execute_CTX_set1_get0_cert, @function
execute_CTX_set1_get0_cert:
.LFB806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set1_cert@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get0_cert(%rip), %rax
	movq	%rax, -32(%rbp)
	call	X509_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	X509_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$771, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L489
	movl	$0, -4(%rbp)
.L489:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L490
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L491
.L490:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L491:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L492
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L493
.L492:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L493:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L494
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L494:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L495
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L495:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L496
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L496:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L497
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L497:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L498
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L498:
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L499
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L499:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L500
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L500:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L501
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L501:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$771, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L502
	movl	$0, -4(%rbp)
.L502:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$771, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE806:
	.size	execute_CTX_set1_get0_cert, .-execute_CTX_set1_get0_cert
	.type	test_CTX_set1_get0_cert, @function
test_CTX_set1_get0_cert:
.LFB807:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.39(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L505
	movl	$0, %eax
	jmp	.L506
.L505:
	cmpq	$0, -16(%rbp)
	je	.L507
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_cert
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L507:
	movl	-4(%rbp), %eax
.L506:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE807:
	.size	test_CTX_set1_get0_cert, .-test_CTX_set1_get0_cert
	.type	OSSL_CMP_CTX_get0_pkey, @function
OSSL_CMP_CTX_get0_pkey:
.LFB808:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L509
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L510
.L509:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
.L510:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE808:
	.size	OSSL_CMP_CTX_get0_pkey, .-OSSL_CMP_CTX_get0_pkey
	.type	execute_CTX_set1_get0_pkey, @function
execute_CTX_set1_get0_pkey:
.LFB809:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set1_pkey@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get0_pkey(%rip), %rax
	movq	%rax, -32(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$772, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L512
	movl	$0, -4(%rbp)
.L512:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L513
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L514
.L513:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L514:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L515
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L516
.L515:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L516:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L517
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L517:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L518
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L518:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L519
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L519:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L520
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L520:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L521
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L521:
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L522
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L522:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L523
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L523:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L524
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L524:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$772, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L525
	movl	$0, -4(%rbp)
.L525:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$772, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE809:
	.size	execute_CTX_set1_get0_pkey, .-execute_CTX_set1_get0_pkey
	.type	test_CTX_set1_get0_pkey, @function
test_CTX_set1_get0_pkey:
.LFB810:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.37(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L528
	movl	$0, %eax
	jmp	.L529
.L528:
	cmpq	$0, -16(%rbp)
	je	.L530
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_pkey
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L530:
	movl	-4(%rbp), %eax
.L529:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE810:
	.size	test_CTX_set1_get0_pkey, .-test_CTX_set1_get0_pkey
	.type	OSSL_CMP_CTX_get0_recipient, @function
OSSL_CMP_CTX_get0_recipient:
.LFB811:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L532
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L533
.L532:
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
.L533:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE811:
	.size	OSSL_CMP_CTX_get0_recipient, .-OSSL_CMP_CTX_get0_recipient
	.type	execute_CTX_set1_get0_recipient, @function
execute_CTX_set1_get0_recipient:
.LFB812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_recipient@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_recipient(%rip), %rax
	movq	%rax, -48(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$774, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L535
	movl	$0, -20(%rbp)
.L535:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L536
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L537
.L536:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L537:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L538
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L539
.L538:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L539:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L540
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L540:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L541
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L541:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L542
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L542:
	cmpq	$0, -8(%rbp)
	jne	.L543
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L543:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L544
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L544:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L545
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L545:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L546
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L546:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L547
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L547:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L548
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L548:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L549
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L549:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$774, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L550
	movl	$0, -20(%rbp)
.L550:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$774, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE812:
	.size	execute_CTX_set1_get0_recipient, .-execute_CTX_set1_get0_recipient
	.type	test_CTX_set1_get0_recipient, @function
test_CTX_set1_get0_recipient:
.LFB813:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.35(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L553
	movl	$0, %eax
	jmp	.L554
.L553:
	cmpq	$0, -16(%rbp)
	je	.L555
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_recipient
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L555:
	movl	-4(%rbp), %eax
.L554:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE813:
	.size	test_CTX_set1_get0_recipient, .-test_CTX_set1_get0_recipient
	.type	sk_top_geninfo_ITAVs, @function
sk_top_geninfo_ITAVs:
.LFB814:
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
	movq	320(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leal	-1(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE814:
	.size	sk_top_geninfo_ITAVs, .-sk_top_geninfo_ITAVs
	.section	.rodata
	.align 8
.LC86:
	.string	"pusher did not return error on ctx == NULL"
	.align 8
.LC87:
	.string	"did not get default value for stack field"
.LC88:
	.string	"pushing first value failed"
	.align 8
.LC89:
	.string	"pushing first value did not increment number"
	.align 8
.LC90:
	.string	"push/sk_top first value did not match"
.LC91:
	.string	"pushing second value failed"
	.align 8
.LC92:
	.string	"pushing second value did not increment number"
	.align 8
.LC93:
	.string	"push/sk_top second value did not match"
	.text
	.type	execute_CTX_push0_geninfo_ITAV, @function
execute_CTX_push0_geninfo_ITAV:
.LFB815:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_push0_geninfo_ITAV@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -4(%rbp)
	call	OSSL_CMP_ITAV_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	call	OSSL_CMP_ITAV_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$1, -8(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$775, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L559
	movl	$0, -8(%rbp)
.L559:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L560
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L561
.L560:
	leaq	.LC86(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$775, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L561:
	call	ERR_clear_error@PLT
	cmpl	$0, -4(%rbp)
	jns	.L562
	movl	$0, -4(%rbp)
.L562:
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L563
	leaq	.LC87(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$775, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L563:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L564
	leaq	.LC88(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$775, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L564:
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	$1, -4(%rbp)
	cmpl	%eax, -4(%rbp)
	je	.L565
	leaq	.LC89(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$775, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L565:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_top_geninfo_ITAVs
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L566
	leaq	.LC90(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$775, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L566:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L567
	leaq	.LC91(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$775, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L567:
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	$1, -4(%rbp)
	cmpl	%eax, -4(%rbp)
	je	.L568
	leaq	.LC92(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$775, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L568:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_top_geninfo_ITAVs
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.L569
	leaq	.LC93(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$775, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L569:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$775, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L570
	movl	$0, -8(%rbp)
.L570:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	cmpl	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$775, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE815:
	.size	execute_CTX_push0_geninfo_ITAV, .-execute_CTX_push0_geninfo_ITAV
	.type	test_CTX_push0_geninfo_ITAV, @function
test_CTX_push0_geninfo_ITAV:
.LFB816:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.34(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L573
	movl	$0, %eax
	jmp	.L574
.L573:
	cmpq	$0, -16(%rbp)
	je	.L575
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_push0_geninfo_ITAV
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L575:
	movl	-4(%rbp), %eax
.L574:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE816:
	.size	test_CTX_push0_geninfo_ITAV, .-test_CTX_push0_geninfo_ITAV
	.type	OSSL_CMP_CTX_get0_extraCertsOut, @function
OSSL_CMP_CTX_get0_extraCertsOut:
.LFB817:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L577
	call	ERR_new@PLT
	leaq	__func__.33(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L578
.L577:
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
.L578:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE817:
	.size	OSSL_CMP_CTX_get0_extraCertsOut, .-OSSL_CMP_CTX_get0_extraCertsOut
	.type	execute_CTX_set1_get0_extraCertsOut, @function
execute_CTX_set1_get0_extraCertsOut:
.LFB818:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_extraCertsOut@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_extraCertsOut(%rip), %rax
	movq	%rax, -48(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -16(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$776, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L580
	movl	$0, -4(%rbp)
.L580:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L581
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L582
.L581:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L582:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L583
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L584
.L583:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L584:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L585
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L585:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L586
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L586:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L587
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
.L587:
	cmpq	$0, -16(%rbp)
	jne	.L588
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L588:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L589
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L589:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L590
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L590:
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L591
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
.L591:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L592
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L592:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L593
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L593:
	movq	-88(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L594
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$776, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L594:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$776, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L595
	movl	$0, -4(%rbp)
.L595:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$776, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	execute_CTX_set1_get0_extraCertsOut, .-execute_CTX_set1_get0_extraCertsOut
	.type	test_CTX_set1_get0_extraCertsOut, @function
test_CTX_set1_get0_extraCertsOut:
.LFB819:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.32(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L598
	movl	$0, %eax
	jmp	.L599
.L598:
	cmpq	$0, -16(%rbp)
	je	.L600
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_extraCertsOut
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L600:
	movl	-4(%rbp), %eax
.L599:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE819:
	.size	test_CTX_set1_get0_extraCertsOut, .-test_CTX_set1_get0_extraCertsOut
	.type	OSSL_CMP_CTX_set0_newPkey_1, @function
OSSL_CMP_CTX_set0_newPkey_1:
.LFB820:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set0_newPkey@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE820:
	.size	OSSL_CMP_CTX_set0_newPkey_1, .-OSSL_CMP_CTX_set0_newPkey_1
	.type	OSSL_CMP_CTX_get0_newPkey_1, @function
OSSL_CMP_CTX_get0_newPkey_1:
.LFB821:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_newPkey@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE821:
	.size	OSSL_CMP_CTX_get0_newPkey_1, .-OSSL_CMP_CTX_get0_newPkey_1
	.type	execute_CTX_set0_get0_newPkey_1, @function
execute_CTX_set0_get0_newPkey_1:
.LFB822:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	OSSL_CMP_CTX_set0_newPkey_1(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get0_newPkey_1(%rip), %rax
	movq	%rax, -32(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$778, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L606
	movl	$0, -4(%rbp)
.L606:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L607
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L608
.L607:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L608:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L609
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L610
.L609:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L610:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L611
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L611:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L612
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L612:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L613
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L613:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L614
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L614:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L615
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L615:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L616
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L616:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L617
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L617:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L618
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$778, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L618:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$778, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L619
	movl	$0, -4(%rbp)
.L619:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$778, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE822:
	.size	execute_CTX_set0_get0_newPkey_1, .-execute_CTX_set0_get0_newPkey_1
	.type	test_CTX_set0_get0_newPkey_1, @function
test_CTX_set0_get0_newPkey_1:
.LFB823:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.31(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L622
	movl	$0, %eax
	jmp	.L623
.L622:
	cmpq	$0, -16(%rbp)
	je	.L624
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set0_get0_newPkey_1
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L624:
	movl	-4(%rbp), %eax
.L623:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE823:
	.size	test_CTX_set0_get0_newPkey_1, .-test_CTX_set0_get0_newPkey_1
	.type	OSSL_CMP_CTX_set0_newPkey_0, @function
OSSL_CMP_CTX_set0_newPkey_0:
.LFB824:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set0_newPkey@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	OSSL_CMP_CTX_set0_newPkey_0, .-OSSL_CMP_CTX_set0_newPkey_0
	.type	OSSL_CMP_CTX_get0_newPkey_0, @function
OSSL_CMP_CTX_get0_newPkey_0:
.LFB825:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_newPkey@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE825:
	.size	OSSL_CMP_CTX_get0_newPkey_0, .-OSSL_CMP_CTX_get0_newPkey_0
	.type	execute_CTX_set0_get0_newPkey_0, @function
execute_CTX_set0_get0_newPkey_0:
.LFB826:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	OSSL_CMP_CTX_set0_newPkey_0(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get0_newPkey_0(%rip), %rax
	movq	%rax, -32(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$780, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L630
	movl	$0, -4(%rbp)
.L630:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L631
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L632
.L631:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$780, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L632:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L633
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L634
.L633:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$780, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L634:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L635
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$780, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L635:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L636
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$780, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L636:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L637
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$780, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L637:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L638
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$780, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L638:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L639
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$780, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L639:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L640
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$780, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L640:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L641
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$780, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L641:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L642
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$780, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L642:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$780, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L643
	movl	$0, -4(%rbp)
.L643:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$780, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE826:
	.size	execute_CTX_set0_get0_newPkey_0, .-execute_CTX_set0_get0_newPkey_0
	.type	test_CTX_set0_get0_newPkey_0, @function
test_CTX_set0_get0_newPkey_0:
.LFB827:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.30(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L646
	movl	$0, %eax
	jmp	.L647
.L646:
	cmpq	$0, -16(%rbp)
	je	.L648
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set0_get0_newPkey_0
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L648:
	movl	-4(%rbp), %eax
.L647:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE827:
	.size	test_CTX_set0_get0_newPkey_0, .-test_CTX_set0_get0_newPkey_0
	.type	OSSL_CMP_CTX_set1_referenceValue_str, @function
OSSL_CMP_CTX_set1_referenceValue_str:
.LFB828:
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
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_referenceValue@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE828:
	.size	OSSL_CMP_CTX_set1_referenceValue_str, .-OSSL_CMP_CTX_set1_referenceValue_str
	.type	OSSL_CMP_CTX_get1_referenceValue_str, @function
OSSL_CMP_CTX_get1_referenceValue_str:
.LFB829:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L652
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$781, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L653
.L652:
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L654
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$781, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	jmp	.L653
.L654:
	movl	$0, %eax
.L653:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE829:
	.size	OSSL_CMP_CTX_get1_referenceValue_str, .-OSSL_CMP_CTX_get1_referenceValue_str
	.section	.rodata
	.align 8
.LC94:
	.string	"second get returned same as first get"
	.align 8
.LC95:
	.string	"third get did not create a new dup"
	.text
	.type	execute_CTX_set1_get1_referenceValue_str, @function
execute_CTX_set1_get1_referenceValue_str:
.LFB830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_set1_referenceValue_str(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	OSSL_CMP_CTX_get1_referenceValue_str(%rip), %rax
	movq	%rax, -56(%rbp)
	call	char_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -8(%rbp)
	call	char_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$782, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L657
	movl	$0, -28(%rbp)
.L657:
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L658
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L659
.L658:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L659:
	call	ERR_clear_error@PLT
	movq	-56(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L660
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L661
.L660:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L661:
	call	ERR_clear_error@PLT
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L662
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L662:
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L663
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L663:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L664
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -28(%rbp)
.L664:
	cmpq	$0, -8(%rbp)
	jne	.L665
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L665:
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L666
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L666:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L667
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L667:
	movq	-16(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L668
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
.L668:
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L669
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L669:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L670
	leaq	.LC94(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L670:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L671
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L671:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L672
	leaq	.LC95(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.L672:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$782, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L673
	movl	$0, -28(%rbp)
.L673:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	cmpl	$0, -28(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$782, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	execute_CTX_set1_get1_referenceValue_str, .-execute_CTX_set1_get1_referenceValue_str
	.type	test_CTX_set1_get1_referenceValue_str, @function
test_CTX_set1_get1_referenceValue_str:
.LFB831:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.28(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L676
	movl	$0, %eax
	jmp	.L677
.L676:
	cmpq	$0, -16(%rbp)
	je	.L678
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get1_referenceValue_str
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L678:
	movl	-4(%rbp), %eax
.L677:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE831:
	.size	test_CTX_set1_get1_referenceValue_str, .-test_CTX_set1_get1_referenceValue_str
	.type	OSSL_CMP_CTX_set1_secretValue_str, @function
OSSL_CMP_CTX_set1_secretValue_str:
.LFB832:
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
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_secretValue@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE832:
	.size	OSSL_CMP_CTX_set1_secretValue_str, .-OSSL_CMP_CTX_set1_secretValue_str
	.type	OSSL_CMP_CTX_get1_secretValue_str, @function
OSSL_CMP_CTX_get1_secretValue_str:
.LFB833:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L682
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$784, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L683
.L682:
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L684
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$784, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	jmp	.L683
.L684:
	movl	$0, %eax
.L683:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE833:
	.size	OSSL_CMP_CTX_get1_secretValue_str, .-OSSL_CMP_CTX_get1_secretValue_str
	.type	execute_CTX_set1_get1_secretValue_str, @function
execute_CTX_set1_get1_secretValue_str:
.LFB834:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_set1_secretValue_str(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	OSSL_CMP_CTX_get1_secretValue_str(%rip), %rax
	movq	%rax, -56(%rbp)
	call	char_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -8(%rbp)
	call	char_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$785, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L687
	movl	$0, -28(%rbp)
.L687:
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L688
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L689
.L688:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L689:
	call	ERR_clear_error@PLT
	movq	-56(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L690
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L691
.L690:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L691:
	call	ERR_clear_error@PLT
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L692
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L692:
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L693
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L693:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L694
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -28(%rbp)
.L694:
	cmpq	$0, -8(%rbp)
	jne	.L695
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L695:
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L696
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L696:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L697
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L697:
	movq	-16(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L698
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
.L698:
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L699
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L699:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L700
	leaq	.LC94(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L700:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L701
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L701:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L702
	leaq	.LC95(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.L702:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$785, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L703
	movl	$0, -28(%rbp)
.L703:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	char_free
	cmpl	$0, -28(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$785, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE834:
	.size	execute_CTX_set1_get1_secretValue_str, .-execute_CTX_set1_get1_secretValue_str
	.type	test_CTX_set1_get1_secretValue_str, @function
test_CTX_set1_get1_secretValue_str:
.LFB835:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.26(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L706
	movl	$0, %eax
	jmp	.L707
.L706:
	cmpq	$0, -16(%rbp)
	je	.L708
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get1_secretValue_str
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L708:
	movl	-4(%rbp), %eax
.L707:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE835:
	.size	test_CTX_set1_get1_secretValue_str, .-test_CTX_set1_get1_secretValue_str
	.type	OSSL_CMP_CTX_get0_issuer, @function
OSSL_CMP_CTX_get0_issuer:
.LFB836:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L710
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L711
.L710:
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
.L711:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE836:
	.size	OSSL_CMP_CTX_get0_issuer, .-OSSL_CMP_CTX_get0_issuer
	.type	execute_CTX_set1_get0_issuer, @function
execute_CTX_set1_get0_issuer:
.LFB837:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_issuer@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_issuer(%rip), %rax
	movq	%rax, -48(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$786, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L713
	movl	$0, -20(%rbp)
.L713:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L714
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L715
.L714:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L715:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L716
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L717
.L716:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L717:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L718
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L718:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L719
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L719:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L720
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L720:
	cmpq	$0, -8(%rbp)
	jne	.L721
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L721:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L722
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L722:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L723
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L723:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L724
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L724:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L725
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L725:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L726
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L726:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L727
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L727:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$786, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L728
	movl	$0, -20(%rbp)
.L728:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$786, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE837:
	.size	execute_CTX_set1_get0_issuer, .-execute_CTX_set1_get0_issuer
	.type	test_CTX_set1_get0_issuer, @function
test_CTX_set1_get0_issuer:
.LFB838:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.24(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L731
	movl	$0, %eax
	jmp	.L732
.L731:
	cmpq	$0, -16(%rbp)
	je	.L733
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_issuer
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L733:
	movl	-4(%rbp), %eax
.L732:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE838:
	.size	test_CTX_set1_get0_issuer, .-test_CTX_set1_get0_issuer
	.type	OSSL_CMP_CTX_get0_subjectName, @function
OSSL_CMP_CTX_get0_subjectName:
.LFB839:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L735
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L736
.L735:
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
.L736:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE839:
	.size	OSSL_CMP_CTX_get0_subjectName, .-OSSL_CMP_CTX_get0_subjectName
	.type	execute_CTX_set1_get0_subjectName, @function
execute_CTX_set1_get0_subjectName:
.LFB840:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_subjectName@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_subjectName(%rip), %rax
	movq	%rax, -48(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$787, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L738
	movl	$0, -20(%rbp)
.L738:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L739
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L740
.L739:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L740:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L741
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L742
.L741:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L742:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L743
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L743:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L744
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L744:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L745
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L745:
	cmpq	$0, -8(%rbp)
	jne	.L746
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L746:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L747
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L747:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L748
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L748:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L749
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L749:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L750
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L750:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L751
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L751:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L752
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L752:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$787, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L753
	movl	$0, -20(%rbp)
.L753:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$787, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE840:
	.size	execute_CTX_set1_get0_subjectName, .-execute_CTX_set1_get0_subjectName
	.type	test_CTX_set1_get0_subjectName, @function
test_CTX_set1_get0_subjectName:
.LFB841:
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
	jne	.L756
	movl	$0, %eax
	jmp	.L757
.L756:
	cmpq	$0, -16(%rbp)
	je	.L758
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_subjectName
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L758:
	movl	-4(%rbp), %eax
.L757:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE841:
	.size	test_CTX_set1_get0_subjectName, .-test_CTX_set1_get0_subjectName
	.type	OSSL_CMP_CTX_get0_reqExtensions, @function
OSSL_CMP_CTX_get0_reqExtensions:
.LFB842:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L760
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L761
.L760:
	movq	-8(%rbp), %rax
	movq	408(%rax), %rax
.L761:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE842:
	.size	OSSL_CMP_CTX_get0_reqExtensions, .-OSSL_CMP_CTX_get0_reqExtensions
	.type	execute_CTX_set0_get0_reqExtensions, @function
execute_CTX_set0_get0_reqExtensions:
.LFB843:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set0_reqExtensions@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get0_reqExtensions(%rip), %rax
	movq	%rax, -32(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$791, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L763
	movl	$0, -4(%rbp)
.L763:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L764
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L765
.L764:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L765:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L766
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L767
.L766:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L767:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L768
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L768:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L769
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L769:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L770
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L770:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L771
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L771:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L772
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L772:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L773
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L773:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L774
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L774:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L775
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L775:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$791, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L776
	movl	$0, -4(%rbp)
.L776:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$791, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE843:
	.size	execute_CTX_set0_get0_reqExtensions, .-execute_CTX_set0_get0_reqExtensions
	.type	test_CTX_set0_get0_reqExtensions, @function
test_CTX_set0_get0_reqExtensions:
.LFB844:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.20(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L779
	movl	$0, %eax
	jmp	.L780
.L779:
	cmpq	$0, -16(%rbp)
	je	.L781
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set0_get0_reqExtensions
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L781:
	movl	-4(%rbp), %eax
.L780:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE844:
	.size	test_CTX_set0_get0_reqExtensions, .-test_CTX_set0_get0_reqExtensions
	.type	sk_top_policies, @function
sk_top_policies:
.LFB845:
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
	movq	416(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYINFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leal	-1(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYINFO_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE845:
	.size	sk_top_policies, .-sk_top_policies
	.type	execute_CTX_push0_policy, @function
execute_CTX_push0_policy:
.LFB846:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_push0_policy@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYINFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -4(%rbp)
	call	POLICYINFO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	call	POLICYINFO_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$1, -8(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$792, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L785
	movl	$0, -8(%rbp)
.L785:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L786
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L787
.L786:
	leaq	.LC86(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$792, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L787:
	call	ERR_clear_error@PLT
	cmpl	$0, -4(%rbp)
	jns	.L788
	movl	$0, -4(%rbp)
.L788:
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L789
	leaq	.LC87(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$792, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L789:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L790
	leaq	.LC88(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$792, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L790:
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYINFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	$1, -4(%rbp)
	cmpl	%eax, -4(%rbp)
	je	.L791
	leaq	.LC89(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$792, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L791:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_top_policies
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L792
	leaq	.LC90(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$792, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L792:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L793
	leaq	.LC91(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$792, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L793:
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYINFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	$1, -4(%rbp)
	cmpl	%eax, -4(%rbp)
	je	.L794
	leaq	.LC92(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$792, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L794:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_top_policies
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.L795
	leaq	.LC93(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$792, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L795:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$792, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L796
	movl	$0, -8(%rbp)
.L796:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	POLICYINFO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	POLICYINFO_free@PLT
	cmpl	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$792, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE846:
	.size	execute_CTX_push0_policy, .-execute_CTX_push0_policy
	.type	test_CTX_push0_policy, @function
test_CTX_push0_policy:
.LFB847:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L799
	movl	$0, %eax
	jmp	.L800
.L799:
	cmpq	$0, -16(%rbp)
	je	.L801
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_push0_policy
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L801:
	movl	-4(%rbp), %eax
.L800:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE847:
	.size	test_CTX_push0_policy, .-test_CTX_push0_policy
	.type	OSSL_CMP_CTX_get0_oldCert, @function
OSSL_CMP_CTX_get0_oldCert:
.LFB848:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L803
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L804
.L803:
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
.L804:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE848:
	.size	OSSL_CMP_CTX_get0_oldCert, .-OSSL_CMP_CTX_get0_oldCert
	.type	execute_CTX_set1_get0_oldCert, @function
execute_CTX_set1_get0_oldCert:
.LFB849:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set1_oldCert@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get0_oldCert(%rip), %rax
	movq	%rax, -32(%rbp)
	call	X509_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	X509_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$793, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L806
	movl	$0, -4(%rbp)
.L806:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L807
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L808
.L807:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L808:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L809
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L810
.L809:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L810:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L811
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L811:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L812
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L812:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L813
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L813:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L814
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L814:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L815
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L815:
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L816
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L816:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L817
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L817:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L818
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L818:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$793, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L819
	movl	$0, -4(%rbp)
.L819:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$793, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE849:
	.size	execute_CTX_set1_get0_oldCert, .-execute_CTX_set1_get0_oldCert
	.type	test_CTX_set1_get0_oldCert, @function
test_CTX_set1_get0_oldCert:
.LFB850:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L822
	movl	$0, %eax
	jmp	.L823
.L822:
	cmpq	$0, -16(%rbp)
	je	.L824
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_oldCert
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L824:
	movl	-4(%rbp), %eax
.L823:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE850:
	.size	test_CTX_set1_get0_oldCert, .-test_CTX_set1_get0_oldCert
	.type	sk_top_genm_ITAVs, @function
sk_top_genm_ITAVs:
.LFB851:
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
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leal	-1(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE851:
	.size	sk_top_genm_ITAVs, .-sk_top_genm_ITAVs
	.type	execute_CTX_push0_genm_ITAV, @function
execute_CTX_push0_genm_ITAV:
.LFB852:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_push0_genm_ITAV@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -4(%rbp)
	call	OSSL_CMP_ITAV_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	call	OSSL_CMP_ITAV_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$1, -8(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$797, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L828
	movl	$0, -8(%rbp)
.L828:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L829
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L830
.L829:
	leaq	.LC86(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$797, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L830:
	call	ERR_clear_error@PLT
	cmpl	$0, -4(%rbp)
	jns	.L831
	movl	$0, -4(%rbp)
.L831:
	movq	-16(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L832
	leaq	.LC87(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$797, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L832:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L833
	leaq	.LC88(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$797, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L833:
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	$1, -4(%rbp)
	cmpl	%eax, -4(%rbp)
	je	.L834
	leaq	.LC89(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$797, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L834:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_top_genm_ITAVs
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L835
	leaq	.LC90(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$797, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L835:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L836
	leaq	.LC91(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$797, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L836:
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	$1, -4(%rbp)
	cmpl	%eax, -4(%rbp)
	je	.L837
	leaq	.LC92(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$797, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L837:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_top_genm_ITAVs
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.L838
	leaq	.LC93(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$797, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -8(%rbp)
.L838:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$797, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L839
	movl	$0, -8(%rbp)
.L839:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	cmpl	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$797, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE852:
	.size	execute_CTX_push0_genm_ITAV, .-execute_CTX_push0_genm_ITAV
	.type	test_CTX_push0_genm_ITAV, @function
test_CTX_push0_genm_ITAV:
.LFB853:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L842
	movl	$0, %eax
	jmp	.L843
.L842:
	cmpq	$0, -16(%rbp)
	je	.L844
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_push0_genm_ITAV
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L844:
	movl	-4(%rbp), %eax
.L843:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE853:
	.size	test_CTX_push0_genm_ITAV, .-test_CTX_push0_genm_ITAV
	.type	OSSL_CMP_CTX_get_certConf_cb, @function
OSSL_CMP_CTX_get_certConf_cb:
.LFB854:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L846
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L847
.L846:
	movq	-8(%rbp), %rax
	movq	520(%rax), %rax
.L847:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE854:
	.size	OSSL_CMP_CTX_get_certConf_cb, .-OSSL_CMP_CTX_get_certConf_cb
	.type	execute_CTX_set_get_certConf_cb, @function
execute_CTX_set_get_certConf_cb:
.LFB855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set_certConf_cb@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	OSSL_CMP_CTX_get_certConf_cb(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	test_certConf_cb(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	test_certConf_cb(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$798, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L849
	movl	$0, -4(%rbp)
.L849:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L850
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L851
.L850:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L851:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L852
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L853
.L852:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L853:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L854
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L854:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L855
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L855:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L856
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L856:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L857
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L857:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L858
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L858:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L859
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L859:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L860
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L860:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L861
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L861:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$798, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L862
	movl	$0, -4(%rbp)
.L862:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$798, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE855:
	.size	execute_CTX_set_get_certConf_cb, .-execute_CTX_set_get_certConf_cb
	.type	test_CTX_set_get_certConf_cb, @function
test_CTX_set_get_certConf_cb:
.LFB856:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L865
	movl	$0, %eax
	jmp	.L866
.L865:
	cmpq	$0, -16(%rbp)
	je	.L867
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_certConf_cb
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L867:
	movl	-4(%rbp), %eax
.L866:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE856:
	.size	test_CTX_set_get_certConf_cb, .-test_CTX_set_get_certConf_cb
	.type	execute_CTX_set_get_certConf_cb_arg, @function
execute_CTX_set_get_certConf_cb_arg:
.LFB857:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	OSSL_CMP_CTX_set_certConf_cb_arg@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	OSSL_CMP_CTX_get_certConf_cb_arg@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$799, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L869
	movl	$0, -4(%rbp)
.L869:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L870
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L871
.L870:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L871:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L872
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L873
.L872:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L873:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L874
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L874:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L875
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L875:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L876
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L876:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L877
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L877:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L878
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L878:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L879
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L879:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L880
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L880:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L881
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L881:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$799, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L882
	movl	$0, -4(%rbp)
.L882:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$799, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE857:
	.size	execute_CTX_set_get_certConf_cb_arg, .-execute_CTX_set_get_certConf_cb_arg
	.type	test_CTX_set_get_certConf_cb_arg, @function
test_CTX_set_get_certConf_cb_arg:
.LFB858:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L885
	movl	$0, %eax
	jmp	.L886
.L885:
	cmpq	$0, -16(%rbp)
	je	.L887
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_certConf_cb_arg
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L887:
	movl	-4(%rbp), %eax
.L886:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE858:
	.size	test_CTX_set_get_certConf_cb_arg, .-test_CTX_set_get_certConf_cb_arg
	.type	execute_CTX_set_get_status, @function
execute_CTX_set_get_status:
.LFB859:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	ossl_cmp_ctx_set_status@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	OSSL_CMP_CTX_get_status@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$801, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L889
	movl	$0, -4(%rbp)
.L889:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	cmpl	$-1, %eax
	jne	.L890
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L891
.L890:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L891:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L892
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L892:
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L893
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L893:
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L894
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L894:
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L895
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L895:
	movl	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jns	.L896
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L896:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L897
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L897:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jns	.L898
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L898:
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.L899
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L899:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$801, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L900
	movl	$0, -4(%rbp)
.L900:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$801, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE859:
	.size	execute_CTX_set_get_status, .-execute_CTX_set_get_status
	.type	test_CTX_set_get_status, @function
test_CTX_set_get_status:
.LFB860:
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
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L903
	movl	$0, %eax
	jmp	.L904
.L903:
	cmpq	$0, -16(%rbp)
	je	.L905
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_status
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L905:
	movl	-4(%rbp), %eax
.L904:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE860:
	.size	test_CTX_set_get_status, .-test_CTX_set_get_status
	.type	execute_CTX_set0_get0_statusString, @function
execute_CTX_set0_get0_statusString:
.LFB861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	ossl_cmp_ctx_set0_statusString@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	OSSL_CMP_CTX_get0_statusString@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$802, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L907
	movl	$0, -4(%rbp)
.L907:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L908
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L909
.L908:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L909:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L910
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L910:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L911
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L911:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L912
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L912:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L913
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L913:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L914
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L914:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L915
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L915:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L916
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L916:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L917
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L917:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$802, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L918
	movl	$0, -4(%rbp)
.L918:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$802, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	execute_CTX_set0_get0_statusString, .-execute_CTX_set0_get0_statusString
	.type	test_CTX_set0_get0_statusString, @function
test_CTX_set0_get0_statusString:
.LFB862:
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
	jne	.L921
	movl	$0, %eax
	jmp	.L922
.L921:
	cmpq	$0, -16(%rbp)
	je	.L923
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set0_get0_statusString
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L923:
	movl	-4(%rbp), %eax
.L922:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE862:
	.size	test_CTX_set0_get0_statusString, .-test_CTX_set0_get0_statusString
	.type	execute_CTX_set_get_failInfoCode, @function
execute_CTX_set_get_failInfoCode:
.LFB863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	ossl_cmp_ctx_set_failInfoCode@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	OSSL_CMP_CTX_get_failInfoCode@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$803, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L925
	movl	$0, -4(%rbp)
.L925:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	cmpl	$-1, %eax
	jne	.L926
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L927
.L926:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$803, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L927:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L928
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$803, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L928:
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L929
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$803, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L929:
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L930
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$803, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L930:
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L931
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$803, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L931:
	movl	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jns	.L932
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$803, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L932:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L933
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$803, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L933:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jns	.L934
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$803, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L934:
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.L935
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$803, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L935:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$803, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L936
	movl	$0, -4(%rbp)
.L936:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$803, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE863:
	.size	execute_CTX_set_get_failInfoCode, .-execute_CTX_set_get_failInfoCode
	.type	test_CTX_set_get_failInfoCode, @function
test_CTX_set_get_failInfoCode:
.LFB864:
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
	cmpq	$0, -16(%rbp)
	jne	.L939
	movl	$0, %eax
	jmp	.L940
.L939:
	cmpq	$0, -16(%rbp)
	je	.L941
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set_get_failInfoCode
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L941:
	movl	-4(%rbp), %eax
.L940:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE864:
	.size	test_CTX_set_get_failInfoCode, .-test_CTX_set_get_failInfoCode
	.type	execute_CTX_set0_get0_newCert, @function
execute_CTX_set0_get0_newCert:
.LFB865:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	ossl_cmp_ctx_set0_newCert@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	OSSL_CMP_CTX_get0_newCert@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	call	X509_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	call	X509_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -4(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$804, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L943
	movl	$0, -4(%rbp)
.L943:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L944
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L945
.L944:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L945:
	call	ERR_clear_error@PLT
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L946
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L946:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L947
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L947:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L948
	leaq	.LC75(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L948:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L949
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L949:
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L950
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L950:
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L951
	leaq	.LC78(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L951:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L952
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L952:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L953
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -4(%rbp)
.L953:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$804, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L954
	movl	$0, -4(%rbp)
.L954:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$804, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE865:
	.size	execute_CTX_set0_get0_newCert, .-execute_CTX_set0_get0_newCert
	.type	test_CTX_set0_get0_newCert, @function
test_CTX_set0_get0_newCert:
.LFB866:
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
	cmpq	$0, -16(%rbp)
	jne	.L957
	movl	$0, %eax
	jmp	.L958
.L957:
	cmpq	$0, -16(%rbp)
	je	.L959
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set0_get0_newCert
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L959:
	movl	-4(%rbp), %eax
.L958:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	test_CTX_set0_get0_newCert, .-test_CTX_set0_get0_newCert
	.type	execute_CTX_set1_get1_newChain, @function
execute_CTX_set1_get1_newChain:
.LFB867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	ossl_cmp_ctx_set1_newChain@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	OSSL_CMP_CTX_get1_newChain@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	call	sk_X509_new_1
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -16(%rbp)
	call	sk_X509_new_1
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$805, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L961
	movl	$0, -28(%rbp)
.L961:
	call	ERR_clear_error@PLT
	movq	-56(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L962
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L963
.L962:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L963:
	call	ERR_clear_error@PLT
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L964
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L964
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L964:
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L965
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L965:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L966
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
.L966:
	cmpq	$0, -16(%rbp)
	je	.L967
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L968
.L967:
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L968:
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L969
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L969:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L970
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L971
.L970:
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L971:
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L972
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -28(%rbp)
.L972:
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L973
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L973:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L974
	leaq	.LC94(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L974:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L975
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L976
.L975:
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L976:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L977
	leaq	.LC95(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.L977:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$805, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L978
	movl	$0, -28(%rbp)
.L978:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	cmpl	$0, -28(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$805, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	execute_CTX_set1_get1_newChain, .-execute_CTX_set1_get1_newChain
	.type	test_CTX_set1_get1_newChain, @function
test_CTX_set1_get1_newChain:
.LFB868:
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
	cmpq	$0, -16(%rbp)
	jne	.L981
	movl	$0, %eax
	jmp	.L982
.L981:
	cmpq	$0, -16(%rbp)
	je	.L983
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get1_newChain
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L983:
	movl	-4(%rbp), %eax
.L982:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	test_CTX_set1_get1_newChain, .-test_CTX_set1_get1_newChain
	.type	execute_CTX_set1_get1_caPubs, @function
execute_CTX_set1_get1_caPubs:
.LFB869:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	ossl_cmp_ctx_set1_caPubs@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	OSSL_CMP_CTX_get1_caPubs@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	call	sk_X509_new_1
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -16(%rbp)
	call	sk_X509_new_1
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$806, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L985
	movl	$0, -28(%rbp)
.L985:
	call	ERR_clear_error@PLT
	movq	-56(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L986
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L987
.L986:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L987:
	call	ERR_clear_error@PLT
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L988
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L988
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L988:
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L989
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L989:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L990
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
.L990:
	cmpq	$0, -16(%rbp)
	je	.L991
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L992
.L991:
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L992:
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L993
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L993:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L994
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L995
.L994:
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L995:
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L996
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -28(%rbp)
.L996:
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L997
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L997:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L998
	leaq	.LC94(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L998:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L999
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L1000
.L999:
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L1000:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L1001
	leaq	.LC95(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.L1001:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$806, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1002
	movl	$0, -28(%rbp)
.L1002:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	cmpl	$0, -28(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$806, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE869:
	.size	execute_CTX_set1_get1_caPubs, .-execute_CTX_set1_get1_caPubs
	.type	test_CTX_set1_get1_caPubs, @function
test_CTX_set1_get1_caPubs:
.LFB870:
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
	jne	.L1005
	movl	$0, %eax
	jmp	.L1006
.L1005:
	cmpq	$0, -16(%rbp)
	je	.L1007
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get1_caPubs
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L1007:
	movl	-4(%rbp), %eax
.L1006:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	test_CTX_set1_get1_caPubs, .-test_CTX_set1_get1_caPubs
	.type	execute_CTX_set1_get1_extraCertsIn, @function
execute_CTX_set1_get1_extraCertsIn:
.LFB871:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	ossl_cmp_ctx_set1_extraCertsIn@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	OSSL_CMP_CTX_get1_extraCertsIn@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	call	sk_X509_new_1
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -16(%rbp)
	call	sk_X509_new_1
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$807, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1009
	movl	$0, -28(%rbp)
.L1009:
	call	ERR_clear_error@PLT
	movq	-56(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L1010
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L1011
.L1010:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L1011:
	call	ERR_clear_error@PLT
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1012
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L1012
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L1012:
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L1013
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L1013:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1014
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
.L1014:
	cmpq	$0, -16(%rbp)
	je	.L1015
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L1016
.L1015:
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L1016:
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L1017
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L1017:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1018
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L1019
.L1018:
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L1019:
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L1020
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -28(%rbp)
.L1020:
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1021
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L1021:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L1022
	leaq	.LC94(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L1022:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1023
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L1024
.L1023:
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -28(%rbp)
.L1024:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L1025
	leaq	.LC95(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.L1025:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$807, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1026
	movl	$0, -28(%rbp)
.L1026:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_X509_pop_X509_free
	cmpl	$0, -28(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$807, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	execute_CTX_set1_get1_extraCertsIn, .-execute_CTX_set1_get1_extraCertsIn
	.type	test_CTX_set1_get1_extraCertsIn, @function
test_CTX_set1_get1_extraCertsIn:
.LFB872:
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
	cmpq	$0, -16(%rbp)
	jne	.L1029
	movl	$0, %eax
	jmp	.L1030
.L1029:
	cmpq	$0, -16(%rbp)
	je	.L1031
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get1_extraCertsIn
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L1031:
	movl	-4(%rbp), %eax
.L1030:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE872:
	.size	test_CTX_set1_get1_extraCertsIn, .-test_CTX_set1_get1_extraCertsIn
	.type	OSSL_CMP_CTX_get0_transactionID, @function
OSSL_CMP_CTX_get0_transactionID:
.LFB873:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1033
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1034
.L1033:
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
.L1034:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE873:
	.size	OSSL_CMP_CTX_get0_transactionID, .-OSSL_CMP_CTX_get0_transactionID
	.type	execute_CTX_set1_get0_transactionID, @function
execute_CTX_set1_get0_transactionID:
.LFB874:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_transactionID@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_transactionID(%rip), %rax
	movq	%rax, -48(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$809, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1036
	movl	$0, -20(%rbp)
.L1036:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L1037
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L1038
.L1037:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1038:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L1039
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L1040
.L1039:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1040:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1041
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1041:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L1042
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1042:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1043
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L1043:
	cmpq	$0, -8(%rbp)
	jne	.L1044
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1044:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L1045
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1045:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1046
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1046:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L1047
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L1047:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1048
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1048:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L1049
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1049:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L1050
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1050:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$809, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1051
	movl	$0, -20(%rbp)
.L1051:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$809, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE874:
	.size	execute_CTX_set1_get0_transactionID, .-execute_CTX_set1_get0_transactionID
	.type	test_CTX_set1_get0_transactionID, @function
test_CTX_set1_get0_transactionID:
.LFB875:
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
	jne	.L1054
	movl	$0, %eax
	jmp	.L1055
.L1054:
	cmpq	$0, -16(%rbp)
	je	.L1056
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_transactionID
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L1056:
	movl	-4(%rbp), %eax
.L1055:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE875:
	.size	test_CTX_set1_get0_transactionID, .-test_CTX_set1_get0_transactionID
	.type	OSSL_CMP_CTX_get0_senderNonce, @function
OSSL_CMP_CTX_get0_senderNonce:
.LFB876:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1058
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1059
.L1058:
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
.L1059:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE876:
	.size	OSSL_CMP_CTX_get0_senderNonce, .-OSSL_CMP_CTX_get0_senderNonce
	.type	execute_CTX_set1_get0_senderNonce, @function
execute_CTX_set1_get0_senderNonce:
.LFB877:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	OSSL_CMP_CTX_set1_senderNonce@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_senderNonce(%rip), %rax
	movq	%rax, -48(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$811, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1061
	movl	$0, -20(%rbp)
.L1061:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	testl	%eax, %eax
	jne	.L1062
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L1063
.L1062:
	leaq	.LC71(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1063:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L1064
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L1065
.L1064:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1065:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1066
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1066:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L1067
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1067:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1068
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L1068:
	cmpq	$0, -8(%rbp)
	jne	.L1069
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1069:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L1070
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1070:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1071
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1071:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L1072
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L1072:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1073
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1073:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L1074
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1074:
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L1075
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1075:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$811, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1076
	movl	$0, -20(%rbp)
.L1076:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$811, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE877:
	.size	execute_CTX_set1_get0_senderNonce, .-execute_CTX_set1_get0_senderNonce
	.type	test_CTX_set1_get0_senderNonce, @function
test_CTX_set1_get0_senderNonce:
.LFB878:
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
	jne	.L1079
	movl	$0, %eax
	jmp	.L1080
.L1079:
	cmpq	$0, -16(%rbp)
	je	.L1081
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_senderNonce
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L1081:
	movl	-4(%rbp), %eax
.L1080:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE878:
	.size	test_CTX_set1_get0_senderNonce, .-test_CTX_set1_get0_senderNonce
	.type	OSSL_CMP_CTX_get0_recipNonce, @function
OSSL_CMP_CTX_get0_recipNonce:
.LFB879:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1083
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1084
.L1083:
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
.L1084:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE879:
	.size	OSSL_CMP_CTX_get0_recipNonce, .-OSSL_CMP_CTX_get0_recipNonce
	.type	execute_CTX_set1_get0_recipNonce, @function
execute_CTX_set1_get0_recipNonce:
.LFB880:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	ossl_cmp_ctx_set1_recipNonce@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	OSSL_CMP_CTX_get0_recipNonce(%rip), %rax
	movq	%rax, -48(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -16(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -20(%rbp)
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$812, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1086
	movl	$0, -20(%rbp)
.L1086:
	call	ERR_clear_error@PLT
	movq	-48(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	testq	%rax, %rax
	jne	.L1087
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L1088
.L1087:
	leaq	.LC72(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1088:
	call	ERR_clear_error@PLT
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1089
	leaq	.LC73(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1089:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L1090
	leaq	.LC74(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1090:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1091
	leaq	.LC82(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.L1091:
	cmpq	$0, -16(%rbp)
	jne	.L1092
	leaq	.LC83(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1092:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L1093
	leaq	.LC76(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1093:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1094
	leaq	.LC77(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1094:
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L1095
	leaq	.LC84(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
.L1095:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1096
	leaq	.LC85(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1096:
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L1097
	leaq	.LC79(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1097:
	movq	-88(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L1098
	leaq	.LC80(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$812, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1098:
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC47(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$812, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1099
	movl	$0, -20(%rbp)
.L1099:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$812, %esi
	call	test_true@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE880:
	.size	execute_CTX_set1_get0_recipNonce, .-execute_CTX_set1_get0_recipNonce
	.type	test_CTX_set1_get0_recipNonce, @function
test_CTX_set1_get0_recipNonce:
.LFB881:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.0(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1102
	movl	$0, %eax
	jmp	.L1103
.L1102:
	cmpq	$0, -16(%rbp)
	je	.L1104
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_CTX_set1_get0_recipNonce
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L1104:
	movl	-4(%rbp), %eax
.L1103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE881:
	.size	test_CTX_set1_get0_recipNonce, .-test_CTX_set1_get0_recipNonce
	.section	.rodata
.LC96:
	.string	"Error parsing test options\n"
.LC97:
	.string	"test_CTX_libctx_propq"
.LC98:
	.string	"test_CTX_reinit"
.LC99:
	.string	"test_CTX_set_get_option_35"
.LC100:
	.string	"test_CTX_set_get_log_cb"
.LC101:
	.string	"test_cmp_ctx_log_cb"
.LC102:
	.string	"test_CTX_print_errors"
.LC103:
	.string	"test_CTX_set1_get0_serverPath"
.LC104:
	.string	"test_CTX_set1_get0_server"
.LC105:
	.string	"test_CTX_set_get_serverPort"
.LC106:
	.string	"test_CTX_set1_get0_proxy"
.LC107:
	.string	"test_CTX_set1_get0_no_proxy"
.LC108:
	.string	"test_CTX_set_get_http_cb"
.LC109:
	.string	"test_CTX_set_get_http_cb_arg"
.LC110:
	.string	"test_CTX_set_get_transfer_cb"
	.align 8
.LC111:
	.string	"test_CTX_set_get_transfer_cb_arg"
.LC112:
	.string	"test_CTX_set1_get0_srvCert"
	.align 8
.LC113:
	.string	"test_CTX_set1_get0_validatedSrvCert"
	.align 8
.LC114:
	.string	"test_CTX_set1_get0_expected_sender"
.LC115:
	.string	"test_CTX_set0_get0_trusted"
.LC116:
	.string	"test_CTX_set1_get0_untrusted"
.LC117:
	.string	"test_CTX_set1_get0_cert"
.LC118:
	.string	"test_CTX_set1_get0_pkey"
	.align 8
.LC119:
	.string	"test_CTX_set1_get1_referenceValue_str"
	.align 8
.LC120:
	.string	"test_CTX_set1_get1_secretValue_str"
.LC121:
	.string	"test_CTX_set1_get0_recipient"
.LC122:
	.string	"test_CTX_push0_geninfo_ITAV"
	.align 8
.LC123:
	.string	"test_CTX_set1_get0_extraCertsOut"
.LC124:
	.string	"test_CTX_set0_get0_newPkey_1"
.LC125:
	.string	"test_CTX_set0_get0_newPkey_0"
.LC126:
	.string	"test_CTX_set1_get0_issuer"
	.align 8
.LC127:
	.string	"test_CTX_set1_get0_subjectName"
	.align 8
.LC128:
	.string	"test_CTX_set0_get0_reqExtensions"
	.align 8
.LC129:
	.string	"test_CTX_reqExtensions_have_SAN"
.LC130:
	.string	"test_CTX_push0_policy"
.LC131:
	.string	"test_CTX_set1_get0_oldCert"
.LC132:
	.string	"test_CTX_push0_genm_ITAV"
.LC133:
	.string	"test_CTX_set_get_certConf_cb"
	.align 8
.LC134:
	.string	"test_CTX_set_get_certConf_cb_arg"
.LC135:
	.string	"test_CTX_set_get_status"
	.align 8
.LC136:
	.string	"test_CTX_set0_get0_statusString"
.LC137:
	.string	"test_CTX_set_get_failInfoCode"
.LC138:
	.string	"test_CTX_set0_get0_newCert"
.LC139:
	.string	"test_CTX_set1_get1_newChain"
.LC140:
	.string	"test_CTX_set1_get1_caPubs"
	.align 8
.LC141:
	.string	"test_CTX_set1_get1_extraCertsIn"
	.align 8
.LC142:
	.string	"test_CTX_set1_get0_transactionID"
	.align 8
.LC143:
	.string	"test_CTX_set1_get0_senderNonce"
.LC144:
	.string	"test_CTX_set1_get0_recipNonce"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB882:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L1106
	leaq	.LC96(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$817, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L1107
.L1106:
	leaq	test_CTX_libctx_propq(%rip), %rdx
	leaq	.LC97(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_reinit(%rip), %rdx
	leaq	.LC98(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_option_35(%rip), %rdx
	leaq	.LC99(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_log_cb(%rip), %rdx
	leaq	.LC100(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmp_ctx_log_cb(%rip), %rdx
	leaq	.LC101(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_print_errors(%rip), %rdx
	leaq	.LC102(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_serverPath(%rip), %rdx
	leaq	.LC103(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_server(%rip), %rdx
	leaq	.LC104(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_serverPort(%rip), %rdx
	leaq	.LC105(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_proxy(%rip), %rdx
	leaq	.LC106(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_no_proxy(%rip), %rdx
	leaq	.LC107(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_http_cb(%rip), %rdx
	leaq	.LC108(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_http_cb_arg(%rip), %rdx
	leaq	.LC109(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_transfer_cb(%rip), %rdx
	leaq	.LC110(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_transfer_cb_arg(%rip), %rdx
	leaq	.LC111(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_srvCert(%rip), %rdx
	leaq	.LC112(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_validatedSrvCert(%rip), %rdx
	leaq	.LC113(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_expected_sender(%rip), %rdx
	leaq	.LC114(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set0_get0_trusted(%rip), %rdx
	leaq	.LC115(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_untrusted(%rip), %rdx
	leaq	.LC116(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_cert(%rip), %rdx
	leaq	.LC117(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_pkey(%rip), %rdx
	leaq	.LC118(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get1_referenceValue_str(%rip), %rdx
	leaq	.LC119(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get1_secretValue_str(%rip), %rdx
	leaq	.LC120(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_recipient(%rip), %rdx
	leaq	.LC121(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_push0_geninfo_ITAV(%rip), %rdx
	leaq	.LC122(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_extraCertsOut(%rip), %rdx
	leaq	.LC123(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set0_get0_newPkey_1(%rip), %rdx
	leaq	.LC124(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set0_get0_newPkey_0(%rip), %rdx
	leaq	.LC125(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_issuer(%rip), %rdx
	leaq	.LC126(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_subjectName(%rip), %rdx
	leaq	.LC127(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set0_get0_reqExtensions(%rip), %rdx
	leaq	.LC128(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_reqExtensions_have_SAN(%rip), %rdx
	leaq	.LC129(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_push0_policy(%rip), %rdx
	leaq	.LC130(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_oldCert(%rip), %rdx
	leaq	.LC131(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_push0_genm_ITAV(%rip), %rdx
	leaq	.LC132(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_certConf_cb(%rip), %rdx
	leaq	.LC133(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_certConf_cb_arg(%rip), %rdx
	leaq	.LC134(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_status(%rip), %rdx
	leaq	.LC135(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set0_get0_statusString(%rip), %rdx
	leaq	.LC136(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set_get_failInfoCode(%rip), %rdx
	leaq	.LC137(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set0_get0_newCert(%rip), %rdx
	leaq	.LC138(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get1_newChain(%rip), %rdx
	leaq	.LC139(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get1_caPubs(%rip), %rdx
	leaq	.LC140(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get1_extraCertsIn(%rip), %rdx
	leaq	.LC141(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_transactionID(%rip), %rdx
	leaq	.LC142(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_senderNonce(%rip), %rdx
	leaq	.LC143(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_CTX_set1_get0_recipNonce(%rip), %rdx
	leaq	.LC144(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L1107:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE882:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	__func__.72, @object
	.size	__func__.72, 16
__func__.72:
	.string	"test_CTX_reinit"
	.align 16
	.type	__func__.71, @object
	.size	__func__.71, 30
__func__.71:
	.string	"execute_CTX_print_errors_test"
	.align 16
	.type	__func__.70, @object
	.size	__func__.70, 22
__func__.70:
	.string	"test_CTX_print_errors"
	.align 32
	.type	__func__.69, @object
	.size	__func__.69, 32
__func__.69:
	.string	"test_CTX_reqExtensions_have_SAN"
	.align 16
	.type	__func__.68, @object
	.size	__func__.68, 28
__func__.68:
	.string	"execute_cmp_ctx_log_cb_test"
	.align 16
	.type	__func__.67, @object
	.size	__func__.67, 20
__func__.67:
	.string	"test_cmp_ctx_log_cb"
	.align 16
	.type	__func__.66, @object
	.size	__func__.66, 27
__func__.66:
	.string	"test_CTX_set_get_option_35"
	.align 16
	.type	__func__.65, @object
	.size	__func__.65, 24
__func__.65:
	.string	"OSSL_CMP_CTX_get_log_cb"
	.align 16
	.type	__func__.64, @object
	.size	__func__.64, 24
__func__.64:
	.string	"test_CTX_set_get_log_cb"
	.align 16
	.type	__func__.63, @object
	.size	__func__.63, 29
__func__.63:
	.string	"OSSL_CMP_CTX_get0_serverPath"
	.align 16
	.type	__func__.62, @object
	.size	__func__.62, 30
__func__.62:
	.string	"test_CTX_set1_get0_serverPath"
	.align 16
	.type	__func__.61, @object
	.size	__func__.61, 25
__func__.61:
	.string	"OSSL_CMP_CTX_get0_server"
	.align 16
	.type	__func__.60, @object
	.size	__func__.60, 26
__func__.60:
	.string	"test_CTX_set1_get0_server"
	.align 16
	.type	__func__.59, @object
	.size	__func__.59, 28
__func__.59:
	.string	"OSSL_CMP_CTX_get_serverPort"
	.align 16
	.type	__func__.58, @object
	.size	__func__.58, 28
__func__.58:
	.string	"test_CTX_set_get_serverPort"
	.align 16
	.type	__func__.57, @object
	.size	__func__.57, 24
__func__.57:
	.string	"OSSL_CMP_CTX_get0_proxy"
	.align 16
	.type	__func__.56, @object
	.size	__func__.56, 25
__func__.56:
	.string	"test_CTX_set1_get0_proxy"
	.align 16
	.type	__func__.55, @object
	.size	__func__.55, 27
__func__.55:
	.string	"OSSL_CMP_CTX_get0_no_proxy"
	.align 16
	.type	__func__.54, @object
	.size	__func__.54, 28
__func__.54:
	.string	"test_CTX_set1_get0_no_proxy"
	.align 16
	.type	__func__.53, @object
	.size	__func__.53, 25
__func__.53:
	.string	"OSSL_CMP_CTX_get_http_cb"
	.align 16
	.type	__func__.52, @object
	.size	__func__.52, 25
__func__.52:
	.string	"test_CTX_set_get_http_cb"
	.align 16
	.type	__func__.51, @object
	.size	__func__.51, 29
__func__.51:
	.string	"test_CTX_set_get_http_cb_arg"
	.align 16
	.type	__func__.50, @object
	.size	__func__.50, 29
__func__.50:
	.string	"OSSL_CMP_CTX_get_transfer_cb"
	.align 16
	.type	__func__.49, @object
	.size	__func__.49, 29
__func__.49:
	.string	"test_CTX_set_get_transfer_cb"
	.align 32
	.type	__func__.48, @object
	.size	__func__.48, 33
__func__.48:
	.string	"test_CTX_set_get_transfer_cb_arg"
	.align 16
	.type	__func__.47, @object
	.size	__func__.47, 26
__func__.47:
	.string	"OSSL_CMP_CTX_get0_srvCert"
	.align 16
	.type	__func__.46, @object
	.size	__func__.46, 27
__func__.46:
	.string	"test_CTX_set1_get0_srvCert"
	.align 32
	.type	__func__.45, @object
	.size	__func__.45, 36
__func__.45:
	.string	"test_CTX_set1_get0_validatedSrvCert"
	.align 32
	.type	__func__.44, @object
	.size	__func__.44, 34
__func__.44:
	.string	"OSSL_CMP_CTX_get0_expected_sender"
	.align 32
	.type	__func__.43, @object
	.size	__func__.43, 35
__func__.43:
	.string	"test_CTX_set1_get0_expected_sender"
	.align 16
	.type	__func__.42, @object
	.size	__func__.42, 27
__func__.42:
	.string	"test_CTX_set0_get0_trusted"
	.align 16
	.type	__func__.41, @object
	.size	__func__.41, 29
__func__.41:
	.string	"test_CTX_set1_get0_untrusted"
	.align 16
	.type	__func__.40, @object
	.size	__func__.40, 23
__func__.40:
	.string	"OSSL_CMP_CTX_get0_cert"
	.align 16
	.type	__func__.39, @object
	.size	__func__.39, 24
__func__.39:
	.string	"test_CTX_set1_get0_cert"
	.align 16
	.type	__func__.38, @object
	.size	__func__.38, 23
__func__.38:
	.string	"OSSL_CMP_CTX_get0_pkey"
	.align 16
	.type	__func__.37, @object
	.size	__func__.37, 24
__func__.37:
	.string	"test_CTX_set1_get0_pkey"
	.align 16
	.type	__func__.36, @object
	.size	__func__.36, 28
__func__.36:
	.string	"OSSL_CMP_CTX_get0_recipient"
	.align 16
	.type	__func__.35, @object
	.size	__func__.35, 29
__func__.35:
	.string	"test_CTX_set1_get0_recipient"
	.align 16
	.type	__func__.34, @object
	.size	__func__.34, 28
__func__.34:
	.string	"test_CTX_push0_geninfo_ITAV"
	.align 32
	.type	__func__.33, @object
	.size	__func__.33, 32
__func__.33:
	.string	"OSSL_CMP_CTX_get0_extraCertsOut"
	.align 32
	.type	__func__.32, @object
	.size	__func__.32, 33
__func__.32:
	.string	"test_CTX_set1_get0_extraCertsOut"
	.align 16
	.type	__func__.31, @object
	.size	__func__.31, 29
__func__.31:
	.string	"test_CTX_set0_get0_newPkey_1"
	.align 16
	.type	__func__.30, @object
	.size	__func__.30, 29
__func__.30:
	.string	"test_CTX_set0_get0_newPkey_0"
	.align 32
	.type	__func__.29, @object
	.size	__func__.29, 37
__func__.29:
	.string	"OSSL_CMP_CTX_get1_referenceValue_str"
	.align 32
	.type	__func__.28, @object
	.size	__func__.28, 38
__func__.28:
	.string	"test_CTX_set1_get1_referenceValue_str"
	.align 32
	.type	__func__.27, @object
	.size	__func__.27, 34
__func__.27:
	.string	"OSSL_CMP_CTX_get1_secretValue_str"
	.align 32
	.type	__func__.26, @object
	.size	__func__.26, 35
__func__.26:
	.string	"test_CTX_set1_get1_secretValue_str"
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 25
__func__.25:
	.string	"OSSL_CMP_CTX_get0_issuer"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 26
__func__.24:
	.string	"test_CTX_set1_get0_issuer"
	.align 16
	.type	__func__.23, @object
	.size	__func__.23, 30
__func__.23:
	.string	"OSSL_CMP_CTX_get0_subjectName"
	.align 16
	.type	__func__.22, @object
	.size	__func__.22, 31
__func__.22:
	.string	"test_CTX_set1_get0_subjectName"
	.align 32
	.type	__func__.21, @object
	.size	__func__.21, 32
__func__.21:
	.string	"OSSL_CMP_CTX_get0_reqExtensions"
	.align 32
	.type	__func__.20, @object
	.size	__func__.20, 33
__func__.20:
	.string	"test_CTX_set0_get0_reqExtensions"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 22
__func__.19:
	.string	"test_CTX_push0_policy"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 26
__func__.18:
	.string	"OSSL_CMP_CTX_get0_oldCert"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 27
__func__.17:
	.string	"test_CTX_set1_get0_oldCert"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 25
__func__.16:
	.string	"test_CTX_push0_genm_ITAV"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 29
__func__.15:
	.string	"OSSL_CMP_CTX_get_certConf_cb"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 29
__func__.14:
	.string	"test_CTX_set_get_certConf_cb"
	.align 32
	.type	__func__.13, @object
	.size	__func__.13, 33
__func__.13:
	.string	"test_CTX_set_get_certConf_cb_arg"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 24
__func__.12:
	.string	"test_CTX_set_get_status"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 32
__func__.11:
	.string	"test_CTX_set0_get0_statusString"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 30
__func__.10:
	.string	"test_CTX_set_get_failInfoCode"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 27
__func__.9:
	.string	"test_CTX_set0_get0_newCert"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 28
__func__.8:
	.string	"test_CTX_set1_get1_newChain"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 26
__func__.7:
	.string	"test_CTX_set1_get1_caPubs"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 32
__func__.6:
	.string	"test_CTX_set1_get1_extraCertsIn"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 32
__func__.5:
	.string	"OSSL_CMP_CTX_get0_transactionID"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 33
__func__.4:
	.string	"test_CTX_set1_get0_transactionID"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 30
__func__.3:
	.string	"OSSL_CMP_CTX_get0_senderNonce"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 31
__func__.2:
	.string	"test_CTX_set1_get0_senderNonce"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"OSSL_CMP_CTX_get0_recipNonce"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 30
__func__.0:
	.string	"test_CTX_set1_get0_recipNonce"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
