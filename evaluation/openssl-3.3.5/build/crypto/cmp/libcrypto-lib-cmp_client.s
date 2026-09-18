	.file	"cmp_client.c"
	.text
	.type	ossl_check_ASN1_UTF8STRING_type, @function
ossl_check_ASN1_UTF8STRING_type:
.LFB69:
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
.LFE69:
	.size	ossl_check_ASN1_UTF8STRING_type, .-ossl_check_ASN1_UTF8STRING_type
	.type	ossl_check_const_ASN1_UTF8STRING_sk_type, @function
ossl_check_const_ASN1_UTF8STRING_sk_type:
.LFB70:
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
.LFE70:
	.size	ossl_check_const_ASN1_UTF8STRING_sk_type, .-ossl_check_const_ASN1_UTF8STRING_sk_type
	.type	ossl_check_ASN1_UTF8STRING_sk_type, @function
ossl_check_ASN1_UTF8STRING_sk_type:
.LFB71:
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
.LFE71:
	.size	ossl_check_ASN1_UTF8STRING_sk_type, .-ossl_check_ASN1_UTF8STRING_sk_type
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
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB409:
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
.LFE409:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB410:
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
.LFE410:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	ossl_check_const_X509_CRL_sk_type, @function
ossl_check_const_X509_CRL_sk_type:
.LFB421:
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
.LFE421:
	.size	ossl_check_const_X509_CRL_sk_type, .-ossl_check_const_X509_CRL_sk_type
	.type	ossl_check_const_OSSL_CRMF_CERTID_sk_type, @function
ossl_check_const_OSSL_CRMF_CERTID_sk_type:
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
	.size	ossl_check_const_OSSL_CRMF_CERTID_sk_type, .-ossl_check_const_OSSL_CRMF_CERTID_sk_type
	.type	ossl_check_const_OSSL_CMP_PKISI_sk_type, @function
ossl_check_const_OSSL_CMP_PKISI_sk_type:
.LFB642:
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
.LFE642:
	.size	ossl_check_const_OSSL_CMP_PKISI_sk_type, .-ossl_check_const_OSSL_CMP_PKISI_sk_type
	.type	ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type, @function
ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type:
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
	.size	ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type, .-ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type
	.type	sk_OSSL_CMP_REVDETAILS_value, @function
sk_OSSL_CMP_REVDETAILS_value:
.LFB665:
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
.LFE665:
	.size	sk_OSSL_CMP_REVDETAILS_value, .-sk_OSSL_CMP_REVDETAILS_value
	.type	sk_OSSL_CMP_POLLREP_num, @function
sk_OSSL_CMP_POLLREP_num:
.LFB714:
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
.LFE714:
	.size	sk_OSSL_CMP_POLLREP_num, .-sk_OSSL_CMP_POLLREP_num
	.section	.rodata
.LC0:
	.string	"error response"
	.align 8
.LC1:
	.string	"revocation response message with rejection status"
.LC2:
	.string	"PKI Confirmation message"
	.align 8
.LC3:
	.string	"CertRepMessage with rejection status"
.LC4:
	.string	"invalid"
.LC5:
	.string	"missing"
.LC6:
	.string	"WARN"
.LC7:
	.string	"../crypto/cmp/cmp_client.c"
.LC8:
	.string	"ignoring %s protection of %s"
	.text
	.type	unprotected_exception, @function
unprotected_exception:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, -12(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L28
	cmpq	$0, -64(%rbp)
	je	.L28
	movl	$1, %eax
	jmp	.L29
.L28:
	movl	$0, %eax
.L29:
	cltq
	testq	%rax, %rax
	jne	.L30
	movl	$-1, %eax
	jmp	.L31
.L30:
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L31
.L32:
	cmpl	$23, -12(%rbp)
	je	.L33
	cmpl	$23, -12(%rbp)
	jg	.L34
	cmpl	$12, -12(%rbp)
	je	.L35
	cmpl	$19, -12(%rbp)
	je	.L36
	jmp	.L34
.L33:
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L37
.L35:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_revrepcontent_get_pkisi@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L38
	movl	$-1, %eax
	jmp	.L31
.L38:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	cmpl	$2, %eax
	jne	.L46
	leaq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L46
.L36:
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L37
.L34:
	cmpl	$1, -12(%rbp)
	je	.L40
	cmpl	$3, -12(%rbp)
	je	.L40
	cmpl	$8, -12(%rbp)
	jne	.L37
.L40:
	movl	$-1, -28(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certrepmessage_get0_certresponse@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	jle	.L41
	movl	$-1, %eax
	jmp	.L31
.L41:
	cmpq	$0, -48(%rbp)
	jne	.L42
	movl	$-1, %eax
	jmp	.L31
.L42:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	cmpl	$2, %eax
	jne	.L37
	leaq	.LC3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L37
.L46:
	nop
.L37:
	cmpq	$0, -8(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L31
.L43:
	cmpl	$0, -68(%rbp)
	je	.L44
	leaq	.LC4(%rip), %rax
	jmp	.L45
.L44:
	leaq	.LC5(%rip), %rax
.L45:
	leaq	.LC6(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.10(%rip), %rdx
	movq	-56(%rbp), %rsi
	subq	$8, %rsp
	pushq	-8(%rbp)
	pushq	%rax
	leaq	.LC8(%rip), %rax
	pushq	%rax
	movq	%rdi, %r9
	movl	$82, %r8d
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	unprotected_exception, .-unprotected_exception
	.type	save_statusInfo, @function
save_statusInfo:
.LFB740:
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
	movq	%rsi, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L48
	cmpq	$0, -64(%rbp)
	je	.L48
	movl	$1, %eax
	jmp	.L49
.L48:
	movl	$0, %eax
.L49:
	cltq
	testq	%rax, %rax
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	movq	-56(%rbp), %rdx
	movl	%eax, 464(%rdx)
	movq	-56(%rbp), %rax
	movl	464(%rax), %eax
	testl	%eax, %eax
	jns	.L52
	movl	$0, %eax
	jmp	.L51
.L52:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_pkifailureinfo@PLT
	movq	-56(%rbp), %rdx
	movl	%eax, 480(%rdx)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set0_statusString@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	movq	472(%rax), %rax
	testq	%rax, %rax
	jne	.L54
.L53:
	movl	$0, %eax
	jmp	.L51
.L54:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L55
.L58:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L56
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L57
.L56:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTF8STRING_free@PLT
	movl	$0, %eax
	jmp	.L51
.L57:
	addl	$1, -20(%rbp)
.L55:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L58
	movl	$1, %eax
.L51:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	save_statusInfo, .-save_statusInfo
	.type	is_crep_with_waiting, @function
is_crep_with_waiting:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L60
	cmpl	$3, -4(%rbp)
	je	.L60
	cmpl	$8, -4(%rbp)
	je	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certrepmessage_get0_certresponse@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L62
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	cmpl	$3, %eax
	jne	.L62
	movl	$1, %eax
	jmp	.L61
.L62:
	movl	$0, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	is_crep_with_waiting, .-is_crep_with_waiting
	.section	.rodata
.LC9:
	.string	"INFO"
.LC10:
	.string	"sending %s"
	.align 8
.LC11:
	.string	"request sent: %s, expected response: %s"
.LC12:
	.string	" (waiting)"
.LC13:
	.string	""
.LC14:
	.string	"received %s%s"
.LC15:
	.string	"'"
.LC16:
	.string	"message type is '"
.LC17:
	.string	"; errorCode: %08lX"
.LC18:
	.string	", "
.LC19:
	.string	"; errorDetails: "
	.text
	.type	send_receive_check, @function
send_receive_check:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1144, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1128(%rbp)
	movq	%rsi, -1136(%rbp)
	movq	%rdx, -1144(%rbp)
	movl	%ecx, -1148(%rbp)
	cmpl	$26, -1148(%rbp)
	je	.L65
	cmpl	$19, -1148(%rbp)
	je	.L65
	movl	$1, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	movl	%eax, -28(%rbp)
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, %edi
	call	ossl_cmp_bodytype_to_string@PLT
	movq	%rax, -40(%rbp)
	movl	-1148(%rbp), %eax
	movl	%eax, %edi
	call	ossl_cmp_bodytype_to_string@PLT
	movq	%rax, -48(%rbp)
	movq	-1128(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -64(%rbp)
	movq	-1128(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L67
	movq	OSSL_CMP_MSG_http_perform@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
.L67:
	movq	-1144(%rbp), %rax
	movq	$0, (%rax)
	movq	-1128(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L68
	cmpl	$0, -28(%rbp)
	je	.L69
	movq	-1128(%rbp), %rax
	movl	104(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-1128(%rbp), %rax
	movq	%rdx, 112(%rax)
.L69:
	movq	-1128(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jl	.L70
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$184, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-1128(%rbp), %rax
	movq	112(%rax), %rax
	subq	-64(%rbp), %rax
	cmpq	$2147483646, %rax
	setle	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L72
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$172, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L72:
	movq	-1128(%rbp), %rax
	movq	112(%rax), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-1128(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L73
	movq	-1128(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jge	.L68
.L73:
	movq	-1128(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 100(%rax)
.L68:
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_print_errors@PLT
	movq	-1128(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L74
	leaq	.LC9(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.9(%rip), %rdx
	movq	-1128(%rbp), %rax
	pushq	-40(%rbp)
	leaq	.LC10(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$184, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L74:
	movq	-1136(%rbp), %rdx
	movq	-1128(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-1144(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-1128(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 100(%rax)
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$190, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1128(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L76
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rdx
	movq	-1128(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L76
	movl	$184, %esi
	jmp	.L77
.L76:
	movl	$159, %esi
.L77:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L75:
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, -72(%rbp)
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_is_error_with_waiting@PLT
	testl	%eax, %eax
	je	.L78
	leaq	.LC12(%rip), %rbx
	jmp	.L79
.L78:
	leaq	.LC13(%rip), %rbx
.L79:
	movl	-72(%rbp), %eax
	movl	%eax, %edi
	call	ossl_cmp_bodytype_to_string@PLT
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.9(%rip), %rsi
	movq	-1128(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	pushq	%rdx
	leaq	.LC14(%rip), %rdx
	pushq	%rdx
	movq	%rdi, %r9
	movl	$204, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
	cmpl	$26, -72(%rbp)
	je	.L80
	cmpl	$19, -72(%rbp)
	je	.L80
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-1128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_extraCertsIn@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L71
.L80:
	movq	-1144(%rbp), %rax
	movq	(%rax), %rsi
	movl	-1148(%rbp), %edx
	leaq	unprotected_exception(%rip), %rdi
	movq	-1128(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_cmp_msg_check_update@PLT
	testl	%eax, %eax
	jne	.L81
	movl	$0, %eax
	jmp	.L71
.L81:
	movl	-72(%rbp), %eax
	cmpl	-1148(%rbp), %eax
	je	.L82
	cmpl	$26, -1148(%rbp)
	jne	.L83
	cmpl	$23, -72(%rbp)
	jne	.L82
	jmp	.L84
.L83:
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_is_error_with_waiting@PLT
	testl	%eax, %eax
	je	.L84
.L82:
	movl	$1, %eax
	jmp	.L71
.L84:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$23, -72(%rbp)
	jne	.L85
	movl	$180, %eax
	jmp	.L86
.L85:
	movl	$133, %eax
.L86:
	movl	$0, %edx
	movl	%eax, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpl	$23, -72(%rbp)
	je	.L87
	movl	-72(%rbp), %eax
	movl	%eax, %edi
	call	ossl_cmp_bodytype_to_string@PLT
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L88
.L87:
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-1128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	save_statusInfo
	testl	%eax, %eax
	je	.L89
	leaq	-1120(%rbp), %rcx
	movq	-1128(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_snprint_PKIStatus@PLT
	testq	%rax, %rax
	je	.L89
	leaq	-1120(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L89:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, %rcx
	leaq	.LC17(%rip), %rdx
	leaq	-1120(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	testl	%eax, %eax
	jle	.L90
	leaq	-1120(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L90:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC18(%rip), %rcx
	movl	$1023, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sk_ASN1_UTF8STRING2text@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L92
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L92
	movq	-96(%rbp), %rax
	leaq	.LC19(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L92:
	leaq	.LC7(%rip), %rcx
	movq	-96(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L91:
	movq	-1128(%rbp), %rax
	movl	464(%rax), %eax
	cmpl	$2, %eax
	je	.L88
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$185, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-1128(%rbp), %rax
	movl	464(%rax), %eax
	cmpl	$3, %eax
	jne	.L88
	movq	-1128(%rbp), %rax
	movl	$2, 464(%rax)
.L88:
	movl	$0, %eax
.L71:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	send_receive_check, .-send_receive_check
	.section	.rodata
	.align 8
.LC20:
	.string	"received 'waiting' PKIStatus, starting to poll for response"
.LC21:
	.string	"%s"
.LC22:
	.string	"value = %jd"
.LC23:
	.string	" with reason = '"
.LC24:
	.string	"%s'"
	.align 8
.LC25:
	.string	"received polling response%s; checkAfter = %ld seconds"
.LC26:
	.string	"polling already started"
	.align 8
.LC27:
	.string	"received final response after polling"
	.text
	.type	poll_for_response, @function
poll_for_response:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1144, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1128(%rbp)
	movl	%esi, -1132(%rbp)
	movl	%edx, -1136(%rbp)
	movq	%rcx, -1144(%rbp)
	movq	%r8, -1152(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -80(%rbp)
	leaq	.LC9(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.8(%rip), %rdx
	movq	-1128(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$288, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-1144(%rbp), %rax
	movq	$0, (%rax)
.L116:
	movl	-1136(%rbp), %edx
	movq	-1128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_pollReq_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L125
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-1128(%rbp), %rax
	movl	$26, %ecx
	movq	%rax, %rdi
	call	send_receive_check
	testl	%eax, %eax
	je	.L126
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$26, %eax
	jne	.L98
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CMP_POLLREP_num
	cmpl	$1, %eax
	jle	.L99
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$307, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$170, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L96
.L99:
	movl	-1136(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_pollrepcontent_get0_pollrep@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L127
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_get_int64@PLT
	testl	%eax, %eax
	jne	.L102
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$315, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L96
.L102:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	js	.L103
	cmpl	$0, -1132(%rbp)
	je	.L104
	movabsq	$18446744073709551, %rax
	jmp	.L105
.L104:
	movl	$2147483647, %eax
.L105:
	movq	-88(%rbp), %rdx
	cmpq	%rdx, %rax
	jnb	.L106
.L103:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$320, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-88(%rbp), %rdx
	leaq	.LC22(%rip), %rsi
	leaq	-1120(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1024, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	testl	%eax, %eax
	js	.L128
	leaq	-1120(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L128
.L106:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L108
	leaq	.LC23(%rip), %rdx
	leaq	-1120(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L109
.L108:
	movb	$0, -1120(%rbp)
	jmp	.L110
.L109:
	movl	-44(%rbp), %eax
	cltq
	movl	$1022, %edx
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC18(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sk_ASN1_UTF8STRING2text@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L111
	movl	-44(%rbp), %eax
	cltq
	movl	$1024, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movl	-44(%rbp), %eax
	cltq
	leaq	-1120(%rbp), %rdx
	leaq	(%rdx,%rax), %rdi
	movq	-56(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_snprintf@PLT
	testl	%eax, %eax
	jns	.L112
.L111:
	movb	$0, -1120(%rbp)
.L112:
	leaq	.LC7(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$339, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L110:
	movq	-88(%rbp), %rsi
	leaq	.LC9(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.8(%rip), %rdx
	movq	-1128(%rbp), %rax
	subq	$8, %rsp
	pushq	%rsi
	leaq	-1120(%rbp), %rsi
	pushq	%rsi
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$341, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
	movq	-1128(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L113
	movl	$2, -60(%rbp)
	movq	-1128(%rbp), %rax
	movq	112(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movl	$0, %edi
	call	time@PLT
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	%rdx, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jg	.L114
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$350, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$184, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L96
.L114:
	movq	-88(%rbp), %rax
	cmpq	%rax, -72(%rbp)
	jge	.L113
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
.L113:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	$0, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	$0, -80(%rbp)
	cmpl	$0, -1132(%rbp)
	je	.L115
	movq	-88(%rbp), %rax
	imulq	$1000, %rax, %rax
	movq	%rax, %rdi
	call	OSSL_sleep@PLT
	jmp	.L116
.L115:
	cmpq	$0, -1152(%rbp)
	je	.L117
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-1152(%rbp), %rax
	movl	%edx, (%rax)
.L117:
	movl	$-1, %eax
	jmp	.L123
.L98:
	movq	-80(%rbp), %rax
	movl	-1136(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	is_crep_with_waiting
	testl	%eax, %eax
	jne	.L119
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_is_error_with_waiting@PLT
	testl	%eax, %eax
	je	.L120
.L119:
	leaq	.LC26(%rip), %rdx
	movq	-1128(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cmp_exchange_error@PLT
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$376, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$185, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L96
.L120:
	leaq	.LC9(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.8(%rip), %rdx
	movq	-1128(%rbp), %rax
	leaq	.LC27(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$379, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-1128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_first_senderNonce@PLT
	testl	%eax, %eax
	jne	.L129
	movl	$0, %eax
	jmp	.L123
.L129:
	nop
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L130
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-80(%rbp), %rdx
	movq	-1144(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L123
.L125:
	nop
	jmp	.L96
.L126:
	nop
	jmp	.L96
.L127:
	nop
	jmp	.L96
.L128:
	nop
	jmp	.L96
.L130:
	nop
.L96:
	movq	-1128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_first_senderNonce@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	$0, %eax
.L123:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	poll_for_response, .-poll_for_response
	.type	save_senderNonce_if_waiting, @function
save_senderNonce_if_waiting:
.LFB744:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	is_crep_with_waiting
	testl	%eax, %eax
	jne	.L132
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_is_error_with_waiting@PLT
	testl	%eax, %eax
	je	.L133
.L132:
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_first_senderNonce@PLT
	testl	%eax, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L134
.L133:
	movl	$1, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	save_senderNonce_if_waiting, .-save_senderNonce_if_waiting
	.type	send_receive_also_delayed, @function
send_receive_also_delayed:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	send_receive_check
	testl	%eax, %eax
	jne	.L136
	movl	$0, %eax
	jmp	.L137
.L136:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_is_error_with_waiting@PLT
	testl	%eax, %eax
	je	.L138
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	save_senderNonce_if_waiting
	testl	%eax, %eax
	jne	.L139
	movl	$0, %eax
	jmp	.L137
.L139:
	cmpl	$19, -28(%rbp)
	je	.L140
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	save_statusInfo
	testl	%eax, %eax
	jne	.L140
	movl	$0, %eax
	jmp	.L137
.L140:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$-1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	poll_for_response
	testl	%eax, %eax
	jg	.L138
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$439, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L137
.L138:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	%eax, -28(%rbp)
	je	.L141
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$444, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L137
.L141:
	movl	$1, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	send_receive_also_delayed, .-send_receive_also_delayed
	.globl	ossl_cmp_exchange_certConf
	.type	ossl_cmp_exchange_certConf, @function
ossl_cmp_exchange_certConf:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rcx
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_certConf_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L146
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$19, %ecx
	movq	%rax, %rdi
	call	send_receive_also_delayed
	movl	%eax, -4(%rbp)
	jmp	.L144
.L146:
	nop
.L144:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ossl_cmp_exchange_certConf, .-ossl_cmp_exchange_certConf
	.globl	ossl_cmp_exchange_error
	.type	ossl_cmp_exchange_error, @function
ossl_cmp_exchange_error:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-56(%rbp), %rdx
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L152
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_cmp_error_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L153
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$19, %ecx
	movq	%rax, %rdi
	call	send_receive_also_delayed
	movl	%eax, -12(%rbp)
	jmp	.L149
.L152:
	nop
	jmp	.L149
.L153:
	nop
.L149:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ossl_cmp_exchange_error, .-ossl_cmp_exchange_error
	.section	.rodata
.LC28:
	.string	"ERROR"
	.align 8
.LC29:
	.string	"received \"waiting\" status for cert when actually aiming to extract cert"
	.align 8
.LC30:
	.string	"received \"grantedWithMods\" for certificate"
	.align 8
.LC31:
	.string	"received \"rejection\" status rather than cert"
	.align 8
.LC32:
	.string	"received \"revocationWarning\" - a revocation of the cert is imminent"
	.align 8
.LC33:
	.string	"received \"revocationNotification\" - a revocation of the cert has occurred"
	.align 8
.LC34:
	.string	"received unsupported PKIStatus %d for certificate"
	.text
	.type	get1_cert_status, @function
get1_cert_status:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1072, %rsp
	movq	%rdi, -1048(%rbp)
	movl	%esi, -1052(%rbp)
	movq	%rdx, -1064(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -1048(%rbp)
	je	.L155
	cmpq	$0, -1064(%rbp)
	je	.L155
	movl	$1, %eax
	jmp	.L156
.L155:
	movl	$0, %eax
.L156:
	cltq
	testq	%rax, %rax
	jne	.L157
	movl	$0, %eax
	jmp	.L172
.L157:
	movq	-1064(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	cmpl	$6, %eax
	je	.L159
	cmpl	$6, %eax
	jg	.L160
	cmpl	$5, %eax
	je	.L161
	cmpl	$5, %eax
	jg	.L160
	cmpl	$4, %eax
	je	.L162
	cmpl	$4, %eax
	jg	.L160
	cmpl	$3, %eax
	je	.L163
	cmpl	$3, %eax
	jg	.L160
	cmpl	$2, %eax
	je	.L164
	cmpl	$2, %eax
	jg	.L160
	testl	%eax, %eax
	je	.L173
	cmpl	$1, %eax
	je	.L166
	jmp	.L160
.L163:
	leaq	.LC28(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.6(%rip), %rdx
	movq	-1048(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$517, %r8d
	movq	%rax, %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$519, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$162, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L167
.L166:
	leaq	.LC6(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.6(%rip), %rdx
	movq	-1048(%rbp), %rax
	leaq	.LC30(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$522, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L168
.L164:
	leaq	.LC28(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.6(%rip), %rdx
	movq	-1048(%rbp), %rax
	leaq	.LC31(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$528, %r8d
	movq	%rax, %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$529, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$182, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L167
.L162:
	leaq	.LC6(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.6(%rip), %rdx
	movq	-1048(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$532, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L168
.L161:
	leaq	.LC6(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.6(%rip), %rdx
	movq	-1048(%rbp), %rax
	leaq	.LC33(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$536, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L168
.L159:
	cmpl	$7, -1052(%rbp)
	je	.L174
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$541, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L167
.L160:
	movq	-1048(%rbp), %rax
	movl	464(%rax), %esi
	leaq	.LC28(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.6(%rip), %rdx
	movq	-1048(%rbp), %rax
	pushq	%rsi
	leaq	.LC34(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$546, %r8d
	movq	%rax, %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$549, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$186, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L167
.L173:
	nop
	jmp	.L168
.L174:
	nop
.L168:
	movq	-1064(%rbp), %rdx
	movq	-1048(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_certresponse_get1_cert@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L170
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$554, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L170:
	movq	-8(%rbp), %rax
	jmp	.L172
.L167:
	leaq	-1040(%rbp), %rcx
	movq	-1048(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_snprint_PKIStatus@PLT
	testq	%rax, %rax
	je	.L171
	leaq	-1040(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L171:
	movl	$0, %eax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	get1_cert_status, .-get1_cert_status
	.section	.rodata
.LC35:
	.string	"DEBUG"
	.align 8
.LC36:
	.string	"trying to build chain for newly enrolled cert"
	.align 8
.LC37:
	.string	"validating newly enrolled cert"
	.align 8
.LC38:
	.string	"failed to validate newly enrolled cert"
	.align 8
.LC39:
	.string	"success validating newly enrolled cert"
	.align 8
.LC40:
	.string	"could not build approximate chain for newly enrolled cert, resorting to received extraCerts"
	.align 8
.LC41:
	.string	"success building approximate chain for newly enrolled cert"
	.text
	.globl	OSSL_CMP_certConf_cb
	.type	OSSL_CMP_certConf_cb, @function
OSSL_CMP_certConf_cb:
.LFB749:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_certConf_cb_arg@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L176
	movl	-52(%rbp), %eax
	jmp	.L189
.L176:
	cmpq	$0, -8(%rbp)
	jne	.L178
	leaq	.LC35(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.5(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC36(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$593, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	176(%rax), %rsi
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_build_chain@PLT
	movq	%rax, -24(%rbp)
	jmp	.L179
.L178:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC35(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.5(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC37(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$599, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	cmpq	$0, -16(%rbp)
	je	.L190
	movq	-40(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	je	.L191
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_param@PLT
	movq	$-2621571, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_clear_flags@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	testl	%eax, %eax
	jle	.L192
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_chain@PLT
	movq	%rax, %rcx
	leaq	-24(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_add_certs_new@PLT
	testl	%eax, %eax
	jne	.L193
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L181
.L190:
	nop
	jmp	.L181
.L191:
	nop
	jmp	.L181
.L192:
	nop
	jmp	.L181
.L193:
	nop
.L181:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
.L179:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L184
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_shift@PLT
	movq	%rax, %rdi
	call	X509_free@PLT
.L184:
	cmpq	$0, -8(%rbp)
	je	.L185
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L186
	leaq	.LC28(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.5(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$627, %r8d
	movq	%rax, %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$128, -52(%rbp)
	jmp	.L187
.L186:
	leaq	.LC35(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.5(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC39(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$630, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L187
.L185:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L188
	leaq	.LC6(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.5(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC40(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$634, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get1_extraCertsIn@PLT
	movq	%rax, -24(%rbp)
	jmp	.L187
.L188:
	leaq	.LC35(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.5(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC41(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$637, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L187:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_newChain@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	-52(%rbp), %eax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	OSSL_CMP_certConf_cb, .-OSSL_CMP_certConf_cb
	.section	.rodata
	.align 8
.LC42:
	.string	"; cannot extract certificate from response"
	.align 8
.LC43:
	.string	"public key in new certificate does not match our enrollment key"
.LC44:
	.string	"CMP client did not accept it"
	.align 8
.LC45:
	.string	"rejecting newly enrolled cert with subject: %s"
	.align 8
.LC46:
	.string	"rejecting newly enrolled cert with subject: %s; %s"
	.text
	.type	cert_response, @function
cert_response:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%r8, -128(%rbp)
	movl	%r9d, -132(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_ctx_get0_newPubkey@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -64(%rbp)
	movl	$1, -36(%rbp)
	cmpq	$0, -104(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L221
	movl	$0, %eax
	jmp	.L220
.L221:
	nop
.L195:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, -68(%rbp)
	cmpl	$1, -68(%rbp)
	je	.L197
	cmpl	$3, -68(%rbp)
	je	.L197
	cmpl	$8, -68(%rbp)
	jne	.L198
.L197:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	jle	.L199
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$679, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$170, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L220
.L199:
	movl	-112(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certrepmessage_get0_certresponse@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L200
	movl	$0, %eax
	jmp	.L220
.L200:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$-1, -112(%rbp)
	jne	.L222
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_asn1_get_int@PLT
	movl	%eax, -112(%rbp)
	cmpl	$-1, -112(%rbp)
	jge	.L222
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$691, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L220
.L198:
	cmpl	$23, -68(%rbp)
	jne	.L203
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L202
.L203:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$698, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L220
.L222:
	nop
.L202:
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	save_statusInfo
	testl	%eax, %eax
	jne	.L204
	movl	$0, %eax
	jmp	.L220
.L204:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	cmpl	$3, %eax
	jne	.L205
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movl	-112(%rbp), %edx
	movl	-108(%rbp), %esi
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	poll_for_response
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L206
	cmpl	$-1, -36(%rbp)
	jne	.L195
	movl	-36(%rbp), %eax
	jmp	.L220
.L206:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$718, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L220
.L205:
	cmpl	$23, -68(%rbp)
	jne	.L208
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$725, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L220
.L208:
	movl	-68(%rbp), %eax
	cmpl	16(%rbp), %eax
	je	.L209
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$730, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L220
.L209:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get1_cert_status
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L210
	leaq	.LC42(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	movl	$0, %eax
	jmp	.L220
.L210:
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set0_newCert@PLT
	testl	%eax, %eax
	jne	.L211
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
	jmp	.L220
.L211:
	cmpq	$0, -16(%rbp)
	je	.L212
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L212
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_caPubs@PLT
	testl	%eax, %eax
	jne	.L212
	movl	$0, %eax
	jmp	.L220
.L212:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L213
	movq	-104(%rbp), %rax
	movq	488(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L213
	movl	$128, -4(%rbp)
	leaq	.LC43(%rip), %rax
	movq	%rax, -88(%rbp)
.L213:
	movq	-104(%rbp), %rax
	movq	520(%rax), %rax
	testq	%rax, %rax
	je	.L214
	movq	-104(%rbp), %rax
	movq	520(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L215
.L214:
	movq	OSSL_CMP_certConf_cb@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
.L215:
	movq	-104(%rbp), %rax
	movq	488(%rax), %rsi
	leaq	-88(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L216
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L216
	leaq	.LC44(%rip), %rax
	movq	%rax, -88(%rbp)
.L216:
	cmpl	$0, -4(%rbp)
	je	.L217
	leaq	.LC28(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.4(%rip), %rdx
	movq	-104(%rbp), %rax
	pushq	-64(%rbp)
	leaq	.LC45(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$777, %r8d
	movq	%rax, %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L217:
	movq	-104(%rbp), %rax
	movl	332(%rax), %eax
	testl	%eax, %eax
	jne	.L218
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_has_implicitConfirm@PLT
	testl	%eax, %eax
	jne	.L218
	movq	-88(%rbp), %rcx
	movl	-4(%rbp), %edx
	movl	-112(%rbp), %esi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_exchange_certConf@PLT
	testl	%eax, %eax
	jne	.L218
	movl	$0, -36(%rbp)
.L218:
	cmpl	$0, -4(%rbp)
	je	.L219
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$791, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$169, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-104(%rbp), %rax
	movl	$2, 464(%rax)
	movl	$0, -36(%rbp)
.L219:
	leaq	.LC7(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$797, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-36(%rbp), %eax
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	cert_response, .-cert_response
	.type	initial_certreq, @function
initial_certreq:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$-3, 464(%rax)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set0_newCert@PLT
	testl	%eax, %eax
	jne	.L224
	movl	$0, %eax
	jmp	.L225
.L224:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certreq_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L226
	movl	$0, %eax
	jmp	.L225
.L226:
	movq	-24(%rbp), %rax
	movl	$-2, 464(%rax)
	movl	-32(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	send_receive_check
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	-12(%rbp), %eax
.L225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	initial_certreq, .-initial_certreq
	.section	.rodata
.LC47:
	.string	"by application"
.LC48:
	.string	"polling aborted"
	.text
	.globl	OSSL_CMP_try_certreq
	.type	OSSL_CMP_try_certreq, @function
OSSL_CMP_try_certreq:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$4, -44(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L228
	movl	$-1, -4(%rbp)
	jmp	.L229
.L228:
	movl	$0, -4(%rbp)
.L229:
	cmpl	$0, -16(%rbp)
	jne	.L230
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L231
.L230:
	movl	$3, -8(%rbp)
.L231:
	movl	$0, -12(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L232
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$832, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L239
.L232:
	movq	-40(%rbp), %rax
	movl	464(%rax), %eax
	cmpl	$3, %eax
	je	.L234
	movl	-8(%rbp), %edi
	leaq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	initial_certreq
	testl	%eax, %eax
	je	.L240
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	save_senderNonce_if_waiting
	testl	%eax, %eax
	jne	.L237
	movl	$0, %eax
	jmp	.L239
.L234:
	cmpl	$0, -44(%rbp)
	jns	.L238
	leaq	.LC47(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_cmp_exchange_error@PLT
	jmp	.L239
.L238:
	movq	-64(%rbp), %rsi
	leaq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	poll_for_response
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L237
	movl	-12(%rbp), %eax
	jmp	.L239
.L237:
	movl	-44(%rbp), %r8d
	movq	-64(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	movl	-8(%rbp), %esi
	pushq	%rsi
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	cert_response
	addq	$16, %rsp
	movl	%eax, -12(%rbp)
	jmp	.L236
.L240:
	nop
.L236:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	-12(%rbp), %eax
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	OSSL_CMP_try_certreq, .-OSSL_CMP_try_certreq
	.globl	OSSL_CMP_exec_certreq
	.type	OSSL_CMP_exec_certreq, @function
OSSL_CMP_exec_certreq:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$4, -44(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L242
	movl	$-1, -4(%rbp)
	jmp	.L243
.L242:
	movl	$0, -4(%rbp)
.L243:
	cmpl	$0, -20(%rbp)
	jne	.L244
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L245
.L244:
	movl	$3, -8(%rbp)
.L245:
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L246
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$876, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L252
.L246:
	movl	-8(%rbp), %edi
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	initial_certreq
	testl	%eax, %eax
	je	.L253
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	save_senderNonce_if_waiting
	testl	%eax, %eax
	jne	.L250
	movl	$0, %eax
	jmp	.L252
.L250:
	movl	-44(%rbp), %edi
	leaq	-32(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	movl	-8(%rbp), %esi
	pushq	%rsi
	movl	%edi, %r9d
	movl	$0, %r8d
	movl	$1, %esi
	movq	%rax, %rdi
	call	cert_response
	addq	$16, %rsp
	testl	%eax, %eax
	jle	.L254
	movq	-40(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L249
.L253:
	nop
	jmp	.L249
.L254:
	nop
.L249:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-16(%rbp), %rax
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	OSSL_CMP_exec_certreq, .-OSSL_CMP_exec_certreq
	.section	.rodata
	.align 8
.LC49:
	.string	"revocation accepted (PKIStatus=accepted)"
	.align 8
.LC50:
	.string	"revocation accepted (PKIStatus=grantedWithMods)"
	.align 8
.LC51:
	.string	"revocation accepted (PKIStatus=revocationWarning)"
	.align 8
.LC52:
	.string	"revocation accepted (PKIStatus=revocationNotification)"
	.text
	.globl	OSSL_CMP_exec_RR_ses
	.type	OSSL_CMP_exec_RR_ses, @function
OSSL_CMP_exec_RR_ses:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1120, %rsp
	movq	%rdi, -1112(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -80(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -1112(%rbp)
	jne	.L256
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$908, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L278
.L256:
	movq	-1112(%rbp), %rax
	movl	$-3, 464(%rax)
	movq	-1112(%rbp), %rax
	movq	432(%rax), %rax
	testq	%rax, %rax
	jne	.L258
	movq	-1112(%rbp), %rax
	movq	440(%rax), %rax
	testq	%rax, %rax
	jne	.L258
	movq	-1112(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L259
	movq	-1112(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L258
.L259:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$914, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$168, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L278
.L258:
	movq	-1112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_rr_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L279
	movq	-1112(%rbp), %rax
	movl	$-2, 464(%rax)
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-1112(%rbp), %rax
	movl	$12, %ecx
	movq	%rax, %rdi
	call	send_receive_also_delayed
	testl	%eax, %eax
	je	.L280
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_PKISI_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	je	.L263
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$929, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L261
.L263:
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_revrepcontent_get_pkisi@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-1112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	save_statusInfo
	testl	%eax, %eax
	je	.L281
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	cmpl	$6, %eax
	je	.L266
	cmpl	$6, %eax
	jg	.L267
	cmpl	$5, %eax
	je	.L268
	cmpl	$5, %eax
	jg	.L267
	cmpl	$4, %eax
	je	.L269
	cmpl	$4, %eax
	jg	.L267
	cmpl	$3, %eax
	je	.L266
	cmpl	$3, %eax
	jg	.L267
	cmpl	$2, %eax
	je	.L270
	cmpl	$2, %eax
	jg	.L267
	testl	%eax, %eax
	je	.L271
	cmpl	$1, %eax
	je	.L272
	jmp	.L267
.L271:
	leaq	.LC9(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-1112(%rbp), %rax
	leaq	.LC49(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$945, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$1, -4(%rbp)
	jmp	.L273
.L272:
	leaq	.LC9(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-1112(%rbp), %rax
	leaq	.LC50(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$949, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$1, -4(%rbp)
	jmp	.L273
.L270:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$953, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$182, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L265
.L269:
	leaq	.LC9(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-1112(%rbp), %rax
	leaq	.LC51(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$956, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$1, -4(%rbp)
	jmp	.L273
.L268:
	leaq	.LC6(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-1112(%rbp), %rax
	leaq	.LC52(%rip), %rsi
	pushq	%rsi
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$961, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$1, -4(%rbp)
	jmp	.L273
.L266:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$967, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$185, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L265
.L267:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$970, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$186, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L265
.L273:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CRMF_CERTID_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L274
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CMP_REVDETAILS_value
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTTEMPLATE_get0_issuer@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTTEMPLATE_get0_serialNumber@PLT
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CRMF_CERTID_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	je	.L275
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$984, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L265
.L275:
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_revrepcontent_get_CertId@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L276
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$989, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$165, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L265
.L276:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_get0_issuer@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	je	.L277
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$995, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$187, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L265
.L277:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_get0_serialNumber@PLT
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	je	.L274
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$1003, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L265
.L274:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L282
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	je	.L282
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$1012, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L265
.L281:
	nop
	jmp	.L265
.L282:
	nop
.L265:
	cmpl	$0, -4(%rbp)
	jne	.L283
	leaq	-1104(%rbp), %rcx
	movq	-1112(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_snprint_PKIStatus@PLT
	testq	%rax, %rax
	je	.L283
	leaq	-1104(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L261
.L279:
	nop
	jmp	.L261
.L280:
	nop
	jmp	.L261
.L283:
	nop
.L261:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	-4(%rbp), %eax
.L278:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	OSSL_CMP_exec_RR_ses, .-OSSL_CMP_exec_RR_ses
	.globl	OSSL_CMP_exec_GENM_ses
	.type	OSSL_CMP_exec_GENM_ses, @function
OSSL_CMP_exec_GENM_ses:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L285
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$1035, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L291
.L285:
	movq	-40(%rbp), %rax
	movl	$-3, 464(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_genm_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L292
	movq	-40(%rbp), %rax
	movl	$-2, 464(%rax)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$22, %ecx
	movq	%rax, %rdi
	call	send_receive_also_delayed
	testl	%eax, %eax
	je	.L293
	movq	-40(%rbp), %rax
	movl	$0, 464(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L290
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -8(%rbp)
.L290:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
	jmp	.L288
.L292:
	nop
	jmp	.L288
.L293:
	nop
.L288:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-8(%rbp), %rax
.L291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	OSSL_CMP_exec_GENM_ses, .-OSSL_CMP_exec_GENM_ses
	.section	.rodata
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 22
__func__.10:
	.string	"unprotected_exception"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 19
__func__.9:
	.string	"send_receive_check"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 18
__func__.8:
	.string	"poll_for_response"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 26
__func__.7:
	.string	"send_receive_also_delayed"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 17
__func__.6:
	.string	"get1_cert_status"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 21
__func__.5:
	.string	"OSSL_CMP_certConf_cb"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"cert_response"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 21
__func__.3:
	.string	"OSSL_CMP_try_certreq"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"OSSL_CMP_exec_certreq"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"OSSL_CMP_exec_RR_ses"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"OSSL_CMP_exec_GENM_ses"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
