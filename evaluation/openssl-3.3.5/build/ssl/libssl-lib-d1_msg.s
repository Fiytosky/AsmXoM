	.file	"d1_msg.c"
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
	.string	"../ssl/d1_msg.c"
	.text
	.globl	dtls1_write_app_data_bytes
	.type	dtls1_write_app_data_bytes, @function
dtls1_write_app_data_bytes:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movb	%al, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L14
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L15
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L16
.L15:
	movq	$0, -8(%rbp)
	jmp	.L16
.L14:
	movq	$0, -8(%rbp)
.L16:
	cmpq	$0, -8(%rbp)
	jne	.L17
	movl	$-1, %eax
	jmp	.L18
.L17:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L19
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_get_in_handshake@PLT
	testl	%eax, %eax
	jne	.L19
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L20
	movl	-12(%rbp), %eax
	jmp	.L18
.L20:
	cmpl	$0, -12(%rbp)
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$26, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$229, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L18
.L19:
	cmpq	$16384, -48(%rbp)
	jbe	.L21
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$334, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L18
.L21:
	movzbl	-28(%rbp), %esi
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	dtls1_write_bytes@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	dtls1_write_app_data_bytes, .-dtls1_write_app_data_bytes
	.globl	dtls1_dispatch_alert
	.type	dtls1_dispatch_alert, @function
dtls1_dispatch_alert:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	leaq	-34(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L23
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L24
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L25
.L24:
	movq	$0, -16(%rbp)
	jmp	.L25
.L23:
	movq	$0, -16(%rbp)
.L25:
	cmpq	$0, -16(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L33
.L26:
	movq	-16(%rbp), %rax
	movl	$0, 388(%rax)
	leaq	-34(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	392(%rdx), %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	393(%rdx), %edx
	movb	%dl, (%rax)
	leaq	-48(%rbp), %rcx
	leaq	-34(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$2, %ecx
	movl	$21, %esi
	movq	%rax, %rdi
	call	do_dtls1_write@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L28
	movq	-16(%rbp), %rax
	movl	$1, 388(%rax)
	jmp	.L29
.L28:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-16(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L30
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
.L30:
	movq	-16(%rbp), %rax
	movq	2280(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-16(%rbp), %rax
	movq	2280(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L32
.L31:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %rax
	movq	%rax, -8(%rbp)
.L32:
	cmpq	$0, -8(%rbp)
	je	.L29
	movq	-16(%rbp), %rax
	movzbl	392(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movzbl	393(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$16392, %esi
	movq	%rax, %rdi
	call	*%rcx
.L29:
	movl	-28(%rbp), %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	dtls1_dispatch_alert, .-dtls1_dispatch_alert
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"dtls1_write_app_data_bytes"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
