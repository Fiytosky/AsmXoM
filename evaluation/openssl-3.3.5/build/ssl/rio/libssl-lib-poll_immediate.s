	.file	"poll_immediate.c"
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
	.string	"../ssl/rio/poll_immediate.c"
	.align 8
.LC1:
	.string	"SSL_poll does not currently support blocking operation"
	.align 8
.LC2:
	.string	"SSL_poll currently only supports QUIC SSL objects"
	.align 8
.LC3:
	.string	"SSL_poll currently does not support polling sockets"
	.align 8
.LC4:
	.string	"SSL_poll does not support unknown poll descriptor type %d"
	.text
	.globl	SSL_poll
	.type	SSL_poll, @function
SSL_poll:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movl	$1, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	-152(%rbp), %rax
	andl	$1, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L14
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	movl	$0, %eax
.L15:
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$69, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movl	$418, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -32(%rbp)
	jmp	.L17
.L18:
	movq	-32(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, 24(%rax)
	addq	$1, -32(%rbp)
.L17:
	movq	-32(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L18
	movl	$0, -4(%rbp)
	jmp	.L19
.L16:
	cmpq	$0, -128(%rbp)
	je	.L41
	movq	$0, -16(%rbp)
	jmp	.L21
.L38:
	movq	-16(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -104(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L22
	cmpl	$2, %eax
	jne	.L23
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L42
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L26
	leaq	-104(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_poll_events@PLT
	testl	%eax, %eax
	jne	.L27
	movq	-16(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$1, 24(%rax)
	addq	$1, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.L28
.L29:
	movq	-40(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, 24(%rax)
	addq	$1, -40(%rbp)
.L28:
	movq	-40(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L29
	movl	$0, -4(%rbp)
	jmp	.L19
.L27:
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L43
	addq	$1, -24(%rbp)
	jmp	.L43
.L26:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movl	$418, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$1, 24(%rax)
	addq	$1, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.L32
.L33:
	movq	-48(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, 24(%rax)
	addq	$1, -48(%rbp)
.L32:
	movq	-48(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L33
	movl	$0, -4(%rbp)
	jmp	.L19
.L43:
	nop
	jmp	.L25
.L22:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	movl	$418, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$1, 24(%rax)
	addq	$1, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.L34
.L35:
	movq	-56(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, 24(%rax)
	addq	$1, -56(%rbp)
.L34:
	movq	-56(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L35
	movl	$0, -4(%rbp)
	jmp	.L19
.L23:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC4(%rip), %rdx
	movl	%eax, %ecx
	movl	$418, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$1, 24(%rax)
	addq	$1, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.L36
.L37:
	movq	-64(%rbp), %rax
	imulq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, 24(%rax)
	addq	$1, -64(%rbp)
.L36:
	movq	-64(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L37
	movl	$0, -4(%rbp)
	jmp	.L19
.L42:
	nop
.L25:
	movq	-104(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 24(%rax)
	addq	$1, -16(%rbp)
.L21:
	movq	-16(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L38
	jmp	.L19
.L41:
	nop
.L19:
	cmpq	$0, -160(%rbp)
	je	.L39
	movq	-160(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L39:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	SSL_poll, .-SSL_poll
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 9
__func__.0:
	.string	"SSL_poll"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
