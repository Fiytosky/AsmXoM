	.file	"cmp_msg.c"
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
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
.LFB433:
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
.LFE433:
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
.LFB434:
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
.LFE434:
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_freefunc_type, @function
ossl_check_X509_EXTENSION_freefunc_type:
.LFB437:
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
.LFE437:
	.size	ossl_check_X509_EXTENSION_freefunc_type, .-ossl_check_X509_EXTENSION_freefunc_type
	.type	ossl_check_const_GENERAL_NAME_sk_type, @function
ossl_check_const_GENERAL_NAME_sk_type:
.LFB522:
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
.LFE522:
	.size	ossl_check_const_GENERAL_NAME_sk_type, .-ossl_check_const_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_NAME_sk_type, @function
ossl_check_GENERAL_NAME_sk_type:
.LFB523:
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
.LFE523:
	.size	ossl_check_GENERAL_NAME_sk_type, .-ossl_check_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_NAME_freefunc_type, @function
ossl_check_GENERAL_NAME_freefunc_type:
.LFB526:
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
.LFE526:
	.size	ossl_check_GENERAL_NAME_freefunc_type, .-ossl_check_GENERAL_NAME_freefunc_type
	.type	ossl_check_OSSL_CRMF_MSG_type, @function
ossl_check_OSSL_CRMF_MSG_type:
.LFB617:
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
.LFE617:
	.size	ossl_check_OSSL_CRMF_MSG_type, .-ossl_check_OSSL_CRMF_MSG_type
	.type	ossl_check_const_OSSL_CRMF_MSG_sk_type, @function
ossl_check_const_OSSL_CRMF_MSG_sk_type:
.LFB618:
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
.LFE618:
	.size	ossl_check_const_OSSL_CRMF_MSG_sk_type, .-ossl_check_const_OSSL_CRMF_MSG_sk_type
	.type	ossl_check_OSSL_CRMF_MSG_sk_type, @function
ossl_check_OSSL_CRMF_MSG_sk_type:
.LFB619:
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
.LFE619:
	.size	ossl_check_OSSL_CRMF_MSG_sk_type, .-ossl_check_OSSL_CRMF_MSG_sk_type
	.type	ossl_check_OSSL_CRMF_CERTID_type, @function
ossl_check_OSSL_CRMF_CERTID_type:
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
	.size	ossl_check_OSSL_CRMF_CERTID_type, .-ossl_check_OSSL_CRMF_CERTID_type
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
	.type	ossl_check_OSSL_CRMF_CERTID_sk_type, @function
ossl_check_OSSL_CRMF_CERTID_sk_type:
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
	.size	ossl_check_OSSL_CRMF_CERTID_sk_type, .-ossl_check_OSSL_CRMF_CERTID_sk_type
	.type	ossl_check_OSSL_CMP_CERTSTATUS_type, @function
ossl_check_OSSL_CMP_CERTSTATUS_type:
.LFB629:
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
.LFE629:
	.size	ossl_check_OSSL_CMP_CERTSTATUS_type, .-ossl_check_OSSL_CMP_CERTSTATUS_type
	.type	ossl_check_OSSL_CMP_CERTSTATUS_sk_type, @function
ossl_check_OSSL_CMP_CERTSTATUS_sk_type:
.LFB631:
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
.LFE631:
	.size	ossl_check_OSSL_CMP_CERTSTATUS_sk_type, .-ossl_check_OSSL_CMP_CERTSTATUS_sk_type
	.type	ossl_check_const_OSSL_CMP_ITAV_sk_type, @function
ossl_check_const_OSSL_CMP_ITAV_sk_type:
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
	.size	ossl_check_const_OSSL_CMP_ITAV_sk_type, .-ossl_check_const_OSSL_CMP_ITAV_sk_type
	.type	ossl_check_OSSL_CMP_PKISI_type, @function
ossl_check_OSSL_CMP_PKISI_type:
.LFB641:
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
.LFE641:
	.size	ossl_check_OSSL_CMP_PKISI_type, .-ossl_check_OSSL_CMP_PKISI_type
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
	.type	ossl_check_OSSL_CMP_PKISI_sk_type, @function
ossl_check_OSSL_CMP_PKISI_sk_type:
.LFB643:
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
.LFE643:
	.size	ossl_check_OSSL_CMP_PKISI_sk_type, .-ossl_check_OSSL_CMP_PKISI_sk_type
	.type	ossl_check_OSSL_CMP_CERTRESPONSE_type, @function
ossl_check_OSSL_CMP_CERTRESPONSE_type:
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
	.size	ossl_check_OSSL_CMP_CERTRESPONSE_type, .-ossl_check_OSSL_CMP_CERTRESPONSE_type
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
	.type	ossl_check_OSSL_CMP_CERTRESPONSE_sk_type, @function
ossl_check_OSSL_CMP_CERTRESPONSE_sk_type:
.LFB655:
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
.LFE655:
	.size	ossl_check_OSSL_CMP_CERTRESPONSE_sk_type, .-ossl_check_OSSL_CMP_CERTRESPONSE_sk_type
	.type	sk_OSSL_CMP_REVDETAILS_new_null, @function
sk_OSSL_CMP_REVDETAILS_new_null:
.LFB667:
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
.LFE667:
	.size	sk_OSSL_CMP_REVDETAILS_new_null, .-sk_OSSL_CMP_REVDETAILS_new_null
	.type	sk_OSSL_CMP_REVDETAILS_push, @function
sk_OSSL_CMP_REVDETAILS_push:
.LFB674:
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
.LFE674:
	.size	sk_OSSL_CMP_REVDETAILS_push, .-sk_OSSL_CMP_REVDETAILS_push
	.type	sk_OSSL_CMP_POLLREQ_new_null, @function
sk_OSSL_CMP_POLLREQ_new_null:
.LFB692:
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
.LFE692:
	.size	sk_OSSL_CMP_POLLREQ_new_null, .-sk_OSSL_CMP_POLLREQ_new_null
	.type	sk_OSSL_CMP_POLLREQ_push, @function
sk_OSSL_CMP_POLLREQ_push:
.LFB699:
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
.LFE699:
	.size	sk_OSSL_CMP_POLLREQ_push, .-sk_OSSL_CMP_POLLREQ_push
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
	.type	sk_OSSL_CMP_POLLREP_value, @function
sk_OSSL_CMP_POLLREP_value:
.LFB715:
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
.LFE715:
	.size	sk_OSSL_CMP_POLLREP_value, .-sk_OSSL_CMP_POLLREP_value
	.type	sk_OSSL_CMP_POLLREP_new_null, @function
sk_OSSL_CMP_POLLREP_new_null:
.LFB717:
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
.LFE717:
	.size	sk_OSSL_CMP_POLLREP_new_null, .-sk_OSSL_CMP_POLLREP_new_null
	.type	sk_OSSL_CMP_POLLREP_push, @function
sk_OSSL_CMP_POLLREP_push:
.LFB724:
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
.LFE724:
	.size	sk_OSSL_CMP_POLLREP_push, .-sk_OSSL_CMP_POLLREP_push
	.globl	OSSL_CMP_MSG_new
	.type	OSSL_CMP_MSG_new, @function
OSSL_CMP_MSG_new:
.LFB745:
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
	call	OSSL_CMP_MSG_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L66
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	$0, -8(%rbp)
.L66:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	OSSL_CMP_MSG_new, .-OSSL_CMP_MSG_new
	.globl	OSSL_CMP_MSG_free
	.type	OSSL_CMP_MSG_free, @function
OSSL_CMP_MSG_free:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OSSL_CMP_MSG_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	OSSL_CMP_MSG_free, .-OSSL_CMP_MSG_free
	.section	.rodata
.LC0:
	.string	"../crypto/cmp/cmp_msg.c"
	.text
	.globl	ossl_cmp_msg_set0_libctx
	.type	ossl_cmp_msg_set0_libctx, @function
ossl_cmp_msg_set0_libctx:
.LFB747:
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
	cmpq	$0, -8(%rbp)
	je	.L70
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	cmpq	$0, -24(%rbp)
	je	.L70
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ossl_cmp_msg_set0_libctx, .-ossl_cmp_msg_set0_libctx
	.globl	OSSL_CMP_MSG_get0_header
	.type	OSSL_CMP_MSG_get0_header, @function
OSSL_CMP_MSG_get0_header:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L73
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L74
.L73:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	OSSL_CMP_MSG_get0_header, .-OSSL_CMP_MSG_get0_header
	.section	.rodata
.LC1:
	.string	"illegal body type"
	.text
	.globl	ossl_cmp_bodytype_to_string
	.type	ossl_cmp_bodytype_to_string, @function
ossl_cmp_bodytype_to_string:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L76
	cmpl	$26, -4(%rbp)
	jle	.L77
.L76:
	leaq	.LC1(%rip), %rax
	jmp	.L78
.L77:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	type_names.24(%rip), %rax
	movq	(%rdx,%rax), %rax
.L78:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	ossl_cmp_bodytype_to_string, .-ossl_cmp_bodytype_to_string
	.globl	ossl_cmp_msg_set_bodytype
	.type	ossl_cmp_msg_set_bodytype, @function
ossl_cmp_msg_set_bodytype:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L80
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movl	$1, %eax
	jmp	.L81
.L80:
	movl	$0, %eax
.L81:
	cltq
	testq	%rax, %rax
	jne	.L82
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L83:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	ossl_cmp_msg_set_bodytype, .-ossl_cmp_msg_set_bodytype
	.globl	OSSL_CMP_MSG_get_bodytype
	.type	OSSL_CMP_MSG_get_bodytype, @function
OSSL_CMP_MSG_get_bodytype:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L85
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movl	$1, %eax
	jmp	.L86
.L85:
	movl	$0, %eax
.L86:
	cltq
	testq	%rax, %rax
	jne	.L87
	movl	$-1, %eax
	jmp	.L88
.L87:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
.L88:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	OSSL_CMP_MSG_get_bodytype, .-OSSL_CMP_MSG_get_bodytype
	.globl	OSSL_CMP_MSG_get0_certreq_publickey
	.type	OSSL_CMP_MSG_get0_certreq_publickey, @function
OSSL_CMP_MSG_get0_certreq_publickey:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$7, %eax
	je	.L90
	cmpl	$7, %eax
	jg	.L91
	testl	%eax, %eax
	je	.L90
	cmpl	$2, %eax
	jne	.L91
.L90:
	movq	-40(%rbp), %rax
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
	jne	.L92
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$157, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L92:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_get0_tmpl@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L94
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTTEMPLATE_get0_publicKey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L95
.L94:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L95:
	movq	-32(%rbp), %rax
	jmp	.L93
.L91:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	OSSL_CMP_MSG_get0_certreq_publickey, .-OSSL_CMP_MSG_get0_certreq_publickey
	.type	add1_extension, @function
add1_extension:
.LFB753:
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
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L97
	movl	$0, %eax
	jmp	.L98
.L97:
	movq	-40(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	X509V3_EXT_i2d@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L98
.L99:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_add_ext@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movl	-12(%rbp), %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	add1_extension, .-add1_extension
	.type	add_extensions, @function
add_extensions:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L101
	movl	$0, %eax
	jmp	.L102
.L101:
	movl	$0, -4(%rbp)
	jmp	.L103
.L107:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_OBJ@PLT
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L104
.L105:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_delete@PLT
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_OBJ@PLT
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.L105
.L104:
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_add_ext@PLT
	testq	%rax, %rax
	jne	.L106
	movl	$0, %eax
	jmp	.L102
.L106:
	addl	$1, -4(%rbp)
.L103:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L107
	movl	$1, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	add_extensions, .-add_extensions
	.type	add_crl_reason_extension, @function
add_crl_reason_extension:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	call	ASN1_ENUMERATED_new@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L109
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_set@PLT
	testl	%eax, %eax
	je	.L109
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$141, %esi
	movq	%rax, %rdi
	call	add1_extension
	movl	%eax, -4(%rbp)
.L109:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	add_crl_reason_extension, .-add_crl_reason_extension
	.globl	ossl_cmp_msg_create
	.type	ossl_cmp_msg_create, @function
ossl_cmp_msg_create:
.LFB756:
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
	movl	%esi, -44(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L112
	movl	$0, %eax
	jmp	.L113
.L112:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L114
	movl	$0, %eax
	jmp	.L113
.L114:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_init@PLT
	testl	%eax, %eax
	je	.L143
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_set_bodytype@PLT
	testl	%eax, %eax
	je	.L143
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-40(%rbp), %rax
	movq	320(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_generalInfo_push1_items@PLT
	testl	%eax, %eax
	je	.L144
.L118:
	cmpl	$26, -44(%rbp)
	je	.L119
	cmpl	$26, -44(%rbp)
	jg	.L120
	cmpl	$25, -44(%rbp)
	je	.L121
	cmpl	$25, -44(%rbp)
	jg	.L120
	cmpl	$24, -44(%rbp)
	je	.L122
	cmpl	$24, -44(%rbp)
	jg	.L120
	cmpl	$23, -44(%rbp)
	je	.L123
	cmpl	$23, -44(%rbp)
	jg	.L120
	cmpl	$22, -44(%rbp)
	jg	.L120
	cmpl	$21, -44(%rbp)
	jge	.L124
	cmpl	$19, -44(%rbp)
	je	.L125
	cmpl	$19, -44(%rbp)
	jg	.L120
	cmpl	$12, -44(%rbp)
	je	.L126
	cmpl	$12, -44(%rbp)
	jg	.L120
	cmpl	$11, -44(%rbp)
	je	.L127
	cmpl	$11, -44(%rbp)
	jg	.L120
	cmpl	$8, -44(%rbp)
	je	.L128
	cmpl	$8, -44(%rbp)
	jg	.L120
	cmpl	$7, -44(%rbp)
	je	.L129
	cmpl	$7, -44(%rbp)
	jg	.L120
	cmpl	$4, -44(%rbp)
	je	.L130
	cmpl	$4, -44(%rbp)
	jg	.L120
	cmpl	$3, -44(%rbp)
	je	.L128
	cmpl	$3, -44(%rbp)
	jg	.L120
	cmpl	$2, -44(%rbp)
	je	.L129
	cmpl	$2, -44(%rbp)
	jg	.L120
	cmpl	$0, -44(%rbp)
	je	.L129
	cmpl	$1, -44(%rbp)
	je	.L128
	jmp	.L120
.L129:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_CRMF_MSGS_new@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L145
	movq	-24(%rbp), %rax
	jmp	.L113
.L130:
	movq	-40(%rbp), %rax
	movq	440(%rax), %rax
	testq	%rax, %rax
	jne	.L132
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L117
.L132:
	movq	-40(%rbp), %rax
	movq	440(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rbx
	movq	%rax, %rdi
	call	X509_REQ_dup@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L146
	movq	-24(%rbp), %rax
	jmp	.L113
.L128:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_CMP_CERTREPMESSAGE_new@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L147
	movq	-24(%rbp), %rax
	jmp	.L113
.L127:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	sk_OSSL_CMP_REVDETAILS_new_null
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L148
	movq	-24(%rbp), %rax
	jmp	.L113
.L126:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_CMP_REVREPCONTENT_new@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L149
	movq	-24(%rbp), %rax
	jmp	.L113
.L122:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L150
	movq	-24(%rbp), %rax
	jmp	.L113
.L125:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	ASN1_TYPE_new@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L151
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
	movq	-24(%rbp), %rax
	jmp	.L113
.L121:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	sk_OSSL_CMP_POLLREQ_new_null
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L152
	movq	-24(%rbp), %rax
	jmp	.L113
.L119:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	sk_OSSL_CMP_POLLREP_new_null
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L153
	movq	-24(%rbp), %rax
	jmp	.L113
.L124:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L154
	movq	-24(%rbp), %rax
	jmp	.L113
.L123:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_CMP_ERRORMSGCONTENT_new@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L155
	movq	-24(%rbp), %rax
	jmp	.L113
.L120:
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$270, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L117
.L143:
	nop
	jmp	.L117
.L144:
	nop
	jmp	.L117
.L145:
	nop
	jmp	.L117
.L146:
	nop
	jmp	.L117
.L147:
	nop
	jmp	.L117
.L148:
	nop
	jmp	.L117
.L149:
	nop
	jmp	.L117
.L150:
	nop
	jmp	.L117
.L151:
	nop
	jmp	.L117
.L152:
	nop
	jmp	.L117
.L153:
	nop
	jmp	.L117
.L154:
	nop
	jmp	.L117
.L155:
	nop
.L117:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	$0, %eax
.L113:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	ossl_cmp_msg_create, .-ossl_cmp_msg_create
	.type	determine_subj, @function
determine_subj:
.LFB757:
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
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L157
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	testq	%rax, %rax
	je	.L158
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	jmp	.L160
.L158:
	movl	$0, %eax
	jmp	.L160
.L157:
	movq	-8(%rbp), %rax
	movq	440(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movq	-8(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	jmp	.L160
.L161:
	cmpl	$0, -12(%rbp)
	jne	.L162
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L163
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_reqExtensions_have_SAN@PLT
	cmpl	$1, %eax
	je	.L163
.L162:
	movq	-24(%rbp), %rax
	jmp	.L160
.L163:
	movl	$0, %eax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	determine_subj, .-determine_subj
	.globl	OSSL_CMP_CTX_setup_CRM
	.type	OSSL_CMP_CTX_setup_CRM, @function
OSSL_CMP_CTX_setup_CRM:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movl	%edx, -144(%rbp)
	movq	$0, -24(%rbp)
	movq	-136(%rbp), %rax
	movq	432(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-136(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L166
.L165:
	movq	-136(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -32(%rbp)
.L166:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_ctx_get0_newPubkey@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L167
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -48(%rbp)
	jmp	.L168
.L167:
	movq	$0, -48(%rbp)
.L168:
	movq	-48(%rbp), %rdx
	movl	-140(%rbp), %ecx
	movq	-136(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	determine_subj
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L169
	cmpq	$0, -32(%rbp)
	jne	.L170
.L169:
	movq	-136(%rbp), %rax
	movq	360(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	testq	%rax, %rax
	je	.L171
	movq	-136(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L173
.L171:
	movq	$0, -56(%rbp)
	jmp	.L173
.L170:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, -56(%rbp)
.L173:
	movq	-136(%rbp), %rax
	movl	404(%rax), %eax
	testl	%eax, %eax
	jne	.L174
	cmpq	$0, -72(%rbp)
	jne	.L175
.L174:
	movl	$1, %eax
	jmp	.L176
.L175:
	movl	$0, %eax
.L176:
	movl	%eax, -76(%rbp)
	movq	$0, -128(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L177
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$318, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$183, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L195
.L177:
	cmpl	$0, -140(%rbp)
	je	.L179
	cmpq	$0, -32(%rbp)
	jne	.L179
	movq	-136(%rbp), %rax
	movq	440(%rax), %rax
	testq	%rax, %rax
	jne	.L179
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$168, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L195
.L179:
	call	OSSL_CRMF_MSG_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L180
	movl	$0, %eax
	jmp	.L195
.L180:
	movl	-144(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_set_certReqId@PLT
	testl	%eax, %eax
	je	.L196
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_get0_tmpl@PLT
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rsi
	call	OSSL_CRMF_CERTTEMPLATE_fill@PLT
	testl	%eax, %eax
	je	.L196
	movq	-136(%rbp), %rax
	movl	376(%rax), %eax
	testl	%eax, %eax
	je	.L184
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_adj@PLT
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	movl	376(%rax), %edx
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_adj@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L185
	cmpq	$0, -104(%rbp)
	je	.L185
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_set0_validity@PLT
	testl	%eax, %eax
	jne	.L184
.L185:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	jmp	.L183
.L184:
	movq	-136(%rbp), %rax
	movq	440(%rax), %rax
	testq	%rax, %rax
	je	.L186
	movq	-136(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_extensions@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	je	.L197
.L186:
	movq	-136(%rbp), %rax
	movl	400(%rax), %eax
	testl	%eax, %eax
	jne	.L187
	movq	-136(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L187
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_reqExtensions_have_SAN@PLT
	cmpl	$1, %eax
	je	.L187
	cmpq	$0, -32(%rbp)
	je	.L187
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_extensions@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509V3_get_d2i@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L187
	movq	-40(%rbp), %rcx
	movl	-76(%rbp), %edx
	leaq	-128(%rbp), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	add1_extension
	testl	%eax, %eax
	je	.L198
.L187:
	movq	-136(%rbp), %rax
	movq	408(%rax), %rax
	testq	%rax, %rax
	je	.L188
	movq	-136(%rbp), %rax
	movq	408(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_extensions
	testl	%eax, %eax
	je	.L199
.L188:
	movq	-136(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L189
	movq	-136(%rbp), %rax
	movq	392(%rax), %rcx
	movl	-76(%rbp), %edx
	leaq	-128(%rbp), %rax
	movl	$85, %esi
	movq	%rax, %rdi
	call	add1_extension
	testl	%eax, %eax
	je	.L200
.L189:
	movq	-136(%rbp), %rax
	movq	416(%rax), %rax
	testq	%rax, %rax
	je	.L190
	movq	-136(%rbp), %rax
	movq	416(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	424(%rax), %edx
	leaq	-128(%rbp), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	call	add1_extension
	testl	%eax, %eax
	je	.L201
.L190:
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_set0_extensions@PLT
	testl	%eax, %eax
	je	.L202
	movq	$0, -128(%rbp)
	cmpl	$0, -140(%rbp)
	je	.L203
	cmpq	$0, -32(%rbp)
	je	.L203
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_gen@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L204
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_set1_regCtrl_oldCertID@PLT
	movl	%eax, -116(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_free@PLT
	cmpl	$0, -116(%rbp)
	jne	.L203
	jmp	.L183
.L196:
	nop
	jmp	.L183
.L197:
	nop
	jmp	.L183
.L198:
	nop
	jmp	.L183
.L199:
	nop
	jmp	.L183
.L200:
	nop
	jmp	.L183
.L201:
	nop
	jmp	.L183
.L202:
	nop
	jmp	.L183
.L204:
	nop
.L183:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L194
.L203:
	nop
.L194:
	movq	X509_EXTENSION_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_freefunc_type
	movq	%rax, %rbx
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	GENERAL_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
.L195:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	OSSL_CMP_CTX_setup_CRM, .-OSSL_CMP_CTX_setup_CRM
	.globl	ossl_cmp_certreq_new
	.type	ossl_cmp_certreq_new, @function
ossl_cmp_certreq_new:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L206
	movl	$0, %eax
	jmp	.L207
.L206:
	cmpl	$0, -60(%rbp)
	je	.L208
	cmpl	$2, -60(%rbp)
	je	.L208
	cmpl	$7, -60(%rbp)
	je	.L208
	cmpl	$4, -60(%rbp)
	je	.L208
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$415, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L207
.L208:
	cmpl	$4, -60(%rbp)
	jne	.L209
	cmpq	$0, -72(%rbp)
	je	.L209
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$419, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L207
.L209:
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L220
	movq	-56(%rbp), %rax
	movl	328(%rax), %eax
	testl	%eax, %eax
	je	.L212
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set_implicitConfirm@PLT
	testl	%eax, %eax
	je	.L221
.L212:
	cmpl	$4, -60(%rbp)
	je	.L213
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_newPkey@PLT
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	428(%rax), %eax
	testl	%eax, %eax
	jle	.L214
	cmpq	$0, -40(%rbp)
	jne	.L214
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$437, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$190, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L211
.L214:
	cmpq	$0, -72(%rbp)
	jne	.L215
	cmpl	$7, -60(%rbp)
	sete	%al
	movzbl	%al, %ecx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_setup_CRM@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L222
	movq	-56(%rbp), %rax
	movq	8(%rax), %r8
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	272(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	428(%rax), %eax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	OSSL_CRMF_MSG_create_popo@PLT
	testl	%eax, %eax
	jne	.L217
	jmp	.L222
.L215:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L223
.L217:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CRMF_MSG_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CRMF_MSG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L224
	movq	$0, -24(%rbp)
.L213:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L225
	movq	-32(%rbp), %rax
	jmp	.L207
.L220:
	nop
	jmp	.L211
.L221:
	nop
	jmp	.L211
.L222:
	nop
	jmp	.L211
.L223:
	nop
	jmp	.L211
.L224:
	nop
	jmp	.L211
.L225:
	nop
.L211:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$466, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$163, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	$0, %eax
.L207:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	ossl_cmp_certreq_new, .-ossl_cmp_certreq_new
	.globl	ossl_cmp_certrep_new
	.type	ossl_cmp_certrep_new, @function
ossl_cmp_certrep_new:
.LFB760:
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
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -44(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L227
	cmpq	$0, -72(%rbp)
	je	.L227
	movl	$1, %eax
	jmp	.L228
.L227:
	movl	$0, %eax
.L228:
	cltq
	testq	%rax, %rax
	jne	.L229
	movl	$0, %eax
	jmp	.L230
.L229:
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L246
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	328(%rax), %eax
	testl	%eax, %eax
	je	.L233
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set_implicitConfirm@PLT
	testl	%eax, %eax
	je	.L247
.L233:
	call	OSSL_CMP_CERTRESPONSE_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L248
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L249
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L249
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	movl	%eax, -44(%rbp)
	cmpl	$2, -44(%rbp)
	je	.L237
	cmpl	$3, -44(%rbp)
	je	.L237
	cmpq	$0, -80(%rbp)
	je	.L237
	cmpq	$0, -88(%rbp)
	je	.L238
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$506, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524556, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L232
.L238:
	call	OSSL_CMP_CERTIFIEDKEYPAIR_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L250
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L251
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L237:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_CERTRESPONSE_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_CERTRESPONSE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L252
	movq	$0, -24(%rbp)
	cmpl	$1, -60(%rbp)
	jne	.L242
	cmpq	$0, 24(%rbp)
	je	.L242
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L253
.L242:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L243
	movq	-32(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	16(%rbp), %rax
	movl	$5, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_x509_add_certs_new@PLT
	testl	%eax, %eax
	je	.L254
.L243:
	cmpl	$0, 32(%rbp)
	je	.L244
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	cmpl	$2, %eax
	je	.L245
.L244:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L255
.L245:
	movq	-32(%rbp), %rax
	jmp	.L230
.L246:
	nop
	jmp	.L232
.L247:
	nop
	jmp	.L232
.L248:
	nop
	jmp	.L232
.L249:
	nop
	jmp	.L232
.L250:
	nop
	jmp	.L232
.L251:
	nop
	jmp	.L232
.L252:
	nop
	jmp	.L232
.L253:
	nop
	jmp	.L232
.L254:
	nop
	jmp	.L232
.L255:
	nop
.L232:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$540, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CERTRESPONSE_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	$0, %eax
.L230:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	ossl_cmp_certrep_new, .-ossl_cmp_certrep_new
	.globl	ossl_cmp_rr_new
	.type	ossl_cmp_rr_new, @function
ossl_cmp_rr_new:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L257
	movq	-72(%rbp), %rax
	movq	432(%rax), %rax
	testq	%rax, %rax
	jne	.L258
	movq	-72(%rbp), %rax
	movq	440(%rax), %rax
	testq	%rax, %rax
	jne	.L258
	movq	-72(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L257
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L257
.L258:
	movl	$1, %eax
	jmp	.L259
.L257:
	movl	$0, %eax
.L259:
	cltq
	testq	%rax, %rax
	jne	.L260
	movl	$0, %eax
	jmp	.L261
.L260:
	call	OSSL_CMP_REVDETAILS_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L273
	movq	-72(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L264
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L264
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L265
.L264:
	movq	-72(%rbp), %rax
	movq	432(%rax), %rax
	testq	%rax, %rax
	je	.L266
	movq	-72(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, -32(%rbp)
	jmp	.L265
.L266:
	movq	-72(%rbp), %rax
	movq	440(%rax), %rax
	testq	%rax, %rax
	je	.L274
	movq	-72(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, %rdi
	call	X509_REQ_get0_pubkey@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, -24(%rbp)
.L265:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTTEMPLATE_fill@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L275
	movq	-72(%rbp), %rax
	movl	448(%rax), %eax
	cmpl	$-1, %eax
	je	.L269
	movq	-72(%rbp), %rax
	movl	448(%rax), %eax
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	add_crl_reason_extension
	testl	%eax, %eax
	je	.L276
.L269:
	movq	-72(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L277
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_CMP_REVDETAILS_push
	testl	%eax, %eax
	je	.L278
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L279
	movq	-8(%rbp), %rax
	jmp	.L261
.L273:
	nop
	jmp	.L263
.L274:
	nop
	jmp	.L263
.L275:
	nop
	jmp	.L263
.L276:
	nop
	jmp	.L263
.L277:
	nop
	jmp	.L263
.L278:
	nop
	jmp	.L263
.L279:
	nop
.L263:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$603, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_REVDETAILS_free@PLT
	movl	$0, %eax
.L261:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	ossl_cmp_rr_new, .-ossl_cmp_rr_new
	.globl	ossl_cmp_rp_new
	.type	ossl_cmp_rp_new, @function
ossl_cmp_rp_new:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L281
	cmpq	$0, -64(%rbp)
	je	.L281
	movl	$1, %eax
	jmp	.L282
.L281:
	movl	$0, %eax
.L282:
	cltq
	testq	%rax, %rax
	jne	.L283
	movl	$0, %eax
	jmp	.L284
.L283:
	movq	-56(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L294
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L295
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_PKISI_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_PKISI_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L288
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	jmp	.L286
.L288:
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L296
	cmpq	$0, -72(%rbp)
	je	.L290
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_dup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L297
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CRMF_CERTID_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CRMF_CERTID_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L290
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_free@PLT
	jmp	.L286
.L290:
	cmpl	$0, -76(%rbp)
	je	.L292
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	cmpl	$2, %eax
	je	.L293
.L292:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L298
.L293:
	movq	-48(%rbp), %rax
	jmp	.L284
.L294:
	nop
	jmp	.L286
.L295:
	nop
	jmp	.L286
.L296:
	nop
	jmp	.L286
.L297:
	nop
	jmp	.L286
.L298:
	nop
.L286:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$651, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	$0, %eax
.L284:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ossl_cmp_rp_new, .-ossl_cmp_rp_new
	.globl	ossl_cmp_pkiconf_new
	.type	ossl_cmp_pkiconf_new, @function
ossl_cmp_pkiconf_new:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L300
	movl	$0, %eax
	jmp	.L301
.L300:
	movq	-24(%rbp), %rax
	movl	$19, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L304
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L305
	movq	-8(%rbp), %rax
	jmp	.L301
.L304:
	nop
	jmp	.L303
.L305:
	nop
.L303:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$669, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	$0, %eax
.L301:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	ossl_cmp_pkiconf_new, .-ossl_cmp_pkiconf_new
	.globl	ossl_cmp_msg_gen_push0_ITAV
	.type	ossl_cmp_msg_gen_push0_ITAV, @function
ossl_cmp_msg_gen_push0_ITAV:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L307
	cmpq	$0, -32(%rbp)
	je	.L307
	movl	$1, %eax
	jmp	.L308
.L307:
	movl	$0, %eax
.L308:
	cltq
	testq	%rax, %rax
	jne	.L309
	movl	$0, %eax
	jmp	.L310
.L309:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, -4(%rbp)
	cmpl	$21, -4(%rbp)
	je	.L311
	cmpl	$22, -4(%rbp)
	je	.L311
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$684, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L310
.L311:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_CMP_ITAV_push0_stack_item@PLT
.L310:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	ossl_cmp_msg_gen_push0_ITAV, .-ossl_cmp_msg_gen_push0_ITAV
	.globl	ossl_cmp_msg_gen_push1_ITAVs
	.type	ossl_cmp_msg_gen_push1_ITAVs, @function
ossl_cmp_msg_gen_push1_ITAVs:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L313
	movl	$0, %eax
	jmp	.L314
.L313:
	movl	$0, -4(%rbp)
	jmp	.L315
.L318:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L316
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_gen_push0_ITAV@PLT
	testl	%eax, %eax
	jne	.L317
.L316:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_ITAV_free@PLT
	movl	$0, %eax
	jmp	.L314
.L317:
	addl	$1, -4(%rbp)
.L315:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_ITAV_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L318
	movl	$1, %eax
.L314:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	ossl_cmp_msg_gen_push1_ITAVs, .-ossl_cmp_msg_gen_push1_ITAVs
	.type	gen_new, @function
gen_new:
.LFB766:
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
	movl	%ecx, -40(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L320
	movl	$0, %eax
	jmp	.L321
.L320:
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L322
	movl	$0, %eax
	jmp	.L321
.L322:
	cmpq	$0, -32(%rbp)
	je	.L323
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_gen_push1_ITAVs@PLT
	testl	%eax, %eax
	je	.L326
.L323:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L327
	movq	-8(%rbp), %rax
	jmp	.L321
.L326:
	nop
	jmp	.L324
.L327:
	nop
.L324:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$737, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-40(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	$0, %eax
.L321:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	gen_new, .-gen_new
	.globl	ossl_cmp_genm_new
	.type	ossl_cmp_genm_new, @function
ossl_cmp_genm_new:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	$119, %ecx
	movl	$21, %edx
	movq	%rax, %rdi
	call	gen_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	ossl_cmp_genm_new, .-ossl_cmp_genm_new
	.globl	ossl_cmp_genp_new
	.type	ossl_cmp_genp_new, @function
ossl_cmp_genp_new:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$120, %ecx
	movl	$22, %edx
	movq	%rax, %rdi
	call	gen_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	ossl_cmp_genp_new, .-ossl_cmp_genp_new
	.globl	ossl_cmp_error_new
	.type	ossl_cmp_error_new, @function
ossl_cmp_error_new:
.LFB769:
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
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L333
	cmpq	$0, -64(%rbp)
	je	.L333
	movl	$1, %eax
	jmp	.L334
.L333:
	movl	$0, %eax
.L334:
	cltq
	testq	%rax, %rax
	jne	.L335
	movl	$0, %eax
	jmp	.L336
.L335:
	movq	-56(%rbp), %rax
	movl	$23, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L349
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_dup@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L350
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	call	ASN1_INTEGER_new@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L351
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_int64@PLT
	testl	%eax, %eax
	je	.L352
	cmpq	$0, -72(%rbp)
	jle	.L342
	movq	-72(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rax, %rdx
	jb	.L342
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_lib_error_string@PLT
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	movq	%rax, -32(%rbp)
.L342:
	cmpq	$0, -24(%rbp)
	jne	.L343
	cmpq	$0, -32(%rbp)
	jne	.L343
	cmpq	$0, -80(%rbp)
	je	.L344
.L343:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L353
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpq	$0, -24(%rbp)
	je	.L346
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L346
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_sk_ASN1_UTF8STRING_push_str@PLT
	testl	%eax, %eax
	je	.L354
.L346:
	cmpq	$0, -32(%rbp)
	je	.L347
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L347
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_sk_ASN1_UTF8STRING_push_str@PLT
	testl	%eax, %eax
	je	.L355
.L347:
	cmpq	$0, -80(%rbp)
	je	.L344
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_sk_ASN1_UTF8STRING_push_str@PLT
	testl	%eax, %eax
	je	.L356
.L344:
	cmpl	$0, -84(%rbp)
	jne	.L348
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L357
.L348:
	movq	-40(%rbp), %rax
	jmp	.L336
.L349:
	nop
	jmp	.L338
.L350:
	nop
	jmp	.L338
.L351:
	nop
	jmp	.L338
.L352:
	nop
	jmp	.L338
.L353:
	nop
	jmp	.L338
.L354:
	nop
	jmp	.L338
.L355:
	nop
	jmp	.L338
.L356:
	nop
	jmp	.L338
.L357:
	nop
.L338:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	$0, %eax
.L336:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	ossl_cmp_error_new, .-ossl_cmp_error_new
	.globl	ossl_cmp_certstatus_set0_certHash
	.type	ossl_cmp_certstatus_set0_certHash, @function
ossl_cmp_certstatus_set0_certHash:
.LFB770:
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
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L359
	movl	$0, %eax
	jmp	.L360
.L359:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L360:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	ossl_cmp_certstatus_set0_certHash, .-ossl_cmp_certstatus_set0_certHash
	.globl	ossl_cmp_certConf_new
	.type	ossl_cmp_certConf_new, @function
ossl_cmp_certConf_new:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L362
	movq	-72(%rbp), %rax
	movq	488(%rax), %rax
	testq	%rax, %rax
	je	.L362
	cmpl	$0, -76(%rbp)
	je	.L363
	cmpl	$-1, -76(%rbp)
	jne	.L362
.L363:
	movl	$1, %eax
	jmp	.L364
.L362:
	movl	$0, %eax
.L364:
	cltq
	testq	%rax, %rax
	jne	.L365
	movl	$0, %eax
	jmp	.L382
.L365:
	movl	-80(%rbp), %eax
	cmpl	$134217727, %eax
	jbe	.L367
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$838, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L382
.L367:
	movq	-72(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L383
	call	OSSL_CMP_CERTSTATUS_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L384
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_CERTSTATUS_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_CERTSTATUS_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jg	.L371
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CERTSTATUS_free@PLT
	jmp	.L369
.L371:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L385
	movq	-48(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-72(%rbp), %rax
	movq	488(%rax), %rax
	leaq	-60(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_digest_sig@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L386
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	je	.L374
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set_pvno@PLT
	testl	%eax, %eax
	je	.L387
	call	X509_ALGOR_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L388
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_set_md@PLT
.L374:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_certstatus_set0_certHash@PLT
	testl	%eax, %eax
	je	.L389
	movq	$0, -24(%rbp)
	cmpl	$0, -80(%rbp)
	je	.L378
	movq	-88(%rbp), %rdx
	movl	-80(%rbp), %eax
	movl	%eax, %esi
	movl	$2, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	movq	%rax, -32(%rbp)
	jmp	.L379
.L378:
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	movq	%rax, -32(%rbp)
.L379:
	cmpq	$0, -32(%rbp)
	je	.L390
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L391
	movq	-40(%rbp), %rax
	jmp	.L382
.L383:
	nop
	jmp	.L369
.L384:
	nop
	jmp	.L369
.L385:
	nop
	jmp	.L369
.L386:
	nop
	jmp	.L369
.L387:
	nop
	jmp	.L369
.L388:
	nop
	jmp	.L369
.L389:
	nop
	jmp	.L369
.L390:
	nop
	jmp	.L369
.L391:
	nop
.L369:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$897, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
.L382:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	ossl_cmp_certConf_new, .-ossl_cmp_certConf_new
	.globl	ossl_cmp_pollReq_new
	.type	ossl_cmp_pollReq_new, @function
ossl_cmp_pollReq_new:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L393
	movl	$0, %eax
	jmp	.L394
.L393:
	movq	-24(%rbp), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L400
	call	OSSL_CMP_POLLREQ_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L401
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L401
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_CMP_POLLREQ_push
	testl	%eax, %eax
	je	.L401
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L402
	movq	-16(%rbp), %rax
	jmp	.L394
.L400:
	nop
	jmp	.L396
.L401:
	nop
	jmp	.L396
.L402:
	nop
.L396:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$926, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_POLLREQ_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	$0, %eax
.L394:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	ossl_cmp_pollReq_new, .-ossl_cmp_pollReq_new
	.globl	ossl_cmp_pollRep_new
	.type	ossl_cmp_pollRep_new, @function
ossl_cmp_pollRep_new:
.LFB773:
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
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L404
	movl	$0, %eax
	jmp	.L405
.L404:
	movq	-24(%rbp), %rax
	movl	$26, %esi
	movq	%rax, %rdi
	call	ossl_cmp_msg_create@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L413
	call	OSSL_CMP_POLLREP_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L414
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_CMP_POLLREP_push
	testl	%eax, %eax
	je	.L415
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L416
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set_int64@PLT
	testl	%eax, %eax
	je	.L417
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L418
	movq	-8(%rbp), %rax
	jmp	.L405
.L413:
	nop
	jmp	.L407
.L414:
	nop
	jmp	.L407
.L415:
	nop
	jmp	.L407
.L416:
	nop
	jmp	.L407
.L417:
	nop
	jmp	.L407
.L418:
	nop
.L407:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$957, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movl	$0, %eax
.L405:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	ossl_cmp_pollRep_new, .-ossl_cmp_pollRep_new
	.globl	ossl_cmp_revrepcontent_get_pkisi
	.type	ossl_cmp_revrepcontent_get_pkisi, @function
ossl_cmp_revrepcontent_get_pkisi:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L420
	movl	$0, %eax
	jmp	.L421
.L420:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_PKISI_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L422
	movq	-8(%rbp), %rax
	jmp	.L421
.L422:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$980, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L421:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	ossl_cmp_revrepcontent_get_pkisi, .-ossl_cmp_revrepcontent_get_pkisi
	.globl	ossl_cmp_revrepcontent_get_CertId
	.type	ossl_cmp_revrepcontent_get_CertId, @function
ossl_cmp_revrepcontent_get_CertId:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L424
	movl	$0, %eax
	jmp	.L425
.L424:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CRMF_CERTID_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L426
	movq	-8(%rbp), %rax
	jmp	.L425
.L426:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1002, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L425:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	ossl_cmp_revrepcontent_get_CertId, .-ossl_cmp_revrepcontent_get_CertId
	.type	suitable_rid, @function
suitable_rid:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L428
	movl	$1, %eax
	jmp	.L429
.L428:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_asn1_get_int@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jge	.L430
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1015, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L429
.L430:
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
.L429:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	suitable_rid, .-suitable_rid
	.section	.rodata
.LC2:
	.string	"expected certReqId = %d"
	.text
	.globl	ossl_cmp_pollrepcontent_get0_pollrep
	.type	ossl_cmp_pollrepcontent_get0_pollrep, @function
ossl_cmp_pollrepcontent_get0_pollrep:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L432
	movl	$0, %eax
	jmp	.L433
.L432:
	movl	$0, -4(%rbp)
	jmp	.L434
.L436:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CMP_POLLREP_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	suitable_rid
	testl	%eax, %eax
	je	.L435
	movq	-16(%rbp), %rax
	jmp	.L433
.L435:
	addl	$1, -4(%rbp)
.L434:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CMP_POLLREP_num
	cmpl	%eax, -4(%rbp)
	jl	.L436
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1042, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-28(%rbp), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %ecx
	movl	$113, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L433:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	ossl_cmp_pollrepcontent_get0_pollrep, .-ossl_cmp_pollrepcontent_get0_pollrep
	.globl	ossl_cmp_certrepmessage_get0_certresponse
	.type	ossl_cmp_certrepmessage_get0_certresponse, @function
ossl_cmp_certrepmessage_get0_certresponse:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L438
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L438
	movl	$1, %eax
	jmp	.L439
.L438:
	movl	$0, %eax
.L439:
	cltq
	testq	%rax, %rax
	jne	.L440
	movl	$0, %eax
	jmp	.L441
.L440:
	movl	$0, -4(%rbp)
	jmp	.L442
.L444:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	suitable_rid
	testl	%eax, %eax
	je	.L443
	movq	-16(%rbp), %rax
	jmp	.L441
.L443:
	addl	$1, -4(%rbp)
.L442:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_CERTRESPONSE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L444
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1068, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-28(%rbp), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %ecx
	movl	$113, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L441:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	ossl_cmp_certrepmessage_get0_certresponse, .-ossl_cmp_certrepmessage_get0_certresponse
	.globl	ossl_cmp_certresponse_get1_cert
	.type	ossl_cmp_certresponse_get1_cert, @function
ossl_cmp_certresponse_get1_cert:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L446
	cmpq	$0, -40(%rbp)
	je	.L446
	movl	$1, %eax
	jmp	.L447
.L446:
	movl	$0, %eax
.L447:
	cltq
	testq	%rax, %rax
	jne	.L448
	movl	$0, %eax
	jmp	.L449
.L448:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L450
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L450
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L451
	cmpl	$1, %eax
	je	.L452
	jmp	.L457
.L451:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_dup@PLT
	movq	%rax, -8(%rbp)
	jmp	.L450
.L452:
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_newPkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L454
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1099, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L449
.L454:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	call	OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert@PLT
	movq	%rax, -8(%rbp)
	jmp	.L450
.L457:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1108, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$135, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L449
.L450:
	cmpq	$0, -8(%rbp)
	jne	.L455
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L456
.L455:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_set0_libctx@PLT
.L456:
	movq	-8(%rbp), %rax
.L449:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	ossl_cmp_certresponse_get1_cert, .-ossl_cmp_certresponse_get1_cert
	.globl	OSSL_CMP_MSG_update_transactionID
	.type	OSSL_CMP_MSG_update_transactionID, @function
OSSL_CMP_MSG_update_transactionID:
.LFB780:
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
	je	.L459
	cmpq	$0, -16(%rbp)
	jne	.L460
.L459:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1122, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L461
.L460:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_hdr_set_transactionID@PLT
	testl	%eax, %eax
	jne	.L462
	movl	$0, %eax
	jmp	.L461
.L462:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L463
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L464
.L463:
	movl	$1, %eax
	jmp	.L461
.L464:
	movl	$0, %eax
.L461:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	OSSL_CMP_MSG_update_transactionID, .-OSSL_CMP_MSG_update_transactionID
	.globl	OSSL_CMP_MSG_update_recipNonce
	.type	OSSL_CMP_MSG_update_recipNonce, @function
OSSL_CMP_MSG_update_recipNonce:
.LFB781:
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
	je	.L467
	cmpq	$0, -16(%rbp)
	je	.L467
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L468
.L467:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1134, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L469
.L468:
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	jne	.L470
	movl	$1, %eax
	jmp	.L469
.L470:
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$72, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_cmp_asn1_octet_string_set1@PLT
	testl	%eax, %eax
	jne	.L471
	movl	$0, %eax
	jmp	.L469
.L471:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L472
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_msg_protect@PLT
	testl	%eax, %eax
	je	.L473
.L472:
	movl	$1, %eax
	jmp	.L469
.L473:
	movl	$0, %eax
.L469:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	OSSL_CMP_MSG_update_recipNonce, .-OSSL_CMP_MSG_update_recipNonce
	.section	.rodata
.LC3:
	.string	"rb"
	.text
	.globl	OSSL_CMP_MSG_read
	.type	OSSL_CMP_MSG_read, @function
OSSL_CMP_MSG_read:
.LFB782:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L476
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L481
.L476:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L478
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1158, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524346, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L481
.L478:
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L479
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_OSSL_CMP_MSG_bio@PLT
	testq	%rax, %rax
	jne	.L480
.L479:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	movq	$0, -16(%rbp)
.L480:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L481:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	OSSL_CMP_MSG_read, .-OSSL_CMP_MSG_read
	.section	.rodata
.LC4:
	.string	"wb"
	.text
	.globl	OSSL_CMP_MSG_write
	.type	OSSL_CMP_MSG_write, @function
OSSL_CMP_MSG_write:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L483
	cmpq	$0, -32(%rbp)
	jne	.L484
.L483:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1177, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L485
.L484:
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L486
	movl	$-2, %eax
	jmp	.L485
.L486:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_OSSL_CMP_MSG_bio@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L485:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	OSSL_CMP_MSG_write, .-OSSL_CMP_MSG_write
	.globl	d2i_OSSL_CMP_MSG
	.type	d2i_OSSL_CMP_MSG, @function
d2i_OSSL_CMP_MSG:
.LFB784:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L488
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L488
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.L488:
	call	OSSL_CMP_MSG_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_d2i_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	d2i_OSSL_CMP_MSG, .-d2i_OSSL_CMP_MSG
	.globl	i2d_OSSL_CMP_MSG
	.type	i2d_OSSL_CMP_MSG, @function
i2d_OSSL_CMP_MSG:
.LFB785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	OSSL_CMP_MSG_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	i2d_OSSL_CMP_MSG, .-i2d_OSSL_CMP_MSG
	.globl	d2i_OSSL_CMP_MSG_bio
	.type	d2i_OSSL_CMP_MSG_bio, @function
d2i_OSSL_CMP_MSG_bio:
.LFB786:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L493
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L493
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.L493:
	call	OSSL_CMP_MSG_it@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASN1_item_d2i_bio_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	d2i_OSSL_CMP_MSG_bio, .-d2i_OSSL_CMP_MSG_bio
	.globl	i2d_OSSL_CMP_MSG_bio
	.type	i2d_OSSL_CMP_MSG_bio, @function
i2d_OSSL_CMP_MSG_bio:
.LFB787:
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
	movq	i2d_OSSL_CMP_MSG@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	i2d_OSSL_CMP_MSG_bio, .-i2d_OSSL_CMP_MSG_bio
	.globl	ossl_cmp_is_error_with_waiting
	.type	ossl_cmp_is_error_with_waiting, @function
ossl_cmp_is_error_with_waiting:
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
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L498
	movl	$0, %eax
	jmp	.L499
.L498:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$23, %eax
	jne	.L500
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	cmpl	$3, %eax
	jne	.L500
	movl	$1, %eax
	jmp	.L499
.L500:
	movl	$0, %eax
.L499:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	ossl_cmp_is_error_with_waiting, .-ossl_cmp_is_error_with_waiting
	.section	.rodata
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 25
__func__.25:
	.string	"OSSL_CMP_MSG_get0_header"
.LC5:
	.string	"IR"
.LC6:
	.string	"IP"
.LC7:
	.string	"CR"
.LC8:
	.string	"CP"
.LC9:
	.string	"P10CR"
.LC10:
	.string	"POPDECC"
.LC11:
	.string	"POPDECR"
.LC12:
	.string	"KUR"
.LC13:
	.string	"KUP"
.LC14:
	.string	"KRR"
.LC15:
	.string	"KRP"
.LC16:
	.string	"RR"
.LC17:
	.string	"RP"
.LC18:
	.string	"CCR"
.LC19:
	.string	"CCP"
.LC20:
	.string	"CKUANN"
.LC21:
	.string	"CANN"
.LC22:
	.string	"RANN"
.LC23:
	.string	"CRLANN"
.LC24:
	.string	"PKICONF"
.LC25:
	.string	"NESTED"
.LC26:
	.string	"GENM"
.LC27:
	.string	"GENP"
.LC28:
	.string	"ERROR"
.LC29:
	.string	"CERTCONF"
.LC30:
	.string	"POLLREQ"
.LC31:
	.string	"POLLREP"
	.section	.data.rel.local,"aw"
	.align 32
	.type	type_names.24, @object
	.size	type_names.24, 216
type_names.24:
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.section	.rodata
	.align 32
	.type	__func__.23, @object
	.size	__func__.23, 36
__func__.23:
	.string	"OSSL_CMP_MSG_get0_certreq_publickey"
	.align 16
	.type	__func__.22, @object
	.size	__func__.22, 20
__func__.22:
	.string	"ossl_cmp_msg_create"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 23
__func__.21:
	.string	"OSSL_CMP_CTX_setup_CRM"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 21
__func__.20:
	.string	"ossl_cmp_certreq_new"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 21
__func__.19:
	.string	"ossl_cmp_certrep_new"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 16
__func__.18:
	.string	"ossl_cmp_rr_new"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 16
__func__.17:
	.string	"ossl_cmp_rp_new"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 21
__func__.16:
	.string	"ossl_cmp_pkiconf_new"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 28
__func__.15:
	.string	"ossl_cmp_msg_gen_push0_ITAV"
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 8
__func__.14:
	.string	"gen_new"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 19
__func__.13:
	.string	"ossl_cmp_error_new"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 22
__func__.12:
	.string	"ossl_cmp_certConf_new"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 21
__func__.11:
	.string	"ossl_cmp_pollReq_new"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 21
__func__.10:
	.string	"ossl_cmp_pollRep_new"
	.align 32
	.type	__func__.9, @object
	.size	__func__.9, 33
__func__.9:
	.string	"ossl_cmp_revrepcontent_get_pkisi"
	.align 32
	.type	__func__.8, @object
	.size	__func__.8, 34
__func__.8:
	.string	"ossl_cmp_revrepcontent_get_CertId"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 13
__func__.7:
	.string	"suitable_rid"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 37
__func__.6:
	.string	"ossl_cmp_pollrepcontent_get0_pollrep"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 42
__func__.5:
	.string	"ossl_cmp_certrepmessage_get0_certresponse"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 32
__func__.4:
	.string	"ossl_cmp_certresponse_get1_cert"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 34
__func__.3:
	.string	"OSSL_CMP_MSG_update_transactionID"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 31
__func__.2:
	.string	"OSSL_CMP_MSG_update_recipNonce"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"OSSL_CMP_MSG_read"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"OSSL_CMP_MSG_write"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
