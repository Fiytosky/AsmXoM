	.file	"quic_method.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB627:
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
.LFE627:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB628:
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
.LFE628:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB690:
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
.LFE690:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB691:
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
.LFE691:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB706:
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
.LFE706:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB707:
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
.LFE707:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.globl	OSSL_QUIC_client_method
	.type	OSSL_QUIC_client_method, @function
OSSL_QUIC_client_method:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	OSSL_QUIC_client_method_data.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	OSSL_QUIC_client_method, .-OSSL_QUIC_client_method
	.globl	OSSL_QUIC_client_thread_method
	.type	OSSL_QUIC_client_thread_method, @function
OSSL_QUIC_client_thread_method:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	OSSL_QUIC_client_thread_method_data.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	OSSL_QUIC_client_thread_method, .-OSSL_QUIC_client_thread_method
	.section	.data.rel.ro,"aw"
	.align 32
	.type	OSSL_QUIC_client_method_data.1, @object
	.size	OSSL_QUIC_client_method_data.1, 248
OSSL_QUIC_client_method_data.1:
	.long	1048575
	.long	0
	.quad	0
	.quad	ossl_quic_new
	.quad	ossl_quic_free
	.quad	ossl_quic_reset
	.quad	ossl_quic_init
	.quad	0
	.quad	ossl_quic_deinit
	.quad	ssl_undefined_function
	.quad	ossl_quic_connect
	.quad	ossl_quic_read
	.quad	ossl_quic_peek
	.quad	ossl_quic_write
	.quad	0
	.quad	0
	.quad	ossl_quic_renegotiate_check
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_quic_ctrl
	.quad	ossl_quic_ctx_ctrl
	.quad	ossl_quic_get_cipher_by_char
	.quad	0
	.quad	ossl_quic_pending
	.quad	ossl_quic_num_ciphers
	.quad	ossl_quic_get_cipher
	.quad	tls1_default_timeout
	.quad	ssl3_undef_enc_method
	.quad	ssl_undefined_void_function
	.quad	ossl_quic_callback_ctrl
	.quad	ossl_quic_ctx_callback_ctrl
	.align 32
	.type	OSSL_QUIC_client_thread_method_data.0, @object
	.size	OSSL_QUIC_client_thread_method_data.0, 248
OSSL_QUIC_client_thread_method_data.0:
	.long	1048575
	.long	0
	.quad	0
	.quad	ossl_quic_new
	.quad	ossl_quic_free
	.quad	ossl_quic_reset
	.quad	ossl_quic_init
	.quad	0
	.quad	ossl_quic_deinit
	.quad	ssl_undefined_function
	.quad	ossl_quic_connect
	.quad	ossl_quic_read
	.quad	ossl_quic_peek
	.quad	ossl_quic_write
	.quad	0
	.quad	0
	.quad	ossl_quic_renegotiate_check
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_quic_ctrl
	.quad	ossl_quic_ctx_ctrl
	.quad	ossl_quic_get_cipher_by_char
	.quad	0
	.quad	ossl_quic_pending
	.quad	ossl_quic_num_ciphers
	.quad	ossl_quic_get_cipher
	.quad	tls1_default_timeout
	.quad	ssl3_undef_enc_method
	.quad	ssl_undefined_void_function
	.quad	ossl_quic_callback_ctrl
	.quad	ossl_quic_ctx_callback_ctrl
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
