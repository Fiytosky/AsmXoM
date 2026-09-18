	.file	"ssl_rsa.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB103:
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
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
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
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB368:
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
.LFE368:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	packet_forward, @function
packet_forward:
.LFB499:
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
.LFE499:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB500:
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
.LFE500:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_data, @function
PACKET_data:
.LFB502:
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
.LFE502:
	.size	PACKET_data, .-PACKET_data
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB503:
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
	jns	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB508:
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
	ja	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
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
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB509:
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
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_peek_net_4, @function
PACKET_peek_net_4:
.LFB514:
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
	cmpq	$3, %rax
	ja	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
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
	salq	$16, %rax
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
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	PACKET_peek_net_4, .-PACKET_peek_net_4
	.type	PACKET_get_net_4, @function
PACKET_get_net_4:
.LFB516:
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
	call	PACKET_peek_net_4
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PACKET_get_net_4, .-PACKET_get_net_4
	.type	PACKET_peek_bytes, @function
PACKET_peek_bytes:
.LFB524:
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
	jnb	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PACKET_peek_bytes, .-PACKET_peek_bytes
	.type	PACKET_get_bytes, @function
PACKET_get_bytes:
.LFB525:
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
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.type	PACKET_get_length_prefixed_2, @function
PACKET_get_length_prefixed_2:
.LFB535:
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
	je	.L36
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L37
.L36:
	movl	$0, %eax
	jmp	.L39
.L37:
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
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
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
	.string	"../ssl/ssl_rsa.c"
	.text
	.globl	SSL_use_certificate
	.type	SSL_use_certificate, @function
SSL_use_certificate:
.LFB837:
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
	je	.L53
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L54
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L55
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L56
.L55:
	movq	$0, -8(%rbp)
	jmp	.L56
.L54:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L56
.L53:
	movq	$0, -8(%rbp)
.L56:
	cmpq	$0, -8(%rbp)
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	cmpq	$0, -32(%rbp)
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_security_cert@PLT
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L60
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L60:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_set_cert
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE837:
	.size	SSL_use_certificate, .-SSL_use_certificate
	.globl	SSL_use_certificate_file
	.type	SSL_use_certificate_file, @function
SSL_use_certificate_file:
.LFB838:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L63
.L62:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L64
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L63
.L64:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	1096(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L65
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$73, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L63
.L65:
	cmpl	$2, -68(%rbp)
	jne	.L66
	movl	$524301, -4(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_bio@PLT
	movq	%rax, -16(%rbp)
	jmp	.L67
.L66:
	cmpl	$1, -68(%rbp)
	jne	.L68
	cmpq	$0, -56(%rbp)
	je	.L69
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L70
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L71
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L72
.L71:
	movq	$0, -24(%rbp)
	jmp	.L72
.L70:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L72
.L69:
	movq	$0, -24(%rbp)
.L72:
	cmpq	$0, -24(%rbp)
	je	.L76
	movl	$524297, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	5248(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	5240(%rax), %rdx
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -16(%rbp)
	jmp	.L67
.L68:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L63
.L67:
	cmpq	$0, -16(%rbp)
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$94, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L63
.L74:
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate@PLT
	movl	%eax, -8(%rbp)
	jmp	.L63
.L76:
	nop
.L63:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE838:
	.size	SSL_use_certificate_file, .-SSL_use_certificate_file
	.globl	SSL_use_certificate_ASN1
	.type	SSL_use_certificate_ASN1, @function
SSL_use_certificate_ASN1:
.LFB839:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L81
.L78:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509@PLT
	testq	%rax, %rax
	jne	.L80
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L81
.L80:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-4(%rbp), %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE839:
	.size	SSL_use_certificate_ASN1, .-SSL_use_certificate_ASN1
	.type	ssl_set_pkey, @function
ssl_set_pkey:
.LFB840:
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
	movq	-40(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_pkey@PLT
	testq	%rax, %rax
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$247, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L83:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L86
.L85:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE840:
	.size	ssl_set_pkey, .-ssl_set_pkey
	.globl	SSL_use_PrivateKey
	.type	SSL_use_PrivateKey, @function
SSL_use_PrivateKey:
.LFB841:
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
	je	.L88
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L89
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L90
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L91
.L90:
	movq	$0, -8(%rbp)
	jmp	.L91
.L89:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L91
.L88:
	movq	$0, -8(%rbp)
.L91:
	cmpq	$0, -8(%rbp)
	jne	.L92
	movl	$0, %eax
	jmp	.L93
.L92:
	cmpq	$0, -32(%rbp)
	jne	.L94
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L94:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_set_pkey
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE841:
	.size	SSL_use_PrivateKey, .-SSL_use_PrivateKey
	.globl	SSL_use_PrivateKey_file
	.type	SSL_use_PrivateKey_file, @function
SSL_use_PrivateKey_file:
.LFB842:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L96
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L97
.L96:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L98
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L97
.L98:
	cmpl	$1, -52(%rbp)
	jne	.L99
	cmpq	$0, -40(%rbp)
	je	.L100
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L101
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L102
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L103
.L102:
	movq	$0, -24(%rbp)
	jmp	.L103
.L101:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L103
.L100:
	movq	$0, -24(%rbp)
.L103:
	cmpq	$0, -24(%rbp)
	je	.L109
	movl	$524297, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	1096(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	5248(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	5240(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey_ex@PLT
	movq	%rax, -16(%rbp)
	jmp	.L105
.L99:
	cmpl	$2, -52(%rbp)
	jne	.L106
	movl	$524301, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	1096(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PrivateKey_ex_bio@PLT
	movq	%rax, -16(%rbp)
	jmp	.L105
.L106:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$196, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L97
.L105:
	cmpq	$0, -16(%rbp)
	jne	.L107
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L97
.L107:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey@PLT
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L97
.L109:
	nop
.L97:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE842:
	.size	SSL_use_PrivateKey_file, .-SSL_use_PrivateKey_file
	.globl	SSL_use_PrivateKey_ASN1
	.type	SSL_use_PrivateKey_ASN1, @function
SSL_use_PrivateKey_ASN1:
.LFB843:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	1096(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rsi
	movq	-64(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movl	%eax, %edi
	call	d2i_PrivateKey_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$220, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L113
.L111:
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE843:
	.size	SSL_use_PrivateKey_ASN1, .-SSL_use_PrivateKey_ASN1
	.globl	SSL_CTX_use_certificate
	.type	SSL_CTX_use_certificate, @function
SSL_CTX_use_certificate:
.LFB844:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ssl_security_cert@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L117
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$239, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L116
.L117:
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_set_cert
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE844:
	.size	SSL_CTX_use_certificate, .-SSL_CTX_use_certificate
	.type	ssl_set_cert, @function
ssl_set_cert:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L119
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$268, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L124
.L119:
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_pkey@PLT
	testq	%rax, %rax
	jne	.L121
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$247, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L124
.L121:
	movq	-16(%rbp), %rax
	cmpq	$3, %rax
	jne	.L122
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_can_sign@PLT
	testl	%eax, %eax
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$262, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$318, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L124
.L122:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	call	ERR_clear_error@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	$0, 8(%rax)
	call	ERR_clear_error@PLT
.L123:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE845:
	.size	ssl_set_cert, .-ssl_set_cert
	.globl	SSL_CTX_use_certificate_file
	.type	SSL_CTX_use_certificate_file, @function
SSL_CTX_use_certificate_file:
.LFB846:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$384, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L126
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$305, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L127
.L126:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L128
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$310, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L127
.L128:
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L129
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L127
.L129:
	cmpl	$2, -52(%rbp)
	jne	.L130
	movl	$524301, -4(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_X509_bio@PLT
	movq	%rax, -16(%rbp)
	jmp	.L131
.L130:
	cmpl	$1, -52(%rbp)
	jne	.L132
	movl	$524297, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	192(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	184(%rax), %rdx
	leaq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -16(%rbp)
	jmp	.L131
.L132:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L127
.L131:
	cmpq	$0, -16(%rbp)
	jne	.L133
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$331, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L127
.L133:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_certificate@PLT
	movl	%eax, -8(%rbp)
.L127:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE846:
	.size	SSL_CTX_use_certificate_file, .-SSL_CTX_use_certificate_file
	.globl	SSL_CTX_use_certificate_ASN1
	.type	SSL_CTX_use_certificate_ASN1, @function
SSL_CTX_use_certificate_ASN1:
.LFB847:
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
	movq	-24(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L136
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L139
.L136:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509@PLT
	testq	%rax, %rax
	jne	.L138
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$355, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L139
.L138:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_certificate@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-4(%rbp), %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE847:
	.size	SSL_CTX_use_certificate_ASN1, .-SSL_CTX_use_certificate_ASN1
	.globl	SSL_CTX_use_PrivateKey
	.type	SSL_CTX_use_PrivateKey, @function
SSL_CTX_use_PrivateKey:
.LFB848:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L141
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L141:
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_set_pkey
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE848:
	.size	SSL_CTX_use_PrivateKey, .-SSL_CTX_use_PrivateKey
	.globl	SSL_CTX_use_PrivateKey_file
	.type	SSL_CTX_use_PrivateKey_file, @function
SSL_CTX_use_PrivateKey_file:
.LFB849:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L144
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$381, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L145
.L144:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L146
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$386, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L145
.L146:
	cmpl	$1, -52(%rbp)
	jne	.L147
	movl	$524297, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	192(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey_ex@PLT
	movq	%rax, -16(%rbp)
	jmp	.L148
.L147:
	cmpl	$2, -52(%rbp)
	jne	.L149
	movl	$524301, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PrivateKey_ex_bio@PLT
	movq	%rax, -16(%rbp)
	jmp	.L148
.L149:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L145
.L148:
	cmpq	$0, -16(%rbp)
	jne	.L150
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$403, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L145
.L150:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_PrivateKey@PLT
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L145:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE849:
	.size	SSL_CTX_use_PrivateKey_file, .-SSL_CTX_use_PrivateKey_file
	.globl	SSL_CTX_use_PrivateKey_ASN1
	.type	SSL_CTX_use_PrivateKey_ASN1, @function
SSL_CTX_use_PrivateKey_ASN1:
.LFB850:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	1096(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-64(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movl	%eax, %edi
	call	d2i_PrivateKey_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L153
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$423, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L155
.L153:
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_PrivateKey@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE850:
	.size	SSL_CTX_use_PrivateKey_ASN1, .-SSL_CTX_use_PrivateKey_ASN1
	.type	use_certificate_chain_file, @function
use_certificate_chain_file:
.LFB851:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -72(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L157
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L158
.L157:
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
.L158:
	cmpq	$0, -88(%rbp)
	jne	.L159
	cmpq	$0, -96(%rbp)
	jne	.L159
	movl	$0, %eax
	jmp	.L188
.L159:
	call	ERR_clear_error@PLT
	cmpq	$0, -88(%rbp)
	je	.L161
	movq	-88(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L162
.L161:
	cmpq	$0, -96(%rbp)
	je	.L163
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L164
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L165
	movq	-96(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L166
.L165:
	movq	$0, -40(%rbp)
	jmp	.L166
.L164:
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L166
.L163:
	movq	$0, -40(%rbp)
.L166:
	cmpq	$0, -40(%rbp)
	jne	.L167
	movl	$0, %eax
	jmp	.L188
.L167:
	movq	-40(%rbp), %rax
	movq	5240(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	5248(%rax), %rax
	movq	%rax, -24(%rbp)
.L162:
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L168
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$467, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L169
.L168:
	movq	-104(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L170
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$472, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L169
.L170:
	movq	-32(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L171
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$478, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L169
.L171:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	PEM_read_bio_X509_AUX@PLT
	testq	%rax, %rax
	jne	.L172
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$483, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524297, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L169
.L172:
	cmpq	$0, -88(%rbp)
	je	.L173
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_certificate@PLT
	movl	%eax, -4(%rbp)
	jmp	.L174
.L173:
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate@PLT
	movl	%eax, -4(%rbp)
.L174:
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	je	.L175
	movl	$0, -4(%rbp)
.L175:
	cmpl	$0, -4(%rbp)
	je	.L190
	cmpq	$0, -88(%rbp)
	je	.L176
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, -44(%rbp)
	jmp	.L177
.L176:
	movq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -44(%rbp)
.L177:
	cmpl	$0, -44(%rbp)
	jne	.L178
	movl	$0, -4(%rbp)
	jmp	.L169
.L178:
	movq	-32(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L180
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$517, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L169
.L180:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	testq	%rax, %rax
	je	.L181
	cmpq	$0, -88(%rbp)
	je	.L182
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$89, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, -44(%rbp)
	jmp	.L183
.L182:
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$89, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -44(%rbp)
.L183:
	cmpl	$0, -44(%rbp)
	jne	.L178
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, -4(%rbp)
	jmp	.L169
.L181:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	nop
	call	ERR_peek_last_error@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$9, %eax
	jne	.L186
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$108, %eax
	jne	.L186
	call	ERR_clear_error@PLT
	jmp	.L169
.L186:
	movl	$0, -4(%rbp)
	jmp	.L169
.L190:
	nop
.L169:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE851:
	.size	use_certificate_chain_file, .-use_certificate_chain_file
	.globl	SSL_CTX_use_certificate_chain_file
	.type	SSL_CTX_use_certificate_chain_file, @function
SSL_CTX_use_certificate_chain_file:
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
	call	use_certificate_chain_file
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE852:
	.size	SSL_CTX_use_certificate_chain_file, .-SSL_CTX_use_certificate_chain_file
	.globl	SSL_use_certificate_chain_file
	.type	SSL_use_certificate_chain_file, @function
SSL_use_certificate_chain_file:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	use_certificate_chain_file
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE853:
	.size	SSL_use_certificate_chain_file, .-SSL_use_certificate_chain_file
	.type	serverinfo_find_extension, @function
serverinfo_find_extension:
.LFB854:
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
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -56(%rbp)
	je	.L196
	cmpq	$0, -64(%rbp)
	jne	.L197
.L196:
	movl	$-1, %eax
	jmp	.L205
.L197:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L199
	movl	$-1, %eax
	jmp	.L205
.L199:
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L200
	movl	$0, %eax
	jmp	.L205
.L200:
	leaq	-48(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	je	.L202
	leaq	-36(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L202
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L203
.L202:
	movl	$-1, %eax
	jmp	.L205
.L203:
	movl	-36(%rbp), %eax
	cmpl	%eax, -68(%rbp)
	jne	.L199
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE854:
	.size	serverinfo_find_extension, .-serverinfo_find_extension
	.type	serverinfoex_srv_parse_cb, @function
serverinfoex_srv_parse_cb:
.LFB855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L207
	movq	24(%rbp), %rax
	movl	$50, (%rax)
	movl	$0, %eax
	jmp	.L208
.L207:
	movl	$1, %eax
.L208:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE855:
	.size	serverinfoex_srv_parse_cb, .-serverinfoex_srv_parse_cb
	.type	serverinfo_srv_parse_cb, @function
serverinfo_srv_parse_cb:
.LFB856:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	$0
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	serverinfoex_srv_parse_cb
	addq	$24, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE856:
	.size	serverinfo_srv_parse_cb, .-serverinfo_srv_parse_cb
	.type	serverinfoex_srv_add_cb, @function
serverinfoex_srv_add_cb:
.LFB857:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L212
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L213
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L214
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L215
.L214:
	movq	$0, -8(%rbp)
	jmp	.L215
.L213:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L215
.L212:
	movq	$0, -8(%rbp)
.L215:
	cmpq	$0, -8(%rbp)
	jne	.L216
	movq	24(%rbp), %rax
	movl	$80, (%rax)
	movl	$-1, %eax
	jmp	.L222
.L216:
	movl	-48(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L218
	cmpq	$0, 16(%rbp)
	je	.L218
	movl	$0, %eax
	jmp	.L222
.L218:
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_get_server_cert_serverinfo@PLT
	testl	%eax, %eax
	je	.L219
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	serverinfo_find_extension
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L220
	movq	24(%rbp), %rax
	movl	$80, (%rax)
	movl	$-1, %eax
	jmp	.L222
.L220:
	cmpl	$0, -12(%rbp)
	jne	.L221
	movl	$0, %eax
	jmp	.L222
.L221:
	movl	$1, %eax
	jmp	.L222
.L219:
	movl	$0, %eax
.L222:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE857:
	.size	serverinfoex_srv_add_cb, .-serverinfoex_srv_add_cb
	.type	serverinfo_srv_add_cb, @function
serverinfo_srv_add_cb:
.LFB858:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	$0
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	serverinfoex_srv_add_cb
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE858:
	.size	serverinfo_srv_add_cb, .-serverinfo_srv_add_cb
	.type	serverinfo_process_buffer, @function
serverinfo_process_buffer:
.LFB859:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L226
	cmpq	$0, -72(%rbp)
	jne	.L227
.L226:
	movl	$0, %eax
	jmp	.L242
.L227:
	cmpl	$1, -52(%rbp)
	je	.L229
	cmpl	$2, -52(%rbp)
	je	.L229
	movl	$0, %eax
	jmp	.L242
.L229:
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L231
	movl	$0, %eax
	jmp	.L242
.L241:
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpl	$2, -52(%rbp)
	jne	.L232
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	je	.L233
.L232:
	leaq	-28(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L233
	leaq	-48(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L234
.L233:
	movl	$0, %eax
	jmp	.L242
.L234:
	cmpq	$0, -80(%rbp)
	jne	.L236
	jmp	.L231
.L236:
	cmpl	$1, -52(%rbp)
	je	.L237
	movq	-24(%rbp), %rax
	cmpq	$464, %rax
	jne	.L238
.L237:
	movl	-28(%rbp), %esi
	leaq	serverinfo_srv_parse_cb(%rip), %rcx
	leaq	serverinfo_srv_add_cb(%rip), %rdx
	movq	-80(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	SSL_CTX_add_server_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L231
	movl	$0, %eax
	jmp	.L242
.L238:
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	movl	-28(%rbp), %esi
	leaq	serverinfoex_srv_add_cb(%rip), %rdx
	movq	-80(%rbp), %rax
	pushq	$0
	leaq	serverinfoex_srv_parse_cb(%rip), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	SSL_CTX_add_custom_ext@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L231
	movl	$0, %eax
	jmp	.L242
.L231:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L241
	movl	$1, %eax
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE859:
	.size	serverinfo_process_buffer, .-serverinfo_process_buffer
	.type	extension_contextoff, @function
extension_contextoff:
.LFB860:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L244
	movl	$4, %eax
	jmp	.L246
.L244:
	movl	$0, %eax
.L246:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE860:
	.size	extension_contextoff, .-extension_contextoff
	.type	extension_append_length, @function
extension_append_length:
.LFB861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	extension_contextoff
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	extension_append_length, .-extension_append_length
	.type	extension_append, @function
extension_append:
.LFB862:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	extension_contextoff
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L250
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movb	$1, (%rax)
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movb	$-48, (%rax)
.L250:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE862:
	.size	extension_append, .-extension_append
	.globl	SSL_CTX_use_serverinfo_ex
	.type	SSL_CTX_use_serverinfo_ex, @function
SSL_CTX_use_serverinfo_ex:
.LFB863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L252
	cmpq	$0, -56(%rbp)
	je	.L252
	cmpq	$0, -64(%rbp)
	jne	.L253
.L252:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$771, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L253:
	cmpl	$1, -44(%rbp)
	jne	.L255
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	extension_append_length
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$784, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L256
	movl	$0, %eax
	jmp	.L254
.L256:
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	extension_append
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	SSL_CTX_use_serverinfo_ex.localalias
	movl	%eax, -28(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$793, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
	jmp	.L254
.L255:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	-44(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	serverinfo_process_buffer
	testl	%eax, %eax
	jne	.L257
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$388, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L257:
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L258
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$802, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L258:
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	-64(%rbp), %rsi
	movl	$805, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L259
	movl	$0, %eax
	jmp	.L254
.L259:
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	serverinfo_process_buffer
	testl	%eax, %eax
	jne	.L260
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$819, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$388, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L260:
	movl	$1, %eax
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE863:
	.size	SSL_CTX_use_serverinfo_ex, .-SSL_CTX_use_serverinfo_ex
	.set	SSL_CTX_use_serverinfo_ex.localalias,SSL_CTX_use_serverinfo_ex
	.globl	SSL_CTX_use_serverinfo
	.type	SSL_CTX_use_serverinfo, @function
SSL_CTX_use_serverinfo:
.LFB864:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_CTX_use_serverinfo_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE864:
	.size	SSL_CTX_use_serverinfo, .-SSL_CTX_use_serverinfo
	.section	.rodata
.LC1:
	.string	"SERVERINFO FOR "
.LC2:
	.string	"SERVERINFOV2 FOR "
	.text
	.globl	SSL_CTX_use_serverinfo_file
	.type	SSL_CTX_use_serverinfo_file, @function
SSL_CTX_use_serverinfo_file:
.LFB865:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L264
	cmpq	$0, -112(%rbp)
	jne	.L265
.L264:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$847, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L266
.L265:
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L267
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$853, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L266
.L267:
	movq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L268
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$857, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L266
.L268:
	movq	$0, -40(%rbp)
.L282:
	leaq	-80(%rbp), %rdi
	leaq	-72(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio@PLT
	testl	%eax, %eax
	jne	.L269
	cmpq	$0, -40(%rbp)
	jne	.L284
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$871, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$389, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L266
.L269:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -48(%rbp)
	cmpl	$14, -48(%rbp)
	ja	.L272
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$879, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$392, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L266
.L272:
	movq	-88(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L273
	movl	$1, -44(%rbp)
	jmp	.L274
.L273:
	cmpl	$16, -48(%rbp)
	ja	.L275
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$886, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$392, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L266
.L275:
	movq	-88(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$17, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L276
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$890, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$391, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L266
.L276:
	movl	$2, -44(%rbp)
.L274:
	cmpl	$1, -44(%rbp)
	jne	.L277
	movq	-80(%rbp), %rax
	cmpq	$3, %rax
	jle	.L278
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	subq	$4, %rax
	cmpq	%rax, %rdx
	je	.L279
.L278:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$903, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$390, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L266
.L277:
	movq	-80(%rbp), %rax
	cmpq	$7, %rax
	jle	.L280
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	subq	$8, %rax
	cmpq	%rax, %rdx
	je	.L279
.L280:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$911, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$390, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L266
.L279:
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	extension_append_length
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$917, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L285
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	movq	-72(%rbp), %rsi
	movl	-44(%rbp), %eax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movl	%eax, %edi
	call	extension_append
	movq	-56(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$925, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -88(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$927, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -96(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$929, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -72(%rbp)
	addq	$1, -40(%rbp)
	jmp	.L282
.L284:
	nop
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	SSL_CTX_use_serverinfo_ex@PLT
	movl	%eax, -20(%rbp)
	jmp	.L266
.L285:
	nop
.L266:
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$937, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$938, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$939, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$940, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE865:
	.size	SSL_CTX_use_serverinfo_file, .-SSL_CTX_use_serverinfo_file
	.type	ssl_set_cert_and_key, @function
ssl_set_cert_and_key:
.LFB866:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	%r9d, -108(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L287
	cmpq	$0, -72(%rbp)
	je	.L288
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L289
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L290
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L291
.L290:
	movq	$0, -40(%rbp)
	jmp	.L291
.L289:
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L291
.L288:
	movq	$0, -40(%rbp)
.L291:
	cmpq	$0, -40(%rbp)
	jne	.L287
	movl	$0, %eax
	jmp	.L310
.L287:
	cmpq	$0, -40(%rbp)
	je	.L293
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L294
.L293:
	movq	-80(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -16(%rbp)
.L294:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_security_cert@PLT
	movl	%eax, -44(%rbp)
	cmpl	$1, -44(%rbp)
	je	.L295
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$965, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-44(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L296
.L295:
	movl	$0, -8(%rbp)
	jmp	.L297
.L299:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_security_cert@PLT
	movl	%eax, -44(%rbp)
	cmpl	$1, -44(%rbp)
	je	.L298
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$971, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-44(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L296
.L298:
	addl	$1, -8(%rbp)
.L297:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L299
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_pubkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L311
	cmpq	$0, -96(%rbp)
	jne	.L301
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L302
.L301:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	je	.L303
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	je	.L304
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$986, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$290, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L296
.L304:
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	jne	.L305
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$991, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$296, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L296
.L303:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	je	.L305
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	jne	.L305
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$998, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$296, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L296
.L305:
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
	cmpl	$1, %eax
	je	.L302
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1005, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$288, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L296
.L302:
	movq	-80(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_pkey@PLT
	testq	%rax, %rax
	jne	.L306
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1010, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$247, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L296
.L306:
	cmpl	$0, -108(%rbp)
	jne	.L307
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L308
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L308
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L307
.L308:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1018, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$289, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L296
.L307:
	cmpq	$0, -104(%rbp)
	je	.L309
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L309
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1025, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L296
.L309:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L296
.L311:
	nop
.L296:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L310:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	ssl_set_cert_and_key, .-ssl_set_cert_and_key
	.globl	SSL_use_cert_and_key
	.type	SSL_use_cert_and_key, @function
SSL_use_cert_and_key:
.LFB867:
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
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_set_cert_and_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	SSL_use_cert_and_key, .-SSL_use_cert_and_key
	.globl	SSL_CTX_use_cert_and_key
	.type	SSL_CTX_use_cert_and_key, @function
SSL_CTX_use_cert_and_key:
.LFB868:
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
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%edi, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	ssl_set_cert_and_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	SSL_CTX_use_cert_and_key, .-SSL_CTX_use_cert_and_key
	.section	.rodata
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 20
__func__.17:
	.string	"SSL_use_certificate"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 25
__func__.16:
	.string	"SSL_use_certificate_file"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 25
__func__.15:
	.string	"SSL_use_certificate_ASN1"
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 13
__func__.14:
	.string	"ssl_set_pkey"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 19
__func__.13:
	.string	"SSL_use_PrivateKey"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 24
__func__.12:
	.string	"SSL_use_PrivateKey_file"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 24
__func__.11:
	.string	"SSL_use_PrivateKey_ASN1"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 24
__func__.10:
	.string	"SSL_CTX_use_certificate"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 13
__func__.9:
	.string	"ssl_set_cert"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 29
__func__.8:
	.string	"SSL_CTX_use_certificate_file"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 29
__func__.7:
	.string	"SSL_CTX_use_certificate_ASN1"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 23
__func__.6:
	.string	"SSL_CTX_use_PrivateKey"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 28
__func__.5:
	.string	"SSL_CTX_use_PrivateKey_file"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 28
__func__.4:
	.string	"SSL_CTX_use_PrivateKey_ASN1"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 27
__func__.3:
	.string	"use_certificate_chain_file"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"SSL_CTX_use_serverinfo_ex"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 28
__func__.1:
	.string	"SSL_CTX_use_serverinfo_file"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"ssl_set_cert_and_key"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
