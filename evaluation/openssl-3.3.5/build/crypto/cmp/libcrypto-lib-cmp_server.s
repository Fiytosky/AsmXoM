	.file	"cmp_server.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB111:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB150:
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
.LFE150:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB151:
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
.LFE151:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	ossl_check_const_OSSL_CRMF_MSG_sk_type, @function
ossl_check_const_OSSL_CRMF_MSG_sk_type:
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
	.size	ossl_check_const_OSSL_CRMF_MSG_sk_type, .-ossl_check_const_OSSL_CRMF_MSG_sk_type
	.type	ossl_check_const_OSSL_CMP_CERTSTATUS_sk_type, @function
ossl_check_const_OSSL_CMP_CERTSTATUS_sk_type:
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
	.size	ossl_check_const_OSSL_CMP_CERTSTATUS_sk_type, .-ossl_check_const_OSSL_CMP_CERTSTATUS_sk_type
	.type	ossl_check_OSSL_CMP_ITAV_sk_type, @function
ossl_check_OSSL_CMP_ITAV_sk_type:
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
	.size	ossl_check_OSSL_CMP_ITAV_sk_type, .-ossl_check_OSSL_CMP_ITAV_sk_type
	.type	ossl_check_OSSL_CMP_ITAV_freefunc_type, @function
ossl_check_OSSL_CMP_ITAV_freefunc_type:
.LFB646:
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
.LFE646:
	.size	ossl_check_OSSL_CMP_ITAV_freefunc_type, .-ossl_check_OSSL_CMP_ITAV_freefunc_type
	.type	sk_OSSL_CMP_REVDETAILS_num, @function
sk_OSSL_CMP_REVDETAILS_num:
.LFB670:
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
.LFE670:
	.size	sk_OSSL_CMP_REVDETAILS_num, .-sk_OSSL_CMP_REVDETAILS_num
	.type	sk_OSSL_CMP_REVDETAILS_value, @function
sk_OSSL_CMP_REVDETAILS_value:
.LFB671:
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
.LFE671:
	.size	sk_OSSL_CMP_REVDETAILS_value, .-sk_OSSL_CMP_REVDETAILS_value
	.type	sk_OSSL_CMP_POLLREQ_num, @function
sk_OSSL_CMP_POLLREQ_num:
.LFB695:
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
.LFE695:
	.size	sk_OSSL_CMP_POLLREQ_num, .-sk_OSSL_CMP_POLLREQ_num
	.type	sk_OSSL_CMP_POLLREQ_value, @function
sk_OSSL_CMP_POLLREQ_value:
.LFB696:
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
.LFE696:
	.size	sk_OSSL_CMP_POLLREQ_value, .-sk_OSSL_CMP_POLLREQ_value
	.section	.rodata
.LC0:
	.string	"../crypto/cmp/cmp_server.c"
	.text
	.globl	OSSL_CMP_SRV_CTX_free
	.type	OSSL_CMP_SRV_CTX_free, @function
OSSL_CMP_SRV_CTX_free:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L27
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$52, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L24
.L27:
	nop
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	OSSL_CMP_SRV_CTX_free, .-OSSL_CMP_SRV_CTX_free
	.globl	OSSL_CMP_SRV_CTX_new
	.type	OSSL_CMP_SRV_CTX_new, @function
OSSL_CMP_SRV_CTX_new:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$57, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L33
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-8(%rbp), %rax
	movl	$-2, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-8(%rbp), %rax
	jmp	.L32
.L33:
	nop
	jmp	.L30
.L34:
	nop
.L30:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_free@PLT
	movl	$0, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	OSSL_CMP_SRV_CTX_new, .-OSSL_CMP_SRV_CTX_new
	.globl	OSSL_CMP_SRV_CTX_init
	.type	OSSL_CMP_SRV_CTX_init, @function
OSSL_CMP_SRV_CTX_init:
.LFB747:
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
	movq	%r9, -48(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	OSSL_CMP_SRV_CTX_init, .-OSSL_CMP_SRV_CTX_init
	.globl	OSSL_CMP_SRV_CTX_init_trans
	.type	OSSL_CMP_SRV_CTX_init_trans, @function
OSSL_CMP_SRV_CTX_init_trans:
.LFB748:
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
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	OSSL_CMP_SRV_CTX_init_trans, .-OSSL_CMP_SRV_CTX_init_trans
	.globl	OSSL_CMP_SRV_CTX_get0_cmp_ctx
	.type	OSSL_CMP_SRV_CTX_get0_cmp_ctx, @function
OSSL_CMP_SRV_CTX_get0_cmp_ctx:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	OSSL_CMP_SRV_CTX_get0_cmp_ctx, .-OSSL_CMP_SRV_CTX_get0_cmp_ctx
	.globl	OSSL_CMP_SRV_CTX_get0_custom_ctx
	.type	OSSL_CMP_SRV_CTX_get0_custom_ctx, @function
OSSL_CMP_SRV_CTX_get0_custom_ctx:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$121, %esi
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	OSSL_CMP_SRV_CTX_get0_custom_ctx, .-OSSL_CMP_SRV_CTX_get0_custom_ctx
	.globl	OSSL_CMP_SRV_CTX_set_send_unprotected_errors
	.type	OSSL_CMP_SRV_CTX_set_send_unprotected_errors, @function
OSSL_CMP_SRV_CTX_set_send_unprotected_errors:
.LFB751:
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
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L48:
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 88(%rax)
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	OSSL_CMP_SRV_CTX_set_send_unprotected_errors, .-OSSL_CMP_SRV_CTX_set_send_unprotected_errors
	.globl	OSSL_CMP_SRV_CTX_set_accept_unprotected
	.type	OSSL_CMP_SRV_CTX_set_accept_unprotected, @function
OSSL_CMP_SRV_CTX_set_accept_unprotected:
.LFB752:
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
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L51:
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 92(%rax)
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	OSSL_CMP_SRV_CTX_set_accept_unprotected, .-OSSL_CMP_SRV_CTX_set_accept_unprotected
	.globl	OSSL_CMP_SRV_CTX_set_accept_raverified
	.type	OSSL_CMP_SRV_CTX_set_accept_raverified, @function
OSSL_CMP_SRV_CTX_set_accept_raverified:
.LFB753:
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
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L55
.L54:
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 96(%rax)
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	OSSL_CMP_SRV_CTX_set_accept_raverified, .-OSSL_CMP_SRV_CTX_set_accept_raverified
	.globl	OSSL_CMP_SRV_CTX_set_grant_implicit_confirm
	.type	OSSL_CMP_SRV_CTX_set_grant_implicit_confirm, @function
OSSL_CMP_SRV_CTX_set_grant_implicit_confirm:
.LFB754:
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
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$162, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L57:
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 100(%rax)
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	OSSL_CMP_SRV_CTX_set_grant_implicit_confirm, .-OSSL_CMP_SRV_CTX_set_grant_implicit_confirm
	.section	.rodata
.LC1:
	.string	"server application error"
	.text
	.type	delayed_delivery, @function
delayed_delivery:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$3, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L60
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L60
	cmpq	$0, -80(%rbp)
	je	.L60
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movl	$1, %eax
	jmp	.L61
.L60:
	movl	$0, %eax
.L61:
	cltq
	testq	%rax, %rax
	jne	.L62
	movl	$0, %eax
	jmp	.L63
.L62:
	movq	-72(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L63
.L64:
	cmpl	$1, -36(%rbp)
	jne	.L65
	movq	-72(%rbp), %rax
	movl	$1, 20(%rax)
	jmp	.L66
.L65:
	movl	$2, -4(%rbp)
	movl	$33554432, -8(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -24(%rbp)
	call	ERR_peek_error@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	movq	%rax, -32(%rbp)
.L66:
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L67
	movl	$0, %eax
	jmp	.L63
.L67:
	movq	-72(%rbp), %rax
	movl	88(%rax), %edi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_cmp_error_new@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-64(%rbp), %rax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	delayed_delivery, .-delayed_delivery
	.type	process_cert_request, @function
process_cert_request:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L69
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L69
	cmpq	$0, -96(%rbp)
	je	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	cltq
	testq	%rax, %rax
	jne	.L71
	movl	$0, %eax
	jmp	.L89
.L71:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$7, %eax
	je	.L73
	cmpl	$7, %eax
	jg	.L74
	cmpl	$4, %eax
	je	.L75
	cmpl	$4, %eax
	jg	.L74
	testl	%eax, %eax
	je	.L76
	cmpl	$2, %eax
	jne	.L74
.L75:
	movl	$3, -36(%rbp)
	jmp	.L77
.L76:
	movl	$1, -36(%rbp)
	jmp	.L77
.L73:
	movl	$8, -36(%rbp)
	jmp	.L77
.L74:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$241, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L77:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$4, %eax
	jne	.L78
	movl	$-1, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L79
.L78:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CRMF_MSG_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	je	.L80
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$161, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L80:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CRMF_MSG_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$157, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L81:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_MSG_get_certReqId@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L79
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L79:
	movq	-88(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-88(%rbp), %rax
	movl	96(%rax), %edx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_verify_popo@PLT
	testl	%eax, %eax
	jne	.L82
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	movq	%rax, %rdx
	movl	$512, %esi
	movl	$2, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L83
	movl	$0, %eax
	jmp	.L89
.L82:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get0_header@PLT
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %r10
	leaq	-64(%rbp), %r9
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rcx
	movl	-40(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	leaq	-72(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L90
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	cmpl	$3, %eax
	jne	.L86
	movq	-88(%rbp), %rax
	movl	$1, 20(%rax)
.L86:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_has_implicitConfirm@PLT
	testl	%eax, %eax
	je	.L87
	movq	-88(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L87
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L87
	movl	$1, %edx
	jmp	.L88
.L87:
	movl	$0, %edx
.L88:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_option@PLT
	testl	%eax, %eax
	je	.L91
.L83:
	movq	-88(%rbp), %rax
	movl	88(%rax), %r9d
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %r10
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %esi
	subq	$8, %rsp
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movl	$0, %r9d
	movq	%r10, %r8
	movq	%rax, %rdi
	call	ossl_cmp_certrep_new@PLT
	addq	$32, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L92
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L85
.L90:
	nop
	jmp	.L85
.L91:
	nop
	jmp	.L85
.L92:
	nop
.L85:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-8(%rbp), %rax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	process_cert_request, .-process_cert_request
	.type	process_rr, @function
process_rr:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L94
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L94
	cmpq	$0, -80(%rbp)
	je	.L94
	movl	$1, %eax
	jmp	.L95
.L94:
	movl	$0, %eax
.L95:
	cltq
	testq	%rax, %rax
	jne	.L96
	movl	$0, %eax
	jmp	.L97
.L96:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CMP_REVDETAILS_num
	cmpl	$1, %eax
	je	.L98
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$161, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L97
.L98:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CMP_REVDETAILS_value
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L99
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L97
.L99:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTTEMPLATE_get0_issuer@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTTEMPLATE_get0_serialNumber@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L100
	cmpq	$0, -48(%rbp)
	je	.L100
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_gen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L100
	movl	$0, %eax
	jmp	.L97
.L100:
	movq	-72(%rbp), %rax
	movq	32(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L103
	movq	-72(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_cmp_rp_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L104
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$343, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L103:
	nop
	jmp	.L102
.L104:
	nop
.L102:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_CERTID_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-8(%rbp), %rax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	process_rr, .-process_rr
	.type	process_genm, @function
process_genm:
.LFB758:
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
	cmpq	$0, -40(%rbp)
	je	.L106
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L106
	cmpq	$0, -48(%rbp)
	je	.L106
	movl	$1, %eax
	jmp	.L107
.L106:
	movl	$0, %eax
.L107:
	cltq
	testq	%rax, %rax
	jne	.L108
	movl	$0, %eax
	jmp	.L111
.L108:
	movq	-40(%rbp), %rax
	movq	40(%rax), %r8
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L110
	movl	$0, %eax
	jmp	.L111
.L110:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_genp_new@PLT
	movq	%rax, -24(%rbp)
	movq	OSSL_CMP_ITAV_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
.L111:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	process_genm, .-process_genm
	.type	process_error, @function
process_error:
.LFB759:
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
	je	.L113
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L113
	cmpq	$0, -32(%rbp)
	je	.L113
	movl	$1, %eax
	jmp	.L114
.L113:
	movl	$0, %eax
.L114:
	cltq
	testq	%rax, %rax
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %r9
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkiconf_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L117
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$385, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L117:
	movq	-16(%rbp), %rax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	process_error, .-process_error
	.section	.rodata
.LC2:
	.string	"ERROR"
	.align 8
.LC3:
	.string	"certificate rejected by client"
.LC4:
	.string	"%s"
.LC5:
	.string	"WARN"
	.align 8
.LC6:
	.string	"All CertStatus but the first will be ignored"
.LC7:
	.string	"PKIStatus"
.LC8:
	.string	"without"
.LC9:
	.string	"with"
.LC10:
	.string	"INFO"
	.align 8
.LC11:
	.string	"certificate rejected by client %s %s"
	.text
	.type	process_certConf, @function
process_certConf:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L119
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L119
	cmpq	$0, -96(%rbp)
	je	.L119
	movl	$1, %eax
	jmp	.L120
.L119:
	movl	$0, %eax
.L120:
	cltq
	testq	%rax, %rax
	jne	.L121
	movl	$0, %eax
	jmp	.L122
.L121:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_CERTSTATUS_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_option@PLT
	cmpl	$1, %eax
	je	.L123
	movq	-24(%rbp), %rax
	movl	464(%rax), %eax
	cmpl	$-2, %eax
	je	.L124
.L123:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$407, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$160, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L124:
	cmpl	$0, -36(%rbp)
	jne	.L125
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.5(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	pushq	%rsi
	leaq	.LC4(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$412, %r8d
	movq	%rax, %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L126
.L125:
	cmpl	$1, -36(%rbp)
	jle	.L127
	leaq	.LC5(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.5(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	pushq	%rsi
	leaq	.LC4(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$415, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L127:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OSSL_CMP_CERTSTATUS_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -8(%rbp)
.L126:
	cmpq	$0, -8(%rbp)
	je	.L128
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_asn1_get_int@PLT
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -40(%rbp)
	je	.L129
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L129:
	movq	-88(%rbp), %rax
	movq	56(%rax), %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-40(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L130
	movl	$0, %eax
	jmp	.L122
.L130:
	cmpq	$0, -56(%rbp)
	je	.L128
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	testl	%eax, %eax
	je	.L128
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_status@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	ossl_cmp_PKIStatus_to_string@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L131
	movq	-72(%rbp), %rax
	jmp	.L132
.L131:
	leaq	.LC7(%rip), %rax
.L132:
	cmpq	$0, -72(%rbp)
	jne	.L133
	leaq	.LC8(%rip), %rdx
	jmp	.L134
.L133:
	leaq	.LC9(%rip), %rdx
.L134:
	leaq	.LC10(%rip), %r8
	leaq	.LC0(%rip), %rcx
	leaq	__func__.5(%rip), %rdi
	movq	-24(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rax
	pushq	%rdx
	leaq	.LC11(%rip), %rax
	pushq	%rax
	movq	%r8, %r9
	movl	$436, %r8d
	movq	%rdi, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
.L128:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkiconf_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L135
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$443, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L135:
	movq	-16(%rbp), %rax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	process_certConf, .-process_certConf
	.type	process_non_polling_request, @function
process_non_polling_request:
.LFB761:
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
	je	.L137
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L137
	cmpq	$0, -32(%rbp)
	je	.L137
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L137
	movl	$1, %eax
	jmp	.L138
.L137:
	movl	$0, %eax
.L138:
	cltq
	testq	%rax, %rax
	jne	.L139
	movl	$0, %eax
	jmp	.L140
.L139:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$25, %eax
	je	.L141
	cmpl	$25, %eax
	jg	.L142
	cmpl	$24, %eax
	je	.L143
	cmpl	$24, %eax
	jg	.L142
	cmpl	$23, %eax
	je	.L144
	cmpl	$23, %eax
	jg	.L142
	cmpl	$21, %eax
	je	.L145
	cmpl	$21, %eax
	jg	.L142
	cmpl	$11, %eax
	je	.L146
	cmpl	$11, %eax
	jg	.L142
	cmpl	$7, %eax
	je	.L147
	cmpl	$7, %eax
	jg	.L142
	cmpl	$4, %eax
	je	.L147
	cmpl	$4, %eax
	jg	.L142
	testl	%eax, %eax
	je	.L147
	cmpl	$2, %eax
	jne	.L142
.L147:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L148
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$463, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L150
.L148:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_cert_request
	movq	%rax, -8(%rbp)
	jmp	.L150
.L146:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L151
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$469, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L150
.L151:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_rr
	movq	%rax, -8(%rbp)
	jmp	.L150
.L145:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L153
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L150
.L153:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_genm
	movq	%rax, -8(%rbp)
	jmp	.L150
.L144:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L155
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$481, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L150
.L155:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_error
	movq	%rax, -8(%rbp)
	jmp	.L150
.L143:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L157
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$487, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L150
.L157:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_certConf
	movq	%rax, -8(%rbp)
	jmp	.L150
.L141:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$493, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L150
.L142:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$496, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L150:
	movq	-8(%rbp), %rax
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	process_non_polling_request, .-process_non_polling_request
	.type	process_pollReq, @function
process_pollReq:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L160
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L160
	cmpq	$0, -64(%rbp)
	je	.L160
	movl	$1, %eax
	jmp	.L161
.L160:
	movl	$0, %eax
.L161:
	cltq
	testq	%rax, %rax
	jne	.L162
	movl	$0, %eax
	jmp	.L169
.L162:
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jne	.L164
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$517, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L169
.L164:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_CMP_POLLREQ_num
	cmpl	$1, %eax
	je	.L165
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$523, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$161, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L169
.L165:
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_OSSL_CMP_POLLREQ_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_asn1_get_int@PLT
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %r9
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L166
	movl	$0, %eax
	jmp	.L169
.L166:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L167
	movq	-56(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_non_polling_request
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
	jmp	.L168
.L167:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_cmp_pollRep_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L168
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$540, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L168:
	movq	-8(%rbp), %rax
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	process_pollReq, .-process_pollReq
	.section	.rodata
.LC12:
	.string	"invalid"
.LC13:
	.string	"missing"
	.align 8
.LC14:
	.string	"ignoring %s protection of request message"
	.align 8
.LC15:
	.string	"ignoring missing protection of error message"
	.text
	.type	unprotected_exception, @function
unprotected_exception:
.LFB763:
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
	cmpq	$0, -8(%rbp)
	je	.L171
	cmpq	$0, -16(%rbp)
	je	.L171
	movl	$1, %eax
	jmp	.L172
.L171:
	movl	$0, %eax
.L172:
	cltq
	testq	%rax, %rax
	jne	.L173
	movl	$-1, %eax
	jmp	.L174
.L173:
	cmpl	$0, -24(%rbp)
	je	.L175
	cmpl	$0, -20(%rbp)
	je	.L176
	leaq	.LC12(%rip), %rax
	jmp	.L177
.L176:
	leaq	.LC13(%rip), %rax
.L177:
	leaq	.LC5(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.2(%rip), %rdx
	movq	-8(%rbp), %rsi
	pushq	%rax
	leaq	.LC14(%rip), %rax
	pushq	%rax
	movq	%rdi, %r9
	movl	$558, %r8d
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$1, %eax
	jmp	.L174
.L175:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$23, %eax
	jne	.L178
	movq	-8(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_option@PLT
	cmpl	$1, %eax
	jne	.L178
	leaq	.LC5(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.2(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	leaq	.LC4(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$564, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$1, %eax
	jmp	.L174
.L178:
	movl	$0, %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	unprotected_exception, .-unprotected_exception
	.section	.rodata
.LC16:
	.string	"DEBUG"
.LC17:
	.string	"received %s"
	.align 8
.LC18:
	.string	"Assuming that last transaction with ID=%s got aborted"
.LC19:
	.string	"sending %s"
.LC20:
	.string	"ERR"
	.align 8
.LC21:
	.string	"cannot send proper CMP response"
	.text
	.globl	OSSL_CMP_SRV_process_request
	.type	OSSL_CMP_SRV_process_request, @function
OSSL_CMP_SRV_process_request:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L180
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L180
	cmpq	$0, -128(%rbp)
	je	.L180
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L180
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get0_header@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L181
.L180:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$586, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L182
.L181:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	ossl_cmp_bodytype_to_string@PLT
	movq	%rax, %rdx
	leaq	.LC16(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.1(%rip), %rsi
	movq	-32(%rbp), %rax
	pushq	%rdx
	leaq	.LC17(%rip), %rdx
	pushq	%rdx
	movq	%rdi, %r9
	movl	$592, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L183
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$600, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L184
.L183:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_recipient@PLT
	testl	%eax, %eax
	je	.L216
	movq	-120(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L186
	cmpl	$25, -44(%rbp)
	je	.L186
	cmpl	$23, -44(%rbp)
	je	.L186
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$608, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L184
.L186:
	cmpl	$23, -44(%rbp)
	je	.L187
	cmpl	$23, -44(%rbp)
	jg	.L188
	cmpl	$21, -44(%rbp)
	je	.L187
	cmpl	$21, -44(%rbp)
	jg	.L188
	cmpl	$11, -44(%rbp)
	je	.L187
	cmpl	$11, -44(%rbp)
	jg	.L188
	cmpl	$7, -44(%rbp)
	je	.L187
	cmpl	$7, -44(%rbp)
	jg	.L188
	cmpl	$4, -44(%rbp)
	je	.L187
	cmpl	$4, -44(%rbp)
	jg	.L188
	cmpl	$0, -44(%rbp)
	je	.L187
	cmpl	$2, -44(%rbp)
	jne	.L188
.L187:
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L189
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_OCTET_STRING@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L190
	leaq	.LC5(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-32(%rbp), %rax
	pushq	-56(%rbp)
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$624, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L190:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$627, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L189:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_transactionID@PLT
	testl	%eax, %eax
	je	.L217
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_senderNonce@PLT
	testl	%eax, %eax
	je	.L217
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L218
	movq	-120(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L218
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$636, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L184
.L188:
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L194
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$645, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L184
.L218:
	nop
.L194:
	movq	-120(%rbp), %rax
	movl	92(%rax), %edx
	leaq	unprotected_exception(%rip), %rdi
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_cmp_msg_check_update@PLT
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movq	-32(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_get_protection_nid@PLT
	cmpl	$782, %eax
	je	.L195
	movq	-32(%rbp), %rax
	movq	$0, 232(%rax)
.L195:
	cmpl	$0, -8(%rbp)
	je	.L219
	cmpl	$25, -44(%rbp)
	jne	.L197
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L198
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$661, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L184
.L198:
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_pollReq
	movq	%rax, -16(%rbp)
	jmp	.L184
.L197:
	movq	-120(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L199
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delayed_delivery
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L220
.L199:
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_non_polling_request
	movq	%rax, -16(%rbp)
	jmp	.L184
.L216:
	nop
	jmp	.L184
.L217:
	nop
	jmp	.L184
.L219:
	nop
	jmp	.L184
.L220:
	nop
.L184:
	cmpq	$0, -16(%rbp)
	jne	.L200
	movq	$0, -96(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -100(%rbp)
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_peek_error_data@PLT
	movq	%rax, -72(%rbp)
	movl	$4, -76(%rbp)
	movq	$0, -88(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L201
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L202
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_transactionID@PLT
.L202:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_recipNonce@PLT
.L201:
	movl	-100(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L203
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L204
.L203:
	movq	$0, -96(%rbp)
.L204:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	movl	$2, %edi
	call	OSSL_CMP_STATUSINFO_new@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L200
	movq	-120(%rbp), %rax
	movl	88(%rax), %edi
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_cmp_error_new@PLT
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
.L200:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_print_errors@PLT
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 232(%rax)
	cmpq	$0, -16(%rbp)
	je	.L206
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	movl	%eax, -4(%rbp)
	jmp	.L207
.L206:
	movl	$23, -4(%rbp)
.L207:
	cmpq	$0, -16(%rbp)
	je	.L208
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_cmp_bodytype_to_string@PLT
	movq	%rax, %rdx
	leaq	.LC16(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.1(%rip), %rsi
	movq	-32(%rbp), %rax
	pushq	%rdx
	leaq	.LC19(%rip), %rdx
	pushq	%rdx
	movq	%rdi, %r9
	movl	$710, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L209
.L208:
	leaq	.LC20(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC21(%rip), %rsi
	pushq	%rsi
	leaq	.LC4(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$713, %r8d
	movq	%rax, %rsi
	movl	$3, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L209:
	movq	-32(%rbp), %rax
	movl	$-2, 464(%rax)
	cmpl	$23, -4(%rbp)
	je	.L210
	cmpl	$23, -4(%rbp)
	jg	.L221
	cmpl	$22, -4(%rbp)
	je	.L212
	cmpl	$22, -4(%rbp)
	jg	.L221
	cmpl	$19, -4(%rbp)
	je	.L212
	cmpl	$19, -4(%rbp)
	jg	.L221
	cmpl	$12, -4(%rbp)
	je	.L212
	cmpl	$12, -4(%rbp)
	jg	.L221
	cmpl	$8, -4(%rbp)
	je	.L213
	cmpl	$8, -4(%rbp)
	jg	.L221
	cmpl	$1, -4(%rbp)
	je	.L213
	cmpl	$3, -4(%rbp)
	jne	.L221
.L213:
	movq	-32(%rbp), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_option@PLT
	testl	%eax, %eax
	je	.L222
.L210:
	cmpq	$0, -16(%rbp)
	je	.L212
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_is_error_with_waiting@PLT
	testl	%eax, %eax
	jne	.L223
.L212:
	movq	-120(%rbp), %rax
	movl	$-2, 16(%rax)
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L215
	movq	-120(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L215:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_transactionID@PLT
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_senderNonce@PLT
	movq	-32(%rbp), %rax
	movl	$-1, 464(%rax)
.L221:
	nop
	jmp	.L214
.L222:
	nop
	jmp	.L214
.L223:
	nop
.L214:
	movq	-16(%rbp), %rax
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	OSSL_CMP_SRV_process_request, .-OSSL_CMP_SRV_process_request
	.globl	OSSL_CMP_CTX_server_perform
	.type	OSSL_CMP_CTX_server_perform, @function
OSSL_CMP_CTX_server_perform:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L225
	cmpq	$0, -32(%rbp)
	jne	.L226
.L225:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
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
	jmp	.L227
.L226:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_transfer_cb_arg@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L228
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L227
.L228:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_process_request@PLT
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	OSSL_CMP_CTX_server_perform, .-OSSL_CMP_CTX_server_perform
	.section	.rodata
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 22
__func__.16:
	.string	"OSSL_CMP_SRV_CTX_init"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 28
__func__.15:
	.string	"OSSL_CMP_SRV_CTX_init_trans"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 30
__func__.14:
	.string	"OSSL_CMP_SRV_CTX_get0_cmp_ctx"
	.align 32
	.type	__func__.13, @object
	.size	__func__.13, 33
__func__.13:
	.string	"OSSL_CMP_SRV_CTX_get0_custom_ctx"
	.align 32
	.type	__func__.12, @object
	.size	__func__.12, 45
__func__.12:
	.string	"OSSL_CMP_SRV_CTX_set_send_unprotected_errors"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 40
__func__.11:
	.string	"OSSL_CMP_SRV_CTX_set_accept_unprotected"
	.align 32
	.type	__func__.10, @object
	.size	__func__.10, 39
__func__.10:
	.string	"OSSL_CMP_SRV_CTX_set_accept_raverified"
	.align 32
	.type	__func__.9, @object
	.size	__func__.9, 44
__func__.9:
	.string	"OSSL_CMP_SRV_CTX_set_grant_implicit_confirm"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 21
__func__.8:
	.string	"process_cert_request"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 11
__func__.7:
	.string	"process_rr"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 14
__func__.6:
	.string	"process_error"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 17
__func__.5:
	.string	"process_certConf"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 28
__func__.4:
	.string	"process_non_polling_request"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"process_pollReq"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"unprotected_exception"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"OSSL_CMP_SRV_process_request"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 28
__func__.0:
	.string	"OSSL_CMP_CTX_server_perform"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
