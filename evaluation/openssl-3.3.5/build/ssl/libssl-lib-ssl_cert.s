	.file	"ssl_cert.c"
	.text
	.type	ossl_check_X509_NAME_type, @function
ossl_check_X509_NAME_type:
.LFB320:
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
.LFE320:
	.size	ossl_check_X509_NAME_type, .-ossl_check_X509_NAME_type
	.type	ossl_check_const_X509_NAME_sk_type, @function
ossl_check_const_X509_NAME_sk_type:
.LFB321:
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
.LFE321:
	.size	ossl_check_const_X509_NAME_sk_type, .-ossl_check_const_X509_NAME_sk_type
	.type	ossl_check_X509_NAME_sk_type, @function
ossl_check_X509_NAME_sk_type:
.LFB322:
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
.LFE322:
	.size	ossl_check_X509_NAME_sk_type, .-ossl_check_X509_NAME_sk_type
	.type	ossl_check_X509_NAME_compfunc_type, @function
ossl_check_X509_NAME_compfunc_type:
.LFB323:
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
.LFE323:
	.size	ossl_check_X509_NAME_compfunc_type, .-ossl_check_X509_NAME_compfunc_type
	.type	ossl_check_X509_NAME_freefunc_type, @function
ossl_check_X509_NAME_freefunc_type:
.LFB325:
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
.LFE325:
	.size	ossl_check_X509_NAME_freefunc_type, .-ossl_check_X509_NAME_freefunc_type
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
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	negl	%edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L18
.L18:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	xchgl	(%rax), %edx
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.type	sk_danetls_record_num, @function
sk_danetls_record_num:
.LFB651:
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
.LFE651:
	.size	sk_danetls_record_num, .-sk_danetls_record_num
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
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
.LFE708:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB709:
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
.LFE709:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB724:
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
.LFE724:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB725:
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
.LFE725:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_X509_NAME_free, @function
lh_X509_NAME_free:
.LFB726:
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
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	lh_X509_NAME_free, .-lh_X509_NAME_free
	.type	lh_X509_NAME_insert, @function
lh_X509_NAME_insert:
.LFB728:
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
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	lh_X509_NAME_insert, .-lh_X509_NAME_insert
	.type	lh_X509_NAME_retrieve, @function
lh_X509_NAME_retrieve:
.LFB730:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	lh_X509_NAME_retrieve, .-lh_X509_NAME_retrieve
	.type	lh_X509_NAME_doall_thunk, @function
lh_X509_NAME_doall_thunk:
.LFB735:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	lh_X509_NAME_doall_thunk, .-lh_X509_NAME_doall_thunk
	.type	lh_X509_NAME_doall_arg_thunk, @function
lh_X509_NAME_doall_arg_thunk:
.LFB736:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	lh_X509_NAME_doall_arg_thunk, .-lh_X509_NAME_doall_arg_thunk
	.type	lh_X509_NAME_new, @function
lh_X509_NAME_new:
.LFB738:
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
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_X509_NAME_doall_arg_thunk(%rip), %rsi
	leaq	lh_X509_NAME_doall_thunk(%rip), %rcx
	leaq	lh_X509_NAME_cfn_thunk(%rip), %rdx
	leaq	lh_X509_NAME_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	lh_X509_NAME_new, .-lh_X509_NAME_new
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB801:
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
.LFE801:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB802:
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
.LFE802:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.align 32
	.type	ssl_cert_info, @object
	.size	ssl_cert_info, 72
ssl_cert_info:
	.long	6
	.long	1
	.long	912
	.long	1
	.long	116
	.long	2
	.long	408
	.long	8
	.long	811
	.long	32
	.long	979
	.long	128
	.long	980
	.long	128
	.long	1087
	.long	8
	.long	1088
	.long	8
	.local	ssl_x509_store_ctx_once
	.comm	ssl_x509_store_ctx_once,4,4
	.data
	.align 4
	.type	ssl_x509_store_ctx_idx, @object
	.size	ssl_x509_store_ctx_idx, 4
ssl_x509_store_ctx_idx:
	.long	-1
	.local	ssl_x509_store_ctx_init_ossl_ret_
	.comm	ssl_x509_store_ctx_init_ossl_ret_,4,4
	.text
	.type	ssl_x509_store_ctx_init_ossl_, @function
ssl_x509_store_ctx_init_ossl_:
.LFB837:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ssl_x509_store_ctx_init
	movl	%eax, ssl_x509_store_ctx_init_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE837:
	.size	ssl_x509_store_ctx_init_ossl_, .-ssl_x509_store_ctx_init_ossl_
	.section	.rodata
.LC0:
	.string	"SSL for verify callback"
	.text
	.type	ssl_x509_store_ctx_init, @function
ssl_x509_store_ctx_init:
.LFB838:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$5, %edi
	call	CRYPTO_get_ex_new_index@PLT
	movl	%eax, ssl_x509_store_ctx_idx(%rip)
	movl	ssl_x509_store_ctx_idx(%rip), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE838:
	.size	ssl_x509_store_ctx_init, .-ssl_x509_store_ctx_init
	.globl	SSL_get_ex_data_X509_STORE_CTX_idx
	.type	SSL_get_ex_data_X509_STORE_CTX_idx, @function
SSL_get_ex_data_X509_STORE_CTX_idx:
.LFB839:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ssl_x509_store_ctx_init_ossl_(%rip), %rdx
	leaq	ssl_x509_store_ctx_once(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L50
	movl	ssl_x509_store_ctx_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L51
.L50:
	movl	$-1, %eax
	jmp	.L52
.L51:
	movl	ssl_x509_store_ctx_idx(%rip), %eax
.L52:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE839:
	.size	SSL_get_ex_data_X509_STORE_CTX_idx, .-SSL_get_ex_data_X509_STORE_CTX_idx
	.section	.rodata
.LC1:
	.string	"../ssl/ssl_cert.c"
	.text
	.globl	ssl_cert_new
	.type	ssl_cert_new, @function
ssl_cert_new:
.LFB840:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$8, -24(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	leaq	.LC1(%rip), %rax
	movl	$69, %edx
	movq	%rax, %rsi
	movl	$184, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L55
.L56:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	.LC1(%rip), %rax
	movl	$74, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L57
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$76, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L55
.L57:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	ssl_security_default_callback(%rip), %rdx
	movq	%rdx, 144(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 152(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-8(%rbp), %rax
	addq	$176, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L58
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$85, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$86, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L55
.L58:
	movq	-8(%rbp), %rax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE840:
	.size	ssl_cert_new, .-ssl_cert_new
	.globl	ssl_cert_dup
	.type	ssl_cert_dup, @function
ssl_cert_dup:
.LFB841:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$95, %edx
	movq	%rax, %rsi
	movl	$184, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	.LC1(%rip), %rax
	movl	$105, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L62
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$107, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L61
.L62:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$176, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L63
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$113, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L61
.L63:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
.L64:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	$0, -8(%rbp)
	jmp	.L65
.L72:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
.L66:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
.L67:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L69
.L68:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$149, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
.L70:
	addq	$1, -8(%rbp)
.L65:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L72
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	addq	%rax, %rax
	leaq	.LC1(%rip), %rcx
	movl	$167, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L75
.L73:
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
.L75:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	addq	%rax, %rax
	leaq	.LC1(%rip), %rcx
	movl	$178, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	.L78
.L76:
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
.L78:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-40(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$189, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 56(%rax)
.L79:
	movq	-40(%rbp), %rax
	movl	28(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-40(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-40(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_up_ref@PLT
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 120(%rax)
.L81:
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_up_ref@PLT
	movq	-40(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 112(%rax)
.L82:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-40(%rbp), %rax
	movl	152(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 152(%rax)
	movq	-40(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-40(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-16(%rbp), %rax
	subq	$-128, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	custom_exts_copy@PLT
	testl	%eax, %eax
	je	.L89
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 168(%rdx)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L90
.L84:
	movq	-16(%rbp), %rax
	jmp	.L61
.L85:
	nop
	jmp	.L69
.L86:
	nop
	jmp	.L69
.L87:
	nop
	jmp	.L69
.L88:
	nop
	jmp	.L69
.L89:
	nop
	jmp	.L69
.L90:
	nop
.L69:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_cert_free@PLT
	movl	$0, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE841:
	.size	ssl_cert_dup, .-ssl_cert_dup
	.globl	ssl_cert_clear_certs
	.type	ssl_cert_clear_certs, @function
ssl_cert_clear_certs:
.LFB842:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L96
	movq	$0, -8(%rbp)
	jmp	.L94
.L95:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$250, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	addq	$1, -8(%rbp)
.L94:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L95
	jmp	.L91
.L96:
	nop
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE842:
	.size	ssl_cert_clear_certs, .-ssl_cert_clear_certs
	.globl	ssl_cert_free
	.type	ssl_cert_free, @function
ssl_cert_free:
.LFB843:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L102
	movq	-24(%rbp), %rax
	leaq	176(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L103
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_cert_clear_certs@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$278, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$279, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$280, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-24(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	custom_exts_free@PLT
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$285, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$287, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	addq	$176, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$289, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L97
.L102:
	nop
	jmp	.L97
.L103:
	nop
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE843:
	.size	ssl_cert_free, .-ssl_cert_free
	.globl	ssl_cert_set0_chain
	.type	ssl_cert_set0_chain, @function
ssl_cert_set0_chain:
.LFB844:
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
	cmpq	$0, -40(%rbp)
	je	.L105
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L106
.L105:
	movq	-48(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L106:
	cmpq	$0, -16(%rbp)
	jne	.L107
	movl	$0, %eax
	jmp	.L108
.L107:
	movl	$0, -4(%rbp)
	jmp	.L109
.L111:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_security_cert@PLT
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L110
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$304, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-28(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L108
.L110:
	addl	$1, -4(%rbp)
.L109:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L111
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE844:
	.size	ssl_cert_set0_chain, .-ssl_cert_set0_chain
	.globl	ssl_cert_set1_chain
	.type	ssl_cert_set1_chain, @function
ssl_cert_set1_chain:
.LFB845:
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
	cmpq	$0, -40(%rbp)
	jne	.L113
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_set0_chain@PLT
	jmp	.L114
.L113:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L115
	movl	$0, %eax
	jmp	.L114
.L115:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_set0_chain@PLT
	testl	%eax, %eax
	jne	.L116
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	$0, %eax
	jmp	.L114
.L116:
	movl	$1, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE845:
	.size	ssl_cert_set1_chain, .-ssl_cert_set1_chain
	.globl	ssl_cert_add0_chain_cert
	.type	ssl_cert_add0_chain_cert, @function
ssl_cert_add0_chain_cert:
.LFB846:
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
	cmpq	$0, -40(%rbp)
	je	.L118
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L119
.L118:
	movq	-48(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L119:
	cmpq	$0, -24(%rbp)
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_security_cert@PLT
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L122
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$338, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-28(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L122:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L123
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L123:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L125
.L124:
	movl	$0, %eax
	jmp	.L121
.L125:
	movl	$1, %eax
.L121:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE846:
	.size	ssl_cert_add0_chain_cert, .-ssl_cert_add0_chain_cert
	.globl	ssl_cert_add1_chain_cert
	.type	ssl_cert_add1_chain_cert, @function
ssl_cert_add1_chain_cert:
.LFB847:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_add0_chain_cert@PLT
	testl	%eax, %eax
	jne	.L127
	movl	$0, %eax
	jmp	.L128
.L127:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	movl	$1, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE847:
	.size	ssl_cert_add1_chain_cert, .-ssl_cert_add1_chain_cert
	.globl	ssl_cert_select_current
	.type	ssl_cert_select_current, @function
ssl_cert_select_current:
.LFB848:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L130
	movl	$0, %eax
	jmp	.L131
.L130:
	movq	$0, -8(%rbp)
	jmp	.L132
.L134:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L133
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L133
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L131
.L133:
	addq	$1, -8(%rbp)
.L132:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L134
	movq	$0, -8(%rbp)
	jmp	.L135
.L137:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	testl	%eax, %eax
	jne	.L136
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L131
.L136:
	addq	$1, -8(%rbp)
.L135:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L137
	movl	$0, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE848:
	.size	ssl_cert_select_current, .-ssl_cert_select_current
	.globl	ssl_cert_set_current
	.type	ssl_cert_set_current, @function
ssl_cert_set_current:
.LFB849:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L139
	movl	$0, %eax
	jmp	.L140
.L139:
	cmpq	$1, -48(%rbp)
	jne	.L141
	movq	$0, -16(%rbp)
	jmp	.L142
.L141:
	cmpq	$2, -48(%rbp)
	jne	.L143
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L142
	movl	$0, %eax
	jmp	.L140
.L143:
	movl	$0, %eax
	jmp	.L140
.L142:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L144
.L146:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L145
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L145
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L140
.L145:
	addq	$1, -8(%rbp)
.L144:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L146
	movl	$0, %eax
.L140:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE849:
	.size	ssl_cert_set_current, .-ssl_cert_set_current
	.globl	ssl_cert_set_cert_cb
	.type	ssl_cert_set_cert_cb, @function
ssl_cert_set_cert_cb:
.LFB850:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 104(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE850:
	.size	ssl_cert_set_cert_cb, .-ssl_cert_set_cert_cb
	.section	.rodata
.LC2:
	.string	"ssl_client"
.LC3:
	.string	"ssl_server"
	.text
	.type	ssl_verify_internal, @function
ssl_verify_internal:
.LFB851:
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
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L149
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L150
.L149:
	cmpq	$0, -88(%rbp)
	jne	.L150
	movl	$0, %eax
	jmp	.L151
.L150:
	cmpq	$0, -80(%rbp)
	je	.L152
	cmpq	$0, -88(%rbp)
	je	.L152
	movl	$0, %eax
	jmp	.L151
.L152:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L154
.L153:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.L154:
	movq	-48(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L155
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$442, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L155:
	cmpq	$0, -80(%rbp)
	je	.L156
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L157
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$449, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L158
.L156:
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_init_rpk@PLT
	testl	%eax, %eax
	jne	.L157
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L158
.L157:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_param@PLT
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_security_level@PLT
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_auth_level@PLT
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	andl	$196608, %eax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_flags@PLT
	movq	-72(%rbp), %rax
	movq	64(%rax), %rbx
	call	SSL_get_ex_data_X509_STORE_CTX_idx@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_ex_data@PLT
	testl	%eax, %eax
	je	.L167
	movq	-72(%rbp), %rax
	addq	$1184, %rax
	testq	%rax, %rax
	je	.L160
	movq	-72(%rbp), %rax
	movq	1192(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jle	.L160
	movq	-72(%rbp), %rax
	leaq	1184(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set0_dane@PLT
.L160:
	movq	-72(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L161
	leaq	.LC2(%rip), %rax
	jmp	.L162
.L161:
	leaq	.LC3(%rip), %rax
.L162:
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_STORE_CTX_set_default@PLT
	movq	-72(%rbp), %rax
	movq	1176(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1@PLT
	movq	-72(%rbp), %rax
	movq	2272(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-72(%rbp), %rax
	movq	2272(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_verify_cb@PLT
.L163:
	movq	-48(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L164
	movq	-48(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -20(%rbp)
	jmp	.L165
.L164:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L165
	movl	$0, -20(%rbp)
.L165:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 2336(%rax)
	movq	-72(%rbp), %rax
	movq	2328(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, 2328(%rax)
	cmpq	$0, -80(%rbp)
	je	.L166
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_chain@PLT
	testq	%rax, %rax
	je	.L166
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get1_chain@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 2328(%rdx)
	movq	-72(%rbp), %rax
	movq	2328(%rax), %rax
	testq	%rax, %rax
	jne	.L166
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$509, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -20(%rbp)
.L166:
	movq	-72(%rbp), %rax
	movq	1176(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_move_peername@PLT
	jmp	.L158
.L167:
	nop
.L158:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movl	-20(%rbp), %eax
.L151:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE851:
	.size	ssl_verify_internal, .-ssl_verify_internal
	.globl	ssl_verify_rpk
	.type	ssl_verify_rpk, @function
ssl_verify_rpk:
.LFB852:
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
	call	ssl_verify_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE852:
	.size	ssl_verify_rpk, .-ssl_verify_rpk
	.globl	ssl_verify_cert_chain
	.type	ssl_verify_cert_chain, @function
ssl_verify_cert_chain:
.LFB853:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_verify_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE853:
	.size	ssl_verify_cert_chain, .-ssl_verify_cert_chain
	.type	set0_CA_list, @function
set0_CA_list:
.LFB854:
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
	movq	%rsi, -32(%rbp)
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE854:
	.size	set0_CA_list, .-set0_CA_list
	.globl	SSL_dup_CA_list
	.type	SSL_dup_CA_list, @function
SSL_dup_CA_list:
.LFB855:
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
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -24(%rbp)
	movl	$0, %edi
	call	ossl_check_X509_NAME_compfunc_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L174
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$562, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L175
.L174:
	movl	$0, -20(%rbp)
	jmp	.L176
.L178:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L177
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$568, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L175
.L177:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	addl	$1, -20(%rbp)
.L176:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L178
	movq	-32(%rbp), %rax
.L175:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE855:
	.size	SSL_dup_CA_list, .-SSL_dup_CA_list
	.globl	SSL_set0_CA_list
	.type	SSL_set0_CA_list, @function
SSL_set0_CA_list:
.LFB856:
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
	je	.L180
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L181
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L182
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L183
.L182:
	movq	$0, -8(%rbp)
	jmp	.L183
.L181:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L183
.L180:
	movq	$0, -8(%rbp)
.L183:
	cmpq	$0, -8(%rbp)
	je	.L186
	movq	-8(%rbp), %rax
	leaq	2344(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	set0_CA_list
	jmp	.L179
.L186:
	nop
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE856:
	.size	SSL_set0_CA_list, .-SSL_set0_CA_list
	.globl	SSL_CTX_set0_CA_list
	.type	SSL_CTX_set0_CA_list, @function
SSL_CTX_set0_CA_list:
.LFB857:
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
	leaq	296(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	set0_CA_list
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE857:
	.size	SSL_CTX_set0_CA_list, .-SSL_CTX_set0_CA_list
	.globl	SSL_CTX_get0_CA_list
	.type	SSL_CTX_get0_CA_list, @function
SSL_CTX_get0_CA_list:
.LFB858:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE858:
	.size	SSL_CTX_get0_CA_list, .-SSL_CTX_get0_CA_list
	.globl	SSL_get0_CA_list
	.type	SSL_get0_CA_list, @function
SSL_get0_CA_list:
.LFB859:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L191
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L192
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L193
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L194
.L193:
	movq	$0, -8(%rbp)
	jmp	.L194
.L192:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L194
.L191:
	movq	$0, -8(%rbp)
.L194:
	cmpq	$0, -8(%rbp)
	jne	.L195
	movl	$0, %eax
	jmp	.L196
.L195:
	movq	-8(%rbp), %rax
	movq	2344(%rax), %rax
	testq	%rax, %rax
	je	.L197
	movq	-8(%rbp), %rax
	movq	2344(%rax), %rax
	jmp	.L196
.L197:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	296(%rax), %rax
.L196:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE859:
	.size	SSL_get0_CA_list, .-SSL_get0_CA_list
	.globl	SSL_CTX_set_client_CA_list
	.type	SSL_CTX_set_client_CA_list, @function
SSL_CTX_set_client_CA_list:
.LFB860:
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
	leaq	304(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	set0_CA_list
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE860:
	.size	SSL_CTX_set_client_CA_list, .-SSL_CTX_set_client_CA_list
	.globl	SSL_CTX_get_client_CA_list
	.type	SSL_CTX_get_client_CA_list, @function
SSL_CTX_get_client_CA_list:
.LFB861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	SSL_CTX_get_client_CA_list, .-SSL_CTX_get_client_CA_list
	.globl	SSL_set_client_CA_list
	.type	SSL_set_client_CA_list, @function
SSL_set_client_CA_list:
.LFB862:
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
	je	.L203
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L204
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L205
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L206
.L205:
	movq	$0, -8(%rbp)
	jmp	.L206
.L204:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L206
.L203:
	movq	$0, -8(%rbp)
.L206:
	cmpq	$0, -8(%rbp)
	je	.L209
	movq	-8(%rbp), %rax
	leaq	2352(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	set0_CA_list
	jmp	.L202
.L209:
	nop
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE862:
	.size	SSL_set_client_CA_list, .-SSL_set_client_CA_list
	.globl	SSL_get0_peer_CA_list
	.type	SSL_get0_peer_CA_list, @function
SSL_get0_peer_CA_list:
.LFB863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L211
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L212
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L213
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L214
.L213:
	movq	$0, -8(%rbp)
	jmp	.L214
.L212:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L214
.L211:
	movq	$0, -8(%rbp)
.L214:
	cmpq	$0, -8(%rbp)
	jne	.L215
	movl	$0, %eax
	jmp	.L216
.L215:
	movq	-8(%rbp), %rax
	movq	744(%rax), %rax
.L216:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE863:
	.size	SSL_get0_peer_CA_list, .-SSL_get0_peer_CA_list
	.globl	SSL_get_client_CA_list
	.type	SSL_get_client_CA_list, @function
SSL_get_client_CA_list:
.LFB864:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L218
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L219
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L220
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L221
.L220:
	movq	$0, -8(%rbp)
	jmp	.L221
.L219:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L221
.L218:
	movq	$0, -8(%rbp)
.L221:
	cmpq	$0, -8(%rbp)
	jne	.L222
	movl	$0, %eax
	jmp	.L223
.L222:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L224
	movq	-8(%rbp), %rax
	movq	744(%rax), %rax
	jmp	.L223
.L224:
	movq	-8(%rbp), %rax
	movq	2352(%rax), %rax
	testq	%rax, %rax
	je	.L225
	movq	-8(%rbp), %rax
	movq	2352(%rax), %rax
	jmp	.L223
.L225:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	304(%rax), %rax
.L223:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE864:
	.size	SSL_get_client_CA_list, .-SSL_get_client_CA_list
	.type	add_ca_name, @function
add_ca_name:
.LFB865:
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
	cmpq	$0, -48(%rbp)
	jne	.L228
	movl	$0, %eax
	jmp	.L229
.L228:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L230
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L230
	movl	$0, %eax
	jmp	.L229
.L230:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L231
	movl	$0, %eax
	jmp	.L229
.L231:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L232
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movl	$0, %eax
	jmp	.L229
.L232:
	movl	$1, %eax
.L229:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE865:
	.size	add_ca_name, .-add_ca_name
	.globl	SSL_add1_to_CA_list
	.type	SSL_add1_to_CA_list, @function
SSL_add1_to_CA_list:
.LFB866:
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
	je	.L234
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L235
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L236
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L237
.L236:
	movq	$0, -8(%rbp)
	jmp	.L237
.L235:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L237
.L234:
	movq	$0, -8(%rbp)
.L237:
	cmpq	$0, -8(%rbp)
	jne	.L238
	movl	$0, %eax
	jmp	.L239
.L238:
	movq	-8(%rbp), %rax
	leaq	2344(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	add_ca_name
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	SSL_add1_to_CA_list, .-SSL_add1_to_CA_list
	.globl	SSL_CTX_add1_to_CA_list
	.type	SSL_CTX_add1_to_CA_list, @function
SSL_CTX_add1_to_CA_list:
.LFB867:
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
	leaq	296(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	add_ca_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	SSL_CTX_add1_to_CA_list, .-SSL_CTX_add1_to_CA_list
	.globl	SSL_add_client_CA
	.type	SSL_add_client_CA, @function
SSL_add_client_CA:
.LFB868:
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
	je	.L243
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L244
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L245
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L246
.L245:
	movq	$0, -8(%rbp)
	jmp	.L246
.L244:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L246
.L243:
	movq	$0, -8(%rbp)
.L246:
	cmpq	$0, -8(%rbp)
	jne	.L247
	movl	$0, %eax
	jmp	.L248
.L247:
	movq	-8(%rbp), %rax
	leaq	2352(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	add_ca_name
.L248:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	SSL_add_client_CA, .-SSL_add_client_CA
	.globl	SSL_CTX_add_client_CA
	.type	SSL_CTX_add_client_CA, @function
SSL_CTX_add_client_CA:
.LFB869:
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
	leaq	304(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	add_ca_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE869:
	.size	SSL_CTX_add_client_CA, .-SSL_CTX_add_client_CA
	.type	xname_cmp, @function
xname_cmp:
.LFB870:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	movl	%eax, -8(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L252
	cmpl	$0, -12(%rbp)
	jns	.L253
.L252:
	movl	$-2, -4(%rbp)
	jmp	.L254
.L253:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.L255
	movl	-8(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L254
.L255:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4(%rbp)
.L254:
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$721, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$722, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	xname_cmp, .-xname_cmp
	.type	xname_sk_cmp, @function
xname_sk_cmp:
.LFB871:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xname_cmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	xname_sk_cmp, .-xname_sk_cmp
	.type	xname_hash, @function
xname_hash:
.LFB872:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_hash_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE872:
	.size	xname_hash, .-xname_hash
	.globl	SSL_load_client_CA_file_ex
	.type	SSL_load_client_CA_file_ex, @function
SSL_load_client_CA_file_ex:
.LFB873:
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
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	xname_cmp(%rip), %rdx
	leaq	xname_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_X509_NAME_new
	movq	%rax, -56(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L262
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$750, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L263
.L262:
	cmpq	$0, -48(%rbp)
	jne	.L264
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L263
.L264:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L265
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$760, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L263
.L265:
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jle	.L279
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -40(%rbp)
.L274:
	leaq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	testq	%rax, %rax
	je	.L280
	cmpq	$0, -32(%rbp)
	jne	.L269
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L269
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L263
.L269:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L281
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L282
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_X509_NAME_retrieve
	testq	%rax, %rax
	je	.L272
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L274
.L272:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_X509_NAME_insert
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L283
	jmp	.L274
.L280:
	nop
	jmp	.L275
.L279:
	nop
	jmp	.L263
.L281:
	nop
	jmp	.L263
.L282:
	nop
	jmp	.L263
.L283:
	nop
.L263:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, -32(%rbp)
.L275:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	lh_X509_NAME_free
	cmpq	$0, -32(%rbp)
	je	.L276
	call	ERR_clear_error@PLT
.L276:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE873:
	.size	SSL_load_client_CA_file_ex, .-SSL_load_client_CA_file_ex
	.globl	SSL_load_client_CA_file
	.type	SSL_load_client_CA_file, @function
SSL_load_client_CA_file:
.LFB874:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_load_client_CA_file_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE874:
	.size	SSL_load_client_CA_file, .-SSL_load_client_CA_file
	.globl	SSL_add_file_cert_subjects_to_stack
	.type	SSL_add_file_cert_subjects_to_stack, @function
SSL_add_file_cert_subjects_to_stack:
.LFB875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movl	$1, -20(%rbp)
	leaq	xname_sk_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_compfunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_set_cmp_func@PLT
	movq	%rax, -40(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L287
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$830, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L288
.L287:
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jle	.L299
.L289:
	leaq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	testq	%rax, %rax
	je	.L300
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L301
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L302
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	testl	%eax, %eax
	js	.L294
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	jmp	.L289
.L294:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L289
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	jmp	.L288
.L300:
	nop
	call	ERR_clear_error@PLT
	jmp	.L296
.L299:
	nop
	jmp	.L288
.L301:
	nop
	jmp	.L288
.L302:
	nop
.L288:
	movl	$0, -20(%rbp)
.L296:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_compfunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_set_cmp_func@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE875:
	.size	SSL_add_file_cert_subjects_to_stack, .-SSL_add_file_cert_subjects_to_stack
	.section	.rodata
.LC4:
	.string	"%s/%s"
.LC5:
	.string	"calling OPENSSL_dir_read(%s)"
	.text
	.globl	SSL_add_dir_cert_subjects_to_stack
	.type	SSL_add_dir_cert_subjects_to_stack, @function
SSL_add_dir_cert_subjects_to_stack:
.LFB876:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1224, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1224(%rbp)
	movq	%rsi, -1232(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L304
.L312:
	movq	-1232(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$2, %rax
	cmpq	$1024, %rax
	jbe	.L305
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$887, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$270, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L311
.L305:
	movq	-32(%rbp), %rcx
	movq	-1232(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	-1072(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1024, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -36(%rbp)
	leaq	-1216(%rbp), %rdx
	leaq	-1072(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	jne	.L307
	movl	-1192(%rbp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	jne	.L307
	jmp	.L304
.L307:
	cmpl	$0, -36(%rbp)
	jle	.L316
	cmpl	$1023, -36(%rbp)
	jg	.L316
	leaq	-1072(%rbp), %rdx
	movq	-1224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_file_cert_subjects_to_stack@PLT
	testl	%eax, %eax
	je	.L317
.L304:
	movq	-1232(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_DIR_read@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L312
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L313
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$907, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	-1232(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$909, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L311
.L313:
	movl	$1, -20(%rbp)
	jmp	.L311
.L316:
	nop
	jmp	.L311
.L317:
	nop
.L311:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L314
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_DIR_end@PLT
.L314:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE876:
	.size	SSL_add_dir_cert_subjects_to_stack, .-SSL_add_dir_cert_subjects_to_stack
	.type	add_uris_recursive, @function
add_uris_recursive:
.LFB877:
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
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	$1, -20(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_STORE_open@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L332
	jmp	.L321
.L329:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_load@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L322
	jmp	.L321
.L322:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get_type@PLT
	movl	%eax, -60(%rbp)
	cmpl	$1, -60(%rbp)
	jne	.L323
	cmpl	$0, -84(%rbp)
	jle	.L324
	movl	-84(%rbp), %eax
	leal	-1(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_NAME@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_uris_recursive
	movl	%eax, -20(%rbp)
	jmp	.L324
.L323:
	cmpl	$5, -60(%rbp)
	jne	.L324
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_get0_CERT@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L333
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L333
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L333
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	testl	%eax, %eax
	js	.L327
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	jmp	.L324
.L327:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L324
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	jmp	.L320
.L324:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
	movq	$0, -32(%rbp)
.L321:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_eof@PLT
	testl	%eax, %eax
	jne	.L328
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_error@PLT
	testl	%eax, %eax
	je	.L329
.L328:
	call	ERR_clear_error@PLT
	jmp	.L330
.L332:
	nop
	jmp	.L320
.L333:
	nop
.L320:
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_INFO_free@PLT
.L330:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STORE_close@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE877:
	.size	add_uris_recursive, .-add_uris_recursive
	.globl	SSL_add_store_cert_subjects_to_stack
	.type	SSL_add_store_cert_subjects_to_stack, @function
SSL_add_store_cert_subjects_to_stack:
.LFB878:
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
	leaq	xname_sk_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_compfunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_set_cmp_func@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_uris_recursive
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_compfunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_set_cmp_func@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE878:
	.size	SSL_add_store_cert_subjects_to_stack, .-SSL_add_store_cert_subjects_to_stack
	.section	.rodata
.LC6:
	.string	"Verify error:%s"
	.text
	.globl	ssl_build_cert_chain
	.type	ssl_build_cert_chain, @function
ssl_build_cert_chain:
.LFB879:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L337
	movq	-104(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L338
.L337:
	movq	-112(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -24(%rbp)
.L338:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L339
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L340
.L339:
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
.L340:
	movl	$0, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L341
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1003, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$179, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L342
.L341:
	movl	-116(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L343
	call	X509_STORE_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L363
	movl	$0, -68(%rbp)
	jmp	.L345
.L347:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_cert@PLT
	testl	%eax, %eax
	je	.L364
	addl	$1, -68(%rbp)
.L345:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -68(%rbp)
	jl	.L347
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_cert@PLT
	testl	%eax, %eax
	jne	.L348
	jmp	.L342
.L343:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L349
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L350
.L349:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.L350:
	movl	-116(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L348
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
.L348:
	movq	-64(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L351
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1031, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L342
.L351:
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L352
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1035, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L342
.L352:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	andl	$196608, %eax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_flags@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jg	.L353
	movl	-116(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L353
	movl	-116(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L354
	call	ERR_clear_error@PLT
.L354:
	movl	$1, -68(%rbp)
	movl	$2, -72(%rbp)
.L353:
	cmpl	$0, -68(%rbp)
	jle	.L355
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get1_chain@PLT
	movq	%rax, -48(%rbp)
.L355:
	cmpl	$0, -68(%rbp)
	jg	.L356
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -68(%rbp)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1053, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-68(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$134, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L342
.L356:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_shift@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-116(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L357
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L357
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leal	-1(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_extension_flags@PLT
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L357
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
.L357:
	movl	$0, -68(%rbp)
	jmp	.L358
.L360:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_security_cert@PLT
	movl	%eax, -72(%rbp)
	cmpl	$1, -72(%rbp)
	je	.L359
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1079, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-72(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	$0, -72(%rbp)
	jmp	.L342
.L359:
	addl	$1, -68(%rbp)
.L358:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -68(%rbp)
	jl	.L360
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpl	$0, -72(%rbp)
	jne	.L365
	movl	$1, -72(%rbp)
	jmp	.L342
.L363:
	nop
	jmp	.L342
.L364:
	nop
	jmp	.L342
.L365:
	nop
.L342:
	movl	-116(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L361
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
.L361:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE879:
	.size	ssl_build_cert_chain, .-ssl_build_cert_chain
	.globl	ssl_cert_set_cert_store
	.type	ssl_cert_set_cert_store, @function
ssl_cert_set_cert_store:
.LFB880:
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
	cmpl	$0, -36(%rbp)
	je	.L367
	movq	-24(%rbp), %rax
	addq	$112, %rax
	movq	%rax, -8(%rbp)
	jmp	.L368
.L367:
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	%rax, -8(%rbp)
.L368:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpl	$0, -40(%rbp)
	je	.L369
	cmpq	$0, -32(%rbp)
	je	.L369
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_up_ref@PLT
.L369:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE880:
	.size	ssl_cert_set_cert_store, .-ssl_cert_set_cert_store
	.globl	ssl_cert_get_cert_store
	.type	ssl_cert_get_cert_store, @function
ssl_cert_get_cert_store:
.LFB881:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L372
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	jmp	.L373
.L372:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
.L373:
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE881:
	.size	ssl_cert_get_cert_store, .-ssl_cert_get_cert_store
	.globl	ssl_get_security_level_bits
	.type	ssl_get_security_level_bits, @function
ssl_get_security_level_bits:
.LFB882:
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
	cmpq	$0, -32(%rbp)
	je	.L376
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_security_level@PLT
	movl	%eax, -4(%rbp)
	jmp	.L377
.L376:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_security_level@PLT
	movl	%eax, -4(%rbp)
.L377:
	cmpl	$5, -4(%rbp)
	jle	.L378
	movl	$5, -4(%rbp)
	jmp	.L379
.L378:
	cmpl	$0, -4(%rbp)
	jns	.L379
	movl	$0, -4(%rbp)
.L379:
	cmpq	$0, -40(%rbp)
	je	.L380
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
.L380:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	minbits_table.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE882:
	.size	ssl_get_security_level_bits, .-ssl_get_security_level_bits
	.type	ssl_security_default_callback, @function
ssl_security_default_callback:
.LFB883:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_get_security_level_bits@PLT
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	jne	.L383
	cmpl	$262151, -52(%rbp)
	jne	.L384
	cmpl	$79, -56(%rbp)
	jg	.L384
	movl	$0, %eax
	jmp	.L407
.L384:
	movl	$1, %eax
	jmp	.L407
.L383:
	cmpl	$65539, -52(%rbp)
	jg	.L386
	cmpl	$65537, -52(%rbp)
	jge	.L387
	cmpl	$15, -52(%rbp)
	je	.L388
	cmpl	$15, -52(%rbp)
	jg	.L386
	cmpl	$9, -52(%rbp)
	je	.L389
	cmpl	$10, -52(%rbp)
	je	.L390
	jmp	.L386
.L387:
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L391
	movl	$0, %eax
	jmp	.L407
.L391:
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L392
	movl	$0, %eax
	jmp	.L407
.L392:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L393
	movl	$0, %eax
	jmp	.L407
.L393:
	cmpl	$160, -12(%rbp)
	jle	.L394
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L394
	movl	$0, %eax
	jmp	.L407
.L394:
	movl	$390, -28(%rbp)
	movl	-32(%rbp), %eax
	cmpl	$2, %eax
	jle	.L408
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	$772, %eax
	je	.L408
	movq	-24(%rbp), %rax
	movl	28(%rax), %edx
	movl	-28(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L408
	movl	$0, %eax
	jmp	.L407
.L389:
	cmpq	$0, -40(%rbp)
	je	.L397
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L398
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L399
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L400
.L399:
	movq	$0, -8(%rbp)
	jmp	.L400
.L398:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L400
.L397:
	movq	$0, -8(%rbp)
.L400:
	cmpq	$0, -8(%rbp)
	jne	.L401
	movl	$0, %eax
	jmp	.L407
.L401:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L402
	cmpl	$770, -60(%rbp)
	jg	.L409
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	jle	.L409
	movl	$0, %eax
	jmp	.L407
.L402:
	cmpl	$256, -60(%rbp)
	je	.L404
	cmpl	$65277, -60(%rbp)
	jle	.L409
.L404:
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	jle	.L409
	movl	$0, %eax
	jmp	.L407
.L388:
	movl	-32(%rbp), %eax
	cmpl	$1, %eax
	jle	.L410
	movl	$0, %eax
	jmp	.L407
.L390:
	movl	-32(%rbp), %eax
	cmpl	$2, %eax
	jle	.L411
	movl	$0, %eax
	jmp	.L407
.L386:
	movl	-56(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L396
	movl	$0, %eax
	jmp	.L407
.L408:
	nop
	jmp	.L396
.L409:
	nop
	jmp	.L396
.L410:
	nop
	jmp	.L396
.L411:
	nop
.L396:
	movl	$1, %eax
.L407:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE883:
	.size	ssl_security_default_callback, .-ssl_security_default_callback
	.globl	ssl_security
	.type	ssl_security, @function
ssl_security:
.LFB884:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	144(%rax), %r10
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	160(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %r8
	movl	-20(%rbp), %edi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	subq	$8, %rsp
	pushq	%rsi
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE884:
	.size	ssl_security, .-ssl_security
	.globl	ssl_ctx_security
	.type	ssl_ctx_security, @function
ssl_ctx_security:
.LFB885:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	144(%rax), %r10
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	160(%rax), %rsi
	movq	-32(%rbp), %r8
	movl	-20(%rbp), %edi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rsi
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE885:
	.size	ssl_ctx_security, .-ssl_ctx_security
	.globl	ssl_cert_lookup_by_nid
	.type	ssl_cert_lookup_by_nid, @function
ssl_cert_lookup_by_nid:
.LFB886:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L417
.L420:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	ssl_cert_info(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L418
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L419
.L418:
	addq	$1, -8(%rbp)
.L417:
	cmpq	$8, -8(%rbp)
	jbe	.L420
	movq	$0, -8(%rbp)
	jmp	.L421
.L423:
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L422
	movq	-8(%rbp), %rax
	leaq	9(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L419
.L422:
	addq	$1, -8(%rbp)
.L421:
	movq	-40(%rbp), %rax
	movq	1632(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L423
	movl	$0, %eax
.L419:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE886:
	.size	ssl_cert_lookup_by_nid, .-ssl_cert_lookup_by_nid
	.globl	ssl_cert_lookup_by_pkey
	.type	ssl_cert_lookup_by_pkey, @function
ssl_cert_lookup_by_pkey:
.LFB887:
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
	movq	$0, -8(%rbp)
	jmp	.L425
.L430:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	ssl_cert_info(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L426
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L427
.L426:
	cmpq	$0, -48(%rbp)
	je	.L428
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L428:
	movq	-24(%rbp), %rax
	jmp	.L429
.L427:
	addq	$1, -8(%rbp)
.L425:
	cmpq	$8, -8(%rbp)
	jbe	.L430
	movq	$0, -8(%rbp)
	jmp	.L431
.L435:
	movq	-56(%rbp), %rax
	movq	352(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L432
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L433
.L432:
	cmpq	$0, -48(%rbp)
	je	.L434
	movq	-8(%rbp), %rax
	leaq	9(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L434:
	movq	-56(%rbp), %rax
	movq	352(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	jmp	.L429
.L433:
	addq	$1, -8(%rbp)
.L431:
	movq	-56(%rbp), %rax
	movq	1632(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L435
	movl	$0, %eax
.L429:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE887:
	.size	ssl_cert_lookup_by_pkey, .-ssl_cert_lookup_by_pkey
	.globl	ssl_cert_lookup_by_idx
	.type	ssl_cert_lookup_by_idx, @function
ssl_cert_lookup_by_idx:
.LFB888:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rax
	addq	$9, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L437
	movl	$0, %eax
	jmp	.L438
.L437:
	cmpq	$8, -8(%rbp)
	jbe	.L439
	movq	-16(%rbp), %rax
	movq	352(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	subq	$72, %rdx
	addq	%rdx, %rax
	jmp	.L438
.L439:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	ssl_cert_info(%rip), %rax
	addq	%rdx, %rax
.L438:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE888:
	.size	ssl_cert_lookup_by_idx, .-ssl_cert_lookup_by_idx
	.section	.rodata
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 13
__func__.9:
	.string	"ssl_cert_dup"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 20
__func__.8:
	.string	"ssl_cert_set0_chain"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 25
__func__.7:
	.string	"ssl_cert_add0_chain_cert"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 20
__func__.6:
	.string	"ssl_verify_internal"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"SSL_dup_CA_list"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 27
__func__.4:
	.string	"SSL_load_client_CA_file_ex"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 36
__func__.3:
	.string	"SSL_add_file_cert_subjects_to_stack"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 35
__func__.2:
	.string	"SSL_add_dir_cert_subjects_to_stack"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"ssl_build_cert_chain"
	.align 16
	.type	minbits_table.0, @object
	.size	minbits_table.0, 24
minbits_table.0:
	.long	0
	.long	80
	.long	112
	.long	128
	.long	192
	.long	256
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
