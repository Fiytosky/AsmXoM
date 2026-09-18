	.file	"crmf_lib.c"
	.text
	.type	ossl_check_X509_EXTENSION_type, @function
ossl_check_X509_EXTENSION_type:
.LFB356:
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
.LFE356:
	.size	ossl_check_X509_EXTENSION_type, .-ossl_check_X509_EXTENSION_type
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
.LFB357:
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
.LFE357:
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
.LFB358:
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
.LFE358:
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_freefunc_type, @function
ossl_check_X509_EXTENSION_freefunc_type:
.LFB361:
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
.LFE361:
	.size	ossl_check_X509_EXTENSION_freefunc_type, .-ossl_check_X509_EXTENSION_freefunc_type
	.type	ossl_check_const_OSSL_CRMF_MSG_sk_type, @function
ossl_check_const_OSSL_CRMF_MSG_sk_type:
.LFB564:
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
.LFE564:
	.size	ossl_check_const_OSSL_CRMF_MSG_sk_type, .-ossl_check_const_OSSL_CRMF_MSG_sk_type
	.type	sk_OSSL_CRMF_SINGLEPUBINFO_new_null, @function
sk_OSSL_CRMF_SINGLEPUBINFO_new_null:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	sk_OSSL_CRMF_SINGLEPUBINFO_new_null, .-sk_OSSL_CRMF_SINGLEPUBINFO_new_null
	.type	sk_OSSL_CRMF_SINGLEPUBINFO_push, @function
sk_OSSL_CRMF_SINGLEPUBINFO_push:
.LFB601:
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
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	sk_OSSL_CRMF_SINGLEPUBINFO_push, .-sk_OSSL_CRMF_SINGLEPUBINFO_push
	.type	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num, @function
sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num:
.LFB616:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num, .-sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num
	.type	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value, @function
sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value:
.LFB617:
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
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value, .-sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value
	.type	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null, @function
sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null, .-sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null
	.type	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free, @function
sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free:
.LFB622:
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
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free, .-sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free
	.type	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push, @function
sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push:
.LFB626:
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
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push, .-sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push
	.section	.rodata
.LC0:
	.string	"../crypto/crmf/crmf_lib.c"
	.text
	.type	OSSL_CRMF_MSG_push0_regCtrl, @function
OSSL_CRMF_MSG_push0_regCtrl:
.LFB696:
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
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L25
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L25
	cmpq	$0, -48(%rbp)
	jne	.L26
.L25:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	movq	-40(%rbp), %rax
	movq	(%rax), %rbx
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movl	$1, -20(%rbp)
.L28:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push
	testl	%eax, %eax
	je	.L34
	movl	$1, %eax
	jmp	.L27
.L33:
	nop
	jmp	.L30
.L34:
	nop
.L30:
	cmpl	$0, -20(%rbp)
	je	.L32
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 16(%rax)
.L32:
	movl	$0, %eax
.L27:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	OSSL_CRMF_MSG_push0_regCtrl, .-OSSL_CRMF_MSG_push0_regCtrl
	.globl	OSSL_CRMF_MSG_get0_regCtrl_regToken
	.type	OSSL_CRMF_MSG_get0_regCtrl_regToken, @function
OSSL_CRMF_MSG_get0_regCtrl_regToken:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L36
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L37
.L36:
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L39
.L41:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$315, %eax
	jne	.L40
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L38
.L40:
	addl	$1, -4(%rbp)
.L39:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L41
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	OSSL_CRMF_MSG_get0_regCtrl_regToken, .-OSSL_CRMF_MSG_get0_regCtrl_regToken
	.globl	OSSL_CRMF_MSG_set1_regCtrl_regToken
	.type	OSSL_CRMF_MSG_set1_regCtrl_regToken, @function
OSSL_CRMF_MSG_set1_regCtrl_regToken:
.LFB698:
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
	cmpq	$0, -24(%rbp)
	je	.L51
	cmpq	$0, -32(%rbp)
	je	.L51
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movl	$315, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_push0_regCtrl
	testl	%eax, %eax
	je	.L55
	movl	$1, %eax
	jmp	.L50
.L51:
	nop
	jmp	.L45
.L52:
	nop
	jmp	.L45
.L53:
	nop
	jmp	.L45
.L54:
	nop
	jmp	.L45
.L55:
	nop
.L45:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free@PLT
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	OSSL_CRMF_MSG_set1_regCtrl_regToken, .-OSSL_CRMF_MSG_set1_regCtrl_regToken
	.globl	OSSL_CRMF_MSG_get0_regCtrl_authenticator
	.type	OSSL_CRMF_MSG_get0_regCtrl_authenticator, @function
OSSL_CRMF_MSG_get0_regCtrl_authenticator:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L57
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L58
.L57:
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L60
.L62:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$316, %eax
	jne	.L61
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L59
.L61:
	addl	$1, -4(%rbp)
.L60:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L62
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	OSSL_CRMF_MSG_get0_regCtrl_authenticator, .-OSSL_CRMF_MSG_get0_regCtrl_authenticator
	.globl	OSSL_CRMF_MSG_set1_regCtrl_authenticator
	.type	OSSL_CRMF_MSG_set1_regCtrl_authenticator, @function
OSSL_CRMF_MSG_set1_regCtrl_authenticator:
.LFB700:
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
	cmpq	$0, -24(%rbp)
	je	.L72
	cmpq	$0, -32(%rbp)
	je	.L72
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L73
	movl	$316, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_push0_regCtrl
	testl	%eax, %eax
	je	.L76
	movl	$1, %eax
	jmp	.L71
.L72:
	nop
	jmp	.L66
.L73:
	nop
	jmp	.L66
.L74:
	nop
	jmp	.L66
.L75:
	nop
	jmp	.L66
.L76:
	nop
.L66:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free@PLT
	movl	$0, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	OSSL_CRMF_MSG_set1_regCtrl_authenticator, .-OSSL_CRMF_MSG_set1_regCtrl_authenticator
	.globl	OSSL_CRMF_MSG_set0_SinglePubInfo
	.type	OSSL_CRMF_MSG_set0_SinglePubInfo, @function
OSSL_CRMF_MSG_set0_SinglePubInfo:
.LFB701:
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
	cmpq	$0, -8(%rbp)
	je	.L78
	cmpl	$0, -12(%rbp)
	js	.L78
	cmpl	$3, -12(%rbp)
	jle	.L79
.L78:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$130, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L80
.L79:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L81
	movl	$0, %eax
	jmp	.L80
.L81:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	OSSL_CRMF_MSG_set0_SinglePubInfo, .-OSSL_CRMF_MSG_set0_SinglePubInfo
	.globl	OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo
	.type	OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo, @function
OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L83
	cmpq	$0, -16(%rbp)
	jne	.L84
.L83:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L85
.L84:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L86
	call	sk_OSSL_CRMF_SINGLEPUBINFO_new_null
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L86:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	movl	$0, %eax
	jmp	.L85
.L87:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_SINGLEPUBINFO_push
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo, .-OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo
	.globl	OSSL_CRMF_MSG_set_PKIPublicationInfo_action
	.type	OSSL_CRMF_MSG_set_PKIPublicationInfo_action, @function
OSSL_CRMF_MSG_set_PKIPublicationInfo_action:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L89
	cmpl	$0, -12(%rbp)
	js	.L89
	cmpl	$1, -12(%rbp)
	jle	.L90
.L89:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L90:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	OSSL_CRMF_MSG_set_PKIPublicationInfo_action, .-OSSL_CRMF_MSG_set_PKIPublicationInfo_action
	.globl	OSSL_CRMF_MSG_get0_regCtrl_pkiPublicationInfo
	.type	OSSL_CRMF_MSG_get0_regCtrl_pkiPublicationInfo, @function
OSSL_CRMF_MSG_get0_regCtrl_pkiPublicationInfo:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L93
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L94
.L93:
	movl	$0, %eax
	jmp	.L95
.L94:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L96
.L98:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$317, %eax
	jne	.L97
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L95
.L97:
	addl	$1, -4(%rbp)
.L96:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L98
	movl	$0, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	OSSL_CRMF_MSG_get0_regCtrl_pkiPublicationInfo, .-OSSL_CRMF_MSG_get0_regCtrl_pkiPublicationInfo
	.globl	OSSL_CRMF_MSG_set1_regCtrl_pkiPublicationInfo
	.type	OSSL_CRMF_MSG_set1_regCtrl_pkiPublicationInfo, @function
OSSL_CRMF_MSG_set1_regCtrl_pkiPublicationInfo:
.LFB705:
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
	cmpq	$0, -24(%rbp)
	je	.L108
	cmpq	$0, -32(%rbp)
	je	.L108
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L109
	movl	$317, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_PKIPUBLICATIONINFO_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_push0_regCtrl
	testl	%eax, %eax
	je	.L112
	movl	$1, %eax
	jmp	.L107
.L108:
	nop
	jmp	.L102
.L109:
	nop
	jmp	.L102
.L110:
	nop
	jmp	.L102
.L111:
	nop
	jmp	.L102
.L112:
	nop
.L102:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free@PLT
	movl	$0, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	OSSL_CRMF_MSG_set1_regCtrl_pkiPublicationInfo, .-OSSL_CRMF_MSG_set1_regCtrl_pkiPublicationInfo
	.globl	OSSL_CRMF_MSG_get0_regCtrl_oldCertID
	.type	OSSL_CRMF_MSG_get0_regCtrl_oldCertID, @function
OSSL_CRMF_MSG_get0_regCtrl_oldCertID:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L114
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L115
.L114:
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L117
.L119:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$319, %eax
	jne	.L118
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L116
.L118:
	addl	$1, -4(%rbp)
.L117:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L119
	movl	$0, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	OSSL_CRMF_MSG_get0_regCtrl_oldCertID, .-OSSL_CRMF_MSG_get0_regCtrl_oldCertID
	.globl	OSSL_CRMF_MSG_set1_regCtrl_oldCertID
	.type	OSSL_CRMF_MSG_set1_regCtrl_oldCertID, @function
OSSL_CRMF_MSG_set1_regCtrl_oldCertID:
.LFB707:
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
	cmpq	$0, -24(%rbp)
	je	.L129
	cmpq	$0, -32(%rbp)
	je	.L129
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L130
	movl	$319, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L132
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_push0_regCtrl
	testl	%eax, %eax
	je	.L133
	movl	$1, %eax
	jmp	.L128
.L129:
	nop
	jmp	.L123
.L130:
	nop
	jmp	.L123
.L131:
	nop
	jmp	.L123
.L132:
	nop
	jmp	.L123
.L133:
	nop
.L123:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free@PLT
	movl	$0, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	OSSL_CRMF_MSG_set1_regCtrl_oldCertID, .-OSSL_CRMF_MSG_set1_regCtrl_oldCertID
	.globl	OSSL_CRMF_CERTID_gen
	.type	OSSL_CRMF_CERTID_gen, @function
OSSL_CRMF_CERTID_gen:
.LFB708:
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
	cmpq	$0, -24(%rbp)
	je	.L135
	cmpq	$0, -32(%rbp)
	jne	.L136
.L135:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L137
.L136:
	call	OSSL_CRMF_CERTID_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L142
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	je	.L143
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$4, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L144
	movq	-8(%rbp), %rax
	jmp	.L137
.L142:
	nop
	jmp	.L139
.L143:
	nop
	jmp	.L139
.L144:
	nop
.L139:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_free@PLT
	movl	$0, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	OSSL_CRMF_CERTID_gen, .-OSSL_CRMF_CERTID_gen
	.globl	OSSL_CRMF_MSG_get0_regCtrl_protocolEncrKey
	.type	OSSL_CRMF_MSG_get0_regCtrl_protocolEncrKey, @function
OSSL_CRMF_MSG_get0_regCtrl_protocolEncrKey:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L146
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L147
.L146:
	movl	$0, %eax
	jmp	.L148
.L147:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L149
.L151:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$320, %eax
	jne	.L150
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L148
.L150:
	addl	$1, -4(%rbp)
.L149:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L151
	movl	$0, %eax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	OSSL_CRMF_MSG_get0_regCtrl_protocolEncrKey, .-OSSL_CRMF_MSG_get0_regCtrl_protocolEncrKey
	.globl	OSSL_CRMF_MSG_set1_regCtrl_protocolEncrKey
	.type	OSSL_CRMF_MSG_set1_regCtrl_protocolEncrKey, @function
OSSL_CRMF_MSG_set1_regCtrl_protocolEncrKey:
.LFB710:
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
	cmpq	$0, -24(%rbp)
	je	.L161
	cmpq	$0, -32(%rbp)
	je	.L161
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L162
	movl	$320, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L164
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_push0_regCtrl
	testl	%eax, %eax
	je	.L165
	movl	$1, %eax
	jmp	.L160
.L161:
	nop
	jmp	.L155
.L162:
	nop
	jmp	.L155
.L163:
	nop
	jmp	.L155
.L164:
	nop
	jmp	.L155
.L165:
	nop
.L155:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free@PLT
	movl	$0, %eax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	OSSL_CRMF_MSG_set1_regCtrl_protocolEncrKey, .-OSSL_CRMF_MSG_set1_regCtrl_protocolEncrKey
	.type	OSSL_CRMF_MSG_push0_regInfo, @function
OSSL_CRMF_MSG_push0_regInfo:
.LFB711:
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
	cmpq	$0, -24(%rbp)
	je	.L167
	cmpq	$0, -32(%rbp)
	jne	.L168
.L167:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$221, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L169
.L168:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L170
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L170:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L175
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push
	testl	%eax, %eax
	je	.L176
	movl	$1, %eax
	jmp	.L169
.L175:
	nop
	jmp	.L172
.L176:
	nop
.L172:
	cmpq	$0, -8(%rbp)
	je	.L174
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
.L174:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free
	movl	$0, %eax
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	OSSL_CRMF_MSG_push0_regInfo, .-OSSL_CRMF_MSG_push0_regInfo
	.globl	OSSL_CRMF_MSG_get0_regInfo_utf8Pairs
	.type	OSSL_CRMF_MSG_get0_regInfo_utf8Pairs, @function
OSSL_CRMF_MSG_get0_regInfo_utf8Pairs:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L178
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L179
.L178:
	movl	$0, %eax
	jmp	.L180
.L179:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L181
.L183:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$321, %eax
	jne	.L182
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L180
.L182:
	addl	$1, -4(%rbp)
.L181:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L183
	movl	$0, %eax
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	OSSL_CRMF_MSG_get0_regInfo_utf8Pairs, .-OSSL_CRMF_MSG_get0_regInfo_utf8Pairs
	.globl	OSSL_CRMF_MSG_set1_regInfo_utf8Pairs
	.type	OSSL_CRMF_MSG_set1_regInfo_utf8Pairs, @function
OSSL_CRMF_MSG_set1_regInfo_utf8Pairs:
.LFB713:
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
	cmpq	$0, -24(%rbp)
	je	.L193
	cmpq	$0, -32(%rbp)
	je	.L193
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L194
	movl	$321, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_push0_regInfo
	testl	%eax, %eax
	je	.L197
	movl	$1, %eax
	jmp	.L192
.L193:
	nop
	jmp	.L187
.L194:
	nop
	jmp	.L187
.L195:
	nop
	jmp	.L187
.L196:
	nop
	jmp	.L187
.L197:
	nop
.L187:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free@PLT
	movl	$0, %eax
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	OSSL_CRMF_MSG_set1_regInfo_utf8Pairs, .-OSSL_CRMF_MSG_set1_regInfo_utf8Pairs
	.globl	OSSL_CRMF_MSG_get0_regInfo_certReq
	.type	OSSL_CRMF_MSG_get0_regInfo_certReq, @function
OSSL_CRMF_MSG_get0_regInfo_certReq:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L199
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L200
.L199:
	movl	$0, %eax
	jmp	.L201
.L200:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L202
.L204:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$322, %eax
	jne	.L203
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L201
.L203:
	addl	$1, -4(%rbp)
.L202:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L204
	movl	$0, %eax
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	OSSL_CRMF_MSG_get0_regInfo_certReq, .-OSSL_CRMF_MSG_get0_regInfo_certReq
	.globl	OSSL_CRMF_MSG_set1_regInfo_certReq
	.type	OSSL_CRMF_MSG_set1_regInfo_certReq, @function
OSSL_CRMF_MSG_set1_regInfo_certReq:
.LFB715:
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
	cmpq	$0, -24(%rbp)
	je	.L214
	cmpq	$0, -32(%rbp)
	je	.L214
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L215
	movl	$322, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L216
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTREQUEST_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L217
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_push0_regInfo
	testl	%eax, %eax
	je	.L218
	movl	$1, %eax
	jmp	.L213
.L214:
	nop
	jmp	.L208
.L215:
	nop
	jmp	.L208
.L216:
	nop
	jmp	.L208
.L217:
	nop
	jmp	.L208
.L218:
	nop
.L208:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free@PLT
	movl	$0, %eax
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	OSSL_CRMF_MSG_set1_regInfo_certReq, .-OSSL_CRMF_MSG_set1_regInfo_certReq
	.globl	OSSL_CRMF_MSG_get0_tmpl
	.type	OSSL_CRMF_MSG_get0_tmpl, @function
OSSL_CRMF_MSG_get0_tmpl:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L220
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L221
.L220:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$250, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L222
.L221:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
.L222:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	OSSL_CRMF_MSG_get0_tmpl, .-OSSL_CRMF_MSG_get0_tmpl
	.globl	OSSL_CRMF_MSG_set0_validity
	.type	OSSL_CRMF_MSG_set0_validity, @function
OSSL_CRMF_MSG_set0_validity:
.LFB717:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_get0_tmpl@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L224
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$263, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L225
.L224:
	call	OSSL_CRMF_OPTIONALVALIDITY_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L226
	movl	$0, %eax
	jmp	.L225
.L226:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	OSSL_CRMF_MSG_set0_validity, .-OSSL_CRMF_MSG_set0_validity
	.globl	OSSL_CRMF_MSG_set_certReqId
	.type	OSSL_CRMF_MSG_set_certReqId, @function
OSSL_CRMF_MSG_set_certReqId:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L228
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L228
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L229
.L228:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$278, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L230
.L229:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	OSSL_CRMF_MSG_set_certReqId, .-OSSL_CRMF_MSG_set_certReqId
	.type	crmf_asn1_get_int, @function
crmf_asn1_get_int:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_get_int64@PLT
	testl	%eax, %eax
	jne	.L232
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$291, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$187, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L236
.L232:
	movq	-8(%rbp), %rax
	cmpq	$-2147483648, %rax
	jge	.L234
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$295, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L236
.L234:
	movq	-8(%rbp), %rax
	cmpq	$2147483647, %rax
	jle	.L235
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$299, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$223, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L236
.L235:
	movq	-8(%rbp), %rax
.L236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	crmf_asn1_get_int, .-crmf_asn1_get_int
	.globl	OSSL_CRMF_MSG_get_certReqId
	.type	OSSL_CRMF_MSG_get_certReqId, @function
OSSL_CRMF_MSG_get_certReqId:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L238
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L239
.L238:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$308, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L240
.L239:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	crmf_asn1_get_int
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	OSSL_CRMF_MSG_get_certReqId, .-OSSL_CRMF_MSG_get_certReqId
	.globl	OSSL_CRMF_MSG_set0_extensions
	.type	OSSL_CRMF_MSG_set0_extensions, @function
OSSL_CRMF_MSG_set0_extensions:
.LFB721:
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
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_get0_tmpl@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L242
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$320, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L243
.L242:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L244
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	$0, -48(%rbp)
.L244:
	movq	X509_EXTENSION_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movl	$1, %eax
.L243:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	OSSL_CRMF_MSG_set0_extensions, .-OSSL_CRMF_MSG_set0_extensions
	.globl	OSSL_CRMF_MSG_push0_extension
	.type	OSSL_CRMF_MSG_push0_extension, @function
OSSL_CRMF_MSG_push0_extension:
.LFB722:
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
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_get0_tmpl@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L246
	cmpq	$0, -48(%rbp)
	jne	.L247
.L246:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$341, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L248
.L247:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L249
	call	OPENSSL_sk_new_null@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L254
	movl	$1, -20(%rbp)
.L249:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L255
	movl	$1, %eax
	jmp	.L248
.L254:
	nop
	jmp	.L251
.L255:
	nop
.L251:
	cmpl	$0, -20(%rbp)
	je	.L253
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, 72(%rax)
.L253:
	movl	$0, %eax
.L248:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	OSSL_CRMF_MSG_push0_extension, .-OSSL_CRMF_MSG_push0_extension
	.section	.rodata
.LC1:
	.string	"UNDEF"
	.text
	.type	create_popo_signature, @function
create_popo_signature:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L257
	cmpq	$0, -128(%rbp)
	je	.L257
	cmpq	$0, -136(%rbp)
	jne	.L258
.L257:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$371, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L263
.L258:
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, -24(%rbp)
	movq	-136(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L260
	movl	$0, %eax
	jmp	.L263
.L260:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L261
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L263
.L261:
	leaq	-112(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_default_digest_name@PLT
	testl	%eax, %eax
	jle	.L262
	leaq	.LC1(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L262
	movq	$0, -144(%rbp)
.L262:
	movq	-120(%rbp), %rax
	movq	16(%rax), %r12
	movq	-120(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_CRMF_CERTREQUEST_it@PLT
	movq	-128(%rbp), %rdx
	pushq	-160(%rbp)
	pushq	-152(%rbp)
	pushq	-144(%rbp)
	pushq	-136(%rbp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%r12, %rcx
	movl	$0, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_sign_ex@PLT
	addq	$32, %rsp
.L263:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	create_popo_signature, .-create_popo_signature
	.globl	OSSL_CRMF_MSG_create_popo
	.type	OSSL_CRMF_MSG_create_popo, @function
OSSL_CRMF_MSG_create_popo:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L265
	cmpl	$1, -36(%rbp)
	jne	.L266
	cmpq	$0, -56(%rbp)
	jne	.L266
.L265:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$402, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L267
.L266:
	cmpl	$-1, -36(%rbp)
	je	.L282
	call	OSSL_CRMF_POPO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L283
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	cmpl	$2, -36(%rbp)
	je	.L272
	cmpl	$2, -36(%rbp)
	jg	.L273
	cmpl	$0, -36(%rbp)
	je	.L274
	cmpl	$1, -36(%rbp)
	je	.L275
	jmp	.L273
.L274:
	call	ASN1_NULL_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L284
	jmp	.L271
.L275:
	call	OSSL_CRMF_POPOSIGNINGKEY_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L285
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	create_popo_signature
	testl	%eax, %eax
	jne	.L278
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_POPOSIGNINGKEY_free@PLT
	jmp	.L271
.L278:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L269
.L272:
	call	OSSL_CRMF_POPOPRIVKEY_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L286
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -16(%rbp)
	je	.L287
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L288
	jmp	.L287
.L273:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$446, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L271
.L282:
	nop
	jmp	.L269
.L284:
	nop
	jmp	.L269
.L288:
	nop
.L269:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_POPO_free@PLT
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
	jmp	.L267
.L283:
	nop
	jmp	.L271
.L285:
	nop
	jmp	.L271
.L286:
	nop
	jmp	.L271
.L287:
	nop
.L271:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_POPO_free@PLT
	movl	$0, %eax
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	OSSL_CRMF_MSG_create_popo, .-OSSL_CRMF_MSG_create_popo
	.globl	OSSL_CRMF_MSGS_verify_popo
	.type	OSSL_CRMF_MSGS_verify_popo, @function
OSSL_CRMF_MSGS_verify_popo:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L290
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CRMF_MSG_sk_type
	movq	%rax, %rdx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L291
.L290:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$472, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L292
.L291:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L293
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$477, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L292
.L293:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L294
	cmpl	$1, %eax
	je	.L295
	jmp	.L306
.L294:
	cmpl	$0, -64(%rbp)
	jne	.L307
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$484, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L292
.L295:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L299
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$491, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L292
.L299:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L300
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L301
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$502, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L292
.L301:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_PUBKEY_eq@PLT
	cmpl	$1, %eax
	je	.L302
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$506, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L292
.L302:
	call	OSSL_CRMF_POPOSIGNINGKEYINPUT_it@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L303
.L300:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L304
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$519, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L292
.L304:
	call	OSSL_CRMF_CERTREQUEST_it@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L303:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rdi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASN1_item_verify_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L308
	movl	$0, %eax
	jmp	.L292
.L306:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$539, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L292
.L307:
	nop
	jmp	.L298
.L308:
	nop
.L298:
	movl	$1, %eax
.L292:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	OSSL_CRMF_MSGS_verify_popo, .-OSSL_CRMF_MSGS_verify_popo
	.globl	OSSL_CRMF_CERTTEMPLATE_get0_publicKey
	.type	OSSL_CRMF_CERTTEMPLATE_get0_publicKey, @function
OSSL_CRMF_CERTTEMPLATE_get0_publicKey:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L310
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.L312
.L310:
	movl	$0, %eax
.L312:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	OSSL_CRMF_CERTTEMPLATE_get0_publicKey, .-OSSL_CRMF_CERTTEMPLATE_get0_publicKey
	.globl	OSSL_CRMF_CERTTEMPLATE_get0_serialNumber
	.type	OSSL_CRMF_CERTTEMPLATE_get0_serialNumber, @function
OSSL_CRMF_CERTTEMPLATE_get0_serialNumber:
.LFB727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L314
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L316
.L314:
	movl	$0, %eax
.L316:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	OSSL_CRMF_CERTTEMPLATE_get0_serialNumber, .-OSSL_CRMF_CERTTEMPLATE_get0_serialNumber
	.globl	OSSL_CRMF_CERTTEMPLATE_get0_subject
	.type	OSSL_CRMF_CERTTEMPLATE_get0_subject, @function
OSSL_CRMF_CERTTEMPLATE_get0_subject:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L318
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L320
.L318:
	movl	$0, %eax
.L320:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	OSSL_CRMF_CERTTEMPLATE_get0_subject, .-OSSL_CRMF_CERTTEMPLATE_get0_subject
	.globl	OSSL_CRMF_CERTTEMPLATE_get0_issuer
	.type	OSSL_CRMF_CERTTEMPLATE_get0_issuer, @function
OSSL_CRMF_CERTTEMPLATE_get0_issuer:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L322
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L324
.L322:
	movl	$0, %eax
.L324:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	OSSL_CRMF_CERTTEMPLATE_get0_issuer, .-OSSL_CRMF_CERTTEMPLATE_get0_issuer
	.globl	OSSL_CRMF_CERTTEMPLATE_get0_extensions
	.type	OSSL_CRMF_CERTTEMPLATE_get0_extensions, @function
OSSL_CRMF_CERTTEMPLATE_get0_extensions:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L326
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	jmp	.L328
.L326:
	movl	$0, %eax
.L328:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	OSSL_CRMF_CERTTEMPLATE_get0_extensions, .-OSSL_CRMF_CERTTEMPLATE_get0_extensions
	.globl	OSSL_CRMF_CERTID_get0_issuer
	.type	OSSL_CRMF_CERTID_get0_issuer, @function
OSSL_CRMF_CERTID_get0_issuer:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L330
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L330
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L332
.L330:
	movl	$0, %eax
.L332:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	OSSL_CRMF_CERTID_get0_issuer, .-OSSL_CRMF_CERTID_get0_issuer
	.globl	OSSL_CRMF_CERTID_get0_serialNumber
	.type	OSSL_CRMF_CERTID_get0_serialNumber, @function
OSSL_CRMF_CERTID_get0_serialNumber:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L334
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L336
.L334:
	movl	$0, %eax
.L336:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	OSSL_CRMF_CERTID_get0_serialNumber, .-OSSL_CRMF_CERTID_get0_serialNumber
	.globl	OSSL_CRMF_CERTTEMPLATE_fill
	.type	OSSL_CRMF_CERTTEMPLATE_fill, @function
OSSL_CRMF_CERTTEMPLATE_fill:
.LFB733:
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
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L338
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$598, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L339
.L338:
	cmpq	$0, -24(%rbp)
	je	.L340
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	jne	.L340
	movl	$0, %eax
	jmp	.L339
.L340:
	cmpq	$0, -32(%rbp)
	je	.L341
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	jne	.L341
	movl	$0, %eax
	jmp	.L339
.L341:
	cmpq	$0, -40(%rbp)
	je	.L342
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L342
	movl	$0, %eax
	jmp	.L339
.L342:
	cmpq	$0, -16(%rbp)
	je	.L343
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_PUBKEY_set@PLT
	testl	%eax, %eax
	jne	.L343
	movl	$0, %eax
	jmp	.L339
.L343:
	movl	$1, %eax
.L339:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	OSSL_CRMF_CERTTEMPLATE_fill, .-OSSL_CRMF_CERTTEMPLATE_fill
	.globl	OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert
	.type	OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert, @function
OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -104(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L345
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L345
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L345
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L345
	cmpq	$0, -192(%rbp)
	jne	.L346
.L345:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$642, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L360
.L346:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	call	ERR_set_mark@PLT
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L348
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -32(%rbp)
.L348:
	cmpq	$0, -32(%rbp)
	jne	.L349
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$657, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L350
.L349:
	call	ERR_pop_to_mark@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, -60(%rbp)
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L361
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	testl	%eax, %eax
	jle	.L361
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %r8
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	movl	-60(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	evp_pkey_decrypt_alloc@PLT
	testl	%eax, %eax
	jle	.L361
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$671, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L362
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, %edx
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_get_octetstring@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	cmpl	%eax, %ebx
	je	.L354
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$676, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L350
.L354:
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_block_size@PLT
	addl	%ebx, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$684, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L363
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L363
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_DecryptInit@PLT
	testl	%eax, %eax
	je	.L357
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %edi
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rcx
	leaq	-104(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	je	.L357
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-100(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal@PLT
	testl	%eax, %eax
	jne	.L358
.L357:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$695, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L350
.L358:
	movl	-104(%rbp), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L364
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-96(%rbp), %rcx
	leaq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509@PLT
	testq	%rax, %rax
	jne	.L365
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$704, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L350
.L361:
	nop
	jmp	.L350
.L362:
	nop
	jmp	.L350
.L363:
	nop
	jmp	.L350
.L364:
	nop
	jmp	.L350
.L365:
	nop
.L350:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$707, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$710, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$711, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
.L360:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert, .-OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert
	.section	.rodata
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 28
__func__.17:
	.string	"OSSL_CRMF_MSG_push0_regCtrl"
	.align 32
	.type	__func__.16, @object
	.size	__func__.16, 33
__func__.16:
	.string	"OSSL_CRMF_MSG_set0_SinglePubInfo"
	.align 32
	.type	__func__.15, @object
	.size	__func__.15, 53
__func__.15:
	.string	"OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo"
	.align 32
	.type	__func__.14, @object
	.size	__func__.14, 44
__func__.14:
	.string	"OSSL_CRMF_MSG_set_PKIPublicationInfo_action"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 21
__func__.13:
	.string	"OSSL_CRMF_CERTID_gen"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 28
__func__.12:
	.string	"OSSL_CRMF_MSG_push0_regInfo"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 24
__func__.11:
	.string	"OSSL_CRMF_MSG_get0_tmpl"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 28
__func__.10:
	.string	"OSSL_CRMF_MSG_set0_validity"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 28
__func__.9:
	.string	"OSSL_CRMF_MSG_set_certReqId"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 18
__func__.8:
	.string	"crmf_asn1_get_int"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 28
__func__.7:
	.string	"OSSL_CRMF_MSG_get_certReqId"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 30
__func__.6:
	.string	"OSSL_CRMF_MSG_set0_extensions"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 30
__func__.5:
	.string	"OSSL_CRMF_MSG_push0_extension"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 22
__func__.4:
	.string	"create_popo_signature"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 26
__func__.3:
	.string	"OSSL_CRMF_MSG_create_popo"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 27
__func__.2:
	.string	"OSSL_CRMF_MSGS_verify_popo"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 28
__func__.1:
	.string	"OSSL_CRMF_CERTTEMPLATE_fill"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 38
__func__.0:
	.string	"OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
