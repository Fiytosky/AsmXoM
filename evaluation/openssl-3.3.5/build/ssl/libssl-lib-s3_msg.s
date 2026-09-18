	.file	"s3_msg.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../ssl/s3_msg.c"
	.text
	.globl	ssl3_do_change_cipher_spec
	.type	ssl3_do_change_cipher_spec, @function
ssl3_do_change_cipher_spec:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L14
	movl	$33, -4(%rbp)
	jmp	.L15
.L14:
	movl	$17, -4(%rbp)
.L15:
	movq	-24(%rbp), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L18
.L17:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	704(%rdx), %rdx
	movq	%rdx, 760(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L19
.L16:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L19
.L20:
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ssl3_do_change_cipher_spec, .-ssl3_do_change_cipher_spec
	.globl	ssl3_send_alert
	.type	ssl3_send_alert, @function
ssl3_send_alert:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L22
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L22
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L23
.L22:
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$1, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$4, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$3, %eax
	je	.L23
	movq	-24(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L24
.L23:
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	tls13_alert_code@PLT
	movl	%eax, -32(%rbp)
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	64(%rax), %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
	movl	%eax, -32(%rbp)
.L25:
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jne	.L26
	cmpl	$70, -32(%rbp)
	jne	.L26
	movl	$40, -32(%rbp)
.L26:
	cmpl	$0, -32(%rbp)
	jns	.L27
	movl	$-1, %eax
	jmp	.L28
.L27:
	movq	-24(%rbp), %rax
	movl	132(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L29
	cmpl	$0, -32(%rbp)
	je	.L29
	movl	$-1, %eax
	jmp	.L28
.L29:
	cmpl	$2, -28(%rbp)
	jne	.L30
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_remove_session@PLT
.L30:
	movq	-24(%rbp), %rax
	movl	$1, 388(%rax)
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 392(%rax)
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 393(%rax)
	movq	-24(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_write_pending@PLT
	testl	%eax, %eax
	jne	.L31
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L28
.L31:
	movl	$-1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ssl3_send_alert, .-ssl3_send_alert
	.globl	ssl3_dispatch_alert
	.type	ssl3_dispatch_alert, @function
ssl3_dispatch_alert:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L33
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L34
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L35
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L36
.L35:
	movq	$0, -16(%rbp)
	jmp	.L36
.L34:
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L36
.L33:
	movq	$0, -16(%rbp)
.L36:
	cmpq	$0, -16(%rbp)
	jne	.L37
	movl	$-1, %eax
	jmp	.L51
.L37:
	movq	-16(%rbp), %rax
	movq	3040(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	movq	-16(%rbp), %rax
	movl	$0, 388(%rax)
	movl	$1, %eax
	jmp	.L51
.L39:
	movb	$21, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$772, %eax
	je	.L40
	movq	-16(%rbp), %rax
	movl	72(%rax), %eax
	jmp	.L41
.L40:
	movl	$771, %eax
.L41:
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_state@PLT
	cmpl	$13, %eax
	jne	.L42
	movq	-16(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	jne	.L42
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	sarl	$8, %eax
	cmpl	$3, %eax
	jne	.L42
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	$769, %eax
	jle	.L42
	movq	-16(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	jne	.L42
	movl	$769, -44(%rbp)
.L42:
	movq	-16(%rbp), %rax
	addq	$392, %rax
	movq	%rax, -40(%rbp)
	movq	$2, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_write_pending@PLT
	testl	%eax, %eax
	je	.L43
	movq	-16(%rbp), %rax
	movl	388(%rax), %eax
	cmpl	$2, %eax
	je	.L44
	movq	-16(%rbp), %rax
	movl	$0, 388(%rax)
	movl	$-1, %eax
	jmp	.L51
.L44:
	movq	-16(%rbp), %rax
	movq	3040(%rax), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$117, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_tls_handle_rlayer_return@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L45
	movl	$-1, %eax
	jmp	.L51
.L45:
	movq	-16(%rbp), %rax
	movq	$0, 3112(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 388(%rax)
	movl	$1, %eax
	jmp	.L51
.L43:
	movq	-16(%rbp), %rax
	movq	3040(%rax), %rax
	movq	48(%rax), %r8
	movq	-16(%rbp), %rax
	movq	3056(%rax), %rax
	leaq	-48(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$128, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_tls_handle_rlayer_return@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L46
	movq	-16(%rbp), %rax
	movl	$2, 388(%rax)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 3112(%rax)
	movzbl	-48(%rbp), %edx
	movq	-16(%rbp), %rax
	movb	%dl, 3120(%rax)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 3128(%rax)
	jmp	.L47
.L46:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-16(%rbp), %rax
	movl	$0, 388(%rax)
	movq	-16(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-16(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-16(%rbp), %rax
	movq	1160(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	392(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	72(%rax), %eax
	movq	-56(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%rsi, %r9
	movl	$2, %r8d
	movq	%rdx, %rcx
	movl	$21, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	*%r10
	addq	$16, %rsp
.L48:
	movq	-16(%rbp), %rax
	movq	2280(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-16(%rbp), %rax
	movq	2280(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L50
.L49:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %rax
	movq	%rax, -8(%rbp)
.L50:
	cmpq	$0, -8(%rbp)
	je	.L47
	movq	-16(%rbp), %rax
	movzbl	392(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movzbl	393(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$16392, %esi
	movq	%rax, %rdi
	call	*%rcx
.L47:
	movl	-20(%rbp), %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ssl3_dispatch_alert, .-ssl3_dispatch_alert
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"ssl3_do_change_cipher_spec"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
