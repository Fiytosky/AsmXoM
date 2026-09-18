	.file	"ocsp_cl.c"
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
	.type	ossl_check_OCSP_ONEREQ_type, @function
ossl_check_OCSP_ONEREQ_type:
.LFB623:
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
.LFE623:
	.size	ossl_check_OCSP_ONEREQ_type, .-ossl_check_OCSP_ONEREQ_type
	.type	ossl_check_OCSP_ONEREQ_sk_type, @function
ossl_check_OCSP_ONEREQ_sk_type:
.LFB625:
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
.LFE625:
	.size	ossl_check_OCSP_ONEREQ_sk_type, .-ossl_check_OCSP_ONEREQ_sk_type
	.type	ossl_check_const_OCSP_SINGLERESP_sk_type, @function
ossl_check_const_OCSP_SINGLERESP_sk_type:
.LFB636:
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
.LFE636:
	.size	ossl_check_const_OCSP_SINGLERESP_sk_type, .-ossl_check_const_OCSP_SINGLERESP_sk_type
	.globl	OCSP_request_add0_id
	.type	OCSP_request_add0_id, @function
OCSP_request_add0_id:
.LFB646:
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
	movq	$0, -24(%rbp)
	call	OCSP_ONEREQ_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OCSP_CERTID_free@PLT
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L14
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OCSP_ONEREQ_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OCSP_ONEREQ_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L14
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_ONEREQ_free@PLT
	movl	$0, %eax
	jmp	.L13
.L14:
	movq	-24(%rbp), %rax
.L13:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	OCSP_request_add0_id, .-OCSP_request_add0_id
	.globl	OCSP_request_set1_name
	.type	OCSP_request_set1_name, @function
OCSP_request_set1_name:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	GENERAL_NAME_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_NAME_set@PLT
	testl	%eax, %eax
	jne	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movl	$0, %eax
	jmp	.L17
.L18:
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	OCSP_request_set1_name, .-OCSP_request_set1_name
	.globl	OCSP_request_add1_cert
	.type	OCSP_request_add1_cert, @function
OCSP_request_add1_cert:
.LFB648:
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
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	call	OCSP_SIGNATURE_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	cmpq	$0, -16(%rbp)
	jne	.L22
	movl	$1, %eax
	jmp	.L21
.L22:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_x509_add_cert_new@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	OCSP_request_add1_cert, .-OCSP_request_add1_cert
	.section	.rodata
.LC0:
	.string	"../crypto/ocsp/ocsp_cl.c"
	.text
	.globl	OCSP_request_sign
	.type	OCSP_request_sign, @function
OCSP_request_sign:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OCSP_request_set1_name@PLT
	testl	%eax, %eax
	je	.L32
	call	OCSP_SIGNATURE_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L33
	cmpq	$0, -72(%rbp)
	je	.L27
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L28:
	movq	-64(%rbp), %rax
	movq	376(%rax), %r13
	movq	-64(%rbp), %rax
	movq	368(%rax), %r12
	movq	-56(%rbp), %r14
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %r15
	call	OCSP_REQINFO_it@PLT
	pushq	%r13
	pushq	%r12
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	movl	$0, %r9d
	movq	%r14, %r8
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	ASN1_item_sign_ex@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L34
.L27:
	movq	-96(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L29
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OCSP_request_add1_cert@PLT
	testl	%eax, %eax
	je	.L35
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	-88(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_certs@PLT
	testl	%eax, %eax
	je	.L35
.L29:
	movl	$1, %eax
	jmp	.L31
.L32:
	nop
	jmp	.L25
.L33:
	nop
	jmp	.L25
.L34:
	nop
	jmp	.L25
.L35:
	nop
.L25:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	OCSP_SIGNATURE_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movl	$0, %eax
.L31:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	OCSP_request_sign, .-OCSP_request_sign
	.globl	OCSP_response_status
	.type	OCSP_response_status, @function
OCSP_response_status:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_get@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	OCSP_response_status, .-OCSP_response_status
	.globl	OCSP_response_get1_basic
	.type	OCSP_response_get1_basic, @function
OCSP_response_get1_basic:
.LFB651:
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
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$130, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$365, %eax
	je	.L41
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$134, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L41:
	call	OCSP_BASICRESP_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_unpack@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	OCSP_response_get1_basic, .-OCSP_response_get1_basic
	.globl	OCSP_resp_get0_signature
	.type	OCSP_resp_get0_signature, @function
OCSP_resp_get0_signature:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	OCSP_resp_get0_signature, .-OCSP_resp_get0_signature
	.globl	OCSP_resp_get0_tbs_sigalg
	.type	OCSP_resp_get0_tbs_sigalg, @function
OCSP_resp_get0_tbs_sigalg:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	OCSP_resp_get0_tbs_sigalg, .-OCSP_resp_get0_tbs_sigalg
	.globl	OCSP_resp_get0_respdata
	.type	OCSP_resp_get0_respdata, @function
OCSP_resp_get0_respdata:
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
	.size	OCSP_resp_get0_respdata, .-OCSP_resp_get0_respdata
	.globl	OCSP_resp_count
	.type	OCSP_resp_count, @function
OCSP_resp_count:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L49
	movl	$-1, %eax
	jmp	.L50
.L49:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	OCSP_resp_count, .-OCSP_resp_count
	.globl	OCSP_resp_get0
	.type	OCSP_resp_get0, @function
OCSP_resp_get0:
.LFB656:
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
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	nop
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	OCSP_resp_get0, .-OCSP_resp_get0
	.globl	OCSP_resp_get0_produced_at
	.type	OCSP_resp_get0_produced_at, @function
OCSP_resp_get0_produced_at:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	OCSP_resp_get0_produced_at, .-OCSP_resp_get0_produced_at
	.globl	OCSP_resp_get0_certs
	.type	OCSP_resp_get0_certs, @function
OCSP_resp_get0_certs:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	OCSP_resp_get0_certs, .-OCSP_resp_get0_certs
	.globl	OCSP_resp_get0_id
	.type	OCSP_resp_get0_id, @function
OCSP_resp_get0_id:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L59
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L60
.L59:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L61
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L60
.L61:
	movl	$0, %eax
	jmp	.L62
.L60:
	movl	$1, %eax
.L62:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	OCSP_resp_get0_id, .-OCSP_resp_get0_id
	.globl	OCSP_resp_get1_id
	.type	OCSP_resp_get1_id, @function
OCSP_resp_get1_id:
.LFB660:
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
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L64
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L65
.L64:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L66
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_dup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L65
.L66:
	movl	$0, %eax
	jmp	.L67
.L65:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movl	$0, %eax
	jmp	.L67
.L68:
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	OCSP_resp_get1_id, .-OCSP_resp_get1_id
	.globl	OCSP_resp_find
	.type	OCSP_resp_find, @function
OCSP_resp_find:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L70
	movl	$-1, %eax
	jmp	.L71
.L70:
	cmpl	$0, -52(%rbp)
	jns	.L72
	movl	$0, -52(%rbp)
	jmp	.L73
.L72:
	addl	$1, -52(%rbp)
.L73:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L74
.L76:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OCSP_id_cmp@PLT
	testl	%eax, %eax
	jne	.L75
	movl	-4(%rbp), %eax
	jmp	.L71
.L75:
	addl	$1, -4(%rbp)
.L74:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L76
	movl	$-1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	OCSP_resp_find, .-OCSP_resp_find
	.globl	OCSP_single_get0_status
	.type	OCSP_single_get0_status, @function
OCSP_single_get0_status:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L78
	movl	$-1, %eax
	jmp	.L79
.L78:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.L80
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L81
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L81:
	cmpq	$0, -48(%rbp)
	je	.L80
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_get@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L80
.L82:
	movq	-48(%rbp), %rax
	movl	$-1, (%rax)
.L80:
	cmpq	$0, -64(%rbp)
	je	.L83
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L83:
	cmpq	$0, -72(%rbp)
	je	.L84
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L84:
	movl	-12(%rbp), %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	OCSP_single_get0_status, .-OCSP_single_get0_status
	.globl	OCSP_resp_find_status
	.type	OCSP_resp_find_status, @function
OCSP_resp_find_status:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OCSP_resp_find@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OCSP_resp_get0@PLT
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OCSP_single_get0_status@PLT
	movl	%eax, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L88
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
.L88:
	movl	$1, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	OCSP_resp_find_status, .-OCSP_resp_find_status
	.globl	OCSP_check_validity
	.type	OCSP_check_validity, @function
OCSP_check_validity:
.LFB664:
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
	movl	$1, -4(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	time@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_check@PLT
	testl	%eax, %eax
	jne	.L90
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$319, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L91
.L90:
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_time@PLT
	testl	%eax, %eax
	jle	.L92
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$324, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
.L92:
	cmpq	$0, -64(%rbp)
	js	.L91
	movq	-16(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_time@PLT
	testl	%eax, %eax
	jns	.L91
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$335, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
.L91:
	cmpq	$0, -48(%rbp)
	jne	.L93
	movl	-4(%rbp), %eax
	jmp	.L98
.L93:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_check@PLT
	testl	%eax, %eax
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$346, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L96
.L95:
	movq	-16(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_time@PLT
	testl	%eax, %eax
	jns	.L96
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$351, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
.L96:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	testl	%eax, %eax
	jns	.L97
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$358, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
.L97:
	movl	-4(%rbp), %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	OCSP_check_validity, .-OCSP_check_validity
	.globl	OCSP_SINGLERESP_get0_id
	.type	OCSP_SINGLERESP_get0_id, @function
OCSP_SINGLERESP_get0_id:
.LFB665:
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
.LFE665:
	.size	OCSP_SINGLERESP_get0_id, .-OCSP_SINGLERESP_get0_id
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"OCSP_request_sign"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"OCSP_response_get1_basic"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"OCSP_check_validity"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
