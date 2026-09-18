	.file	"ts_rsp_utils.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/ts/ts_rsp_utils.c"
	.text
	.globl	TS_RESP_set_status_info
	.type	TS_RESP_set_status_info, @function
TS_RESP_set_status_info:
.LFB629:
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
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L10
	movl	$1, %eax
	jmp	.L11
.L10:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	TS_STATUS_INFO_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524335, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	TS_STATUS_INFO_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	TS_RESP_set_status_info, .-TS_RESP_set_status_info
	.globl	TS_RESP_get_status_info
	.type	TS_RESP_get_status_info, @function
TS_RESP_get_status_info:
.LFB630:
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
.LFE630:
	.size	TS_RESP_get_status_info, .-TS_RESP_get_status_info
	.globl	TS_RESP_set_tst_info
	.type	TS_RESP_set_tst_info, @function
TS_RESP_set_tst_info:
.LFB631:
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	TS_TST_INFO_free@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	TS_RESP_set_tst_info, .-TS_RESP_set_tst_info
	.globl	TS_RESP_get_token
	.type	TS_RESP_get_token, @function
TS_RESP_get_token:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	TS_RESP_get_token, .-TS_RESP_get_token
	.globl	TS_RESP_get_tst_info
	.type	TS_RESP_get_tst_info, @function
TS_RESP_get_tst_info:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	TS_RESP_get_tst_info, .-TS_RESP_get_tst_info
	.globl	TS_TST_INFO_set_version
	.type	TS_TST_INFO_set_version, @function
TS_TST_INFO_set_version:
.LFB634:
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
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	TS_TST_INFO_set_version, .-TS_TST_INFO_set_version
	.globl	TS_TST_INFO_get_version
	.type	TS_TST_INFO_get_version, @function
TS_TST_INFO_get_version:
.LFB635:
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
	call	ASN1_INTEGER_get@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	TS_TST_INFO_get_version, .-TS_TST_INFO_get_version
	.globl	TS_TST_INFO_set_policy_id
	.type	TS_TST_INFO_set_policy_id, @function
TS_TST_INFO_set_policy_id:
.LFB636:
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
	movq	8(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L25
	movl	$1, %eax
	jmp	.L26
.L25:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524296, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L26
.L27:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	TS_TST_INFO_set_policy_id, .-TS_TST_INFO_set_policy_id
	.globl	TS_TST_INFO_get_policy_id
	.type	TS_TST_INFO_get_policy_id, @function
TS_TST_INFO_get_policy_id:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	TS_TST_INFO_get_policy_id, .-TS_TST_INFO_get_policy_id
	.globl	TS_TST_INFO_set_msg_imprint
	.type	TS_TST_INFO_set_msg_imprint, @function
TS_TST_INFO_set_msg_imprint:
.LFB638:
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
	movq	16(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L31
	movl	$1, %eax
	jmp	.L32
.L31:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	TS_MSG_IMPRINT_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524335, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L33:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	TS_MSG_IMPRINT_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	TS_TST_INFO_set_msg_imprint, .-TS_TST_INFO_set_msg_imprint
	.globl	TS_TST_INFO_get_msg_imprint
	.type	TS_TST_INFO_get_msg_imprint, @function
TS_TST_INFO_get_msg_imprint:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	TS_TST_INFO_get_msg_imprint, .-TS_TST_INFO_get_msg_imprint
	.globl	TS_TST_INFO_set_serial
	.type	TS_TST_INFO_set_serial, @function
TS_TST_INFO_set_serial:
.LFB640:
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
	movq	24(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L39:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	TS_TST_INFO_set_serial, .-TS_TST_INFO_set_serial
	.globl	TS_TST_INFO_get_serial
	.type	TS_TST_INFO_get_serial, @function
TS_TST_INFO_get_serial:
.LFB641:
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
.LFE641:
	.size	TS_TST_INFO_get_serial, .-TS_TST_INFO_get_serial
	.globl	TS_TST_INFO_set_time
	.type	TS_TST_INFO_set_time, @function
TS_TST_INFO_set_time:
.LFB642:
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
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L43
	movl	$1, %eax
	jmp	.L44
.L43:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L44
.L45:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	TS_TST_INFO_set_time, .-TS_TST_INFO_set_time
	.globl	TS_TST_INFO_get_time
	.type	TS_TST_INFO_get_time, @function
TS_TST_INFO_get_time:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	TS_TST_INFO_get_time, .-TS_TST_INFO_get_time
	.globl	TS_TST_INFO_set_accuracy
	.type	TS_TST_INFO_set_accuracy, @function
TS_TST_INFO_set_accuracy:
.LFB644:
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
	movq	40(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L49
	movl	$1, %eax
	jmp	.L50
.L49:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	TS_ACCURACY_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524335, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L51:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	TS_ACCURACY_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	TS_TST_INFO_set_accuracy, .-TS_TST_INFO_set_accuracy
	.globl	TS_TST_INFO_get_accuracy
	.type	TS_TST_INFO_get_accuracy, @function
TS_TST_INFO_get_accuracy:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	TS_TST_INFO_get_accuracy, .-TS_TST_INFO_get_accuracy
	.globl	TS_ACCURACY_set_seconds
	.type	TS_ACCURACY_set_seconds, @function
TS_ACCURACY_set_seconds:
.LFB646:
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
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L55
	movl	$1, %eax
	jmp	.L56
.L55:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L57:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	TS_ACCURACY_set_seconds, .-TS_ACCURACY_set_seconds
	.globl	TS_ACCURACY_get_seconds
	.type	TS_ACCURACY_get_seconds, @function
TS_ACCURACY_get_seconds:
.LFB647:
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
.LFE647:
	.size	TS_ACCURACY_get_seconds, .-TS_ACCURACY_get_seconds
	.globl	TS_ACCURACY_set_millis
	.type	TS_ACCURACY_set_millis, @function
TS_ACCURACY_set_millis:
.LFB648:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L61
	movl	$1, %eax
	jmp	.L62
.L61:
	cmpq	$0, -32(%rbp)
	je	.L63
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L63
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L62
.L63:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	TS_ACCURACY_set_millis, .-TS_ACCURACY_set_millis
	.globl	TS_ACCURACY_get_millis
	.type	TS_ACCURACY_get_millis, @function
TS_ACCURACY_get_millis:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	TS_ACCURACY_get_millis, .-TS_ACCURACY_get_millis
	.globl	TS_ACCURACY_set_micros
	.type	TS_ACCURACY_set_micros, @function
TS_ACCURACY_set_micros:
.LFB650:
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
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L67
	movl	$1, %eax
	jmp	.L68
.L67:
	cmpq	$0, -32(%rbp)
	je	.L69
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$226, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L68
.L69:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	TS_ACCURACY_set_micros, .-TS_ACCURACY_set_micros
	.globl	TS_ACCURACY_get_micros
	.type	TS_ACCURACY_get_micros, @function
TS_ACCURACY_get_micros:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	TS_ACCURACY_get_micros, .-TS_ACCURACY_get_micros
	.globl	TS_TST_INFO_set_ordering
	.type	TS_TST_INFO_set_ordering, @function
TS_TST_INFO_set_ordering:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L73
	movl	$255, %edx
	jmp	.L74
.L73:
	movl	$0, %edx
.L74:
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	TS_TST_INFO_set_ordering, .-TS_TST_INFO_set_ordering
	.globl	TS_TST_INFO_get_ordering
	.type	TS_TST_INFO_get_ordering, @function
TS_TST_INFO_get_ordering:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	TS_TST_INFO_get_ordering, .-TS_TST_INFO_get_ordering
	.globl	TS_TST_INFO_set_nonce
	.type	TS_TST_INFO_set_nonce, @function
TS_TST_INFO_set_nonce:
.LFB654:
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
	movq	56(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L79
	movl	$1, %eax
	jmp	.L80
.L79:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L80
.L81:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	$1, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	TS_TST_INFO_set_nonce, .-TS_TST_INFO_set_nonce
	.globl	TS_TST_INFO_get_nonce
	.type	TS_TST_INFO_get_nonce, @function
TS_TST_INFO_get_nonce:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	TS_TST_INFO_get_nonce, .-TS_TST_INFO_get_nonce
	.globl	TS_TST_INFO_set_tsa
	.type	TS_TST_INFO_set_tsa, @function
TS_TST_INFO_set_tsa:
.LFB656:
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
	movq	64(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L85
	movl	$1, %eax
	jmp	.L86
.L85:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L87
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$280, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L87:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	TS_TST_INFO_set_tsa, .-TS_TST_INFO_set_tsa
	.globl	TS_TST_INFO_get_tsa
	.type	TS_TST_INFO_get_tsa, @function
TS_TST_INFO_get_tsa:
.LFB657:
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
.LFE657:
	.size	TS_TST_INFO_get_tsa, .-TS_TST_INFO_get_tsa
	.globl	TS_TST_INFO_get_exts
	.type	TS_TST_INFO_get_exts, @function
TS_TST_INFO_get_exts:
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
	.size	TS_TST_INFO_get_exts, .-TS_TST_INFO_get_exts
	.globl	TS_TST_INFO_ext_free
	.type	TS_TST_INFO_ext_free, @function
TS_TST_INFO_ext_free:
.LFB659:
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
	cmpq	$0, -24(%rbp)
	je	.L95
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
	movq	$0, 72(%rax)
	jmp	.L92
.L95:
	nop
.L92:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	TS_TST_INFO_ext_free, .-TS_TST_INFO_ext_free
	.globl	TS_TST_INFO_get_ext_count
	.type	TS_TST_INFO_get_ext_count, @function
TS_TST_INFO_get_ext_count:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	X509v3_get_ext_count@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	TS_TST_INFO_get_ext_count, .-TS_TST_INFO_get_ext_count
	.globl	TS_TST_INFO_get_ext_by_NID
	.type	TS_TST_INFO_get_ext_by_NID, @function
TS_TST_INFO_get_ext_by_NID:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	TS_TST_INFO_get_ext_by_NID, .-TS_TST_INFO_get_ext_by_NID
	.globl	TS_TST_INFO_get_ext_by_OBJ
	.type	TS_TST_INFO_get_ext_by_OBJ, @function
TS_TST_INFO_get_ext_by_OBJ:
.LFB662:
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
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	TS_TST_INFO_get_ext_by_OBJ, .-TS_TST_INFO_get_ext_by_OBJ
	.globl	TS_TST_INFO_get_ext_by_critical
	.type	TS_TST_INFO_get_ext_by_critical, @function
TS_TST_INFO_get_ext_by_critical:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_critical@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	TS_TST_INFO_get_ext_by_critical, .-TS_TST_INFO_get_ext_by_critical
	.globl	TS_TST_INFO_get_ext
	.type	TS_TST_INFO_get_ext, @function
TS_TST_INFO_get_ext:
.LFB664:
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
	movq	72(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	TS_TST_INFO_get_ext, .-TS_TST_INFO_get_ext
	.globl	TS_TST_INFO_delete_ext
	.type	TS_TST_INFO_delete_ext, @function
TS_TST_INFO_delete_ext:
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
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_delete_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	TS_TST_INFO_delete_ext, .-TS_TST_INFO_delete_ext
	.globl	TS_TST_INFO_add_ext
	.type	TS_TST_INFO_add_ext, @function
TS_TST_INFO_add_ext:
.LFB666:
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
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509v3_add_ext@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	TS_TST_INFO_add_ext, .-TS_TST_INFO_add_ext
	.globl	TS_TST_INFO_get_ext_d2i
	.type	TS_TST_INFO_get_ext_d2i, @function
TS_TST_INFO_get_ext_d2i:
.LFB667:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	call	X509V3_get_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	TS_TST_INFO_get_ext_d2i, .-TS_TST_INFO_get_ext_d2i
	.globl	TS_STATUS_INFO_set_status
	.type	TS_STATUS_INFO_set_status, @function
TS_STATUS_INFO_set_status:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	TS_STATUS_INFO_set_status, .-TS_STATUS_INFO_set_status
	.globl	TS_STATUS_INFO_get0_status
	.type	TS_STATUS_INFO_get0_status, @function
TS_STATUS_INFO_get0_status:
.LFB669:
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
.LFE669:
	.size	TS_STATUS_INFO_get0_status, .-TS_STATUS_INFO_get0_status
	.globl	TS_STATUS_INFO_get0_text
	.type	TS_STATUS_INFO_get0_text, @function
TS_STATUS_INFO_get0_text:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	TS_STATUS_INFO_get0_text, .-TS_STATUS_INFO_get0_text
	.globl	TS_STATUS_INFO_get0_failure_info
	.type	TS_STATUS_INFO_get0_failure_info, @function
TS_STATUS_INFO_get0_failure_info:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	TS_STATUS_INFO_get0_failure_info, .-TS_STATUS_INFO_get0_failure_info
	.section	.rodata
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 24
__func__.10:
	.string	"TS_RESP_set_status_info"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 26
__func__.9:
	.string	"TS_TST_INFO_set_policy_id"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 28
__func__.8:
	.string	"TS_TST_INFO_set_msg_imprint"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 23
__func__.7:
	.string	"TS_TST_INFO_set_serial"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 21
__func__.6:
	.string	"TS_TST_INFO_set_time"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 25
__func__.5:
	.string	"TS_TST_INFO_set_accuracy"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"TS_ACCURACY_set_seconds"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 23
__func__.3:
	.string	"TS_ACCURACY_set_millis"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 23
__func__.2:
	.string	"TS_ACCURACY_set_micros"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"TS_TST_INFO_set_nonce"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"TS_TST_INFO_set_tsa"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
