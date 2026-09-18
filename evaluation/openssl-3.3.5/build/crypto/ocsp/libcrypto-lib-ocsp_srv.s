	.file	"ocsp_srv.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	ossl_check_const_OCSP_ONEREQ_sk_type, @function
ossl_check_const_OCSP_ONEREQ_sk_type:
.LFB624:
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
.LFE624:
	.size	ossl_check_const_OCSP_ONEREQ_sk_type, .-ossl_check_const_OCSP_ONEREQ_sk_type
	.type	ossl_check_OCSP_SINGLERESP_type, @function
ossl_check_OCSP_SINGLERESP_type:
.LFB635:
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
.LFE635:
	.size	ossl_check_OCSP_SINGLERESP_type, .-ossl_check_OCSP_SINGLERESP_type
	.type	ossl_check_OCSP_SINGLERESP_sk_type, @function
ossl_check_OCSP_SINGLERESP_sk_type:
.LFB637:
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
.LFE637:
	.size	ossl_check_OCSP_SINGLERESP_sk_type, .-ossl_check_OCSP_SINGLERESP_sk_type
	.globl	OCSP_request_onereq_count
	.type	OCSP_request_onereq_count, @function
OCSP_request_onereq_count:
.LFB646:
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
	call	ossl_check_const_OCSP_ONEREQ_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	OCSP_request_onereq_count, .-OCSP_request_onereq_count
	.globl	OCSP_request_onereq_get0
	.type	OCSP_request_onereq_get0, @function
OCSP_request_onereq_get0:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_ONEREQ_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	OCSP_request_onereq_get0, .-OCSP_request_onereq_get0
	.globl	OCSP_onereq_get0_id
	.type	OCSP_onereq_get0_id, @function
OCSP_onereq_get0_id:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	OCSP_onereq_get0_id, .-OCSP_onereq_get0_id
	.globl	OCSP_id_get0_info
	.type	OCSP_id_get0_info, @function
OCSP_id_get0_info:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	cmpq	$0, -16(%rbp)
	je	.L20
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L20:
	cmpq	$0, -8(%rbp)
	je	.L21
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L21:
	cmpq	$0, -24(%rbp)
	je	.L22
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L22:
	cmpq	$0, -32(%rbp)
	je	.L23
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L23:
	movl	$1, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	OCSP_id_get0_info, .-OCSP_id_get0_info
	.globl	OCSP_request_is_signed
	.type	OCSP_request_is_signed, @function
OCSP_request_is_signed:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movl	$1, %eax
	jmp	.L26
.L25:
	movl	$0, %eax
.L26:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	OCSP_request_is_signed, .-OCSP_request_is_signed
	.globl	OCSP_response_create
	.type	OCSP_response_create, @function
OCSP_response_create:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	call	OCSP_RESPONSE_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L35
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_set@PLT
	testl	%eax, %eax
	je	.L36
	cmpq	$0, -48(%rbp)
	jne	.L31
	movq	-24(%rbp), %rax
	jmp	.L32
.L31:
	call	OCSP_RESPBYTES_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	movl	$365, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rbx
	call	OCSP_BASICRESP_it@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	testq	%rax, %rax
	je	.L38
	movq	-24(%rbp), %rax
	jmp	.L32
.L35:
	nop
	jmp	.L29
.L36:
	nop
	jmp	.L29
.L37:
	nop
	jmp	.L29
.L38:
	nop
.L29:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_RESPONSE_free@PLT
	movl	$0, %eax
.L32:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	OCSP_response_create, .-OCSP_response_create
	.section	.rodata
.LC0:
	.string	"../crypto/ocsp/ocsp_srv.c"
	.text
	.globl	OCSP_basic_add1_status
	.type	OCSP_basic_add1_status, @function
OCSP_basic_add1_status:
.LFB652:
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
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	call	OPENSSL_sk_new_null@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L59
.L40:
	call	OCSP_SINGLERESP_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L60
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_generalizedtime@PLT
	testq	%rax, %rax
	je	.L61
	cmpq	$0, 16(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_generalizedtime@PLT
	testq	%rax, %rax
	je	.L62
.L44:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OCSP_CERTID_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_CERTID_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L46
	cmpl	$2, %eax
	jg	.L64
	testl	%eax, %eax
	je	.L48
	cmpl	$1, %eax
	jne	.L64
	cmpq	$0, -80(%rbp)
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L41
.L49:
	call	OCSP_REVOKEDINFO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_generalizedtime@PLT
	testq	%rax, %rax
	je	.L66
	cmpl	$-1, -72(%rbp)
	je	.L67
	call	ASN1_ENUMERATED_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_set@PLT
	testl	%eax, %eax
	jne	.L67
	jmp	.L41
.L48:
	call	ASN1_NULL_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L69
	jmp	.L41
.L46:
	call	ASN1_NULL_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L70
	jmp	.L54
.L67:
	nop
	jmp	.L54
.L69:
	nop
.L54:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OCSP_SINGLERESP_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OCSP_SINGLERESP_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L71
	movq	-24(%rbp), %rax
	jmp	.L58
.L59:
	nop
	jmp	.L41
.L60:
	nop
	jmp	.L41
.L61:
	nop
	jmp	.L41
.L62:
	nop
	jmp	.L41
.L63:
	nop
	jmp	.L41
.L64:
	nop
	jmp	.L41
.L65:
	nop
	jmp	.L41
.L66:
	nop
	jmp	.L41
.L68:
	nop
	jmp	.L41
.L70:
	nop
	jmp	.L41
.L71:
	nop
.L41:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_SINGLERESP_free@PLT
	movl	$0, %eax
.L58:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	OCSP_basic_add1_status, .-OCSP_basic_add1_status
	.globl	OCSP_basic_add1_cert
	.type	OCSP_basic_add1_cert, @function
OCSP_basic_add1_cert:
.LFB653:
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
	leaq	72(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_x509_add_cert_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	OCSP_basic_add1_cert, .-OCSP_basic_add1_cert
	.globl	OCSP_basic_sign_ctx
	.type	OCSP_basic_sign_ctx, @function
OCSP_basic_sign_ctx:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L75
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	testq	%rax, %rax
	jne	.L76
.L75:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L77
.L76:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L78
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L79
.L78:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L77
.L79:
	movq	-88(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L80
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OCSP_basic_add1_cert@PLT
	testl	%eax, %eax
	je	.L87
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-80(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_certs@PLT
	testl	%eax, %eax
	je	.L87
.L80:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	andl	$1024, %eax
	testq	%rax, %rax
	je	.L82
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OCSP_RESPID_set_by_key@PLT
	testl	%eax, %eax
	jne	.L83
	jmp	.L77
.L82:
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OCSP_RESPID_set_by_name@PLT
	testl	%eax, %eax
	je	.L88
.L83:
	movq	-88(%rbp), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	jne	.L84
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_gmtime_adj@PLT
	testq	%rax, %rax
	je	.L89
.L84:
	movq	-56(%rbp), %r13
	movq	-56(%rbp), %rax
	movq	64(%rax), %rbx
	movq	-56(%rbp), %rax
	leaq	48(%rax), %r12
	call	OCSP_RESPDATA_it@PLT
	movq	-72(%rbp), %rdx
	movq	%rdx, %r9
	movq	%r13, %r8
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	ASN1_item_sign_ctx@PLT
	testl	%eax, %eax
	je	.L90
	movl	$1, %eax
	jmp	.L86
.L87:
	nop
	jmp	.L77
.L88:
	nop
	jmp	.L77
.L89:
	nop
	jmp	.L77
.L90:
	nop
.L77:
	movl	$0, %eax
.L86:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	OCSP_basic_sign_ctx, .-OCSP_basic_sign_ctx
	.globl	OCSP_basic_sign
	.type	OCSP_basic_sign, @function
OCSP_basic_sign:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L92
	movl	$0, %eax
	jmp	.L95
.L92:
	movq	-64(%rbp), %rax
	movq	376(%rax), %r12
	movq	-64(%rbp), %rax
	movq	368(%rax), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx
	leaq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L94
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
	jmp	.L95
.L94:
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OCSP_basic_sign_ctx@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-28(%rbp), %eax
.L95:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	OCSP_basic_sign, .-OCSP_basic_sign
	.globl	OCSP_RESPID_set_by_name
	.type	OCSP_RESPID_set_by_name, @function
OCSP_RESPID_set_by_name:
.LFB656:
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
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	jne	.L97
	movl	$0, %eax
	jmp	.L98
.L97:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	OCSP_RESPID_set_by_name, .-OCSP_RESPID_set_by_name
	.section	.rodata
.LC1:
	.string	"SHA1"
	.text
	.globl	OCSP_RESPID_set_by_key_ex
	.type	OCSP_RESPID_set_by_key_ex, @function
OCSP_RESPID_set_by_key_ex:
.LFB657:
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
	movq	%rcx, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	-80(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L100
	movl	$0, %eax
	jmp	.L106
.L100:
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_pubkey_digest@PLT
	testl	%eax, %eax
	je	.L107
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L108
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	jne	.L105
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	jmp	.L103
.L105:
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, -4(%rbp)
	jmp	.L103
.L107:
	nop
	jmp	.L103
.L108:
	nop
.L103:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	OCSP_RESPID_set_by_key_ex, .-OCSP_RESPID_set_by_key_ex
	.globl	OCSP_RESPID_set_by_key
	.type	OCSP_RESPID_set_by_key, @function
OCSP_RESPID_set_by_key:
.LFB658:
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
	jne	.L110
	movl	$0, %eax
	jmp	.L111
.L110:
	movq	-16(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_RESPID_set_by_key_ex@PLT
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	OCSP_RESPID_set_by_key, .-OCSP_RESPID_set_by_key
	.globl	OCSP_RESPID_match_ex
	.type	OCSP_RESPID_match_ex, @function
OCSP_RESPID_match_ex:
.LFB659:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L113
	movq	-64(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L123
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L124
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_pubkey_digest@PLT
	testl	%eax, %eax
	je	.L125
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	cmpl	$20, %eax
	jne	.L118
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rcx
	leaq	-32(%rbp), %rax
	movl	$20, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L118
	movl	$1, %eax
	jmp	.L119
.L118:
	movl	$0, %eax
.L119:
	movl	%eax, -12(%rbp)
	jmp	.L120
.L113:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L126
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	movl	$0, %eax
	jmp	.L122
.L121:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L122
.L123:
	nop
	jmp	.L120
.L124:
	nop
	jmp	.L120
.L125:
	nop
	jmp	.L120
.L126:
	nop
.L120:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-12(%rbp), %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	OCSP_RESPID_match_ex, .-OCSP_RESPID_match_ex
	.globl	OCSP_RESPID_match
	.type	OCSP_RESPID_match, @function
OCSP_RESPID_match:
.LFB660:
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
	jne	.L128
	movl	$0, %eax
	jmp	.L129
.L128:
	movq	-16(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_RESPID_match_ex@PLT
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	OCSP_RESPID_match, .-OCSP_RESPID_match
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"OCSP_basic_add1_status"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"OCSP_basic_sign_ctx"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
