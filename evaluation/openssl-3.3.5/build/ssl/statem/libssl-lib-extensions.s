	.file	"extensions.c"
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
	.type	ossl_check_const_X509_NAME_sk_type, @function
ossl_check_const_X509_NAME_sk_type:
.LFB403:
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
.LFE403:
	.size	ossl_check_const_X509_NAME_sk_type, .-ossl_check_const_X509_NAME_sk_type
	.type	ossl_check_X509_NAME_sk_type, @function
ossl_check_X509_NAME_sk_type:
.LFB404:
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
.LFE404:
	.size	ossl_check_X509_NAME_sk_type, .-ossl_check_X509_NAME_sk_type
	.type	ossl_check_X509_NAME_freefunc_type, @function
ossl_check_X509_NAME_freefunc_type:
.LFB407:
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
.LFE407:
	.size	ossl_check_X509_NAME_freefunc_type, .-ossl_check_X509_NAME_freefunc_type
	.type	packet_forward, @function
packet_forward:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB541:
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
.LFE541:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_data, @function
PACKET_data:
.LFB543:
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
.LFE543:
	.size	PACKET_data, .-PACKET_data
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jns	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB549:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$1, %rax
	ja	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB550:
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
	call	PACKET_peek_net_2
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_peek_net_3, @function
PACKET_peek_net_3:
.LFB552:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$2, %rax
	ja	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	PACKET_peek_net_3, .-PACKET_peek_net_3
	.type	PACKET_get_net_3, @function
PACKET_get_net_3:
.LFB553:
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
	call	PACKET_peek_net_3
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	PACKET_get_net_3, .-PACKET_get_net_3
	.type	PACKET_peek_bytes, @function
PACKET_peek_bytes:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-24(%rbp), %rax
	jnb	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	PACKET_peek_bytes, .-PACKET_peek_bytes
	.type	PACKET_get_bytes, @function
PACKET_get_bytes:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_peek_bytes
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.type	PACKET_forward, @function
PACKET_forward:
.LFB573:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-16(%rbp), %rax
	jnb	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	PACKET_forward, .-PACKET_forward
	.type	PACKET_get_length_prefixed_2, @function
PACKET_get_length_prefixed_2:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L41
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L42
.L41:
	movl	$0, %eax
	jmp	.L44
.L42:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.type	PACKET_get_length_prefixed_3, @function
PACKET_get_length_prefixed_3:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	je	.L46
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L47
.L46:
	movl	$0, %eax
	jmp	.L49
.L47:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	PACKET_get_length_prefixed_3, .-PACKET_get_length_prefixed_3
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB641:
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
.LFE641:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB642:
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
.LFE642:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB657:
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
.LFE657:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB658:
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
.LFE658:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	tls1_get_peer_groups, @function
tls1_get_peer_groups:
.LFB725:
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
	movq	2600(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	2592(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	tls1_get_peer_groups, .-tls1_get_peer_groups
	.type	ssl_tsan_lock, @function
ssl_tsan_lock:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	ssl_tsan_lock, .-ssl_tsan_lock
	.type	ssl_tsan_unlock, @function
ssl_tsan_unlock:
.LFB727:
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
.LFE727:
	.size	ssl_tsan_unlock, .-ssl_tsan_unlock
	.type	ssl_tsan_counter, @function
ssl_tsan_counter:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_tsan_lock
	testl	%eax, %eax
	je	.L64
	movq	-16(%rbp), %rax
	lock addl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_tsan_unlock
.L64:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	ssl_tsan_counter, .-ssl_tsan_counter
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ext_defs, @object
	.size	ext_defs, 1624
ext_defs:
	.long	65281
	.long	408
	.quad	0
	.quad	tls_parse_ctos_renegotiate
	.quad	tls_parse_stoc_renegotiate
	.quad	tls_construct_stoc_renegotiate
	.quad	tls_construct_ctos_renegotiate
	.quad	final_renegotiate
	.long	0
	.long	1408
	.quad	init_server_name
	.quad	tls_parse_ctos_server_name
	.quad	tls_parse_stoc_server_name
	.quad	tls_construct_stoc_server_name
	.quad	tls_construct_ctos_server_name
	.quad	final_server_name
	.long	1
	.long	1408
	.quad	0
	.quad	tls_parse_ctos_maxfragmentlen
	.quad	tls_parse_stoc_maxfragmentlen
	.quad	tls_construct_stoc_maxfragmentlen
	.quad	tls_construct_ctos_maxfragmentlen
	.quad	final_maxfragmentlen
	.long	12
	.long	144
	.quad	init_srp
	.quad	tls_parse_ctos_srp
	.quad	0
	.quad	0
	.quad	tls_construct_ctos_srp
	.quad	0
	.long	11
	.long	400
	.quad	init_ec_point_formats
	.quad	tls_parse_ctos_ec_pt_formats
	.quad	tls_parse_stoc_ec_pt_formats
	.quad	tls_construct_stoc_ec_pt_formats
	.quad	tls_construct_ctos_ec_pt_formats
	.quad	final_ec_pt_formats
	.long	10
	.long	1408
	.quad	0
	.quad	tls_parse_ctos_supported_groups
	.quad	0
	.quad	tls_construct_stoc_supported_groups
	.quad	tls_construct_ctos_supported_groups
	.quad	0
	.long	35
	.long	400
	.quad	init_session_ticket
	.quad	tls_parse_ctos_session_ticket
	.quad	tls_parse_stoc_session_ticket
	.quad	tls_construct_stoc_session_ticket
	.quad	tls_construct_ctos_session_ticket
	.quad	0
	.long	5
	.long	20864
	.quad	init_status_request
	.quad	tls_parse_ctos_status_request
	.quad	tls_parse_stoc_status_request
	.quad	tls_construct_stoc_status_request
	.quad	tls_construct_ctos_status_request
	.quad	0
	.long	13172
	.long	400
	.quad	init_npn
	.quad	tls_parse_ctos_npn
	.quad	tls_parse_stoc_npn
	.quad	tls_construct_stoc_next_proto_neg
	.quad	tls_construct_ctos_npn
	.quad	0
	.long	16
	.long	1408
	.quad	init_alpn
	.quad	tls_parse_ctos_alpn
	.quad	tls_parse_stoc_alpn
	.quad	tls_construct_stoc_alpn
	.quad	tls_construct_ctos_alpn
	.quad	final_alpn
	.long	14
	.long	1410
	.quad	init_srtp
	.quad	tls_parse_ctos_use_srtp
	.quad	tls_parse_stoc_use_srtp
	.quad	tls_construct_stoc_use_srtp
	.quad	tls_construct_ctos_use_srtp
	.quad	0
	.long	22
	.long	400
	.quad	init_etm
	.quad	tls_parse_ctos_etm
	.quad	tls_parse_stoc_etm
	.quad	tls_construct_stoc_etm
	.quad	tls_construct_ctos_etm
	.quad	0
	.long	18
	.long	20864
	.quad	0
	.quad	0
	.quad	tls_parse_stoc_sct
	.quad	0
	.quad	tls_construct_ctos_sct
	.quad	0
	.long	23
	.long	400
	.quad	init_ems
	.quad	tls_parse_ctos_ems
	.quad	tls_parse_stoc_ems
	.quad	tls_construct_stoc_ems
	.quad	tls_construct_ctos_ems
	.quad	final_ems
	.long	50
	.long	16512
	.quad	init_sig_algs_cert
	.quad	tls_parse_ctos_sig_algs_cert
	.quad	tls_parse_ctos_sig_algs_cert
	.quad	0
	.quad	0
	.quad	0
	.long	49
	.long	160
	.quad	init_post_handshake_auth
	.quad	tls_parse_ctos_post_handshake_auth
	.quad	0
	.quad	0
	.quad	tls_construct_ctos_post_handshake_auth
	.quad	0
	.long	19
	.long	1408
	.quad	init_client_cert_type
	.quad	tls_parse_ctos_client_cert_type
	.quad	tls_parse_stoc_client_cert_type
	.quad	tls_construct_stoc_client_cert_type
	.quad	tls_construct_ctos_client_cert_type
	.quad	0
	.long	20
	.long	1408
	.quad	init_server_cert_type
	.quad	tls_parse_ctos_server_cert_type
	.quad	tls_parse_stoc_server_cert_type
	.quad	tls_construct_stoc_server_cert_type
	.quad	tls_construct_ctos_server_cert_type
	.quad	0
	.long	13
	.long	16512
	.quad	init_sig_algs
	.quad	tls_parse_ctos_sig_algs
	.quad	tls_parse_ctos_sig_algs
	.quad	tls_construct_ctos_sig_algs
	.quad	tls_construct_ctos_sig_algs
	.quad	final_sig_algs
	.long	43
	.long	2692
	.quad	0
	.quad	0
	.quad	tls_parse_stoc_supported_versions
	.quad	tls_construct_stoc_supported_versions
	.quad	tls_construct_ctos_supported_versions
	.quad	0
	.long	45
	.long	164
	.quad	init_psk_kex_modes
	.quad	tls_parse_ctos_psk_kex_modes
	.quad	0
	.quad	0
	.quad	tls_construct_ctos_psk_kex_modes
	.quad	0
	.long	51
	.long	2724
	.quad	0
	.quad	tls_parse_ctos_key_share
	.quad	tls_parse_stoc_key_share
	.quad	tls_construct_stoc_key_share
	.quad	tls_construct_ctos_key_share
	.quad	final_key_share
	.long	44
	.long	2212
	.quad	0
	.quad	tls_parse_ctos_cookie
	.quad	tls_parse_stoc_cookie
	.quad	tls_construct_stoc_cookie
	.quad	tls_construct_ctos_cookie
	.quad	0
	.long	65000
	.long	400
	.quad	0
	.quad	0
	.quad	0
	.quad	tls_construct_stoc_cryptopro_bug
	.quad	0
	.quad	0
	.long	27
	.long	16548
	.quad	tls_init_compress_certificate
	.quad	tls_parse_compress_certificate
	.quad	tls_parse_compress_certificate
	.quad	tls_construct_compress_certificate
	.quad	tls_construct_compress_certificate
	.quad	0
	.long	42
	.long	9376
	.quad	0
	.quad	tls_parse_ctos_early_data
	.quad	tls_parse_stoc_early_data
	.quad	tls_construct_stoc_early_data
	.quad	tls_construct_ctos_early_data
	.quad	final_early_data
	.long	47
	.long	16544
	.quad	init_certificate_authorities
	.quad	tls_parse_certificate_authorities
	.quad	tls_parse_certificate_authorities
	.quad	tls_construct_certificate_authorities
	.quad	tls_construct_certificate_authorities
	.quad	0
	.long	21
	.long	128
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	tls_construct_ctos_padding
	.quad	0
	.long	41
	.long	676
	.quad	0
	.quad	tls_parse_ctos_psk
	.quad	tls_parse_stoc_psk
	.quad	tls_construct_stoc_psk
	.quad	tls_construct_ctos_psk
	.quad	final_psk
	.text
	.globl	ossl_get_extension_type
	.type	ossl_get_extension_type, @function
ossl_get_extension_type:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$29, -8(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L66
	movl	$65537, %eax
	jmp	.L67
.L66:
	movq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	leaq	ext_defs(%rip), %rdx
	movl	(%rax,%rdx), %eax
.L67:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ossl_get_extension_type, .-ossl_get_extension_type
	.type	validate_context, @function
validate_context:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	andl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L71
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L72
	movl	$0, %eax
	jmp	.L70
.L71:
	movl	-12(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L72
	movl	$0, %eax
	jmp	.L70
.L72:
	movl	$1, %eax
.L70:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	validate_context, .-validate_context
	.globl	tls_validate_all_contexts
	.type	tls_validate_all_contexts, @function
tls_validate_all_contexts:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$29, -32(%rbp)
	movl	$2, -24(%rbp)
	movl	-76(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L74
	movl	$1, -24(%rbp)
	jmp	.L75
.L74:
	movl	-76(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L75
	movl	$0, -24(%rbp)
.L75:
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movq	136(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L76
.L83:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L85
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L79
	movq	-8(%rbp), %rax
	imulq	$56, %rax, %rax
	leaq	4+ext_defs(%rip), %rdx
	movl	(%rax,%rdx), %eax
	movl	%eax, -20(%rbp)
	jmp	.L80
.L79:
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	leaq	128(%rax), %rdi
	leaq	-56(%rbp), %rcx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	call	custom_ext_find@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L81
	movl	$0, %eax
	jmp	.L84
.L81:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
.L80:
	movl	-76(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	validate_context
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L84
.L85:
	nop
.L78:
	addq	$1, -8(%rbp)
	addq	$40, -16(%rbp)
.L76:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L83
	movl	$1, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	tls_validate_all_contexts, .-tls_validate_all_contexts
	.type	verify_extension, @function
verify_extension:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	$29, -32(%rbp)
	movq	$0, -8(%rbp)
	leaq	ext_defs(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L87
.L91:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jne	.L88
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	validate_context
	testl	%eax, %eax
	jne	.L89
	movl	$0, %eax
	jmp	.L90
.L89:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L90
.L88:
	addq	$1, -8(%rbp)
	addq	$56, -16(%rbp)
.L87:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L91
	cmpq	$0, -72(%rbp)
	je	.L92
	movq	$0, -48(%rbp)
	movl	$2, -20(%rbp)
	movq	$0, -40(%rbp)
	movl	-60(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L93
	movl	$1, -20(%rbp)
	jmp	.L94
.L93:
	movl	-60(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L94
	movl	$0, -20(%rbp)
.L94:
	leaq	-48(%rbp), %rcx
	movl	-64(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	custom_ext_find@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L92
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	validate_context
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L90
.L96:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L90
.L92:
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	verify_extension, .-verify_extension
	.globl	extension_is_relevant
	.type	extension_is_relevant, @function
extension_is_relevant:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L99
	movl	$1, -4(%rbp)
	jmp	.L100
.L99:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L101
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L101
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L101
	movl	$1, %eax
	jmp	.L102
.L101:
	movl	$0, %eax
.L102:
	movl	%eax, -4(%rbp)
.L100:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L103
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L104
.L103:
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jne	.L105
	movl	-28(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L104
.L105:
	cmpl	$0, -4(%rbp)
	je	.L106
	movl	-28(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L104
.L106:
	cmpl	$0, -4(%rbp)
	jne	.L107
	movl	-28(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L107
	movl	-32(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L104
.L107:
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L108
	cmpl	$0, -4(%rbp)
	jne	.L108
	movl	-28(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L104
.L108:
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L109
	movl	-28(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L109
.L104:
	movl	$0, %eax
	jmp	.L110
.L109:
	movl	$1, %eax
.L110:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	extension_is_relevant, .-extension_is_relevant
	.section	.rodata
.LC0:
	.string	"../ssl/statem/extensions.c"
	.text
	.globl	tls_collect_extensions
	.type	tls_collect_extensions, @function
tls_collect_extensions:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movl	%r9d, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	subq	$-128, %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-176(%rbp), %rax
	movq	$0, (%rax)
	movl	-164(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L112
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	custom_ext_init@PLT
.L112:
	cmpq	$0, -64(%rbp)
	je	.L113
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$29, %rax
	movq	%rax, -48(%rbp)
	jmp	.L114
.L113:
	movq	$29, -48(%rbp)
.L114:
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$626, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$628, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L134
.L115:
	movq	$0, -40(%rbp)
	jmp	.L117
.L128:
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L118
	leaq	-128(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L119
.L118:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$640, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L127
.L119:
	movl	-100(%rbp), %edx
	leaq	-136(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-164(%rbp), %esi
	movq	-152(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	verify_extension
	testl	%eax, %eax
	je	.L121
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	je	.L122
	movq	-136(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L121
.L122:
	movl	-100(%rbp), %eax
	cmpl	$41, %eax
	jne	.L123
	movl	-164(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L123
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L123
.L121:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$653, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L127
.L123:
	movq	-136(%rbp), %rax
	subq	-72(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movl	%eax, -76(%rbp)
	cmpl	$28, -76(%rbp)
	ja	.L124
	movl	-164(%rbp), %eax
	andl	$24704, %eax
	testl	%eax, %eax
	jne	.L124
	movl	-100(%rbp), %eax
	cmpl	$44, %eax
	je	.L124
	movl	-100(%rbp), %eax
	cmpl	$65281, %eax
	je	.L124
	movl	-100(%rbp), %eax
	cmpl	$18, %eax
	je	.L124
	movq	-152(%rbp), %rdx
	movl	-76(%rbp), %eax
	movzbl	2424(%rdx,%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L124
	movl	-164(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L125
	movl	-100(%rbp), %eax
	cmpl	$65000, %eax
	je	.L124
.L125:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$684, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$217, %edx
	movl	$110, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L127
.L124:
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	je	.L117
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-136(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-136(%rbp), %rax
	movl	-100(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-136(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-152(%rbp), %rax
	movq	2456(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-152(%rbp), %rax
	movq	2456(%rax), %rbx
	movq	-152(%rbp), %rax
	movq	2464(%rax), %r12
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %r13d
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %edi
	movq	-152(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %esi
	movq	-152(%rbp), %rax
	movq	64(%rax), %rax
	movq	%r12, %r9
	movl	%r13d, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	*%rbx
.L117:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L128
	cmpl	$0, -168(%rbp)
	je	.L129
	leaq	ext_defs(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L130
.L132:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	andl	-164(%rbp), %eax
	testl	%eax, %eax
	je	.L131
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-164(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	extension_is_relevant@PLT
	testl	%eax, %eax
	je	.L131
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-164(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L135
.L131:
	addq	$1, -40(%rbp)
	addq	$56, -56(%rbp)
.L130:
	cmpq	$28, -40(%rbp)
	jbe	.L132
.L129:
	movq	-176(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -184(%rbp)
	je	.L133
	movq	-184(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
.L133:
	movl	$1, %eax
	jmp	.L134
.L135:
	nop
.L127:
	leaq	.LC0(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$723, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L134:
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	tls_collect_extensions, .-tls_collect_extensions
	.globl	tls_parse_extension
	.type	tls_parse_extension, @function
tls_parse_extension:
.LFB735:
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
	movl	-60(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L137
	movl	$1, %eax
	jmp	.L138
.L137:
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L139
	movl	$1, %eax
	jmp	.L138
.L139:
	movq	-32(%rbp), %rax
	movl	$1, 20(%rax)
	cmpl	$28, -60(%rbp)
	ja	.L140
	movl	-60(%rbp), %eax
	imulq	$56, %rax, %rax
	leaq	ext_defs(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	-64(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	extension_is_relevant@PLT
	testl	%eax, %eax
	jne	.L141
	movl	$1, %eax
	jmp	.L138
.L141:
	movq	-56(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L142
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L143
.L142:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.L143:
	cmpq	$0, -24(%rbp)
	je	.L140
	movl	-64(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L138
.L140:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	24(%rax), %edx
	movl	-64(%rbp), %esi
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-88(%rbp)
	movq	%rdi, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	custom_ext_parse@PLT
	addq	$16, %rsp
.L138:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	tls_parse_extension, .-tls_parse_extension
	.globl	tls_parse_all_extensions
	.type	tls_parse_all_extensions, @function
tls_parse_all_extensions:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -48(%rbp)
	movq	$29, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	136(%rax), %rax
	addq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L145
.L148:
	movq	-8(%rbp), %rax
	movl	%eax, %r10d
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%r10d, %esi
	movq	%rax, %rdi
	call	tls_parse_extension@PLT
	testl	%eax, %eax
	jne	.L146
	movl	$0, %eax
	jmp	.L147
.L146:
	addq	$1, -8(%rbp)
.L145:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L148
	cmpl	$0, -48(%rbp)
	je	.L149
	movq	$0, -8(%rbp)
	leaq	ext_defs(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L150
.L152:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L151
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movl	-44(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L151
	movq	-16(%rbp), %rax
	movq	48(%rax), %r8
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %edx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L151
	movl	$0, %eax
	jmp	.L147
.L151:
	addq	$1, -8(%rbp)
	addq	$56, -16(%rbp)
.L150:
	cmpq	$28, -8(%rbp)
	jbe	.L152
.L149:
	movl	$1, %eax
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	tls_parse_all_extensions, .-tls_parse_all_extensions
	.globl	should_add_extension
	.type	should_add_extension, @function
should_add_extension:
.LFB737:
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
	movl	-12(%rbp), %eax
	andl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L154
	movl	$0, %eax
	jmp	.L155
.L154:
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	extension_is_relevant@PLT
	testl	%eax, %eax
	je	.L156
	movl	-12(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L157
	movl	-16(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L157
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L156
	cmpl	$771, -20(%rbp)
	jg	.L157
.L156:
	movl	$0, %eax
	jmp	.L155
.L157:
	movl	$1, %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	should_add_extension, .-should_add_extension
	.globl	tls_construct_extensions
	.type	tls_construct_extensions, @function
tls_construct_extensions:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	$0, -44(%rbp)
	movl	-68(%rbp), %eax
	andl	$32768, %eax
	shrl	$15, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L159
	movl	-68(%rbp), %eax
	andl	$384, %eax
	testl	%eax, %eax
	je	.L160
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	jne	.L160
.L159:
	cmpl	$0, -28(%rbp)
	jne	.L161
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$868, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L161:
	movl	$0, %eax
	jmp	.L177
.L160:
	movl	-68(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L163
	leaq	-44(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_get_min_max_version@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L163
	cmpl	$0, -28(%rbp)
	jne	.L164
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$876, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L164:
	movl	$0, %eax
	jmp	.L177
.L163:
	movl	-68(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L165
	movq	-56(%rbp), %rax
	movq	2056(%rax), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	custom_ext_init@PLT
.L165:
	movl	-44(%rbp), %r8d
	movl	-68(%rbp), %esi
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	custom_ext_add@PLT
	testl	%eax, %eax
	jne	.L166
	movl	$0, %eax
	jmp	.L177
.L166:
	movq	$0, -8(%rbp)
	leaq	ext_defs(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L167
.L174:
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	should_add_extension@PLT
	testl	%eax, %eax
	je	.L178
	movq	-56(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L170
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L171
.L170:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.L171:
	cmpq	$0, -24(%rbp)
	je	.L179
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L173
	movl	$0, %eax
	jmp	.L177
.L173:
	cmpl	$1, -36(%rbp)
	jne	.L169
	movl	-68(%rbp), %eax
	andl	$24704, %eax
	testl	%eax, %eax
	je	.L169
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$2424, %rax
	movzbl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addq	$2424, %rax
	movb	%dl, (%rax)
	jmp	.L169
.L178:
	nop
	jmp	.L169
.L179:
	nop
.L169:
	addq	$1, -8(%rbp)
	addq	$56, -16(%rbp)
.L167:
	cmpq	$28, -8(%rbp)
	jbe	.L174
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L175
	cmpl	$0, -28(%rbp)
	jne	.L176
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$921, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L176:
	movl	$0, %eax
	jmp	.L177
.L175:
	movl	$1, %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	tls_construct_extensions, .-tls_construct_extensions
	.type	final_renegotiate, @function
final_renegotiate:
.LFB739:
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
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L181
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L182
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$262144, %eax
	testq	%rax, %rax
	jne	.L182
	cmpl	$0, -16(%rbp)
	jne	.L182
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$945, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$338, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L183
.L182:
	movl	$1, %eax
	jmp	.L183
.L181:
	movq	-8(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	je	.L184
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$262144, %eax
	testq	%rax, %rax
	jne	.L184
	cmpl	$0, -16(%rbp)
	jne	.L184
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$957, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$338, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L183
.L184:
	movl	$1, %eax
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	final_renegotiate, .-final_renegotiate
	.type	ssl_tsan_decr, @function
ssl_tsan_decr:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_tsan_lock
	testl	%eax, %eax
	je	.L187
	movq	-16(%rbp), %rax
	lock subl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_tsan_unlock
.L187:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	ssl_tsan_decr, .-ssl_tsan_decr
	.type	init_server_name, @function
init_server_name:
.LFB741:
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
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L189
	movq	-8(%rbp), %rax
	movl	$0, 2760(%rax)
	movq	-8(%rbp), %rax
	movq	2472(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$980, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2472(%rax)
.L189:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	init_server_name, .-init_server_name
	.type	final_server_name, @function
final_server_name:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movl	$3, -20(%rbp)
	movl	$112, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	andl	$16384, %eax
	shrq	$14, %rax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L192
	movq	-88(%rbp), %rax
	movq	2800(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L193
.L192:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$997, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L207
.L193:
	movq	-48(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movq	-48(%rbp), %rax
	movq	544(%rax), %r8
	movq	-48(%rbp), %rax
	movq	552(%rax), %rdx
	leaq	-68(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -20(%rbp)
	jmp	.L196
.L195:
	movq	-88(%rbp), %rax
	movq	2800(%rax), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-88(%rbp), %rax
	movq	2800(%rax), %rax
	movq	544(%rax), %r8
	movq	-88(%rbp), %rax
	movq	2800(%rax), %rax
	movq	552(%rax), %rdx
	leaq	-68(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -20(%rbp)
.L196:
	movq	-88(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L197
	cmpl	$0, -96(%rbp)
	je	.L197
	cmpl	$0, -20(%rbp)
	jne	.L197
	movq	-88(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L197
	movq	-88(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1019, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	movq	2472(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	2184(%rdx), %rbx
	leaq	.LC0(%rip), %rcx
	movl	$1020, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, 800(%rbx)
	movq	-88(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	jne	.L197
	movq	-88(%rbp), %rax
	movq	2472(%rax), %rax
	testq	%rax, %rax
	je	.L197
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1022, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L197:
	movq	-88(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L198
	movq	-88(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L199
.L198:
	movq	-88(%rbp), %rax
	movq	2800(%rax), %rax
	cmpq	%rax, -48(%rbp)
	je	.L199
	movq	-88(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	jne	.L199
	movq	-48(%rbp), %rax
	leaq	132(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
	movq	-88(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	132(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_decr
.L199:
	cmpl	$0, -20(%rbp)
	jne	.L200
	movq	-88(%rbp), %rax
	movl	2536(%rax), %eax
	testl	%eax, %eax
	je	.L200
	cmpl	$0, -52(%rbp)
	je	.L200
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	andl	$16384, %eax
	testq	%rax, %rax
	je	.L200
	movq	-88(%rbp), %rax
	movl	$0, 2536(%rax)
	movq	-88(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L200
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_session@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L201
	movq	-64(%rbp), %rax
	movq	808(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1051, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	movq	$0, 808(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 816(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 824(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 832(%rax)
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_generate_session_id@PLT
	testl	%eax, %eax
	jne	.L200
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1057, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L207
.L201:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1061, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L207
.L200:
	cmpl	$3, -20(%rbp)
	je	.L202
	cmpl	$3, -20(%rbp)
	jg	.L203
	cmpl	$1, -20(%rbp)
	je	.L204
	cmpl	$2, -20(%rbp)
	jne	.L203
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1069, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-68(%rbp), %esi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$234, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L207
.L204:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L205
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L205
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L206
.L205:
	movl	-68(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_send_alert@PLT
.L206:
	movq	-88(%rbp), %rax
	movl	$0, 2760(%rax)
	movl	$1, %eax
	jmp	.L207
.L202:
	movq	-88(%rbp), %rax
	movl	$0, 2760(%rax)
	movl	$1, %eax
	jmp	.L207
.L203:
	movl	$1, %eax
.L207:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	final_server_name, .-final_server_name
	.type	final_ec_pt_formats, @function
final_ec_pt_formats:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L209
	movl	$1, %eax
	jmp	.L210
.L209:
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	2552(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-40(%rbp), %rax
	movq	2544(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-40(%rbp), %rax
	movq	2568(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-40(%rbp), %rax
	movq	2560(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-24(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L212
	movq	-32(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L211
.L212:
	movq	-40(%rbp), %rax
	movq	2568(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L213
.L216:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L217
	addq	$1, -8(%rbp)
.L213:
	movq	-40(%rbp), %rax
	movq	2560(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L216
	jmp	.L215
.L217:
	nop
.L215:
	movq	-40(%rbp), %rax
	movq	2560(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L211
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$157, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L210
.L211:
	movl	$1, %eax
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	final_ec_pt_formats, .-final_ec_pt_formats
	.type	init_session_ticket, @function
init_session_ticket:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L219
	movq	-8(%rbp), %rax
	movl	$0, 2536(%rax)
.L219:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	init_session_ticket, .-init_session_ticket
	.type	init_status_request, @function
init_status_request:
.LFB745:
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
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L222
	movq	-8(%rbp), %rax
	movl	$-1, 2480(%rax)
	jmp	.L223
.L222:
	movq	-8(%rbp), %rax
	movq	2520(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1145, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2520(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 2528(%rax)
.L223:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	init_status_request, .-init_status_request
	.type	init_npn, @function
init_npn:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 1092(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	init_npn, .-init_npn
	.type	init_alpn, @function
init_alpn:
.LFB747:
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
	movq	1096(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1165, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 1096(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 1104(%rax)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L228
	movq	-8(%rbp), %rax
	movq	1112(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1169, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 1112(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 1120(%rax)
.L228:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	init_alpn, .-init_alpn
	.type	final_alpn, @function
final_alpn:
.LFB748:
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
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L231
	cmpl	$0, -16(%rbp)
	jne	.L231
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	je	.L231
	movq	-8(%rbp), %rax
	movl	$0, 2692(%rax)
.L231:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L232
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L232
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L232
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L233
.L232:
	movl	$1, %eax
	jmp	.L234
.L233:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_handle_alpn@PLT
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	final_alpn, .-final_alpn
	.type	init_sig_algs, @function
init_sig_algs:
.LFB749:
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
	movq	880(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1199, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 880(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 896(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	init_sig_algs, .-init_sig_algs
	.type	init_sig_algs_cert, @function
init_sig_algs_cert:
.LFB750:
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
	movq	888(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1210, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 888(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 904(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	init_sig_algs_cert, .-init_sig_algs_cert
	.type	init_srp, @function
init_srp:
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
	movq	-8(%rbp), %rax
	movq	2904(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1220, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2904(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	init_srp, .-init_srp
	.type	init_ec_point_formats, @function
init_ec_point_formats:
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
	movq	-8(%rbp), %rax
	movq	2568(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1229, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2568(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 2560(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	init_ec_point_formats, .-init_ec_point_formats
	.type	init_etm, @function
init_etm:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 2684(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	init_etm, .-init_etm
	.type	init_ems, @function
init_ems:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L246
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	andb	$-3, %ah
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	orb	$16, %ah
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 288(%rax)
.L246:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	init_ems, .-init_ems
	.type	final_ems, @function
final_ems:
.LFB755:
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
	movq	288(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L249
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	andl	$4096, %eax
	testq	%rax, %rax
	je	.L249
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$104, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L250
.L249:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L251
	movq	-8(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L251
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	andl	$512, %eax
	shrq	$9, %rax
	movl	%eax, %edx
	andl	$1, %edx
	movl	%edx, %eax
	xorl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movl	888(%rax), %eax
	andl	$1, %eax
	andl	$1, %eax
	xorl	$1, %eax
	xorl	%edx, %eax
	testb	%al, %al
	je	.L251
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$104, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L250
.L251:
	movl	$1, %eax
.L250:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	final_ems, .-final_ems
	.type	init_certificate_authorities, @function
init_certificate_authorities:
.LFB756:
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
	movl	%esi, -28(%rbp)
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 744(%rax)
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	init_certificate_authorities, .-init_certificate_authorities
	.type	tls_construct_certificate_authorities, @function
tls_construct_certificate_authorities:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_ca_names@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L255
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L256
.L255:
	movl	$2, %eax
	jmp	.L257
.L256:
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L258
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L259
.L258:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1299, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L257
.L259:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	construct_ca_names@PLT
	testl	%eax, %eax
	jne	.L260
	movl	$0, %eax
	jmp	.L257
.L260:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L261
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L257
.L261:
	movl	$1, %eax
.L257:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	tls_construct_certificate_authorities, .-tls_construct_certificate_authorities
	.type	tls_parse_certificate_authorities, @function
tls_parse_certificate_authorities:
.LFB758:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_ca_names@PLT
	testl	%eax, %eax
	jne	.L263
	movl	$0, %eax
	jmp	.L264
.L263:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L265
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L264
.L265:
	movl	$1, %eax
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	tls_parse_certificate_authorities, .-tls_parse_certificate_authorities
	.type	init_srtp, @function
init_srtp:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L267
	movq	-8(%rbp), %rax
	movq	$0, 2816(%rax)
.L267:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	init_srtp, .-init_srtp
	.type	final_sig_algs, @function
final_sig_algs:
.LFB760:
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
	cmpl	$0, -16(%rbp)
	jne	.L270
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L270
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L270
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L270
	movq	-8(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L270
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1342, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$112, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L271
.L270:
	movl	$1, %eax
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	final_sig_algs, .-final_sig_algs
	.type	final_key_share, @function
final_key_share:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L273
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L273
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L274
.L273:
	movl	$1, %eax
	jmp	.L275
.L274:
	movl	-60(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L276
	movl	$1, %eax
	jmp	.L275
.L276:
	movq	-56(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L277
	cmpl	$0, -64(%rbp)
	jne	.L277
	movq	-56(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L278
	movq	-56(%rbp), %rax
	movl	2680(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L277
.L278:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1376, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$101, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L275
.L277:
	movq	-56(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L279
	movq	-56(%rbp), %rax
	movq	1136(%rax), %rax
	testq	%rax, %rax
	je	.L280
	movq	-56(%rbp), %rax
	movq	288(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L281
	movq	-56(%rbp), %rax
	movl	2712(%rax), %eax
	testl	%eax, %eax
	jne	.L281
	movq	-56(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L282
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L275
.L282:
	movq	-56(%rbp), %rax
	movl	$1, 2136(%rax)
	movl	$1, %eax
	jmp	.L275
.L280:
	movq	-56(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	jne	.L283
	cmpl	$0, -64(%rbp)
	je	.L283
	movq	-56(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L284
	movq	-56(%rbp), %rax
	movl	2680(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L283
.L284:
	movl	$0, -12(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_peer_groups
	leaq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_supported_groups@PLT
	movq	$0, -8(%rbp)
	jmp	.L285
.L288:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %eax
	movzwl	%ax, %esi
	movq	-56(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	check_in_list@PLT
	testl	%eax, %eax
	je	.L286
	movl	-12(%rbp), %eax
	movzwl	%ax, %ecx
	movq	-56(%rbp), %rax
	movl	$131076, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_group_allowed@PLT
	testl	%eax, %eax
	je	.L286
	movl	-12(%rbp), %eax
	movzwl	%ax, %esi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$772, %ecx
	movl	$772, %edx
	movq	%rax, %rdi
	call	tls_valid_group@PLT
	testl	%eax, %eax
	jne	.L296
.L286:
	addq	$1, -8(%rbp)
.L285:
	movq	-40(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L288
	jmp	.L287
.L296:
	nop
.L287:
	movq	-40(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L283
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movw	%dx, 1134(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 2136(%rax)
	movl	$1, %eax
	jmp	.L275
.L283:
	movq	-56(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L290
	movq	-56(%rbp), %rax
	movl	2680(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L291
.L290:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1471, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$0, -64(%rbp)
	je	.L292
	movl	$40, %esi
	jmp	.L293
.L292:
	movl	$109, %esi
.L293:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$101, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L275
.L291:
	movq	-56(%rbp), %rax
	movq	288(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L281
	movq	-56(%rbp), %rax
	movl	2712(%rax), %eax
	testl	%eax, %eax
	jne	.L281
	movq	-56(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L294
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1485, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L275
.L294:
	movq	-56(%rbp), %rax
	movl	$1, 2136(%rax)
	movl	$1, %eax
	jmp	.L275
.L281:
	movq	-56(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L295
	movq	-56(%rbp), %rax
	movl	$2, 2136(%rax)
	jmp	.L295
.L279:
	cmpl	$0, -64(%rbp)
	jne	.L295
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls13_generate_handshake_secret@PLT
	testl	%eax, %eax
	jne	.L295
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1506, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L275
.L295:
	movl	$1, %eax
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	final_key_share, .-final_key_share
	.type	init_psk_kex_modes, @function
init_psk_kex_modes:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 2680(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	init_psk_kex_modes, .-init_psk_kex_modes
	.section	.rodata
.LC1:
	.string	"HMAC"
	.text
	.globl	tls_psk_do_binder
	.type	tls_psk_do_binder, @function
tls_psk_do_binder:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$448, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -424(%rbp)
	movq	%rsi, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movq	%rcx, -448(%rbp)
	movq	%r8, -456(%rbp)
	movq	%r9, -464(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -76(%rbp)
	movl	$-1, -60(%rbp)
	movl	$0, -64(%rbp)
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	-76(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L300
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1544, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-424(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L301
.L300:
	movl	-76(%rbp), %eax
	cltq
	movq	%rax, -96(%rbp)
	cmpl	$0, 32(%rbp)
	je	.L302
	movq	-424(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L302
	movq	-424(%rbp), %rax
	movq	2184(%rax), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	jne	.L302
	movq	16(%rbp), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	je	.L302
	movl	$1, -64(%rbp)
.L302:
	cmpl	$0, 32(%rbp)
	je	.L303
	leaq	external_label.3(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	$10, -56(%rbp)
	jmp	.L304
.L303:
	leaq	resumption_label.2(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	$10, -56(%rbp)
.L304:
	movq	-424(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L305
	cmpl	$0, 32(%rbp)
	je	.L305
	cmpl	$0, -64(%rbp)
	je	.L306
.L305:
	movq	-424(%rbp), %rax
	addq	$1284, %rax
	movq	%rax, -40(%rbp)
	jmp	.L307
.L306:
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
.L307:
	movq	16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-40(%rbp), %rdi
	movq	-432(%rbp), %rsi
	movq	-424(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	tls13_generate_secret@PLT
	testl	%eax, %eax
	je	.L329
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L309
	movq	-432(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jle	.L309
	leaq	-176(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L310
.L309:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1590, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-424(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L301
.L310:
	leaq	-176(%rbp), %r9
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-432(%rbp), %rsi
	movq	-424(%rbp), %rax
	pushq	$1
	pushq	-96(%rbp)
	leaq	-240(%rbp), %rdi
	pushq	%rdi
	pushq	-96(%rbp)
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L330
	movq	-96(%rbp), %rdi
	leaq	-304(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	movq	-432(%rbp), %rsi
	movq	-424(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls13_derive_finishedkey@PLT
	testl	%eax, %eax
	je	.L331
	movq	-432(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jg	.L313
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1608, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-424(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L301
.L313:
	movq	-424(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L314
	movq	-424(%rbp), %rax
	movq	360(%rax), %rax
	leaq	-384(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -104(%rbp)
	jg	.L315
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1625, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-424(%rbp), %rax
	movl	$0, %ecx
	movl	$332, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L301
.L315:
	movq	-424(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L317
	movq	-384(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	-400(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L318
	leaq	-400(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L318
	leaq	-416(%rbp), %rdx
	leaq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_3
	testl	%eax, %eax
	je	.L318
	leaq	-400(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L318
	leaq	-416(%rbp), %rdx
	leaq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_3
	testl	%eax, %eax
	jne	.L319
.L318:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1642, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-424(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L301
.L319:
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	subq	%rax, -72(%rbp)
.L317:
	movq	-384(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jg	.L314
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1649, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-424(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L301
.L314:
	movq	-448(%rbp), %rdx
	movq	-440(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L321
	leaq	-176(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L322
.L321:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1656, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-424(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L301
.L322:
	movq	-88(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rdi
	leaq	-304(%rbp), %rcx
	leaq	.LC1(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_private_key_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L323
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1664, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-424(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L301
.L323:
	cmpl	$0, 24(%rbp)
	jne	.L324
	leaq	-368(%rbp), %rax
	movq	%rax, -464(%rbp)
.L324:
	movq	-96(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-88(%rbp), %rax
	movq	1096(%rax), %r12
	movq	-88(%rbp), %rax
	movq	(%rax), %rbx
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jle	.L325
	movq	-96(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	jle	.L325
	leaq	-376(%rbp), %rdx
	movq	-464(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jle	.L325
	movq	-376(%rbp), %rax
	cmpq	%rax, -96(%rbp)
	je	.L326
.L325:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1677, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-424(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L301
.L326:
	cmpl	$0, 24(%rbp)
	je	.L327
	movl	$1, -60(%rbp)
	jmp	.L301
.L327:
	movq	-96(%rbp), %rdx
	movq	-464(%rbp), %rcx
	movq	-456(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L332
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1687, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-424(%rbp), %rax
	movl	$0, %ecx
	movl	$253, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L301
.L329:
	nop
	jmp	.L301
.L330:
	nop
	jmp	.L301
.L331:
	nop
	jmp	.L301
.L332:
	nop
.L301:
	leaq	-240(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-304(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-60(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	tls_psk_do_binder, .-tls_psk_do_binder
	.type	final_early_data, @function
final_early_data:
.LFB764:
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
	cmpl	$0, -16(%rbp)
	jne	.L334
	movl	$1, %eax
	jmp	.L335
.L334:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L336
	cmpl	$1024, -12(%rbp)
	jne	.L337
	cmpl	$0, -16(%rbp)
	je	.L337
	movq	-8(%rbp), %rax
	movl	2692(%rax), %eax
	testl	%eax, %eax
	jne	.L337
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1713, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$233, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L335
.L337:
	movl	$1, %eax
	jmp	.L335
.L336:
	movq	-8(%rbp), %rax
	movl	5280(%rax), %eax
	testl	%eax, %eax
	je	.L338
	movq	-8(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L338
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$9, %eax
	jne	.L338
	movq	-8(%rbp), %rax
	movl	2692(%rax), %eax
	testl	%eax, %eax
	je	.L338
	movq	-8(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	jne	.L338
	movq	-8(%rbp), %rax
	movq	5320(%rax), %rax
	testq	%rax, %rax
	je	.L339
	movq	-8(%rbp), %rax
	movq	5320(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	5328(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L339
.L338:
	movq	-8(%rbp), %rax
	movl	$1, 2688(%rax)
	jmp	.L340
.L339:
	movq	-8(%rbp), %rax
	movl	$2, 2688(%rax)
	movq	-8(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	tls13_change_cipher_state@PLT
	testl	%eax, %eax
	jne	.L340
	movl	$0, %eax
	jmp	.L335
.L340:
	movl	$1, %eax
.L335:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	final_early_data, .-final_early_data
	.type	final_maxfragmentlen, @function
final_maxfragmentlen:
.LFB765:
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
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	jne	.L342
	movl	$1, %eax
	jmp	.L343
.L342:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	cmpb	$-1, %al
	jne	.L344
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movb	$0, 856(%rax)
.L344:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	testb	%al, %al
	je	.L345
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	cmpb	$4, %al
	ja	.L345
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	160(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	$512, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
	movq	-24(%rbp), %rax
	movq	3040(%rax), %rax
	movq	160(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_max_send_fragment@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
.L345:
	movl	$1, %eax
.L343:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	final_maxfragmentlen, .-final_maxfragmentlen
	.type	init_post_handshake_auth, @function
init_post_handshake_auth:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 2832(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	init_post_handshake_auth, .-init_post_handshake_auth
	.type	final_psk, @function
final_psk:
.LFB767:
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
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L349
	cmpl	$0, -16(%rbp)
	je	.L349
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	je	.L349
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	movq	648(%rax), %rax
	addq	$800, %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L349
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1778, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$310, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L350
.L349:
	movl	$1, %eax
.L350:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	final_psk, .-final_psk
	.type	tls_init_compress_certificate, @function
tls_init_compress_certificate:
.LFB768:
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
	addq	$2724, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	tls_init_compress_certificate, .-tls_init_compress_certificate
	.type	tls_construct_compress_certificate, @function
tls_construct_compress_certificate:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$2, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	tls_construct_compress_certificate, .-tls_construct_compress_certificate
	.type	tls_parse_compress_certificate, @function
tls_parse_compress_certificate:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	tls_parse_compress_certificate, .-tls_parse_compress_certificate
	.type	init_server_cert_type, @function
init_server_cert_type:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L358
	movq	-8(%rbp), %rax
	movb	$0, 2747(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 2746(%rax)
.L358:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	init_server_cert_type, .-init_server_cert_type
	.type	init_client_cert_type, @function
init_client_cert_type:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L361
	movq	-8(%rbp), %rax
	movb	$0, 2745(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 2744(%rax)
.L361:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	init_client_cert_type, .-init_client_cert_type
	.section	.rodata
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 23
__func__.14:
	.string	"tls_collect_extensions"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 25
__func__.13:
	.string	"tls_construct_extensions"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 18
__func__.12:
	.string	"final_renegotiate"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 18
__func__.11:
	.string	"final_server_name"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 20
__func__.10:
	.string	"final_ec_pt_formats"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 10
__func__.9:
	.string	"final_ems"
	.align 32
	.type	__func__.8, @object
	.size	__func__.8, 38
__func__.8:
	.string	"tls_construct_certificate_authorities"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 34
__func__.7:
	.string	"tls_parse_certificate_authorities"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 15
__func__.6:
	.string	"final_sig_algs"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"final_key_share"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 18
__func__.4:
	.string	"tls_psk_do_binder"
	.align 8
	.type	external_label.3, @object
	.size	external_label.3, 11
external_label.3:
	.string	"ext binder"
	.align 8
	.type	resumption_label.2, @object
	.size	resumption_label.2, 11
resumption_label.2:
	.string	"res binder"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"final_early_data"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 10
__func__.0:
	.string	"final_psk"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
