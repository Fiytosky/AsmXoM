	.file	"cmp_mock_srv.c"
	.text
	.type	ossl_check_const_ASN1_UTF8STRING_sk_type, @function
ossl_check_const_ASN1_UTF8STRING_sk_type:
.LFB312:
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
.LFE312:
	.size	ossl_check_const_ASN1_UTF8STRING_sk_type, .-ossl_check_const_ASN1_UTF8STRING_sk_type
	.type	ossl_check_OSSL_CMP_ITAV_type, @function
ossl_check_OSSL_CMP_ITAV_type:
.LFB649:
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
.LFE649:
	.size	ossl_check_OSSL_CMP_ITAV_type, .-ossl_check_OSSL_CMP_ITAV_type
	.type	ossl_check_const_OSSL_CMP_ITAV_sk_type, @function
ossl_check_const_OSSL_CMP_ITAV_sk_type:
.LFB650:
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
.LFE650:
	.size	ossl_check_const_OSSL_CMP_ITAV_sk_type, .-ossl_check_const_OSSL_CMP_ITAV_sk_type
	.type	ossl_check_OSSL_CMP_ITAV_sk_type, @function
ossl_check_OSSL_CMP_ITAV_sk_type:
.LFB651:
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
.LFE651:
	.size	ossl_check_OSSL_CMP_ITAV_sk_type, .-ossl_check_OSSL_CMP_ITAV_sk_type
	.type	ossl_check_OSSL_CMP_ITAV_compfunc_type, @function
ossl_check_OSSL_CMP_ITAV_compfunc_type:
.LFB652:
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
.LFE652:
	.size	ossl_check_OSSL_CMP_ITAV_compfunc_type, .-ossl_check_OSSL_CMP_ITAV_compfunc_type
	.type	ossl_check_OSSL_CMP_ITAV_copyfunc_type, @function
ossl_check_OSSL_CMP_ITAV_copyfunc_type:
.LFB653:
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
.LFE653:
	.size	ossl_check_OSSL_CMP_ITAV_copyfunc_type, .-ossl_check_OSSL_CMP_ITAV_copyfunc_type
	.type	ossl_check_OSSL_CMP_ITAV_freefunc_type, @function
ossl_check_OSSL_CMP_ITAV_freefunc_type:
.LFB654:
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
.LFE654:
	.size	ossl_check_OSSL_CMP_ITAV_freefunc_type, .-ossl_check_OSSL_CMP_ITAV_freefunc_type
	.section	.rodata
.LC0:
	.string	"../apps/lib/cmp_mock_srv.c"
	.text
	.type	mock_srv_ctx_free, @function
mock_srv_ctx_free:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L15
.L18:
	nop
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	mock_srv_ctx_free, .-mock_srv_ctx_free
	.type	mock_srv_ctx_new, @function
mock_srv_ctx_new:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$52, %edx
	movq	%rax, %rsi
	movl	$96, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L24
	call	OSSL_CMP_PKISI_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-8(%rbp), %rax
	movl	$-1, 64(%rax)
	movq	-8(%rbp), %rax
	jmp	.L23
.L24:
	nop
	jmp	.L21
.L25:
	nop
.L21:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mock_srv_ctx_free
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	mock_srv_ctx_new, .-mock_srv_ctx_new
	.globl	ossl_cmp_mock_srv_set1_refCert
	.type	ossl_cmp_mock_srv_set1_refCert, @function
ossl_cmp_mock_srv_set1_refCert:
.LFB675:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$87, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L28
.L27:
	cmpq	$0, -32(%rbp)
	je	.L29
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L30
.L29:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L28
.L30:
	movl	$0, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	ossl_cmp_mock_srv_set1_refCert, .-ossl_cmp_mock_srv_set1_refCert
	.globl	ossl_cmp_mock_srv_set1_certOut
	.type	ossl_cmp_mock_srv_set1_certOut, @function
ossl_cmp_mock_srv_set1_certOut:
.LFB676:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L32:
	cmpq	$0, -32(%rbp)
	je	.L34
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L35
.L34:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
	jmp	.L33
.L35:
	movl	$0, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	ossl_cmp_mock_srv_set1_certOut, .-ossl_cmp_mock_srv_set1_certOut
	.globl	ossl_cmp_mock_srv_set1_chainOut
	.type	ossl_cmp_mock_srv_set1_chainOut, @function
ossl_cmp_mock_srv_set1_chainOut:
.LFB677:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L37:
	cmpq	$0, -32(%rbp)
	je	.L39
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L38
.L39:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	ossl_cmp_mock_srv_set1_chainOut, .-ossl_cmp_mock_srv_set1_chainOut
	.globl	ossl_cmp_mock_srv_set1_caPubsOut
	.type	ossl_cmp_mock_srv_set1_caPubsOut, @function
ossl_cmp_mock_srv_set1_caPubsOut:
.LFB678:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L41:
	cmpq	$0, -32(%rbp)
	je	.L43
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L42
.L43:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	ossl_cmp_mock_srv_set1_caPubsOut, .-ossl_cmp_mock_srv_set1_caPubsOut
	.globl	ossl_cmp_mock_srv_set1_newWithNew
	.type	ossl_cmp_mock_srv_set1_newWithNew, @function
ossl_cmp_mock_srv_set1_newWithNew:
.LFB679:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$124, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L45:
	cmpq	$0, -32(%rbp)
	je	.L47
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L48
.L47:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
	jmp	.L46
.L48:
	movl	$0, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	ossl_cmp_mock_srv_set1_newWithNew, .-ossl_cmp_mock_srv_set1_newWithNew
	.globl	ossl_cmp_mock_srv_set1_newWithOld
	.type	ossl_cmp_mock_srv_set1_newWithOld, @function
ossl_cmp_mock_srv_set1_newWithOld:
.LFB680:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L50:
	cmpq	$0, -32(%rbp)
	je	.L52
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L53
.L52:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
	jmp	.L51
.L53:
	movl	$0, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	ossl_cmp_mock_srv_set1_newWithOld, .-ossl_cmp_mock_srv_set1_newWithOld
	.globl	ossl_cmp_mock_srv_set1_oldWithNew
	.type	ossl_cmp_mock_srv_set1_oldWithNew, @function
ossl_cmp_mock_srv_set1_oldWithNew:
.LFB681:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L55:
	cmpq	$0, -32(%rbp)
	je	.L57
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L58
.L57:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movl	$1, %eax
	jmp	.L56
.L58:
	movl	$0, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	ossl_cmp_mock_srv_set1_oldWithNew, .-ossl_cmp_mock_srv_set1_oldWithNew
	.globl	ossl_cmp_mock_srv_set_statusInfo
	.type	ossl_cmp_mock_srv_set_statusInfo, @function
ossl_cmp_mock_srv_set_statusInfo:
.LFB682:
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
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-40(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L62
	movl	$0, %eax
	jmp	.L61
.L62:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	ossl_cmp_mock_srv_set_statusInfo, .-ossl_cmp_mock_srv_set_statusInfo
	.globl	ossl_cmp_mock_srv_set_sendError
	.type	ossl_cmp_mock_srv_set_sendError, @function
ossl_cmp_mock_srv_set_sendError:
.LFB683:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L64:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 64(%rax)
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	ossl_cmp_mock_srv_set_sendError, .-ossl_cmp_mock_srv_set_sendError
	.globl	ossl_cmp_mock_srv_set_pollCount
	.type	ossl_cmp_mock_srv_set_pollCount, @function
ossl_cmp_mock_srv_set_pollCount:
.LFB684:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L68
.L67:
	cmpl	$0, -28(%rbp)
	jns	.L69
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L68
.L69:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 80(%rax)
	movl	$1, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	ossl_cmp_mock_srv_set_pollCount, .-ossl_cmp_mock_srv_set_pollCount
	.globl	ossl_cmp_mock_srv_set_checkAfterTime
	.type	ossl_cmp_mock_srv_set_checkAfterTime, @function
ossl_cmp_mock_srv_set_checkAfterTime:
.LFB685:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 88(%rax)
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	ossl_cmp_mock_srv_set_checkAfterTime, .-ossl_cmp_mock_srv_set_checkAfterTime
	.type	delayed_delivery, @function
delayed_delivery:
.LFB686:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L74
	cmpq	$0, -32(%rbp)
	jne	.L75
.L74:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$193, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L76
.L75:
	cmpl	$0, -12(%rbp)
	je	.L77
	cmpl	$2, -12(%rbp)
	je	.L77
	cmpl	$4, -12(%rbp)
	je	.L77
	cmpl	$7, -12(%rbp)
	je	.L77
	cmpl	$23, -12(%rbp)
	jne	.L78
.L77:
	movl	$0, %eax
	jmp	.L76
.L78:
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jle	.L79
	movq	-8(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	jne	.L79
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L80
	movl	$-1, %eax
	jmp	.L76
.L80:
	movl	$1, %eax
	jmp	.L76
.L79:
	movl	$0, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	delayed_delivery, .-delayed_delivery
	.type	refcert_cmp, @function
refcert_cmp:
.LFB687:
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
	cmpq	$0, -24(%rbp)
	jne	.L82
	movl	$1, %eax
	jmp	.L83
.L82:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L84
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L85
.L84:
	cmpq	$0, -16(%rbp)
	je	.L86
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	jne	.L85
.L86:
	movl	$1, %eax
	jmp	.L83
.L85:
	movl	$0, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	refcert_cmp, .-refcert_cmp
	.type	clean_transaction, @function
clean_transaction:
.LFB688:
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
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L90
.L89:
	movq	-8(%rbp), %rax
	movl	$0, 84(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movl	$1, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	clean_transaction, .-clean_transaction
	.section	.rodata
.LC1:
	.string	"profile1"
	.text
	.type	process_cert_request, @function
process_cert_request:
.LFB689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L92
	cmpq	$0, -128(%rbp)
	je	.L92
	cmpq	$0, -160(%rbp)
	je	.L92
	cmpq	$0, 16(%rbp)
	je	.L92
	cmpq	$0, 24(%rbp)
	jne	.L93
.L92:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$265, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L93:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L95
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L96
.L95:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$270, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L96:
	movq	-160(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	24(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jle	.L97
	movq	-40(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	jne	.L97
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L98
	movl	$0, %eax
	jmp	.L94
.L98:
	movl	$0, %edx
	movl	$0, %esi
	movl	$3, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	jmp	.L94
.L97:
	movq	-40(%rbp), %rax
	movl	84(%rax), %edx
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	%eax, %edx
	jl	.L99
	movq	-40(%rbp), %rax
	movl	$0, 84(%rax)
.L99:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$2, %eax
	jne	.L100
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get0_header@PLT
	movq	%rax, %rdi
	call	OSSL_CMP_HDR_get0_geninfo_ITAVs@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L101
.L109:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_get0_type@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1255, %eax
	jne	.L102
	leaq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_get0_certProfile@PLT
	testl	%eax, %eax
	jne	.L103
	movl	$0, %eax
	jmp	.L94
.L103:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L105
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$305, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$196, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L105:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L106
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L107
.L106:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$312, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L107:
	leaq	.LC1(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L117
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$196, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L102:
	addl	$1, -28(%rbp)
.L101:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L109
	jmp	.L100
.L117:
	nop
.L100:
	cmpl	$7, -44(%rbp)
	jne	.L110
	cmpq	$0, -144(%rbp)
	je	.L110
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_get0_regCtrl_oldCertID@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$330, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$165, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L111:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_get0_serialNumber@PLT
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_get0_issuer@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	refcert_cmp
	testl	%eax, %eax
	jne	.L110
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$189, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L110:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L112
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	-160(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L118
.L112:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L119
.L114:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
	movq	24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L120
.L115:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L116
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L121
.L116:
	movq	-24(%rbp), %rax
	jmp	.L94
.L118:
	nop
	jmp	.L113
.L119:
	nop
	jmp	.L113
.L120:
	nop
	jmp	.L113
.L121:
	nop
.L113:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-160(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	24(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L94:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	process_cert_request, .-process_cert_request
	.section	.rodata
.LC2:
	.string	"wrong certificate to revoke"
	.text
	.type	process_rr, @function
process_rr:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L123
	cmpq	$0, -48(%rbp)
	jne	.L124
.L123:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$374, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L126
	movq	-24(%rbp), %rax
	movl	64(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	%eax, %ebx
	jne	.L127
.L126:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$379, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L125
.L127:
	cmpq	$0, -56(%rbp)
	jne	.L128
	cmpq	$0, -64(%rbp)
	je	.L129
.L128:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	refcert_cmp
	testl	%eax, %eax
	jne	.L129
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$387, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movl	$149, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L125
.L129:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_dup@PLT
.L125:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	process_rr, .-process_rr
	.type	process_genm_itav, @function
process_genm_itav:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	cmpl	$1223, -44(%rbp)
	je	.L131
	cmpl	$1254, -44(%rbp)
	je	.L132
	jmp	.L139
.L131:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_new_caCerts@PLT
	movq	%rax, -24(%rbp)
	jmp	.L134
.L132:
	movq	$0, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_get0_rootCaCert@PLT
	testl	%eax, %eax
	jne	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L137
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	je	.L137
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_CMP_ITAV_new_rootCaKeyUpdate@PLT
	movq	%rax, -24(%rbp)
	nop
	jmp	.L134
.L137:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_new_rootCaKeyUpdate@PLT
	movq	%rax, -24(%rbp)
	jmp	.L134
.L139:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_dup@PLT
	movq	%rax, -24(%rbp)
.L134:
	movq	-24(%rbp), %rax
.L136:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	process_genm_itav, .-process_genm_itav
	.type	process_genm, @function
process_genm:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L141
	cmpq	$0, -64(%rbp)
	je	.L141
	cmpq	$0, -72(%rbp)
	je	.L141
	cmpq	$0, -80(%rbp)
	jne	.L142
.L141:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$435, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L142:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L144
	movq	-24(%rbp), %rax
	movl	64(%rax), %ebx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	%eax, %ebx
	je	.L144
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	jle	.L145
.L144:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$441, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L145:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	jne	.L146
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_get0_type@PLT
	movq	%rax, -40(%rbp)
	movl	$0, %edi
	call	ossl_check_OSSL_CMP_ITAV_compfunc_type
	movl	$1, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L147
	movl	$0, %eax
	jmp	.L143
.L147:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	process_genm_itav
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L148
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L148
	movl	$1, %eax
	jmp	.L143
.L148:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L143
.L146:
	movq	OSSL_CMP_ITAV_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_freefunc_type
	movq	%rax, %r12
	movq	OSSL_CMP_ITAV_dup@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_copyfunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_deep_copy@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L143:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	process_genm, .-process_genm
	.section	.rodata
.LC3:
	.string	"mock server received error:\n"
.LC4:
	.string	"pkiStatusInfo absent\n"
.LC5:
	.string	"<invalid>"
.LC6:
	.string	"pkiStatusInfo: %s\n"
.LC7:
	.string	"errorCode absent\n"
.LC8:
	.string	"errorCode: %ld\n"
.LC9:
	.string	"errorDetails absent\n"
.LC10:
	.string	"errorDetails: "
.LC11:
	.string	", "
.LC12:
	.string	"\n"
	.text
	.type	process_error, @function
process_error:
.LFB693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1104, %rsp
	movq	%rdi, -1064(%rbp)
	movq	%rsi, -1072(%rbp)
	movq	%rdx, -1080(%rbp)
	movq	%rcx, -1088(%rbp)
	movq	%r8, -1096(%rbp)
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L150
	cmpq	$0, -1072(%rbp)
	jne	.L151
.L150:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$473, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L149
.L151:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -1080(%rbp)
	jne	.L153
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L154
.L153:
	leaq	-1056(%rbp), %rcx
	movq	-1080(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_snprint_PKIStatusInfo@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L155
	movq	-24(%rbp), %rax
	jmp	.L156
.L155:
	leaq	.LC5(%rip), %rax
.L156:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L154:
	cmpq	$0, -1088(%rbp)
	jne	.L157
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L158
.L157:
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L158:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L159
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L149
.L159:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L161
.L163:
	cmpl	$0, -4(%rbp)
	jle	.L162
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L162:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print_ex@PLT
	addl	$1, -4(%rbp)
.L161:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L163
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	process_error, .-process_error
	.type	process_certConf, @function
process_certConf:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L165
	cmpq	$0, -48(%rbp)
	je	.L165
	cmpq	$0, -64(%rbp)
	jne	.L166
.L165:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$517, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L167
.L166:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L168
	movq	-24(%rbp), %rax
	movl	64(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	%eax, %ebx
	je	.L168
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L169
.L168:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$523, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L167
.L169:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_digest_sig@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L170
	movl	$0, %eax
	jmp	.L167
.L170:
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	testl	%eax, %eax
	je	.L171
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$531, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L167
.L171:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$1, %eax
.L167:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	process_certConf, .-process_certConf
	.type	process_pollReq, @function
process_pollReq:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L173
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.L173:
	cmpq	$0, -24(%rbp)
	je	.L174
	cmpq	$0, -48(%rbp)
	je	.L174
	cmpq	$0, -64(%rbp)
	je	.L174
	cmpq	$0, -72(%rbp)
	jne	.L175
.L174:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$550, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L176
.L175:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L177
	movq	-24(%rbp), %rax
	movl	64(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	%eax, %ebx
	jne	.L178
.L177:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$556, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L176
.L178:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L179
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$560, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L176
.L179:
	movq	-24(%rbp), %rax
	movl	84(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 84(%rax)
	movq	-24(%rbp), %rax
	movl	84(%rax), %edx
	movq	-24(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	%eax, %edx
	jl	.L180
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L181
.L180:
	movq	-24(%rbp), %rax
	movl	88(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L181:
	movl	$1, %eax
.L176:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	process_pollReq, .-process_pollReq
	.globl	ossl_cmp_mock_srv_new
	.type	ossl_cmp_mock_srv_new, @function
ossl_cmp_mock_srv_new:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_new@PLT
	movq	%rax, -8(%rbp)
	call	mock_srv_ctx_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L183
	cmpq	$0, -16(%rbp)
	je	.L183
	leaq	process_error(%rip), %r9
	leaq	process_genm(%rip), %r8
	leaq	process_rr(%rip), %rcx
	leaq	process_cert_request(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	process_pollReq(%rip), %rdi
	pushq	%rdi
	leaq	process_certConf(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_init@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L183
	leaq	clean_transaction(%rip), %rdx
	leaq	delayed_delivery(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_init_trans@PLT
	testl	%eax, %eax
	je	.L183
	movq	-8(%rbp), %rax
	jmp	.L184
.L183:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	mock_srv_ctx_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_free@PLT
	movl	$0, %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	ossl_cmp_mock_srv_new, .-ossl_cmp_mock_srv_new
	.globl	ossl_cmp_mock_srv_free
	.type	ossl_cmp_mock_srv_free, @function
ossl_cmp_mock_srv_free:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L186
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_custom_ctx@PLT
	movq	%rax, %rdi
	call	mock_srv_ctx_free
.L186:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	ossl_cmp_mock_srv_free, .-ossl_cmp_mock_srv_free
	.section	.rodata
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 31
__func__.18:
	.string	"ossl_cmp_mock_srv_set1_refCert"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 31
__func__.17:
	.string	"ossl_cmp_mock_srv_set1_certOut"
	.align 32
	.type	__func__.16, @object
	.size	__func__.16, 32
__func__.16:
	.string	"ossl_cmp_mock_srv_set1_chainOut"
	.align 32
	.type	__func__.15, @object
	.size	__func__.15, 33
__func__.15:
	.string	"ossl_cmp_mock_srv_set1_caPubsOut"
	.align 32
	.type	__func__.14, @object
	.size	__func__.14, 34
__func__.14:
	.string	"ossl_cmp_mock_srv_set1_newWithNew"
	.align 32
	.type	__func__.13, @object
	.size	__func__.13, 34
__func__.13:
	.string	"ossl_cmp_mock_srv_set1_newWithOld"
	.align 32
	.type	__func__.12, @object
	.size	__func__.12, 34
__func__.12:
	.string	"ossl_cmp_mock_srv_set1_oldWithNew"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 33
__func__.11:
	.string	"ossl_cmp_mock_srv_set_statusInfo"
	.align 32
	.type	__func__.10, @object
	.size	__func__.10, 32
__func__.10:
	.string	"ossl_cmp_mock_srv_set_sendError"
	.align 32
	.type	__func__.9, @object
	.size	__func__.9, 32
__func__.9:
	.string	"ossl_cmp_mock_srv_set_pollCount"
	.align 32
	.type	__func__.8, @object
	.size	__func__.8, 37
__func__.8:
	.string	"ossl_cmp_mock_srv_set_checkAfterTime"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 17
__func__.7:
	.string	"delayed_delivery"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 18
__func__.6:
	.string	"clean_transaction"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 21
__func__.5:
	.string	"process_cert_request"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 11
__func__.4:
	.string	"process_rr"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 13
__func__.3:
	.string	"process_genm"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 14
__func__.2:
	.string	"process_error"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"process_certConf"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"process_pollReq"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
