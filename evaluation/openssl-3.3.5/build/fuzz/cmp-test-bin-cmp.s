	.file	"cmp.c"
	.text
	.type	ossl_check_OSSL_CMP_ITAV_sk_type, @function
ossl_check_OSSL_CMP_ITAV_sk_type:
.LFB577:
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
.LFE577:
	.size	ossl_check_OSSL_CMP_ITAV_sk_type, .-ossl_check_OSSL_CMP_ITAV_sk_type
	.type	ossl_check_OSSL_CMP_ITAV_freefunc_type, @function
ossl_check_OSSL_CMP_ITAV_freefunc_type:
.LFB580:
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
.LFE580:
	.size	ossl_check_OSSL_CMP_ITAV_freefunc_type, .-ossl_check_OSSL_CMP_ITAV_freefunc_type
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
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	FuzzerSetRand@PLT
	movl	$0, %esi
	movl	$2, %edi
	call	OPENSSL_init_crypto@PLT
	call	ERR_clear_error@PLT
	movl	$-1, %esi
	movl	$0, %edi
	call	CRYPTO_free_ex_index@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.local	num_responses
	.comm	num_responses,4,4
	.type	transfer_cb, @function
transfer_cb:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	num_responses(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, num_responses(%rip)
	cmpl	$2, %eax
	jle	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_transfer_cb_arg@PLT
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_dup@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	transfer_cb, .-transfer_cb
	.type	print_noop, @function
print_noop:
.LFB741:
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
	movq	%r8, -32(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	print_noop, .-print_noop
	.type	allow_unprotected, @function
allow_unprotected:
.LFB742:
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
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	allow_unprotected, .-allow_unprotected
	.section	.rodata
.LC0:
	.string	""
	.text
	.type	cmp_client_process_response, @function
cmp_client_process_response:
.LFB743:
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
	call	X509_NAME_new@PLT
	movq	%rax, -24(%rbp)
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, 192(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 332(%rax)
	movq	-40(%rbp), %rax
	movl	$-1, 428(%rax)
	call	X509_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 432(%rdx)
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_secretValue@PLT
	testl	%eax, %eax
	je	.L31
	movq	-40(%rbp), %rax
	movq	432(%rax), %rax
	testq	%rax, %rax
	je	.L31
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-40(%rbp), %rax
	movq	432(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_issuer_name@PLT
	testl	%eax, %eax
	je	.L31
	cmpq	$0, -32(%rbp)
	je	.L31
	movq	-40(%rbp), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_serialNumber@PLT
	testl	%eax, %eax
	je	.L31
	leaq	transfer_cb(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_transfer_cb@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_transfer_cb_arg@PLT
	leaq	print_noop(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set_log_cb@PLT
	movl	$0, num_responses(%rip)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	jmp	.L23
.L22:
	movl	$-1, %eax
.L23:
	cmpl	$26, %eax
	je	.L24
	cmpl	$26, %eax
	jg	.L25
	cmpl	$22, %eax
	je	.L26
	cmpl	$22, %eax
	jg	.L25
	cmpl	$12, %eax
	je	.L27
	cmpl	$12, %eax
	jg	.L25
	cmpl	$8, %eax
	je	.L28
	cmpl	$8, %eax
	jg	.L25
	cmpl	$1, %eax
	je	.L29
	cmpl	$3, %eax
	je	.L30
	jmp	.L25
.L29:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_exec_certreq@PLT
	jmp	.L21
.L30:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_exec_certreq@PLT
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_exec_certreq@PLT
	jmp	.L21
.L28:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_exec_certreq@PLT
	jmp	.L21
.L24:
	movq	-40(%rbp), %rax
	movl	$3, 464(%rax)
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_try_certreq@PLT
	jmp	.L21
.L27:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_exec_RR_ses@PLT
	jmp	.L21
.L26:
	movq	OSSL_CMP_ITAV_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_exec_GENM_ses@PLT
	movq	%rax, %rdi
	call	ossl_check_OSSL_CMP_ITAV_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	jmp	.L21
.L25:
	leaq	allow_unprotected(%rip), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_cmp_msg_check_update@PLT
	jmp	.L21
.L31:
	nop
.L21:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	cmp_client_process_response, .-cmp_client_process_response
	.section	.rodata
.LC1:
	.string	"../fuzz/cmp.c"
	.text
	.type	process_cert_request, @function
process_cert_request:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	process_cert_request, .-process_cert_request
	.type	process_rr, @function
process_rr:
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
	movq	%rcx, -32(%rbp)
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	process_rr, .-process_rr
	.type	process_genm, @function
process_genm:
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	process_genm, .-process_genm
	.type	process_error, @function
process_error:
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
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$138, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	process_error, .-process_error
	.type	process_certConf, @function
process_certConf:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	process_certConf, .-process_certConf
	.type	process_pollReq, @function
process_pollReq:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	process_pollReq, .-process_pollReq
	.type	clean_transaction, @function
clean_transaction:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	clean_transaction, .-clean_transaction
	.type	delayed_delivery, @function
delayed_delivery:
.LFB751:
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
.LFE751:
	.size	delayed_delivery, .-delayed_delivery
	.section	.rodata
	.align 8
.LC2:
	.string	"assertion failed: (size_t)BIO_write(in, buf, len) == len"
	.text
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cltq
	cmpq	%rax, -64(%rbp)
	je	.L50
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$179, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L50:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_OSSL_CMP_MSG_bio@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L51
	call	BIO_s_null@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_CMP_SRV_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_CMP_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_OSSL_CMP_MSG_bio@PLT
	call	OSSL_CMP_MSG_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	ASN1_item_print@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpq	$0, -40(%rbp)
	je	.L52
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cmp_client_process_response
.L52:
	cmpq	$0, -32(%rbp)
	je	.L53
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_get0_cmp_ctx@PLT
	movq	%rax, %rdx
	leaq	print_noop(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_CMP_CTX_set_log_cb@PLT
	testl	%eax, %eax
	je	.L53
	leaq	process_error(%rip), %r8
	leaq	process_genm(%rip), %rdi
	leaq	process_rr(%rip), %rcx
	leaq	process_cert_request(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	process_pollReq(%rip), %rsi
	pushq	%rsi
	leaq	process_certConf(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_init@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L53
	leaq	clean_transaction(%rip), %rdx
	leaq	delayed_delivery(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_init_trans@PLT
	testl	%eax, %eax
	je	.L53
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_process_request@PLT
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
.L53:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_SRV_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_free@PLT
.L51:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	call	ERR_clear_error@PLT
	movl	$0, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	FuzzerClearRand@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.section	.rodata
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
